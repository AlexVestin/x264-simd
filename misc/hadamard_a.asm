global add
global satd_4x4_asm
global satd_8x8_asm

SECTION .rodata align=32
hmul_4p:           times 2 db 1, 1, 1, 1, 1, -1, 1, -1
pw_1:              times 16 dw 1
hmul_8p:           times 8 db 1
                   times 4 db 1, -1
section .text

%define ORDER(a, b, c, d) ((a << 6) | (b << 4) | (c << 2) | d)

%macro SWAP 2+ ;
  %xdefine %%tmp m%1
  %xdefine m%1 m%2
  %xdefine m%2 %%tmp
%endmacro

%macro SBUTTERFLY 4
    mova      m%4, m%2
    punpckl%1 m%2, m%3
    punpckh%1 m%4, m%3
    SWAP %3, %4
%endmacro

%macro LOAD_DUP_2x4P 4 ; dst, tmp, 2* pointer
    movd %1, %3
    movd %2, %4
    shufps %1, %2, 0
%endmacro

%macro HSUMSUB 5
    pmaddubsw m%2, m%5
    pmaddubsw m%1, m%5
    pmaddubsw m%4, m%5
    pmaddubsw m%3, m%5
%endmacro

%macro DIFF_SUMSUB_SSSE3 5
    HSUMSUB %1, %2, %3, %4, %5
    psubw m%1, m%2
    psubw m%3, m%4
%endmacro

%macro TRANS_SSE4 5-6 ; see above
  mova    m%5, m%3
  pblendw m%3, m%4, ORDER(2,2,2,2) ; q2222
  psll%1  m%4, 16
  psrl%1  m%5, 16
  por     m%4, m%5
%endmacro


%macro SUMSUB_BA 3-4
  mova    m%4, m%2
  padd%1  m%2, m%3
  psub%1  m%3, m%4
%endmacro

%macro ABSW2 6 ; dst1, dst2, src1, src2, tmp, tmp
  pabsw   %1, %3
  pabsw   %2, %4
%endmacro


%macro HADAMARD 5-6
%if %1!=0 ; have to reorder stuff for horizontal op
    %if %1==1
        TRANS_SSE4 d, 0, %3, %4, %5, %6
    %elif %1==4
        SBUTTERFLY qdq, %3, %4, %5
    %endif
%endif
%ifidn %2, sumsub
    SUMSUB_BA w, %3, %4, %5
%else
    %ifidn %2, amax
      ABSW2 m%3, m%4, m%3, m%4, m%5, m%6
    %endif
    pmaxsw m%3, m%4
%endif
%endmacro

%macro CAT_XDEFINE 3
    %xdefine %1%2 %3
%endmacro

%macro INIT_XMM 1
  %define mova movdqa
  %define movu movdqu
  %define movh movq
  %define movnta movntdq
  %assign num_mmregs 16

  %assign %%i 0
  %rep num_mmregs
    CAT_XDEFINE m, %%i, %1 %+ %%i
    %assign %%i %%i+1
  %endrep
%endmacro

%macro SATD_START_MMX 0
    lea  r4, [3*r1] ; 3*stride1
    lea  r5, [3*r3] ; 3*stride2
%endmacro

%macro HADDD 2
    ; MOVHL       xmm%2, xmm%1
    pshufd        xmm1, xmm0, ORDER(3, 2, 3, 2) ; q3232
    paddd         xmm0, xmm1
    ; PSHUFLW     xmm%2, xmm%1, q1032
    pshuflw       xmm1, xmm0, ORDER(1, 0, 3, 2)
    paddd         xmm0, xmm1
%endmacro

%define r0 rdi
%define r1 rsi
%define r2 rdx
%define r3 rcx
%define r4 R8
%define r5 R9

INIT_XMM xmm


