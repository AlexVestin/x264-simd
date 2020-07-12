

#include <stdio.h>
#include <inttypes.h>
#include <time.h>

// x264 defines
typedef uint8_t pixel;
typedef int16_t dctcoef;
#define FENC_STRIDE 16
#define FDEC_STRIDE 32
#define PIXEL_MAX 255

// line 154 of x264/common/x86/dct-a.asm
// cglobal, cextern INIT_XMM macros from x264/common/x86/x86utils.asm or x264/common/x86/x86inc.asm 
static void dct4x4dc( dctcoef d[16] )
{
    dctcoef tmp[16];

    for( int i = 0; i < 4; i++ )
    {
        int s01 = d[i*4+0] + d[i*4+1];
        int d01 = d[i*4+0] - d[i*4+1];
        int s23 = d[i*4+2] + d[i*4+3];
        int d23 = d[i*4+2] - d[i*4+3];

        tmp[0*4+i] = s01 + s23;
        tmp[1*4+i] = s01 - s23;
        tmp[2*4+i] = d01 - d23;
        tmp[3*4+i] = d01 + d23;
    }

    for( int i = 0; i < 4; i++ )
    {
        int s01 = tmp[i*4+0] + tmp[i*4+1];
        int d01 = tmp[i*4+0] - tmp[i*4+1];
        int s23 = tmp[i*4+2] + tmp[i*4+3];
        int d23 = tmp[i*4+2] - tmp[i*4+3];

        d[i*4+0] = ( s01 + s23 + 1 ) >> 1;
        d[i*4+1] = ( s01 - s23 + 1 ) >> 1;
        d[i*4+2] = ( d01 - d23 + 1 ) >> 1;
        d[i*4+3] = ( d01 + d23 + 1 ) >> 1;
    }
}

void test_dct4x4dc(int iterations) {
  dctcoef d[16];
	struct timespec stime, etime;
	clock_gettime(CLOCK_REALTIME, &stime);

  for(int i = 0; i < iterations; i++) {
    dct4x4dc(d);
  }
  
	clock_gettime(CLOCK_REALTIME, &etime);
  printf("time: %g\n", (etime.tv_sec  - stime.tv_sec) + 1e-9*(etime.tv_nsec  - stime.tv_nsec));
} 


int main() {
  // Verkar som att vissa kommer köras en gång per pixel så många iterationer är inte helt irimligt
  test_dct4x4dc(100000);
  return 0;
}