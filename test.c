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

static sum2_t abs2( sum2_t a ) {
    sum2_t s = ((a>>(BITS_PER_SUM-1))&(((sum2_t)1<<BITS_PER_SUM)+1))*((sum_t)-1);
    return (a+s)^s;
}


#define PRINT_VEC(vec, t){ \
  t* p = (t*)&vec; \
  for(int i = 0; i < 128 / (sizeof(t) * 8); i++) printf("%3d ", *(p + i)); \
  printf("\n"); \
}

#define PRINT_ROW(vec, num){ \
  for(int i = 0; i < num; i++) printf("%4d ", *(vec + i)); \
  printf("\n"); \
}

static inline int x264_pixel_satd_8x8(pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2) {
  int sum = 0;
  __m128i _X[8], _B[8], _a, _b;
  // Hadamard from http://www.apsipa.org/proceedings_2012/papers/201.pdf III.D
  // --------------- Part A ---------------------
  for(int i = 0; i < 8; i++) {
    uint8_t* pix1_ptr = &pix1[0] + i_pix1 * i;
    _a = _mm_cvtsi64_si128 (*(const long*)pix1_ptr);
    _a = _mm_cvtepu8_epi16(_a);

    uint8_t* pix2_ptr = &pix2[0] + i_pix2 * i;
    _b = _mm_cvtsi64_si128 (*(const long*)pix2_ptr);
    _b = _mm_cvtepu8_epi16(_b);
    _X[i] = _mm_sub_epi16(_a, _b);
  }

  // --------------- Part B ---------------------
  int idx = 0;
  for(int i = 0; i < 4; i++) {
    idx = i*2;
    _B[idx]   = _mm_hadd_epi16(_X[idx], _X[idx+1]);
    _B[idx+1] = _mm_hsub_epi16(_X[idx], _X[idx+1]);
  }

  // --------------- Part C ---------------------
  _X[0] = _mm_hadd_epi16(_B[0], _B[2]);
  _X[1] = _mm_hadd_epi16(_B[1], _B[3]);
  
  _X[2] = _mm_hsub_epi16(_B[0], _B[2]);
  _X[3] = _mm_hsub_epi16(_B[1], _B[3]);

  _X[4] = _mm_hadd_epi16(_B[4], _B[6]);
  _X[5] = _mm_hadd_epi16(_B[5], _B[7]);

  _X[6] = _mm_hsub_epi16(_B[4], _B[6]);
  _X[7] = _mm_hsub_epi16(_B[5], _B[7]);

  // --------------- Part D ---------------------
  _B[0] = _mm_hadd_epi16(_X[0], _X[4]);
  _B[1] = _mm_hadd_epi16(_X[1], _X[5]);
  _B[2] = _mm_hadd_epi16(_X[2], _X[6]);
  _B[3] = _mm_hadd_epi16(_X[3], _X[7]);

  _B[4] = _mm_hsub_epi16(_X[0], _X[4]);
  _B[5] = _mm_hsub_epi16(_X[1], _X[5]);
  _B[6] = _mm_hsub_epi16(_X[2], _X[6]);
  _B[7] = _mm_hsub_epi16(_X[3], _X[7]);

  
  // --- Vertical part ---
  for (int i = 0; i < 4;  i++) {
    idx = i*2;
    _X[idx]   = _mm_hadd_epi16(_B[idx], _B[idx+1]);
    _X[idx+1] = _mm_hsub_epi16(_B[idx], _B[idx+1]);
  }
  
  // First pass
  _B[0] = _mm_hadd_epi16(_X[0], _X[2]);
  _B[1] = _mm_hadd_epi16(_X[1], _X[3]);

  _B[4] = _mm_hadd_epi16(_X[4], _X[6]);
  _B[5] = _mm_hadd_epi16(_X[5], _X[7]);

  _B[2] = _mm_hsub_epi16(_X[0], _X[2]);
  _B[3] = _mm_hsub_epi16(_X[1], _X[3]);
  _B[6] = _mm_hsub_epi16(_X[4], _X[6]);
  _B[7] = _mm_hsub_epi16(_X[5], _X[7]);
  
  // Second pass
  _X[0] = _mm_hadd_epi16(_B[0], _B[4]);
  _X[1] = _mm_hadd_epi16(_B[1], _B[5]);
  _X[2] = _mm_hadd_epi16(_B[2], _B[6]);
  _X[3] = _mm_hadd_epi16(_B[3], _B[7]);

  _X[4] = _mm_hsub_epi16(_B[0], _B[4]);
  _X[5] = _mm_hsub_epi16(_B[1], _B[5]);
  _X[6] = _mm_hsub_epi16(_B[2], _B[6]);
  _X[7] = _mm_hsub_epi16(_B[3], _B[7]);
  // -- Hadamard done --
  
  // Abs and sum the values
  _X[0] = _mm_abs_epi16(_X[0]);   

  for(int i = 1; i < 8; i++) {
    _X[i]  = _mm_abs_epi16(_X[i]); 
    _X[0]  = _mm_add_epi16(_X[i], _X[0]);
  } 

  // Extract and sum last vector
  int16_t* result = (int16_t*)&_X[0];
  
  for (int i = 0; i < 8; i++) {
    sum += result[i];
  }


  return sum >> 1;
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

static inline int x264_pixel_satd_8x4( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 )
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
        HADAMARD4( tmp[i][0], tmp[i][1], tmp[i][2], tmp[i][3], a0,a1,a2,a3 );
    }
    for( int i = 0; i < 4; i++ )
    {
        HADAMARD4( a0, a1, a2, a3, tmp[0][i], tmp[1][i], tmp[2][i], tmp[3][i] );
        sum2_t a[4];
        a[0] = abs2(a0);
        a[1] = abs2(a1);
        a[2] = abs2(a2);
        a[3] = abs2(a3);

        
        sum_t h[8];
        h[0] = (sum_t)a[0];
        h[1] = (sum_t)a[1]; 
        h[2] = (sum_t)a[2];
        h[3] = (sum_t)a[3];

        h[4] = a[0]>>BITS_PER_SUM;
        h[5] = a[1]>>BITS_PER_SUM;
        h[6] = a[2]>>BITS_PER_SUM;
        h[7] = a[3]>>BITS_PER_SUM;
          
        sum += a[0] + a[1] + a[2] + a[3];
    }
    return (((sum_t)sum) + (sum>>BITS_PER_SUM)) >> 1;
}

