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
int x264_8_pixel_satd_8x8_sse4(pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2);

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

#define LOAD_DUP_2x4p(dst, tmp, pix1, pix2) { \
  dst = _mm_cvtsi32_si128(*((int*)(pix1))); \
  tmp = _mm_cvtsi32_si128(*((int*)(pix2))); \
  dst = (__m128i)_mm_shuffle_ps ((__m128)dst, (__m128)tmp, 0); \
}


#define LOAD_AND_SUB(v1, v2, pix1, pix2) { \
  v1 = _mm_cvtsi64_si128(*((long*)(pix1)));  \
  v2 = _mm_cvtsi64_si128(*((long*)(pix2))); \
  v1 = _mm_unpacklo_epi8(v1, m7); \
  v2 = _mm_unpacklo_epi8(v2, m7); \
  v1 = _mm_sub_epi16(v1, v2); \
}

#define LOAD_SUB(v1,v2,v3) { \
  v1 = _mm_load_si128(&v2); \
  v2 = _mm_add_epi16(v2, v3); \
  v3 = _mm_sub_epi16(v3, v1); \
}

#define LOAD_UNPACK(v1, v2, v3, size) { \
  v1 = _mm_load_si128(&v2); \
  v2 = _mm_unpacklo_epi##size(v2, v3); \
  v1 = _mm_unpackhi_epi##size(v1, v3); \
}

