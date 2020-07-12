# build

```
git clone https://code.videolan.org/videolan/x264.git
mkdir bin
make
```

# run x264 example

```
make example && ./main
ffplay output.h264 (ska bara bli rödaktiga fyrkanter)
```

# run SIMD test function

make test && ./main

# Generellt

Mesta av SIMDen som hittas finns i block av `if( cpu&X264_CPU_SSE`, såg går att `ctrl+shift+f`a det

https://software.intel.com/sites/landingpage/IntrinsicsGuide/#techs=SSE2,SSE3,SSSE3,SSE4_1,AVX
Assembler variant i grått till höger i kolumnen,

emscripten stöder bara officiellt SSE1 & SSE2 än så länge (https://emscripten.org/docs/porting/simd.html#compiling-simd-code-targeting-x86-sse-instruction-set), men har implementerat SSE4.2 och AVX 128bit https://github.com/emscripten-core/emscripten/pull/11327

# länkar

- https://mailman.videolan.org/pipermail/x264-devel/attachments/20130423/ffd6bfb6/attachment-0001.pdf
- https://wiki.videolan.org/X264asm/
- https://wiki.videolan.org/X264_asm_intro/