satd_8x8_asm:
  movdqa xmm7, [hmul_8p]        
  lea    r8,[rsi+rsi*2]
  lea    r9,[rcx+rcx*2]
  pxor   xmm6,xmm6
  movq   xmm4, [rdx]
  movq   xmm5, [rdx+rcx*1]
  punpcklqdq xmm4,xmm4
  movddup xmm0, [rdi]
  punpcklqdq xmm5,xmm5
  movddup xmm1, [rdi+rsi*1]
  pmaddubsw xmm4,xmm7
  pmaddubsw xmm0,xmm7
  pmaddubsw xmm5,xmm7
  pmaddubsw xmm1,xmm7
  psubw  xmm0,xmm4
  psubw  xmm1,xmm5
  movq   xmm4, [rdx+rcx*2]
  movq   xmm5, [rdx+r9*1]
  punpcklqdq xmm4,xmm4
  movddup xmm2, [rdi+rsi*2]
  punpcklqdq xmm5,xmm5
  movddup xmm3, [rdi+r8*1]
  pmaddubsw xmm4,xmm7
  pmaddubsw xmm2,xmm7
  pmaddubsw xmm5,xmm7
  pmaddubsw xmm3,xmm7
  psubw  xmm2,xmm4
  psubw  xmm3,xmm5
  lea    rdi,[rdi+rsi*4]
  lea    rdx,[rdx+rcx*4]
  movdqa xmm4,xmm0
  paddw  xmm0,xmm1
  psubw  xmm1,xmm4
  movdqa xmm4,xmm2
  paddw  xmm2,xmm3
  psubw  xmm3,xmm4
  movdqa xmm4,xmm0
  paddw  xmm0,xmm2
  psubw  xmm2,xmm4
  movdqa xmm4,xmm1
  paddw  xmm1,xmm3
  psubw  xmm3,xmm4
  pabsw  xmm0,xmm0
  pabsw  xmm2,xmm2
  pabsw  xmm1,xmm1
  pabsw  xmm3,xmm3
  movdqa xmm4,xmm0
  pblendw xmm0,xmm2,0xaa
  pslld  xmm2,0x10
  psrld  xmm4,0x10
  por    xmm2,xmm4
  pmaxsw xmm0,xmm2
  paddw  xmm6,xmm0
  movdqa xmm4,xmm1
  pblendw xmm1,xmm3,0xaa
  pslld  xmm3,0x10
  psrld  xmm4,0x10
  por    xmm3,xmm4
  pmaxsw xmm1,xmm3
  paddw  xmm6,xmm1
  movq   xmm4, [rdx]
  movq   xmm5, [rdx+rcx*1]
  punpcklqdq xmm4,xmm4
  movddup xmm0, [rdi]
  punpcklqdq xmm5,xmm5
  movddup xmm1, [rdi+rsi*1]
  pmaddubsw xmm4,xmm7
  pmaddubsw xmm0,xmm7
  pmaddubsw xmm5,xmm7
  pmaddubsw xmm1,xmm7
  psubw  xmm0,xmm4
  psubw  xmm1,xmm5
  movq   xmm4, [rdx+rcx*2]
  movq   xmm5, [rdx+r9*1]
  punpcklqdq xmm4,xmm4
  movddup xmm2, [rdi+rsi*2]
  punpcklqdq xmm5,xmm5
  movddup xmm3, [rdi+r8*1]
  pmaddubsw xmm4,xmm7
  pmaddubsw xmm2,xmm7
  pmaddubsw xmm5,xmm7
  pmaddubsw xmm3,xmm7
  psubw  xmm2,xmm4
  psubw  xmm3,xmm5
  lea    rdi,[rdi+rsi*4]
  lea    rdx,[rdx+rcx*4]
  movdqa xmm4,xmm0
  paddw  xmm0,xmm1
  psubw  xmm1,xmm4
  movdqa xmm4,xmm2
  paddw  xmm2,xmm3
  psubw  xmm3,xmm4
  movdqa xmm4,xmm0
  paddw  xmm0,xmm2
  psubw  xmm2,xmm4
  movdqa xmm4,xmm1
  paddw  xmm1,xmm3
  psubw  xmm3,xmm4
  pabsw  xmm0,xmm0
  pabsw  xmm2,xmm2
  pabsw  xmm1,xmm1
  pabsw  xmm3,xmm3
  movdqa xmm4,xmm0
  pblendw xmm0,xmm2,0xaa
  pslld  xmm2,0x10
  psrld  xmm4,0x10
  por    xmm2,xmm4
  pmaxsw xmm0,xmm2
  paddw  xmm6,xmm0
  movdqa xmm4,xmm1
  pblendw xmm1,xmm3,0xaa
  pslld  xmm3,0x10
  psrld  xmm4,0x10
  por    xmm3,xmm4
  pmaxsw xmm1,xmm3
  paddw  xmm6,xmm1  
  pmaddwd xmm6, [pw_1]
  pshufd xmm7,xmm6,0xee
  paddd  xmm6,xmm7
  pshuflw xmm7,xmm6,0x4e
  paddd  xmm6,xmm7
  movd   eax,xmm6
  ret    

