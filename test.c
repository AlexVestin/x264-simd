

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


#define PRINT_VEC(vec){ \ 
  int16_t* p = (int16_t*)&vec; \ 
  for(int i = 0; i < 8; i++) printf("%d ", *(p + i)); \
  printf("\n"); \
}

static int x264_pixel_satd_8x8_2( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 ) {

  // Load the differences into the XMM registers
  __m128i _X[8], _B[8], _a, _b;
  for(int i = 0; i < 8; i++) {
    uint8_t* pix1_ptr = &pix1[0] + i_pix1 * i;
    _a = _mm_load_si128((__m128i*) pix1_ptr);
    _a = _mm_cvtepi8_epi16(_a);

    uint8_t* pix2_ptr = &pix2[0] + i_pix2 * i;
    _b = _mm_load_si128((__m128i*)pix2_ptr);
    _b = _mm_cvtepi8_epi16(_b);

    _X[i] = _mm_sub_epi16(_a, _b);
  }

  // --------------- Part B ---------------------
  int idx = 0;
  for(int i = 0; i < 4;  i++) {
    idx = i*2;
    _B[idx]   = _mm_hadd_epi16(_X[idx], _X[idx+1]);
    _B[idx+1] = _mm_hsub_epi16(_X[idx], _X[idx+1]);
  }

  // count: 8
  // --------------- Part C ---------------------
  // X == C i figuren, går nog a förkorta ihop section 1 och 2
  // section 1
  _X[0] = _mm_hadd_epi16(_B[0], _B[2]);
  _X[1] = _mm_hadd_epi16(_B[1], _B[3]);
  
  _X[2] = _mm_hsub_epi16(_B[0], _B[2]);
  _X[3] = _mm_hsub_epi16(_B[1], _B[3]);

  // section 2
  _X[4] = _mm_hadd_epi16(_B[4], _B[6]);
  _X[5] = _mm_hadd_epi16(_B[5], _B[7]);

  _X[6] = _mm_hsub_epi16(_B[4], _B[6]);
  _X[7] = _mm_hsub_epi16(_B[5], _B[7]);

  // 16
  // --------------- Part D ---------------------
  // _B == D if figuren
  _B[0] = _mm_hadd_epi16(_X[0], _X[4]);
  _B[1] = _mm_hadd_epi16(_X[1], _X[5]);
  _B[2] = _mm_hadd_epi16(_X[2], _X[6]);
  _B[3] = _mm_hadd_epi16(_X[3], _X[7]);

  _B[4] = _mm_hsub_epi16(_X[0], _X[4]);
  _B[5] = _mm_hsub_epi16(_X[1], _X[5]);
  _B[6] = _mm_hsub_epi16(_X[2], _X[6]);
  _B[7] = _mm_hsub_epi16(_X[3], _X[7]);

  // 24 
  // Vertical part
  // --------------- Part B ---------------------
  for(int i = 0; i < 4;  i++) {
    idx = i*2;
    _X[idx]   = _mm_hadd_epi16(_B[idx], _B[idx+1]);
    _X[idx+1] = _mm_hsub_epi16(_B[idx], _B[idx+1]);
  }

  // count: 32
  // First pass
  _B[0] = _mm_hadd_epi16(_X[0], _X[2]);
  _B[1] = _mm_hadd_epi16(_X[1], _X[3]);

  _B[2] = _mm_hsub_epi16(_X[0], _X[2]);
  _B[3] = _mm_hsub_epi16(_X[1], _X[3]);

  _B[4] = _mm_hadd_epi16(_X[4], _X[6]);
  _B[5] = _mm_hadd_epi16(_X[5], _X[7]);

  _B[6] = _mm_hsub_epi16(_X[4], _X[6]);
  _B[7] = _mm_hsub_epi16(_X[5], _X[7]);

  // count: 40
  // Second pass
  _X[0] = _mm_hadd_epi16(_B[0], _B[4]);
  _X[1] = _mm_hadd_epi16(_B[1], _B[5]);
  _X[2] = _mm_hadd_epi16(_B[2], _B[6]);
  _X[3] = _mm_hadd_epi16(_B[3], _B[7]);

  _X[4] = _mm_hsub_epi16(_B[0], _B[4]);
  _X[5] = _mm_hsub_epi16(_B[1], _B[5]);
  _X[6] = _mm_hsub_epi16(_B[2], _B[6]);
  _X[7] = _mm_hsub_epi16(_B[3], _B[7]);

  // count: 48
  // Hadamard done
  __m128i _res;
  for(int i = 0; i < 8; i++) {
    _X[i] = _mm_abs_epi16(_X[i]); 
    _res  = _mm_add_epi16(_X[i], _res);
  }

  int16_t* result = (int16_t*)&_res;
  int sum = 0;
  for(int i = 0; i < 8; i++) {
    printf("%d\n", result[i]);
    sum += result[i];
  }

  printf("sum: %d\n", sum);
  return sum;
}



