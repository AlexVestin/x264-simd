/*****************************************************************************
 * example.c: libx264 API usage example
 *****************************************************************************
 * Copyright (C) 2014-2020 x264 project
 *
 * Authors: Anton Mitrofanov <BugMaster@narod.ru>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02111, USA.
 *
 * This program is also available under a commercial proprietary license.
 * For more information, contact us at licensing@x264.com.
 *****************************************************************************/

#ifdef _WIN32
#include <io.h>       /* _setmode() */
#include <fcntl.h>    /* _O_BINARY */
#endif

#include <stdint.h>
#include <stdio.h>
#include <x264.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>


int main( int argc, char **argv )
{
    int width = 1920, height = 1080;
    x264_param_t param;
    x264_picture_t pic;
    x264_picture_t pic_out;
    x264_t *h;
    int i_frame = 0;
    int i_frame_size;
    x264_nal_t *nal;
    int i_nal;

    // output file
    FILE* f = fopen("output.h264", "wb");
    
    /* Get default params for preset/tuning */
    if( x264_param_default_preset( &param, "medium", NULL ) < 0 )
        goto fail;

    /* Configure non-default params */
    param.i_bitdepth = 8;
    
    // yuv420p
    param.i_csp = X264_CSP_I420;
    param.i_width  = width;
    param.i_height = height;
    param.b_vfr_input = 0;
    param.b_repeat_headers = 1;
    param.b_annexb = 1;
    

    /* Apply profile restrictions. */
    if( x264_param_apply_profile( &param, "high" ) < 0 )
        goto fail;

    if( x264_picture_alloc( &pic, param.i_csp, param.i_width, param.i_height ) < 0 )
        goto fail;
#undef fail
#define fail fail2

    h = x264_encoder_open( &param );
    if( !h )
        goto fail;
#undef fail
#define fail fail3

    int luma_size = width * height;
    int chroma_size = luma_size / 4;
    /* Encode frames */
    
    int cidx;
    int lidx;
    size_t image_size = width * height;

    const int nr_frames = 400;
    printf("Encoding %d frames\n", nr_frames);

    struct timespec stime, etime, encstime, encetime;
    clock_gettime(CLOCK_REALTIME, &stime);

    double total_time = 0;

    for( i_frame = 0; i_frame < nr_frames; i_frame++ ) {

      if(i_frame > 0 && !(i_frame % 50)) {
          clock_gettime(CLOCK_REALTIME, &etime);
          printf("%d frames encoded, time elapsed: %g \n", i_frame, (etime.tv_sec  - stime.tv_sec) + 1e-9*(etime.tv_nsec  - stime.tv_nsec));
      }
        /* Read input frame */
          size_t upos = image_size;
          size_t vpos = upos + upos / 4;
          size_t i = 0;
          uint8_t r, g, b;
          cidx = 0;
          lidx = 0;
        
        
          for( size_t line = 0; line < height; ++line ) {
        
              if( !(line % 2) ) {
                  for( size_t x = 0; x < width; x += 2 ) {
                      r = x % 128;
                      g = i_frame % 256;
                      b = sinf((float)x / 30 + i_frame / 100);
                      // y
                      pic.img.plane[0][cidx++] = ((66*r + 129*g + 25*b) >> 8) + 16;
                      // u
                      pic.img.plane[1][lidx] = ((-38*r + -74*g + 112*b) >> 8) + 128;
                      // v
                      pic.img.plane[2][lidx++] = ((112*r + -94*g + -18*b) >> 8) + 128;
                      // y again
                      pic.img.plane[0][cidx++] = ((66*r + 129*g + 25*b) >> 8) + 16;
                  }
              } else {
                  for( size_t x = 0; x < width; x += 1 ) {
                      r = i_frame % 128;
                      g = x % 256;
                      b = sinf((float)x / 30 + i_frame / 100);
                      // y
                      pic.img.plane[0][cidx++] = ((66*r + 129*g + 25*b) >> 8) + 16;
                  }
              }
          }  
          
      

        pic.i_pts = i_frame;
        clock_gettime(CLOCK_REALTIME, &encstime);
        i_frame_size = x264_encoder_encode( h, &nal, &i_nal, &pic, &pic_out );
        clock_gettime(CLOCK_REALTIME, &encetime);
        double diff = (encetime.tv_sec  - encstime.tv_sec) + 1e-9*(encetime.tv_nsec  - encstime.tv_nsec);
        total_time += diff;

        if( i_frame_size < 0 ) {
          goto fail;
        } else if( i_frame_size ) {
            if( !fwrite( nal->p_payload, i_frame_size, 1, f ) )
                goto fail;
        }
    }
    /* Flush delayed frames */
    while( x264_encoder_delayed_frames( h ) )
    {
        i_frame_size = x264_encoder_encode( h, &nal, &i_nal, NULL, &pic_out );
        if( i_frame_size < 0 )
            goto fail;
        else if( i_frame_size )
        {
            if( !fwrite( nal->p_payload, i_frame_size, 1, f ) )
                goto fail;
        }
    }

    x264_encoder_close( h );
    x264_picture_clean( &pic );

    
    clock_gettime(CLOCK_REALTIME, &etime);
    printf("\n Time: %g\n", (etime.tv_sec  - stime.tv_sec) + 1e-9*(etime.tv_nsec  - stime.tv_nsec));
    printf("Encode time: %f\n", total_time);
    printf("Exited cleanly\n");
    return 0;

#undef fail
fail3:
    x264_encoder_close( h );
fail2:
    x264_picture_clean( &pic );
fail:
    return -1;
    
}
