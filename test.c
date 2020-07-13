

#include <stdio.h>
#include <inttypes.h>
#include <time.h>
#include <immintrin.h>  // portable to all x86 compilers
#include <emmintrin.h>

#include <math.h>

// x264 defines
typedef uint8_t pixel;
typedef int16_t dctcoef;
#define FENC_STRIDE 16
#define FDEC_STRIDE 32
#define PIXEL_MAX 255

// SAD stuff
typedef uint16_t sum_t;
typedef uint32_t sum2_t;
#define BITS_PER_SUM (8 * sizeof(sum_t))

static sum2_t abs2( sum2_t a )
{
    sum2_t s = ((a>>(BITS_PER_SUM-1))&(((sum2_t)1<<BITS_PER_SUM)+1))*((sum_t)-1);
    return (a+s)^s;
}



#define HADAMARD4SIMD(d0, d1, d2, d3, s0, s1, s2, s3) {\
    __m128i s02 = _mm_set_epi32(0, 0, s2, s0); \
    __m128i s13 = _mm_set_epi32(0, 0 , s3, s1); \
    __m128i t02 = _mm_add_epi32(s02, s13); \
    __m128i t13 = _mm_sub_epi32(s02, s13); \
    __m128i t01 = _mm_set_epi32(0, 0, *(sum2_t*)&t13, *(sum2_t*)&t02); \
    __m128i t23 = _mm_set_epi32(0, 0, *(sum2_t*)&t02 + 1, *(sum2_t*)&t13 + 1); \
    __m128i d01 = _mm_add_epi32(t01, t23); \
    __m128i d23 = _mm_sub_epi32(t01, t23); \
    d0 = *((sum2_t*)&d01); \
    d1 = *((sum2_t*)&d01 + 1); \
    d2 = *((sum2_t*)&d23); \
    d3 = *((sum2_t*)&d23 + 1); \
}

#define HADAMARD4(d0, d1, d2, d3, s0, s1, s2, s3) {\
    sum2_t t0 = s0 + s1;\
    sum2_t t2 = s2 + s3;\
    sum2_t t1 = s0 - s1;\
    sum2_t t3 = s2 - s3;\
    d0 = t0 + t2;\
    d1 = t1 + t3;\
    d2 = t0 - t2;\
    d3 = t1 - t3;\
}

static int x264_pixel_satd_8x4_slow( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 )
{

    sum2_t tmp[4][4];
    sum2_t a0, a1, a2, a3;
    sum2_t sum = 0;

    sum2_t t0, t1, t2, t3;
    for( int i = 0; i < 4; i++, pix1 += i_pix1, pix2 += i_pix2 )
    {


        a0 = (pix1[0] - pix2[0]) + ((sum2_t)(pix1[4] - pix2[4]));
        a1 = (pix1[1] - pix2[1]) + ((sum2_t)(pix1[5] - pix2[5]));
        a2 = (pix1[2] - pix2[2]) + ((sum2_t)(pix1[6] - pix2[6]));
        a3 = (pix1[3] - pix2[3]) + ((sum2_t)(pix1[7] - pix2[7]));


        printf("slow: %d %d %d %d \n", a3, a2, a1, a0);

        // Frequency transform
       // HADAMARD4( tmp[i][0], tmp[i][1], tmp[i][2], tmp[i][3], a0,a1,a2,a3 );
    }
    /*
    for( int i = 0; i < 4; i++ )
    {
        HADAMARD4( a0, a1, a2, a3, tmp[0][i], tmp[1][i], tmp[2][i], tmp[3][i] );
        sum += abs2(a0) + abs2(a1) + abs2(a2) + abs2(a3);
    }
    */
    return (((sum_t)sum) + (sum>>BITS_PER_SUM)) >> 1;
}
 

#define EP8(a,b,c,d) _mm_set_epi8(a,b,c,d,0,0,0,0,0,0,0,0,0,0,0,0)