static inline int x264_pixel_satd_4x4( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 )
{
    
    sum2_t tmp[4][2];
    sum2_t a0, a1, a2, a3, b0, b1;
    sum2_t sum = 0;
    for( int i = 0; i < 4; i++, pix1 += i_pix1, pix2 += i_pix2 )
    {
        a0 = pix1[0] - pix2[0];
        a1 = pix1[1] - pix2[1];
        b0 = (a0+a1) + ((a0-a1)<<BITS_PER_SUM);
        a2 = pix1[2] - pix2[2];
        a3 = pix1[3] - pix2[3];
        b1 = (a2+a3) + ((a2-a3)<<BITS_PER_SUM);
        tmp[i][0] = b0 + b1;
        tmp[i][1] = b0 - b1;
    }
    for( int i = 0; i < 2; i++ )
    {
        HADAMARD4( a0, a1, a2, a3, tmp[0][i], tmp[1][i], tmp[2][i], tmp[3][i] );
        a0 = abs2(a0) + abs2(a1) + abs2(a2) + abs2(a3);
        sum += ((sum_t)a0) + (a0>>BITS_PER_SUM);
    }

    sum = sum >> 1;
    return sum;//sum >> 1;
}

#define ORDER(a, b, c, d) ((a << 6) | (b << 4) | (c << 2) | d)


/*
%macro DIFF_BW 3
	movu %1,%2
	movu m5, %3
	punpcklbw %1, m7
	punpcklbw m5, m7
	psubw %1, m5
%endmacro
*/

#define DIFF_BW(dst, src1, src2) { \
  dst   = _mm_loadu_si128 ((__m128i*)src1); \
  m5    = _mm_loadu_si128 ((__m128i*)src2); \
  dst   = _mm_unpacklo_epi8(dst, m7); \
  m5    = _mm_unpacklo_epi8(m5, m7); \
  dst   = _mm_sub_epi16(dst, m5); \
} 


/*
%macro BUTTERFLY_HORIZONTAL_1 2
	mova %2, %1 
	phaddw %2, %1
	phsubw %1, %1
	punpcklwd %1, %2
%endmacro*/