static int satd_8x8_sse2(pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2) {
  __m128i m0, m1, m2, m3, m4, m5, m6, m7;
  m7 = _mm_setzero_si128();

  // x264_8_pixel_satd_8x8_internal_sse2
  LOAD_AND_SUB(m0, m4, pix1, pix2);
  LOAD_AND_SUB(m1, m5, pix1 + i_pix1, pix2 + i_pix2);
  LOAD_AND_SUB(m2, m4, pix1 + i_pix1*2, pix2 + i_pix2*2);
  LOAD_AND_SUB(m3, m5, pix1 + i_pix1*3, pix2 + i_pix2*3);

  pix1 += i_pix1 * 4;
  pix2 += i_pix2 * 4;
  // -------------------------------- 34c0
  // LOAD_ADD_SUB
  LOAD_SUB(m4, m0, m1);
  LOAD_SUB(m4, m2, m3);

  LOAD_UNPACK(m4, m0, m1, 16);
  LOAD_UNPACK(m1, m2, m3, 16);

  LOAD_SUB(m3, m0, m2);
  LOAD_SUB(m3, m4, m1);

  LOAD_UNPACK(m3, m0, m2, 32);
  LOAD_SUB(m2, m0, m3);

  LOAD_UNPACK(m2, m4, m1, 32);
  LOAD_SUB(m1, m4, m2);
  
  // SOME MACRO
  m1 = _mm_load_si128(&m0);
  m0 = (__m128i)_mm_movelh_ps ((__m128)m0, (__m128)m4);
  m1 = _mm_unpackhi_epi64(m1, m4);
  // setzero?
  m4 = _mm_xor_si128(m4, m4);
  m4 = _mm_sub_epi16(m4, m0);
  m0 = _mm_max_epi16(m0, m4);

  m4 = _mm_xor_si128(m4, m4);
  m4 = _mm_sub_epi16(m4, m1);
  m1 = _mm_max_epi16(m1, m4);
  m0 = _mm_max_epi16(m0, m1);

  // SOME MACRO
  m4 = _mm_load_si128(&m3);
  m3 = (__m128i)_mm_movelh_ps ((__m128)m3, (__m128)m2);
  m4 = _mm_unpackhi_epi64(m4, m2);

  // also setzero?
  m2 = _mm_xor_si128(m2, m2);
  m2 = _mm_sub_epi16(m2, m3);
  m3 = _mm_max_epi16(m3, m2);

  m2 = _mm_xor_si128(m2, m2);
  m2 = _mm_sub_epi16(m2, m4);
  m4 = _mm_max_epi16(m4, m2);

  m3 = _mm_max_epi16(m3, m4);

  // 35da
  m6 = _mm_add_epi16(m6, m0);
  m6 = _mm_add_epi16(m6, m3);


  LOAD_AND_SUB(m0, m2, pix1, pix2);
  LOAD_AND_SUB(m1, m5, pix1 + i_pix1, pix2 + i_pix2);
  LOAD_AND_SUB(m3, m2, pix1 + i_pix1*2, pix2 + i_pix2*2);
  LOAD_AND_SUB(m4, m5, pix1 + i_pix1*3, pix2 + i_pix2*3);

  // Not needed?
  pix1 += i_pix1 * 4;
  pix2 += i_pix2 * 4;
  // 3642
  LOAD_SUB(m2, m0, m1);
  LOAD_SUB(m2, m3, m4);

  // 3658
  LOAD_UNPACK(m2, m0, m1, 16);
  LOAD_UNPACK(m1, m3, m4, 16);

  // 3671
  LOAD_SUB(m4, m0, m3);
  LOAD_SUB(m4, m2, m1);

  // 3684
  LOAD_UNPACK(m1, m3, m4, 32);
  LOAD_SUB(m4, m2, m1);

  // 369a
  LOAD_UNPACK(m3, m2, m1, 32);
  LOAD_SUB(m3, m0, m4);
  

  // 36b0 SOME MACRO
  m1 = _mm_load_si128(&m0);
  m0 = (__m128i)_mm_movelh_ps ((__m128)m0, (__m128)m2);
  m1 = _mm_unpackhi_epi64(m1, m2);
  // setzero?
  m2 = _mm_xor_si128(m2, m2);
  m2 = _mm_sub_epi16(m2, m0);
  m0 = _mm_max_epi16(m0, m2);

  m2 = _mm_xor_si128(m2, m2);
  m2 = _mm_sub_epi16(m2, m1);
  m1 = _mm_max_epi16(m1, m2);
  m0 = _mm_max_epi16(m0, m1);

  m2 = _mm_load_si128(&m4);
  m4 = (__m128i)_mm_movelh_ps ((__m128)m4, (__m128)m3);
  m1 = _mm_unpackhi_epi64(m2, m3);
  // setzero?
  m3 = _mm_xor_si128(m3, m3);
  m3 = _mm_sub_epi16(m3, m4);
  m4 = _mm_max_epi16(m4, m3);

  m3 = _mm_xor_si128(m3, m3);
  m3 = _mm_sub_epi16(m3, m2);
  m2 = _mm_max_epi16(m2, m3);
  m4 = _mm_max_epi16(m4, m2);

  m6 = _mm_add_epi16(m6, m0);
  m6 = _mm_add_epi16(m6, m4);

  // x264_8_pixel_satd_8x8_internal_sse2
  
  // _mm_madd_epi16()
  int16_t vec[8];
  _mm_store_si128(vec, m6);
  int sum = 0;
  for( int j = 0; j < 8; j++) sum += vec[j];

  return sum;
}
static int satd_8x8(pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2) {
  __m128i m0, m1, m2, m3, m4, m5, m6, m7;
  m4 = _mm_load_si128(hmul_8p);
  m6 = _mm_setzero_si128();

  // movq   xmm4, [rdx]
  m4 = _mm_cvtsi64_si128(*((long*)(pix2)));
  // movq   xmm5, [rdx+rcx*1]
  m5 = _mm_cvtsi64_si128(*((long*)(pix2 + i_pix2)));
  m4 = _mm_unpacklo_epi64(m4, m4);
  
  // movddup xmm0, [rdi]
  m0 = (__m128i)_mm_loaddup_pd ((const double*) pix1);
  m5 = _mm_unpacklo_epi64(m5, m5);
  // movddup xmm1, [rdi+rsi*1]
  m1 = (__m128i)_mm_loaddup_pd ((const double*) (pix1 + i_pix1));
  m4 = _mm_maddubs_epi16(m4, m7);
  m0 = _mm_maddubs_epi16(m0, m7);
  m5 = _mm_maddubs_epi16(m5, m7);
  m1 = _mm_maddubs_epi16(m1, m7);

  m0 = _mm_sub_epi16(m0, m4);
  m1 = _mm_sub_epi16(m1, m5);

  // movq   xmm4, [rdx+rcx*2]
  m4 = _mm_cvtsi64_si128(*((long*)(pix2 + i_pix2*2)));
  // movq   xmm5, [rdx+r9*1]
  m5 = _mm_cvtsi64_si128(*((long*)(pix2 + i_pix2*3)));
  m4 = _mm_unpacklo_epi64(m4, m4);

  m2 = (__m128i)_mm_loaddup_pd ((const double*) pix1 + i_pix1*2);
  m5 = _mm_unpacklo_epi64(m5, m5);
  m2 = (__m128i)_mm_loaddup_pd ((const double*) pix1 + i_pix1*3);

  m4 = _mm_maddubs_epi16(m4, m7);
  m2 = _mm_maddubs_epi16(m2, m7);
  m5 = _mm_maddubs_epi16(m5, m7);
  m3 = _mm_maddubs_epi16(m3, m7);

  m2 = _mm_sub_epi16(m2, m4);
  m3 = _mm_sub_epi16(m3, m5);

  m4 = _mm_load_si128(&m0);
  m0 = _mm_add_epi16(m0, m1);
  m1 = _mm_sub_epi16(m1, m4);

  m4 = _mm_load_si128(&m2);
  m2 = _mm_add_epi16(m2, m3);
  m3 = _mm_sub_epi16(m3, m4);

  m4 = _mm_load_si128(&m0);
  m0 = _mm_add_epi16(m0, m2);
  m2 = _mm_sub_epi16(m2, m4);

  m4 = _mm_load_si128(&m1);
  m1 = _mm_add_epi16(m1, m3);
  m3 = _mm_sub_epi16(m3, m4);

  m0 = _mm_abs_epi16(m0);
  m2 = _mm_abs_epi16(m2);
  m1 = _mm_abs_epi16(m1);
  m3 = _mm_abs_epi16(m3);

  // movdqa xmm4,xmm1
  m4 = _mm_load_si128(&m0);
  m0 = _mm_blend_epi16(m0, m2, 0xaa);
  m2 = _mm_slli_epi32(m2, 0x10);
  m4 = _mm_srli_epi32(m4, 0x10);

  m2 = _mm_or_si128(m2, m4);
  m0 = _mm_max_epi16(m0, m2);
  m6 = _mm_add_epi16(m6, m0);

  // movdqa xmm4,xmm1
  m4 = _mm_load_si128(&m1);
  m1 = _mm_blend_epi16(m1, m3, 0xaa);
  m3 = _mm_slli_epi32(m3, 0x10);
  m4 = _mm_srli_epi32(m4, 0x10);

  m3 = _mm_or_si128(m3, m4);
  m1 = _mm_max_epi16(m1, m3);
  m6 = _mm_add_epi16(m6, m1);

  
  // movq
  m4 = _mm_loadl_epi64(pix2 + i_pix2 * 4);
  m5 = _mm_loadl_epi64(pix2 + i_pix2 * 5);
  m4 = _mm_unpacklo_epi64(m4, m4);

  m0 = (__m128i)_mm_loaddup_pd ((const double*) pix1 + i_pix1*4);
  m5 = _mm_unpacklo_epi64(m5, m5);
  m1 = (__m128i)_mm_loaddup_pd ((const double*) pix1 + i_pix1*5);

  m4 = _mm_maddubs_epi16(m4, m7);
  m0 = _mm_maddubs_epi16(m0, m7);
  m5 = _mm_maddubs_epi16(m5, m7);
  m1 = _mm_maddubs_epi16(m1, m7);

  m0 = _mm_sub_epi16(m0, m4);
  m1 = _mm_sub_epi16(m1, m5);


  m4 = _mm_loadl_epi64(pix2 + i_pix2 * 6);
  m5 = _mm_loadl_epi64(pix2 + i_pix2 * 7);
  m4 = _mm_unpacklo_epi64(m4, m4);

  m2 = (__m128i)_mm_loaddup_pd ((const double*) pix1 + i_pix1*6);
  m5 = _mm_unpacklo_epi64(m5, m5);
  m3 = (__m128i)_mm_loaddup_pd ((const double*) pix1 + i_pix1*7);

  m4 = _mm_maddubs_epi16(m4, m7);
  m2 = _mm_maddubs_epi16(m2, m7);
  m5 = _mm_maddubs_epi16(m5, m7);
  m3 = _mm_maddubs_epi16(m3, m7);

  m2 = _mm_sub_epi16(m2, m4);
  m3 = _mm_sub_epi16(m3, m5);

  // pmaddwd is scalarized, sum normally
  // m4 = _mm_load_si128(&m0);




}