static int x264_pixel_satd_8x4_slow( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 )
{

    sum2_t tmp[4][4];
    sum2_t a0, a1, a2, a3;
    sum2_t sum = 0;

    for( int i = 0; i < 4; i++, pix1 += i_pix1, pix2 += i_pix2 )
    {
        a0 = (pix1[0] - pix2[0]) + ((sum2_t)(pix1[4] - pix2[4]) << BITS_PER_SUM);
        a1 = (pix1[1] - pix2[1]) + ((sum2_t)(pix1[5] - pix2[5]) << BITS_PER_SUM);
        a2 = (pix1[2] - pix2[2]) + ((sum2_t)(pix1[6] - pix2[6]) << BITS_PER_SUM);
        a3 = (pix1[3] - pix2[3]) + ((sum2_t)(pix1[7] - pix2[7]) << BITS_PER_SUM);
        // Frequency transform
        HADAMARD4( tmp[i][0], tmp[i][1], tmp[i][2], tmp[i][3], a0,a1,a2,a3 );
    }
    for( int i = 0; i < 4; i++ )
    {
        HADAMARD4( a0, a1, a2, a3, tmp[0][i], tmp[1][i], tmp[2][i], tmp[3][i] );
        //printf("slow a: %d %d %d %d %d %d %d %d\n", a0, a1, a2, a3, abs2(a0), abs2(a1), abs2(a2), abs2(a3));
        int psum = abs2(a0) + abs2(a1) + abs2(a2) + abs2(a3);

        int t0 = (sum_t)psum;
        int t1 = psum>>BITS_PER_SUM;
        printf("%d + %d >> 1 = %d\n", t0, t1, (t0 + t1) >> 1);

        sum += psum;
    }
    int s = (((sum_t)sum) + (sum>>BITS_PER_SUM)) >> 1;
    printf("block sum = %d\n", s);
    return s;
}



static int x264_pixel_satd_8x8( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 )
{
    sum2_t sum = 0;
    __m128i _v11, _v21, _a1, _a2, _b1, _b2, _c1, _c2, _d1, _d2, _res;
    __m128i _tmp[4];

    for( int i = 0; i < 4; i++, pix1 += i_pix1, pix2 += i_pix2 ) {
        // https://stackoverflow.com/questions/12121640/how-to-load-a-pixel-struct-into-an-sse-register
        // load 8 values
        _a1 = _mm_load_si128((__m128i*)&pix1[0]);
        _a2 = _mm_load_si128((__m128i*)&pix2[0]);

        _a1 = _mm_cvtepi8_epi16(_a1);
        _a2 = _mm_cvtepi8_epi16(_a2);

        // http://www.apsipa.org/proceedings_2012/papers/201.pdf
        _b1 = _mm_hadd_epi16(_a1, _a2);
        _b2 = _mm_hsub_epi16(_a1, _a2);

        _c1 = _mm_hadd_epi16(_b1, _b2);
        _c2 = _mm_hsub_epi16(_b1, _b2);

        _d1 = _mm_hadd_epi16(_c1, _c2);
        _d2 = _mm_hsub_epi16(_c1, _c2);

        _res = _mm_hadd_epi32(_d1, _d2);
        // abs it up
        _res = _mm_abs_epi32(_res);
        for (int j = 0; j < 4; j++) {
          sum += *((sum2_t*)&_res + i);
        }    
    }
    printf("sum: %d \n", sum);
    return (((sum_t)sum) + (sum>>BITS_PER_SUM)) >> 1;
}
 