#define BUTTERFLY_HORIZONTAL_1(x0, x1) { \
  x1 = _mm_load_si128(&x0); \
  x1 = _mm_hadd_epi16(x1, x0); \
  x0 = _mm_hsub_epi16(x0, x0); \
  x0 = _mm_unpacklo_epi8(x0, x1); \
}

/*
%macro BUTTERFLY_HORIZONTAL_2 2
	pshufd %2, %1, ORDER(2, 3, 0, 1)
	pxor %1, m6
	psubw %1, m6
	paddw %1, %2
%endmacro
*/

#define BUTTERFLY_HORIZONTAL_2(x0, x1) { \
  x1 = _mm_shuffle_epi32(x0, ORDER(2, 3, 0, 1)); \
  x0 = _mm_xor_si128(x0, m6); \
  x0 = _mm_sub_epi16(x0, m6); \
  x0 = _mm_add_epi16(x0, x1); \
}

/*
%macro BUTTERFLY_HORIZONTAL_4 2
	pshufd %2, %1, ORDER(1, 0, 3, 2)
	pxor %1, m6
	psubw %1, m6
	paddw %1, %2
%endmacro
*/
#define BUTTERFLY_HORIZONTAL_4(x0, x1) { \
  x1 = _mm_shuffle_epi32(x0, ORDER(1, 0, 3, 1)); \
  x0 = _mm_xor_si128(x0, m6); \
  x0 = _mm_sub_epi16(x0, m6); \
  x0 = _mm_add_epi16(x0, x1); \
}



static inline int x264_pixel_satd_4x4_simd( pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2 )
{
  int sum;
  __m128i m0, m1, m2, m3, m4, m5, m6, m7;
  // 	pxor m7, m7
  m7 = _mm_setzero_si128();
  
  // DIFF_BW m0, [r0], [r2]
	// DIFF_BW m1, [r0+r1], [r2+r3]
	// lea r0, [r0 + 2 * r1]
	// lea r2, [r2 + 2 * r3]
	// DIFF_BW m2, [r0], [r2]
	// DIFF_BW m3, [r0+r1], [r2+r3]
  
  DIFF_BW(m0, pix1, pix2);
  DIFF_BW(m1, pix1 + i_pix1, pix2 + i_pix2);
  DIFF_BW(m2, pix1 + i_pix1 * 2, pix2 + i_pix2 * 2);
  DIFF_BW(m3, pix1 + i_pix1 * 3, pix2 + i_pix2 * 3);
  printf("\n");

  // punpcklqdq m0, m2
	// punpcklqdq m1, m3
  m0 = _mm_unpacklo_epi64(m0, m2);
  m1 = _mm_unpacklo_epi64(m1, m3);
   
  // constant_ffffffff00000000ffffffff00000000:
	//   times 2 dd -1, 0
  double _m6_data[2] = { -1, 0 };
  // mova m6, [constant_ffffffff00000000ffffffff00000000]
  m6 = _mm_load_si128 (_m6_data);

  // BUTTERFLY_HORIZONTAL_2 m0, m4
	// BUTTERFLY_HORIZONTAL_2 m1, m4
  BUTTERFLY_HORIZONTAL_2(m0, m4);
	BUTTERFLY_HORIZONTAL_2(m1, m4);

	// BUTTERFLY_HORIZONTAL_1 m0, m4
	// BUTTERFLY_HORIZONTAL_1 m1, m4
  BUTTERFLY_HORIZONTAL_1(m0, m4);
	BUTTERFLY_HORIZONTAL_1(m1, m4);

  // pshufd m6, m6, ORDER(3, 1, 2, 0)
  m6 = _mm_shuffle_epi32(m6, ORDER(3, 1, 2, 0));

  // BUTTERFLY_HORIZONTAL_4 m0, m4
	// BUTTERFLY_HORIZONTAL_4 m1, m4
  BUTTERFLY_HORIZONTAL_4(m0, m4)
  BUTTERFLY_HORIZONTAL_4(m1, m4)

  // psubw m2, m0, m1
	// paddw m0, m1
  m2 = _mm_sub_epi16(m0, m1);
  m0 = _mm_add_epi16(m0, m1);

  // pabsw m0, m0
	// pabsw m2, m2

  m0 = _mm_abs_epi16(m0);

  m2 = _mm_abs_epi16(m2);
  printf("\n");

  // paddw m0, m2
  m0 = _mm_add_epi16(m0, m2);

  // phaddw m0, m0
	// phaddw m0, m0
	// phaddw m0, m0
  m0 = _mm_hadd_epi16(m0, m0);
  m0 = _mm_hadd_epi16(m0, m0);
  m0 = _mm_hadd_epi16(m0, m0);

  // movd  eax, m0
  sum = _mm_cvtsi128_si32 (m0); 

  //sum = *((int*)&m0);

  // and eax, 0xffff
  sum &= 0xffff;
  // add eax, 1
	// shr eax, 1
  sum = (sum + 1) >> 1;

  return sum;

}



