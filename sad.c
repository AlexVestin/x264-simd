#include <stdio.h>
#include <inttypes.h>
#include <time.h>
#include <math.h>

// wasm imports
#include <xmmintrin.h>
#include <emmintrin.h>
#include <pmmintrin.h>
#include <smmintrin.h>
#include <immintrin.h>

typedef uint8_t pixel;
typedef int16_t dctcoef;
typedef uint16_t sum_t;
typedef uint32_t sum2_t;

#define PIXEL_MAX 255
#define BITS_PER_SUM (8 * sizeof(sum_t))

int add(pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2);
int satd_4x4_asm(pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2);
int satd_8x8_asm(pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2);

uint8_t hmul_4p[16] = {
  1, 1, 1, 1, 1, -1, 1, -1, 
  1, 1, 1, 1, 1, -1, 1, -1
};
uint8_t hmul_8p[16] = {
    1, 1, 1, 1, 1, 1, 1,  1,
    1, -1, 1, -1, 1, -1, 1, -1,
};

#define PRINT_VEC(vec, t){ \
  t* p = (t*)&vec; \
  for(int i = 0; i < 128 / (sizeof(t) * 8); i++) printf("%3d ", *(p + i)); \
  printf("\n"); \
}

static int sad_8x8_x( pixel *pix1, intptr_t i_stride_pix1, pixel *pix2, intptr_t i_stride_pix2 ) 
{                                                   
    int i_sum = 0;                                  
    for( int y = 0; y < 8; y++ )                   
    {                                               
        for( int x = 0; x < 8; x++ )               
        {                                           
            i_sum += abs( pix1[x] - pix2[x] );      
        }                                           
        pix1 += i_stride_pix1;                      
        pix2 += i_stride_pix2;                      
    }                                               
    return i_sum;                                   
}

/*

#define PIXEL_SAD_C( name, lx, ly ) \
static int name( pixel *pix1, intptr_t i_stride_pix1,  \
                 pixel *pix2, intptr_t i_stride_pix2 ) \
{                                                   \
    int i_sum = 0;                                  \
    for( int y = 0; y < ly; y++ )                   \
    {                                               \
        for( int x = 0; x < lx; x++ )               \
        {                                           \
            i_sum += abs( pix1[x] - pix2[x] );      \
        }                                           \
        pix1 += i_stride_pix1;                      \
        pix2 += i_stride_pix2;                      \
    }                                               \
    return i_sum;                                   \
}

*/


#define DIFF(v1, v2) { \
  v1 = _mm_sub_epi16(v1,v2); \
  v1 = _mm_abs_epi16(v1); \
}

#define SUM(v, t, o) { \
  v = _mm_madd_epi16(v, o); \
  t = _mm_shuffle_epi32(v, 0xee); \
  v = _mm_add_epi32(v, t); \
  t = _mm_shufflelo_epi16 (v, 0x4e); \
  v = _mm_add_epi32(v, t); \
}

#define PIXEL_SAD_C( name, lx, ly, load, c ) \
static int name( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 ) { \
  __m128i v1, v2, one, zero; \
  one = _mm_set1_epi16(1); \
  zero = _mm_setzero_si128(); \
  int sum = 0; \
  uint8_t vec[16]; \
  for (int i = 0; i < ly; i++) { \
    pixel *pix1_ptr = pix1 + i*i_pix1; \
    v1 = load ((c*)pix1_ptr); \
    pixel *pix2_ptr = pix2 + i*i_pix2; \
    v2 = load ((c*)pix2_ptr); \
    DIFF(v1, v2); \
    _mm_store_si128(vec, v1); \
    for(int j = 0; j < lx; j++) sum += vec[j]; \
  } \
  return sum; \
} \

PIXEL_SAD_C( x264_pixel_sad_16x16, 16, 16, _mm_load_si128, void )
PIXEL_SAD_C( x264_pixel_sad_16x8,  16,  8, _mm_load_si128, void )
PIXEL_SAD_C( x264_pixel_sad_8x16,   8, 16, _mm_loadl_epi64, int64_t )
PIXEL_SAD_C( x264_pixel_sad_8x8,    8,  8, _mm_loadl_epi64, int64_t )
PIXEL_SAD_C( x264_pixel_sad_8x4,    8,  4, _mm_loadl_epi64, int64_t )
PIXEL_SAD_C( x264_pixel_sad_4x16,   4, 16, _mm_loadl_epi64 , int32_t )
PIXEL_SAD_C( x264_pixel_sad_4x8,    4,  8, _mm_loadl_epi64 , int32_t )
PIXEL_SAD_C( x264_pixel_sad_4x4,    4,  4, _mm_loadl_epi64 , int32_t )

// //sum += _mm_cvtsi128_si32(v1); \
 
int main() {
  pixel pix1[128], pix2[128];
  const int i_pix1 = 8, i_pix2 = 8;

   
 for (int i = 0; i < 128; i++) {
    pix1[i] = 20 +(1. + sinf((double)(i*2.) / 100.)) * (i*4%19)*( (i+1)%4);
    pix2[i] = 0 +(1. + sinf((double)(i*2.) / 100.)) * (i*4%7)*( (i+1)%4);
  }
  int a = x264_pixel_sad_8x8(pix1, i_pix1, pix2, i_pix2);
  printf("%d \n", a);
  //int b = sad_8x8_x(pix1, i_pix1, pix2, i_pix2);
  //printf("%d \n", b);
   /*
  int d = satd_8x8_asm(pix1, i_pix1, pix2, i_pix2);

  int a = 
    satd_4x4(pix1, i_pix1, pix2, i_pix2) +
    satd_4x4(pix1 + 4, i_pix1, pix2 + 4, i_pix2)+
    satd_4x4(pix1 + 4* i_pix1, i_pix1, pix2 + 4*i_pix2, i_pix2)+
    satd_4x4(pix1 + 4* i_pix1 + 4, i_pix1, pix2 + 4*i_pix2 + 4, i_pix2);

  int b = 
    satd_4x4_asm(pix1, i_pix1, pix2, i_pix2) +
    satd_4x4_asm(pix1 + 4, i_pix1, pix2 + 4, i_pix2) +
    satd_4x4_asm(pix1 + 4* i_pix1, i_pix1, pix2 + 4*i_pix2, i_pix2) +
    satd_4x4_asm(pix1 + 4* i_pix1 + 4, i_pix1, pix2 + 4*i_pix2 + 4, i_pix2);
  
  int c = x264_8_pixel_satd_8x8_sse4(pix1, i_pix1, pix2, i_pix2);

   printf("%d %d %d %d \n", 
    satd_4x4_asm(pix1, i_pix1, pix2, i_pix2),
    satd_4x4_asm(pix1 + 4, i_pix1, pix2 + 4, i_pix2),
    satd_4x4_asm(pix1 + 4* i_pix1, i_pix1, pix2 + 4*i_pix2, i_pix2),
    satd_4x4_asm(pix1 + 4* i_pix1 + 4, i_pix1, pix2 + 4*i_pix2 + 4, i_pix2)
   );
   printf("%d %d %d %d\n", a, b, c, d);
   */
  
  return 0;
}