static int x264_pixel_satd_8x4( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 )
{
    // sum2_t tmp[4][4];
    // sum2_t a0, a1, a2, a3;
    sum2_t sum = 0;

    __m128i _v11, _v21, _a1, _a2, _res;
    __m128i _tmp[4];

    for( int i = 0; i < 4; i++, pix1 += i_pix1, pix2 += i_pix2 )
    {

        // https://stackoverflow.com/questions/12121640/how-to-load-a-pixel-struct-into-an-sse-register
        // load 8 values
        _v11 = _mm_load_si128((__m128i*)&pix1[0]);
        _v21 = _mm_load_si128((__m128i*)&pix2[0]);
        
        // subtract
        _a1 = _mm_sub_epi8(_v11, _v21);
        
        // extend to int16
        _a1 = _mm_cvtepi8_epi16(_a1);

        // shift the values
        _a2 = _mm_srli_si128(_a1, 8);
        
        // Extend to 32 bit values
        _a2 = _mm_cvtepi16_epi32(_a2);
        
        // Shift each value left BITS_PER_SUM
        _a2 = _mm_slli_epi32(_a2, BITS_PER_SUM);

        // Convert left to 32 bit
        _a1 = _mm_cvtepi16_epi32(_a1);

        // add them together
        _res = _mm_add_epi32(_a1, _a2);

        //printf("fast: %d %d %d %d \n", *((sum2_t*)&_a + 0), *((sum2_t*)&_a + 1), *((sum2_t*)&_a + 2), *((sum2_t*)&_a + 3));
    
        HADAMARD4SIMD( _tmp, _res );        
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
  #define SIZE 8192
  pixel pix1[SIZE];
  const int i_pix1 = 16;
  pixel pix2[SIZE];
  const int i_pix2 = 16;

  for(int i = 0; i < SIZE; i++) {
    pix1[i] = (1. + sinf((double)(i*12.) / 100.)) * (i%3) * 4;
    pix2[i] = (i + 10) % 16;//i%8 * 2;
  }


  x264_pixel_satd_8x8_2(pix1, i_pix1, pix2, i_pix2);
  
  int top = x264_pixel_satd_8x4_slow(pix1, i_pix1, pix2, i_pix2);
  int bottom = x264_pixel_satd_8x4_slow(pix1+4*i_pix1, i_pix1, pix2+4*i_pix2, i_pix2);
  printf("sum2: %d\n", top + bottom);


  
  /*


  struct timespec stime, etime;
  clock_gettime(CLOCK_REALTIME, &stime);

  const int part = 100000;
  const int iterations = part * 10;
  for( int i = 0; i < iterations; i++) {
     x264_pixel_satd_8x4(pix1, i_pix1, pix2, i_pix2);
  }
  printf("\n");

  clock_gettime(CLOCK_REALTIME, &etime);
  printf("Time1: %g\n", (etime.tv_sec  - stime.tv_sec) + 1e-9*(etime.tv_nsec  - stime.tv_nsec));
  
  clock_gettime(CLOCK_REALTIME, &stime);
  for( int i = 0; i < iterations; i++) {
    x264_pixel_satd_8x4_slow(pix1, i_pix1, pix2, i_pix2);
  }
  printf("\n");

  clock_gettime(CLOCK_REALTIME, &etime);
  printf("Time2: %g\n", (etime.tv_sec  - stime.tv_sec) + 1e-9*(etime.tv_nsec  - stime.tv_nsec));
  */
  return 0;
}