static int x264_pixel_satd_8x4( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 )
{
    sum2_t tmp[4][4];
    sum2_t a0, a1, a2, a3;
    sum2_t sum = 0;

    __m128i _v11, _v21, _a1, _v12, _v22, _a2, _a;
    for( int i = 0; i < 4; i++, pix1 += i_pix1, pix2 += i_pix2 )
    {
        // set up left column
        _v11 =  *(__m128i*)(pix1);
        _v21 =  *(__m128i*)(pix2);

        printf("v11: %d %d %d %d \n", *(uint8_t*)&_v11, *((uint8_t*)&_v11 + 1), *((uint8_t*)&_v11 + 2), *((uint8_t*)&_v11 + 3));
        printf("pix: %d %d %d %d \n", pix1[0], pix1[1], pix1[2], pix1[3]);

        //_v11 = _mm_set_epi32(pix1[0], pix1[1], pix1[2], pix1[3] ); 
        //_v21 = _mm_set_epi32(pix2[0], pix2[1], pix2[2], pix2[3]); 
        _a1 = _mm_sub_epi8(_v11, _v21);

        // set up right column
        //_v12 = _mm_set_epi32(pix1[4], pix1[5], pix1[6], pix1[7]); 
        //_v22 = _mm_set_epi32(pix2[4], pix2[5], pix2[6], pix2[7]);
        _a2 = *(__m128i*)(&_a1 + 4);
        /*
        *(sum2_t*)&_a2 = *(sum2_t*)&_a2 << BITS_PER_SUM; 
        *((sum2_t*)&_a2 + 1) = *((sum2_t*)&_a2 + 1) << BITS_PER_SUM; 
        *((sum2_t*)&_a2 + 2) = *((sum2_t*)&_a2 + 2) << BITS_PER_SUM; 
        *((sum2_t*)&_a2 + 3) = *((sum2_t*)&_a2 + 3) << BITS_PER_SUM; 
        */

        //__m128i _bs = _mm_slli_si128(_a2, 2);
        // add them together
        _a = _mm_add_epi8(_a1, _a2);


        printf("fast: %d %d %d %d \n", *(sum2_t*)&_a, *((sum2_t*)&_a + 1), *((sum2_t*)&_a + 2), *((sum2_t*)&_a + 3));


        // bit shift
        
        //HADAMARD4SIMD( tmp[i][0], tmp[i][1], tmp[i][2], tmp[i][3], a0,a1,a2,a3 );        
    }
    /*
    for( int i = 0; i < 4; i++ )
    {
        HADAMARD4SIMD( a0, a1, a2, a3, tmp[0][i], tmp[1][i], tmp[2][i], tmp[3][i] );
        sum += abs2(a0) + abs2(a1) + abs2(a2) + abs2(a3);
    }
    */
    return (((sum_t)sum) + (sum>>BITS_PER_SUM)) >> 1;
}


int main() {

  // pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2
  pixel pix1[1024];
  const int i_pix1 = 16;
  pixel pix2[1024];
  const int i_pix2 = 16;

  for(int i = 0; i < 1024; i++) {
    pix1[i] = i%3 * 4;
    pix2[i] = i%8 * 8;
  }

  struct timespec stime, etime;
  clock_gettime(CLOCK_REALTIME, &stime);

  const int iterations = 1;
  for( int i = 0; i < iterations; i++) {
     x264_pixel_satd_8x4_slow(pix1, i_pix1, pix2, i_pix2);
  }

  clock_gettime(CLOCK_REALTIME, &etime);
  printf("Time1: %g\n", (etime.tv_sec  - stime.tv_sec) + 1e-9*(etime.tv_nsec  - stime.tv_nsec));

  clock_gettime(CLOCK_REALTIME, &stime);
  for( int i = 0; i < iterations; i++) {
    x264_pixel_satd_8x4(pix1, i_pix1, pix2, i_pix2);
  }

  clock_gettime(CLOCK_REALTIME, &etime);
  printf("Time2: %g\n", (etime.tv_sec  - stime.tv_sec) + 1e-9*(etime.tv_nsec  - stime.tv_nsec));
  
  return 0;
}