#define NR (8) // Number of rows.
#define MR (8) // Number of columns.

static void wht_composed_novectors(int16_t* A)
{
    int16_t *a = A;
    int16_t c[64];

     
    for (int i = 0; i < MR; ++i) {
        c[0+i*8] = a[0] + a[1] + a[2] + a[3] + a[4] + a[5] + a[6] + a[7];
        c[1+i*8] = a[0] - a[1] + a[2] - a[3] + a[4] - a[5] + a[6] - a[7];
        c[2+i*8] = a[0] + a[1] - a[2] - a[3] + a[4] + a[5] - a[6] - a[7];
        c[3+i*8] = a[0] - a[1] - a[2] + a[3] + a[4] - a[5] - a[6] + a[7];
        c[4+i*8] = a[0] + a[1] + a[2] + a[3] - a[4] - a[5] - a[6] - a[7];
        c[5+i*8] = a[0] - a[1] + a[2] - a[3] - a[4] + a[5] - a[6] + a[7];
        c[6+i*8] = a[0] + a[1] - a[2] - a[3] - a[4] - a[5] + a[6] + a[7];
        c[7+i*8] = a[0] - a[1] - a[2] + a[3] - a[4] + a[5] + a[6] - a[7];
        a += NR;
    }

    int sum = 0;
    for(int i = 0; i < 8; i++) {
      for(int j = 0; j < 8; j++) {
        sum += abs(c[j*8+i]);
      
      }  
    }

}


/*
%macro LOAD_DUP_2x4P 4 ; dst, tmp, 2* pointer
    movd %1, %3
    movd %2, %4
    JDUP %1, %2
%endmacro
*/
#define LOAD_DUP_2x4p(dst, tmp, pix1, pix2) { \
  dst = _mm_cvtsi32_si128(*((int*)(pix1))); \
  tmp = _mm_cvtsi32_si128(*((int*)(pix2))); \
  dst = (__m128i)_mm_shuffle_ps((__m128)dst, (__m128)tmp, 0); \
}

/*
  pmaddubsw m%2, m%5
  pmaddubsw m%1, m%5
  pmaddubsw m%4, m%5
  pmaddubsw m%3, m%5
*/

#define HUMSUB(_1, _2, _3, _4, _5) { \
  m##_2 = _mm_maddubs_epi16(m##_2, m##_5); \
  m##_1 = _mm_maddubs_epi16(m##_1, m##_5); \
  m##_4 = _mm_maddubs_epi16(m##_4, m##_5); \
  m##_3 = _mm_maddubs_epi16(m##_3, m##_5); \
}

/*
HSUMSUB %1, %2, %3, %4, %5
psubw m%1, m%2
psubw m%3, m%4
*/
#define DIFF_SUMSUB_SSSE3(_1, _2, _3, _4, _5) { \
  HUMSUB(_1, _2, _3, _4, _5) \
  m##_1 = _mm_sub_epi16(m##_1, m##_2); \
  m##_3 = _mm_sub_epi16(m##_3, m##_4); \
}

/*
    mova    m%4, m%2
    padd%1  m%2, m%3
    psub%1  m%3, m%4
*/

#define SUMSUB_BA(_, _2, _3, _4) { \
  m##_4 = m##_2; \
  m##_2 = _mm_add_epi16(m##_2, m##_3); \
  m##_3 = _mm_sub_epi16(m##_3, m##_4); \
}

