### build

```
git clone https://code.videolan.org/videolan/x264.git
make
```

### threads

in `x264/encoder/slicetype.c`
`static void slicetype_slice_cost( x264_slicetype_slice_t *s )`
->
`static void* slicetype_slice_cost( x264_slicetype_slice_t \*s )`

&&

in `x264/common/cpu.c`
`#ifdef __EMSCRIPTEN__` -> #include <emscripten.h>

return emscripten_num_logical_cores();

### x264 example

```
make example && ./main
ffplay output.h264
```

### run SIMD test function

`make test && ./main`

### Generally

Most of the SIMD in `if( cpu&X264_CPU_SSE` ...

https://software.intel.com/sites/landingpage/IntrinsicsGuide/#techs=SSE2,SSE3,SSSE3,SSE4_1,AVX

emscripten/wasm generally only supports SSE1 & SSE2 instructionss (https://emscripten.org/docs/porting/simd.html#compiling-simd-code-targeting-x86-sse-instruction-set), and some emulated instructions up to AVX https://github.com/emscripten-core/emscripten/pull/11327

### profile

build with -pg and --enable-gprof for x264 (maybe -no-pie/-fno-pie)

### links

- https://wiki.videolan.org/X264_asm_intro/ ( https://wiki.videolan.org/X264asm/ )
- http://www.apsipa.org/proceedings_2012/papers/201.pdf
- https://eiken.dev/blog/2020/04/optimizing-the-walsh-hadamard-transform-using-simd-intrinsics/
- https://mailman.videolan.org/pipermail/x264-devel/attachments/20130423/ffd6bfb6/attachment-0001.pdf
- https://www.researchgate.net/publication/4222524_Introduction_to_H264_advanced_video_coding
- https://www.researchgate.net/profile/Daniel_Lun/publication/220598752_Improved_SIMD_Architecture_for_High_Performance_Video_Processors/links/5498d1cf0cf2519f5a1dea03/Improved-SIMD-Architecture-for-High-Performance-Video-Processors.pdf
- https://pdfs.semanticscholar.org/9942/1f78e7f0c0dbfaaedf6c73d3bf9c3bea18fc.pdf