static int satd_4x4(pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2) {
  __m128i m0, m1, m2, m3, m4, m5, m6, m7;
  
  // mova m4, [hmul_4p]
  m4 = _mm_load_si128(hmul_4p);

  // LOAD_DUP_2x4P m2, m5, [r2], [r2+r3]
  LOAD_DUP_2x4p(m2, m5, pix2, pix2 + i_pix2);

  // LOAD_DUP_2x4P m3, m5, [r2+2*r3], [r2+r5]
  LOAD_DUP_2x4p(m3, m5, pix2 + 2*i_pix2, pix2 + 3*i_pix2);
  
  // LOAD_DUP_2x4P m0, m5, [r0], [r0+r1]
  LOAD_DUP_2x4p(m0, m5, pix1, pix1 + i_pix1);

  // LOAD_DUP_2x4P m1, m5, [r0+2*r1], [r0+r4]
  LOAD_DUP_2x4p(m1, m5, pix1 + 2*i_pix1, pix1 + 3*i_pix1);


  // DIFF_SUMSUB_SSSE3 0, 2, 1, 3, 4
  m2 = _mm_maddubs_epi16(m2, m4);
  m0 = _mm_maddubs_epi16(m0, m4); 
  m3 = _mm_maddubs_epi16(m3, m4);
  m1 = _mm_maddubs_epi16(m1, m4); 

  m0 = _mm_sub_epi16(m0, m2);
  m1 = _mm_sub_epi16(m1, m3);

  // movdqa ?

  m2 = _mm_load_si128(&m0);

  m0 = _mm_add_epi16(m0, m1);
  m1 = _mm_sub_epi16(m1, m2);

  // movdqa
  m2 = _mm_load_si128(&m0);

  m0 = _mm_unpacklo_epi64(m0, m1);
  m2 = _mm_unpackhi_epi64 (m2, m1);

  m1 = _mm_load_si128(&m0);
  
  m0 = _mm_add_epi16(m0, m2);
  m2 = _mm_sub_epi16(m2, m1);


  // movdqa
  m1 = _mm_load_si128(&m0); 
  m0 = _mm_blend_epi16(m0, m2, 0xaa);
  
  m2 = _mm_slli_epi32(m2, 0x10);
  m1 = _mm_srli_epi32(m1, 0x10);

  m2 = _mm_or_si128 (m2, m1);
  m0 = _mm_abs_epi16(m0);
  m2 = _mm_abs_epi16(m2);

  m0 = _mm_max_epi16(m0, m2);

  // sum it up
  //PRINT_VEC(m0, int16_t);
  m0 = _mm_madd_epi16(m0, _mm_set1_epi16(1));
  m2 = _mm_shuffle_epi32(m0, 0xee);
  m0 = _mm_add_epi32(m0, m2);
  m2 = _mm_shufflelo_epi16 (m0, 0x4e);
  m0 = _mm_add_epi32(m0, m2);
  return  _mm_cvtsi128_si32(m0);
}

 
int main() {
  pixel pix1[128], pix2[128];
  const int i_pix1 = 8, i_pix2 = 8;

   
 for (int i = 0; i < 128; i++) {
    pix1[i] = 20 + (1. + sinf((double)(i*2.) / 100.)) * (i*4%19)*( (i+1)%4);
    pix2[i] = 0  + (1. + sinf((double)(i*2.) / 100.)) * (i*4%7)*( (i+1)%4);
  }
  int b = satd_8x8_sse2(pix1, i_pix1, pix2, i_pix2);
  int c = x264_8_pixel_satd_8x8_sse4(pix1, i_pix1, pix2, i_pix2);
  printf("%d %d ss\n", b, c);


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