/*
    mova      m%4, m%2
    punpckl%1 m%2, m%3
    punpckh%1 m%4, m%3
    SWAP %3, %4
*/
#define SBUTTERFLY(_, _2, _3, _4) { \
  m##_4 = m##_2; \
  m##_2 = _mm_unpacklo_epi64(m##_2, m##_3); \
  m##_4 = _mm_unpackhi_epi64(m##_4, m##_3); \
  __m128i tmp = m##_3; \
  m##_3 = m##_4; \
  m##_4 = tmp; \
}

/*
    mova    m%5, m%3
    pblendw m%3, m%4, q2222
    psll%1  m%4, 16
    psrl%1  m%5, 16
    por     m%4, m%5
*/
#define TRANS_SSE4(_, order, _3, _4, _5) { \
  m##_5 = m##_3; \
  m##_3 = _mm_blend_epi16(m##_3, m##_4, order); \
  m##_4 = _mm_slli_epi32(m##_4, 16); \
  m##_5 = _mm_srli_epi32(m##_5, 16); \
  m##_4 = _mm_or_si128(m##_4, m##_5); \
}

/*
  pabsw   %1, %3
  pabsw   %2, %4
*/

#define ABSW2(_1, _2, _3, _4) { \
  m##_1 =  _mm_abs_epi16(m##_3); \
  m##_2 =  _mm_abs_epi16(m##_4); \
}

// replacement for HADAMARD 0, sumsub, 0, 1, 2, 3
// SUMSUB_BA w, %3, %4, %5
#define HADAMARD_0() { \
  SUMSUB_BA(-1, 0, 1, 2) \
}

// replacement for HADAMARD 4, sumsub, 0, 1, 2, 3
// SUMSUB_BA w, %3, %4, %5
#define HADAMARD_4() { \
  SBUTTERFLY(-1, 0, 1, 2) \
  SUMSUB_BA(-1, 0, 1, 2) \
}

// replacement for HADAMARD 1, amax, 0, 1, 2, 3
#define HADAMARD_1() { \
  TRANS_SSE4(_, ORDER(2, 2, 2, 2), 0, 1, 2) \
  ABSW2(0, 1, 2, 3) \
  m0 = _mm_max_epi16(m0, m1); \
}

static int satd_4x4(pixel *pix1, intptr_t i_pix1, pixel *pix2, intptr_t i_pix2) {
  __m128i m0, m1, m2, m3, m4, m5, m6, m7;
  
  // mova m4, [hmul_4p]
  uint8_t hmul_4p[16] = {1, 1, 1, 1, 1, -1, 1, -1, 1, 1, 1, 1, 1, -1, 1, -1};
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
  DIFF_SUMSUB_SSSE3(0, 2, 1, 3, 4);
  
  // HADAMARD 0, sumsub, 0, 1, 2, 3
  HADAMARD_0();

  // HADAMARD 4, sumsub, 0, 1, 2, 3
  HADAMARD_4();
  
  // HADAMARD 1, amax, 0, 1, 2, 3
  HADAMARD_1();

  // HADDW m0, m1
  // pmaddwd   %1, [pw_1]
  m0 = _mm_madd_epi16(m0, _mm_set1_epi16(1));
  // HADDD     %1, %2
  // MOVHL         xmm%2, xmm%1
  m1 = _mm_shuffle_epi32(m0, ORDER(3,2,3,2));
  
  //paddd         xmm%1, xmm%2
  m0 = _mm_add_epi32 (m0, m1);
  // PSHUFLW       xmm%2, xmm%1, q1032
  m1 = _mm_shufflelo_epi16(m0, ORDER(1, 0, 3, 2));
  // paddd         xmm%1, xmm%2
  m0 = _mm_add_epi16(m0, m1);

  int sum =_mm_cvtsi128_si32(m0);
  // movd eax, m0

  return sum;
}
  
 

static void inline fill_img(uint8_t* pix1, uint8_t* pix2, int i) {
  pix1[i % 64] = 10 +(1. + sinf((double)(i*2.) / 100.)) + (i%19);
  pix2[i % 64] = 20 + 1 + (i%19);
}

