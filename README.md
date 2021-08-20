This repo is an attempt to port some of the SIMD code written in assembly to C intrinsics, to be used with WebAssembly. 


### build

```
git clone --depth 1 https://github.com/AlexVestin/x264-wasm x264
mkdir build
make wasm-libx264-simd
```

Needs `nasm` (there's a target for this in the Makefile) for native builds with assembly, and `emsdk` for wasm builds.


### Results
Substituting only the SAD, and SATD 8x8 function (the 4x4 is already very optimized) with SIMD code there was around a 1.6x speedup running a very hastily made benchmark. 
 

### Generally

https://software.intel.com/sites/landingpage/IntrinsicsGuide/#techs=SSE2,SSE3,SSSE3,SSE4_1,AVX

emscripten/wasm generally only supports SSE1 & SSE2 instructionss (https://emscripten.org/docs/porting/simd.html#compiling-simd-code-targeting-x86-sse-instruction-set), and some emulated instructions up to AVX

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