satd_4x4_asm:
  lea    r8,[rsi+rsi*2]
  lea    r9,[rcx+rcx*2]
  movdqa xmm4, [hmul_4p]        
  movd   xmm2, [rdx]
  movd   xmm5, [rdx+rcx*1]
  shufps xmm2,xmm5,0x0
  movd   xmm3, [rdx+rcx*2]
  movd   xmm5, [rdx+r9*1]
  shufps xmm3,xmm5,0x0
  movd   xmm0, [rdi]
  movd   xmm5, [rdi+rsi*1]
  shufps xmm0,xmm5,0x0
  movd   xmm1, [rdi+rsi*2]
  movd   xmm5, [rdi+r8*1]
  shufps xmm1,xmm5,0x0

  pmaddubsw xmm2,xmm4
  pmaddubsw xmm0,xmm4
  pmaddubsw xmm3,xmm4
  pmaddubsw xmm1,xmm4
  psubw  xmm0,xmm2
  psubw  xmm1,xmm3
  movdqa xmm2,xmm0
  paddw  xmm0,xmm1
  psubw  xmm1,xmm2
  movdqa xmm2,xmm0
  punpcklqdq xmm0,xmm1
  punpckhqdq xmm2,xmm1
 
  movdqa xmm1,xmm0
  paddw  xmm0,xmm2
  psubw  xmm2,xmm1 
  movdqa xmm1,xmm0
  pblendw xmm0,xmm2,0xaa
  pslld  xmm2,0x10
  psrld  xmm1,0x10
  por    xmm2,xmm1
  pabsw  xmm0,xmm0
  pabsw  xmm2,xmm2
  pmaxsw xmm0,xmm2

  pmaddwd xmm0, [pw_1]        
  pshufd xmm2,xmm0,0xee
  paddd  xmm0,xmm2
  pshuflw xmm2,xmm0,0x4e
  paddd  xmm0,xmm2
  movd   eax,xmm0
  ret    

add:
    SATD_START_MMX
    mova m4, [hmul_4p]
   
    LOAD_DUP_2x4P m2, m5, [r2], [r2+r3]
    LOAD_DUP_2x4P m3, m5, [r2+2*r3], [r2+r5]
    LOAD_DUP_2x4P m0, m5, [r0], [r0+r1]
    LOAD_DUP_2x4P m1, m5, [r0+2*r1], [r0+r4]
    DIFF_SUMSUB_SSSE3 0, 2, 1, 3, 4
    HADAMARD 0, sumsub, 0, 1, 2, 3
    HADAMARD 4, sumsub, 0, 1, 2, 3
    HADAMARD 1, amax, 0, 1, 2, 3
    ; HADDW m0, m1
    pmaddwd   m0, [pw_1]
    HADDD     m0, m1
    movd eax, m0
    ret