int main() {
  pixel pix1[128], pix2[128];
  int16_t diff[128];

  const int i_pix1 = 8, i_pix2 = 8;

  for (int i = 0; i < 128; i++) {
    pix1[i] = 20 +(1. + sinf((double)(i*2.) / 100.)) * (i*4%19)*( (i+1)%4);
    pix2[i] = 0 +(1. + sinf((double)(i*2.) / 100.)) * (i*4%7)*( (i+1)%4);
  }

  for(int i = 0; i < 8; i++) {
    for(int j = 0; j < 8; j++) {
      diff[i*8+j] = pix1[j*8+i] - pix2[j*8+i];
    }
  }

  for(int j = 0; j < 1; j++) {
    const int iterations = 1;
    struct timespec stime, etime;

    printf("Saying hi\n");
    printf("%d \n", *pix1);

    int a = 
      add(pix1, i_pix1, pix2, i_pix2) +
      add(pix1 + 4, i_pix1, pix2 + 4, i_pix2)+
      add(pix1 + 4* i_pix1, i_pix1, pix2 + 4*i_pix2, i_pix2)+
      add(pix1 + 4* i_pix1 + 4, i_pix1, pix2 + 4*i_pix2 + 4, i_pix2);

    
    int b = 
      satd_4x4_asm(pix1, i_pix1, pix2, i_pix2) +
      satd_4x4_asm(pix1 + 4, i_pix1, pix2 + 4, i_pix2)+
      satd_4x4_asm(pix1 + 4* i_pix1, i_pix1, pix2 + 4*i_pix2, i_pix2)+
      satd_4x4_asm(pix1 + 4* i_pix1 + 4, i_pix1, pix2 + 4*i_pix2 + 4, i_pix2);
    
    printf("%d %d\n", a, b);
    printf("Hi said\n");

    
    clock_gettime(CLOCK_REALTIME, &stime);
    long tot1 = 0, tot2 = 0;
    for (int i = 0; i < iterations; i++) {
      tot1 = x264_pixel_satd_8x8(pix1, i_pix1, pix2, i_pix2);
    }
    printf("sum simd 8x4: %d \n", tot1);

    clock_gettime(CLOCK_REALTIME, &etime);
    //printf("Time 8x8: %g\n", (etime.tv_sec  - stime.tv_sec) + 1e-9*(etime.tv_nsec  - stime.tv_nsec));
    clock_gettime(CLOCK_REALTIME, &stime);
    for(int i = 0; i < iterations; i++) {
      tot2 = x264_pixel_satd_8x4(pix1, i_pix1, pix2, i_pix2) + 
        x264_pixel_satd_8x4(pix1 + 4*i_pix1, i_pix1, pix2 + 4*i_pix2, i_pix2);
    }
    printf("sum scal 8x4: %d \n", tot2);
    clock_gettime(CLOCK_REALTIME, &etime);
    //printf("Time 8x4: %g\n", (etime.tv_sec  - stime.tv_sec) + 1e-9*(etime.tv_nsec  - stime.tv_nsec));

    
    clock_gettime(CLOCK_REALTIME, &stime);
    
    for(int i = 0; i < iterations; i++) {
      tot1 = 
      satd_4x4(pix1, i_pix1, pix2, i_pix2) +
      satd_4x4(pix1 + 4, i_pix1, pix2 + 4, i_pix2)+
      satd_4x4(pix1 + 4* i_pix1, i_pix1, pix2 + 4*i_pix2, i_pix2)+
      satd_4x4(pix1 + 4* i_pix1 + 4, i_pix1, pix2 + 4*i_pix2 + 4, i_pix2);
      
    }
    clock_gettime(CLOCK_REALTIME, &etime);   
    printf("Times 4x4: %ld %ld\n",tot1, (etime.tv_nsec  - stime.tv_nsec));

    clock_gettime(CLOCK_REALTIME, &stime);
    for(int i = 0; i < iterations; i++) {
      tot2 = x264_pixel_satd_4x4(pix1, i_pix1, pix2, i_pix2)+
        x264_pixel_satd_4x4(pix1 + 4, i_pix1, pix2 + 4, i_pix2)+
        x264_pixel_satd_4x4(pix1 + 4*i_pix1, i_pix1, pix2 + 4*i_pix2, i_pix2)+
        x264_pixel_satd_4x4(pix1 + 4*i_pix1 + 4, i_pix1, pix2 + 4*i_pix2 + 4, i_pix2);
    }
    clock_gettime(CLOCK_REALTIME, &etime);   
    printf("Time 4x4: %ld %ld\n", tot2, (etime.tv_nsec  - stime.tv_nsec));
  }

  return 0;
}