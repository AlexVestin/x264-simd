
x264/common/x86/pixel-a-8.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <x264_8_pixel_ssd_16x16_mmx>:
       0:	b0 10                	mov    al,0x10
       2:	0f ef ff             	pxor   mm7,mm7
       5:	0f ef c0             	pxor   mm0,mm0
       8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
       f:	00 
      10:	0f 6f 0f             	movq   mm1,QWORD PTR [rdi]
      13:	0f 6f 12             	movq   mm2,QWORD PTR [rdx]
      16:	0f 6f 5f 08          	movq   mm3,QWORD PTR [rdi+0x8]
      1a:	0f 6f 62 08          	movq   mm4,QWORD PTR [rdx+0x8]
      1e:	48 01 f7             	add    rdi,rsi
      21:	48 01 ca             	add    rdx,rcx
      24:	0f 6f ea             	movq   mm5,mm2
      27:	0f 6f f4             	movq   mm6,mm4
      2a:	0f d8 d1             	psubusb mm2,mm1
      2d:	0f d8 e3             	psubusb mm4,mm3
      30:	0f d8 cd             	psubusb mm1,mm5
      33:	0f d8 de             	psubusb mm3,mm6
      36:	0f eb ca             	por    mm1,mm2
      39:	0f eb dc             	por    mm3,mm4
      3c:	0f 6f d1             	movq   mm2,mm1
      3f:	0f 60 d7             	punpcklbw mm2,mm7
      42:	0f 68 cf             	punpckhbw mm1,mm7
      45:	0f 6f e3             	movq   mm4,mm3
      48:	0f 60 e7             	punpcklbw mm4,mm7
      4b:	0f 68 df             	punpckhbw mm3,mm7
      4e:	0f f5 c9             	pmaddwd mm1,mm1
      51:	0f f5 d2             	pmaddwd mm2,mm2
      54:	0f f5 db             	pmaddwd mm3,mm3
      57:	0f f5 e4             	pmaddwd mm4,mm4
      5a:	0f fe ca             	paddd  mm1,mm2
      5d:	0f fe dc             	paddd  mm3,mm4
      60:	0f fe c1             	paddd  mm0,mm1
      63:	0f fe c3             	paddd  mm0,mm3
      66:	fe c8                	dec    al
      68:	7f a6                	jg     10 <x264_8_pixel_ssd_16x16_mmx+0x10>
      6a:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
      6e:	0f fe c1             	paddd  mm0,mm1
      71:	0f 7e c0             	movd   eax,mm0
      74:	c3                   	ret    
      75:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000000078 <x264_8_pixel_ssd_16x8_mmx>:
      78:	b0 08                	mov    al,0x8
      7a:	eb 86                	jmp    2 <x264_8_pixel_ssd_16x16_mmx+0x2>
      7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000080 <x264_8_pixel_ssd_8x8_mmx>:
      80:	b0 04                	mov    al,0x4
      82:	0f ef ff             	pxor   mm7,mm7
      85:	0f ef c0             	pxor   mm0,mm0
      88:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
      8f:	00 
      90:	0f 6f 0f             	movq   mm1,QWORD PTR [rdi]
      93:	0f 6f 12             	movq   mm2,QWORD PTR [rdx]
      96:	0f 6f 1c 37          	movq   mm3,QWORD PTR [rdi+rsi*1]
      9a:	0f 6f 24 0a          	movq   mm4,QWORD PTR [rdx+rcx*1]
      9e:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
      a2:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
      a6:	0f 6f ea             	movq   mm5,mm2
      a9:	0f 6f f4             	movq   mm6,mm4
      ac:	0f d8 d1             	psubusb mm2,mm1
      af:	0f d8 e3             	psubusb mm4,mm3
      b2:	0f d8 cd             	psubusb mm1,mm5
      b5:	0f d8 de             	psubusb mm3,mm6
      b8:	0f eb ca             	por    mm1,mm2
      bb:	0f eb dc             	por    mm3,mm4
      be:	0f 6f d1             	movq   mm2,mm1
      c1:	0f 60 d7             	punpcklbw mm2,mm7
      c4:	0f 68 cf             	punpckhbw mm1,mm7
      c7:	0f 6f e3             	movq   mm4,mm3
      ca:	0f 60 e7             	punpcklbw mm4,mm7
      cd:	0f 68 df             	punpckhbw mm3,mm7
      d0:	0f f5 c9             	pmaddwd mm1,mm1
      d3:	0f f5 d2             	pmaddwd mm2,mm2
      d6:	0f f5 db             	pmaddwd mm3,mm3
      d9:	0f f5 e4             	pmaddwd mm4,mm4
      dc:	0f fe ca             	paddd  mm1,mm2
      df:	0f fe dc             	paddd  mm3,mm4
      e2:	0f fe c1             	paddd  mm0,mm1
      e5:	0f fe c3             	paddd  mm0,mm3
      e8:	fe c8                	dec    al
      ea:	7f a4                	jg     90 <x264_8_pixel_ssd_8x8_mmx+0x10>
      ec:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
      f0:	0f fe c1             	paddd  mm0,mm1
      f3:	0f 7e c0             	movd   eax,mm0
      f6:	c3                   	ret    
      f7:	90                   	nop

00000000000000f8 <x264_8_pixel_ssd_8x16_mmx>:
      f8:	b0 08                	mov    al,0x8
      fa:	eb 86                	jmp    82 <x264_8_pixel_ssd_8x8_mmx+0x2>
      fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000100 <x264_8_pixel_ssd_4x4_mmx>:
     100:	b0 01                	mov    al,0x1
     102:	0f ef c0             	pxor   mm0,mm0
     105:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     10c:	00 
     10d:	0f 1f 00             	nop    DWORD PTR [rax]
     110:	0f 6e 0f             	movd   mm1,DWORD PTR [rdi]
     113:	0f 6e 14 37          	movd   mm2,DWORD PTR [rdi+rsi*1]
     117:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     11b:	0f 6e 1a             	movd   mm3,DWORD PTR [rdx]
     11e:	0f 6e 24 0a          	movd   mm4,DWORD PTR [rdx+rcx*1]
     122:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     126:	0f 60 cf             	punpcklbw mm1,mm7
     129:	0f 60 df             	punpcklbw mm3,mm7
     12c:	0f f9 cb             	psubw  mm1,mm3
     12f:	0f 60 d7             	punpcklbw mm2,mm7
     132:	0f 60 e7             	punpcklbw mm4,mm7
     135:	0f f9 d4             	psubw  mm2,mm4
     138:	0f 6e 1f             	movd   mm3,DWORD PTR [rdi]
     13b:	0f 6e 24 37          	movd   mm4,DWORD PTR [rdi+rsi*1]
     13f:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     143:	0f 6e 2a             	movd   mm5,DWORD PTR [rdx]
     146:	0f 6e 34 0a          	movd   mm6,DWORD PTR [rdx+rcx*1]
     14a:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     14e:	0f 60 df             	punpcklbw mm3,mm7
     151:	0f 60 ef             	punpcklbw mm5,mm7
     154:	0f f9 dd             	psubw  mm3,mm5
     157:	0f 60 e7             	punpcklbw mm4,mm7
     15a:	0f 60 f7             	punpcklbw mm6,mm7
     15d:	0f f9 e6             	psubw  mm4,mm6
     160:	0f f5 c9             	pmaddwd mm1,mm1
     163:	0f f5 d2             	pmaddwd mm2,mm2
     166:	0f f5 db             	pmaddwd mm3,mm3
     169:	0f f5 e4             	pmaddwd mm4,mm4
     16c:	0f fe ca             	paddd  mm1,mm2
     16f:	0f fe dc             	paddd  mm3,mm4
     172:	0f fe c1             	paddd  mm0,mm1
     175:	0f fe c3             	paddd  mm0,mm3
     178:	fe c8                	dec    al
     17a:	7f 94                	jg     110 <x264_8_pixel_ssd_4x4_mmx+0x10>
     17c:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
     180:	0f fe c1             	paddd  mm0,mm1
     183:	0f 7e c0             	movd   eax,mm0
     186:	c3                   	ret    
     187:	90                   	nop

0000000000000188 <x264_8_pixel_ssd_8x4_mmx>:
     188:	b0 02                	mov    al,0x2
     18a:	e9 f3 fe ff ff       	jmp    82 <x264_8_pixel_ssd_8x8_mmx+0x2>
     18f:	90                   	nop

0000000000000190 <x264_8_pixel_ssd_4x8_mmx>:
     190:	b0 02                	mov    al,0x2
     192:	e9 6b ff ff ff       	jmp    102 <x264_8_pixel_ssd_4x4_mmx+0x2>
     197:	90                   	nop

0000000000000198 <x264_8_pixel_ssd_4x16_mmx>:
     198:	b0 04                	mov    al,0x4
     19a:	e9 63 ff ff ff       	jmp    102 <x264_8_pixel_ssd_4x4_mmx+0x2>
     19f:	90                   	nop

00000000000001a0 <x264_8_pixel_ssd_16x16_sse2slow>:
     1a0:	b0 08                	mov    al,0x8
     1a2:	66 0f ef ff          	pxor   xmm7,xmm7
     1a6:	66 0f ef c0          	pxor   xmm0,xmm0
     1aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
     1b0:	66 0f 6f 0f          	movdqa xmm1,XMMWORD PTR [rdi]
     1b4:	66 0f 6f 12          	movdqa xmm2,XMMWORD PTR [rdx]
     1b8:	66 0f 6f 1c 37       	movdqa xmm3,XMMWORD PTR [rdi+rsi*1]
     1bd:	66 0f 6f 24 0a       	movdqa xmm4,XMMWORD PTR [rdx+rcx*1]
     1c2:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     1c6:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     1ca:	66 0f 6f ea          	movdqa xmm5,xmm2
     1ce:	66 0f 6f f4          	movdqa xmm6,xmm4
     1d2:	66 0f d8 d1          	psubusb xmm2,xmm1
     1d6:	66 0f d8 e3          	psubusb xmm4,xmm3
     1da:	66 0f d8 cd          	psubusb xmm1,xmm5
     1de:	66 0f d8 de          	psubusb xmm3,xmm6
     1e2:	66 0f eb ca          	por    xmm1,xmm2
     1e6:	66 0f eb dc          	por    xmm3,xmm4
     1ea:	66 0f 6f d1          	movdqa xmm2,xmm1
     1ee:	66 0f 60 d7          	punpcklbw xmm2,xmm7
     1f2:	66 0f 68 cf          	punpckhbw xmm1,xmm7
     1f6:	66 0f 6f e3          	movdqa xmm4,xmm3
     1fa:	66 0f 60 e7          	punpcklbw xmm4,xmm7
     1fe:	66 0f 68 df          	punpckhbw xmm3,xmm7
     202:	66 0f f5 c9          	pmaddwd xmm1,xmm1
     206:	66 0f f5 d2          	pmaddwd xmm2,xmm2
     20a:	66 0f f5 db          	pmaddwd xmm3,xmm3
     20e:	66 0f f5 e4          	pmaddwd xmm4,xmm4
     212:	66 0f fe ca          	paddd  xmm1,xmm2
     216:	66 0f fe dc          	paddd  xmm3,xmm4
     21a:	66 0f fe c1          	paddd  xmm0,xmm1
     21e:	66 0f fe c3          	paddd  xmm0,xmm3
     222:	fe c8                	dec    al
     224:	7f 8a                	jg     1b0 <x264_8_pixel_ssd_16x16_sse2slow+0x10>
     226:	0f 12 c8             	movhlps xmm1,xmm0
     229:	66 0f fe c1          	paddd  xmm0,xmm1
     22d:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
     232:	66 0f fe c1          	paddd  xmm0,xmm1
     236:	66 0f 7e c0          	movd   eax,xmm0
     23a:	c3                   	ret    
     23b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000240 <x264_8_pixel_ssd_8x8_sse2slow>:
     240:	b0 02                	mov    al,0x2
     242:	66 0f ef c0          	pxor   xmm0,xmm0
     246:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     24d:	00 
     24e:	66 90                	xchg   ax,ax
     250:	f3 0f 7e 0f          	movq   xmm1,QWORD PTR [rdi]
     254:	f3 0f 7e 14 37       	movq   xmm2,QWORD PTR [rdi+rsi*1]
     259:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     25d:	f3 0f 7e 1a          	movq   xmm3,QWORD PTR [rdx]
     261:	f3 0f 7e 24 0a       	movq   xmm4,QWORD PTR [rdx+rcx*1]
     266:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     26a:	66 0f 60 cf          	punpcklbw xmm1,xmm7
     26e:	66 0f 60 df          	punpcklbw xmm3,xmm7
     272:	66 0f f9 cb          	psubw  xmm1,xmm3
     276:	66 0f 60 d7          	punpcklbw xmm2,xmm7
     27a:	66 0f 60 e7          	punpcklbw xmm4,xmm7
     27e:	66 0f f9 d4          	psubw  xmm2,xmm4
     282:	f3 0f 7e 1f          	movq   xmm3,QWORD PTR [rdi]
     286:	f3 0f 7e 24 37       	movq   xmm4,QWORD PTR [rdi+rsi*1]
     28b:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     28f:	f3 0f 7e 2a          	movq   xmm5,QWORD PTR [rdx]
     293:	f3 0f 7e 34 0a       	movq   xmm6,QWORD PTR [rdx+rcx*1]
     298:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     29c:	66 0f 60 df          	punpcklbw xmm3,xmm7
     2a0:	66 0f 60 ef          	punpcklbw xmm5,xmm7
     2a4:	66 0f f9 dd          	psubw  xmm3,xmm5
     2a8:	66 0f 60 e7          	punpcklbw xmm4,xmm7
     2ac:	66 0f 60 f7          	punpcklbw xmm6,xmm7
     2b0:	66 0f f9 e6          	psubw  xmm4,xmm6
     2b4:	66 0f f5 c9          	pmaddwd xmm1,xmm1
     2b8:	66 0f f5 d2          	pmaddwd xmm2,xmm2
     2bc:	66 0f f5 db          	pmaddwd xmm3,xmm3
     2c0:	66 0f f5 e4          	pmaddwd xmm4,xmm4
     2c4:	66 0f fe ca          	paddd  xmm1,xmm2
     2c8:	66 0f fe dc          	paddd  xmm3,xmm4
     2cc:	66 0f fe c1          	paddd  xmm0,xmm1
     2d0:	66 0f fe c3          	paddd  xmm0,xmm3
     2d4:	fe c8                	dec    al
     2d6:	0f 8f 74 ff ff ff    	jg     250 <x264_8_pixel_ssd_8x8_sse2slow+0x10>
     2dc:	0f 12 c8             	movhlps xmm1,xmm0
     2df:	66 0f fe c1          	paddd  xmm0,xmm1
     2e3:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
     2e8:	66 0f fe c1          	paddd  xmm0,xmm1
     2ec:	66 0f 7e c0          	movd   eax,xmm0
     2f0:	c3                   	ret    
     2f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000002f8 <x264_8_pixel_ssd_16x8_sse2slow>:
     2f8:	b0 04                	mov    al,0x4
     2fa:	e9 a3 fe ff ff       	jmp    1a2 <x264_8_pixel_ssd_16x16_sse2slow+0x2>
     2ff:	90                   	nop

0000000000000300 <x264_8_pixel_ssd_8x16_sse2slow>:
     300:	b0 04                	mov    al,0x4
     302:	e9 3b ff ff ff       	jmp    242 <x264_8_pixel_ssd_8x8_sse2slow+0x2>
     307:	90                   	nop

0000000000000308 <x264_8_pixel_ssd_8x4_sse2slow>:
     308:	b0 01                	mov    al,0x1
     30a:	e9 33 ff ff ff       	jmp    242 <x264_8_pixel_ssd_8x8_sse2slow+0x2>
     30f:	90                   	nop

0000000000000310 <x264_8_pixel_ssd_16x16_sse2>:
     310:	b0 08                	mov    al,0x8
     312:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # 31a <x264_8_pixel_ssd_16x16_sse2+0xa>
     319:	00 
     31a:	66 0f ef c0          	pxor   xmm0,xmm0
     31e:	66 90                	xchg   ax,ax
     320:	66 0f 6f 0f          	movdqa xmm1,XMMWORD PTR [rdi]
     324:	66 0f 6f 12          	movdqa xmm2,XMMWORD PTR [rdx]
     328:	66 0f 6f 1c 37       	movdqa xmm3,XMMWORD PTR [rdi+rsi*1]
     32d:	66 0f 6f 24 0a       	movdqa xmm4,XMMWORD PTR [rdx+rcx*1]
     332:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     336:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     33a:	66 0f 6f f7          	movdqa xmm6,xmm7
     33e:	66 0f db f2          	pand   xmm6,xmm2
     342:	66 0f 6f ef          	movdqa xmm5,xmm7
     346:	66 0f db e9          	pand   xmm5,xmm1
     34a:	66 0f 71 d1 08       	psrlw  xmm1,0x8
     34f:	66 0f 71 d2 08       	psrlw  xmm2,0x8
     354:	66 0f f9 ee          	psubw  xmm5,xmm6
     358:	66 0f f9 ca          	psubw  xmm1,xmm2
     35c:	66 0f 6f f7          	movdqa xmm6,xmm7
     360:	66 0f db f4          	pand   xmm6,xmm4
     364:	66 0f 6f d7          	movdqa xmm2,xmm7
     368:	66 0f db d3          	pand   xmm2,xmm3
     36c:	66 0f 71 d3 08       	psrlw  xmm3,0x8
     371:	66 0f 71 d4 08       	psrlw  xmm4,0x8
     376:	66 0f f9 d6          	psubw  xmm2,xmm6
     37a:	66 0f f9 dc          	psubw  xmm3,xmm4
     37e:	66 0f f5 ed          	pmaddwd xmm5,xmm5
     382:	66 0f f5 c9          	pmaddwd xmm1,xmm1
     386:	66 0f f5 d2          	pmaddwd xmm2,xmm2
     38a:	66 0f f5 db          	pmaddwd xmm3,xmm3
     38e:	66 0f fe e9          	paddd  xmm5,xmm1
     392:	66 0f fe d3          	paddd  xmm2,xmm3
     396:	66 0f fe c5          	paddd  xmm0,xmm5
     39a:	66 0f fe c2          	paddd  xmm0,xmm2
     39e:	fe c8                	dec    al
     3a0:	0f 8f 7a ff ff ff    	jg     320 <x264_8_pixel_ssd_16x16_sse2+0x10>
     3a6:	0f 12 e8             	movhlps xmm5,xmm0
     3a9:	66 0f fe c5          	paddd  xmm0,xmm5
     3ad:	f2 0f 70 e8 4e       	pshuflw xmm5,xmm0,0x4e
     3b2:	66 0f fe c5          	paddd  xmm0,xmm5
     3b6:	66 0f 7e c0          	movd   eax,xmm0
     3ba:	c3                   	ret    
     3bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000003c0 <x264_8_pixel_ssd_8x8_sse2>:
     3c0:	b0 02                	mov    al,0x2
     3c2:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # 3ca <x264_8_pixel_ssd_8x8_sse2+0xa>
     3c9:	00 
     3ca:	66 0f ef c0          	pxor   xmm0,xmm0
     3ce:	66 90                	xchg   ax,ax
     3d0:	f3 0f 7e 0f          	movq   xmm1,QWORD PTR [rdi]
     3d4:	f3 0f 7e 14 37       	movq   xmm2,QWORD PTR [rdi+rsi*1]
     3d9:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     3dd:	f3 0f 7e 1a          	movq   xmm3,QWORD PTR [rdx]
     3e1:	f3 0f 7e 24 0a       	movq   xmm4,QWORD PTR [rdx+rcx*1]
     3e6:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     3ea:	66 0f 6c ca          	punpcklqdq xmm1,xmm2
     3ee:	66 0f 6c dc          	punpcklqdq xmm3,xmm4
     3f2:	66 0f 6f e7          	movdqa xmm4,xmm7
     3f6:	66 0f db e3          	pand   xmm4,xmm3
     3fa:	66 0f 6f d7          	movdqa xmm2,xmm7
     3fe:	66 0f db d1          	pand   xmm2,xmm1
     402:	66 0f 71 d1 08       	psrlw  xmm1,0x8
     407:	66 0f 71 d3 08       	psrlw  xmm3,0x8
     40c:	66 0f f9 d4          	psubw  xmm2,xmm4
     410:	66 0f f9 cb          	psubw  xmm1,xmm3
     414:	f3 0f 7e 1f          	movq   xmm3,QWORD PTR [rdi]
     418:	f3 0f 7e 24 37       	movq   xmm4,QWORD PTR [rdi+rsi*1]
     41d:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     421:	f3 0f 7e 2a          	movq   xmm5,QWORD PTR [rdx]
     425:	f3 0f 7e 34 0a       	movq   xmm6,QWORD PTR [rdx+rcx*1]
     42a:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     42e:	66 0f 6c dc          	punpcklqdq xmm3,xmm4
     432:	66 0f 6c ee          	punpcklqdq xmm5,xmm6
     436:	66 0f 6f f7          	movdqa xmm6,xmm7
     43a:	66 0f db f5          	pand   xmm6,xmm5
     43e:	66 0f 6f e7          	movdqa xmm4,xmm7
     442:	66 0f db e3          	pand   xmm4,xmm3
     446:	66 0f 71 d3 08       	psrlw  xmm3,0x8
     44b:	66 0f 71 d5 08       	psrlw  xmm5,0x8
     450:	66 0f f9 e6          	psubw  xmm4,xmm6
     454:	66 0f f9 dd          	psubw  xmm3,xmm5
     458:	66 0f f5 c9          	pmaddwd xmm1,xmm1
     45c:	66 0f f5 d2          	pmaddwd xmm2,xmm2
     460:	66 0f f5 db          	pmaddwd xmm3,xmm3
     464:	66 0f f5 e4          	pmaddwd xmm4,xmm4
     468:	66 0f fe ca          	paddd  xmm1,xmm2
     46c:	66 0f fe dc          	paddd  xmm3,xmm4
     470:	66 0f fe c1          	paddd  xmm0,xmm1
     474:	66 0f fe c3          	paddd  xmm0,xmm3
     478:	fe c8                	dec    al
     47a:	0f 8f 50 ff ff ff    	jg     3d0 <x264_8_pixel_ssd_8x8_sse2+0x10>
     480:	0f 12 c8             	movhlps xmm1,xmm0
     483:	66 0f fe c1          	paddd  xmm0,xmm1
     487:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
     48c:	66 0f fe c1          	paddd  xmm0,xmm1
     490:	66 0f 7e c0          	movd   eax,xmm0
     494:	c3                   	ret    
     495:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000000498 <x264_8_pixel_ssd_16x8_sse2>:
     498:	b0 04                	mov    al,0x4
     49a:	e9 73 fe ff ff       	jmp    312 <x264_8_pixel_ssd_16x16_sse2+0x2>
     49f:	90                   	nop

00000000000004a0 <x264_8_pixel_ssd_8x16_sse2>:
     4a0:	b0 04                	mov    al,0x4
     4a2:	e9 1b ff ff ff       	jmp    3c2 <x264_8_pixel_ssd_8x8_sse2+0x2>
     4a7:	90                   	nop

00000000000004a8 <x264_8_pixel_ssd_8x4_sse2>:
     4a8:	b0 01                	mov    al,0x1
     4aa:	e9 13 ff ff ff       	jmp    3c2 <x264_8_pixel_ssd_8x8_sse2+0x2>
     4af:	90                   	nop

00000000000004b0 <x264_8_pixel_ssd_16x16_ssse3>:
     4b0:	b0 08                	mov    al,0x8
     4b2:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # 4ba <x264_8_pixel_ssd_16x16_ssse3+0xa>
     4b9:	00 
     4ba:	66 0f ef c0          	pxor   xmm0,xmm0
     4be:	66 90                	xchg   ax,ax
     4c0:	66 0f 6f 0f          	movdqa xmm1,XMMWORD PTR [rdi]
     4c4:	66 0f 6f 12          	movdqa xmm2,XMMWORD PTR [rdx]
     4c8:	66 0f 6f 1c 37       	movdqa xmm3,XMMWORD PTR [rdi+rsi*1]
     4cd:	66 0f 6f 24 0a       	movdqa xmm4,XMMWORD PTR [rdx+rcx*1]
     4d2:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     4d6:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     4da:	66 0f 6f e9          	movdqa xmm5,xmm1
     4de:	66 0f 68 ea          	punpckhbw xmm5,xmm2
     4e2:	66 0f 6f f3          	movdqa xmm6,xmm3
     4e6:	66 0f 68 f4          	punpckhbw xmm6,xmm4
     4ea:	66 0f 60 ca          	punpcklbw xmm1,xmm2
     4ee:	66 0f 60 dc          	punpcklbw xmm3,xmm4
     4f2:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
     4f7:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
     4fc:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
     501:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
     506:	66 0f f5 c9          	pmaddwd xmm1,xmm1
     50a:	66 0f f5 db          	pmaddwd xmm3,xmm3
     50e:	66 0f f5 ed          	pmaddwd xmm5,xmm5
     512:	66 0f f5 f6          	pmaddwd xmm6,xmm6
     516:	66 0f fe cb          	paddd  xmm1,xmm3
     51a:	66 0f fe ee          	paddd  xmm5,xmm6
     51e:	66 0f fe c1          	paddd  xmm0,xmm1
     522:	66 0f fe c5          	paddd  xmm0,xmm5
     526:	fe c8                	dec    al
     528:	7f 96                	jg     4c0 <x264_8_pixel_ssd_16x16_ssse3+0x10>
     52a:	0f 12 c8             	movhlps xmm1,xmm0
     52d:	66 0f fe c1          	paddd  xmm0,xmm1
     531:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
     536:	66 0f fe c1          	paddd  xmm0,xmm1
     53a:	66 0f 7e c0          	movd   eax,xmm0
     53e:	c3                   	ret    
     53f:	90                   	nop

0000000000000540 <x264_8_pixel_ssd_8x8_ssse3>:
     540:	b0 02                	mov    al,0x2
     542:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # 54a <x264_8_pixel_ssd_8x8_ssse3+0xa>
     549:	00 
     54a:	66 0f ef c0          	pxor   xmm0,xmm0
     54e:	66 90                	xchg   ax,ax
     550:	f3 0f 7e 0f          	movq   xmm1,QWORD PTR [rdi]
     554:	f3 0f 7e 14 37       	movq   xmm2,QWORD PTR [rdi+rsi*1]
     559:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     55d:	f3 0f 7e 1a          	movq   xmm3,QWORD PTR [rdx]
     561:	f3 0f 7e 24 0a       	movq   xmm4,QWORD PTR [rdx+rcx*1]
     566:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     56a:	66 0f 60 cb          	punpcklbw xmm1,xmm3
     56e:	66 0f 60 d4          	punpcklbw xmm2,xmm4
     572:	f3 0f 7e 1f          	movq   xmm3,QWORD PTR [rdi]
     576:	f3 0f 7e 24 37       	movq   xmm4,QWORD PTR [rdi+rsi*1]
     57b:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     57f:	f3 0f 7e 2a          	movq   xmm5,QWORD PTR [rdx]
     583:	f3 0f 7e 34 0a       	movq   xmm6,QWORD PTR [rdx+rcx*1]
     588:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     58c:	66 0f 60 dd          	punpcklbw xmm3,xmm5
     590:	66 0f 60 e6          	punpcklbw xmm4,xmm6
     594:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
     599:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
     59e:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
     5a3:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
     5a8:	66 0f f5 c9          	pmaddwd xmm1,xmm1
     5ac:	66 0f f5 d2          	pmaddwd xmm2,xmm2
     5b0:	66 0f f5 db          	pmaddwd xmm3,xmm3
     5b4:	66 0f f5 e4          	pmaddwd xmm4,xmm4
     5b8:	66 0f fe ca          	paddd  xmm1,xmm2
     5bc:	66 0f fe dc          	paddd  xmm3,xmm4
     5c0:	66 0f fe c1          	paddd  xmm0,xmm1
     5c4:	66 0f fe c3          	paddd  xmm0,xmm3
     5c8:	fe c8                	dec    al
     5ca:	7f 84                	jg     550 <x264_8_pixel_ssd_8x8_ssse3+0x10>
     5cc:	0f 12 c8             	movhlps xmm1,xmm0
     5cf:	66 0f fe c1          	paddd  xmm0,xmm1
     5d3:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
     5d8:	66 0f fe c1          	paddd  xmm0,xmm1
     5dc:	66 0f 7e c0          	movd   eax,xmm0
     5e0:	c3                   	ret    
     5e1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000005e8 <x264_8_pixel_ssd_16x8_ssse3>:
     5e8:	b0 04                	mov    al,0x4
     5ea:	e9 c3 fe ff ff       	jmp    4b2 <x264_8_pixel_ssd_16x16_ssse3+0x2>
     5ef:	90                   	nop

00000000000005f0 <x264_8_pixel_ssd_8x16_ssse3>:
     5f0:	b0 04                	mov    al,0x4
     5f2:	e9 4b ff ff ff       	jmp    542 <x264_8_pixel_ssd_8x8_ssse3+0x2>
     5f7:	90                   	nop

00000000000005f8 <x264_8_pixel_ssd_8x4_ssse3>:
     5f8:	b0 01                	mov    al,0x1
     5fa:	e9 43 ff ff ff       	jmp    542 <x264_8_pixel_ssd_8x8_ssse3+0x2>
     5ff:	90                   	nop

0000000000000600 <x264_8_pixel_ssd_16x16_avx>:
     600:	b0 08                	mov    al,0x8
     602:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # 60a <x264_8_pixel_ssd_16x16_avx+0xa>
     609:	00 
     60a:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
     60e:	66 90                	xchg   ax,ax
     610:	c5 f9 6f 0f          	vmovdqa xmm1,XMMWORD PTR [rdi]
     614:	c5 f9 6f 12          	vmovdqa xmm2,XMMWORD PTR [rdx]
     618:	c5 f9 6f 1c 37       	vmovdqa xmm3,XMMWORD PTR [rdi+rsi*1]
     61d:	c5 f9 6f 24 0a       	vmovdqa xmm4,XMMWORD PTR [rdx+rcx*1]
     622:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     626:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     62a:	c5 f1 68 ea          	vpunpckhbw xmm5,xmm1,xmm2
     62e:	c5 e1 68 f4          	vpunpckhbw xmm6,xmm3,xmm4
     632:	c5 f1 60 ca          	vpunpcklbw xmm1,xmm1,xmm2
     636:	c5 e1 60 dc          	vpunpcklbw xmm3,xmm3,xmm4
     63a:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
     63f:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
     644:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
     649:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
     64e:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
     652:	c5 e1 f5 db          	vpmaddwd xmm3,xmm3,xmm3
     656:	c5 d1 f5 ed          	vpmaddwd xmm5,xmm5,xmm5
     65a:	c5 c9 f5 f6          	vpmaddwd xmm6,xmm6,xmm6
     65e:	c5 f1 fe cb          	vpaddd xmm1,xmm1,xmm3
     662:	c5 d1 fe ee          	vpaddd xmm5,xmm5,xmm6
     666:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     66a:	c5 f9 fe c5          	vpaddd xmm0,xmm0,xmm5
     66e:	fe c8                	dec    al
     670:	7f 9e                	jg     610 <x264_8_pixel_ssd_16x16_avx+0x10>
     672:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
     676:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     67a:	c5 fb 70 c8 4e       	vpshuflw xmm1,xmm0,0x4e
     67f:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     683:	c5 f9 7e c0          	vmovd  eax,xmm0
     687:	c3                   	ret    
     688:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     68f:	00 

0000000000000690 <x264_8_pixel_ssd_8x8_avx>:
     690:	b0 02                	mov    al,0x2
     692:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # 69a <x264_8_pixel_ssd_8x8_avx+0xa>
     699:	00 
     69a:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
     69e:	66 90                	xchg   ax,ax
     6a0:	c5 fa 7e 0f          	vmovq  xmm1,QWORD PTR [rdi]
     6a4:	c5 fa 7e 14 37       	vmovq  xmm2,QWORD PTR [rdi+rsi*1]
     6a9:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     6ad:	c5 fa 7e 1a          	vmovq  xmm3,QWORD PTR [rdx]
     6b1:	c5 fa 7e 24 0a       	vmovq  xmm4,QWORD PTR [rdx+rcx*1]
     6b6:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     6ba:	c5 f1 60 cb          	vpunpcklbw xmm1,xmm1,xmm3
     6be:	c5 e9 60 d4          	vpunpcklbw xmm2,xmm2,xmm4
     6c2:	c5 fa 7e 1f          	vmovq  xmm3,QWORD PTR [rdi]
     6c6:	c5 fa 7e 24 37       	vmovq  xmm4,QWORD PTR [rdi+rsi*1]
     6cb:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     6cf:	c5 fa 7e 2a          	vmovq  xmm5,QWORD PTR [rdx]
     6d3:	c5 fa 7e 34 0a       	vmovq  xmm6,QWORD PTR [rdx+rcx*1]
     6d8:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     6dc:	c5 e1 60 dd          	vpunpcklbw xmm3,xmm3,xmm5
     6e0:	c5 d9 60 e6          	vpunpcklbw xmm4,xmm4,xmm6
     6e4:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
     6e9:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
     6ee:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
     6f3:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
     6f8:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
     6fc:	c5 e9 f5 d2          	vpmaddwd xmm2,xmm2,xmm2
     700:	c5 e1 f5 db          	vpmaddwd xmm3,xmm3,xmm3
     704:	c5 d9 f5 e4          	vpmaddwd xmm4,xmm4,xmm4
     708:	c5 f1 fe ca          	vpaddd xmm1,xmm1,xmm2
     70c:	c5 e1 fe dc          	vpaddd xmm3,xmm3,xmm4
     710:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     714:	c5 f9 fe c3          	vpaddd xmm0,xmm0,xmm3
     718:	fe c8                	dec    al
     71a:	7f 84                	jg     6a0 <x264_8_pixel_ssd_8x8_avx+0x10>
     71c:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
     720:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     724:	c5 fb 70 c8 4e       	vpshuflw xmm1,xmm0,0x4e
     729:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     72d:	c5 f9 7e c0          	vmovd  eax,xmm0
     731:	c3                   	ret    
     732:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000738 <x264_8_pixel_ssd_16x8_avx>:
     738:	b0 04                	mov    al,0x4
     73a:	e9 c3 fe ff ff       	jmp    602 <x264_8_pixel_ssd_16x16_avx+0x2>
     73f:	90                   	nop

0000000000000740 <x264_8_pixel_ssd_8x16_avx>:
     740:	b0 04                	mov    al,0x4
     742:	e9 4b ff ff ff       	jmp    692 <x264_8_pixel_ssd_8x8_avx+0x2>
     747:	90                   	nop

0000000000000748 <x264_8_pixel_ssd_8x4_avx>:
     748:	b0 01                	mov    al,0x1
     74a:	e9 43 ff ff ff       	jmp    692 <x264_8_pixel_ssd_8x8_avx+0x2>
     74f:	90                   	nop

0000000000000750 <x264_8_pixel_ssd_4x4_ssse3>:
     750:	b0 01                	mov    al,0x1
     752:	0f 6f 3d 00 00 00 00 	movq   mm7,QWORD PTR [rip+0x0]        # 759 <x264_8_pixel_ssd_4x4_ssse3+0x9>
     759:	0f ef c0             	pxor   mm0,mm0
     75c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     760:	0f 6e 0f             	movd   mm1,DWORD PTR [rdi]
     763:	0f 6e 14 37          	movd   mm2,DWORD PTR [rdi+rsi*1]
     767:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     76b:	0f 6e 1a             	movd   mm3,DWORD PTR [rdx]
     76e:	0f 6e 24 0a          	movd   mm4,DWORD PTR [rdx+rcx*1]
     772:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     776:	0f 60 cb             	punpcklbw mm1,mm3
     779:	0f 60 d4             	punpcklbw mm2,mm4
     77c:	0f 6e 1f             	movd   mm3,DWORD PTR [rdi]
     77f:	0f 6e 24 37          	movd   mm4,DWORD PTR [rdi+rsi*1]
     783:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     787:	0f 6e 2a             	movd   mm5,DWORD PTR [rdx]
     78a:	0f 6e 34 0a          	movd   mm6,DWORD PTR [rdx+rcx*1]
     78e:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     792:	0f 60 dd             	punpcklbw mm3,mm5
     795:	0f 60 e6             	punpcklbw mm4,mm6
     798:	0f 38 04 cf          	pmaddubsw mm1,mm7
     79c:	0f 38 04 d7          	pmaddubsw mm2,mm7
     7a0:	0f 38 04 df          	pmaddubsw mm3,mm7
     7a4:	0f 38 04 e7          	pmaddubsw mm4,mm7
     7a8:	0f f5 c9             	pmaddwd mm1,mm1
     7ab:	0f f5 d2             	pmaddwd mm2,mm2
     7ae:	0f f5 db             	pmaddwd mm3,mm3
     7b1:	0f f5 e4             	pmaddwd mm4,mm4
     7b4:	0f fe ca             	paddd  mm1,mm2
     7b7:	0f fe dc             	paddd  mm3,mm4
     7ba:	0f fe c1             	paddd  mm0,mm1
     7bd:	0f fe c3             	paddd  mm0,mm3
     7c0:	fe c8                	dec    al
     7c2:	7f 9c                	jg     760 <x264_8_pixel_ssd_4x4_ssse3+0x10>
     7c4:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
     7c8:	0f fe c1             	paddd  mm0,mm1
     7cb:	0f 7e c0             	movd   eax,mm0
     7ce:	c3                   	ret    
     7cf:	90                   	nop

00000000000007d0 <x264_8_pixel_ssd_4x8_ssse3>:
     7d0:	b0 02                	mov    al,0x2
     7d2:	e9 7b ff ff ff       	jmp    752 <x264_8_pixel_ssd_4x4_ssse3+0x2>
     7d7:	90                   	nop

00000000000007d8 <x264_8_pixel_ssd_4x16_ssse3>:
     7d8:	b0 04                	mov    al,0x4
     7da:	e9 73 ff ff ff       	jmp    752 <x264_8_pixel_ssd_4x4_ssse3+0x2>
     7df:	90                   	nop

00000000000007e0 <x264_8_pixel_ssd_16x16_xop>:
     7e0:	b0 08                	mov    al,0x8
     7e2:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # 7ea <x264_8_pixel_ssd_16x16_xop+0xa>
     7e9:	00 
     7ea:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
     7ee:	66 90                	xchg   ax,ax
     7f0:	c5 f9 6f 0f          	vmovdqa xmm1,XMMWORD PTR [rdi]
     7f4:	c5 f9 6f 12          	vmovdqa xmm2,XMMWORD PTR [rdx]
     7f8:	c5 f9 6f 1c 37       	vmovdqa xmm3,XMMWORD PTR [rdi+rsi*1]
     7fd:	c5 f9 6f 24 0a       	vmovdqa xmm4,XMMWORD PTR [rdx+rcx*1]
     802:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     806:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     80a:	c5 f1 68 ea          	vpunpckhbw xmm5,xmm1,xmm2
     80e:	c5 e1 68 f4          	vpunpckhbw xmm6,xmm3,xmm4
     812:	c5 f1 60 ca          	vpunpcklbw xmm1,xmm1,xmm2
     816:	c5 e1 60 dc          	vpunpcklbw xmm3,xmm3,xmm4
     81a:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
     81f:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
     824:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
     829:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
     82e:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
     832:	c5 e1 f5 db          	vpmaddwd xmm3,xmm3,xmm3
     836:	c5 d1 f5 ed          	vpmaddwd xmm5,xmm5,xmm5
     83a:	c5 c9 f5 f6          	vpmaddwd xmm6,xmm6,xmm6
     83e:	c5 f1 fe cb          	vpaddd xmm1,xmm1,xmm3
     842:	c5 d1 fe ee          	vpaddd xmm5,xmm5,xmm6
     846:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     84a:	c5 f9 fe c5          	vpaddd xmm0,xmm0,xmm5
     84e:	fe c8                	dec    al
     850:	7f 9e                	jg     7f0 <x264_8_pixel_ssd_16x16_xop+0x10>
     852:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
     856:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     85a:	8f e9 78 cb c0       	vphadddq xmm0,xmm0
     85f:	c5 f9 7e c0          	vmovd  eax,xmm0
     863:	c3                   	ret    
     864:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     86b:	00 
     86c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000000870 <x264_8_pixel_ssd_8x8_xop>:
     870:	b0 02                	mov    al,0x2
     872:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # 87a <x264_8_pixel_ssd_8x8_xop+0xa>
     879:	00 
     87a:	c5 f9 ef c0          	vpxor  xmm0,xmm0,xmm0
     87e:	66 90                	xchg   ax,ax
     880:	c5 fa 7e 0f          	vmovq  xmm1,QWORD PTR [rdi]
     884:	c5 fa 7e 14 37       	vmovq  xmm2,QWORD PTR [rdi+rsi*1]
     889:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     88d:	c5 fa 7e 1a          	vmovq  xmm3,QWORD PTR [rdx]
     891:	c5 fa 7e 24 0a       	vmovq  xmm4,QWORD PTR [rdx+rcx*1]
     896:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     89a:	c5 f1 60 cb          	vpunpcklbw xmm1,xmm1,xmm3
     89e:	c5 e9 60 d4          	vpunpcklbw xmm2,xmm2,xmm4
     8a2:	c5 fa 7e 1f          	vmovq  xmm3,QWORD PTR [rdi]
     8a6:	c5 fa 7e 24 37       	vmovq  xmm4,QWORD PTR [rdi+rsi*1]
     8ab:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     8af:	c5 fa 7e 2a          	vmovq  xmm5,QWORD PTR [rdx]
     8b3:	c5 fa 7e 34 0a       	vmovq  xmm6,QWORD PTR [rdx+rcx*1]
     8b8:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     8bc:	c5 e1 60 dd          	vpunpcklbw xmm3,xmm3,xmm5
     8c0:	c5 d9 60 e6          	vpunpcklbw xmm4,xmm4,xmm6
     8c4:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
     8c9:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
     8ce:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
     8d3:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
     8d8:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
     8dc:	c5 e9 f5 d2          	vpmaddwd xmm2,xmm2,xmm2
     8e0:	c5 e1 f5 db          	vpmaddwd xmm3,xmm3,xmm3
     8e4:	c5 d9 f5 e4          	vpmaddwd xmm4,xmm4,xmm4
     8e8:	c5 f1 fe ca          	vpaddd xmm1,xmm1,xmm2
     8ec:	c5 e1 fe dc          	vpaddd xmm3,xmm3,xmm4
     8f0:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     8f4:	c5 f9 fe c3          	vpaddd xmm0,xmm0,xmm3
     8f8:	fe c8                	dec    al
     8fa:	7f 84                	jg     880 <x264_8_pixel_ssd_8x8_xop+0x10>
     8fc:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
     900:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     904:	8f e9 78 cb c0       	vphadddq xmm0,xmm0
     909:	c5 f9 7e c0          	vmovd  eax,xmm0
     90d:	c3                   	ret    
     90e:	66 90                	xchg   ax,ax

0000000000000910 <x264_8_pixel_ssd_16x8_xop>:
     910:	b0 04                	mov    al,0x4
     912:	e9 cb fe ff ff       	jmp    7e2 <x264_8_pixel_ssd_16x16_xop+0x2>
     917:	90                   	nop

0000000000000918 <x264_8_pixel_ssd_8x16_xop>:
     918:	b0 04                	mov    al,0x4
     91a:	e9 53 ff ff ff       	jmp    872 <x264_8_pixel_ssd_8x8_xop+0x2>
     91f:	90                   	nop

0000000000000920 <x264_8_pixel_ssd_8x4_xop>:
     920:	b0 01                	mov    al,0x1
     922:	e9 4b ff ff ff       	jmp    872 <x264_8_pixel_ssd_8x8_xop+0x2>
     927:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     92e:	00 
     92f:	90                   	nop

0000000000000930 <x264_8_pixel_ssd_16x16_avx2>:
     930:	b0 04                	mov    al,0x4
     932:	c5 fd 6f 3d 00 00 00 	vmovdqa ymm7,YMMWORD PTR [rip+0x0]        # 93a <x264_8_pixel_ssd_16x16_avx2+0xa>
     939:	00 
     93a:	c5 fd ef c0          	vpxor  ymm0,ymm0,ymm0
     93e:	66 90                	xchg   ax,ax
     940:	c5 f9 6f 0f          	vmovdqa xmm1,XMMWORD PTR [rdi]
     944:	c4 e3 75 38 0c 37 01 	vinserti128 ymm1,ymm1,XMMWORD PTR [rdi+rsi*1],0x1
     94b:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     94f:	c5 f9 6f 12          	vmovdqa xmm2,XMMWORD PTR [rdx]
     953:	c4 e3 6d 38 14 0a 01 	vinserti128 ymm2,ymm2,XMMWORD PTR [rdx+rcx*1],0x1
     95a:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     95e:	c5 f5 68 da          	vpunpckhbw ymm3,ymm1,ymm2
     962:	c5 f5 60 ca          	vpunpcklbw ymm1,ymm1,ymm2
     966:	c5 f9 6f 17          	vmovdqa xmm2,XMMWORD PTR [rdi]
     96a:	c4 e3 6d 38 14 37 01 	vinserti128 ymm2,ymm2,XMMWORD PTR [rdi+rsi*1],0x1
     971:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     975:	c5 f9 6f 22          	vmovdqa xmm4,XMMWORD PTR [rdx]
     979:	c4 e3 5d 38 24 0a 01 	vinserti128 ymm4,ymm4,XMMWORD PTR [rdx+rcx*1],0x1
     980:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
     984:	c5 ed 68 ec          	vpunpckhbw ymm5,ymm2,ymm4
     988:	c5 ed 60 d4          	vpunpcklbw ymm2,ymm2,ymm4
     98c:	c4 e2 75 04 cf       	vpmaddubsw ymm1,ymm1,ymm7
     991:	c4 e2 65 04 df       	vpmaddubsw ymm3,ymm3,ymm7
     996:	c4 e2 6d 04 d7       	vpmaddubsw ymm2,ymm2,ymm7
     99b:	c4 e2 55 04 ef       	vpmaddubsw ymm5,ymm5,ymm7
     9a0:	c5 f5 f5 c9          	vpmaddwd ymm1,ymm1,ymm1
     9a4:	c5 e5 f5 db          	vpmaddwd ymm3,ymm3,ymm3
     9a8:	c5 ed f5 d2          	vpmaddwd ymm2,ymm2,ymm2
     9ac:	c5 d5 f5 ed          	vpmaddwd ymm5,ymm5,ymm5
     9b0:	c5 f5 fe cb          	vpaddd ymm1,ymm1,ymm3
     9b4:	c5 ed fe d5          	vpaddd ymm2,ymm2,ymm5
     9b8:	c5 fd fe c1          	vpaddd ymm0,ymm0,ymm1
     9bc:	c5 fd fe c2          	vpaddd ymm0,ymm0,ymm2
     9c0:	fe c8                	dec    al
     9c2:	0f 8f 78 ff ff ff    	jg     940 <x264_8_pixel_ssd_16x16_avx2+0x10>
     9c8:	c4 e3 7d 39 c1 01    	vextracti128 xmm1,ymm0,0x1
     9ce:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     9d2:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
     9d6:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     9da:	c5 fb 70 c8 4e       	vpshuflw xmm1,xmm0,0x4e
     9df:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
     9e3:	c5 f9 7e c0          	vmovd  eax,xmm0
     9e7:	c5 f8 77             	vzeroupper 
     9ea:	c3                   	ret    
     9eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000009f0 <x264_8_pixel_ssd_16x8_avx2>:
     9f0:	b0 02                	mov    al,0x2
     9f2:	e9 3b ff ff ff       	jmp    932 <x264_8_pixel_ssd_16x16_avx2+0x2>
     9f7:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     9fe:	00 
     9ff:	90                   	nop

0000000000000a00 <x264_8_pixel_ssd_nv12_core_sse2>:
     a00:	45 01 c0             	add    r8d,r8d
     a03:	4c 01 c7             	add    rdi,r8
     a06:	4c 01 c2             	add    rdx,r8
     a09:	49 f7 d8             	neg    r8
     a0c:	66 0f ef db          	pxor   xmm3,xmm3
     a10:	66 0f ef e4          	pxor   xmm4,xmm4
     a14:	66 0f 6f 2d 00 00 00 	movdqa xmm5,XMMWORD PTR [rip+0x0]        # a1c <x264_8_pixel_ssd_nv12_core_sse2+0x1c>
     a1b:	00 
     a1c:	4c 89 c0             	mov    rax,r8
     a1f:	66 0f 6f 14 07       	movdqa xmm2,XMMWORD PTR [rdi+rax*1]
     a24:	66 0f 6f 0c 02       	movdqa xmm1,XMMWORD PTR [rdx+rax*1]
     a29:	66 0f 6f c2          	movdqa xmm0,xmm2
     a2d:	66 0f d8 c1          	psubusb xmm0,xmm1
     a31:	66 0f d8 ca          	psubusb xmm1,xmm2
     a35:	66 0f eb c1          	por    xmm0,xmm1
     a39:	66 0f 6f d0          	movdqa xmm2,xmm0
     a3d:	66 0f 71 d2 08       	psrlw  xmm2,0x8
     a42:	66 0f db c5          	pand   xmm0,xmm5
     a46:	66 0f f5 d2          	pmaddwd xmm2,xmm2
     a4a:	66 0f f5 c0          	pmaddwd xmm0,xmm0
     a4e:	66 0f fe e2          	paddd  xmm4,xmm2
     a52:	66 0f fe d8          	paddd  xmm3,xmm0
     a56:	48 83 c0 10          	add    rax,0x10
     a5a:	7c c3                	jl     a1f <x264_8_pixel_ssd_nv12_core_sse2+0x1f>
     a5c:	48 01 f7             	add    rdi,rsi
     a5f:	48 01 ca             	add    rdx,rcx
     a62:	41 ff c9             	dec    r9d
     a65:	7f b5                	jg     a1c <x264_8_pixel_ssd_nv12_core_sse2+0x1c>
     a67:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
     a6c:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
     a71:	66 0f 6f c3          	movdqa xmm0,xmm3
     a75:	66 0f 6c dc          	punpcklqdq xmm3,xmm4
     a79:	66 0f 6d c4          	punpckhqdq xmm0,xmm4
     a7d:	66 0f fe d8          	paddd  xmm3,xmm0
     a81:	66 0f 6f c3          	movdqa xmm0,xmm3
     a85:	66 0f 73 f0 20       	psllq  xmm0,0x20
     a8a:	66 0f fe d8          	paddd  xmm3,xmm0
     a8e:	66 0f 73 d3 20       	psrlq  xmm3,0x20
     a93:	66 0f d6 1f          	movq   QWORD PTR [rdi],xmm3
     a97:	0f 17 1e             	movhps QWORD PTR [rsi],xmm3
     a9a:	c3                   	ret    
     a9b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000aa0 <x264_8_pixel_ssd_nv12_core_avx>:
     aa0:	45 01 c0             	add    r8d,r8d
     aa3:	4c 01 c7             	add    rdi,r8
     aa6:	4c 01 c2             	add    rdx,r8
     aa9:	49 f7 d8             	neg    r8
     aac:	c5 e1 ef db          	vpxor  xmm3,xmm3,xmm3
     ab0:	c5 d9 ef e4          	vpxor  xmm4,xmm4,xmm4
     ab4:	c5 f9 6f 2d 00 00 00 	vmovdqa xmm5,XMMWORD PTR [rip+0x0]        # abc <x264_8_pixel_ssd_nv12_core_avx+0x1c>
     abb:	00 
     abc:	4c 89 c0             	mov    rax,r8
     abf:	c5 f9 6f 14 07       	vmovdqa xmm2,XMMWORD PTR [rdi+rax*1]
     ac4:	c5 f9 6f 0c 02       	vmovdqa xmm1,XMMWORD PTR [rdx+rax*1]
     ac9:	c5 e9 d8 c1          	vpsubusb xmm0,xmm2,xmm1
     acd:	c5 f1 d8 ca          	vpsubusb xmm1,xmm1,xmm2
     ad1:	c5 f9 eb c1          	vpor   xmm0,xmm0,xmm1
     ad5:	c5 e9 71 d0 08       	vpsrlw xmm2,xmm0,0x8
     ada:	c5 f9 db c5          	vpand  xmm0,xmm0,xmm5
     ade:	c5 e9 f5 d2          	vpmaddwd xmm2,xmm2,xmm2
     ae2:	c5 f9 f5 c0          	vpmaddwd xmm0,xmm0,xmm0
     ae6:	c5 d9 fe e2          	vpaddd xmm4,xmm4,xmm2
     aea:	c5 e1 fe d8          	vpaddd xmm3,xmm3,xmm0
     aee:	48 83 c0 10          	add    rax,0x10
     af2:	7c cb                	jl     abf <x264_8_pixel_ssd_nv12_core_avx+0x1f>
     af4:	48 01 f7             	add    rdi,rsi
     af7:	48 01 ca             	add    rdx,rcx
     afa:	41 ff c9             	dec    r9d
     afd:	7f bd                	jg     abc <x264_8_pixel_ssd_nv12_core_avx+0x1c>
     aff:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
     b04:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
     b09:	c4 e2 61 02 dc       	vphaddd xmm3,xmm3,xmm4
     b0e:	c5 d9 73 f3 20       	vpsllq xmm4,xmm3,0x20
     b13:	c5 e1 fe dc          	vpaddd xmm3,xmm3,xmm4
     b17:	c5 e1 73 d3 20       	vpsrlq xmm3,xmm3,0x20
     b1c:	c5 f9 d6 1f          	vmovq  QWORD PTR [rdi],xmm3
     b20:	c5 f8 17 1e          	vmovhps QWORD PTR [rsi],xmm3
     b24:	c3                   	ret    
     b25:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     b2c:	00 
     b2d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000000b30 <x264_8_pixel_ssd_nv12_core_xop>:
     b30:	45 01 c0             	add    r8d,r8d
     b33:	4c 01 c7             	add    rdi,r8
     b36:	4c 01 c2             	add    rdx,r8
     b39:	49 f7 d8             	neg    r8
     b3c:	c5 e1 ef db          	vpxor  xmm3,xmm3,xmm3
     b40:	c5 d9 ef e4          	vpxor  xmm4,xmm4,xmm4
     b44:	c5 f9 6f 2d 00 00 00 	vmovdqa xmm5,XMMWORD PTR [rip+0x0]        # b4c <x264_8_pixel_ssd_nv12_core_xop+0x1c>
     b4b:	00 
     b4c:	4c 89 c0             	mov    rax,r8
     b4f:	c5 f9 6f 14 07       	vmovdqa xmm2,XMMWORD PTR [rdi+rax*1]
     b54:	c5 f9 6f 0c 02       	vmovdqa xmm1,XMMWORD PTR [rdx+rax*1]
     b59:	c5 e9 d8 c1          	vpsubusb xmm0,xmm2,xmm1
     b5d:	c5 f1 d8 ca          	vpsubusb xmm1,xmm1,xmm2
     b61:	c5 f9 eb c1          	vpor   xmm0,xmm0,xmm1
     b65:	c5 e9 71 d0 08       	vpsrlw xmm2,xmm0,0x8
     b6a:	c5 f9 db c5          	vpand  xmm0,xmm0,xmm5
     b6e:	8f e8 68 b6 e2 40    	vpmadcswd xmm4,xmm2,xmm2,xmm4
     b74:	8f e8 78 b6 d8 30    	vpmadcswd xmm3,xmm0,xmm0,xmm3
     b7a:	48 83 c0 10          	add    rax,0x10
     b7e:	7c cf                	jl     b4f <x264_8_pixel_ssd_nv12_core_xop+0x1f>
     b80:	48 01 f7             	add    rdi,rsi
     b83:	48 01 ca             	add    rdx,rcx
     b86:	41 ff c9             	dec    r9d
     b89:	7f c1                	jg     b4c <x264_8_pixel_ssd_nv12_core_xop+0x1c>
     b8b:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
     b90:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
     b95:	c4 e2 61 02 dc       	vphaddd xmm3,xmm3,xmm4
     b9a:	c5 d9 73 f3 20       	vpsllq xmm4,xmm3,0x20
     b9f:	c5 e1 fe dc          	vpaddd xmm3,xmm3,xmm4
     ba3:	c5 e1 73 d3 20       	vpsrlq xmm3,xmm3,0x20
     ba8:	c5 f9 d6 1f          	vmovq  QWORD PTR [rdi],xmm3
     bac:	c5 f8 17 1e          	vmovhps QWORD PTR [rsi],xmm3
     bb0:	c3                   	ret    
     bb1:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     bb8:	00 
     bb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000000bc0 <x264_8_pixel_ssd_nv12_core_avx2>:
     bc0:	45 01 c0             	add    r8d,r8d
     bc3:	4c 01 c7             	add    rdi,r8
     bc6:	4c 01 c2             	add    rdx,r8
     bc9:	49 f7 d8             	neg    r8
     bcc:	c5 e5 ef db          	vpxor  ymm3,ymm3,ymm3
     bd0:	c5 dd ef e4          	vpxor  ymm4,ymm4,ymm4
     bd4:	c5 fd 6f 2d 00 00 00 	vmovdqa ymm5,YMMWORD PTR [rip+0x0]        # bdc <x264_8_pixel_ssd_nv12_core_avx2+0x1c>
     bdb:	00 
     bdc:	4c 89 c0             	mov    rax,r8
     bdf:	c5 fe 6f 14 07       	vmovdqu ymm2,YMMWORD PTR [rdi+rax*1]
     be4:	c5 fe 6f 0c 02       	vmovdqu ymm1,YMMWORD PTR [rdx+rax*1]
     be9:	c5 ed d8 c1          	vpsubusb ymm0,ymm2,ymm1
     bed:	c5 f5 d8 ca          	vpsubusb ymm1,ymm1,ymm2
     bf1:	c5 fd eb c1          	vpor   ymm0,ymm0,ymm1
     bf5:	c5 ed 71 d0 08       	vpsrlw ymm2,ymm0,0x8
     bfa:	c5 fd db c5          	vpand  ymm0,ymm0,ymm5
     bfe:	c5 ed f5 d2          	vpmaddwd ymm2,ymm2,ymm2
     c02:	c5 fd f5 c0          	vpmaddwd ymm0,ymm0,ymm0
     c06:	c5 dd fe e2          	vpaddd ymm4,ymm4,ymm2
     c0a:	c5 e5 fe d8          	vpaddd ymm3,ymm3,ymm0
     c0e:	48 83 c0 20          	add    rax,0x20
     c12:	7c cb                	jl     bdf <x264_8_pixel_ssd_nv12_core_avx2+0x1f>
     c14:	74 14                	je     c2a <x264_8_pixel_ssd_nv12_core_avx2+0x6a>
     c16:	c5 f1 74 c9          	vpcmpeqb xmm1,xmm1,xmm1
     c1a:	c5 f5 df c0          	vpandn ymm0,ymm1,ymm0
     c1e:	c5 f5 df d2          	vpandn ymm2,ymm1,ymm2
     c22:	c5 e5 fa d8          	vpsubd ymm3,ymm3,ymm0
     c26:	c5 dd fa e2          	vpsubd ymm4,ymm4,ymm2
     c2a:	48 01 f7             	add    rdi,rsi
     c2d:	48 01 ca             	add    rdx,rcx
     c30:	41 ff c9             	dec    r9d
     c33:	7f a7                	jg     bdc <x264_8_pixel_ssd_nv12_core_avx2+0x1c>
     c35:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
     c3a:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
     c3f:	c4 e2 65 02 dc       	vphaddd ymm3,ymm3,ymm4
     c44:	c4 e3 7d 39 dc 01    	vextracti128 xmm4,ymm3,0x1
     c4a:	c5 e1 fe dc          	vpaddd xmm3,xmm3,xmm4
     c4e:	c5 d9 73 f3 20       	vpsllq xmm4,xmm3,0x20
     c53:	c5 e1 fe dc          	vpaddd xmm3,xmm3,xmm4
     c57:	c5 e1 73 d3 20       	vpsrlq xmm3,xmm3,0x20
     c5c:	c5 f9 d6 1f          	vmovq  QWORD PTR [rdi],xmm3
     c60:	c5 f8 17 1e          	vmovhps QWORD PTR [rsi],xmm3
     c64:	c5 f8 77             	vzeroupper 
     c67:	c3                   	ret    
     c68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     c6f:	00 

0000000000000c70 <x264_8_pixel_var_16x16_sse2>:
     c70:	66 0f ef ed          	pxor   xmm5,xmm5
     c74:	66 0f ef f6          	pxor   xmm6,xmm6
     c78:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # c80 <x264_8_pixel_var_16x16_sse2+0x10>
     c7f:	00 
     c80:	ba 08 00 00 00       	mov    edx,0x8
     c85:	66 0f 6f 07          	movdqa xmm0,XMMWORD PTR [rdi]
     c89:	66 0f 6f 1c 37       	movdqa xmm3,XMMWORD PTR [rdi+rsi*1]
     c8e:	66 0f 6f e7          	movdqa xmm4,xmm7
     c92:	66 0f db e3          	pand   xmm4,xmm3
     c96:	66 0f 6f cf          	movdqa xmm1,xmm7
     c9a:	66 0f db c8          	pand   xmm1,xmm0
     c9e:	66 0f 71 d0 08       	psrlw  xmm0,0x8
     ca3:	66 0f 71 d3 08       	psrlw  xmm3,0x8
     ca8:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     cac:	66 0f fd e8          	paddw  xmm5,xmm0
     cb0:	66 0f fd eb          	paddw  xmm5,xmm3
     cb4:	66 0f fd e9          	paddw  xmm5,xmm1
     cb8:	66 0f fd ec          	paddw  xmm5,xmm4
     cbc:	66 0f f5 c0          	pmaddwd xmm0,xmm0
     cc0:	66 0f f5 db          	pmaddwd xmm3,xmm3
     cc4:	66 0f f5 c9          	pmaddwd xmm1,xmm1
     cc8:	66 0f f5 e4          	pmaddwd xmm4,xmm4
     ccc:	66 0f fe f0          	paddd  xmm6,xmm0
     cd0:	66 0f fe f3          	paddd  xmm6,xmm3
     cd4:	66 0f fe f1          	paddd  xmm6,xmm1
     cd8:	66 0f fe f4          	paddd  xmm6,xmm4
     cdc:	ff ca                	dec    edx
     cde:	7f a5                	jg     c85 <x264_8_pixel_var_16x16_sse2+0x15>
     ce0:	66 0f f5 2d 00 00 00 	pmaddwd xmm5,XMMWORD PTR [rip+0x0]        # ce8 <x264_8_pixel_var_16x16_sse2+0x78>
     ce7:	00 
     ce8:	66 0f 6f c5          	movdqa xmm0,xmm5
     cec:	66 0f 62 ee          	punpckldq xmm5,xmm6
     cf0:	66 0f 6a c6          	punpckhdq xmm0,xmm6
     cf4:	66 0f fe e8          	paddd  xmm5,xmm0
     cf8:	0f 12 c5             	movhlps xmm0,xmm5
     cfb:	66 0f fe e8          	paddd  xmm5,xmm0
     cff:	66 48 0f 7e e8       	movq   rax,xmm5
     d04:	c3                   	ret    
     d05:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     d0c:	00 
     d0d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000000d10 <x264_8_pixel_var_8x8_sse2>:
     d10:	66 0f ef ed          	pxor   xmm5,xmm5
     d14:	66 0f ef f6          	pxor   xmm6,xmm6
     d18:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # d20 <x264_8_pixel_var_8x8_sse2+0x10>
     d1f:	00 
     d20:	ba 02 00 00 00       	mov    edx,0x2
     d25:	48 8d 0c 76          	lea    rcx,[rsi+rsi*2]
     d29:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
     d2d:	f3 0f 7e 1c 37       	movq   xmm3,QWORD PTR [rdi+rsi*1]
     d32:	0f 16 04 77          	movhps xmm0,QWORD PTR [rdi+rsi*2]
     d36:	0f 16 1c 0f          	movhps xmm3,QWORD PTR [rdi+rcx*1]
     d3a:	66 0f 6f e7          	movdqa xmm4,xmm7
     d3e:	66 0f db e3          	pand   xmm4,xmm3
     d42:	66 0f 6f cf          	movdqa xmm1,xmm7
     d46:	66 0f db c8          	pand   xmm1,xmm0
     d4a:	66 0f 71 d0 08       	psrlw  xmm0,0x8
     d4f:	66 0f 71 d3 08       	psrlw  xmm3,0x8
     d54:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
     d58:	66 0f fd e8          	paddw  xmm5,xmm0
     d5c:	66 0f fd eb          	paddw  xmm5,xmm3
     d60:	66 0f fd e9          	paddw  xmm5,xmm1
     d64:	66 0f fd ec          	paddw  xmm5,xmm4
     d68:	66 0f f5 c0          	pmaddwd xmm0,xmm0
     d6c:	66 0f f5 db          	pmaddwd xmm3,xmm3
     d70:	66 0f f5 c9          	pmaddwd xmm1,xmm1
     d74:	66 0f f5 e4          	pmaddwd xmm4,xmm4
     d78:	66 0f fe f0          	paddd  xmm6,xmm0
     d7c:	66 0f fe f3          	paddd  xmm6,xmm3
     d80:	66 0f fe f1          	paddd  xmm6,xmm1
     d84:	66 0f fe f4          	paddd  xmm6,xmm4
     d88:	ff ca                	dec    edx
     d8a:	7f 9d                	jg     d29 <x264_8_pixel_var_8x8_sse2+0x19>
     d8c:	66 0f f5 2d 00 00 00 	pmaddwd xmm5,XMMWORD PTR [rip+0x0]        # d94 <x264_8_pixel_var_8x8_sse2+0x84>
     d93:	00 
     d94:	66 0f 6f c5          	movdqa xmm0,xmm5
     d98:	66 0f 62 ee          	punpckldq xmm5,xmm6
     d9c:	66 0f 6a c6          	punpckhdq xmm0,xmm6
     da0:	66 0f fe e8          	paddd  xmm5,xmm0
     da4:	0f 12 c5             	movhlps xmm0,xmm5
     da7:	66 0f fe e8          	paddd  xmm5,xmm0
     dab:	66 48 0f 7e e8       	movq   rax,xmm5
     db0:	c3                   	ret    
     db1:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     db8:	00 
     db9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000000dc0 <x264_8_pixel_var_8x16_sse2>:
     dc0:	66 0f ef ed          	pxor   xmm5,xmm5
     dc4:	66 0f ef f6          	pxor   xmm6,xmm6
     dc8:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # dd0 <x264_8_pixel_var_8x16_sse2+0x10>
     dcf:	00 
     dd0:	ba 04 00 00 00       	mov    edx,0x4
     dd5:	48 8d 0c 76          	lea    rcx,[rsi+rsi*2]
     dd9:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
     ddd:	f3 0f 7e 1c 37       	movq   xmm3,QWORD PTR [rdi+rsi*1]
     de2:	0f 16 04 77          	movhps xmm0,QWORD PTR [rdi+rsi*2]
     de6:	0f 16 1c 0f          	movhps xmm3,QWORD PTR [rdi+rcx*1]
     dea:	66 0f 6f e7          	movdqa xmm4,xmm7
     dee:	66 0f db e3          	pand   xmm4,xmm3
     df2:	66 0f 6f cf          	movdqa xmm1,xmm7
     df6:	66 0f db c8          	pand   xmm1,xmm0
     dfa:	66 0f 71 d0 08       	psrlw  xmm0,0x8
     dff:	66 0f 71 d3 08       	psrlw  xmm3,0x8
     e04:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
     e08:	66 0f fd e8          	paddw  xmm5,xmm0
     e0c:	66 0f fd eb          	paddw  xmm5,xmm3
     e10:	66 0f fd e9          	paddw  xmm5,xmm1
     e14:	66 0f fd ec          	paddw  xmm5,xmm4
     e18:	66 0f f5 c0          	pmaddwd xmm0,xmm0
     e1c:	66 0f f5 db          	pmaddwd xmm3,xmm3
     e20:	66 0f f5 c9          	pmaddwd xmm1,xmm1
     e24:	66 0f f5 e4          	pmaddwd xmm4,xmm4
     e28:	66 0f fe f0          	paddd  xmm6,xmm0
     e2c:	66 0f fe f3          	paddd  xmm6,xmm3
     e30:	66 0f fe f1          	paddd  xmm6,xmm1
     e34:	66 0f fe f4          	paddd  xmm6,xmm4
     e38:	ff ca                	dec    edx
     e3a:	7f 9d                	jg     dd9 <x264_8_pixel_var_8x16_sse2+0x19>
     e3c:	66 0f f5 2d 00 00 00 	pmaddwd xmm5,XMMWORD PTR [rip+0x0]        # e44 <x264_8_pixel_var_8x16_sse2+0x84>
     e43:	00 
     e44:	66 0f 6f c5          	movdqa xmm0,xmm5
     e48:	66 0f 62 ee          	punpckldq xmm5,xmm6
     e4c:	66 0f 6a c6          	punpckhdq xmm0,xmm6
     e50:	66 0f fe e8          	paddd  xmm5,xmm0
     e54:	0f 12 c5             	movhlps xmm0,xmm5
     e57:	66 0f fe e8          	paddd  xmm5,xmm0
     e5b:	66 48 0f 7e e8       	movq   rax,xmm5
     e60:	c3                   	ret    
     e61:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     e68:	00 
     e69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000000e70 <x264_8_pixel_var_16x16_avx>:
     e70:	c5 d1 ef ed          	vpxor  xmm5,xmm5,xmm5
     e74:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
     e78:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # e80 <x264_8_pixel_var_16x16_avx+0x10>
     e7f:	00 
     e80:	ba 08 00 00 00       	mov    edx,0x8
     e85:	c5 f9 6f 07          	vmovdqa xmm0,XMMWORD PTR [rdi]
     e89:	c5 f9 6f 1c 37       	vmovdqa xmm3,XMMWORD PTR [rdi+rsi*1]
     e8e:	c5 c1 db e3          	vpand  xmm4,xmm7,xmm3
     e92:	c5 c1 db c8          	vpand  xmm1,xmm7,xmm0
     e96:	c5 f9 71 d0 08       	vpsrlw xmm0,xmm0,0x8
     e9b:	c5 e1 71 d3 08       	vpsrlw xmm3,xmm3,0x8
     ea0:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
     ea4:	c5 d1 fd e8          	vpaddw xmm5,xmm5,xmm0
     ea8:	c5 d1 fd eb          	vpaddw xmm5,xmm5,xmm3
     eac:	c5 d1 fd e9          	vpaddw xmm5,xmm5,xmm1
     eb0:	c5 d1 fd ec          	vpaddw xmm5,xmm5,xmm4
     eb4:	c5 f9 f5 c0          	vpmaddwd xmm0,xmm0,xmm0
     eb8:	c5 e1 f5 db          	vpmaddwd xmm3,xmm3,xmm3
     ebc:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
     ec0:	c5 d9 f5 e4          	vpmaddwd xmm4,xmm4,xmm4
     ec4:	c5 c9 fe f0          	vpaddd xmm6,xmm6,xmm0
     ec8:	c5 c9 fe f3          	vpaddd xmm6,xmm6,xmm3
     ecc:	c5 c9 fe f1          	vpaddd xmm6,xmm6,xmm1
     ed0:	c5 c9 fe f4          	vpaddd xmm6,xmm6,xmm4
     ed4:	ff ca                	dec    edx
     ed6:	7f ad                	jg     e85 <x264_8_pixel_var_16x16_avx+0x15>
     ed8:	c5 d1 f5 2d 00 00 00 	vpmaddwd xmm5,xmm5,XMMWORD PTR [rip+0x0]        # ee0 <x264_8_pixel_var_16x16_avx+0x70>
     edf:	00 
     ee0:	c5 d1 6a c6          	vpunpckhdq xmm0,xmm5,xmm6
     ee4:	c5 d1 62 ee          	vpunpckldq xmm5,xmm5,xmm6
     ee8:	c5 d1 fe e8          	vpaddd xmm5,xmm5,xmm0
     eec:	c5 d1 6d c5          	vpunpckhqdq xmm0,xmm5,xmm5
     ef0:	c5 d1 fe e8          	vpaddd xmm5,xmm5,xmm0
     ef4:	c4 e1 f9 7e e8       	vmovq  rax,xmm5
     ef9:	c3                   	ret    
     efa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000f00 <x264_8_pixel_var_8x8_avx>:
     f00:	c5 d1 ef ed          	vpxor  xmm5,xmm5,xmm5
     f04:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
     f08:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # f10 <x264_8_pixel_var_8x8_avx+0x10>
     f0f:	00 
     f10:	ba 02 00 00 00       	mov    edx,0x2
     f15:	48 8d 0c 76          	lea    rcx,[rsi+rsi*2]
     f19:	c5 fa 7e 07          	vmovq  xmm0,QWORD PTR [rdi]
     f1d:	c5 fa 7e 1c 37       	vmovq  xmm3,QWORD PTR [rdi+rsi*1]
     f22:	c5 f8 16 04 77       	vmovhps xmm0,xmm0,QWORD PTR [rdi+rsi*2]
     f27:	c5 e0 16 1c 0f       	vmovhps xmm3,xmm3,QWORD PTR [rdi+rcx*1]
     f2c:	c5 c1 db e3          	vpand  xmm4,xmm7,xmm3
     f30:	c5 c1 db c8          	vpand  xmm1,xmm7,xmm0
     f34:	c5 f9 71 d0 08       	vpsrlw xmm0,xmm0,0x8
     f39:	c5 e1 71 d3 08       	vpsrlw xmm3,xmm3,0x8
     f3e:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
     f42:	c5 d1 fd e8          	vpaddw xmm5,xmm5,xmm0
     f46:	c5 d1 fd eb          	vpaddw xmm5,xmm5,xmm3
     f4a:	c5 d1 fd e9          	vpaddw xmm5,xmm5,xmm1
     f4e:	c5 d1 fd ec          	vpaddw xmm5,xmm5,xmm4
     f52:	c5 f9 f5 c0          	vpmaddwd xmm0,xmm0,xmm0
     f56:	c5 e1 f5 db          	vpmaddwd xmm3,xmm3,xmm3
     f5a:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
     f5e:	c5 d9 f5 e4          	vpmaddwd xmm4,xmm4,xmm4
     f62:	c5 c9 fe f0          	vpaddd xmm6,xmm6,xmm0
     f66:	c5 c9 fe f3          	vpaddd xmm6,xmm6,xmm3
     f6a:	c5 c9 fe f1          	vpaddd xmm6,xmm6,xmm1
     f6e:	c5 c9 fe f4          	vpaddd xmm6,xmm6,xmm4
     f72:	ff ca                	dec    edx
     f74:	7f a3                	jg     f19 <x264_8_pixel_var_8x8_avx+0x19>
     f76:	c5 d1 f5 2d 00 00 00 	vpmaddwd xmm5,xmm5,XMMWORD PTR [rip+0x0]        # f7e <x264_8_pixel_var_8x8_avx+0x7e>
     f7d:	00 
     f7e:	c5 d1 6a c6          	vpunpckhdq xmm0,xmm5,xmm6
     f82:	c5 d1 62 ee          	vpunpckldq xmm5,xmm5,xmm6
     f86:	c5 d1 fe e8          	vpaddd xmm5,xmm5,xmm0
     f8a:	c5 d1 6d c5          	vpunpckhqdq xmm0,xmm5,xmm5
     f8e:	c5 d1 fe e8          	vpaddd xmm5,xmm5,xmm0
     f92:	c4 e1 f9 7e e8       	vmovq  rax,xmm5
     f97:	c3                   	ret    
     f98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     f9f:	00 

0000000000000fa0 <x264_8_pixel_var_8x16_avx>:
     fa0:	c5 d1 ef ed          	vpxor  xmm5,xmm5,xmm5
     fa4:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
     fa8:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # fb0 <x264_8_pixel_var_8x16_avx+0x10>
     faf:	00 
     fb0:	ba 04 00 00 00       	mov    edx,0x4
     fb5:	48 8d 0c 76          	lea    rcx,[rsi+rsi*2]
     fb9:	c5 fa 7e 07          	vmovq  xmm0,QWORD PTR [rdi]
     fbd:	c5 fa 7e 1c 37       	vmovq  xmm3,QWORD PTR [rdi+rsi*1]
     fc2:	c5 f8 16 04 77       	vmovhps xmm0,xmm0,QWORD PTR [rdi+rsi*2]
     fc7:	c5 e0 16 1c 0f       	vmovhps xmm3,xmm3,QWORD PTR [rdi+rcx*1]
     fcc:	c5 c1 db e3          	vpand  xmm4,xmm7,xmm3
     fd0:	c5 c1 db c8          	vpand  xmm1,xmm7,xmm0
     fd4:	c5 f9 71 d0 08       	vpsrlw xmm0,xmm0,0x8
     fd9:	c5 e1 71 d3 08       	vpsrlw xmm3,xmm3,0x8
     fde:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
     fe2:	c5 d1 fd e8          	vpaddw xmm5,xmm5,xmm0
     fe6:	c5 d1 fd eb          	vpaddw xmm5,xmm5,xmm3
     fea:	c5 d1 fd e9          	vpaddw xmm5,xmm5,xmm1
     fee:	c5 d1 fd ec          	vpaddw xmm5,xmm5,xmm4
     ff2:	c5 f9 f5 c0          	vpmaddwd xmm0,xmm0,xmm0
     ff6:	c5 e1 f5 db          	vpmaddwd xmm3,xmm3,xmm3
     ffa:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
     ffe:	c5 d9 f5 e4          	vpmaddwd xmm4,xmm4,xmm4
    1002:	c5 c9 fe f0          	vpaddd xmm6,xmm6,xmm0
    1006:	c5 c9 fe f3          	vpaddd xmm6,xmm6,xmm3
    100a:	c5 c9 fe f1          	vpaddd xmm6,xmm6,xmm1
    100e:	c5 c9 fe f4          	vpaddd xmm6,xmm6,xmm4
    1012:	ff ca                	dec    edx
    1014:	7f a3                	jg     fb9 <x264_8_pixel_var_8x16_avx+0x19>
    1016:	c5 d1 f5 2d 00 00 00 	vpmaddwd xmm5,xmm5,XMMWORD PTR [rip+0x0]        # 101e <x264_8_pixel_var_8x16_avx+0x7e>
    101d:	00 
    101e:	c5 d1 6a c6          	vpunpckhdq xmm0,xmm5,xmm6
    1022:	c5 d1 62 ee          	vpunpckldq xmm5,xmm5,xmm6
    1026:	c5 d1 fe e8          	vpaddd xmm5,xmm5,xmm0
    102a:	c5 d1 6d c5          	vpunpckhqdq xmm0,xmm5,xmm5
    102e:	c5 d1 fe e8          	vpaddd xmm5,xmm5,xmm0
    1032:	c4 e1 f9 7e e8       	vmovq  rax,xmm5
    1037:	c3                   	ret    
    1038:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    103f:	00 

0000000000001040 <x264_8_pixel_var_16x16_avx2>:
    1040:	c5 d5 ef ed          	vpxor  ymm5,ymm5,ymm5
    1044:	c5 cd ef f6          	vpxor  ymm6,ymm6,ymm6
    1048:	ba 04 00 00 00       	mov    edx,0x4
    104d:	48 8d 0c 76          	lea    rcx,[rsi+rsi*2]
    1051:	c4 e2 7d 30 07       	vpmovzxbw ymm0,XMMWORD PTR [rdi]
    1056:	c4 e2 7d 30 1c 37    	vpmovzxbw ymm3,XMMWORD PTR [rdi+rsi*1]
    105c:	c4 e2 7d 30 0c 77    	vpmovzxbw ymm1,XMMWORD PTR [rdi+rsi*2]
    1062:	c4 e2 7d 30 24 0f    	vpmovzxbw ymm4,XMMWORD PTR [rdi+rcx*1]
    1068:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    106c:	c5 d5 fd e8          	vpaddw ymm5,ymm5,ymm0
    1070:	c5 d5 fd eb          	vpaddw ymm5,ymm5,ymm3
    1074:	c5 d5 fd e9          	vpaddw ymm5,ymm5,ymm1
    1078:	c5 d5 fd ec          	vpaddw ymm5,ymm5,ymm4
    107c:	c5 fd f5 c0          	vpmaddwd ymm0,ymm0,ymm0
    1080:	c5 e5 f5 db          	vpmaddwd ymm3,ymm3,ymm3
    1084:	c5 f5 f5 c9          	vpmaddwd ymm1,ymm1,ymm1
    1088:	c5 dd f5 e4          	vpmaddwd ymm4,ymm4,ymm4
    108c:	c5 cd fe f0          	vpaddd ymm6,ymm6,ymm0
    1090:	c5 cd fe f3          	vpaddd ymm6,ymm6,ymm3
    1094:	c5 cd fe f1          	vpaddd ymm6,ymm6,ymm1
    1098:	c5 cd fe f4          	vpaddd ymm6,ymm6,ymm4
    109c:	ff ca                	dec    edx
    109e:	7f b1                	jg     1051 <x264_8_pixel_var_16x16_avx2+0x11>
    10a0:	c5 d5 f5 2d 00 00 00 	vpmaddwd ymm5,ymm5,YMMWORD PTR [rip+0x0]        # 10a8 <x264_8_pixel_var_16x16_avx2+0x68>
    10a7:	00 
    10a8:	c5 d5 6a c6          	vpunpckhdq ymm0,ymm5,ymm6
    10ac:	c5 d5 62 ee          	vpunpckldq ymm5,ymm5,ymm6
    10b0:	c5 d5 fe e8          	vpaddd ymm5,ymm5,ymm0
    10b4:	c4 e3 7d 39 e8 01    	vextracti128 xmm0,ymm5,0x1
    10ba:	c5 d1 fe e8          	vpaddd xmm5,xmm5,xmm0
    10be:	c5 d1 6d c5          	vpunpckhqdq xmm0,xmm5,xmm5
    10c2:	c5 d1 fe e8          	vpaddd xmm5,xmm5,xmm0
    10c6:	c4 e1 f9 7e e8       	vmovq  rax,xmm5
    10cb:	c5 f8 77             	vzeroupper 
    10ce:	c3                   	ret    
    10cf:	90                   	nop

00000000000010d0 <x264_8_pixel_var_16x16_avx512>:
    10d0:	ba f0 00 00 00       	mov    edx,0xf0
    10d5:	48 8d 0c 76          	lea    rcx,[rsi+rsi*2]
    10d9:	62 e2 fd 48 5b 25 00 	vbroadcasti64x4 zmm20,YMMWORD PTR [rip+0x0]        # 10e3 <x264_8_pixel_var_16x16_avx512+0x13>
    10e0:	00 00 00 
    10e3:	c5 f9 92 ca          	kmovb  k1,edx
    10e7:	62 e2 fd 28 5a 17    	vbroadcasti64x2 ymm18,XMMWORD PTR [rdi]
    10ed:	62 e2 fd 49 5a 14 37 	vbroadcasti64x2 zmm18{k1},XMMWORD PTR [rdi+rsi*1]
    10f4:	62 e2 fd 28 5a 1c 77 	vbroadcasti64x2 ymm19,XMMWORD PTR [rdi+rsi*2]
    10fb:	62 e2 fd 49 5a 1c 0f 	vbroadcasti64x2 zmm19{k1},XMMWORD PTR [rdi+rcx*1]
    1102:	62 a2 6d 40 00 d4    	vpshufb zmm18,zmm18,zmm20
    1108:	62 a2 65 40 00 dc    	vpshufb zmm19,zmm19,zmm20
    110e:	62 a1 6d 40 fd c3    	vpaddw zmm16,zmm18,zmm19
    1114:	62 a1 6d 40 f5 d2    	vpmaddwd zmm18,zmm18,zmm18
    111a:	62 a1 65 40 f5 db    	vpmaddwd zmm19,zmm19,zmm19
    1120:	62 a1 6d 40 fe cb    	vpaddd zmm17,zmm18,zmm19
    1126:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    112a:	62 e2 fd 28 5a 17    	vbroadcasti64x2 ymm18,XMMWORD PTR [rdi]
    1130:	62 e2 fd 49 5a 14 37 	vbroadcasti64x2 zmm18{k1},XMMWORD PTR [rdi+rsi*1]
    1137:	62 e2 fd 28 5a 1c 77 	vbroadcasti64x2 ymm19,XMMWORD PTR [rdi+rsi*2]
    113e:	62 e2 fd 49 5a 1c 0f 	vbroadcasti64x2 zmm19{k1},XMMWORD PTR [rdi+rcx*1]
    1145:	62 a2 6d 40 00 d4    	vpshufb zmm18,zmm18,zmm20
    114b:	62 a2 65 40 00 dc    	vpshufb zmm19,zmm19,zmm20
    1151:	62 a1 7d 40 fd c2    	vpaddw zmm16,zmm16,zmm18
    1157:	62 a1 6d 40 f5 d2    	vpmaddwd zmm18,zmm18,zmm18
    115d:	62 a1 7d 40 fd c3    	vpaddw zmm16,zmm16,zmm19
    1163:	62 a1 65 40 f5 db    	vpmaddwd zmm19,zmm19,zmm19
    1169:	62 a1 75 40 fe ca    	vpaddd zmm17,zmm17,zmm18
    116f:	62 a1 75 40 fe cb    	vpaddd zmm17,zmm17,zmm19
    1175:	83 ea 50             	sub    edx,0x50
    1178:	7f ac                	jg     1126 <x264_8_pixel_var_16x16_avx512+0x56>
    117a:	62 e2 7d 48 5a 15 00 	vbroadcasti32x4 zmm18,XMMWORD PTR [rip+0x0]        # 1184 <x264_8_pixel_var_16x16_avx512+0xb4>
    1181:	00 00 00 
    1184:	62 a1 7d 40 f5 c2    	vpmaddwd zmm16,zmm16,zmm18
    118a:	62 a1 7d 40 6a d1    	vpunpckhdq zmm18,zmm16,zmm17
    1190:	62 a1 7d 40 62 c1    	vpunpckldq zmm16,zmm16,zmm17
    1196:	62 a1 7d 40 fe c2    	vpaddd zmm16,zmm16,zmm18
    119c:	62 a3 7d 48 3b c2 01 	vextracti32x8 ymm18,zmm16,0x1
    11a3:	62 a1 7d 20 fe c2    	vpaddd ymm16,ymm16,ymm18
    11a9:	62 a3 7d 28 39 c2 01 	vextracti32x4 xmm18,ymm16,0x1
    11b0:	62 b1 7d 00 fe c2    	vpaddd xmm0,xmm16,xmm18
    11b6:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
    11ba:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
    11be:	c4 e1 f9 7e c0       	vmovq  rax,xmm0
    11c3:	c3                   	ret    
    11c4:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    11cb:	00 
    11cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000011d0 <x264_8_pixel_var_8x8_avx512>:
    11d0:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    11d4:	62 a1 5d 00 ef e4    	vpxord xmm20,xmm20,xmm20
    11da:	62 e1 fd 08 6e 17    	vmovq  xmm18,QWORD PTR [rdi]
    11e0:	62 e1 fd 08 6e 1c 37 	vmovq  xmm19,QWORD PTR [rdi+rsi*1]
    11e7:	62 e3 6d 20 38 14 77 	vinserti32x4 ymm18,ymm18,XMMWORD PTR [rdi+rsi*2],0x1
    11ee:	01 
    11ef:	62 e3 65 20 38 1c 17 	vinserti32x4 ymm19,ymm19,XMMWORD PTR [rdi+rdx*1],0x1
    11f6:	01 
    11f7:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    11fb:	62 e3 6d 40 38 17 02 	vinserti32x4 zmm18,zmm18,XMMWORD PTR [rdi],0x2
    1202:	62 e3 65 40 38 1c 37 	vinserti32x4 zmm19,zmm19,XMMWORD PTR [rdi+rsi*1],0x2
    1209:	02 
    120a:	62 e3 6d 40 38 14 77 	vinserti32x4 zmm18,zmm18,XMMWORD PTR [rdi+rsi*2],0x3
    1211:	03 
    1212:	62 e3 65 40 38 1c 17 	vinserti32x4 zmm19,zmm19,XMMWORD PTR [rdi+rdx*1],0x3
    1219:	03 
    121a:	62 a1 6d 40 60 d4    	vpunpcklbw zmm18,zmm18,zmm20
    1220:	62 a1 65 40 60 dc    	vpunpcklbw zmm19,zmm19,zmm20
    1226:	62 a1 6d 40 fd c3    	vpaddw zmm16,zmm18,zmm19
    122c:	62 a1 6d 40 f5 d2    	vpmaddwd zmm18,zmm18,zmm18
    1232:	62 a1 65 40 f5 db    	vpmaddwd zmm19,zmm19,zmm19
    1238:	62 a1 6d 40 fe cb    	vpaddd zmm17,zmm18,zmm19
    123e:	e9 37 ff ff ff       	jmp    117a <x264_8_pixel_var_16x16_avx512+0xaa>
    1243:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    124a:	00 
    124b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001250 <x264_8_pixel_var_8x16_avx512>:
    1250:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    1254:	62 a1 5d 00 ef e4    	vpxord xmm20,xmm20,xmm20
    125a:	62 e1 fd 08 6e 17    	vmovq  xmm18,QWORD PTR [rdi]
    1260:	62 e1 fd 08 6e 1c 37 	vmovq  xmm19,QWORD PTR [rdi+rsi*1]
    1267:	62 e3 6d 20 38 14 77 	vinserti32x4 ymm18,ymm18,XMMWORD PTR [rdi+rsi*2],0x1
    126e:	01 
    126f:	62 e3 65 20 38 1c 17 	vinserti32x4 ymm19,ymm19,XMMWORD PTR [rdi+rdx*1],0x1
    1276:	01 
    1277:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    127b:	62 e3 6d 40 38 17 02 	vinserti32x4 zmm18,zmm18,XMMWORD PTR [rdi],0x2
    1282:	62 e3 65 40 38 1c 37 	vinserti32x4 zmm19,zmm19,XMMWORD PTR [rdi+rsi*1],0x2
    1289:	02 
    128a:	62 e3 6d 40 38 14 77 	vinserti32x4 zmm18,zmm18,XMMWORD PTR [rdi+rsi*2],0x3
    1291:	03 
    1292:	62 e3 65 40 38 1c 17 	vinserti32x4 zmm19,zmm19,XMMWORD PTR [rdi+rdx*1],0x3
    1299:	03 
    129a:	62 a1 6d 40 60 d4    	vpunpcklbw zmm18,zmm18,zmm20
    12a0:	62 a1 65 40 60 dc    	vpunpcklbw zmm19,zmm19,zmm20
    12a6:	62 a1 6d 40 fd c3    	vpaddw zmm16,zmm18,zmm19
    12ac:	62 a1 6d 40 f5 d2    	vpmaddwd zmm18,zmm18,zmm18
    12b2:	62 a1 65 40 f5 db    	vpmaddwd zmm19,zmm19,zmm19
    12b8:	62 a1 6d 40 fe cb    	vpaddd zmm17,zmm18,zmm19
    12be:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    12c2:	62 e1 fd 08 6e 17    	vmovq  xmm18,QWORD PTR [rdi]
    12c8:	62 e1 fd 08 6e 1c 37 	vmovq  xmm19,QWORD PTR [rdi+rsi*1]
    12cf:	62 e3 6d 20 38 14 77 	vinserti32x4 ymm18,ymm18,XMMWORD PTR [rdi+rsi*2],0x1
    12d6:	01 
    12d7:	62 e3 65 20 38 1c 17 	vinserti32x4 ymm19,ymm19,XMMWORD PTR [rdi+rdx*1],0x1
    12de:	01 
    12df:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    12e3:	62 e3 6d 40 38 17 02 	vinserti32x4 zmm18,zmm18,XMMWORD PTR [rdi],0x2
    12ea:	62 e3 65 40 38 1c 37 	vinserti32x4 zmm19,zmm19,XMMWORD PTR [rdi+rsi*1],0x2
    12f1:	02 
    12f2:	62 e3 6d 40 38 14 77 	vinserti32x4 zmm18,zmm18,XMMWORD PTR [rdi+rsi*2],0x3
    12f9:	03 
    12fa:	62 e3 65 40 38 1c 17 	vinserti32x4 zmm19,zmm19,XMMWORD PTR [rdi+rdx*1],0x3
    1301:	03 
    1302:	62 a1 6d 40 60 d4    	vpunpcklbw zmm18,zmm18,zmm20
    1308:	62 a1 65 40 60 dc    	vpunpcklbw zmm19,zmm19,zmm20
    130e:	62 a1 7d 40 fd c2    	vpaddw zmm16,zmm16,zmm18
    1314:	62 a1 6d 40 f5 d2    	vpmaddwd zmm18,zmm18,zmm18
    131a:	62 a1 7d 40 fd c3    	vpaddw zmm16,zmm16,zmm19
    1320:	62 a1 65 40 f5 db    	vpmaddwd zmm19,zmm19,zmm19
    1326:	62 a1 75 40 fe ca    	vpaddd zmm17,zmm17,zmm18
    132c:	62 a1 75 40 fe cb    	vpaddd zmm17,zmm17,zmm19
    1332:	e9 43 fe ff ff       	jmp    117a <x264_8_pixel_var_16x16_avx512+0xaa>
    1337:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    133e:	00 
    133f:	90                   	nop

0000000000001340 <x264_8_pixel_var2_8x8_sse2>:
    1340:	66 0f 6f 35 00 00 00 	movdqa xmm6,XMMWORD PTR [rip+0x0]        # 1348 <x264_8_pixel_var2_8x8_sse2+0x8>
    1347:	00 
    1348:	66 0f ef c0          	pxor   xmm0,xmm0
    134c:	66 0f ef c9          	pxor   xmm1,xmm1
    1350:	b8 70 00 00 00       	mov    eax,0x70
    1355:	66 0f 6f 1c 07       	movdqa xmm3,XMMWORD PTR [rdi+rax*1]
    135a:	f3 0f 7e 2c 46       	movq   xmm5,QWORD PTR [rsi+rax*2]
    135f:	66 0f 6c 6c 46 10    	punpcklqdq xmm5,XMMWORD PTR [rsi+rax*2+0x10]
    1365:	66 0f 6f e6          	movdqa xmm4,xmm6
    1369:	66 0f db e5          	pand   xmm4,xmm5
    136d:	66 0f 6f d6          	movdqa xmm2,xmm6
    1371:	66 0f db d3          	pand   xmm2,xmm3
    1375:	66 0f 71 d3 08       	psrlw  xmm3,0x8
    137a:	66 0f 71 d5 08       	psrlw  xmm5,0x8
    137f:	66 0f f9 d4          	psubw  xmm2,xmm4
    1383:	66 0f f9 dd          	psubw  xmm3,xmm5
    1387:	66 0f fd c2          	paddw  xmm0,xmm2
    138b:	66 0f f5 d2          	pmaddwd xmm2,xmm2
    138f:	66 0f fd c3          	paddw  xmm0,xmm3
    1393:	66 0f f5 db          	pmaddwd xmm3,xmm3
    1397:	66 0f fe ca          	paddd  xmm1,xmm2
    139b:	66 0f fe cb          	paddd  xmm1,xmm3
    139f:	83 e8 10             	sub    eax,0x10
    13a2:	7d b1                	jge    1355 <x264_8_pixel_var2_8x8_sse2+0x15>
    13a4:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 13ac <x264_8_pixel_var2_8x8_sse2+0x6c>
    13ab:	00 
    13ac:	0f 28 d0             	movaps xmm2,xmm0
    13af:	0f c6 d1 88          	shufps xmm2,xmm1,0x88
    13b3:	0f c6 c1 dd          	shufps xmm0,xmm1,0xdd
    13b7:	66 0f fe c2          	paddd  xmm0,xmm2
    13bb:	66 0f 70 c0 d8       	pshufd xmm0,xmm0,0xd8
    13c0:	66 0f 70 c8 fd       	pshufd xmm1,xmm0,0xfd
    13c5:	66 0f f4 c0          	pmuludq xmm0,xmm0
    13c9:	66 0f d6 0a          	movq   QWORD PTR [rdx],xmm1
    13cd:	66 0f 72 d0 06       	psrld  xmm0,0x6
    13d2:	66 0f fa c8          	psubd  xmm1,xmm0
    13d6:	0f 12 c1             	movhlps xmm0,xmm1
    13d9:	66 0f fe c1          	paddd  xmm0,xmm1
    13dd:	66 0f 7e c0          	movd   eax,xmm0
    13e1:	c3                   	ret    
    13e2:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    13e9:	00 
    13ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000013f0 <x264_8_pixel_var2_8x16_sse2>:
    13f0:	66 0f 6f 35 00 00 00 	movdqa xmm6,XMMWORD PTR [rip+0x0]        # 13f8 <x264_8_pixel_var2_8x16_sse2+0x8>
    13f7:	00 
    13f8:	66 0f ef c0          	pxor   xmm0,xmm0
    13fc:	66 0f ef c9          	pxor   xmm1,xmm1
    1400:	b8 f0 00 00 00       	mov    eax,0xf0
    1405:	66 0f 6f 1c 07       	movdqa xmm3,XMMWORD PTR [rdi+rax*1]
    140a:	f3 0f 7e 2c 46       	movq   xmm5,QWORD PTR [rsi+rax*2]
    140f:	66 0f 6c 6c 46 10    	punpcklqdq xmm5,XMMWORD PTR [rsi+rax*2+0x10]
    1415:	66 0f 6f e6          	movdqa xmm4,xmm6
    1419:	66 0f db e5          	pand   xmm4,xmm5
    141d:	66 0f 6f d6          	movdqa xmm2,xmm6
    1421:	66 0f db d3          	pand   xmm2,xmm3
    1425:	66 0f 71 d3 08       	psrlw  xmm3,0x8
    142a:	66 0f 71 d5 08       	psrlw  xmm5,0x8
    142f:	66 0f f9 d4          	psubw  xmm2,xmm4
    1433:	66 0f f9 dd          	psubw  xmm3,xmm5
    1437:	66 0f fd c2          	paddw  xmm0,xmm2
    143b:	66 0f f5 d2          	pmaddwd xmm2,xmm2
    143f:	66 0f fd c3          	paddw  xmm0,xmm3
    1443:	66 0f f5 db          	pmaddwd xmm3,xmm3
    1447:	66 0f fe ca          	paddd  xmm1,xmm2
    144b:	66 0f fe cb          	paddd  xmm1,xmm3
    144f:	83 e8 10             	sub    eax,0x10
    1452:	7d b1                	jge    1405 <x264_8_pixel_var2_8x16_sse2+0x15>
    1454:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 145c <x264_8_pixel_var2_8x16_sse2+0x6c>
    145b:	00 
    145c:	0f 28 d0             	movaps xmm2,xmm0
    145f:	0f c6 d1 88          	shufps xmm2,xmm1,0x88
    1463:	0f c6 c1 dd          	shufps xmm0,xmm1,0xdd
    1467:	66 0f fe c2          	paddd  xmm0,xmm2
    146b:	66 0f 70 c0 d8       	pshufd xmm0,xmm0,0xd8
    1470:	66 0f 70 c8 fd       	pshufd xmm1,xmm0,0xfd
    1475:	66 0f f4 c0          	pmuludq xmm0,xmm0
    1479:	66 0f d6 0a          	movq   QWORD PTR [rdx],xmm1
    147d:	66 0f 72 d0 07       	psrld  xmm0,0x7
    1482:	66 0f fa c8          	psubd  xmm1,xmm0
    1486:	0f 12 c1             	movhlps xmm0,xmm1
    1489:	66 0f fe c1          	paddd  xmm0,xmm1
    148d:	66 0f 7e c0          	movd   eax,xmm0
    1491:	c3                   	ret    
    1492:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    1499:	00 
    149a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000014a0 <x264_8_pixel_var2_internal_ssse3>:
    14a0:	66 0f ef c0          	pxor   xmm0,xmm0
    14a4:	66 0f ef c9          	pxor   xmm1,xmm1
    14a8:	f3 0f 7e 14 07       	movq   xmm2,QWORD PTR [rdi+rax*1]
    14ad:	66 0f 60 14 46       	punpcklbw xmm2,XMMWORD PTR [rsi+rax*2]
    14b2:	f3 0f 7e 5c 07 f0    	movq   xmm3,QWORD PTR [rdi+rax*1-0x10]
    14b8:	66 0f 60 5c 46 e0    	punpcklbw xmm3,XMMWORD PTR [rsi+rax*2-0x20]
    14be:	f3 0f 7e 64 07 e0    	movq   xmm4,QWORD PTR [rdi+rax*1-0x20]
    14c4:	66 0f 60 64 46 c0    	punpcklbw xmm4,XMMWORD PTR [rsi+rax*2-0x40]
    14ca:	f3 0f 7e 6c 07 d0    	movq   xmm5,QWORD PTR [rdi+rax*1-0x30]
    14d0:	66 0f 60 6c 46 a0    	punpcklbw xmm5,XMMWORD PTR [rsi+rax*2-0x60]
    14d6:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    14db:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    14e0:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    14e5:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    14ea:	66 0f fd c2          	paddw  xmm0,xmm2
    14ee:	66 0f f5 d2          	pmaddwd xmm2,xmm2
    14f2:	66 0f fd c3          	paddw  xmm0,xmm3
    14f6:	66 0f f5 db          	pmaddwd xmm3,xmm3
    14fa:	66 0f fe ca          	paddd  xmm1,xmm2
    14fe:	66 0f fe cb          	paddd  xmm1,xmm3
    1502:	66 0f fd c4          	paddw  xmm0,xmm4
    1506:	66 0f f5 e4          	pmaddwd xmm4,xmm4
    150a:	66 0f fd c5          	paddw  xmm0,xmm5
    150e:	66 0f f5 ed          	pmaddwd xmm5,xmm5
    1512:	66 0f fe cc          	paddd  xmm1,xmm4
    1516:	66 0f fe cd          	paddd  xmm1,xmm5
    151a:	83 e8 40             	sub    eax,0x40
    151d:	7f 89                	jg     14a8 <x264_8_pixel_var2_internal_ssse3+0x8>
    151f:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 1527 <x264_8_pixel_var2_internal_ssse3+0x87>
    1526:	00 
    1527:	c3                   	ret    
    1528:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    152f:	00 

0000000000001530 <x264_8_pixel_var2_8x8_ssse3>:
    1530:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # 1538 <x264_8_pixel_var2_8x8_ssse3+0x8>
    1537:	00 
    1538:	b8 70 00 00 00       	mov    eax,0x70
    153d:	e8 5e ff ff ff       	call   14a0 <x264_8_pixel_var2_internal_ssse3>
    1542:	48 83 c7 08          	add    rdi,0x8
    1546:	48 83 c6 10          	add    rsi,0x10
    154a:	66 0f 6f f0          	movdqa xmm6,xmm0
    154e:	66 0f 6c c1          	punpcklqdq xmm0,xmm1
    1552:	66 0f 6d f1          	punpckhqdq xmm6,xmm1
    1556:	66 0f fe f0          	paddd  xmm6,xmm0
    155a:	b8 70 00 00 00       	mov    eax,0x70
    155f:	e8 3c ff ff ff       	call   14a0 <x264_8_pixel_var2_internal_ssse3>
    1564:	66 0f 6f d0          	movdqa xmm2,xmm0
    1568:	66 0f 6c c1          	punpcklqdq xmm0,xmm1
    156c:	66 0f 6d d1          	punpckhqdq xmm2,xmm1
    1570:	66 0f fe c2          	paddd  xmm0,xmm2
    1574:	66 0f 38 02 f0       	phaddd xmm6,xmm0
    1579:	66 0f 70 c6 fd       	pshufd xmm0,xmm6,0xfd
    157e:	66 0f f4 f6          	pmuludq xmm6,xmm6
    1582:	66 0f d6 02          	movq   QWORD PTR [rdx],xmm0
    1586:	66 0f 72 d6 06       	psrld  xmm6,0x6
    158b:	66 0f fa c6          	psubd  xmm0,xmm6
    158f:	0f 12 f0             	movhlps xmm6,xmm0
    1592:	66 0f fe f0          	paddd  xmm6,xmm0
    1596:	66 0f 7e f0          	movd   eax,xmm6
    159a:	c3                   	ret    
    159b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000015a0 <x264_8_pixel_var2_8x16_ssse3>:
    15a0:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # 15a8 <x264_8_pixel_var2_8x16_ssse3+0x8>
    15a7:	00 
    15a8:	b8 f0 00 00 00       	mov    eax,0xf0
    15ad:	e8 ee fe ff ff       	call   14a0 <x264_8_pixel_var2_internal_ssse3>
    15b2:	48 83 c7 08          	add    rdi,0x8
    15b6:	48 83 c6 10          	add    rsi,0x10
    15ba:	66 0f 6f f0          	movdqa xmm6,xmm0
    15be:	66 0f 6c c1          	punpcklqdq xmm0,xmm1
    15c2:	66 0f 6d f1          	punpckhqdq xmm6,xmm1
    15c6:	66 0f fe f0          	paddd  xmm6,xmm0
    15ca:	b8 f0 00 00 00       	mov    eax,0xf0
    15cf:	e8 cc fe ff ff       	call   14a0 <x264_8_pixel_var2_internal_ssse3>
    15d4:	66 0f 6f d0          	movdqa xmm2,xmm0
    15d8:	66 0f 6c c1          	punpcklqdq xmm0,xmm1
    15dc:	66 0f 6d d1          	punpckhqdq xmm2,xmm1
    15e0:	66 0f fe c2          	paddd  xmm0,xmm2
    15e4:	66 0f 38 02 f0       	phaddd xmm6,xmm0
    15e9:	66 0f 70 c6 fd       	pshufd xmm0,xmm6,0xfd
    15ee:	66 0f f4 f6          	pmuludq xmm6,xmm6
    15f2:	66 0f d6 02          	movq   QWORD PTR [rdx],xmm0
    15f6:	66 0f 72 d6 07       	psrld  xmm6,0x7
    15fb:	66 0f fa c6          	psubd  xmm0,xmm6
    15ff:	0f 12 f0             	movhlps xmm6,xmm0
    1602:	66 0f fe f0          	paddd  xmm6,xmm0
    1606:	66 0f 7e f0          	movd   eax,xmm6
    160a:	c3                   	ret    
    160b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001610 <x264_8_pixel_var2_8x8_avx2>:
    1610:	c5 cd ef f6          	vpxor  ymm6,ymm6,ymm6
    1614:	b8 50 00 00 00       	mov    eax,0x50
    1619:	c4 e2 7d 30 54 07 20 	vpmovzxbw ymm2,XMMWORD PTR [rdi+rax*1+0x20]
    1620:	c5 fd 6f 64 46 40    	vmovdqa ymm4,YMMWORD PTR [rsi+rax*2+0x40]
    1626:	c4 e2 7d 30 5c 07 10 	vpmovzxbw ymm3,XMMWORD PTR [rdi+rax*1+0x10]
    162d:	c5 fd 6f 6c 46 20    	vmovdqa ymm5,YMMWORD PTR [rsi+rax*2+0x20]
    1633:	c5 dd 60 e6          	vpunpcklbw ymm4,ymm4,ymm6
    1637:	c5 d5 60 ee          	vpunpcklbw ymm5,ymm5,ymm6
    163b:	c5 ed f9 d4          	vpsubw ymm2,ymm2,ymm4
    163f:	c5 e5 f9 dd          	vpsubw ymm3,ymm3,ymm5
    1643:	c5 ed fd c3          	vpaddw ymm0,ymm2,ymm3
    1647:	c5 ed f5 d2          	vpmaddwd ymm2,ymm2,ymm2
    164b:	c5 e5 f5 db          	vpmaddwd ymm3,ymm3,ymm3
    164f:	c5 ed fe cb          	vpaddd ymm1,ymm2,ymm3
    1653:	c4 e2 7d 30 14 07    	vpmovzxbw ymm2,XMMWORD PTR [rdi+rax*1]
    1659:	c5 fd 6f 24 46       	vmovdqa ymm4,YMMWORD PTR [rsi+rax*2]
    165e:	c4 e2 7d 30 5c 07 f0 	vpmovzxbw ymm3,XMMWORD PTR [rdi+rax*1-0x10]
    1665:	c5 fd 6f 6c 46 e0    	vmovdqa ymm5,YMMWORD PTR [rsi+rax*2-0x20]
    166b:	c5 dd 60 e6          	vpunpcklbw ymm4,ymm4,ymm6
    166f:	c5 d5 60 ee          	vpunpcklbw ymm5,ymm5,ymm6
    1673:	c5 ed f9 d4          	vpsubw ymm2,ymm2,ymm4
    1677:	c5 e5 f9 dd          	vpsubw ymm3,ymm3,ymm5
    167b:	c5 fd fd c2          	vpaddw ymm0,ymm0,ymm2
    167f:	c5 ed f5 d2          	vpmaddwd ymm2,ymm2,ymm2
    1683:	c5 fd fd c3          	vpaddw ymm0,ymm0,ymm3
    1687:	c5 e5 f5 db          	vpmaddwd ymm3,ymm3,ymm3
    168b:	c5 f5 fe ca          	vpaddd ymm1,ymm1,ymm2
    168f:	c5 f5 fe cb          	vpaddd ymm1,ymm1,ymm3
    1693:	83 e8 20             	sub    eax,0x20
    1696:	7f bb                	jg     1653 <x264_8_pixel_var2_8x8_avx2+0x43>
    1698:	c5 fd f5 05 00 00 00 	vpmaddwd ymm0,ymm0,YMMWORD PTR [rip+0x0]        # 16a0 <x264_8_pixel_var2_8x8_avx2+0x90>
    169f:	00 
    16a0:	c5 fd 6d d1          	vpunpckhqdq ymm2,ymm0,ymm1
    16a4:	c5 fd 6c c1          	vpunpcklqdq ymm0,ymm0,ymm1
    16a8:	c5 fd fe c2          	vpaddd ymm0,ymm0,ymm2
    16ac:	c4 e3 7d 39 c2 01    	vextracti128 xmm2,ymm0,0x1
    16b2:	c4 e2 79 02 c2       	vphaddd xmm0,xmm0,xmm2
    16b7:	c5 f9 70 d0 fd       	vpshufd xmm2,xmm0,0xfd
    16bc:	c5 f9 f4 c0          	vpmuludq xmm0,xmm0,xmm0
    16c0:	c5 f9 d6 12          	vmovq  QWORD PTR [rdx],xmm2
    16c4:	c5 f9 72 d0 06       	vpsrld xmm0,xmm0,0x6
    16c9:	c5 e9 fa d0          	vpsubd xmm2,xmm2,xmm0
    16cd:	c5 e9 6d c2          	vpunpckhqdq xmm0,xmm2,xmm2
    16d1:	c5 f9 fe c2          	vpaddd xmm0,xmm0,xmm2
    16d5:	c5 f9 7e c0          	vmovd  eax,xmm0
    16d9:	c5 f8 77             	vzeroupper 
    16dc:	c3                   	ret    
    16dd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000016e0 <x264_8_pixel_var2_8x16_avx2>:
    16e0:	c5 cd ef f6          	vpxor  ymm6,ymm6,ymm6
    16e4:	b8 d0 00 00 00       	mov    eax,0xd0
    16e9:	c4 e2 7d 30 54 07 20 	vpmovzxbw ymm2,XMMWORD PTR [rdi+rax*1+0x20]
    16f0:	c5 fd 6f 64 46 40    	vmovdqa ymm4,YMMWORD PTR [rsi+rax*2+0x40]
    16f6:	c4 e2 7d 30 5c 07 10 	vpmovzxbw ymm3,XMMWORD PTR [rdi+rax*1+0x10]
    16fd:	c5 fd 6f 6c 46 20    	vmovdqa ymm5,YMMWORD PTR [rsi+rax*2+0x20]
    1703:	c5 dd 60 e6          	vpunpcklbw ymm4,ymm4,ymm6
    1707:	c5 d5 60 ee          	vpunpcklbw ymm5,ymm5,ymm6
    170b:	c5 ed f9 d4          	vpsubw ymm2,ymm2,ymm4
    170f:	c5 e5 f9 dd          	vpsubw ymm3,ymm3,ymm5
    1713:	c5 ed fd c3          	vpaddw ymm0,ymm2,ymm3
    1717:	c5 ed f5 d2          	vpmaddwd ymm2,ymm2,ymm2
    171b:	c5 e5 f5 db          	vpmaddwd ymm3,ymm3,ymm3
    171f:	c5 ed fe cb          	vpaddd ymm1,ymm2,ymm3
    1723:	c4 e2 7d 30 14 07    	vpmovzxbw ymm2,XMMWORD PTR [rdi+rax*1]
    1729:	c5 fd 6f 24 46       	vmovdqa ymm4,YMMWORD PTR [rsi+rax*2]
    172e:	c4 e2 7d 30 5c 07 f0 	vpmovzxbw ymm3,XMMWORD PTR [rdi+rax*1-0x10]
    1735:	c5 fd 6f 6c 46 e0    	vmovdqa ymm5,YMMWORD PTR [rsi+rax*2-0x20]
    173b:	c5 dd 60 e6          	vpunpcklbw ymm4,ymm4,ymm6
    173f:	c5 d5 60 ee          	vpunpcklbw ymm5,ymm5,ymm6
    1743:	c5 ed f9 d4          	vpsubw ymm2,ymm2,ymm4
    1747:	c5 e5 f9 dd          	vpsubw ymm3,ymm3,ymm5
    174b:	c5 fd fd c2          	vpaddw ymm0,ymm0,ymm2
    174f:	c5 ed f5 d2          	vpmaddwd ymm2,ymm2,ymm2
    1753:	c5 fd fd c3          	vpaddw ymm0,ymm0,ymm3
    1757:	c5 e5 f5 db          	vpmaddwd ymm3,ymm3,ymm3
    175b:	c5 f5 fe ca          	vpaddd ymm1,ymm1,ymm2
    175f:	c5 f5 fe cb          	vpaddd ymm1,ymm1,ymm3
    1763:	83 e8 20             	sub    eax,0x20
    1766:	7f bb                	jg     1723 <x264_8_pixel_var2_8x16_avx2+0x43>
    1768:	c5 fd f5 05 00 00 00 	vpmaddwd ymm0,ymm0,YMMWORD PTR [rip+0x0]        # 1770 <x264_8_pixel_var2_8x16_avx2+0x90>
    176f:	00 
    1770:	c5 fd 6d d1          	vpunpckhqdq ymm2,ymm0,ymm1
    1774:	c5 fd 6c c1          	vpunpcklqdq ymm0,ymm0,ymm1
    1778:	c5 fd fe c2          	vpaddd ymm0,ymm0,ymm2
    177c:	c4 e3 7d 39 c2 01    	vextracti128 xmm2,ymm0,0x1
    1782:	c4 e2 79 02 c2       	vphaddd xmm0,xmm0,xmm2
    1787:	c5 f9 70 d0 fd       	vpshufd xmm2,xmm0,0xfd
    178c:	c5 f9 f4 c0          	vpmuludq xmm0,xmm0,xmm0
    1790:	c5 f9 d6 12          	vmovq  QWORD PTR [rdx],xmm2
    1794:	c5 f9 72 d0 07       	vpsrld xmm0,xmm0,0x7
    1799:	c5 e9 fa d0          	vpsubd xmm2,xmm2,xmm0
    179d:	c5 e9 6d c2          	vpunpckhqdq xmm0,xmm2,xmm2
    17a1:	c5 f9 fe c2          	vpaddd xmm0,xmm0,xmm2
    17a5:	c5 f9 7e c0          	vmovd  eax,xmm0
    17a9:	c5 f8 77             	vzeroupper 
    17ac:	c3                   	ret    
    17ad:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000017b0 <x264_8_pixel_var2_8x8_avx512>:
    17b0:	62 a1 4d 00 ef f6    	vpxord xmm22,xmm22,xmm22
    17b6:	62 e2 7d 48 30 17    	vpmovzxbw zmm18,YMMWORD PTR [rdi]
    17bc:	62 e1 7d 48 6f 26    	vmovdqa32 zmm20,ZMMWORD PTR [rsi]
    17c2:	62 e2 7d 48 30 5f 01 	vpmovzxbw zmm19,YMMWORD PTR [rdi+0x20]
    17c9:	62 e1 7d 48 6f 6e 01 	vmovdqa32 zmm21,ZMMWORD PTR [rsi+0x40]
    17d0:	62 a1 5d 40 60 e6    	vpunpcklbw zmm20,zmm20,zmm22
    17d6:	62 a1 55 40 60 ee    	vpunpcklbw zmm21,zmm21,zmm22
    17dc:	62 a1 6d 40 f9 d4    	vpsubw zmm18,zmm18,zmm20
    17e2:	62 a1 65 40 f9 dd    	vpsubw zmm19,zmm19,zmm21
    17e8:	62 a1 6d 40 fd c3    	vpaddw zmm16,zmm18,zmm19
    17ee:	62 a1 6d 40 f5 d2    	vpmaddwd zmm18,zmm18,zmm18
    17f4:	62 a1 65 40 f5 db    	vpmaddwd zmm19,zmm19,zmm19
    17fa:	62 a1 6d 40 fe cb    	vpaddd zmm17,zmm18,zmm19
    1800:	62 e2 7d 48 30 57 02 	vpmovzxbw zmm18,YMMWORD PTR [rdi+0x40]
    1807:	62 e1 7d 48 6f 66 02 	vmovdqa32 zmm20,ZMMWORD PTR [rsi+0x80]
    180e:	62 e2 7d 48 30 5f 03 	vpmovzxbw zmm19,YMMWORD PTR [rdi+0x60]
    1815:	62 e1 7d 48 6f 6e 03 	vmovdqa32 zmm21,ZMMWORD PTR [rsi+0xc0]
    181c:	62 a1 5d 40 60 e6    	vpunpcklbw zmm20,zmm20,zmm22
    1822:	62 a1 55 40 60 ee    	vpunpcklbw zmm21,zmm21,zmm22
    1828:	62 a1 6d 40 f9 d4    	vpsubw zmm18,zmm18,zmm20
    182e:	62 a1 65 40 f9 dd    	vpsubw zmm19,zmm19,zmm21
    1834:	62 a1 7d 40 fd c2    	vpaddw zmm16,zmm16,zmm18
    183a:	62 a1 6d 40 f5 d2    	vpmaddwd zmm18,zmm18,zmm18
    1840:	62 a1 7d 40 fd c3    	vpaddw zmm16,zmm16,zmm19
    1846:	62 a1 65 40 f5 db    	vpmaddwd zmm19,zmm19,zmm19
    184c:	62 a1 75 40 fe ca    	vpaddd zmm17,zmm17,zmm18
    1852:	62 a1 75 40 fe cb    	vpaddd zmm17,zmm17,zmm19
    1858:	62 e2 7d 48 5a 15 00 	vbroadcasti32x4 zmm18,XMMWORD PTR [rip+0x0]        # 1862 <x264_8_pixel_var2_8x8_avx512+0xb2>
    185f:	00 00 00 
    1862:	62 a1 7d 40 f5 c2    	vpmaddwd zmm16,zmm16,zmm18
    1868:	62 a1 fd 40 6d d1    	vpunpckhqdq zmm18,zmm16,zmm17
    186e:	62 a1 fd 40 6c c1    	vpunpcklqdq zmm16,zmm16,zmm17
    1874:	62 a1 7d 40 fe c2    	vpaddd zmm16,zmm16,zmm18
    187a:	62 a3 7d 48 3b c2 01 	vextracti32x8 ymm18,zmm16,0x1
    1881:	62 a1 7d 20 fe c2    	vpaddd ymm16,ymm16,ymm18
    1887:	62 b1 ed 20 73 d0 20 	vpsrlq ymm18,ymm16,0x20
    188e:	62 a1 7d 20 fe c2    	vpaddd ymm16,ymm16,ymm18
    1894:	62 e2 7e 28 35 c0    	vpmovqd xmm0,ymm16
    189a:	c5 f9 70 c8 fd       	vpshufd xmm1,xmm0,0xfd
    189f:	c5 f9 f4 c0          	vpmuludq xmm0,xmm0,xmm0
    18a3:	c5 f9 d6 0a          	vmovq  QWORD PTR [rdx],xmm1
    18a7:	c5 f9 72 d0 06       	vpsrld xmm0,xmm0,0x6
    18ac:	c5 f1 fa c8          	vpsubd xmm1,xmm1,xmm0
    18b0:	c5 f1 6d c1          	vpunpckhqdq xmm0,xmm1,xmm1
    18b4:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
    18b8:	c5 f9 7e c0          	vmovd  eax,xmm0
    18bc:	c3                   	ret    
    18bd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000018c0 <x264_8_pixel_var2_8x16_avx512>:
    18c0:	62 a1 4d 00 ef f6    	vpxord xmm22,xmm22,xmm22
    18c6:	b8 a0 00 00 00       	mov    eax,0xa0
    18cb:	62 e2 7d 48 30 57 07 	vpmovzxbw zmm18,YMMWORD PTR [rdi+0xe0]
    18d2:	62 e1 7d 48 6f 66 07 	vmovdqa32 zmm20,ZMMWORD PTR [rsi+0x1c0]
    18d9:	62 e2 7d 48 30 5f 06 	vpmovzxbw zmm19,YMMWORD PTR [rdi+0xc0]
    18e0:	62 e1 7d 48 6f 6e 06 	vmovdqa32 zmm21,ZMMWORD PTR [rsi+0x180]
    18e7:	62 a1 5d 40 60 e6    	vpunpcklbw zmm20,zmm20,zmm22
    18ed:	62 a1 55 40 60 ee    	vpunpcklbw zmm21,zmm21,zmm22
    18f3:	62 a1 6d 40 f9 d4    	vpsubw zmm18,zmm18,zmm20
    18f9:	62 a1 65 40 f9 dd    	vpsubw zmm19,zmm19,zmm21
    18ff:	62 a1 6d 40 fd c3    	vpaddw zmm16,zmm18,zmm19
    1905:	62 a1 6d 40 f5 d2    	vpmaddwd zmm18,zmm18,zmm18
    190b:	62 a1 65 40 f5 db    	vpmaddwd zmm19,zmm19,zmm19
    1911:	62 a1 6d 40 fe cb    	vpaddd zmm17,zmm18,zmm19
    1917:	62 e2 7d 48 30 14 07 	vpmovzxbw zmm18,YMMWORD PTR [rdi+rax*1]
    191e:	62 e1 7d 48 6f 24 46 	vmovdqa32 zmm20,ZMMWORD PTR [rsi+rax*2]
    1925:	62 e2 7d 48 30 5c 07 	vpmovzxbw zmm19,YMMWORD PTR [rdi+rax*1-0x20]
    192c:	ff 
    192d:	62 e1 7d 48 6f 6c 46 	vmovdqa32 zmm21,ZMMWORD PTR [rsi+rax*2-0x40]
    1934:	ff 
    1935:	62 a1 5d 40 60 e6    	vpunpcklbw zmm20,zmm20,zmm22
    193b:	62 a1 55 40 60 ee    	vpunpcklbw zmm21,zmm21,zmm22
    1941:	62 a1 6d 40 f9 d4    	vpsubw zmm18,zmm18,zmm20
    1947:	62 a1 65 40 f9 dd    	vpsubw zmm19,zmm19,zmm21
    194d:	62 a1 7d 40 fd c2    	vpaddw zmm16,zmm16,zmm18
    1953:	62 a1 6d 40 f5 d2    	vpmaddwd zmm18,zmm18,zmm18
    1959:	62 a1 7d 40 fd c3    	vpaddw zmm16,zmm16,zmm19
    195f:	62 a1 65 40 f5 db    	vpmaddwd zmm19,zmm19,zmm19
    1965:	62 a1 75 40 fe ca    	vpaddd zmm17,zmm17,zmm18
    196b:	62 a1 75 40 fe cb    	vpaddd zmm17,zmm17,zmm19
    1971:	83 e8 40             	sub    eax,0x40
    1974:	7f a1                	jg     1917 <x264_8_pixel_var2_8x16_avx512+0x57>
    1976:	62 e2 7d 48 5a 15 00 	vbroadcasti32x4 zmm18,XMMWORD PTR [rip+0x0]        # 1980 <x264_8_pixel_var2_8x16_avx512+0xc0>
    197d:	00 00 00 
    1980:	62 a1 7d 40 f5 c2    	vpmaddwd zmm16,zmm16,zmm18
    1986:	62 a1 fd 40 6d d1    	vpunpckhqdq zmm18,zmm16,zmm17
    198c:	62 a1 fd 40 6c c1    	vpunpcklqdq zmm16,zmm16,zmm17
    1992:	62 a1 7d 40 fe c2    	vpaddd zmm16,zmm16,zmm18
    1998:	62 a3 7d 48 3b c2 01 	vextracti32x8 ymm18,zmm16,0x1
    199f:	62 a1 7d 20 fe c2    	vpaddd ymm16,ymm16,ymm18
    19a5:	62 b1 ed 20 73 d0 20 	vpsrlq ymm18,ymm16,0x20
    19ac:	62 a1 7d 20 fe c2    	vpaddd ymm16,ymm16,ymm18
    19b2:	62 e2 7e 28 35 c0    	vpmovqd xmm0,ymm16
    19b8:	c5 f9 70 c8 fd       	vpshufd xmm1,xmm0,0xfd
    19bd:	c5 f9 f4 c0          	vpmuludq xmm0,xmm0,xmm0
    19c1:	c5 f9 d6 0a          	vmovq  QWORD PTR [rdx],xmm1
    19c5:	c5 f9 72 d0 07       	vpsrld xmm0,xmm0,0x7
    19ca:	c5 f1 fa c8          	vpsubd xmm1,xmm1,xmm0
    19ce:	c5 f1 6d c1          	vpunpckhqdq xmm0,xmm1,xmm1
    19d2:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
    19d6:	c5 f9 7e c0          	vmovd  eax,xmm0
    19da:	c3                   	ret    
    19db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000019e0 <x264_8_pixel_satd_16x4_internal_mmx2>:
    19e0:	0f 6e 27             	movd   mm4,DWORD PTR [rdi]
    19e3:	0f 6e 1a             	movd   mm3,DWORD PTR [rdx]
    19e6:	0f 60 e3             	punpcklbw mm4,mm3
    19e9:	0f 60 db             	punpcklbw mm3,mm3
    19ec:	0f f9 e3             	psubw  mm4,mm3
    19ef:	0f 6e 2c 37          	movd   mm5,DWORD PTR [rdi+rsi*1]
    19f3:	0f 6e 1c 0a          	movd   mm3,DWORD PTR [rdx+rcx*1]
    19f7:	0f 60 eb             	punpcklbw mm5,mm3
    19fa:	0f 60 db             	punpcklbw mm3,mm3
    19fd:	0f f9 eb             	psubw  mm5,mm3
    1a00:	0f 6e 34 77          	movd   mm6,DWORD PTR [rdi+rsi*2]
    1a04:	0f 6e 1c 4a          	movd   mm3,DWORD PTR [rdx+rcx*2]
    1a08:	0f 60 f3             	punpcklbw mm6,mm3
    1a0b:	0f 60 db             	punpcklbw mm3,mm3
    1a0e:	0f f9 f3             	psubw  mm6,mm3
    1a11:	42 0f 6e 3c 07       	movd   mm7,DWORD PTR [rdi+r8*1]
    1a16:	42 0f 6e 1c 0a       	movd   mm3,DWORD PTR [rdx+r9*1]
    1a1b:	0f 60 fb             	punpcklbw mm7,mm3
    1a1e:	0f 60 db             	punpcklbw mm3,mm3
    1a21:	0f f9 fb             	psubw  mm7,mm3
    1a24:	0f 6f dc             	movq   mm3,mm4
    1a27:	0f fd e5             	paddw  mm4,mm5
    1a2a:	0f f9 eb             	psubw  mm5,mm3
    1a2d:	0f 6f de             	movq   mm3,mm6
    1a30:	0f fd f7             	paddw  mm6,mm7
    1a33:	0f f9 fb             	psubw  mm7,mm3
    1a36:	0f 6f dc             	movq   mm3,mm4
    1a39:	0f 61 e5             	punpcklwd mm4,mm5
    1a3c:	0f 69 dd             	punpckhwd mm3,mm5
    1a3f:	0f 6f ec             	movq   mm5,mm4
    1a42:	0f fd e3             	paddw  mm4,mm3
    1a45:	0f f9 dd             	psubw  mm3,mm5
    1a48:	0f 6f ee             	movq   mm5,mm6
    1a4b:	0f 61 f7             	punpcklwd mm6,mm7
    1a4e:	0f 69 ef             	punpckhwd mm5,mm7
    1a51:	0f 6f fe             	movq   mm7,mm6
    1a54:	0f fd f5             	paddw  mm6,mm5
    1a57:	0f f9 ef             	psubw  mm5,mm7
    1a5a:	0f 6f fc             	movq   mm7,mm4
    1a5d:	0f fd e6             	paddw  mm4,mm6
    1a60:	0f f9 f7             	psubw  mm6,mm7
    1a63:	0f 6f fb             	movq   mm7,mm3
    1a66:	0f fd dd             	paddw  mm3,mm5
    1a69:	0f f9 ef             	psubw  mm5,mm7
    1a6c:	0f 6f fc             	movq   mm7,mm4
    1a6f:	0f 62 e6             	punpckldq mm4,mm6
    1a72:	0f 6a fe             	punpckhdq mm7,mm6
    1a75:	0f ef f6             	pxor   mm6,mm6
    1a78:	0f ef d2             	pxor   mm2,mm2
    1a7b:	0f f9 f4             	psubw  mm6,mm4
    1a7e:	0f f9 d7             	psubw  mm2,mm7
    1a81:	0f ee e6             	pmaxsw mm4,mm6
    1a84:	0f ee fa             	pmaxsw mm7,mm2
    1a87:	0f ee e7             	pmaxsw mm4,mm7
    1a8a:	0f 6f f3             	movq   mm6,mm3
    1a8d:	0f 62 dd             	punpckldq mm3,mm5
    1a90:	0f 6a f5             	punpckhdq mm6,mm5
    1a93:	0f ef ed             	pxor   mm5,mm5
    1a96:	0f ef d2             	pxor   mm2,mm2
    1a99:	0f f9 eb             	psubw  mm5,mm3
    1a9c:	0f f9 d6             	psubw  mm2,mm6
    1a9f:	0f ee dd             	pmaxsw mm3,mm5
    1aa2:	0f ee f2             	pmaxsw mm6,mm2
    1aa5:	0f ee de             	pmaxsw mm3,mm6
    1aa8:	0f fd e3             	paddw  mm4,mm3
    1aab:	0f 6e 57 04          	movd   mm2,DWORD PTR [rdi+0x4]
    1aaf:	0f 6e 6a 04          	movd   mm5,DWORD PTR [rdx+0x4]
    1ab3:	0f 60 d5             	punpcklbw mm2,mm5
    1ab6:	0f 60 ed             	punpcklbw mm5,mm5
    1ab9:	0f f9 d5             	psubw  mm2,mm5
    1abc:	0f 6e 7c 37 04       	movd   mm7,DWORD PTR [rdi+rsi*1+0x4]
    1ac1:	0f 6e 6c 0a 04       	movd   mm5,DWORD PTR [rdx+rcx*1+0x4]
    1ac6:	0f 60 fd             	punpcklbw mm7,mm5
    1ac9:	0f 60 ed             	punpcklbw mm5,mm5
    1acc:	0f f9 fd             	psubw  mm7,mm5
    1acf:	0f 6e 5c 77 04       	movd   mm3,DWORD PTR [rdi+rsi*2+0x4]
    1ad4:	0f 6e 6c 4a 04       	movd   mm5,DWORD PTR [rdx+rcx*2+0x4]
    1ad9:	0f 60 dd             	punpcklbw mm3,mm5
    1adc:	0f 60 ed             	punpcklbw mm5,mm5
    1adf:	0f f9 dd             	psubw  mm3,mm5
    1ae2:	42 0f 6e 74 07 04    	movd   mm6,DWORD PTR [rdi+r8*1+0x4]
    1ae8:	42 0f 6e 6c 0a 04    	movd   mm5,DWORD PTR [rdx+r9*1+0x4]
    1aee:	0f 60 f5             	punpcklbw mm6,mm5
    1af1:	0f 60 ed             	punpcklbw mm5,mm5
    1af4:	0f f9 f5             	psubw  mm6,mm5
    1af7:	0f 6f ea             	movq   mm5,mm2
    1afa:	0f fd d7             	paddw  mm2,mm7
    1afd:	0f f9 fd             	psubw  mm7,mm5
    1b00:	0f 6f eb             	movq   mm5,mm3
    1b03:	0f fd de             	paddw  mm3,mm6
    1b06:	0f f9 f5             	psubw  mm6,mm5
    1b09:	0f 6f ea             	movq   mm5,mm2
    1b0c:	0f 61 d7             	punpcklwd mm2,mm7
    1b0f:	0f 69 ef             	punpckhwd mm5,mm7
    1b12:	0f 6f fa             	movq   mm7,mm2
    1b15:	0f fd d5             	paddw  mm2,mm5
    1b18:	0f f9 ef             	psubw  mm5,mm7
    1b1b:	0f 6f fb             	movq   mm7,mm3
    1b1e:	0f 61 de             	punpcklwd mm3,mm6
    1b21:	0f 69 fe             	punpckhwd mm7,mm6
    1b24:	0f 6f f3             	movq   mm6,mm3
    1b27:	0f fd df             	paddw  mm3,mm7
    1b2a:	0f f9 fe             	psubw  mm7,mm6
    1b2d:	0f 6f f2             	movq   mm6,mm2
    1b30:	0f fd d3             	paddw  mm2,mm3
    1b33:	0f f9 de             	psubw  mm3,mm6
    1b36:	0f 6f f5             	movq   mm6,mm5
    1b39:	0f fd ef             	paddw  mm5,mm7
    1b3c:	0f f9 fe             	psubw  mm7,mm6
    1b3f:	0f 6f f2             	movq   mm6,mm2
    1b42:	0f 62 d3             	punpckldq mm2,mm3
    1b45:	0f 6a f3             	punpckhdq mm6,mm3
    1b48:	0f ef db             	pxor   mm3,mm3
    1b4b:	0f ef c9             	pxor   mm1,mm1
    1b4e:	0f f9 da             	psubw  mm3,mm2
    1b51:	0f f9 ce             	psubw  mm1,mm6
    1b54:	0f ee d3             	pmaxsw mm2,mm3
    1b57:	0f ee f1             	pmaxsw mm6,mm1
    1b5a:	0f ee d6             	pmaxsw mm2,mm6
    1b5d:	0f 6f dd             	movq   mm3,mm5
    1b60:	0f 62 ef             	punpckldq mm5,mm7
    1b63:	0f 6a df             	punpckhdq mm3,mm7
    1b66:	0f ef ff             	pxor   mm7,mm7
    1b69:	0f ef c9             	pxor   mm1,mm1
    1b6c:	0f f9 fd             	psubw  mm7,mm5
    1b6f:	0f f9 cb             	psubw  mm1,mm3
    1b72:	0f ee ef             	pmaxsw mm5,mm7
    1b75:	0f ee d9             	pmaxsw mm3,mm1
    1b78:	0f ee eb             	pmaxsw mm5,mm3
    1b7b:	0f fd d5             	paddw  mm2,mm5
    1b7e:	0f fd c4             	paddw  mm0,mm4
    1b81:	0f 6e 4f 08          	movd   mm1,DWORD PTR [rdi+0x8]
    1b85:	0f 6e 7a 08          	movd   mm7,DWORD PTR [rdx+0x8]
    1b89:	0f 60 cf             	punpcklbw mm1,mm7
    1b8c:	0f 60 ff             	punpcklbw mm7,mm7
    1b8f:	0f f9 cf             	psubw  mm1,mm7
    1b92:	0f 6e 74 37 08       	movd   mm6,DWORD PTR [rdi+rsi*1+0x8]
    1b97:	0f 6e 7c 0a 08       	movd   mm7,DWORD PTR [rdx+rcx*1+0x8]
    1b9c:	0f 60 f7             	punpcklbw mm6,mm7
    1b9f:	0f 60 ff             	punpcklbw mm7,mm7
    1ba2:	0f f9 f7             	psubw  mm6,mm7
    1ba5:	0f 6e 6c 77 08       	movd   mm5,DWORD PTR [rdi+rsi*2+0x8]
    1baa:	0f 6e 7c 4a 08       	movd   mm7,DWORD PTR [rdx+rcx*2+0x8]
    1baf:	0f 60 ef             	punpcklbw mm5,mm7
    1bb2:	0f 60 ff             	punpcklbw mm7,mm7
    1bb5:	0f f9 ef             	psubw  mm5,mm7
    1bb8:	42 0f 6e 5c 07 08    	movd   mm3,DWORD PTR [rdi+r8*1+0x8]
    1bbe:	42 0f 6e 7c 0a 08    	movd   mm7,DWORD PTR [rdx+r9*1+0x8]
    1bc4:	0f 60 df             	punpcklbw mm3,mm7
    1bc7:	0f 60 ff             	punpcklbw mm7,mm7
    1bca:	0f f9 df             	psubw  mm3,mm7
    1bcd:	0f 6f f9             	movq   mm7,mm1
    1bd0:	0f fd ce             	paddw  mm1,mm6
    1bd3:	0f f9 f7             	psubw  mm6,mm7
    1bd6:	0f 6f fd             	movq   mm7,mm5
    1bd9:	0f fd eb             	paddw  mm5,mm3
    1bdc:	0f f9 df             	psubw  mm3,mm7
    1bdf:	0f 6f f9             	movq   mm7,mm1
    1be2:	0f 61 ce             	punpcklwd mm1,mm6
    1be5:	0f 69 fe             	punpckhwd mm7,mm6
    1be8:	0f 6f f1             	movq   mm6,mm1
    1beb:	0f fd cf             	paddw  mm1,mm7
    1bee:	0f f9 fe             	psubw  mm7,mm6
    1bf1:	0f 6f f5             	movq   mm6,mm5
    1bf4:	0f 61 eb             	punpcklwd mm5,mm3
    1bf7:	0f 69 f3             	punpckhwd mm6,mm3
    1bfa:	0f 6f dd             	movq   mm3,mm5
    1bfd:	0f fd ee             	paddw  mm5,mm6
    1c00:	0f f9 f3             	psubw  mm6,mm3
    1c03:	0f 6f d9             	movq   mm3,mm1
    1c06:	0f fd cd             	paddw  mm1,mm5
    1c09:	0f f9 eb             	psubw  mm5,mm3
    1c0c:	0f 6f df             	movq   mm3,mm7
    1c0f:	0f fd fe             	paddw  mm7,mm6
    1c12:	0f f9 f3             	psubw  mm6,mm3
    1c15:	0f 6f d9             	movq   mm3,mm1
    1c18:	0f 62 cd             	punpckldq mm1,mm5
    1c1b:	0f 6a dd             	punpckhdq mm3,mm5
    1c1e:	0f ef ed             	pxor   mm5,mm5
    1c21:	0f ef e4             	pxor   mm4,mm4
    1c24:	0f f9 e9             	psubw  mm5,mm1
    1c27:	0f f9 e3             	psubw  mm4,mm3
    1c2a:	0f ee cd             	pmaxsw mm1,mm5
    1c2d:	0f ee dc             	pmaxsw mm3,mm4
    1c30:	0f ee cb             	pmaxsw mm1,mm3
    1c33:	0f 6f ef             	movq   mm5,mm7
    1c36:	0f 62 fe             	punpckldq mm7,mm6
    1c39:	0f 6a ee             	punpckhdq mm5,mm6
    1c3c:	0f ef f6             	pxor   mm6,mm6
    1c3f:	0f ef e4             	pxor   mm4,mm4
    1c42:	0f f9 f7             	psubw  mm6,mm7
    1c45:	0f f9 e5             	psubw  mm4,mm5
    1c48:	0f ee fe             	pmaxsw mm7,mm6
    1c4b:	0f ee ec             	pmaxsw mm5,mm4
    1c4e:	0f ee fd             	pmaxsw mm7,mm5
    1c51:	0f fd cf             	paddw  mm1,mm7
    1c54:	0f fd c2             	paddw  mm0,mm2
    1c57:	0f 6e 67 0c          	movd   mm4,DWORD PTR [rdi+0xc]
    1c5b:	0f 6e 72 0c          	movd   mm6,DWORD PTR [rdx+0xc]
    1c5f:	0f 60 e6             	punpcklbw mm4,mm6
    1c62:	0f 60 f6             	punpcklbw mm6,mm6
    1c65:	0f f9 e6             	psubw  mm4,mm6
    1c68:	0f 6e 5c 37 0c       	movd   mm3,DWORD PTR [rdi+rsi*1+0xc]
    1c6d:	0f 6e 74 0a 0c       	movd   mm6,DWORD PTR [rdx+rcx*1+0xc]
    1c72:	0f 60 de             	punpcklbw mm3,mm6
    1c75:	0f 60 f6             	punpcklbw mm6,mm6
    1c78:	0f f9 de             	psubw  mm3,mm6
    1c7b:	0f 6e 7c 77 0c       	movd   mm7,DWORD PTR [rdi+rsi*2+0xc]
    1c80:	0f 6e 74 4a 0c       	movd   mm6,DWORD PTR [rdx+rcx*2+0xc]
    1c85:	0f 60 fe             	punpcklbw mm7,mm6
    1c88:	0f 60 f6             	punpcklbw mm6,mm6
    1c8b:	0f f9 fe             	psubw  mm7,mm6
    1c8e:	42 0f 6e 6c 07 0c    	movd   mm5,DWORD PTR [rdi+r8*1+0xc]
    1c94:	42 0f 6e 74 0a 0c    	movd   mm6,DWORD PTR [rdx+r9*1+0xc]
    1c9a:	0f 60 ee             	punpcklbw mm5,mm6
    1c9d:	0f 60 f6             	punpcklbw mm6,mm6
    1ca0:	0f f9 ee             	psubw  mm5,mm6
    1ca3:	0f 6f f4             	movq   mm6,mm4
    1ca6:	0f fd e3             	paddw  mm4,mm3
    1ca9:	0f f9 de             	psubw  mm3,mm6
    1cac:	0f 6f f7             	movq   mm6,mm7
    1caf:	0f fd fd             	paddw  mm7,mm5
    1cb2:	0f f9 ee             	psubw  mm5,mm6
    1cb5:	0f 6f f4             	movq   mm6,mm4
    1cb8:	0f 61 e3             	punpcklwd mm4,mm3
    1cbb:	0f 69 f3             	punpckhwd mm6,mm3
    1cbe:	0f 6f dc             	movq   mm3,mm4
    1cc1:	0f fd e6             	paddw  mm4,mm6
    1cc4:	0f f9 f3             	psubw  mm6,mm3
    1cc7:	0f 6f df             	movq   mm3,mm7
    1cca:	0f 61 fd             	punpcklwd mm7,mm5
    1ccd:	0f 69 dd             	punpckhwd mm3,mm5
    1cd0:	0f 6f ef             	movq   mm5,mm7
    1cd3:	0f fd fb             	paddw  mm7,mm3
    1cd6:	0f f9 dd             	psubw  mm3,mm5
    1cd9:	0f 6f ec             	movq   mm5,mm4
    1cdc:	0f fd e7             	paddw  mm4,mm7
    1cdf:	0f f9 fd             	psubw  mm7,mm5
    1ce2:	0f 6f ee             	movq   mm5,mm6
    1ce5:	0f fd f3             	paddw  mm6,mm3
    1ce8:	0f f9 dd             	psubw  mm3,mm5
    1ceb:	0f 6f ec             	movq   mm5,mm4
    1cee:	0f 62 e7             	punpckldq mm4,mm7
    1cf1:	0f 6a ef             	punpckhdq mm5,mm7
    1cf4:	0f ef ff             	pxor   mm7,mm7
    1cf7:	0f ef d2             	pxor   mm2,mm2
    1cfa:	0f f9 fc             	psubw  mm7,mm4
    1cfd:	0f f9 d5             	psubw  mm2,mm5
    1d00:	0f ee e7             	pmaxsw mm4,mm7
    1d03:	0f ee ea             	pmaxsw mm5,mm2
    1d06:	0f ee e5             	pmaxsw mm4,mm5
    1d09:	0f 6f fe             	movq   mm7,mm6
    1d0c:	0f 62 f3             	punpckldq mm6,mm3
    1d0f:	0f 6a fb             	punpckhdq mm7,mm3
    1d12:	0f ef db             	pxor   mm3,mm3
    1d15:	0f ef d2             	pxor   mm2,mm2
    1d18:	0f f9 de             	psubw  mm3,mm6
    1d1b:	0f f9 d7             	psubw  mm2,mm7
    1d1e:	0f ee f3             	pmaxsw mm6,mm3
    1d21:	0f ee fa             	pmaxsw mm7,mm2
    1d24:	0f ee f7             	pmaxsw mm6,mm7
    1d27:	0f fd e6             	paddw  mm4,mm6
    1d2a:	0f fd c1             	paddw  mm0,mm1
    1d2d:	0f fd c4             	paddw  mm0,mm4
    1d30:	c3                   	ret    
    1d31:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    1d38:	00 
    1d39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001d40 <x264_8_pixel_satd_8x8_internal_mmx2>:
    1d40:	0f 6e 27             	movd   mm4,DWORD PTR [rdi]
    1d43:	0f 6e 1a             	movd   mm3,DWORD PTR [rdx]
    1d46:	0f 60 e3             	punpcklbw mm4,mm3
    1d49:	0f 60 db             	punpcklbw mm3,mm3
    1d4c:	0f f9 e3             	psubw  mm4,mm3
    1d4f:	0f 6e 2c 37          	movd   mm5,DWORD PTR [rdi+rsi*1]
    1d53:	0f 6e 1c 0a          	movd   mm3,DWORD PTR [rdx+rcx*1]
    1d57:	0f 60 eb             	punpcklbw mm5,mm3
    1d5a:	0f 60 db             	punpcklbw mm3,mm3
    1d5d:	0f f9 eb             	psubw  mm5,mm3
    1d60:	0f 6e 34 77          	movd   mm6,DWORD PTR [rdi+rsi*2]
    1d64:	0f 6e 1c 4a          	movd   mm3,DWORD PTR [rdx+rcx*2]
    1d68:	0f 60 f3             	punpcklbw mm6,mm3
    1d6b:	0f 60 db             	punpcklbw mm3,mm3
    1d6e:	0f f9 f3             	psubw  mm6,mm3
    1d71:	42 0f 6e 3c 07       	movd   mm7,DWORD PTR [rdi+r8*1]
    1d76:	42 0f 6e 1c 0a       	movd   mm3,DWORD PTR [rdx+r9*1]
    1d7b:	0f 60 fb             	punpcklbw mm7,mm3
    1d7e:	0f 60 db             	punpcklbw mm3,mm3
    1d81:	0f f9 fb             	psubw  mm7,mm3
    1d84:	0f 6f dc             	movq   mm3,mm4
    1d87:	0f fd e5             	paddw  mm4,mm5
    1d8a:	0f f9 eb             	psubw  mm5,mm3
    1d8d:	0f 6f de             	movq   mm3,mm6
    1d90:	0f fd f7             	paddw  mm6,mm7
    1d93:	0f f9 fb             	psubw  mm7,mm3
    1d96:	0f 6f dc             	movq   mm3,mm4
    1d99:	0f 61 e5             	punpcklwd mm4,mm5
    1d9c:	0f 69 dd             	punpckhwd mm3,mm5
    1d9f:	0f 6f ec             	movq   mm5,mm4
    1da2:	0f fd e3             	paddw  mm4,mm3
    1da5:	0f f9 dd             	psubw  mm3,mm5
    1da8:	0f 6f ee             	movq   mm5,mm6
    1dab:	0f 61 f7             	punpcklwd mm6,mm7
    1dae:	0f 69 ef             	punpckhwd mm5,mm7
    1db1:	0f 6f fe             	movq   mm7,mm6
    1db4:	0f fd f5             	paddw  mm6,mm5
    1db7:	0f f9 ef             	psubw  mm5,mm7
    1dba:	0f 6f fc             	movq   mm7,mm4
    1dbd:	0f fd e6             	paddw  mm4,mm6
    1dc0:	0f f9 f7             	psubw  mm6,mm7
    1dc3:	0f 6f fb             	movq   mm7,mm3
    1dc6:	0f fd dd             	paddw  mm3,mm5
    1dc9:	0f f9 ef             	psubw  mm5,mm7
    1dcc:	0f 6f fc             	movq   mm7,mm4
    1dcf:	0f 62 e6             	punpckldq mm4,mm6
    1dd2:	0f 6a fe             	punpckhdq mm7,mm6
    1dd5:	0f ef f6             	pxor   mm6,mm6
    1dd8:	0f ef d2             	pxor   mm2,mm2
    1ddb:	0f f9 f4             	psubw  mm6,mm4
    1dde:	0f f9 d7             	psubw  mm2,mm7
    1de1:	0f ee e6             	pmaxsw mm4,mm6
    1de4:	0f ee fa             	pmaxsw mm7,mm2
    1de7:	0f ee e7             	pmaxsw mm4,mm7
    1dea:	0f 6f f3             	movq   mm6,mm3
    1ded:	0f 62 dd             	punpckldq mm3,mm5
    1df0:	0f 6a f5             	punpckhdq mm6,mm5
    1df3:	0f ef ed             	pxor   mm5,mm5
    1df6:	0f ef d2             	pxor   mm2,mm2
    1df9:	0f f9 eb             	psubw  mm5,mm3
    1dfc:	0f f9 d6             	psubw  mm2,mm6
    1dff:	0f ee dd             	pmaxsw mm3,mm5
    1e02:	0f ee f2             	pmaxsw mm6,mm2
    1e05:	0f ee de             	pmaxsw mm3,mm6
    1e08:	0f fd e3             	paddw  mm4,mm3
    1e0b:	0f 6e 57 04          	movd   mm2,DWORD PTR [rdi+0x4]
    1e0f:	0f 6e 6a 04          	movd   mm5,DWORD PTR [rdx+0x4]
    1e13:	0f 60 d5             	punpcklbw mm2,mm5
    1e16:	0f 60 ed             	punpcklbw mm5,mm5
    1e19:	0f f9 d5             	psubw  mm2,mm5
    1e1c:	0f 6e 7c 37 04       	movd   mm7,DWORD PTR [rdi+rsi*1+0x4]
    1e21:	0f 6e 6c 0a 04       	movd   mm5,DWORD PTR [rdx+rcx*1+0x4]
    1e26:	0f 60 fd             	punpcklbw mm7,mm5
    1e29:	0f 60 ed             	punpcklbw mm5,mm5
    1e2c:	0f f9 fd             	psubw  mm7,mm5
    1e2f:	0f 6e 5c 77 04       	movd   mm3,DWORD PTR [rdi+rsi*2+0x4]
    1e34:	0f 6e 6c 4a 04       	movd   mm5,DWORD PTR [rdx+rcx*2+0x4]
    1e39:	0f 60 dd             	punpcklbw mm3,mm5
    1e3c:	0f 60 ed             	punpcklbw mm5,mm5
    1e3f:	0f f9 dd             	psubw  mm3,mm5
    1e42:	42 0f 6e 74 07 04    	movd   mm6,DWORD PTR [rdi+r8*1+0x4]
    1e48:	42 0f 6e 6c 0a 04    	movd   mm5,DWORD PTR [rdx+r9*1+0x4]
    1e4e:	0f 60 f5             	punpcklbw mm6,mm5
    1e51:	0f 60 ed             	punpcklbw mm5,mm5
    1e54:	0f f9 f5             	psubw  mm6,mm5
    1e57:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    1e5b:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    1e5f:	0f 6f ea             	movq   mm5,mm2
    1e62:	0f fd d7             	paddw  mm2,mm7
    1e65:	0f f9 fd             	psubw  mm7,mm5
    1e68:	0f 6f eb             	movq   mm5,mm3
    1e6b:	0f fd de             	paddw  mm3,mm6
    1e6e:	0f f9 f5             	psubw  mm6,mm5
    1e71:	0f 6f ea             	movq   mm5,mm2
    1e74:	0f 61 d7             	punpcklwd mm2,mm7
    1e77:	0f 69 ef             	punpckhwd mm5,mm7
    1e7a:	0f 6f fa             	movq   mm7,mm2
    1e7d:	0f fd d5             	paddw  mm2,mm5
    1e80:	0f f9 ef             	psubw  mm5,mm7
    1e83:	0f 6f fb             	movq   mm7,mm3
    1e86:	0f 61 de             	punpcklwd mm3,mm6
    1e89:	0f 69 fe             	punpckhwd mm7,mm6
    1e8c:	0f 6f f3             	movq   mm6,mm3
    1e8f:	0f fd df             	paddw  mm3,mm7
    1e92:	0f f9 fe             	psubw  mm7,mm6
    1e95:	0f 6f f2             	movq   mm6,mm2
    1e98:	0f fd d3             	paddw  mm2,mm3
    1e9b:	0f f9 de             	psubw  mm3,mm6
    1e9e:	0f 6f f5             	movq   mm6,mm5
    1ea1:	0f fd ef             	paddw  mm5,mm7
    1ea4:	0f f9 fe             	psubw  mm7,mm6
    1ea7:	0f 6f f2             	movq   mm6,mm2
    1eaa:	0f 62 d3             	punpckldq mm2,mm3
    1ead:	0f 6a f3             	punpckhdq mm6,mm3
    1eb0:	0f ef db             	pxor   mm3,mm3
    1eb3:	0f ef c9             	pxor   mm1,mm1
    1eb6:	0f f9 da             	psubw  mm3,mm2
    1eb9:	0f f9 ce             	psubw  mm1,mm6
    1ebc:	0f ee d3             	pmaxsw mm2,mm3
    1ebf:	0f ee f1             	pmaxsw mm6,mm1
    1ec2:	0f ee d6             	pmaxsw mm2,mm6
    1ec5:	0f 6f dd             	movq   mm3,mm5
    1ec8:	0f 62 ef             	punpckldq mm5,mm7
    1ecb:	0f 6a df             	punpckhdq mm3,mm7
    1ece:	0f ef ff             	pxor   mm7,mm7
    1ed1:	0f ef c9             	pxor   mm1,mm1
    1ed4:	0f f9 fd             	psubw  mm7,mm5
    1ed7:	0f f9 cb             	psubw  mm1,mm3
    1eda:	0f ee ef             	pmaxsw mm5,mm7
    1edd:	0f ee d9             	pmaxsw mm3,mm1
    1ee0:	0f ee eb             	pmaxsw mm5,mm3
    1ee3:	0f fd d5             	paddw  mm2,mm5
    1ee6:	0f fd c4             	paddw  mm0,mm4
    1ee9:	0f fd c2             	paddw  mm0,mm2
    1eec:	0f 6e 0f             	movd   mm1,DWORD PTR [rdi]
    1eef:	0f 6e 3a             	movd   mm7,DWORD PTR [rdx]
    1ef2:	0f 60 cf             	punpcklbw mm1,mm7
    1ef5:	0f 60 ff             	punpcklbw mm7,mm7
    1ef8:	0f f9 cf             	psubw  mm1,mm7
    1efb:	0f 6e 34 37          	movd   mm6,DWORD PTR [rdi+rsi*1]
    1eff:	0f 6e 3c 0a          	movd   mm7,DWORD PTR [rdx+rcx*1]
    1f03:	0f 60 f7             	punpcklbw mm6,mm7
    1f06:	0f 60 ff             	punpcklbw mm7,mm7
    1f09:	0f f9 f7             	psubw  mm6,mm7
    1f0c:	0f 6e 2c 77          	movd   mm5,DWORD PTR [rdi+rsi*2]
    1f10:	0f 6e 3c 4a          	movd   mm7,DWORD PTR [rdx+rcx*2]
    1f14:	0f 60 ef             	punpcklbw mm5,mm7
    1f17:	0f 60 ff             	punpcklbw mm7,mm7
    1f1a:	0f f9 ef             	psubw  mm5,mm7
    1f1d:	42 0f 6e 1c 07       	movd   mm3,DWORD PTR [rdi+r8*1]
    1f22:	42 0f 6e 3c 0a       	movd   mm7,DWORD PTR [rdx+r9*1]
    1f27:	0f 60 df             	punpcklbw mm3,mm7
    1f2a:	0f 60 ff             	punpcklbw mm7,mm7
    1f2d:	0f f9 df             	psubw  mm3,mm7
    1f30:	0f 6f f9             	movq   mm7,mm1
    1f33:	0f fd ce             	paddw  mm1,mm6
    1f36:	0f f9 f7             	psubw  mm6,mm7
    1f39:	0f 6f fd             	movq   mm7,mm5
    1f3c:	0f fd eb             	paddw  mm5,mm3
    1f3f:	0f f9 df             	psubw  mm3,mm7
    1f42:	0f 6f f9             	movq   mm7,mm1
    1f45:	0f 61 ce             	punpcklwd mm1,mm6
    1f48:	0f 69 fe             	punpckhwd mm7,mm6
    1f4b:	0f 6f f1             	movq   mm6,mm1
    1f4e:	0f fd cf             	paddw  mm1,mm7
    1f51:	0f f9 fe             	psubw  mm7,mm6
    1f54:	0f 6f f5             	movq   mm6,mm5
    1f57:	0f 61 eb             	punpcklwd mm5,mm3
    1f5a:	0f 69 f3             	punpckhwd mm6,mm3
    1f5d:	0f 6f dd             	movq   mm3,mm5
    1f60:	0f fd ee             	paddw  mm5,mm6
    1f63:	0f f9 f3             	psubw  mm6,mm3
    1f66:	0f 6f d9             	movq   mm3,mm1
    1f69:	0f fd cd             	paddw  mm1,mm5
    1f6c:	0f f9 eb             	psubw  mm5,mm3
    1f6f:	0f 6f df             	movq   mm3,mm7
    1f72:	0f fd fe             	paddw  mm7,mm6
    1f75:	0f f9 f3             	psubw  mm6,mm3
    1f78:	0f 6f d9             	movq   mm3,mm1
    1f7b:	0f 62 cd             	punpckldq mm1,mm5
    1f7e:	0f 6a dd             	punpckhdq mm3,mm5
    1f81:	0f ef ed             	pxor   mm5,mm5
    1f84:	0f ef e4             	pxor   mm4,mm4
    1f87:	0f f9 e9             	psubw  mm5,mm1
    1f8a:	0f f9 e3             	psubw  mm4,mm3
    1f8d:	0f ee cd             	pmaxsw mm1,mm5
    1f90:	0f ee dc             	pmaxsw mm3,mm4
    1f93:	0f ee cb             	pmaxsw mm1,mm3
    1f96:	0f 6f ef             	movq   mm5,mm7
    1f99:	0f 62 fe             	punpckldq mm7,mm6
    1f9c:	0f 6a ee             	punpckhdq mm5,mm6
    1f9f:	0f ef f6             	pxor   mm6,mm6
    1fa2:	0f ef e4             	pxor   mm4,mm4
    1fa5:	0f f9 f7             	psubw  mm6,mm7
    1fa8:	0f f9 e5             	psubw  mm4,mm5
    1fab:	0f ee fe             	pmaxsw mm7,mm6
    1fae:	0f ee ec             	pmaxsw mm5,mm4
    1fb1:	0f ee fd             	pmaxsw mm7,mm5
    1fb4:	0f fd cf             	paddw  mm1,mm7
    1fb7:	0f 6e 67 04          	movd   mm4,DWORD PTR [rdi+0x4]
    1fbb:	0f 6e 72 04          	movd   mm6,DWORD PTR [rdx+0x4]
    1fbf:	0f 60 e6             	punpcklbw mm4,mm6
    1fc2:	0f 60 f6             	punpcklbw mm6,mm6
    1fc5:	0f f9 e6             	psubw  mm4,mm6
    1fc8:	0f 6e 5c 37 04       	movd   mm3,DWORD PTR [rdi+rsi*1+0x4]
    1fcd:	0f 6e 74 0a 04       	movd   mm6,DWORD PTR [rdx+rcx*1+0x4]
    1fd2:	0f 60 de             	punpcklbw mm3,mm6
    1fd5:	0f 60 f6             	punpcklbw mm6,mm6
    1fd8:	0f f9 de             	psubw  mm3,mm6
    1fdb:	0f 6e 7c 77 04       	movd   mm7,DWORD PTR [rdi+rsi*2+0x4]
    1fe0:	0f 6e 74 4a 04       	movd   mm6,DWORD PTR [rdx+rcx*2+0x4]
    1fe5:	0f 60 fe             	punpcklbw mm7,mm6
    1fe8:	0f 60 f6             	punpcklbw mm6,mm6
    1feb:	0f f9 fe             	psubw  mm7,mm6
    1fee:	42 0f 6e 6c 07 04    	movd   mm5,DWORD PTR [rdi+r8*1+0x4]
    1ff4:	42 0f 6e 74 0a 04    	movd   mm6,DWORD PTR [rdx+r9*1+0x4]
    1ffa:	0f 60 ee             	punpcklbw mm5,mm6
    1ffd:	0f 60 f6             	punpcklbw mm6,mm6
    2000:	0f f9 ee             	psubw  mm5,mm6
    2003:	0f 6f f4             	movq   mm6,mm4
    2006:	0f fd e3             	paddw  mm4,mm3
    2009:	0f f9 de             	psubw  mm3,mm6
    200c:	0f 6f f7             	movq   mm6,mm7
    200f:	0f fd fd             	paddw  mm7,mm5
    2012:	0f f9 ee             	psubw  mm5,mm6
    2015:	0f 6f f4             	movq   mm6,mm4
    2018:	0f 61 e3             	punpcklwd mm4,mm3
    201b:	0f 69 f3             	punpckhwd mm6,mm3
    201e:	0f 6f dc             	movq   mm3,mm4
    2021:	0f fd e6             	paddw  mm4,mm6
    2024:	0f f9 f3             	psubw  mm6,mm3
    2027:	0f 6f df             	movq   mm3,mm7
    202a:	0f 61 fd             	punpcklwd mm7,mm5
    202d:	0f 69 dd             	punpckhwd mm3,mm5
    2030:	0f 6f ef             	movq   mm5,mm7
    2033:	0f fd fb             	paddw  mm7,mm3
    2036:	0f f9 dd             	psubw  mm3,mm5
    2039:	0f 6f ec             	movq   mm5,mm4
    203c:	0f fd e7             	paddw  mm4,mm7
    203f:	0f f9 fd             	psubw  mm7,mm5
    2042:	0f 6f ee             	movq   mm5,mm6
    2045:	0f fd f3             	paddw  mm6,mm3
    2048:	0f f9 dd             	psubw  mm3,mm5
    204b:	0f 6f ec             	movq   mm5,mm4
    204e:	0f 62 e7             	punpckldq mm4,mm7
    2051:	0f 6a ef             	punpckhdq mm5,mm7
    2054:	0f ef ff             	pxor   mm7,mm7
    2057:	0f ef d2             	pxor   mm2,mm2
    205a:	0f f9 fc             	psubw  mm7,mm4
    205d:	0f f9 d5             	psubw  mm2,mm5
    2060:	0f ee e7             	pmaxsw mm4,mm7
    2063:	0f ee ea             	pmaxsw mm5,mm2
    2066:	0f ee e5             	pmaxsw mm4,mm5
    2069:	0f 6f fe             	movq   mm7,mm6
    206c:	0f 62 f3             	punpckldq mm6,mm3
    206f:	0f 6a fb             	punpckhdq mm7,mm3
    2072:	0f ef db             	pxor   mm3,mm3
    2075:	0f ef d2             	pxor   mm2,mm2
    2078:	0f f9 de             	psubw  mm3,mm6
    207b:	0f f9 d7             	psubw  mm2,mm7
    207e:	0f ee f3             	pmaxsw mm6,mm3
    2081:	0f ee fa             	pmaxsw mm7,mm2
    2084:	0f ee f7             	pmaxsw mm6,mm7
    2087:	0f fd e6             	paddw  mm4,mm6
    208a:	0f fd c1             	paddw  mm0,mm1
    208d:	0f fd c4             	paddw  mm0,mm4
    2090:	c3                   	ret    
    2091:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    2098:	00 
    2099:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000020a0 <x264_8_pixel_satd_16x16_mmx2>:
    20a0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    20a4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    20a8:	0f ef c0             	pxor   mm0,mm0
    20ab:	e8 30 f9 ff ff       	call   19e0 <x264_8_pixel_satd_16x4_internal_mmx2>
    20b0:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    20b4:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    20b8:	e8 23 f9 ff ff       	call   19e0 <x264_8_pixel_satd_16x4_internal_mmx2>
    20bd:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    20c1:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    20c5:	e8 16 f9 ff ff       	call   19e0 <x264_8_pixel_satd_16x4_internal_mmx2>
    20ca:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    20ce:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    20d2:	e8 09 f9 ff ff       	call   19e0 <x264_8_pixel_satd_16x4_internal_mmx2>
    20d7:	0f 6f c8             	movq   mm1,mm0
    20da:	0f 72 d1 10          	psrld  mm1,0x10
    20de:	0f 72 f0 10          	pslld  mm0,0x10
    20e2:	0f 72 d0 10          	psrld  mm0,0x10
    20e6:	0f fe c1             	paddd  mm0,mm1
    20e9:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    20ed:	0f fe c1             	paddd  mm0,mm1
    20f0:	0f 7e c0             	movd   eax,mm0
    20f3:	c3                   	ret    
    20f4:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    20fb:	00 
    20fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002100 <x264_8_pixel_satd_16x8_mmx2>:
    2100:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    2104:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    2108:	0f ef c0             	pxor   mm0,mm0
    210b:	e8 d0 f8 ff ff       	call   19e0 <x264_8_pixel_satd_16x4_internal_mmx2>
    2110:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    2114:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    2118:	e8 c3 f8 ff ff       	call   19e0 <x264_8_pixel_satd_16x4_internal_mmx2>
    211d:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    2121:	0f fd c1             	paddw  mm0,mm1
    2124:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    2128:	0f fd c1             	paddw  mm0,mm1
    212b:	0f 7e c0             	movd   eax,mm0
    212e:	25 ff ff 00 00       	and    eax,0xffff
    2133:	c3                   	ret    
    2134:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    213b:	00 
    213c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002140 <x264_8_pixel_satd_8x16_mmx2>:
    2140:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    2144:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    2148:	0f ef c0             	pxor   mm0,mm0
    214b:	e8 f0 fb ff ff       	call   1d40 <x264_8_pixel_satd_8x8_internal_mmx2>
    2150:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    2154:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    2158:	e8 e3 fb ff ff       	call   1d40 <x264_8_pixel_satd_8x8_internal_mmx2>
    215d:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    2161:	0f fd c1             	paddw  mm0,mm1
    2164:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    2168:	0f fd c1             	paddw  mm0,mm1
    216b:	0f 7e c0             	movd   eax,mm0
    216e:	25 ff ff 00 00       	and    eax,0xffff
    2173:	c3                   	ret    
    2174:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    217b:	00 
    217c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002180 <x264_8_pixel_satd_8x8_mmx2>:
    2180:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    2184:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    2188:	0f ef c0             	pxor   mm0,mm0
    218b:	e8 b0 fb ff ff       	call   1d40 <x264_8_pixel_satd_8x8_internal_mmx2>
    2190:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    2194:	0f fd c1             	paddw  mm0,mm1
    2197:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    219b:	0f fd c1             	paddw  mm0,mm1
    219e:	0f 7e c0             	movd   eax,mm0
    21a1:	25 ff ff 00 00       	and    eax,0xffff
    21a6:	c3                   	ret    
    21a7:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    21ae:	00 
    21af:	90                   	nop

00000000000021b0 <x264_8_pixel_satd_8x4_mmx2>:
    21b0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    21b4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    21b8:	0f ef c0             	pxor   mm0,mm0
    21bb:	e8 2c fd ff ff       	call   1eec <x264_8_pixel_satd_8x8_internal_mmx2+0x1ac>
    21c0:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    21c4:	0f fd c1             	paddw  mm0,mm1
    21c7:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    21cb:	0f fd c1             	paddw  mm0,mm1
    21ce:	0f 7e c0             	movd   eax,mm0
    21d1:	25 ff ff 00 00       	and    eax,0xffff
    21d6:	c3                   	ret    
    21d7:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    21de:	00 
    21df:	90                   	nop

00000000000021e0 <x264_8_pixel_satd_4x16_mmx2>:
    21e0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    21e4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    21e8:	0f 6e 27             	movd   mm4,DWORD PTR [rdi]
    21eb:	0f 6e 1a             	movd   mm3,DWORD PTR [rdx]
    21ee:	0f 60 e3             	punpcklbw mm4,mm3
    21f1:	0f 60 db             	punpcklbw mm3,mm3
    21f4:	0f f9 e3             	psubw  mm4,mm3
    21f7:	0f 6e 2c 37          	movd   mm5,DWORD PTR [rdi+rsi*1]
    21fb:	0f 6e 1c 0a          	movd   mm3,DWORD PTR [rdx+rcx*1]
    21ff:	0f 60 eb             	punpcklbw mm5,mm3
    2202:	0f 60 db             	punpcklbw mm3,mm3
    2205:	0f f9 eb             	psubw  mm5,mm3
    2208:	0f 6e 34 77          	movd   mm6,DWORD PTR [rdi+rsi*2]
    220c:	0f 6e 1c 4a          	movd   mm3,DWORD PTR [rdx+rcx*2]
    2210:	0f 60 f3             	punpcklbw mm6,mm3
    2213:	0f 60 db             	punpcklbw mm3,mm3
    2216:	0f f9 f3             	psubw  mm6,mm3
    2219:	42 0f 6e 3c 07       	movd   mm7,DWORD PTR [rdi+r8*1]
    221e:	42 0f 6e 1c 0a       	movd   mm3,DWORD PTR [rdx+r9*1]
    2223:	0f 60 fb             	punpcklbw mm7,mm3
    2226:	0f 60 db             	punpcklbw mm3,mm3
    2229:	0f f9 fb             	psubw  mm7,mm3
    222c:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    2230:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    2234:	0f 6f dc             	movq   mm3,mm4
    2237:	0f fd e5             	paddw  mm4,mm5
    223a:	0f f9 eb             	psubw  mm5,mm3
    223d:	0f 6f de             	movq   mm3,mm6
    2240:	0f fd f7             	paddw  mm6,mm7
    2243:	0f f9 fb             	psubw  mm7,mm3
    2246:	0f 6f dc             	movq   mm3,mm4
    2249:	0f 61 e5             	punpcklwd mm4,mm5
    224c:	0f 69 dd             	punpckhwd mm3,mm5
    224f:	0f 6f ec             	movq   mm5,mm4
    2252:	0f fd e3             	paddw  mm4,mm3
    2255:	0f f9 dd             	psubw  mm3,mm5
    2258:	0f 6f ee             	movq   mm5,mm6
    225b:	0f 61 f7             	punpcklwd mm6,mm7
    225e:	0f 69 ef             	punpckhwd mm5,mm7
    2261:	0f 6f fe             	movq   mm7,mm6
    2264:	0f fd f5             	paddw  mm6,mm5
    2267:	0f f9 ef             	psubw  mm5,mm7
    226a:	0f 6f fc             	movq   mm7,mm4
    226d:	0f fd e6             	paddw  mm4,mm6
    2270:	0f f9 f7             	psubw  mm6,mm7
    2273:	0f 6f fb             	movq   mm7,mm3
    2276:	0f fd dd             	paddw  mm3,mm5
    2279:	0f f9 ef             	psubw  mm5,mm7
    227c:	0f 6f fc             	movq   mm7,mm4
    227f:	0f 62 e6             	punpckldq mm4,mm6
    2282:	0f 6a fe             	punpckhdq mm7,mm6
    2285:	0f ef f6             	pxor   mm6,mm6
    2288:	0f ef c0             	pxor   mm0,mm0
    228b:	0f f9 f4             	psubw  mm6,mm4
    228e:	0f f9 c7             	psubw  mm0,mm7
    2291:	0f ee e6             	pmaxsw mm4,mm6
    2294:	0f ee f8             	pmaxsw mm7,mm0
    2297:	0f ee e7             	pmaxsw mm4,mm7
    229a:	0f 6f f3             	movq   mm6,mm3
    229d:	0f 62 dd             	punpckldq mm3,mm5
    22a0:	0f 6a f5             	punpckhdq mm6,mm5
    22a3:	0f ef ed             	pxor   mm5,mm5
    22a6:	0f ef c0             	pxor   mm0,mm0
    22a9:	0f f9 eb             	psubw  mm5,mm3
    22ac:	0f f9 c6             	psubw  mm0,mm6
    22af:	0f ee dd             	pmaxsw mm3,mm5
    22b2:	0f ee f0             	pmaxsw mm6,mm0
    22b5:	0f ee de             	pmaxsw mm3,mm6
    22b8:	0f fd e3             	paddw  mm4,mm3
    22bb:	0f 6e 07             	movd   mm0,DWORD PTR [rdi]
    22be:	0f 6e 2a             	movd   mm5,DWORD PTR [rdx]
    22c1:	0f 60 c5             	punpcklbw mm0,mm5
    22c4:	0f 60 ed             	punpcklbw mm5,mm5
    22c7:	0f f9 c5             	psubw  mm0,mm5
    22ca:	0f 6e 3c 37          	movd   mm7,DWORD PTR [rdi+rsi*1]
    22ce:	0f 6e 2c 0a          	movd   mm5,DWORD PTR [rdx+rcx*1]
    22d2:	0f 60 fd             	punpcklbw mm7,mm5
    22d5:	0f 60 ed             	punpcklbw mm5,mm5
    22d8:	0f f9 fd             	psubw  mm7,mm5
    22db:	0f 6e 1c 77          	movd   mm3,DWORD PTR [rdi+rsi*2]
    22df:	0f 6e 2c 4a          	movd   mm5,DWORD PTR [rdx+rcx*2]
    22e3:	0f 60 dd             	punpcklbw mm3,mm5
    22e6:	0f 60 ed             	punpcklbw mm5,mm5
    22e9:	0f f9 dd             	psubw  mm3,mm5
    22ec:	42 0f 6e 34 07       	movd   mm6,DWORD PTR [rdi+r8*1]
    22f1:	42 0f 6e 2c 0a       	movd   mm5,DWORD PTR [rdx+r9*1]
    22f6:	0f 60 f5             	punpcklbw mm6,mm5
    22f9:	0f 60 ed             	punpcklbw mm5,mm5
    22fc:	0f f9 f5             	psubw  mm6,mm5
    22ff:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    2303:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    2307:	0f 6f e8             	movq   mm5,mm0
    230a:	0f fd c7             	paddw  mm0,mm7
    230d:	0f f9 fd             	psubw  mm7,mm5
    2310:	0f 6f eb             	movq   mm5,mm3
    2313:	0f fd de             	paddw  mm3,mm6
    2316:	0f f9 f5             	psubw  mm6,mm5
    2319:	0f 6f e8             	movq   mm5,mm0
    231c:	0f 61 c7             	punpcklwd mm0,mm7
    231f:	0f 69 ef             	punpckhwd mm5,mm7
    2322:	0f 6f f8             	movq   mm7,mm0
    2325:	0f fd c5             	paddw  mm0,mm5
    2328:	0f f9 ef             	psubw  mm5,mm7
    232b:	0f 6f fb             	movq   mm7,mm3
    232e:	0f 61 de             	punpcklwd mm3,mm6
    2331:	0f 69 fe             	punpckhwd mm7,mm6
    2334:	0f 6f f3             	movq   mm6,mm3
    2337:	0f fd df             	paddw  mm3,mm7
    233a:	0f f9 fe             	psubw  mm7,mm6
    233d:	0f 6f f0             	movq   mm6,mm0
    2340:	0f fd c3             	paddw  mm0,mm3
    2343:	0f f9 de             	psubw  mm3,mm6
    2346:	0f 6f f5             	movq   mm6,mm5
    2349:	0f fd ef             	paddw  mm5,mm7
    234c:	0f f9 fe             	psubw  mm7,mm6
    234f:	0f 6f f0             	movq   mm6,mm0
    2352:	0f 62 c3             	punpckldq mm0,mm3
    2355:	0f 6a f3             	punpckhdq mm6,mm3
    2358:	0f ef db             	pxor   mm3,mm3
    235b:	0f ef c9             	pxor   mm1,mm1
    235e:	0f f9 d8             	psubw  mm3,mm0
    2361:	0f f9 ce             	psubw  mm1,mm6
    2364:	0f ee c3             	pmaxsw mm0,mm3
    2367:	0f ee f1             	pmaxsw mm6,mm1
    236a:	0f ee c6             	pmaxsw mm0,mm6
    236d:	0f 6f dd             	movq   mm3,mm5
    2370:	0f 62 ef             	punpckldq mm5,mm7
    2373:	0f 6a df             	punpckhdq mm3,mm7
    2376:	0f ef ff             	pxor   mm7,mm7
    2379:	0f ef c9             	pxor   mm1,mm1
    237c:	0f f9 fd             	psubw  mm7,mm5
    237f:	0f f9 cb             	psubw  mm1,mm3
    2382:	0f ee ef             	pmaxsw mm5,mm7
    2385:	0f ee d9             	pmaxsw mm3,mm1
    2388:	0f ee eb             	pmaxsw mm5,mm3
    238b:	0f fd c5             	paddw  mm0,mm5
    238e:	0f fd e0             	paddw  mm4,mm0
    2391:	0f 6e 0f             	movd   mm1,DWORD PTR [rdi]
    2394:	0f 6e 3a             	movd   mm7,DWORD PTR [rdx]
    2397:	0f 60 cf             	punpcklbw mm1,mm7
    239a:	0f 60 ff             	punpcklbw mm7,mm7
    239d:	0f f9 cf             	psubw  mm1,mm7
    23a0:	0f 6e 34 37          	movd   mm6,DWORD PTR [rdi+rsi*1]
    23a4:	0f 6e 3c 0a          	movd   mm7,DWORD PTR [rdx+rcx*1]
    23a8:	0f 60 f7             	punpcklbw mm6,mm7
    23ab:	0f 60 ff             	punpcklbw mm7,mm7
    23ae:	0f f9 f7             	psubw  mm6,mm7
    23b1:	0f 6e 2c 77          	movd   mm5,DWORD PTR [rdi+rsi*2]
    23b5:	0f 6e 3c 4a          	movd   mm7,DWORD PTR [rdx+rcx*2]
    23b9:	0f 60 ef             	punpcklbw mm5,mm7
    23bc:	0f 60 ff             	punpcklbw mm7,mm7
    23bf:	0f f9 ef             	psubw  mm5,mm7
    23c2:	42 0f 6e 1c 07       	movd   mm3,DWORD PTR [rdi+r8*1]
    23c7:	42 0f 6e 3c 0a       	movd   mm7,DWORD PTR [rdx+r9*1]
    23cc:	0f 60 df             	punpcklbw mm3,mm7
    23cf:	0f 60 ff             	punpcklbw mm7,mm7
    23d2:	0f f9 df             	psubw  mm3,mm7
    23d5:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    23d9:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    23dd:	0f 6f f9             	movq   mm7,mm1
    23e0:	0f fd ce             	paddw  mm1,mm6
    23e3:	0f f9 f7             	psubw  mm6,mm7
    23e6:	0f 6f fd             	movq   mm7,mm5
    23e9:	0f fd eb             	paddw  mm5,mm3
    23ec:	0f f9 df             	psubw  mm3,mm7
    23ef:	0f 6f f9             	movq   mm7,mm1
    23f2:	0f 61 ce             	punpcklwd mm1,mm6
    23f5:	0f 69 fe             	punpckhwd mm7,mm6
    23f8:	0f 6f f1             	movq   mm6,mm1
    23fb:	0f fd cf             	paddw  mm1,mm7
    23fe:	0f f9 fe             	psubw  mm7,mm6
    2401:	0f 6f f5             	movq   mm6,mm5
    2404:	0f 61 eb             	punpcklwd mm5,mm3
    2407:	0f 69 f3             	punpckhwd mm6,mm3
    240a:	0f 6f dd             	movq   mm3,mm5
    240d:	0f fd ee             	paddw  mm5,mm6
    2410:	0f f9 f3             	psubw  mm6,mm3
    2413:	0f 6f d9             	movq   mm3,mm1
    2416:	0f fd cd             	paddw  mm1,mm5
    2419:	0f f9 eb             	psubw  mm5,mm3
    241c:	0f 6f df             	movq   mm3,mm7
    241f:	0f fd fe             	paddw  mm7,mm6
    2422:	0f f9 f3             	psubw  mm6,mm3
    2425:	0f 6f d9             	movq   mm3,mm1
    2428:	0f 62 cd             	punpckldq mm1,mm5
    242b:	0f 6a dd             	punpckhdq mm3,mm5
    242e:	0f ef ed             	pxor   mm5,mm5
    2431:	0f ef c0             	pxor   mm0,mm0
    2434:	0f f9 e9             	psubw  mm5,mm1
    2437:	0f f9 c3             	psubw  mm0,mm3
    243a:	0f ee cd             	pmaxsw mm1,mm5
    243d:	0f ee d8             	pmaxsw mm3,mm0
    2440:	0f ee cb             	pmaxsw mm1,mm3
    2443:	0f 6f ef             	movq   mm5,mm7
    2446:	0f 62 fe             	punpckldq mm7,mm6
    2449:	0f 6a ee             	punpckhdq mm5,mm6
    244c:	0f ef f6             	pxor   mm6,mm6
    244f:	0f ef c0             	pxor   mm0,mm0
    2452:	0f f9 f7             	psubw  mm6,mm7
    2455:	0f f9 c5             	psubw  mm0,mm5
    2458:	0f ee fe             	pmaxsw mm7,mm6
    245b:	0f ee e8             	pmaxsw mm5,mm0
    245e:	0f ee fd             	pmaxsw mm7,mm5
    2461:	0f fd cf             	paddw  mm1,mm7
    2464:	0f fd e1             	paddw  mm4,mm1
    2467:	0f 6e 07             	movd   mm0,DWORD PTR [rdi]
    246a:	0f 6e 32             	movd   mm6,DWORD PTR [rdx]
    246d:	0f 60 c6             	punpcklbw mm0,mm6
    2470:	0f 60 f6             	punpcklbw mm6,mm6
    2473:	0f f9 c6             	psubw  mm0,mm6
    2476:	0f 6e 1c 37          	movd   mm3,DWORD PTR [rdi+rsi*1]
    247a:	0f 6e 34 0a          	movd   mm6,DWORD PTR [rdx+rcx*1]
    247e:	0f 60 de             	punpcklbw mm3,mm6
    2481:	0f 60 f6             	punpcklbw mm6,mm6
    2484:	0f f9 de             	psubw  mm3,mm6
    2487:	0f 6e 3c 77          	movd   mm7,DWORD PTR [rdi+rsi*2]
    248b:	0f 6e 34 4a          	movd   mm6,DWORD PTR [rdx+rcx*2]
    248f:	0f 60 fe             	punpcklbw mm7,mm6
    2492:	0f 60 f6             	punpcklbw mm6,mm6
    2495:	0f f9 fe             	psubw  mm7,mm6
    2498:	42 0f 6e 2c 07       	movd   mm5,DWORD PTR [rdi+r8*1]
    249d:	42 0f 6e 34 0a       	movd   mm6,DWORD PTR [rdx+r9*1]
    24a2:	0f 60 ee             	punpcklbw mm5,mm6
    24a5:	0f 60 f6             	punpcklbw mm6,mm6
    24a8:	0f f9 ee             	psubw  mm5,mm6
    24ab:	0f 6f f0             	movq   mm6,mm0
    24ae:	0f fd c3             	paddw  mm0,mm3
    24b1:	0f f9 de             	psubw  mm3,mm6
    24b4:	0f 6f f7             	movq   mm6,mm7
    24b7:	0f fd fd             	paddw  mm7,mm5
    24ba:	0f f9 ee             	psubw  mm5,mm6
    24bd:	0f 6f f0             	movq   mm6,mm0
    24c0:	0f 61 c3             	punpcklwd mm0,mm3
    24c3:	0f 69 f3             	punpckhwd mm6,mm3
    24c6:	0f 6f d8             	movq   mm3,mm0
    24c9:	0f fd c6             	paddw  mm0,mm6
    24cc:	0f f9 f3             	psubw  mm6,mm3
    24cf:	0f 6f df             	movq   mm3,mm7
    24d2:	0f 61 fd             	punpcklwd mm7,mm5
    24d5:	0f 69 dd             	punpckhwd mm3,mm5
    24d8:	0f 6f ef             	movq   mm5,mm7
    24db:	0f fd fb             	paddw  mm7,mm3
    24de:	0f f9 dd             	psubw  mm3,mm5
    24e1:	0f 6f e8             	movq   mm5,mm0
    24e4:	0f fd c7             	paddw  mm0,mm7
    24e7:	0f f9 fd             	psubw  mm7,mm5
    24ea:	0f 6f ee             	movq   mm5,mm6
    24ed:	0f fd f3             	paddw  mm6,mm3
    24f0:	0f f9 dd             	psubw  mm3,mm5
    24f3:	0f 6f e8             	movq   mm5,mm0
    24f6:	0f 62 c7             	punpckldq mm0,mm7
    24f9:	0f 6a ef             	punpckhdq mm5,mm7
    24fc:	0f ef ff             	pxor   mm7,mm7
    24ff:	0f ef c9             	pxor   mm1,mm1
    2502:	0f f9 f8             	psubw  mm7,mm0
    2505:	0f f9 cd             	psubw  mm1,mm5
    2508:	0f ee c7             	pmaxsw mm0,mm7
    250b:	0f ee e9             	pmaxsw mm5,mm1
    250e:	0f ee c5             	pmaxsw mm0,mm5
    2511:	0f 6f fe             	movq   mm7,mm6
    2514:	0f 62 f3             	punpckldq mm6,mm3
    2517:	0f 6a fb             	punpckhdq mm7,mm3
    251a:	0f ef db             	pxor   mm3,mm3
    251d:	0f ef c9             	pxor   mm1,mm1
    2520:	0f f9 de             	psubw  mm3,mm6
    2523:	0f f9 cf             	psubw  mm1,mm7
    2526:	0f ee f3             	pmaxsw mm6,mm3
    2529:	0f ee f9             	pmaxsw mm7,mm1
    252c:	0f ee f7             	pmaxsw mm6,mm7
    252f:	0f fd c6             	paddw  mm0,mm6
    2532:	0f fd e0             	paddw  mm4,mm0
    2535:	0f 70 c4 4e          	pshufw mm0,mm4,0x4e
    2539:	0f fd e0             	paddw  mm4,mm0
    253c:	0f 70 c4 b1          	pshufw mm0,mm4,0xb1
    2540:	0f fd e0             	paddw  mm4,mm0
    2543:	0f 7e e0             	movd   eax,mm4
    2546:	25 ff ff 00 00       	and    eax,0xffff
    254b:	c3                   	ret    
    254c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002550 <x264_8_pixel_satd_4x8_mmx2>:
    2550:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    2554:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    2558:	0f 6e 27             	movd   mm4,DWORD PTR [rdi]
    255b:	0f 6e 1a             	movd   mm3,DWORD PTR [rdx]
    255e:	0f 60 e3             	punpcklbw mm4,mm3
    2561:	0f 60 db             	punpcklbw mm3,mm3
    2564:	0f f9 e3             	psubw  mm4,mm3
    2567:	0f 6e 2c 37          	movd   mm5,DWORD PTR [rdi+rsi*1]
    256b:	0f 6e 1c 0a          	movd   mm3,DWORD PTR [rdx+rcx*1]
    256f:	0f 60 eb             	punpcklbw mm5,mm3
    2572:	0f 60 db             	punpcklbw mm3,mm3
    2575:	0f f9 eb             	psubw  mm5,mm3
    2578:	0f 6e 34 77          	movd   mm6,DWORD PTR [rdi+rsi*2]
    257c:	0f 6e 1c 4a          	movd   mm3,DWORD PTR [rdx+rcx*2]
    2580:	0f 60 f3             	punpcklbw mm6,mm3
    2583:	0f 60 db             	punpcklbw mm3,mm3
    2586:	0f f9 f3             	psubw  mm6,mm3
    2589:	42 0f 6e 3c 07       	movd   mm7,DWORD PTR [rdi+r8*1]
    258e:	42 0f 6e 1c 0a       	movd   mm3,DWORD PTR [rdx+r9*1]
    2593:	0f 60 fb             	punpcklbw mm7,mm3
    2596:	0f 60 db             	punpcklbw mm3,mm3
    2599:	0f f9 fb             	psubw  mm7,mm3
    259c:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    25a0:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    25a4:	0f 6f dc             	movq   mm3,mm4
    25a7:	0f fd e5             	paddw  mm4,mm5
    25aa:	0f f9 eb             	psubw  mm5,mm3
    25ad:	0f 6f de             	movq   mm3,mm6
    25b0:	0f fd f7             	paddw  mm6,mm7
    25b3:	0f f9 fb             	psubw  mm7,mm3
    25b6:	0f 6f dc             	movq   mm3,mm4
    25b9:	0f 61 e5             	punpcklwd mm4,mm5
    25bc:	0f 69 dd             	punpckhwd mm3,mm5
    25bf:	0f 6f ec             	movq   mm5,mm4
    25c2:	0f fd e3             	paddw  mm4,mm3
    25c5:	0f f9 dd             	psubw  mm3,mm5
    25c8:	0f 6f ee             	movq   mm5,mm6
    25cb:	0f 61 f7             	punpcklwd mm6,mm7
    25ce:	0f 69 ef             	punpckhwd mm5,mm7
    25d1:	0f 6f fe             	movq   mm7,mm6
    25d4:	0f fd f5             	paddw  mm6,mm5
    25d7:	0f f9 ef             	psubw  mm5,mm7
    25da:	0f 6f fc             	movq   mm7,mm4
    25dd:	0f fd e6             	paddw  mm4,mm6
    25e0:	0f f9 f7             	psubw  mm6,mm7
    25e3:	0f 6f fb             	movq   mm7,mm3
    25e6:	0f fd dd             	paddw  mm3,mm5
    25e9:	0f f9 ef             	psubw  mm5,mm7
    25ec:	0f 6f fc             	movq   mm7,mm4
    25ef:	0f 62 e6             	punpckldq mm4,mm6
    25f2:	0f 6a fe             	punpckhdq mm7,mm6
    25f5:	0f ef f6             	pxor   mm6,mm6
    25f8:	0f ef c0             	pxor   mm0,mm0
    25fb:	0f f9 f4             	psubw  mm6,mm4
    25fe:	0f f9 c7             	psubw  mm0,mm7
    2601:	0f ee e6             	pmaxsw mm4,mm6
    2604:	0f ee f8             	pmaxsw mm7,mm0
    2607:	0f ee e7             	pmaxsw mm4,mm7
    260a:	0f 6f f3             	movq   mm6,mm3
    260d:	0f 62 dd             	punpckldq mm3,mm5
    2610:	0f 6a f5             	punpckhdq mm6,mm5
    2613:	0f ef ed             	pxor   mm5,mm5
    2616:	0f ef c0             	pxor   mm0,mm0
    2619:	0f f9 eb             	psubw  mm5,mm3
    261c:	0f f9 c6             	psubw  mm0,mm6
    261f:	0f ee dd             	pmaxsw mm3,mm5
    2622:	0f ee f0             	pmaxsw mm6,mm0
    2625:	0f ee de             	pmaxsw mm3,mm6
    2628:	0f fd e3             	paddw  mm4,mm3
    262b:	0f 6e 07             	movd   mm0,DWORD PTR [rdi]
    262e:	0f 6e 2a             	movd   mm5,DWORD PTR [rdx]
    2631:	0f 60 c5             	punpcklbw mm0,mm5
    2634:	0f 60 ed             	punpcklbw mm5,mm5
    2637:	0f f9 c5             	psubw  mm0,mm5
    263a:	0f 6e 3c 37          	movd   mm7,DWORD PTR [rdi+rsi*1]
    263e:	0f 6e 2c 0a          	movd   mm5,DWORD PTR [rdx+rcx*1]
    2642:	0f 60 fd             	punpcklbw mm7,mm5
    2645:	0f 60 ed             	punpcklbw mm5,mm5
    2648:	0f f9 fd             	psubw  mm7,mm5
    264b:	0f 6e 1c 77          	movd   mm3,DWORD PTR [rdi+rsi*2]
    264f:	0f 6e 2c 4a          	movd   mm5,DWORD PTR [rdx+rcx*2]
    2653:	0f 60 dd             	punpcklbw mm3,mm5
    2656:	0f 60 ed             	punpcklbw mm5,mm5
    2659:	0f f9 dd             	psubw  mm3,mm5
    265c:	42 0f 6e 34 07       	movd   mm6,DWORD PTR [rdi+r8*1]
    2661:	42 0f 6e 2c 0a       	movd   mm5,DWORD PTR [rdx+r9*1]
    2666:	0f 60 f5             	punpcklbw mm6,mm5
    2669:	0f 60 ed             	punpcklbw mm5,mm5
    266c:	0f f9 f5             	psubw  mm6,mm5
    266f:	0f 6f e8             	movq   mm5,mm0
    2672:	0f fd c7             	paddw  mm0,mm7
    2675:	0f f9 fd             	psubw  mm7,mm5
    2678:	0f 6f eb             	movq   mm5,mm3
    267b:	0f fd de             	paddw  mm3,mm6
    267e:	0f f9 f5             	psubw  mm6,mm5
    2681:	0f 6f e8             	movq   mm5,mm0
    2684:	0f 61 c7             	punpcklwd mm0,mm7
    2687:	0f 69 ef             	punpckhwd mm5,mm7
    268a:	0f 6f f8             	movq   mm7,mm0
    268d:	0f fd c5             	paddw  mm0,mm5
    2690:	0f f9 ef             	psubw  mm5,mm7
    2693:	0f 6f fb             	movq   mm7,mm3
    2696:	0f 61 de             	punpcklwd mm3,mm6
    2699:	0f 69 fe             	punpckhwd mm7,mm6
    269c:	0f 6f f3             	movq   mm6,mm3
    269f:	0f fd df             	paddw  mm3,mm7
    26a2:	0f f9 fe             	psubw  mm7,mm6
    26a5:	0f 6f f0             	movq   mm6,mm0
    26a8:	0f fd c3             	paddw  mm0,mm3
    26ab:	0f f9 de             	psubw  mm3,mm6
    26ae:	0f 6f f5             	movq   mm6,mm5
    26b1:	0f fd ef             	paddw  mm5,mm7
    26b4:	0f f9 fe             	psubw  mm7,mm6
    26b7:	0f 6f f0             	movq   mm6,mm0
    26ba:	0f 62 c3             	punpckldq mm0,mm3
    26bd:	0f 6a f3             	punpckhdq mm6,mm3
    26c0:	0f ef db             	pxor   mm3,mm3
    26c3:	0f ef c9             	pxor   mm1,mm1
    26c6:	0f f9 d8             	psubw  mm3,mm0
    26c9:	0f f9 ce             	psubw  mm1,mm6
    26cc:	0f ee c3             	pmaxsw mm0,mm3
    26cf:	0f ee f1             	pmaxsw mm6,mm1
    26d2:	0f ee c6             	pmaxsw mm0,mm6
    26d5:	0f 6f dd             	movq   mm3,mm5
    26d8:	0f 62 ef             	punpckldq mm5,mm7
    26db:	0f 6a df             	punpckhdq mm3,mm7
    26de:	0f ef ff             	pxor   mm7,mm7
    26e1:	0f ef c9             	pxor   mm1,mm1
    26e4:	0f f9 fd             	psubw  mm7,mm5
    26e7:	0f f9 cb             	psubw  mm1,mm3
    26ea:	0f ee ef             	pmaxsw mm5,mm7
    26ed:	0f ee d9             	pmaxsw mm3,mm1
    26f0:	0f ee eb             	pmaxsw mm5,mm3
    26f3:	0f fd c5             	paddw  mm0,mm5
    26f6:	0f fd e0             	paddw  mm4,mm0
    26f9:	0f 70 c4 4e          	pshufw mm0,mm4,0x4e
    26fd:	0f fd e0             	paddw  mm4,mm0
    2700:	0f 70 c4 b1          	pshufw mm0,mm4,0xb1
    2704:	0f fd e0             	paddw  mm4,mm0
    2707:	0f 7e e0             	movd   eax,mm4
    270a:	25 ff ff 00 00       	and    eax,0xffff
    270f:	c3                   	ret    

0000000000002710 <x264_8_pixel_satd_4x4_mmx2>:
    2710:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    2714:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    2718:	0f 6e 27             	movd   mm4,DWORD PTR [rdi]
    271b:	0f 6e 1a             	movd   mm3,DWORD PTR [rdx]
    271e:	0f 60 e3             	punpcklbw mm4,mm3
    2721:	0f 60 db             	punpcklbw mm3,mm3
    2724:	0f f9 e3             	psubw  mm4,mm3
    2727:	0f 6e 2c 37          	movd   mm5,DWORD PTR [rdi+rsi*1]
    272b:	0f 6e 1c 0a          	movd   mm3,DWORD PTR [rdx+rcx*1]
    272f:	0f 60 eb             	punpcklbw mm5,mm3
    2732:	0f 60 db             	punpcklbw mm3,mm3
    2735:	0f f9 eb             	psubw  mm5,mm3
    2738:	0f 6e 34 77          	movd   mm6,DWORD PTR [rdi+rsi*2]
    273c:	0f 6e 1c 4a          	movd   mm3,DWORD PTR [rdx+rcx*2]
    2740:	0f 60 f3             	punpcklbw mm6,mm3
    2743:	0f 60 db             	punpcklbw mm3,mm3
    2746:	0f f9 f3             	psubw  mm6,mm3
    2749:	42 0f 6e 3c 07       	movd   mm7,DWORD PTR [rdi+r8*1]
    274e:	42 0f 6e 1c 0a       	movd   mm3,DWORD PTR [rdx+r9*1]
    2753:	0f 60 fb             	punpcklbw mm7,mm3
    2756:	0f 60 db             	punpcklbw mm3,mm3
    2759:	0f f9 fb             	psubw  mm7,mm3
    275c:	0f 6f dc             	movq   mm3,mm4
    275f:	0f fd e5             	paddw  mm4,mm5
    2762:	0f f9 eb             	psubw  mm5,mm3
    2765:	0f 6f de             	movq   mm3,mm6
    2768:	0f fd f7             	paddw  mm6,mm7
    276b:	0f f9 fb             	psubw  mm7,mm3
    276e:	0f 6f dc             	movq   mm3,mm4
    2771:	0f 61 e5             	punpcklwd mm4,mm5
    2774:	0f 69 dd             	punpckhwd mm3,mm5
    2777:	0f 6f ec             	movq   mm5,mm4
    277a:	0f fd e3             	paddw  mm4,mm3
    277d:	0f f9 dd             	psubw  mm3,mm5
    2780:	0f 6f ee             	movq   mm5,mm6
    2783:	0f 61 f7             	punpcklwd mm6,mm7
    2786:	0f 69 ef             	punpckhwd mm5,mm7
    2789:	0f 6f fe             	movq   mm7,mm6
    278c:	0f fd f5             	paddw  mm6,mm5
    278f:	0f f9 ef             	psubw  mm5,mm7
    2792:	0f 6f fc             	movq   mm7,mm4
    2795:	0f fd e6             	paddw  mm4,mm6
    2798:	0f f9 f7             	psubw  mm6,mm7
    279b:	0f 6f fb             	movq   mm7,mm3
    279e:	0f fd dd             	paddw  mm3,mm5
    27a1:	0f f9 ef             	psubw  mm5,mm7
    27a4:	0f 6f fc             	movq   mm7,mm4
    27a7:	0f 62 e6             	punpckldq mm4,mm6
    27aa:	0f 6a fe             	punpckhdq mm7,mm6
    27ad:	0f ef f6             	pxor   mm6,mm6
    27b0:	0f ef c0             	pxor   mm0,mm0
    27b3:	0f f9 f4             	psubw  mm6,mm4
    27b6:	0f f9 c7             	psubw  mm0,mm7
    27b9:	0f ee e6             	pmaxsw mm4,mm6
    27bc:	0f ee f8             	pmaxsw mm7,mm0
    27bf:	0f ee e7             	pmaxsw mm4,mm7
    27c2:	0f 6f f3             	movq   mm6,mm3
    27c5:	0f 62 dd             	punpckldq mm3,mm5
    27c8:	0f 6a f5             	punpckhdq mm6,mm5
    27cb:	0f ef ed             	pxor   mm5,mm5
    27ce:	0f ef c0             	pxor   mm0,mm0
    27d1:	0f f9 eb             	psubw  mm5,mm3
    27d4:	0f f9 c6             	psubw  mm0,mm6
    27d7:	0f ee dd             	pmaxsw mm3,mm5
    27da:	0f ee f0             	pmaxsw mm6,mm0
    27dd:	0f ee de             	pmaxsw mm3,mm6
    27e0:	0f fd e3             	paddw  mm4,mm3
    27e3:	0f 70 cc 4e          	pshufw mm1,mm4,0x4e
    27e7:	0f fd e1             	paddw  mm4,mm1
    27ea:	0f 70 cc b1          	pshufw mm1,mm4,0xb1
    27ee:	0f fd e1             	paddw  mm4,mm1
    27f1:	0f 7e e0             	movd   eax,mm4
    27f4:	25 ff ff 00 00       	and    eax,0xffff
    27f9:	c3                   	ret    
    27fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000002800 <x264_8_hadamard_load>:
    2800:	0f ef ff             	pxor   mm7,mm7
    2803:	0f 6e 07             	movd   mm0,DWORD PTR [rdi]
    2806:	0f 6e 4f 10          	movd   mm1,DWORD PTR [rdi+0x10]
    280a:	0f 6e 57 20          	movd   mm2,DWORD PTR [rdi+0x20]
    280e:	0f 6e 5f 30          	movd   mm3,DWORD PTR [rdi+0x30]
    2812:	0f 60 c7             	punpcklbw mm0,mm7
    2815:	0f 60 cf             	punpcklbw mm1,mm7
    2818:	0f 60 d7             	punpcklbw mm2,mm7
    281b:	0f 60 df             	punpcklbw mm3,mm7
    281e:	0f 6f e0             	movq   mm4,mm0
    2821:	0f fd c1             	paddw  mm0,mm1
    2824:	0f f9 cc             	psubw  mm1,mm4
    2827:	0f 6f e2             	movq   mm4,mm2
    282a:	0f fd d3             	paddw  mm2,mm3
    282d:	0f f9 dc             	psubw  mm3,mm4
    2830:	0f 6f e0             	movq   mm4,mm0
    2833:	0f 61 c1             	punpcklwd mm0,mm1
    2836:	0f 69 e1             	punpckhwd mm4,mm1
    2839:	0f 6f c8             	movq   mm1,mm0
    283c:	0f fd c4             	paddw  mm0,mm4
    283f:	0f f9 e1             	psubw  mm4,mm1
    2842:	0f 6f ca             	movq   mm1,mm2
    2845:	0f 61 d3             	punpcklwd mm2,mm3
    2848:	0f 69 cb             	punpckhwd mm1,mm3
    284b:	0f 6f da             	movq   mm3,mm2
    284e:	0f fd d1             	paddw  mm2,mm1
    2851:	0f f9 cb             	psubw  mm1,mm3
    2854:	0f 6f d8             	movq   mm3,mm0
    2857:	0f fd c2             	paddw  mm0,mm2
    285a:	0f f9 d3             	psubw  mm2,mm3
    285d:	0f 6f dc             	movq   mm3,mm4
    2860:	0f fd e1             	paddw  mm4,mm1
    2863:	0f f9 cb             	psubw  mm1,mm3
    2866:	0f 6f d8             	movq   mm3,mm0
    2869:	0f 62 c2             	punpckldq mm0,mm2
    286c:	0f 6a da             	punpckhdq mm3,mm2
    286f:	0f 6f d0             	movq   mm2,mm0
    2872:	0f fd c3             	paddw  mm0,mm3
    2875:	0f f9 da             	psubw  mm3,mm2
    2878:	0f 6f d4             	movq   mm2,mm4
    287b:	0f 62 e1             	punpckldq mm4,mm1
    287e:	0f 6a d1             	punpckhdq mm2,mm1
    2881:	0f 6f cc             	movq   mm1,mm4
    2884:	0f fd e2             	paddw  mm4,mm2
    2887:	0f f9 d1             	psubw  mm2,mm1
    288a:	c3                   	ret    
    288b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000002890 <x264_8_hadamard_ac_4x4_mmx2>:
    2890:	0f 6e 07             	movd   mm0,DWORD PTR [rdi]
    2893:	0f 6e 0c 37          	movd   mm1,DWORD PTR [rdi+rsi*1]
    2897:	0f 6e 14 77          	movd   mm2,DWORD PTR [rdi+rsi*2]
    289b:	0f 6e 1c 17          	movd   mm3,DWORD PTR [rdi+rdx*1]
    289f:	0f 60 c7             	punpcklbw mm0,mm7
    28a2:	0f 60 cf             	punpcklbw mm1,mm7
    28a5:	0f 60 d7             	punpcklbw mm2,mm7
    28a8:	0f 60 df             	punpcklbw mm3,mm7
    28ab:	0f 6f e0             	movq   mm4,mm0
    28ae:	0f fd c1             	paddw  mm0,mm1
    28b1:	0f f9 cc             	psubw  mm1,mm4
    28b4:	0f 6f e2             	movq   mm4,mm2
    28b7:	0f fd d3             	paddw  mm2,mm3
    28ba:	0f f9 dc             	psubw  mm3,mm4
    28bd:	0f 6f e0             	movq   mm4,mm0
    28c0:	0f 61 c1             	punpcklwd mm0,mm1
    28c3:	0f 69 e1             	punpckhwd mm4,mm1
    28c6:	0f 6f c8             	movq   mm1,mm0
    28c9:	0f fd c4             	paddw  mm0,mm4
    28cc:	0f f9 e1             	psubw  mm4,mm1
    28cf:	0f 6f ca             	movq   mm1,mm2
    28d2:	0f 61 d3             	punpcklwd mm2,mm3
    28d5:	0f 69 cb             	punpckhwd mm1,mm3
    28d8:	0f 6f da             	movq   mm3,mm2
    28db:	0f fd d1             	paddw  mm2,mm1
    28de:	0f f9 cb             	psubw  mm1,mm3
    28e1:	0f 6f d8             	movq   mm3,mm0
    28e4:	0f fd c2             	paddw  mm0,mm2
    28e7:	0f f9 d3             	psubw  mm2,mm3
    28ea:	0f 6f dc             	movq   mm3,mm4
    28ed:	0f fd e1             	paddw  mm4,mm1
    28f0:	0f f9 cb             	psubw  mm1,mm3
    28f3:	0f 6f d8             	movq   mm3,mm0
    28f6:	0f 62 c2             	punpckldq mm0,mm2
    28f9:	0f 6a da             	punpckhdq mm3,mm2
    28fc:	0f 6f d0             	movq   mm2,mm0
    28ff:	0f fd c3             	paddw  mm0,mm3
    2902:	0f f9 da             	psubw  mm3,mm2
    2905:	0f 6f d4             	movq   mm2,mm4
    2908:	0f 62 e1             	punpckldq mm4,mm1
    290b:	0f 6a d1             	punpckhdq mm2,mm1
    290e:	0f 6f cc             	movq   mm1,mm4
    2911:	0f fd e2             	paddw  mm4,mm2
    2914:	0f f9 d1             	psubw  mm2,mm1
    2917:	0f 7f 01             	movq   QWORD PTR [rcx],mm0
    291a:	0f 7f 59 08          	movq   QWORD PTR [rcx+0x8],mm3
    291e:	0f 7f 61 10          	movq   QWORD PTR [rcx+0x10],mm4
    2922:	0f 7f 51 18          	movq   QWORD PTR [rcx+0x18],mm2
    2926:	0f ef c9             	pxor   mm1,mm1
    2929:	0f f9 c8             	psubw  mm1,mm0
    292c:	0f ee c1             	pmaxsw mm0,mm1
    292f:	0f ef c9             	pxor   mm1,mm1
    2932:	0f f9 cb             	psubw  mm1,mm3
    2935:	0f ee d9             	pmaxsw mm3,mm1
    2938:	0f db c6             	pand   mm0,mm6
    293b:	0f ef c9             	pxor   mm1,mm1
    293e:	0f f9 cc             	psubw  mm1,mm4
    2941:	0f ee e1             	pmaxsw mm4,mm1
    2944:	0f ef c9             	pxor   mm1,mm1
    2947:	0f f9 ca             	psubw  mm1,mm2
    294a:	0f ee d1             	pmaxsw mm2,mm1
    294d:	0f fd c3             	paddw  mm0,mm3
    2950:	0f fd e2             	paddw  mm4,mm2
    2953:	0f fd c4             	paddw  mm0,mm4
    2956:	c3                   	ret    
    2957:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    295e:	00 
    295f:	90                   	nop

0000000000002960 <x264_8_hadamard_ac_2x2max_mmx2>:
    2960:	0f 6f 01             	movq   mm0,QWORD PTR [rcx]
    2963:	0f 6f 49 20          	movq   mm1,QWORD PTR [rcx+0x20]
    2967:	0f 6f 51 40          	movq   mm2,QWORD PTR [rcx+0x40]
    296b:	0f 6f 59 60          	movq   mm3,QWORD PTR [rcx+0x60]
    296f:	48 83 e9 08          	sub    rcx,0x8
    2973:	0f 6f e0             	movq   mm4,mm0
    2976:	0f fd c1             	paddw  mm0,mm1
    2979:	0f f9 cc             	psubw  mm1,mm4
    297c:	0f 6f e2             	movq   mm4,mm2
    297f:	0f fd d3             	paddw  mm2,mm3
    2982:	0f f9 dc             	psubw  mm3,mm4
    2985:	0f ef e4             	pxor   mm4,mm4
    2988:	0f ef ed             	pxor   mm5,mm5
    298b:	0f f9 e0             	psubw  mm4,mm0
    298e:	0f f9 ea             	psubw  mm5,mm2
    2991:	0f ee c4             	pmaxsw mm0,mm4
    2994:	0f ee d5             	pmaxsw mm2,mm5
    2997:	0f ef e4             	pxor   mm4,mm4
    299a:	0f ef ed             	pxor   mm5,mm5
    299d:	0f f9 e1             	psubw  mm4,mm1
    29a0:	0f f9 eb             	psubw  mm5,mm3
    29a3:	0f ee cc             	pmaxsw mm1,mm4
    29a6:	0f ee dd             	pmaxsw mm3,mm5
    29a9:	0f ee c2             	pmaxsw mm0,mm2
    29ac:	0f ee cb             	pmaxsw mm1,mm3
    29af:	0f fd f8             	paddw  mm7,mm0
    29b2:	0f fd f9             	paddw  mm7,mm1
    29b5:	c3                   	ret    
    29b6:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    29bd:	00 
    29be:	66 90                	xchg   ax,ax

00000000000029c0 <x264_8_hadamard_ac_8x8_mmx2>:
    29c0:	0f 6f 35 00 00 00 00 	movq   mm6,QWORD PTR [rip+0x0]        # 29c7 <x264_8_hadamard_ac_8x8_mmx2+0x7>
    29c7:	0f ef ff             	pxor   mm7,mm7
    29ca:	e8 c1 fe ff ff       	call   2890 <x264_8_hadamard_ac_4x4_mmx2>
    29cf:	48 83 c7 04          	add    rdi,0x4
    29d3:	48 83 c1 20          	add    rcx,0x20
    29d7:	0f 6f e8             	movq   mm5,mm0
    29da:	e8 b1 fe ff ff       	call   2890 <x264_8_hadamard_ac_4x4_mmx2>
    29df:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    29e3:	48 83 c1 40          	add    rcx,0x40
    29e7:	0f fd e8             	paddw  mm5,mm0
    29ea:	e8 a1 fe ff ff       	call   2890 <x264_8_hadamard_ac_4x4_mmx2>
    29ef:	48 83 ef 04          	sub    rdi,0x4
    29f3:	48 83 e9 20          	sub    rcx,0x20
    29f7:	0f fd e8             	paddw  mm5,mm0
    29fa:	e8 91 fe ff ff       	call   2890 <x264_8_hadamard_ac_4x4_mmx2>
    29ff:	0f fd e8             	paddw  mm5,mm0
    2a02:	48 83 e9 28          	sub    rcx,0x28
    2a06:	0f 7f 6c 24 10       	movq   QWORD PTR [rsp+0x10],mm5
    2a0b:	e8 50 ff ff ff       	call   2960 <x264_8_hadamard_ac_2x2max_mmx2>
    2a10:	e8 4b ff ff ff       	call   2960 <x264_8_hadamard_ac_2x2max_mmx2>
    2a15:	e8 46 ff ff ff       	call   2960 <x264_8_hadamard_ac_2x2max_mmx2>
    2a1a:	0f 6f 01             	movq   mm0,QWORD PTR [rcx]
    2a1d:	0f 6f 49 20          	movq   mm1,QWORD PTR [rcx+0x20]
    2a21:	0f 6f 51 40          	movq   mm2,QWORD PTR [rcx+0x40]
    2a25:	0f 6f 59 60          	movq   mm3,QWORD PTR [rcx+0x60]
    2a29:	0f 6f e0             	movq   mm4,mm0
    2a2c:	0f fd c1             	paddw  mm0,mm1
    2a2f:	0f f9 cc             	psubw  mm1,mm4
    2a32:	0f 6f e2             	movq   mm4,mm2
    2a35:	0f fd d3             	paddw  mm2,mm3
    2a38:	0f f9 dc             	psubw  mm3,mm4
    2a3b:	0f 6f e0             	movq   mm4,mm0
    2a3e:	0f fd c2             	paddw  mm0,mm2
    2a41:	0f f9 d4             	psubw  mm2,mm4
    2a44:	0f ef e4             	pxor   mm4,mm4
    2a47:	0f ef ed             	pxor   mm5,mm5
    2a4a:	0f f9 e1             	psubw  mm4,mm1
    2a4d:	0f f9 eb             	psubw  mm5,mm3
    2a50:	0f ee cc             	pmaxsw mm1,mm4
    2a53:	0f ee dd             	pmaxsw mm3,mm5
    2a56:	0f ef e4             	pxor   mm4,mm4
    2a59:	0f ef ed             	pxor   mm5,mm5
    2a5c:	0f f9 e0             	psubw  mm4,mm0
    2a5f:	0f f9 ea             	psubw  mm5,mm2
    2a62:	0f ee c4             	pmaxsw mm0,mm4
    2a65:	0f ee d5             	pmaxsw mm2,mm5
    2a68:	0f ee cb             	pmaxsw mm1,mm3
    2a6b:	0f db f0             	pand   mm6,mm0
    2a6e:	0f fd f9             	paddw  mm7,mm1
    2a71:	0f fd f2             	paddw  mm6,mm2
    2a74:	0f fd ff             	paddw  mm7,mm7
    2a77:	0f fd f7             	paddw  mm6,mm7
    2a7a:	0f 7f 74 24 08       	movq   QWORD PTR [rsp+0x8],mm6
    2a7f:	c3                   	ret    

0000000000002a80 <x264_8_pixel_hadamard_ac_16x16_mmx2>:
    2a80:	48 81 ec 98 00 00 00 	sub    rsp,0x98
    2a87:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    2a8b:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
    2a90:	e8 2b ff ff ff       	call   29c0 <x264_8_hadamard_ac_8x8_mmx2>
    2a95:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    2a99:	48 83 ec 10          	sub    rsp,0x10
    2a9d:	e8 1e ff ff ff       	call   29c0 <x264_8_hadamard_ac_8x8_mmx2>
    2aa2:	48 f7 da             	neg    rdx
    2aa5:	48 83 ec 10          	sub    rsp,0x10
    2aa9:	48 8d 7c 97 08       	lea    rdi,[rdi+rdx*4+0x8]
    2aae:	48 f7 da             	neg    rdx
    2ab1:	e8 0a ff ff ff       	call   29c0 <x264_8_hadamard_ac_8x8_mmx2>
    2ab6:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    2aba:	48 83 ec 10          	sub    rsp,0x10
    2abe:	e8 fd fe ff ff       	call   29c0 <x264_8_hadamard_ac_8x8_mmx2>
    2ac3:	0f 6f 4c 24 08       	movq   mm1,QWORD PTR [rsp+0x8]
    2ac8:	0f dd 74 24 10       	paddusw mm6,QWORD PTR [rsp+0x10]
    2acd:	0f dd 4c 24 18       	paddusw mm1,QWORD PTR [rsp+0x18]
    2ad2:	0f 6f 54 24 20       	movq   mm2,QWORD PTR [rsp+0x20]
    2ad7:	0f dd 4c 24 28       	paddusw mm1,QWORD PTR [rsp+0x28]
    2adc:	0f dd 54 24 30       	paddusw mm2,QWORD PTR [rsp+0x30]
    2ae1:	0f 6f de             	movq   mm3,mm6
    2ae4:	0f dd 4c 24 38       	paddusw mm1,QWORD PTR [rsp+0x38]
    2ae9:	0f ef da             	pxor   mm3,mm2
    2aec:	0f db 1d 00 00 00 00 	pand   mm3,QWORD PTR [rip+0x0]        # 2af3 <x264_8_pixel_hadamard_ac_16x16_mmx2+0x73>
    2af3:	0f e3 f2             	pavgw  mm6,mm2
    2af6:	0f d9 f3             	psubusw mm6,mm3
    2af9:	0f 6f d6             	movq   mm2,mm6
    2afc:	0f 72 d2 10          	psrld  mm2,0x10
    2b00:	0f 72 f6 10          	pslld  mm6,0x10
    2b04:	0f 72 d6 10          	psrld  mm6,0x10
    2b08:	0f fe f2             	paddd  mm6,mm2
    2b0b:	0f 70 d6 4e          	pshufw mm2,mm6,0x4e
    2b0f:	0f fe f2             	paddd  mm6,mm2
    2b12:	0f 71 d1 01          	psrlw  mm1,0x1
    2b16:	0f f5 0d 00 00 00 00 	pmaddwd mm1,QWORD PTR [rip+0x0]        # 2b1d <x264_8_pixel_hadamard_ac_16x16_mmx2+0x9d>
    2b1d:	0f 70 d9 4e          	pshufw mm3,mm1,0x4e
    2b21:	0f fe cb             	paddd  mm1,mm3
    2b24:	0f 7e f2             	movd   edx,mm6
    2b27:	0f 7e c8             	movd   eax,mm1
    2b2a:	d1 ea                	shr    edx,1
    2b2c:	48 c1 e2 20          	shl    rdx,0x20
    2b30:	48 01 d0             	add    rax,rdx
    2b33:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
    2b3a:	c3                   	ret    
    2b3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000002b40 <x264_8_pixel_hadamard_ac_8x16_mmx2>:
    2b40:	48 81 ec 98 00 00 00 	sub    rsp,0x98
    2b47:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    2b4b:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
    2b50:	e8 6b fe ff ff       	call   29c0 <x264_8_hadamard_ac_8x8_mmx2>
    2b55:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    2b59:	48 83 ec 10          	sub    rsp,0x10
    2b5d:	e8 5e fe ff ff       	call   29c0 <x264_8_hadamard_ac_8x8_mmx2>
    2b62:	0f 6f 4c 24 08       	movq   mm1,QWORD PTR [rsp+0x8]
    2b67:	0f dd 74 24 10       	paddusw mm6,QWORD PTR [rsp+0x10]
    2b6c:	0f dd 4c 24 18       	paddusw mm1,QWORD PTR [rsp+0x18]
    2b71:	0f 71 d6 01          	psrlw  mm6,0x1
    2b75:	0f f5 35 00 00 00 00 	pmaddwd mm6,QWORD PTR [rip+0x0]        # 2b7c <x264_8_pixel_hadamard_ac_8x16_mmx2+0x3c>
    2b7c:	0f 70 d6 4e          	pshufw mm2,mm6,0x4e
    2b80:	0f fe f2             	paddd  mm6,mm2
    2b83:	0f 71 d1 01          	psrlw  mm1,0x1
    2b87:	0f f5 0d 00 00 00 00 	pmaddwd mm1,QWORD PTR [rip+0x0]        # 2b8e <x264_8_pixel_hadamard_ac_8x16_mmx2+0x4e>
    2b8e:	0f 70 d9 4e          	pshufw mm3,mm1,0x4e
    2b92:	0f fe cb             	paddd  mm1,mm3
    2b95:	0f 7e f2             	movd   edx,mm6
    2b98:	0f 7e c8             	movd   eax,mm1
    2b9b:	d1 ea                	shr    edx,1
    2b9d:	48 c1 e2 20          	shl    rdx,0x20
    2ba1:	48 01 d0             	add    rax,rdx
    2ba4:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
    2bab:	c3                   	ret    
    2bac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002bb0 <x264_8_pixel_hadamard_ac_16x8_mmx2>:
    2bb0:	48 81 ec 98 00 00 00 	sub    rsp,0x98
    2bb7:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    2bbb:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
    2bc0:	e8 fb fd ff ff       	call   29c0 <x264_8_hadamard_ac_8x8_mmx2>
    2bc5:	48 f7 de             	neg    rsi
    2bc8:	48 83 ec 10          	sub    rsp,0x10
    2bcc:	48 8d 7c b7 08       	lea    rdi,[rdi+rsi*4+0x8]
    2bd1:	48 f7 de             	neg    rsi
    2bd4:	e8 e7 fd ff ff       	call   29c0 <x264_8_hadamard_ac_8x8_mmx2>
    2bd9:	0f 6f 4c 24 08       	movq   mm1,QWORD PTR [rsp+0x8]
    2bde:	0f dd 74 24 10       	paddusw mm6,QWORD PTR [rsp+0x10]
    2be3:	0f dd 4c 24 18       	paddusw mm1,QWORD PTR [rsp+0x18]
    2be8:	0f 71 d6 01          	psrlw  mm6,0x1
    2bec:	0f f5 35 00 00 00 00 	pmaddwd mm6,QWORD PTR [rip+0x0]        # 2bf3 <x264_8_pixel_hadamard_ac_16x8_mmx2+0x43>
    2bf3:	0f 70 d6 4e          	pshufw mm2,mm6,0x4e
    2bf7:	0f fe f2             	paddd  mm6,mm2
    2bfa:	0f 71 d1 01          	psrlw  mm1,0x1
    2bfe:	0f f5 0d 00 00 00 00 	pmaddwd mm1,QWORD PTR [rip+0x0]        # 2c05 <x264_8_pixel_hadamard_ac_16x8_mmx2+0x55>
    2c05:	0f 70 d9 4e          	pshufw mm3,mm1,0x4e
    2c09:	0f fe cb             	paddd  mm1,mm3
    2c0c:	0f 7e f2             	movd   edx,mm6
    2c0f:	0f 7e c8             	movd   eax,mm1
    2c12:	d1 ea                	shr    edx,1
    2c14:	48 c1 e2 20          	shl    rdx,0x20
    2c18:	48 01 d0             	add    rax,rdx
    2c1b:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
    2c22:	c3                   	ret    
    2c23:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    2c2a:	00 
    2c2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000002c30 <x264_8_pixel_hadamard_ac_8x8_mmx2>:
    2c30:	48 81 ec 98 00 00 00 	sub    rsp,0x98
    2c37:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    2c3b:	48 8d 4c 24 10       	lea    rcx,[rsp+0x10]
    2c40:	e8 7b fd ff ff       	call   29c0 <x264_8_hadamard_ac_8x8_mmx2>
    2c45:	0f 6f 4c 24 08       	movq   mm1,QWORD PTR [rsp+0x8]
    2c4a:	0f 71 d6 01          	psrlw  mm6,0x1
    2c4e:	0f f5 35 00 00 00 00 	pmaddwd mm6,QWORD PTR [rip+0x0]        # 2c55 <x264_8_pixel_hadamard_ac_8x8_mmx2+0x25>
    2c55:	0f 70 d6 4e          	pshufw mm2,mm6,0x4e
    2c59:	0f fe f2             	paddd  mm6,mm2
    2c5c:	0f 71 d1 01          	psrlw  mm1,0x1
    2c60:	0f f5 0d 00 00 00 00 	pmaddwd mm1,QWORD PTR [rip+0x0]        # 2c67 <x264_8_pixel_hadamard_ac_8x8_mmx2+0x37>
    2c67:	0f 70 d9 4e          	pshufw mm3,mm1,0x4e
    2c6b:	0f fe cb             	paddd  mm1,mm3
    2c6e:	0f 7e f2             	movd   edx,mm6
    2c71:	0f 7e c8             	movd   eax,mm1
    2c74:	d1 ea                	shr    edx,1
    2c76:	48 c1 e2 20          	shl    rdx,0x20
    2c7a:	48 01 d0             	add    rax,rdx
    2c7d:	48 81 c4 98 00 00 00 	add    rsp,0x98
    2c84:	c3                   	ret    
    2c85:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    2c8c:	00 
    2c8d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000002c90 <x264_8_pixel_sa8d_8x8_internal_sse2>:
    2c90:	48 8d 04 b7          	lea    rax,[rdi+rsi*4]
    2c94:	4c 8d 14 8a          	lea    r10,[rdx+rcx*4]
    2c98:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    2c9c:	f3 0f 7e 2a          	movq   xmm5,QWORD PTR [rdx]
    2ca0:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    2ca4:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    2ca8:	66 0f f9 c5          	psubw  xmm0,xmm5
    2cac:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    2cb1:	f3 0f 7e 34 0a       	movq   xmm6,QWORD PTR [rdx+rcx*1]
    2cb6:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    2cba:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    2cbe:	66 0f f9 ce          	psubw  xmm1,xmm6
    2cc2:	f3 0f 7e 14 77       	movq   xmm2,QWORD PTR [rdi+rsi*2]
    2cc7:	f3 0f 7e 2c 4a       	movq   xmm5,QWORD PTR [rdx+rcx*2]
    2ccc:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    2cd0:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    2cd4:	66 0f f9 d5          	psubw  xmm2,xmm5
    2cd8:	f3 46 0f 7e 04 07    	movq   xmm8,QWORD PTR [rdi+r8*1]
    2cde:	f3 42 0f 7e 34 0a    	movq   xmm6,QWORD PTR [rdx+r9*1]
    2ce4:	66 44 0f 60 c7       	punpcklbw xmm8,xmm7
    2ce9:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    2ced:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    2cf2:	f3 0f 7e 20          	movq   xmm4,QWORD PTR [rax]
    2cf6:	f3 45 0f 7e 1a       	movq   xmm11,QWORD PTR [r10]
    2cfb:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    2cff:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    2d04:	66 41 0f f9 e3       	psubw  xmm4,xmm11
    2d09:	f3 0f 7e 2c 30       	movq   xmm5,QWORD PTR [rax+rsi*1]
    2d0e:	f3 41 0f 7e 34 0a    	movq   xmm6,QWORD PTR [r10+rcx*1]
    2d14:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    2d18:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    2d1c:	66 0f f9 ee          	psubw  xmm5,xmm6
    2d20:	f3 0f 7e 1c 70       	movq   xmm3,QWORD PTR [rax+rsi*2]
    2d25:	f3 45 0f 7e 1c 4a    	movq   xmm11,QWORD PTR [r10+rcx*2]
    2d2b:	66 0f 60 df          	punpcklbw xmm3,xmm7
    2d2f:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    2d34:	66 41 0f f9 db       	psubw  xmm3,xmm11
    2d39:	f3 46 0f 7e 0c 00    	movq   xmm9,QWORD PTR [rax+r8*1]
    2d3f:	f3 43 0f 7e 34 0a    	movq   xmm6,QWORD PTR [r10+r9*1]
    2d45:	66 44 0f 60 cf       	punpcklbw xmm9,xmm7
    2d4a:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    2d4e:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    2d53:	0f 28 f0             	movaps xmm6,xmm0
    2d56:	66 0f fd c1          	paddw  xmm0,xmm1
    2d5a:	66 0f f9 ce          	psubw  xmm1,xmm6
    2d5e:	0f 28 f2             	movaps xmm6,xmm2
    2d61:	66 41 0f fd d0       	paddw  xmm2,xmm8
    2d66:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    2d6b:	0f 28 f0             	movaps xmm6,xmm0
    2d6e:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    2d72:	66 0f 69 f1          	punpckhwd xmm6,xmm1
    2d76:	0f 28 c8             	movaps xmm1,xmm0
    2d79:	66 0f fd c6          	paddw  xmm0,xmm6
    2d7d:	66 0f f9 f1          	psubw  xmm6,xmm1
    2d81:	0f 28 ca             	movaps xmm1,xmm2
    2d84:	66 41 0f 61 d0       	punpcklwd xmm2,xmm8
    2d89:	66 41 0f 69 c8       	punpckhwd xmm1,xmm8
    2d8e:	44 0f 28 c2          	movaps xmm8,xmm2
    2d92:	66 0f fd d1          	paddw  xmm2,xmm1
    2d96:	66 41 0f f9 c8       	psubw  xmm1,xmm8
    2d9b:	44 0f 28 c4          	movaps xmm8,xmm4
    2d9f:	66 0f fd e5          	paddw  xmm4,xmm5
    2da3:	66 41 0f f9 e8       	psubw  xmm5,xmm8
    2da8:	44 0f 28 c3          	movaps xmm8,xmm3
    2dac:	66 41 0f fd d9       	paddw  xmm3,xmm9
    2db1:	66 45 0f f9 c8       	psubw  xmm9,xmm8
    2db6:	44 0f 28 c4          	movaps xmm8,xmm4
    2dba:	66 0f 61 e5          	punpcklwd xmm4,xmm5
    2dbe:	66 44 0f 69 c5       	punpckhwd xmm8,xmm5
    2dc3:	0f 28 ec             	movaps xmm5,xmm4
    2dc6:	66 41 0f fd e0       	paddw  xmm4,xmm8
    2dcb:	66 44 0f f9 c5       	psubw  xmm8,xmm5
    2dd0:	0f 28 eb             	movaps xmm5,xmm3
    2dd3:	66 41 0f 61 d9       	punpcklwd xmm3,xmm9
    2dd8:	66 41 0f 69 e9       	punpckhwd xmm5,xmm9
    2ddd:	44 0f 28 cb          	movaps xmm9,xmm3
    2de1:	66 0f fd dd          	paddw  xmm3,xmm5
    2de5:	66 41 0f f9 e9       	psubw  xmm5,xmm9
    2dea:	44 0f 28 c8          	movaps xmm9,xmm0
    2dee:	66 0f fd c2          	paddw  xmm0,xmm2
    2df2:	66 41 0f f9 d1       	psubw  xmm2,xmm9
    2df7:	44 0f 28 ce          	movaps xmm9,xmm6
    2dfb:	66 0f fd f1          	paddw  xmm6,xmm1
    2dff:	66 41 0f f9 c9       	psubw  xmm1,xmm9
    2e04:	44 0f 28 c8          	movaps xmm9,xmm0
    2e08:	66 0f 62 c2          	punpckldq xmm0,xmm2
    2e0c:	66 44 0f 6a ca       	punpckhdq xmm9,xmm2
    2e11:	0f 28 d0             	movaps xmm2,xmm0
    2e14:	66 41 0f fd c1       	paddw  xmm0,xmm9
    2e19:	66 44 0f f9 ca       	psubw  xmm9,xmm2
    2e1e:	0f 28 d6             	movaps xmm2,xmm6
    2e21:	66 0f 62 f1          	punpckldq xmm6,xmm1
    2e25:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    2e29:	0f 28 ce             	movaps xmm1,xmm6
    2e2c:	66 0f fd f2          	paddw  xmm6,xmm2
    2e30:	66 0f f9 d1          	psubw  xmm2,xmm1
    2e34:	0f 28 cc             	movaps xmm1,xmm4
    2e37:	66 0f fd e3          	paddw  xmm4,xmm3
    2e3b:	66 0f f9 d9          	psubw  xmm3,xmm1
    2e3f:	41 0f 28 c8          	movaps xmm1,xmm8
    2e43:	66 44 0f fd c5       	paddw  xmm8,xmm5
    2e48:	66 0f f9 e9          	psubw  xmm5,xmm1
    2e4c:	0f 28 cc             	movaps xmm1,xmm4
    2e4f:	66 0f 62 e3          	punpckldq xmm4,xmm3
    2e53:	66 0f 6a cb          	punpckhdq xmm1,xmm3
    2e57:	0f 28 dc             	movaps xmm3,xmm4
    2e5a:	66 0f fd e1          	paddw  xmm4,xmm1
    2e5e:	66 0f f9 cb          	psubw  xmm1,xmm3
    2e62:	41 0f 28 d8          	movaps xmm3,xmm8
    2e66:	66 44 0f 62 c5       	punpckldq xmm8,xmm5
    2e6b:	66 0f 6a dd          	punpckhdq xmm3,xmm5
    2e6f:	41 0f 28 e8          	movaps xmm5,xmm8
    2e73:	66 44 0f fd c3       	paddw  xmm8,xmm3
    2e78:	66 0f f9 dd          	psubw  xmm3,xmm5
    2e7c:	0f 28 e8             	movaps xmm5,xmm0
    2e7f:	66 0f fd c4          	paddw  xmm0,xmm4
    2e83:	66 0f f9 e5          	psubw  xmm4,xmm5
    2e87:	41 0f 28 e9          	movaps xmm5,xmm9
    2e8b:	66 44 0f fd c9       	paddw  xmm9,xmm1
    2e90:	66 0f f9 cd          	psubw  xmm1,xmm5
    2e94:	0f 28 e8             	movaps xmm5,xmm0
    2e97:	0f 16 c4             	movlhps xmm0,xmm4
    2e9a:	66 0f 6d ec          	punpckhqdq xmm5,xmm4
    2e9e:	66 0f ef e4          	pxor   xmm4,xmm4
    2ea2:	66 0f f9 e0          	psubw  xmm4,xmm0
    2ea6:	66 0f ee c4          	pmaxsw xmm0,xmm4
    2eaa:	66 0f ef e4          	pxor   xmm4,xmm4
    2eae:	66 0f f9 e5          	psubw  xmm4,xmm5
    2eb2:	66 0f ee ec          	pmaxsw xmm5,xmm4
    2eb6:	66 0f ee c5          	pmaxsw xmm0,xmm5
    2eba:	41 0f 28 e1          	movaps xmm4,xmm9
    2ebe:	44 0f 16 c9          	movlhps xmm9,xmm1
    2ec2:	66 0f 6d e1          	punpckhqdq xmm4,xmm1
    2ec6:	66 0f ef c9          	pxor   xmm1,xmm1
    2eca:	66 41 0f f9 c9       	psubw  xmm1,xmm9
    2ecf:	66 44 0f ee c9       	pmaxsw xmm9,xmm1
    2ed4:	66 0f ef c9          	pxor   xmm1,xmm1
    2ed8:	66 0f f9 cc          	psubw  xmm1,xmm4
    2edc:	66 0f ee e1          	pmaxsw xmm4,xmm1
    2ee0:	66 44 0f ee cc       	pmaxsw xmm9,xmm4
    2ee5:	0f 28 ce             	movaps xmm1,xmm6
    2ee8:	66 41 0f fd f0       	paddw  xmm6,xmm8
    2eed:	66 44 0f f9 c1       	psubw  xmm8,xmm1
    2ef2:	0f 28 ca             	movaps xmm1,xmm2
    2ef5:	66 0f fd d3          	paddw  xmm2,xmm3
    2ef9:	66 0f f9 d9          	psubw  xmm3,xmm1
    2efd:	0f 28 ce             	movaps xmm1,xmm6
    2f00:	41 0f 16 f0          	movlhps xmm6,xmm8
    2f04:	66 41 0f 6d c8       	punpckhqdq xmm1,xmm8
    2f09:	66 45 0f ef c0       	pxor   xmm8,xmm8
    2f0e:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    2f13:	66 41 0f ee f0       	pmaxsw xmm6,xmm8
    2f18:	66 45 0f ef c0       	pxor   xmm8,xmm8
    2f1d:	66 44 0f f9 c1       	psubw  xmm8,xmm1
    2f22:	66 41 0f ee c8       	pmaxsw xmm1,xmm8
    2f27:	66 0f ee f1          	pmaxsw xmm6,xmm1
    2f2b:	44 0f 28 c2          	movaps xmm8,xmm2
    2f2f:	0f 16 d3             	movlhps xmm2,xmm3
    2f32:	66 44 0f 6d c3       	punpckhqdq xmm8,xmm3
    2f37:	66 0f ef db          	pxor   xmm3,xmm3
    2f3b:	66 0f f9 da          	psubw  xmm3,xmm2
    2f3f:	66 0f ee d3          	pmaxsw xmm2,xmm3
    2f43:	66 0f ef db          	pxor   xmm3,xmm3
    2f47:	66 41 0f f9 d8       	psubw  xmm3,xmm8
    2f4c:	66 44 0f ee c3       	pmaxsw xmm8,xmm3
    2f51:	66 41 0f ee d0       	pmaxsw xmm2,xmm8
    2f56:	66 0f fd c6          	paddw  xmm0,xmm6
    2f5a:	66 41 0f fd c1       	paddw  xmm0,xmm9
    2f5f:	66 0f fd c2          	paddw  xmm0,xmm2
    2f63:	c3                   	ret    
    2f64:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    2f6b:	00 
    2f6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002f70 <x264_8_pixel_sa8d_8x8_sse2>:
    2f70:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    2f74:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    2f78:	e8 13 fd ff ff       	call   2c90 <x264_8_pixel_sa8d_8x8_internal_sse2>
    2f7d:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 2f85 <x264_8_pixel_sa8d_8x8_sse2+0x15>
    2f84:	00 
    2f85:	0f 12 f0             	movhlps xmm6,xmm0
    2f88:	66 0f fe c6          	paddd  xmm0,xmm6
    2f8c:	f2 0f 70 f0 4e       	pshuflw xmm6,xmm0,0x4e
    2f91:	66 0f fe c6          	paddd  xmm0,xmm6
    2f95:	66 0f 7e c0          	movd   eax,xmm0
    2f99:	83 c0 01             	add    eax,0x1
    2f9c:	d1 e8                	shr    eax,1
    2f9e:	c3                   	ret    
    2f9f:	90                   	nop

0000000000002fa0 <x264_8_pixel_sa8d_16x16_sse2>:
    2fa0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    2fa4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    2fa8:	e8 e3 fc ff ff       	call   2c90 <x264_8_pixel_sa8d_8x8_internal_sse2>
    2fad:	48 83 c2 08          	add    rdx,0x8
    2fb1:	48 83 c7 08          	add    rdi,0x8
    2fb5:	44 0f 28 d0          	movaps xmm10,xmm0
    2fb9:	e8 d2 fc ff ff       	call   2c90 <x264_8_pixel_sa8d_8x8_internal_sse2>
    2fbe:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
    2fc2:	48 8d 3c f7          	lea    rdi,[rdi+rsi*8]
    2fc6:	66 44 0f dd d0       	paddusw xmm10,xmm0
    2fcb:	e8 c0 fc ff ff       	call   2c90 <x264_8_pixel_sa8d_8x8_internal_sse2>
    2fd0:	48 83 ea 08          	sub    rdx,0x8
    2fd4:	48 83 ef 08          	sub    rdi,0x8
    2fd8:	66 44 0f dd d0       	paddusw xmm10,xmm0
    2fdd:	e8 ae fc ff ff       	call   2c90 <x264_8_pixel_sa8d_8x8_internal_sse2>
    2fe2:	66 44 0f dd d0       	paddusw xmm10,xmm0
    2fe7:	66 41 0f 6f f2       	movdqa xmm6,xmm10
    2fec:	66 0f 72 d6 10       	psrld  xmm6,0x10
    2ff1:	66 41 0f 72 f2 10    	pslld  xmm10,0x10
    2ff7:	66 41 0f 72 d2 10    	psrld  xmm10,0x10
    2ffd:	66 44 0f fe d6       	paddd  xmm10,xmm6
    3002:	41 0f 12 f2          	movhlps xmm6,xmm10
    3006:	66 44 0f fe d6       	paddd  xmm10,xmm6
    300b:	f2 41 0f 70 f2 4e    	pshuflw xmm6,xmm10,0x4e
    3011:	66 44 0f fe d6       	paddd  xmm10,xmm6
    3016:	66 44 0f 7e d0       	movd   eax,xmm10
    301b:	83 c0 01             	add    eax,0x1
    301e:	d1 e8                	shr    eax,1
    3020:	c3                   	ret    
    3021:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    3028:	00 
    3029:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000003030 <x264_8_pixel_satd_4x8_sse2>:
    3030:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    3034:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    3038:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    303c:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    3041:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    3046:	4c 01 ca             	add    rdx,r9
    3049:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    304d:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    3052:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    3057:	4c 01 c7             	add    rdi,r8
    305a:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    305f:	66 0f 62 e3          	punpckldq xmm4,xmm3
    3063:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    3068:	66 0f 62 c3          	punpckldq xmm0,xmm3
    306c:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    3071:	66 0f 62 eb          	punpckldq xmm5,xmm3
    3075:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    307a:	66 0f 62 cb          	punpckldq xmm1,xmm3
    307e:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    3082:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    3086:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    308a:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    308e:	66 0f f9 c4          	psubw  xmm0,xmm4
    3092:	66 0f f9 cd          	psubw  xmm1,xmm5
    3096:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    309a:	4c 01 ca             	add    rdx,r9
    309d:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    30a1:	4c 01 c7             	add    rdi,r8
    30a4:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    30a8:	66 0f 62 f4          	punpckldq xmm6,xmm4
    30ac:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    30b0:	66 0f 62 d4          	punpckldq xmm2,xmm4
    30b4:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    30b9:	66 0f 62 ec          	punpckldq xmm5,xmm4
    30bd:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    30c2:	66 0f 62 dc          	punpckldq xmm3,xmm4
    30c6:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    30ca:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    30ce:	66 0f 60 df          	punpcklbw xmm3,xmm7
    30d2:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    30d6:	66 0f f9 d6          	psubw  xmm2,xmm6
    30da:	66 0f f9 dd          	psubw  xmm3,xmm5
    30de:	0f 28 e0             	movaps xmm4,xmm0
    30e1:	66 0f fd c1          	paddw  xmm0,xmm1
    30e5:	66 0f f9 cc          	psubw  xmm1,xmm4
    30e9:	0f 28 e2             	movaps xmm4,xmm2
    30ec:	66 0f fd d3          	paddw  xmm2,xmm3
    30f0:	66 0f f9 dc          	psubw  xmm3,xmm4
    30f4:	0f 28 e0             	movaps xmm4,xmm0
    30f7:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    30fb:	66 0f 69 e1          	punpckhwd xmm4,xmm1
    30ff:	0f 28 ca             	movaps xmm1,xmm2
    3102:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    3106:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    310a:	0f 28 d8             	movaps xmm3,xmm0
    310d:	66 0f fd c2          	paddw  xmm0,xmm2
    3111:	66 0f f9 d3          	psubw  xmm2,xmm3
    3115:	0f 28 dc             	movaps xmm3,xmm4
    3118:	66 0f fd e1          	paddw  xmm4,xmm1
    311c:	66 0f f9 cb          	psubw  xmm1,xmm3
    3120:	0f 28 d8             	movaps xmm3,xmm0
    3123:	66 0f 62 c2          	punpckldq xmm0,xmm2
    3127:	66 0f 6a da          	punpckhdq xmm3,xmm2
    312b:	0f 28 d0             	movaps xmm2,xmm0
    312e:	66 0f fd c3          	paddw  xmm0,xmm3
    3132:	66 0f f9 da          	psubw  xmm3,xmm2
    3136:	0f 28 d4             	movaps xmm2,xmm4
    3139:	66 0f 62 e1          	punpckldq xmm4,xmm1
    313d:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    3141:	0f 28 cc             	movaps xmm1,xmm4
    3144:	66 0f fd e2          	paddw  xmm4,xmm2
    3148:	66 0f f9 d1          	psubw  xmm2,xmm1
    314c:	0f 28 c8             	movaps xmm1,xmm0
    314f:	0f 16 c4             	movlhps xmm0,xmm4
    3152:	66 0f 6d cc          	punpckhqdq xmm1,xmm4
    3156:	66 0f ef e4          	pxor   xmm4,xmm4
    315a:	66 0f f9 e0          	psubw  xmm4,xmm0
    315e:	66 0f ee c4          	pmaxsw xmm0,xmm4
    3162:	66 0f ef e4          	pxor   xmm4,xmm4
    3166:	66 0f f9 e1          	psubw  xmm4,xmm1
    316a:	66 0f ee cc          	pmaxsw xmm1,xmm4
    316e:	66 0f ee c1          	pmaxsw xmm0,xmm1
    3172:	0f 28 e3             	movaps xmm4,xmm3
    3175:	0f 16 da             	movlhps xmm3,xmm2
    3178:	66 0f 6d e2          	punpckhqdq xmm4,xmm2
    317c:	66 0f ef d2          	pxor   xmm2,xmm2
    3180:	66 0f f9 d3          	psubw  xmm2,xmm3
    3184:	66 0f ee da          	pmaxsw xmm3,xmm2
    3188:	66 0f ef d2          	pxor   xmm2,xmm2
    318c:	66 0f f9 d4          	psubw  xmm2,xmm4
    3190:	66 0f ee e2          	pmaxsw xmm4,xmm2
    3194:	66 0f ee dc          	pmaxsw xmm3,xmm4
    3198:	66 0f fd c3          	paddw  xmm0,xmm3
    319c:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 31a4 <x264_8_pixel_satd_4x8_sse2+0x174>
    31a3:	00 
    31a4:	0f 12 c8             	movhlps xmm1,xmm0
    31a7:	66 0f fe c1          	paddd  xmm0,xmm1
    31ab:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    31b0:	66 0f fe c1          	paddd  xmm0,xmm1
    31b4:	66 0f 7e c0          	movd   eax,xmm0
    31b8:	c3                   	ret    
    31b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000031c0 <x264_8_pixel_satd_4x16_sse2>:
    31c0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    31c4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    31c8:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    31cc:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    31d1:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    31d6:	4c 01 ca             	add    rdx,r9
    31d9:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    31dd:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    31e2:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    31e7:	4c 01 c7             	add    rdi,r8
    31ea:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    31ef:	66 0f 62 e3          	punpckldq xmm4,xmm3
    31f3:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    31f8:	66 0f 62 c3          	punpckldq xmm0,xmm3
    31fc:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    3201:	66 0f 62 eb          	punpckldq xmm5,xmm3
    3205:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    320a:	66 0f 62 cb          	punpckldq xmm1,xmm3
    320e:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    3212:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    3216:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    321a:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    321e:	66 0f f9 c4          	psubw  xmm0,xmm4
    3222:	66 0f f9 cd          	psubw  xmm1,xmm5
    3226:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    322a:	4c 01 ca             	add    rdx,r9
    322d:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    3231:	4c 01 c7             	add    rdi,r8
    3234:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    3238:	66 0f 62 f4          	punpckldq xmm6,xmm4
    323c:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    3240:	66 0f 62 d4          	punpckldq xmm2,xmm4
    3244:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    3249:	66 0f 62 ec          	punpckldq xmm5,xmm4
    324d:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    3252:	66 0f 62 dc          	punpckldq xmm3,xmm4
    3256:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    325a:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    325e:	66 0f 60 df          	punpcklbw xmm3,xmm7
    3262:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    3266:	66 0f f9 d6          	psubw  xmm2,xmm6
    326a:	66 0f f9 dd          	psubw  xmm3,xmm5
    326e:	0f 28 e0             	movaps xmm4,xmm0
    3271:	66 0f fd c1          	paddw  xmm0,xmm1
    3275:	66 0f f9 cc          	psubw  xmm1,xmm4
    3279:	0f 28 e2             	movaps xmm4,xmm2
    327c:	66 0f fd d3          	paddw  xmm2,xmm3
    3280:	66 0f f9 dc          	psubw  xmm3,xmm4
    3284:	0f 28 e0             	movaps xmm4,xmm0
    3287:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    328b:	66 0f 69 e1          	punpckhwd xmm4,xmm1
    328f:	0f 28 ca             	movaps xmm1,xmm2
    3292:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    3296:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    329a:	0f 28 d8             	movaps xmm3,xmm0
    329d:	66 0f fd c2          	paddw  xmm0,xmm2
    32a1:	66 0f f9 d3          	psubw  xmm2,xmm3
    32a5:	0f 28 dc             	movaps xmm3,xmm4
    32a8:	66 0f fd e1          	paddw  xmm4,xmm1
    32ac:	66 0f f9 cb          	psubw  xmm1,xmm3
    32b0:	0f 28 d8             	movaps xmm3,xmm0
    32b3:	66 0f 62 c2          	punpckldq xmm0,xmm2
    32b7:	66 0f 6a da          	punpckhdq xmm3,xmm2
    32bb:	0f 28 d0             	movaps xmm2,xmm0
    32be:	66 0f fd c3          	paddw  xmm0,xmm3
    32c2:	66 0f f9 da          	psubw  xmm3,xmm2
    32c6:	0f 28 d4             	movaps xmm2,xmm4
    32c9:	66 0f 62 e1          	punpckldq xmm4,xmm1
    32cd:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    32d1:	0f 28 cc             	movaps xmm1,xmm4
    32d4:	66 0f fd e2          	paddw  xmm4,xmm2
    32d8:	66 0f f9 d1          	psubw  xmm2,xmm1
    32dc:	0f 28 c8             	movaps xmm1,xmm0
    32df:	0f 16 c4             	movlhps xmm0,xmm4
    32e2:	66 0f 6d cc          	punpckhqdq xmm1,xmm4
    32e6:	66 0f ef e4          	pxor   xmm4,xmm4
    32ea:	66 0f f9 e0          	psubw  xmm4,xmm0
    32ee:	66 0f ee c4          	pmaxsw xmm0,xmm4
    32f2:	66 0f ef e4          	pxor   xmm4,xmm4
    32f6:	66 0f f9 e1          	psubw  xmm4,xmm1
    32fa:	66 0f ee cc          	pmaxsw xmm1,xmm4
    32fe:	66 0f ee c1          	pmaxsw xmm0,xmm1
    3302:	0f 28 e3             	movaps xmm4,xmm3
    3305:	0f 16 da             	movlhps xmm3,xmm2
    3308:	66 0f 6d e2          	punpckhqdq xmm4,xmm2
    330c:	66 0f ef d2          	pxor   xmm2,xmm2
    3310:	66 0f f9 d3          	psubw  xmm2,xmm3
    3314:	66 0f ee da          	pmaxsw xmm3,xmm2
    3318:	66 0f ef d2          	pxor   xmm2,xmm2
    331c:	66 0f f9 d4          	psubw  xmm2,xmm4
    3320:	66 0f ee e2          	pmaxsw xmm4,xmm2
    3324:	66 0f ee dc          	pmaxsw xmm3,xmm4
    3328:	66 0f fd c3          	paddw  xmm0,xmm3
    332c:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
    3330:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
    3334:	66 0f 6e 12          	movd   xmm2,DWORD PTR [rdx]
    3338:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    333d:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    3342:	4c 01 ca             	add    rdx,r9
    3345:	66 0f 6e 3f          	movd   xmm7,DWORD PTR [rdi]
    3349:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    334e:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    3353:	4c 01 c7             	add    rdi,r8
    3356:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    335b:	66 0f 62 d4          	punpckldq xmm2,xmm4
    335f:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    3364:	66 0f 62 fc          	punpckldq xmm7,xmm4
    3368:	66 0f 6e 24 4a       	movd   xmm4,DWORD PTR [rdx+rcx*2]
    336d:	66 0f 62 ec          	punpckldq xmm5,xmm4
    3371:	66 0f 6e 24 77       	movd   xmm4,DWORD PTR [rdi+rsi*2]
    3376:	66 0f 62 cc          	punpckldq xmm1,xmm4
    337a:	66 0f 60 f8          	punpcklbw xmm7,xmm0
    337e:	66 0f 60 d0          	punpcklbw xmm2,xmm0
    3382:	66 0f 60 c8          	punpcklbw xmm1,xmm0
    3386:	66 0f 60 e8          	punpcklbw xmm5,xmm0
    338a:	66 0f f9 fa          	psubw  xmm7,xmm2
    338e:	66 0f f9 cd          	psubw  xmm1,xmm5
    3392:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    3396:	4c 01 ca             	add    rdx,r9
    3399:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    339d:	4c 01 c7             	add    rdi,r8
    33a0:	66 0f 6e 12          	movd   xmm2,DWORD PTR [rdx]
    33a4:	66 0f 62 f2          	punpckldq xmm6,xmm2
    33a8:	66 0f 6e 17          	movd   xmm2,DWORD PTR [rdi]
    33ac:	66 0f 62 da          	punpckldq xmm3,xmm2
    33b0:	66 0f 6e 14 0a       	movd   xmm2,DWORD PTR [rdx+rcx*1]
    33b5:	66 0f 62 ea          	punpckldq xmm5,xmm2
    33b9:	66 0f 6e 14 37       	movd   xmm2,DWORD PTR [rdi+rsi*1]
    33be:	66 0f 62 e2          	punpckldq xmm4,xmm2
    33c2:	66 0f 60 d8          	punpcklbw xmm3,xmm0
    33c6:	66 0f 60 f0          	punpcklbw xmm6,xmm0
    33ca:	66 0f 60 e0          	punpcklbw xmm4,xmm0
    33ce:	66 0f 60 e8          	punpcklbw xmm5,xmm0
    33d2:	66 0f f9 de          	psubw  xmm3,xmm6
    33d6:	66 0f f9 e5          	psubw  xmm4,xmm5
    33da:	0f 28 d7             	movaps xmm2,xmm7
    33dd:	66 0f fd f9          	paddw  xmm7,xmm1
    33e1:	66 0f f9 ca          	psubw  xmm1,xmm2
    33e5:	0f 28 d3             	movaps xmm2,xmm3
    33e8:	66 0f fd dc          	paddw  xmm3,xmm4
    33ec:	66 0f f9 e2          	psubw  xmm4,xmm2
    33f0:	0f 28 d7             	movaps xmm2,xmm7
    33f3:	66 0f 61 f9          	punpcklwd xmm7,xmm1
    33f7:	66 0f 69 d1          	punpckhwd xmm2,xmm1
    33fb:	0f 28 cb             	movaps xmm1,xmm3
    33fe:	66 0f 61 dc          	punpcklwd xmm3,xmm4
    3402:	66 0f 69 cc          	punpckhwd xmm1,xmm4
    3406:	0f 28 e7             	movaps xmm4,xmm7
    3409:	66 0f fd fb          	paddw  xmm7,xmm3
    340d:	66 0f f9 dc          	psubw  xmm3,xmm4
    3411:	0f 28 e2             	movaps xmm4,xmm2
    3414:	66 0f fd d1          	paddw  xmm2,xmm1
    3418:	66 0f f9 cc          	psubw  xmm1,xmm4
    341c:	0f 28 e7             	movaps xmm4,xmm7
    341f:	66 0f 62 fb          	punpckldq xmm7,xmm3
    3423:	66 0f 6a e3          	punpckhdq xmm4,xmm3
    3427:	0f 28 df             	movaps xmm3,xmm7
    342a:	66 0f fd fc          	paddw  xmm7,xmm4
    342e:	66 0f f9 e3          	psubw  xmm4,xmm3
    3432:	0f 28 da             	movaps xmm3,xmm2
    3435:	66 0f 62 d1          	punpckldq xmm2,xmm1
    3439:	66 0f 6a d9          	punpckhdq xmm3,xmm1
    343d:	0f 28 ca             	movaps xmm1,xmm2
    3440:	66 0f fd d3          	paddw  xmm2,xmm3
    3444:	66 0f f9 d9          	psubw  xmm3,xmm1
    3448:	0f 28 cf             	movaps xmm1,xmm7
    344b:	0f 16 fa             	movlhps xmm7,xmm2
    344e:	66 0f 6d ca          	punpckhqdq xmm1,xmm2
    3452:	66 0f ef d2          	pxor   xmm2,xmm2
    3456:	66 0f f9 d7          	psubw  xmm2,xmm7
    345a:	66 0f ee fa          	pmaxsw xmm7,xmm2
    345e:	66 0f ef d2          	pxor   xmm2,xmm2
    3462:	66 0f f9 d1          	psubw  xmm2,xmm1
    3466:	66 0f ee ca          	pmaxsw xmm1,xmm2
    346a:	66 0f ee f9          	pmaxsw xmm7,xmm1
    346e:	0f 28 d4             	movaps xmm2,xmm4
    3471:	0f 16 e3             	movlhps xmm4,xmm3
    3474:	66 0f 6d d3          	punpckhqdq xmm2,xmm3
    3478:	66 0f ef db          	pxor   xmm3,xmm3
    347c:	66 0f f9 dc          	psubw  xmm3,xmm4
    3480:	66 0f ee e3          	pmaxsw xmm4,xmm3
    3484:	66 0f ef db          	pxor   xmm3,xmm3
    3488:	66 0f f9 da          	psubw  xmm3,xmm2
    348c:	66 0f ee d3          	pmaxsw xmm2,xmm3
    3490:	66 0f ee e2          	pmaxsw xmm4,xmm2
    3494:	66 0f fd c7          	paddw  xmm0,xmm7
    3498:	66 0f fd c4          	paddw  xmm0,xmm4
    349c:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 34a4 <x264_8_pixel_satd_4x16_sse2+0x2e4>
    34a3:	00 
    34a4:	0f 12 c8             	movhlps xmm1,xmm0
    34a7:	66 0f fe c1          	paddd  xmm0,xmm1
    34ab:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    34b0:	66 0f fe c1          	paddd  xmm0,xmm1
    34b4:	66 0f 7e c0          	movd   eax,xmm0
    34b8:	c3                   	ret    
    34b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000034c0 <x264_8_pixel_satd_8x8_internal_sse2>:
    34c0:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    34c4:	f3 0f 7e 22          	movq   xmm4,QWORD PTR [rdx]
    34c8:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    34cc:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    34d0:	66 0f f9 c4          	psubw  xmm0,xmm4
    34d4:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    34d9:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
    34de:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    34e2:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    34e6:	66 0f f9 cd          	psubw  xmm1,xmm5
    34ea:	f3 0f 7e 14 77       	movq   xmm2,QWORD PTR [rdi+rsi*2]
    34ef:	f3 0f 7e 24 4a       	movq   xmm4,QWORD PTR [rdx+rcx*2]
    34f4:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    34f8:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    34fc:	66 0f f9 d4          	psubw  xmm2,xmm4
    3500:	f3 42 0f 7e 1c 07    	movq   xmm3,QWORD PTR [rdi+r8*1]
    3506:	f3 42 0f 7e 2c 0a    	movq   xmm5,QWORD PTR [rdx+r9*1]
    350c:	66 0f 60 df          	punpcklbw xmm3,xmm7
    3510:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    3514:	66 0f f9 dd          	psubw  xmm3,xmm5
    3518:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    351c:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    3520:	0f 28 e0             	movaps xmm4,xmm0
    3523:	66 0f fd c1          	paddw  xmm0,xmm1
    3527:	66 0f f9 cc          	psubw  xmm1,xmm4
    352b:	0f 28 e2             	movaps xmm4,xmm2
    352e:	66 0f fd d3          	paddw  xmm2,xmm3
    3532:	66 0f f9 dc          	psubw  xmm3,xmm4
    3536:	0f 28 e0             	movaps xmm4,xmm0
    3539:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    353d:	66 0f 69 e1          	punpckhwd xmm4,xmm1
    3541:	0f 28 ca             	movaps xmm1,xmm2
    3544:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    3548:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    354c:	0f 28 d8             	movaps xmm3,xmm0
    354f:	66 0f fd c2          	paddw  xmm0,xmm2
    3553:	66 0f f9 d3          	psubw  xmm2,xmm3
    3557:	0f 28 dc             	movaps xmm3,xmm4
    355a:	66 0f fd e1          	paddw  xmm4,xmm1
    355e:	66 0f f9 cb          	psubw  xmm1,xmm3
    3562:	0f 28 d8             	movaps xmm3,xmm0
    3565:	66 0f 62 c2          	punpckldq xmm0,xmm2
    3569:	66 0f 6a da          	punpckhdq xmm3,xmm2
    356d:	0f 28 d0             	movaps xmm2,xmm0
    3570:	66 0f fd c3          	paddw  xmm0,xmm3
    3574:	66 0f f9 da          	psubw  xmm3,xmm2
    3578:	0f 28 d4             	movaps xmm2,xmm4
    357b:	66 0f 62 e1          	punpckldq xmm4,xmm1
    357f:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    3583:	0f 28 cc             	movaps xmm1,xmm4
    3586:	66 0f fd e2          	paddw  xmm4,xmm2
    358a:	66 0f f9 d1          	psubw  xmm2,xmm1
    358e:	0f 28 c8             	movaps xmm1,xmm0
    3591:	0f 16 c4             	movlhps xmm0,xmm4
    3594:	66 0f 6d cc          	punpckhqdq xmm1,xmm4
    3598:	66 0f ef e4          	pxor   xmm4,xmm4
    359c:	66 0f f9 e0          	psubw  xmm4,xmm0
    35a0:	66 0f ee c4          	pmaxsw xmm0,xmm4
    35a4:	66 0f ef e4          	pxor   xmm4,xmm4
    35a8:	66 0f f9 e1          	psubw  xmm4,xmm1
    35ac:	66 0f ee cc          	pmaxsw xmm1,xmm4
    35b0:	66 0f ee c1          	pmaxsw xmm0,xmm1
    35b4:	0f 28 e3             	movaps xmm4,xmm3
    35b7:	0f 16 da             	movlhps xmm3,xmm2
    35ba:	66 0f 6d e2          	punpckhqdq xmm4,xmm2
    35be:	66 0f ef d2          	pxor   xmm2,xmm2
    35c2:	66 0f f9 d3          	psubw  xmm2,xmm3
    35c6:	66 0f ee da          	pmaxsw xmm3,xmm2
    35ca:	66 0f ef d2          	pxor   xmm2,xmm2
    35ce:	66 0f f9 d4          	psubw  xmm2,xmm4
    35d2:	66 0f ee e2          	pmaxsw xmm4,xmm2
    35d6:	66 0f ee dc          	pmaxsw xmm3,xmm4
    35da:	66 0f fd f0          	paddw  xmm6,xmm0
    35de:	66 0f fd f3          	paddw  xmm6,xmm3
    35e2:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    35e6:	f3 0f 7e 12          	movq   xmm2,QWORD PTR [rdx]
    35ea:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    35ee:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    35f2:	66 0f f9 c2          	psubw  xmm0,xmm2
    35f6:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    35fb:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
    3600:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    3604:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    3608:	66 0f f9 cd          	psubw  xmm1,xmm5
    360c:	f3 0f 7e 1c 77       	movq   xmm3,QWORD PTR [rdi+rsi*2]
    3611:	f3 0f 7e 14 4a       	movq   xmm2,QWORD PTR [rdx+rcx*2]
    3616:	66 0f 60 df          	punpcklbw xmm3,xmm7
    361a:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    361e:	66 0f f9 da          	psubw  xmm3,xmm2
    3622:	f3 42 0f 7e 24 07    	movq   xmm4,QWORD PTR [rdi+r8*1]
    3628:	f3 42 0f 7e 2c 0a    	movq   xmm5,QWORD PTR [rdx+r9*1]
    362e:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    3632:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    3636:	66 0f f9 e5          	psubw  xmm4,xmm5
    363a:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    363e:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    3642:	0f 28 d0             	movaps xmm2,xmm0
    3645:	66 0f fd c1          	paddw  xmm0,xmm1
    3649:	66 0f f9 ca          	psubw  xmm1,xmm2
    364d:	0f 28 d3             	movaps xmm2,xmm3
    3650:	66 0f fd dc          	paddw  xmm3,xmm4
    3654:	66 0f f9 e2          	psubw  xmm4,xmm2
    3658:	0f 28 d0             	movaps xmm2,xmm0
    365b:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    365f:	66 0f 69 d1          	punpckhwd xmm2,xmm1
    3663:	0f 28 cb             	movaps xmm1,xmm3
    3666:	66 0f 61 dc          	punpcklwd xmm3,xmm4
    366a:	66 0f 69 cc          	punpckhwd xmm1,xmm4
    366e:	0f 28 e0             	movaps xmm4,xmm0
    3671:	66 0f fd c3          	paddw  xmm0,xmm3
    3675:	66 0f f9 dc          	psubw  xmm3,xmm4
    3679:	0f 28 e2             	movaps xmm4,xmm2
    367c:	66 0f fd d1          	paddw  xmm2,xmm1
    3680:	66 0f f9 cc          	psubw  xmm1,xmm4
    3684:	0f 28 e0             	movaps xmm4,xmm0
    3687:	66 0f 62 c3          	punpckldq xmm0,xmm3
    368b:	66 0f 6a e3          	punpckhdq xmm4,xmm3
    368f:	0f 28 d8             	movaps xmm3,xmm0
    3692:	66 0f fd c4          	paddw  xmm0,xmm4
    3696:	66 0f f9 e3          	psubw  xmm4,xmm3
    369a:	0f 28 da             	movaps xmm3,xmm2
    369d:	66 0f 62 d1          	punpckldq xmm2,xmm1
    36a1:	66 0f 6a d9          	punpckhdq xmm3,xmm1
    36a5:	0f 28 ca             	movaps xmm1,xmm2
    36a8:	66 0f fd d3          	paddw  xmm2,xmm3
    36ac:	66 0f f9 d9          	psubw  xmm3,xmm1
    36b0:	0f 28 c8             	movaps xmm1,xmm0
    36b3:	0f 16 c2             	movlhps xmm0,xmm2
    36b6:	66 0f 6d ca          	punpckhqdq xmm1,xmm2
    36ba:	66 0f ef d2          	pxor   xmm2,xmm2
    36be:	66 0f f9 d0          	psubw  xmm2,xmm0
    36c2:	66 0f ee c2          	pmaxsw xmm0,xmm2
    36c6:	66 0f ef d2          	pxor   xmm2,xmm2
    36ca:	66 0f f9 d1          	psubw  xmm2,xmm1
    36ce:	66 0f ee ca          	pmaxsw xmm1,xmm2
    36d2:	66 0f ee c1          	pmaxsw xmm0,xmm1
    36d6:	0f 28 d4             	movaps xmm2,xmm4
    36d9:	0f 16 e3             	movlhps xmm4,xmm3
    36dc:	66 0f 6d d3          	punpckhqdq xmm2,xmm3
    36e0:	66 0f ef db          	pxor   xmm3,xmm3
    36e4:	66 0f f9 dc          	psubw  xmm3,xmm4
    36e8:	66 0f ee e3          	pmaxsw xmm4,xmm3
    36ec:	66 0f ef db          	pxor   xmm3,xmm3
    36f0:	66 0f f9 da          	psubw  xmm3,xmm2
    36f4:	66 0f ee d3          	pmaxsw xmm2,xmm3
    36f8:	66 0f ee e2          	pmaxsw xmm4,xmm2
    36fc:	66 0f fd f0          	paddw  xmm6,xmm0
    3700:	66 0f fd f4          	paddw  xmm6,xmm4
    3704:	c3                   	ret    
    3705:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    370c:	00 
    370d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000003710 <x264_8_pixel_satd_16x4_internal_sse2>:
    3710:	0f 10 12             	movups xmm2,XMMWORD PTR [rdx]
    3713:	0f 28 27             	movaps xmm4,XMMWORD PTR [rdi]
    3716:	66 0f 6f cf          	movdqa xmm1,xmm7
    371a:	66 0f db ca          	pand   xmm1,xmm2
    371e:	66 0f 6f c7          	movdqa xmm0,xmm7
    3722:	66 0f db c4          	pand   xmm0,xmm4
    3726:	66 0f 71 d4 08       	psrlw  xmm4,0x8
    372b:	66 0f 71 d2 08       	psrlw  xmm2,0x8
    3730:	66 0f f9 c1          	psubw  xmm0,xmm1
    3734:	66 0f f9 e2          	psubw  xmm4,xmm2
    3738:	0f 28 c8             	movaps xmm1,xmm0
    373b:	66 0f fd c4          	paddw  xmm0,xmm4
    373f:	66 0f f9 e1          	psubw  xmm4,xmm1
    3743:	0f 10 1c 0a          	movups xmm3,XMMWORD PTR [rdx+rcx*1]
    3747:	44 0f 28 04 37       	movaps xmm8,XMMWORD PTR [rdi+rsi*1]
    374c:	66 0f 6f d7          	movdqa xmm2,xmm7
    3750:	66 0f db d3          	pand   xmm2,xmm3
    3754:	66 0f 6f cf          	movdqa xmm1,xmm7
    3758:	66 41 0f db c8       	pand   xmm1,xmm8
    375d:	66 41 0f 71 d0 08    	psrlw  xmm8,0x8
    3763:	66 0f 71 d3 08       	psrlw  xmm3,0x8
    3768:	66 0f f9 ca          	psubw  xmm1,xmm2
    376c:	66 44 0f f9 c3       	psubw  xmm8,xmm3
    3771:	0f 28 d1             	movaps xmm2,xmm1
    3774:	66 41 0f fd c8       	paddw  xmm1,xmm8
    3779:	66 44 0f f9 c2       	psubw  xmm8,xmm2
    377e:	0f 10 34 4a          	movups xmm6,XMMWORD PTR [rdx+rcx*2]
    3782:	0f 28 2c 77          	movaps xmm5,XMMWORD PTR [rdi+rsi*2]
    3786:	66 0f 6f df          	movdqa xmm3,xmm7
    378a:	66 0f db de          	pand   xmm3,xmm6
    378e:	66 0f 6f d7          	movdqa xmm2,xmm7
    3792:	66 0f db d5          	pand   xmm2,xmm5
    3796:	66 0f 71 d5 08       	psrlw  xmm5,0x8
    379b:	66 0f 71 d6 08       	psrlw  xmm6,0x8
    37a0:	66 0f f9 d3          	psubw  xmm2,xmm3
    37a4:	66 0f f9 ee          	psubw  xmm5,xmm6
    37a8:	0f 28 da             	movaps xmm3,xmm2
    37ab:	66 0f fd d5          	paddw  xmm2,xmm5
    37af:	66 0f f9 eb          	psubw  xmm5,xmm3
    37b3:	42 0f 10 34 0a       	movups xmm6,XMMWORD PTR [rdx+r9*1]
    37b8:	46 0f 28 0c 07       	movaps xmm9,XMMWORD PTR [rdi+r8*1]
    37bd:	66 44 0f 6f df       	movdqa xmm11,xmm7
    37c2:	66 44 0f db de       	pand   xmm11,xmm6
    37c7:	66 0f 6f df          	movdqa xmm3,xmm7
    37cb:	66 41 0f db d9       	pand   xmm3,xmm9
    37d0:	66 41 0f 71 d1 08    	psrlw  xmm9,0x8
    37d6:	66 0f 71 d6 08       	psrlw  xmm6,0x8
    37db:	66 41 0f f9 db       	psubw  xmm3,xmm11
    37e0:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    37e5:	44 0f 28 db          	movaps xmm11,xmm3
    37e9:	66 41 0f fd d9       	paddw  xmm3,xmm9
    37ee:	66 45 0f f9 cb       	psubw  xmm9,xmm11
    37f3:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    37f7:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    37fb:	0f 28 f0             	movaps xmm6,xmm0
    37fe:	66 0f fd c1          	paddw  xmm0,xmm1
    3802:	66 0f f9 ce          	psubw  xmm1,xmm6
    3806:	0f 28 f2             	movaps xmm6,xmm2
    3809:	66 0f fd d3          	paddw  xmm2,xmm3
    380d:	66 0f f9 de          	psubw  xmm3,xmm6
    3811:	0f 28 f0             	movaps xmm6,xmm0
    3814:	66 0f fd c2          	paddw  xmm0,xmm2
    3818:	66 0f f9 d6          	psubw  xmm2,xmm6
    381c:	0f 28 f1             	movaps xmm6,xmm1
    381f:	66 0f fd cb          	paddw  xmm1,xmm3
    3823:	66 0f f9 de          	psubw  xmm3,xmm6
    3827:	66 0f ef f6          	pxor   xmm6,xmm6
    382b:	66 45 0f ef db       	pxor   xmm11,xmm11
    3830:	66 0f f9 f0          	psubw  xmm6,xmm0
    3834:	66 44 0f f9 da       	psubw  xmm11,xmm2
    3839:	66 0f ee c6          	pmaxsw xmm0,xmm6
    383d:	66 41 0f ee d3       	pmaxsw xmm2,xmm11
    3842:	66 0f ef f6          	pxor   xmm6,xmm6
    3846:	66 45 0f ef db       	pxor   xmm11,xmm11
    384b:	66 0f f9 f1          	psubw  xmm6,xmm1
    384f:	66 44 0f f9 db       	psubw  xmm11,xmm3
    3854:	66 0f ee ce          	pmaxsw xmm1,xmm6
    3858:	66 41 0f ee db       	pmaxsw xmm3,xmm11
    385d:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 3864 <x264_8_pixel_satd_16x4_internal_sse2+0x154>
    3864:	44 0f 28 da          	movaps xmm11,xmm2
    3868:	66 0f 72 f2 10       	pslld  xmm2,0x10
    386d:	66 44 0f db de       	pand   xmm11,xmm6
    3872:	66 0f df f0          	pandn  xmm6,xmm0
    3876:	66 0f 72 d0 10       	psrld  xmm0,0x10
    387b:	66 0f eb d6          	por    xmm2,xmm6
    387f:	66 41 0f eb c3       	por    xmm0,xmm11
    3884:	66 0f ee c2          	pmaxsw xmm0,xmm2
    3888:	66 44 0f fd d0       	paddw  xmm10,xmm0
    388d:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 3894 <x264_8_pixel_satd_16x4_internal_sse2+0x184>
    3894:	44 0f 28 db          	movaps xmm11,xmm3
    3898:	66 0f 72 f3 10       	pslld  xmm3,0x10
    389d:	66 44 0f db de       	pand   xmm11,xmm6
    38a2:	66 0f df f1          	pandn  xmm6,xmm1
    38a6:	66 0f 72 d1 10       	psrld  xmm1,0x10
    38ab:	66 0f eb de          	por    xmm3,xmm6
    38af:	66 41 0f eb cb       	por    xmm1,xmm11
    38b4:	66 0f ee cb          	pmaxsw xmm1,xmm3
    38b8:	66 44 0f fd d1       	paddw  xmm10,xmm1
    38bd:	0f 28 f4             	movaps xmm6,xmm4
    38c0:	66 41 0f fd e0       	paddw  xmm4,xmm8
    38c5:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    38ca:	0f 28 f5             	movaps xmm6,xmm5
    38cd:	66 41 0f fd e9       	paddw  xmm5,xmm9
    38d2:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    38d7:	0f 28 f4             	movaps xmm6,xmm4
    38da:	66 0f fd e5          	paddw  xmm4,xmm5
    38de:	66 0f f9 ee          	psubw  xmm5,xmm6
    38e2:	41 0f 28 f0          	movaps xmm6,xmm8
    38e6:	66 45 0f fd c1       	paddw  xmm8,xmm9
    38eb:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    38f0:	66 0f ef f6          	pxor   xmm6,xmm6
    38f4:	66 0f ef db          	pxor   xmm3,xmm3
    38f8:	66 0f f9 f4          	psubw  xmm6,xmm4
    38fc:	66 0f f9 dd          	psubw  xmm3,xmm5
    3900:	66 0f ee e6          	pmaxsw xmm4,xmm6
    3904:	66 0f ee eb          	pmaxsw xmm5,xmm3
    3908:	66 0f ef f6          	pxor   xmm6,xmm6
    390c:	66 0f ef db          	pxor   xmm3,xmm3
    3910:	66 41 0f f9 f0       	psubw  xmm6,xmm8
    3915:	66 41 0f f9 d9       	psubw  xmm3,xmm9
    391a:	66 44 0f ee c6       	pmaxsw xmm8,xmm6
    391f:	66 44 0f ee cb       	pmaxsw xmm9,xmm3
    3924:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 392b <x264_8_pixel_satd_16x4_internal_sse2+0x21b>
    392b:	0f 28 dd             	movaps xmm3,xmm5
    392e:	66 0f 72 f5 10       	pslld  xmm5,0x10
    3933:	66 0f db de          	pand   xmm3,xmm6
    3937:	66 0f df f4          	pandn  xmm6,xmm4
    393b:	66 0f 72 d4 10       	psrld  xmm4,0x10
    3940:	66 0f eb ee          	por    xmm5,xmm6
    3944:	66 0f eb e3          	por    xmm4,xmm3
    3948:	66 0f ee e5          	pmaxsw xmm4,xmm5
    394c:	66 44 0f fd d4       	paddw  xmm10,xmm4
    3951:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 3958 <x264_8_pixel_satd_16x4_internal_sse2+0x248>
    3958:	41 0f 28 d9          	movaps xmm3,xmm9
    395c:	66 41 0f 72 f1 10    	pslld  xmm9,0x10
    3962:	66 0f db de          	pand   xmm3,xmm6
    3966:	66 41 0f df f0       	pandn  xmm6,xmm8
    396b:	66 41 0f 72 d0 10    	psrld  xmm8,0x10
    3971:	66 44 0f eb ce       	por    xmm9,xmm6
    3976:	66 44 0f eb c3       	por    xmm8,xmm3
    397b:	66 45 0f ee c1       	pmaxsw xmm8,xmm9
    3980:	66 45 0f fd d0       	paddw  xmm10,xmm8
    3985:	c3                   	ret    
    3986:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    398d:	00 
    398e:	66 90                	xchg   ax,ax

0000000000003990 <x264_8_pixel_satd_16x8_sse2>:
    3990:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    3994:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    3998:	66 45 0f ef d2       	pxor   xmm10,xmm10
    399d:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 39a4 <x264_8_pixel_satd_16x8_sse2+0x14>
    39a4:	eb 28                	jmp    39ce <x264_8_pixel_satd_16x16_sse2+0x1e>
    39a6:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    39ad:	00 
    39ae:	66 90                	xchg   ax,ax

00000000000039b0 <x264_8_pixel_satd_16x16_sse2>:
    39b0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    39b4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    39b8:	66 45 0f ef d2       	pxor   xmm10,xmm10
    39bd:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 39c4 <x264_8_pixel_satd_16x16_sse2+0x14>
    39c4:	e8 47 fd ff ff       	call   3710 <x264_8_pixel_satd_16x4_internal_sse2>
    39c9:	e8 42 fd ff ff       	call   3710 <x264_8_pixel_satd_16x4_internal_sse2>
    39ce:	e8 3d fd ff ff       	call   3710 <x264_8_pixel_satd_16x4_internal_sse2>
    39d3:	e8 38 fd ff ff       	call   3710 <x264_8_pixel_satd_16x4_internal_sse2>
    39d8:	66 44 0f f5 15 00 00 	pmaddwd xmm10,XMMWORD PTR [rip+0x0]        # 39e1 <x264_8_pixel_satd_16x16_sse2+0x31>
    39df:	00 00 
    39e1:	41 0f 12 fa          	movhlps xmm7,xmm10
    39e5:	66 44 0f fe d7       	paddd  xmm10,xmm7
    39ea:	f2 41 0f 70 fa 4e    	pshuflw xmm7,xmm10,0x4e
    39f0:	66 44 0f fe d7       	paddd  xmm10,xmm7
    39f5:	66 44 0f 7e d0       	movd   eax,xmm10
    39fa:	c3                   	ret    
    39fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000003a00 <x264_8_pixel_satd_8x16_sse2>:
    3a00:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    3a04:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    3a08:	66 0f ef f6          	pxor   xmm6,xmm6
    3a0c:	e8 af fa ff ff       	call   34c0 <x264_8_pixel_satd_8x8_internal_sse2>
    3a11:	e8 aa fa ff ff       	call   34c0 <x264_8_pixel_satd_8x8_internal_sse2>
    3a16:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 3a1e <x264_8_pixel_satd_8x16_sse2+0x1e>
    3a1d:	00 
    3a1e:	0f 12 fe             	movhlps xmm7,xmm6
    3a21:	66 0f fe f7          	paddd  xmm6,xmm7
    3a25:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    3a2a:	66 0f fe f7          	paddd  xmm6,xmm7
    3a2e:	66 0f 7e f0          	movd   eax,xmm6
    3a32:	c3                   	ret    
    3a33:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    3a3a:	00 
    3a3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000003a40 <x264_8_pixel_satd_8x8_sse2>:
    3a40:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    3a44:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    3a48:	66 0f ef f6          	pxor   xmm6,xmm6
    3a4c:	e8 6f fa ff ff       	call   34c0 <x264_8_pixel_satd_8x8_internal_sse2>
    3a51:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 3a59 <x264_8_pixel_satd_8x8_sse2+0x19>
    3a58:	00 
    3a59:	0f 12 fe             	movhlps xmm7,xmm6
    3a5c:	66 0f fe f7          	paddd  xmm6,xmm7
    3a60:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    3a65:	66 0f fe f7          	paddd  xmm6,xmm7
    3a69:	66 0f 7e f0          	movd   eax,xmm6
    3a6d:	c3                   	ret    
    3a6e:	66 90                	xchg   ax,ax

0000000000003a70 <x264_8_pixel_satd_8x4_sse2>:
    3a70:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    3a74:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    3a78:	66 0f ef f6          	pxor   xmm6,xmm6
    3a7c:	e8 61 fb ff ff       	call   35e2 <x264_8_pixel_satd_8x8_internal_sse2+0x122>
    3a81:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 3a89 <x264_8_pixel_satd_8x4_sse2+0x19>
    3a88:	00 
    3a89:	0f 12 fe             	movhlps xmm7,xmm6
    3a8c:	66 0f fe f7          	paddd  xmm6,xmm7
    3a90:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    3a95:	66 0f fe f7          	paddd  xmm6,xmm7
    3a99:	66 0f 7e f0          	movd   eax,xmm6
    3a9d:	c3                   	ret    
    3a9e:	66 90                	xchg   ax,ax

0000000000003aa0 <x264_8_pixel_sa8d_satd_8x8_internal_sse2>:
    3aa0:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    3aa4:	f3 0f 7e 32          	movq   xmm6,QWORD PTR [rdx]
    3aa8:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    3aac:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    3ab0:	66 0f f9 c6          	psubw  xmm0,xmm6
    3ab4:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    3ab9:	f3 44 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+rcx*1]
    3abf:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    3ac3:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    3ac8:	66 41 0f f9 cb       	psubw  xmm1,xmm11
    3acd:	f3 0f 7e 14 77       	movq   xmm2,QWORD PTR [rdi+rsi*2]
    3ad2:	f3 0f 7e 34 4a       	movq   xmm6,QWORD PTR [rdx+rcx*2]
    3ad7:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    3adb:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    3adf:	66 0f f9 d6          	psubw  xmm2,xmm6
    3ae3:	f3 42 0f 7e 1c 07    	movq   xmm3,QWORD PTR [rdi+r8*1]
    3ae9:	f3 46 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+r9*1]
    3aef:	66 0f 60 df          	punpcklbw xmm3,xmm7
    3af3:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    3af8:	66 41 0f f9 db       	psubw  xmm3,xmm11
    3afd:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    3b01:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    3b05:	0f 28 f0             	movaps xmm6,xmm0
    3b08:	66 0f fd c1          	paddw  xmm0,xmm1
    3b0c:	66 0f f9 ce          	psubw  xmm1,xmm6
    3b10:	0f 28 f2             	movaps xmm6,xmm2
    3b13:	66 0f fd d3          	paddw  xmm2,xmm3
    3b17:	66 0f f9 de          	psubw  xmm3,xmm6
    3b1b:	0f 28 f0             	movaps xmm6,xmm0
    3b1e:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    3b22:	66 0f 69 f1          	punpckhwd xmm6,xmm1
    3b26:	0f 28 ca             	movaps xmm1,xmm2
    3b29:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    3b2d:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    3b31:	0f 28 d8             	movaps xmm3,xmm0
    3b34:	66 0f fd c2          	paddw  xmm0,xmm2
    3b38:	66 0f f9 d3          	psubw  xmm2,xmm3
    3b3c:	0f 28 de             	movaps xmm3,xmm6
    3b3f:	66 0f fd f1          	paddw  xmm6,xmm1
    3b43:	66 0f f9 cb          	psubw  xmm1,xmm3
    3b47:	0f 28 d8             	movaps xmm3,xmm0
    3b4a:	66 0f 62 c2          	punpckldq xmm0,xmm2
    3b4e:	66 0f 6a da          	punpckhdq xmm3,xmm2
    3b52:	0f 28 d0             	movaps xmm2,xmm0
    3b55:	66 0f fd c3          	paddw  xmm0,xmm3
    3b59:	66 0f f9 da          	psubw  xmm3,xmm2
    3b5d:	0f 28 d6             	movaps xmm2,xmm6
    3b60:	66 0f 62 f1          	punpckldq xmm6,xmm1
    3b64:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    3b68:	0f 28 ce             	movaps xmm1,xmm6
    3b6b:	66 0f fd f2          	paddw  xmm6,xmm2
    3b6f:	66 0f f9 d1          	psubw  xmm2,xmm1
    3b73:	44 0f 28 e0          	movaps xmm12,xmm0
    3b77:	44 0f 28 ee          	movaps xmm13,xmm6
    3b7b:	44 0f 28 f3          	movaps xmm14,xmm3
    3b7f:	44 0f 28 fa          	movaps xmm15,xmm2
    3b83:	0f 28 c8             	movaps xmm1,xmm0
    3b86:	66 0f fd c6          	paddw  xmm0,xmm6
    3b8a:	66 0f f9 f1          	psubw  xmm6,xmm1
    3b8e:	0f 28 cb             	movaps xmm1,xmm3
    3b91:	66 0f fd da          	paddw  xmm3,xmm2
    3b95:	66 0f f9 d1          	psubw  xmm2,xmm1
    3b99:	41 0f 28 cc          	movaps xmm1,xmm12
    3b9d:	45 0f 16 e5          	movlhps xmm12,xmm13
    3ba1:	66 41 0f 6d cd       	punpckhqdq xmm1,xmm13
    3ba6:	66 45 0f ef ed       	pxor   xmm13,xmm13
    3bab:	66 45 0f f9 ec       	psubw  xmm13,xmm12
    3bb0:	66 45 0f ee e5       	pmaxsw xmm12,xmm13
    3bb5:	66 45 0f ef ed       	pxor   xmm13,xmm13
    3bba:	66 44 0f f9 e9       	psubw  xmm13,xmm1
    3bbf:	66 41 0f ee cd       	pmaxsw xmm1,xmm13
    3bc4:	66 44 0f ee e1       	pmaxsw xmm12,xmm1
    3bc9:	45 0f 28 ee          	movaps xmm13,xmm14
    3bcd:	45 0f 16 f7          	movlhps xmm14,xmm15
    3bd1:	66 45 0f 6d ef       	punpckhqdq xmm13,xmm15
    3bd6:	66 45 0f fd d4       	paddw  xmm10,xmm12
    3bdb:	66 45 0f ef ff       	pxor   xmm15,xmm15
    3be0:	66 45 0f f9 fe       	psubw  xmm15,xmm14
    3be5:	66 45 0f ee f7       	pmaxsw xmm14,xmm15
    3bea:	66 45 0f ef ff       	pxor   xmm15,xmm15
    3bef:	66 45 0f f9 fd       	psubw  xmm15,xmm13
    3bf4:	66 45 0f ee ef       	pmaxsw xmm13,xmm15
    3bf9:	66 45 0f ee f5       	pmaxsw xmm14,xmm13
    3bfe:	66 45 0f fd d6       	paddw  xmm10,xmm14
    3c03:	f3 0f 7e 27          	movq   xmm4,QWORD PTR [rdi]
    3c07:	f3 44 0f 7e 3a       	movq   xmm15,QWORD PTR [rdx]
    3c0c:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    3c10:	66 44 0f 60 ff       	punpcklbw xmm15,xmm7
    3c15:	66 41 0f f9 e7       	psubw  xmm4,xmm15
    3c1a:	f3 0f 7e 2c 37       	movq   xmm5,QWORD PTR [rdi+rsi*1]
    3c1f:	f3 44 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+rcx*1]
    3c25:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    3c29:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    3c2e:	66 41 0f f9 eb       	psubw  xmm5,xmm11
    3c33:	f3 44 0f 7e 04 77    	movq   xmm8,QWORD PTR [rdi+rsi*2]
    3c39:	f3 44 0f 7e 3c 4a    	movq   xmm15,QWORD PTR [rdx+rcx*2]
    3c3f:	66 44 0f 60 c7       	punpcklbw xmm8,xmm7
    3c44:	66 44 0f 60 ff       	punpcklbw xmm15,xmm7
    3c49:	66 45 0f f9 c7       	psubw  xmm8,xmm15
    3c4e:	f3 46 0f 7e 0c 07    	movq   xmm9,QWORD PTR [rdi+r8*1]
    3c54:	f3 46 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+r9*1]
    3c5a:	66 44 0f 60 cf       	punpcklbw xmm9,xmm7
    3c5f:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    3c64:	66 45 0f f9 cb       	psubw  xmm9,xmm11
    3c69:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    3c6d:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    3c71:	44 0f 28 fc          	movaps xmm15,xmm4
    3c75:	66 0f fd e5          	paddw  xmm4,xmm5
    3c79:	66 41 0f f9 ef       	psubw  xmm5,xmm15
    3c7e:	45 0f 28 f8          	movaps xmm15,xmm8
    3c82:	66 45 0f fd c1       	paddw  xmm8,xmm9
    3c87:	66 45 0f f9 cf       	psubw  xmm9,xmm15
    3c8c:	44 0f 28 fc          	movaps xmm15,xmm4
    3c90:	66 0f 61 e5          	punpcklwd xmm4,xmm5
    3c94:	66 44 0f 69 fd       	punpckhwd xmm15,xmm5
    3c99:	41 0f 28 e8          	movaps xmm5,xmm8
    3c9d:	66 45 0f 61 c1       	punpcklwd xmm8,xmm9
    3ca2:	66 41 0f 69 e9       	punpckhwd xmm5,xmm9
    3ca7:	44 0f 28 cc          	movaps xmm9,xmm4
    3cab:	66 41 0f fd e0       	paddw  xmm4,xmm8
    3cb0:	66 45 0f f9 c1       	psubw  xmm8,xmm9
    3cb5:	45 0f 28 cf          	movaps xmm9,xmm15
    3cb9:	66 44 0f fd fd       	paddw  xmm15,xmm5
    3cbe:	66 41 0f f9 e9       	psubw  xmm5,xmm9
    3cc3:	44 0f 28 cc          	movaps xmm9,xmm4
    3cc7:	66 41 0f 62 e0       	punpckldq xmm4,xmm8
    3ccc:	66 45 0f 6a c8       	punpckhdq xmm9,xmm8
    3cd1:	44 0f 28 c4          	movaps xmm8,xmm4
    3cd5:	66 41 0f fd e1       	paddw  xmm4,xmm9
    3cda:	66 45 0f f9 c8       	psubw  xmm9,xmm8
    3cdf:	45 0f 28 c7          	movaps xmm8,xmm15
    3ce3:	66 44 0f 62 fd       	punpckldq xmm15,xmm5
    3ce8:	66 44 0f 6a c5       	punpckhdq xmm8,xmm5
    3ced:	41 0f 28 ef          	movaps xmm5,xmm15
    3cf1:	66 45 0f fd f8       	paddw  xmm15,xmm8
    3cf6:	66 44 0f f9 c5       	psubw  xmm8,xmm5
    3cfb:	44 0f 28 e4          	movaps xmm12,xmm4
    3cff:	41 0f 28 cf          	movaps xmm1,xmm15
    3d03:	45 0f 28 f1          	movaps xmm14,xmm9
    3d07:	45 0f 28 e8          	movaps xmm13,xmm8
    3d0b:	0f 28 ec             	movaps xmm5,xmm4
    3d0e:	66 41 0f fd e7       	paddw  xmm4,xmm15
    3d13:	66 44 0f f9 fd       	psubw  xmm15,xmm5
    3d18:	41 0f 28 e9          	movaps xmm5,xmm9
    3d1c:	66 45 0f fd c8       	paddw  xmm9,xmm8
    3d21:	66 44 0f f9 c5       	psubw  xmm8,xmm5
    3d26:	41 0f 28 ec          	movaps xmm5,xmm12
    3d2a:	44 0f 16 e1          	movlhps xmm12,xmm1
    3d2e:	66 0f 6d e9          	punpckhqdq xmm5,xmm1
    3d32:	66 0f ef c9          	pxor   xmm1,xmm1
    3d36:	66 41 0f f9 cc       	psubw  xmm1,xmm12
    3d3b:	66 44 0f ee e1       	pmaxsw xmm12,xmm1
    3d40:	66 0f ef c9          	pxor   xmm1,xmm1
    3d44:	66 0f f9 cd          	psubw  xmm1,xmm5
    3d48:	66 0f ee e9          	pmaxsw xmm5,xmm1
    3d4c:	66 44 0f ee e5       	pmaxsw xmm12,xmm5
    3d51:	41 0f 28 ce          	movaps xmm1,xmm14
    3d55:	45 0f 16 f5          	movlhps xmm14,xmm13
    3d59:	66 41 0f 6d cd       	punpckhqdq xmm1,xmm13
    3d5e:	66 45 0f fd d4       	paddw  xmm10,xmm12
    3d63:	66 45 0f ef ed       	pxor   xmm13,xmm13
    3d68:	66 45 0f f9 ee       	psubw  xmm13,xmm14
    3d6d:	66 45 0f ee f5       	pmaxsw xmm14,xmm13
    3d72:	66 45 0f ef ed       	pxor   xmm13,xmm13
    3d77:	66 44 0f f9 e9       	psubw  xmm13,xmm1
    3d7c:	66 41 0f ee cd       	pmaxsw xmm1,xmm13
    3d81:	66 44 0f ee f1       	pmaxsw xmm14,xmm1
    3d86:	66 45 0f fd d6       	paddw  xmm10,xmm14
    3d8b:	44 0f 28 e8          	movaps xmm13,xmm0
    3d8f:	66 0f fd c4          	paddw  xmm0,xmm4
    3d93:	66 41 0f f9 e5       	psubw  xmm4,xmm13
    3d98:	44 0f 28 eb          	movaps xmm13,xmm3
    3d9c:	66 41 0f fd d9       	paddw  xmm3,xmm9
    3da1:	66 45 0f f9 cd       	psubw  xmm9,xmm13
    3da6:	44 0f 28 e8          	movaps xmm13,xmm0
    3daa:	0f 16 c4             	movlhps xmm0,xmm4
    3dad:	66 44 0f 6d ec       	punpckhqdq xmm13,xmm4
    3db2:	66 0f ef e4          	pxor   xmm4,xmm4
    3db6:	66 0f f9 e0          	psubw  xmm4,xmm0
    3dba:	66 0f ee c4          	pmaxsw xmm0,xmm4
    3dbe:	66 0f ef e4          	pxor   xmm4,xmm4
    3dc2:	66 41 0f f9 e5       	psubw  xmm4,xmm13
    3dc7:	66 44 0f ee ec       	pmaxsw xmm13,xmm4
    3dcc:	66 41 0f ee c5       	pmaxsw xmm0,xmm13
    3dd1:	0f 28 e3             	movaps xmm4,xmm3
    3dd4:	41 0f 16 d9          	movlhps xmm3,xmm9
    3dd8:	66 41 0f 6d e1       	punpckhqdq xmm4,xmm9
    3ddd:	66 45 0f ef c9       	pxor   xmm9,xmm9
    3de2:	66 44 0f f9 cb       	psubw  xmm9,xmm3
    3de7:	66 41 0f ee d9       	pmaxsw xmm3,xmm9
    3dec:	66 45 0f ef c9       	pxor   xmm9,xmm9
    3df1:	66 44 0f f9 cc       	psubw  xmm9,xmm4
    3df6:	66 41 0f ee e1       	pmaxsw xmm4,xmm9
    3dfb:	66 0f ee dc          	pmaxsw xmm3,xmm4
    3dff:	44 0f 28 ce          	movaps xmm9,xmm6
    3e03:	66 41 0f fd f7       	paddw  xmm6,xmm15
    3e08:	66 45 0f f9 f9       	psubw  xmm15,xmm9
    3e0d:	44 0f 28 ca          	movaps xmm9,xmm2
    3e11:	66 41 0f fd d0       	paddw  xmm2,xmm8
    3e16:	66 45 0f f9 c1       	psubw  xmm8,xmm9
    3e1b:	44 0f 28 ce          	movaps xmm9,xmm6
    3e1f:	41 0f 16 f7          	movlhps xmm6,xmm15
    3e23:	66 45 0f 6d cf       	punpckhqdq xmm9,xmm15
    3e28:	66 45 0f ef ff       	pxor   xmm15,xmm15
    3e2d:	66 44 0f f9 fe       	psubw  xmm15,xmm6
    3e32:	66 41 0f ee f7       	pmaxsw xmm6,xmm15
    3e37:	66 45 0f ef ff       	pxor   xmm15,xmm15
    3e3c:	66 45 0f f9 f9       	psubw  xmm15,xmm9
    3e41:	66 45 0f ee cf       	pmaxsw xmm9,xmm15
    3e46:	66 41 0f ee f1       	pmaxsw xmm6,xmm9
    3e4b:	44 0f 28 fa          	movaps xmm15,xmm2
    3e4f:	41 0f 16 d0          	movlhps xmm2,xmm8
    3e53:	66 45 0f 6d f8       	punpckhqdq xmm15,xmm8
    3e58:	66 45 0f ef c0       	pxor   xmm8,xmm8
    3e5d:	66 44 0f f9 c2       	psubw  xmm8,xmm2
    3e62:	66 41 0f ee d0       	pmaxsw xmm2,xmm8
    3e67:	66 45 0f ef c0       	pxor   xmm8,xmm8
    3e6c:	66 45 0f f9 c7       	psubw  xmm8,xmm15
    3e71:	66 45 0f ee f8       	pmaxsw xmm15,xmm8
    3e76:	66 41 0f ee d7       	pmaxsw xmm2,xmm15
    3e7b:	66 0f fd f3          	paddw  xmm6,xmm3
    3e7f:	66 0f fd c2          	paddw  xmm0,xmm2
    3e83:	66 0f fd c6          	paddw  xmm0,xmm6
    3e87:	c3                   	ret    
    3e88:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    3e8f:	00 

0000000000003e90 <x264_8_pixel_sa8d_satd_16x16_sse2>:
    3e90:	48 83 ec 48          	sub    rsp,0x48
    3e94:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    3e98:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    3e9c:	66 45 0f ef d2       	pxor   xmm10,xmm10
    3ea1:	48 8d 42 08          	lea    rax,[rdx+0x8]
    3ea5:	4c 8d 57 08          	lea    r10,[rdi+0x8]
    3ea9:	e8 f2 fb ff ff       	call   3aa0 <x264_8_pixel_sa8d_satd_8x8_internal_sse2>
    3eae:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    3eb2:	e8 e9 fb ff ff       	call   3aa0 <x264_8_pixel_sa8d_satd_8x8_internal_sse2>
    3eb7:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    3ebc:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    3ec0:	4c 89 d7             	mov    rdi,r10
    3ec3:	48 89 c2             	mov    rdx,rax
    3ec6:	e8 d5 fb ff ff       	call   3aa0 <x264_8_pixel_sa8d_satd_8x8_internal_sse2>
    3ecb:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    3ed0:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    3ed4:	e8 c7 fb ff ff       	call   3aa0 <x264_8_pixel_sa8d_satd_8x8_internal_sse2>
    3ed9:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    3ede:	66 0f 6f f0          	movdqa xmm6,xmm0
    3ee2:	66 0f 72 d6 10       	psrld  xmm6,0x10
    3ee7:	66 0f 72 f0 10       	pslld  xmm0,0x10
    3eec:	66 0f 72 d0 10       	psrld  xmm0,0x10
    3ef1:	66 0f fe c6          	paddd  xmm0,xmm6
    3ef5:	0f 12 f0             	movhlps xmm6,xmm0
    3ef8:	66 0f fe c6          	paddd  xmm0,xmm6
    3efc:	f2 0f 70 f0 4e       	pshuflw xmm6,xmm0,0x4e
    3f01:	66 0f fe c6          	paddd  xmm0,xmm6
    3f05:	66 44 0f f5 15 00 00 	pmaddwd xmm10,XMMWORD PTR [rip+0x0]        # 3f0e <x264_8_pixel_sa8d_satd_16x16_sse2+0x7e>
    3f0c:	00 00 
    3f0e:	41 0f 12 da          	movhlps xmm3,xmm10
    3f12:	66 44 0f fe d3       	paddd  xmm10,xmm3
    3f17:	f2 41 0f 70 da 4e    	pshuflw xmm3,xmm10,0x4e
    3f1d:	66 44 0f fe d3       	paddd  xmm10,xmm3
    3f22:	66 0f 7e c7          	movd   edi,xmm0
    3f26:	66 44 0f 7e d0       	movd   eax,xmm10
    3f2b:	83 c7 01             	add    edi,0x1
    3f2e:	48 c1 e0 20          	shl    rax,0x20
    3f32:	d1 ef                	shr    edi,1
    3f34:	48 09 f8             	or     rax,rdi
    3f37:	48 83 c4 48          	add    rsp,0x48
    3f3b:	c3                   	ret    
    3f3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000003f40 <x264_8_intra_sa8d_x3_8x8_sse2>:
    3f40:	66 45 0f ef c0       	pxor   xmm8,xmm8
    3f45:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    3f49:	f3 0f 7e 4f 10       	movq   xmm1,QWORD PTR [rdi+0x10]
    3f4e:	f3 0f 7e 57 20       	movq   xmm2,QWORD PTR [rdi+0x20]
    3f53:	f3 0f 7e 5f 30       	movq   xmm3,QWORD PTR [rdi+0x30]
    3f58:	f3 0f 7e 67 40       	movq   xmm4,QWORD PTR [rdi+0x40]
    3f5d:	f3 0f 7e 6f 50       	movq   xmm5,QWORD PTR [rdi+0x50]
    3f62:	f3 0f 7e 77 60       	movq   xmm6,QWORD PTR [rdi+0x60]
    3f67:	f3 0f 7e 7f 70       	movq   xmm7,QWORD PTR [rdi+0x70]
    3f6c:	66 41 0f 60 c0       	punpcklbw xmm0,xmm8
    3f71:	66 41 0f 60 c8       	punpcklbw xmm1,xmm8
    3f76:	66 41 0f 60 d0       	punpcklbw xmm2,xmm8
    3f7b:	66 41 0f 60 d8       	punpcklbw xmm3,xmm8
    3f80:	66 41 0f 60 e0       	punpcklbw xmm4,xmm8
    3f85:	66 41 0f 60 e8       	punpcklbw xmm5,xmm8
    3f8a:	66 41 0f 60 f0       	punpcklbw xmm6,xmm8
    3f8f:	66 41 0f 60 f8       	punpcklbw xmm7,xmm8
    3f94:	44 0f 28 c0          	movaps xmm8,xmm0
    3f98:	66 0f fd c1          	paddw  xmm0,xmm1
    3f9c:	66 41 0f f9 c8       	psubw  xmm1,xmm8
    3fa1:	44 0f 28 c2          	movaps xmm8,xmm2
    3fa5:	66 0f fd d3          	paddw  xmm2,xmm3
    3fa9:	66 41 0f f9 d8       	psubw  xmm3,xmm8
    3fae:	44 0f 28 c0          	movaps xmm8,xmm0
    3fb2:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    3fb6:	66 44 0f 69 c1       	punpckhwd xmm8,xmm1
    3fbb:	0f 28 c8             	movaps xmm1,xmm0
    3fbe:	66 41 0f fd c0       	paddw  xmm0,xmm8
    3fc3:	66 44 0f f9 c1       	psubw  xmm8,xmm1
    3fc8:	0f 28 ca             	movaps xmm1,xmm2
    3fcb:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    3fcf:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    3fd3:	0f 28 da             	movaps xmm3,xmm2
    3fd6:	66 0f fd d1          	paddw  xmm2,xmm1
    3fda:	66 0f f9 cb          	psubw  xmm1,xmm3
    3fde:	0f 28 dc             	movaps xmm3,xmm4
    3fe1:	66 0f fd e5          	paddw  xmm4,xmm5
    3fe5:	66 0f f9 eb          	psubw  xmm5,xmm3
    3fe9:	0f 28 de             	movaps xmm3,xmm6
    3fec:	66 0f fd f7          	paddw  xmm6,xmm7
    3ff0:	66 0f f9 fb          	psubw  xmm7,xmm3
    3ff4:	0f 28 dc             	movaps xmm3,xmm4
    3ff7:	66 0f 61 e5          	punpcklwd xmm4,xmm5
    3ffb:	66 0f 69 dd          	punpckhwd xmm3,xmm5
    3fff:	0f 28 ec             	movaps xmm5,xmm4
    4002:	66 0f fd e3          	paddw  xmm4,xmm3
    4006:	66 0f f9 dd          	psubw  xmm3,xmm5
    400a:	0f 28 ee             	movaps xmm5,xmm6
    400d:	66 0f 61 f7          	punpcklwd xmm6,xmm7
    4011:	66 0f 69 ef          	punpckhwd xmm5,xmm7
    4015:	0f 28 fe             	movaps xmm7,xmm6
    4018:	66 0f fd f5          	paddw  xmm6,xmm5
    401c:	66 0f f9 ef          	psubw  xmm5,xmm7
    4020:	0f 28 f8             	movaps xmm7,xmm0
    4023:	66 0f fd c2          	paddw  xmm0,xmm2
    4027:	66 0f f9 d7          	psubw  xmm2,xmm7
    402b:	41 0f 28 f8          	movaps xmm7,xmm8
    402f:	66 44 0f fd c1       	paddw  xmm8,xmm1
    4034:	66 0f f9 cf          	psubw  xmm1,xmm7
    4038:	0f 28 f8             	movaps xmm7,xmm0
    403b:	66 0f 62 c2          	punpckldq xmm0,xmm2
    403f:	66 0f 6a fa          	punpckhdq xmm7,xmm2
    4043:	0f 28 d0             	movaps xmm2,xmm0
    4046:	66 0f fd c7          	paddw  xmm0,xmm7
    404a:	66 0f f9 fa          	psubw  xmm7,xmm2
    404e:	41 0f 28 d0          	movaps xmm2,xmm8
    4052:	66 44 0f 62 c1       	punpckldq xmm8,xmm1
    4057:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    405b:	41 0f 28 c8          	movaps xmm1,xmm8
    405f:	66 44 0f fd c2       	paddw  xmm8,xmm2
    4064:	66 0f f9 d1          	psubw  xmm2,xmm1
    4068:	0f 28 cc             	movaps xmm1,xmm4
    406b:	66 0f fd e6          	paddw  xmm4,xmm6
    406f:	66 0f f9 f1          	psubw  xmm6,xmm1
    4073:	0f 28 cb             	movaps xmm1,xmm3
    4076:	66 0f fd dd          	paddw  xmm3,xmm5
    407a:	66 0f f9 e9          	psubw  xmm5,xmm1
    407e:	0f 28 cc             	movaps xmm1,xmm4
    4081:	66 0f 62 e6          	punpckldq xmm4,xmm6
    4085:	66 0f 6a ce          	punpckhdq xmm1,xmm6
    4089:	0f 28 f4             	movaps xmm6,xmm4
    408c:	66 0f fd e1          	paddw  xmm4,xmm1
    4090:	66 0f f9 ce          	psubw  xmm1,xmm6
    4094:	0f 28 f3             	movaps xmm6,xmm3
    4097:	66 0f 62 dd          	punpckldq xmm3,xmm5
    409b:	66 0f 6a f5          	punpckhdq xmm6,xmm5
    409f:	0f 28 eb             	movaps xmm5,xmm3
    40a2:	66 0f fd de          	paddw  xmm3,xmm6
    40a6:	66 0f f9 f5          	psubw  xmm6,xmm5
    40aa:	0f 28 e8             	movaps xmm5,xmm0
    40ad:	66 0f fd c4          	paddw  xmm0,xmm4
    40b1:	66 0f f9 e5          	psubw  xmm4,xmm5
    40b5:	0f 28 ef             	movaps xmm5,xmm7
    40b8:	66 0f fd f9          	paddw  xmm7,xmm1
    40bc:	66 0f f9 cd          	psubw  xmm1,xmm5
    40c0:	0f 28 e8             	movaps xmm5,xmm0
    40c3:	0f 16 c4             	movlhps xmm0,xmm4
    40c6:	66 0f 6d ec          	punpckhqdq xmm5,xmm4
    40ca:	0f 28 e0             	movaps xmm4,xmm0
    40cd:	66 0f fd c5          	paddw  xmm0,xmm5
    40d1:	66 0f f9 ec          	psubw  xmm5,xmm4
    40d5:	0f 28 e7             	movaps xmm4,xmm7
    40d8:	0f 16 f9             	movlhps xmm7,xmm1
    40db:	66 0f 6d e1          	punpckhqdq xmm4,xmm1
    40df:	0f 28 cf             	movaps xmm1,xmm7
    40e2:	66 0f fd fc          	paddw  xmm7,xmm4
    40e6:	66 0f f9 e1          	psubw  xmm4,xmm1
    40ea:	41 0f 28 c8          	movaps xmm1,xmm8
    40ee:	66 44 0f fd c3       	paddw  xmm8,xmm3
    40f3:	66 0f f9 d9          	psubw  xmm3,xmm1
    40f7:	0f 28 ca             	movaps xmm1,xmm2
    40fa:	66 0f fd d6          	paddw  xmm2,xmm6
    40fe:	66 0f f9 f1          	psubw  xmm6,xmm1
    4102:	41 0f 28 c8          	movaps xmm1,xmm8
    4106:	44 0f 16 c3          	movlhps xmm8,xmm3
    410a:	66 0f 6d cb          	punpckhqdq xmm1,xmm3
    410e:	41 0f 28 d8          	movaps xmm3,xmm8
    4112:	66 44 0f fd c1       	paddw  xmm8,xmm1
    4117:	66 0f f9 cb          	psubw  xmm1,xmm3
    411b:	0f 28 da             	movaps xmm3,xmm2
    411e:	0f 16 d6             	movlhps xmm2,xmm6
    4121:	66 0f 6d de          	punpckhqdq xmm3,xmm6
    4125:	0f 28 f2             	movaps xmm6,xmm2
    4128:	66 0f fd d3          	paddw  xmm2,xmm3
    412c:	66 0f f9 de          	psubw  xmm3,xmm6
    4130:	66 0f ef f6          	pxor   xmm6,xmm6
    4134:	66 45 0f ef c9       	pxor   xmm9,xmm9
    4139:	66 0f f9 f7          	psubw  xmm6,xmm7
    413d:	66 44 0f f9 cc       	psubw  xmm9,xmm4
    4142:	66 0f ee f7          	pmaxsw xmm6,xmm7
    4146:	66 44 0f ee cc       	pmaxsw xmm9,xmm4
    414b:	66 45 0f ef d2       	pxor   xmm10,xmm10
    4150:	66 45 0f ef db       	pxor   xmm11,xmm11
    4155:	66 45 0f f9 d0       	psubw  xmm10,xmm8
    415a:	66 44 0f f9 d9       	psubw  xmm11,xmm1
    415f:	66 45 0f ee d0       	pmaxsw xmm10,xmm8
    4164:	66 44 0f ee d9       	pmaxsw xmm11,xmm1
    4169:	66 41 0f fd f2       	paddw  xmm6,xmm10
    416e:	66 45 0f fd cb       	paddw  xmm9,xmm11
    4173:	66 45 0f ef d2       	pxor   xmm10,xmm10
    4178:	66 45 0f ef db       	pxor   xmm11,xmm11
    417d:	66 44 0f f9 d2       	psubw  xmm10,xmm2
    4182:	66 44 0f f9 db       	psubw  xmm11,xmm3
    4187:	66 44 0f ee d2       	pmaxsw xmm10,xmm2
    418c:	66 44 0f ee db       	pmaxsw xmm11,xmm3
    4191:	66 45 0f ef e4       	pxor   xmm12,xmm12
    4196:	66 44 0f f9 e5       	psubw  xmm12,xmm5
    419b:	66 44 0f ee e5       	pmaxsw xmm12,xmm5
    41a0:	66 45 0f fd d3       	paddw  xmm10,xmm11
    41a5:	66 41 0f fd f1       	paddw  xmm6,xmm9
    41aa:	66 45 0f fd e2       	paddw  xmm12,xmm10
    41af:	66 44 0f fd e6       	paddw  xmm12,xmm6
    41b4:	f3 0f 7e 76 07       	movq   xmm6,QWORD PTR [rsi+0x7]
    41b9:	f3 44 0f 7e 4e 10    	movq   xmm9,QWORD PTR [rsi+0x10]
    41bf:	66 45 0f ef d2       	pxor   xmm10,xmm10
    41c4:	66 41 0f 60 f2       	punpcklbw xmm6,xmm10
    41c9:	66 45 0f 60 ca       	punpcklbw xmm9,xmm10
    41ce:	66 44 0f 70 d6 4e    	pshufd xmm10,xmm6,0x4e
    41d4:	66 45 0f 70 d9 4e    	pshufd xmm11,xmm9,0x4e
    41da:	66 0f d5 35 00 00 00 	pmullw xmm6,XMMWORD PTR [rip+0x0]        # 41e2 <x264_8_intra_sa8d_x3_8x8_sse2+0x2a2>
    41e1:	00 
    41e2:	66 44 0f d5 1d 00 00 	pmullw xmm11,XMMWORD PTR [rip+0x0]        # 41eb <x264_8_intra_sa8d_x3_8x8_sse2+0x2ab>
    41e9:	00 00 
    41eb:	66 41 0f fd f2       	paddw  xmm6,xmm10
    41f0:	66 45 0f fd cb       	paddw  xmm9,xmm11
    41f5:	66 44 0f 70 d6 b1    	pshufd xmm10,xmm6,0xb1
    41fb:	66 45 0f 70 d9 b1    	pshufd xmm11,xmm9,0xb1
    4201:	66 0f d5 35 00 00 00 	pmullw xmm6,XMMWORD PTR [rip+0x0]        # 4209 <x264_8_intra_sa8d_x3_8x8_sse2+0x2c9>
    4208:	00 
    4209:	66 44 0f d5 1d 00 00 	pmullw xmm11,XMMWORD PTR [rip+0x0]        # 4212 <x264_8_intra_sa8d_x3_8x8_sse2+0x2d2>
    4210:	00 00 
    4212:	66 41 0f fd f2       	paddw  xmm6,xmm10
    4217:	66 45 0f fd cb       	paddw  xmm9,xmm11
    421c:	f2 44 0f 70 d6 b1    	pshuflw xmm10,xmm6,0xb1
    4222:	f2 45 0f 70 d9 b1    	pshuflw xmm11,xmm9,0xb1
    4228:	f3 45 0f 70 d2 b1    	pshufhw xmm10,xmm10,0xb1
    422e:	f3 45 0f 70 db b1    	pshufhw xmm11,xmm11,0xb1
    4234:	66 0f d5 35 00 00 00 	pmullw xmm6,XMMWORD PTR [rip+0x0]        # 423c <x264_8_intra_sa8d_x3_8x8_sse2+0x2fc>
    423b:	00 
    423c:	66 44 0f d5 1d 00 00 	pmullw xmm11,XMMWORD PTR [rip+0x0]        # 4245 <x264_8_intra_sa8d_x3_8x8_sse2+0x305>
    4243:	00 00 
    4245:	66 41 0f fd f2       	paddw  xmm6,xmm10
    424a:	66 45 0f fd cb       	paddw  xmm9,xmm11
    424f:	66 44 0f 6f d6       	movdqa xmm10,xmm6
    4254:	66 45 0f fd d1       	paddw  xmm10,xmm9
    4259:	66 44 0f fd 15 00 00 	paddw  xmm10,XMMWORD PTR [rip+0x0]        # 4262 <x264_8_intra_sa8d_x3_8x8_sse2+0x322>
    4260:	00 00 
    4262:	66 44 0f db 15 00 00 	pand   xmm10,XMMWORD PTR [rip+0x0]        # 426b <x264_8_intra_sa8d_x3_8x8_sse2+0x32b>
    4269:	00 00 
    426b:	66 0f 71 f6 03       	psllw  xmm6,0x3
    4270:	66 41 0f 71 f2 02    	psllw  xmm10,0x2
    4276:	66 0f f9 f0          	psubw  xmm6,xmm0
    427a:	66 44 0f f9 d0       	psubw  xmm10,xmm0
    427f:	66 0f 61 c5          	punpcklwd xmm0,xmm5
    4283:	66 0f 61 fc          	punpcklwd xmm7,xmm4
    4287:	66 44 0f 61 c1       	punpcklwd xmm8,xmm1
    428c:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    4290:	66 0f ef ed          	pxor   xmm5,xmm5
    4294:	66 41 0f f9 ea       	psubw  xmm5,xmm10
    4299:	66 44 0f ee d5       	pmaxsw xmm10,xmm5
    429e:	66 45 0f fd d4       	paddw  xmm10,xmm12
    42a3:	66 0f 62 c7          	punpckldq xmm0,xmm7
    42a7:	66 44 0f 62 c2       	punpckldq xmm8,xmm2
    42ac:	41 0f 16 c0          	movlhps xmm0,xmm8
    42b0:	66 41 0f 71 f1 03    	psllw  xmm9,0x3
    42b6:	66 41 0f 6f fa       	movdqa xmm7,xmm10
    42bb:	66 0f 73 df 02       	psrldq xmm7,0x2
    42c0:	66 41 0f f9 c1       	psubw  xmm0,xmm9
    42c5:	66 0f ef ed          	pxor   xmm5,xmm5
    42c9:	66 0f ef e4          	pxor   xmm4,xmm4
    42cd:	66 0f f9 ee          	psubw  xmm5,xmm6
    42d1:	66 0f f9 e0          	psubw  xmm4,xmm0
    42d5:	66 0f ee f5          	pmaxsw xmm6,xmm5
    42d9:	66 0f ee c4          	pmaxsw xmm0,xmm4
    42dd:	66 41 0f fd f4       	paddw  xmm6,xmm12
    42e2:	66 0f dd f8          	paddusw xmm7,xmm0
    42e6:	0f 28 1d 00 00 00 00 	movaps xmm3,XMMWORD PTR [rip+0x0]        # 42ed <x264_8_intra_sa8d_x3_8x8_sse2+0x3ad>
    42ed:	66 0f 6f c3          	movdqa xmm0,xmm3
    42f1:	66 41 0f df c2       	pandn  xmm0,xmm10
    42f6:	66 41 0f 72 d2 10    	psrld  xmm10,0x10
    42fc:	66 0f 6f eb          	movdqa xmm5,xmm3
    4300:	66 0f df ee          	pandn  xmm5,xmm6
    4304:	66 0f 72 d6 10       	psrld  xmm6,0x10
    4309:	66 0f df df          	pandn  xmm3,xmm7
    430d:	66 0f 72 d7 10       	psrld  xmm7,0x10
    4312:	66 41 0f fe c2       	paddd  xmm0,xmm10
    4317:	66 0f fe ee          	paddd  xmm5,xmm6
    431b:	66 0f fe fb          	paddd  xmm7,xmm3
    431f:	66 0f 70 e0 b1       	pshufd xmm4,xmm0,0xb1
    4324:	66 44 0f 6f c7       	movdqa xmm8,xmm7
    4329:	66 44 0f 6a c5       	punpckhdq xmm8,xmm5
    432e:	66 0f 62 fd          	punpckldq xmm7,xmm5
    4332:	66 0f fe e0          	paddd  xmm4,xmm0
    4336:	66 41 0f fe f8       	paddd  xmm7,xmm8
    433b:	66 0f 6f c7          	movdqa xmm0,xmm7
    433f:	66 0f 6d c4          	punpckhqdq xmm0,xmm4
    4343:	0f 16 fc             	movlhps xmm7,xmm4
    4346:	66 0f fe 05 00 00 00 	paddd  xmm0,XMMWORD PTR [rip+0x0]        # 434e <x264_8_intra_sa8d_x3_8x8_sse2+0x40e>
    434d:	00 
    434e:	66 0f fe c7          	paddd  xmm0,xmm7
    4352:	66 0f 72 d0 02       	psrld  xmm0,0x2
    4357:	0f 29 02             	movaps XMMWORD PTR [rdx],xmm0
    435a:	c3                   	ret    
    435b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000004360 <x264_8_intra_satd_x3_4x4_mmx2>:
    4360:	e8 9b e4 ff ff       	call   2800 <x264_8_hadamard_load>
    4365:	0f 6e 4e 1c          	movd   mm1,DWORD PTR [rsi+0x1c]
    4369:	0f c4 4e fe 00       	pinsrw mm1,WORD PTR [rsi-0x2],0x0
    436e:	0f c4 4e 3e 02       	pinsrw mm1,WORD PTR [rsi+0x3e],0x2
    4373:	0f c4 4e 5e 03       	pinsrw mm1,WORD PTR [rsi+0x5e],0x3
    4378:	0f 71 d1 08          	psrlw  mm1,0x8
    437c:	0f 70 e9 4e          	pshufw mm5,mm1,0x4e
    4380:	0f d5 2d 00 00 00 00 	pmullw mm5,QWORD PTR [rip+0x0]        # 4387 <x264_8_intra_satd_x3_4x4_mmx2+0x27>
    4387:	0f fd cd             	paddw  mm1,mm5
    438a:	0f 70 e9 b1          	pshufw mm5,mm1,0xb1
    438e:	0f d5 2d 00 00 00 00 	pmullw mm5,QWORD PTR [rip+0x0]        # 4395 <x264_8_intra_satd_x3_4x4_mmx2+0x35>
    4395:	0f fd cd             	paddw  mm1,mm5
    4398:	0f 71 f1 02          	psllw  mm1,0x2
    439c:	0f 7f 4c 24 f0       	movq   QWORD PTR [rsp-0x10],mm1
    43a1:	0f 6e 76 e0          	movd   mm6,DWORD PTR [rsi-0x20]
    43a5:	0f ef ff             	pxor   mm7,mm7
    43a8:	0f 60 f7             	punpcklbw mm6,mm7
    43ab:	0f 70 ee 4e          	pshufw mm5,mm6,0x4e
    43af:	0f d5 2d 00 00 00 00 	pmullw mm5,QWORD PTR [rip+0x0]        # 43b6 <x264_8_intra_satd_x3_4x4_mmx2+0x56>
    43b6:	0f fd f5             	paddw  mm6,mm5
    43b9:	0f 70 ee b1          	pshufw mm5,mm6,0xb1
    43bd:	0f d5 2d 00 00 00 00 	pmullw mm5,QWORD PTR [rip+0x0]        # 43c4 <x264_8_intra_satd_x3_4x4_mmx2+0x64>
    43c4:	0f fd f5             	paddw  mm6,mm5
    43c7:	0f 71 f6 02          	psllw  mm6,0x2
    43cb:	0f 7f 74 24 f8       	movq   QWORD PTR [rsp-0x8],mm6
    43d0:	0f fd f1             	paddw  mm6,mm1
    43d3:	0f e3 35 00 00 00 00 	pavgw  mm6,QWORD PTR [rip+0x0]        # 43da <x264_8_intra_satd_x3_4x4_mmx2+0x7a>
    43da:	0f db 35 00 00 00 00 	pand   mm6,QWORD PTR [rip+0x0]        # 43e1 <x264_8_intra_satd_x3_4x4_mmx2+0x81>
    43e1:	0f ef c9             	pxor   mm1,mm1
    43e4:	0f ef ed             	pxor   mm5,mm5
    43e7:	0f f9 cb             	psubw  mm1,mm3
    43ea:	0f f9 ec             	psubw  mm5,mm4
    43ed:	0f ee cb             	pmaxsw mm1,mm3
    43f0:	0f ee ec             	pmaxsw mm5,mm4
    43f3:	0f ef ff             	pxor   mm7,mm7
    43f6:	0f f9 fa             	psubw  mm7,mm2
    43f9:	0f ee fa             	pmaxsw mm7,mm2
    43fc:	0f fd cd             	paddw  mm1,mm5
    43ff:	0f fd f9             	paddw  mm7,mm1
    4402:	0f 6f 4c 24 f0       	movq   mm1,QWORD PTR [rsp-0x10]
    4407:	0f 6f ee             	movq   mm5,mm6
    440a:	0f f9 c8             	psubw  mm1,mm0
    440d:	0f f9 e8             	psubw  mm5,mm0
    4410:	0f 61 c3             	punpcklwd mm0,mm3
    4413:	0f 61 e2             	punpcklwd mm4,mm2
    4416:	0f 62 c4             	punpckldq mm0,mm4
    4419:	0f f9 44 24 f8       	psubw  mm0,QWORD PTR [rsp-0x8]
    441e:	0f ef e4             	pxor   mm4,mm4
    4421:	0f ef d2             	pxor   mm2,mm2
    4424:	0f f9 e1             	psubw  mm4,mm1
    4427:	0f f9 d5             	psubw  mm2,mm5
    442a:	0f ee cc             	pmaxsw mm1,mm4
    442d:	0f ee ea             	pmaxsw mm5,mm2
    4430:	0f ef db             	pxor   mm3,mm3
    4433:	0f f9 d8             	psubw  mm3,mm0
    4436:	0f ee c3             	pmaxsw mm0,mm3
    4439:	0f fd cf             	paddw  mm1,mm7
    443c:	0f fd ef             	paddw  mm5,mm7
    443f:	0f 6f dd             	movq   mm3,mm5
    4442:	0f 73 d3 10          	psrlq  mm3,0x10
    4446:	0f fd c3             	paddw  mm0,mm3
    4449:	0f ef f6             	pxor   mm6,mm6
    444c:	0f 70 d8 4e          	pshufw mm3,mm0,0x4e
    4450:	0f 70 e1 4e          	pshufw mm4,mm1,0x4e
    4454:	0f 70 d5 4e          	pshufw mm2,mm5,0x4e
    4458:	0f fd c3             	paddw  mm0,mm3
    445b:	0f fd cc             	paddw  mm1,mm4
    445e:	0f fd ea             	paddw  mm5,mm2
    4461:	0f 61 c6             	punpcklwd mm0,mm6
    4464:	0f 61 ce             	punpcklwd mm1,mm6
    4467:	0f 61 ee             	punpcklwd mm5,mm6
    446a:	0f 70 d8 4e          	pshufw mm3,mm0,0x4e
    446e:	0f 70 e1 4e          	pshufw mm4,mm1,0x4e
    4472:	0f 70 d5 4e          	pshufw mm2,mm5,0x4e
    4476:	0f e3 c3             	pavgw  mm0,mm3
    4479:	0f e3 cc             	pavgw  mm1,mm4
    447c:	0f e3 ea             	pavgw  mm5,mm2
    447f:	0f 7e 02             	movd   DWORD PTR [rdx],mm0
    4482:	0f 7e 4a 04          	movd   DWORD PTR [rdx+0x4],mm1
    4486:	0f 7e 6a 08          	movd   DWORD PTR [rdx+0x8],mm5
    448a:	c3                   	ret    
    448b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000004490 <x264_8_intra_satd_x3_16x16_mmx2>:
    4490:	48 83 ec 78          	sub    rsp,0x78
    4494:	0f ef ff             	pxor   mm7,mm7
    4497:	0f 7f 7c 24 40       	movq   QWORD PTR [rsp+0x40],mm7
    449c:	0f 7f 7c 24 48       	movq   QWORD PTR [rsp+0x48],mm7
    44a1:	0f 7f 7c 24 50       	movq   QWORD PTR [rsp+0x50],mm7
    44a6:	b9 0c 00 00 00       	mov    ecx,0xc
    44ab:	0f 6e 35 00 00 00 00 	movd   mm6,DWORD PTR [rip+0x0]        # 44b2 <x264_8_intra_satd_x3_16x16_mmx2+0x22>
    44b2:	c1 e1 05             	shl    ecx,0x5
    44b5:	0f 6e 44 31 1c       	movd   mm0,DWORD PTR [rcx+rsi*1+0x1c]
    44ba:	0f c4 44 31 fe 00    	pinsrw mm0,WORD PTR [rcx+rsi*1-0x2],0x0
    44c0:	0f c4 44 31 3e 02    	pinsrw mm0,WORD PTR [rcx+rsi*1+0x3e],0x2
    44c6:	0f c4 44 31 5e 03    	pinsrw mm0,WORD PTR [rcx+rsi*1+0x5e],0x3
    44cc:	0f 71 d0 08          	psrlw  mm0,0x8
    44d0:	c1 e9 05             	shr    ecx,0x5
    44d3:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    44d7:	0f d5 0d 00 00 00 00 	pmullw mm1,QWORD PTR [rip+0x0]        # 44de <x264_8_intra_satd_x3_16x16_mmx2+0x4e>
    44de:	0f fd c1             	paddw  mm0,mm1
    44e1:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    44e5:	0f d5 0d 00 00 00 00 	pmullw mm1,QWORD PTR [rip+0x0]        # 44ec <x264_8_intra_satd_x3_16x16_mmx2+0x5c>
    44ec:	0f fd c1             	paddw  mm0,mm1
    44ef:	0f 71 f0 02          	psllw  mm0,0x2
    44f3:	0f 7f 04 4c          	movq   QWORD PTR [rsp+rcx*2],mm0
    44f7:	0f 6e 4c 0e e0       	movd   mm1,DWORD PTR [rsi+rcx*1-0x20]
    44fc:	0f ef db             	pxor   mm3,mm3
    44ff:	0f 60 cb             	punpcklbw mm1,mm3
    4502:	0f 70 d1 4e          	pshufw mm2,mm1,0x4e
    4506:	0f d5 15 00 00 00 00 	pmullw mm2,QWORD PTR [rip+0x0]        # 450d <x264_8_intra_satd_x3_16x16_mmx2+0x7d>
    450d:	0f fd ca             	paddw  mm1,mm2
    4510:	0f 70 d1 b1          	pshufw mm2,mm1,0xb1
    4514:	0f d5 15 00 00 00 00 	pmullw mm2,QWORD PTR [rip+0x0]        # 451b <x264_8_intra_satd_x3_16x16_mmx2+0x8b>
    451b:	0f fd ca             	paddw  mm1,mm2
    451e:	0f 71 f1 02          	psllw  mm1,0x2
    4522:	0f 7f 4c 4c 20       	movq   QWORD PTR [rsp+rcx*2+0x20],mm1
    4527:	0f e3 c1             	pavgw  mm0,mm1
    452a:	0f fd f0             	paddw  mm6,mm0
    452d:	83 e9 04             	sub    ecx,0x4
    4530:	7d 80                	jge    44b2 <x264_8_intra_satd_x3_16x16_mmx2+0x22>
    4532:	0f 71 d6 02          	psrlw  mm6,0x2
    4536:	0f db 35 00 00 00 00 	pand   mm6,QWORD PTR [rip+0x0]        # 453d <x264_8_intra_satd_x3_16x16_mmx2+0xad>
    453d:	48 c7 c1 fc ff ff ff 	mov    rcx,0xfffffffffffffffc
    4544:	49 c7 c0 fc ff ff ff 	mov    r8,0xfffffffffffffffc
    454b:	e8 b0 e2 ff ff       	call   2800 <x264_8_hadamard_load>
    4550:	0f ef c9             	pxor   mm1,mm1
    4553:	0f ef ed             	pxor   mm5,mm5
    4556:	0f f9 cb             	psubw  mm1,mm3
    4559:	0f f9 ec             	psubw  mm5,mm4
    455c:	0f ee cb             	pmaxsw mm1,mm3
    455f:	0f ee ec             	pmaxsw mm5,mm4
    4562:	0f ef ff             	pxor   mm7,mm7
    4565:	0f f9 fa             	psubw  mm7,mm2
    4568:	0f ee fa             	pmaxsw mm7,mm2
    456b:	0f fd cd             	paddw  mm1,mm5
    456e:	0f fd f9             	paddw  mm7,mm1
    4571:	0f 6f 4c cc 20       	movq   mm1,QWORD PTR [rsp+rcx*8+0x20]
    4576:	0f 6f ee             	movq   mm5,mm6
    4579:	0f f9 c8             	psubw  mm1,mm0
    457c:	0f f9 e8             	psubw  mm5,mm0
    457f:	0f 61 c3             	punpcklwd mm0,mm3
    4582:	0f 61 e2             	punpcklwd mm4,mm2
    4585:	0f 62 c4             	punpckldq mm0,mm4
    4588:	42 0f f9 44 c4 40    	psubw  mm0,QWORD PTR [rsp+r8*8+0x40]
    458e:	0f ef e4             	pxor   mm4,mm4
    4591:	0f ef d2             	pxor   mm2,mm2
    4594:	0f f9 e1             	psubw  mm4,mm1
    4597:	0f f9 d5             	psubw  mm2,mm5
    459a:	0f ee cc             	pmaxsw mm1,mm4
    459d:	0f ee ea             	pmaxsw mm5,mm2
    45a0:	0f ef db             	pxor   mm3,mm3
    45a3:	0f f9 d8             	psubw  mm3,mm0
    45a6:	0f ee c3             	pmaxsw mm0,mm3
    45a9:	0f e3 cf             	pavgw  mm1,mm7
    45ac:	0f e3 ef             	pavgw  mm5,mm7
    45af:	0f fd 44 24 40       	paddw  mm0,QWORD PTR [rsp+0x40]
    45b4:	0f fd 4c 24 48       	paddw  mm1,QWORD PTR [rsp+0x48]
    45b9:	0f fd 6c 24 50       	paddw  mm5,QWORD PTR [rsp+0x50]
    45be:	0f 7f 44 24 40       	movq   QWORD PTR [rsp+0x40],mm0
    45c3:	0f 7f 4c 24 48       	movq   QWORD PTR [rsp+0x48],mm1
    45c8:	0f 7f 6c 24 50       	movq   QWORD PTR [rsp+0x50],mm5
    45cd:	48 83 c7 04          	add    rdi,0x4
    45d1:	49 ff c0             	inc    r8
    45d4:	0f 8c 71 ff ff ff    	jl     454b <x264_8_intra_satd_x3_16x16_mmx2+0xbb>
    45da:	48 83 c7 30          	add    rdi,0x30
    45de:	48 ff c1             	inc    rcx
    45e1:	0f 8c 5d ff ff ff    	jl     4544 <x264_8_intra_satd_x3_16x16_mmx2+0xb4>
    45e7:	0f 6f fd             	movq   mm7,mm5
    45ea:	0f ef f6             	pxor   mm6,mm6
    45ed:	0f 70 d0 4e          	pshufw mm2,mm0,0x4e
    45f1:	0f 70 d9 4e          	pshufw mm3,mm1,0x4e
    45f5:	0f 70 e5 4e          	pshufw mm4,mm5,0x4e
    45f9:	0f fd c2             	paddw  mm0,mm2
    45fc:	0f fd cb             	paddw  mm1,mm3
    45ff:	0f fd ec             	paddw  mm5,mm4
    4602:	0f 61 c6             	punpcklwd mm0,mm6
    4605:	0f 61 ce             	punpcklwd mm1,mm6
    4608:	0f 61 ee             	punpcklwd mm5,mm6
    460b:	0f 70 d0 4e          	pshufw mm2,mm0,0x4e
    460f:	0f 70 d9 4e          	pshufw mm3,mm1,0x4e
    4613:	0f 70 e5 4e          	pshufw mm4,mm5,0x4e
    4617:	0f fe c2             	paddd  mm0,mm2
    461a:	0f fe cb             	paddd  mm1,mm3
    461d:	0f fe ec             	paddd  mm5,mm4
    4620:	0f 72 d0 01          	psrld  mm0,0x1
    4624:	0f 72 f7 10          	pslld  mm7,0x10
    4628:	0f 72 d7 10          	psrld  mm7,0x10
    462c:	0f fe c5             	paddd  mm0,mm5
    462f:	0f fa c7             	psubd  mm0,mm7
    4632:	0f 7e 6a 08          	movd   DWORD PTR [rdx+0x8],mm5
    4636:	0f 7e 4a 04          	movd   DWORD PTR [rdx+0x4],mm1
    463a:	0f 7e 02             	movd   DWORD PTR [rdx],mm0
    463d:	48 83 c4 78          	add    rsp,0x78
    4641:	c3                   	ret    
    4642:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    4649:	00 
    464a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000004650 <x264_8_intra_satd_x3_8x8c_mmx2>:
    4650:	48 83 ec 48          	sub    rsp,0x48
    4654:	0f ef ff             	pxor   mm7,mm7
    4657:	0f 7f 7c 24 30       	movq   QWORD PTR [rsp+0x30],mm7
    465c:	0f 7f 7c 24 38       	movq   QWORD PTR [rsp+0x38],mm7
    4661:	0f 7f 7c 24 40       	movq   QWORD PTR [rsp+0x40],mm7
    4666:	b9 04 00 00 00       	mov    ecx,0x4
    466b:	c1 e1 05             	shl    ecx,0x5
    466e:	0f 6e 44 31 1c       	movd   mm0,DWORD PTR [rcx+rsi*1+0x1c]
    4673:	0f c4 44 31 fe 00    	pinsrw mm0,WORD PTR [rcx+rsi*1-0x2],0x0
    4679:	0f c4 44 31 3e 02    	pinsrw mm0,WORD PTR [rcx+rsi*1+0x3e],0x2
    467f:	0f c4 44 31 5e 03    	pinsrw mm0,WORD PTR [rcx+rsi*1+0x5e],0x3
    4685:	0f 71 d0 08          	psrlw  mm0,0x8
    4689:	c1 e9 05             	shr    ecx,0x5
    468c:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    4690:	0f d5 0d 00 00 00 00 	pmullw mm1,QWORD PTR [rip+0x0]        # 4697 <x264_8_intra_satd_x3_8x8c_mmx2+0x47>
    4697:	0f fd c1             	paddw  mm0,mm1
    469a:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    469e:	0f d5 0d 00 00 00 00 	pmullw mm1,QWORD PTR [rip+0x0]        # 46a5 <x264_8_intra_satd_x3_8x8c_mmx2+0x55>
    46a5:	0f fd c1             	paddw  mm0,mm1
    46a8:	0f 71 f0 02          	psllw  mm0,0x2
    46ac:	0f 7f 04 4c          	movq   QWORD PTR [rsp+rcx*2],mm0
    46b0:	0f 6e 44 0e e0       	movd   mm0,DWORD PTR [rsi+rcx*1-0x20]
    46b5:	0f ef d2             	pxor   mm2,mm2
    46b8:	0f 60 c2             	punpcklbw mm0,mm2
    46bb:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    46bf:	0f d5 0d 00 00 00 00 	pmullw mm1,QWORD PTR [rip+0x0]        # 46c6 <x264_8_intra_satd_x3_8x8c_mmx2+0x76>
    46c6:	0f fd c1             	paddw  mm0,mm1
    46c9:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    46cd:	0f d5 0d 00 00 00 00 	pmullw mm1,QWORD PTR [rip+0x0]        # 46d4 <x264_8_intra_satd_x3_8x8c_mmx2+0x84>
    46d4:	0f fd c1             	paddw  mm0,mm1
    46d7:	0f 71 f0 02          	psllw  mm0,0x2
    46db:	0f 7f 44 4c 10       	movq   QWORD PTR [rsp+rcx*2+0x10],mm0
    46e0:	83 e9 04             	sub    ecx,0x4
    46e3:	7d 86                	jge    466b <x264_8_intra_satd_x3_8x8c_mmx2+0x1b>
    46e5:	0f b7 04 24          	movzx  eax,WORD PTR [rsp]
    46e9:	0f b7 4c 24 10       	movzx  ecx,WORD PTR [rsp+0x10]
    46ee:	44 0f b7 44 24 08    	movzx  r8d,WORD PTR [rsp+0x8]
    46f4:	44 0f b7 4c 24 18    	movzx  r9d,WORD PTR [rsp+0x18]
    46fa:	8d 44 08 10          	lea    eax,[rax+rcx*1+0x10]
    46fe:	43 8d 4c 08 10       	lea    ecx,[r8+r9*1+0x10]
    4703:	d1 e8                	shr    eax,1
    4705:	d1 e9                	shr    ecx,1
    4707:	41 83 c0 08          	add    r8d,0x8
    470b:	41 83 c1 08          	add    r9d,0x8
    470f:	83 e0 f0             	and    eax,0xfffffff0
    4712:	83 e1 f0             	and    ecx,0xfffffff0
    4715:	41 83 e0 f0          	and    r8d,0xfffffff0
    4719:	41 83 e1 f0          	and    r9d,0xfffffff0
    471d:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
    4721:	44 89 4c 24 24       	mov    DWORD PTR [rsp+0x24],r9d
    4726:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    472b:	89 4c 24 2c          	mov    DWORD PTR [rsp+0x2c],ecx
    472f:	4c 8d 4c 24 20       	lea    r9,[rsp+0x20]
    4734:	48 c7 c1 fe ff ff ff 	mov    rcx,0xfffffffffffffffe
    473b:	49 c7 c0 fe ff ff ff 	mov    r8,0xfffffffffffffffe
    4742:	e8 b9 e0 ff ff       	call   2800 <x264_8_hadamard_load>
    4747:	0f ef c9             	pxor   mm1,mm1
    474a:	0f ef ed             	pxor   mm5,mm5
    474d:	0f f9 cb             	psubw  mm1,mm3
    4750:	0f f9 ec             	psubw  mm5,mm4
    4753:	0f ee cb             	pmaxsw mm1,mm3
    4756:	0f ee ec             	pmaxsw mm5,mm4
    4759:	0f ef ff             	pxor   mm7,mm7
    475c:	0f f9 fa             	psubw  mm7,mm2
    475f:	0f ee fa             	pmaxsw mm7,mm2
    4762:	0f fd cd             	paddw  mm1,mm5
    4765:	0f fd f9             	paddw  mm7,mm1
    4768:	0f 6f 4c cc 10       	movq   mm1,QWORD PTR [rsp+rcx*8+0x10]
    476d:	43 0f 6e 6c 81 08    	movd   mm5,DWORD PTR [r9+r8*4+0x8]
    4773:	0f f9 c8             	psubw  mm1,mm0
    4776:	0f f9 e8             	psubw  mm5,mm0
    4779:	0f 61 c3             	punpcklwd mm0,mm3
    477c:	0f 61 e2             	punpcklwd mm4,mm2
    477f:	0f 62 c4             	punpckldq mm0,mm4
    4782:	42 0f f9 44 c4 20    	psubw  mm0,QWORD PTR [rsp+r8*8+0x20]
    4788:	0f ef e4             	pxor   mm4,mm4
    478b:	0f ef d2             	pxor   mm2,mm2
    478e:	0f f9 e1             	psubw  mm4,mm1
    4791:	0f f9 d5             	psubw  mm2,mm5
    4794:	0f ee cc             	pmaxsw mm1,mm4
    4797:	0f ee ea             	pmaxsw mm5,mm2
    479a:	0f ef db             	pxor   mm3,mm3
    479d:	0f f9 d8             	psubw  mm3,mm0
    47a0:	0f ee c3             	pmaxsw mm0,mm3
    47a3:	0f e3 cf             	pavgw  mm1,mm7
    47a6:	0f e3 ef             	pavgw  mm5,mm7
    47a9:	0f fd 44 24 40       	paddw  mm0,QWORD PTR [rsp+0x40]
    47ae:	0f fd 4c 24 38       	paddw  mm1,QWORD PTR [rsp+0x38]
    47b3:	0f fd 6c 24 30       	paddw  mm5,QWORD PTR [rsp+0x30]
    47b8:	0f 7f 44 24 40       	movq   QWORD PTR [rsp+0x40],mm0
    47bd:	0f 7f 4c 24 38       	movq   QWORD PTR [rsp+0x38],mm1
    47c2:	0f 7f 6c 24 30       	movq   QWORD PTR [rsp+0x30],mm5
    47c7:	48 83 c7 04          	add    rdi,0x4
    47cb:	49 ff c0             	inc    r8
    47ce:	0f 8c 6e ff ff ff    	jl     4742 <x264_8_intra_satd_x3_8x8c_mmx2+0xf2>
    47d4:	48 83 c7 38          	add    rdi,0x38
    47d8:	49 83 c1 08          	add    r9,0x8
    47dc:	48 ff c1             	inc    rcx
    47df:	0f 8c 56 ff ff ff    	jl     473b <x264_8_intra_satd_x3_8x8c_mmx2+0xeb>
    47e5:	0f 6f 44 24 30       	movq   mm0,QWORD PTR [rsp+0x30]
    47ea:	0f 6f 5c 24 38       	movq   mm3,QWORD PTR [rsp+0x38]
    47ef:	0f 6f 64 24 40       	movq   mm4,QWORD PTR [rsp+0x40]
    47f4:	0f 6f f8             	movq   mm7,mm0
    47f7:	0f 73 d7 0f          	psrlq  mm7,0xf
    47fb:	0f fd e7             	paddw  mm4,mm7
    47fe:	0f ef f6             	pxor   mm6,mm6
    4801:	0f 70 d0 4e          	pshufw mm2,mm0,0x4e
    4805:	0f 70 cb 4e          	pshufw mm1,mm3,0x4e
    4809:	0f 70 ec 4e          	pshufw mm5,mm4,0x4e
    480d:	0f fd c2             	paddw  mm0,mm2
    4810:	0f fd d9             	paddw  mm3,mm1
    4813:	0f fd e5             	paddw  mm4,mm5
    4816:	0f 61 c6             	punpcklwd mm0,mm6
    4819:	0f 61 de             	punpcklwd mm3,mm6
    481c:	0f 61 e6             	punpcklwd mm4,mm6
    481f:	0f 70 d0 4e          	pshufw mm2,mm0,0x4e
    4823:	0f 70 cb 4e          	pshufw mm1,mm3,0x4e
    4827:	0f 70 ec 4e          	pshufw mm5,mm4,0x4e
    482b:	0f fe c2             	paddd  mm0,mm2
    482e:	0f fe d9             	paddd  mm3,mm1
    4831:	0f fe e5             	paddd  mm4,mm5
    4834:	0f 72 d4 01          	psrld  mm4,0x1
    4838:	0f 7e 02             	movd   DWORD PTR [rdx],mm0
    483b:	0f 7e 5a 04          	movd   DWORD PTR [rdx+0x4],mm3
    483f:	0f 7e 62 08          	movd   DWORD PTR [rdx+0x8],mm4
    4843:	48 83 c4 48          	add    rsp,0x48
    4847:	c3                   	ret    
    4848:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    484f:	00 

0000000000004850 <x264_8_hadamard_ac_8x8_sse2>:
    4850:	66 0f ef ff          	pxor   xmm7,xmm7
    4854:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    4858:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    485d:	f3 0f 7e 14 77       	movq   xmm2,QWORD PTR [rdi+rsi*2]
    4862:	f3 0f 7e 1c 17       	movq   xmm3,QWORD PTR [rdi+rdx*1]
    4867:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    486b:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    486f:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    4873:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    4877:	66 0f 60 df          	punpcklbw xmm3,xmm7
    487b:	0f 28 e0             	movaps xmm4,xmm0
    487e:	66 0f fd c1          	paddw  xmm0,xmm1
    4882:	66 0f f9 cc          	psubw  xmm1,xmm4
    4886:	0f 28 e2             	movaps xmm4,xmm2
    4889:	66 0f fd d3          	paddw  xmm2,xmm3
    488d:	66 0f f9 dc          	psubw  xmm3,xmm4
    4891:	0f 28 e0             	movaps xmm4,xmm0
    4894:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    4898:	66 0f 69 e1          	punpckhwd xmm4,xmm1
    489c:	0f 28 ca             	movaps xmm1,xmm2
    489f:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    48a3:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    48a7:	0f 28 d8             	movaps xmm3,xmm0
    48aa:	66 0f fd c2          	paddw  xmm0,xmm2
    48ae:	66 0f f9 d3          	psubw  xmm2,xmm3
    48b2:	0f 28 dc             	movaps xmm3,xmm4
    48b5:	66 0f fd e1          	paddw  xmm4,xmm1
    48b9:	66 0f f9 cb          	psubw  xmm1,xmm3
    48bd:	0f 28 d8             	movaps xmm3,xmm0
    48c0:	66 0f 62 c2          	punpckldq xmm0,xmm2
    48c4:	66 0f 6a da          	punpckhdq xmm3,xmm2
    48c8:	0f 28 d0             	movaps xmm2,xmm0
    48cb:	66 0f fd c3          	paddw  xmm0,xmm3
    48cf:	66 0f f9 da          	psubw  xmm3,xmm2
    48d3:	0f 28 d4             	movaps xmm2,xmm4
    48d6:	66 0f 62 e1          	punpckldq xmm4,xmm1
    48da:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    48de:	0f 28 cc             	movaps xmm1,xmm4
    48e1:	66 0f fd e2          	paddw  xmm4,xmm2
    48e5:	66 0f f9 d1          	psubw  xmm2,xmm1
    48e9:	0f 28 c8             	movaps xmm1,xmm0
    48ec:	0f 16 c4             	movlhps xmm0,xmm4
    48ef:	66 0f 6d cc          	punpckhqdq xmm1,xmm4
    48f3:	0f 28 e0             	movaps xmm4,xmm0
    48f6:	66 0f fd c1          	paddw  xmm0,xmm1
    48fa:	66 0f f9 cc          	psubw  xmm1,xmm4
    48fe:	0f 28 e3             	movaps xmm4,xmm3
    4901:	0f 16 da             	movlhps xmm3,xmm2
    4904:	66 0f 6d e2          	punpckhqdq xmm4,xmm2
    4908:	0f 28 d3             	movaps xmm2,xmm3
    490b:	66 0f fd dc          	paddw  xmm3,xmm4
    490f:	66 0f f9 e2          	psubw  xmm4,xmm2
    4913:	44 0f 28 c1          	movaps xmm8,xmm1
    4917:	f3 0f 7e 17          	movq   xmm2,QWORD PTR [rdi]
    491b:	f3 0f 7e 2c 37       	movq   xmm5,QWORD PTR [rdi+rsi*1]
    4920:	f3 0f 7e 34 77       	movq   xmm6,QWORD PTR [rdi+rsi*2]
    4925:	f3 0f 7e 0c 17       	movq   xmm1,QWORD PTR [rdi+rdx*1]
    492a:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    492e:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    4932:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    4936:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    493a:	0f 28 fa             	movaps xmm7,xmm2
    493d:	66 0f fd d5          	paddw  xmm2,xmm5
    4941:	66 0f f9 ef          	psubw  xmm5,xmm7
    4945:	0f 28 fe             	movaps xmm7,xmm6
    4948:	66 0f fd f1          	paddw  xmm6,xmm1
    494c:	66 0f f9 cf          	psubw  xmm1,xmm7
    4950:	0f 28 fa             	movaps xmm7,xmm2
    4953:	66 0f 61 d5          	punpcklwd xmm2,xmm5
    4957:	66 0f 69 fd          	punpckhwd xmm7,xmm5
    495b:	0f 28 ee             	movaps xmm5,xmm6
    495e:	66 0f 61 f1          	punpcklwd xmm6,xmm1
    4962:	66 0f 69 e9          	punpckhwd xmm5,xmm1
    4966:	0f 28 ca             	movaps xmm1,xmm2
    4969:	66 0f fd d6          	paddw  xmm2,xmm6
    496d:	66 0f f9 f1          	psubw  xmm6,xmm1
    4971:	0f 28 cf             	movaps xmm1,xmm7
    4974:	66 0f fd fd          	paddw  xmm7,xmm5
    4978:	66 0f f9 e9          	psubw  xmm5,xmm1
    497c:	0f 28 ca             	movaps xmm1,xmm2
    497f:	66 0f 62 d6          	punpckldq xmm2,xmm6
    4983:	66 0f 6a ce          	punpckhdq xmm1,xmm6
    4987:	0f 28 f2             	movaps xmm6,xmm2
    498a:	66 0f fd d1          	paddw  xmm2,xmm1
    498e:	66 0f f9 ce          	psubw  xmm1,xmm6
    4992:	0f 28 f7             	movaps xmm6,xmm7
    4995:	66 0f 62 fd          	punpckldq xmm7,xmm5
    4999:	66 0f 6a f5          	punpckhdq xmm6,xmm5
    499d:	0f 28 ef             	movaps xmm5,xmm7
    49a0:	66 0f fd fe          	paddw  xmm7,xmm6
    49a4:	66 0f f9 f5          	psubw  xmm6,xmm5
    49a8:	0f 28 ea             	movaps xmm5,xmm2
    49ab:	0f 16 d7             	movlhps xmm2,xmm7
    49ae:	66 0f 6d ef          	punpckhqdq xmm5,xmm7
    49b2:	0f 28 fa             	movaps xmm7,xmm2
    49b5:	66 0f fd d5          	paddw  xmm2,xmm5
    49b9:	66 0f f9 ef          	psubw  xmm5,xmm7
    49bd:	0f 28 f9             	movaps xmm7,xmm1
    49c0:	0f 16 ce             	movlhps xmm1,xmm6
    49c3:	66 0f 6d fe          	punpckhqdq xmm7,xmm6
    49c7:	0f 28 f1             	movaps xmm6,xmm1
    49ca:	66 0f fd cf          	paddw  xmm1,xmm7
    49ce:	66 0f f9 fe          	psubw  xmm7,xmm6
    49d2:	44 0f 28 cb          	movaps xmm9,xmm3
    49d6:	44 0f 28 d4          	movaps xmm10,xmm4
    49da:	66 0f ef f6          	pxor   xmm6,xmm6
    49de:	66 0f f9 f0          	psubw  xmm6,xmm0
    49e2:	66 0f ee f0          	pmaxsw xmm6,xmm0
    49e6:	66 0f ef db          	pxor   xmm3,xmm3
    49ea:	66 0f f9 da          	psubw  xmm3,xmm2
    49ee:	66 0f ee da          	pmaxsw xmm3,xmm2
    49f2:	66 0f ef e4          	pxor   xmm4,xmm4
    49f6:	66 0f f9 e5          	psubw  xmm4,xmm5
    49fa:	66 0f ee e5          	pmaxsw xmm4,xmm5
    49fe:	66 0f fd f3          	paddw  xmm6,xmm3
    4a02:	66 0f fd c2          	paddw  xmm0,xmm2
    4a06:	66 0f fd d2          	paddw  xmm2,xmm2
    4a0a:	66 0f f9 d0          	psubw  xmm2,xmm0
    4a0e:	66 0f db 35 00 00 00 	pand   xmm6,XMMWORD PTR [rip+0x0]        # 4a16 <x264_8_hadamard_ac_8x8_sse2+0x1c6>
    4a15:	00 
    4a16:	66 0f ef db          	pxor   xmm3,xmm3
    4a1a:	66 41 0f f9 d8       	psubw  xmm3,xmm8
    4a1f:	66 41 0f ee d8       	pmaxsw xmm3,xmm8
    4a24:	66 0f fd f4          	paddw  xmm6,xmm4
    4a28:	66 0f ef e4          	pxor   xmm4,xmm4
    4a2c:	66 41 0f f9 e1       	psubw  xmm4,xmm9
    4a31:	66 41 0f ee e1       	pmaxsw xmm4,xmm9
    4a36:	66 0f fd f3          	paddw  xmm6,xmm3
    4a3a:	66 0f ef db          	pxor   xmm3,xmm3
    4a3e:	66 41 0f f9 da       	psubw  xmm3,xmm10
    4a43:	66 41 0f ee da       	pmaxsw xmm3,xmm10
    4a48:	66 0f fd f4          	paddw  xmm6,xmm4
    4a4c:	66 0f ef e4          	pxor   xmm4,xmm4
    4a50:	66 0f f9 e1          	psubw  xmm4,xmm1
    4a54:	66 0f ee e1          	pmaxsw xmm4,xmm1
    4a58:	66 0f fd f3          	paddw  xmm6,xmm3
    4a5c:	66 0f ef db          	pxor   xmm3,xmm3
    4a60:	66 0f f9 df          	psubw  xmm3,xmm7
    4a64:	66 0f ee df          	pmaxsw xmm3,xmm7
    4a68:	66 0f fd f4          	paddw  xmm6,xmm4
    4a6c:	66 0f fd f3          	paddw  xmm6,xmm3
    4a70:	66 0f 6f e7          	movdqa xmm4,xmm7
    4a74:	66 41 0f fd e2       	paddw  xmm4,xmm10
    4a79:	66 41 0f f9 fa       	psubw  xmm7,xmm10
    4a7e:	0f 29 74 24 28       	movaps XMMWORD PTR [rsp+0x28],xmm6
    4a83:	66 0f 6f d9          	movdqa xmm3,xmm1
    4a87:	66 41 0f fd d9       	paddw  xmm3,xmm9
    4a8c:	66 41 0f f9 c9       	psubw  xmm1,xmm9
    4a91:	66 0f 6f f5          	movdqa xmm6,xmm5
    4a95:	66 41 0f fd f0       	paddw  xmm6,xmm8
    4a9a:	66 41 0f f9 e8       	psubw  xmm5,xmm8
    4a9f:	44 0f 28 ca          	movaps xmm9,xmm2
    4aa3:	0f 28 d4             	movaps xmm2,xmm4
    4aa6:	0f 16 e7             	movlhps xmm4,xmm7
    4aa9:	66 0f 6d d7          	punpckhqdq xmm2,xmm7
    4aad:	66 0f ef ff          	pxor   xmm7,xmm7
    4ab1:	66 0f f9 fc          	psubw  xmm7,xmm4
    4ab5:	66 0f ee e7          	pmaxsw xmm4,xmm7
    4ab9:	66 0f ef ff          	pxor   xmm7,xmm7
    4abd:	66 0f f9 fa          	psubw  xmm7,xmm2
    4ac1:	66 0f ee d7          	pmaxsw xmm2,xmm7
    4ac5:	66 0f ee e2          	pmaxsw xmm4,xmm2
    4ac9:	0f 28 d3             	movaps xmm2,xmm3
    4acc:	0f 16 d9             	movlhps xmm3,xmm1
    4acf:	66 0f 6d d1          	punpckhqdq xmm2,xmm1
    4ad3:	66 0f ef c9          	pxor   xmm1,xmm1
    4ad7:	66 0f ef ff          	pxor   xmm7,xmm7
    4adb:	66 0f f9 cb          	psubw  xmm1,xmm3
    4adf:	66 0f f9 fa          	psubw  xmm7,xmm2
    4ae3:	66 0f ee d9          	pmaxsw xmm3,xmm1
    4ae7:	66 0f ee d7          	pmaxsw xmm2,xmm7
    4aeb:	66 0f ee da          	pmaxsw xmm3,xmm2
    4aef:	41 0f 28 f9          	movaps xmm7,xmm9
    4af3:	0f 28 d6             	movaps xmm2,xmm6
    4af6:	0f 16 f5             	movlhps xmm6,xmm5
    4af9:	66 0f 6d d5          	punpckhqdq xmm2,xmm5
    4afd:	66 0f ef ed          	pxor   xmm5,xmm5
    4b01:	66 0f ef c9          	pxor   xmm1,xmm1
    4b05:	66 0f f9 ee          	psubw  xmm5,xmm6
    4b09:	66 0f f9 ca          	psubw  xmm1,xmm2
    4b0d:	66 0f ee f5          	pmaxsw xmm6,xmm5
    4b11:	66 0f ee d1          	pmaxsw xmm2,xmm1
    4b15:	66 0f ee f2          	pmaxsw xmm6,xmm2
    4b19:	0f 28 d0             	movaps xmm2,xmm0
    4b1c:	0f 16 c7             	movlhps xmm0,xmm7
    4b1f:	66 0f 6d d7          	punpckhqdq xmm2,xmm7
    4b23:	0f 28 f8             	movaps xmm7,xmm0
    4b26:	66 0f fd c2          	paddw  xmm0,xmm2
    4b2a:	66 0f f9 d7          	psubw  xmm2,xmm7
    4b2e:	66 0f fd dc          	paddw  xmm3,xmm4
    4b32:	66 0f fd de          	paddw  xmm3,xmm6
    4b36:	66 0f fd db          	paddw  xmm3,xmm3
    4b3a:	66 0f ef c9          	pxor   xmm1,xmm1
    4b3e:	66 0f f9 ca          	psubw  xmm1,xmm2
    4b42:	66 0f ee d1          	pmaxsw xmm2,xmm1
    4b46:	66 0f db 05 00 00 00 	pand   xmm0,XMMWORD PTR [rip+0x0]        # 4b4e <x264_8_hadamard_ac_8x8_sse2+0x2fe>
    4b4d:	00 
    4b4e:	66 0f ef c9          	pxor   xmm1,xmm1
    4b52:	66 0f f9 c8          	psubw  xmm1,xmm0
    4b56:	66 0f ee c1          	pmaxsw xmm0,xmm1
    4b5a:	66 0f fd da          	paddw  xmm3,xmm2
    4b5e:	66 0f fd d8          	paddw  xmm3,xmm0
    4b62:	0f 29 5c 24 18       	movaps XMMWORD PTR [rsp+0x18],xmm3
    4b67:	c3                   	ret    
    4b68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    4b6f:	00 

0000000000004b70 <x264_8_pixel_hadamard_ac_16x16_sse2>:
    4b70:	48 89 e1             	mov    rcx,rsp
    4b73:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    4b77:	48 83 ec 30          	sub    rsp,0x30
    4b7b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    4b7f:	e8 cc fc ff ff       	call   4850 <x264_8_hadamard_ac_8x8_sse2>
    4b84:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    4b88:	48 83 ec 20          	sub    rsp,0x20
    4b8c:	e8 bf fc ff ff       	call   4850 <x264_8_hadamard_ac_8x8_sse2>
    4b91:	48 f7 da             	neg    rdx
    4b94:	48 83 ec 20          	sub    rsp,0x20
    4b98:	48 8d 7c 97 08       	lea    rdi,[rdi+rdx*4+0x8]
    4b9d:	48 f7 da             	neg    rdx
    4ba0:	e8 ab fc ff ff       	call   4850 <x264_8_hadamard_ac_8x8_sse2>
    4ba5:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    4ba9:	48 83 ec 20          	sub    rsp,0x20
    4bad:	e8 9e fc ff ff       	call   4850 <x264_8_hadamard_ac_8x8_sse2>
    4bb2:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
    4bb7:	66 0f dd 5c 24 30    	paddusw xmm3,XMMWORD PTR [rsp+0x30]
    4bbd:	66 0f dd 74 24 40    	paddusw xmm6,XMMWORD PTR [rsp+0x40]
    4bc3:	66 0f dd 5c 24 50    	paddusw xmm3,XMMWORD PTR [rsp+0x50]
    4bc9:	66 0f dd 74 24 60    	paddusw xmm6,XMMWORD PTR [rsp+0x60]
    4bcf:	66 0f dd 5c 24 70    	paddusw xmm3,XMMWORD PTR [rsp+0x70]
    4bd5:	66 0f dd b4 24 80 00 	paddusw xmm6,XMMWORD PTR [rsp+0x80]
    4bdc:	00 00 
    4bde:	66 0f 71 d3 01       	psrlw  xmm3,0x1
    4be3:	66 0f 6f c3          	movdqa xmm0,xmm3
    4be7:	66 0f 72 d0 10       	psrld  xmm0,0x10
    4bec:	66 0f 72 f3 10       	pslld  xmm3,0x10
    4bf1:	66 0f 72 d3 10       	psrld  xmm3,0x10
    4bf6:	66 0f fe d8          	paddd  xmm3,xmm0
    4bfa:	0f 12 c3             	movhlps xmm0,xmm3
    4bfd:	66 0f fe d8          	paddd  xmm3,xmm0
    4c01:	f2 0f 70 c3 4e       	pshuflw xmm0,xmm3,0x4e
    4c06:	66 0f fe d8          	paddd  xmm3,xmm0
    4c0a:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 4c12 <x264_8_pixel_hadamard_ac_16x16_sse2+0xa2>
    4c11:	00 
    4c12:	0f 12 e6             	movhlps xmm4,xmm6
    4c15:	66 0f fe f4          	paddd  xmm6,xmm4
    4c19:	f2 0f 70 e6 4e       	pshuflw xmm4,xmm6,0x4e
    4c1e:	66 0f fe f4          	paddd  xmm6,xmm4
    4c22:	66 0f 7e da          	movd   edx,xmm3
    4c26:	66 0f 7e f0          	movd   eax,xmm6
    4c2a:	d1 ea                	shr    edx,1
    4c2c:	d1 e8                	shr    eax,1
    4c2e:	48 c1 e2 20          	shl    rdx,0x20
    4c32:	48 01 d0             	add    rax,rdx
    4c35:	48 89 cc             	mov    rsp,rcx
    4c38:	c3                   	ret    
    4c39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000004c40 <x264_8_pixel_hadamard_ac_16x8_sse2>:
    4c40:	48 89 e1             	mov    rcx,rsp
    4c43:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    4c47:	48 83 ec 30          	sub    rsp,0x30
    4c4b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    4c4f:	e8 fc fb ff ff       	call   4850 <x264_8_hadamard_ac_8x8_sse2>
    4c54:	48 f7 de             	neg    rsi
    4c57:	48 83 ec 20          	sub    rsp,0x20
    4c5b:	48 8d 7c b7 08       	lea    rdi,[rdi+rsi*4+0x8]
    4c60:	48 f7 de             	neg    rsi
    4c63:	e8 e8 fb ff ff       	call   4850 <x264_8_hadamard_ac_8x8_sse2>
    4c68:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
    4c6d:	66 0f dd 5c 24 30    	paddusw xmm3,XMMWORD PTR [rsp+0x30]
    4c73:	66 0f dd 74 24 40    	paddusw xmm6,XMMWORD PTR [rsp+0x40]
    4c79:	66 0f 6f c3          	movdqa xmm0,xmm3
    4c7d:	66 0f 72 d0 10       	psrld  xmm0,0x10
    4c82:	66 0f 72 f3 10       	pslld  xmm3,0x10
    4c87:	66 0f 72 d3 10       	psrld  xmm3,0x10
    4c8c:	66 0f fe d8          	paddd  xmm3,xmm0
    4c90:	0f 12 c3             	movhlps xmm0,xmm3
    4c93:	66 0f fe d8          	paddd  xmm3,xmm0
    4c97:	f2 0f 70 c3 4e       	pshuflw xmm0,xmm3,0x4e
    4c9c:	66 0f fe d8          	paddd  xmm3,xmm0
    4ca0:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 4ca8 <x264_8_pixel_hadamard_ac_16x8_sse2+0x68>
    4ca7:	00 
    4ca8:	0f 12 e6             	movhlps xmm4,xmm6
    4cab:	66 0f fe f4          	paddd  xmm6,xmm4
    4caf:	f2 0f 70 e6 4e       	pshuflw xmm4,xmm6,0x4e
    4cb4:	66 0f fe f4          	paddd  xmm6,xmm4
    4cb8:	66 0f 7e da          	movd   edx,xmm3
    4cbc:	66 0f 7e f0          	movd   eax,xmm6
    4cc0:	c1 ea 02             	shr    edx,0x2
    4cc3:	d1 e8                	shr    eax,1
    4cc5:	48 c1 e2 20          	shl    rdx,0x20
    4cc9:	48 01 d0             	add    rax,rdx
    4ccc:	48 89 cc             	mov    rsp,rcx
    4ccf:	c3                   	ret    

0000000000004cd0 <x264_8_pixel_hadamard_ac_8x16_sse2>:
    4cd0:	48 89 e1             	mov    rcx,rsp
    4cd3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    4cd7:	48 83 ec 30          	sub    rsp,0x30
    4cdb:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    4cdf:	e8 6c fb ff ff       	call   4850 <x264_8_hadamard_ac_8x8_sse2>
    4ce4:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    4ce8:	48 83 ec 20          	sub    rsp,0x20
    4cec:	e8 5f fb ff ff       	call   4850 <x264_8_hadamard_ac_8x8_sse2>
    4cf1:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
    4cf6:	66 0f dd 5c 24 30    	paddusw xmm3,XMMWORD PTR [rsp+0x30]
    4cfc:	66 0f dd 74 24 40    	paddusw xmm6,XMMWORD PTR [rsp+0x40]
    4d02:	66 0f 6f c3          	movdqa xmm0,xmm3
    4d06:	66 0f 72 d0 10       	psrld  xmm0,0x10
    4d0b:	66 0f 72 f3 10       	pslld  xmm3,0x10
    4d10:	66 0f 72 d3 10       	psrld  xmm3,0x10
    4d15:	66 0f fe d8          	paddd  xmm3,xmm0
    4d19:	0f 12 c3             	movhlps xmm0,xmm3
    4d1c:	66 0f fe d8          	paddd  xmm3,xmm0
    4d20:	f2 0f 70 c3 4e       	pshuflw xmm0,xmm3,0x4e
    4d25:	66 0f fe d8          	paddd  xmm3,xmm0
    4d29:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 4d31 <x264_8_pixel_hadamard_ac_8x16_sse2+0x61>
    4d30:	00 
    4d31:	0f 12 e6             	movhlps xmm4,xmm6
    4d34:	66 0f fe f4          	paddd  xmm6,xmm4
    4d38:	f2 0f 70 e6 4e       	pshuflw xmm4,xmm6,0x4e
    4d3d:	66 0f fe f4          	paddd  xmm6,xmm4
    4d41:	66 0f 7e da          	movd   edx,xmm3
    4d45:	66 0f 7e f0          	movd   eax,xmm6
    4d49:	c1 ea 02             	shr    edx,0x2
    4d4c:	d1 e8                	shr    eax,1
    4d4e:	48 c1 e2 20          	shl    rdx,0x20
    4d52:	48 01 d0             	add    rax,rdx
    4d55:	48 89 cc             	mov    rsp,rcx
    4d58:	c3                   	ret    
    4d59:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000004d60 <x264_8_pixel_hadamard_ac_8x8_sse2>:
    4d60:	48 89 e1             	mov    rcx,rsp
    4d63:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    4d67:	48 83 ec 30          	sub    rsp,0x30
    4d6b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    4d6f:	e8 dc fa ff ff       	call   4850 <x264_8_hadamard_ac_8x8_sse2>
    4d74:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
    4d79:	66 0f 6f c3          	movdqa xmm0,xmm3
    4d7d:	66 0f 72 d0 10       	psrld  xmm0,0x10
    4d82:	66 0f 72 f3 10       	pslld  xmm3,0x10
    4d87:	66 0f 72 d3 10       	psrld  xmm3,0x10
    4d8c:	66 0f fe d8          	paddd  xmm3,xmm0
    4d90:	0f 12 c3             	movhlps xmm0,xmm3
    4d93:	66 0f fe d8          	paddd  xmm3,xmm0
    4d97:	f2 0f 70 c3 4e       	pshuflw xmm0,xmm3,0x4e
    4d9c:	66 0f fe d8          	paddd  xmm3,xmm0
    4da0:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 4da8 <x264_8_pixel_hadamard_ac_8x8_sse2+0x48>
    4da7:	00 
    4da8:	0f 12 e6             	movhlps xmm4,xmm6
    4dab:	66 0f fe f4          	paddd  xmm6,xmm4
    4daf:	f2 0f 70 e6 4e       	pshuflw xmm4,xmm6,0x4e
    4db4:	66 0f fe f4          	paddd  xmm6,xmm4
    4db8:	66 0f 7e da          	movd   edx,xmm3
    4dbc:	66 0f 7e f0          	movd   eax,xmm6
    4dc0:	c1 ea 02             	shr    edx,0x2
    4dc3:	d1 e8                	shr    eax,1
    4dc5:	48 c1 e2 20          	shl    rdx,0x20
    4dc9:	48 01 d0             	add    rax,rdx
    4dcc:	48 89 cc             	mov    rsp,rcx
    4dcf:	c3                   	ret    

0000000000004dd0 <x264_8_pixel_satd_4x8_ssse3_atom>:
    4dd0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    4dd4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    4dd8:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    4ddc:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    4de1:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    4de6:	4c 01 ca             	add    rdx,r9
    4de9:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    4ded:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    4df2:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    4df7:	4c 01 c7             	add    rdi,r8
    4dfa:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    4dff:	66 0f 62 e3          	punpckldq xmm4,xmm3
    4e03:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    4e08:	66 0f 62 c3          	punpckldq xmm0,xmm3
    4e0c:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    4e11:	66 0f 62 eb          	punpckldq xmm5,xmm3
    4e15:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    4e1a:	66 0f 62 cb          	punpckldq xmm1,xmm3
    4e1e:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    4e22:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    4e26:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    4e2a:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    4e2e:	66 0f f9 c4          	psubw  xmm0,xmm4
    4e32:	66 0f f9 cd          	psubw  xmm1,xmm5
    4e36:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    4e3a:	4c 01 ca             	add    rdx,r9
    4e3d:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    4e41:	4c 01 c7             	add    rdi,r8
    4e44:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    4e48:	66 0f 62 f4          	punpckldq xmm6,xmm4
    4e4c:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    4e50:	66 0f 62 d4          	punpckldq xmm2,xmm4
    4e54:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    4e59:	66 0f 62 ec          	punpckldq xmm5,xmm4
    4e5d:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    4e62:	66 0f 62 dc          	punpckldq xmm3,xmm4
    4e66:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    4e6a:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    4e6e:	66 0f 60 df          	punpcklbw xmm3,xmm7
    4e72:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    4e76:	66 0f f9 d6          	psubw  xmm2,xmm6
    4e7a:	66 0f f9 dd          	psubw  xmm3,xmm5
    4e7e:	0f 28 e0             	movaps xmm4,xmm0
    4e81:	66 0f fd c1          	paddw  xmm0,xmm1
    4e85:	66 0f f9 cc          	psubw  xmm1,xmm4
    4e89:	0f 28 e2             	movaps xmm4,xmm2
    4e8c:	66 0f fd d3          	paddw  xmm2,xmm3
    4e90:	66 0f f9 dc          	psubw  xmm3,xmm4
    4e94:	0f 28 e0             	movaps xmm4,xmm0
    4e97:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    4e9b:	66 0f 69 e1          	punpckhwd xmm4,xmm1
    4e9f:	0f 28 ca             	movaps xmm1,xmm2
    4ea2:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    4ea6:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    4eaa:	0f 28 d8             	movaps xmm3,xmm0
    4ead:	66 0f fd c2          	paddw  xmm0,xmm2
    4eb1:	66 0f f9 d3          	psubw  xmm2,xmm3
    4eb5:	0f 28 dc             	movaps xmm3,xmm4
    4eb8:	66 0f fd e1          	paddw  xmm4,xmm1
    4ebc:	66 0f f9 cb          	psubw  xmm1,xmm3
    4ec0:	0f 28 d8             	movaps xmm3,xmm0
    4ec3:	66 0f 62 c2          	punpckldq xmm0,xmm2
    4ec7:	66 0f 6a da          	punpckhdq xmm3,xmm2
    4ecb:	0f 28 d0             	movaps xmm2,xmm0
    4ece:	66 0f fd c3          	paddw  xmm0,xmm3
    4ed2:	66 0f f9 da          	psubw  xmm3,xmm2
    4ed6:	0f 28 d4             	movaps xmm2,xmm4
    4ed9:	66 0f 62 e1          	punpckldq xmm4,xmm1
    4edd:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    4ee1:	0f 28 cc             	movaps xmm1,xmm4
    4ee4:	66 0f fd e2          	paddw  xmm4,xmm2
    4ee8:	66 0f f9 d1          	psubw  xmm2,xmm1
    4eec:	0f 28 c8             	movaps xmm1,xmm0
    4eef:	0f 16 c4             	movlhps xmm0,xmm4
    4ef2:	66 0f 6d cc          	punpckhqdq xmm1,xmm4
    4ef6:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    4efb:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    4f00:	66 0f ee c1          	pmaxsw xmm0,xmm1
    4f04:	0f 28 e3             	movaps xmm4,xmm3
    4f07:	0f 16 da             	movlhps xmm3,xmm2
    4f0a:	66 0f 6d e2          	punpckhqdq xmm4,xmm2
    4f0e:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    4f13:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    4f18:	66 0f ee dc          	pmaxsw xmm3,xmm4
    4f1c:	66 0f fd c3          	paddw  xmm0,xmm3
    4f20:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 4f28 <x264_8_pixel_satd_4x8_ssse3_atom+0x158>
    4f27:	00 
    4f28:	0f 12 c8             	movhlps xmm1,xmm0
    4f2b:	66 0f fe c1          	paddd  xmm0,xmm1
    4f2f:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    4f34:	66 0f fe c1          	paddd  xmm0,xmm1
    4f38:	66 0f 7e c0          	movd   eax,xmm0
    4f3c:	c3                   	ret    
    4f3d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000004f40 <x264_8_pixel_satd_4x16_ssse3_atom>:
    4f40:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    4f44:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    4f48:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    4f4c:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    4f51:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    4f56:	4c 01 ca             	add    rdx,r9
    4f59:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    4f5d:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    4f62:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    4f67:	4c 01 c7             	add    rdi,r8
    4f6a:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    4f6f:	66 0f 62 e3          	punpckldq xmm4,xmm3
    4f73:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    4f78:	66 0f 62 c3          	punpckldq xmm0,xmm3
    4f7c:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    4f81:	66 0f 62 eb          	punpckldq xmm5,xmm3
    4f85:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    4f8a:	66 0f 62 cb          	punpckldq xmm1,xmm3
    4f8e:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    4f92:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    4f96:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    4f9a:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    4f9e:	66 0f f9 c4          	psubw  xmm0,xmm4
    4fa2:	66 0f f9 cd          	psubw  xmm1,xmm5
    4fa6:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    4faa:	4c 01 ca             	add    rdx,r9
    4fad:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    4fb1:	4c 01 c7             	add    rdi,r8
    4fb4:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    4fb8:	66 0f 62 f4          	punpckldq xmm6,xmm4
    4fbc:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    4fc0:	66 0f 62 d4          	punpckldq xmm2,xmm4
    4fc4:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    4fc9:	66 0f 62 ec          	punpckldq xmm5,xmm4
    4fcd:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    4fd2:	66 0f 62 dc          	punpckldq xmm3,xmm4
    4fd6:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    4fda:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    4fde:	66 0f 60 df          	punpcklbw xmm3,xmm7
    4fe2:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    4fe6:	66 0f f9 d6          	psubw  xmm2,xmm6
    4fea:	66 0f f9 dd          	psubw  xmm3,xmm5
    4fee:	0f 28 e0             	movaps xmm4,xmm0
    4ff1:	66 0f fd c1          	paddw  xmm0,xmm1
    4ff5:	66 0f f9 cc          	psubw  xmm1,xmm4
    4ff9:	0f 28 e2             	movaps xmm4,xmm2
    4ffc:	66 0f fd d3          	paddw  xmm2,xmm3
    5000:	66 0f f9 dc          	psubw  xmm3,xmm4
    5004:	0f 28 e0             	movaps xmm4,xmm0
    5007:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    500b:	66 0f 69 e1          	punpckhwd xmm4,xmm1
    500f:	0f 28 ca             	movaps xmm1,xmm2
    5012:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    5016:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    501a:	0f 28 d8             	movaps xmm3,xmm0
    501d:	66 0f fd c2          	paddw  xmm0,xmm2
    5021:	66 0f f9 d3          	psubw  xmm2,xmm3
    5025:	0f 28 dc             	movaps xmm3,xmm4
    5028:	66 0f fd e1          	paddw  xmm4,xmm1
    502c:	66 0f f9 cb          	psubw  xmm1,xmm3
    5030:	0f 28 d8             	movaps xmm3,xmm0
    5033:	66 0f 62 c2          	punpckldq xmm0,xmm2
    5037:	66 0f 6a da          	punpckhdq xmm3,xmm2
    503b:	0f 28 d0             	movaps xmm2,xmm0
    503e:	66 0f fd c3          	paddw  xmm0,xmm3
    5042:	66 0f f9 da          	psubw  xmm3,xmm2
    5046:	0f 28 d4             	movaps xmm2,xmm4
    5049:	66 0f 62 e1          	punpckldq xmm4,xmm1
    504d:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    5051:	0f 28 cc             	movaps xmm1,xmm4
    5054:	66 0f fd e2          	paddw  xmm4,xmm2
    5058:	66 0f f9 d1          	psubw  xmm2,xmm1
    505c:	0f 28 c8             	movaps xmm1,xmm0
    505f:	0f 16 c4             	movlhps xmm0,xmm4
    5062:	66 0f 6d cc          	punpckhqdq xmm1,xmm4
    5066:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    506b:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    5070:	66 0f ee c1          	pmaxsw xmm0,xmm1
    5074:	0f 28 e3             	movaps xmm4,xmm3
    5077:	0f 16 da             	movlhps xmm3,xmm2
    507a:	66 0f 6d e2          	punpckhqdq xmm4,xmm2
    507e:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    5083:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    5088:	66 0f ee dc          	pmaxsw xmm3,xmm4
    508c:	66 0f fd c3          	paddw  xmm0,xmm3
    5090:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
    5094:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
    5098:	66 0f 6e 12          	movd   xmm2,DWORD PTR [rdx]
    509c:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    50a1:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    50a6:	4c 01 ca             	add    rdx,r9
    50a9:	66 0f 6e 3f          	movd   xmm7,DWORD PTR [rdi]
    50ad:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    50b2:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    50b7:	4c 01 c7             	add    rdi,r8
    50ba:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    50bf:	66 0f 62 d4          	punpckldq xmm2,xmm4
    50c3:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    50c8:	66 0f 62 fc          	punpckldq xmm7,xmm4
    50cc:	66 0f 6e 24 4a       	movd   xmm4,DWORD PTR [rdx+rcx*2]
    50d1:	66 0f 62 ec          	punpckldq xmm5,xmm4
    50d5:	66 0f 6e 24 77       	movd   xmm4,DWORD PTR [rdi+rsi*2]
    50da:	66 0f 62 cc          	punpckldq xmm1,xmm4
    50de:	66 0f 60 f8          	punpcklbw xmm7,xmm0
    50e2:	66 0f 60 d0          	punpcklbw xmm2,xmm0
    50e6:	66 0f 60 c8          	punpcklbw xmm1,xmm0
    50ea:	66 0f 60 e8          	punpcklbw xmm5,xmm0
    50ee:	66 0f f9 fa          	psubw  xmm7,xmm2
    50f2:	66 0f f9 cd          	psubw  xmm1,xmm5
    50f6:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    50fa:	4c 01 ca             	add    rdx,r9
    50fd:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    5101:	4c 01 c7             	add    rdi,r8
    5104:	66 0f 6e 12          	movd   xmm2,DWORD PTR [rdx]
    5108:	66 0f 62 f2          	punpckldq xmm6,xmm2
    510c:	66 0f 6e 17          	movd   xmm2,DWORD PTR [rdi]
    5110:	66 0f 62 da          	punpckldq xmm3,xmm2
    5114:	66 0f 6e 14 0a       	movd   xmm2,DWORD PTR [rdx+rcx*1]
    5119:	66 0f 62 ea          	punpckldq xmm5,xmm2
    511d:	66 0f 6e 14 37       	movd   xmm2,DWORD PTR [rdi+rsi*1]
    5122:	66 0f 62 e2          	punpckldq xmm4,xmm2
    5126:	66 0f 60 d8          	punpcklbw xmm3,xmm0
    512a:	66 0f 60 f0          	punpcklbw xmm6,xmm0
    512e:	66 0f 60 e0          	punpcklbw xmm4,xmm0
    5132:	66 0f 60 e8          	punpcklbw xmm5,xmm0
    5136:	66 0f f9 de          	psubw  xmm3,xmm6
    513a:	66 0f f9 e5          	psubw  xmm4,xmm5
    513e:	0f 28 d7             	movaps xmm2,xmm7
    5141:	66 0f fd f9          	paddw  xmm7,xmm1
    5145:	66 0f f9 ca          	psubw  xmm1,xmm2
    5149:	0f 28 d3             	movaps xmm2,xmm3
    514c:	66 0f fd dc          	paddw  xmm3,xmm4
    5150:	66 0f f9 e2          	psubw  xmm4,xmm2
    5154:	0f 28 d7             	movaps xmm2,xmm7
    5157:	66 0f 61 f9          	punpcklwd xmm7,xmm1
    515b:	66 0f 69 d1          	punpckhwd xmm2,xmm1
    515f:	0f 28 cb             	movaps xmm1,xmm3
    5162:	66 0f 61 dc          	punpcklwd xmm3,xmm4
    5166:	66 0f 69 cc          	punpckhwd xmm1,xmm4
    516a:	0f 28 e7             	movaps xmm4,xmm7
    516d:	66 0f fd fb          	paddw  xmm7,xmm3
    5171:	66 0f f9 dc          	psubw  xmm3,xmm4
    5175:	0f 28 e2             	movaps xmm4,xmm2
    5178:	66 0f fd d1          	paddw  xmm2,xmm1
    517c:	66 0f f9 cc          	psubw  xmm1,xmm4
    5180:	0f 28 e7             	movaps xmm4,xmm7
    5183:	66 0f 62 fb          	punpckldq xmm7,xmm3
    5187:	66 0f 6a e3          	punpckhdq xmm4,xmm3
    518b:	0f 28 df             	movaps xmm3,xmm7
    518e:	66 0f fd fc          	paddw  xmm7,xmm4
    5192:	66 0f f9 e3          	psubw  xmm4,xmm3
    5196:	0f 28 da             	movaps xmm3,xmm2
    5199:	66 0f 62 d1          	punpckldq xmm2,xmm1
    519d:	66 0f 6a d9          	punpckhdq xmm3,xmm1
    51a1:	0f 28 ca             	movaps xmm1,xmm2
    51a4:	66 0f fd d3          	paddw  xmm2,xmm3
    51a8:	66 0f f9 d9          	psubw  xmm3,xmm1
    51ac:	0f 28 cf             	movaps xmm1,xmm7
    51af:	0f 16 fa             	movlhps xmm7,xmm2
    51b2:	66 0f 6d ca          	punpckhqdq xmm1,xmm2
    51b6:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    51bb:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    51c0:	66 0f ee f9          	pmaxsw xmm7,xmm1
    51c4:	0f 28 d4             	movaps xmm2,xmm4
    51c7:	0f 16 e3             	movlhps xmm4,xmm3
    51ca:	66 0f 6d d3          	punpckhqdq xmm2,xmm3
    51ce:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    51d3:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    51d8:	66 0f ee e2          	pmaxsw xmm4,xmm2
    51dc:	66 0f fd c7          	paddw  xmm0,xmm7
    51e0:	66 0f fd c4          	paddw  xmm0,xmm4
    51e4:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 51ec <x264_8_pixel_satd_4x16_ssse3_atom+0x2ac>
    51eb:	00 
    51ec:	0f 12 c8             	movhlps xmm1,xmm0
    51ef:	66 0f fe c1          	paddd  xmm0,xmm1
    51f3:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    51f8:	66 0f fe c1          	paddd  xmm0,xmm1
    51fc:	66 0f 7e c0          	movd   eax,xmm0
    5200:	c3                   	ret    
    5201:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    5208:	00 
    5209:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000005210 <x264_8_pixel_satd_8x8_internal_ssse3_atom>:
    5210:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    5214:	f3 0f 7e 22          	movq   xmm4,QWORD PTR [rdx]
    5218:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    521c:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    5220:	66 0f f9 c4          	psubw  xmm0,xmm4
    5224:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    5229:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
    522e:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    5232:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    5236:	66 0f f9 cd          	psubw  xmm1,xmm5
    523a:	f3 0f 7e 14 77       	movq   xmm2,QWORD PTR [rdi+rsi*2]
    523f:	f3 0f 7e 24 4a       	movq   xmm4,QWORD PTR [rdx+rcx*2]
    5244:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    5248:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    524c:	66 0f f9 d4          	psubw  xmm2,xmm4
    5250:	f3 42 0f 7e 1c 07    	movq   xmm3,QWORD PTR [rdi+r8*1]
    5256:	f3 42 0f 7e 2c 0a    	movq   xmm5,QWORD PTR [rdx+r9*1]
    525c:	66 0f 60 df          	punpcklbw xmm3,xmm7
    5260:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    5264:	66 0f f9 dd          	psubw  xmm3,xmm5
    5268:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    526c:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    5270:	0f 28 e0             	movaps xmm4,xmm0
    5273:	66 0f fd c1          	paddw  xmm0,xmm1
    5277:	66 0f f9 cc          	psubw  xmm1,xmm4
    527b:	0f 28 e2             	movaps xmm4,xmm2
    527e:	66 0f fd d3          	paddw  xmm2,xmm3
    5282:	66 0f f9 dc          	psubw  xmm3,xmm4
    5286:	0f 28 e0             	movaps xmm4,xmm0
    5289:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    528d:	66 0f 69 e1          	punpckhwd xmm4,xmm1
    5291:	0f 28 ca             	movaps xmm1,xmm2
    5294:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    5298:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    529c:	0f 28 d8             	movaps xmm3,xmm0
    529f:	66 0f fd c2          	paddw  xmm0,xmm2
    52a3:	66 0f f9 d3          	psubw  xmm2,xmm3
    52a7:	0f 28 dc             	movaps xmm3,xmm4
    52aa:	66 0f fd e1          	paddw  xmm4,xmm1
    52ae:	66 0f f9 cb          	psubw  xmm1,xmm3
    52b2:	0f 28 d8             	movaps xmm3,xmm0
    52b5:	66 0f 62 c2          	punpckldq xmm0,xmm2
    52b9:	66 0f 6a da          	punpckhdq xmm3,xmm2
    52bd:	0f 28 d0             	movaps xmm2,xmm0
    52c0:	66 0f fd c3          	paddw  xmm0,xmm3
    52c4:	66 0f f9 da          	psubw  xmm3,xmm2
    52c8:	0f 28 d4             	movaps xmm2,xmm4
    52cb:	66 0f 62 e1          	punpckldq xmm4,xmm1
    52cf:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    52d3:	0f 28 cc             	movaps xmm1,xmm4
    52d6:	66 0f fd e2          	paddw  xmm4,xmm2
    52da:	66 0f f9 d1          	psubw  xmm2,xmm1
    52de:	0f 28 c8             	movaps xmm1,xmm0
    52e1:	0f 16 c4             	movlhps xmm0,xmm4
    52e4:	66 0f 6d cc          	punpckhqdq xmm1,xmm4
    52e8:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    52ed:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    52f2:	66 0f ee c1          	pmaxsw xmm0,xmm1
    52f6:	0f 28 e3             	movaps xmm4,xmm3
    52f9:	0f 16 da             	movlhps xmm3,xmm2
    52fc:	66 0f 6d e2          	punpckhqdq xmm4,xmm2
    5300:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    5305:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    530a:	66 0f ee dc          	pmaxsw xmm3,xmm4
    530e:	66 0f fd f0          	paddw  xmm6,xmm0
    5312:	66 0f fd f3          	paddw  xmm6,xmm3
    5316:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    531a:	f3 0f 7e 12          	movq   xmm2,QWORD PTR [rdx]
    531e:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    5322:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    5326:	66 0f f9 c2          	psubw  xmm0,xmm2
    532a:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    532f:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
    5334:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    5338:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    533c:	66 0f f9 cd          	psubw  xmm1,xmm5
    5340:	f3 0f 7e 1c 77       	movq   xmm3,QWORD PTR [rdi+rsi*2]
    5345:	f3 0f 7e 14 4a       	movq   xmm2,QWORD PTR [rdx+rcx*2]
    534a:	66 0f 60 df          	punpcklbw xmm3,xmm7
    534e:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    5352:	66 0f f9 da          	psubw  xmm3,xmm2
    5356:	f3 42 0f 7e 24 07    	movq   xmm4,QWORD PTR [rdi+r8*1]
    535c:	f3 42 0f 7e 2c 0a    	movq   xmm5,QWORD PTR [rdx+r9*1]
    5362:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    5366:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    536a:	66 0f f9 e5          	psubw  xmm4,xmm5
    536e:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    5372:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    5376:	0f 28 d0             	movaps xmm2,xmm0
    5379:	66 0f fd c1          	paddw  xmm0,xmm1
    537d:	66 0f f9 ca          	psubw  xmm1,xmm2
    5381:	0f 28 d3             	movaps xmm2,xmm3
    5384:	66 0f fd dc          	paddw  xmm3,xmm4
    5388:	66 0f f9 e2          	psubw  xmm4,xmm2
    538c:	0f 28 d0             	movaps xmm2,xmm0
    538f:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    5393:	66 0f 69 d1          	punpckhwd xmm2,xmm1
    5397:	0f 28 cb             	movaps xmm1,xmm3
    539a:	66 0f 61 dc          	punpcklwd xmm3,xmm4
    539e:	66 0f 69 cc          	punpckhwd xmm1,xmm4
    53a2:	0f 28 e0             	movaps xmm4,xmm0
    53a5:	66 0f fd c3          	paddw  xmm0,xmm3
    53a9:	66 0f f9 dc          	psubw  xmm3,xmm4
    53ad:	0f 28 e2             	movaps xmm4,xmm2
    53b0:	66 0f fd d1          	paddw  xmm2,xmm1
    53b4:	66 0f f9 cc          	psubw  xmm1,xmm4
    53b8:	0f 28 e0             	movaps xmm4,xmm0
    53bb:	66 0f 62 c3          	punpckldq xmm0,xmm3
    53bf:	66 0f 6a e3          	punpckhdq xmm4,xmm3
    53c3:	0f 28 d8             	movaps xmm3,xmm0
    53c6:	66 0f fd c4          	paddw  xmm0,xmm4
    53ca:	66 0f f9 e3          	psubw  xmm4,xmm3
    53ce:	0f 28 da             	movaps xmm3,xmm2
    53d1:	66 0f 62 d1          	punpckldq xmm2,xmm1
    53d5:	66 0f 6a d9          	punpckhdq xmm3,xmm1
    53d9:	0f 28 ca             	movaps xmm1,xmm2
    53dc:	66 0f fd d3          	paddw  xmm2,xmm3
    53e0:	66 0f f9 d9          	psubw  xmm3,xmm1
    53e4:	0f 28 c8             	movaps xmm1,xmm0
    53e7:	0f 16 c2             	movlhps xmm0,xmm2
    53ea:	66 0f 6d ca          	punpckhqdq xmm1,xmm2
    53ee:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    53f3:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    53f8:	66 0f ee c1          	pmaxsw xmm0,xmm1
    53fc:	0f 28 d4             	movaps xmm2,xmm4
    53ff:	0f 16 e3             	movlhps xmm4,xmm3
    5402:	66 0f 6d d3          	punpckhqdq xmm2,xmm3
    5406:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    540b:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    5410:	66 0f ee e2          	pmaxsw xmm4,xmm2
    5414:	66 0f fd f0          	paddw  xmm6,xmm0
    5418:	66 0f fd f4          	paddw  xmm6,xmm4
    541c:	c3                   	ret    
    541d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000005420 <x264_8_pixel_satd_16x4_internal_ssse3_atom>:
    5420:	0f 10 12             	movups xmm2,XMMWORD PTR [rdx]
    5423:	0f 28 27             	movaps xmm4,XMMWORD PTR [rdi]
    5426:	66 0f 6f cf          	movdqa xmm1,xmm7
    542a:	66 0f db ca          	pand   xmm1,xmm2
    542e:	66 0f 6f c7          	movdqa xmm0,xmm7
    5432:	66 0f db c4          	pand   xmm0,xmm4
    5436:	66 0f 71 d4 08       	psrlw  xmm4,0x8
    543b:	66 0f 71 d2 08       	psrlw  xmm2,0x8
    5440:	66 0f f9 c1          	psubw  xmm0,xmm1
    5444:	66 0f f9 e2          	psubw  xmm4,xmm2
    5448:	0f 28 c8             	movaps xmm1,xmm0
    544b:	66 0f fd c4          	paddw  xmm0,xmm4
    544f:	66 0f f9 e1          	psubw  xmm4,xmm1
    5453:	0f 10 1c 0a          	movups xmm3,XMMWORD PTR [rdx+rcx*1]
    5457:	44 0f 28 04 37       	movaps xmm8,XMMWORD PTR [rdi+rsi*1]
    545c:	66 0f 6f d7          	movdqa xmm2,xmm7
    5460:	66 0f db d3          	pand   xmm2,xmm3
    5464:	66 0f 6f cf          	movdqa xmm1,xmm7
    5468:	66 41 0f db c8       	pand   xmm1,xmm8
    546d:	66 41 0f 71 d0 08    	psrlw  xmm8,0x8
    5473:	66 0f 71 d3 08       	psrlw  xmm3,0x8
    5478:	66 0f f9 ca          	psubw  xmm1,xmm2
    547c:	66 44 0f f9 c3       	psubw  xmm8,xmm3
    5481:	0f 28 d1             	movaps xmm2,xmm1
    5484:	66 41 0f fd c8       	paddw  xmm1,xmm8
    5489:	66 44 0f f9 c2       	psubw  xmm8,xmm2
    548e:	0f 10 34 4a          	movups xmm6,XMMWORD PTR [rdx+rcx*2]
    5492:	0f 28 2c 77          	movaps xmm5,XMMWORD PTR [rdi+rsi*2]
    5496:	66 0f 6f df          	movdqa xmm3,xmm7
    549a:	66 0f db de          	pand   xmm3,xmm6
    549e:	66 0f 6f d7          	movdqa xmm2,xmm7
    54a2:	66 0f db d5          	pand   xmm2,xmm5
    54a6:	66 0f 71 d5 08       	psrlw  xmm5,0x8
    54ab:	66 0f 71 d6 08       	psrlw  xmm6,0x8
    54b0:	66 0f f9 d3          	psubw  xmm2,xmm3
    54b4:	66 0f f9 ee          	psubw  xmm5,xmm6
    54b8:	0f 28 da             	movaps xmm3,xmm2
    54bb:	66 0f fd d5          	paddw  xmm2,xmm5
    54bf:	66 0f f9 eb          	psubw  xmm5,xmm3
    54c3:	42 0f 10 34 0a       	movups xmm6,XMMWORD PTR [rdx+r9*1]
    54c8:	46 0f 28 0c 07       	movaps xmm9,XMMWORD PTR [rdi+r8*1]
    54cd:	66 44 0f 6f df       	movdqa xmm11,xmm7
    54d2:	66 44 0f db de       	pand   xmm11,xmm6
    54d7:	66 0f 6f df          	movdqa xmm3,xmm7
    54db:	66 41 0f db d9       	pand   xmm3,xmm9
    54e0:	66 41 0f 71 d1 08    	psrlw  xmm9,0x8
    54e6:	66 0f 71 d6 08       	psrlw  xmm6,0x8
    54eb:	66 41 0f f9 db       	psubw  xmm3,xmm11
    54f0:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    54f5:	44 0f 28 db          	movaps xmm11,xmm3
    54f9:	66 41 0f fd d9       	paddw  xmm3,xmm9
    54fe:	66 45 0f f9 cb       	psubw  xmm9,xmm11
    5503:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    5507:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    550b:	0f 28 f0             	movaps xmm6,xmm0
    550e:	66 0f fd c1          	paddw  xmm0,xmm1
    5512:	66 0f f9 ce          	psubw  xmm1,xmm6
    5516:	0f 28 f2             	movaps xmm6,xmm2
    5519:	66 0f fd d3          	paddw  xmm2,xmm3
    551d:	66 0f f9 de          	psubw  xmm3,xmm6
    5521:	0f 28 f0             	movaps xmm6,xmm0
    5524:	66 0f fd c2          	paddw  xmm0,xmm2
    5528:	66 0f f9 d6          	psubw  xmm2,xmm6
    552c:	0f 28 f1             	movaps xmm6,xmm1
    552f:	66 0f fd cb          	paddw  xmm1,xmm3
    5533:	66 0f f9 de          	psubw  xmm3,xmm6
    5537:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    553c:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    5541:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    5546:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    554b:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 5552 <x264_8_pixel_satd_16x4_internal_ssse3_atom+0x132>
    5552:	44 0f 28 da          	movaps xmm11,xmm2
    5556:	66 0f 72 f2 10       	pslld  xmm2,0x10
    555b:	66 44 0f db de       	pand   xmm11,xmm6
    5560:	66 0f df f0          	pandn  xmm6,xmm0
    5564:	66 0f 72 d0 10       	psrld  xmm0,0x10
    5569:	66 0f eb d6          	por    xmm2,xmm6
    556d:	66 41 0f eb c3       	por    xmm0,xmm11
    5572:	66 0f ee c2          	pmaxsw xmm0,xmm2
    5576:	66 44 0f fd d0       	paddw  xmm10,xmm0
    557b:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 5582 <x264_8_pixel_satd_16x4_internal_ssse3_atom+0x162>
    5582:	44 0f 28 db          	movaps xmm11,xmm3
    5586:	66 0f 72 f3 10       	pslld  xmm3,0x10
    558b:	66 44 0f db de       	pand   xmm11,xmm6
    5590:	66 0f df f1          	pandn  xmm6,xmm1
    5594:	66 0f 72 d1 10       	psrld  xmm1,0x10
    5599:	66 0f eb de          	por    xmm3,xmm6
    559d:	66 41 0f eb cb       	por    xmm1,xmm11
    55a2:	66 0f ee cb          	pmaxsw xmm1,xmm3
    55a6:	66 44 0f fd d1       	paddw  xmm10,xmm1
    55ab:	0f 28 f4             	movaps xmm6,xmm4
    55ae:	66 41 0f fd e0       	paddw  xmm4,xmm8
    55b3:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    55b8:	0f 28 f5             	movaps xmm6,xmm5
    55bb:	66 41 0f fd e9       	paddw  xmm5,xmm9
    55c0:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    55c5:	0f 28 f4             	movaps xmm6,xmm4
    55c8:	66 0f fd e5          	paddw  xmm4,xmm5
    55cc:	66 0f f9 ee          	psubw  xmm5,xmm6
    55d0:	41 0f 28 f0          	movaps xmm6,xmm8
    55d4:	66 45 0f fd c1       	paddw  xmm8,xmm9
    55d9:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    55de:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    55e3:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    55e8:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    55ee:	66 45 0f 38 1d c9    	pabsw  xmm9,xmm9
    55f4:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 55fb <x264_8_pixel_satd_16x4_internal_ssse3_atom+0x1db>
    55fb:	0f 28 dd             	movaps xmm3,xmm5
    55fe:	66 0f 72 f5 10       	pslld  xmm5,0x10
    5603:	66 0f db de          	pand   xmm3,xmm6
    5607:	66 0f df f4          	pandn  xmm6,xmm4
    560b:	66 0f 72 d4 10       	psrld  xmm4,0x10
    5610:	66 0f eb ee          	por    xmm5,xmm6
    5614:	66 0f eb e3          	por    xmm4,xmm3
    5618:	66 0f ee e5          	pmaxsw xmm4,xmm5
    561c:	66 44 0f fd d4       	paddw  xmm10,xmm4
    5621:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 5628 <x264_8_pixel_satd_16x4_internal_ssse3_atom+0x208>
    5628:	41 0f 28 d9          	movaps xmm3,xmm9
    562c:	66 41 0f 72 f1 10    	pslld  xmm9,0x10
    5632:	66 0f db de          	pand   xmm3,xmm6
    5636:	66 41 0f df f0       	pandn  xmm6,xmm8
    563b:	66 41 0f 72 d0 10    	psrld  xmm8,0x10
    5641:	66 44 0f eb ce       	por    xmm9,xmm6
    5646:	66 44 0f eb c3       	por    xmm8,xmm3
    564b:	66 45 0f ee c1       	pmaxsw xmm8,xmm9
    5650:	66 45 0f fd d0       	paddw  xmm10,xmm8
    5655:	c3                   	ret    
    5656:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    565d:	00 
    565e:	66 90                	xchg   ax,ax

0000000000005660 <x264_8_pixel_satd_16x8_ssse3_atom>:
    5660:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    5664:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    5668:	66 45 0f ef d2       	pxor   xmm10,xmm10
    566d:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 5674 <x264_8_pixel_satd_16x8_ssse3_atom+0x14>
    5674:	eb 28                	jmp    569e <x264_8_pixel_satd_16x16_ssse3_atom+0x1e>
    5676:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    567d:	00 
    567e:	66 90                	xchg   ax,ax

0000000000005680 <x264_8_pixel_satd_16x16_ssse3_atom>:
    5680:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    5684:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    5688:	66 45 0f ef d2       	pxor   xmm10,xmm10
    568d:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 5694 <x264_8_pixel_satd_16x16_ssse3_atom+0x14>
    5694:	e8 87 fd ff ff       	call   5420 <x264_8_pixel_satd_16x4_internal_ssse3_atom>
    5699:	e8 82 fd ff ff       	call   5420 <x264_8_pixel_satd_16x4_internal_ssse3_atom>
    569e:	e8 7d fd ff ff       	call   5420 <x264_8_pixel_satd_16x4_internal_ssse3_atom>
    56a3:	e8 78 fd ff ff       	call   5420 <x264_8_pixel_satd_16x4_internal_ssse3_atom>
    56a8:	66 44 0f f5 15 00 00 	pmaddwd xmm10,XMMWORD PTR [rip+0x0]        # 56b1 <x264_8_pixel_satd_16x16_ssse3_atom+0x31>
    56af:	00 00 
    56b1:	41 0f 12 fa          	movhlps xmm7,xmm10
    56b5:	66 44 0f fe d7       	paddd  xmm10,xmm7
    56ba:	f2 41 0f 70 fa 4e    	pshuflw xmm7,xmm10,0x4e
    56c0:	66 44 0f fe d7       	paddd  xmm10,xmm7
    56c5:	66 44 0f 7e d0       	movd   eax,xmm10
    56ca:	c3                   	ret    
    56cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000056d0 <x264_8_pixel_satd_8x16_ssse3_atom>:
    56d0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    56d4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    56d8:	66 0f ef f6          	pxor   xmm6,xmm6
    56dc:	e8 2f fb ff ff       	call   5210 <x264_8_pixel_satd_8x8_internal_ssse3_atom>
    56e1:	e8 2a fb ff ff       	call   5210 <x264_8_pixel_satd_8x8_internal_ssse3_atom>
    56e6:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 56ee <x264_8_pixel_satd_8x16_ssse3_atom+0x1e>
    56ed:	00 
    56ee:	0f 12 fe             	movhlps xmm7,xmm6
    56f1:	66 0f fe f7          	paddd  xmm6,xmm7
    56f5:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    56fa:	66 0f fe f7          	paddd  xmm6,xmm7
    56fe:	66 0f 7e f0          	movd   eax,xmm6
    5702:	c3                   	ret    
    5703:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    570a:	00 
    570b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000005710 <x264_8_pixel_satd_8x8_ssse3_atom>:
    5710:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    5714:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    5718:	66 0f ef f6          	pxor   xmm6,xmm6
    571c:	e8 ef fa ff ff       	call   5210 <x264_8_pixel_satd_8x8_internal_ssse3_atom>
    5721:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 5729 <x264_8_pixel_satd_8x8_ssse3_atom+0x19>
    5728:	00 
    5729:	0f 12 fe             	movhlps xmm7,xmm6
    572c:	66 0f fe f7          	paddd  xmm6,xmm7
    5730:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    5735:	66 0f fe f7          	paddd  xmm6,xmm7
    5739:	66 0f 7e f0          	movd   eax,xmm6
    573d:	c3                   	ret    
    573e:	66 90                	xchg   ax,ax

0000000000005740 <x264_8_pixel_satd_8x4_ssse3_atom>:
    5740:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    5744:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    5748:	66 0f ef f6          	pxor   xmm6,xmm6
    574c:	e8 c5 fb ff ff       	call   5316 <x264_8_pixel_satd_8x8_internal_ssse3_atom+0x106>
    5751:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 5759 <x264_8_pixel_satd_8x4_ssse3_atom+0x19>
    5758:	00 
    5759:	0f 12 fe             	movhlps xmm7,xmm6
    575c:	66 0f fe f7          	paddd  xmm6,xmm7
    5760:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    5765:	66 0f fe f7          	paddd  xmm6,xmm7
    5769:	66 0f 7e f0          	movd   eax,xmm6
    576d:	c3                   	ret    
    576e:	66 90                	xchg   ax,ax

0000000000005770 <x264_8_pixel_sa8d_8x8_internal_ssse3_atom>:
    5770:	48 8d 04 b7          	lea    rax,[rdi+rsi*4]
    5774:	4c 8d 14 8a          	lea    r10,[rdx+rcx*4]
    5778:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    577c:	f3 0f 7e 2a          	movq   xmm5,QWORD PTR [rdx]
    5780:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    5784:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    5788:	66 0f f9 c5          	psubw  xmm0,xmm5
    578c:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    5791:	f3 0f 7e 34 0a       	movq   xmm6,QWORD PTR [rdx+rcx*1]
    5796:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    579a:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    579e:	66 0f f9 ce          	psubw  xmm1,xmm6
    57a2:	f3 0f 7e 14 77       	movq   xmm2,QWORD PTR [rdi+rsi*2]
    57a7:	f3 0f 7e 2c 4a       	movq   xmm5,QWORD PTR [rdx+rcx*2]
    57ac:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    57b0:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    57b4:	66 0f f9 d5          	psubw  xmm2,xmm5
    57b8:	f3 46 0f 7e 04 07    	movq   xmm8,QWORD PTR [rdi+r8*1]
    57be:	f3 42 0f 7e 34 0a    	movq   xmm6,QWORD PTR [rdx+r9*1]
    57c4:	66 44 0f 60 c7       	punpcklbw xmm8,xmm7
    57c9:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    57cd:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    57d2:	f3 0f 7e 20          	movq   xmm4,QWORD PTR [rax]
    57d6:	f3 45 0f 7e 1a       	movq   xmm11,QWORD PTR [r10]
    57db:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    57df:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    57e4:	66 41 0f f9 e3       	psubw  xmm4,xmm11
    57e9:	f3 0f 7e 2c 30       	movq   xmm5,QWORD PTR [rax+rsi*1]
    57ee:	f3 41 0f 7e 34 0a    	movq   xmm6,QWORD PTR [r10+rcx*1]
    57f4:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    57f8:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    57fc:	66 0f f9 ee          	psubw  xmm5,xmm6
    5800:	f3 0f 7e 1c 70       	movq   xmm3,QWORD PTR [rax+rsi*2]
    5805:	f3 45 0f 7e 1c 4a    	movq   xmm11,QWORD PTR [r10+rcx*2]
    580b:	66 0f 60 df          	punpcklbw xmm3,xmm7
    580f:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    5814:	66 41 0f f9 db       	psubw  xmm3,xmm11
    5819:	f3 46 0f 7e 0c 00    	movq   xmm9,QWORD PTR [rax+r8*1]
    581f:	f3 43 0f 7e 34 0a    	movq   xmm6,QWORD PTR [r10+r9*1]
    5825:	66 44 0f 60 cf       	punpcklbw xmm9,xmm7
    582a:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    582e:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    5833:	0f 28 f0             	movaps xmm6,xmm0
    5836:	66 0f fd c1          	paddw  xmm0,xmm1
    583a:	66 0f f9 ce          	psubw  xmm1,xmm6
    583e:	0f 28 f2             	movaps xmm6,xmm2
    5841:	66 41 0f fd d0       	paddw  xmm2,xmm8
    5846:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    584b:	0f 28 f0             	movaps xmm6,xmm0
    584e:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    5852:	66 0f 69 f1          	punpckhwd xmm6,xmm1
    5856:	0f 28 c8             	movaps xmm1,xmm0
    5859:	66 0f fd c6          	paddw  xmm0,xmm6
    585d:	66 0f f9 f1          	psubw  xmm6,xmm1
    5861:	0f 28 ca             	movaps xmm1,xmm2
    5864:	66 41 0f 61 d0       	punpcklwd xmm2,xmm8
    5869:	66 41 0f 69 c8       	punpckhwd xmm1,xmm8
    586e:	44 0f 28 c2          	movaps xmm8,xmm2
    5872:	66 0f fd d1          	paddw  xmm2,xmm1
    5876:	66 41 0f f9 c8       	psubw  xmm1,xmm8
    587b:	44 0f 28 c4          	movaps xmm8,xmm4
    587f:	66 0f fd e5          	paddw  xmm4,xmm5
    5883:	66 41 0f f9 e8       	psubw  xmm5,xmm8
    5888:	44 0f 28 c3          	movaps xmm8,xmm3
    588c:	66 41 0f fd d9       	paddw  xmm3,xmm9
    5891:	66 45 0f f9 c8       	psubw  xmm9,xmm8
    5896:	44 0f 28 c4          	movaps xmm8,xmm4
    589a:	66 0f 61 e5          	punpcklwd xmm4,xmm5
    589e:	66 44 0f 69 c5       	punpckhwd xmm8,xmm5
    58a3:	0f 28 ec             	movaps xmm5,xmm4
    58a6:	66 41 0f fd e0       	paddw  xmm4,xmm8
    58ab:	66 44 0f f9 c5       	psubw  xmm8,xmm5
    58b0:	0f 28 eb             	movaps xmm5,xmm3
    58b3:	66 41 0f 61 d9       	punpcklwd xmm3,xmm9
    58b8:	66 41 0f 69 e9       	punpckhwd xmm5,xmm9
    58bd:	44 0f 28 cb          	movaps xmm9,xmm3
    58c1:	66 0f fd dd          	paddw  xmm3,xmm5
    58c5:	66 41 0f f9 e9       	psubw  xmm5,xmm9
    58ca:	44 0f 28 c8          	movaps xmm9,xmm0
    58ce:	66 0f fd c2          	paddw  xmm0,xmm2
    58d2:	66 41 0f f9 d1       	psubw  xmm2,xmm9
    58d7:	44 0f 28 ce          	movaps xmm9,xmm6
    58db:	66 0f fd f1          	paddw  xmm6,xmm1
    58df:	66 41 0f f9 c9       	psubw  xmm1,xmm9
    58e4:	44 0f 28 c8          	movaps xmm9,xmm0
    58e8:	66 0f 62 c2          	punpckldq xmm0,xmm2
    58ec:	66 44 0f 6a ca       	punpckhdq xmm9,xmm2
    58f1:	0f 28 d0             	movaps xmm2,xmm0
    58f4:	66 41 0f fd c1       	paddw  xmm0,xmm9
    58f9:	66 44 0f f9 ca       	psubw  xmm9,xmm2
    58fe:	0f 28 d6             	movaps xmm2,xmm6
    5901:	66 0f 62 f1          	punpckldq xmm6,xmm1
    5905:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    5909:	0f 28 ce             	movaps xmm1,xmm6
    590c:	66 0f fd f2          	paddw  xmm6,xmm2
    5910:	66 0f f9 d1          	psubw  xmm2,xmm1
    5914:	0f 28 cc             	movaps xmm1,xmm4
    5917:	66 0f fd e3          	paddw  xmm4,xmm3
    591b:	66 0f f9 d9          	psubw  xmm3,xmm1
    591f:	41 0f 28 c8          	movaps xmm1,xmm8
    5923:	66 44 0f fd c5       	paddw  xmm8,xmm5
    5928:	66 0f f9 e9          	psubw  xmm5,xmm1
    592c:	0f 28 cc             	movaps xmm1,xmm4
    592f:	66 0f 62 e3          	punpckldq xmm4,xmm3
    5933:	66 0f 6a cb          	punpckhdq xmm1,xmm3
    5937:	0f 28 dc             	movaps xmm3,xmm4
    593a:	66 0f fd e1          	paddw  xmm4,xmm1
    593e:	66 0f f9 cb          	psubw  xmm1,xmm3
    5942:	41 0f 28 d8          	movaps xmm3,xmm8
    5946:	66 44 0f 62 c5       	punpckldq xmm8,xmm5
    594b:	66 0f 6a dd          	punpckhdq xmm3,xmm5
    594f:	41 0f 28 e8          	movaps xmm5,xmm8
    5953:	66 44 0f fd c3       	paddw  xmm8,xmm3
    5958:	66 0f f9 dd          	psubw  xmm3,xmm5
    595c:	0f 28 e8             	movaps xmm5,xmm0
    595f:	66 0f fd c4          	paddw  xmm0,xmm4
    5963:	66 0f f9 e5          	psubw  xmm4,xmm5
    5967:	41 0f 28 e9          	movaps xmm5,xmm9
    596b:	66 44 0f fd c9       	paddw  xmm9,xmm1
    5970:	66 0f f9 cd          	psubw  xmm1,xmm5
    5974:	0f 28 e8             	movaps xmm5,xmm0
    5977:	0f 16 c4             	movlhps xmm0,xmm4
    597a:	66 0f 6d ec          	punpckhqdq xmm5,xmm4
    597e:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    5983:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    5988:	66 0f ee c5          	pmaxsw xmm0,xmm5
    598c:	41 0f 28 e1          	movaps xmm4,xmm9
    5990:	44 0f 16 c9          	movlhps xmm9,xmm1
    5994:	66 0f 6d e1          	punpckhqdq xmm4,xmm1
    5998:	66 45 0f 38 1d c9    	pabsw  xmm9,xmm9
    599e:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    59a3:	66 44 0f ee cc       	pmaxsw xmm9,xmm4
    59a8:	0f 28 ce             	movaps xmm1,xmm6
    59ab:	66 41 0f fd f0       	paddw  xmm6,xmm8
    59b0:	66 44 0f f9 c1       	psubw  xmm8,xmm1
    59b5:	0f 28 ca             	movaps xmm1,xmm2
    59b8:	66 0f fd d3          	paddw  xmm2,xmm3
    59bc:	66 0f f9 d9          	psubw  xmm3,xmm1
    59c0:	0f 28 ce             	movaps xmm1,xmm6
    59c3:	41 0f 16 f0          	movlhps xmm6,xmm8
    59c7:	66 41 0f 6d c8       	punpckhqdq xmm1,xmm8
    59cc:	66 0f 38 1d f6       	pabsw  xmm6,xmm6
    59d1:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    59d6:	66 0f ee f1          	pmaxsw xmm6,xmm1
    59da:	44 0f 28 c2          	movaps xmm8,xmm2
    59de:	0f 16 d3             	movlhps xmm2,xmm3
    59e1:	66 44 0f 6d c3       	punpckhqdq xmm8,xmm3
    59e6:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    59eb:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    59f1:	66 41 0f ee d0       	pmaxsw xmm2,xmm8
    59f6:	66 0f fd c6          	paddw  xmm0,xmm6
    59fa:	66 41 0f fd c1       	paddw  xmm0,xmm9
    59ff:	66 0f fd c2          	paddw  xmm0,xmm2
    5a03:	c3                   	ret    
    5a04:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    5a0b:	00 
    5a0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000005a10 <x264_8_pixel_sa8d_8x8_ssse3_atom>:
    5a10:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    5a14:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    5a18:	e8 53 fd ff ff       	call   5770 <x264_8_pixel_sa8d_8x8_internal_ssse3_atom>
    5a1d:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 5a25 <x264_8_pixel_sa8d_8x8_ssse3_atom+0x15>
    5a24:	00 
    5a25:	0f 12 f0             	movhlps xmm6,xmm0
    5a28:	66 0f fe c6          	paddd  xmm0,xmm6
    5a2c:	f2 0f 70 f0 4e       	pshuflw xmm6,xmm0,0x4e
    5a31:	66 0f fe c6          	paddd  xmm0,xmm6
    5a35:	66 0f 7e c0          	movd   eax,xmm0
    5a39:	83 c0 01             	add    eax,0x1
    5a3c:	d1 e8                	shr    eax,1
    5a3e:	c3                   	ret    
    5a3f:	90                   	nop

0000000000005a40 <x264_8_pixel_sa8d_16x16_ssse3_atom>:
    5a40:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    5a44:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    5a48:	e8 23 fd ff ff       	call   5770 <x264_8_pixel_sa8d_8x8_internal_ssse3_atom>
    5a4d:	48 83 c2 08          	add    rdx,0x8
    5a51:	48 83 c7 08          	add    rdi,0x8
    5a55:	44 0f 28 d0          	movaps xmm10,xmm0
    5a59:	e8 12 fd ff ff       	call   5770 <x264_8_pixel_sa8d_8x8_internal_ssse3_atom>
    5a5e:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
    5a62:	48 8d 3c f7          	lea    rdi,[rdi+rsi*8]
    5a66:	66 44 0f dd d0       	paddusw xmm10,xmm0
    5a6b:	e8 00 fd ff ff       	call   5770 <x264_8_pixel_sa8d_8x8_internal_ssse3_atom>
    5a70:	48 83 ea 08          	sub    rdx,0x8
    5a74:	48 83 ef 08          	sub    rdi,0x8
    5a78:	66 44 0f dd d0       	paddusw xmm10,xmm0
    5a7d:	e8 ee fc ff ff       	call   5770 <x264_8_pixel_sa8d_8x8_internal_ssse3_atom>
    5a82:	66 44 0f dd d0       	paddusw xmm10,xmm0
    5a87:	66 41 0f 6f f2       	movdqa xmm6,xmm10
    5a8c:	66 0f 72 d6 10       	psrld  xmm6,0x10
    5a91:	66 41 0f 72 f2 10    	pslld  xmm10,0x10
    5a97:	66 41 0f 72 d2 10    	psrld  xmm10,0x10
    5a9d:	66 44 0f fe d6       	paddd  xmm10,xmm6
    5aa2:	41 0f 12 f2          	movhlps xmm6,xmm10
    5aa6:	66 44 0f fe d6       	paddd  xmm10,xmm6
    5aab:	f2 41 0f 70 f2 4e    	pshuflw xmm6,xmm10,0x4e
    5ab1:	66 44 0f fe d6       	paddd  xmm10,xmm6
    5ab6:	66 44 0f 7e d0       	movd   eax,xmm10
    5abb:	83 c0 01             	add    eax,0x1
    5abe:	d1 e8                	shr    eax,1
    5ac0:	c3                   	ret    
    5ac1:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    5ac8:	00 
    5ac9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000005ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>:
    5ad0:	66 0f ef ff          	pxor   xmm7,xmm7
    5ad4:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    5ad8:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    5add:	f3 0f 7e 14 77       	movq   xmm2,QWORD PTR [rdi+rsi*2]
    5ae2:	f3 0f 7e 1c 17       	movq   xmm3,QWORD PTR [rdi+rdx*1]
    5ae7:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    5aeb:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    5aef:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    5af3:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    5af7:	66 0f 60 df          	punpcklbw xmm3,xmm7
    5afb:	0f 28 e0             	movaps xmm4,xmm0
    5afe:	66 0f fd c1          	paddw  xmm0,xmm1
    5b02:	66 0f f9 cc          	psubw  xmm1,xmm4
    5b06:	0f 28 e2             	movaps xmm4,xmm2
    5b09:	66 0f fd d3          	paddw  xmm2,xmm3
    5b0d:	66 0f f9 dc          	psubw  xmm3,xmm4
    5b11:	0f 28 e0             	movaps xmm4,xmm0
    5b14:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    5b18:	66 0f 69 e1          	punpckhwd xmm4,xmm1
    5b1c:	0f 28 ca             	movaps xmm1,xmm2
    5b1f:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    5b23:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    5b27:	0f 28 d8             	movaps xmm3,xmm0
    5b2a:	66 0f fd c2          	paddw  xmm0,xmm2
    5b2e:	66 0f f9 d3          	psubw  xmm2,xmm3
    5b32:	0f 28 dc             	movaps xmm3,xmm4
    5b35:	66 0f fd e1          	paddw  xmm4,xmm1
    5b39:	66 0f f9 cb          	psubw  xmm1,xmm3
    5b3d:	0f 28 d8             	movaps xmm3,xmm0
    5b40:	66 0f 62 c2          	punpckldq xmm0,xmm2
    5b44:	66 0f 6a da          	punpckhdq xmm3,xmm2
    5b48:	0f 28 d0             	movaps xmm2,xmm0
    5b4b:	66 0f fd c3          	paddw  xmm0,xmm3
    5b4f:	66 0f f9 da          	psubw  xmm3,xmm2
    5b53:	0f 28 d4             	movaps xmm2,xmm4
    5b56:	66 0f 62 e1          	punpckldq xmm4,xmm1
    5b5a:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    5b5e:	0f 28 cc             	movaps xmm1,xmm4
    5b61:	66 0f fd e2          	paddw  xmm4,xmm2
    5b65:	66 0f f9 d1          	psubw  xmm2,xmm1
    5b69:	0f 28 c8             	movaps xmm1,xmm0
    5b6c:	0f 16 c4             	movlhps xmm0,xmm4
    5b6f:	66 0f 6d cc          	punpckhqdq xmm1,xmm4
    5b73:	0f 28 e0             	movaps xmm4,xmm0
    5b76:	66 0f fd c1          	paddw  xmm0,xmm1
    5b7a:	66 0f f9 cc          	psubw  xmm1,xmm4
    5b7e:	0f 28 e3             	movaps xmm4,xmm3
    5b81:	0f 16 da             	movlhps xmm3,xmm2
    5b84:	66 0f 6d e2          	punpckhqdq xmm4,xmm2
    5b88:	0f 28 d3             	movaps xmm2,xmm3
    5b8b:	66 0f fd dc          	paddw  xmm3,xmm4
    5b8f:	66 0f f9 e2          	psubw  xmm4,xmm2
    5b93:	44 0f 28 c1          	movaps xmm8,xmm1
    5b97:	f3 0f 7e 17          	movq   xmm2,QWORD PTR [rdi]
    5b9b:	f3 0f 7e 2c 37       	movq   xmm5,QWORD PTR [rdi+rsi*1]
    5ba0:	f3 0f 7e 34 77       	movq   xmm6,QWORD PTR [rdi+rsi*2]
    5ba5:	f3 0f 7e 0c 17       	movq   xmm1,QWORD PTR [rdi+rdx*1]
    5baa:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    5bae:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    5bb2:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    5bb6:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    5bba:	0f 28 fa             	movaps xmm7,xmm2
    5bbd:	66 0f fd d5          	paddw  xmm2,xmm5
    5bc1:	66 0f f9 ef          	psubw  xmm5,xmm7
    5bc5:	0f 28 fe             	movaps xmm7,xmm6
    5bc8:	66 0f fd f1          	paddw  xmm6,xmm1
    5bcc:	66 0f f9 cf          	psubw  xmm1,xmm7
    5bd0:	0f 28 fa             	movaps xmm7,xmm2
    5bd3:	66 0f 61 d5          	punpcklwd xmm2,xmm5
    5bd7:	66 0f 69 fd          	punpckhwd xmm7,xmm5
    5bdb:	0f 28 ee             	movaps xmm5,xmm6
    5bde:	66 0f 61 f1          	punpcklwd xmm6,xmm1
    5be2:	66 0f 69 e9          	punpckhwd xmm5,xmm1
    5be6:	0f 28 ca             	movaps xmm1,xmm2
    5be9:	66 0f fd d6          	paddw  xmm2,xmm6
    5bed:	66 0f f9 f1          	psubw  xmm6,xmm1
    5bf1:	0f 28 cf             	movaps xmm1,xmm7
    5bf4:	66 0f fd fd          	paddw  xmm7,xmm5
    5bf8:	66 0f f9 e9          	psubw  xmm5,xmm1
    5bfc:	0f 28 ca             	movaps xmm1,xmm2
    5bff:	66 0f 62 d6          	punpckldq xmm2,xmm6
    5c03:	66 0f 6a ce          	punpckhdq xmm1,xmm6
    5c07:	0f 28 f2             	movaps xmm6,xmm2
    5c0a:	66 0f fd d1          	paddw  xmm2,xmm1
    5c0e:	66 0f f9 ce          	psubw  xmm1,xmm6
    5c12:	0f 28 f7             	movaps xmm6,xmm7
    5c15:	66 0f 62 fd          	punpckldq xmm7,xmm5
    5c19:	66 0f 6a f5          	punpckhdq xmm6,xmm5
    5c1d:	0f 28 ef             	movaps xmm5,xmm7
    5c20:	66 0f fd fe          	paddw  xmm7,xmm6
    5c24:	66 0f f9 f5          	psubw  xmm6,xmm5
    5c28:	0f 28 ea             	movaps xmm5,xmm2
    5c2b:	0f 16 d7             	movlhps xmm2,xmm7
    5c2e:	66 0f 6d ef          	punpckhqdq xmm5,xmm7
    5c32:	0f 28 fa             	movaps xmm7,xmm2
    5c35:	66 0f fd d5          	paddw  xmm2,xmm5
    5c39:	66 0f f9 ef          	psubw  xmm5,xmm7
    5c3d:	0f 28 f9             	movaps xmm7,xmm1
    5c40:	0f 16 ce             	movlhps xmm1,xmm6
    5c43:	66 0f 6d fe          	punpckhqdq xmm7,xmm6
    5c47:	0f 28 f1             	movaps xmm6,xmm1
    5c4a:	66 0f fd cf          	paddw  xmm1,xmm7
    5c4e:	66 0f f9 fe          	psubw  xmm7,xmm6
    5c52:	44 0f 28 cb          	movaps xmm9,xmm3
    5c56:	44 0f 28 d4          	movaps xmm10,xmm4
    5c5a:	66 0f 38 1d f0       	pabsw  xmm6,xmm0
    5c5f:	66 0f 38 1d da       	pabsw  xmm3,xmm2
    5c64:	66 0f 38 1d e5       	pabsw  xmm4,xmm5
    5c69:	66 0f fd f3          	paddw  xmm6,xmm3
    5c6d:	66 0f fd c2          	paddw  xmm0,xmm2
    5c71:	66 0f fd d2          	paddw  xmm2,xmm2
    5c75:	66 0f f9 d0          	psubw  xmm2,xmm0
    5c79:	66 0f db 35 00 00 00 	pand   xmm6,XMMWORD PTR [rip+0x0]        # 5c81 <x264_8_hadamard_ac_8x8_ssse3_atom+0x1b1>
    5c80:	00 
    5c81:	66 41 0f 38 1d d8    	pabsw  xmm3,xmm8
    5c87:	66 0f fd f4          	paddw  xmm6,xmm4
    5c8b:	66 41 0f 38 1d e1    	pabsw  xmm4,xmm9
    5c91:	66 0f fd f3          	paddw  xmm6,xmm3
    5c95:	66 41 0f 38 1d da    	pabsw  xmm3,xmm10
    5c9b:	66 0f fd f4          	paddw  xmm6,xmm4
    5c9f:	66 0f 38 1d e1       	pabsw  xmm4,xmm1
    5ca4:	66 0f fd f3          	paddw  xmm6,xmm3
    5ca8:	66 0f 38 1d df       	pabsw  xmm3,xmm7
    5cad:	66 0f fd f4          	paddw  xmm6,xmm4
    5cb1:	66 0f fd f3          	paddw  xmm6,xmm3
    5cb5:	66 0f 6f e7          	movdqa xmm4,xmm7
    5cb9:	66 41 0f fd e2       	paddw  xmm4,xmm10
    5cbe:	66 41 0f f9 fa       	psubw  xmm7,xmm10
    5cc3:	0f 29 74 24 28       	movaps XMMWORD PTR [rsp+0x28],xmm6
    5cc8:	66 0f 6f d9          	movdqa xmm3,xmm1
    5ccc:	66 41 0f fd d9       	paddw  xmm3,xmm9
    5cd1:	66 41 0f f9 c9       	psubw  xmm1,xmm9
    5cd6:	66 0f 6f f5          	movdqa xmm6,xmm5
    5cda:	66 41 0f fd f0       	paddw  xmm6,xmm8
    5cdf:	66 41 0f f9 e8       	psubw  xmm5,xmm8
    5ce4:	44 0f 28 ca          	movaps xmm9,xmm2
    5ce8:	0f 28 d4             	movaps xmm2,xmm4
    5ceb:	0f 16 e7             	movlhps xmm4,xmm7
    5cee:	66 0f 6d d7          	punpckhqdq xmm2,xmm7
    5cf2:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    5cf7:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    5cfc:	66 0f ee e2          	pmaxsw xmm4,xmm2
    5d00:	0f 28 d3             	movaps xmm2,xmm3
    5d03:	0f 16 d9             	movlhps xmm3,xmm1
    5d06:	66 0f 6d d1          	punpckhqdq xmm2,xmm1
    5d0a:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    5d0f:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    5d14:	66 0f ee da          	pmaxsw xmm3,xmm2
    5d18:	41 0f 28 f9          	movaps xmm7,xmm9
    5d1c:	0f 28 d6             	movaps xmm2,xmm6
    5d1f:	0f 16 f5             	movlhps xmm6,xmm5
    5d22:	66 0f 6d d5          	punpckhqdq xmm2,xmm5
    5d26:	66 0f 38 1d f6       	pabsw  xmm6,xmm6
    5d2b:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    5d30:	66 0f ee f2          	pmaxsw xmm6,xmm2
    5d34:	0f 28 d0             	movaps xmm2,xmm0
    5d37:	0f 16 c7             	movlhps xmm0,xmm7
    5d3a:	66 0f 6d d7          	punpckhqdq xmm2,xmm7
    5d3e:	0f 28 f8             	movaps xmm7,xmm0
    5d41:	66 0f fd c2          	paddw  xmm0,xmm2
    5d45:	66 0f f9 d7          	psubw  xmm2,xmm7
    5d49:	66 0f fd dc          	paddw  xmm3,xmm4
    5d4d:	66 0f fd de          	paddw  xmm3,xmm6
    5d51:	66 0f fd db          	paddw  xmm3,xmm3
    5d55:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    5d5a:	66 0f db 05 00 00 00 	pand   xmm0,XMMWORD PTR [rip+0x0]        # 5d62 <x264_8_hadamard_ac_8x8_ssse3_atom+0x292>
    5d61:	00 
    5d62:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    5d67:	66 0f fd da          	paddw  xmm3,xmm2
    5d6b:	66 0f fd d8          	paddw  xmm3,xmm0
    5d6f:	0f 29 5c 24 18       	movaps XMMWORD PTR [rsp+0x18],xmm3
    5d74:	c3                   	ret    
    5d75:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    5d7c:	00 
    5d7d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000005d80 <x264_8_pixel_hadamard_ac_16x16_ssse3_atom>:
    5d80:	48 89 e1             	mov    rcx,rsp
    5d83:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    5d87:	48 83 ec 30          	sub    rsp,0x30
    5d8b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    5d8f:	e8 3c fd ff ff       	call   5ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>
    5d94:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    5d98:	48 83 ec 20          	sub    rsp,0x20
    5d9c:	e8 2f fd ff ff       	call   5ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>
    5da1:	48 f7 da             	neg    rdx
    5da4:	48 83 ec 20          	sub    rsp,0x20
    5da8:	48 8d 7c 97 08       	lea    rdi,[rdi+rdx*4+0x8]
    5dad:	48 f7 da             	neg    rdx
    5db0:	e8 1b fd ff ff       	call   5ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>
    5db5:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    5db9:	48 83 ec 20          	sub    rsp,0x20
    5dbd:	e8 0e fd ff ff       	call   5ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>
    5dc2:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
    5dc7:	66 0f dd 5c 24 30    	paddusw xmm3,XMMWORD PTR [rsp+0x30]
    5dcd:	66 0f dd 74 24 40    	paddusw xmm6,XMMWORD PTR [rsp+0x40]
    5dd3:	66 0f dd 5c 24 50    	paddusw xmm3,XMMWORD PTR [rsp+0x50]
    5dd9:	66 0f dd 74 24 60    	paddusw xmm6,XMMWORD PTR [rsp+0x60]
    5ddf:	66 0f dd 5c 24 70    	paddusw xmm3,XMMWORD PTR [rsp+0x70]
    5de5:	66 0f dd b4 24 80 00 	paddusw xmm6,XMMWORD PTR [rsp+0x80]
    5dec:	00 00 
    5dee:	66 0f 71 d3 01       	psrlw  xmm3,0x1
    5df3:	66 0f 6f c3          	movdqa xmm0,xmm3
    5df7:	66 0f 72 d0 10       	psrld  xmm0,0x10
    5dfc:	66 0f 72 f3 10       	pslld  xmm3,0x10
    5e01:	66 0f 72 d3 10       	psrld  xmm3,0x10
    5e06:	66 0f fe d8          	paddd  xmm3,xmm0
    5e0a:	0f 12 c3             	movhlps xmm0,xmm3
    5e0d:	66 0f fe d8          	paddd  xmm3,xmm0
    5e11:	f2 0f 70 c3 4e       	pshuflw xmm0,xmm3,0x4e
    5e16:	66 0f fe d8          	paddd  xmm3,xmm0
    5e1a:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 5e22 <x264_8_pixel_hadamard_ac_16x16_ssse3_atom+0xa2>
    5e21:	00 
    5e22:	0f 12 e6             	movhlps xmm4,xmm6
    5e25:	66 0f fe f4          	paddd  xmm6,xmm4
    5e29:	f2 0f 70 e6 4e       	pshuflw xmm4,xmm6,0x4e
    5e2e:	66 0f fe f4          	paddd  xmm6,xmm4
    5e32:	66 0f 7e da          	movd   edx,xmm3
    5e36:	66 0f 7e f0          	movd   eax,xmm6
    5e3a:	d1 ea                	shr    edx,1
    5e3c:	d1 e8                	shr    eax,1
    5e3e:	48 c1 e2 20          	shl    rdx,0x20
    5e42:	48 01 d0             	add    rax,rdx
    5e45:	48 89 cc             	mov    rsp,rcx
    5e48:	c3                   	ret    
    5e49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000005e50 <x264_8_pixel_hadamard_ac_16x8_ssse3_atom>:
    5e50:	48 89 e1             	mov    rcx,rsp
    5e53:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    5e57:	48 83 ec 30          	sub    rsp,0x30
    5e5b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    5e5f:	e8 6c fc ff ff       	call   5ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>
    5e64:	48 f7 de             	neg    rsi
    5e67:	48 83 ec 20          	sub    rsp,0x20
    5e6b:	48 8d 7c b7 08       	lea    rdi,[rdi+rsi*4+0x8]
    5e70:	48 f7 de             	neg    rsi
    5e73:	e8 58 fc ff ff       	call   5ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>
    5e78:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
    5e7d:	66 0f dd 5c 24 30    	paddusw xmm3,XMMWORD PTR [rsp+0x30]
    5e83:	66 0f dd 74 24 40    	paddusw xmm6,XMMWORD PTR [rsp+0x40]
    5e89:	66 0f 6f c3          	movdqa xmm0,xmm3
    5e8d:	66 0f 72 d0 10       	psrld  xmm0,0x10
    5e92:	66 0f 72 f3 10       	pslld  xmm3,0x10
    5e97:	66 0f 72 d3 10       	psrld  xmm3,0x10
    5e9c:	66 0f fe d8          	paddd  xmm3,xmm0
    5ea0:	0f 12 c3             	movhlps xmm0,xmm3
    5ea3:	66 0f fe d8          	paddd  xmm3,xmm0
    5ea7:	f2 0f 70 c3 4e       	pshuflw xmm0,xmm3,0x4e
    5eac:	66 0f fe d8          	paddd  xmm3,xmm0
    5eb0:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 5eb8 <x264_8_pixel_hadamard_ac_16x8_ssse3_atom+0x68>
    5eb7:	00 
    5eb8:	0f 12 e6             	movhlps xmm4,xmm6
    5ebb:	66 0f fe f4          	paddd  xmm6,xmm4
    5ebf:	f2 0f 70 e6 4e       	pshuflw xmm4,xmm6,0x4e
    5ec4:	66 0f fe f4          	paddd  xmm6,xmm4
    5ec8:	66 0f 7e da          	movd   edx,xmm3
    5ecc:	66 0f 7e f0          	movd   eax,xmm6
    5ed0:	c1 ea 02             	shr    edx,0x2
    5ed3:	d1 e8                	shr    eax,1
    5ed5:	48 c1 e2 20          	shl    rdx,0x20
    5ed9:	48 01 d0             	add    rax,rdx
    5edc:	48 89 cc             	mov    rsp,rcx
    5edf:	c3                   	ret    

0000000000005ee0 <x264_8_pixel_hadamard_ac_8x16_ssse3_atom>:
    5ee0:	48 89 e1             	mov    rcx,rsp
    5ee3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    5ee7:	48 83 ec 30          	sub    rsp,0x30
    5eeb:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    5eef:	e8 dc fb ff ff       	call   5ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>
    5ef4:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    5ef8:	48 83 ec 20          	sub    rsp,0x20
    5efc:	e8 cf fb ff ff       	call   5ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>
    5f01:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
    5f06:	66 0f dd 5c 24 30    	paddusw xmm3,XMMWORD PTR [rsp+0x30]
    5f0c:	66 0f dd 74 24 40    	paddusw xmm6,XMMWORD PTR [rsp+0x40]
    5f12:	66 0f 6f c3          	movdqa xmm0,xmm3
    5f16:	66 0f 72 d0 10       	psrld  xmm0,0x10
    5f1b:	66 0f 72 f3 10       	pslld  xmm3,0x10
    5f20:	66 0f 72 d3 10       	psrld  xmm3,0x10
    5f25:	66 0f fe d8          	paddd  xmm3,xmm0
    5f29:	0f 12 c3             	movhlps xmm0,xmm3
    5f2c:	66 0f fe d8          	paddd  xmm3,xmm0
    5f30:	f2 0f 70 c3 4e       	pshuflw xmm0,xmm3,0x4e
    5f35:	66 0f fe d8          	paddd  xmm3,xmm0
    5f39:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 5f41 <x264_8_pixel_hadamard_ac_8x16_ssse3_atom+0x61>
    5f40:	00 
    5f41:	0f 12 e6             	movhlps xmm4,xmm6
    5f44:	66 0f fe f4          	paddd  xmm6,xmm4
    5f48:	f2 0f 70 e6 4e       	pshuflw xmm4,xmm6,0x4e
    5f4d:	66 0f fe f4          	paddd  xmm6,xmm4
    5f51:	66 0f 7e da          	movd   edx,xmm3
    5f55:	66 0f 7e f0          	movd   eax,xmm6
    5f59:	c1 ea 02             	shr    edx,0x2
    5f5c:	d1 e8                	shr    eax,1
    5f5e:	48 c1 e2 20          	shl    rdx,0x20
    5f62:	48 01 d0             	add    rax,rdx
    5f65:	48 89 cc             	mov    rsp,rcx
    5f68:	c3                   	ret    
    5f69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000005f70 <x264_8_pixel_hadamard_ac_8x8_ssse3_atom>:
    5f70:	48 89 e1             	mov    rcx,rsp
    5f73:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    5f77:	48 83 ec 30          	sub    rsp,0x30
    5f7b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    5f7f:	e8 4c fb ff ff       	call   5ad0 <x264_8_hadamard_ac_8x8_ssse3_atom>
    5f84:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [rsp+0x20]
    5f89:	66 0f 6f c3          	movdqa xmm0,xmm3
    5f8d:	66 0f 72 d0 10       	psrld  xmm0,0x10
    5f92:	66 0f 72 f3 10       	pslld  xmm3,0x10
    5f97:	66 0f 72 d3 10       	psrld  xmm3,0x10
    5f9c:	66 0f fe d8          	paddd  xmm3,xmm0
    5fa0:	0f 12 c3             	movhlps xmm0,xmm3
    5fa3:	66 0f fe d8          	paddd  xmm3,xmm0
    5fa7:	f2 0f 70 c3 4e       	pshuflw xmm0,xmm3,0x4e
    5fac:	66 0f fe d8          	paddd  xmm3,xmm0
    5fb0:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 5fb8 <x264_8_pixel_hadamard_ac_8x8_ssse3_atom+0x48>
    5fb7:	00 
    5fb8:	0f 12 e6             	movhlps xmm4,xmm6
    5fbb:	66 0f fe f4          	paddd  xmm6,xmm4
    5fbf:	f2 0f 70 e6 4e       	pshuflw xmm4,xmm6,0x4e
    5fc4:	66 0f fe f4          	paddd  xmm6,xmm4
    5fc8:	66 0f 7e da          	movd   edx,xmm3
    5fcc:	66 0f 7e f0          	movd   eax,xmm6
    5fd0:	c1 ea 02             	shr    edx,0x2
    5fd3:	d1 e8                	shr    eax,1
    5fd5:	48 c1 e2 20          	shl    rdx,0x20
    5fd9:	48 01 d0             	add    rax,rdx
    5fdc:	48 89 cc             	mov    rsp,rcx
    5fdf:	c3                   	ret    

0000000000005fe0 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3_atom>:
    5fe0:	f3 0f 7e 07          	movq   xmm0,QWORD PTR [rdi]
    5fe4:	f3 0f 7e 32          	movq   xmm6,QWORD PTR [rdx]
    5fe8:	66 0f 60 c7          	punpcklbw xmm0,xmm7
    5fec:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    5ff0:	66 0f f9 c6          	psubw  xmm0,xmm6
    5ff4:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    5ff9:	f3 44 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+rcx*1]
    5fff:	66 0f 60 cf          	punpcklbw xmm1,xmm7
    6003:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    6008:	66 41 0f f9 cb       	psubw  xmm1,xmm11
    600d:	f3 0f 7e 14 77       	movq   xmm2,QWORD PTR [rdi+rsi*2]
    6012:	f3 0f 7e 34 4a       	movq   xmm6,QWORD PTR [rdx+rcx*2]
    6017:	66 0f 60 d7          	punpcklbw xmm2,xmm7
    601b:	66 0f 60 f7          	punpcklbw xmm6,xmm7
    601f:	66 0f f9 d6          	psubw  xmm2,xmm6
    6023:	f3 42 0f 7e 1c 07    	movq   xmm3,QWORD PTR [rdi+r8*1]
    6029:	f3 46 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+r9*1]
    602f:	66 0f 60 df          	punpcklbw xmm3,xmm7
    6033:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    6038:	66 41 0f f9 db       	psubw  xmm3,xmm11
    603d:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    6041:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    6045:	0f 28 f0             	movaps xmm6,xmm0
    6048:	66 0f fd c1          	paddw  xmm0,xmm1
    604c:	66 0f f9 ce          	psubw  xmm1,xmm6
    6050:	0f 28 f2             	movaps xmm6,xmm2
    6053:	66 0f fd d3          	paddw  xmm2,xmm3
    6057:	66 0f f9 de          	psubw  xmm3,xmm6
    605b:	0f 28 f0             	movaps xmm6,xmm0
    605e:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    6062:	66 0f 69 f1          	punpckhwd xmm6,xmm1
    6066:	0f 28 ca             	movaps xmm1,xmm2
    6069:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    606d:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    6071:	0f 28 d8             	movaps xmm3,xmm0
    6074:	66 0f fd c2          	paddw  xmm0,xmm2
    6078:	66 0f f9 d3          	psubw  xmm2,xmm3
    607c:	0f 28 de             	movaps xmm3,xmm6
    607f:	66 0f fd f1          	paddw  xmm6,xmm1
    6083:	66 0f f9 cb          	psubw  xmm1,xmm3
    6087:	0f 28 d8             	movaps xmm3,xmm0
    608a:	66 0f 62 c2          	punpckldq xmm0,xmm2
    608e:	66 0f 6a da          	punpckhdq xmm3,xmm2
    6092:	0f 28 d0             	movaps xmm2,xmm0
    6095:	66 0f fd c3          	paddw  xmm0,xmm3
    6099:	66 0f f9 da          	psubw  xmm3,xmm2
    609d:	0f 28 d6             	movaps xmm2,xmm6
    60a0:	66 0f 62 f1          	punpckldq xmm6,xmm1
    60a4:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    60a8:	0f 28 ce             	movaps xmm1,xmm6
    60ab:	66 0f fd f2          	paddw  xmm6,xmm2
    60af:	66 0f f9 d1          	psubw  xmm2,xmm1
    60b3:	44 0f 28 e0          	movaps xmm12,xmm0
    60b7:	44 0f 28 ee          	movaps xmm13,xmm6
    60bb:	44 0f 28 f3          	movaps xmm14,xmm3
    60bf:	44 0f 28 fa          	movaps xmm15,xmm2
    60c3:	0f 28 c8             	movaps xmm1,xmm0
    60c6:	66 0f fd c6          	paddw  xmm0,xmm6
    60ca:	66 0f f9 f1          	psubw  xmm6,xmm1
    60ce:	0f 28 cb             	movaps xmm1,xmm3
    60d1:	66 0f fd da          	paddw  xmm3,xmm2
    60d5:	66 0f f9 d1          	psubw  xmm2,xmm1
    60d9:	41 0f 28 cc          	movaps xmm1,xmm12
    60dd:	45 0f 16 e5          	movlhps xmm12,xmm13
    60e1:	66 41 0f 6d cd       	punpckhqdq xmm1,xmm13
    60e6:	66 45 0f 38 1d e4    	pabsw  xmm12,xmm12
    60ec:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    60f1:	66 44 0f ee e1       	pmaxsw xmm12,xmm1
    60f6:	45 0f 28 ee          	movaps xmm13,xmm14
    60fa:	45 0f 16 f7          	movlhps xmm14,xmm15
    60fe:	66 45 0f 6d ef       	punpckhqdq xmm13,xmm15
    6103:	66 45 0f fd d4       	paddw  xmm10,xmm12
    6108:	66 45 0f 38 1d f6    	pabsw  xmm14,xmm14
    610e:	66 45 0f 38 1d ed    	pabsw  xmm13,xmm13
    6114:	66 45 0f ee f5       	pmaxsw xmm14,xmm13
    6119:	66 45 0f fd d6       	paddw  xmm10,xmm14
    611e:	f3 0f 7e 27          	movq   xmm4,QWORD PTR [rdi]
    6122:	f3 44 0f 7e 3a       	movq   xmm15,QWORD PTR [rdx]
    6127:	66 0f 60 e7          	punpcklbw xmm4,xmm7
    612b:	66 44 0f 60 ff       	punpcklbw xmm15,xmm7
    6130:	66 41 0f f9 e7       	psubw  xmm4,xmm15
    6135:	f3 0f 7e 2c 37       	movq   xmm5,QWORD PTR [rdi+rsi*1]
    613a:	f3 44 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+rcx*1]
    6140:	66 0f 60 ef          	punpcklbw xmm5,xmm7
    6144:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    6149:	66 41 0f f9 eb       	psubw  xmm5,xmm11
    614e:	f3 44 0f 7e 04 77    	movq   xmm8,QWORD PTR [rdi+rsi*2]
    6154:	f3 44 0f 7e 3c 4a    	movq   xmm15,QWORD PTR [rdx+rcx*2]
    615a:	66 44 0f 60 c7       	punpcklbw xmm8,xmm7
    615f:	66 44 0f 60 ff       	punpcklbw xmm15,xmm7
    6164:	66 45 0f f9 c7       	psubw  xmm8,xmm15
    6169:	f3 46 0f 7e 0c 07    	movq   xmm9,QWORD PTR [rdi+r8*1]
    616f:	f3 46 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+r9*1]
    6175:	66 44 0f 60 cf       	punpcklbw xmm9,xmm7
    617a:	66 44 0f 60 df       	punpcklbw xmm11,xmm7
    617f:	66 45 0f f9 cb       	psubw  xmm9,xmm11
    6184:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    6188:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    618c:	44 0f 28 fc          	movaps xmm15,xmm4
    6190:	66 0f fd e5          	paddw  xmm4,xmm5
    6194:	66 41 0f f9 ef       	psubw  xmm5,xmm15
    6199:	45 0f 28 f8          	movaps xmm15,xmm8
    619d:	66 45 0f fd c1       	paddw  xmm8,xmm9
    61a2:	66 45 0f f9 cf       	psubw  xmm9,xmm15
    61a7:	44 0f 28 fc          	movaps xmm15,xmm4
    61ab:	66 0f 61 e5          	punpcklwd xmm4,xmm5
    61af:	66 44 0f 69 fd       	punpckhwd xmm15,xmm5
    61b4:	41 0f 28 e8          	movaps xmm5,xmm8
    61b8:	66 45 0f 61 c1       	punpcklwd xmm8,xmm9
    61bd:	66 41 0f 69 e9       	punpckhwd xmm5,xmm9
    61c2:	44 0f 28 cc          	movaps xmm9,xmm4
    61c6:	66 41 0f fd e0       	paddw  xmm4,xmm8
    61cb:	66 45 0f f9 c1       	psubw  xmm8,xmm9
    61d0:	45 0f 28 cf          	movaps xmm9,xmm15
    61d4:	66 44 0f fd fd       	paddw  xmm15,xmm5
    61d9:	66 41 0f f9 e9       	psubw  xmm5,xmm9
    61de:	44 0f 28 cc          	movaps xmm9,xmm4
    61e2:	66 41 0f 62 e0       	punpckldq xmm4,xmm8
    61e7:	66 45 0f 6a c8       	punpckhdq xmm9,xmm8
    61ec:	44 0f 28 c4          	movaps xmm8,xmm4
    61f0:	66 41 0f fd e1       	paddw  xmm4,xmm9
    61f5:	66 45 0f f9 c8       	psubw  xmm9,xmm8
    61fa:	45 0f 28 c7          	movaps xmm8,xmm15
    61fe:	66 44 0f 62 fd       	punpckldq xmm15,xmm5
    6203:	66 44 0f 6a c5       	punpckhdq xmm8,xmm5
    6208:	41 0f 28 ef          	movaps xmm5,xmm15
    620c:	66 45 0f fd f8       	paddw  xmm15,xmm8
    6211:	66 44 0f f9 c5       	psubw  xmm8,xmm5
    6216:	44 0f 28 e4          	movaps xmm12,xmm4
    621a:	41 0f 28 cf          	movaps xmm1,xmm15
    621e:	45 0f 28 f1          	movaps xmm14,xmm9
    6222:	45 0f 28 e8          	movaps xmm13,xmm8
    6226:	0f 28 ec             	movaps xmm5,xmm4
    6229:	66 41 0f fd e7       	paddw  xmm4,xmm15
    622e:	66 44 0f f9 fd       	psubw  xmm15,xmm5
    6233:	41 0f 28 e9          	movaps xmm5,xmm9
    6237:	66 45 0f fd c8       	paddw  xmm9,xmm8
    623c:	66 44 0f f9 c5       	psubw  xmm8,xmm5
    6241:	41 0f 28 ec          	movaps xmm5,xmm12
    6245:	44 0f 16 e1          	movlhps xmm12,xmm1
    6249:	66 0f 6d e9          	punpckhqdq xmm5,xmm1
    624d:	66 45 0f 38 1d e4    	pabsw  xmm12,xmm12
    6253:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    6258:	66 44 0f ee e5       	pmaxsw xmm12,xmm5
    625d:	41 0f 28 ce          	movaps xmm1,xmm14
    6261:	45 0f 16 f5          	movlhps xmm14,xmm13
    6265:	66 41 0f 6d cd       	punpckhqdq xmm1,xmm13
    626a:	66 45 0f fd d4       	paddw  xmm10,xmm12
    626f:	66 45 0f 38 1d f6    	pabsw  xmm14,xmm14
    6275:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    627a:	66 44 0f ee f1       	pmaxsw xmm14,xmm1
    627f:	66 45 0f fd d6       	paddw  xmm10,xmm14
    6284:	44 0f 28 e8          	movaps xmm13,xmm0
    6288:	66 0f fd c4          	paddw  xmm0,xmm4
    628c:	66 41 0f f9 e5       	psubw  xmm4,xmm13
    6291:	44 0f 28 eb          	movaps xmm13,xmm3
    6295:	66 41 0f fd d9       	paddw  xmm3,xmm9
    629a:	66 45 0f f9 cd       	psubw  xmm9,xmm13
    629f:	44 0f 28 e8          	movaps xmm13,xmm0
    62a3:	0f 16 c4             	movlhps xmm0,xmm4
    62a6:	66 44 0f 6d ec       	punpckhqdq xmm13,xmm4
    62ab:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    62b0:	66 45 0f 38 1d ed    	pabsw  xmm13,xmm13
    62b6:	66 41 0f ee c5       	pmaxsw xmm0,xmm13
    62bb:	0f 28 e3             	movaps xmm4,xmm3
    62be:	41 0f 16 d9          	movlhps xmm3,xmm9
    62c2:	66 41 0f 6d e1       	punpckhqdq xmm4,xmm9
    62c7:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    62cc:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    62d1:	66 0f ee dc          	pmaxsw xmm3,xmm4
    62d5:	44 0f 28 ce          	movaps xmm9,xmm6
    62d9:	66 41 0f fd f7       	paddw  xmm6,xmm15
    62de:	66 45 0f f9 f9       	psubw  xmm15,xmm9
    62e3:	44 0f 28 ca          	movaps xmm9,xmm2
    62e7:	66 41 0f fd d0       	paddw  xmm2,xmm8
    62ec:	66 45 0f f9 c1       	psubw  xmm8,xmm9
    62f1:	44 0f 28 ce          	movaps xmm9,xmm6
    62f5:	41 0f 16 f7          	movlhps xmm6,xmm15
    62f9:	66 45 0f 6d cf       	punpckhqdq xmm9,xmm15
    62fe:	66 0f 38 1d f6       	pabsw  xmm6,xmm6
    6303:	66 45 0f 38 1d c9    	pabsw  xmm9,xmm9
    6309:	66 41 0f ee f1       	pmaxsw xmm6,xmm9
    630e:	44 0f 28 fa          	movaps xmm15,xmm2
    6312:	41 0f 16 d0          	movlhps xmm2,xmm8
    6316:	66 45 0f 6d f8       	punpckhqdq xmm15,xmm8
    631b:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    6320:	66 45 0f 38 1d ff    	pabsw  xmm15,xmm15
    6326:	66 41 0f ee d7       	pmaxsw xmm2,xmm15
    632b:	66 0f fd f3          	paddw  xmm6,xmm3
    632f:	66 0f fd c2          	paddw  xmm0,xmm2
    6333:	66 0f fd c6          	paddw  xmm0,xmm6
    6337:	c3                   	ret    
    6338:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    633f:	00 

0000000000006340 <x264_8_pixel_sa8d_satd_16x16_ssse3_atom>:
    6340:	48 83 ec 48          	sub    rsp,0x48
    6344:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    6348:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    634c:	66 45 0f ef d2       	pxor   xmm10,xmm10
    6351:	48 8d 42 08          	lea    rax,[rdx+0x8]
    6355:	4c 8d 57 08          	lea    r10,[rdi+0x8]
    6359:	e8 82 fc ff ff       	call   5fe0 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3_atom>
    635e:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    6362:	e8 79 fc ff ff       	call   5fe0 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3_atom>
    6367:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    636c:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    6370:	4c 89 d7             	mov    rdi,r10
    6373:	48 89 c2             	mov    rdx,rax
    6376:	e8 65 fc ff ff       	call   5fe0 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3_atom>
    637b:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    6380:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    6384:	e8 57 fc ff ff       	call   5fe0 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3_atom>
    6389:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    638e:	66 0f 6f f0          	movdqa xmm6,xmm0
    6392:	66 0f 72 d6 10       	psrld  xmm6,0x10
    6397:	66 0f 72 f0 10       	pslld  xmm0,0x10
    639c:	66 0f 72 d0 10       	psrld  xmm0,0x10
    63a1:	66 0f fe c6          	paddd  xmm0,xmm6
    63a5:	0f 12 f0             	movhlps xmm6,xmm0
    63a8:	66 0f fe c6          	paddd  xmm0,xmm6
    63ac:	f2 0f 70 f0 4e       	pshuflw xmm6,xmm0,0x4e
    63b1:	66 0f fe c6          	paddd  xmm0,xmm6
    63b5:	66 44 0f f5 15 00 00 	pmaddwd xmm10,XMMWORD PTR [rip+0x0]        # 63be <x264_8_pixel_sa8d_satd_16x16_ssse3_atom+0x7e>
    63bc:	00 00 
    63be:	41 0f 12 da          	movhlps xmm3,xmm10
    63c2:	66 44 0f fe d3       	paddd  xmm10,xmm3
    63c7:	f2 41 0f 70 da 4e    	pshuflw xmm3,xmm10,0x4e
    63cd:	66 44 0f fe d3       	paddd  xmm10,xmm3
    63d2:	66 0f 7e c7          	movd   edi,xmm0
    63d6:	66 44 0f 7e d0       	movd   eax,xmm10
    63db:	83 c7 01             	add    edi,0x1
    63de:	48 c1 e0 20          	shl    rax,0x20
    63e2:	d1 ef                	shr    edi,1
    63e4:	48 09 f8             	or     rax,rdi
    63e7:	48 83 c4 48          	add    rsp,0x48
    63eb:	c3                   	ret    
    63ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000063f0 <x264_8_pixel_satd_4x4_ssse3>:
    63f0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    63f4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    63f8:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 63ff <x264_8_pixel_satd_4x4_ssse3+0xf>
    63ff:	66 0f 6e 12          	movd   xmm2,DWORD PTR [rdx]
    6403:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    6408:	0f 16 d5             	movlhps xmm2,xmm5
    640b:	f3 0f 12 d2          	movsldup xmm2,xmm2
    640f:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    6414:	66 42 0f 6e 2c 0a    	movd   xmm5,DWORD PTR [rdx+r9*1]
    641a:	0f 16 dd             	movlhps xmm3,xmm5
    641d:	f3 0f 12 db          	movsldup xmm3,xmm3
    6421:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    6425:	66 0f 6e 2c 37       	movd   xmm5,DWORD PTR [rdi+rsi*1]
    642a:	0f 16 c5             	movlhps xmm0,xmm5
    642d:	f3 0f 12 c0          	movsldup xmm0,xmm0
    6431:	66 0f 6e 0c 77       	movd   xmm1,DWORD PTR [rdi+rsi*2]
    6436:	66 42 0f 6e 2c 07    	movd   xmm5,DWORD PTR [rdi+r8*1]
    643c:	0f 16 cd             	movlhps xmm1,xmm5
    643f:	f3 0f 12 c9          	movsldup xmm1,xmm1
    6443:	66 0f 38 04 d4       	pmaddubsw xmm2,xmm4
    6448:	66 0f 38 04 c4       	pmaddubsw xmm0,xmm4
    644d:	66 0f 38 04 dc       	pmaddubsw xmm3,xmm4
    6452:	66 0f 38 04 cc       	pmaddubsw xmm1,xmm4
    6457:	66 0f f9 c2          	psubw  xmm0,xmm2
    645b:	66 0f f9 cb          	psubw  xmm1,xmm3
    645f:	0f 28 d0             	movaps xmm2,xmm0
    6462:	66 0f fd c1          	paddw  xmm0,xmm1
    6466:	66 0f f9 ca          	psubw  xmm1,xmm2
    646a:	0f 28 d0             	movaps xmm2,xmm0
    646d:	0f 16 c1             	movlhps xmm0,xmm1
    6470:	66 0f 6d d1          	punpckhqdq xmm2,xmm1
    6474:	0f 28 c8             	movaps xmm1,xmm0
    6477:	66 0f fd c2          	paddw  xmm0,xmm2
    647b:	66 0f f9 d1          	psubw  xmm2,xmm1
    647f:	0f 28 0d 00 00 00 00 	movaps xmm1,XMMWORD PTR [rip+0x0]        # 6486 <x264_8_pixel_satd_4x4_ssse3+0x96>
    6486:	0f 28 da             	movaps xmm3,xmm2
    6489:	66 0f 72 f2 10       	pslld  xmm2,0x10
    648e:	66 0f db d9          	pand   xmm3,xmm1
    6492:	66 0f df c8          	pandn  xmm1,xmm0
    6496:	66 0f 72 d0 10       	psrld  xmm0,0x10
    649b:	66 0f eb d1          	por    xmm2,xmm1
    649f:	66 0f eb c3          	por    xmm0,xmm3
    64a3:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    64a8:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    64ad:	66 0f ee c2          	pmaxsw xmm0,xmm2
    64b1:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 64b9 <x264_8_pixel_satd_4x4_ssse3+0xc9>
    64b8:	00 
    64b9:	0f 12 d0             	movhlps xmm2,xmm0
    64bc:	66 0f fe c2          	paddd  xmm0,xmm2
    64c0:	f2 0f 70 d0 4e       	pshuflw xmm2,xmm0,0x4e
    64c5:	66 0f fe c2          	paddd  xmm0,xmm2
    64c9:	66 0f 7e c0          	movd   eax,xmm0
    64cd:	c3                   	ret    
    64ce:	66 90                	xchg   ax,ax

00000000000064d0 <x264_8_pixel_satd_4x8_ssse3>:
    64d0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    64d4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    64d8:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 64df <x264_8_pixel_satd_4x8_ssse3+0xf>
    64df:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    64e3:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    64e8:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    64ed:	4c 01 ca             	add    rdx,r9
    64f0:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    64f4:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    64f9:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    64fe:	4c 01 c7             	add    rdi,r8
    6501:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    6506:	0f 16 e3             	movlhps xmm4,xmm3
    6509:	f3 0f 12 e4          	movsldup xmm4,xmm4
    650d:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    6512:	0f 16 c3             	movlhps xmm0,xmm3
    6515:	f3 0f 12 c0          	movsldup xmm0,xmm0
    6519:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    651e:	0f 16 eb             	movlhps xmm5,xmm3
    6521:	f3 0f 12 ed          	movsldup xmm5,xmm5
    6525:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    652a:	0f 16 cb             	movlhps xmm1,xmm3
    652d:	f3 0f 12 c9          	movsldup xmm1,xmm1
    6531:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    6536:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    653b:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6540:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    6545:	66 0f f9 c4          	psubw  xmm0,xmm4
    6549:	66 0f f9 cd          	psubw  xmm1,xmm5
    654d:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    6551:	4c 01 ca             	add    rdx,r9
    6554:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    6558:	4c 01 c7             	add    rdi,r8
    655b:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    655f:	0f 16 f4             	movlhps xmm6,xmm4
    6562:	f3 0f 12 f6          	movsldup xmm6,xmm6
    6566:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    656a:	0f 16 d4             	movlhps xmm2,xmm4
    656d:	f3 0f 12 d2          	movsldup xmm2,xmm2
    6571:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    6576:	0f 16 ec             	movlhps xmm5,xmm4
    6579:	f3 0f 12 ed          	movsldup xmm5,xmm5
    657d:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    6582:	0f 16 dc             	movlhps xmm3,xmm4
    6585:	f3 0f 12 db          	movsldup xmm3,xmm3
    6589:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    658e:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    6593:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6598:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    659d:	66 0f f9 d6          	psubw  xmm2,xmm6
    65a1:	66 0f f9 dd          	psubw  xmm3,xmm5
    65a5:	0f 28 e0             	movaps xmm4,xmm0
    65a8:	66 0f fd c1          	paddw  xmm0,xmm1
    65ac:	66 0f f9 cc          	psubw  xmm1,xmm4
    65b0:	0f 28 e2             	movaps xmm4,xmm2
    65b3:	66 0f fd d3          	paddw  xmm2,xmm3
    65b7:	66 0f f9 dc          	psubw  xmm3,xmm4
    65bb:	0f 28 e0             	movaps xmm4,xmm0
    65be:	66 0f fd c2          	paddw  xmm0,xmm2
    65c2:	66 0f f9 d4          	psubw  xmm2,xmm4
    65c6:	0f 28 e1             	movaps xmm4,xmm1
    65c9:	66 0f fd cb          	paddw  xmm1,xmm3
    65cd:	66 0f f9 dc          	psubw  xmm3,xmm4
    65d1:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    65d6:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    65db:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    65e0:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    65e5:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 65ec <x264_8_pixel_satd_4x8_ssse3+0x11c>
    65ec:	0f 28 ea             	movaps xmm5,xmm2
    65ef:	66 0f 72 f2 10       	pslld  xmm2,0x10
    65f4:	66 0f db ec          	pand   xmm5,xmm4
    65f8:	66 0f df e0          	pandn  xmm4,xmm0
    65fc:	66 0f 72 d0 10       	psrld  xmm0,0x10
    6601:	66 0f eb d4          	por    xmm2,xmm4
    6605:	66 0f eb c5          	por    xmm0,xmm5
    6609:	66 0f ee c2          	pmaxsw xmm0,xmm2
    660d:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 6614 <x264_8_pixel_satd_4x8_ssse3+0x144>
    6614:	0f 28 eb             	movaps xmm5,xmm3
    6617:	66 0f 72 f3 10       	pslld  xmm3,0x10
    661c:	66 0f db ec          	pand   xmm5,xmm4
    6620:	66 0f df e1          	pandn  xmm4,xmm1
    6624:	66 0f 72 d1 10       	psrld  xmm1,0x10
    6629:	66 0f eb dc          	por    xmm3,xmm4
    662d:	66 0f eb cd          	por    xmm1,xmm5
    6631:	66 0f ee cb          	pmaxsw xmm1,xmm3
    6635:	66 0f fd c1          	paddw  xmm0,xmm1
    6639:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 6641 <x264_8_pixel_satd_4x8_ssse3+0x171>
    6640:	00 
    6641:	0f 12 c8             	movhlps xmm1,xmm0
    6644:	66 0f fe c1          	paddd  xmm0,xmm1
    6648:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    664d:	66 0f fe c1          	paddd  xmm0,xmm1
    6651:	66 0f 7e c0          	movd   eax,xmm0
    6655:	c3                   	ret    
    6656:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    665d:	00 
    665e:	66 90                	xchg   ax,ax

0000000000006660 <x264_8_pixel_satd_4x16_ssse3>:
    6660:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    6664:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    6668:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 666f <x264_8_pixel_satd_4x16_ssse3+0xf>
    666f:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    6673:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    6678:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    667d:	4c 01 ca             	add    rdx,r9
    6680:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    6684:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    6689:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    668e:	4c 01 c7             	add    rdi,r8
    6691:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    6696:	0f 16 e3             	movlhps xmm4,xmm3
    6699:	f3 0f 12 e4          	movsldup xmm4,xmm4
    669d:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    66a2:	0f 16 c3             	movlhps xmm0,xmm3
    66a5:	f3 0f 12 c0          	movsldup xmm0,xmm0
    66a9:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    66ae:	0f 16 eb             	movlhps xmm5,xmm3
    66b1:	f3 0f 12 ed          	movsldup xmm5,xmm5
    66b5:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    66ba:	0f 16 cb             	movlhps xmm1,xmm3
    66bd:	f3 0f 12 c9          	movsldup xmm1,xmm1
    66c1:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    66c6:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    66cb:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    66d0:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    66d5:	66 0f f9 c4          	psubw  xmm0,xmm4
    66d9:	66 0f f9 cd          	psubw  xmm1,xmm5
    66dd:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    66e1:	4c 01 ca             	add    rdx,r9
    66e4:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    66e8:	4c 01 c7             	add    rdi,r8
    66eb:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    66ef:	0f 16 f4             	movlhps xmm6,xmm4
    66f2:	f3 0f 12 f6          	movsldup xmm6,xmm6
    66f6:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    66fa:	0f 16 d4             	movlhps xmm2,xmm4
    66fd:	f3 0f 12 d2          	movsldup xmm2,xmm2
    6701:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    6706:	0f 16 ec             	movlhps xmm5,xmm4
    6709:	f3 0f 12 ed          	movsldup xmm5,xmm5
    670d:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    6712:	0f 16 dc             	movlhps xmm3,xmm4
    6715:	f3 0f 12 db          	movsldup xmm3,xmm3
    6719:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    671e:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    6723:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6728:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    672d:	66 0f f9 d6          	psubw  xmm2,xmm6
    6731:	66 0f f9 dd          	psubw  xmm3,xmm5
    6735:	0f 28 e0             	movaps xmm4,xmm0
    6738:	66 0f fd c1          	paddw  xmm0,xmm1
    673c:	66 0f f9 cc          	psubw  xmm1,xmm4
    6740:	0f 28 e2             	movaps xmm4,xmm2
    6743:	66 0f fd d3          	paddw  xmm2,xmm3
    6747:	66 0f f9 dc          	psubw  xmm3,xmm4
    674b:	0f 28 e0             	movaps xmm4,xmm0
    674e:	66 0f fd c2          	paddw  xmm0,xmm2
    6752:	66 0f f9 d4          	psubw  xmm2,xmm4
    6756:	0f 28 e1             	movaps xmm4,xmm1
    6759:	66 0f fd cb          	paddw  xmm1,xmm3
    675d:	66 0f f9 dc          	psubw  xmm3,xmm4
    6761:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    6766:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    676b:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    6770:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    6775:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 677c <x264_8_pixel_satd_4x16_ssse3+0x11c>
    677c:	0f 28 ea             	movaps xmm5,xmm2
    677f:	66 0f 72 f2 10       	pslld  xmm2,0x10
    6784:	66 0f db ec          	pand   xmm5,xmm4
    6788:	66 0f df e0          	pandn  xmm4,xmm0
    678c:	66 0f 72 d0 10       	psrld  xmm0,0x10
    6791:	66 0f eb d4          	por    xmm2,xmm4
    6795:	66 0f eb c5          	por    xmm0,xmm5
    6799:	66 0f ee c2          	pmaxsw xmm0,xmm2
    679d:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 67a4 <x264_8_pixel_satd_4x16_ssse3+0x144>
    67a4:	0f 28 eb             	movaps xmm5,xmm3
    67a7:	66 0f 72 f3 10       	pslld  xmm3,0x10
    67ac:	66 0f db ec          	pand   xmm5,xmm4
    67b0:	66 0f df e1          	pandn  xmm4,xmm1
    67b4:	66 0f 72 d1 10       	psrld  xmm1,0x10
    67b9:	66 0f eb dc          	por    xmm3,xmm4
    67bd:	66 0f eb cd          	por    xmm1,xmm5
    67c1:	66 0f ee cb          	pmaxsw xmm1,xmm3
    67c5:	66 0f fd c1          	paddw  xmm0,xmm1
    67c9:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
    67cd:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
    67d1:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    67d5:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    67da:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    67df:	4c 01 ca             	add    rdx,r9
    67e2:	66 0f 6e 3f          	movd   xmm7,DWORD PTR [rdi]
    67e6:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    67eb:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    67f0:	4c 01 c7             	add    rdi,r8
    67f3:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    67f8:	0f 16 e3             	movlhps xmm4,xmm3
    67fb:	f3 0f 12 e4          	movsldup xmm4,xmm4
    67ff:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    6804:	0f 16 fb             	movlhps xmm7,xmm3
    6807:	f3 0f 12 ff          	movsldup xmm7,xmm7
    680b:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    6810:	0f 16 eb             	movlhps xmm5,xmm3
    6813:	f3 0f 12 ed          	movsldup xmm5,xmm5
    6817:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    681c:	0f 16 cb             	movlhps xmm1,xmm3
    681f:	f3 0f 12 c9          	movsldup xmm1,xmm1
    6823:	0f 28 1d 00 00 00 00 	movaps xmm3,XMMWORD PTR [rip+0x0]        # 682a <x264_8_pixel_satd_4x16_ssse3+0x1ca>
    682a:	66 0f 38 04 e3       	pmaddubsw xmm4,xmm3
    682f:	66 0f 38 04 fb       	pmaddubsw xmm7,xmm3
    6834:	66 0f 38 04 eb       	pmaddubsw xmm5,xmm3
    6839:	66 0f 38 04 cb       	pmaddubsw xmm1,xmm3
    683e:	66 0f f9 fc          	psubw  xmm7,xmm4
    6842:	66 0f f9 cd          	psubw  xmm1,xmm5
    6846:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    684a:	4c 01 ca             	add    rdx,r9
    684d:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    6851:	4c 01 c7             	add    rdi,r8
    6854:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    6858:	0f 16 f4             	movlhps xmm6,xmm4
    685b:	f3 0f 12 f6          	movsldup xmm6,xmm6
    685f:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    6863:	0f 16 d4             	movlhps xmm2,xmm4
    6866:	f3 0f 12 d2          	movsldup xmm2,xmm2
    686a:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    686f:	0f 16 ec             	movlhps xmm5,xmm4
    6872:	f3 0f 12 ed          	movsldup xmm5,xmm5
    6876:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    687b:	0f 16 dc             	movlhps xmm3,xmm4
    687e:	f3 0f 12 db          	movsldup xmm3,xmm3
    6882:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 6889 <x264_8_pixel_satd_4x16_ssse3+0x229>
    6889:	66 0f 38 04 f4       	pmaddubsw xmm6,xmm4
    688e:	66 0f 38 04 d4       	pmaddubsw xmm2,xmm4
    6893:	66 0f 38 04 ec       	pmaddubsw xmm5,xmm4
    6898:	66 0f 38 04 dc       	pmaddubsw xmm3,xmm4
    689d:	66 0f f9 d6          	psubw  xmm2,xmm6
    68a1:	66 0f f9 dd          	psubw  xmm3,xmm5
    68a5:	0f 28 e7             	movaps xmm4,xmm7
    68a8:	66 0f fd f9          	paddw  xmm7,xmm1
    68ac:	66 0f f9 cc          	psubw  xmm1,xmm4
    68b0:	0f 28 e2             	movaps xmm4,xmm2
    68b3:	66 0f fd d3          	paddw  xmm2,xmm3
    68b7:	66 0f f9 dc          	psubw  xmm3,xmm4
    68bb:	0f 28 e7             	movaps xmm4,xmm7
    68be:	66 0f fd fa          	paddw  xmm7,xmm2
    68c2:	66 0f f9 d4          	psubw  xmm2,xmm4
    68c6:	0f 28 e1             	movaps xmm4,xmm1
    68c9:	66 0f fd cb          	paddw  xmm1,xmm3
    68cd:	66 0f f9 dc          	psubw  xmm3,xmm4
    68d1:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    68d6:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    68db:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    68e0:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    68e5:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 68ec <x264_8_pixel_satd_4x16_ssse3+0x28c>
    68ec:	0f 28 ea             	movaps xmm5,xmm2
    68ef:	66 0f 72 f2 10       	pslld  xmm2,0x10
    68f4:	66 0f db ec          	pand   xmm5,xmm4
    68f8:	66 0f df e7          	pandn  xmm4,xmm7
    68fc:	66 0f 72 d7 10       	psrld  xmm7,0x10
    6901:	66 0f eb d4          	por    xmm2,xmm4
    6905:	66 0f eb fd          	por    xmm7,xmm5
    6909:	66 0f ee fa          	pmaxsw xmm7,xmm2
    690d:	66 0f fd c7          	paddw  xmm0,xmm7
    6911:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 6918 <x264_8_pixel_satd_4x16_ssse3+0x2b8>
    6918:	0f 28 eb             	movaps xmm5,xmm3
    691b:	66 0f 72 f3 10       	pslld  xmm3,0x10
    6920:	66 0f db ec          	pand   xmm5,xmm4
    6924:	66 0f df e1          	pandn  xmm4,xmm1
    6928:	66 0f 72 d1 10       	psrld  xmm1,0x10
    692d:	66 0f eb dc          	por    xmm3,xmm4
    6931:	66 0f eb cd          	por    xmm1,xmm5
    6935:	66 0f ee cb          	pmaxsw xmm1,xmm3
    6939:	66 0f fd c1          	paddw  xmm0,xmm1
    693d:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 6945 <x264_8_pixel_satd_4x16_ssse3+0x2e5>
    6944:	00 
    6945:	0f 12 c8             	movhlps xmm1,xmm0
    6948:	66 0f fe c1          	paddd  xmm0,xmm1
    694c:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    6951:	66 0f fe c1          	paddd  xmm0,xmm1
    6955:	66 0f 7e c0          	movd   eax,xmm0
    6959:	c3                   	ret    
    695a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000006960 <x264_8_pixel_satd_8x8_internal_ssse3>:
    6960:	f2 0f 12 22          	movddup xmm4,QWORD PTR [rdx]
    6964:	f2 0f 12 2c 0a       	movddup xmm5,QWORD PTR [rdx+rcx*1]
    6969:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    696d:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
    6972:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    6977:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    697c:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6981:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    6986:	66 0f f9 c4          	psubw  xmm0,xmm4
    698a:	66 0f f9 cd          	psubw  xmm1,xmm5
    698e:	f2 0f 12 24 4a       	movddup xmm4,QWORD PTR [rdx+rcx*2]
    6993:	f2 42 0f 12 2c 0a    	movddup xmm5,QWORD PTR [rdx+r9*1]
    6999:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    699e:	f2 42 0f 12 1c 07    	movddup xmm3,QWORD PTR [rdi+r8*1]
    69a4:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    69a9:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    69ae:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    69b3:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    69b8:	66 0f f9 d4          	psubw  xmm2,xmm4
    69bc:	66 0f f9 dd          	psubw  xmm3,xmm5
    69c0:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    69c4:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    69c8:	0f 28 e0             	movaps xmm4,xmm0
    69cb:	66 0f fd c1          	paddw  xmm0,xmm1
    69cf:	66 0f f9 cc          	psubw  xmm1,xmm4
    69d3:	0f 28 e2             	movaps xmm4,xmm2
    69d6:	66 0f fd d3          	paddw  xmm2,xmm3
    69da:	66 0f f9 dc          	psubw  xmm3,xmm4
    69de:	0f 28 e0             	movaps xmm4,xmm0
    69e1:	66 0f fd c2          	paddw  xmm0,xmm2
    69e5:	66 0f f9 d4          	psubw  xmm2,xmm4
    69e9:	0f 28 e1             	movaps xmm4,xmm1
    69ec:	66 0f fd cb          	paddw  xmm1,xmm3
    69f0:	66 0f f9 dc          	psubw  xmm3,xmm4
    69f4:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    69f9:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    69fe:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    6a03:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    6a08:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 6a0f <x264_8_pixel_satd_8x8_internal_ssse3+0xaf>
    6a0f:	0f 28 ea             	movaps xmm5,xmm2
    6a12:	66 0f 72 f2 10       	pslld  xmm2,0x10
    6a17:	66 0f db ec          	pand   xmm5,xmm4
    6a1b:	66 0f df e0          	pandn  xmm4,xmm0
    6a1f:	66 0f 72 d0 10       	psrld  xmm0,0x10
    6a24:	66 0f eb d4          	por    xmm2,xmm4
    6a28:	66 0f eb c5          	por    xmm0,xmm5
    6a2c:	66 0f ee c2          	pmaxsw xmm0,xmm2
    6a30:	66 0f fd f0          	paddw  xmm6,xmm0
    6a34:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 6a3b <x264_8_pixel_satd_8x8_internal_ssse3+0xdb>
    6a3b:	0f 28 eb             	movaps xmm5,xmm3
    6a3e:	66 0f 72 f3 10       	pslld  xmm3,0x10
    6a43:	66 0f db ec          	pand   xmm5,xmm4
    6a47:	66 0f df e1          	pandn  xmm4,xmm1
    6a4b:	66 0f 72 d1 10       	psrld  xmm1,0x10
    6a50:	66 0f eb dc          	por    xmm3,xmm4
    6a54:	66 0f eb cd          	por    xmm1,xmm5
    6a58:	66 0f ee cb          	pmaxsw xmm1,xmm3
    6a5c:	66 0f fd f1          	paddw  xmm6,xmm1
    6a60:	f2 0f 12 22          	movddup xmm4,QWORD PTR [rdx]
    6a64:	f2 0f 12 2c 0a       	movddup xmm5,QWORD PTR [rdx+rcx*1]
    6a69:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    6a6d:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
    6a72:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    6a77:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    6a7c:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6a81:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    6a86:	66 0f f9 c4          	psubw  xmm0,xmm4
    6a8a:	66 0f f9 cd          	psubw  xmm1,xmm5
    6a8e:	f2 0f 12 24 4a       	movddup xmm4,QWORD PTR [rdx+rcx*2]
    6a93:	f2 42 0f 12 2c 0a    	movddup xmm5,QWORD PTR [rdx+r9*1]
    6a99:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    6a9e:	f2 42 0f 12 1c 07    	movddup xmm3,QWORD PTR [rdi+r8*1]
    6aa4:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    6aa9:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    6aae:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6ab3:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    6ab8:	66 0f f9 d4          	psubw  xmm2,xmm4
    6abc:	66 0f f9 dd          	psubw  xmm3,xmm5
    6ac0:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    6ac4:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    6ac8:	0f 28 e0             	movaps xmm4,xmm0
    6acb:	66 0f fd c1          	paddw  xmm0,xmm1
    6acf:	66 0f f9 cc          	psubw  xmm1,xmm4
    6ad3:	0f 28 e2             	movaps xmm4,xmm2
    6ad6:	66 0f fd d3          	paddw  xmm2,xmm3
    6ada:	66 0f f9 dc          	psubw  xmm3,xmm4
    6ade:	0f 28 e0             	movaps xmm4,xmm0
    6ae1:	66 0f fd c2          	paddw  xmm0,xmm2
    6ae5:	66 0f f9 d4          	psubw  xmm2,xmm4
    6ae9:	0f 28 e1             	movaps xmm4,xmm1
    6aec:	66 0f fd cb          	paddw  xmm1,xmm3
    6af0:	66 0f f9 dc          	psubw  xmm3,xmm4
    6af4:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    6af9:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    6afe:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    6b03:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    6b08:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 6b0f <x264_8_pixel_satd_8x8_internal_ssse3+0x1af>
    6b0f:	0f 28 ea             	movaps xmm5,xmm2
    6b12:	66 0f 72 f2 10       	pslld  xmm2,0x10
    6b17:	66 0f db ec          	pand   xmm5,xmm4
    6b1b:	66 0f df e0          	pandn  xmm4,xmm0
    6b1f:	66 0f 72 d0 10       	psrld  xmm0,0x10
    6b24:	66 0f eb d4          	por    xmm2,xmm4
    6b28:	66 0f eb c5          	por    xmm0,xmm5
    6b2c:	66 0f ee c2          	pmaxsw xmm0,xmm2
    6b30:	66 0f fd f0          	paddw  xmm6,xmm0
    6b34:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 6b3b <x264_8_pixel_satd_8x8_internal_ssse3+0x1db>
    6b3b:	0f 28 eb             	movaps xmm5,xmm3
    6b3e:	66 0f 72 f3 10       	pslld  xmm3,0x10
    6b43:	66 0f db ec          	pand   xmm5,xmm4
    6b47:	66 0f df e1          	pandn  xmm4,xmm1
    6b4b:	66 0f 72 d1 10       	psrld  xmm1,0x10
    6b50:	66 0f eb dc          	por    xmm3,xmm4
    6b54:	66 0f eb cd          	por    xmm1,xmm5
    6b58:	66 0f ee cb          	pmaxsw xmm1,xmm3
    6b5c:	66 0f fd f1          	paddw  xmm6,xmm1
    6b60:	c3                   	ret    
    6b61:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    6b68:	00 
    6b69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000006b70 <x264_8_pixel_satd_16x4_internal_ssse3>:
    6b70:	f2 0f 12 02          	movddup xmm0,QWORD PTR [rdx]
    6b74:	f2 0f 12 62 08       	movddup xmm4,QWORD PTR [rdx+0x8]
    6b79:	0f 28 17             	movaps xmm2,XMMWORD PTR [rdi]
    6b7c:	f2 0f 12 ca          	movddup xmm1,xmm2
    6b80:	66 0f 6d d2          	punpckhqdq xmm2,xmm2
    6b84:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    6b89:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    6b8e:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    6b93:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    6b98:	66 0f f9 c1          	psubw  xmm0,xmm1
    6b9c:	66 0f f9 e2          	psubw  xmm4,xmm2
    6ba0:	f2 0f 12 0c 0a       	movddup xmm1,QWORD PTR [rdx+rcx*1]
    6ba5:	f2 44 0f 12 44 0a 08 	movddup xmm8,QWORD PTR [rdx+rcx*1+0x8]
    6bac:	0f 28 1c 37          	movaps xmm3,XMMWORD PTR [rdi+rsi*1]
    6bb0:	f2 0f 12 d3          	movddup xmm2,xmm3
    6bb4:	66 0f 6d db          	punpckhqdq xmm3,xmm3
    6bb8:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    6bbd:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    6bc2:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    6bc7:	66 44 0f 38 04 c7    	pmaddubsw xmm8,xmm7
    6bcd:	66 0f f9 ca          	psubw  xmm1,xmm2
    6bd1:	66 44 0f f9 c3       	psubw  xmm8,xmm3
    6bd6:	f2 0f 12 14 4a       	movddup xmm2,QWORD PTR [rdx+rcx*2]
    6bdb:	f2 0f 12 6c 4a 08    	movddup xmm5,QWORD PTR [rdx+rcx*2+0x8]
    6be1:	0f 28 34 77          	movaps xmm6,XMMWORD PTR [rdi+rsi*2]
    6be5:	f2 0f 12 de          	movddup xmm3,xmm6
    6be9:	66 0f 6d f6          	punpckhqdq xmm6,xmm6
    6bed:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    6bf2:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    6bf7:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    6bfc:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6c01:	66 0f f9 d3          	psubw  xmm2,xmm3
    6c05:	66 0f f9 ee          	psubw  xmm5,xmm6
    6c09:	f2 42 0f 12 1c 0a    	movddup xmm3,QWORD PTR [rdx+r9*1]
    6c0f:	f2 46 0f 12 4c 0a 08 	movddup xmm9,QWORD PTR [rdx+r9*1+0x8]
    6c16:	42 0f 28 34 07       	movaps xmm6,XMMWORD PTR [rdi+r8*1]
    6c1b:	f2 44 0f 12 de       	movddup xmm11,xmm6
    6c20:	66 0f 6d f6          	punpckhqdq xmm6,xmm6
    6c24:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    6c2a:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    6c2f:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    6c34:	66 44 0f 38 04 cf    	pmaddubsw xmm9,xmm7
    6c3a:	66 41 0f f9 db       	psubw  xmm3,xmm11
    6c3f:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    6c44:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    6c48:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    6c4c:	0f 28 f0             	movaps xmm6,xmm0
    6c4f:	66 0f fd c1          	paddw  xmm0,xmm1
    6c53:	66 0f f9 ce          	psubw  xmm1,xmm6
    6c57:	0f 28 f2             	movaps xmm6,xmm2
    6c5a:	66 0f fd d3          	paddw  xmm2,xmm3
    6c5e:	66 0f f9 de          	psubw  xmm3,xmm6
    6c62:	0f 28 f0             	movaps xmm6,xmm0
    6c65:	66 0f fd c2          	paddw  xmm0,xmm2
    6c69:	66 0f f9 d6          	psubw  xmm2,xmm6
    6c6d:	0f 28 f1             	movaps xmm6,xmm1
    6c70:	66 0f fd cb          	paddw  xmm1,xmm3
    6c74:	66 0f f9 de          	psubw  xmm3,xmm6
    6c78:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    6c7d:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    6c82:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    6c87:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    6c8c:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 6c93 <x264_8_pixel_satd_16x4_internal_ssse3+0x123>
    6c93:	44 0f 28 da          	movaps xmm11,xmm2
    6c97:	66 0f 72 f2 10       	pslld  xmm2,0x10
    6c9c:	66 44 0f db de       	pand   xmm11,xmm6
    6ca1:	66 0f df f0          	pandn  xmm6,xmm0
    6ca5:	66 0f 72 d0 10       	psrld  xmm0,0x10
    6caa:	66 0f eb d6          	por    xmm2,xmm6
    6cae:	66 41 0f eb c3       	por    xmm0,xmm11
    6cb3:	66 0f ee c2          	pmaxsw xmm0,xmm2
    6cb7:	66 44 0f fd d0       	paddw  xmm10,xmm0
    6cbc:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 6cc3 <x264_8_pixel_satd_16x4_internal_ssse3+0x153>
    6cc3:	44 0f 28 db          	movaps xmm11,xmm3
    6cc7:	66 0f 72 f3 10       	pslld  xmm3,0x10
    6ccc:	66 44 0f db de       	pand   xmm11,xmm6
    6cd1:	66 0f df f1          	pandn  xmm6,xmm1
    6cd5:	66 0f 72 d1 10       	psrld  xmm1,0x10
    6cda:	66 0f eb de          	por    xmm3,xmm6
    6cde:	66 41 0f eb cb       	por    xmm1,xmm11
    6ce3:	66 0f ee cb          	pmaxsw xmm1,xmm3
    6ce7:	66 44 0f fd d1       	paddw  xmm10,xmm1
    6cec:	0f 28 f4             	movaps xmm6,xmm4
    6cef:	66 41 0f fd e0       	paddw  xmm4,xmm8
    6cf4:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    6cf9:	0f 28 f5             	movaps xmm6,xmm5
    6cfc:	66 41 0f fd e9       	paddw  xmm5,xmm9
    6d01:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    6d06:	0f 28 f4             	movaps xmm6,xmm4
    6d09:	66 0f fd e5          	paddw  xmm4,xmm5
    6d0d:	66 0f f9 ee          	psubw  xmm5,xmm6
    6d11:	41 0f 28 f0          	movaps xmm6,xmm8
    6d15:	66 45 0f fd c1       	paddw  xmm8,xmm9
    6d1a:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    6d1f:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    6d24:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    6d29:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    6d2f:	66 45 0f 38 1d c9    	pabsw  xmm9,xmm9
    6d35:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 6d3c <x264_8_pixel_satd_16x4_internal_ssse3+0x1cc>
    6d3c:	0f 28 dd             	movaps xmm3,xmm5
    6d3f:	66 0f 72 f5 10       	pslld  xmm5,0x10
    6d44:	66 0f db de          	pand   xmm3,xmm6
    6d48:	66 0f df f4          	pandn  xmm6,xmm4
    6d4c:	66 0f 72 d4 10       	psrld  xmm4,0x10
    6d51:	66 0f eb ee          	por    xmm5,xmm6
    6d55:	66 0f eb e3          	por    xmm4,xmm3
    6d59:	66 0f ee e5          	pmaxsw xmm4,xmm5
    6d5d:	66 44 0f fd d4       	paddw  xmm10,xmm4
    6d62:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 6d69 <x264_8_pixel_satd_16x4_internal_ssse3+0x1f9>
    6d69:	41 0f 28 d9          	movaps xmm3,xmm9
    6d6d:	66 41 0f 72 f1 10    	pslld  xmm9,0x10
    6d73:	66 0f db de          	pand   xmm3,xmm6
    6d77:	66 41 0f df f0       	pandn  xmm6,xmm8
    6d7c:	66 41 0f 72 d0 10    	psrld  xmm8,0x10
    6d82:	66 44 0f eb ce       	por    xmm9,xmm6
    6d87:	66 44 0f eb c3       	por    xmm8,xmm3
    6d8c:	66 45 0f ee c1       	pmaxsw xmm8,xmm9
    6d91:	66 45 0f fd d0       	paddw  xmm10,xmm8
    6d96:	c3                   	ret    
    6d97:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    6d9e:	00 
    6d9f:	90                   	nop

0000000000006da0 <x264_8_pixel_satd_16x8_ssse3>:
    6da0:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 6da7 <x264_8_pixel_satd_16x8_ssse3+0x7>
    6da7:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    6dab:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    6daf:	66 45 0f ef d2       	pxor   xmm10,xmm10
    6db4:	eb 28                	jmp    6dde <x264_8_pixel_satd_16x16_ssse3+0x1e>
    6db6:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    6dbd:	00 
    6dbe:	66 90                	xchg   ax,ax

0000000000006dc0 <x264_8_pixel_satd_16x16_ssse3>:
    6dc0:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 6dc7 <x264_8_pixel_satd_16x16_ssse3+0x7>
    6dc7:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    6dcb:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    6dcf:	66 45 0f ef d2       	pxor   xmm10,xmm10
    6dd4:	e8 97 fd ff ff       	call   6b70 <x264_8_pixel_satd_16x4_internal_ssse3>
    6dd9:	e8 92 fd ff ff       	call   6b70 <x264_8_pixel_satd_16x4_internal_ssse3>
    6dde:	e8 8d fd ff ff       	call   6b70 <x264_8_pixel_satd_16x4_internal_ssse3>
    6de3:	e8 88 fd ff ff       	call   6b70 <x264_8_pixel_satd_16x4_internal_ssse3>
    6de8:	66 44 0f f5 15 00 00 	pmaddwd xmm10,XMMWORD PTR [rip+0x0]        # 6df1 <x264_8_pixel_satd_16x16_ssse3+0x31>
    6def:	00 00 
    6df1:	41 0f 12 fa          	movhlps xmm7,xmm10
    6df5:	66 44 0f fe d7       	paddd  xmm10,xmm7
    6dfa:	f2 41 0f 70 fa 4e    	pshuflw xmm7,xmm10,0x4e
    6e00:	66 44 0f fe d7       	paddd  xmm10,xmm7
    6e05:	66 44 0f 7e d0       	movd   eax,xmm10
    6e0a:	c3                   	ret    
    6e0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000006e10 <x264_8_pixel_satd_8x16_ssse3>:
    6e10:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 6e17 <x264_8_pixel_satd_8x16_ssse3+0x7>
    6e17:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    6e1b:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    6e1f:	66 0f ef f6          	pxor   xmm6,xmm6
    6e23:	e8 38 fb ff ff       	call   6960 <x264_8_pixel_satd_8x8_internal_ssse3>
    6e28:	e8 33 fb ff ff       	call   6960 <x264_8_pixel_satd_8x8_internal_ssse3>
    6e2d:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 6e35 <x264_8_pixel_satd_8x16_ssse3+0x25>
    6e34:	00 
    6e35:	0f 12 fe             	movhlps xmm7,xmm6
    6e38:	66 0f fe f7          	paddd  xmm6,xmm7
    6e3c:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    6e41:	66 0f fe f7          	paddd  xmm6,xmm7
    6e45:	66 0f 7e f0          	movd   eax,xmm6
    6e49:	c3                   	ret    
    6e4a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000006e50 <x264_8_pixel_satd_8x8_ssse3>:
    6e50:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 6e57 <x264_8_pixel_satd_8x8_ssse3+0x7>
    6e57:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    6e5b:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    6e5f:	66 0f ef f6          	pxor   xmm6,xmm6
    6e63:	e8 f8 fa ff ff       	call   6960 <x264_8_pixel_satd_8x8_internal_ssse3>
    6e68:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 6e70 <x264_8_pixel_satd_8x8_ssse3+0x20>
    6e6f:	00 
    6e70:	0f 12 fe             	movhlps xmm7,xmm6
    6e73:	66 0f fe f7          	paddd  xmm6,xmm7
    6e77:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    6e7c:	66 0f fe f7          	paddd  xmm6,xmm7
    6e80:	66 0f 7e f0          	movd   eax,xmm6
    6e84:	c3                   	ret    
    6e85:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    6e8c:	00 
    6e8d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000006e90 <x264_8_pixel_satd_8x4_ssse3>:
    6e90:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 6e97 <x264_8_pixel_satd_8x4_ssse3+0x7>
    6e97:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    6e9b:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    6e9f:	66 0f ef f6          	pxor   xmm6,xmm6
    6ea3:	e8 b8 fb ff ff       	call   6a60 <x264_8_pixel_satd_8x8_internal_ssse3+0x100>
    6ea8:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # 6eb0 <x264_8_pixel_satd_8x4_ssse3+0x20>
    6eaf:	00 
    6eb0:	0f 12 fe             	movhlps xmm7,xmm6
    6eb3:	66 0f fe f7          	paddd  xmm6,xmm7
    6eb7:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    6ebc:	66 0f fe f7          	paddd  xmm6,xmm7
    6ec0:	66 0f 7e f0          	movd   eax,xmm6
    6ec4:	c3                   	ret    
    6ec5:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    6ecc:	00 
    6ecd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000006ed0 <x264_8_pixel_sa8d_8x8_internal_ssse3>:
    6ed0:	48 8d 04 b7          	lea    rax,[rdi+rsi*4]
    6ed4:	4c 8d 14 8a          	lea    r10,[rdx+rcx*4]
    6ed8:	f2 0f 12 2a          	movddup xmm5,QWORD PTR [rdx]
    6edc:	f2 0f 12 34 0a       	movddup xmm6,QWORD PTR [rdx+rcx*1]
    6ee1:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    6ee5:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
    6eea:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6eef:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    6ef4:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    6ef9:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    6efe:	66 0f f9 c5          	psubw  xmm0,xmm5
    6f02:	66 0f f9 ce          	psubw  xmm1,xmm6
    6f06:	f2 0f 12 2c 4a       	movddup xmm5,QWORD PTR [rdx+rcx*2]
    6f0b:	f2 42 0f 12 34 0a    	movddup xmm6,QWORD PTR [rdx+r9*1]
    6f11:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    6f16:	f2 46 0f 12 04 07    	movddup xmm8,QWORD PTR [rdi+r8*1]
    6f1c:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6f21:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    6f26:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    6f2b:	66 44 0f 38 04 c7    	pmaddubsw xmm8,xmm7
    6f31:	66 0f f9 d5          	psubw  xmm2,xmm5
    6f35:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    6f3a:	f2 45 0f 12 1a       	movddup xmm11,QWORD PTR [r10]
    6f3f:	f2 41 0f 12 34 0a    	movddup xmm6,QWORD PTR [r10+rcx*1]
    6f45:	f2 0f 12 20          	movddup xmm4,QWORD PTR [rax]
    6f49:	f2 0f 12 2c 30       	movddup xmm5,QWORD PTR [rax+rsi*1]
    6f4e:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    6f54:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    6f59:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    6f5e:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    6f63:	66 41 0f f9 e3       	psubw  xmm4,xmm11
    6f68:	66 0f f9 ee          	psubw  xmm5,xmm6
    6f6c:	f2 45 0f 12 1c 4a    	movddup xmm11,QWORD PTR [r10+rcx*2]
    6f72:	f2 43 0f 12 34 0a    	movddup xmm6,QWORD PTR [r10+r9*1]
    6f78:	f2 0f 12 1c 70       	movddup xmm3,QWORD PTR [rax+rsi*2]
    6f7d:	f2 46 0f 12 0c 00    	movddup xmm9,QWORD PTR [rax+r8*1]
    6f83:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    6f89:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    6f8e:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    6f93:	66 44 0f 38 04 cf    	pmaddubsw xmm9,xmm7
    6f99:	66 41 0f f9 db       	psubw  xmm3,xmm11
    6f9e:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    6fa3:	0f 28 f0             	movaps xmm6,xmm0
    6fa6:	66 0f fd c1          	paddw  xmm0,xmm1
    6faa:	66 0f f9 ce          	psubw  xmm1,xmm6
    6fae:	0f 28 f2             	movaps xmm6,xmm2
    6fb1:	66 41 0f fd d0       	paddw  xmm2,xmm8
    6fb6:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    6fbb:	0f 28 f0             	movaps xmm6,xmm0
    6fbe:	66 0f fd c2          	paddw  xmm0,xmm2
    6fc2:	66 0f f9 d6          	psubw  xmm2,xmm6
    6fc6:	0f 28 f1             	movaps xmm6,xmm1
    6fc9:	66 41 0f fd c8       	paddw  xmm1,xmm8
    6fce:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    6fd3:	0f 28 f4             	movaps xmm6,xmm4
    6fd6:	66 0f fd e5          	paddw  xmm4,xmm5
    6fda:	66 0f f9 ee          	psubw  xmm5,xmm6
    6fde:	0f 28 f3             	movaps xmm6,xmm3
    6fe1:	66 41 0f fd d9       	paddw  xmm3,xmm9
    6fe6:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    6feb:	0f 28 f4             	movaps xmm6,xmm4
    6fee:	66 0f fd e3          	paddw  xmm4,xmm3
    6ff2:	66 0f f9 de          	psubw  xmm3,xmm6
    6ff6:	0f 28 f5             	movaps xmm6,xmm5
    6ff9:	66 41 0f fd e9       	paddw  xmm5,xmm9
    6ffe:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    7003:	0f 28 f0             	movaps xmm6,xmm0
    7006:	66 0f fd c4          	paddw  xmm0,xmm4
    700a:	66 0f f9 e6          	psubw  xmm4,xmm6
    700e:	0f 28 f1             	movaps xmm6,xmm1
    7011:	66 0f fd cd          	paddw  xmm1,xmm5
    7015:	66 0f f9 ee          	psubw  xmm5,xmm6
    7019:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 7020 <x264_8_pixel_sa8d_8x8_internal_ssse3+0x150>
    7020:	44 0f 28 dc          	movaps xmm11,xmm4
    7024:	66 0f 73 f4 20       	psllq  xmm4,0x20
    7029:	66 44 0f db de       	pand   xmm11,xmm6
    702e:	66 0f df f0          	pandn  xmm6,xmm0
    7032:	66 0f 73 d0 20       	psrlq  xmm0,0x20
    7037:	66 0f eb e6          	por    xmm4,xmm6
    703b:	66 41 0f eb c3       	por    xmm0,xmm11
    7040:	0f 28 f0             	movaps xmm6,xmm0
    7043:	66 0f fd c4          	paddw  xmm0,xmm4
    7047:	66 0f f9 e6          	psubw  xmm4,xmm6
    704b:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 7052 <x264_8_pixel_sa8d_8x8_internal_ssse3+0x182>
    7052:	44 0f 28 dd          	movaps xmm11,xmm5
    7056:	66 0f 73 f5 20       	psllq  xmm5,0x20
    705b:	66 44 0f db de       	pand   xmm11,xmm6
    7060:	66 0f df f1          	pandn  xmm6,xmm1
    7064:	66 0f 73 d1 20       	psrlq  xmm1,0x20
    7069:	66 0f eb ee          	por    xmm5,xmm6
    706d:	66 41 0f eb cb       	por    xmm1,xmm11
    7072:	0f 28 f1             	movaps xmm6,xmm1
    7075:	66 0f fd cd          	paddw  xmm1,xmm5
    7079:	66 0f f9 ee          	psubw  xmm5,xmm6
    707d:	0f 28 f2             	movaps xmm6,xmm2
    7080:	66 0f fd d3          	paddw  xmm2,xmm3
    7084:	66 0f f9 de          	psubw  xmm3,xmm6
    7088:	41 0f 28 f0          	movaps xmm6,xmm8
    708c:	66 45 0f fd c1       	paddw  xmm8,xmm9
    7091:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    7096:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 709d <x264_8_pixel_sa8d_8x8_internal_ssse3+0x1cd>
    709d:	44 0f 28 db          	movaps xmm11,xmm3
    70a1:	66 0f 73 f3 20       	psllq  xmm3,0x20
    70a6:	66 44 0f db de       	pand   xmm11,xmm6
    70ab:	66 0f df f2          	pandn  xmm6,xmm2
    70af:	66 0f 73 d2 20       	psrlq  xmm2,0x20
    70b4:	66 0f eb de          	por    xmm3,xmm6
    70b8:	66 41 0f eb d3       	por    xmm2,xmm11
    70bd:	0f 28 f2             	movaps xmm6,xmm2
    70c0:	66 0f fd d3          	paddw  xmm2,xmm3
    70c4:	66 0f f9 de          	psubw  xmm3,xmm6
    70c8:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 70cf <x264_8_pixel_sa8d_8x8_internal_ssse3+0x1ff>
    70cf:	45 0f 28 d9          	movaps xmm11,xmm9
    70d3:	66 41 0f 73 f1 20    	psllq  xmm9,0x20
    70d9:	66 44 0f db de       	pand   xmm11,xmm6
    70de:	66 41 0f df f0       	pandn  xmm6,xmm8
    70e3:	66 41 0f 73 d0 20    	psrlq  xmm8,0x20
    70e9:	66 44 0f eb ce       	por    xmm9,xmm6
    70ee:	66 45 0f eb c3       	por    xmm8,xmm11
    70f3:	41 0f 28 f0          	movaps xmm6,xmm8
    70f7:	66 45 0f fd c1       	paddw  xmm8,xmm9
    70fc:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    7101:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 7108 <x264_8_pixel_sa8d_8x8_internal_ssse3+0x238>
    7108:	44 0f 28 dc          	movaps xmm11,xmm4
    710c:	66 0f 72 f4 10       	pslld  xmm4,0x10
    7111:	66 44 0f db de       	pand   xmm11,xmm6
    7116:	66 0f df f0          	pandn  xmm6,xmm0
    711a:	66 0f 72 d0 10       	psrld  xmm0,0x10
    711f:	66 0f eb e6          	por    xmm4,xmm6
    7123:	66 41 0f eb c3       	por    xmm0,xmm11
    7128:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    712d:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    7132:	66 0f ee c4          	pmaxsw xmm0,xmm4
    7136:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 713d <x264_8_pixel_sa8d_8x8_internal_ssse3+0x26d>
    713d:	0f 28 e5             	movaps xmm4,xmm5
    7140:	66 0f 72 f5 10       	pslld  xmm5,0x10
    7145:	66 0f db e6          	pand   xmm4,xmm6
    7149:	66 0f df f1          	pandn  xmm6,xmm1
    714d:	66 0f 72 d1 10       	psrld  xmm1,0x10
    7152:	66 0f eb ee          	por    xmm5,xmm6
    7156:	66 0f eb cc          	por    xmm1,xmm4
    715a:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    715f:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    7164:	66 0f ee cd          	pmaxsw xmm1,xmm5
    7168:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 716f <x264_8_pixel_sa8d_8x8_internal_ssse3+0x29f>
    716f:	0f 28 e3             	movaps xmm4,xmm3
    7172:	66 0f 72 f3 10       	pslld  xmm3,0x10
    7177:	66 0f db e6          	pand   xmm4,xmm6
    717b:	66 0f df f2          	pandn  xmm6,xmm2
    717f:	66 0f 72 d2 10       	psrld  xmm2,0x10
    7184:	66 0f eb de          	por    xmm3,xmm6
    7188:	66 0f eb d4          	por    xmm2,xmm4
    718c:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    7191:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    7196:	66 0f ee d3          	pmaxsw xmm2,xmm3
    719a:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 71a1 <x264_8_pixel_sa8d_8x8_internal_ssse3+0x2d1>
    71a1:	41 0f 28 e1          	movaps xmm4,xmm9
    71a5:	66 41 0f 72 f1 10    	pslld  xmm9,0x10
    71ab:	66 0f db e6          	pand   xmm4,xmm6
    71af:	66 41 0f df f0       	pandn  xmm6,xmm8
    71b4:	66 41 0f 72 d0 10    	psrld  xmm8,0x10
    71ba:	66 44 0f eb ce       	por    xmm9,xmm6
    71bf:	66 44 0f eb c4       	por    xmm8,xmm4
    71c4:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    71ca:	66 45 0f 38 1d c9    	pabsw  xmm9,xmm9
    71d0:	66 45 0f ee c1       	pmaxsw xmm8,xmm9
    71d5:	66 0f fd c1          	paddw  xmm0,xmm1
    71d9:	66 0f fd c2          	paddw  xmm0,xmm2
    71dd:	66 41 0f fd c0       	paddw  xmm0,xmm8
    71e2:	c3                   	ret    
    71e3:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    71ea:	00 
    71eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000071f0 <x264_8_pixel_sa8d_8x8_ssse3>:
    71f0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    71f4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    71f8:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 71ff <x264_8_pixel_sa8d_8x8_ssse3+0xf>
    71ff:	e8 cc fc ff ff       	call   6ed0 <x264_8_pixel_sa8d_8x8_internal_ssse3>
    7204:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 720c <x264_8_pixel_sa8d_8x8_ssse3+0x1c>
    720b:	00 
    720c:	0f 12 c8             	movhlps xmm1,xmm0
    720f:	66 0f fe c1          	paddd  xmm0,xmm1
    7213:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    7218:	66 0f fe c1          	paddd  xmm0,xmm1
    721c:	66 0f 7e c0          	movd   eax,xmm0
    7220:	83 c0 01             	add    eax,0x1
    7223:	d1 e8                	shr    eax,1
    7225:	c3                   	ret    
    7226:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    722d:	00 
    722e:	66 90                	xchg   ax,ax

0000000000007230 <x264_8_pixel_sa8d_16x16_ssse3>:
    7230:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    7234:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    7238:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 723f <x264_8_pixel_sa8d_16x16_ssse3+0xf>
    723f:	e8 8c fc ff ff       	call   6ed0 <x264_8_pixel_sa8d_8x8_internal_ssse3>
    7244:	48 83 c2 08          	add    rdx,0x8
    7248:	48 83 c7 08          	add    rdi,0x8
    724c:	44 0f 28 d0          	movaps xmm10,xmm0
    7250:	e8 7b fc ff ff       	call   6ed0 <x264_8_pixel_sa8d_8x8_internal_ssse3>
    7255:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
    7259:	48 8d 3c f7          	lea    rdi,[rdi+rsi*8]
    725d:	66 44 0f dd d0       	paddusw xmm10,xmm0
    7262:	e8 69 fc ff ff       	call   6ed0 <x264_8_pixel_sa8d_8x8_internal_ssse3>
    7267:	48 83 ea 08          	sub    rdx,0x8
    726b:	48 83 ef 08          	sub    rdi,0x8
    726f:	66 44 0f dd d0       	paddusw xmm10,xmm0
    7274:	e8 57 fc ff ff       	call   6ed0 <x264_8_pixel_sa8d_8x8_internal_ssse3>
    7279:	66 44 0f dd d0       	paddusw xmm10,xmm0
    727e:	66 41 0f 6f ca       	movdqa xmm1,xmm10
    7283:	66 0f 72 d1 10       	psrld  xmm1,0x10
    7288:	66 41 0f 72 f2 10    	pslld  xmm10,0x10
    728e:	66 41 0f 72 d2 10    	psrld  xmm10,0x10
    7294:	66 44 0f fe d1       	paddd  xmm10,xmm1
    7299:	41 0f 12 ca          	movhlps xmm1,xmm10
    729d:	66 44 0f fe d1       	paddd  xmm10,xmm1
    72a2:	f2 41 0f 70 ca 4e    	pshuflw xmm1,xmm10,0x4e
    72a8:	66 44 0f fe d1       	paddd  xmm10,xmm1
    72ad:	66 44 0f 7e d0       	movd   eax,xmm10
    72b2:	83 c0 01             	add    eax,0x1
    72b5:	d1 e8                	shr    eax,1
    72b7:	c3                   	ret    
    72b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    72bf:	00 

00000000000072c0 <x264_8_hadamard_ac_8x8_ssse3>:
    72c0:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 72c7 <x264_8_hadamard_ac_8x8_ssse3+0x7>
    72c7:	f2 0f 12 04 17       	movddup xmm0,QWORD PTR [rdi+rdx*1]
    72cc:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
    72d1:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    72d6:	f2 0f 12 1f          	movddup xmm3,QWORD PTR [rdi]
    72da:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    72de:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    72e3:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    72e8:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    72ed:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    72f2:	0f 28 e0             	movaps xmm4,xmm0
    72f5:	66 0f fd c1          	paddw  xmm0,xmm1
    72f9:	66 0f f9 cc          	psubw  xmm1,xmm4
    72fd:	0f 28 e2             	movaps xmm4,xmm2
    7300:	66 0f fd d3          	paddw  xmm2,xmm3
    7304:	66 0f f9 dc          	psubw  xmm3,xmm4
    7308:	0f 28 e0             	movaps xmm4,xmm0
    730b:	66 0f fd c2          	paddw  xmm0,xmm2
    730f:	66 0f f9 d4          	psubw  xmm2,xmm4
    7313:	0f 28 e1             	movaps xmm4,xmm1
    7316:	66 0f fd cb          	paddw  xmm1,xmm3
    731a:	66 0f f9 dc          	psubw  xmm3,xmm4
    731e:	44 0f 28 c1          	movaps xmm8,xmm1
    7322:	f2 0f 12 24 17       	movddup xmm4,QWORD PTR [rdi+rdx*1]
    7327:	f2 0f 12 2c 37       	movddup xmm5,QWORD PTR [rdi+rsi*1]
    732c:	f2 0f 12 34 77       	movddup xmm6,QWORD PTR [rdi+rsi*2]
    7331:	f2 0f 12 0f          	movddup xmm1,QWORD PTR [rdi]
    7335:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    733a:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    733f:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    7344:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    7349:	0f 28 fc             	movaps xmm7,xmm4
    734c:	66 0f fd e5          	paddw  xmm4,xmm5
    7350:	66 0f f9 ef          	psubw  xmm5,xmm7
    7354:	0f 28 fe             	movaps xmm7,xmm6
    7357:	66 0f fd f1          	paddw  xmm6,xmm1
    735b:	66 0f f9 cf          	psubw  xmm1,xmm7
    735f:	0f 28 fc             	movaps xmm7,xmm4
    7362:	66 0f fd e6          	paddw  xmm4,xmm6
    7366:	66 0f f9 f7          	psubw  xmm6,xmm7
    736a:	0f 28 fd             	movaps xmm7,xmm5
    736d:	66 0f fd e9          	paddw  xmm5,xmm1
    7371:	66 0f f9 cf          	psubw  xmm1,xmm7
    7375:	41 0f 28 f8          	movaps xmm7,xmm8
    7379:	44 0f 28 c6          	movaps xmm8,xmm6
    737d:	44 0f 28 c9          	movaps xmm9,xmm1
    7381:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 7388 <x264_8_hadamard_ac_8x8_ssse3+0xc8>
    7388:	0f 28 cf             	movaps xmm1,xmm7
    738b:	66 0f 72 f7 10       	pslld  xmm7,0x10
    7390:	66 0f db ce          	pand   xmm1,xmm6
    7394:	66 0f df f0          	pandn  xmm6,xmm0
    7398:	66 0f 72 d0 10       	psrld  xmm0,0x10
    739d:	66 0f eb fe          	por    xmm7,xmm6
    73a1:	66 0f eb c1          	por    xmm0,xmm1
    73a5:	0f 28 f0             	movaps xmm6,xmm0
    73a8:	66 0f fd c7          	paddw  xmm0,xmm7
    73ac:	66 0f f9 fe          	psubw  xmm7,xmm6
    73b0:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 73b7 <x264_8_hadamard_ac_8x8_ssse3+0xf7>
    73b7:	0f 28 cb             	movaps xmm1,xmm3
    73ba:	66 0f 72 f3 10       	pslld  xmm3,0x10
    73bf:	66 0f db ce          	pand   xmm1,xmm6
    73c3:	66 0f df f2          	pandn  xmm6,xmm2
    73c7:	66 0f 72 d2 10       	psrld  xmm2,0x10
    73cc:	66 0f eb de          	por    xmm3,xmm6
    73d0:	66 0f eb d1          	por    xmm2,xmm1
    73d4:	0f 28 f2             	movaps xmm6,xmm2
    73d7:	66 0f fd d3          	paddw  xmm2,xmm3
    73db:	66 0f f9 de          	psubw  xmm3,xmm6
    73df:	41 0f 28 f0          	movaps xmm6,xmm8
    73e3:	41 0f 28 c9          	movaps xmm1,xmm9
    73e7:	44 0f 28 c7          	movaps xmm8,xmm7
    73eb:	44 0f 28 c8          	movaps xmm9,xmm0
    73ef:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 73f6 <x264_8_hadamard_ac_8x8_ssse3+0x136>
    73f6:	0f 28 c5             	movaps xmm0,xmm5
    73f9:	66 0f 72 f5 10       	pslld  xmm5,0x10
    73fe:	66 0f db c7          	pand   xmm0,xmm7
    7402:	66 0f df fc          	pandn  xmm7,xmm4
    7406:	66 0f 72 d4 10       	psrld  xmm4,0x10
    740b:	66 0f eb ef          	por    xmm5,xmm7
    740f:	66 0f eb e0          	por    xmm4,xmm0
    7413:	0f 28 fc             	movaps xmm7,xmm4
    7416:	66 0f fd e5          	paddw  xmm4,xmm5
    741a:	66 0f f9 ef          	psubw  xmm5,xmm7
    741e:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 7425 <x264_8_hadamard_ac_8x8_ssse3+0x165>
    7425:	0f 28 c1             	movaps xmm0,xmm1
    7428:	66 0f 72 f1 10       	pslld  xmm1,0x10
    742d:	66 0f db c7          	pand   xmm0,xmm7
    7431:	66 0f df fe          	pandn  xmm7,xmm6
    7435:	66 0f 72 d6 10       	psrld  xmm6,0x10
    743a:	66 0f eb cf          	por    xmm1,xmm7
    743e:	66 0f eb f0          	por    xmm6,xmm0
    7442:	0f 28 fe             	movaps xmm7,xmm6
    7445:	66 0f fd f1          	paddw  xmm6,xmm1
    7449:	66 0f f9 cf          	psubw  xmm1,xmm7
    744d:	41 0f 28 c1          	movaps xmm0,xmm9
    7451:	44 0f 28 ca          	movaps xmm9,xmm2
    7455:	44 0f 28 d3          	movaps xmm10,xmm3
    7459:	66 0f 38 1d f8       	pabsw  xmm7,xmm0
    745e:	66 0f 38 1d d4       	pabsw  xmm2,xmm4
    7463:	66 0f 38 1d dd       	pabsw  xmm3,xmm5
    7468:	66 0f fd fa          	paddw  xmm7,xmm2
    746c:	66 0f fd c4          	paddw  xmm0,xmm4
    7470:	66 0f fd e4          	paddw  xmm4,xmm4
    7474:	66 0f f9 e0          	psubw  xmm4,xmm0
    7478:	66 0f db 3d 00 00 00 	pand   xmm7,XMMWORD PTR [rip+0x0]        # 7480 <x264_8_hadamard_ac_8x8_ssse3+0x1c0>
    747f:	00 
    7480:	66 41 0f 38 1d d0    	pabsw  xmm2,xmm8
    7486:	66 0f fd fb          	paddw  xmm7,xmm3
    748a:	66 41 0f 38 1d d9    	pabsw  xmm3,xmm9
    7490:	66 0f fd fa          	paddw  xmm7,xmm2
    7494:	66 41 0f 38 1d d2    	pabsw  xmm2,xmm10
    749a:	66 0f fd fb          	paddw  xmm7,xmm3
    749e:	66 0f 38 1d de       	pabsw  xmm3,xmm6
    74a3:	66 0f fd fa          	paddw  xmm7,xmm2
    74a7:	66 0f 38 1d d1       	pabsw  xmm2,xmm1
    74ac:	66 0f fd fb          	paddw  xmm7,xmm3
    74b0:	66 0f fd fa          	paddw  xmm7,xmm2
    74b4:	66 0f 6f d9          	movdqa xmm3,xmm1
    74b8:	66 41 0f fd da       	paddw  xmm3,xmm10
    74bd:	66 41 0f f9 ca       	psubw  xmm1,xmm10
    74c2:	0f 29 7c 24 28       	movaps XMMWORD PTR [rsp+0x28],xmm7
    74c7:	66 0f 6f d6          	movdqa xmm2,xmm6
    74cb:	66 41 0f fd d1       	paddw  xmm2,xmm9
    74d0:	66 41 0f f9 f1       	psubw  xmm6,xmm9
    74d5:	66 0f 6f fd          	movdqa xmm7,xmm5
    74d9:	66 41 0f fd f8       	paddw  xmm7,xmm8
    74de:	66 41 0f f9 e8       	psubw  xmm5,xmm8
    74e3:	44 0f 28 cc          	movaps xmm9,xmm4
    74e7:	0f 28 e1             	movaps xmm4,xmm1
    74ea:	66 0f 73 f1 20       	psllq  xmm1,0x20
    74ef:	66 0f ef cb          	pxor   xmm1,xmm3
    74f3:	66 0f db 0d 00 00 00 	pand   xmm1,XMMWORD PTR [rip+0x0]        # 74fb <x264_8_hadamard_ac_8x8_ssse3+0x23b>
    74fa:	00 
    74fb:	66 0f ef d9          	pxor   xmm3,xmm1
    74ff:	66 0f 73 d1 20       	psrlq  xmm1,0x20
    7504:	66 0f ef e1          	pxor   xmm4,xmm1
    7508:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    750d:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    7512:	66 0f ee e3          	pmaxsw xmm4,xmm3
    7516:	0f 28 1d 00 00 00 00 	movaps xmm3,XMMWORD PTR [rip+0x0]        # 751d <x264_8_hadamard_ac_8x8_ssse3+0x25d>
    751d:	0f 28 ce             	movaps xmm1,xmm6
    7520:	66 0f 73 f6 20       	psllq  xmm6,0x20
    7525:	66 0f db cb          	pand   xmm1,xmm3
    7529:	66 0f df da          	pandn  xmm3,xmm2
    752d:	66 0f 73 d2 20       	psrlq  xmm2,0x20
    7532:	66 0f eb f3          	por    xmm6,xmm3
    7536:	66 0f eb d1          	por    xmm2,xmm1
    753a:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    753f:	66 0f 38 1d f6       	pabsw  xmm6,xmm6
    7544:	66 0f ee d6          	pmaxsw xmm2,xmm6
    7548:	41 0f 28 c9          	movaps xmm1,xmm9
    754c:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 7553 <x264_8_hadamard_ac_8x8_ssse3+0x293>
    7553:	0f 28 dd             	movaps xmm3,xmm5
    7556:	66 0f 73 f5 20       	psllq  xmm5,0x20
    755b:	66 0f db de          	pand   xmm3,xmm6
    755f:	66 0f df f7          	pandn  xmm6,xmm7
    7563:	66 0f 73 d7 20       	psrlq  xmm7,0x20
    7568:	66 0f eb ee          	por    xmm5,xmm6
    756c:	66 0f eb fb          	por    xmm7,xmm3
    7570:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    7575:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    757a:	66 0f ee fd          	pmaxsw xmm7,xmm5
    757e:	0f 28 2d 00 00 00 00 	movaps xmm5,XMMWORD PTR [rip+0x0]        # 7585 <x264_8_hadamard_ac_8x8_ssse3+0x2c5>
    7585:	0f 28 f1             	movaps xmm6,xmm1
    7588:	66 0f 73 f1 20       	psllq  xmm1,0x20
    758d:	66 0f db f5          	pand   xmm6,xmm5
    7591:	66 0f df e8          	pandn  xmm5,xmm0
    7595:	66 0f 73 d0 20       	psrlq  xmm0,0x20
    759a:	66 0f eb cd          	por    xmm1,xmm5
    759e:	66 0f eb c6          	por    xmm0,xmm6
    75a2:	0f 28 e8             	movaps xmm5,xmm0
    75a5:	66 0f fd c1          	paddw  xmm0,xmm1
    75a9:	66 0f f9 cd          	psubw  xmm1,xmm5
    75ad:	66 0f fd d4          	paddw  xmm2,xmm4
    75b1:	66 0f fd d7          	paddw  xmm2,xmm7
    75b5:	66 0f fd d2          	paddw  xmm2,xmm2
    75b9:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    75be:	66 0f db 05 00 00 00 	pand   xmm0,XMMWORD PTR [rip+0x0]        # 75c6 <x264_8_hadamard_ac_8x8_ssse3+0x306>
    75c5:	00 
    75c6:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    75cb:	66 0f fd d1          	paddw  xmm2,xmm1
    75cf:	66 0f fd d0          	paddw  xmm2,xmm0
    75d3:	0f 29 54 24 18       	movaps XMMWORD PTR [rsp+0x18],xmm2
    75d8:	c3                   	ret    
    75d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000075e0 <x264_8_pixel_hadamard_ac_16x16_ssse3>:
    75e0:	48 89 e1             	mov    rcx,rsp
    75e3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    75e7:	48 83 ec 30          	sub    rsp,0x30
    75eb:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    75ef:	e8 cc fc ff ff       	call   72c0 <x264_8_hadamard_ac_8x8_ssse3>
    75f4:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    75f8:	48 83 ec 20          	sub    rsp,0x20
    75fc:	e8 bf fc ff ff       	call   72c0 <x264_8_hadamard_ac_8x8_ssse3>
    7601:	48 f7 da             	neg    rdx
    7604:	48 83 ec 20          	sub    rsp,0x20
    7608:	48 8d 7c 97 08       	lea    rdi,[rdi+rdx*4+0x8]
    760d:	48 f7 da             	neg    rdx
    7610:	e8 ab fc ff ff       	call   72c0 <x264_8_hadamard_ac_8x8_ssse3>
    7615:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    7619:	48 83 ec 20          	sub    rsp,0x20
    761d:	e8 9e fc ff ff       	call   72c0 <x264_8_hadamard_ac_8x8_ssse3>
    7622:	0f 28 7c 24 20       	movaps xmm7,XMMWORD PTR [rsp+0x20]
    7627:	66 0f dd 54 24 30    	paddusw xmm2,XMMWORD PTR [rsp+0x30]
    762d:	66 0f dd 7c 24 40    	paddusw xmm7,XMMWORD PTR [rsp+0x40]
    7633:	66 0f dd 54 24 50    	paddusw xmm2,XMMWORD PTR [rsp+0x50]
    7639:	66 0f dd 7c 24 60    	paddusw xmm7,XMMWORD PTR [rsp+0x60]
    763f:	66 0f dd 54 24 70    	paddusw xmm2,XMMWORD PTR [rsp+0x70]
    7645:	66 0f dd bc 24 80 00 	paddusw xmm7,XMMWORD PTR [rsp+0x80]
    764c:	00 00 
    764e:	66 0f 71 d2 01       	psrlw  xmm2,0x1
    7653:	66 0f 6f c2          	movdqa xmm0,xmm2
    7657:	66 0f 72 d0 10       	psrld  xmm0,0x10
    765c:	66 0f 72 f2 10       	pslld  xmm2,0x10
    7661:	66 0f 72 d2 10       	psrld  xmm2,0x10
    7666:	66 0f fe d0          	paddd  xmm2,xmm0
    766a:	0f 12 c2             	movhlps xmm0,xmm2
    766d:	66 0f fe d0          	paddd  xmm2,xmm0
    7671:	f2 0f 70 c2 4e       	pshuflw xmm0,xmm2,0x4e
    7676:	66 0f fe d0          	paddd  xmm2,xmm0
    767a:	66 0f f5 3d 00 00 00 	pmaddwd xmm7,XMMWORD PTR [rip+0x0]        # 7682 <x264_8_pixel_hadamard_ac_16x16_ssse3+0xa2>
    7681:	00 
    7682:	0f 12 e7             	movhlps xmm4,xmm7
    7685:	66 0f fe fc          	paddd  xmm7,xmm4
    7689:	f2 0f 70 e7 4e       	pshuflw xmm4,xmm7,0x4e
    768e:	66 0f fe fc          	paddd  xmm7,xmm4
    7692:	66 0f 7e d2          	movd   edx,xmm2
    7696:	66 0f 7e f8          	movd   eax,xmm7
    769a:	d1 ea                	shr    edx,1
    769c:	d1 e8                	shr    eax,1
    769e:	48 c1 e2 20          	shl    rdx,0x20
    76a2:	48 01 d0             	add    rax,rdx
    76a5:	48 89 cc             	mov    rsp,rcx
    76a8:	c3                   	ret    
    76a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000076b0 <x264_8_pixel_hadamard_ac_16x8_ssse3>:
    76b0:	48 89 e1             	mov    rcx,rsp
    76b3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    76b7:	48 83 ec 30          	sub    rsp,0x30
    76bb:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    76bf:	e8 fc fb ff ff       	call   72c0 <x264_8_hadamard_ac_8x8_ssse3>
    76c4:	48 f7 de             	neg    rsi
    76c7:	48 83 ec 20          	sub    rsp,0x20
    76cb:	48 8d 7c b7 08       	lea    rdi,[rdi+rsi*4+0x8]
    76d0:	48 f7 de             	neg    rsi
    76d3:	e8 e8 fb ff ff       	call   72c0 <x264_8_hadamard_ac_8x8_ssse3>
    76d8:	0f 28 7c 24 20       	movaps xmm7,XMMWORD PTR [rsp+0x20]
    76dd:	66 0f dd 54 24 30    	paddusw xmm2,XMMWORD PTR [rsp+0x30]
    76e3:	66 0f dd 7c 24 40    	paddusw xmm7,XMMWORD PTR [rsp+0x40]
    76e9:	66 0f 6f c2          	movdqa xmm0,xmm2
    76ed:	66 0f 72 d0 10       	psrld  xmm0,0x10
    76f2:	66 0f 72 f2 10       	pslld  xmm2,0x10
    76f7:	66 0f 72 d2 10       	psrld  xmm2,0x10
    76fc:	66 0f fe d0          	paddd  xmm2,xmm0
    7700:	0f 12 c2             	movhlps xmm0,xmm2
    7703:	66 0f fe d0          	paddd  xmm2,xmm0
    7707:	f2 0f 70 c2 4e       	pshuflw xmm0,xmm2,0x4e
    770c:	66 0f fe d0          	paddd  xmm2,xmm0
    7710:	66 0f f5 3d 00 00 00 	pmaddwd xmm7,XMMWORD PTR [rip+0x0]        # 7718 <x264_8_pixel_hadamard_ac_16x8_ssse3+0x68>
    7717:	00 
    7718:	0f 12 e7             	movhlps xmm4,xmm7
    771b:	66 0f fe fc          	paddd  xmm7,xmm4
    771f:	f2 0f 70 e7 4e       	pshuflw xmm4,xmm7,0x4e
    7724:	66 0f fe fc          	paddd  xmm7,xmm4
    7728:	66 0f 7e d2          	movd   edx,xmm2
    772c:	66 0f 7e f8          	movd   eax,xmm7
    7730:	c1 ea 02             	shr    edx,0x2
    7733:	d1 e8                	shr    eax,1
    7735:	48 c1 e2 20          	shl    rdx,0x20
    7739:	48 01 d0             	add    rax,rdx
    773c:	48 89 cc             	mov    rsp,rcx
    773f:	c3                   	ret    

0000000000007740 <x264_8_pixel_hadamard_ac_8x16_ssse3>:
    7740:	48 89 e1             	mov    rcx,rsp
    7743:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    7747:	48 83 ec 30          	sub    rsp,0x30
    774b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    774f:	e8 6c fb ff ff       	call   72c0 <x264_8_hadamard_ac_8x8_ssse3>
    7754:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    7758:	48 83 ec 20          	sub    rsp,0x20
    775c:	e8 5f fb ff ff       	call   72c0 <x264_8_hadamard_ac_8x8_ssse3>
    7761:	0f 28 7c 24 20       	movaps xmm7,XMMWORD PTR [rsp+0x20]
    7766:	66 0f dd 54 24 30    	paddusw xmm2,XMMWORD PTR [rsp+0x30]
    776c:	66 0f dd 7c 24 40    	paddusw xmm7,XMMWORD PTR [rsp+0x40]
    7772:	66 0f 6f c2          	movdqa xmm0,xmm2
    7776:	66 0f 72 d0 10       	psrld  xmm0,0x10
    777b:	66 0f 72 f2 10       	pslld  xmm2,0x10
    7780:	66 0f 72 d2 10       	psrld  xmm2,0x10
    7785:	66 0f fe d0          	paddd  xmm2,xmm0
    7789:	0f 12 c2             	movhlps xmm0,xmm2
    778c:	66 0f fe d0          	paddd  xmm2,xmm0
    7790:	f2 0f 70 c2 4e       	pshuflw xmm0,xmm2,0x4e
    7795:	66 0f fe d0          	paddd  xmm2,xmm0
    7799:	66 0f f5 3d 00 00 00 	pmaddwd xmm7,XMMWORD PTR [rip+0x0]        # 77a1 <x264_8_pixel_hadamard_ac_8x16_ssse3+0x61>
    77a0:	00 
    77a1:	0f 12 e7             	movhlps xmm4,xmm7
    77a4:	66 0f fe fc          	paddd  xmm7,xmm4
    77a8:	f2 0f 70 e7 4e       	pshuflw xmm4,xmm7,0x4e
    77ad:	66 0f fe fc          	paddd  xmm7,xmm4
    77b1:	66 0f 7e d2          	movd   edx,xmm2
    77b5:	66 0f 7e f8          	movd   eax,xmm7
    77b9:	c1 ea 02             	shr    edx,0x2
    77bc:	d1 e8                	shr    eax,1
    77be:	48 c1 e2 20          	shl    rdx,0x20
    77c2:	48 01 d0             	add    rax,rdx
    77c5:	48 89 cc             	mov    rsp,rcx
    77c8:	c3                   	ret    
    77c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000077d0 <x264_8_pixel_hadamard_ac_8x8_ssse3>:
    77d0:	48 89 e1             	mov    rcx,rsp
    77d3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    77d7:	48 83 ec 30          	sub    rsp,0x30
    77db:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    77df:	e8 dc fa ff ff       	call   72c0 <x264_8_hadamard_ac_8x8_ssse3>
    77e4:	0f 28 7c 24 20       	movaps xmm7,XMMWORD PTR [rsp+0x20]
    77e9:	66 0f 6f c2          	movdqa xmm0,xmm2
    77ed:	66 0f 72 d0 10       	psrld  xmm0,0x10
    77f2:	66 0f 72 f2 10       	pslld  xmm2,0x10
    77f7:	66 0f 72 d2 10       	psrld  xmm2,0x10
    77fc:	66 0f fe d0          	paddd  xmm2,xmm0
    7800:	0f 12 c2             	movhlps xmm0,xmm2
    7803:	66 0f fe d0          	paddd  xmm2,xmm0
    7807:	f2 0f 70 c2 4e       	pshuflw xmm0,xmm2,0x4e
    780c:	66 0f fe d0          	paddd  xmm2,xmm0
    7810:	66 0f f5 3d 00 00 00 	pmaddwd xmm7,XMMWORD PTR [rip+0x0]        # 7818 <x264_8_pixel_hadamard_ac_8x8_ssse3+0x48>
    7817:	00 
    7818:	0f 12 e7             	movhlps xmm4,xmm7
    781b:	66 0f fe fc          	paddd  xmm7,xmm4
    781f:	f2 0f 70 e7 4e       	pshuflw xmm4,xmm7,0x4e
    7824:	66 0f fe fc          	paddd  xmm7,xmm4
    7828:	66 0f 7e d2          	movd   edx,xmm2
    782c:	66 0f 7e f8          	movd   eax,xmm7
    7830:	c1 ea 02             	shr    edx,0x2
    7833:	d1 e8                	shr    eax,1
    7835:	48 c1 e2 20          	shl    rdx,0x20
    7839:	48 01 d0             	add    rax,rdx
    783c:	48 89 cc             	mov    rsp,rcx
    783f:	c3                   	ret    

0000000000007840 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3>:
    7840:	f2 0f 12 32          	movddup xmm6,QWORD PTR [rdx]
    7844:	f2 44 0f 12 1c 0a    	movddup xmm11,QWORD PTR [rdx+rcx*1]
    784a:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    784e:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
    7853:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    7858:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    785d:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    7863:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    7868:	66 0f f9 c6          	psubw  xmm0,xmm6
    786c:	66 41 0f f9 cb       	psubw  xmm1,xmm11
    7871:	f2 0f 12 34 4a       	movddup xmm6,QWORD PTR [rdx+rcx*2]
    7876:	f2 46 0f 12 1c 0a    	movddup xmm11,QWORD PTR [rdx+r9*1]
    787c:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    7881:	f2 42 0f 12 1c 07    	movddup xmm3,QWORD PTR [rdi+r8*1]
    7887:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    788c:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    7891:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    7897:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    789c:	66 0f f9 d6          	psubw  xmm2,xmm6
    78a0:	66 41 0f f9 db       	psubw  xmm3,xmm11
    78a5:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    78a9:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    78ad:	0f 28 f0             	movaps xmm6,xmm0
    78b0:	66 0f fd c1          	paddw  xmm0,xmm1
    78b4:	66 0f f9 ce          	psubw  xmm1,xmm6
    78b8:	0f 28 f2             	movaps xmm6,xmm2
    78bb:	66 0f fd d3          	paddw  xmm2,xmm3
    78bf:	66 0f f9 de          	psubw  xmm3,xmm6
    78c3:	0f 28 f0             	movaps xmm6,xmm0
    78c6:	66 0f fd c2          	paddw  xmm0,xmm2
    78ca:	66 0f f9 d6          	psubw  xmm2,xmm6
    78ce:	0f 28 f1             	movaps xmm6,xmm1
    78d1:	66 0f fd cb          	paddw  xmm1,xmm3
    78d5:	66 0f f9 de          	psubw  xmm3,xmm6
    78d9:	66 44 0f 38 1d e0    	pabsw  xmm12,xmm0
    78df:	66 44 0f 38 1d f2    	pabsw  xmm14,xmm2
    78e5:	66 44 0f 38 1d e9    	pabsw  xmm13,xmm1
    78eb:	66 44 0f 38 1d fb    	pabsw  xmm15,xmm3
    78f1:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 78f8 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0xb8>
    78f8:	45 0f 28 de          	movaps xmm11,xmm14
    78fc:	66 41 0f 72 f6 10    	pslld  xmm14,0x10
    7902:	66 44 0f db de       	pand   xmm11,xmm6
    7907:	66 41 0f df f4       	pandn  xmm6,xmm12
    790c:	66 41 0f 72 d4 10    	psrld  xmm12,0x10
    7912:	66 44 0f eb f6       	por    xmm14,xmm6
    7917:	66 45 0f eb e3       	por    xmm12,xmm11
    791c:	66 45 0f ee e6       	pmaxsw xmm12,xmm14
    7921:	66 45 0f fd d4       	paddw  xmm10,xmm12
    7926:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 792d <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0xed>
    792d:	45 0f 28 df          	movaps xmm11,xmm15
    7931:	66 41 0f 72 f7 10    	pslld  xmm15,0x10
    7937:	66 44 0f db de       	pand   xmm11,xmm6
    793c:	66 41 0f df f5       	pandn  xmm6,xmm13
    7941:	66 41 0f 72 d5 10    	psrld  xmm13,0x10
    7947:	66 44 0f eb fe       	por    xmm15,xmm6
    794c:	66 45 0f eb eb       	por    xmm13,xmm11
    7951:	66 45 0f ee ef       	pmaxsw xmm13,xmm15
    7956:	66 45 0f fd d5       	paddw  xmm10,xmm13
    795b:	f2 0f 12 32          	movddup xmm6,QWORD PTR [rdx]
    795f:	f2 44 0f 12 1c 0a    	movddup xmm11,QWORD PTR [rdx+rcx*1]
    7965:	f2 0f 12 27          	movddup xmm4,QWORD PTR [rdi]
    7969:	f2 0f 12 2c 37       	movddup xmm5,QWORD PTR [rdi+rsi*1]
    796e:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    7973:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    7978:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    797e:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    7983:	66 0f f9 e6          	psubw  xmm4,xmm6
    7987:	66 41 0f f9 eb       	psubw  xmm5,xmm11
    798c:	f2 0f 12 34 4a       	movddup xmm6,QWORD PTR [rdx+rcx*2]
    7991:	f2 46 0f 12 1c 0a    	movddup xmm11,QWORD PTR [rdx+r9*1]
    7997:	f2 44 0f 12 04 77    	movddup xmm8,QWORD PTR [rdi+rsi*2]
    799d:	f2 46 0f 12 0c 07    	movddup xmm9,QWORD PTR [rdi+r8*1]
    79a3:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    79a8:	66 44 0f 38 04 c7    	pmaddubsw xmm8,xmm7
    79ae:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    79b4:	66 44 0f 38 04 cf    	pmaddubsw xmm9,xmm7
    79ba:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    79bf:	66 45 0f f9 cb       	psubw  xmm9,xmm11
    79c4:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    79c8:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    79cc:	0f 28 f4             	movaps xmm6,xmm4
    79cf:	66 0f fd e5          	paddw  xmm4,xmm5
    79d3:	66 0f f9 ee          	psubw  xmm5,xmm6
    79d7:	41 0f 28 f0          	movaps xmm6,xmm8
    79db:	66 45 0f fd c1       	paddw  xmm8,xmm9
    79e0:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    79e5:	0f 28 f4             	movaps xmm6,xmm4
    79e8:	66 41 0f fd e0       	paddw  xmm4,xmm8
    79ed:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    79f2:	0f 28 f5             	movaps xmm6,xmm5
    79f5:	66 41 0f fd e9       	paddw  xmm5,xmm9
    79fa:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    79ff:	66 44 0f 38 1d e4    	pabsw  xmm12,xmm4
    7a05:	66 45 0f 38 1d f0    	pabsw  xmm14,xmm8
    7a0b:	66 44 0f 38 1d ed    	pabsw  xmm13,xmm5
    7a11:	66 45 0f 38 1d f9    	pabsw  xmm15,xmm9
    7a17:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 7a1e <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x1de>
    7a1e:	45 0f 28 de          	movaps xmm11,xmm14
    7a22:	66 41 0f 72 f6 10    	pslld  xmm14,0x10
    7a28:	66 44 0f db de       	pand   xmm11,xmm6
    7a2d:	66 41 0f df f4       	pandn  xmm6,xmm12
    7a32:	66 41 0f 72 d4 10    	psrld  xmm12,0x10
    7a38:	66 44 0f eb f6       	por    xmm14,xmm6
    7a3d:	66 45 0f eb e3       	por    xmm12,xmm11
    7a42:	66 45 0f ee e6       	pmaxsw xmm12,xmm14
    7a47:	66 45 0f fd d4       	paddw  xmm10,xmm12
    7a4c:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 7a53 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x213>
    7a53:	45 0f 28 df          	movaps xmm11,xmm15
    7a57:	66 41 0f 72 f7 10    	pslld  xmm15,0x10
    7a5d:	66 44 0f db de       	pand   xmm11,xmm6
    7a62:	66 41 0f df f5       	pandn  xmm6,xmm13
    7a67:	66 41 0f 72 d5 10    	psrld  xmm13,0x10
    7a6d:	66 44 0f eb fe       	por    xmm15,xmm6
    7a72:	66 45 0f eb eb       	por    xmm13,xmm11
    7a77:	66 45 0f ee ef       	pmaxsw xmm13,xmm15
    7a7c:	66 45 0f fd d5       	paddw  xmm10,xmm13
    7a81:	44 0f 28 e0          	movaps xmm12,xmm0
    7a85:	66 0f fd c4          	paddw  xmm0,xmm4
    7a89:	66 41 0f f9 e4       	psubw  xmm4,xmm12
    7a8e:	44 0f 28 e1          	movaps xmm12,xmm1
    7a92:	66 0f fd cd          	paddw  xmm1,xmm5
    7a96:	66 41 0f f9 ec       	psubw  xmm5,xmm12
    7a9b:	44 0f 28 25 00 00 00 	movaps xmm12,XMMWORD PTR [rip+0x0]        # 7aa3 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x263>
    7aa2:	00 
    7aa3:	44 0f 28 dc          	movaps xmm11,xmm4
    7aa7:	66 0f 73 f4 20       	psllq  xmm4,0x20
    7aac:	66 45 0f db dc       	pand   xmm11,xmm12
    7ab1:	66 44 0f df e0       	pandn  xmm12,xmm0
    7ab6:	66 0f 73 d0 20       	psrlq  xmm0,0x20
    7abb:	66 41 0f eb e4       	por    xmm4,xmm12
    7ac0:	66 41 0f eb c3       	por    xmm0,xmm11
    7ac5:	44 0f 28 e0          	movaps xmm12,xmm0
    7ac9:	66 0f fd c4          	paddw  xmm0,xmm4
    7acd:	66 41 0f f9 e4       	psubw  xmm4,xmm12
    7ad2:	44 0f 28 25 00 00 00 	movaps xmm12,XMMWORD PTR [rip+0x0]        # 7ada <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x29a>
    7ad9:	00 
    7ada:	44 0f 28 dd          	movaps xmm11,xmm5
    7ade:	66 0f 73 f5 20       	psllq  xmm5,0x20
    7ae3:	66 45 0f db dc       	pand   xmm11,xmm12
    7ae8:	66 44 0f df e1       	pandn  xmm12,xmm1
    7aed:	66 0f 73 d1 20       	psrlq  xmm1,0x20
    7af2:	66 41 0f eb ec       	por    xmm5,xmm12
    7af7:	66 41 0f eb cb       	por    xmm1,xmm11
    7afc:	44 0f 28 e1          	movaps xmm12,xmm1
    7b00:	66 0f fd cd          	paddw  xmm1,xmm5
    7b04:	66 41 0f f9 ec       	psubw  xmm5,xmm12
    7b09:	44 0f 28 e2          	movaps xmm12,xmm2
    7b0d:	66 41 0f fd d0       	paddw  xmm2,xmm8
    7b12:	66 45 0f f9 c4       	psubw  xmm8,xmm12
    7b17:	44 0f 28 e3          	movaps xmm12,xmm3
    7b1b:	66 41 0f fd d9       	paddw  xmm3,xmm9
    7b20:	66 45 0f f9 cc       	psubw  xmm9,xmm12
    7b25:	44 0f 28 25 00 00 00 	movaps xmm12,XMMWORD PTR [rip+0x0]        # 7b2d <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x2ed>
    7b2c:	00 
    7b2d:	45 0f 28 d8          	movaps xmm11,xmm8
    7b31:	66 41 0f 73 f0 20    	psllq  xmm8,0x20
    7b37:	66 45 0f db dc       	pand   xmm11,xmm12
    7b3c:	66 44 0f df e2       	pandn  xmm12,xmm2
    7b41:	66 0f 73 d2 20       	psrlq  xmm2,0x20
    7b46:	66 45 0f eb c4       	por    xmm8,xmm12
    7b4b:	66 41 0f eb d3       	por    xmm2,xmm11
    7b50:	44 0f 28 e2          	movaps xmm12,xmm2
    7b54:	66 41 0f fd d0       	paddw  xmm2,xmm8
    7b59:	66 45 0f f9 c4       	psubw  xmm8,xmm12
    7b5e:	44 0f 28 25 00 00 00 	movaps xmm12,XMMWORD PTR [rip+0x0]        # 7b66 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x326>
    7b65:	00 
    7b66:	45 0f 28 d9          	movaps xmm11,xmm9
    7b6a:	66 41 0f 73 f1 20    	psllq  xmm9,0x20
    7b70:	66 45 0f db dc       	pand   xmm11,xmm12
    7b75:	66 44 0f df e3       	pandn  xmm12,xmm3
    7b7a:	66 0f 73 d3 20       	psrlq  xmm3,0x20
    7b7f:	66 45 0f eb cc       	por    xmm9,xmm12
    7b84:	66 41 0f eb db       	por    xmm3,xmm11
    7b89:	44 0f 28 e3          	movaps xmm12,xmm3
    7b8d:	66 41 0f fd d9       	paddw  xmm3,xmm9
    7b92:	66 45 0f f9 cc       	psubw  xmm9,xmm12
    7b97:	44 0f 28 25 00 00 00 	movaps xmm12,XMMWORD PTR [rip+0x0]        # 7b9f <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x35f>
    7b9e:	00 
    7b9f:	44 0f 28 dc          	movaps xmm11,xmm4
    7ba3:	66 0f 72 f4 10       	pslld  xmm4,0x10
    7ba8:	66 45 0f db dc       	pand   xmm11,xmm12
    7bad:	66 44 0f df e0       	pandn  xmm12,xmm0
    7bb2:	66 0f 72 d0 10       	psrld  xmm0,0x10
    7bb7:	66 41 0f eb e4       	por    xmm4,xmm12
    7bbc:	66 41 0f eb c3       	por    xmm0,xmm11
    7bc1:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    7bc6:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    7bcb:	66 0f ee c4          	pmaxsw xmm0,xmm4
    7bcf:	44 0f 28 25 00 00 00 	movaps xmm12,XMMWORD PTR [rip+0x0]        # 7bd7 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x397>
    7bd6:	00 
    7bd7:	0f 28 e5             	movaps xmm4,xmm5
    7bda:	66 0f 72 f5 10       	pslld  xmm5,0x10
    7bdf:	66 41 0f db e4       	pand   xmm4,xmm12
    7be4:	66 44 0f df e1       	pandn  xmm12,xmm1
    7be9:	66 0f 72 d1 10       	psrld  xmm1,0x10
    7bee:	66 41 0f eb ec       	por    xmm5,xmm12
    7bf3:	66 0f eb cc          	por    xmm1,xmm4
    7bf7:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    7bfc:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    7c01:	66 0f ee cd          	pmaxsw xmm1,xmm5
    7c05:	44 0f 28 25 00 00 00 	movaps xmm12,XMMWORD PTR [rip+0x0]        # 7c0d <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x3cd>
    7c0c:	00 
    7c0d:	41 0f 28 e0          	movaps xmm4,xmm8
    7c11:	66 41 0f 72 f0 10    	pslld  xmm8,0x10
    7c17:	66 41 0f db e4       	pand   xmm4,xmm12
    7c1c:	66 44 0f df e2       	pandn  xmm12,xmm2
    7c21:	66 0f 72 d2 10       	psrld  xmm2,0x10
    7c26:	66 45 0f eb c4       	por    xmm8,xmm12
    7c2b:	66 0f eb d4          	por    xmm2,xmm4
    7c2f:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    7c34:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    7c3a:	66 41 0f ee d0       	pmaxsw xmm2,xmm8
    7c3f:	44 0f 28 25 00 00 00 	movaps xmm12,XMMWORD PTR [rip+0x0]        # 7c47 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3+0x407>
    7c46:	00 
    7c47:	41 0f 28 e1          	movaps xmm4,xmm9
    7c4b:	66 41 0f 72 f1 10    	pslld  xmm9,0x10
    7c51:	66 41 0f db e4       	pand   xmm4,xmm12
    7c56:	66 44 0f df e3       	pandn  xmm12,xmm3
    7c5b:	66 0f 72 d3 10       	psrld  xmm3,0x10
    7c60:	66 45 0f eb cc       	por    xmm9,xmm12
    7c65:	66 0f eb dc          	por    xmm3,xmm4
    7c69:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    7c6e:	66 45 0f 38 1d c9    	pabsw  xmm9,xmm9
    7c74:	66 41 0f ee d9       	pmaxsw xmm3,xmm9
    7c79:	66 0f fd ca          	paddw  xmm1,xmm2
    7c7d:	66 0f fd c3          	paddw  xmm0,xmm3
    7c81:	66 0f fd c1          	paddw  xmm0,xmm1
    7c85:	c3                   	ret    
    7c86:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    7c8d:	00 
    7c8e:	66 90                	xchg   ax,ax

0000000000007c90 <x264_8_pixel_sa8d_satd_16x16_ssse3>:
    7c90:	48 83 ec 48          	sub    rsp,0x48
    7c94:	0f 28 3d 00 00 00 00 	movaps xmm7,XMMWORD PTR [rip+0x0]        # 7c9b <x264_8_pixel_sa8d_satd_16x16_ssse3+0xb>
    7c9b:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    7c9f:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    7ca3:	66 45 0f ef d2       	pxor   xmm10,xmm10
    7ca8:	48 8d 42 08          	lea    rax,[rdx+0x8]
    7cac:	4c 8d 57 08          	lea    r10,[rdi+0x8]
    7cb0:	e8 8b fb ff ff       	call   7840 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3>
    7cb5:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    7cb9:	e8 82 fb ff ff       	call   7840 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3>
    7cbe:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    7cc3:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    7cc7:	4c 89 d7             	mov    rdi,r10
    7cca:	48 89 c2             	mov    rdx,rax
    7ccd:	e8 6e fb ff ff       	call   7840 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3>
    7cd2:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    7cd7:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    7cdb:	e8 60 fb ff ff       	call   7840 <x264_8_pixel_sa8d_satd_8x8_internal_ssse3>
    7ce0:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    7ce5:	66 0f 6f c8          	movdqa xmm1,xmm0
    7ce9:	66 0f 72 d1 10       	psrld  xmm1,0x10
    7cee:	66 0f 72 f0 10       	pslld  xmm0,0x10
    7cf3:	66 0f 72 d0 10       	psrld  xmm0,0x10
    7cf8:	66 0f fe c1          	paddd  xmm0,xmm1
    7cfc:	0f 12 c8             	movhlps xmm1,xmm0
    7cff:	66 0f fe c1          	paddd  xmm0,xmm1
    7d03:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    7d08:	66 0f fe c1          	paddd  xmm0,xmm1
    7d0c:	66 44 0f f5 15 00 00 	pmaddwd xmm10,XMMWORD PTR [rip+0x0]        # 7d15 <x264_8_pixel_sa8d_satd_16x16_ssse3+0x85>
    7d13:	00 00 
    7d15:	41 0f 12 d2          	movhlps xmm2,xmm10
    7d19:	66 44 0f fe d2       	paddd  xmm10,xmm2
    7d1e:	f2 41 0f 70 d2 4e    	pshuflw xmm2,xmm10,0x4e
    7d24:	66 44 0f fe d2       	paddd  xmm10,xmm2
    7d29:	66 0f 7e c7          	movd   edi,xmm0
    7d2d:	66 44 0f 7e d0       	movd   eax,xmm10
    7d32:	83 c7 01             	add    edi,0x1
    7d35:	48 c1 e0 20          	shl    rax,0x20
    7d39:	d1 ef                	shr    edi,1
    7d3b:	48 09 f8             	or     rax,rdi
    7d3e:	48 83 c4 48          	add    rsp,0x48
    7d42:	c3                   	ret    
    7d43:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    7d4a:	00 
    7d4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000007d50 <x264_8_intra_sad_x9_4x4_ssse3>:
    7d50:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
    7d57:	0f 6e 46 5c          	movd   mm0,DWORD PTR [rsi+0x5c]
    7d5b:	0f 60 46 3c          	punpcklbw mm0,DWORD PTR [rsi+0x3c]
    7d5f:	0f 6e 4e 1c          	movd   mm1,DWORD PTR [rsi+0x1c]
    7d63:	0f 60 4e fc          	punpcklbw mm1,DWORD PTR [rsi-0x4]
    7d67:	0f 69 c1             	punpckhwd mm0,mm1
    7d6a:	0f 73 d0 20          	psrlq  mm0,0x20
    7d6e:	f3 0f d6 c0          	movq2dq xmm0,mm0
    7d72:	0f 10 4e d8          	movups xmm1,XMMWORD PTR [rsi-0x28]
    7d76:	f3 0f 10 c8          	movss  xmm1,xmm0
    7d7a:	66 0f 38 00 0d 00 00 	pshufb xmm1,XMMWORD PTR [rip+0x0]        # 7d83 <x264_8_intra_sad_x9_4x4_ssse3+0x33>
    7d81:	00 00 
    7d83:	66 0f 6f c1          	movdqa xmm0,xmm1
    7d87:	66 0f 73 d8 01       	psrldq xmm0,0x1
    7d8c:	66 0f 6f d1          	movdqa xmm2,xmm1
    7d90:	66 0f 73 da 02       	psrldq xmm2,0x2
    7d95:	66 0f 6f e8          	movdqa xmm5,xmm0
    7d99:	66 0f e0 e9          	pavgb  xmm5,xmm1
    7d9d:	44 0f 28 c1          	movaps xmm8,xmm1
    7da1:	66 0f 6f e1          	movdqa xmm4,xmm1
    7da5:	66 0f e0 e2          	pavgb  xmm4,xmm2
    7da9:	66 0f ef d1          	pxor   xmm2,xmm1
    7dad:	66 0f db 15 00 00 00 	pand   xmm2,XMMWORD PTR [rip+0x0]        # 7db5 <x264_8_intra_sad_x9_4x4_ssse3+0x65>
    7db4:	00 
    7db5:	66 0f d8 e2          	psubusb xmm4,xmm2
    7db9:	66 0f e0 c4          	pavgb  xmm0,xmm4
    7dbd:	66 0f 6f d0          	movdqa xmm2,xmm0
    7dc1:	66 0f 38 00 15 00 00 	pshufb xmm2,XMMWORD PTR [rip+0x0]        # 7dca <x264_8_intra_sad_x9_4x4_ssse3+0x7a>
    7dc8:	00 00 
    7dca:	66 0f 6f d8          	movdqa xmm3,xmm0
    7dce:	66 0f 38 00 1d 00 00 	pshufb xmm3,XMMWORD PTR [rip+0x0]        # 7dd7 <x264_8_intra_sad_x9_4x4_ssse3+0x87>
    7dd5:	00 00 
    7dd7:	66 0f 73 f8 05       	pslldq xmm0,0x5
    7ddc:	66 0f 6f fd          	movdqa xmm7,xmm5
    7de0:	66 0f 3a 0f f8 05    	palignr xmm7,xmm0,0x5
    7de6:	66 0f 6f f7          	movdqa xmm6,xmm7
    7dea:	66 0f 38 00 35 00 00 	pshufb xmm6,XMMWORD PTR [rip+0x0]        # 7df3 <x264_8_intra_sad_x9_4x4_ssse3+0xa3>
    7df1:	00 00 
    7df3:	66 0f 38 00 3d 00 00 	pshufb xmm7,XMMWORD PTR [rip+0x0]        # 7dfc <x264_8_intra_sad_x9_4x4_ssse3+0xac>
    7dfa:	00 00 
    7dfc:	66 0f 73 dd 05       	psrldq xmm5,0x5
    7e01:	66 0f 3a 0f e8 06    	palignr xmm5,xmm0,0x6
    7e07:	66 0f 6f e5          	movdqa xmm4,xmm5
    7e0b:	66 0f 38 00 25 00 00 	pshufb xmm4,XMMWORD PTR [rip+0x0]        # 7e14 <x264_8_intra_sad_x9_4x4_ssse3+0xc4>
    7e12:	00 00 
    7e14:	66 0f 38 00 2d 00 00 	pshufb xmm5,XMMWORD PTR [rip+0x0]        # 7e1d <x264_8_intra_sad_x9_4x4_ssse3+0xcd>
    7e1b:	00 00 
    7e1d:	0f 29 14 24          	movaps XMMWORD PTR [rsp],xmm2
    7e21:	0f 29 5c 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm3
    7e26:	0f 29 64 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm4
    7e2b:	0f 29 6c 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm5
    7e30:	0f 29 74 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm6
    7e35:	0f 29 7c 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm7
    7e3a:	0f 6e 07             	movd   mm0,DWORD PTR [rdi]
    7e3d:	0f 62 47 10          	punpckldq mm0,DWORD PTR [rdi+0x10]
    7e41:	0f 6e 4f 20          	movd   mm1,DWORD PTR [rdi+0x20]
    7e45:	0f 62 4f 30          	punpckldq mm1,DWORD PTR [rdi+0x30]
    7e49:	f3 0f d6 c0          	movq2dq xmm0,mm0
    7e4d:	f3 0f d6 c9          	movq2dq xmm1,mm1
    7e51:	0f 16 c0             	movlhps xmm0,xmm0
    7e54:	0f 16 c9             	movlhps xmm1,xmm1
    7e57:	66 0f f6 d0          	psadbw xmm2,xmm0
    7e5b:	66 0f f6 d9          	psadbw xmm3,xmm1
    7e5f:	66 0f f6 e0          	psadbw xmm4,xmm0
    7e63:	66 0f f6 e9          	psadbw xmm5,xmm1
    7e67:	66 0f f6 f0          	psadbw xmm6,xmm0
    7e6b:	66 0f f6 f9          	psadbw xmm7,xmm1
    7e6f:	66 0f fe d3          	paddd  xmm2,xmm3
    7e73:	66 0f fe e5          	paddd  xmm4,xmm5
    7e77:	66 0f fe f7          	paddd  xmm6,xmm7
    7e7b:	66 0f ef ff          	pxor   xmm7,xmm7
    7e7f:	66 41 0f 6f d8       	movdqa xmm3,xmm8
    7e84:	66 0f 38 00 1d 00 00 	pshufb xmm3,XMMWORD PTR [rip+0x0]        # 7e8d <x264_8_intra_sad_x9_4x4_ssse3+0x13d>
    7e8b:	00 00 
    7e8d:	66 41 0f 6f e8       	movdqa xmm5,xmm8
    7e92:	66 0f 38 00 2d 00 00 	pshufb xmm5,XMMWORD PTR [rip+0x0]        # 7e9b <x264_8_intra_sad_x9_4x4_ssse3+0x14b>
    7e99:	00 00 
    7e9b:	66 44 0f 38 00 05 00 	pshufb xmm8,XMMWORD PTR [rip+0x0]        # 7ea5 <x264_8_intra_sad_x9_4x4_ssse3+0x155>
    7ea2:	00 00 00 
    7ea5:	66 44 0f f6 c7       	psadbw xmm8,xmm7
    7eaa:	66 41 0f 71 d0 02    	psrlw  xmm8,0x2
    7eb0:	0f 29 5c 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm3
    7eb5:	0f 29 6c 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm5
    7eba:	66 0f f6 d8          	psadbw xmm3,xmm0
    7ebe:	66 44 0f e3 c7       	pavgw  xmm8,xmm7
    7ec3:	66 44 0f 38 00 c7    	pshufb xmm8,xmm7
    7ec9:	66 0f f6 e9          	psadbw xmm5,xmm1
    7ecd:	66 44 0f d6 84 24 80 	movq   QWORD PTR [rsp+0x80],xmm8
    7ed4:	00 00 00 
    7ed7:	66 44 0f d6 84 24 90 	movq   QWORD PTR [rsp+0x90],xmm8
    7ede:	00 00 00 
    7ee1:	66 41 0f f6 c0       	psadbw xmm0,xmm8
    7ee6:	66 0f fe dd          	paddd  xmm3,xmm5
    7eea:	66 41 0f f6 c8       	psadbw xmm1,xmm8
    7eef:	66 0f fe c1          	paddd  xmm0,xmm1
    7ef3:	0f b7 0a             	movzx  ecx,WORD PTR [rdx]
    7ef6:	66 0f 7e df          	movd   edi,xmm3
    7efa:	01 f9                	add    ecx,edi
    7efc:	66 0f 6d d8          	punpckhqdq xmm3,xmm0
    7f00:	0f c6 da 88          	shufps xmm3,xmm2,0x88
    7f04:	66 0f 73 f6 20       	psllq  xmm6,0x20
    7f09:	66 0f eb e6          	por    xmm4,xmm6
    7f0d:	0f 10 42 02          	movups xmm0,XMMWORD PTR [rdx+0x2]
    7f11:	66 0f 6b dc          	packssdw xmm3,xmm4
    7f15:	66 0f fd c3          	paddw  xmm0,xmm3
    7f19:	66 0f 71 f0 03       	psllw  xmm0,0x3
    7f1e:	66 0f fd 05 00 00 00 	paddw  xmm0,XMMWORD PTR [rip+0x0]        # 7f26 <x264_8_intra_sad_x9_4x4_ssse3+0x1d6>
    7f25:	00 
    7f26:	0f 12 c8             	movhlps xmm1,xmm0
    7f29:	66 0f ea c1          	pminsw xmm0,xmm1
    7f2d:	f2 0f 70 c8 0e       	pshuflw xmm1,xmm0,0xe
    7f32:	66 0f ea c1          	pminsw xmm0,xmm1
    7f36:	f2 0f 70 c8 01       	pshuflw xmm1,xmm0,0x1
    7f3b:	66 0f ea c1          	pminsw xmm0,xmm1
    7f3f:	66 0f 7e c0          	movd   eax,xmm0
    7f43:	0f bf d0             	movsx  edx,ax
    7f46:	83 e0 07             	and    eax,0x7
    7f49:	c1 fa 03             	sar    edx,0x3
    7f4c:	c1 e0 10             	shl    eax,0x10
    7f4f:	8d 84 10 00 10 01 00 	lea    eax,[rax+rdx*1+0x11000]
    7f56:	66 39 c8             	cmp    ax,cx
    7f59:	0f 4d c1             	cmovge eax,ecx
    7f5c:	89 c1                	mov    ecx,eax
    7f5e:	c1 e9 10             	shr    ecx,0x10
    7f61:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 7f68 <x264_8_intra_sad_x9_4x4_ssse3+0x218>
    7f68:	0f b6 14 0a          	movzx  edx,BYTE PTR [rdx+rcx*1]
    7f6c:	0f 6f 04 14          	movq   mm0,QWORD PTR [rsp+rdx*1]
    7f70:	0f 6f 4c 14 10       	movq   mm1,QWORD PTR [rsp+rdx*1+0x10]
    7f75:	0f 7e 06             	movd   DWORD PTR [rsi],mm0
    7f78:	0f 7e 4e 40          	movd   DWORD PTR [rsi+0x40],mm1
    7f7c:	0f 73 d0 20          	psrlq  mm0,0x20
    7f80:	0f 73 d1 20          	psrlq  mm1,0x20
    7f84:	0f 7e 46 20          	movd   DWORD PTR [rsi+0x20],mm0
    7f88:	0f 7e 4e 60          	movd   DWORD PTR [rsi+0x60],mm1
    7f8c:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
    7f93:	c3                   	ret    
    7f94:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    7f9b:	00 
    7f9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000007fa0 <x264_8_intra_satd_x9_4x4_ssse3>:
    7fa0:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
    7fa7:	0f 6e 46 5c          	movd   mm0,DWORD PTR [rsi+0x5c]
    7fab:	0f 60 46 3c          	punpcklbw mm0,DWORD PTR [rsi+0x3c]
    7faf:	0f 6e 4e 1c          	movd   mm1,DWORD PTR [rsi+0x1c]
    7fb3:	0f 60 4e fc          	punpcklbw mm1,DWORD PTR [rsi-0x4]
    7fb7:	0f 69 c1             	punpckhwd mm0,mm1
    7fba:	0f 73 d0 20          	psrlq  mm0,0x20
    7fbe:	f3 0f d6 c0          	movq2dq xmm0,mm0
    7fc2:	0f 10 4e d8          	movups xmm1,XMMWORD PTR [rsi-0x28]
    7fc6:	f3 0f 10 c8          	movss  xmm1,xmm0
    7fca:	66 0f 38 00 0d 00 00 	pshufb xmm1,XMMWORD PTR [rip+0x0]        # 7fd3 <x264_8_intra_satd_x9_4x4_ssse3+0x33>
    7fd1:	00 00 
    7fd3:	66 0f 6f c1          	movdqa xmm0,xmm1
    7fd7:	66 0f 73 d8 01       	psrldq xmm0,0x1
    7fdc:	66 0f 6f d1          	movdqa xmm2,xmm1
    7fe0:	66 0f 73 da 02       	psrldq xmm2,0x2
    7fe5:	66 0f 6f e8          	movdqa xmm5,xmm0
    7fe9:	66 0f e0 e9          	pavgb  xmm5,xmm1
    7fed:	44 0f 28 f9          	movaps xmm15,xmm1
    7ff1:	66 0f 6f e1          	movdqa xmm4,xmm1
    7ff5:	66 0f e0 e2          	pavgb  xmm4,xmm2
    7ff9:	66 0f ef d1          	pxor   xmm2,xmm1
    7ffd:	66 0f db 15 00 00 00 	pand   xmm2,XMMWORD PTR [rip+0x0]        # 8005 <x264_8_intra_satd_x9_4x4_ssse3+0x65>
    8004:	00 
    8005:	66 0f d8 e2          	psubusb xmm4,xmm2
    8009:	66 0f e0 c4          	pavgb  xmm0,xmm4
    800d:	66 0f 6f d0          	movdqa xmm2,xmm0
    8011:	66 0f 38 00 15 00 00 	pshufb xmm2,XMMWORD PTR [rip+0x0]        # 801a <x264_8_intra_satd_x9_4x4_ssse3+0x7a>
    8018:	00 00 
    801a:	66 0f 6f d8          	movdqa xmm3,xmm0
    801e:	66 0f 38 00 1d 00 00 	pshufb xmm3,XMMWORD PTR [rip+0x0]        # 8027 <x264_8_intra_satd_x9_4x4_ssse3+0x87>
    8025:	00 00 
    8027:	66 0f 73 f8 05       	pslldq xmm0,0x5
    802c:	66 0f 6f fd          	movdqa xmm7,xmm5
    8030:	66 0f 3a 0f f8 05    	palignr xmm7,xmm0,0x5
    8036:	66 0f 6f f7          	movdqa xmm6,xmm7
    803a:	66 0f 38 00 35 00 00 	pshufb xmm6,XMMWORD PTR [rip+0x0]        # 8043 <x264_8_intra_satd_x9_4x4_ssse3+0xa3>
    8041:	00 00 
    8043:	66 0f 38 00 3d 00 00 	pshufb xmm7,XMMWORD PTR [rip+0x0]        # 804c <x264_8_intra_satd_x9_4x4_ssse3+0xac>
    804a:	00 00 
    804c:	66 0f 73 dd 05       	psrldq xmm5,0x5
    8051:	66 0f 3a 0f e8 06    	palignr xmm5,xmm0,0x6
    8057:	66 0f 6f e5          	movdqa xmm4,xmm5
    805b:	66 0f 38 00 25 00 00 	pshufb xmm4,XMMWORD PTR [rip+0x0]        # 8064 <x264_8_intra_satd_x9_4x4_ssse3+0xc4>
    8062:	00 00 
    8064:	66 0f 38 00 2d 00 00 	pshufb xmm5,XMMWORD PTR [rip+0x0]        # 806d <x264_8_intra_satd_x9_4x4_ssse3+0xcd>
    806b:	00 00 
    806d:	0f 29 14 24          	movaps XMMWORD PTR [rsp],xmm2
    8071:	0f 29 5c 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm3
    8076:	0f 29 64 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm4
    807b:	0f 29 6c 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm5
    8080:	0f 29 74 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm6
    8085:	0f 29 7c 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm7
    808a:	66 44 0f 6e 07       	movd   xmm8,DWORD PTR [rdi]
    808f:	66 44 0f 6e 4f 10    	movd   xmm9,DWORD PTR [rdi+0x10]
    8095:	66 44 0f 6e 57 20    	movd   xmm10,DWORD PTR [rdi+0x20]
    809b:	66 44 0f 6e 5f 30    	movd   xmm11,DWORD PTR [rdi+0x30]
    80a1:	44 0f 28 25 00 00 00 	movaps xmm12,XMMWORD PTR [rip+0x0]        # 80a9 <x264_8_intra_satd_x9_4x4_ssse3+0x109>
    80a8:	00 
    80a9:	66 45 0f 70 c0 00    	pshufd xmm8,xmm8,0x0
    80af:	66 45 0f 70 c9 00    	pshufd xmm9,xmm9,0x0
    80b5:	66 45 0f 70 d2 00    	pshufd xmm10,xmm10,0x0
    80bb:	66 45 0f 70 db 00    	pshufd xmm11,xmm11,0x0
    80c1:	66 45 0f 38 04 c4    	pmaddubsw xmm8,xmm12
    80c7:	66 45 0f 38 04 cc    	pmaddubsw xmm9,xmm12
    80cd:	66 45 0f 38 04 d4    	pmaddubsw xmm10,xmm12
    80d3:	66 45 0f 38 04 dc    	pmaddubsw xmm11,xmm12
    80d9:	f2 0f 12 c2          	movddup xmm0,xmm2
    80dd:	66 0f 70 ca ee       	pshufd xmm1,xmm2,0xee
    80e2:	f2 0f 12 d3          	movddup xmm2,xmm3
    80e6:	66 0f 6d db          	punpckhqdq xmm3,xmm3
    80ea:	e8 51 02 00 00       	call   8340 <x264_8_intra_satd_x9_4x4_ssse3+0x3a0>
    80ef:	f2 0f 12 d5          	movddup xmm2,xmm5
    80f3:	66 0f 70 dd ee       	pshufd xmm3,xmm5,0xee
    80f8:	0f 28 e8             	movaps xmm5,xmm0
    80fb:	f2 0f 12 c4          	movddup xmm0,xmm4
    80ff:	66 0f 70 cc ee       	pshufd xmm1,xmm4,0xee
    8104:	e8 37 02 00 00       	call   8340 <x264_8_intra_satd_x9_4x4_ssse3+0x3a0>
    8109:	f2 0f 12 d7          	movddup xmm2,xmm7
    810d:	66 0f 70 df ee       	pshufd xmm3,xmm7,0xee
    8112:	0f 28 e0             	movaps xmm4,xmm0
    8115:	f2 0f 12 c6          	movddup xmm0,xmm6
    8119:	66 0f 70 ce ee       	pshufd xmm1,xmm6,0xee
    811e:	e8 1d 02 00 00       	call   8340 <x264_8_intra_satd_x9_4x4_ssse3+0x3a0>
    8123:	0f 16 e0             	movlhps xmm4,xmm0
    8126:	0f 28 0d 00 00 00 00 	movaps xmm1,XMMWORD PTR [rip+0x0]        # 812d <x264_8_intra_satd_x9_4x4_ssse3+0x18d>
    812d:	66 44 0f 38 09 c1    	psignw xmm8,xmm1
    8133:	66 44 0f 38 09 d1    	psignw xmm10,xmm1
    8139:	66 45 0f fd c1       	paddw  xmm8,xmm9
    813e:	66 45 0f fd d3       	paddw  xmm10,xmm11
    8143:	66 41 0f 6f d7       	movdqa xmm2,xmm15
    8148:	66 0f 38 00 15 00 00 	pshufb xmm2,XMMWORD PTR [rip+0x0]        # 8151 <x264_8_intra_satd_x9_4x4_ssse3+0x1b1>
    814f:	00 00 
    8151:	66 41 0f 6f df       	movdqa xmm3,xmm15
    8156:	66 0f 38 00 1d 00 00 	pshufb xmm3,XMMWORD PTR [rip+0x0]        # 815f <x264_8_intra_satd_x9_4x4_ssse3+0x1bf>
    815d:	00 00 
    815f:	0f 29 54 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm2
    8164:	0f 29 5c 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm3
    8169:	66 44 0f 38 00 3d 00 	pshufb xmm15,XMMWORD PTR [rip+0x0]        # 8173 <x264_8_intra_satd_x9_4x4_ssse3+0x1d3>
    8170:	00 00 00 
    8173:	66 44 0f 38 04 3d 00 	pmaddubsw xmm15,XMMWORD PTR [rip+0x0]        # 817d <x264_8_intra_satd_x9_4x4_ssse3+0x1dd>
    817a:	00 00 00 
    817d:	f3 41 0f 70 c7 b1    	pshufhw xmm0,xmm15,0xb1
    8183:	f2 0f 70 c0 b1       	pshuflw xmm0,xmm0,0xb1
    8188:	66 44 0f 38 09 3d 00 	psignw xmm15,XMMWORD PTR [rip+0x0]        # 8192 <x264_8_intra_satd_x9_4x4_ssse3+0x1f2>
    818f:	00 00 00 
    8192:	66 41 0f fd c7       	paddw  xmm0,xmm15
    8197:	66 0f 71 f0 02       	psllw  xmm0,0x2
    819c:	0f 12 d8             	movhlps xmm3,xmm0
    819f:	66 0f 6f c8          	movdqa xmm1,xmm0
    81a3:	66 0f 38 00 0d 00 00 	pshufb xmm1,XMMWORD PTR [rip+0x0]        # 81ac <x264_8_intra_satd_x9_4x4_ssse3+0x20c>
    81aa:	00 00 
    81ac:	66 0f 6f d0          	movdqa xmm2,xmm0
    81b0:	66 0f 38 00 15 00 00 	pshufb xmm2,XMMWORD PTR [rip+0x0]        # 81b9 <x264_8_intra_satd_x9_4x4_ssse3+0x219>
    81b7:	00 00 
    81b9:	66 0f fd c3          	paddw  xmm0,xmm3
    81bd:	66 0f 38 09 1d 00 00 	psignw xmm3,XMMWORD PTR [rip+0x0]        # 81c6 <x264_8_intra_satd_x9_4x4_ssse3+0x226>
    81c4:	00 00 
    81c6:	66 0f e3 05 00 00 00 	pavgw  xmm0,XMMWORD PTR [rip+0x0]        # 81ce <x264_8_intra_satd_x9_4x4_ssse3+0x22e>
    81cd:	00 
    81ce:	66 0f db 05 00 00 00 	pand   xmm0,XMMWORD PTR [rip+0x0]        # 81d6 <x264_8_intra_satd_x9_4x4_ssse3+0x236>
    81d5:	00 
    81d6:	41 0f 28 f0          	movaps xmm6,xmm8
    81da:	66 45 0f fd c2       	paddw  xmm8,xmm10
    81df:	66 44 0f f9 d6       	psubw  xmm10,xmm6
    81e4:	0f 28 35 00 00 00 00 	movaps xmm6,XMMWORD PTR [rip+0x0]        # 81eb <x264_8_intra_satd_x9_4x4_ssse3+0x24b>
    81eb:	41 0f 28 fa          	movaps xmm7,xmm10
    81ef:	66 41 0f 72 f2 10    	pslld  xmm10,0x10
    81f5:	66 0f db fe          	pand   xmm7,xmm6
    81f9:	66 41 0f df f0       	pandn  xmm6,xmm8
    81fe:	66 41 0f 72 d0 10    	psrld  xmm8,0x10
    8204:	66 44 0f eb d6       	por    xmm10,xmm6
    8209:	66 44 0f eb c7       	por    xmm8,xmm7
    820e:	41 0f 28 f0          	movaps xmm6,xmm8
    8212:	66 45 0f fd c2       	paddw  xmm8,xmm10
    8217:	66 44 0f f9 d6       	psubw  xmm10,xmm6
    821c:	66 0f 7e c1          	movd   ecx,xmm0
    8220:	c1 e9 04             	shr    ecx,0x4
    8223:	69 c9 01 01 01 01    	imul   ecx,ecx,0x1010101
    8229:	89 8c 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],ecx
    8230:	89 8c 24 88 00 00 00 	mov    DWORD PTR [rsp+0x88],ecx
    8237:	89 8c 24 90 00 00 00 	mov    DWORD PTR [rsp+0x90],ecx
    823e:	89 8c 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],ecx
    8245:	66 41 0f f9 d8       	psubw  xmm3,xmm8
    824a:	66 41 0f f9 c0       	psubw  xmm0,xmm8
    824f:	66 41 0f f9 c8       	psubw  xmm1,xmm8
    8254:	66 41 0f f9 d2       	psubw  xmm2,xmm10
    8259:	66 45 0f 38 1d d2    	pabsw  xmm10,xmm10
    825f:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    8264:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    8269:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    826e:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    8273:	66 41 0f e3 da       	pavgw  xmm3,xmm10
    8278:	66 41 0f e3 c2       	pavgw  xmm0,xmm10
    827d:	66 0f e3 ca          	pavgw  xmm1,xmm2
    8281:	0f 28 d3             	movaps xmm2,xmm3
    8284:	0f 16 d8             	movlhps xmm3,xmm0
    8287:	66 0f 6d d0          	punpckhqdq xmm2,xmm0
    828b:	66 0f fd da          	paddw  xmm3,xmm2
    828f:	0f 12 c1             	movhlps xmm0,xmm1
    8292:	66 0f fd c8          	paddw  xmm1,xmm0
    8296:	66 0f 38 01 cb       	phaddw xmm1,xmm3
    829b:	66 0f f5 0d 00 00 00 	pmaddwd xmm1,XMMWORD PTR [rip+0x0]        # 82a3 <x264_8_intra_satd_x9_4x4_ssse3+0x303>
    82a2:	00 
    82a3:	0f 10 52 02          	movups xmm2,XMMWORD PTR [rdx+0x2]
    82a7:	66 0f 7e c9          	movd   ecx,xmm1
    82ab:	66 0f 3a 0f e9 08    	palignr xmm5,xmm1,0x8
    82b1:	f3 0f 70 d2 d8       	pshufhw xmm2,xmm2,0xd8
    82b6:	66 0f 6b ec          	packssdw xmm5,xmm4
    82ba:	66 0f fd d5          	paddw  xmm2,xmm5
    82be:	0f b7 3a             	movzx  edi,WORD PTR [rdx]
    82c1:	01 f9                	add    ecx,edi
    82c3:	66 0f 71 f2 02       	psllw  xmm2,0x2
    82c8:	66 0f dd d2          	paddusw xmm2,xmm2
    82cc:	66 0f fd 15 00 00 00 	paddw  xmm2,XMMWORD PTR [rip+0x0]        # 82d4 <x264_8_intra_satd_x9_4x4_ssse3+0x334>
    82d3:	00 
    82d4:	0f 12 ca             	movhlps xmm1,xmm2
    82d7:	66 0f ea d1          	pminsw xmm2,xmm1
    82db:	f2 0f 70 ca 0e       	pshuflw xmm1,xmm2,0xe
    82e0:	66 0f ea d1          	pminsw xmm2,xmm1
    82e4:	f2 0f 70 ca 01       	pshuflw xmm1,xmm2,0x1
    82e9:	66 0f ea d1          	pminsw xmm2,xmm1
    82ed:	66 0f 7e d0          	movd   eax,xmm2
    82f1:	0f bf d0             	movsx  edx,ax
    82f4:	83 e0 07             	and    eax,0x7
    82f7:	c1 fa 03             	sar    edx,0x3
    82fa:	c1 e0 10             	shl    eax,0x10
    82fd:	8d 84 10 00 10 01 00 	lea    eax,[rax+rdx*1+0x11000]
    8304:	66 39 c8             	cmp    ax,cx
    8307:	0f 4d c1             	cmovge eax,ecx
    830a:	89 c1                	mov    ecx,eax
    830c:	c1 e9 10             	shr    ecx,0x10
    830f:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 8316 <x264_8_intra_satd_x9_4x4_ssse3+0x376>
    8316:	0f b6 14 0a          	movzx  edx,BYTE PTR [rdx+rcx*1]
    831a:	8b 0c 14             	mov    ecx,DWORD PTR [rsp+rdx*1]
    831d:	89 0e                	mov    DWORD PTR [rsi],ecx
    831f:	8b 4c 14 08          	mov    ecx,DWORD PTR [rsp+rdx*1+0x8]
    8323:	89 4e 20             	mov    DWORD PTR [rsi+0x20],ecx
    8326:	8b 4c 14 10          	mov    ecx,DWORD PTR [rsp+rdx*1+0x10]
    832a:	89 4e 40             	mov    DWORD PTR [rsi+0x40],ecx
    832d:	8b 4c 14 18          	mov    ecx,DWORD PTR [rsp+rdx*1+0x18]
    8331:	89 4e 60             	mov    DWORD PTR [rsi+0x60],ecx
    8334:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
    833b:	c3                   	ret    
    833c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8340:	66 41 0f 38 04 c4    	pmaddubsw xmm0,xmm12
    8346:	66 41 0f 38 04 cc    	pmaddubsw xmm1,xmm12
    834c:	66 41 0f 38 04 d4    	pmaddubsw xmm2,xmm12
    8352:	66 41 0f 38 04 dc    	pmaddubsw xmm3,xmm12
    8358:	66 41 0f f9 c0       	psubw  xmm0,xmm8
    835d:	66 41 0f f9 c9       	psubw  xmm1,xmm9
    8362:	66 41 0f f9 d2       	psubw  xmm2,xmm10
    8367:	66 41 0f f9 db       	psubw  xmm3,xmm11
    836c:	44 0f 28 e8          	movaps xmm13,xmm0
    8370:	66 0f fd c1          	paddw  xmm0,xmm1
    8374:	66 41 0f f9 cd       	psubw  xmm1,xmm13
    8379:	44 0f 28 ea          	movaps xmm13,xmm2
    837d:	66 0f fd d3          	paddw  xmm2,xmm3
    8381:	66 41 0f f9 dd       	psubw  xmm3,xmm13
    8386:	44 0f 28 e8          	movaps xmm13,xmm0
    838a:	66 0f fd c2          	paddw  xmm0,xmm2
    838e:	66 41 0f f9 d5       	psubw  xmm2,xmm13
    8393:	44 0f 28 e9          	movaps xmm13,xmm1
    8397:	66 0f fd cb          	paddw  xmm1,xmm3
    839b:	66 41 0f f9 dd       	psubw  xmm3,xmm13
    83a0:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    83a5:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    83aa:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    83af:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    83b4:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 83bc <x264_8_intra_satd_x9_4x4_ssse3+0x41c>
    83bb:	00 
    83bc:	44 0f 28 f2          	movaps xmm14,xmm2
    83c0:	66 0f 72 f2 10       	pslld  xmm2,0x10
    83c5:	66 45 0f db f5       	pand   xmm14,xmm13
    83ca:	66 44 0f df e8       	pandn  xmm13,xmm0
    83cf:	66 0f 72 d0 10       	psrld  xmm0,0x10
    83d4:	66 41 0f eb d5       	por    xmm2,xmm13
    83d9:	66 41 0f eb c6       	por    xmm0,xmm14
    83de:	66 0f ee c2          	pmaxsw xmm0,xmm2
    83e2:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 83ea <x264_8_intra_satd_x9_4x4_ssse3+0x44a>
    83e9:	00 
    83ea:	44 0f 28 f3          	movaps xmm14,xmm3
    83ee:	66 0f 72 f3 10       	pslld  xmm3,0x10
    83f3:	66 45 0f db f5       	pand   xmm14,xmm13
    83f8:	66 44 0f df e9       	pandn  xmm13,xmm1
    83fd:	66 0f 72 d1 10       	psrld  xmm1,0x10
    8402:	66 41 0f eb dd       	por    xmm3,xmm13
    8407:	66 41 0f eb ce       	por    xmm1,xmm14
    840c:	66 0f ee cb          	pmaxsw xmm1,xmm3
    8410:	66 0f fd c1          	paddw  xmm0,xmm1
    8414:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 841c <x264_8_intra_satd_x9_4x4_ssse3+0x47c>
    841b:	00 
    841c:	0f 12 c8             	movhlps xmm1,xmm0
    841f:	66 0f fe c1          	paddd  xmm0,xmm1
    8423:	c3                   	ret    
    8424:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    842b:	00 
    842c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000008430 <x264_8_intra_sad_x9_8x8_ssse3>:
    8430:	48 81 ec 48 02 00 00 	sub    rsp,0x248
    8437:	f3 0f 7e 27          	movq   xmm4,QWORD PTR [rdi]
    843b:	f3 0f 7e 6f 10       	movq   xmm5,QWORD PTR [rdi+0x10]
    8440:	f3 0f 7e 77 40       	movq   xmm6,QWORD PTR [rdi+0x40]
    8445:	f3 0f 7e 7f 50       	movq   xmm7,QWORD PTR [rdi+0x50]
    844a:	0f 16 67 20          	movhps xmm4,QWORD PTR [rdi+0x20]
    844e:	0f 16 6f 30          	movhps xmm5,QWORD PTR [rdi+0x30]
    8452:	0f 16 77 60          	movhps xmm6,QWORD PTR [rdi+0x60]
    8456:	0f 16 7f 70          	movhps xmm7,QWORD PTR [rdi+0x70]
    845a:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 8461 <x264_8_intra_sad_x9_8x8_ssse3+0x31>
    8461:	f2 0f 12 42 10       	movddup xmm0,QWORD PTR [rdx+0x10]
    8466:	0f 29 04 24          	movaps XMMWORD PTR [rsp],xmm0
    846a:	66 0f 6f c8          	movdqa xmm1,xmm0
    846e:	66 0f f6 cc          	psadbw xmm1,xmm4
    8472:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
    8477:	66 0f 6f d0          	movdqa xmm2,xmm0
    847b:	66 0f f6 d5          	psadbw xmm2,xmm5
    847f:	0f 29 44 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm0
    8484:	66 0f 6f d8          	movdqa xmm3,xmm0
    8488:	66 0f f6 de          	psadbw xmm3,xmm6
    848c:	0f 29 44 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm0
    8491:	66 0f f6 c7          	psadbw xmm0,xmm7
    8495:	66 0f fd ca          	paddw  xmm1,xmm2
    8499:	66 0f fd c3          	paddw  xmm0,xmm3
    849d:	66 0f fd c1          	paddw  xmm0,xmm1
    84a1:	0f 12 c8             	movhlps xmm1,xmm0
    84a4:	66 0f fd c1          	paddw  xmm0,xmm1
    84a8:	66 41 0f 7e 00       	movd   DWORD PTR [r8],xmm0
    84ad:	f3 0f 7e 42 07       	movq   xmm0,QWORD PTR [rdx+0x7]
    84b2:	66 0f 6f c8          	movdqa xmm1,xmm0
    84b6:	66 0f 38 00 4f 80    	pshufb xmm1,XMMWORD PTR [rdi-0x80]
    84bc:	66 0f 6f d0          	movdqa xmm2,xmm0
    84c0:	66 0f 38 00 57 90    	pshufb xmm2,XMMWORD PTR [rdi-0x70]
    84c6:	0f 29 4c 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm1
    84cb:	66 0f f6 cc          	psadbw xmm1,xmm4
    84cf:	0f 29 54 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm2
    84d4:	66 0f f6 d5          	psadbw xmm2,xmm5
    84d8:	66 0f fd ca          	paddw  xmm1,xmm2
    84dc:	66 0f 6f d8          	movdqa xmm3,xmm0
    84e0:	66 0f 38 00 5f a0    	pshufb xmm3,XMMWORD PTR [rdi-0x60]
    84e6:	66 0f 6f d0          	movdqa xmm2,xmm0
    84ea:	66 0f 38 00 57 b0    	pshufb xmm2,XMMWORD PTR [rdi-0x50]
    84f0:	0f 29 5c 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm3
    84f5:	66 0f f6 de          	psadbw xmm3,xmm6
    84f9:	0f 29 54 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm2
    84fe:	66 0f f6 d7          	psadbw xmm2,xmm7
    8502:	66 0f fd cb          	paddw  xmm1,xmm3
    8506:	66 0f fd ca          	paddw  xmm1,xmm2
    850a:	0f 12 d1             	movhlps xmm2,xmm1
    850d:	66 0f fd ca          	paddw  xmm1,xmm2
    8511:	66 41 0f 7e 48 02    	movd   DWORD PTR [r8+0x2],xmm1
    8517:	4c 8d 8c 24 00 01 00 	lea    r9,[rsp+0x100]
    851e:	00 
    851f:	0f 16 42 10          	movhps xmm0,QWORD PTR [rdx+0x10]
    8523:	66 0f ef d2          	pxor   xmm2,xmm2
    8527:	66 0f f6 c2          	psadbw xmm0,xmm2
    852b:	0f 12 c8             	movhlps xmm1,xmm0
    852e:	66 0f fd c1          	paddw  xmm0,xmm1
    8532:	66 0f 71 d0 03       	psrlw  xmm0,0x3
    8537:	66 0f e3 c2          	pavgw  xmm0,xmm2
    853b:	66 0f 38 00 c2       	pshufb xmm0,xmm2
    8540:	41 0f 29 41 80       	movaps XMMWORD PTR [r9-0x80],xmm0
    8545:	66 0f 6f c8          	movdqa xmm1,xmm0
    8549:	66 0f f6 cc          	psadbw xmm1,xmm4
    854d:	41 0f 29 41 90       	movaps XMMWORD PTR [r9-0x70],xmm0
    8552:	66 0f 6f d0          	movdqa xmm2,xmm0
    8556:	66 0f f6 d5          	psadbw xmm2,xmm5
    855a:	41 0f 29 41 a0       	movaps XMMWORD PTR [r9-0x60],xmm0
    855f:	66 0f 6f d8          	movdqa xmm3,xmm0
    8563:	66 0f f6 de          	psadbw xmm3,xmm6
    8567:	41 0f 29 41 b0       	movaps XMMWORD PTR [r9-0x50],xmm0
    856c:	66 0f f6 c7          	psadbw xmm0,xmm7
    8570:	66 0f fd ca          	paddw  xmm1,xmm2
    8574:	66 0f fd c3          	paddw  xmm0,xmm3
    8578:	66 0f fd c1          	paddw  xmm0,xmm1
    857c:	0f 12 c8             	movhlps xmm1,xmm0
    857f:	66 0f fd c1          	paddw  xmm0,xmm1
    8583:	66 41 0f 7e 40 04    	movd   DWORD PTR [r8+0x4],xmm0
    8589:	0f 28 42 10          	movaps xmm0,XMMWORD PTR [rdx+0x10]
    858d:	0f 10 52 11          	movups xmm2,XMMWORD PTR [rdx+0x11]
    8591:	66 0f 6f c8          	movdqa xmm1,xmm0
    8595:	66 0f 73 f9 01       	pslldq xmm1,0x1
    859a:	66 0f 6f d8          	movdqa xmm3,xmm0
    859e:	66 0f e0 da          	pavgb  xmm3,xmm2
    85a2:	66 44 0f 6f c1       	movdqa xmm8,xmm1
    85a7:	66 44 0f e0 c2       	pavgb  xmm8,xmm2
    85ac:	66 0f ef d1          	pxor   xmm2,xmm1
    85b0:	66 0f db 15 00 00 00 	pand   xmm2,XMMWORD PTR [rip+0x0]        # 85b8 <x264_8_intra_sad_x9_8x8_ssse3+0x188>
    85b7:	00 
    85b8:	66 44 0f d8 c2       	psubusb xmm8,xmm2
    85bd:	66 41 0f e0 c0       	pavgb  xmm0,xmm8
    85c2:	66 0f 6f c8          	movdqa xmm1,xmm0
    85c6:	66 0f 38 00 4f c0    	pshufb xmm1,XMMWORD PTR [rdi-0x40]
    85cc:	66 0f 6f d0          	movdqa xmm2,xmm0
    85d0:	66 0f 38 00 57 d0    	pshufb xmm2,XMMWORD PTR [rdi-0x30]
    85d6:	41 0f 29 49 c0       	movaps XMMWORD PTR [r9-0x40],xmm1
    85db:	66 0f f6 cc          	psadbw xmm1,xmm4
    85df:	41 0f 29 51 d0       	movaps XMMWORD PTR [r9-0x30],xmm2
    85e4:	66 0f f6 d5          	psadbw xmm2,xmm5
    85e8:	66 0f fd ca          	paddw  xmm1,xmm2
    85ec:	66 0f 6f d0          	movdqa xmm2,xmm0
    85f0:	66 0f 38 00 57 e0    	pshufb xmm2,XMMWORD PTR [rdi-0x20]
    85f6:	41 0f 29 51 e0       	movaps XMMWORD PTR [r9-0x20],xmm2
    85fb:	66 0f f6 d6          	psadbw xmm2,xmm6
    85ff:	66 0f fd ca          	paddw  xmm1,xmm2
    8603:	66 0f 6f d0          	movdqa xmm2,xmm0
    8607:	66 0f 38 00 57 f0    	pshufb xmm2,XMMWORD PTR [rdi-0x10]
    860d:	41 0f 29 51 f0       	movaps XMMWORD PTR [r9-0x10],xmm2
    8612:	66 0f f6 d7          	psadbw xmm2,xmm7
    8616:	66 0f fd ca          	paddw  xmm1,xmm2
    861a:	0f 12 d1             	movhlps xmm2,xmm1
    861d:	66 0f fd ca          	paddw  xmm1,xmm2
    8621:	66 41 0f 7e 48 06    	movd   DWORD PTR [r8+0x6],xmm1
    8627:	66 0f 6f cb          	movdqa xmm1,xmm3
    862b:	66 0f 38 00 0f       	pshufb xmm1,XMMWORD PTR [rdi]
    8630:	66 0f 6f d0          	movdqa xmm2,xmm0
    8634:	66 0f 38 00 57 10    	pshufb xmm2,XMMWORD PTR [rdi+0x10]
    863a:	66 0f 38 00 5f 20    	pshufb xmm3,XMMWORD PTR [rdi+0x20]
    8640:	66 0f 38 00 47 30    	pshufb xmm0,XMMWORD PTR [rdi+0x30]
    8646:	41 0f 29 89 c0 00 00 	movaps XMMWORD PTR [r9+0xc0],xmm1
    864d:	00 
    864e:	66 0f f6 cc          	psadbw xmm1,xmm4
    8652:	41 0f 29 91 d0 00 00 	movaps XMMWORD PTR [r9+0xd0],xmm2
    8659:	00 
    865a:	66 0f f6 d5          	psadbw xmm2,xmm5
    865e:	41 0f 29 99 e0 00 00 	movaps XMMWORD PTR [r9+0xe0],xmm3
    8665:	00 
    8666:	66 0f f6 de          	psadbw xmm3,xmm6
    866a:	41 0f 29 81 f0 00 00 	movaps XMMWORD PTR [r9+0xf0],xmm0
    8671:	00 
    8672:	66 0f f6 c7          	psadbw xmm0,xmm7
    8676:	66 0f fd ca          	paddw  xmm1,xmm2
    867a:	66 0f fd c3          	paddw  xmm0,xmm3
    867e:	66 0f fd c1          	paddw  xmm0,xmm1
    8682:	0f 12 c8             	movhlps xmm1,xmm0
    8685:	66 0f fd c1          	paddw  xmm0,xmm1
    8689:	66 41 0f 7e c1       	movd   r9d,xmm0
    868e:	66 45 89 48 0e       	mov    WORD PTR [r8+0xe],r9w
    8693:	4c 8d 8c 24 00 01 00 	lea    r9,[rsp+0x100]
    869a:	00 
    869b:	0f 10 52 08          	movups xmm2,XMMWORD PTR [rdx+0x8]
    869f:	0f 10 42 07          	movups xmm0,XMMWORD PTR [rdx+0x7]
    86a3:	0f 10 4a 06          	movups xmm1,XMMWORD PTR [rdx+0x6]
    86a7:	66 0f 6f da          	movdqa xmm3,xmm2
    86ab:	66 0f e0 d8          	pavgb  xmm3,xmm0
    86af:	66 44 0f 6f c1       	movdqa xmm8,xmm1
    86b4:	66 44 0f e0 c2       	pavgb  xmm8,xmm2
    86b9:	66 0f ef d1          	pxor   xmm2,xmm1
    86bd:	66 0f db 15 00 00 00 	pand   xmm2,XMMWORD PTR [rip+0x0]        # 86c5 <x264_8_intra_sad_x9_8x8_ssse3+0x295>
    86c4:	00 
    86c5:	66 44 0f d8 c2       	psubusb xmm8,xmm2
    86ca:	66 41 0f e0 c0       	pavgb  xmm0,xmm8
    86cf:	66 0f 6f c8          	movdqa xmm1,xmm0
    86d3:	66 0f 38 00 4f 40    	pshufb xmm1,XMMWORD PTR [rdi+0x40]
    86d9:	66 0f 6f d0          	movdqa xmm2,xmm0
    86dd:	66 0f 38 00 57 50    	pshufb xmm2,XMMWORD PTR [rdi+0x50]
    86e3:	41 0f 29 09          	movaps XMMWORD PTR [r9],xmm1
    86e7:	66 0f f6 cc          	psadbw xmm1,xmm4
    86eb:	41 0f 29 51 10       	movaps XMMWORD PTR [r9+0x10],xmm2
    86f0:	66 0f f6 d5          	psadbw xmm2,xmm5
    86f4:	66 0f fd ca          	paddw  xmm1,xmm2
    86f8:	66 0f 6f d0          	movdqa xmm2,xmm0
    86fc:	66 0f 38 00 57 60    	pshufb xmm2,XMMWORD PTR [rdi+0x60]
    8702:	41 0f 29 51 20       	movaps XMMWORD PTR [r9+0x20],xmm2
    8707:	66 0f f6 d6          	psadbw xmm2,xmm6
    870b:	66 0f fd ca          	paddw  xmm1,xmm2
    870f:	66 0f 6f d0          	movdqa xmm2,xmm0
    8713:	66 0f 38 00 57 70    	pshufb xmm2,XMMWORD PTR [rdi+0x70]
    8719:	41 0f 29 51 30       	movaps XMMWORD PTR [r9+0x30],xmm2
    871e:	66 0f f6 d7          	psadbw xmm2,xmm7
    8722:	66 0f fd ca          	paddw  xmm1,xmm2
    8726:	0f 12 d1             	movhlps xmm2,xmm1
    8729:	66 0f fd ca          	paddw  xmm1,xmm2
    872d:	66 41 0f 7e 48 08    	movd   DWORD PTR [r8+0x8],xmm1
    8733:	48 81 c7 00 01 00 00 	add    rdi,0x100
    873a:	49 81 c1 c0 00 00 00 	add    r9,0xc0
    8741:	0f 28 d3             	movaps xmm2,xmm3
    8744:	f2 0f 10 d0          	movsd  xmm2,xmm0
    8748:	66 0f 6f ca          	movdqa xmm1,xmm2
    874c:	66 0f 38 00 4f 80    	pshufb xmm1,XMMWORD PTR [rdi-0x80]
    8752:	66 0f 38 00 57 a0    	pshufb xmm2,XMMWORD PTR [rdi-0x60]
    8758:	41 0f 29 49 80       	movaps XMMWORD PTR [r9-0x80],xmm1
    875d:	66 0f f6 cc          	psadbw xmm1,xmm4
    8761:	41 0f 29 51 a0       	movaps XMMWORD PTR [r9-0x60],xmm2
    8766:	66 0f f6 d6          	psadbw xmm2,xmm6
    876a:	66 0f fd ca          	paddw  xmm1,xmm2
    876e:	66 0f 6f d0          	movdqa xmm2,xmm0
    8772:	66 0f 38 00 57 90    	pshufb xmm2,XMMWORD PTR [rdi-0x70]
    8778:	41 0f 29 51 90       	movaps XMMWORD PTR [r9-0x70],xmm2
    877d:	66 0f f6 d5          	psadbw xmm2,xmm5
    8781:	66 0f fd ca          	paddw  xmm1,xmm2
    8785:	66 0f 6f d0          	movdqa xmm2,xmm0
    8789:	66 0f 38 00 57 b0    	pshufb xmm2,XMMWORD PTR [rdi-0x50]
    878f:	41 0f 29 51 b0       	movaps XMMWORD PTR [r9-0x50],xmm2
    8794:	66 0f f6 d7          	psadbw xmm2,xmm7
    8798:	66 0f fd ca          	paddw  xmm1,xmm2
    879c:	0f 12 d1             	movhlps xmm2,xmm1
    879f:	66 0f fd ca          	paddw  xmm1,xmm2
    87a3:	66 41 0f 7e 48 0a    	movd   DWORD PTR [r8+0xa],xmm1
    87a9:	66 0f 70 d3 01       	pshufd xmm2,xmm3,0x1
    87ae:	0f 28 c8             	movaps xmm1,xmm0
    87b1:	f3 0f 10 ca          	movss  xmm1,xmm2
    87b5:	66 0f 60 c3          	punpcklbw xmm0,xmm3
    87b9:	66 0f 6f d1          	movdqa xmm2,xmm1
    87bd:	66 0f 38 00 57 c0    	pshufb xmm2,XMMWORD PTR [rdi-0x40]
    87c3:	66 0f 38 00 4f d0    	pshufb xmm1,XMMWORD PTR [rdi-0x30]
    87c9:	41 0f 29 51 c0       	movaps XMMWORD PTR [r9-0x40],xmm2
    87ce:	66 0f f6 d4          	psadbw xmm2,xmm4
    87d2:	41 0f 29 49 d0       	movaps XMMWORD PTR [r9-0x30],xmm1
    87d7:	66 0f f6 cd          	psadbw xmm1,xmm5
    87db:	66 0f fd d1          	paddw  xmm2,xmm1
    87df:	66 0f 6f c8          	movdqa xmm1,xmm0
    87e3:	66 0f 38 00 4f e0    	pshufb xmm1,XMMWORD PTR [rdi-0x20]
    87e9:	66 0f 6f d8          	movdqa xmm3,xmm0
    87ed:	66 0f 38 00 5f f0    	pshufb xmm3,XMMWORD PTR [rdi-0x10]
    87f3:	41 0f 29 49 e0       	movaps XMMWORD PTR [r9-0x20],xmm1
    87f8:	66 0f f6 ce          	psadbw xmm1,xmm6
    87fc:	41 0f 29 59 f0       	movaps XMMWORD PTR [r9-0x10],xmm3
    8801:	66 0f f6 df          	psadbw xmm3,xmm7
    8805:	66 0f fd d1          	paddw  xmm2,xmm1
    8809:	66 0f fd d3          	paddw  xmm2,xmm3
    880d:	0f 12 ca             	movhlps xmm1,xmm2
    8810:	66 0f fd d1          	paddw  xmm2,xmm1
    8814:	66 0f 73 fa 0c       	pslldq xmm2,0xc
    8819:	66 0f 6e 5a 07       	movd   xmm3,DWORD PTR [rdx+0x7]
    881e:	66 0f 73 f8 01       	pslldq xmm0,0x1
    8823:	66 0f 3a 0f d8 01    	palignr xmm3,xmm0,0x1
    8829:	66 0f 6f c3          	movdqa xmm0,xmm3
    882d:	66 0f 38 00 07       	pshufb xmm0,XMMWORD PTR [rdi]
    8832:	66 0f 6f cb          	movdqa xmm1,xmm3
    8836:	66 0f 38 00 4f 10    	pshufb xmm1,XMMWORD PTR [rdi+0x10]
    883c:	41 0f 29 41 40       	movaps XMMWORD PTR [r9+0x40],xmm0
    8841:	66 0f f6 c4          	psadbw xmm0,xmm4
    8845:	41 0f 29 49 50       	movaps XMMWORD PTR [r9+0x50],xmm1
    884a:	66 0f f6 cd          	psadbw xmm1,xmm5
    884e:	66 0f fd c1          	paddw  xmm0,xmm1
    8852:	66 0f 6f cb          	movdqa xmm1,xmm3
    8856:	66 0f 38 00 4f 20    	pshufb xmm1,XMMWORD PTR [rdi+0x20]
    885c:	66 0f 38 00 5f 30    	pshufb xmm3,XMMWORD PTR [rdi+0x30]
    8862:	41 0f 29 49 60       	movaps XMMWORD PTR [r9+0x60],xmm1
    8867:	66 0f f6 ce          	psadbw xmm1,xmm6
    886b:	41 0f 29 59 70       	movaps XMMWORD PTR [r9+0x70],xmm3
    8870:	66 0f f6 df          	psadbw xmm3,xmm7
    8874:	66 0f fd c1          	paddw  xmm0,xmm1
    8878:	66 0f fd c3          	paddw  xmm0,xmm3
    887c:	0f 12 c8             	movhlps xmm1,xmm0
    887f:	66 0f fd c1          	paddw  xmm0,xmm1
    8883:	66 0f 7e c2          	movd   edx,xmm0
    8887:	0f 10 19             	movups xmm3,XMMWORD PTR [rcx]
    888a:	66 41 0f eb 10       	por    xmm2,XMMWORD PTR [r8]
    888f:	66 0f fd da          	paddw  xmm3,xmm2
    8893:	41 0f 29 18          	movaps XMMWORD PTR [r8],xmm3
    8897:	44 0f b7 49 10       	movzx  r9d,WORD PTR [rcx+0x10]
    889c:	44 01 ca             	add    edx,r9d
    889f:	66 41 89 50 10       	mov    WORD PTR [r8+0x10],dx
    88a4:	66 0f dd db          	paddusw xmm3,xmm3
    88a8:	66 0f dd db          	paddusw xmm3,xmm3
    88ac:	66 0f fd 5f 40       	paddw  xmm3,XMMWORD PTR [rdi+0x40]
    88b1:	0f 12 c3             	movhlps xmm0,xmm3
    88b4:	66 0f ea d8          	pminsw xmm3,xmm0
    88b8:	f2 0f 70 c3 0e       	pshuflw xmm0,xmm3,0xe
    88bd:	66 0f ea d8          	pminsw xmm3,xmm0
    88c1:	66 0f 7e d8          	movd   eax,xmm3
    88c5:	35 00 80 00 80       	xor    eax,0x80008000
    88ca:	0f b7 c8             	movzx  ecx,ax
    88cd:	c1 e8 0f             	shr    eax,0xf
    88d0:	01 c9                	add    ecx,ecx
    88d2:	83 c8 01             	or     eax,0x1
    88d5:	39 c8                	cmp    eax,ecx
    88d7:	0f 4f c1             	cmovg  eax,ecx
    88da:	89 c1                	mov    ecx,eax
    88dc:	83 e0 07             	and    eax,0x7
    88df:	c1 e9 03             	shr    ecx,0x3
    88e2:	c1 e0 10             	shl    eax,0x10
    88e5:	09 c8                	or     eax,ecx
    88e7:	81 c2 00 00 08 00    	add    edx,0x80000
    88ed:	66 39 d0             	cmp    ax,dx
    88f0:	0f 4f c2             	cmovg  eax,edx
    88f3:	89 c2                	mov    edx,eax
    88f5:	c1 ea 10             	shr    edx,0x10
    88f8:	c1 e2 06             	shl    edx,0x6
    88fb:	48 83 ee 80          	sub    rsi,0xffffffffffffff80
    88ff:	0f 28 1c 14          	movaps xmm3,XMMWORD PTR [rsp+rdx*1]
    8903:	0f 28 44 14 10       	movaps xmm0,XMMWORD PTR [rsp+rdx*1+0x10]
    8908:	0f 28 4c 14 20       	movaps xmm1,XMMWORD PTR [rsp+rdx*1+0x20]
    890d:	0f 28 54 14 30       	movaps xmm2,XMMWORD PTR [rsp+rdx*1+0x30]
    8912:	66 0f d6 5e 80       	movq   QWORD PTR [rsi-0x80],xmm3
    8917:	0f 17 5e c0          	movhps QWORD PTR [rsi-0x40],xmm3
    891b:	66 0f d6 46 a0       	movq   QWORD PTR [rsi-0x60],xmm0
    8920:	0f 17 46 e0          	movhps QWORD PTR [rsi-0x20],xmm0
    8924:	66 0f d6 0e          	movq   QWORD PTR [rsi],xmm1
    8928:	0f 17 4e 40          	movhps QWORD PTR [rsi+0x40],xmm1
    892c:	66 0f d6 56 20       	movq   QWORD PTR [rsi+0x20],xmm2
    8931:	0f 17 56 60          	movhps QWORD PTR [rsi+0x60],xmm2
    8935:	48 81 c4 48 02 00 00 	add    rsp,0x248
    893c:	c3                   	ret    
    893d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000008940 <x264_8_intra_sa8d_x9_8x8_ssse3>:
    8940:	48 81 ec c8 02 00 00 	sub    rsp,0x2c8
    8947:	44 0f 28 3d 00 00 00 	movaps xmm15,XMMWORD PTR [rip+0x0]        # 894f <x264_8_intra_sa8d_x9_8x8_ssse3+0xf>
    894e:	00 
    894f:	66 45 0f ef c0       	pxor   xmm8,xmm8
    8954:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    8958:	66 44 0f 6f c8       	movdqa xmm9,xmm0
    895d:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    8963:	66 41 0f 60 c0       	punpcklbw xmm0,xmm8
    8968:	44 0f 29 0c 24       	movaps XMMWORD PTR [rsp],xmm9
    896d:	f2 0f 12 4f 10       	movddup xmm1,QWORD PTR [rdi+0x10]
    8972:	66 44 0f 6f c9       	movdqa xmm9,xmm1
    8977:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    897d:	66 41 0f 60 c8       	punpcklbw xmm1,xmm8
    8982:	44 0f 29 4c 24 10    	movaps XMMWORD PTR [rsp+0x10],xmm9
    8988:	f2 0f 12 57 20       	movddup xmm2,QWORD PTR [rdi+0x20]
    898d:	66 44 0f 6f ca       	movdqa xmm9,xmm2
    8992:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    8998:	66 41 0f 60 d0       	punpcklbw xmm2,xmm8
    899d:	44 0f 29 4c 24 20    	movaps XMMWORD PTR [rsp+0x20],xmm9
    89a3:	f2 0f 12 5f 30       	movddup xmm3,QWORD PTR [rdi+0x30]
    89a8:	66 44 0f 6f cb       	movdqa xmm9,xmm3
    89ad:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    89b3:	66 41 0f 60 d8       	punpcklbw xmm3,xmm8
    89b8:	44 0f 29 4c 24 30    	movaps XMMWORD PTR [rsp+0x30],xmm9
    89be:	f2 0f 12 67 40       	movddup xmm4,QWORD PTR [rdi+0x40]
    89c3:	66 44 0f 6f cc       	movdqa xmm9,xmm4
    89c8:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    89ce:	66 41 0f 60 e0       	punpcklbw xmm4,xmm8
    89d3:	44 0f 29 4c 24 40    	movaps XMMWORD PTR [rsp+0x40],xmm9
    89d9:	f2 0f 12 6f 50       	movddup xmm5,QWORD PTR [rdi+0x50]
    89de:	66 44 0f 6f cd       	movdqa xmm9,xmm5
    89e3:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    89e9:	66 41 0f 60 e8       	punpcklbw xmm5,xmm8
    89ee:	44 0f 29 4c 24 50    	movaps XMMWORD PTR [rsp+0x50],xmm9
    89f4:	f2 0f 12 77 60       	movddup xmm6,QWORD PTR [rdi+0x60]
    89f9:	66 44 0f 6f ce       	movdqa xmm9,xmm6
    89fe:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    8a04:	66 41 0f 60 f0       	punpcklbw xmm6,xmm8
    8a09:	44 0f 29 4c 24 60    	movaps XMMWORD PTR [rsp+0x60],xmm9
    8a0f:	f2 0f 12 7f 70       	movddup xmm7,QWORD PTR [rdi+0x70]
    8a14:	66 44 0f 6f cf       	movdqa xmm9,xmm7
    8a19:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    8a1f:	66 41 0f 60 f8       	punpcklbw xmm7,xmm8
    8a24:	44 0f 29 4c 24 70    	movaps XMMWORD PTR [rsp+0x70],xmm9
    8a2a:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 8a31 <x264_8_intra_sa8d_x9_8x8_ssse3+0xf1>
    8a31:	4c 8d 8c 24 00 01 00 	lea    r9,[rsp+0x100]
    8a38:	00 
    8a39:	44 0f 28 c0          	movaps xmm8,xmm0
    8a3d:	66 0f fd c1          	paddw  xmm0,xmm1
    8a41:	66 41 0f f9 c8       	psubw  xmm1,xmm8
    8a46:	44 0f 28 c2          	movaps xmm8,xmm2
    8a4a:	66 0f fd d3          	paddw  xmm2,xmm3
    8a4e:	66 41 0f f9 d8       	psubw  xmm3,xmm8
    8a53:	44 0f 28 c0          	movaps xmm8,xmm0
    8a57:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    8a5b:	66 44 0f 69 c1       	punpckhwd xmm8,xmm1
    8a60:	0f 28 c8             	movaps xmm1,xmm0
    8a63:	66 41 0f fd c0       	paddw  xmm0,xmm8
    8a68:	66 44 0f f9 c1       	psubw  xmm8,xmm1
    8a6d:	0f 28 ca             	movaps xmm1,xmm2
    8a70:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    8a74:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    8a78:	0f 28 da             	movaps xmm3,xmm2
    8a7b:	66 0f fd d1          	paddw  xmm2,xmm1
    8a7f:	66 0f f9 cb          	psubw  xmm1,xmm3
    8a83:	0f 28 dc             	movaps xmm3,xmm4
    8a86:	66 0f fd e5          	paddw  xmm4,xmm5
    8a8a:	66 0f f9 eb          	psubw  xmm5,xmm3
    8a8e:	0f 28 de             	movaps xmm3,xmm6
    8a91:	66 0f fd f7          	paddw  xmm6,xmm7
    8a95:	66 0f f9 fb          	psubw  xmm7,xmm3
    8a99:	0f 28 dc             	movaps xmm3,xmm4
    8a9c:	66 0f 61 e5          	punpcklwd xmm4,xmm5
    8aa0:	66 0f 69 dd          	punpckhwd xmm3,xmm5
    8aa4:	0f 28 ec             	movaps xmm5,xmm4
    8aa7:	66 0f fd e3          	paddw  xmm4,xmm3
    8aab:	66 0f f9 dd          	psubw  xmm3,xmm5
    8aaf:	0f 28 ee             	movaps xmm5,xmm6
    8ab2:	66 0f 61 f7          	punpcklwd xmm6,xmm7
    8ab6:	66 0f 69 ef          	punpckhwd xmm5,xmm7
    8aba:	0f 28 fe             	movaps xmm7,xmm6
    8abd:	66 0f fd f5          	paddw  xmm6,xmm5
    8ac1:	66 0f f9 ef          	psubw  xmm5,xmm7
    8ac5:	0f 28 f8             	movaps xmm7,xmm0
    8ac8:	66 0f fd c2          	paddw  xmm0,xmm2
    8acc:	66 0f f9 d7          	psubw  xmm2,xmm7
    8ad0:	41 0f 28 f8          	movaps xmm7,xmm8
    8ad4:	66 44 0f fd c1       	paddw  xmm8,xmm1
    8ad9:	66 0f f9 cf          	psubw  xmm1,xmm7
    8add:	0f 28 f8             	movaps xmm7,xmm0
    8ae0:	66 0f 62 c2          	punpckldq xmm0,xmm2
    8ae4:	66 0f 6a fa          	punpckhdq xmm7,xmm2
    8ae8:	0f 28 d0             	movaps xmm2,xmm0
    8aeb:	66 0f fd c7          	paddw  xmm0,xmm7
    8aef:	66 0f f9 fa          	psubw  xmm7,xmm2
    8af3:	41 0f 28 d0          	movaps xmm2,xmm8
    8af7:	66 44 0f 62 c1       	punpckldq xmm8,xmm1
    8afc:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    8b00:	41 0f 28 c8          	movaps xmm1,xmm8
    8b04:	66 44 0f fd c2       	paddw  xmm8,xmm2
    8b09:	66 0f f9 d1          	psubw  xmm2,xmm1
    8b0d:	0f 28 cc             	movaps xmm1,xmm4
    8b10:	66 0f fd e6          	paddw  xmm4,xmm6
    8b14:	66 0f f9 f1          	psubw  xmm6,xmm1
    8b18:	0f 28 cb             	movaps xmm1,xmm3
    8b1b:	66 0f fd dd          	paddw  xmm3,xmm5
    8b1f:	66 0f f9 e9          	psubw  xmm5,xmm1
    8b23:	0f 28 cc             	movaps xmm1,xmm4
    8b26:	66 0f 62 e6          	punpckldq xmm4,xmm6
    8b2a:	66 0f 6a ce          	punpckhdq xmm1,xmm6
    8b2e:	0f 28 f4             	movaps xmm6,xmm4
    8b31:	66 0f fd e1          	paddw  xmm4,xmm1
    8b35:	66 0f f9 ce          	psubw  xmm1,xmm6
    8b39:	0f 28 f3             	movaps xmm6,xmm3
    8b3c:	66 0f 62 dd          	punpckldq xmm3,xmm5
    8b40:	66 0f 6a f5          	punpckhdq xmm6,xmm5
    8b44:	0f 28 eb             	movaps xmm5,xmm3
    8b47:	66 0f fd de          	paddw  xmm3,xmm6
    8b4b:	66 0f f9 f5          	psubw  xmm6,xmm5
    8b4f:	0f 28 e8             	movaps xmm5,xmm0
    8b52:	66 0f fd c4          	paddw  xmm0,xmm4
    8b56:	66 0f f9 e5          	psubw  xmm4,xmm5
    8b5a:	0f 28 ef             	movaps xmm5,xmm7
    8b5d:	66 0f fd f9          	paddw  xmm7,xmm1
    8b61:	66 0f f9 cd          	psubw  xmm1,xmm5
    8b65:	0f 28 e8             	movaps xmm5,xmm0
    8b68:	0f 16 c4             	movlhps xmm0,xmm4
    8b6b:	66 0f 6d ec          	punpckhqdq xmm5,xmm4
    8b6f:	0f 28 e0             	movaps xmm4,xmm0
    8b72:	66 0f fd c5          	paddw  xmm0,xmm5
    8b76:	66 0f f9 ec          	psubw  xmm5,xmm4
    8b7a:	0f 28 e7             	movaps xmm4,xmm7
    8b7d:	0f 16 f9             	movlhps xmm7,xmm1
    8b80:	66 0f 6d e1          	punpckhqdq xmm4,xmm1
    8b84:	0f 28 cf             	movaps xmm1,xmm7
    8b87:	66 0f fd fc          	paddw  xmm7,xmm4
    8b8b:	66 0f f9 e1          	psubw  xmm4,xmm1
    8b8f:	41 0f 28 c8          	movaps xmm1,xmm8
    8b93:	66 44 0f fd c3       	paddw  xmm8,xmm3
    8b98:	66 0f f9 d9          	psubw  xmm3,xmm1
    8b9c:	0f 28 ca             	movaps xmm1,xmm2
    8b9f:	66 0f fd d6          	paddw  xmm2,xmm6
    8ba3:	66 0f f9 f1          	psubw  xmm6,xmm1
    8ba7:	41 0f 28 c8          	movaps xmm1,xmm8
    8bab:	44 0f 16 c3          	movlhps xmm8,xmm3
    8baf:	66 0f 6d cb          	punpckhqdq xmm1,xmm3
    8bb3:	41 0f 28 d8          	movaps xmm3,xmm8
    8bb7:	66 44 0f fd c1       	paddw  xmm8,xmm1
    8bbc:	66 0f f9 cb          	psubw  xmm1,xmm3
    8bc0:	0f 28 da             	movaps xmm3,xmm2
    8bc3:	0f 16 d6             	movlhps xmm2,xmm6
    8bc6:	66 0f 6d de          	punpckhqdq xmm3,xmm6
    8bca:	0f 28 f2             	movaps xmm6,xmm2
    8bcd:	66 0f fd d3          	paddw  xmm2,xmm3
    8bd1:	66 0f f9 de          	psubw  xmm3,xmm6
    8bd5:	66 44 0f 38 1d dd    	pabsw  xmm11,xmm5
    8bdb:	66 0f 38 1d f7       	pabsw  xmm6,xmm7
    8be0:	66 44 0f fd de       	paddw  xmm11,xmm6
    8be5:	66 0f 38 1d f4       	pabsw  xmm6,xmm4
    8bea:	66 44 0f fd de       	paddw  xmm11,xmm6
    8bef:	66 41 0f 38 1d f0    	pabsw  xmm6,xmm8
    8bf5:	66 44 0f fd de       	paddw  xmm11,xmm6
    8bfa:	66 0f 38 1d f1       	pabsw  xmm6,xmm1
    8bff:	66 44 0f fd de       	paddw  xmm11,xmm6
    8c04:	66 0f 38 1d f2       	pabsw  xmm6,xmm2
    8c09:	66 44 0f fd de       	paddw  xmm11,xmm6
    8c0e:	66 0f 38 1d f3       	pabsw  xmm6,xmm3
    8c13:	66 44 0f fd de       	paddw  xmm11,xmm6
    8c18:	f3 0f 7e 72 07       	movq   xmm6,QWORD PTR [rdx+0x7]
    8c1d:	f2 44 0f 12 4a 10    	movddup xmm9,QWORD PTR [rdx+0x10]
    8c23:	45 0f 29 49 80       	movaps XMMWORD PTR [r9-0x80],xmm9
    8c28:	45 0f 29 49 90       	movaps XMMWORD PTR [r9-0x70],xmm9
    8c2d:	45 0f 29 49 a0       	movaps XMMWORD PTR [r9-0x60],xmm9
    8c32:	45 0f 29 49 b0       	movaps XMMWORD PTR [r9-0x50],xmm9
    8c37:	66 0f 61 f6          	punpcklwd xmm6,xmm6
    8c3b:	66 44 0f 38 00 0d 00 	pshufb xmm9,XMMWORD PTR [rip+0x0]        # 8c45 <x264_8_intra_sa8d_x9_8x8_ssse3+0x305>
    8c42:	00 00 00 
    8c45:	66 0f 38 04 35 00 00 	pmaddubsw xmm6,XMMWORD PTR [rip+0x0]        # 8c4e <x264_8_intra_sa8d_x9_8x8_ssse3+0x30e>
    8c4c:	00 00 
    8c4e:	66 44 0f 38 04 0d 00 	pmaddubsw xmm9,XMMWORD PTR [rip+0x0]        # 8c58 <x264_8_intra_sa8d_x9_8x8_ssse3+0x318>
    8c55:	00 00 00 
    8c58:	66 44 0f 70 e6 4e    	pshufd xmm12,xmm6,0x4e
    8c5e:	66 45 0f 70 e9 4e    	pshufd xmm13,xmm9,0x4e
    8c64:	66 0f 38 09 35 00 00 	psignw xmm6,XMMWORD PTR [rip+0x0]        # 8c6d <x264_8_intra_sa8d_x9_8x8_ssse3+0x32d>
    8c6b:	00 00 
    8c6d:	66 44 0f 38 09 0d 00 	psignw xmm9,XMMWORD PTR [rip+0x0]        # 8c77 <x264_8_intra_sa8d_x9_8x8_ssse3+0x337>
    8c74:	00 00 00 
    8c77:	66 41 0f fd f4       	paddw  xmm6,xmm12
    8c7c:	66 45 0f fd cd       	paddw  xmm9,xmm13
    8c81:	66 44 0f 70 e6 b1    	pshufd xmm12,xmm6,0xb1
    8c87:	66 45 0f 70 e9 b1    	pshufd xmm13,xmm9,0xb1
    8c8d:	66 0f 38 09 35 00 00 	psignw xmm6,XMMWORD PTR [rip+0x0]        # 8c96 <x264_8_intra_sa8d_x9_8x8_ssse3+0x356>
    8c94:	00 00 
    8c96:	66 44 0f 38 09 0d 00 	psignw xmm9,XMMWORD PTR [rip+0x0]        # 8ca0 <x264_8_intra_sa8d_x9_8x8_ssse3+0x360>
    8c9d:	00 00 00 
    8ca0:	66 41 0f fd f4       	paddw  xmm6,xmm12
    8ca5:	66 45 0f fd cd       	paddw  xmm9,xmm13
    8caa:	66 44 0f 6f d6       	movdqa xmm10,xmm6
    8caf:	66 45 0f fd d1       	paddw  xmm10,xmm9
    8cb4:	66 44 0f fd 15 00 00 	paddw  xmm10,XMMWORD PTR [rip+0x0]        # 8cbd <x264_8_intra_sa8d_x9_8x8_ssse3+0x37d>
    8cbb:	00 00 
    8cbd:	66 44 0f db 15 00 00 	pand   xmm10,XMMWORD PTR [rip+0x0]        # 8cc6 <x264_8_intra_sa8d_x9_8x8_ssse3+0x386>
    8cc4:	00 00 
    8cc6:	66 45 0f 6f e2       	movdqa xmm12,xmm10
    8ccb:	66 41 0f 71 d4 04    	psrlw  xmm12,0x4
    8cd1:	66 41 0f 71 f2 02    	psllw  xmm10,0x2
    8cd7:	66 45 0f ef ed       	pxor   xmm13,xmm13
    8cdc:	66 45 0f 38 00 e5    	pshufb xmm12,xmm13
    8ce2:	45 0f 29 21          	movaps XMMWORD PTR [r9],xmm12
    8ce6:	45 0f 29 61 10       	movaps XMMWORD PTR [r9+0x10],xmm12
    8ceb:	45 0f 29 61 20       	movaps XMMWORD PTR [r9+0x20],xmm12
    8cf0:	45 0f 29 61 30       	movaps XMMWORD PTR [r9+0x30],xmm12
    8cf5:	66 0f 71 f6 03       	psllw  xmm6,0x3
    8cfa:	66 0f f9 f0          	psubw  xmm6,xmm0
    8cfe:	66 44 0f f9 d0       	psubw  xmm10,xmm0
    8d03:	66 0f 38 1d f6       	pabsw  xmm6,xmm6
    8d08:	66 45 0f 38 1d d2    	pabsw  xmm10,xmm10
    8d0e:	66 41 0f fd f3       	paddw  xmm6,xmm11
    8d13:	66 45 0f fd da       	paddw  xmm11,xmm10
    8d18:	66 0f 61 c5          	punpcklwd xmm0,xmm5
    8d1c:	66 0f 61 fc          	punpcklwd xmm7,xmm4
    8d20:	66 44 0f 61 c1       	punpcklwd xmm8,xmm1
    8d25:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    8d29:	66 0f 62 c7          	punpckldq xmm0,xmm7
    8d2d:	66 44 0f 62 c2       	punpckldq xmm8,xmm2
    8d32:	41 0f 16 c0          	movlhps xmm0,xmm8
    8d36:	66 41 0f 71 f1 03    	psllw  xmm9,0x3
    8d3c:	66 45 0f 6f d3       	movdqa xmm10,xmm11
    8d41:	66 41 0f 73 da 02    	psrldq xmm10,0x2
    8d47:	66 41 0f f9 c1       	psubw  xmm0,xmm9
    8d4c:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    8d51:	66 44 0f fd d0       	paddw  xmm10,xmm0
    8d56:	66 44 0f 38 02 d6    	phaddd xmm10,xmm6
    8d5c:	66 41 0f 71 d3 01    	psrlw  xmm11,0x1
    8d62:	66 41 0f 71 d2 01    	psrlw  xmm10,0x1
    8d68:	f3 0f 7e 62 07       	movq   xmm4,QWORD PTR [rdx+0x7]
    8d6d:	66 0f 6f c4          	movdqa xmm0,xmm4
    8d71:	66 0f 38 00 47 80    	pshufb xmm0,XMMWORD PTR [rdi-0x80]
    8d77:	66 0f 6f ec          	movdqa xmm5,xmm4
    8d7b:	66 0f 38 00 6f 90    	pshufb xmm5,XMMWORD PTR [rdi-0x70]
    8d81:	66 0f 6f fc          	movdqa xmm7,xmm4
    8d85:	66 0f 38 00 7f a0    	pshufb xmm7,XMMWORD PTR [rdi-0x60]
    8d8b:	66 0f 38 00 67 b0    	pshufb xmm4,XMMWORD PTR [rdi-0x50]
    8d91:	41 0f 29 41 c0       	movaps XMMWORD PTR [r9-0x40],xmm0
    8d96:	41 0f 29 69 d0       	movaps XMMWORD PTR [r9-0x30],xmm5
    8d9b:	41 0f 29 79 e0       	movaps XMMWORD PTR [r9-0x20],xmm7
    8da0:	41 0f 29 61 f0       	movaps XMMWORD PTR [r9-0x10],xmm4
    8da5:	0f 28 72 10          	movaps xmm6,XMMWORD PTR [rdx+0x10]
    8da9:	0f 10 7a 11          	movups xmm7,XMMWORD PTR [rdx+0x11]
    8dad:	66 0f 6f ee          	movdqa xmm5,xmm6
    8db1:	66 0f 73 fd 01       	pslldq xmm5,0x1
    8db6:	66 44 0f 6f ce       	movdqa xmm9,xmm6
    8dbb:	66 44 0f e0 cf       	pavgb  xmm9,xmm7
    8dc0:	66 0f 6f e5          	movdqa xmm4,xmm5
    8dc4:	66 0f e0 e7          	pavgb  xmm4,xmm7
    8dc8:	66 0f ef fd          	pxor   xmm7,xmm5
    8dcc:	66 0f db 3d 00 00 00 	pand   xmm7,XMMWORD PTR [rip+0x0]        # 8dd4 <x264_8_intra_sa8d_x9_8x8_ssse3+0x494>
    8dd3:	00 
    8dd4:	66 0f d8 e7          	psubusb xmm4,xmm7
    8dd8:	66 0f e0 f4          	pavgb  xmm6,xmm4
    8ddc:	66 0f 6f c6          	movdqa xmm0,xmm6
    8de0:	66 0f 38 00 47 c0    	pshufb xmm0,XMMWORD PTR [rdi-0x40]
    8de6:	66 0f 6f ee          	movdqa xmm5,xmm6
    8dea:	66 0f 38 00 6f d0    	pshufb xmm5,XMMWORD PTR [rdi-0x30]
    8df0:	66 0f 6f fe          	movdqa xmm7,xmm6
    8df4:	66 0f 38 00 7f e0    	pshufb xmm7,XMMWORD PTR [rdi-0x20]
    8dfa:	66 0f 6f e6          	movdqa xmm4,xmm6
    8dfe:	66 0f 38 00 67 f0    	pshufb xmm4,XMMWORD PTR [rdi-0x10]
    8e04:	49 83 c1 40          	add    r9,0x40
    8e08:	e8 93 02 00 00       	call   90a0 <x264_8_intra_sa8d_x9_8x8_ssse3+0x760>
    8e0d:	66 44 0f 38 02 d8    	phaddd xmm11,xmm0
    8e13:	66 41 0f 6f c1       	movdqa xmm0,xmm9
    8e18:	66 0f 38 00 07       	pshufb xmm0,XMMWORD PTR [rdi]
    8e1d:	66 0f 6f ee          	movdqa xmm5,xmm6
    8e21:	66 0f 38 00 6f 10    	pshufb xmm5,XMMWORD PTR [rdi+0x10]
    8e27:	66 41 0f 6f f9       	movdqa xmm7,xmm9
    8e2c:	66 0f 38 00 7f 20    	pshufb xmm7,XMMWORD PTR [rdi+0x20]
    8e32:	66 0f 6f e6          	movdqa xmm4,xmm6
    8e36:	66 0f 38 00 67 30    	pshufb xmm4,XMMWORD PTR [rdi+0x30]
    8e3c:	49 81 c1 00 01 00 00 	add    r9,0x100
    8e43:	e8 58 02 00 00       	call   90a0 <x264_8_intra_sa8d_x9_8x8_ssse3+0x760>
    8e48:	66 45 0f 38 02 d3    	phaddd xmm10,xmm11
    8e4e:	44 0f 28 e0          	movaps xmm12,xmm0
    8e52:	0f 10 7a 08          	movups xmm7,XMMWORD PTR [rdx+0x8]
    8e56:	0f 10 72 07          	movups xmm6,XMMWORD PTR [rdx+0x7]
    8e5a:	0f 10 6a 06          	movups xmm5,XMMWORD PTR [rdx+0x6]
    8e5e:	66 44 0f 6f cf       	movdqa xmm9,xmm7
    8e63:	66 44 0f e0 ce       	pavgb  xmm9,xmm6
    8e68:	66 0f 6f e5          	movdqa xmm4,xmm5
    8e6c:	66 0f e0 e7          	pavgb  xmm4,xmm7
    8e70:	66 0f ef fd          	pxor   xmm7,xmm5
    8e74:	66 0f db 3d 00 00 00 	pand   xmm7,XMMWORD PTR [rip+0x0]        # 8e7c <x264_8_intra_sa8d_x9_8x8_ssse3+0x53c>
    8e7b:	00 
    8e7c:	66 0f d8 e7          	psubusb xmm4,xmm7
    8e80:	66 0f e0 f4          	pavgb  xmm6,xmm4
    8e84:	66 0f 6f c6          	movdqa xmm0,xmm6
    8e88:	66 0f 38 00 47 40    	pshufb xmm0,XMMWORD PTR [rdi+0x40]
    8e8e:	66 0f 6f ee          	movdqa xmm5,xmm6
    8e92:	66 0f 38 00 6f 50    	pshufb xmm5,XMMWORD PTR [rdi+0x50]
    8e98:	66 0f 6f fe          	movdqa xmm7,xmm6
    8e9c:	66 0f 38 00 7f 60    	pshufb xmm7,XMMWORD PTR [rdi+0x60]
    8ea2:	66 0f 6f e6          	movdqa xmm4,xmm6
    8ea6:	66 0f 38 00 67 70    	pshufb xmm4,XMMWORD PTR [rdi+0x70]
    8eac:	49 81 e9 c0 00 00 00 	sub    r9,0xc0
    8eb3:	e8 e8 01 00 00       	call   90a0 <x264_8_intra_sa8d_x9_8x8_ssse3+0x760>
    8eb8:	44 0f 28 d8          	movaps xmm11,xmm0
    8ebc:	48 81 c7 00 01 00 00 	add    rdi,0x100
    8ec3:	41 0f 28 f9          	movaps xmm7,xmm9
    8ec7:	f2 0f 10 fe          	movsd  xmm7,xmm6
    8ecb:	66 0f 6f c7          	movdqa xmm0,xmm7
    8ecf:	66 0f 38 00 47 80    	pshufb xmm0,XMMWORD PTR [rdi-0x80]
    8ed5:	66 0f 6f ee          	movdqa xmm5,xmm6
    8ed9:	66 0f 38 00 6f 90    	pshufb xmm5,XMMWORD PTR [rdi-0x70]
    8edf:	66 0f 38 00 7f a0    	pshufb xmm7,XMMWORD PTR [rdi-0x60]
    8ee5:	66 0f 6f e6          	movdqa xmm4,xmm6
    8ee9:	66 0f 38 00 67 b0    	pshufb xmm4,XMMWORD PTR [rdi-0x50]
    8eef:	49 83 c1 40          	add    r9,0x40
    8ef3:	e8 a8 01 00 00       	call   90a0 <x264_8_intra_sa8d_x9_8x8_ssse3+0x760>
    8ef8:	66 44 0f 38 02 d8    	phaddd xmm11,xmm0
    8efe:	66 41 0f 70 f9 01    	pshufd xmm7,xmm9,0x1
    8f04:	0f 28 ee             	movaps xmm5,xmm6
    8f07:	f3 0f 10 ef          	movss  xmm5,xmm7
    8f0b:	66 41 0f 60 f1       	punpcklbw xmm6,xmm9
    8f10:	66 0f 6f c5          	movdqa xmm0,xmm5
    8f14:	66 0f 38 00 47 c0    	pshufb xmm0,XMMWORD PTR [rdi-0x40]
    8f1a:	66 0f 38 00 6f d0    	pshufb xmm5,XMMWORD PTR [rdi-0x30]
    8f20:	66 0f 6f fe          	movdqa xmm7,xmm6
    8f24:	66 0f 38 00 7f e0    	pshufb xmm7,XMMWORD PTR [rdi-0x20]
    8f2a:	66 0f 6f e6          	movdqa xmm4,xmm6
    8f2e:	66 0f 38 00 67 f0    	pshufb xmm4,XMMWORD PTR [rdi-0x10]
    8f34:	49 83 c1 40          	add    r9,0x40
    8f38:	e8 63 01 00 00       	call   90a0 <x264_8_intra_sa8d_x9_8x8_ssse3+0x760>
    8f3d:	66 41 0f 38 02 c4    	phaddd xmm0,xmm12
    8f43:	66 44 0f 38 02 d8    	phaddd xmm11,xmm0
    8f49:	66 44 0f 6e 4a 07    	movd   xmm9,DWORD PTR [rdx+0x7]
    8f4f:	66 0f 73 fe 01       	pslldq xmm6,0x1
    8f54:	66 44 0f 3a 0f ce 01 	palignr xmm9,xmm6,0x1
    8f5b:	66 41 0f 6f c1       	movdqa xmm0,xmm9
    8f60:	66 0f 38 00 07       	pshufb xmm0,XMMWORD PTR [rdi]
    8f65:	66 41 0f 6f e9       	movdqa xmm5,xmm9
    8f6a:	66 0f 38 00 6f 10    	pshufb xmm5,XMMWORD PTR [rdi+0x10]
    8f70:	66 41 0f 6f f9       	movdqa xmm7,xmm9
    8f75:	66 0f 38 00 7f 20    	pshufb xmm7,XMMWORD PTR [rdi+0x20]
    8f7b:	66 41 0f 6f e1       	movdqa xmm4,xmm9
    8f80:	66 0f 38 00 67 30    	pshufb xmm4,XMMWORD PTR [rdi+0x30]
    8f86:	49 83 e9 80          	sub    r9,0xffffffffffffff80
    8f8a:	e8 11 01 00 00       	call   90a0 <x264_8_intra_sa8d_x9_8x8_ssse3+0x760>
    8f8f:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 8f97 <x264_8_intra_sa8d_x9_8x8_ssse3+0x657>
    8f96:	00 
    8f97:	66 45 0f 38 01 d3    	phaddw xmm10,xmm11
    8f9d:	0f 12 e8             	movhlps xmm5,xmm0
    8fa0:	66 0f fd c5          	paddw  xmm0,xmm5
    8fa4:	f2 0f 70 e8 0e       	pshuflw xmm5,xmm0,0xe
    8fa9:	66 0f e3 c5          	pavgw  xmm0,xmm5
    8fad:	66 0f ef ff          	pxor   xmm7,xmm7
    8fb1:	66 44 0f e3 d7       	pavgw  xmm10,xmm7
    8fb6:	66 0f 7e c2          	movd   edx,xmm0
    8fba:	0f 10 01             	movups xmm0,XMMWORD PTR [rcx]
    8fbd:	66 41 0f fd c2       	paddw  xmm0,xmm10
    8fc2:	41 0f 29 00          	movaps XMMWORD PTR [r8],xmm0
    8fc6:	44 0f b7 49 10       	movzx  r9d,WORD PTR [rcx+0x10]
    8fcb:	44 01 ca             	add    edx,r9d
    8fce:	66 41 89 50 10       	mov    WORD PTR [r8+0x10],dx
    8fd3:	66 0f dd c0          	paddusw xmm0,xmm0
    8fd7:	66 0f fd 47 50       	paddw  xmm0,XMMWORD PTR [rdi+0x50]
    8fdc:	0f 12 e8             	movhlps xmm5,xmm0
    8fdf:	66 0f ea c5          	pminsw xmm0,xmm5
    8fe3:	f2 0f 70 e8 0e       	pshuflw xmm5,xmm0,0xe
    8fe8:	0f 28 f8             	movaps xmm7,xmm0
    8feb:	66 0f ea c5          	pminsw xmm0,xmm5
    8fef:	66 0f 65 fd          	pcmpgtw xmm7,xmm5
    8ff3:	66 0f 7e c1          	movd   ecx,xmm0
    8ff7:	66 41 0f 7e f8       	movd   r8d,xmm7
    8ffc:	81 f1 00 80 00 80    	xor    ecx,0x80008000
    9002:	41 81 e0 02 00 02 00 	and    r8d,0x20002
    9009:	0f b7 c1             	movzx  eax,cx
    900c:	45 0f b7 c8          	movzx  r9d,r8w
    9010:	c1 e9 10             	shr    ecx,0x10
    9013:	41 c1 e8 10          	shr    r8d,0x10
    9017:	41 8d 04 81          	lea    eax,[r9+rax*4]
    901b:	41 8d 4c 88 01       	lea    ecx,[r8+rcx*4+0x1]
    9020:	39 c8                	cmp    eax,ecx
    9022:	0f 4f c1             	cmovg  eax,ecx
    9025:	89 c1                	mov    ecx,eax
    9027:	83 e0 07             	and    eax,0x7
    902a:	c1 e9 03             	shr    ecx,0x3
    902d:	c1 e0 10             	shl    eax,0x10
    9030:	09 c8                	or     eax,ecx
    9032:	81 c2 00 00 08 00    	add    edx,0x80000
    9038:	66 39 d0             	cmp    ax,dx
    903b:	0f 4f c2             	cmovg  eax,edx
    903e:	89 c2                	mov    edx,eax
    9040:	c1 ea 10             	shr    edx,0x10
    9043:	c1 e2 06             	shl    edx,0x6
    9046:	48 83 ee 80          	sub    rsi,0xffffffffffffff80
    904a:	0f 28 84 14 80 00 00 	movaps xmm0,XMMWORD PTR [rsp+rdx*1+0x80]
    9051:	00 
    9052:	0f 28 ac 14 90 00 00 	movaps xmm5,XMMWORD PTR [rsp+rdx*1+0x90]
    9059:	00 
    905a:	0f 28 bc 14 a0 00 00 	movaps xmm7,XMMWORD PTR [rsp+rdx*1+0xa0]
    9061:	00 
    9062:	0f 28 a4 14 b0 00 00 	movaps xmm4,XMMWORD PTR [rsp+rdx*1+0xb0]
    9069:	00 
    906a:	66 0f d6 46 80       	movq   QWORD PTR [rsi-0x80],xmm0
    906f:	0f 17 46 c0          	movhps QWORD PTR [rsi-0x40],xmm0
    9073:	66 0f d6 6e a0       	movq   QWORD PTR [rsi-0x60],xmm5
    9078:	0f 17 6e e0          	movhps QWORD PTR [rsi-0x20],xmm5
    907c:	66 0f d6 3e          	movq   QWORD PTR [rsi],xmm7
    9080:	0f 17 7e 40          	movhps QWORD PTR [rsi+0x40],xmm7
    9084:	66 0f d6 66 20       	movq   QWORD PTR [rsi+0x20],xmm4
    9089:	0f 17 66 60          	movhps QWORD PTR [rsi+0x60],xmm4
    908d:	48 81 c4 c8 02 00 00 	add    rsp,0x2c8
    9094:	c3                   	ret    
    9095:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    909c:	00 
    909d:	0f 1f 00             	nop    DWORD PTR [rax]
    90a0:	41 0f 29 01          	movaps XMMWORD PTR [r9],xmm0
    90a4:	41 0f 29 69 10       	movaps XMMWORD PTR [r9+0x10],xmm5
    90a9:	41 0f 29 79 20       	movaps XMMWORD PTR [r9+0x20],xmm7
    90ae:	41 0f 29 61 30       	movaps XMMWORD PTR [r9+0x30],xmm4
    90b3:	f2 44 0f 12 c0       	movddup xmm8,xmm0
    90b8:	f2 0f 12 cd          	movddup xmm1,xmm5
    90bc:	f2 0f 12 d7          	movddup xmm2,xmm7
    90c0:	f2 0f 12 dc          	movddup xmm3,xmm4
    90c4:	66 0f 6d c0          	punpckhqdq xmm0,xmm0
    90c8:	66 0f 6d ed          	punpckhqdq xmm5,xmm5
    90cc:	66 0f 6d ff          	punpckhqdq xmm7,xmm7
    90d0:	66 0f 6d e4          	punpckhqdq xmm4,xmm4
    90d4:	66 45 0f 38 04 c7    	pmaddubsw xmm8,xmm15
    90da:	66 41 0f 38 04 cf    	pmaddubsw xmm1,xmm15
    90e0:	66 44 0f f9 44 24 08 	psubw  xmm8,XMMWORD PTR [rsp+0x8]
    90e7:	66 0f f9 4c 24 18    	psubw  xmm1,XMMWORD PTR [rsp+0x18]
    90ed:	66 41 0f 38 04 c7    	pmaddubsw xmm0,xmm15
    90f3:	66 41 0f 38 04 ef    	pmaddubsw xmm5,xmm15
    90f9:	66 0f f9 44 24 28    	psubw  xmm0,XMMWORD PTR [rsp+0x28]
    90ff:	66 0f f9 6c 24 38    	psubw  xmm5,XMMWORD PTR [rsp+0x38]
    9105:	66 41 0f 38 04 d7    	pmaddubsw xmm2,xmm15
    910b:	66 41 0f 38 04 df    	pmaddubsw xmm3,xmm15
    9111:	66 0f f9 54 24 48    	psubw  xmm2,XMMWORD PTR [rsp+0x48]
    9117:	66 0f f9 5c 24 58    	psubw  xmm3,XMMWORD PTR [rsp+0x58]
    911d:	66 41 0f 38 04 ff    	pmaddubsw xmm7,xmm15
    9123:	66 41 0f 38 04 e7    	pmaddubsw xmm4,xmm15
    9129:	66 0f f9 7c 24 68    	psubw  xmm7,XMMWORD PTR [rsp+0x68]
    912f:	66 0f f9 64 24 78    	psubw  xmm4,XMMWORD PTR [rsp+0x78]
    9135:	45 0f 28 e8          	movaps xmm13,xmm8
    9139:	66 44 0f fd c1       	paddw  xmm8,xmm1
    913e:	66 41 0f f9 cd       	psubw  xmm1,xmm13
    9143:	44 0f 28 e8          	movaps xmm13,xmm0
    9147:	66 0f fd c5          	paddw  xmm0,xmm5
    914b:	66 41 0f f9 ed       	psubw  xmm5,xmm13
    9150:	45 0f 28 e8          	movaps xmm13,xmm8
    9154:	66 44 0f fd c0       	paddw  xmm8,xmm0
    9159:	66 41 0f f9 c5       	psubw  xmm0,xmm13
    915e:	44 0f 28 e9          	movaps xmm13,xmm1
    9162:	66 0f fd cd          	paddw  xmm1,xmm5
    9166:	66 41 0f f9 ed       	psubw  xmm5,xmm13
    916b:	44 0f 28 ea          	movaps xmm13,xmm2
    916f:	66 0f fd d3          	paddw  xmm2,xmm3
    9173:	66 41 0f f9 dd       	psubw  xmm3,xmm13
    9178:	44 0f 28 ef          	movaps xmm13,xmm7
    917c:	66 0f fd fc          	paddw  xmm7,xmm4
    9180:	66 41 0f f9 e5       	psubw  xmm4,xmm13
    9185:	44 0f 28 ea          	movaps xmm13,xmm2
    9189:	66 0f fd d7          	paddw  xmm2,xmm7
    918d:	66 41 0f f9 fd       	psubw  xmm7,xmm13
    9192:	44 0f 28 eb          	movaps xmm13,xmm3
    9196:	66 0f fd dc          	paddw  xmm3,xmm4
    919a:	66 41 0f f9 e5       	psubw  xmm4,xmm13
    919f:	45 0f 28 e8          	movaps xmm13,xmm8
    91a3:	66 44 0f fd c2       	paddw  xmm8,xmm2
    91a8:	66 41 0f f9 d5       	psubw  xmm2,xmm13
    91ad:	44 0f 28 e9          	movaps xmm13,xmm1
    91b1:	66 0f fd cb          	paddw  xmm1,xmm3
    91b5:	66 41 0f f9 dd       	psubw  xmm3,xmm13
    91ba:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 91c2 <x264_8_intra_sa8d_x9_8x8_ssse3+0x882>
    91c1:	00 
    91c2:	44 0f 28 f2          	movaps xmm14,xmm2
    91c6:	66 0f 73 f2 20       	psllq  xmm2,0x20
    91cb:	66 45 0f db f5       	pand   xmm14,xmm13
    91d0:	66 45 0f df e8       	pandn  xmm13,xmm8
    91d5:	66 41 0f 73 d0 20    	psrlq  xmm8,0x20
    91db:	66 41 0f eb d5       	por    xmm2,xmm13
    91e0:	66 45 0f eb c6       	por    xmm8,xmm14
    91e5:	45 0f 28 e8          	movaps xmm13,xmm8
    91e9:	66 44 0f fd c2       	paddw  xmm8,xmm2
    91ee:	66 41 0f f9 d5       	psubw  xmm2,xmm13
    91f3:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 91fb <x264_8_intra_sa8d_x9_8x8_ssse3+0x8bb>
    91fa:	00 
    91fb:	44 0f 28 f3          	movaps xmm14,xmm3
    91ff:	66 0f 73 f3 20       	psllq  xmm3,0x20
    9204:	66 45 0f db f5       	pand   xmm14,xmm13
    9209:	66 44 0f df e9       	pandn  xmm13,xmm1
    920e:	66 0f 73 d1 20       	psrlq  xmm1,0x20
    9213:	66 41 0f eb dd       	por    xmm3,xmm13
    9218:	66 41 0f eb ce       	por    xmm1,xmm14
    921d:	44 0f 28 e9          	movaps xmm13,xmm1
    9221:	66 0f fd cb          	paddw  xmm1,xmm3
    9225:	66 41 0f f9 dd       	psubw  xmm3,xmm13
    922a:	44 0f 28 e8          	movaps xmm13,xmm0
    922e:	66 0f fd c7          	paddw  xmm0,xmm7
    9232:	66 41 0f f9 fd       	psubw  xmm7,xmm13
    9237:	44 0f 28 ed          	movaps xmm13,xmm5
    923b:	66 0f fd ec          	paddw  xmm5,xmm4
    923f:	66 41 0f f9 e5       	psubw  xmm4,xmm13
    9244:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 924c <x264_8_intra_sa8d_x9_8x8_ssse3+0x90c>
    924b:	00 
    924c:	44 0f 28 f7          	movaps xmm14,xmm7
    9250:	66 0f 73 f7 20       	psllq  xmm7,0x20
    9255:	66 45 0f db f5       	pand   xmm14,xmm13
    925a:	66 44 0f df e8       	pandn  xmm13,xmm0
    925f:	66 0f 73 d0 20       	psrlq  xmm0,0x20
    9264:	66 41 0f eb fd       	por    xmm7,xmm13
    9269:	66 41 0f eb c6       	por    xmm0,xmm14
    926e:	44 0f 28 e8          	movaps xmm13,xmm0
    9272:	66 0f fd c7          	paddw  xmm0,xmm7
    9276:	66 41 0f f9 fd       	psubw  xmm7,xmm13
    927b:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 9283 <x264_8_intra_sa8d_x9_8x8_ssse3+0x943>
    9282:	00 
    9283:	44 0f 28 f4          	movaps xmm14,xmm4
    9287:	66 0f 73 f4 20       	psllq  xmm4,0x20
    928c:	66 45 0f db f5       	pand   xmm14,xmm13
    9291:	66 44 0f df ed       	pandn  xmm13,xmm5
    9296:	66 0f 73 d5 20       	psrlq  xmm5,0x20
    929b:	66 41 0f eb e5       	por    xmm4,xmm13
    92a0:	66 41 0f eb ee       	por    xmm5,xmm14
    92a5:	44 0f 28 ed          	movaps xmm13,xmm5
    92a9:	66 0f fd ec          	paddw  xmm5,xmm4
    92ad:	66 41 0f f9 e5       	psubw  xmm4,xmm13
    92b2:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 92ba <x264_8_intra_sa8d_x9_8x8_ssse3+0x97a>
    92b9:	00 
    92ba:	44 0f 28 f2          	movaps xmm14,xmm2
    92be:	66 0f 72 f2 10       	pslld  xmm2,0x10
    92c3:	66 45 0f db f5       	pand   xmm14,xmm13
    92c8:	66 45 0f df e8       	pandn  xmm13,xmm8
    92cd:	66 41 0f 72 d0 10    	psrld  xmm8,0x10
    92d3:	66 41 0f eb d5       	por    xmm2,xmm13
    92d8:	66 45 0f eb c6       	por    xmm8,xmm14
    92dd:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    92e3:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    92e8:	66 44 0f ee c2       	pmaxsw xmm8,xmm2
    92ed:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 92f5 <x264_8_intra_sa8d_x9_8x8_ssse3+0x9b5>
    92f4:	00 
    92f5:	0f 28 d3             	movaps xmm2,xmm3
    92f8:	66 0f 72 f3 10       	pslld  xmm3,0x10
    92fd:	66 41 0f db d5       	pand   xmm2,xmm13
    9302:	66 44 0f df e9       	pandn  xmm13,xmm1
    9307:	66 0f 72 d1 10       	psrld  xmm1,0x10
    930c:	66 41 0f eb dd       	por    xmm3,xmm13
    9311:	66 0f eb ca          	por    xmm1,xmm2
    9315:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    931a:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    931f:	66 0f ee cb          	pmaxsw xmm1,xmm3
    9323:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 932b <x264_8_intra_sa8d_x9_8x8_ssse3+0x9eb>
    932a:	00 
    932b:	0f 28 d7             	movaps xmm2,xmm7
    932e:	66 0f 72 f7 10       	pslld  xmm7,0x10
    9333:	66 41 0f db d5       	pand   xmm2,xmm13
    9338:	66 44 0f df e8       	pandn  xmm13,xmm0
    933d:	66 0f 72 d0 10       	psrld  xmm0,0x10
    9342:	66 41 0f eb fd       	por    xmm7,xmm13
    9347:	66 0f eb c2          	por    xmm0,xmm2
    934b:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    9350:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    9355:	66 0f ee c7          	pmaxsw xmm0,xmm7
    9359:	44 0f 28 2d 00 00 00 	movaps xmm13,XMMWORD PTR [rip+0x0]        # 9361 <x264_8_intra_sa8d_x9_8x8_ssse3+0xa21>
    9360:	00 
    9361:	0f 28 d4             	movaps xmm2,xmm4
    9364:	66 0f 72 f4 10       	pslld  xmm4,0x10
    9369:	66 41 0f db d5       	pand   xmm2,xmm13
    936e:	66 44 0f df ed       	pandn  xmm13,xmm5
    9373:	66 0f 72 d5 10       	psrld  xmm5,0x10
    9378:	66 41 0f eb e5       	por    xmm4,xmm13
    937d:	66 0f eb ea          	por    xmm5,xmm2
    9381:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    9386:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    938b:	66 0f ee ec          	pmaxsw xmm5,xmm4
    938f:	66 44 0f fd c1       	paddw  xmm8,xmm1
    9394:	66 44 0f fd c0       	paddw  xmm8,xmm0
    9399:	66 41 0f 6f c0       	movdqa xmm0,xmm8
    939e:	66 0f fd c5          	paddw  xmm0,xmm5
    93a2:	c3                   	ret    
    93a3:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    93aa:	00 
    93ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000093b0 <x264_8_intra_satd_x3_4x4_ssse3>:
    93b0:	e8 4b 94 ff ff       	call   2800 <x264_8_hadamard_load>
    93b5:	0f 6e 4e 1c          	movd   mm1,DWORD PTR [rsi+0x1c]
    93b9:	0f c4 4e fe 00       	pinsrw mm1,WORD PTR [rsi-0x2],0x0
    93be:	0f c4 4e 3e 02       	pinsrw mm1,WORD PTR [rsi+0x3e],0x2
    93c3:	0f c4 4e 5e 03       	pinsrw mm1,WORD PTR [rsi+0x5e],0x3
    93c8:	0f 71 d1 08          	psrlw  mm1,0x8
    93cc:	0f 70 e9 4e          	pshufw mm5,mm1,0x4e
    93d0:	0f 38 09 2d 00 00 00 	psignw mm5,QWORD PTR [rip+0x0]        # 93d8 <x264_8_intra_satd_x3_4x4_ssse3+0x28>
    93d7:	00 
    93d8:	0f fd cd             	paddw  mm1,mm5
    93db:	0f 70 e9 b1          	pshufw mm5,mm1,0xb1
    93df:	0f 38 09 2d 00 00 00 	psignw mm5,QWORD PTR [rip+0x0]        # 93e7 <x264_8_intra_satd_x3_4x4_ssse3+0x37>
    93e6:	00 
    93e7:	0f fd cd             	paddw  mm1,mm5
    93ea:	0f 71 f1 02          	psllw  mm1,0x2
    93ee:	0f 7f 4c 24 f0       	movq   QWORD PTR [rsp-0x10],mm1
    93f3:	0f 6e 76 e0          	movd   mm6,DWORD PTR [rsi-0x20]
    93f7:	0f ef ff             	pxor   mm7,mm7
    93fa:	0f 60 f7             	punpcklbw mm6,mm7
    93fd:	0f 70 ee 4e          	pshufw mm5,mm6,0x4e
    9401:	0f 38 09 2d 00 00 00 	psignw mm5,QWORD PTR [rip+0x0]        # 9409 <x264_8_intra_satd_x3_4x4_ssse3+0x59>
    9408:	00 
    9409:	0f fd f5             	paddw  mm6,mm5
    940c:	0f 70 ee b1          	pshufw mm5,mm6,0xb1
    9410:	0f 38 09 2d 00 00 00 	psignw mm5,QWORD PTR [rip+0x0]        # 9418 <x264_8_intra_satd_x3_4x4_ssse3+0x68>
    9417:	00 
    9418:	0f fd f5             	paddw  mm6,mm5
    941b:	0f 71 f6 02          	psllw  mm6,0x2
    941f:	0f 7f 74 24 f8       	movq   QWORD PTR [rsp-0x8],mm6
    9424:	0f fd f1             	paddw  mm6,mm1
    9427:	0f e3 35 00 00 00 00 	pavgw  mm6,QWORD PTR [rip+0x0]        # 942e <x264_8_intra_satd_x3_4x4_ssse3+0x7e>
    942e:	0f db 35 00 00 00 00 	pand   mm6,QWORD PTR [rip+0x0]        # 9435 <x264_8_intra_satd_x3_4x4_ssse3+0x85>
    9435:	0f 38 1d cb          	pabsw  mm1,mm3
    9439:	0f 38 1d ec          	pabsw  mm5,mm4
    943d:	0f 38 1d fa          	pabsw  mm7,mm2
    9441:	0f fd cd             	paddw  mm1,mm5
    9444:	0f fd f9             	paddw  mm7,mm1
    9447:	0f 6f 4c 24 f0       	movq   mm1,QWORD PTR [rsp-0x10]
    944c:	0f 6f ee             	movq   mm5,mm6
    944f:	0f f9 c8             	psubw  mm1,mm0
    9452:	0f f9 e8             	psubw  mm5,mm0
    9455:	0f 61 c3             	punpcklwd mm0,mm3
    9458:	0f 61 e2             	punpcklwd mm4,mm2
    945b:	0f 62 c4             	punpckldq mm0,mm4
    945e:	0f f9 44 24 f8       	psubw  mm0,QWORD PTR [rsp-0x8]
    9463:	0f 38 1d c9          	pabsw  mm1,mm1
    9467:	0f 38 1d ed          	pabsw  mm5,mm5
    946b:	0f 38 1d c0          	pabsw  mm0,mm0
    946f:	0f fd cf             	paddw  mm1,mm7
    9472:	0f fd ef             	paddw  mm5,mm7
    9475:	0f 6f dd             	movq   mm3,mm5
    9478:	0f 73 d3 10          	psrlq  mm3,0x10
    947c:	0f fd c3             	paddw  mm0,mm3
    947f:	0f ef f6             	pxor   mm6,mm6
    9482:	0f 70 d8 4e          	pshufw mm3,mm0,0x4e
    9486:	0f 70 e1 4e          	pshufw mm4,mm1,0x4e
    948a:	0f 70 d5 4e          	pshufw mm2,mm5,0x4e
    948e:	0f fd c3             	paddw  mm0,mm3
    9491:	0f fd cc             	paddw  mm1,mm4
    9494:	0f fd ea             	paddw  mm5,mm2
    9497:	0f 61 c6             	punpcklwd mm0,mm6
    949a:	0f 61 ce             	punpcklwd mm1,mm6
    949d:	0f 61 ee             	punpcklwd mm5,mm6
    94a0:	0f 70 d8 4e          	pshufw mm3,mm0,0x4e
    94a4:	0f 70 e1 4e          	pshufw mm4,mm1,0x4e
    94a8:	0f 70 d5 4e          	pshufw mm2,mm5,0x4e
    94ac:	0f e3 c3             	pavgw  mm0,mm3
    94af:	0f e3 cc             	pavgw  mm1,mm4
    94b2:	0f e3 ea             	pavgw  mm5,mm2
    94b5:	0f 7e 02             	movd   DWORD PTR [rdx],mm0
    94b8:	0f 7e 4a 04          	movd   DWORD PTR [rdx+0x4],mm1
    94bc:	0f 7e 6a 08          	movd   DWORD PTR [rdx+0x8],mm5
    94c0:	c3                   	ret    
    94c1:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    94c8:	00 
    94c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000094d0 <x264_8_intra_satd_x3_16x16_ssse3>:
    94d0:	48 83 ec 78          	sub    rsp,0x78
    94d4:	0f ef ff             	pxor   mm7,mm7
    94d7:	0f 7f 7c 24 40       	movq   QWORD PTR [rsp+0x40],mm7
    94dc:	0f 7f 7c 24 48       	movq   QWORD PTR [rsp+0x48],mm7
    94e1:	0f 7f 7c 24 50       	movq   QWORD PTR [rsp+0x50],mm7
    94e6:	b9 0c 00 00 00       	mov    ecx,0xc
    94eb:	0f 6e 35 00 00 00 00 	movd   mm6,DWORD PTR [rip+0x0]        # 94f2 <x264_8_intra_satd_x3_16x16_ssse3+0x22>
    94f2:	c1 e1 05             	shl    ecx,0x5
    94f5:	0f 6e 44 31 1c       	movd   mm0,DWORD PTR [rcx+rsi*1+0x1c]
    94fa:	0f c4 44 31 fe 00    	pinsrw mm0,WORD PTR [rcx+rsi*1-0x2],0x0
    9500:	0f c4 44 31 3e 02    	pinsrw mm0,WORD PTR [rcx+rsi*1+0x3e],0x2
    9506:	0f c4 44 31 5e 03    	pinsrw mm0,WORD PTR [rcx+rsi*1+0x5e],0x3
    950c:	0f 71 d0 08          	psrlw  mm0,0x8
    9510:	c1 e9 05             	shr    ecx,0x5
    9513:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    9517:	0f 38 09 0d 00 00 00 	psignw mm1,QWORD PTR [rip+0x0]        # 951f <x264_8_intra_satd_x3_16x16_ssse3+0x4f>
    951e:	00 
    951f:	0f fd c1             	paddw  mm0,mm1
    9522:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    9526:	0f 38 09 0d 00 00 00 	psignw mm1,QWORD PTR [rip+0x0]        # 952e <x264_8_intra_satd_x3_16x16_ssse3+0x5e>
    952d:	00 
    952e:	0f fd c1             	paddw  mm0,mm1
    9531:	0f 71 f0 02          	psllw  mm0,0x2
    9535:	0f 7f 04 4c          	movq   QWORD PTR [rsp+rcx*2],mm0
    9539:	0f 6e 4c 0e e0       	movd   mm1,DWORD PTR [rsi+rcx*1-0x20]
    953e:	0f ef db             	pxor   mm3,mm3
    9541:	0f 60 cb             	punpcklbw mm1,mm3
    9544:	0f 70 d1 4e          	pshufw mm2,mm1,0x4e
    9548:	0f 38 09 15 00 00 00 	psignw mm2,QWORD PTR [rip+0x0]        # 9550 <x264_8_intra_satd_x3_16x16_ssse3+0x80>
    954f:	00 
    9550:	0f fd ca             	paddw  mm1,mm2
    9553:	0f 70 d1 b1          	pshufw mm2,mm1,0xb1
    9557:	0f 38 09 15 00 00 00 	psignw mm2,QWORD PTR [rip+0x0]        # 955f <x264_8_intra_satd_x3_16x16_ssse3+0x8f>
    955e:	00 
    955f:	0f fd ca             	paddw  mm1,mm2
    9562:	0f 71 f1 02          	psllw  mm1,0x2
    9566:	0f 7f 4c 4c 20       	movq   QWORD PTR [rsp+rcx*2+0x20],mm1
    956b:	0f e3 c1             	pavgw  mm0,mm1
    956e:	0f fd f0             	paddw  mm6,mm0
    9571:	83 e9 04             	sub    ecx,0x4
    9574:	0f 8d 78 ff ff ff    	jge    94f2 <x264_8_intra_satd_x3_16x16_ssse3+0x22>
    957a:	0f 71 d6 02          	psrlw  mm6,0x2
    957e:	0f db 35 00 00 00 00 	pand   mm6,QWORD PTR [rip+0x0]        # 9585 <x264_8_intra_satd_x3_16x16_ssse3+0xb5>
    9585:	48 c7 c1 fc ff ff ff 	mov    rcx,0xfffffffffffffffc
    958c:	49 c7 c0 fc ff ff ff 	mov    r8,0xfffffffffffffffc
    9593:	e8 68 92 ff ff       	call   2800 <x264_8_hadamard_load>
    9598:	0f 38 1d cb          	pabsw  mm1,mm3
    959c:	0f 38 1d ec          	pabsw  mm5,mm4
    95a0:	0f 38 1d fa          	pabsw  mm7,mm2
    95a4:	0f fd cd             	paddw  mm1,mm5
    95a7:	0f fd f9             	paddw  mm7,mm1
    95aa:	0f 6f 4c cc 20       	movq   mm1,QWORD PTR [rsp+rcx*8+0x20]
    95af:	0f 6f ee             	movq   mm5,mm6
    95b2:	0f f9 c8             	psubw  mm1,mm0
    95b5:	0f f9 e8             	psubw  mm5,mm0
    95b8:	0f 61 c3             	punpcklwd mm0,mm3
    95bb:	0f 61 e2             	punpcklwd mm4,mm2
    95be:	0f 62 c4             	punpckldq mm0,mm4
    95c1:	42 0f f9 44 c4 40    	psubw  mm0,QWORD PTR [rsp+r8*8+0x40]
    95c7:	0f 38 1d c9          	pabsw  mm1,mm1
    95cb:	0f 38 1d ed          	pabsw  mm5,mm5
    95cf:	0f 38 1d c0          	pabsw  mm0,mm0
    95d3:	0f e3 cf             	pavgw  mm1,mm7
    95d6:	0f e3 ef             	pavgw  mm5,mm7
    95d9:	0f fd 44 24 40       	paddw  mm0,QWORD PTR [rsp+0x40]
    95de:	0f fd 4c 24 48       	paddw  mm1,QWORD PTR [rsp+0x48]
    95e3:	0f fd 6c 24 50       	paddw  mm5,QWORD PTR [rsp+0x50]
    95e8:	0f 7f 44 24 40       	movq   QWORD PTR [rsp+0x40],mm0
    95ed:	0f 7f 4c 24 48       	movq   QWORD PTR [rsp+0x48],mm1
    95f2:	0f 7f 6c 24 50       	movq   QWORD PTR [rsp+0x50],mm5
    95f7:	48 83 c7 04          	add    rdi,0x4
    95fb:	49 ff c0             	inc    r8
    95fe:	7c 93                	jl     9593 <x264_8_intra_satd_x3_16x16_ssse3+0xc3>
    9600:	48 83 c7 30          	add    rdi,0x30
    9604:	48 ff c1             	inc    rcx
    9607:	7c 83                	jl     958c <x264_8_intra_satd_x3_16x16_ssse3+0xbc>
    9609:	0f 6f fd             	movq   mm7,mm5
    960c:	0f ef f6             	pxor   mm6,mm6
    960f:	0f 70 d0 4e          	pshufw mm2,mm0,0x4e
    9613:	0f 70 d9 4e          	pshufw mm3,mm1,0x4e
    9617:	0f 70 e5 4e          	pshufw mm4,mm5,0x4e
    961b:	0f fd c2             	paddw  mm0,mm2
    961e:	0f fd cb             	paddw  mm1,mm3
    9621:	0f fd ec             	paddw  mm5,mm4
    9624:	0f 61 c6             	punpcklwd mm0,mm6
    9627:	0f 61 ce             	punpcklwd mm1,mm6
    962a:	0f 61 ee             	punpcklwd mm5,mm6
    962d:	0f 70 d0 4e          	pshufw mm2,mm0,0x4e
    9631:	0f 70 d9 4e          	pshufw mm3,mm1,0x4e
    9635:	0f 70 e5 4e          	pshufw mm4,mm5,0x4e
    9639:	0f fe c2             	paddd  mm0,mm2
    963c:	0f fe cb             	paddd  mm1,mm3
    963f:	0f fe ec             	paddd  mm5,mm4
    9642:	0f 72 d0 01          	psrld  mm0,0x1
    9646:	0f 72 f7 10          	pslld  mm7,0x10
    964a:	0f 72 d7 10          	psrld  mm7,0x10
    964e:	0f fe c5             	paddd  mm0,mm5
    9651:	0f fa c7             	psubd  mm0,mm7
    9654:	0f 7e 6a 08          	movd   DWORD PTR [rdx+0x8],mm5
    9658:	0f 7e 4a 04          	movd   DWORD PTR [rdx+0x4],mm1
    965c:	0f 7e 02             	movd   DWORD PTR [rdx],mm0
    965f:	48 83 c4 78          	add    rsp,0x78
    9663:	c3                   	ret    
    9664:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    966b:	00 
    966c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000009670 <x264_8_intra_satd_x3_8x8c_ssse3>:
    9670:	48 83 ec 48          	sub    rsp,0x48
    9674:	0f ef ff             	pxor   mm7,mm7
    9677:	0f 7f 7c 24 30       	movq   QWORD PTR [rsp+0x30],mm7
    967c:	0f 7f 7c 24 38       	movq   QWORD PTR [rsp+0x38],mm7
    9681:	0f 7f 7c 24 40       	movq   QWORD PTR [rsp+0x40],mm7
    9686:	b9 04 00 00 00       	mov    ecx,0x4
    968b:	c1 e1 05             	shl    ecx,0x5
    968e:	0f 6e 44 31 1c       	movd   mm0,DWORD PTR [rcx+rsi*1+0x1c]
    9693:	0f c4 44 31 fe 00    	pinsrw mm0,WORD PTR [rcx+rsi*1-0x2],0x0
    9699:	0f c4 44 31 3e 02    	pinsrw mm0,WORD PTR [rcx+rsi*1+0x3e],0x2
    969f:	0f c4 44 31 5e 03    	pinsrw mm0,WORD PTR [rcx+rsi*1+0x5e],0x3
    96a5:	0f 71 d0 08          	psrlw  mm0,0x8
    96a9:	c1 e9 05             	shr    ecx,0x5
    96ac:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    96b0:	0f 38 09 0d 00 00 00 	psignw mm1,QWORD PTR [rip+0x0]        # 96b8 <x264_8_intra_satd_x3_8x8c_ssse3+0x48>
    96b7:	00 
    96b8:	0f fd c1             	paddw  mm0,mm1
    96bb:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    96bf:	0f 38 09 0d 00 00 00 	psignw mm1,QWORD PTR [rip+0x0]        # 96c7 <x264_8_intra_satd_x3_8x8c_ssse3+0x57>
    96c6:	00 
    96c7:	0f fd c1             	paddw  mm0,mm1
    96ca:	0f 71 f0 02          	psllw  mm0,0x2
    96ce:	0f 7f 04 4c          	movq   QWORD PTR [rsp+rcx*2],mm0
    96d2:	0f 6e 44 0e e0       	movd   mm0,DWORD PTR [rsi+rcx*1-0x20]
    96d7:	0f ef d2             	pxor   mm2,mm2
    96da:	0f 60 c2             	punpcklbw mm0,mm2
    96dd:	0f 70 c8 4e          	pshufw mm1,mm0,0x4e
    96e1:	0f 38 09 0d 00 00 00 	psignw mm1,QWORD PTR [rip+0x0]        # 96e9 <x264_8_intra_satd_x3_8x8c_ssse3+0x79>
    96e8:	00 
    96e9:	0f fd c1             	paddw  mm0,mm1
    96ec:	0f 70 c8 b1          	pshufw mm1,mm0,0xb1
    96f0:	0f 38 09 0d 00 00 00 	psignw mm1,QWORD PTR [rip+0x0]        # 96f8 <x264_8_intra_satd_x3_8x8c_ssse3+0x88>
    96f7:	00 
    96f8:	0f fd c1             	paddw  mm0,mm1
    96fb:	0f 71 f0 02          	psllw  mm0,0x2
    96ff:	0f 7f 44 4c 10       	movq   QWORD PTR [rsp+rcx*2+0x10],mm0
    9704:	83 e9 04             	sub    ecx,0x4
    9707:	7d 82                	jge    968b <x264_8_intra_satd_x3_8x8c_ssse3+0x1b>
    9709:	0f b7 04 24          	movzx  eax,WORD PTR [rsp]
    970d:	0f b7 4c 24 10       	movzx  ecx,WORD PTR [rsp+0x10]
    9712:	44 0f b7 44 24 08    	movzx  r8d,WORD PTR [rsp+0x8]
    9718:	44 0f b7 4c 24 18    	movzx  r9d,WORD PTR [rsp+0x18]
    971e:	8d 44 08 10          	lea    eax,[rax+rcx*1+0x10]
    9722:	43 8d 4c 08 10       	lea    ecx,[r8+r9*1+0x10]
    9727:	d1 e8                	shr    eax,1
    9729:	d1 e9                	shr    ecx,1
    972b:	41 83 c0 08          	add    r8d,0x8
    972f:	41 83 c1 08          	add    r9d,0x8
    9733:	83 e0 f0             	and    eax,0xfffffff0
    9736:	83 e1 f0             	and    ecx,0xfffffff0
    9739:	41 83 e0 f0          	and    r8d,0xfffffff0
    973d:	41 83 e1 f0          	and    r9d,0xfffffff0
    9741:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
    9745:	44 89 4c 24 24       	mov    DWORD PTR [rsp+0x24],r9d
    974a:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    974f:	89 4c 24 2c          	mov    DWORD PTR [rsp+0x2c],ecx
    9753:	4c 8d 4c 24 20       	lea    r9,[rsp+0x20]
    9758:	48 c7 c1 fe ff ff ff 	mov    rcx,0xfffffffffffffffe
    975f:	49 c7 c0 fe ff ff ff 	mov    r8,0xfffffffffffffffe
    9766:	e8 95 90 ff ff       	call   2800 <x264_8_hadamard_load>
    976b:	0f 38 1d cb          	pabsw  mm1,mm3
    976f:	0f 38 1d ec          	pabsw  mm5,mm4
    9773:	0f 38 1d fa          	pabsw  mm7,mm2
    9777:	0f fd cd             	paddw  mm1,mm5
    977a:	0f fd f9             	paddw  mm7,mm1
    977d:	0f 6f 4c cc 10       	movq   mm1,QWORD PTR [rsp+rcx*8+0x10]
    9782:	43 0f 6e 6c 81 08    	movd   mm5,DWORD PTR [r9+r8*4+0x8]
    9788:	0f f9 c8             	psubw  mm1,mm0
    978b:	0f f9 e8             	psubw  mm5,mm0
    978e:	0f 61 c3             	punpcklwd mm0,mm3
    9791:	0f 61 e2             	punpcklwd mm4,mm2
    9794:	0f 62 c4             	punpckldq mm0,mm4
    9797:	42 0f f9 44 c4 20    	psubw  mm0,QWORD PTR [rsp+r8*8+0x20]
    979d:	0f 38 1d c9          	pabsw  mm1,mm1
    97a1:	0f 38 1d ed          	pabsw  mm5,mm5
    97a5:	0f 38 1d c0          	pabsw  mm0,mm0
    97a9:	0f e3 cf             	pavgw  mm1,mm7
    97ac:	0f e3 ef             	pavgw  mm5,mm7
    97af:	0f fd 44 24 40       	paddw  mm0,QWORD PTR [rsp+0x40]
    97b4:	0f fd 4c 24 38       	paddw  mm1,QWORD PTR [rsp+0x38]
    97b9:	0f fd 6c 24 30       	paddw  mm5,QWORD PTR [rsp+0x30]
    97be:	0f 7f 44 24 40       	movq   QWORD PTR [rsp+0x40],mm0
    97c3:	0f 7f 4c 24 38       	movq   QWORD PTR [rsp+0x38],mm1
    97c8:	0f 7f 6c 24 30       	movq   QWORD PTR [rsp+0x30],mm5
    97cd:	48 83 c7 04          	add    rdi,0x4
    97d1:	49 ff c0             	inc    r8
    97d4:	7c 90                	jl     9766 <x264_8_intra_satd_x3_8x8c_ssse3+0xf6>
    97d6:	48 83 c7 38          	add    rdi,0x38
    97da:	49 83 c1 08          	add    r9,0x8
    97de:	48 ff c1             	inc    rcx
    97e1:	0f 8c 78 ff ff ff    	jl     975f <x264_8_intra_satd_x3_8x8c_ssse3+0xef>
    97e7:	0f 6f 44 24 30       	movq   mm0,QWORD PTR [rsp+0x30]
    97ec:	0f 6f 5c 24 38       	movq   mm3,QWORD PTR [rsp+0x38]
    97f1:	0f 6f 64 24 40       	movq   mm4,QWORD PTR [rsp+0x40]
    97f6:	0f 6f f8             	movq   mm7,mm0
    97f9:	0f 73 d7 0f          	psrlq  mm7,0xf
    97fd:	0f fd e7             	paddw  mm4,mm7
    9800:	0f ef f6             	pxor   mm6,mm6
    9803:	0f 70 d0 4e          	pshufw mm2,mm0,0x4e
    9807:	0f 70 cb 4e          	pshufw mm1,mm3,0x4e
    980b:	0f 70 ec 4e          	pshufw mm5,mm4,0x4e
    980f:	0f fd c2             	paddw  mm0,mm2
    9812:	0f fd d9             	paddw  mm3,mm1
    9815:	0f fd e5             	paddw  mm4,mm5
    9818:	0f 61 c6             	punpcklwd mm0,mm6
    981b:	0f 61 de             	punpcklwd mm3,mm6
    981e:	0f 61 e6             	punpcklwd mm4,mm6
    9821:	0f 70 d0 4e          	pshufw mm2,mm0,0x4e
    9825:	0f 70 cb 4e          	pshufw mm1,mm3,0x4e
    9829:	0f 70 ec 4e          	pshufw mm5,mm4,0x4e
    982d:	0f fe c2             	paddd  mm0,mm2
    9830:	0f fe d9             	paddd  mm3,mm1
    9833:	0f fe e5             	paddd  mm4,mm5
    9836:	0f 72 d4 01          	psrld  mm4,0x1
    983a:	0f 7e 02             	movd   DWORD PTR [rdx],mm0
    983d:	0f 7e 5a 04          	movd   DWORD PTR [rdx+0x4],mm3
    9841:	0f 7e 62 08          	movd   DWORD PTR [rdx+0x8],mm4
    9845:	48 83 c4 48          	add    rsp,0x48
    9849:	c3                   	ret    
    984a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000009850 <x264_8_pixel_satd_4x4_sse4>:
    9850:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    9854:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    9858:	66 0f 6f 25 00 00 00 	movdqa xmm4,XMMWORD PTR [rip+0x0]        # 9860 <x264_8_pixel_satd_4x4_sse4+0x10>
    985f:	00 
    9860:	66 0f 6e 12          	movd   xmm2,DWORD PTR [rdx]
    9864:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    9869:	0f c6 d5 00          	shufps xmm2,xmm5,0x0
    986d:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    9872:	66 42 0f 6e 2c 0a    	movd   xmm5,DWORD PTR [rdx+r9*1]
    9878:	0f c6 dd 00          	shufps xmm3,xmm5,0x0
    987c:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    9880:	66 0f 6e 2c 37       	movd   xmm5,DWORD PTR [rdi+rsi*1]
    9885:	0f c6 c5 00          	shufps xmm0,xmm5,0x0
    9889:	66 0f 6e 0c 77       	movd   xmm1,DWORD PTR [rdi+rsi*2]
    988e:	66 42 0f 6e 2c 07    	movd   xmm5,DWORD PTR [rdi+r8*1]
    9894:	0f c6 cd 00          	shufps xmm1,xmm5,0x0
    9898:	66 0f 38 04 d4       	pmaddubsw xmm2,xmm4
    989d:	66 0f 38 04 c4       	pmaddubsw xmm0,xmm4
    98a2:	66 0f 38 04 dc       	pmaddubsw xmm3,xmm4
    98a7:	66 0f 38 04 cc       	pmaddubsw xmm1,xmm4
    98ac:	66 0f f9 c2          	psubw  xmm0,xmm2
    98b0:	66 0f f9 cb          	psubw  xmm1,xmm3
    98b4:	66 0f 6f d0          	movdqa xmm2,xmm0
    98b8:	66 0f fd c1          	paddw  xmm0,xmm1
    98bc:	66 0f f9 ca          	psubw  xmm1,xmm2
    98c0:	66 0f 6f d0          	movdqa xmm2,xmm0
    98c4:	66 0f 6c c1          	punpcklqdq xmm0,xmm1
    98c8:	66 0f 6d d1          	punpckhqdq xmm2,xmm1
    98cc:	66 0f 6f c8          	movdqa xmm1,xmm0
    98d0:	66 0f fd c2          	paddw  xmm0,xmm2
    98d4:	66 0f f9 d1          	psubw  xmm2,xmm1
    98d8:	66 0f 6f c8          	movdqa xmm1,xmm0
    98dc:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
    98e2:	66 0f 72 f2 10       	pslld  xmm2,0x10
    98e7:	66 0f 72 d1 10       	psrld  xmm1,0x10
    98ec:	66 0f eb d1          	por    xmm2,xmm1
    98f0:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    98f5:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    98fa:	66 0f ee c2          	pmaxsw xmm0,xmm2
    98fe:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 9906 <x264_8_pixel_satd_4x4_sse4+0xb6>
    9905:	00 
    9906:	66 0f 70 d0 ee       	pshufd xmm2,xmm0,0xee
    990b:	66 0f fe c2          	paddd  xmm0,xmm2
    990f:	f2 0f 70 d0 4e       	pshuflw xmm2,xmm0,0x4e
    9914:	66 0f fe c2          	paddd  xmm0,xmm2
    9918:	66 0f 7e c0          	movd   eax,xmm0
    991c:	c3                   	ret    
    991d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000009920 <x264_8_pixel_satd_4x8_sse4>:
    9920:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    9924:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    9928:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # 9930 <x264_8_pixel_satd_4x8_sse4+0x10>
    992f:	00 
    9930:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    9934:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    9939:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    993e:	4c 01 ca             	add    rdx,r9
    9941:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    9945:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    994a:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    994f:	4c 01 c7             	add    rdi,r8
    9952:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    9957:	0f c6 e3 00          	shufps xmm4,xmm3,0x0
    995b:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    9960:	0f c6 c3 00          	shufps xmm0,xmm3,0x0
    9964:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    9969:	0f c6 eb 00          	shufps xmm5,xmm3,0x0
    996d:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    9972:	0f c6 cb 00          	shufps xmm1,xmm3,0x0
    9976:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    997b:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    9980:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    9985:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    998a:	66 0f f9 c4          	psubw  xmm0,xmm4
    998e:	66 0f f9 cd          	psubw  xmm1,xmm5
    9992:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    9996:	4c 01 ca             	add    rdx,r9
    9999:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    999d:	4c 01 c7             	add    rdi,r8
    99a0:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    99a4:	0f c6 f4 00          	shufps xmm6,xmm4,0x0
    99a8:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    99ac:	0f c6 d4 00          	shufps xmm2,xmm4,0x0
    99b0:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    99b5:	0f c6 ec 00          	shufps xmm5,xmm4,0x0
    99b9:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    99be:	0f c6 dc 00          	shufps xmm3,xmm4,0x0
    99c2:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    99c7:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    99cc:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    99d1:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    99d6:	66 0f f9 d6          	psubw  xmm2,xmm6
    99da:	66 0f f9 dd          	psubw  xmm3,xmm5
    99de:	66 0f 6f e0          	movdqa xmm4,xmm0
    99e2:	66 0f fd c1          	paddw  xmm0,xmm1
    99e6:	66 0f f9 cc          	psubw  xmm1,xmm4
    99ea:	66 0f 6f e2          	movdqa xmm4,xmm2
    99ee:	66 0f fd d3          	paddw  xmm2,xmm3
    99f2:	66 0f f9 dc          	psubw  xmm3,xmm4
    99f6:	66 0f 6f e0          	movdqa xmm4,xmm0
    99fa:	66 0f fd c2          	paddw  xmm0,xmm2
    99fe:	66 0f f9 d4          	psubw  xmm2,xmm4
    9a02:	66 0f 6f e1          	movdqa xmm4,xmm1
    9a06:	66 0f fd cb          	paddw  xmm1,xmm3
    9a0a:	66 0f f9 dc          	psubw  xmm3,xmm4
    9a0e:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    9a13:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    9a18:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    9a1d:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    9a22:	66 0f 6f e0          	movdqa xmm4,xmm0
    9a26:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
    9a2c:	66 0f 72 f2 10       	pslld  xmm2,0x10
    9a31:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9a36:	66 0f eb d4          	por    xmm2,xmm4
    9a3a:	66 0f ee c2          	pmaxsw xmm0,xmm2
    9a3e:	66 0f 6f e1          	movdqa xmm4,xmm1
    9a42:	66 0f 3a 0e cb aa    	pblendw xmm1,xmm3,0xaa
    9a48:	66 0f 72 f3 10       	pslld  xmm3,0x10
    9a4d:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9a52:	66 0f eb dc          	por    xmm3,xmm4
    9a56:	66 0f ee cb          	pmaxsw xmm1,xmm3
    9a5a:	66 0f fd c1          	paddw  xmm0,xmm1
    9a5e:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 9a66 <x264_8_pixel_satd_4x8_sse4+0x146>
    9a65:	00 
    9a66:	66 0f 70 c8 ee       	pshufd xmm1,xmm0,0xee
    9a6b:	66 0f fe c1          	paddd  xmm0,xmm1
    9a6f:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    9a74:	66 0f fe c1          	paddd  xmm0,xmm1
    9a78:	66 0f 7e c0          	movd   eax,xmm0
    9a7c:	c3                   	ret    
    9a7d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000009a80 <x264_8_pixel_satd_4x16_sse4>:
    9a80:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    9a84:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    9a88:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # 9a90 <x264_8_pixel_satd_4x16_sse4+0x10>
    9a8f:	00 
    9a90:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    9a94:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    9a99:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    9a9e:	4c 01 ca             	add    rdx,r9
    9aa1:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    9aa5:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    9aaa:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    9aaf:	4c 01 c7             	add    rdi,r8
    9ab2:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    9ab7:	0f c6 e3 00          	shufps xmm4,xmm3,0x0
    9abb:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    9ac0:	0f c6 c3 00          	shufps xmm0,xmm3,0x0
    9ac4:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    9ac9:	0f c6 eb 00          	shufps xmm5,xmm3,0x0
    9acd:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    9ad2:	0f c6 cb 00          	shufps xmm1,xmm3,0x0
    9ad6:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    9adb:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    9ae0:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    9ae5:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    9aea:	66 0f f9 c4          	psubw  xmm0,xmm4
    9aee:	66 0f f9 cd          	psubw  xmm1,xmm5
    9af2:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    9af6:	4c 01 ca             	add    rdx,r9
    9af9:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    9afd:	4c 01 c7             	add    rdi,r8
    9b00:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    9b04:	0f c6 f4 00          	shufps xmm6,xmm4,0x0
    9b08:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    9b0c:	0f c6 d4 00          	shufps xmm2,xmm4,0x0
    9b10:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    9b15:	0f c6 ec 00          	shufps xmm5,xmm4,0x0
    9b19:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    9b1e:	0f c6 dc 00          	shufps xmm3,xmm4,0x0
    9b22:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    9b27:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    9b2c:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    9b31:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    9b36:	66 0f f9 d6          	psubw  xmm2,xmm6
    9b3a:	66 0f f9 dd          	psubw  xmm3,xmm5
    9b3e:	66 0f 6f e0          	movdqa xmm4,xmm0
    9b42:	66 0f fd c1          	paddw  xmm0,xmm1
    9b46:	66 0f f9 cc          	psubw  xmm1,xmm4
    9b4a:	66 0f 6f e2          	movdqa xmm4,xmm2
    9b4e:	66 0f fd d3          	paddw  xmm2,xmm3
    9b52:	66 0f f9 dc          	psubw  xmm3,xmm4
    9b56:	66 0f 6f e0          	movdqa xmm4,xmm0
    9b5a:	66 0f fd c2          	paddw  xmm0,xmm2
    9b5e:	66 0f f9 d4          	psubw  xmm2,xmm4
    9b62:	66 0f 6f e1          	movdqa xmm4,xmm1
    9b66:	66 0f fd cb          	paddw  xmm1,xmm3
    9b6a:	66 0f f9 dc          	psubw  xmm3,xmm4
    9b6e:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    9b73:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    9b78:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    9b7d:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    9b82:	66 0f 6f e0          	movdqa xmm4,xmm0
    9b86:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
    9b8c:	66 0f 72 f2 10       	pslld  xmm2,0x10
    9b91:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9b96:	66 0f eb d4          	por    xmm2,xmm4
    9b9a:	66 0f ee c2          	pmaxsw xmm0,xmm2
    9b9e:	66 0f 6f e1          	movdqa xmm4,xmm1
    9ba2:	66 0f 3a 0e cb aa    	pblendw xmm1,xmm3,0xaa
    9ba8:	66 0f 72 f3 10       	pslld  xmm3,0x10
    9bad:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9bb2:	66 0f eb dc          	por    xmm3,xmm4
    9bb6:	66 0f ee cb          	pmaxsw xmm1,xmm3
    9bba:	66 0f fd c1          	paddw  xmm0,xmm1
    9bbe:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
    9bc2:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
    9bc6:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    9bca:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
    9bcf:	66 0f 6e 34 4a       	movd   xmm6,DWORD PTR [rdx+rcx*2]
    9bd4:	4c 01 ca             	add    rdx,r9
    9bd7:	66 0f 6e 3f          	movd   xmm7,DWORD PTR [rdi]
    9bdb:	66 0f 6e 0c 37       	movd   xmm1,DWORD PTR [rdi+rsi*1]
    9be0:	66 0f 6e 14 77       	movd   xmm2,DWORD PTR [rdi+rsi*2]
    9be5:	4c 01 c7             	add    rdi,r8
    9be8:	66 0f 6e 1c 0a       	movd   xmm3,DWORD PTR [rdx+rcx*1]
    9bed:	0f c6 e3 00          	shufps xmm4,xmm3,0x0
    9bf1:	66 0f 6e 1c 37       	movd   xmm3,DWORD PTR [rdi+rsi*1]
    9bf6:	0f c6 fb 00          	shufps xmm7,xmm3,0x0
    9bfa:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
    9bff:	0f c6 eb 00          	shufps xmm5,xmm3,0x0
    9c03:	66 0f 6e 1c 77       	movd   xmm3,DWORD PTR [rdi+rsi*2]
    9c08:	0f c6 cb 00          	shufps xmm1,xmm3,0x0
    9c0c:	66 0f 6f 1d 00 00 00 	movdqa xmm3,XMMWORD PTR [rip+0x0]        # 9c14 <x264_8_pixel_satd_4x16_sse4+0x194>
    9c13:	00 
    9c14:	66 0f 38 04 e3       	pmaddubsw xmm4,xmm3
    9c19:	66 0f 38 04 fb       	pmaddubsw xmm7,xmm3
    9c1e:	66 0f 38 04 eb       	pmaddubsw xmm5,xmm3
    9c23:	66 0f 38 04 cb       	pmaddubsw xmm1,xmm3
    9c28:	66 0f f9 fc          	psubw  xmm7,xmm4
    9c2c:	66 0f f9 cd          	psubw  xmm1,xmm5
    9c30:	66 0f 6e 2a          	movd   xmm5,DWORD PTR [rdx]
    9c34:	4c 01 ca             	add    rdx,r9
    9c37:	66 0f 6e 1f          	movd   xmm3,DWORD PTR [rdi]
    9c3b:	4c 01 c7             	add    rdi,r8
    9c3e:	66 0f 6e 22          	movd   xmm4,DWORD PTR [rdx]
    9c42:	0f c6 f4 00          	shufps xmm6,xmm4,0x0
    9c46:	66 0f 6e 27          	movd   xmm4,DWORD PTR [rdi]
    9c4a:	0f c6 d4 00          	shufps xmm2,xmm4,0x0
    9c4e:	66 0f 6e 24 0a       	movd   xmm4,DWORD PTR [rdx+rcx*1]
    9c53:	0f c6 ec 00          	shufps xmm5,xmm4,0x0
    9c57:	66 0f 6e 24 37       	movd   xmm4,DWORD PTR [rdi+rsi*1]
    9c5c:	0f c6 dc 00          	shufps xmm3,xmm4,0x0
    9c60:	66 0f 6f 25 00 00 00 	movdqa xmm4,XMMWORD PTR [rip+0x0]        # 9c68 <x264_8_pixel_satd_4x16_sse4+0x1e8>
    9c67:	00 
    9c68:	66 0f 38 04 f4       	pmaddubsw xmm6,xmm4
    9c6d:	66 0f 38 04 d4       	pmaddubsw xmm2,xmm4
    9c72:	66 0f 38 04 ec       	pmaddubsw xmm5,xmm4
    9c77:	66 0f 38 04 dc       	pmaddubsw xmm3,xmm4
    9c7c:	66 0f f9 d6          	psubw  xmm2,xmm6
    9c80:	66 0f f9 dd          	psubw  xmm3,xmm5
    9c84:	66 0f 6f e7          	movdqa xmm4,xmm7
    9c88:	66 0f fd f9          	paddw  xmm7,xmm1
    9c8c:	66 0f f9 cc          	psubw  xmm1,xmm4
    9c90:	66 0f 6f e2          	movdqa xmm4,xmm2
    9c94:	66 0f fd d3          	paddw  xmm2,xmm3
    9c98:	66 0f f9 dc          	psubw  xmm3,xmm4
    9c9c:	66 0f 6f e7          	movdqa xmm4,xmm7
    9ca0:	66 0f fd fa          	paddw  xmm7,xmm2
    9ca4:	66 0f f9 d4          	psubw  xmm2,xmm4
    9ca8:	66 0f 6f e1          	movdqa xmm4,xmm1
    9cac:	66 0f fd cb          	paddw  xmm1,xmm3
    9cb0:	66 0f f9 dc          	psubw  xmm3,xmm4
    9cb4:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    9cb9:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    9cbe:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    9cc3:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    9cc8:	66 0f 6f e7          	movdqa xmm4,xmm7
    9ccc:	66 0f 3a 0e fa aa    	pblendw xmm7,xmm2,0xaa
    9cd2:	66 0f 72 f2 10       	pslld  xmm2,0x10
    9cd7:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9cdc:	66 0f eb d4          	por    xmm2,xmm4
    9ce0:	66 0f ee fa          	pmaxsw xmm7,xmm2
    9ce4:	66 0f fd c7          	paddw  xmm0,xmm7
    9ce8:	66 0f 6f e1          	movdqa xmm4,xmm1
    9cec:	66 0f 3a 0e cb aa    	pblendw xmm1,xmm3,0xaa
    9cf2:	66 0f 72 f3 10       	pslld  xmm3,0x10
    9cf7:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9cfc:	66 0f eb dc          	por    xmm3,xmm4
    9d00:	66 0f ee cb          	pmaxsw xmm1,xmm3
    9d04:	66 0f fd c1          	paddw  xmm0,xmm1
    9d08:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # 9d10 <x264_8_pixel_satd_4x16_sse4+0x290>
    9d0f:	00 
    9d10:	66 0f 70 c8 ee       	pshufd xmm1,xmm0,0xee
    9d15:	66 0f fe c1          	paddd  xmm0,xmm1
    9d19:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    9d1e:	66 0f fe c1          	paddd  xmm0,xmm1
    9d22:	66 0f 7e c0          	movd   eax,xmm0
    9d26:	c3                   	ret    
    9d27:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    9d2e:	00 
    9d2f:	90                   	nop

0000000000009d30 <x264_8_pixel_satd_8x8_internal_sse4>:
    9d30:	f3 0f 7e 22          	movq   xmm4,QWORD PTR [rdx]
    9d34:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
    9d39:	66 0f 6c e4          	punpcklqdq xmm4,xmm4
    9d3d:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    9d41:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
    9d45:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
    9d4a:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    9d4f:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    9d54:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    9d59:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    9d5e:	66 0f f9 c4          	psubw  xmm0,xmm4
    9d62:	66 0f f9 cd          	psubw  xmm1,xmm5
    9d66:	f3 0f 7e 24 4a       	movq   xmm4,QWORD PTR [rdx+rcx*2]
    9d6b:	f3 42 0f 7e 2c 0a    	movq   xmm5,QWORD PTR [rdx+r9*1]
    9d71:	66 0f 6c e4          	punpcklqdq xmm4,xmm4
    9d75:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    9d7a:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
    9d7e:	f2 42 0f 12 1c 07    	movddup xmm3,QWORD PTR [rdi+r8*1]
    9d84:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    9d89:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    9d8e:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    9d93:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    9d98:	66 0f f9 d4          	psubw  xmm2,xmm4
    9d9c:	66 0f f9 dd          	psubw  xmm3,xmm5
    9da0:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    9da4:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    9da8:	66 0f 6f e0          	movdqa xmm4,xmm0
    9dac:	66 0f fd c1          	paddw  xmm0,xmm1
    9db0:	66 0f f9 cc          	psubw  xmm1,xmm4
    9db4:	66 0f 6f e2          	movdqa xmm4,xmm2
    9db8:	66 0f fd d3          	paddw  xmm2,xmm3
    9dbc:	66 0f f9 dc          	psubw  xmm3,xmm4
    9dc0:	66 0f 6f e0          	movdqa xmm4,xmm0
    9dc4:	66 0f fd c2          	paddw  xmm0,xmm2
    9dc8:	66 0f f9 d4          	psubw  xmm2,xmm4
    9dcc:	66 0f 6f e1          	movdqa xmm4,xmm1
    9dd0:	66 0f fd cb          	paddw  xmm1,xmm3
    9dd4:	66 0f f9 dc          	psubw  xmm3,xmm4
    9dd8:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    9ddd:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    9de2:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    9de7:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    9dec:	66 0f 6f e0          	movdqa xmm4,xmm0
    9df0:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
    9df6:	66 0f 72 f2 10       	pslld  xmm2,0x10
    9dfb:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9e00:	66 0f eb d4          	por    xmm2,xmm4
    9e04:	66 0f ee c2          	pmaxsw xmm0,xmm2
    9e08:	66 0f fd f0          	paddw  xmm6,xmm0
    9e0c:	66 0f 6f e1          	movdqa xmm4,xmm1
    9e10:	66 0f 3a 0e cb aa    	pblendw xmm1,xmm3,0xaa
    9e16:	66 0f 72 f3 10       	pslld  xmm3,0x10
    9e1b:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9e20:	66 0f eb dc          	por    xmm3,xmm4
    9e24:	66 0f ee cb          	pmaxsw xmm1,xmm3
    9e28:	66 0f fd f1          	paddw  xmm6,xmm1
    9e2c:	f3 0f 7e 22          	movq   xmm4,QWORD PTR [rdx]
    9e30:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
    9e35:	66 0f 6c e4          	punpcklqdq xmm4,xmm4
    9e39:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    9e3d:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
    9e41:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
    9e46:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    9e4b:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    9e50:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    9e55:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    9e5a:	66 0f f9 c4          	psubw  xmm0,xmm4
    9e5e:	66 0f f9 cd          	psubw  xmm1,xmm5
    9e62:	f3 0f 7e 24 4a       	movq   xmm4,QWORD PTR [rdx+rcx*2]
    9e67:	f3 42 0f 7e 2c 0a    	movq   xmm5,QWORD PTR [rdx+r9*1]
    9e6d:	66 0f 6c e4          	punpcklqdq xmm4,xmm4
    9e71:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    9e76:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
    9e7a:	f2 42 0f 12 1c 07    	movddup xmm3,QWORD PTR [rdi+r8*1]
    9e80:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    9e85:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    9e8a:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    9e8f:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    9e94:	66 0f f9 d4          	psubw  xmm2,xmm4
    9e98:	66 0f f9 dd          	psubw  xmm3,xmm5
    9e9c:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    9ea0:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    9ea4:	66 0f 6f e0          	movdqa xmm4,xmm0
    9ea8:	66 0f fd c1          	paddw  xmm0,xmm1
    9eac:	66 0f f9 cc          	psubw  xmm1,xmm4
    9eb0:	66 0f 6f e2          	movdqa xmm4,xmm2
    9eb4:	66 0f fd d3          	paddw  xmm2,xmm3
    9eb8:	66 0f f9 dc          	psubw  xmm3,xmm4
    9ebc:	66 0f 6f e0          	movdqa xmm4,xmm0
    9ec0:	66 0f fd c2          	paddw  xmm0,xmm2
    9ec4:	66 0f f9 d4          	psubw  xmm2,xmm4
    9ec8:	66 0f 6f e1          	movdqa xmm4,xmm1
    9ecc:	66 0f fd cb          	paddw  xmm1,xmm3
    9ed0:	66 0f f9 dc          	psubw  xmm3,xmm4
    9ed4:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    9ed9:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    9ede:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    9ee3:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    9ee8:	66 0f 6f e0          	movdqa xmm4,xmm0
    9eec:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
    9ef2:	66 0f 72 f2 10       	pslld  xmm2,0x10
    9ef7:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9efc:	66 0f eb d4          	por    xmm2,xmm4
    9f00:	66 0f ee c2          	pmaxsw xmm0,xmm2
    9f04:	66 0f fd f0          	paddw  xmm6,xmm0
    9f08:	66 0f 6f e1          	movdqa xmm4,xmm1
    9f0c:	66 0f 3a 0e cb aa    	pblendw xmm1,xmm3,0xaa
    9f12:	66 0f 72 f3 10       	pslld  xmm3,0x10
    9f17:	66 0f 72 d4 10       	psrld  xmm4,0x10
    9f1c:	66 0f eb dc          	por    xmm3,xmm4
    9f20:	66 0f ee cb          	pmaxsw xmm1,xmm3
    9f24:	66 0f fd f1          	paddw  xmm6,xmm1
    9f28:	c3                   	ret    
    9f29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000009f30 <x264_8_pixel_satd_16x4_internal_sse4>:
    9f30:	f2 0f 12 02          	movddup xmm0,QWORD PTR [rdx]
    9f34:	f2 0f 12 62 08       	movddup xmm4,QWORD PTR [rdx+0x8]
    9f39:	66 0f 6f 17          	movdqa xmm2,XMMWORD PTR [rdi]
    9f3d:	f2 0f 12 ca          	movddup xmm1,xmm2
    9f41:	66 0f 6d d2          	punpckhqdq xmm2,xmm2
    9f45:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    9f4a:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    9f4f:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    9f54:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    9f59:	66 0f f9 c1          	psubw  xmm0,xmm1
    9f5d:	66 0f f9 e2          	psubw  xmm4,xmm2
    9f61:	f2 0f 12 0c 0a       	movddup xmm1,QWORD PTR [rdx+rcx*1]
    9f66:	f2 44 0f 12 44 0a 08 	movddup xmm8,QWORD PTR [rdx+rcx*1+0x8]
    9f6d:	66 0f 6f 1c 37       	movdqa xmm3,XMMWORD PTR [rdi+rsi*1]
    9f72:	f2 0f 12 d3          	movddup xmm2,xmm3
    9f76:	66 0f 6d db          	punpckhqdq xmm3,xmm3
    9f7a:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    9f7f:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    9f84:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    9f89:	66 44 0f 38 04 c7    	pmaddubsw xmm8,xmm7
    9f8f:	66 0f f9 ca          	psubw  xmm1,xmm2
    9f93:	66 44 0f f9 c3       	psubw  xmm8,xmm3
    9f98:	f2 0f 12 14 4a       	movddup xmm2,QWORD PTR [rdx+rcx*2]
    9f9d:	f2 0f 12 6c 4a 08    	movddup xmm5,QWORD PTR [rdx+rcx*2+0x8]
    9fa3:	66 0f 6f 34 77       	movdqa xmm6,XMMWORD PTR [rdi+rsi*2]
    9fa8:	f2 0f 12 de          	movddup xmm3,xmm6
    9fac:	66 0f 6d f6          	punpckhqdq xmm6,xmm6
    9fb0:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    9fb5:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    9fba:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    9fbf:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    9fc4:	66 0f f9 d3          	psubw  xmm2,xmm3
    9fc8:	66 0f f9 ee          	psubw  xmm5,xmm6
    9fcc:	f2 42 0f 12 1c 0a    	movddup xmm3,QWORD PTR [rdx+r9*1]
    9fd2:	f2 46 0f 12 4c 0a 08 	movddup xmm9,QWORD PTR [rdx+r9*1+0x8]
    9fd9:	66 42 0f 6f 34 07    	movdqa xmm6,XMMWORD PTR [rdi+r8*1]
    9fdf:	f2 44 0f 12 de       	movddup xmm11,xmm6
    9fe4:	66 0f 6d f6          	punpckhqdq xmm6,xmm6
    9fe8:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    9fee:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    9ff3:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    9ff8:	66 44 0f 38 04 cf    	pmaddubsw xmm9,xmm7
    9ffe:	66 41 0f f9 db       	psubw  xmm3,xmm11
    a003:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    a008:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    a00c:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    a010:	66 0f 6f f0          	movdqa xmm6,xmm0
    a014:	66 0f fd c1          	paddw  xmm0,xmm1
    a018:	66 0f f9 ce          	psubw  xmm1,xmm6
    a01c:	66 0f 6f f2          	movdqa xmm6,xmm2
    a020:	66 0f fd d3          	paddw  xmm2,xmm3
    a024:	66 0f f9 de          	psubw  xmm3,xmm6
    a028:	66 0f 6f f0          	movdqa xmm6,xmm0
    a02c:	66 0f fd c2          	paddw  xmm0,xmm2
    a030:	66 0f f9 d6          	psubw  xmm2,xmm6
    a034:	66 0f 6f f1          	movdqa xmm6,xmm1
    a038:	66 0f fd cb          	paddw  xmm1,xmm3
    a03c:	66 0f f9 de          	psubw  xmm3,xmm6
    a040:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    a045:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    a04a:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    a04f:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    a054:	66 0f 6f f0          	movdqa xmm6,xmm0
    a058:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
    a05e:	66 0f 72 f2 10       	pslld  xmm2,0x10
    a063:	66 0f 72 d6 10       	psrld  xmm6,0x10
    a068:	66 0f eb d6          	por    xmm2,xmm6
    a06c:	66 0f ee c2          	pmaxsw xmm0,xmm2
    a070:	66 44 0f fd d0       	paddw  xmm10,xmm0
    a075:	66 0f 6f f1          	movdqa xmm6,xmm1
    a079:	66 0f 3a 0e cb aa    	pblendw xmm1,xmm3,0xaa
    a07f:	66 0f 72 f3 10       	pslld  xmm3,0x10
    a084:	66 0f 72 d6 10       	psrld  xmm6,0x10
    a089:	66 0f eb de          	por    xmm3,xmm6
    a08d:	66 0f ee cb          	pmaxsw xmm1,xmm3
    a091:	66 44 0f fd d1       	paddw  xmm10,xmm1
    a096:	66 0f 6f f4          	movdqa xmm6,xmm4
    a09a:	66 41 0f fd e0       	paddw  xmm4,xmm8
    a09f:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    a0a4:	66 0f 6f f5          	movdqa xmm6,xmm5
    a0a8:	66 41 0f fd e9       	paddw  xmm5,xmm9
    a0ad:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    a0b2:	66 0f 6f f4          	movdqa xmm6,xmm4
    a0b6:	66 0f fd e5          	paddw  xmm4,xmm5
    a0ba:	66 0f f9 ee          	psubw  xmm5,xmm6
    a0be:	66 41 0f 6f f0       	movdqa xmm6,xmm8
    a0c3:	66 45 0f fd c1       	paddw  xmm8,xmm9
    a0c8:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    a0cd:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    a0d2:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    a0d7:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    a0dd:	66 45 0f 38 1d c9    	pabsw  xmm9,xmm9
    a0e3:	66 0f 6f f4          	movdqa xmm6,xmm4
    a0e7:	66 0f 3a 0e e5 aa    	pblendw xmm4,xmm5,0xaa
    a0ed:	66 0f 72 f5 10       	pslld  xmm5,0x10
    a0f2:	66 0f 72 d6 10       	psrld  xmm6,0x10
    a0f7:	66 0f eb ee          	por    xmm5,xmm6
    a0fb:	66 0f ee e5          	pmaxsw xmm4,xmm5
    a0ff:	66 44 0f fd d4       	paddw  xmm10,xmm4
    a104:	66 41 0f 6f f0       	movdqa xmm6,xmm8
    a109:	66 45 0f 3a 0e c1 aa 	pblendw xmm8,xmm9,0xaa
    a110:	66 41 0f 72 f1 10    	pslld  xmm9,0x10
    a116:	66 0f 72 d6 10       	psrld  xmm6,0x10
    a11b:	66 44 0f eb ce       	por    xmm9,xmm6
    a120:	66 45 0f ee c1       	pmaxsw xmm8,xmm9
    a125:	66 45 0f fd d0       	paddw  xmm10,xmm8
    a12a:	c3                   	ret    
    a12b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000a130 <x264_8_pixel_satd_16x8_sse4>:
    a130:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # a138 <x264_8_pixel_satd_16x8_sse4+0x8>
    a137:	00 
    a138:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    a13c:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    a140:	66 45 0f ef d2       	pxor   xmm10,xmm10
    a145:	eb 28                	jmp    a16f <x264_8_pixel_satd_16x16_sse4+0x1f>
    a147:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    a14e:	00 
    a14f:	90                   	nop

000000000000a150 <x264_8_pixel_satd_16x16_sse4>:
    a150:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # a158 <x264_8_pixel_satd_16x16_sse4+0x8>
    a157:	00 
    a158:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    a15c:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    a160:	66 45 0f ef d2       	pxor   xmm10,xmm10
    a165:	e8 c6 fd ff ff       	call   9f30 <x264_8_pixel_satd_16x4_internal_sse4>
    a16a:	e8 c1 fd ff ff       	call   9f30 <x264_8_pixel_satd_16x4_internal_sse4>
    a16f:	e8 bc fd ff ff       	call   9f30 <x264_8_pixel_satd_16x4_internal_sse4>
    a174:	e8 b7 fd ff ff       	call   9f30 <x264_8_pixel_satd_16x4_internal_sse4>
    a179:	66 44 0f f5 15 00 00 	pmaddwd xmm10,XMMWORD PTR [rip+0x0]        # a182 <x264_8_pixel_satd_16x16_sse4+0x32>
    a180:	00 00 
    a182:	66 41 0f 70 fa ee    	pshufd xmm7,xmm10,0xee
    a188:	66 44 0f fe d7       	paddd  xmm10,xmm7
    a18d:	f2 41 0f 70 fa 4e    	pshuflw xmm7,xmm10,0x4e
    a193:	66 44 0f fe d7       	paddd  xmm10,xmm7
    a198:	66 44 0f 7e d0       	movd   eax,xmm10
    a19d:	c3                   	ret    
    a19e:	66 90                	xchg   ax,ax

000000000000a1a0 <x264_8_pixel_satd_8x16_sse4>:
    a1a0:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # a1a8 <x264_8_pixel_satd_8x16_sse4+0x8>
    a1a7:	00 
    a1a8:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    a1ac:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    a1b0:	66 0f ef f6          	pxor   xmm6,xmm6
    a1b4:	e8 77 fb ff ff       	call   9d30 <x264_8_pixel_satd_8x8_internal_sse4>
    a1b9:	e8 72 fb ff ff       	call   9d30 <x264_8_pixel_satd_8x8_internal_sse4>
    a1be:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # a1c6 <x264_8_pixel_satd_8x16_sse4+0x26>
    a1c5:	00 
    a1c6:	66 0f 70 fe ee       	pshufd xmm7,xmm6,0xee
    a1cb:	66 0f fe f7          	paddd  xmm6,xmm7
    a1cf:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    a1d4:	66 0f fe f7          	paddd  xmm6,xmm7
    a1d8:	66 0f 7e f0          	movd   eax,xmm6
    a1dc:	c3                   	ret    
    a1dd:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000a1e0 <x264_8_pixel_satd_8x8_sse4>:
    a1e0:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # a1e8 <x264_8_pixel_satd_8x8_sse4+0x8>
    a1e7:	00 
    a1e8:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    a1ec:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    a1f0:	66 0f ef f6          	pxor   xmm6,xmm6
    a1f4:	e8 37 fb ff ff       	call   9d30 <x264_8_pixel_satd_8x8_internal_sse4>
    a1f9:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # a201 <x264_8_pixel_satd_8x8_sse4+0x21>
    a200:	00 
    a201:	66 0f 70 fe ee       	pshufd xmm7,xmm6,0xee
    a206:	66 0f fe f7          	paddd  xmm6,xmm7
    a20a:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    a20f:	66 0f fe f7          	paddd  xmm6,xmm7
    a213:	66 0f 7e f0          	movd   eax,xmm6
    a217:	c3                   	ret    
    a218:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    a21f:	00 

000000000000a220 <x264_8_pixel_satd_8x4_sse4>:
    a220:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # a228 <x264_8_pixel_satd_8x4_sse4+0x8>
    a227:	00 
    a228:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    a22c:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    a230:	66 0f ef f6          	pxor   xmm6,xmm6
    a234:	e8 f3 fb ff ff       	call   9e2c <x264_8_pixel_satd_8x8_internal_sse4+0xfc>
    a239:	66 0f f5 35 00 00 00 	pmaddwd xmm6,XMMWORD PTR [rip+0x0]        # a241 <x264_8_pixel_satd_8x4_sse4+0x21>
    a240:	00 
    a241:	66 0f 70 fe ee       	pshufd xmm7,xmm6,0xee
    a246:	66 0f fe f7          	paddd  xmm6,xmm7
    a24a:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
    a24f:	66 0f fe f7          	paddd  xmm6,xmm7
    a253:	66 0f 7e f0          	movd   eax,xmm6
    a257:	c3                   	ret    
    a258:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    a25f:	00 

000000000000a260 <x264_8_pixel_sa8d_8x8_internal_sse4>:
    a260:	48 8d 04 b7          	lea    rax,[rdi+rsi*4]
    a264:	4c 8d 14 8a          	lea    r10,[rdx+rcx*4]
    a268:	f3 0f 7e 2a          	movq   xmm5,QWORD PTR [rdx]
    a26c:	f3 0f 7e 34 0a       	movq   xmm6,QWORD PTR [rdx+rcx*1]
    a271:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
    a275:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    a279:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
    a27d:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
    a282:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    a287:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    a28c:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    a291:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    a296:	66 0f f9 c5          	psubw  xmm0,xmm5
    a29a:	66 0f f9 ce          	psubw  xmm1,xmm6
    a29e:	f3 0f 7e 2c 4a       	movq   xmm5,QWORD PTR [rdx+rcx*2]
    a2a3:	f3 42 0f 7e 34 0a    	movq   xmm6,QWORD PTR [rdx+r9*1]
    a2a9:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
    a2ad:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    a2b2:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
    a2b6:	f2 46 0f 12 04 07    	movddup xmm8,QWORD PTR [rdi+r8*1]
    a2bc:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    a2c1:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    a2c6:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    a2cb:	66 44 0f 38 04 c7    	pmaddubsw xmm8,xmm7
    a2d1:	66 0f f9 d5          	psubw  xmm2,xmm5
    a2d5:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    a2da:	f3 45 0f 7e 1a       	movq   xmm11,QWORD PTR [r10]
    a2df:	f3 41 0f 7e 34 0a    	movq   xmm6,QWORD PTR [r10+rcx*1]
    a2e5:	66 45 0f 6c db       	punpcklqdq xmm11,xmm11
    a2ea:	f2 0f 12 20          	movddup xmm4,QWORD PTR [rax]
    a2ee:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
    a2f2:	f2 0f 12 2c 30       	movddup xmm5,QWORD PTR [rax+rsi*1]
    a2f7:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    a2fd:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    a302:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    a307:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    a30c:	66 41 0f f9 e3       	psubw  xmm4,xmm11
    a311:	66 0f f9 ee          	psubw  xmm5,xmm6
    a315:	f3 45 0f 7e 1c 4a    	movq   xmm11,QWORD PTR [r10+rcx*2]
    a31b:	f3 43 0f 7e 34 0a    	movq   xmm6,QWORD PTR [r10+r9*1]
    a321:	66 45 0f 6c db       	punpcklqdq xmm11,xmm11
    a326:	f2 0f 12 1c 70       	movddup xmm3,QWORD PTR [rax+rsi*2]
    a32b:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
    a32f:	f2 46 0f 12 0c 00    	movddup xmm9,QWORD PTR [rax+r8*1]
    a335:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    a33b:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    a340:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    a345:	66 44 0f 38 04 cf    	pmaddubsw xmm9,xmm7
    a34b:	66 41 0f f9 db       	psubw  xmm3,xmm11
    a350:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    a355:	66 0f 6f f0          	movdqa xmm6,xmm0
    a359:	66 0f fd c1          	paddw  xmm0,xmm1
    a35d:	66 0f f9 ce          	psubw  xmm1,xmm6
    a361:	66 0f 6f f2          	movdqa xmm6,xmm2
    a365:	66 41 0f fd d0       	paddw  xmm2,xmm8
    a36a:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    a36f:	66 0f 6f f0          	movdqa xmm6,xmm0
    a373:	66 0f fd c2          	paddw  xmm0,xmm2
    a377:	66 0f f9 d6          	psubw  xmm2,xmm6
    a37b:	66 0f 6f f1          	movdqa xmm6,xmm1
    a37f:	66 41 0f fd c8       	paddw  xmm1,xmm8
    a384:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    a389:	66 0f 6f f4          	movdqa xmm6,xmm4
    a38d:	66 0f fd e5          	paddw  xmm4,xmm5
    a391:	66 0f f9 ee          	psubw  xmm5,xmm6
    a395:	66 0f 6f f3          	movdqa xmm6,xmm3
    a399:	66 41 0f fd d9       	paddw  xmm3,xmm9
    a39e:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    a3a3:	66 0f 6f f4          	movdqa xmm6,xmm4
    a3a7:	66 0f fd e3          	paddw  xmm4,xmm3
    a3ab:	66 0f f9 de          	psubw  xmm3,xmm6
    a3af:	66 0f 6f f5          	movdqa xmm6,xmm5
    a3b3:	66 41 0f fd e9       	paddw  xmm5,xmm9
    a3b8:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    a3bd:	66 0f 6f f0          	movdqa xmm6,xmm0
    a3c1:	66 0f fd c4          	paddw  xmm0,xmm4
    a3c5:	66 0f f9 e6          	psubw  xmm4,xmm6
    a3c9:	66 0f 6f f1          	movdqa xmm6,xmm1
    a3cd:	66 0f fd cd          	paddw  xmm1,xmm5
    a3d1:	66 0f f9 ee          	psubw  xmm5,xmm6
    a3d5:	0f 28 f0             	movaps xmm6,xmm0
    a3d8:	0f c6 f4 dd          	shufps xmm6,xmm4,0xdd
    a3dc:	0f c6 c4 88          	shufps xmm0,xmm4,0x88
    a3e0:	66 0f 6f e0          	movdqa xmm4,xmm0
    a3e4:	66 0f fd c6          	paddw  xmm0,xmm6
    a3e8:	66 0f f9 f4          	psubw  xmm6,xmm4
    a3ec:	0f 28 e1             	movaps xmm4,xmm1
    a3ef:	0f c6 e5 dd          	shufps xmm4,xmm5,0xdd
    a3f3:	0f c6 cd 88          	shufps xmm1,xmm5,0x88
    a3f7:	66 0f 6f e9          	movdqa xmm5,xmm1
    a3fb:	66 0f fd cc          	paddw  xmm1,xmm4
    a3ff:	66 0f f9 e5          	psubw  xmm4,xmm5
    a403:	66 0f 6f ea          	movdqa xmm5,xmm2
    a407:	66 0f fd d3          	paddw  xmm2,xmm3
    a40b:	66 0f f9 dd          	psubw  xmm3,xmm5
    a40f:	66 41 0f 6f e8       	movdqa xmm5,xmm8
    a414:	66 45 0f fd c1       	paddw  xmm8,xmm9
    a419:	66 44 0f f9 cd       	psubw  xmm9,xmm5
    a41e:	0f 28 ea             	movaps xmm5,xmm2
    a421:	0f c6 eb dd          	shufps xmm5,xmm3,0xdd
    a425:	0f c6 d3 88          	shufps xmm2,xmm3,0x88
    a429:	66 0f 6f da          	movdqa xmm3,xmm2
    a42d:	66 0f fd d5          	paddw  xmm2,xmm5
    a431:	66 0f f9 eb          	psubw  xmm5,xmm3
    a435:	41 0f 28 d8          	movaps xmm3,xmm8
    a439:	41 0f c6 d9 dd       	shufps xmm3,xmm9,0xdd
    a43e:	45 0f c6 c1 88       	shufps xmm8,xmm9,0x88
    a443:	66 45 0f 6f c8       	movdqa xmm9,xmm8
    a448:	66 44 0f fd c3       	paddw  xmm8,xmm3
    a44d:	66 41 0f f9 d9       	psubw  xmm3,xmm9
    a452:	66 44 0f 6f c8       	movdqa xmm9,xmm0
    a457:	66 0f 3a 0e c6 aa    	pblendw xmm0,xmm6,0xaa
    a45d:	66 0f 72 f6 10       	pslld  xmm6,0x10
    a462:	66 41 0f 72 d1 10    	psrld  xmm9,0x10
    a468:	66 41 0f eb f1       	por    xmm6,xmm9
    a46d:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    a472:	66 0f 38 1d f6       	pabsw  xmm6,xmm6
    a477:	66 0f ee c6          	pmaxsw xmm0,xmm6
    a47b:	66 44 0f 6f c9       	movdqa xmm9,xmm1
    a480:	66 0f 3a 0e cc aa    	pblendw xmm1,xmm4,0xaa
    a486:	66 0f 72 f4 10       	pslld  xmm4,0x10
    a48b:	66 41 0f 72 d1 10    	psrld  xmm9,0x10
    a491:	66 41 0f eb e1       	por    xmm4,xmm9
    a496:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    a49b:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    a4a0:	66 0f ee cc          	pmaxsw xmm1,xmm4
    a4a4:	66 44 0f 6f ca       	movdqa xmm9,xmm2
    a4a9:	66 0f 3a 0e d5 aa    	pblendw xmm2,xmm5,0xaa
    a4af:	66 0f 72 f5 10       	pslld  xmm5,0x10
    a4b4:	66 41 0f 72 d1 10    	psrld  xmm9,0x10
    a4ba:	66 41 0f eb e9       	por    xmm5,xmm9
    a4bf:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    a4c4:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    a4c9:	66 0f ee d5          	pmaxsw xmm2,xmm5
    a4cd:	66 45 0f 6f c8       	movdqa xmm9,xmm8
    a4d2:	66 44 0f 3a 0e c3 aa 	pblendw xmm8,xmm3,0xaa
    a4d9:	66 0f 72 f3 10       	pslld  xmm3,0x10
    a4de:	66 41 0f 72 d1 10    	psrld  xmm9,0x10
    a4e4:	66 41 0f eb d9       	por    xmm3,xmm9
    a4e9:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    a4ef:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    a4f4:	66 44 0f ee c3       	pmaxsw xmm8,xmm3
    a4f9:	66 0f fd c1          	paddw  xmm0,xmm1
    a4fd:	66 0f fd c2          	paddw  xmm0,xmm2
    a501:	66 41 0f fd c0       	paddw  xmm0,xmm8
    a506:	c3                   	ret    
    a507:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    a50e:	00 
    a50f:	90                   	nop

000000000000a510 <x264_8_pixel_sa8d_8x8_sse4>:
    a510:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    a514:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    a518:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # a520 <x264_8_pixel_sa8d_8x8_sse4+0x10>
    a51f:	00 
    a520:	e8 3b fd ff ff       	call   a260 <x264_8_pixel_sa8d_8x8_internal_sse4>
    a525:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # a52d <x264_8_pixel_sa8d_8x8_sse4+0x1d>
    a52c:	00 
    a52d:	66 0f 70 c8 ee       	pshufd xmm1,xmm0,0xee
    a532:	66 0f fe c1          	paddd  xmm0,xmm1
    a536:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
    a53b:	66 0f fe c1          	paddd  xmm0,xmm1
    a53f:	66 0f 7e c0          	movd   eax,xmm0
    a543:	83 c0 01             	add    eax,0x1
    a546:	d1 e8                	shr    eax,1
    a548:	c3                   	ret    
    a549:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000a550 <x264_8_pixel_sa8d_16x16_sse4>:
    a550:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    a554:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    a558:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # a560 <x264_8_pixel_sa8d_16x16_sse4+0x10>
    a55f:	00 
    a560:	e8 fb fc ff ff       	call   a260 <x264_8_pixel_sa8d_8x8_internal_sse4>
    a565:	48 83 c2 08          	add    rdx,0x8
    a569:	48 83 c7 08          	add    rdi,0x8
    a56d:	66 44 0f 6f d0       	movdqa xmm10,xmm0
    a572:	e8 e9 fc ff ff       	call   a260 <x264_8_pixel_sa8d_8x8_internal_sse4>
    a577:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
    a57b:	48 8d 3c f7          	lea    rdi,[rdi+rsi*8]
    a57f:	66 44 0f dd d0       	paddusw xmm10,xmm0
    a584:	e8 d7 fc ff ff       	call   a260 <x264_8_pixel_sa8d_8x8_internal_sse4>
    a589:	48 83 ea 08          	sub    rdx,0x8
    a58d:	48 83 ef 08          	sub    rdi,0x8
    a591:	66 44 0f dd d0       	paddusw xmm10,xmm0
    a596:	e8 c5 fc ff ff       	call   a260 <x264_8_pixel_sa8d_8x8_internal_sse4>
    a59b:	66 44 0f dd d0       	paddusw xmm10,xmm0
    a5a0:	66 41 0f 6f ca       	movdqa xmm1,xmm10
    a5a5:	66 0f 72 d1 10       	psrld  xmm1,0x10
    a5aa:	66 41 0f 72 f2 10    	pslld  xmm10,0x10
    a5b0:	66 41 0f 72 d2 10    	psrld  xmm10,0x10
    a5b6:	66 44 0f fe d1       	paddd  xmm10,xmm1
    a5bb:	66 41 0f 70 ca ee    	pshufd xmm1,xmm10,0xee
    a5c1:	66 44 0f fe d1       	paddd  xmm10,xmm1
    a5c6:	f2 41 0f 70 ca 4e    	pshuflw xmm1,xmm10,0x4e
    a5cc:	66 44 0f fe d1       	paddd  xmm10,xmm1
    a5d1:	66 44 0f 7e d0       	movd   eax,xmm10
    a5d6:	83 c0 01             	add    eax,0x1
    a5d9:	d1 e8                	shr    eax,1
    a5db:	c3                   	ret    
    a5dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000a5e0 <x264_8_hadamard_ac_8x8_sse4>:
    a5e0:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # a5e8 <x264_8_hadamard_ac_8x8_sse4+0x8>
    a5e7:	00 
    a5e8:	f3 0f 7e 04 17       	movq   xmm0,QWORD PTR [rdi+rdx*1]
    a5ed:	f3 0f 7e 0c 37       	movq   xmm1,QWORD PTR [rdi+rsi*1]
    a5f2:	66 0f 6c c0          	punpcklqdq xmm0,xmm0
    a5f6:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    a5fb:	66 0f 6c c9          	punpcklqdq xmm1,xmm1
    a5ff:	f2 0f 12 1f          	movddup xmm3,QWORD PTR [rdi]
    a603:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    a607:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    a60c:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    a611:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    a616:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    a61b:	66 0f 6f e0          	movdqa xmm4,xmm0
    a61f:	66 0f fd c1          	paddw  xmm0,xmm1
    a623:	66 0f f9 cc          	psubw  xmm1,xmm4
    a627:	66 0f 6f e2          	movdqa xmm4,xmm2
    a62b:	66 0f fd d3          	paddw  xmm2,xmm3
    a62f:	66 0f f9 dc          	psubw  xmm3,xmm4
    a633:	66 0f 6f e0          	movdqa xmm4,xmm0
    a637:	66 0f fd c2          	paddw  xmm0,xmm2
    a63b:	66 0f f9 d4          	psubw  xmm2,xmm4
    a63f:	66 0f 6f e1          	movdqa xmm4,xmm1
    a643:	66 0f fd cb          	paddw  xmm1,xmm3
    a647:	66 0f f9 dc          	psubw  xmm3,xmm4
    a64b:	66 44 0f 6f c1       	movdqa xmm8,xmm1
    a650:	f3 0f 7e 24 17       	movq   xmm4,QWORD PTR [rdi+rdx*1]
    a655:	f3 0f 7e 2c 37       	movq   xmm5,QWORD PTR [rdi+rsi*1]
    a65a:	66 0f 6c e4          	punpcklqdq xmm4,xmm4
    a65e:	f2 0f 12 34 77       	movddup xmm6,QWORD PTR [rdi+rsi*2]
    a663:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
    a667:	f2 0f 12 0f          	movddup xmm1,QWORD PTR [rdi]
    a66b:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    a670:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    a675:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    a67a:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    a67f:	66 0f 6f fc          	movdqa xmm7,xmm4
    a683:	66 0f fd e5          	paddw  xmm4,xmm5
    a687:	66 0f f9 ef          	psubw  xmm5,xmm7
    a68b:	66 0f 6f fe          	movdqa xmm7,xmm6
    a68f:	66 0f fd f1          	paddw  xmm6,xmm1
    a693:	66 0f f9 cf          	psubw  xmm1,xmm7
    a697:	66 0f 6f fc          	movdqa xmm7,xmm4
    a69b:	66 0f fd e6          	paddw  xmm4,xmm6
    a69f:	66 0f f9 f7          	psubw  xmm6,xmm7
    a6a3:	66 0f 6f fd          	movdqa xmm7,xmm5
    a6a7:	66 0f fd e9          	paddw  xmm5,xmm1
    a6ab:	66 0f f9 cf          	psubw  xmm1,xmm7
    a6af:	66 41 0f 6f f8       	movdqa xmm7,xmm8
    a6b4:	66 44 0f 6f c6       	movdqa xmm8,xmm6
    a6b9:	66 44 0f 6f c9       	movdqa xmm9,xmm1
    a6be:	66 0f 6f f0          	movdqa xmm6,xmm0
    a6c2:	66 0f 72 d6 10       	psrld  xmm6,0x10
    a6c7:	66 0f 3a 0e f7 aa    	pblendw xmm6,xmm7,0xaa
    a6cd:	66 0f 72 f7 10       	pslld  xmm7,0x10
    a6d2:	66 0f 3a 0e f8 55    	pblendw xmm7,xmm0,0x55
    a6d8:	66 0f 6f c6          	movdqa xmm0,xmm6
    a6dc:	66 0f fd f7          	paddw  xmm6,xmm7
    a6e0:	66 0f f9 f8          	psubw  xmm7,xmm0
    a6e4:	66 0f 6f c2          	movdqa xmm0,xmm2
    a6e8:	66 0f 72 d0 10       	psrld  xmm0,0x10
    a6ed:	66 0f 3a 0e c3 aa    	pblendw xmm0,xmm3,0xaa
    a6f3:	66 0f 72 f3 10       	pslld  xmm3,0x10
    a6f8:	66 0f 3a 0e da 55    	pblendw xmm3,xmm2,0x55
    a6fe:	66 0f 6f d0          	movdqa xmm2,xmm0
    a702:	66 0f fd c3          	paddw  xmm0,xmm3
    a706:	66 0f f9 da          	psubw  xmm3,xmm2
    a70a:	66 41 0f 6f d0       	movdqa xmm2,xmm8
    a70f:	66 41 0f 6f c9       	movdqa xmm1,xmm9
    a714:	66 44 0f 6f c7       	movdqa xmm8,xmm7
    a719:	66 44 0f 6f ce       	movdqa xmm9,xmm6
    a71e:	66 0f 6f fc          	movdqa xmm7,xmm4
    a722:	66 0f 72 d7 10       	psrld  xmm7,0x10
    a727:	66 0f 3a 0e fd aa    	pblendw xmm7,xmm5,0xaa
    a72d:	66 0f 72 f5 10       	pslld  xmm5,0x10
    a732:	66 0f 3a 0e ec 55    	pblendw xmm5,xmm4,0x55
    a738:	66 0f 6f e7          	movdqa xmm4,xmm7
    a73c:	66 0f fd fd          	paddw  xmm7,xmm5
    a740:	66 0f f9 ec          	psubw  xmm5,xmm4
    a744:	66 0f 6f e2          	movdqa xmm4,xmm2
    a748:	66 0f 72 d4 10       	psrld  xmm4,0x10
    a74d:	66 0f 3a 0e e1 aa    	pblendw xmm4,xmm1,0xaa
    a753:	66 0f 72 f1 10       	pslld  xmm1,0x10
    a758:	66 0f 3a 0e ca 55    	pblendw xmm1,xmm2,0x55
    a75e:	66 0f 6f d4          	movdqa xmm2,xmm4
    a762:	66 0f fd e1          	paddw  xmm4,xmm1
    a766:	66 0f f9 ca          	psubw  xmm1,xmm2
    a76a:	66 41 0f 6f f1       	movdqa xmm6,xmm9
    a76f:	66 44 0f 6f c8       	movdqa xmm9,xmm0
    a774:	66 44 0f 6f d3       	movdqa xmm10,xmm3
    a779:	66 0f 38 1d d6       	pabsw  xmm2,xmm6
    a77e:	66 0f 38 1d c7       	pabsw  xmm0,xmm7
    a783:	66 0f 38 1d dd       	pabsw  xmm3,xmm5
    a788:	66 0f fd d0          	paddw  xmm2,xmm0
    a78c:	66 0f fd f7          	paddw  xmm6,xmm7
    a790:	66 0f fd ff          	paddw  xmm7,xmm7
    a794:	66 0f f9 fe          	psubw  xmm7,xmm6
    a798:	66 0f db 15 00 00 00 	pand   xmm2,XMMWORD PTR [rip+0x0]        # a7a0 <x264_8_hadamard_ac_8x8_sse4+0x1c0>
    a79f:	00 
    a7a0:	66 41 0f 38 1d c0    	pabsw  xmm0,xmm8
    a7a6:	66 0f fd d3          	paddw  xmm2,xmm3
    a7aa:	66 41 0f 38 1d d9    	pabsw  xmm3,xmm9
    a7b0:	66 0f fd d0          	paddw  xmm2,xmm0
    a7b4:	66 41 0f 38 1d c2    	pabsw  xmm0,xmm10
    a7ba:	66 0f fd d3          	paddw  xmm2,xmm3
    a7be:	66 0f 38 1d dc       	pabsw  xmm3,xmm4
    a7c3:	66 0f fd d0          	paddw  xmm2,xmm0
    a7c7:	66 0f 38 1d c1       	pabsw  xmm0,xmm1
    a7cc:	66 0f fd d3          	paddw  xmm2,xmm3
    a7d0:	66 0f fd d0          	paddw  xmm2,xmm0
    a7d4:	66 0f 6f d9          	movdqa xmm3,xmm1
    a7d8:	66 41 0f fd da       	paddw  xmm3,xmm10
    a7dd:	66 41 0f f9 ca       	psubw  xmm1,xmm10
    a7e2:	66 0f 7f 54 24 28    	movdqa XMMWORD PTR [rsp+0x28],xmm2
    a7e8:	66 0f 6f c4          	movdqa xmm0,xmm4
    a7ec:	66 41 0f fd c1       	paddw  xmm0,xmm9
    a7f1:	66 41 0f f9 e1       	psubw  xmm4,xmm9
    a7f6:	66 0f 6f d5          	movdqa xmm2,xmm5
    a7fa:	66 41 0f fd d0       	paddw  xmm2,xmm8
    a7ff:	66 41 0f f9 e8       	psubw  xmm5,xmm8
    a804:	66 44 0f 6f cf       	movdqa xmm9,xmm7
    a809:	0f 28 fb             	movaps xmm7,xmm3
    a80c:	0f c6 f9 dd          	shufps xmm7,xmm1,0xdd
    a810:	0f c6 d9 88          	shufps xmm3,xmm1,0x88
    a814:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    a819:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    a81e:	66 0f ee df          	pmaxsw xmm3,xmm7
    a822:	0f 28 f8             	movaps xmm7,xmm0
    a825:	0f c6 fc dd          	shufps xmm7,xmm4,0xdd
    a829:	0f c6 c4 88          	shufps xmm0,xmm4,0x88
    a82d:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    a832:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    a837:	66 0f ee c7          	pmaxsw xmm0,xmm7
    a83b:	66 41 0f 6f c9       	movdqa xmm1,xmm9
    a840:	0f 28 fa             	movaps xmm7,xmm2
    a843:	0f c6 fd dd          	shufps xmm7,xmm5,0xdd
    a847:	0f c6 d5 88          	shufps xmm2,xmm5,0x88
    a84b:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    a850:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    a855:	66 0f ee d7          	pmaxsw xmm2,xmm7
    a859:	0f 28 fe             	movaps xmm7,xmm6
    a85c:	0f c6 f9 dd          	shufps xmm7,xmm1,0xdd
    a860:	0f c6 f1 88          	shufps xmm6,xmm1,0x88
    a864:	66 0f 6f ce          	movdqa xmm1,xmm6
    a868:	66 0f fd f7          	paddw  xmm6,xmm7
    a86c:	66 0f f9 f9          	psubw  xmm7,xmm1
    a870:	66 0f fd c3          	paddw  xmm0,xmm3
    a874:	66 0f fd c2          	paddw  xmm0,xmm2
    a878:	66 0f fd c0          	paddw  xmm0,xmm0
    a87c:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    a881:	66 0f db 35 00 00 00 	pand   xmm6,XMMWORD PTR [rip+0x0]        # a889 <x264_8_hadamard_ac_8x8_sse4+0x2a9>
    a888:	00 
    a889:	66 0f 38 1d f6       	pabsw  xmm6,xmm6
    a88e:	66 0f fd c7          	paddw  xmm0,xmm7
    a892:	66 0f fd c6          	paddw  xmm0,xmm6
    a896:	66 0f 7f 44 24 18    	movdqa XMMWORD PTR [rsp+0x18],xmm0
    a89c:	c3                   	ret    
    a89d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000a8a0 <x264_8_pixel_hadamard_ac_16x16_sse4>:
    a8a0:	48 89 e1             	mov    rcx,rsp
    a8a3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    a8a7:	48 83 ec 30          	sub    rsp,0x30
    a8ab:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    a8af:	e8 2c fd ff ff       	call   a5e0 <x264_8_hadamard_ac_8x8_sse4>
    a8b4:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    a8b8:	48 83 ec 20          	sub    rsp,0x20
    a8bc:	e8 1f fd ff ff       	call   a5e0 <x264_8_hadamard_ac_8x8_sse4>
    a8c1:	48 f7 da             	neg    rdx
    a8c4:	48 83 ec 20          	sub    rsp,0x20
    a8c8:	48 8d 7c 97 08       	lea    rdi,[rdi+rdx*4+0x8]
    a8cd:	48 f7 da             	neg    rdx
    a8d0:	e8 0b fd ff ff       	call   a5e0 <x264_8_hadamard_ac_8x8_sse4>
    a8d5:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    a8d9:	48 83 ec 20          	sub    rsp,0x20
    a8dd:	e8 fe fc ff ff       	call   a5e0 <x264_8_hadamard_ac_8x8_sse4>
    a8e2:	66 0f 6f 54 24 20    	movdqa xmm2,XMMWORD PTR [rsp+0x20]
    a8e8:	66 0f dd 44 24 30    	paddusw xmm0,XMMWORD PTR [rsp+0x30]
    a8ee:	66 0f dd 54 24 40    	paddusw xmm2,XMMWORD PTR [rsp+0x40]
    a8f4:	66 0f dd 44 24 50    	paddusw xmm0,XMMWORD PTR [rsp+0x50]
    a8fa:	66 0f dd 54 24 60    	paddusw xmm2,XMMWORD PTR [rsp+0x60]
    a900:	66 0f dd 44 24 70    	paddusw xmm0,XMMWORD PTR [rsp+0x70]
    a906:	66 0f dd 94 24 80 00 	paddusw xmm2,XMMWORD PTR [rsp+0x80]
    a90d:	00 00 
    a90f:	66 0f 71 d0 01       	psrlw  xmm0,0x1
    a914:	66 0f 6f f0          	movdqa xmm6,xmm0
    a918:	66 0f 72 d6 10       	psrld  xmm6,0x10
    a91d:	66 0f 72 f0 10       	pslld  xmm0,0x10
    a922:	66 0f 72 d0 10       	psrld  xmm0,0x10
    a927:	66 0f fe c6          	paddd  xmm0,xmm6
    a92b:	66 0f 70 f0 ee       	pshufd xmm6,xmm0,0xee
    a930:	66 0f fe c6          	paddd  xmm0,xmm6
    a934:	f2 0f 70 f0 4e       	pshuflw xmm6,xmm0,0x4e
    a939:	66 0f fe c6          	paddd  xmm0,xmm6
    a93d:	66 0f f5 15 00 00 00 	pmaddwd xmm2,XMMWORD PTR [rip+0x0]        # a945 <x264_8_pixel_hadamard_ac_16x16_sse4+0xa5>
    a944:	00 
    a945:	66 0f 70 da ee       	pshufd xmm3,xmm2,0xee
    a94a:	66 0f fe d3          	paddd  xmm2,xmm3
    a94e:	f2 0f 70 da 4e       	pshuflw xmm3,xmm2,0x4e
    a953:	66 0f fe d3          	paddd  xmm2,xmm3
    a957:	66 0f 7e c2          	movd   edx,xmm0
    a95b:	66 0f 7e d0          	movd   eax,xmm2
    a95f:	d1 ea                	shr    edx,1
    a961:	d1 e8                	shr    eax,1
    a963:	48 c1 e2 20          	shl    rdx,0x20
    a967:	48 01 d0             	add    rax,rdx
    a96a:	48 89 cc             	mov    rsp,rcx
    a96d:	c3                   	ret    
    a96e:	66 90                	xchg   ax,ax

000000000000a970 <x264_8_pixel_hadamard_ac_16x8_sse4>:
    a970:	48 89 e1             	mov    rcx,rsp
    a973:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    a977:	48 83 ec 30          	sub    rsp,0x30
    a97b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    a97f:	e8 5c fc ff ff       	call   a5e0 <x264_8_hadamard_ac_8x8_sse4>
    a984:	48 f7 de             	neg    rsi
    a987:	48 83 ec 20          	sub    rsp,0x20
    a98b:	48 8d 7c b7 08       	lea    rdi,[rdi+rsi*4+0x8]
    a990:	48 f7 de             	neg    rsi
    a993:	e8 48 fc ff ff       	call   a5e0 <x264_8_hadamard_ac_8x8_sse4>
    a998:	66 0f 6f 54 24 20    	movdqa xmm2,XMMWORD PTR [rsp+0x20]
    a99e:	66 0f dd 44 24 30    	paddusw xmm0,XMMWORD PTR [rsp+0x30]
    a9a4:	66 0f dd 54 24 40    	paddusw xmm2,XMMWORD PTR [rsp+0x40]
    a9aa:	66 0f 6f f0          	movdqa xmm6,xmm0
    a9ae:	66 0f 72 d6 10       	psrld  xmm6,0x10
    a9b3:	66 0f 72 f0 10       	pslld  xmm0,0x10
    a9b8:	66 0f 72 d0 10       	psrld  xmm0,0x10
    a9bd:	66 0f fe c6          	paddd  xmm0,xmm6
    a9c1:	66 0f 70 f0 ee       	pshufd xmm6,xmm0,0xee
    a9c6:	66 0f fe c6          	paddd  xmm0,xmm6
    a9ca:	f2 0f 70 f0 4e       	pshuflw xmm6,xmm0,0x4e
    a9cf:	66 0f fe c6          	paddd  xmm0,xmm6
    a9d3:	66 0f f5 15 00 00 00 	pmaddwd xmm2,XMMWORD PTR [rip+0x0]        # a9db <x264_8_pixel_hadamard_ac_16x8_sse4+0x6b>
    a9da:	00 
    a9db:	66 0f 70 da ee       	pshufd xmm3,xmm2,0xee
    a9e0:	66 0f fe d3          	paddd  xmm2,xmm3
    a9e4:	f2 0f 70 da 4e       	pshuflw xmm3,xmm2,0x4e
    a9e9:	66 0f fe d3          	paddd  xmm2,xmm3
    a9ed:	66 0f 7e c2          	movd   edx,xmm0
    a9f1:	66 0f 7e d0          	movd   eax,xmm2
    a9f5:	c1 ea 02             	shr    edx,0x2
    a9f8:	d1 e8                	shr    eax,1
    a9fa:	48 c1 e2 20          	shl    rdx,0x20
    a9fe:	48 01 d0             	add    rax,rdx
    aa01:	48 89 cc             	mov    rsp,rcx
    aa04:	c3                   	ret    
    aa05:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    aa0c:	00 
    aa0d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000aa10 <x264_8_pixel_hadamard_ac_8x16_sse4>:
    aa10:	48 89 e1             	mov    rcx,rsp
    aa13:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    aa17:	48 83 ec 30          	sub    rsp,0x30
    aa1b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    aa1f:	e8 bc fb ff ff       	call   a5e0 <x264_8_hadamard_ac_8x8_sse4>
    aa24:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    aa28:	48 83 ec 20          	sub    rsp,0x20
    aa2c:	e8 af fb ff ff       	call   a5e0 <x264_8_hadamard_ac_8x8_sse4>
    aa31:	66 0f 6f 54 24 20    	movdqa xmm2,XMMWORD PTR [rsp+0x20]
    aa37:	66 0f dd 44 24 30    	paddusw xmm0,XMMWORD PTR [rsp+0x30]
    aa3d:	66 0f dd 54 24 40    	paddusw xmm2,XMMWORD PTR [rsp+0x40]
    aa43:	66 0f 6f f0          	movdqa xmm6,xmm0
    aa47:	66 0f 72 d6 10       	psrld  xmm6,0x10
    aa4c:	66 0f 72 f0 10       	pslld  xmm0,0x10
    aa51:	66 0f 72 d0 10       	psrld  xmm0,0x10
    aa56:	66 0f fe c6          	paddd  xmm0,xmm6
    aa5a:	66 0f 70 f0 ee       	pshufd xmm6,xmm0,0xee
    aa5f:	66 0f fe c6          	paddd  xmm0,xmm6
    aa63:	f2 0f 70 f0 4e       	pshuflw xmm6,xmm0,0x4e
    aa68:	66 0f fe c6          	paddd  xmm0,xmm6
    aa6c:	66 0f f5 15 00 00 00 	pmaddwd xmm2,XMMWORD PTR [rip+0x0]        # aa74 <x264_8_pixel_hadamard_ac_8x16_sse4+0x64>
    aa73:	00 
    aa74:	66 0f 70 da ee       	pshufd xmm3,xmm2,0xee
    aa79:	66 0f fe d3          	paddd  xmm2,xmm3
    aa7d:	f2 0f 70 da 4e       	pshuflw xmm3,xmm2,0x4e
    aa82:	66 0f fe d3          	paddd  xmm2,xmm3
    aa86:	66 0f 7e c2          	movd   edx,xmm0
    aa8a:	66 0f 7e d0          	movd   eax,xmm2
    aa8e:	c1 ea 02             	shr    edx,0x2
    aa91:	d1 e8                	shr    eax,1
    aa93:	48 c1 e2 20          	shl    rdx,0x20
    aa97:	48 01 d0             	add    rax,rdx
    aa9a:	48 89 cc             	mov    rsp,rcx
    aa9d:	c3                   	ret    
    aa9e:	66 90                	xchg   ax,ax

000000000000aaa0 <x264_8_pixel_hadamard_ac_8x8_sse4>:
    aaa0:	48 89 e1             	mov    rcx,rsp
    aaa3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    aaa7:	48 83 ec 30          	sub    rsp,0x30
    aaab:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    aaaf:	e8 2c fb ff ff       	call   a5e0 <x264_8_hadamard_ac_8x8_sse4>
    aab4:	66 0f 6f 54 24 20    	movdqa xmm2,XMMWORD PTR [rsp+0x20]
    aaba:	66 0f 6f f0          	movdqa xmm6,xmm0
    aabe:	66 0f 72 d6 10       	psrld  xmm6,0x10
    aac3:	66 0f 72 f0 10       	pslld  xmm0,0x10
    aac8:	66 0f 72 d0 10       	psrld  xmm0,0x10
    aacd:	66 0f fe c6          	paddd  xmm0,xmm6
    aad1:	66 0f 70 f0 ee       	pshufd xmm6,xmm0,0xee
    aad6:	66 0f fe c6          	paddd  xmm0,xmm6
    aada:	f2 0f 70 f0 4e       	pshuflw xmm6,xmm0,0x4e
    aadf:	66 0f fe c6          	paddd  xmm0,xmm6
    aae3:	66 0f f5 15 00 00 00 	pmaddwd xmm2,XMMWORD PTR [rip+0x0]        # aaeb <x264_8_pixel_hadamard_ac_8x8_sse4+0x4b>
    aaea:	00 
    aaeb:	66 0f 70 da ee       	pshufd xmm3,xmm2,0xee
    aaf0:	66 0f fe d3          	paddd  xmm2,xmm3
    aaf4:	f2 0f 70 da 4e       	pshuflw xmm3,xmm2,0x4e
    aaf9:	66 0f fe d3          	paddd  xmm2,xmm3
    aafd:	66 0f 7e c2          	movd   edx,xmm0
    ab01:	66 0f 7e d0          	movd   eax,xmm2
    ab05:	c1 ea 02             	shr    edx,0x2
    ab08:	d1 e8                	shr    eax,1
    ab0a:	48 c1 e2 20          	shl    rdx,0x20
    ab0e:	48 01 d0             	add    rax,rdx
    ab11:	48 89 cc             	mov    rsp,rcx
    ab14:	c3                   	ret    
    ab15:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    ab1c:	00 
    ab1d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000ab20 <x264_8_pixel_sa8d_satd_8x8_internal_sse4>:
    ab20:	f3 0f 7e 32          	movq   xmm6,QWORD PTR [rdx]
    ab24:	f3 44 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+rcx*1]
    ab2a:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
    ab2e:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    ab32:	66 45 0f 6c db       	punpcklqdq xmm11,xmm11
    ab37:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
    ab3c:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    ab41:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
    ab46:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    ab4c:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
    ab51:	66 0f f9 c6          	psubw  xmm0,xmm6
    ab55:	66 41 0f f9 cb       	psubw  xmm1,xmm11
    ab5a:	f3 0f 7e 34 4a       	movq   xmm6,QWORD PTR [rdx+rcx*2]
    ab5f:	f3 46 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+r9*1]
    ab65:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
    ab69:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
    ab6e:	66 45 0f 6c db       	punpcklqdq xmm11,xmm11
    ab73:	f2 42 0f 12 1c 07    	movddup xmm3,QWORD PTR [rdi+r8*1]
    ab79:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    ab7e:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
    ab83:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    ab89:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
    ab8e:	66 0f f9 d6          	psubw  xmm2,xmm6
    ab92:	66 41 0f f9 db       	psubw  xmm3,xmm11
    ab97:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    ab9b:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    ab9f:	66 0f 6f f0          	movdqa xmm6,xmm0
    aba3:	66 0f fd c1          	paddw  xmm0,xmm1
    aba7:	66 0f f9 ce          	psubw  xmm1,xmm6
    abab:	66 0f 6f f2          	movdqa xmm6,xmm2
    abaf:	66 0f fd d3          	paddw  xmm2,xmm3
    abb3:	66 0f f9 de          	psubw  xmm3,xmm6
    abb7:	66 0f 6f f0          	movdqa xmm6,xmm0
    abbb:	66 0f fd c2          	paddw  xmm0,xmm2
    abbf:	66 0f f9 d6          	psubw  xmm2,xmm6
    abc3:	66 0f 6f f1          	movdqa xmm6,xmm1
    abc7:	66 0f fd cb          	paddw  xmm1,xmm3
    abcb:	66 0f f9 de          	psubw  xmm3,xmm6
    abcf:	66 44 0f 38 1d e0    	pabsw  xmm12,xmm0
    abd5:	66 44 0f 38 1d f2    	pabsw  xmm14,xmm2
    abdb:	66 44 0f 38 1d e9    	pabsw  xmm13,xmm1
    abe1:	66 44 0f 38 1d fb    	pabsw  xmm15,xmm3
    abe7:	66 41 0f 6f f4       	movdqa xmm6,xmm12
    abec:	66 45 0f 3a 0e e6 aa 	pblendw xmm12,xmm14,0xaa
    abf3:	66 41 0f 72 f6 10    	pslld  xmm14,0x10
    abf9:	66 0f 72 d6 10       	psrld  xmm6,0x10
    abfe:	66 44 0f eb f6       	por    xmm14,xmm6
    ac03:	66 45 0f ee e6       	pmaxsw xmm12,xmm14
    ac08:	66 45 0f fd d4       	paddw  xmm10,xmm12
    ac0d:	66 41 0f 6f f5       	movdqa xmm6,xmm13
    ac12:	66 45 0f 3a 0e ef aa 	pblendw xmm13,xmm15,0xaa
    ac19:	66 41 0f 72 f7 10    	pslld  xmm15,0x10
    ac1f:	66 0f 72 d6 10       	psrld  xmm6,0x10
    ac24:	66 44 0f eb fe       	por    xmm15,xmm6
    ac29:	66 45 0f ee ef       	pmaxsw xmm13,xmm15
    ac2e:	66 45 0f fd d5       	paddw  xmm10,xmm13
    ac33:	f3 0f 7e 32          	movq   xmm6,QWORD PTR [rdx]
    ac37:	f3 44 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+rcx*1]
    ac3d:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
    ac41:	f2 0f 12 27          	movddup xmm4,QWORD PTR [rdi]
    ac45:	66 45 0f 6c db       	punpcklqdq xmm11,xmm11
    ac4a:	f2 0f 12 2c 37       	movddup xmm5,QWORD PTR [rdi+rsi*1]
    ac4f:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    ac54:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
    ac59:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    ac5f:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
    ac64:	66 0f f9 e6          	psubw  xmm4,xmm6
    ac68:	66 41 0f f9 eb       	psubw  xmm5,xmm11
    ac6d:	f3 0f 7e 34 4a       	movq   xmm6,QWORD PTR [rdx+rcx*2]
    ac72:	f3 46 0f 7e 1c 0a    	movq   xmm11,QWORD PTR [rdx+r9*1]
    ac78:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
    ac7c:	f2 44 0f 12 04 77    	movddup xmm8,QWORD PTR [rdi+rsi*2]
    ac82:	66 45 0f 6c db       	punpcklqdq xmm11,xmm11
    ac87:	f2 46 0f 12 0c 07    	movddup xmm9,QWORD PTR [rdi+r8*1]
    ac8d:	66 0f 38 04 f7       	pmaddubsw xmm6,xmm7
    ac92:	66 44 0f 38 04 c7    	pmaddubsw xmm8,xmm7
    ac98:	66 44 0f 38 04 df    	pmaddubsw xmm11,xmm7
    ac9e:	66 44 0f 38 04 cf    	pmaddubsw xmm9,xmm7
    aca4:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    aca9:	66 45 0f f9 cb       	psubw  xmm9,xmm11
    acae:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    acb2:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    acb6:	66 0f 6f f4          	movdqa xmm6,xmm4
    acba:	66 0f fd e5          	paddw  xmm4,xmm5
    acbe:	66 0f f9 ee          	psubw  xmm5,xmm6
    acc2:	66 41 0f 6f f0       	movdqa xmm6,xmm8
    acc7:	66 45 0f fd c1       	paddw  xmm8,xmm9
    accc:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    acd1:	66 0f 6f f4          	movdqa xmm6,xmm4
    acd5:	66 41 0f fd e0       	paddw  xmm4,xmm8
    acda:	66 44 0f f9 c6       	psubw  xmm8,xmm6
    acdf:	66 0f 6f f5          	movdqa xmm6,xmm5
    ace3:	66 41 0f fd e9       	paddw  xmm5,xmm9
    ace8:	66 44 0f f9 ce       	psubw  xmm9,xmm6
    aced:	66 44 0f 38 1d e4    	pabsw  xmm12,xmm4
    acf3:	66 45 0f 38 1d f0    	pabsw  xmm14,xmm8
    acf9:	66 44 0f 38 1d ed    	pabsw  xmm13,xmm5
    acff:	66 45 0f 38 1d f9    	pabsw  xmm15,xmm9
    ad05:	66 41 0f 6f f4       	movdqa xmm6,xmm12
    ad0a:	66 45 0f 3a 0e e6 aa 	pblendw xmm12,xmm14,0xaa
    ad11:	66 41 0f 72 f6 10    	pslld  xmm14,0x10
    ad17:	66 0f 72 d6 10       	psrld  xmm6,0x10
    ad1c:	66 44 0f eb f6       	por    xmm14,xmm6
    ad21:	66 45 0f ee e6       	pmaxsw xmm12,xmm14
    ad26:	66 45 0f fd d4       	paddw  xmm10,xmm12
    ad2b:	66 41 0f 6f f5       	movdqa xmm6,xmm13
    ad30:	66 45 0f 3a 0e ef aa 	pblendw xmm13,xmm15,0xaa
    ad37:	66 41 0f 72 f7 10    	pslld  xmm15,0x10
    ad3d:	66 0f 72 d6 10       	psrld  xmm6,0x10
    ad42:	66 44 0f eb fe       	por    xmm15,xmm6
    ad47:	66 45 0f ee ef       	pmaxsw xmm13,xmm15
    ad4c:	66 45 0f fd d5       	paddw  xmm10,xmm13
    ad51:	66 44 0f 6f e0       	movdqa xmm12,xmm0
    ad56:	66 0f fd c4          	paddw  xmm0,xmm4
    ad5a:	66 41 0f f9 e4       	psubw  xmm4,xmm12
    ad5f:	66 44 0f 6f e1       	movdqa xmm12,xmm1
    ad64:	66 0f fd cd          	paddw  xmm1,xmm5
    ad68:	66 41 0f f9 ec       	psubw  xmm5,xmm12
    ad6d:	44 0f 28 e0          	movaps xmm12,xmm0
    ad71:	44 0f c6 e4 dd       	shufps xmm12,xmm4,0xdd
    ad76:	0f c6 c4 88          	shufps xmm0,xmm4,0x88
    ad7a:	66 0f 6f e0          	movdqa xmm4,xmm0
    ad7e:	66 41 0f fd c4       	paddw  xmm0,xmm12
    ad83:	66 44 0f f9 e4       	psubw  xmm12,xmm4
    ad88:	0f 28 e1             	movaps xmm4,xmm1
    ad8b:	0f c6 e5 dd          	shufps xmm4,xmm5,0xdd
    ad8f:	0f c6 cd 88          	shufps xmm1,xmm5,0x88
    ad93:	66 0f 6f e9          	movdqa xmm5,xmm1
    ad97:	66 0f fd cc          	paddw  xmm1,xmm4
    ad9b:	66 0f f9 e5          	psubw  xmm4,xmm5
    ad9f:	66 0f 6f ea          	movdqa xmm5,xmm2
    ada3:	66 41 0f fd d0       	paddw  xmm2,xmm8
    ada8:	66 44 0f f9 c5       	psubw  xmm8,xmm5
    adad:	66 0f 6f eb          	movdqa xmm5,xmm3
    adb1:	66 41 0f fd d9       	paddw  xmm3,xmm9
    adb6:	66 44 0f f9 cd       	psubw  xmm9,xmm5
    adbb:	0f 28 ea             	movaps xmm5,xmm2
    adbe:	41 0f c6 e8 dd       	shufps xmm5,xmm8,0xdd
    adc3:	41 0f c6 d0 88       	shufps xmm2,xmm8,0x88
    adc8:	66 44 0f 6f c2       	movdqa xmm8,xmm2
    adcd:	66 0f fd d5          	paddw  xmm2,xmm5
    add1:	66 41 0f f9 e8       	psubw  xmm5,xmm8
    add6:	44 0f 28 c3          	movaps xmm8,xmm3
    adda:	45 0f c6 c1 dd       	shufps xmm8,xmm9,0xdd
    addf:	41 0f c6 d9 88       	shufps xmm3,xmm9,0x88
    ade4:	66 44 0f 6f cb       	movdqa xmm9,xmm3
    ade9:	66 41 0f fd d8       	paddw  xmm3,xmm8
    adee:	66 45 0f f9 c1       	psubw  xmm8,xmm9
    adf3:	66 44 0f 6f c8       	movdqa xmm9,xmm0
    adf8:	66 41 0f 3a 0e c4 aa 	pblendw xmm0,xmm12,0xaa
    adff:	66 41 0f 72 f4 10    	pslld  xmm12,0x10
    ae05:	66 41 0f 72 d1 10    	psrld  xmm9,0x10
    ae0b:	66 45 0f eb e1       	por    xmm12,xmm9
    ae10:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    ae15:	66 45 0f 38 1d e4    	pabsw  xmm12,xmm12
    ae1b:	66 41 0f ee c4       	pmaxsw xmm0,xmm12
    ae20:	66 44 0f 6f c9       	movdqa xmm9,xmm1
    ae25:	66 0f 3a 0e cc aa    	pblendw xmm1,xmm4,0xaa
    ae2b:	66 0f 72 f4 10       	pslld  xmm4,0x10
    ae30:	66 41 0f 72 d1 10    	psrld  xmm9,0x10
    ae36:	66 41 0f eb e1       	por    xmm4,xmm9
    ae3b:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    ae40:	66 0f 38 1d e4       	pabsw  xmm4,xmm4
    ae45:	66 0f ee cc          	pmaxsw xmm1,xmm4
    ae49:	66 44 0f 6f ca       	movdqa xmm9,xmm2
    ae4e:	66 0f 3a 0e d5 aa    	pblendw xmm2,xmm5,0xaa
    ae54:	66 0f 72 f5 10       	pslld  xmm5,0x10
    ae59:	66 41 0f 72 d1 10    	psrld  xmm9,0x10
    ae5f:	66 41 0f eb e9       	por    xmm5,xmm9
    ae64:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    ae69:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    ae6e:	66 0f ee d5          	pmaxsw xmm2,xmm5
    ae72:	66 44 0f 6f cb       	movdqa xmm9,xmm3
    ae77:	66 41 0f 3a 0e d8 aa 	pblendw xmm3,xmm8,0xaa
    ae7e:	66 41 0f 72 f0 10    	pslld  xmm8,0x10
    ae84:	66 41 0f 72 d1 10    	psrld  xmm9,0x10
    ae8a:	66 45 0f eb c1       	por    xmm8,xmm9
    ae8f:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    ae94:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    ae9a:	66 41 0f ee d8       	pmaxsw xmm3,xmm8
    ae9f:	66 0f fd ca          	paddw  xmm1,xmm2
    aea3:	66 0f fd c3          	paddw  xmm0,xmm3
    aea7:	66 0f fd c1          	paddw  xmm0,xmm1
    aeab:	c3                   	ret    
    aeac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000aeb0 <x264_8_pixel_sa8d_satd_16x16_sse4>:
    aeb0:	48 83 ec 48          	sub    rsp,0x48
    aeb4:	66 0f 6f 3d 00 00 00 	movdqa xmm7,XMMWORD PTR [rip+0x0]        # aebc <x264_8_pixel_sa8d_satd_16x16_sse4+0xc>
    aebb:	00 
    aebc:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    aec0:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    aec4:	66 45 0f ef d2       	pxor   xmm10,xmm10
    aec9:	48 8d 42 08          	lea    rax,[rdx+0x8]
    aecd:	4c 8d 57 08          	lea    r10,[rdi+0x8]
    aed1:	e8 4a fc ff ff       	call   ab20 <x264_8_pixel_sa8d_satd_8x8_internal_sse4>
    aed6:	66 0f 7f 04 24       	movdqa XMMWORD PTR [rsp],xmm0
    aedb:	e8 40 fc ff ff       	call   ab20 <x264_8_pixel_sa8d_satd_8x8_internal_sse4>
    aee0:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    aee5:	66 0f 7f 04 24       	movdqa XMMWORD PTR [rsp],xmm0
    aeea:	4c 89 d7             	mov    rdi,r10
    aeed:	48 89 c2             	mov    rdx,rax
    aef0:	e8 2b fc ff ff       	call   ab20 <x264_8_pixel_sa8d_satd_8x8_internal_sse4>
    aef5:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    aefa:	66 0f 7f 04 24       	movdqa XMMWORD PTR [rsp],xmm0
    aeff:	e8 1c fc ff ff       	call   ab20 <x264_8_pixel_sa8d_satd_8x8_internal_sse4>
    af04:	66 0f fd 04 24       	paddw  xmm0,XMMWORD PTR [rsp]
    af09:	66 44 0f f5 15 00 00 	pmaddwd xmm10,XMMWORD PTR [rip+0x0]        # af12 <x264_8_pixel_sa8d_satd_16x16_sse4+0x62>
    af10:	00 00 
    af12:	66 0f 6f c8          	movdqa xmm1,xmm0
    af16:	66 0f 72 d1 10       	psrld  xmm1,0x10
    af1b:	66 0f 72 f0 10       	pslld  xmm0,0x10
    af20:	66 0f 72 d0 10       	psrld  xmm0,0x10
    af25:	66 0f fe c1          	paddd  xmm0,xmm1
    af29:	66 41 0f 38 02 c2    	phaddd xmm0,xmm10
    af2f:	66 0f 70 c8 b1       	pshufd xmm1,xmm0,0xb1
    af34:	66 0f fe c1          	paddd  xmm0,xmm1
    af38:	66 0f 7e c7          	movd   edi,xmm0
    af3c:	66 0f 3a 16 c0 02    	pextrd eax,xmm0,0x2
    af42:	83 c7 01             	add    edi,0x1
    af45:	48 c1 e0 20          	shl    rax,0x20
    af49:	d1 ef                	shr    edi,1
    af4b:	48 09 f8             	or     rax,rdi
    af4e:	48 83 c4 48          	add    rsp,0x48
    af52:	c3                   	ret    
    af53:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    af5a:	00 
    af5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000af60 <x264_8_intra_sad_x9_4x4_sse4>:
    af60:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
    af67:	f3 0f 6f 4e d8       	movdqu xmm1,XMMWORD PTR [rsi-0x28]
    af6c:	66 0f 3a 20 4e 5f 00 	pinsrb xmm1,BYTE PTR [rsi+0x5f],0x0
    af73:	66 0f 3a 20 4e 3f 01 	pinsrb xmm1,BYTE PTR [rsi+0x3f],0x1
    af7a:	66 0f 3a 20 4e 1f 02 	pinsrb xmm1,BYTE PTR [rsi+0x1f],0x2
    af81:	66 0f 3a 20 4e ff 03 	pinsrb xmm1,BYTE PTR [rsi-0x1],0x3
    af88:	66 0f 38 00 0d 00 00 	pshufb xmm1,XMMWORD PTR [rip+0x0]        # af91 <x264_8_intra_sad_x9_4x4_sse4+0x31>
    af8f:	00 00 
    af91:	66 0f 6f c1          	movdqa xmm0,xmm1
    af95:	66 0f 73 d8 01       	psrldq xmm0,0x1
    af9a:	66 0f 6f d1          	movdqa xmm2,xmm1
    af9e:	66 0f 73 da 02       	psrldq xmm2,0x2
    afa3:	66 0f 6f e8          	movdqa xmm5,xmm0
    afa7:	66 0f e0 e9          	pavgb  xmm5,xmm1
    afab:	66 44 0f 6f c1       	movdqa xmm8,xmm1
    afb0:	66 0f 6f e1          	movdqa xmm4,xmm1
    afb4:	66 0f e0 e2          	pavgb  xmm4,xmm2
    afb8:	66 0f ef d1          	pxor   xmm2,xmm1
    afbc:	66 0f db 15 00 00 00 	pand   xmm2,XMMWORD PTR [rip+0x0]        # afc4 <x264_8_intra_sad_x9_4x4_sse4+0x64>
    afc3:	00 
    afc4:	66 0f d8 e2          	psubusb xmm4,xmm2
    afc8:	66 0f e0 c4          	pavgb  xmm0,xmm4
    afcc:	66 0f 6f d0          	movdqa xmm2,xmm0
    afd0:	66 0f 38 00 15 00 00 	pshufb xmm2,XMMWORD PTR [rip+0x0]        # afd9 <x264_8_intra_sad_x9_4x4_sse4+0x79>
    afd7:	00 00 
    afd9:	66 0f 6f d8          	movdqa xmm3,xmm0
    afdd:	66 0f 38 00 1d 00 00 	pshufb xmm3,XMMWORD PTR [rip+0x0]        # afe6 <x264_8_intra_sad_x9_4x4_sse4+0x86>
    afe4:	00 00 
    afe6:	66 0f 73 f8 05       	pslldq xmm0,0x5
    afeb:	66 0f 6f fd          	movdqa xmm7,xmm5
    afef:	66 0f 3a 0f f8 05    	palignr xmm7,xmm0,0x5
    aff5:	66 0f 6f f7          	movdqa xmm6,xmm7
    aff9:	66 0f 38 00 35 00 00 	pshufb xmm6,XMMWORD PTR [rip+0x0]        # b002 <x264_8_intra_sad_x9_4x4_sse4+0xa2>
    b000:	00 00 
    b002:	66 0f 38 00 3d 00 00 	pshufb xmm7,XMMWORD PTR [rip+0x0]        # b00b <x264_8_intra_sad_x9_4x4_sse4+0xab>
    b009:	00 00 
    b00b:	66 0f 73 dd 05       	psrldq xmm5,0x5
    b010:	66 0f 3a 0f e8 06    	palignr xmm5,xmm0,0x6
    b016:	66 0f 6f e5          	movdqa xmm4,xmm5
    b01a:	66 0f 38 00 25 00 00 	pshufb xmm4,XMMWORD PTR [rip+0x0]        # b023 <x264_8_intra_sad_x9_4x4_sse4+0xc3>
    b021:	00 00 
    b023:	66 0f 38 00 2d 00 00 	pshufb xmm5,XMMWORD PTR [rip+0x0]        # b02c <x264_8_intra_sad_x9_4x4_sse4+0xcc>
    b02a:	00 00 
    b02c:	66 0f 7f 14 24       	movdqa XMMWORD PTR [rsp],xmm2
    b031:	66 0f 7f 5c 24 10    	movdqa XMMWORD PTR [rsp+0x10],xmm3
    b037:	66 0f 7f 64 24 20    	movdqa XMMWORD PTR [rsp+0x20],xmm4
    b03d:	66 0f 7f 6c 24 30    	movdqa XMMWORD PTR [rsp+0x30],xmm5
    b043:	66 0f 7f 74 24 40    	movdqa XMMWORD PTR [rsp+0x40],xmm6
    b049:	66 0f 7f 7c 24 50    	movdqa XMMWORD PTR [rsp+0x50],xmm7
    b04f:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
    b053:	66 0f 3a 22 47 10 01 	pinsrd xmm0,DWORD PTR [rdi+0x10],0x1
    b05a:	66 0f 6e 4f 20       	movd   xmm1,DWORD PTR [rdi+0x20]
    b05f:	66 0f 3a 22 4f 30 01 	pinsrd xmm1,DWORD PTR [rdi+0x30],0x1
    b066:	66 0f 6c c0          	punpcklqdq xmm0,xmm0
    b06a:	66 0f 6c c9          	punpcklqdq xmm1,xmm1
    b06e:	66 0f f6 d0          	psadbw xmm2,xmm0
    b072:	66 0f f6 d9          	psadbw xmm3,xmm1
    b076:	66 0f f6 e0          	psadbw xmm4,xmm0
    b07a:	66 0f f6 e9          	psadbw xmm5,xmm1
    b07e:	66 0f f6 f0          	psadbw xmm6,xmm0
    b082:	66 0f f6 f9          	psadbw xmm7,xmm1
    b086:	66 0f fe d3          	paddd  xmm2,xmm3
    b08a:	66 0f fe e5          	paddd  xmm4,xmm5
    b08e:	66 0f fe f7          	paddd  xmm6,xmm7
    b092:	66 0f ef ff          	pxor   xmm7,xmm7
    b096:	66 41 0f 6f d8       	movdqa xmm3,xmm8
    b09b:	66 0f 38 00 1d 00 00 	pshufb xmm3,XMMWORD PTR [rip+0x0]        # b0a4 <x264_8_intra_sad_x9_4x4_sse4+0x144>
    b0a2:	00 00 
    b0a4:	66 41 0f 6f e8       	movdqa xmm5,xmm8
    b0a9:	66 0f 38 00 2d 00 00 	pshufb xmm5,XMMWORD PTR [rip+0x0]        # b0b2 <x264_8_intra_sad_x9_4x4_sse4+0x152>
    b0b0:	00 00 
    b0b2:	66 44 0f 38 00 05 00 	pshufb xmm8,XMMWORD PTR [rip+0x0]        # b0bc <x264_8_intra_sad_x9_4x4_sse4+0x15c>
    b0b9:	00 00 00 
    b0bc:	66 44 0f f6 c7       	psadbw xmm8,xmm7
    b0c1:	66 41 0f 71 d0 02    	psrlw  xmm8,0x2
    b0c7:	66 0f 7f 5c 24 60    	movdqa XMMWORD PTR [rsp+0x60],xmm3
    b0cd:	66 0f 7f 6c 24 70    	movdqa XMMWORD PTR [rsp+0x70],xmm5
    b0d3:	66 0f f6 d8          	psadbw xmm3,xmm0
    b0d7:	66 44 0f e3 c7       	pavgw  xmm8,xmm7
    b0dc:	66 44 0f 38 00 c7    	pshufb xmm8,xmm7
    b0e2:	66 0f f6 e9          	psadbw xmm5,xmm1
    b0e6:	66 44 0f d6 84 24 80 	movq   QWORD PTR [rsp+0x80],xmm8
    b0ed:	00 00 00 
    b0f0:	66 44 0f d6 84 24 90 	movq   QWORD PTR [rsp+0x90],xmm8
    b0f7:	00 00 00 
    b0fa:	66 41 0f f6 c0       	psadbw xmm0,xmm8
    b0ff:	66 0f fe dd          	paddd  xmm3,xmm5
    b103:	66 41 0f f6 c8       	psadbw xmm1,xmm8
    b108:	66 0f fe c1          	paddd  xmm0,xmm1
    b10c:	0f b7 0a             	movzx  ecx,WORD PTR [rdx]
    b10f:	66 0f 7e df          	movd   edi,xmm3
    b113:	01 f9                	add    ecx,edi
    b115:	66 0f 6d d8          	punpckhqdq xmm3,xmm0
    b119:	0f c6 da 88          	shufps xmm3,xmm2,0x88
    b11d:	66 0f 73 f6 20       	psllq  xmm6,0x20
    b122:	66 0f eb e6          	por    xmm4,xmm6
    b126:	f3 0f 6f 42 02       	movdqu xmm0,XMMWORD PTR [rdx+0x2]
    b12b:	66 0f 6b dc          	packssdw xmm3,xmm4
    b12f:	66 0f fd c3          	paddw  xmm0,xmm3
    b133:	66 0f 38 41 c0       	phminposuw xmm0,xmm0
    b138:	66 0f 7e c0          	movd   eax,xmm0
    b13c:	05 00 00 01 00       	add    eax,0x10000
    b141:	66 39 c8             	cmp    ax,cx
    b144:	0f 4d c1             	cmovge eax,ecx
    b147:	89 c1                	mov    ecx,eax
    b149:	c1 e9 10             	shr    ecx,0x10
    b14c:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # b153 <x264_8_intra_sad_x9_4x4_sse4+0x1f3>
    b153:	0f b6 14 0a          	movzx  edx,BYTE PTR [rdx+rcx*1]
    b157:	0f 6f 04 14          	movq   mm0,QWORD PTR [rsp+rdx*1]
    b15b:	0f 6f 4c 14 10       	movq   mm1,QWORD PTR [rsp+rdx*1+0x10]
    b160:	0f 7e 06             	movd   DWORD PTR [rsi],mm0
    b163:	0f 7e 4e 40          	movd   DWORD PTR [rsi+0x40],mm1
    b167:	0f 73 d0 20          	psrlq  mm0,0x20
    b16b:	0f 73 d1 20          	psrlq  mm1,0x20
    b16f:	0f 7e 46 20          	movd   DWORD PTR [rsi+0x20],mm0
    b173:	0f 7e 4e 60          	movd   DWORD PTR [rsi+0x60],mm1
    b177:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
    b17e:	c3                   	ret    
    b17f:	90                   	nop

000000000000b180 <x264_8_intra_satd_x9_4x4_sse4>:
    b180:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
    b187:	f3 0f 6f 4e d8       	movdqu xmm1,XMMWORD PTR [rsi-0x28]
    b18c:	66 0f 3a 20 4e 5f 00 	pinsrb xmm1,BYTE PTR [rsi+0x5f],0x0
    b193:	66 0f 3a 20 4e 3f 01 	pinsrb xmm1,BYTE PTR [rsi+0x3f],0x1
    b19a:	66 0f 3a 20 4e 1f 02 	pinsrb xmm1,BYTE PTR [rsi+0x1f],0x2
    b1a1:	66 0f 3a 20 4e ff 03 	pinsrb xmm1,BYTE PTR [rsi-0x1],0x3
    b1a8:	66 0f 38 00 0d 00 00 	pshufb xmm1,XMMWORD PTR [rip+0x0]        # b1b1 <x264_8_intra_satd_x9_4x4_sse4+0x31>
    b1af:	00 00 
    b1b1:	66 0f 6f c1          	movdqa xmm0,xmm1
    b1b5:	66 0f 73 d8 01       	psrldq xmm0,0x1
    b1ba:	66 0f 6f d1          	movdqa xmm2,xmm1
    b1be:	66 0f 73 da 02       	psrldq xmm2,0x2
    b1c3:	66 0f 6f e8          	movdqa xmm5,xmm0
    b1c7:	66 0f e0 e9          	pavgb  xmm5,xmm1
    b1cb:	66 44 0f 6f f9       	movdqa xmm15,xmm1
    b1d0:	66 0f 6f e1          	movdqa xmm4,xmm1
    b1d4:	66 0f e0 e2          	pavgb  xmm4,xmm2
    b1d8:	66 0f ef d1          	pxor   xmm2,xmm1
    b1dc:	66 0f db 15 00 00 00 	pand   xmm2,XMMWORD PTR [rip+0x0]        # b1e4 <x264_8_intra_satd_x9_4x4_sse4+0x64>
    b1e3:	00 
    b1e4:	66 0f d8 e2          	psubusb xmm4,xmm2
    b1e8:	66 0f e0 c4          	pavgb  xmm0,xmm4
    b1ec:	66 0f 6f d0          	movdqa xmm2,xmm0
    b1f0:	66 0f 38 00 15 00 00 	pshufb xmm2,XMMWORD PTR [rip+0x0]        # b1f9 <x264_8_intra_satd_x9_4x4_sse4+0x79>
    b1f7:	00 00 
    b1f9:	66 0f 6f d8          	movdqa xmm3,xmm0
    b1fd:	66 0f 38 00 1d 00 00 	pshufb xmm3,XMMWORD PTR [rip+0x0]        # b206 <x264_8_intra_satd_x9_4x4_sse4+0x86>
    b204:	00 00 
    b206:	66 0f 73 f8 05       	pslldq xmm0,0x5
    b20b:	66 0f 6f fd          	movdqa xmm7,xmm5
    b20f:	66 0f 3a 0f f8 05    	palignr xmm7,xmm0,0x5
    b215:	66 0f 6f f7          	movdqa xmm6,xmm7
    b219:	66 0f 38 00 35 00 00 	pshufb xmm6,XMMWORD PTR [rip+0x0]        # b222 <x264_8_intra_satd_x9_4x4_sse4+0xa2>
    b220:	00 00 
    b222:	66 0f 38 00 3d 00 00 	pshufb xmm7,XMMWORD PTR [rip+0x0]        # b22b <x264_8_intra_satd_x9_4x4_sse4+0xab>
    b229:	00 00 
    b22b:	66 0f 73 dd 05       	psrldq xmm5,0x5
    b230:	66 0f 3a 0f e8 06    	palignr xmm5,xmm0,0x6
    b236:	66 0f 6f e5          	movdqa xmm4,xmm5
    b23a:	66 0f 38 00 25 00 00 	pshufb xmm4,XMMWORD PTR [rip+0x0]        # b243 <x264_8_intra_satd_x9_4x4_sse4+0xc3>
    b241:	00 00 
    b243:	66 0f 38 00 2d 00 00 	pshufb xmm5,XMMWORD PTR [rip+0x0]        # b24c <x264_8_intra_satd_x9_4x4_sse4+0xcc>
    b24a:	00 00 
    b24c:	66 0f 7f 14 24       	movdqa XMMWORD PTR [rsp],xmm2
    b251:	66 0f 7f 5c 24 10    	movdqa XMMWORD PTR [rsp+0x10],xmm3
    b257:	66 0f 7f 64 24 20    	movdqa XMMWORD PTR [rsp+0x20],xmm4
    b25d:	66 0f 7f 6c 24 30    	movdqa XMMWORD PTR [rsp+0x30],xmm5
    b263:	66 0f 7f 74 24 40    	movdqa XMMWORD PTR [rsp+0x40],xmm6
    b269:	66 0f 7f 7c 24 50    	movdqa XMMWORD PTR [rsp+0x50],xmm7
    b26f:	66 44 0f 6e 07       	movd   xmm8,DWORD PTR [rdi]
    b274:	66 44 0f 6e 4f 10    	movd   xmm9,DWORD PTR [rdi+0x10]
    b27a:	66 44 0f 6e 57 20    	movd   xmm10,DWORD PTR [rdi+0x20]
    b280:	66 44 0f 6e 5f 30    	movd   xmm11,DWORD PTR [rdi+0x30]
    b286:	66 44 0f 6f 25 00 00 	movdqa xmm12,XMMWORD PTR [rip+0x0]        # b28f <x264_8_intra_satd_x9_4x4_sse4+0x10f>
    b28d:	00 00 
    b28f:	66 45 0f 70 c0 00    	pshufd xmm8,xmm8,0x0
    b295:	66 45 0f 70 c9 00    	pshufd xmm9,xmm9,0x0
    b29b:	66 45 0f 70 d2 00    	pshufd xmm10,xmm10,0x0
    b2a1:	66 45 0f 70 db 00    	pshufd xmm11,xmm11,0x0
    b2a7:	66 45 0f 38 04 c4    	pmaddubsw xmm8,xmm12
    b2ad:	66 45 0f 38 04 cc    	pmaddubsw xmm9,xmm12
    b2b3:	66 45 0f 38 04 d4    	pmaddubsw xmm10,xmm12
    b2b9:	66 45 0f 38 04 dc    	pmaddubsw xmm11,xmm12
    b2bf:	f2 0f 12 c2          	movddup xmm0,xmm2
    b2c3:	66 0f 70 ca ee       	pshufd xmm1,xmm2,0xee
    b2c8:	f2 0f 12 d3          	movddup xmm2,xmm3
    b2cc:	66 0f 6d db          	punpckhqdq xmm3,xmm3
    b2d0:	e8 0b 02 00 00       	call   b4e0 <x264_8_intra_satd_x9_4x4_sse4+0x360>
    b2d5:	f2 0f 12 d5          	movddup xmm2,xmm5
    b2d9:	66 0f 70 dd ee       	pshufd xmm3,xmm5,0xee
    b2de:	66 0f 6f e8          	movdqa xmm5,xmm0
    b2e2:	f2 0f 12 c4          	movddup xmm0,xmm4
    b2e6:	66 0f 70 cc ee       	pshufd xmm1,xmm4,0xee
    b2eb:	e8 f0 01 00 00       	call   b4e0 <x264_8_intra_satd_x9_4x4_sse4+0x360>
    b2f0:	f2 0f 12 d7          	movddup xmm2,xmm7
    b2f4:	66 0f 70 df ee       	pshufd xmm3,xmm7,0xee
    b2f9:	66 0f 6f e0          	movdqa xmm4,xmm0
    b2fd:	f2 0f 12 c6          	movddup xmm0,xmm6
    b301:	66 0f 70 ce ee       	pshufd xmm1,xmm6,0xee
    b306:	e8 d5 01 00 00       	call   b4e0 <x264_8_intra_satd_x9_4x4_sse4+0x360>
    b30b:	66 0f 62 e0          	punpckldq xmm4,xmm0
    b30f:	66 0f 6f 0d 00 00 00 	movdqa xmm1,XMMWORD PTR [rip+0x0]        # b317 <x264_8_intra_satd_x9_4x4_sse4+0x197>
    b316:	00 
    b317:	66 44 0f 38 09 c1    	psignw xmm8,xmm1
    b31d:	66 44 0f 38 09 d1    	psignw xmm10,xmm1
    b323:	66 45 0f fd c1       	paddw  xmm8,xmm9
    b328:	66 45 0f fd d3       	paddw  xmm10,xmm11
    b32d:	66 41 0f 6f d7       	movdqa xmm2,xmm15
    b332:	66 0f 38 00 15 00 00 	pshufb xmm2,XMMWORD PTR [rip+0x0]        # b33b <x264_8_intra_satd_x9_4x4_sse4+0x1bb>
    b339:	00 00 
    b33b:	66 41 0f 6f df       	movdqa xmm3,xmm15
    b340:	66 0f 38 00 1d 00 00 	pshufb xmm3,XMMWORD PTR [rip+0x0]        # b349 <x264_8_intra_satd_x9_4x4_sse4+0x1c9>
    b347:	00 00 
    b349:	66 0f 7f 54 24 60    	movdqa XMMWORD PTR [rsp+0x60],xmm2
    b34f:	66 0f 7f 5c 24 70    	movdqa XMMWORD PTR [rsp+0x70],xmm3
    b355:	66 44 0f 38 00 3d 00 	pshufb xmm15,XMMWORD PTR [rip+0x0]        # b35f <x264_8_intra_satd_x9_4x4_sse4+0x1df>
    b35c:	00 00 00 
    b35f:	66 44 0f 38 04 3d 00 	pmaddubsw xmm15,XMMWORD PTR [rip+0x0]        # b369 <x264_8_intra_satd_x9_4x4_sse4+0x1e9>
    b366:	00 00 00 
    b369:	f3 41 0f 70 c7 b1    	pshufhw xmm0,xmm15,0xb1
    b36f:	f2 0f 70 c0 b1       	pshuflw xmm0,xmm0,0xb1
    b374:	66 44 0f 38 09 3d 00 	psignw xmm15,XMMWORD PTR [rip+0x0]        # b37e <x264_8_intra_satd_x9_4x4_sse4+0x1fe>
    b37b:	00 00 00 
    b37e:	66 41 0f fd c7       	paddw  xmm0,xmm15
    b383:	66 0f 71 f0 02       	psllw  xmm0,0x2
    b388:	66 0f 70 d8 ee       	pshufd xmm3,xmm0,0xee
    b38d:	66 0f 6f c8          	movdqa xmm1,xmm0
    b391:	66 0f 38 00 0d 00 00 	pshufb xmm1,XMMWORD PTR [rip+0x0]        # b39a <x264_8_intra_satd_x9_4x4_sse4+0x21a>
    b398:	00 00 
    b39a:	66 0f 6f d0          	movdqa xmm2,xmm0
    b39e:	66 0f 38 00 15 00 00 	pshufb xmm2,XMMWORD PTR [rip+0x0]        # b3a7 <x264_8_intra_satd_x9_4x4_sse4+0x227>
    b3a5:	00 00 
    b3a7:	66 0f fd c3          	paddw  xmm0,xmm3
    b3ab:	66 0f 38 09 1d 00 00 	psignw xmm3,XMMWORD PTR [rip+0x0]        # b3b4 <x264_8_intra_satd_x9_4x4_sse4+0x234>
    b3b2:	00 00 
    b3b4:	66 0f e3 05 00 00 00 	pavgw  xmm0,XMMWORD PTR [rip+0x0]        # b3bc <x264_8_intra_satd_x9_4x4_sse4+0x23c>
    b3bb:	00 
    b3bc:	66 0f db 05 00 00 00 	pand   xmm0,XMMWORD PTR [rip+0x0]        # b3c4 <x264_8_intra_satd_x9_4x4_sse4+0x244>
    b3c3:	00 
    b3c4:	66 41 0f 6f f0       	movdqa xmm6,xmm8
    b3c9:	66 45 0f fd c2       	paddw  xmm8,xmm10
    b3ce:	66 44 0f f9 d6       	psubw  xmm10,xmm6
    b3d3:	66 41 0f 6f f0       	movdqa xmm6,xmm8
    b3d8:	66 0f 72 d6 10       	psrld  xmm6,0x10
    b3dd:	66 41 0f 3a 0e f2 aa 	pblendw xmm6,xmm10,0xaa
    b3e4:	66 41 0f 72 f2 10    	pslld  xmm10,0x10
    b3ea:	66 45 0f 3a 0e d0 55 	pblendw xmm10,xmm8,0x55
    b3f1:	66 44 0f 6f c6       	movdqa xmm8,xmm6
    b3f6:	66 41 0f fd f2       	paddw  xmm6,xmm10
    b3fb:	66 45 0f f9 d0       	psubw  xmm10,xmm8
    b400:	66 0f 7e c1          	movd   ecx,xmm0
    b404:	c1 e9 04             	shr    ecx,0x4
    b407:	69 c9 01 01 01 01    	imul   ecx,ecx,0x1010101
    b40d:	89 8c 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],ecx
    b414:	89 8c 24 88 00 00 00 	mov    DWORD PTR [rsp+0x88],ecx
    b41b:	89 8c 24 90 00 00 00 	mov    DWORD PTR [rsp+0x90],ecx
    b422:	89 8c 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],ecx
    b429:	66 0f f9 de          	psubw  xmm3,xmm6
    b42d:	66 0f f9 c6          	psubw  xmm0,xmm6
    b431:	66 0f f9 ce          	psubw  xmm1,xmm6
    b435:	66 41 0f f9 d2       	psubw  xmm2,xmm10
    b43a:	66 45 0f 38 1d d2    	pabsw  xmm10,xmm10
    b440:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    b445:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    b44a:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    b44f:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    b454:	66 41 0f e3 da       	pavgw  xmm3,xmm10
    b459:	66 41 0f e3 c2       	pavgw  xmm0,xmm10
    b45e:	66 0f e3 ca          	pavgw  xmm1,xmm2
    b462:	66 0f 38 01 d8       	phaddw xmm3,xmm0
    b467:	66 0f 70 d1 ee       	pshufd xmm2,xmm1,0xee
    b46c:	66 0f fd ca          	paddw  xmm1,xmm2
    b470:	66 0f 38 01 cb       	phaddw xmm1,xmm3
    b475:	66 0f f5 0d 00 00 00 	pmaddwd xmm1,XMMWORD PTR [rip+0x0]        # b47d <x264_8_intra_satd_x9_4x4_sse4+0x2fd>
    b47c:	00 
    b47d:	f3 0f 6f 42 02       	movdqu xmm0,XMMWORD PTR [rdx+0x2]
    b482:	66 0f 7e c9          	movd   ecx,xmm1
    b486:	66 0f 3a 0f e9 08    	palignr xmm5,xmm1,0x8
    b48c:	66 0f 6b ec          	packssdw xmm5,xmm4
    b490:	66 0f fd c5          	paddw  xmm0,xmm5
    b494:	0f b7 3a             	movzx  edi,WORD PTR [rdx]
    b497:	01 f9                	add    ecx,edi
    b499:	66 0f 38 41 c0       	phminposuw xmm0,xmm0
    b49e:	66 0f 7e c0          	movd   eax,xmm0
    b4a2:	05 00 00 01 00       	add    eax,0x10000
    b4a7:	66 39 c8             	cmp    ax,cx
    b4aa:	0f 4d c1             	cmovge eax,ecx
    b4ad:	89 c1                	mov    ecx,eax
    b4af:	c1 e9 10             	shr    ecx,0x10
    b4b2:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # b4b9 <x264_8_intra_satd_x9_4x4_sse4+0x339>
    b4b9:	0f b6 14 0a          	movzx  edx,BYTE PTR [rdx+rcx*1]
    b4bd:	8b 0c 14             	mov    ecx,DWORD PTR [rsp+rdx*1]
    b4c0:	89 0e                	mov    DWORD PTR [rsi],ecx
    b4c2:	8b 4c 14 08          	mov    ecx,DWORD PTR [rsp+rdx*1+0x8]
    b4c6:	89 4e 20             	mov    DWORD PTR [rsi+0x20],ecx
    b4c9:	8b 4c 14 10          	mov    ecx,DWORD PTR [rsp+rdx*1+0x10]
    b4cd:	89 4e 40             	mov    DWORD PTR [rsi+0x40],ecx
    b4d0:	8b 4c 14 18          	mov    ecx,DWORD PTR [rsp+rdx*1+0x18]
    b4d4:	89 4e 60             	mov    DWORD PTR [rsi+0x60],ecx
    b4d7:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
    b4de:	c3                   	ret    
    b4df:	90                   	nop
    b4e0:	66 41 0f 38 04 c4    	pmaddubsw xmm0,xmm12
    b4e6:	66 41 0f 38 04 cc    	pmaddubsw xmm1,xmm12
    b4ec:	66 41 0f 38 04 d4    	pmaddubsw xmm2,xmm12
    b4f2:	66 41 0f 38 04 dc    	pmaddubsw xmm3,xmm12
    b4f8:	66 41 0f f9 c0       	psubw  xmm0,xmm8
    b4fd:	66 41 0f f9 c9       	psubw  xmm1,xmm9
    b502:	66 41 0f f9 d2       	psubw  xmm2,xmm10
    b507:	66 41 0f f9 db       	psubw  xmm3,xmm11
    b50c:	66 44 0f 6f e8       	movdqa xmm13,xmm0
    b511:	66 0f fd c1          	paddw  xmm0,xmm1
    b515:	66 41 0f f9 cd       	psubw  xmm1,xmm13
    b51a:	66 44 0f 6f ea       	movdqa xmm13,xmm2
    b51f:	66 0f fd d3          	paddw  xmm2,xmm3
    b523:	66 41 0f f9 dd       	psubw  xmm3,xmm13
    b528:	66 44 0f 6f e8       	movdqa xmm13,xmm0
    b52d:	66 0f fd c2          	paddw  xmm0,xmm2
    b531:	66 41 0f f9 d5       	psubw  xmm2,xmm13
    b536:	66 44 0f 6f e9       	movdqa xmm13,xmm1
    b53b:	66 0f fd cb          	paddw  xmm1,xmm3
    b53f:	66 41 0f f9 dd       	psubw  xmm3,xmm13
    b544:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    b549:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    b54e:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    b553:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    b558:	66 44 0f 6f e8       	movdqa xmm13,xmm0
    b55d:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
    b563:	66 0f 72 f2 10       	pslld  xmm2,0x10
    b568:	66 41 0f 72 d5 10    	psrld  xmm13,0x10
    b56e:	66 41 0f eb d5       	por    xmm2,xmm13
    b573:	66 0f ee c2          	pmaxsw xmm0,xmm2
    b577:	66 44 0f 6f e9       	movdqa xmm13,xmm1
    b57c:	66 0f 3a 0e cb aa    	pblendw xmm1,xmm3,0xaa
    b582:	66 0f 72 f3 10       	pslld  xmm3,0x10
    b587:	66 41 0f 72 d5 10    	psrld  xmm13,0x10
    b58d:	66 41 0f eb dd       	por    xmm3,xmm13
    b592:	66 0f ee cb          	pmaxsw xmm1,xmm3
    b596:	66 0f fd c1          	paddw  xmm0,xmm1
    b59a:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # b5a2 <x264_8_intra_satd_x9_4x4_sse4+0x422>
    b5a1:	00 
    b5a2:	66 0f 70 c8 ee       	pshufd xmm1,xmm0,0xee
    b5a7:	66 0f fe c1          	paddd  xmm0,xmm1
    b5ab:	c3                   	ret    
    b5ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000b5b0 <x264_8_intra_sad_x9_8x8_sse4>:
    b5b0:	48 81 ec 48 02 00 00 	sub    rsp,0x248
    b5b7:	f3 0f 7e 27          	movq   xmm4,QWORD PTR [rdi]
    b5bb:	f3 0f 7e 6f 10       	movq   xmm5,QWORD PTR [rdi+0x10]
    b5c0:	f3 0f 7e 77 40       	movq   xmm6,QWORD PTR [rdi+0x40]
    b5c5:	f3 0f 7e 7f 50       	movq   xmm7,QWORD PTR [rdi+0x50]
    b5ca:	0f 16 67 20          	movhps xmm4,QWORD PTR [rdi+0x20]
    b5ce:	0f 16 6f 30          	movhps xmm5,QWORD PTR [rdi+0x30]
    b5d2:	0f 16 77 60          	movhps xmm6,QWORD PTR [rdi+0x60]
    b5d6:	0f 16 7f 70          	movhps xmm7,QWORD PTR [rdi+0x70]
    b5da:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # b5e1 <x264_8_intra_sad_x9_8x8_sse4+0x31>
    b5e1:	f2 0f 12 42 10       	movddup xmm0,QWORD PTR [rdx+0x10]
    b5e6:	66 0f 7f 04 24       	movdqa XMMWORD PTR [rsp],xmm0
    b5eb:	66 0f 6f c8          	movdqa xmm1,xmm0
    b5ef:	66 0f f6 cc          	psadbw xmm1,xmm4
    b5f3:	66 0f 7f 44 24 10    	movdqa XMMWORD PTR [rsp+0x10],xmm0
    b5f9:	66 0f 6f d0          	movdqa xmm2,xmm0
    b5fd:	66 0f f6 d5          	psadbw xmm2,xmm5
    b601:	66 0f 7f 44 24 20    	movdqa XMMWORD PTR [rsp+0x20],xmm0
    b607:	66 0f 6f d8          	movdqa xmm3,xmm0
    b60b:	66 0f f6 de          	psadbw xmm3,xmm6
    b60f:	66 0f 7f 44 24 30    	movdqa XMMWORD PTR [rsp+0x30],xmm0
    b615:	66 0f f6 c7          	psadbw xmm0,xmm7
    b619:	66 0f fd ca          	paddw  xmm1,xmm2
    b61d:	66 0f fd c3          	paddw  xmm0,xmm3
    b621:	66 0f fd c1          	paddw  xmm0,xmm1
    b625:	66 0f 70 c8 ee       	pshufd xmm1,xmm0,0xee
    b62a:	66 0f fd c1          	paddw  xmm0,xmm1
    b62e:	66 41 0f 7e 00       	movd   DWORD PTR [r8],xmm0
    b633:	f3 0f 7e 42 07       	movq   xmm0,QWORD PTR [rdx+0x7]
    b638:	66 0f 6f c8          	movdqa xmm1,xmm0
    b63c:	66 0f 38 00 4f 80    	pshufb xmm1,XMMWORD PTR [rdi-0x80]
    b642:	66 0f 6f d0          	movdqa xmm2,xmm0
    b646:	66 0f 38 00 57 90    	pshufb xmm2,XMMWORD PTR [rdi-0x70]
    b64c:	66 0f 7f 4c 24 40    	movdqa XMMWORD PTR [rsp+0x40],xmm1
    b652:	66 0f f6 cc          	psadbw xmm1,xmm4
    b656:	66 0f 7f 54 24 50    	movdqa XMMWORD PTR [rsp+0x50],xmm2
    b65c:	66 0f f6 d5          	psadbw xmm2,xmm5
    b660:	66 0f fd ca          	paddw  xmm1,xmm2
    b664:	66 0f 6f d8          	movdqa xmm3,xmm0
    b668:	66 0f 38 00 5f a0    	pshufb xmm3,XMMWORD PTR [rdi-0x60]
    b66e:	66 0f 6f d0          	movdqa xmm2,xmm0
    b672:	66 0f 38 00 57 b0    	pshufb xmm2,XMMWORD PTR [rdi-0x50]
    b678:	66 0f 7f 5c 24 60    	movdqa XMMWORD PTR [rsp+0x60],xmm3
    b67e:	66 0f f6 de          	psadbw xmm3,xmm6
    b682:	66 0f 7f 54 24 70    	movdqa XMMWORD PTR [rsp+0x70],xmm2
    b688:	66 0f f6 d7          	psadbw xmm2,xmm7
    b68c:	66 0f fd cb          	paddw  xmm1,xmm3
    b690:	66 0f fd ca          	paddw  xmm1,xmm2
    b694:	66 0f 70 d1 ee       	pshufd xmm2,xmm1,0xee
    b699:	66 0f fd ca          	paddw  xmm1,xmm2
    b69d:	66 41 0f 7e 48 02    	movd   DWORD PTR [r8+0x2],xmm1
    b6a3:	4c 8d 8c 24 00 01 00 	lea    r9,[rsp+0x100]
    b6aa:	00 
    b6ab:	0f 16 42 10          	movhps xmm0,QWORD PTR [rdx+0x10]
    b6af:	66 0f ef d2          	pxor   xmm2,xmm2
    b6b3:	66 0f f6 c2          	psadbw xmm0,xmm2
    b6b7:	66 0f 70 c8 ee       	pshufd xmm1,xmm0,0xee
    b6bc:	66 0f fd c1          	paddw  xmm0,xmm1
    b6c0:	66 0f 71 d0 03       	psrlw  xmm0,0x3
    b6c5:	66 0f e3 c2          	pavgw  xmm0,xmm2
    b6c9:	66 0f 38 00 c2       	pshufb xmm0,xmm2
    b6ce:	66 41 0f 7f 41 80    	movdqa XMMWORD PTR [r9-0x80],xmm0
    b6d4:	66 0f 6f c8          	movdqa xmm1,xmm0
    b6d8:	66 0f f6 cc          	psadbw xmm1,xmm4
    b6dc:	66 41 0f 7f 41 90    	movdqa XMMWORD PTR [r9-0x70],xmm0
    b6e2:	66 0f 6f d0          	movdqa xmm2,xmm0
    b6e6:	66 0f f6 d5          	psadbw xmm2,xmm5
    b6ea:	66 41 0f 7f 41 a0    	movdqa XMMWORD PTR [r9-0x60],xmm0
    b6f0:	66 0f 6f d8          	movdqa xmm3,xmm0
    b6f4:	66 0f f6 de          	psadbw xmm3,xmm6
    b6f8:	66 41 0f 7f 41 b0    	movdqa XMMWORD PTR [r9-0x50],xmm0
    b6fe:	66 0f f6 c7          	psadbw xmm0,xmm7
    b702:	66 0f fd ca          	paddw  xmm1,xmm2
    b706:	66 0f fd c3          	paddw  xmm0,xmm3
    b70a:	66 0f fd c1          	paddw  xmm0,xmm1
    b70e:	66 0f 70 c8 ee       	pshufd xmm1,xmm0,0xee
    b713:	66 0f fd c1          	paddw  xmm0,xmm1
    b717:	66 41 0f 7e 40 04    	movd   DWORD PTR [r8+0x4],xmm0
    b71d:	66 0f 6f 42 10       	movdqa xmm0,XMMWORD PTR [rdx+0x10]
    b722:	f3 0f 6f 52 11       	movdqu xmm2,XMMWORD PTR [rdx+0x11]
    b727:	66 0f 6f c8          	movdqa xmm1,xmm0
    b72b:	66 0f 73 f9 01       	pslldq xmm1,0x1
    b730:	66 0f 6f d8          	movdqa xmm3,xmm0
    b734:	66 0f e0 da          	pavgb  xmm3,xmm2
    b738:	66 44 0f 6f c1       	movdqa xmm8,xmm1
    b73d:	66 44 0f e0 c2       	pavgb  xmm8,xmm2
    b742:	66 0f ef d1          	pxor   xmm2,xmm1
    b746:	66 0f db 15 00 00 00 	pand   xmm2,XMMWORD PTR [rip+0x0]        # b74e <x264_8_intra_sad_x9_8x8_sse4+0x19e>
    b74d:	00 
    b74e:	66 44 0f d8 c2       	psubusb xmm8,xmm2
    b753:	66 41 0f e0 c0       	pavgb  xmm0,xmm8
    b758:	66 0f 6f c8          	movdqa xmm1,xmm0
    b75c:	66 0f 38 00 4f c0    	pshufb xmm1,XMMWORD PTR [rdi-0x40]
    b762:	66 0f 6f d0          	movdqa xmm2,xmm0
    b766:	66 0f 38 00 57 d0    	pshufb xmm2,XMMWORD PTR [rdi-0x30]
    b76c:	66 41 0f 7f 49 c0    	movdqa XMMWORD PTR [r9-0x40],xmm1
    b772:	66 0f f6 cc          	psadbw xmm1,xmm4
    b776:	66 41 0f 7f 51 d0    	movdqa XMMWORD PTR [r9-0x30],xmm2
    b77c:	66 0f f6 d5          	psadbw xmm2,xmm5
    b780:	66 0f fd ca          	paddw  xmm1,xmm2
    b784:	66 0f 6f d0          	movdqa xmm2,xmm0
    b788:	66 0f 38 00 57 e0    	pshufb xmm2,XMMWORD PTR [rdi-0x20]
    b78e:	66 41 0f 7f 51 e0    	movdqa XMMWORD PTR [r9-0x20],xmm2
    b794:	66 0f f6 d6          	psadbw xmm2,xmm6
    b798:	66 0f fd ca          	paddw  xmm1,xmm2
    b79c:	66 0f 6f d0          	movdqa xmm2,xmm0
    b7a0:	66 0f 38 00 57 f0    	pshufb xmm2,XMMWORD PTR [rdi-0x10]
    b7a6:	66 41 0f 7f 51 f0    	movdqa XMMWORD PTR [r9-0x10],xmm2
    b7ac:	66 0f f6 d7          	psadbw xmm2,xmm7
    b7b0:	66 0f fd ca          	paddw  xmm1,xmm2
    b7b4:	66 0f 70 d1 ee       	pshufd xmm2,xmm1,0xee
    b7b9:	66 0f fd ca          	paddw  xmm1,xmm2
    b7bd:	66 41 0f 7e 48 06    	movd   DWORD PTR [r8+0x6],xmm1
    b7c3:	66 0f 6f cb          	movdqa xmm1,xmm3
    b7c7:	66 0f 38 00 0f       	pshufb xmm1,XMMWORD PTR [rdi]
    b7cc:	66 0f 6f d0          	movdqa xmm2,xmm0
    b7d0:	66 0f 38 00 57 10    	pshufb xmm2,XMMWORD PTR [rdi+0x10]
    b7d6:	66 0f 38 00 5f 20    	pshufb xmm3,XMMWORD PTR [rdi+0x20]
    b7dc:	66 0f 38 00 47 30    	pshufb xmm0,XMMWORD PTR [rdi+0x30]
    b7e2:	66 41 0f 7f 89 c0 00 	movdqa XMMWORD PTR [r9+0xc0],xmm1
    b7e9:	00 00 
    b7eb:	66 0f f6 cc          	psadbw xmm1,xmm4
    b7ef:	66 41 0f 7f 91 d0 00 	movdqa XMMWORD PTR [r9+0xd0],xmm2
    b7f6:	00 00 
    b7f8:	66 0f f6 d5          	psadbw xmm2,xmm5
    b7fc:	66 41 0f 7f 99 e0 00 	movdqa XMMWORD PTR [r9+0xe0],xmm3
    b803:	00 00 
    b805:	66 0f f6 de          	psadbw xmm3,xmm6
    b809:	66 41 0f 7f 81 f0 00 	movdqa XMMWORD PTR [r9+0xf0],xmm0
    b810:	00 00 
    b812:	66 0f f6 c7          	psadbw xmm0,xmm7
    b816:	66 0f fd ca          	paddw  xmm1,xmm2
    b81a:	66 0f fd c3          	paddw  xmm0,xmm3
    b81e:	66 0f fd c1          	paddw  xmm0,xmm1
    b822:	66 0f 70 c8 ee       	pshufd xmm1,xmm0,0xee
    b827:	66 0f fd c1          	paddw  xmm0,xmm1
    b82b:	66 41 0f 3a 15 40 0e 	pextrw WORD PTR [r8+0xe],xmm0,0x0
    b832:	00 
    b833:	f3 0f 6f 52 08       	movdqu xmm2,XMMWORD PTR [rdx+0x8]
    b838:	f3 0f 6f 42 07       	movdqu xmm0,XMMWORD PTR [rdx+0x7]
    b83d:	f3 0f 6f 4a 06       	movdqu xmm1,XMMWORD PTR [rdx+0x6]
    b842:	66 0f 6f da          	movdqa xmm3,xmm2
    b846:	66 0f e0 d8          	pavgb  xmm3,xmm0
    b84a:	66 44 0f 6f c1       	movdqa xmm8,xmm1
    b84f:	66 44 0f e0 c2       	pavgb  xmm8,xmm2
    b854:	66 0f ef d1          	pxor   xmm2,xmm1
    b858:	66 0f db 15 00 00 00 	pand   xmm2,XMMWORD PTR [rip+0x0]        # b860 <x264_8_intra_sad_x9_8x8_sse4+0x2b0>
    b85f:	00 
    b860:	66 44 0f d8 c2       	psubusb xmm8,xmm2
    b865:	66 41 0f e0 c0       	pavgb  xmm0,xmm8
    b86a:	66 0f 6f c8          	movdqa xmm1,xmm0
    b86e:	66 0f 38 00 4f 40    	pshufb xmm1,XMMWORD PTR [rdi+0x40]
    b874:	66 0f 6f d0          	movdqa xmm2,xmm0
    b878:	66 0f 38 00 57 50    	pshufb xmm2,XMMWORD PTR [rdi+0x50]
    b87e:	66 41 0f 7f 09       	movdqa XMMWORD PTR [r9],xmm1
    b883:	66 0f f6 cc          	psadbw xmm1,xmm4
    b887:	66 41 0f 7f 51 10    	movdqa XMMWORD PTR [r9+0x10],xmm2
    b88d:	66 0f f6 d5          	psadbw xmm2,xmm5
    b891:	66 0f fd ca          	paddw  xmm1,xmm2
    b895:	66 0f 6f d0          	movdqa xmm2,xmm0
    b899:	66 0f 38 00 57 60    	pshufb xmm2,XMMWORD PTR [rdi+0x60]
    b89f:	66 41 0f 7f 51 20    	movdqa XMMWORD PTR [r9+0x20],xmm2
    b8a5:	66 0f f6 d6          	psadbw xmm2,xmm6
    b8a9:	66 0f fd ca          	paddw  xmm1,xmm2
    b8ad:	66 0f 6f d0          	movdqa xmm2,xmm0
    b8b1:	66 0f 38 00 57 70    	pshufb xmm2,XMMWORD PTR [rdi+0x70]
    b8b7:	66 41 0f 7f 51 30    	movdqa XMMWORD PTR [r9+0x30],xmm2
    b8bd:	66 0f f6 d7          	psadbw xmm2,xmm7
    b8c1:	66 0f fd ca          	paddw  xmm1,xmm2
    b8c5:	66 0f 70 d1 ee       	pshufd xmm2,xmm1,0xee
    b8ca:	66 0f fd ca          	paddw  xmm1,xmm2
    b8ce:	66 41 0f 7e 48 08    	movd   DWORD PTR [r8+0x8],xmm1
    b8d4:	48 81 c7 00 01 00 00 	add    rdi,0x100
    b8db:	49 81 c1 c0 00 00 00 	add    r9,0xc0
    b8e2:	0f 28 d3             	movaps xmm2,xmm3
    b8e5:	f2 0f 10 d0          	movsd  xmm2,xmm0
    b8e9:	66 0f 6f ca          	movdqa xmm1,xmm2
    b8ed:	66 0f 38 00 4f 80    	pshufb xmm1,XMMWORD PTR [rdi-0x80]
    b8f3:	66 0f 38 00 57 a0    	pshufb xmm2,XMMWORD PTR [rdi-0x60]
    b8f9:	66 41 0f 7f 49 80    	movdqa XMMWORD PTR [r9-0x80],xmm1
    b8ff:	66 0f f6 cc          	psadbw xmm1,xmm4
    b903:	66 41 0f 7f 51 a0    	movdqa XMMWORD PTR [r9-0x60],xmm2
    b909:	66 0f f6 d6          	psadbw xmm2,xmm6
    b90d:	66 0f fd ca          	paddw  xmm1,xmm2
    b911:	66 0f 6f d0          	movdqa xmm2,xmm0
    b915:	66 0f 38 00 57 90    	pshufb xmm2,XMMWORD PTR [rdi-0x70]
    b91b:	66 41 0f 7f 51 90    	movdqa XMMWORD PTR [r9-0x70],xmm2
    b921:	66 0f f6 d5          	psadbw xmm2,xmm5
    b925:	66 0f fd ca          	paddw  xmm1,xmm2
    b929:	66 0f 6f d0          	movdqa xmm2,xmm0
    b92d:	66 0f 38 00 57 b0    	pshufb xmm2,XMMWORD PTR [rdi-0x50]
    b933:	66 41 0f 7f 51 b0    	movdqa XMMWORD PTR [r9-0x50],xmm2
    b939:	66 0f f6 d7          	psadbw xmm2,xmm7
    b93d:	66 0f fd ca          	paddw  xmm1,xmm2
    b941:	66 0f 70 d1 ee       	pshufd xmm2,xmm1,0xee
    b946:	66 0f fd ca          	paddw  xmm1,xmm2
    b94a:	66 41 0f 7e 48 0a    	movd   DWORD PTR [r8+0xa],xmm1
    b950:	66 0f 70 d3 01       	pshufd xmm2,xmm3,0x1
    b955:	66 0f 3a 0e d0 fc    	pblendw xmm2,xmm0,0xfc
    b95b:	66 0f 60 c3          	punpcklbw xmm0,xmm3
    b95f:	66 0f 6f ca          	movdqa xmm1,xmm2
    b963:	66 0f 38 00 4f c0    	pshufb xmm1,XMMWORD PTR [rdi-0x40]
    b969:	66 0f 38 00 57 d0    	pshufb xmm2,XMMWORD PTR [rdi-0x30]
    b96f:	66 41 0f 7f 49 c0    	movdqa XMMWORD PTR [r9-0x40],xmm1
    b975:	66 0f f6 cc          	psadbw xmm1,xmm4
    b979:	66 41 0f 7f 51 d0    	movdqa XMMWORD PTR [r9-0x30],xmm2
    b97f:	66 0f f6 d5          	psadbw xmm2,xmm5
    b983:	66 0f fd ca          	paddw  xmm1,xmm2
    b987:	66 0f 6f d0          	movdqa xmm2,xmm0
    b98b:	66 0f 38 00 57 e0    	pshufb xmm2,XMMWORD PTR [rdi-0x20]
    b991:	66 0f 6f d8          	movdqa xmm3,xmm0
    b995:	66 0f 38 00 5f f0    	pshufb xmm3,XMMWORD PTR [rdi-0x10]
    b99b:	66 41 0f 7f 51 e0    	movdqa XMMWORD PTR [r9-0x20],xmm2
    b9a1:	66 0f f6 d6          	psadbw xmm2,xmm6
    b9a5:	66 41 0f 7f 59 f0    	movdqa XMMWORD PTR [r9-0x10],xmm3
    b9ab:	66 0f f6 df          	psadbw xmm3,xmm7
    b9af:	66 0f fd ca          	paddw  xmm1,xmm2
    b9b3:	66 0f fd cb          	paddw  xmm1,xmm3
    b9b7:	66 0f 70 d1 ee       	pshufd xmm2,xmm1,0xee
    b9bc:	66 0f fd ca          	paddw  xmm1,xmm2
    b9c0:	66 0f 73 f9 0c       	pslldq xmm1,0xc
    b9c5:	66 0f 3a 20 42 07 0f 	pinsrb xmm0,BYTE PTR [rdx+0x7],0xf
    b9cc:	66 0f 6f d8          	movdqa xmm3,xmm0
    b9d0:	66 0f 38 00 1f       	pshufb xmm3,XMMWORD PTR [rdi]
    b9d5:	66 0f 6f d0          	movdqa xmm2,xmm0
    b9d9:	66 0f 38 00 57 10    	pshufb xmm2,XMMWORD PTR [rdi+0x10]
    b9df:	66 41 0f 7f 59 40    	movdqa XMMWORD PTR [r9+0x40],xmm3
    b9e5:	66 0f f6 dc          	psadbw xmm3,xmm4
    b9e9:	66 41 0f 7f 51 50    	movdqa XMMWORD PTR [r9+0x50],xmm2
    b9ef:	66 0f f6 d5          	psadbw xmm2,xmm5
    b9f3:	66 0f fd da          	paddw  xmm3,xmm2
    b9f7:	66 0f 6f d0          	movdqa xmm2,xmm0
    b9fb:	66 0f 38 00 57 20    	pshufb xmm2,XMMWORD PTR [rdi+0x20]
    ba01:	66 0f 38 00 47 30    	pshufb xmm0,XMMWORD PTR [rdi+0x30]
    ba07:	66 41 0f 7f 51 60    	movdqa XMMWORD PTR [r9+0x60],xmm2
    ba0d:	66 0f f6 d6          	psadbw xmm2,xmm6
    ba11:	66 41 0f 7f 41 70    	movdqa XMMWORD PTR [r9+0x70],xmm0
    ba17:	66 0f f6 c7          	psadbw xmm0,xmm7
    ba1b:	66 0f fd da          	paddw  xmm3,xmm2
    ba1f:	66 0f fd d8          	paddw  xmm3,xmm0
    ba23:	66 0f 70 d3 ee       	pshufd xmm2,xmm3,0xee
    ba28:	66 0f fd da          	paddw  xmm3,xmm2
    ba2c:	66 0f 7e da          	movd   edx,xmm3
    ba30:	f3 0f 6f 01          	movdqu xmm0,XMMWORD PTR [rcx]
    ba34:	66 41 0f eb 08       	por    xmm1,XMMWORD PTR [r8]
    ba39:	66 0f fd c1          	paddw  xmm0,xmm1
    ba3d:	66 41 0f 7f 00       	movdqa XMMWORD PTR [r8],xmm0
    ba42:	44 0f b7 49 10       	movzx  r9d,WORD PTR [rcx+0x10]
    ba47:	44 01 ca             	add    edx,r9d
    ba4a:	66 41 89 50 10       	mov    WORD PTR [r8+0x10],dx
    ba4f:	66 0f 38 41 c0       	phminposuw xmm0,xmm0
    ba54:	66 0f 7e c0          	movd   eax,xmm0
    ba58:	81 c2 00 00 08 00    	add    edx,0x80000
    ba5e:	66 39 d0             	cmp    ax,dx
    ba61:	0f 4f c2             	cmovg  eax,edx
    ba64:	89 c2                	mov    edx,eax
    ba66:	c1 ea 10             	shr    edx,0x10
    ba69:	c1 e2 06             	shl    edx,0x6
    ba6c:	48 83 ee 80          	sub    rsi,0xffffffffffffff80
    ba70:	66 0f 6f 04 14       	movdqa xmm0,XMMWORD PTR [rsp+rdx*1]
    ba75:	66 0f 6f 5c 14 10    	movdqa xmm3,XMMWORD PTR [rsp+rdx*1+0x10]
    ba7b:	66 0f 6f 54 14 20    	movdqa xmm2,XMMWORD PTR [rsp+rdx*1+0x20]
    ba81:	66 0f 6f 4c 14 30    	movdqa xmm1,XMMWORD PTR [rsp+rdx*1+0x30]
    ba87:	66 0f d6 46 80       	movq   QWORD PTR [rsi-0x80],xmm0
    ba8c:	0f 17 46 c0          	movhps QWORD PTR [rsi-0x40],xmm0
    ba90:	66 0f d6 5e a0       	movq   QWORD PTR [rsi-0x60],xmm3
    ba95:	0f 17 5e e0          	movhps QWORD PTR [rsi-0x20],xmm3
    ba99:	66 0f d6 16          	movq   QWORD PTR [rsi],xmm2
    ba9d:	0f 17 56 40          	movhps QWORD PTR [rsi+0x40],xmm2
    baa1:	66 0f d6 4e 20       	movq   QWORD PTR [rsi+0x20],xmm1
    baa6:	0f 17 4e 60          	movhps QWORD PTR [rsi+0x60],xmm1
    baaa:	48 81 c4 48 02 00 00 	add    rsp,0x248
    bab1:	c3                   	ret    
    bab2:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    bab9:	00 
    baba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000bac0 <x264_8_intra_sa8d_x9_8x8_sse4>:
    bac0:	48 81 ec c8 02 00 00 	sub    rsp,0x2c8
    bac7:	66 44 0f 6f 3d 00 00 	movdqa xmm15,XMMWORD PTR [rip+0x0]        # bad0 <x264_8_intra_sa8d_x9_8x8_sse4+0x10>
    bace:	00 00 
    bad0:	66 45 0f ef c0       	pxor   xmm8,xmm8
    bad5:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
    bad9:	66 44 0f 6f c8       	movdqa xmm9,xmm0
    bade:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    bae4:	66 41 0f 60 c0       	punpcklbw xmm0,xmm8
    bae9:	66 44 0f 7f 0c 24    	movdqa XMMWORD PTR [rsp],xmm9
    baef:	f2 0f 12 4f 10       	movddup xmm1,QWORD PTR [rdi+0x10]
    baf4:	66 44 0f 6f c9       	movdqa xmm9,xmm1
    baf9:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    baff:	66 41 0f 60 c8       	punpcklbw xmm1,xmm8
    bb04:	66 44 0f 7f 4c 24 10 	movdqa XMMWORD PTR [rsp+0x10],xmm9
    bb0b:	f2 0f 12 57 20       	movddup xmm2,QWORD PTR [rdi+0x20]
    bb10:	66 44 0f 6f ca       	movdqa xmm9,xmm2
    bb15:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    bb1b:	66 41 0f 60 d0       	punpcklbw xmm2,xmm8
    bb20:	66 44 0f 7f 4c 24 20 	movdqa XMMWORD PTR [rsp+0x20],xmm9
    bb27:	f2 0f 12 5f 30       	movddup xmm3,QWORD PTR [rdi+0x30]
    bb2c:	66 44 0f 6f cb       	movdqa xmm9,xmm3
    bb31:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    bb37:	66 41 0f 60 d8       	punpcklbw xmm3,xmm8
    bb3c:	66 44 0f 7f 4c 24 30 	movdqa XMMWORD PTR [rsp+0x30],xmm9
    bb43:	f2 0f 12 67 40       	movddup xmm4,QWORD PTR [rdi+0x40]
    bb48:	66 44 0f 6f cc       	movdqa xmm9,xmm4
    bb4d:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    bb53:	66 41 0f 60 e0       	punpcklbw xmm4,xmm8
    bb58:	66 44 0f 7f 4c 24 40 	movdqa XMMWORD PTR [rsp+0x40],xmm9
    bb5f:	f2 0f 12 6f 50       	movddup xmm5,QWORD PTR [rdi+0x50]
    bb64:	66 44 0f 6f cd       	movdqa xmm9,xmm5
    bb69:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    bb6f:	66 41 0f 60 e8       	punpcklbw xmm5,xmm8
    bb74:	66 44 0f 7f 4c 24 50 	movdqa XMMWORD PTR [rsp+0x50],xmm9
    bb7b:	f2 0f 12 77 60       	movddup xmm6,QWORD PTR [rdi+0x60]
    bb80:	66 44 0f 6f ce       	movdqa xmm9,xmm6
    bb85:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    bb8b:	66 41 0f 60 f0       	punpcklbw xmm6,xmm8
    bb90:	66 44 0f 7f 4c 24 60 	movdqa XMMWORD PTR [rsp+0x60],xmm9
    bb97:	f2 0f 12 7f 70       	movddup xmm7,QWORD PTR [rdi+0x70]
    bb9c:	66 44 0f 6f cf       	movdqa xmm9,xmm7
    bba1:	66 45 0f 38 04 cf    	pmaddubsw xmm9,xmm15
    bba7:	66 41 0f 60 f8       	punpcklbw xmm7,xmm8
    bbac:	66 44 0f 7f 4c 24 70 	movdqa XMMWORD PTR [rsp+0x70],xmm9
    bbb3:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # bbba <x264_8_intra_sa8d_x9_8x8_sse4+0xfa>
    bbba:	4c 8d 8c 24 00 01 00 	lea    r9,[rsp+0x100]
    bbc1:	00 
    bbc2:	66 44 0f 6f c0       	movdqa xmm8,xmm0
    bbc7:	66 0f fd c1          	paddw  xmm0,xmm1
    bbcb:	66 41 0f f9 c8       	psubw  xmm1,xmm8
    bbd0:	66 44 0f 6f c2       	movdqa xmm8,xmm2
    bbd5:	66 0f fd d3          	paddw  xmm2,xmm3
    bbd9:	66 41 0f f9 d8       	psubw  xmm3,xmm8
    bbde:	66 44 0f 6f c0       	movdqa xmm8,xmm0
    bbe3:	66 0f 61 c1          	punpcklwd xmm0,xmm1
    bbe7:	66 44 0f 69 c1       	punpckhwd xmm8,xmm1
    bbec:	66 0f 6f c8          	movdqa xmm1,xmm0
    bbf0:	66 41 0f fd c0       	paddw  xmm0,xmm8
    bbf5:	66 44 0f f9 c1       	psubw  xmm8,xmm1
    bbfa:	66 0f 6f ca          	movdqa xmm1,xmm2
    bbfe:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    bc02:	66 0f 69 cb          	punpckhwd xmm1,xmm3
    bc06:	66 0f 6f da          	movdqa xmm3,xmm2
    bc0a:	66 0f fd d1          	paddw  xmm2,xmm1
    bc0e:	66 0f f9 cb          	psubw  xmm1,xmm3
    bc12:	66 0f 6f dc          	movdqa xmm3,xmm4
    bc16:	66 0f fd e5          	paddw  xmm4,xmm5
    bc1a:	66 0f f9 eb          	psubw  xmm5,xmm3
    bc1e:	66 0f 6f de          	movdqa xmm3,xmm6
    bc22:	66 0f fd f7          	paddw  xmm6,xmm7
    bc26:	66 0f f9 fb          	psubw  xmm7,xmm3
    bc2a:	66 0f 6f dc          	movdqa xmm3,xmm4
    bc2e:	66 0f 61 e5          	punpcklwd xmm4,xmm5
    bc32:	66 0f 69 dd          	punpckhwd xmm3,xmm5
    bc36:	66 0f 6f ec          	movdqa xmm5,xmm4
    bc3a:	66 0f fd e3          	paddw  xmm4,xmm3
    bc3e:	66 0f f9 dd          	psubw  xmm3,xmm5
    bc42:	66 0f 6f ee          	movdqa xmm5,xmm6
    bc46:	66 0f 61 f7          	punpcklwd xmm6,xmm7
    bc4a:	66 0f 69 ef          	punpckhwd xmm5,xmm7
    bc4e:	66 0f 6f fe          	movdqa xmm7,xmm6
    bc52:	66 0f fd f5          	paddw  xmm6,xmm5
    bc56:	66 0f f9 ef          	psubw  xmm5,xmm7
    bc5a:	66 0f 6f f8          	movdqa xmm7,xmm0
    bc5e:	66 0f fd c2          	paddw  xmm0,xmm2
    bc62:	66 0f f9 d7          	psubw  xmm2,xmm7
    bc66:	66 41 0f 6f f8       	movdqa xmm7,xmm8
    bc6b:	66 44 0f fd c1       	paddw  xmm8,xmm1
    bc70:	66 0f f9 cf          	psubw  xmm1,xmm7
    bc74:	66 0f 6f f8          	movdqa xmm7,xmm0
    bc78:	66 0f 62 c2          	punpckldq xmm0,xmm2
    bc7c:	66 0f 6a fa          	punpckhdq xmm7,xmm2
    bc80:	66 0f 6f d0          	movdqa xmm2,xmm0
    bc84:	66 0f fd c7          	paddw  xmm0,xmm7
    bc88:	66 0f f9 fa          	psubw  xmm7,xmm2
    bc8c:	66 41 0f 6f d0       	movdqa xmm2,xmm8
    bc91:	66 44 0f 62 c1       	punpckldq xmm8,xmm1
    bc96:	66 0f 6a d1          	punpckhdq xmm2,xmm1
    bc9a:	66 41 0f 6f c8       	movdqa xmm1,xmm8
    bc9f:	66 44 0f fd c2       	paddw  xmm8,xmm2
    bca4:	66 0f f9 d1          	psubw  xmm2,xmm1
    bca8:	66 0f 6f cc          	movdqa xmm1,xmm4
    bcac:	66 0f fd e6          	paddw  xmm4,xmm6
    bcb0:	66 0f f9 f1          	psubw  xmm6,xmm1
    bcb4:	66 0f 6f cb          	movdqa xmm1,xmm3
    bcb8:	66 0f fd dd          	paddw  xmm3,xmm5
    bcbc:	66 0f f9 e9          	psubw  xmm5,xmm1
    bcc0:	66 0f 6f cc          	movdqa xmm1,xmm4
    bcc4:	66 0f 62 e6          	punpckldq xmm4,xmm6
    bcc8:	66 0f 6a ce          	punpckhdq xmm1,xmm6
    bccc:	66 0f 6f f4          	movdqa xmm6,xmm4
    bcd0:	66 0f fd e1          	paddw  xmm4,xmm1
    bcd4:	66 0f f9 ce          	psubw  xmm1,xmm6
    bcd8:	66 0f 6f f3          	movdqa xmm6,xmm3
    bcdc:	66 0f 62 dd          	punpckldq xmm3,xmm5
    bce0:	66 0f 6a f5          	punpckhdq xmm6,xmm5
    bce4:	66 0f 6f eb          	movdqa xmm5,xmm3
    bce8:	66 0f fd de          	paddw  xmm3,xmm6
    bcec:	66 0f f9 f5          	psubw  xmm6,xmm5
    bcf0:	66 0f 6f e8          	movdqa xmm5,xmm0
    bcf4:	66 0f fd c4          	paddw  xmm0,xmm4
    bcf8:	66 0f f9 e5          	psubw  xmm4,xmm5
    bcfc:	66 0f 6f ef          	movdqa xmm5,xmm7
    bd00:	66 0f fd f9          	paddw  xmm7,xmm1
    bd04:	66 0f f9 cd          	psubw  xmm1,xmm5
    bd08:	66 0f 6f e8          	movdqa xmm5,xmm0
    bd0c:	66 0f 6c c4          	punpcklqdq xmm0,xmm4
    bd10:	66 0f 6d ec          	punpckhqdq xmm5,xmm4
    bd14:	66 0f 6f e0          	movdqa xmm4,xmm0
    bd18:	66 0f fd c5          	paddw  xmm0,xmm5
    bd1c:	66 0f f9 ec          	psubw  xmm5,xmm4
    bd20:	66 0f 6f e7          	movdqa xmm4,xmm7
    bd24:	66 0f 6c f9          	punpcklqdq xmm7,xmm1
    bd28:	66 0f 6d e1          	punpckhqdq xmm4,xmm1
    bd2c:	66 0f 6f cf          	movdqa xmm1,xmm7
    bd30:	66 0f fd fc          	paddw  xmm7,xmm4
    bd34:	66 0f f9 e1          	psubw  xmm4,xmm1
    bd38:	66 41 0f 6f c8       	movdqa xmm1,xmm8
    bd3d:	66 44 0f fd c3       	paddw  xmm8,xmm3
    bd42:	66 0f f9 d9          	psubw  xmm3,xmm1
    bd46:	66 0f 6f ca          	movdqa xmm1,xmm2
    bd4a:	66 0f fd d6          	paddw  xmm2,xmm6
    bd4e:	66 0f f9 f1          	psubw  xmm6,xmm1
    bd52:	66 41 0f 6f c8       	movdqa xmm1,xmm8
    bd57:	66 44 0f 6c c3       	punpcklqdq xmm8,xmm3
    bd5c:	66 0f 6d cb          	punpckhqdq xmm1,xmm3
    bd60:	66 41 0f 6f d8       	movdqa xmm3,xmm8
    bd65:	66 44 0f fd c1       	paddw  xmm8,xmm1
    bd6a:	66 0f f9 cb          	psubw  xmm1,xmm3
    bd6e:	66 0f 6f da          	movdqa xmm3,xmm2
    bd72:	66 0f 6c d6          	punpcklqdq xmm2,xmm6
    bd76:	66 0f 6d de          	punpckhqdq xmm3,xmm6
    bd7a:	66 0f 6f f2          	movdqa xmm6,xmm2
    bd7e:	66 0f fd d3          	paddw  xmm2,xmm3
    bd82:	66 0f f9 de          	psubw  xmm3,xmm6
    bd86:	66 44 0f 38 1d dd    	pabsw  xmm11,xmm5
    bd8c:	66 0f 38 1d f7       	pabsw  xmm6,xmm7
    bd91:	66 44 0f fd de       	paddw  xmm11,xmm6
    bd96:	66 0f 38 1d f4       	pabsw  xmm6,xmm4
    bd9b:	66 44 0f fd de       	paddw  xmm11,xmm6
    bda0:	66 41 0f 38 1d f0    	pabsw  xmm6,xmm8
    bda6:	66 44 0f fd de       	paddw  xmm11,xmm6
    bdab:	66 0f 38 1d f1       	pabsw  xmm6,xmm1
    bdb0:	66 44 0f fd de       	paddw  xmm11,xmm6
    bdb5:	66 0f 38 1d f2       	pabsw  xmm6,xmm2
    bdba:	66 44 0f fd de       	paddw  xmm11,xmm6
    bdbf:	66 0f 38 1d f3       	pabsw  xmm6,xmm3
    bdc4:	66 44 0f fd de       	paddw  xmm11,xmm6
    bdc9:	f3 0f 7e 72 07       	movq   xmm6,QWORD PTR [rdx+0x7]
    bdce:	f2 44 0f 12 4a 10    	movddup xmm9,QWORD PTR [rdx+0x10]
    bdd4:	66 45 0f 7f 49 80    	movdqa XMMWORD PTR [r9-0x80],xmm9
    bdda:	66 45 0f 7f 49 90    	movdqa XMMWORD PTR [r9-0x70],xmm9
    bde0:	66 45 0f 7f 49 a0    	movdqa XMMWORD PTR [r9-0x60],xmm9
    bde6:	66 45 0f 7f 49 b0    	movdqa XMMWORD PTR [r9-0x50],xmm9
    bdec:	66 0f 61 f6          	punpcklwd xmm6,xmm6
    bdf0:	66 44 0f 38 00 0d 00 	pshufb xmm9,XMMWORD PTR [rip+0x0]        # bdfa <x264_8_intra_sa8d_x9_8x8_sse4+0x33a>
    bdf7:	00 00 00 
    bdfa:	66 0f 38 04 35 00 00 	pmaddubsw xmm6,XMMWORD PTR [rip+0x0]        # be03 <x264_8_intra_sa8d_x9_8x8_sse4+0x343>
    be01:	00 00 
    be03:	66 44 0f 38 04 0d 00 	pmaddubsw xmm9,XMMWORD PTR [rip+0x0]        # be0d <x264_8_intra_sa8d_x9_8x8_sse4+0x34d>
    be0a:	00 00 00 
    be0d:	66 44 0f 70 e6 4e    	pshufd xmm12,xmm6,0x4e
    be13:	66 45 0f 70 e9 4e    	pshufd xmm13,xmm9,0x4e
    be19:	66 0f 38 09 35 00 00 	psignw xmm6,XMMWORD PTR [rip+0x0]        # be22 <x264_8_intra_sa8d_x9_8x8_sse4+0x362>
    be20:	00 00 
    be22:	66 44 0f 38 09 0d 00 	psignw xmm9,XMMWORD PTR [rip+0x0]        # be2c <x264_8_intra_sa8d_x9_8x8_sse4+0x36c>
    be29:	00 00 00 
    be2c:	66 41 0f fd f4       	paddw  xmm6,xmm12
    be31:	66 45 0f fd cd       	paddw  xmm9,xmm13
    be36:	66 44 0f 70 e6 b1    	pshufd xmm12,xmm6,0xb1
    be3c:	66 45 0f 70 e9 b1    	pshufd xmm13,xmm9,0xb1
    be42:	66 0f 38 09 35 00 00 	psignw xmm6,XMMWORD PTR [rip+0x0]        # be4b <x264_8_intra_sa8d_x9_8x8_sse4+0x38b>
    be49:	00 00 
    be4b:	66 44 0f 38 09 0d 00 	psignw xmm9,XMMWORD PTR [rip+0x0]        # be55 <x264_8_intra_sa8d_x9_8x8_sse4+0x395>
    be52:	00 00 00 
    be55:	66 41 0f fd f4       	paddw  xmm6,xmm12
    be5a:	66 45 0f fd cd       	paddw  xmm9,xmm13
    be5f:	66 44 0f 6f d6       	movdqa xmm10,xmm6
    be64:	66 45 0f fd d1       	paddw  xmm10,xmm9
    be69:	66 44 0f fd 15 00 00 	paddw  xmm10,XMMWORD PTR [rip+0x0]        # be72 <x264_8_intra_sa8d_x9_8x8_sse4+0x3b2>
    be70:	00 00 
    be72:	66 44 0f db 15 00 00 	pand   xmm10,XMMWORD PTR [rip+0x0]        # be7b <x264_8_intra_sa8d_x9_8x8_sse4+0x3bb>
    be79:	00 00 
    be7b:	66 45 0f 6f e2       	movdqa xmm12,xmm10
    be80:	66 41 0f 71 d4 04    	psrlw  xmm12,0x4
    be86:	66 41 0f 71 f2 02    	psllw  xmm10,0x2
    be8c:	66 45 0f ef ed       	pxor   xmm13,xmm13
    be91:	66 45 0f 38 00 e5    	pshufb xmm12,xmm13
    be97:	66 45 0f 7f 21       	movdqa XMMWORD PTR [r9],xmm12
    be9c:	66 45 0f 7f 61 10    	movdqa XMMWORD PTR [r9+0x10],xmm12
    bea2:	66 45 0f 7f 61 20    	movdqa XMMWORD PTR [r9+0x20],xmm12
    bea8:	66 45 0f 7f 61 30    	movdqa XMMWORD PTR [r9+0x30],xmm12
    beae:	66 0f 71 f6 03       	psllw  xmm6,0x3
    beb3:	66 0f f9 f0          	psubw  xmm6,xmm0
    beb7:	66 44 0f f9 d0       	psubw  xmm10,xmm0
    bebc:	66 0f 38 1d f6       	pabsw  xmm6,xmm6
    bec1:	66 45 0f 38 1d d2    	pabsw  xmm10,xmm10
    bec7:	66 41 0f fd f3       	paddw  xmm6,xmm11
    becc:	66 45 0f fd da       	paddw  xmm11,xmm10
    bed1:	66 0f 61 c5          	punpcklwd xmm0,xmm5
    bed5:	66 0f 61 fc          	punpcklwd xmm7,xmm4
    bed9:	66 44 0f 61 c1       	punpcklwd xmm8,xmm1
    bede:	66 0f 61 d3          	punpcklwd xmm2,xmm3
    bee2:	66 0f 62 c7          	punpckldq xmm0,xmm7
    bee6:	66 44 0f 62 c2       	punpckldq xmm8,xmm2
    beeb:	66 41 0f 6c c0       	punpcklqdq xmm0,xmm8
    bef0:	66 41 0f 71 f1 03    	psllw  xmm9,0x3
    bef6:	66 45 0f 6f d3       	movdqa xmm10,xmm11
    befb:	66 41 0f 73 da 02    	psrldq xmm10,0x2
    bf01:	66 41 0f f9 c1       	psubw  xmm0,xmm9
    bf06:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    bf0b:	66 44 0f fd d0       	paddw  xmm10,xmm0
    bf10:	66 44 0f 38 02 d6    	phaddd xmm10,xmm6
    bf16:	66 41 0f 71 d3 01    	psrlw  xmm11,0x1
    bf1c:	66 41 0f 71 d2 01    	psrlw  xmm10,0x1
    bf22:	f3 0f 7e 62 07       	movq   xmm4,QWORD PTR [rdx+0x7]
    bf27:	66 0f 6f c4          	movdqa xmm0,xmm4
    bf2b:	66 0f 38 00 47 80    	pshufb xmm0,XMMWORD PTR [rdi-0x80]
    bf31:	66 0f 6f ec          	movdqa xmm5,xmm4
    bf35:	66 0f 38 00 6f 90    	pshufb xmm5,XMMWORD PTR [rdi-0x70]
    bf3b:	66 0f 6f fc          	movdqa xmm7,xmm4
    bf3f:	66 0f 38 00 7f a0    	pshufb xmm7,XMMWORD PTR [rdi-0x60]
    bf45:	66 0f 38 00 67 b0    	pshufb xmm4,XMMWORD PTR [rdi-0x50]
    bf4b:	66 41 0f 7f 41 c0    	movdqa XMMWORD PTR [r9-0x40],xmm0
    bf51:	66 41 0f 7f 69 d0    	movdqa XMMWORD PTR [r9-0x30],xmm5
    bf57:	66 41 0f 7f 79 e0    	movdqa XMMWORD PTR [r9-0x20],xmm7
    bf5d:	66 41 0f 7f 61 f0    	movdqa XMMWORD PTR [r9-0x10],xmm4
    bf63:	66 0f 6f 72 10       	movdqa xmm6,XMMWORD PTR [rdx+0x10]
    bf68:	f3 0f 6f 7a 11       	movdqu xmm7,XMMWORD PTR [rdx+0x11]
    bf6d:	66 0f 6f ee          	movdqa xmm5,xmm6
    bf71:	66 0f 73 fd 01       	pslldq xmm5,0x1
    bf76:	66 44 0f 6f ce       	movdqa xmm9,xmm6
    bf7b:	66 44 0f e0 cf       	pavgb  xmm9,xmm7
    bf80:	66 0f 6f e5          	movdqa xmm4,xmm5
    bf84:	66 0f e0 e7          	pavgb  xmm4,xmm7
    bf88:	66 0f ef fd          	pxor   xmm7,xmm5
    bf8c:	66 0f db 3d 00 00 00 	pand   xmm7,XMMWORD PTR [rip+0x0]        # bf94 <x264_8_intra_sa8d_x9_8x8_sse4+0x4d4>
    bf93:	00 
    bf94:	66 0f d8 e7          	psubusb xmm4,xmm7
    bf98:	66 0f e0 f4          	pavgb  xmm6,xmm4
    bf9c:	66 0f 6f c6          	movdqa xmm0,xmm6
    bfa0:	66 0f 38 00 47 c0    	pshufb xmm0,XMMWORD PTR [rdi-0x40]
    bfa6:	66 0f 6f ee          	movdqa xmm5,xmm6
    bfaa:	66 0f 38 00 6f d0    	pshufb xmm5,XMMWORD PTR [rdi-0x30]
    bfb0:	66 0f 6f fe          	movdqa xmm7,xmm6
    bfb4:	66 0f 38 00 7f e0    	pshufb xmm7,XMMWORD PTR [rdi-0x20]
    bfba:	66 0f 6f e6          	movdqa xmm4,xmm6
    bfbe:	66 0f 38 00 67 f0    	pshufb xmm4,XMMWORD PTR [rdi-0x10]
    bfc4:	49 83 c1 40          	add    r9,0x40
    bfc8:	e8 33 02 00 00       	call   c200 <x264_8_intra_sa8d_x9_8x8_sse4+0x740>
    bfcd:	66 44 0f 38 02 d8    	phaddd xmm11,xmm0
    bfd3:	66 41 0f 6f c1       	movdqa xmm0,xmm9
    bfd8:	66 0f 38 00 07       	pshufb xmm0,XMMWORD PTR [rdi]
    bfdd:	66 0f 6f ee          	movdqa xmm5,xmm6
    bfe1:	66 0f 38 00 6f 10    	pshufb xmm5,XMMWORD PTR [rdi+0x10]
    bfe7:	66 41 0f 6f f9       	movdqa xmm7,xmm9
    bfec:	66 0f 38 00 7f 20    	pshufb xmm7,XMMWORD PTR [rdi+0x20]
    bff2:	66 0f 6f e6          	movdqa xmm4,xmm6
    bff6:	66 0f 38 00 67 30    	pshufb xmm4,XMMWORD PTR [rdi+0x30]
    bffc:	49 81 c1 00 01 00 00 	add    r9,0x100
    c003:	e8 f8 01 00 00       	call   c200 <x264_8_intra_sa8d_x9_8x8_sse4+0x740>
    c008:	66 45 0f 38 02 d3    	phaddd xmm10,xmm11
    c00e:	66 44 0f 6f e0       	movdqa xmm12,xmm0
    c013:	f3 0f 6f 7a 08       	movdqu xmm7,XMMWORD PTR [rdx+0x8]
    c018:	f3 0f 6f 72 07       	movdqu xmm6,XMMWORD PTR [rdx+0x7]
    c01d:	f3 0f 6f 6a 06       	movdqu xmm5,XMMWORD PTR [rdx+0x6]
    c022:	66 44 0f 6f cf       	movdqa xmm9,xmm7
    c027:	66 44 0f e0 ce       	pavgb  xmm9,xmm6
    c02c:	66 0f 6f e5          	movdqa xmm4,xmm5
    c030:	66 0f e0 e7          	pavgb  xmm4,xmm7
    c034:	66 0f ef fd          	pxor   xmm7,xmm5
    c038:	66 0f db 3d 00 00 00 	pand   xmm7,XMMWORD PTR [rip+0x0]        # c040 <x264_8_intra_sa8d_x9_8x8_sse4+0x580>
    c03f:	00 
    c040:	66 0f d8 e7          	psubusb xmm4,xmm7
    c044:	66 0f e0 f4          	pavgb  xmm6,xmm4
    c048:	66 0f 6f c6          	movdqa xmm0,xmm6
    c04c:	66 0f 38 00 47 40    	pshufb xmm0,XMMWORD PTR [rdi+0x40]
    c052:	66 0f 6f ee          	movdqa xmm5,xmm6
    c056:	66 0f 38 00 6f 50    	pshufb xmm5,XMMWORD PTR [rdi+0x50]
    c05c:	66 0f 6f fe          	movdqa xmm7,xmm6
    c060:	66 0f 38 00 7f 60    	pshufb xmm7,XMMWORD PTR [rdi+0x60]
    c066:	66 0f 6f e6          	movdqa xmm4,xmm6
    c06a:	66 0f 38 00 67 70    	pshufb xmm4,XMMWORD PTR [rdi+0x70]
    c070:	49 81 e9 c0 00 00 00 	sub    r9,0xc0
    c077:	e8 84 01 00 00       	call   c200 <x264_8_intra_sa8d_x9_8x8_sse4+0x740>
    c07c:	66 44 0f 6f d8       	movdqa xmm11,xmm0
    c081:	48 81 c7 00 01 00 00 	add    rdi,0x100
    c088:	41 0f 28 f9          	movaps xmm7,xmm9
    c08c:	f2 0f 10 fe          	movsd  xmm7,xmm6
    c090:	66 0f 6f c7          	movdqa xmm0,xmm7
    c094:	66 0f 38 00 47 80    	pshufb xmm0,XMMWORD PTR [rdi-0x80]
    c09a:	66 0f 6f ee          	movdqa xmm5,xmm6
    c09e:	66 0f 38 00 6f 90    	pshufb xmm5,XMMWORD PTR [rdi-0x70]
    c0a4:	66 0f 38 00 7f a0    	pshufb xmm7,XMMWORD PTR [rdi-0x60]
    c0aa:	66 0f 6f e6          	movdqa xmm4,xmm6
    c0ae:	66 0f 38 00 67 b0    	pshufb xmm4,XMMWORD PTR [rdi-0x50]
    c0b4:	49 83 c1 40          	add    r9,0x40
    c0b8:	e8 43 01 00 00       	call   c200 <x264_8_intra_sa8d_x9_8x8_sse4+0x740>
    c0bd:	66 44 0f 38 02 d8    	phaddd xmm11,xmm0
    c0c3:	66 41 0f 70 e9 01    	pshufd xmm5,xmm9,0x1
    c0c9:	66 0f 3a 0e ee fc    	pblendw xmm5,xmm6,0xfc
    c0cf:	66 41 0f 60 f1       	punpcklbw xmm6,xmm9
    c0d4:	66 0f 6f c5          	movdqa xmm0,xmm5
    c0d8:	66 0f 38 00 47 c0    	pshufb xmm0,XMMWORD PTR [rdi-0x40]
    c0de:	66 0f 38 00 6f d0    	pshufb xmm5,XMMWORD PTR [rdi-0x30]
    c0e4:	66 0f 6f fe          	movdqa xmm7,xmm6
    c0e8:	66 0f 38 00 7f e0    	pshufb xmm7,XMMWORD PTR [rdi-0x20]
    c0ee:	66 0f 6f e6          	movdqa xmm4,xmm6
    c0f2:	66 0f 38 00 67 f0    	pshufb xmm4,XMMWORD PTR [rdi-0x10]
    c0f8:	49 83 c1 40          	add    r9,0x40
    c0fc:	e8 ff 00 00 00       	call   c200 <x264_8_intra_sa8d_x9_8x8_sse4+0x740>
    c101:	66 41 0f 38 02 c4    	phaddd xmm0,xmm12
    c107:	66 44 0f 38 02 d8    	phaddd xmm11,xmm0
    c10d:	66 0f 3a 20 72 07 0f 	pinsrb xmm6,BYTE PTR [rdx+0x7],0xf
    c114:	66 0f 6f c6          	movdqa xmm0,xmm6
    c118:	66 0f 38 00 07       	pshufb xmm0,XMMWORD PTR [rdi]
    c11d:	66 0f 6f ee          	movdqa xmm5,xmm6
    c121:	66 0f 38 00 6f 10    	pshufb xmm5,XMMWORD PTR [rdi+0x10]
    c127:	66 0f 6f fe          	movdqa xmm7,xmm6
    c12b:	66 0f 38 00 7f 20    	pshufb xmm7,XMMWORD PTR [rdi+0x20]
    c131:	66 0f 6f e6          	movdqa xmm4,xmm6
    c135:	66 0f 38 00 67 30    	pshufb xmm4,XMMWORD PTR [rdi+0x30]
    c13b:	49 83 e9 80          	sub    r9,0xffffffffffffff80
    c13f:	e8 bc 00 00 00       	call   c200 <x264_8_intra_sa8d_x9_8x8_sse4+0x740>
    c144:	66 0f f5 05 00 00 00 	pmaddwd xmm0,XMMWORD PTR [rip+0x0]        # c14c <x264_8_intra_sa8d_x9_8x8_sse4+0x68c>
    c14b:	00 
    c14c:	66 45 0f 38 01 d3    	phaddw xmm10,xmm11
    c152:	66 0f 70 e8 ee       	pshufd xmm5,xmm0,0xee
    c157:	66 0f fd c5          	paddw  xmm0,xmm5
    c15b:	f2 0f 70 e8 0e       	pshuflw xmm5,xmm0,0xe
    c160:	66 0f e3 c5          	pavgw  xmm0,xmm5
    c164:	66 0f ef ff          	pxor   xmm7,xmm7
    c168:	66 44 0f e3 d7       	pavgw  xmm10,xmm7
    c16d:	66 0f 7e c2          	movd   edx,xmm0
    c171:	f3 0f 6f 01          	movdqu xmm0,XMMWORD PTR [rcx]
    c175:	66 41 0f fd c2       	paddw  xmm0,xmm10
    c17a:	66 41 0f 7f 00       	movdqa XMMWORD PTR [r8],xmm0
    c17f:	44 0f b7 49 10       	movzx  r9d,WORD PTR [rcx+0x10]
    c184:	44 01 ca             	add    edx,r9d
    c187:	66 41 89 50 10       	mov    WORD PTR [r8+0x10],dx
    c18c:	66 0f 38 41 c0       	phminposuw xmm0,xmm0
    c191:	66 0f 7e c0          	movd   eax,xmm0
    c195:	81 c2 00 00 08 00    	add    edx,0x80000
    c19b:	66 39 d0             	cmp    ax,dx
    c19e:	0f 4f c2             	cmovg  eax,edx
    c1a1:	89 c2                	mov    edx,eax
    c1a3:	c1 ea 10             	shr    edx,0x10
    c1a6:	c1 e2 06             	shl    edx,0x6
    c1a9:	48 83 ee 80          	sub    rsi,0xffffffffffffff80
    c1ad:	66 0f 6f 84 14 80 00 	movdqa xmm0,XMMWORD PTR [rsp+rdx*1+0x80]
    c1b4:	00 00 
    c1b6:	66 0f 6f ac 14 90 00 	movdqa xmm5,XMMWORD PTR [rsp+rdx*1+0x90]
    c1bd:	00 00 
    c1bf:	66 0f 6f bc 14 a0 00 	movdqa xmm7,XMMWORD PTR [rsp+rdx*1+0xa0]
    c1c6:	00 00 
    c1c8:	66 0f 6f a4 14 b0 00 	movdqa xmm4,XMMWORD PTR [rsp+rdx*1+0xb0]
    c1cf:	00 00 
    c1d1:	66 0f d6 46 80       	movq   QWORD PTR [rsi-0x80],xmm0
    c1d6:	0f 17 46 c0          	movhps QWORD PTR [rsi-0x40],xmm0
    c1da:	66 0f d6 6e a0       	movq   QWORD PTR [rsi-0x60],xmm5
    c1df:	0f 17 6e e0          	movhps QWORD PTR [rsi-0x20],xmm5
    c1e3:	66 0f d6 3e          	movq   QWORD PTR [rsi],xmm7
    c1e7:	0f 17 7e 40          	movhps QWORD PTR [rsi+0x40],xmm7
    c1eb:	66 0f d6 66 20       	movq   QWORD PTR [rsi+0x20],xmm4
    c1f0:	0f 17 66 60          	movhps QWORD PTR [rsi+0x60],xmm4
    c1f4:	48 81 c4 c8 02 00 00 	add    rsp,0x2c8
    c1fb:	c3                   	ret    
    c1fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    c200:	66 41 0f 7f 01       	movdqa XMMWORD PTR [r9],xmm0
    c205:	66 41 0f 7f 69 10    	movdqa XMMWORD PTR [r9+0x10],xmm5
    c20b:	66 41 0f 7f 79 20    	movdqa XMMWORD PTR [r9+0x20],xmm7
    c211:	66 41 0f 7f 61 30    	movdqa XMMWORD PTR [r9+0x30],xmm4
    c217:	f2 44 0f 12 c0       	movddup xmm8,xmm0
    c21c:	f2 0f 12 cd          	movddup xmm1,xmm5
    c220:	f2 0f 12 d7          	movddup xmm2,xmm7
    c224:	f2 0f 12 dc          	movddup xmm3,xmm4
    c228:	66 0f 6d c0          	punpckhqdq xmm0,xmm0
    c22c:	66 0f 6d ed          	punpckhqdq xmm5,xmm5
    c230:	66 0f 6d ff          	punpckhqdq xmm7,xmm7
    c234:	66 0f 6d e4          	punpckhqdq xmm4,xmm4
    c238:	66 45 0f 38 04 c7    	pmaddubsw xmm8,xmm15
    c23e:	66 41 0f 38 04 cf    	pmaddubsw xmm1,xmm15
    c244:	66 44 0f f9 44 24 08 	psubw  xmm8,XMMWORD PTR [rsp+0x8]
    c24b:	66 0f f9 4c 24 18    	psubw  xmm1,XMMWORD PTR [rsp+0x18]
    c251:	66 41 0f 38 04 c7    	pmaddubsw xmm0,xmm15
    c257:	66 41 0f 38 04 ef    	pmaddubsw xmm5,xmm15
    c25d:	66 0f f9 44 24 28    	psubw  xmm0,XMMWORD PTR [rsp+0x28]
    c263:	66 0f f9 6c 24 38    	psubw  xmm5,XMMWORD PTR [rsp+0x38]
    c269:	66 41 0f 38 04 d7    	pmaddubsw xmm2,xmm15
    c26f:	66 41 0f 38 04 df    	pmaddubsw xmm3,xmm15
    c275:	66 0f f9 54 24 48    	psubw  xmm2,XMMWORD PTR [rsp+0x48]
    c27b:	66 0f f9 5c 24 58    	psubw  xmm3,XMMWORD PTR [rsp+0x58]
    c281:	66 41 0f 38 04 ff    	pmaddubsw xmm7,xmm15
    c287:	66 41 0f 38 04 e7    	pmaddubsw xmm4,xmm15
    c28d:	66 0f f9 7c 24 68    	psubw  xmm7,XMMWORD PTR [rsp+0x68]
    c293:	66 0f f9 64 24 78    	psubw  xmm4,XMMWORD PTR [rsp+0x78]
    c299:	66 45 0f 6f e8       	movdqa xmm13,xmm8
    c29e:	66 44 0f fd c1       	paddw  xmm8,xmm1
    c2a3:	66 41 0f f9 cd       	psubw  xmm1,xmm13
    c2a8:	66 44 0f 6f e8       	movdqa xmm13,xmm0
    c2ad:	66 0f fd c5          	paddw  xmm0,xmm5
    c2b1:	66 41 0f f9 ed       	psubw  xmm5,xmm13
    c2b6:	66 45 0f 6f e8       	movdqa xmm13,xmm8
    c2bb:	66 44 0f fd c0       	paddw  xmm8,xmm0
    c2c0:	66 41 0f f9 c5       	psubw  xmm0,xmm13
    c2c5:	66 44 0f 6f e9       	movdqa xmm13,xmm1
    c2ca:	66 0f fd cd          	paddw  xmm1,xmm5
    c2ce:	66 41 0f f9 ed       	psubw  xmm5,xmm13
    c2d3:	66 44 0f 6f ea       	movdqa xmm13,xmm2
    c2d8:	66 0f fd d3          	paddw  xmm2,xmm3
    c2dc:	66 41 0f f9 dd       	psubw  xmm3,xmm13
    c2e1:	66 44 0f 6f ef       	movdqa xmm13,xmm7
    c2e6:	66 0f fd fc          	paddw  xmm7,xmm4
    c2ea:	66 41 0f f9 e5       	psubw  xmm4,xmm13
    c2ef:	66 44 0f 6f ea       	movdqa xmm13,xmm2
    c2f4:	66 0f fd d7          	paddw  xmm2,xmm7
    c2f8:	66 41 0f f9 fd       	psubw  xmm7,xmm13
    c2fd:	66 44 0f 6f eb       	movdqa xmm13,xmm3
    c302:	66 0f fd dc          	paddw  xmm3,xmm4
    c306:	66 41 0f f9 e5       	psubw  xmm4,xmm13
    c30b:	66 45 0f 6f e8       	movdqa xmm13,xmm8
    c310:	66 44 0f fd c2       	paddw  xmm8,xmm2
    c315:	66 41 0f f9 d5       	psubw  xmm2,xmm13
    c31a:	66 44 0f 6f e9       	movdqa xmm13,xmm1
    c31f:	66 0f fd cb          	paddw  xmm1,xmm3
    c323:	66 41 0f f9 dd       	psubw  xmm3,xmm13
    c328:	45 0f 28 e8          	movaps xmm13,xmm8
    c32c:	44 0f c6 ea dd       	shufps xmm13,xmm2,0xdd
    c331:	44 0f c6 c2 88       	shufps xmm8,xmm2,0x88
    c336:	66 41 0f 6f d0       	movdqa xmm2,xmm8
    c33b:	66 45 0f fd c5       	paddw  xmm8,xmm13
    c340:	66 44 0f f9 ea       	psubw  xmm13,xmm2
    c345:	0f 28 d1             	movaps xmm2,xmm1
    c348:	0f c6 d3 dd          	shufps xmm2,xmm3,0xdd
    c34c:	0f c6 cb 88          	shufps xmm1,xmm3,0x88
    c350:	66 0f 6f d9          	movdqa xmm3,xmm1
    c354:	66 0f fd ca          	paddw  xmm1,xmm2
    c358:	66 0f f9 d3          	psubw  xmm2,xmm3
    c35c:	66 0f 6f d8          	movdqa xmm3,xmm0
    c360:	66 0f fd c7          	paddw  xmm0,xmm7
    c364:	66 0f f9 fb          	psubw  xmm7,xmm3
    c368:	66 0f 6f dd          	movdqa xmm3,xmm5
    c36c:	66 0f fd ec          	paddw  xmm5,xmm4
    c370:	66 0f f9 e3          	psubw  xmm4,xmm3
    c374:	0f 28 d8             	movaps xmm3,xmm0
    c377:	0f c6 df dd          	shufps xmm3,xmm7,0xdd
    c37b:	0f c6 c7 88          	shufps xmm0,xmm7,0x88
    c37f:	66 0f 6f f8          	movdqa xmm7,xmm0
    c383:	66 0f fd c3          	paddw  xmm0,xmm3
    c387:	66 0f f9 df          	psubw  xmm3,xmm7
    c38b:	0f 28 fd             	movaps xmm7,xmm5
    c38e:	0f c6 fc dd          	shufps xmm7,xmm4,0xdd
    c392:	0f c6 ec 88          	shufps xmm5,xmm4,0x88
    c396:	66 0f 6f e5          	movdqa xmm4,xmm5
    c39a:	66 0f fd ef          	paddw  xmm5,xmm7
    c39e:	66 0f f9 fc          	psubw  xmm7,xmm4
    c3a2:	66 41 0f 6f e0       	movdqa xmm4,xmm8
    c3a7:	66 45 0f 3a 0e c5 aa 	pblendw xmm8,xmm13,0xaa
    c3ae:	66 41 0f 72 f5 10    	pslld  xmm13,0x10
    c3b4:	66 0f 72 d4 10       	psrld  xmm4,0x10
    c3b9:	66 44 0f eb ec       	por    xmm13,xmm4
    c3be:	66 45 0f 38 1d c0    	pabsw  xmm8,xmm8
    c3c4:	66 45 0f 38 1d ed    	pabsw  xmm13,xmm13
    c3ca:	66 45 0f ee c5       	pmaxsw xmm8,xmm13
    c3cf:	66 0f 6f e1          	movdqa xmm4,xmm1
    c3d3:	66 0f 3a 0e ca aa    	pblendw xmm1,xmm2,0xaa
    c3d9:	66 0f 72 f2 10       	pslld  xmm2,0x10
    c3de:	66 0f 72 d4 10       	psrld  xmm4,0x10
    c3e3:	66 0f eb d4          	por    xmm2,xmm4
    c3e7:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
    c3ec:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
    c3f1:	66 0f ee ca          	pmaxsw xmm1,xmm2
    c3f5:	66 0f 6f e0          	movdqa xmm4,xmm0
    c3f9:	66 0f 3a 0e c3 aa    	pblendw xmm0,xmm3,0xaa
    c3ff:	66 0f 72 f3 10       	pslld  xmm3,0x10
    c404:	66 0f 72 d4 10       	psrld  xmm4,0x10
    c409:	66 0f eb dc          	por    xmm3,xmm4
    c40d:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
    c412:	66 0f 38 1d db       	pabsw  xmm3,xmm3
    c417:	66 0f ee c3          	pmaxsw xmm0,xmm3
    c41b:	66 0f 6f e5          	movdqa xmm4,xmm5
    c41f:	66 0f 3a 0e ef aa    	pblendw xmm5,xmm7,0xaa
    c425:	66 0f 72 f7 10       	pslld  xmm7,0x10
    c42a:	66 0f 72 d4 10       	psrld  xmm4,0x10
    c42f:	66 0f eb fc          	por    xmm7,xmm4
    c433:	66 0f 38 1d ed       	pabsw  xmm5,xmm5
    c438:	66 0f 38 1d ff       	pabsw  xmm7,xmm7
    c43d:	66 0f ee ef          	pmaxsw xmm5,xmm7
    c441:	66 44 0f fd c1       	paddw  xmm8,xmm1
    c446:	66 44 0f fd c0       	paddw  xmm8,xmm0
    c44b:	66 41 0f 6f c0       	movdqa xmm0,xmm8
    c450:	66 0f fd c5          	paddw  xmm0,xmm5
    c454:	c3                   	ret    
    c455:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    c45c:	00 
    c45d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000c460 <x264_8_pixel_satd_4x4_avx>:
    c460:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    c464:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    c468:	c5 f9 6f 25 00 00 00 	vmovdqa xmm4,XMMWORD PTR [rip+0x0]        # c470 <x264_8_pixel_satd_4x4_avx+0x10>
    c46f:	00 
    c470:	c5 f9 6e 12          	vmovd  xmm2,DWORD PTR [rdx]
    c474:	c5 f9 6e 2c 0a       	vmovd  xmm5,DWORD PTR [rdx+rcx*1]
    c479:	c5 e8 c6 d5 00       	vshufps xmm2,xmm2,xmm5,0x0
    c47e:	c5 f9 6e 1c 4a       	vmovd  xmm3,DWORD PTR [rdx+rcx*2]
    c483:	c4 a1 79 6e 2c 0a    	vmovd  xmm5,DWORD PTR [rdx+r9*1]
    c489:	c5 e0 c6 dd 00       	vshufps xmm3,xmm3,xmm5,0x0
    c48e:	c5 f9 6e 07          	vmovd  xmm0,DWORD PTR [rdi]
    c492:	c5 f9 6e 2c 37       	vmovd  xmm5,DWORD PTR [rdi+rsi*1]
    c497:	c5 f8 c6 c5 00       	vshufps xmm0,xmm0,xmm5,0x0
    c49c:	c5 f9 6e 0c 77       	vmovd  xmm1,DWORD PTR [rdi+rsi*2]
    c4a1:	c4 a1 79 6e 2c 07    	vmovd  xmm5,DWORD PTR [rdi+r8*1]
    c4a7:	c5 f0 c6 cd 00       	vshufps xmm1,xmm1,xmm5,0x0
    c4ac:	c4 e2 69 04 d4       	vpmaddubsw xmm2,xmm2,xmm4
    c4b1:	c4 e2 79 04 c4       	vpmaddubsw xmm0,xmm0,xmm4
    c4b6:	c4 e2 61 04 dc       	vpmaddubsw xmm3,xmm3,xmm4
    c4bb:	c4 e2 71 04 cc       	vpmaddubsw xmm1,xmm1,xmm4
    c4c0:	c5 f9 f9 c2          	vpsubw xmm0,xmm0,xmm2
    c4c4:	c5 f1 f9 cb          	vpsubw xmm1,xmm1,xmm3
    c4c8:	c5 f9 fd d1          	vpaddw xmm2,xmm0,xmm1
    c4cc:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    c4d0:	c5 e9 6d c1          	vpunpckhqdq xmm0,xmm2,xmm1
    c4d4:	c5 e9 6c d1          	vpunpcklqdq xmm2,xmm2,xmm1
    c4d8:	c5 e9 fd c8          	vpaddw xmm1,xmm2,xmm0
    c4dc:	c5 f9 f9 c2          	vpsubw xmm0,xmm0,xmm2
    c4e0:	c4 e3 71 0e d0 aa    	vpblendw xmm2,xmm1,xmm0,0xaa
    c4e6:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    c4eb:	c5 f1 72 d1 10       	vpsrld xmm1,xmm1,0x10
    c4f0:	c5 f9 eb c1          	vpor   xmm0,xmm0,xmm1
    c4f4:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    c4f9:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    c4fe:	c5 e9 ee d0          	vpmaxsw xmm2,xmm2,xmm0
    c502:	c5 e9 f5 15 00 00 00 	vpmaddwd xmm2,xmm2,XMMWORD PTR [rip+0x0]        # c50a <x264_8_pixel_satd_4x4_avx+0xaa>
    c509:	00 
    c50a:	c5 e9 6d c2          	vpunpckhqdq xmm0,xmm2,xmm2
    c50e:	c5 e9 fe d0          	vpaddd xmm2,xmm2,xmm0
    c512:	c5 fb 70 c2 4e       	vpshuflw xmm0,xmm2,0x4e
    c517:	c5 e9 fe d0          	vpaddd xmm2,xmm2,xmm0
    c51b:	c5 f9 7e d0          	vmovd  eax,xmm2
    c51f:	c3                   	ret    

000000000000c520 <x264_8_pixel_satd_4x8_avx>:
    c520:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    c524:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    c528:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # c530 <x264_8_pixel_satd_4x8_avx+0x10>
    c52f:	00 
    c530:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    c534:	c5 f9 6e 2c 0a       	vmovd  xmm5,DWORD PTR [rdx+rcx*1]
    c539:	c5 f9 6e 34 4a       	vmovd  xmm6,DWORD PTR [rdx+rcx*2]
    c53e:	4c 01 ca             	add    rdx,r9
    c541:	c5 f9 6e 07          	vmovd  xmm0,DWORD PTR [rdi]
    c545:	c5 f9 6e 0c 37       	vmovd  xmm1,DWORD PTR [rdi+rsi*1]
    c54a:	c5 f9 6e 14 77       	vmovd  xmm2,DWORD PTR [rdi+rsi*2]
    c54f:	4c 01 c7             	add    rdi,r8
    c552:	c5 f9 6e 1c 0a       	vmovd  xmm3,DWORD PTR [rdx+rcx*1]
    c557:	c5 d8 c6 e3 00       	vshufps xmm4,xmm4,xmm3,0x0
    c55c:	c5 f9 6e 1c 37       	vmovd  xmm3,DWORD PTR [rdi+rsi*1]
    c561:	c5 f8 c6 c3 00       	vshufps xmm0,xmm0,xmm3,0x0
    c566:	c5 f9 6e 1c 4a       	vmovd  xmm3,DWORD PTR [rdx+rcx*2]
    c56b:	c5 d0 c6 eb 00       	vshufps xmm5,xmm5,xmm3,0x0
    c570:	c5 f9 6e 1c 77       	vmovd  xmm3,DWORD PTR [rdi+rsi*2]
    c575:	c5 f0 c6 cb 00       	vshufps xmm1,xmm1,xmm3,0x0
    c57a:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    c57f:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    c584:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    c589:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    c58e:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    c592:	c5 f1 f9 cd          	vpsubw xmm1,xmm1,xmm5
    c596:	c5 f9 6e 2a          	vmovd  xmm5,DWORD PTR [rdx]
    c59a:	4c 01 ca             	add    rdx,r9
    c59d:	c5 f9 6e 1f          	vmovd  xmm3,DWORD PTR [rdi]
    c5a1:	4c 01 c7             	add    rdi,r8
    c5a4:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    c5a8:	c5 c8 c6 f4 00       	vshufps xmm6,xmm6,xmm4,0x0
    c5ad:	c5 f9 6e 27          	vmovd  xmm4,DWORD PTR [rdi]
    c5b1:	c5 e8 c6 d4 00       	vshufps xmm2,xmm2,xmm4,0x0
    c5b6:	c5 f9 6e 24 0a       	vmovd  xmm4,DWORD PTR [rdx+rcx*1]
    c5bb:	c5 d0 c6 ec 00       	vshufps xmm5,xmm5,xmm4,0x0
    c5c0:	c5 f9 6e 24 37       	vmovd  xmm4,DWORD PTR [rdi+rsi*1]
    c5c5:	c5 e0 c6 dc 00       	vshufps xmm3,xmm3,xmm4,0x0
    c5ca:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    c5cf:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    c5d4:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    c5d9:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    c5de:	c5 e9 f9 d6          	vpsubw xmm2,xmm2,xmm6
    c5e2:	c5 e1 f9 dd          	vpsubw xmm3,xmm3,xmm5
    c5e6:	c5 f9 fd e1          	vpaddw xmm4,xmm0,xmm1
    c5ea:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    c5ee:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    c5f2:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    c5f6:	c5 d9 fd d0          	vpaddw xmm2,xmm4,xmm0
    c5fa:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    c5fe:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    c602:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    c606:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    c60b:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    c610:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    c615:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    c61a:	c4 e3 69 0e c8 aa    	vpblendw xmm1,xmm2,xmm0,0xaa
    c620:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    c625:	c5 e9 72 d2 10       	vpsrld xmm2,xmm2,0x10
    c62a:	c5 f9 eb c2          	vpor   xmm0,xmm0,xmm2
    c62e:	c5 f1 ee c8          	vpmaxsw xmm1,xmm1,xmm0
    c632:	c4 e3 59 0e d3 aa    	vpblendw xmm2,xmm4,xmm3,0xaa
    c638:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
    c63d:	c5 d9 72 d4 10       	vpsrld xmm4,xmm4,0x10
    c642:	c5 e1 eb dc          	vpor   xmm3,xmm3,xmm4
    c646:	c5 e9 ee d3          	vpmaxsw xmm2,xmm2,xmm3
    c64a:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    c64e:	c5 f1 f5 0d 00 00 00 	vpmaddwd xmm1,xmm1,XMMWORD PTR [rip+0x0]        # c656 <x264_8_pixel_satd_4x8_avx+0x136>
    c655:	00 
    c656:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    c65a:	c5 f1 fe ca          	vpaddd xmm1,xmm1,xmm2
    c65e:	c5 fb 70 d1 4e       	vpshuflw xmm2,xmm1,0x4e
    c663:	c5 f1 fe ca          	vpaddd xmm1,xmm1,xmm2
    c667:	c5 f9 7e c8          	vmovd  eax,xmm1
    c66b:	c3                   	ret    
    c66c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000c670 <x264_8_pixel_satd_4x16_avx>:
    c670:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    c674:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    c678:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # c680 <x264_8_pixel_satd_4x16_avx+0x10>
    c67f:	00 
    c680:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    c684:	c5 f9 6e 2c 0a       	vmovd  xmm5,DWORD PTR [rdx+rcx*1]
    c689:	c5 f9 6e 34 4a       	vmovd  xmm6,DWORD PTR [rdx+rcx*2]
    c68e:	4c 01 ca             	add    rdx,r9
    c691:	c5 f9 6e 07          	vmovd  xmm0,DWORD PTR [rdi]
    c695:	c5 f9 6e 0c 37       	vmovd  xmm1,DWORD PTR [rdi+rsi*1]
    c69a:	c5 f9 6e 14 77       	vmovd  xmm2,DWORD PTR [rdi+rsi*2]
    c69f:	4c 01 c7             	add    rdi,r8
    c6a2:	c5 f9 6e 1c 0a       	vmovd  xmm3,DWORD PTR [rdx+rcx*1]
    c6a7:	c5 d8 c6 e3 00       	vshufps xmm4,xmm4,xmm3,0x0
    c6ac:	c5 f9 6e 1c 37       	vmovd  xmm3,DWORD PTR [rdi+rsi*1]
    c6b1:	c5 f8 c6 c3 00       	vshufps xmm0,xmm0,xmm3,0x0
    c6b6:	c5 f9 6e 1c 4a       	vmovd  xmm3,DWORD PTR [rdx+rcx*2]
    c6bb:	c5 d0 c6 eb 00       	vshufps xmm5,xmm5,xmm3,0x0
    c6c0:	c5 f9 6e 1c 77       	vmovd  xmm3,DWORD PTR [rdi+rsi*2]
    c6c5:	c5 f0 c6 cb 00       	vshufps xmm1,xmm1,xmm3,0x0
    c6ca:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    c6cf:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    c6d4:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    c6d9:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    c6de:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    c6e2:	c5 f1 f9 cd          	vpsubw xmm1,xmm1,xmm5
    c6e6:	c5 f9 6e 2a          	vmovd  xmm5,DWORD PTR [rdx]
    c6ea:	4c 01 ca             	add    rdx,r9
    c6ed:	c5 f9 6e 1f          	vmovd  xmm3,DWORD PTR [rdi]
    c6f1:	4c 01 c7             	add    rdi,r8
    c6f4:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    c6f8:	c5 c8 c6 f4 00       	vshufps xmm6,xmm6,xmm4,0x0
    c6fd:	c5 f9 6e 27          	vmovd  xmm4,DWORD PTR [rdi]
    c701:	c5 e8 c6 d4 00       	vshufps xmm2,xmm2,xmm4,0x0
    c706:	c5 f9 6e 24 0a       	vmovd  xmm4,DWORD PTR [rdx+rcx*1]
    c70b:	c5 d0 c6 ec 00       	vshufps xmm5,xmm5,xmm4,0x0
    c710:	c5 f9 6e 24 37       	vmovd  xmm4,DWORD PTR [rdi+rsi*1]
    c715:	c5 e0 c6 dc 00       	vshufps xmm3,xmm3,xmm4,0x0
    c71a:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    c71f:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    c724:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    c729:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    c72e:	c5 e9 f9 d6          	vpsubw xmm2,xmm2,xmm6
    c732:	c5 e1 f9 dd          	vpsubw xmm3,xmm3,xmm5
    c736:	c5 f9 fd e1          	vpaddw xmm4,xmm0,xmm1
    c73a:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    c73e:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    c742:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    c746:	c5 d9 fd d0          	vpaddw xmm2,xmm4,xmm0
    c74a:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    c74e:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    c752:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    c756:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    c75b:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    c760:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    c765:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    c76a:	c4 e3 69 0e c8 aa    	vpblendw xmm1,xmm2,xmm0,0xaa
    c770:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    c775:	c5 e9 72 d2 10       	vpsrld xmm2,xmm2,0x10
    c77a:	c5 f9 eb c2          	vpor   xmm0,xmm0,xmm2
    c77e:	c5 f1 ee c8          	vpmaxsw xmm1,xmm1,xmm0
    c782:	c4 e3 59 0e d3 aa    	vpblendw xmm2,xmm4,xmm3,0xaa
    c788:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
    c78d:	c5 d9 72 d4 10       	vpsrld xmm4,xmm4,0x10
    c792:	c5 e1 eb dc          	vpor   xmm3,xmm3,xmm4
    c796:	c5 e9 ee d3          	vpmaxsw xmm2,xmm2,xmm3
    c79a:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    c79e:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
    c7a2:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
    c7a6:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    c7aa:	c5 f9 6e 2c 0a       	vmovd  xmm5,DWORD PTR [rdx+rcx*1]
    c7af:	c5 f9 6e 34 4a       	vmovd  xmm6,DWORD PTR [rdx+rcx*2]
    c7b4:	4c 01 ca             	add    rdx,r9
    c7b7:	c5 f9 6e 3f          	vmovd  xmm7,DWORD PTR [rdi]
    c7bb:	c5 f9 6e 14 37       	vmovd  xmm2,DWORD PTR [rdi+rsi*1]
    c7c0:	c5 f9 6e 04 77       	vmovd  xmm0,DWORD PTR [rdi+rsi*2]
    c7c5:	4c 01 c7             	add    rdi,r8
    c7c8:	c5 f9 6e 1c 0a       	vmovd  xmm3,DWORD PTR [rdx+rcx*1]
    c7cd:	c5 d8 c6 e3 00       	vshufps xmm4,xmm4,xmm3,0x0
    c7d2:	c5 f9 6e 1c 37       	vmovd  xmm3,DWORD PTR [rdi+rsi*1]
    c7d7:	c5 c0 c6 fb 00       	vshufps xmm7,xmm7,xmm3,0x0
    c7dc:	c5 f9 6e 1c 4a       	vmovd  xmm3,DWORD PTR [rdx+rcx*2]
    c7e1:	c5 d0 c6 eb 00       	vshufps xmm5,xmm5,xmm3,0x0
    c7e6:	c5 f9 6e 1c 77       	vmovd  xmm3,DWORD PTR [rdi+rsi*2]
    c7eb:	c5 e8 c6 d3 00       	vshufps xmm2,xmm2,xmm3,0x0
    c7f0:	c5 f9 6f 1d 00 00 00 	vmovdqa xmm3,XMMWORD PTR [rip+0x0]        # c7f8 <x264_8_pixel_satd_4x16_avx+0x188>
    c7f7:	00 
    c7f8:	c4 e2 59 04 e3       	vpmaddubsw xmm4,xmm4,xmm3
    c7fd:	c4 e2 41 04 fb       	vpmaddubsw xmm7,xmm7,xmm3
    c802:	c4 e2 51 04 eb       	vpmaddubsw xmm5,xmm5,xmm3
    c807:	c4 e2 69 04 d3       	vpmaddubsw xmm2,xmm2,xmm3
    c80c:	c5 c1 f9 fc          	vpsubw xmm7,xmm7,xmm4
    c810:	c5 e9 f9 d5          	vpsubw xmm2,xmm2,xmm5
    c814:	c5 f9 6e 2a          	vmovd  xmm5,DWORD PTR [rdx]
    c818:	4c 01 ca             	add    rdx,r9
    c81b:	c5 f9 6e 1f          	vmovd  xmm3,DWORD PTR [rdi]
    c81f:	4c 01 c7             	add    rdi,r8
    c822:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    c826:	c5 c8 c6 f4 00       	vshufps xmm6,xmm6,xmm4,0x0
    c82b:	c5 f9 6e 27          	vmovd  xmm4,DWORD PTR [rdi]
    c82f:	c5 f8 c6 c4 00       	vshufps xmm0,xmm0,xmm4,0x0
    c834:	c5 f9 6e 24 0a       	vmovd  xmm4,DWORD PTR [rdx+rcx*1]
    c839:	c5 d0 c6 ec 00       	vshufps xmm5,xmm5,xmm4,0x0
    c83e:	c5 f9 6e 24 37       	vmovd  xmm4,DWORD PTR [rdi+rsi*1]
    c843:	c5 e0 c6 dc 00       	vshufps xmm3,xmm3,xmm4,0x0
    c848:	c5 f9 6f 25 00 00 00 	vmovdqa xmm4,XMMWORD PTR [rip+0x0]        # c850 <x264_8_pixel_satd_4x16_avx+0x1e0>
    c84f:	00 
    c850:	c4 e2 49 04 f4       	vpmaddubsw xmm6,xmm6,xmm4
    c855:	c4 e2 79 04 c4       	vpmaddubsw xmm0,xmm0,xmm4
    c85a:	c4 e2 51 04 ec       	vpmaddubsw xmm5,xmm5,xmm4
    c85f:	c4 e2 61 04 dc       	vpmaddubsw xmm3,xmm3,xmm4
    c864:	c5 f9 f9 c6          	vpsubw xmm0,xmm0,xmm6
    c868:	c5 e1 f9 dd          	vpsubw xmm3,xmm3,xmm5
    c86c:	c5 c1 fd e2          	vpaddw xmm4,xmm7,xmm2
    c870:	c5 e9 f9 d7          	vpsubw xmm2,xmm2,xmm7
    c874:	c5 f9 fd fb          	vpaddw xmm7,xmm0,xmm3
    c878:	c5 e1 f9 d8          	vpsubw xmm3,xmm3,xmm0
    c87c:	c5 d9 fd c7          	vpaddw xmm0,xmm4,xmm7
    c880:	c5 c1 f9 fc          	vpsubw xmm7,xmm7,xmm4
    c884:	c5 e9 fd e3          	vpaddw xmm4,xmm2,xmm3
    c888:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    c88c:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    c891:	c4 e2 79 1d ff       	vpabsw xmm7,xmm7
    c896:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    c89b:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    c8a0:	c4 e3 79 0e d7 aa    	vpblendw xmm2,xmm0,xmm7,0xaa
    c8a6:	c5 c1 72 f7 10       	vpslld xmm7,xmm7,0x10
    c8ab:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
    c8b0:	c5 c1 eb f8          	vpor   xmm7,xmm7,xmm0
    c8b4:	c5 e9 ee d7          	vpmaxsw xmm2,xmm2,xmm7
    c8b8:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    c8bc:	c4 e3 59 0e c3 aa    	vpblendw xmm0,xmm4,xmm3,0xaa
    c8c2:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
    c8c7:	c5 d9 72 d4 10       	vpsrld xmm4,xmm4,0x10
    c8cc:	c5 e1 eb dc          	vpor   xmm3,xmm3,xmm4
    c8d0:	c5 f9 ee c3          	vpmaxsw xmm0,xmm0,xmm3
    c8d4:	c5 f1 fd c8          	vpaddw xmm1,xmm1,xmm0
    c8d8:	c5 f1 f5 0d 00 00 00 	vpmaddwd xmm1,xmm1,XMMWORD PTR [rip+0x0]        # c8e0 <x264_8_pixel_satd_4x16_avx+0x270>
    c8df:	00 
    c8e0:	c5 f1 6d c1          	vpunpckhqdq xmm0,xmm1,xmm1
    c8e4:	c5 f1 fe c8          	vpaddd xmm1,xmm1,xmm0
    c8e8:	c5 fb 70 c1 4e       	vpshuflw xmm0,xmm1,0x4e
    c8ed:	c5 f1 fe c8          	vpaddd xmm1,xmm1,xmm0
    c8f1:	c5 f9 7e c8          	vmovd  eax,xmm1
    c8f5:	c3                   	ret    
    c8f6:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    c8fd:	00 
    c8fe:	66 90                	xchg   ax,ax

000000000000c900 <x264_8_pixel_satd_8x8_internal_avx>:
    c900:	c5 fb 12 22          	vmovddup xmm4,QWORD PTR [rdx]
    c904:	c5 fb 12 2c 0a       	vmovddup xmm5,QWORD PTR [rdx+rcx*1]
    c909:	c5 fb 12 07          	vmovddup xmm0,QWORD PTR [rdi]
    c90d:	c5 fb 12 0c 37       	vmovddup xmm1,QWORD PTR [rdi+rsi*1]
    c912:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    c917:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    c91c:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    c921:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    c926:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    c92a:	c5 f1 f9 cd          	vpsubw xmm1,xmm1,xmm5
    c92e:	c5 fb 12 24 4a       	vmovddup xmm4,QWORD PTR [rdx+rcx*2]
    c933:	c4 a1 7b 12 2c 0a    	vmovddup xmm5,QWORD PTR [rdx+r9*1]
    c939:	c5 fb 12 14 77       	vmovddup xmm2,QWORD PTR [rdi+rsi*2]
    c93e:	c4 a1 7b 12 1c 07    	vmovddup xmm3,QWORD PTR [rdi+r8*1]
    c944:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    c949:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    c94e:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    c953:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    c958:	c5 e9 f9 d4          	vpsubw xmm2,xmm2,xmm4
    c95c:	c5 e1 f9 dd          	vpsubw xmm3,xmm3,xmm5
    c960:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    c964:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    c968:	c5 f9 fd e1          	vpaddw xmm4,xmm0,xmm1
    c96c:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    c970:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    c974:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    c978:	c5 d9 fd d0          	vpaddw xmm2,xmm4,xmm0
    c97c:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    c980:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    c984:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    c988:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    c98d:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    c992:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    c997:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    c99c:	c4 e3 69 0e c8 aa    	vpblendw xmm1,xmm2,xmm0,0xaa
    c9a2:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    c9a7:	c5 e9 72 d2 10       	vpsrld xmm2,xmm2,0x10
    c9ac:	c5 f9 eb c2          	vpor   xmm0,xmm0,xmm2
    c9b0:	c5 f1 ee c8          	vpmaxsw xmm1,xmm1,xmm0
    c9b4:	c5 c9 fd f1          	vpaddw xmm6,xmm6,xmm1
    c9b8:	c4 e3 59 0e d3 aa    	vpblendw xmm2,xmm4,xmm3,0xaa
    c9be:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
    c9c3:	c5 d9 72 d4 10       	vpsrld xmm4,xmm4,0x10
    c9c8:	c5 e1 eb dc          	vpor   xmm3,xmm3,xmm4
    c9cc:	c5 e9 ee d3          	vpmaxsw xmm2,xmm2,xmm3
    c9d0:	c5 c9 fd f2          	vpaddw xmm6,xmm6,xmm2
    c9d4:	c5 fb 12 22          	vmovddup xmm4,QWORD PTR [rdx]
    c9d8:	c5 fb 12 2c 0a       	vmovddup xmm5,QWORD PTR [rdx+rcx*1]
    c9dd:	c5 fb 12 0f          	vmovddup xmm1,QWORD PTR [rdi]
    c9e1:	c5 fb 12 14 37       	vmovddup xmm2,QWORD PTR [rdi+rsi*1]
    c9e6:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    c9eb:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    c9f0:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    c9f5:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    c9fa:	c5 f1 f9 cc          	vpsubw xmm1,xmm1,xmm4
    c9fe:	c5 e9 f9 d5          	vpsubw xmm2,xmm2,xmm5
    ca02:	c5 fb 12 24 4a       	vmovddup xmm4,QWORD PTR [rdx+rcx*2]
    ca07:	c4 a1 7b 12 2c 0a    	vmovddup xmm5,QWORD PTR [rdx+r9*1]
    ca0d:	c5 fb 12 04 77       	vmovddup xmm0,QWORD PTR [rdi+rsi*2]
    ca12:	c4 a1 7b 12 1c 07    	vmovddup xmm3,QWORD PTR [rdi+r8*1]
    ca18:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    ca1d:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    ca22:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    ca27:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    ca2c:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    ca30:	c5 e1 f9 dd          	vpsubw xmm3,xmm3,xmm5
    ca34:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    ca38:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    ca3c:	c5 f1 fd e2          	vpaddw xmm4,xmm1,xmm2
    ca40:	c5 e9 f9 d1          	vpsubw xmm2,xmm2,xmm1
    ca44:	c5 f9 fd cb          	vpaddw xmm1,xmm0,xmm3
    ca48:	c5 e1 f9 d8          	vpsubw xmm3,xmm3,xmm0
    ca4c:	c5 d9 fd c1          	vpaddw xmm0,xmm4,xmm1
    ca50:	c5 f1 f9 cc          	vpsubw xmm1,xmm1,xmm4
    ca54:	c5 e9 fd e3          	vpaddw xmm4,xmm2,xmm3
    ca58:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    ca5c:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    ca61:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
    ca66:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    ca6b:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    ca70:	c4 e3 79 0e d1 aa    	vpblendw xmm2,xmm0,xmm1,0xaa
    ca76:	c5 f1 72 f1 10       	vpslld xmm1,xmm1,0x10
    ca7b:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
    ca80:	c5 f1 eb c8          	vpor   xmm1,xmm1,xmm0
    ca84:	c5 e9 ee d1          	vpmaxsw xmm2,xmm2,xmm1
    ca88:	c5 c9 fd f2          	vpaddw xmm6,xmm6,xmm2
    ca8c:	c4 e3 59 0e c3 aa    	vpblendw xmm0,xmm4,xmm3,0xaa
    ca92:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
    ca97:	c5 d9 72 d4 10       	vpsrld xmm4,xmm4,0x10
    ca9c:	c5 e1 eb dc          	vpor   xmm3,xmm3,xmm4
    caa0:	c5 f9 ee c3          	vpmaxsw xmm0,xmm0,xmm3
    caa4:	c5 c9 fd f0          	vpaddw xmm6,xmm6,xmm0
    caa8:	c3                   	ret    
    caa9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000cab0 <x264_8_pixel_satd_16x8_avx>:
    cab0:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # cab8 <x264_8_pixel_satd_16x8_avx+0x8>
    cab7:	00 
    cab8:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    cabc:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    cac0:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    cac4:	48 89 f8             	mov    rax,rdi
    cac7:	49 89 d2             	mov    r10,rdx
    caca:	e8 31 fe ff ff       	call   c900 <x264_8_pixel_satd_8x8_internal_avx>
    cacf:	48 8d 78 08          	lea    rdi,[rax+0x8]
    cad3:	49 8d 52 08          	lea    rdx,[r10+0x8]
    cad7:	e8 24 fe ff ff       	call   c900 <x264_8_pixel_satd_8x8_internal_avx>
    cadc:	c5 c9 f5 35 00 00 00 	vpmaddwd xmm6,xmm6,XMMWORD PTR [rip+0x0]        # cae4 <x264_8_pixel_satd_16x8_avx+0x34>
    cae3:	00 
    cae4:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    cae8:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    caec:	c5 fb 70 fe 4e       	vpshuflw xmm7,xmm6,0x4e
    caf1:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    caf5:	c5 f9 7e f0          	vmovd  eax,xmm6
    caf9:	c3                   	ret    
    cafa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000cb00 <x264_8_pixel_satd_16x16_avx>:
    cb00:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # cb08 <x264_8_pixel_satd_16x16_avx+0x8>
    cb07:	00 
    cb08:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    cb0c:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    cb10:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    cb14:	48 89 f8             	mov    rax,rdi
    cb17:	49 89 d2             	mov    r10,rdx
    cb1a:	e8 e1 fd ff ff       	call   c900 <x264_8_pixel_satd_8x8_internal_avx>
    cb1f:	e8 dc fd ff ff       	call   c900 <x264_8_pixel_satd_8x8_internal_avx>
    cb24:	48 8d 78 08          	lea    rdi,[rax+0x8]
    cb28:	49 8d 52 08          	lea    rdx,[r10+0x8]
    cb2c:	e8 cf fd ff ff       	call   c900 <x264_8_pixel_satd_8x8_internal_avx>
    cb31:	e8 ca fd ff ff       	call   c900 <x264_8_pixel_satd_8x8_internal_avx>
    cb36:	c5 c9 f5 35 00 00 00 	vpmaddwd xmm6,xmm6,XMMWORD PTR [rip+0x0]        # cb3e <x264_8_pixel_satd_16x16_avx+0x3e>
    cb3d:	00 
    cb3e:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    cb42:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    cb46:	c5 fb 70 fe 4e       	vpshuflw xmm7,xmm6,0x4e
    cb4b:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    cb4f:	c5 f9 7e f0          	vmovd  eax,xmm6
    cb53:	c3                   	ret    
    cb54:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    cb5b:	00 
    cb5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000cb60 <x264_8_pixel_satd_8x16_avx>:
    cb60:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # cb68 <x264_8_pixel_satd_8x16_avx+0x8>
    cb67:	00 
    cb68:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    cb6c:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    cb70:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    cb74:	e8 87 fd ff ff       	call   c900 <x264_8_pixel_satd_8x8_internal_avx>
    cb79:	e8 82 fd ff ff       	call   c900 <x264_8_pixel_satd_8x8_internal_avx>
    cb7e:	c5 c9 f5 35 00 00 00 	vpmaddwd xmm6,xmm6,XMMWORD PTR [rip+0x0]        # cb86 <x264_8_pixel_satd_8x16_avx+0x26>
    cb85:	00 
    cb86:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    cb8a:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    cb8e:	c5 fb 70 fe 4e       	vpshuflw xmm7,xmm6,0x4e
    cb93:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    cb97:	c5 f9 7e f0          	vmovd  eax,xmm6
    cb9b:	c3                   	ret    
    cb9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000cba0 <x264_8_pixel_satd_8x8_avx>:
    cba0:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # cba8 <x264_8_pixel_satd_8x8_avx+0x8>
    cba7:	00 
    cba8:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    cbac:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    cbb0:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    cbb4:	e8 47 fd ff ff       	call   c900 <x264_8_pixel_satd_8x8_internal_avx>
    cbb9:	c5 c9 f5 35 00 00 00 	vpmaddwd xmm6,xmm6,XMMWORD PTR [rip+0x0]        # cbc1 <x264_8_pixel_satd_8x8_avx+0x21>
    cbc0:	00 
    cbc1:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    cbc5:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    cbc9:	c5 fb 70 fe 4e       	vpshuflw xmm7,xmm6,0x4e
    cbce:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    cbd2:	c5 f9 7e f0          	vmovd  eax,xmm6
    cbd6:	c3                   	ret    
    cbd7:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    cbde:	00 
    cbdf:	90                   	nop

000000000000cbe0 <x264_8_pixel_satd_8x4_avx>:
    cbe0:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # cbe8 <x264_8_pixel_satd_8x4_avx+0x8>
    cbe7:	00 
    cbe8:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    cbec:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    cbf0:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    cbf4:	e8 db fd ff ff       	call   c9d4 <x264_8_pixel_satd_8x8_internal_avx+0xd4>
    cbf9:	c5 c9 f5 35 00 00 00 	vpmaddwd xmm6,xmm6,XMMWORD PTR [rip+0x0]        # cc01 <x264_8_pixel_satd_8x4_avx+0x21>
    cc00:	00 
    cc01:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    cc05:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    cc09:	c5 fb 70 fe 4e       	vpshuflw xmm7,xmm6,0x4e
    cc0e:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    cc12:	c5 f9 7e f0          	vmovd  eax,xmm6
    cc16:	c3                   	ret    
    cc17:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    cc1e:	00 
    cc1f:	90                   	nop

000000000000cc20 <x264_8_pixel_sa8d_8x8_internal_avx>:
    cc20:	48 8d 04 b7          	lea    rax,[rdi+rsi*4]
    cc24:	4c 8d 14 8a          	lea    r10,[rdx+rcx*4]
    cc28:	c5 fb 12 2a          	vmovddup xmm5,QWORD PTR [rdx]
    cc2c:	c5 fb 12 34 0a       	vmovddup xmm6,QWORD PTR [rdx+rcx*1]
    cc31:	c5 fb 12 07          	vmovddup xmm0,QWORD PTR [rdi]
    cc35:	c5 fb 12 0c 37       	vmovddup xmm1,QWORD PTR [rdi+rsi*1]
    cc3a:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    cc3f:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    cc44:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    cc49:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    cc4e:	c5 f9 f9 c5          	vpsubw xmm0,xmm0,xmm5
    cc52:	c5 f1 f9 ce          	vpsubw xmm1,xmm1,xmm6
    cc56:	c5 fb 12 2c 4a       	vmovddup xmm5,QWORD PTR [rdx+rcx*2]
    cc5b:	c4 a1 7b 12 34 0a    	vmovddup xmm6,QWORD PTR [rdx+r9*1]
    cc61:	c5 fb 12 14 77       	vmovddup xmm2,QWORD PTR [rdi+rsi*2]
    cc66:	c4 21 7b 12 04 07    	vmovddup xmm8,QWORD PTR [rdi+r8*1]
    cc6c:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    cc71:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    cc76:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    cc7b:	c4 62 39 04 c7       	vpmaddubsw xmm8,xmm8,xmm7
    cc80:	c5 e9 f9 d5          	vpsubw xmm2,xmm2,xmm5
    cc84:	c5 39 f9 c6          	vpsubw xmm8,xmm8,xmm6
    cc88:	c4 41 7b 12 1a       	vmovddup xmm11,QWORD PTR [r10]
    cc8d:	c4 c1 7b 12 34 0a    	vmovddup xmm6,QWORD PTR [r10+rcx*1]
    cc93:	c5 fb 12 20          	vmovddup xmm4,QWORD PTR [rax]
    cc97:	c5 fb 12 2c 30       	vmovddup xmm5,QWORD PTR [rax+rsi*1]
    cc9c:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    cca1:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    cca6:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    ccab:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    ccb0:	c4 c1 59 f9 e3       	vpsubw xmm4,xmm4,xmm11
    ccb5:	c5 d1 f9 ee          	vpsubw xmm5,xmm5,xmm6
    ccb9:	c4 41 7b 12 1c 4a    	vmovddup xmm11,QWORD PTR [r10+rcx*2]
    ccbf:	c4 81 7b 12 34 0a    	vmovddup xmm6,QWORD PTR [r10+r9*1]
    ccc5:	c5 fb 12 1c 70       	vmovddup xmm3,QWORD PTR [rax+rsi*2]
    ccca:	c4 21 7b 12 0c 00    	vmovddup xmm9,QWORD PTR [rax+r8*1]
    ccd0:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    ccd5:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    ccda:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    ccdf:	c4 62 31 04 cf       	vpmaddubsw xmm9,xmm9,xmm7
    cce4:	c4 c1 61 f9 db       	vpsubw xmm3,xmm3,xmm11
    cce9:	c5 31 f9 ce          	vpsubw xmm9,xmm9,xmm6
    cced:	c5 f9 fd f1          	vpaddw xmm6,xmm0,xmm1
    ccf1:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    ccf5:	c5 b9 fd c2          	vpaddw xmm0,xmm8,xmm2
    ccf9:	c5 39 f9 c2          	vpsubw xmm8,xmm8,xmm2
    ccfd:	c5 c9 fd d0          	vpaddw xmm2,xmm6,xmm0
    cd01:	c5 f9 f9 c6          	vpsubw xmm0,xmm0,xmm6
    cd05:	c5 b9 fd f1          	vpaddw xmm6,xmm8,xmm1
    cd09:	c5 39 f9 c1          	vpsubw xmm8,xmm8,xmm1
    cd0d:	c5 d9 fd cd          	vpaddw xmm1,xmm4,xmm5
    cd11:	c5 d1 f9 ec          	vpsubw xmm5,xmm5,xmm4
    cd15:	c5 b1 fd e3          	vpaddw xmm4,xmm9,xmm3
    cd19:	c5 31 f9 cb          	vpsubw xmm9,xmm9,xmm3
    cd1d:	c5 f1 fd dc          	vpaddw xmm3,xmm1,xmm4
    cd21:	c5 d9 f9 e1          	vpsubw xmm4,xmm4,xmm1
    cd25:	c5 b1 fd cd          	vpaddw xmm1,xmm9,xmm5
    cd29:	c5 31 f9 cd          	vpsubw xmm9,xmm9,xmm5
    cd2d:	c5 e9 fd eb          	vpaddw xmm5,xmm2,xmm3
    cd31:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    cd35:	c5 c9 fd d1          	vpaddw xmm2,xmm6,xmm1
    cd39:	c5 f1 f9 ce          	vpsubw xmm1,xmm1,xmm6
    cd3d:	c5 d0 c6 f3 dd       	vshufps xmm6,xmm5,xmm3,0xdd
    cd42:	c5 d0 c6 eb 88       	vshufps xmm5,xmm5,xmm3,0x88
    cd47:	c5 d1 fd de          	vpaddw xmm3,xmm5,xmm6
    cd4b:	c5 c9 f9 f5          	vpsubw xmm6,xmm6,xmm5
    cd4f:	c5 e8 c6 e9 dd       	vshufps xmm5,xmm2,xmm1,0xdd
    cd54:	c5 e8 c6 d1 88       	vshufps xmm2,xmm2,xmm1,0x88
    cd59:	c5 e9 fd cd          	vpaddw xmm1,xmm2,xmm5
    cd5d:	c5 d1 f9 ea          	vpsubw xmm5,xmm5,xmm2
    cd61:	c5 f9 fd d4          	vpaddw xmm2,xmm0,xmm4
    cd65:	c5 d9 f9 e0          	vpsubw xmm4,xmm4,xmm0
    cd69:	c4 c1 39 fd c1       	vpaddw xmm0,xmm8,xmm9
    cd6e:	c4 41 31 f9 c8       	vpsubw xmm9,xmm9,xmm8
    cd73:	c5 68 c6 c4 dd       	vshufps xmm8,xmm2,xmm4,0xdd
    cd78:	c5 e8 c6 d4 88       	vshufps xmm2,xmm2,xmm4,0x88
    cd7d:	c5 b9 fd e2          	vpaddw xmm4,xmm8,xmm2
    cd81:	c5 39 f9 c2          	vpsubw xmm8,xmm8,xmm2
    cd85:	c4 c1 78 c6 d1 dd    	vshufps xmm2,xmm0,xmm9,0xdd
    cd8b:	c4 c1 78 c6 c1 88    	vshufps xmm0,xmm0,xmm9,0x88
    cd91:	c5 79 fd ca          	vpaddw xmm9,xmm0,xmm2
    cd95:	c5 e9 f9 d0          	vpsubw xmm2,xmm2,xmm0
    cd99:	c4 e3 61 0e c6 aa    	vpblendw xmm0,xmm3,xmm6,0xaa
    cd9f:	c5 c9 72 f6 10       	vpslld xmm6,xmm6,0x10
    cda4:	c5 e1 72 d3 10       	vpsrld xmm3,xmm3,0x10
    cda9:	c5 c9 eb f3          	vpor   xmm6,xmm6,xmm3
    cdad:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    cdb2:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    cdb7:	c5 f9 ee c6          	vpmaxsw xmm0,xmm0,xmm6
    cdbb:	c4 e3 71 0e dd aa    	vpblendw xmm3,xmm1,xmm5,0xaa
    cdc1:	c5 d1 72 f5 10       	vpslld xmm5,xmm5,0x10
    cdc6:	c5 f1 72 d1 10       	vpsrld xmm1,xmm1,0x10
    cdcb:	c5 d1 eb e9          	vpor   xmm5,xmm5,xmm1
    cdcf:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    cdd4:	c4 e2 79 1d ed       	vpabsw xmm5,xmm5
    cdd9:	c5 e1 ee dd          	vpmaxsw xmm3,xmm3,xmm5
    cddd:	c4 c3 59 0e c8 aa    	vpblendw xmm1,xmm4,xmm8,0xaa
    cde3:	c4 c1 39 72 f0 10    	vpslld xmm8,xmm8,0x10
    cde9:	c5 d9 72 d4 10       	vpsrld xmm4,xmm4,0x10
    cdee:	c5 39 eb c4          	vpor   xmm8,xmm8,xmm4
    cdf2:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
    cdf7:	c4 42 79 1d c0       	vpabsw xmm8,xmm8
    cdfc:	c5 b9 ee c9          	vpmaxsw xmm1,xmm8,xmm1
    ce00:	c4 e3 31 0e e2 aa    	vpblendw xmm4,xmm9,xmm2,0xaa
    ce06:	c5 e9 72 f2 10       	vpslld xmm2,xmm2,0x10
    ce0b:	c4 c1 31 72 d1 10    	vpsrld xmm9,xmm9,0x10
    ce11:	c5 b1 eb d2          	vpor   xmm2,xmm9,xmm2
    ce15:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    ce1a:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    ce1f:	c5 d9 ee e2          	vpmaxsw xmm4,xmm4,xmm2
    ce23:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    ce27:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
    ce2b:	c5 f9 fd c4          	vpaddw xmm0,xmm0,xmm4
    ce2f:	c3                   	ret    

000000000000ce30 <x264_8_pixel_sa8d_8x8_avx>:
    ce30:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    ce34:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    ce38:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # ce40 <x264_8_pixel_sa8d_8x8_avx+0x10>
    ce3f:	00 
    ce40:	e8 db fd ff ff       	call   cc20 <x264_8_pixel_sa8d_8x8_internal_avx>
    ce45:	c5 f9 f5 05 00 00 00 	vpmaddwd xmm0,xmm0,XMMWORD PTR [rip+0x0]        # ce4d <x264_8_pixel_sa8d_8x8_avx+0x1d>
    ce4c:	00 
    ce4d:	c5 f9 6d d8          	vpunpckhqdq xmm3,xmm0,xmm0
    ce51:	c5 f9 fe c3          	vpaddd xmm0,xmm0,xmm3
    ce55:	c5 fb 70 d8 4e       	vpshuflw xmm3,xmm0,0x4e
    ce5a:	c5 f9 fe c3          	vpaddd xmm0,xmm0,xmm3
    ce5e:	c5 f9 7e c0          	vmovd  eax,xmm0
    ce62:	83 c0 01             	add    eax,0x1
    ce65:	d1 e8                	shr    eax,1
    ce67:	c3                   	ret    
    ce68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    ce6f:	00 

000000000000ce70 <x264_8_pixel_sa8d_16x16_avx>:
    ce70:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    ce74:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    ce78:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # ce80 <x264_8_pixel_sa8d_16x16_avx+0x10>
    ce7f:	00 
    ce80:	e8 9b fd ff ff       	call   cc20 <x264_8_pixel_sa8d_8x8_internal_avx>
    ce85:	48 83 c2 08          	add    rdx,0x8
    ce89:	48 83 c7 08          	add    rdi,0x8
    ce8d:	c5 79 6f d0          	vmovdqa xmm10,xmm0
    ce91:	e8 8a fd ff ff       	call   cc20 <x264_8_pixel_sa8d_8x8_internal_avx>
    ce96:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
    ce9a:	48 8d 3c f7          	lea    rdi,[rdi+rsi*8]
    ce9e:	c5 29 dd d0          	vpaddusw xmm10,xmm10,xmm0
    cea2:	e8 79 fd ff ff       	call   cc20 <x264_8_pixel_sa8d_8x8_internal_avx>
    cea7:	48 83 ea 08          	sub    rdx,0x8
    ceab:	48 83 ef 08          	sub    rdi,0x8
    ceaf:	c5 29 dd d0          	vpaddusw xmm10,xmm10,xmm0
    ceb3:	e8 68 fd ff ff       	call   cc20 <x264_8_pixel_sa8d_8x8_internal_avx>
    ceb8:	c5 29 dd d0          	vpaddusw xmm10,xmm10,xmm0
    cebc:	c4 c1 61 72 d2 10    	vpsrld xmm3,xmm10,0x10
    cec2:	c4 c1 29 72 f2 10    	vpslld xmm10,xmm10,0x10
    cec8:	c4 c1 29 72 d2 10    	vpsrld xmm10,xmm10,0x10
    cece:	c5 29 fe d3          	vpaddd xmm10,xmm10,xmm3
    ced2:	c4 c1 29 6d da       	vpunpckhqdq xmm3,xmm10,xmm10
    ced7:	c5 29 fe d3          	vpaddd xmm10,xmm10,xmm3
    cedb:	c4 c1 7b 70 da 4e    	vpshuflw xmm3,xmm10,0x4e
    cee1:	c5 29 fe d3          	vpaddd xmm10,xmm10,xmm3
    cee5:	c5 79 7e d0          	vmovd  eax,xmm10
    cee9:	83 c0 01             	add    eax,0x1
    ceec:	d1 e8                	shr    eax,1
    ceee:	c3                   	ret    
    ceef:	90                   	nop

000000000000cef0 <x264_8_pixel_sa8d_satd_8x8_internal_avx>:
    cef0:	c5 fb 12 32          	vmovddup xmm6,QWORD PTR [rdx]
    cef4:	c5 7b 12 1c 0a       	vmovddup xmm11,QWORD PTR [rdx+rcx*1]
    cef9:	c5 fb 12 07          	vmovddup xmm0,QWORD PTR [rdi]
    cefd:	c5 fb 12 0c 37       	vmovddup xmm1,QWORD PTR [rdi+rsi*1]
    cf02:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    cf07:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    cf0c:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    cf11:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    cf16:	c5 f9 f9 c6          	vpsubw xmm0,xmm0,xmm6
    cf1a:	c4 c1 71 f9 cb       	vpsubw xmm1,xmm1,xmm11
    cf1f:	c5 fb 12 34 4a       	vmovddup xmm6,QWORD PTR [rdx+rcx*2]
    cf24:	c4 21 7b 12 1c 0a    	vmovddup xmm11,QWORD PTR [rdx+r9*1]
    cf2a:	c5 fb 12 14 77       	vmovddup xmm2,QWORD PTR [rdi+rsi*2]
    cf2f:	c4 a1 7b 12 1c 07    	vmovddup xmm3,QWORD PTR [rdi+r8*1]
    cf35:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    cf3a:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    cf3f:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    cf44:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    cf49:	c5 e9 f9 d6          	vpsubw xmm2,xmm2,xmm6
    cf4d:	c4 c1 61 f9 db       	vpsubw xmm3,xmm3,xmm11
    cf52:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    cf56:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    cf5a:	c5 f9 fd f1          	vpaddw xmm6,xmm0,xmm1
    cf5e:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    cf62:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    cf66:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    cf6a:	c5 c9 fd d0          	vpaddw xmm2,xmm6,xmm0
    cf6e:	c5 f9 f9 c6          	vpsubw xmm0,xmm0,xmm6
    cf72:	c5 f1 fd f3          	vpaddw xmm6,xmm1,xmm3
    cf76:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    cf7a:	c4 62 79 1d e2       	vpabsw xmm12,xmm2
    cf7f:	c4 62 79 1d f0       	vpabsw xmm14,xmm0
    cf84:	c4 62 79 1d ee       	vpabsw xmm13,xmm6
    cf89:	c4 62 79 1d fb       	vpabsw xmm15,xmm3
    cf8e:	c4 c3 19 0e ce aa    	vpblendw xmm1,xmm12,xmm14,0xaa
    cf94:	c4 c1 09 72 f6 10    	vpslld xmm14,xmm14,0x10
    cf9a:	c4 c1 19 72 d4 10    	vpsrld xmm12,xmm12,0x10
    cfa0:	c4 41 09 eb f4       	vpor   xmm14,xmm14,xmm12
    cfa5:	c5 89 ee c9          	vpmaxsw xmm1,xmm14,xmm1
    cfa9:	c5 29 fd d1          	vpaddw xmm10,xmm10,xmm1
    cfad:	c4 43 11 0e e7 aa    	vpblendw xmm12,xmm13,xmm15,0xaa
    cfb3:	c4 c1 01 72 f7 10    	vpslld xmm15,xmm15,0x10
    cfb9:	c4 c1 11 72 d5 10    	vpsrld xmm13,xmm13,0x10
    cfbf:	c4 41 01 eb fd       	vpor   xmm15,xmm15,xmm13
    cfc4:	c4 41 19 ee e7       	vpmaxsw xmm12,xmm12,xmm15
    cfc9:	c4 41 29 fd d4       	vpaddw xmm10,xmm10,xmm12
    cfce:	c5 7b 12 2a          	vmovddup xmm13,QWORD PTR [rdx]
    cfd2:	c5 7b 12 1c 0a       	vmovddup xmm11,QWORD PTR [rdx+rcx*1]
    cfd7:	c5 fb 12 27          	vmovddup xmm4,QWORD PTR [rdi]
    cfdb:	c5 fb 12 2c 37       	vmovddup xmm5,QWORD PTR [rdi+rsi*1]
    cfe0:	c4 62 11 04 ef       	vpmaddubsw xmm13,xmm13,xmm7
    cfe5:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    cfea:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    cfef:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    cff4:	c4 c1 59 f9 e5       	vpsubw xmm4,xmm4,xmm13
    cff9:	c4 c1 51 f9 eb       	vpsubw xmm5,xmm5,xmm11
    cffe:	c5 7b 12 2c 4a       	vmovddup xmm13,QWORD PTR [rdx+rcx*2]
    d003:	c4 21 7b 12 1c 0a    	vmovddup xmm11,QWORD PTR [rdx+r9*1]
    d009:	c5 7b 12 04 77       	vmovddup xmm8,QWORD PTR [rdi+rsi*2]
    d00e:	c4 21 7b 12 0c 07    	vmovddup xmm9,QWORD PTR [rdi+r8*1]
    d014:	c4 62 11 04 ef       	vpmaddubsw xmm13,xmm13,xmm7
    d019:	c4 62 39 04 c7       	vpmaddubsw xmm8,xmm8,xmm7
    d01e:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    d023:	c4 62 31 04 cf       	vpmaddubsw xmm9,xmm9,xmm7
    d028:	c4 41 39 f9 c5       	vpsubw xmm8,xmm8,xmm13
    d02d:	c4 41 31 f9 cb       	vpsubw xmm9,xmm9,xmm11
    d032:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    d036:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    d03a:	c5 59 fd ed          	vpaddw xmm13,xmm4,xmm5
    d03e:	c5 d1 f9 ec          	vpsubw xmm5,xmm5,xmm4
    d042:	c4 c1 39 fd e1       	vpaddw xmm4,xmm8,xmm9
    d047:	c4 41 31 f9 c8       	vpsubw xmm9,xmm9,xmm8
    d04c:	c5 11 fd c4          	vpaddw xmm8,xmm13,xmm4
    d050:	c4 c1 59 f9 e5       	vpsubw xmm4,xmm4,xmm13
    d055:	c5 31 fd ed          	vpaddw xmm13,xmm9,xmm5
    d059:	c5 31 f9 cd          	vpsubw xmm9,xmm9,xmm5
    d05d:	c4 c2 79 1d c8       	vpabsw xmm1,xmm8
    d062:	c4 62 79 1d f4       	vpabsw xmm14,xmm4
    d067:	c4 42 79 1d e5       	vpabsw xmm12,xmm13
    d06c:	c4 42 79 1d f9       	vpabsw xmm15,xmm9
    d071:	c4 c3 71 0e ee aa    	vpblendw xmm5,xmm1,xmm14,0xaa
    d077:	c4 c1 09 72 f6 10    	vpslld xmm14,xmm14,0x10
    d07d:	c5 f1 72 d1 10       	vpsrld xmm1,xmm1,0x10
    d082:	c5 09 eb f1          	vpor   xmm14,xmm14,xmm1
    d086:	c5 89 ee ed          	vpmaxsw xmm5,xmm14,xmm5
    d08a:	c5 29 fd d5          	vpaddw xmm10,xmm10,xmm5
    d08e:	c4 c3 19 0e cf aa    	vpblendw xmm1,xmm12,xmm15,0xaa
    d094:	c4 c1 01 72 f7 10    	vpslld xmm15,xmm15,0x10
    d09a:	c4 c1 19 72 d4 10    	vpsrld xmm12,xmm12,0x10
    d0a0:	c4 41 01 eb fc       	vpor   xmm15,xmm15,xmm12
    d0a5:	c5 81 ee c9          	vpmaxsw xmm1,xmm15,xmm1
    d0a9:	c5 29 fd d1          	vpaddw xmm10,xmm10,xmm1
    d0ad:	c5 b9 fd ea          	vpaddw xmm5,xmm8,xmm2
    d0b1:	c5 39 f9 c2          	vpsubw xmm8,xmm8,xmm2
    d0b5:	c5 91 fd d6          	vpaddw xmm2,xmm13,xmm6
    d0b9:	c5 11 f9 ee          	vpsubw xmm13,xmm13,xmm6
    d0bd:	c4 c1 50 c6 f0 dd    	vshufps xmm6,xmm5,xmm8,0xdd
    d0c3:	c4 c1 50 c6 e8 88    	vshufps xmm5,xmm5,xmm8,0x88
    d0c9:	c5 51 fd c6          	vpaddw xmm8,xmm5,xmm6
    d0cd:	c5 c9 f9 f5          	vpsubw xmm6,xmm6,xmm5
    d0d1:	c4 c1 68 c6 ed dd    	vshufps xmm5,xmm2,xmm13,0xdd
    d0d7:	c4 c1 68 c6 d5 88    	vshufps xmm2,xmm2,xmm13,0x88
    d0dd:	c5 69 fd ed          	vpaddw xmm13,xmm2,xmm5
    d0e1:	c5 d1 f9 ea          	vpsubw xmm5,xmm5,xmm2
    d0e5:	c5 f9 fd d4          	vpaddw xmm2,xmm0,xmm4
    d0e9:	c5 d9 f9 e0          	vpsubw xmm4,xmm4,xmm0
    d0ed:	c5 b1 fd c3          	vpaddw xmm0,xmm9,xmm3
    d0f1:	c5 31 f9 cb          	vpsubw xmm9,xmm9,xmm3
    d0f5:	c5 e8 c6 dc dd       	vshufps xmm3,xmm2,xmm4,0xdd
    d0fa:	c5 e8 c6 d4 88       	vshufps xmm2,xmm2,xmm4,0x88
    d0ff:	c5 e9 fd e3          	vpaddw xmm4,xmm2,xmm3
    d103:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    d107:	c4 c1 78 c6 d1 dd    	vshufps xmm2,xmm0,xmm9,0xdd
    d10d:	c4 c1 78 c6 c1 88    	vshufps xmm0,xmm0,xmm9,0x88
    d113:	c5 79 fd ca          	vpaddw xmm9,xmm0,xmm2
    d117:	c5 e9 f9 d0          	vpsubw xmm2,xmm2,xmm0
    d11b:	c4 e3 39 0e c6 aa    	vpblendw xmm0,xmm8,xmm6,0xaa
    d121:	c5 c9 72 f6 10       	vpslld xmm6,xmm6,0x10
    d126:	c4 c1 39 72 d0 10    	vpsrld xmm8,xmm8,0x10
    d12c:	c5 b9 eb f6          	vpor   xmm6,xmm8,xmm6
    d130:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    d135:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    d13a:	c5 f9 ee c6          	vpmaxsw xmm0,xmm0,xmm6
    d13e:	c4 63 11 0e c5 aa    	vpblendw xmm8,xmm13,xmm5,0xaa
    d144:	c5 d1 72 f5 10       	vpslld xmm5,xmm5,0x10
    d149:	c4 c1 11 72 d5 10    	vpsrld xmm13,xmm13,0x10
    d14f:	c5 91 eb ed          	vpor   xmm5,xmm13,xmm5
    d153:	c4 42 79 1d c0       	vpabsw xmm8,xmm8
    d158:	c4 e2 79 1d ed       	vpabsw xmm5,xmm5
    d15d:	c5 39 ee c5          	vpmaxsw xmm8,xmm8,xmm5
    d161:	c4 63 59 0e eb aa    	vpblendw xmm13,xmm4,xmm3,0xaa
    d167:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
    d16c:	c5 d9 72 d4 10       	vpsrld xmm4,xmm4,0x10
    d171:	c5 e1 eb dc          	vpor   xmm3,xmm3,xmm4
    d175:	c4 42 79 1d ed       	vpabsw xmm13,xmm13
    d17a:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    d17f:	c5 11 ee eb          	vpmaxsw xmm13,xmm13,xmm3
    d183:	c4 e3 31 0e e2 aa    	vpblendw xmm4,xmm9,xmm2,0xaa
    d189:	c5 e9 72 f2 10       	vpslld xmm2,xmm2,0x10
    d18e:	c4 c1 31 72 d1 10    	vpsrld xmm9,xmm9,0x10
    d194:	c5 b1 eb d2          	vpor   xmm2,xmm9,xmm2
    d198:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    d19d:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    d1a2:	c5 d9 ee e2          	vpmaxsw xmm4,xmm4,xmm2
    d1a6:	c4 41 39 fd c5       	vpaddw xmm8,xmm8,xmm13
    d1ab:	c5 f9 fd c4          	vpaddw xmm0,xmm0,xmm4
    d1af:	c5 b9 fd c0          	vpaddw xmm0,xmm8,xmm0
    d1b3:	c3                   	ret    
    d1b4:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    d1bb:	00 
    d1bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000d1c0 <x264_8_pixel_sa8d_satd_16x16_avx>:
    d1c0:	48 83 ec 48          	sub    rsp,0x48
    d1c4:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # d1cc <x264_8_pixel_sa8d_satd_16x16_avx+0xc>
    d1cb:	00 
    d1cc:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    d1d0:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    d1d4:	c4 41 29 ef d2       	vpxor  xmm10,xmm10,xmm10
    d1d9:	48 8d 42 08          	lea    rax,[rdx+0x8]
    d1dd:	4c 8d 57 08          	lea    r10,[rdi+0x8]
    d1e1:	e8 0a fd ff ff       	call   cef0 <x264_8_pixel_sa8d_satd_8x8_internal_avx>
    d1e6:	c5 f9 7f 04 24       	vmovdqa XMMWORD PTR [rsp],xmm0
    d1eb:	e8 00 fd ff ff       	call   cef0 <x264_8_pixel_sa8d_satd_8x8_internal_avx>
    d1f0:	c5 f9 fd 04 24       	vpaddw xmm0,xmm0,XMMWORD PTR [rsp]
    d1f5:	c5 f9 7f 04 24       	vmovdqa XMMWORD PTR [rsp],xmm0
    d1fa:	4c 89 d7             	mov    rdi,r10
    d1fd:	48 89 c2             	mov    rdx,rax
    d200:	e8 eb fc ff ff       	call   cef0 <x264_8_pixel_sa8d_satd_8x8_internal_avx>
    d205:	c5 f9 fd 04 24       	vpaddw xmm0,xmm0,XMMWORD PTR [rsp]
    d20a:	c5 f9 7f 04 24       	vmovdqa XMMWORD PTR [rsp],xmm0
    d20f:	e8 dc fc ff ff       	call   cef0 <x264_8_pixel_sa8d_satd_8x8_internal_avx>
    d214:	c5 f9 fd 04 24       	vpaddw xmm0,xmm0,XMMWORD PTR [rsp]
    d219:	c5 29 f5 15 00 00 00 	vpmaddwd xmm10,xmm10,XMMWORD PTR [rip+0x0]        # d221 <x264_8_pixel_sa8d_satd_16x16_avx+0x61>
    d220:	00 
    d221:	c5 b9 72 d0 10       	vpsrld xmm8,xmm0,0x10
    d226:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    d22b:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
    d230:	c5 b9 fe c0          	vpaddd xmm0,xmm8,xmm0
    d234:	c4 c2 79 02 c2       	vphaddd xmm0,xmm0,xmm10
    d239:	c5 79 70 c0 b1       	vpshufd xmm8,xmm0,0xb1
    d23e:	c5 b9 fe c0          	vpaddd xmm0,xmm8,xmm0
    d242:	c5 f9 7e c7          	vmovd  edi,xmm0
    d246:	c4 e3 79 16 c0 02    	vpextrd eax,xmm0,0x2
    d24c:	83 c7 01             	add    edi,0x1
    d24f:	48 c1 e0 20          	shl    rax,0x20
    d253:	d1 ef                	shr    edi,1
    d255:	48 09 f8             	or     rax,rdi
    d258:	48 83 c4 48          	add    rsp,0x48
    d25c:	c3                   	ret    
    d25d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000d260 <x264_8_intra_sad_x9_4x4_avx>:
    d260:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
    d267:	c5 fa 6f 4e d8       	vmovdqu xmm1,XMMWORD PTR [rsi-0x28]
    d26c:	c4 e3 71 20 4e 5f 00 	vpinsrb xmm1,xmm1,BYTE PTR [rsi+0x5f],0x0
    d273:	c4 e3 71 20 4e 3f 01 	vpinsrb xmm1,xmm1,BYTE PTR [rsi+0x3f],0x1
    d27a:	c4 e3 71 20 4e 1f 02 	vpinsrb xmm1,xmm1,BYTE PTR [rsi+0x1f],0x2
    d281:	c4 e3 71 20 4e ff 03 	vpinsrb xmm1,xmm1,BYTE PTR [rsi-0x1],0x3
    d288:	c4 e2 71 00 0d 00 00 	vpshufb xmm1,xmm1,XMMWORD PTR [rip+0x0]        # d291 <x264_8_intra_sad_x9_4x4_avx+0x31>
    d28f:	00 00 
    d291:	c5 f9 73 d9 01       	vpsrldq xmm0,xmm1,0x1
    d296:	c5 e9 73 d9 02       	vpsrldq xmm2,xmm1,0x2
    d29b:	c5 f9 e0 e9          	vpavgb xmm5,xmm0,xmm1
    d29f:	c5 79 6f c1          	vmovdqa xmm8,xmm1
    d2a3:	c5 f1 e0 e2          	vpavgb xmm4,xmm1,xmm2
    d2a7:	c5 e9 ef d1          	vpxor  xmm2,xmm2,xmm1
    d2ab:	c5 e9 db 15 00 00 00 	vpand  xmm2,xmm2,XMMWORD PTR [rip+0x0]        # d2b3 <x264_8_intra_sad_x9_4x4_avx+0x53>
    d2b2:	00 
    d2b3:	c5 d9 d8 e2          	vpsubusb xmm4,xmm4,xmm2
    d2b7:	c5 f9 e0 c4          	vpavgb xmm0,xmm0,xmm4
    d2bb:	c4 e2 79 00 15 00 00 	vpshufb xmm2,xmm0,XMMWORD PTR [rip+0x0]        # d2c4 <x264_8_intra_sad_x9_4x4_avx+0x64>
    d2c2:	00 00 
    d2c4:	c4 e2 79 00 1d 00 00 	vpshufb xmm3,xmm0,XMMWORD PTR [rip+0x0]        # d2cd <x264_8_intra_sad_x9_4x4_avx+0x6d>
    d2cb:	00 00 
    d2cd:	c5 f9 73 f8 05       	vpslldq xmm0,xmm0,0x5
    d2d2:	c4 e3 51 0f f8 05    	vpalignr xmm7,xmm5,xmm0,0x5
    d2d8:	c4 e2 41 00 35 00 00 	vpshufb xmm6,xmm7,XMMWORD PTR [rip+0x0]        # d2e1 <x264_8_intra_sad_x9_4x4_avx+0x81>
    d2df:	00 00 
    d2e1:	c4 e2 41 00 3d 00 00 	vpshufb xmm7,xmm7,XMMWORD PTR [rip+0x0]        # d2ea <x264_8_intra_sad_x9_4x4_avx+0x8a>
    d2e8:	00 00 
    d2ea:	c5 d1 73 dd 05       	vpsrldq xmm5,xmm5,0x5
    d2ef:	c4 e3 51 0f e8 06    	vpalignr xmm5,xmm5,xmm0,0x6
    d2f5:	c4 e2 51 00 25 00 00 	vpshufb xmm4,xmm5,XMMWORD PTR [rip+0x0]        # d2fe <x264_8_intra_sad_x9_4x4_avx+0x9e>
    d2fc:	00 00 
    d2fe:	c4 e2 51 00 2d 00 00 	vpshufb xmm5,xmm5,XMMWORD PTR [rip+0x0]        # d307 <x264_8_intra_sad_x9_4x4_avx+0xa7>
    d305:	00 00 
    d307:	c5 f9 7f 14 24       	vmovdqa XMMWORD PTR [rsp],xmm2
    d30c:	c5 f9 7f 5c 24 10    	vmovdqa XMMWORD PTR [rsp+0x10],xmm3
    d312:	c5 f9 7f 64 24 20    	vmovdqa XMMWORD PTR [rsp+0x20],xmm4
    d318:	c5 f9 7f 6c 24 30    	vmovdqa XMMWORD PTR [rsp+0x30],xmm5
    d31e:	c5 f9 7f 74 24 40    	vmovdqa XMMWORD PTR [rsp+0x40],xmm6
    d324:	c5 f9 7f 7c 24 50    	vmovdqa XMMWORD PTR [rsp+0x50],xmm7
    d32a:	c5 f9 6e 07          	vmovd  xmm0,DWORD PTR [rdi]
    d32e:	c4 e3 79 22 47 10 01 	vpinsrd xmm0,xmm0,DWORD PTR [rdi+0x10],0x1
    d335:	c5 f9 6e 4f 20       	vmovd  xmm1,DWORD PTR [rdi+0x20]
    d33a:	c4 e3 71 22 4f 30 01 	vpinsrd xmm1,xmm1,DWORD PTR [rdi+0x30],0x1
    d341:	c5 f9 6c c0          	vpunpcklqdq xmm0,xmm0,xmm0
    d345:	c5 f1 6c c9          	vpunpcklqdq xmm1,xmm1,xmm1
    d349:	c5 e9 f6 d0          	vpsadbw xmm2,xmm2,xmm0
    d34d:	c5 e1 f6 d9          	vpsadbw xmm3,xmm3,xmm1
    d351:	c5 d9 f6 e0          	vpsadbw xmm4,xmm4,xmm0
    d355:	c5 d1 f6 e9          	vpsadbw xmm5,xmm5,xmm1
    d359:	c5 c9 f6 f0          	vpsadbw xmm6,xmm6,xmm0
    d35d:	c5 c1 f6 f9          	vpsadbw xmm7,xmm7,xmm1
    d361:	c5 e9 fe d3          	vpaddd xmm2,xmm2,xmm3
    d365:	c5 d9 fe e5          	vpaddd xmm4,xmm4,xmm5
    d369:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    d36d:	c5 c1 ef ff          	vpxor  xmm7,xmm7,xmm7
    d371:	c4 e2 39 00 1d 00 00 	vpshufb xmm3,xmm8,XMMWORD PTR [rip+0x0]        # d37a <x264_8_intra_sad_x9_4x4_avx+0x11a>
    d378:	00 00 
    d37a:	c4 e2 39 00 2d 00 00 	vpshufb xmm5,xmm8,XMMWORD PTR [rip+0x0]        # d383 <x264_8_intra_sad_x9_4x4_avx+0x123>
    d381:	00 00 
    d383:	c4 62 39 00 05 00 00 	vpshufb xmm8,xmm8,XMMWORD PTR [rip+0x0]        # d38c <x264_8_intra_sad_x9_4x4_avx+0x12c>
    d38a:	00 00 
    d38c:	c5 39 f6 c7          	vpsadbw xmm8,xmm8,xmm7
    d390:	c4 c1 39 71 d0 02    	vpsrlw xmm8,xmm8,0x2
    d396:	c5 f9 7f 5c 24 60    	vmovdqa XMMWORD PTR [rsp+0x60],xmm3
    d39c:	c5 f9 7f 6c 24 70    	vmovdqa XMMWORD PTR [rsp+0x70],xmm5
    d3a2:	c5 e1 f6 d8          	vpsadbw xmm3,xmm3,xmm0
    d3a6:	c5 39 e3 c7          	vpavgw xmm8,xmm8,xmm7
    d3aa:	c4 62 39 00 c7       	vpshufb xmm8,xmm8,xmm7
    d3af:	c5 d1 f6 e9          	vpsadbw xmm5,xmm5,xmm1
    d3b3:	c5 79 d6 84 24 80 00 	vmovq  QWORD PTR [rsp+0x80],xmm8
    d3ba:	00 00 
    d3bc:	c5 79 d6 84 24 90 00 	vmovq  QWORD PTR [rsp+0x90],xmm8
    d3c3:	00 00 
    d3c5:	c5 b9 f6 c0          	vpsadbw xmm0,xmm8,xmm0
    d3c9:	c5 e1 fe dd          	vpaddd xmm3,xmm3,xmm5
    d3cd:	c5 b9 f6 c9          	vpsadbw xmm1,xmm8,xmm1
    d3d1:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
    d3d5:	0f b7 0a             	movzx  ecx,WORD PTR [rdx]
    d3d8:	c5 f9 7e df          	vmovd  edi,xmm3
    d3dc:	01 f9                	add    ecx,edi
    d3de:	c5 e1 6d d8          	vpunpckhqdq xmm3,xmm3,xmm0
    d3e2:	c5 e0 c6 da 88       	vshufps xmm3,xmm3,xmm2,0x88
    d3e7:	c5 c9 73 f6 20       	vpsllq xmm6,xmm6,0x20
    d3ec:	c5 d9 eb e6          	vpor   xmm4,xmm4,xmm6
    d3f0:	c5 fa 6f 42 02       	vmovdqu xmm0,XMMWORD PTR [rdx+0x2]
    d3f5:	c5 e1 6b dc          	vpackssdw xmm3,xmm3,xmm4
    d3f9:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    d3fd:	c4 e2 79 41 c0       	vphminposuw xmm0,xmm0
    d402:	c5 f9 7e c0          	vmovd  eax,xmm0
    d406:	05 00 00 01 00       	add    eax,0x10000
    d40b:	66 39 c8             	cmp    ax,cx
    d40e:	0f 4d c1             	cmovge eax,ecx
    d411:	89 c1                	mov    ecx,eax
    d413:	c1 e9 10             	shr    ecx,0x10
    d416:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # d41d <x264_8_intra_sad_x9_4x4_avx+0x1bd>
    d41d:	0f b6 14 0a          	movzx  edx,BYTE PTR [rdx+rcx*1]
    d421:	0f 6f 04 14          	movq   mm0,QWORD PTR [rsp+rdx*1]
    d425:	0f 6f 4c 14 10       	movq   mm1,QWORD PTR [rsp+rdx*1+0x10]
    d42a:	0f 7e 06             	movd   DWORD PTR [rsi],mm0
    d42d:	0f 7e 4e 40          	movd   DWORD PTR [rsi+0x40],mm1
    d431:	0f 73 d0 20          	psrlq  mm0,0x20
    d435:	0f 73 d1 20          	psrlq  mm1,0x20
    d439:	0f 7e 46 20          	movd   DWORD PTR [rsi+0x20],mm0
    d43d:	0f 7e 4e 60          	movd   DWORD PTR [rsi+0x60],mm1
    d441:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
    d448:	c3                   	ret    
    d449:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000d450 <x264_8_intra_satd_x9_4x4_avx>:
    d450:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
    d457:	c5 fa 6f 4e d8       	vmovdqu xmm1,XMMWORD PTR [rsi-0x28]
    d45c:	c4 e3 71 20 4e 5f 00 	vpinsrb xmm1,xmm1,BYTE PTR [rsi+0x5f],0x0
    d463:	c4 e3 71 20 4e 3f 01 	vpinsrb xmm1,xmm1,BYTE PTR [rsi+0x3f],0x1
    d46a:	c4 e3 71 20 4e 1f 02 	vpinsrb xmm1,xmm1,BYTE PTR [rsi+0x1f],0x2
    d471:	c4 e3 71 20 4e ff 03 	vpinsrb xmm1,xmm1,BYTE PTR [rsi-0x1],0x3
    d478:	c4 e2 71 00 0d 00 00 	vpshufb xmm1,xmm1,XMMWORD PTR [rip+0x0]        # d481 <x264_8_intra_satd_x9_4x4_avx+0x31>
    d47f:	00 00 
    d481:	c5 f9 73 d9 01       	vpsrldq xmm0,xmm1,0x1
    d486:	c5 e9 73 d9 02       	vpsrldq xmm2,xmm1,0x2
    d48b:	c5 f9 e0 e9          	vpavgb xmm5,xmm0,xmm1
    d48f:	c5 79 6f f9          	vmovdqa xmm15,xmm1
    d493:	c5 f1 e0 e2          	vpavgb xmm4,xmm1,xmm2
    d497:	c5 e9 ef d1          	vpxor  xmm2,xmm2,xmm1
    d49b:	c5 e9 db 15 00 00 00 	vpand  xmm2,xmm2,XMMWORD PTR [rip+0x0]        # d4a3 <x264_8_intra_satd_x9_4x4_avx+0x53>
    d4a2:	00 
    d4a3:	c5 d9 d8 e2          	vpsubusb xmm4,xmm4,xmm2
    d4a7:	c5 f9 e0 c4          	vpavgb xmm0,xmm0,xmm4
    d4ab:	c4 e2 79 00 15 00 00 	vpshufb xmm2,xmm0,XMMWORD PTR [rip+0x0]        # d4b4 <x264_8_intra_satd_x9_4x4_avx+0x64>
    d4b2:	00 00 
    d4b4:	c4 e2 79 00 1d 00 00 	vpshufb xmm3,xmm0,XMMWORD PTR [rip+0x0]        # d4bd <x264_8_intra_satd_x9_4x4_avx+0x6d>
    d4bb:	00 00 
    d4bd:	c5 f9 73 f8 05       	vpslldq xmm0,xmm0,0x5
    d4c2:	c4 e3 51 0f f8 05    	vpalignr xmm7,xmm5,xmm0,0x5
    d4c8:	c4 e2 41 00 35 00 00 	vpshufb xmm6,xmm7,XMMWORD PTR [rip+0x0]        # d4d1 <x264_8_intra_satd_x9_4x4_avx+0x81>
    d4cf:	00 00 
    d4d1:	c4 e2 41 00 3d 00 00 	vpshufb xmm7,xmm7,XMMWORD PTR [rip+0x0]        # d4da <x264_8_intra_satd_x9_4x4_avx+0x8a>
    d4d8:	00 00 
    d4da:	c5 d1 73 dd 05       	vpsrldq xmm5,xmm5,0x5
    d4df:	c4 e3 51 0f e8 06    	vpalignr xmm5,xmm5,xmm0,0x6
    d4e5:	c4 e2 51 00 25 00 00 	vpshufb xmm4,xmm5,XMMWORD PTR [rip+0x0]        # d4ee <x264_8_intra_satd_x9_4x4_avx+0x9e>
    d4ec:	00 00 
    d4ee:	c4 e2 51 00 2d 00 00 	vpshufb xmm5,xmm5,XMMWORD PTR [rip+0x0]        # d4f7 <x264_8_intra_satd_x9_4x4_avx+0xa7>
    d4f5:	00 00 
    d4f7:	c5 f9 7f 14 24       	vmovdqa XMMWORD PTR [rsp],xmm2
    d4fc:	c5 f9 7f 5c 24 10    	vmovdqa XMMWORD PTR [rsp+0x10],xmm3
    d502:	c5 f9 7f 64 24 20    	vmovdqa XMMWORD PTR [rsp+0x20],xmm4
    d508:	c5 f9 7f 6c 24 30    	vmovdqa XMMWORD PTR [rsp+0x30],xmm5
    d50e:	c5 f9 7f 74 24 40    	vmovdqa XMMWORD PTR [rsp+0x40],xmm6
    d514:	c5 f9 7f 7c 24 50    	vmovdqa XMMWORD PTR [rsp+0x50],xmm7
    d51a:	c5 79 6e 07          	vmovd  xmm8,DWORD PTR [rdi]
    d51e:	c5 79 6e 4f 10       	vmovd  xmm9,DWORD PTR [rdi+0x10]
    d523:	c5 79 6e 57 20       	vmovd  xmm10,DWORD PTR [rdi+0x20]
    d528:	c5 79 6e 5f 30       	vmovd  xmm11,DWORD PTR [rdi+0x30]
    d52d:	c5 79 6f 25 00 00 00 	vmovdqa xmm12,XMMWORD PTR [rip+0x0]        # d535 <x264_8_intra_satd_x9_4x4_avx+0xe5>
    d534:	00 
    d535:	c4 41 79 70 c0 00    	vpshufd xmm8,xmm8,0x0
    d53b:	c4 41 79 70 c9 00    	vpshufd xmm9,xmm9,0x0
    d541:	c4 41 79 70 d2 00    	vpshufd xmm10,xmm10,0x0
    d547:	c4 41 79 70 db 00    	vpshufd xmm11,xmm11,0x0
    d54d:	c4 42 39 04 c4       	vpmaddubsw xmm8,xmm8,xmm12
    d552:	c4 42 31 04 cc       	vpmaddubsw xmm9,xmm9,xmm12
    d557:	c4 42 29 04 d4       	vpmaddubsw xmm10,xmm10,xmm12
    d55c:	c4 42 21 04 dc       	vpmaddubsw xmm11,xmm11,xmm12
    d561:	c5 fb 12 c2          	vmovddup xmm0,xmm2
    d565:	c5 f9 70 ca ee       	vpshufd xmm1,xmm2,0xee
    d56a:	c5 fb 12 d3          	vmovddup xmm2,xmm3
    d56e:	c5 e1 6d db          	vpunpckhqdq xmm3,xmm3,xmm3
    d572:	e8 e9 01 00 00       	call   d760 <x264_8_intra_satd_x9_4x4_avx+0x310>
    d577:	c5 fb 12 d5          	vmovddup xmm2,xmm5
    d57b:	c5 f9 70 dd ee       	vpshufd xmm3,xmm5,0xee
    d580:	c5 f9 6f e8          	vmovdqa xmm5,xmm0
    d584:	c5 fb 12 c4          	vmovddup xmm0,xmm4
    d588:	c5 f9 70 cc ee       	vpshufd xmm1,xmm4,0xee
    d58d:	e8 ce 01 00 00       	call   d760 <x264_8_intra_satd_x9_4x4_avx+0x310>
    d592:	c5 fb 12 d7          	vmovddup xmm2,xmm7
    d596:	c5 f9 70 df ee       	vpshufd xmm3,xmm7,0xee
    d59b:	c5 f9 6f e0          	vmovdqa xmm4,xmm0
    d59f:	c5 fb 12 c6          	vmovddup xmm0,xmm6
    d5a3:	c5 f9 70 ce ee       	vpshufd xmm1,xmm6,0xee
    d5a8:	e8 b3 01 00 00       	call   d760 <x264_8_intra_satd_x9_4x4_avx+0x310>
    d5ad:	c5 d9 62 e0          	vpunpckldq xmm4,xmm4,xmm0
    d5b1:	c5 f9 6f 0d 00 00 00 	vmovdqa xmm1,XMMWORD PTR [rip+0x0]        # d5b9 <x264_8_intra_satd_x9_4x4_avx+0x169>
    d5b8:	00 
    d5b9:	c4 62 39 09 c1       	vpsignw xmm8,xmm8,xmm1
    d5be:	c4 62 29 09 d1       	vpsignw xmm10,xmm10,xmm1
    d5c3:	c4 41 39 fd c1       	vpaddw xmm8,xmm8,xmm9
    d5c8:	c4 41 29 fd d3       	vpaddw xmm10,xmm10,xmm11
    d5cd:	c4 e2 01 00 15 00 00 	vpshufb xmm2,xmm15,XMMWORD PTR [rip+0x0]        # d5d6 <x264_8_intra_satd_x9_4x4_avx+0x186>
    d5d4:	00 00 
    d5d6:	c4 e2 01 00 1d 00 00 	vpshufb xmm3,xmm15,XMMWORD PTR [rip+0x0]        # d5df <x264_8_intra_satd_x9_4x4_avx+0x18f>
    d5dd:	00 00 
    d5df:	c5 f9 7f 54 24 60    	vmovdqa XMMWORD PTR [rsp+0x60],xmm2
    d5e5:	c5 f9 7f 5c 24 70    	vmovdqa XMMWORD PTR [rsp+0x70],xmm3
    d5eb:	c4 62 01 00 3d 00 00 	vpshufb xmm15,xmm15,XMMWORD PTR [rip+0x0]        # d5f4 <x264_8_intra_satd_x9_4x4_avx+0x1a4>
    d5f2:	00 00 
    d5f4:	c4 62 01 04 3d 00 00 	vpmaddubsw xmm15,xmm15,XMMWORD PTR [rip+0x0]        # d5fd <x264_8_intra_satd_x9_4x4_avx+0x1ad>
    d5fb:	00 00 
    d5fd:	c4 c1 7a 70 c7 b1    	vpshufhw xmm0,xmm15,0xb1
    d603:	c5 fb 70 c0 b1       	vpshuflw xmm0,xmm0,0xb1
    d608:	c4 62 01 09 3d 00 00 	vpsignw xmm15,xmm15,XMMWORD PTR [rip+0x0]        # d611 <x264_8_intra_satd_x9_4x4_avx+0x1c1>
    d60f:	00 00 
    d611:	c5 81 fd c0          	vpaddw xmm0,xmm15,xmm0
    d615:	c5 f9 71 f0 02       	vpsllw xmm0,xmm0,0x2
    d61a:	c5 f9 6d d8          	vpunpckhqdq xmm3,xmm0,xmm0
    d61e:	c4 e2 79 00 0d 00 00 	vpshufb xmm1,xmm0,XMMWORD PTR [rip+0x0]        # d627 <x264_8_intra_satd_x9_4x4_avx+0x1d7>
    d625:	00 00 
    d627:	c4 e2 79 00 15 00 00 	vpshufb xmm2,xmm0,XMMWORD PTR [rip+0x0]        # d630 <x264_8_intra_satd_x9_4x4_avx+0x1e0>
    d62e:	00 00 
    d630:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    d634:	c4 e2 61 09 1d 00 00 	vpsignw xmm3,xmm3,XMMWORD PTR [rip+0x0]        # d63d <x264_8_intra_satd_x9_4x4_avx+0x1ed>
    d63b:	00 00 
    d63d:	c5 f9 e3 05 00 00 00 	vpavgw xmm0,xmm0,XMMWORD PTR [rip+0x0]        # d645 <x264_8_intra_satd_x9_4x4_avx+0x1f5>
    d644:	00 
    d645:	c5 f9 db 05 00 00 00 	vpand  xmm0,xmm0,XMMWORD PTR [rip+0x0]        # d64d <x264_8_intra_satd_x9_4x4_avx+0x1fd>
    d64c:	00 
    d64d:	c4 c1 39 fd f2       	vpaddw xmm6,xmm8,xmm10
    d652:	c4 41 29 f9 d0       	vpsubw xmm10,xmm10,xmm8
    d657:	c5 b9 72 d6 10       	vpsrld xmm8,xmm6,0x10
    d65c:	c4 43 39 0e c2 aa    	vpblendw xmm8,xmm8,xmm10,0xaa
    d662:	c4 c1 29 72 f2 10    	vpslld xmm10,xmm10,0x10
    d668:	c4 63 29 0e d6 55    	vpblendw xmm10,xmm10,xmm6,0x55
    d66e:	c4 c1 39 fd f2       	vpaddw xmm6,xmm8,xmm10
    d673:	c4 41 29 f9 d0       	vpsubw xmm10,xmm10,xmm8
    d678:	c5 f9 7e c1          	vmovd  ecx,xmm0
    d67c:	c1 e9 04             	shr    ecx,0x4
    d67f:	69 c9 01 01 01 01    	imul   ecx,ecx,0x1010101
    d685:	89 8c 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],ecx
    d68c:	89 8c 24 88 00 00 00 	mov    DWORD PTR [rsp+0x88],ecx
    d693:	89 8c 24 90 00 00 00 	mov    DWORD PTR [rsp+0x90],ecx
    d69a:	89 8c 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],ecx
    d6a1:	c5 e1 f9 de          	vpsubw xmm3,xmm3,xmm6
    d6a5:	c5 f9 f9 c6          	vpsubw xmm0,xmm0,xmm6
    d6a9:	c5 f1 f9 ce          	vpsubw xmm1,xmm1,xmm6
    d6ad:	c4 c1 69 f9 d2       	vpsubw xmm2,xmm2,xmm10
    d6b2:	c4 42 79 1d d2       	vpabsw xmm10,xmm10
    d6b7:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    d6bc:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    d6c1:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
    d6c6:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    d6cb:	c5 a9 e3 db          	vpavgw xmm3,xmm10,xmm3
    d6cf:	c5 a9 e3 c0          	vpavgw xmm0,xmm10,xmm0
    d6d3:	c5 f1 e3 ca          	vpavgw xmm1,xmm1,xmm2
    d6d7:	c4 e2 61 01 d8       	vphaddw xmm3,xmm3,xmm0
    d6dc:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    d6e0:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d6e4:	c4 e2 71 01 cb       	vphaddw xmm1,xmm1,xmm3
    d6e9:	c5 f1 f5 0d 00 00 00 	vpmaddwd xmm1,xmm1,XMMWORD PTR [rip+0x0]        # d6f1 <x264_8_intra_satd_x9_4x4_avx+0x2a1>
    d6f0:	00 
    d6f1:	c5 fa 6f 42 02       	vmovdqu xmm0,XMMWORD PTR [rdx+0x2]
    d6f6:	c5 f9 7e c9          	vmovd  ecx,xmm1
    d6fa:	c4 e3 51 0f e9 08    	vpalignr xmm5,xmm5,xmm1,0x8
    d700:	c5 d1 6b ec          	vpackssdw xmm5,xmm5,xmm4
    d704:	c5 f9 fd c5          	vpaddw xmm0,xmm0,xmm5
    d708:	0f b7 3a             	movzx  edi,WORD PTR [rdx]
    d70b:	01 f9                	add    ecx,edi
    d70d:	c4 e2 79 41 c0       	vphminposuw xmm0,xmm0
    d712:	c5 f9 7e c0          	vmovd  eax,xmm0
    d716:	05 00 00 01 00       	add    eax,0x10000
    d71b:	66 39 c8             	cmp    ax,cx
    d71e:	0f 4d c1             	cmovge eax,ecx
    d721:	89 c1                	mov    ecx,eax
    d723:	c1 e9 10             	shr    ecx,0x10
    d726:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # d72d <x264_8_intra_satd_x9_4x4_avx+0x2dd>
    d72d:	0f b6 14 0a          	movzx  edx,BYTE PTR [rdx+rcx*1]
    d731:	8b 0c 14             	mov    ecx,DWORD PTR [rsp+rdx*1]
    d734:	89 0e                	mov    DWORD PTR [rsi],ecx
    d736:	8b 4c 14 08          	mov    ecx,DWORD PTR [rsp+rdx*1+0x8]
    d73a:	89 4e 20             	mov    DWORD PTR [rsi+0x20],ecx
    d73d:	8b 4c 14 10          	mov    ecx,DWORD PTR [rsp+rdx*1+0x10]
    d741:	89 4e 40             	mov    DWORD PTR [rsi+0x40],ecx
    d744:	8b 4c 14 18          	mov    ecx,DWORD PTR [rsp+rdx*1+0x18]
    d748:	89 4e 60             	mov    DWORD PTR [rsi+0x60],ecx
    d74b:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
    d752:	c3                   	ret    
    d753:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    d75a:	00 
    d75b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    d760:	c4 c2 79 04 c4       	vpmaddubsw xmm0,xmm0,xmm12
    d765:	c4 c2 71 04 cc       	vpmaddubsw xmm1,xmm1,xmm12
    d76a:	c4 c2 69 04 d4       	vpmaddubsw xmm2,xmm2,xmm12
    d76f:	c4 c2 61 04 dc       	vpmaddubsw xmm3,xmm3,xmm12
    d774:	c4 c1 79 f9 c0       	vpsubw xmm0,xmm0,xmm8
    d779:	c4 c1 71 f9 c9       	vpsubw xmm1,xmm1,xmm9
    d77e:	c4 c1 69 f9 d2       	vpsubw xmm2,xmm2,xmm10
    d783:	c4 c1 61 f9 db       	vpsubw xmm3,xmm3,xmm11
    d788:	c5 79 fd e9          	vpaddw xmm13,xmm0,xmm1
    d78c:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    d790:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    d794:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    d798:	c5 91 fd d0          	vpaddw xmm2,xmm13,xmm0
    d79c:	c4 c1 79 f9 c5       	vpsubw xmm0,xmm0,xmm13
    d7a1:	c5 71 fd eb          	vpaddw xmm13,xmm1,xmm3
    d7a5:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    d7a9:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    d7ae:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    d7b3:	c4 42 79 1d ed       	vpabsw xmm13,xmm13
    d7b8:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    d7bd:	c4 e3 69 0e c8 aa    	vpblendw xmm1,xmm2,xmm0,0xaa
    d7c3:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    d7c8:	c5 e9 72 d2 10       	vpsrld xmm2,xmm2,0x10
    d7cd:	c5 f9 eb c2          	vpor   xmm0,xmm0,xmm2
    d7d1:	c5 f1 ee c8          	vpmaxsw xmm1,xmm1,xmm0
    d7d5:	c4 e3 11 0e d3 aa    	vpblendw xmm2,xmm13,xmm3,0xaa
    d7db:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
    d7e0:	c4 c1 11 72 d5 10    	vpsrld xmm13,xmm13,0x10
    d7e6:	c5 91 eb db          	vpor   xmm3,xmm13,xmm3
    d7ea:	c5 e9 ee d3          	vpmaxsw xmm2,xmm2,xmm3
    d7ee:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d7f2:	c5 f1 f5 0d 00 00 00 	vpmaddwd xmm1,xmm1,XMMWORD PTR [rip+0x0]        # d7fa <x264_8_intra_satd_x9_4x4_avx+0x3aa>
    d7f9:	00 
    d7fa:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    d7fe:	c5 f1 fe c2          	vpaddd xmm0,xmm1,xmm2
    d802:	c3                   	ret    
    d803:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    d80a:	00 
    d80b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000d810 <x264_8_intra_sad_x9_8x8_avx>:
    d810:	48 81 ec 48 02 00 00 	sub    rsp,0x248
    d817:	c5 fa 7e 27          	vmovq  xmm4,QWORD PTR [rdi]
    d81b:	c5 fa 7e 6f 10       	vmovq  xmm5,QWORD PTR [rdi+0x10]
    d820:	c5 fa 7e 77 40       	vmovq  xmm6,QWORD PTR [rdi+0x40]
    d825:	c5 fa 7e 7f 50       	vmovq  xmm7,QWORD PTR [rdi+0x50]
    d82a:	c5 d8 16 67 20       	vmovhps xmm4,xmm4,QWORD PTR [rdi+0x20]
    d82f:	c5 d0 16 6f 30       	vmovhps xmm5,xmm5,QWORD PTR [rdi+0x30]
    d834:	c5 c8 16 77 60       	vmovhps xmm6,xmm6,QWORD PTR [rdi+0x60]
    d839:	c5 c0 16 7f 70       	vmovhps xmm7,xmm7,QWORD PTR [rdi+0x70]
    d83e:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # d845 <x264_8_intra_sad_x9_8x8_avx+0x35>
    d845:	c5 fb 12 42 10       	vmovddup xmm0,QWORD PTR [rdx+0x10]
    d84a:	c5 f9 7f 04 24       	vmovdqa XMMWORD PTR [rsp],xmm0
    d84f:	c5 f9 f6 cc          	vpsadbw xmm1,xmm0,xmm4
    d853:	c5 f9 7f 44 24 10    	vmovdqa XMMWORD PTR [rsp+0x10],xmm0
    d859:	c5 f9 f6 d5          	vpsadbw xmm2,xmm0,xmm5
    d85d:	c5 f9 7f 44 24 20    	vmovdqa XMMWORD PTR [rsp+0x20],xmm0
    d863:	c5 f9 f6 de          	vpsadbw xmm3,xmm0,xmm6
    d867:	c5 f9 7f 44 24 30    	vmovdqa XMMWORD PTR [rsp+0x30],xmm0
    d86d:	c5 f9 f6 c7          	vpsadbw xmm0,xmm0,xmm7
    d871:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d875:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    d879:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
    d87d:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
    d881:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
    d885:	c4 c1 79 7e 00       	vmovd  DWORD PTR [r8],xmm0
    d88a:	c5 fa 7e 42 07       	vmovq  xmm0,QWORD PTR [rdx+0x7]
    d88f:	c4 e2 79 00 4f 80    	vpshufb xmm1,xmm0,XMMWORD PTR [rdi-0x80]
    d895:	c4 e2 79 00 57 90    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi-0x70]
    d89b:	c5 f9 7f 4c 24 40    	vmovdqa XMMWORD PTR [rsp+0x40],xmm1
    d8a1:	c5 f1 f6 cc          	vpsadbw xmm1,xmm1,xmm4
    d8a5:	c5 f9 7f 54 24 50    	vmovdqa XMMWORD PTR [rsp+0x50],xmm2
    d8ab:	c5 e9 f6 d5          	vpsadbw xmm2,xmm2,xmm5
    d8af:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d8b3:	c4 e2 79 00 5f a0    	vpshufb xmm3,xmm0,XMMWORD PTR [rdi-0x60]
    d8b9:	c4 e2 79 00 57 b0    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi-0x50]
    d8bf:	c5 f9 7f 5c 24 60    	vmovdqa XMMWORD PTR [rsp+0x60],xmm3
    d8c5:	c5 e1 f6 de          	vpsadbw xmm3,xmm3,xmm6
    d8c9:	c5 f9 7f 54 24 70    	vmovdqa XMMWORD PTR [rsp+0x70],xmm2
    d8cf:	c5 e9 f6 d7          	vpsadbw xmm2,xmm2,xmm7
    d8d3:	c5 f1 fd cb          	vpaddw xmm1,xmm1,xmm3
    d8d7:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d8db:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    d8df:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d8e3:	c4 c1 79 7e 48 02    	vmovd  DWORD PTR [r8+0x2],xmm1
    d8e9:	4c 8d 8c 24 00 01 00 	lea    r9,[rsp+0x100]
    d8f0:	00 
    d8f1:	c5 f8 16 42 10       	vmovhps xmm0,xmm0,QWORD PTR [rdx+0x10]
    d8f6:	c5 e9 ef d2          	vpxor  xmm2,xmm2,xmm2
    d8fa:	c5 f9 f6 c2          	vpsadbw xmm0,xmm0,xmm2
    d8fe:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
    d902:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
    d906:	c5 f9 71 d0 03       	vpsrlw xmm0,xmm0,0x3
    d90b:	c5 f9 e3 c2          	vpavgw xmm0,xmm0,xmm2
    d90f:	c4 e2 79 00 c2       	vpshufb xmm0,xmm0,xmm2
    d914:	c4 c1 79 7f 41 80    	vmovdqa XMMWORD PTR [r9-0x80],xmm0
    d91a:	c5 f9 f6 cc          	vpsadbw xmm1,xmm0,xmm4
    d91e:	c4 c1 79 7f 41 90    	vmovdqa XMMWORD PTR [r9-0x70],xmm0
    d924:	c5 f9 f6 d5          	vpsadbw xmm2,xmm0,xmm5
    d928:	c4 c1 79 7f 41 a0    	vmovdqa XMMWORD PTR [r9-0x60],xmm0
    d92e:	c5 f9 f6 de          	vpsadbw xmm3,xmm0,xmm6
    d932:	c4 c1 79 7f 41 b0    	vmovdqa XMMWORD PTR [r9-0x50],xmm0
    d938:	c5 f9 f6 c7          	vpsadbw xmm0,xmm0,xmm7
    d93c:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d940:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    d944:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
    d948:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
    d94c:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
    d950:	c4 c1 79 7e 40 04    	vmovd  DWORD PTR [r8+0x4],xmm0
    d956:	c5 f9 6f 42 10       	vmovdqa xmm0,XMMWORD PTR [rdx+0x10]
    d95b:	c5 fa 6f 52 11       	vmovdqu xmm2,XMMWORD PTR [rdx+0x11]
    d960:	c5 f1 73 f8 01       	vpslldq xmm1,xmm0,0x1
    d965:	c5 f9 e0 da          	vpavgb xmm3,xmm0,xmm2
    d969:	c5 71 e0 c2          	vpavgb xmm8,xmm1,xmm2
    d96d:	c5 e9 ef d1          	vpxor  xmm2,xmm2,xmm1
    d971:	c5 e9 db 15 00 00 00 	vpand  xmm2,xmm2,XMMWORD PTR [rip+0x0]        # d979 <x264_8_intra_sad_x9_8x8_avx+0x169>
    d978:	00 
    d979:	c5 39 d8 c2          	vpsubusb xmm8,xmm8,xmm2
    d97d:	c5 b9 e0 c0          	vpavgb xmm0,xmm8,xmm0
    d981:	c4 e2 79 00 4f c0    	vpshufb xmm1,xmm0,XMMWORD PTR [rdi-0x40]
    d987:	c4 e2 79 00 57 d0    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi-0x30]
    d98d:	c4 c1 79 7f 49 c0    	vmovdqa XMMWORD PTR [r9-0x40],xmm1
    d993:	c5 f1 f6 cc          	vpsadbw xmm1,xmm1,xmm4
    d997:	c4 c1 79 7f 51 d0    	vmovdqa XMMWORD PTR [r9-0x30],xmm2
    d99d:	c5 e9 f6 d5          	vpsadbw xmm2,xmm2,xmm5
    d9a1:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d9a5:	c4 e2 79 00 57 e0    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi-0x20]
    d9ab:	c4 c1 79 7f 51 e0    	vmovdqa XMMWORD PTR [r9-0x20],xmm2
    d9b1:	c5 e9 f6 d6          	vpsadbw xmm2,xmm2,xmm6
    d9b5:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d9b9:	c4 e2 79 00 57 f0    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi-0x10]
    d9bf:	c4 c1 79 7f 51 f0    	vmovdqa XMMWORD PTR [r9-0x10],xmm2
    d9c5:	c5 e9 f6 d7          	vpsadbw xmm2,xmm2,xmm7
    d9c9:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d9cd:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    d9d1:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    d9d5:	c4 c1 79 7e 48 06    	vmovd  DWORD PTR [r8+0x6],xmm1
    d9db:	c4 e2 61 00 0f       	vpshufb xmm1,xmm3,XMMWORD PTR [rdi]
    d9e0:	c4 e2 79 00 57 10    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi+0x10]
    d9e6:	c4 e2 61 00 5f 20    	vpshufb xmm3,xmm3,XMMWORD PTR [rdi+0x20]
    d9ec:	c4 e2 79 00 47 30    	vpshufb xmm0,xmm0,XMMWORD PTR [rdi+0x30]
    d9f2:	c4 c1 79 7f 89 c0 00 	vmovdqa XMMWORD PTR [r9+0xc0],xmm1
    d9f9:	00 00 
    d9fb:	c5 f1 f6 cc          	vpsadbw xmm1,xmm1,xmm4
    d9ff:	c4 c1 79 7f 91 d0 00 	vmovdqa XMMWORD PTR [r9+0xd0],xmm2
    da06:	00 00 
    da08:	c5 e9 f6 d5          	vpsadbw xmm2,xmm2,xmm5
    da0c:	c4 c1 79 7f 99 e0 00 	vmovdqa XMMWORD PTR [r9+0xe0],xmm3
    da13:	00 00 
    da15:	c5 e1 f6 de          	vpsadbw xmm3,xmm3,xmm6
    da19:	c4 c1 79 7f 81 f0 00 	vmovdqa XMMWORD PTR [r9+0xf0],xmm0
    da20:	00 00 
    da22:	c5 f9 f6 c7          	vpsadbw xmm0,xmm0,xmm7
    da26:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    da2a:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    da2e:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
    da32:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
    da36:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
    da3a:	c4 c3 79 15 40 0e 00 	vpextrw WORD PTR [r8+0xe],xmm0,0x0
    da41:	c5 fa 6f 52 08       	vmovdqu xmm2,XMMWORD PTR [rdx+0x8]
    da46:	c5 fa 6f 42 07       	vmovdqu xmm0,XMMWORD PTR [rdx+0x7]
    da4b:	c5 fa 6f 4a 06       	vmovdqu xmm1,XMMWORD PTR [rdx+0x6]
    da50:	c5 e9 e0 d8          	vpavgb xmm3,xmm2,xmm0
    da54:	c5 71 e0 c2          	vpavgb xmm8,xmm1,xmm2
    da58:	c5 e9 ef d1          	vpxor  xmm2,xmm2,xmm1
    da5c:	c5 e9 db 15 00 00 00 	vpand  xmm2,xmm2,XMMWORD PTR [rip+0x0]        # da64 <x264_8_intra_sad_x9_8x8_avx+0x254>
    da63:	00 
    da64:	c5 39 d8 c2          	vpsubusb xmm8,xmm8,xmm2
    da68:	c5 b9 e0 c0          	vpavgb xmm0,xmm8,xmm0
    da6c:	c4 e2 79 00 4f 40    	vpshufb xmm1,xmm0,XMMWORD PTR [rdi+0x40]
    da72:	c4 e2 79 00 57 50    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi+0x50]
    da78:	c4 c1 79 7f 09       	vmovdqa XMMWORD PTR [r9],xmm1
    da7d:	c5 f1 f6 cc          	vpsadbw xmm1,xmm1,xmm4
    da81:	c4 c1 79 7f 51 10    	vmovdqa XMMWORD PTR [r9+0x10],xmm2
    da87:	c5 e9 f6 d5          	vpsadbw xmm2,xmm2,xmm5
    da8b:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    da8f:	c4 e2 79 00 57 60    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi+0x60]
    da95:	c4 c1 79 7f 51 20    	vmovdqa XMMWORD PTR [r9+0x20],xmm2
    da9b:	c5 e9 f6 d6          	vpsadbw xmm2,xmm2,xmm6
    da9f:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    daa3:	c4 e2 79 00 57 70    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi+0x70]
    daa9:	c4 c1 79 7f 51 30    	vmovdqa XMMWORD PTR [r9+0x30],xmm2
    daaf:	c5 e9 f6 d7          	vpsadbw xmm2,xmm2,xmm7
    dab3:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    dab7:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    dabb:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    dabf:	c4 c1 79 7e 48 08    	vmovd  DWORD PTR [r8+0x8],xmm1
    dac5:	48 81 c7 00 01 00 00 	add    rdi,0x100
    dacc:	49 81 c1 c0 00 00 00 	add    r9,0xc0
    dad3:	c5 e3 10 d0          	vmovsd xmm2,xmm3,xmm0
    dad7:	c4 e2 69 00 4f 80    	vpshufb xmm1,xmm2,XMMWORD PTR [rdi-0x80]
    dadd:	c4 e2 69 00 57 a0    	vpshufb xmm2,xmm2,XMMWORD PTR [rdi-0x60]
    dae3:	c4 c1 79 7f 49 80    	vmovdqa XMMWORD PTR [r9-0x80],xmm1
    dae9:	c5 f1 f6 cc          	vpsadbw xmm1,xmm1,xmm4
    daed:	c4 c1 79 7f 51 a0    	vmovdqa XMMWORD PTR [r9-0x60],xmm2
    daf3:	c5 e9 f6 d6          	vpsadbw xmm2,xmm2,xmm6
    daf7:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    dafb:	c4 e2 79 00 57 90    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi-0x70]
    db01:	c4 c1 79 7f 51 90    	vmovdqa XMMWORD PTR [r9-0x70],xmm2
    db07:	c5 e9 f6 d5          	vpsadbw xmm2,xmm2,xmm5
    db0b:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    db0f:	c4 e2 79 00 57 b0    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi-0x50]
    db15:	c4 c1 79 7f 51 b0    	vmovdqa XMMWORD PTR [r9-0x50],xmm2
    db1b:	c5 e9 f6 d7          	vpsadbw xmm2,xmm2,xmm7
    db1f:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    db23:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    db27:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    db2b:	c4 c1 79 7e 48 0a    	vmovd  DWORD PTR [r8+0xa],xmm1
    db31:	c5 f9 70 d3 01       	vpshufd xmm2,xmm3,0x1
    db36:	c4 e3 69 0e d0 fc    	vpblendw xmm2,xmm2,xmm0,0xfc
    db3c:	c5 f9 60 c3          	vpunpcklbw xmm0,xmm0,xmm3
    db40:	c4 e2 69 00 4f c0    	vpshufb xmm1,xmm2,XMMWORD PTR [rdi-0x40]
    db46:	c4 e2 69 00 57 d0    	vpshufb xmm2,xmm2,XMMWORD PTR [rdi-0x30]
    db4c:	c4 c1 79 7f 49 c0    	vmovdqa XMMWORD PTR [r9-0x40],xmm1
    db52:	c5 f1 f6 cc          	vpsadbw xmm1,xmm1,xmm4
    db56:	c4 c1 79 7f 51 d0    	vmovdqa XMMWORD PTR [r9-0x30],xmm2
    db5c:	c5 e9 f6 d5          	vpsadbw xmm2,xmm2,xmm5
    db60:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    db64:	c4 e2 79 00 57 e0    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi-0x20]
    db6a:	c4 e2 79 00 5f f0    	vpshufb xmm3,xmm0,XMMWORD PTR [rdi-0x10]
    db70:	c4 c1 79 7f 51 e0    	vmovdqa XMMWORD PTR [r9-0x20],xmm2
    db76:	c5 e9 f6 d6          	vpsadbw xmm2,xmm2,xmm6
    db7a:	c4 c1 79 7f 59 f0    	vmovdqa XMMWORD PTR [r9-0x10],xmm3
    db80:	c5 e1 f6 df          	vpsadbw xmm3,xmm3,xmm7
    db84:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    db88:	c5 f1 fd cb          	vpaddw xmm1,xmm1,xmm3
    db8c:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    db90:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    db94:	c5 f1 73 f9 0c       	vpslldq xmm1,xmm1,0xc
    db99:	c4 e3 79 20 42 07 0f 	vpinsrb xmm0,xmm0,BYTE PTR [rdx+0x7],0xf
    dba0:	c4 e2 79 00 1f       	vpshufb xmm3,xmm0,XMMWORD PTR [rdi]
    dba5:	c4 e2 79 00 57 10    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi+0x10]
    dbab:	c4 c1 79 7f 59 40    	vmovdqa XMMWORD PTR [r9+0x40],xmm3
    dbb1:	c5 e1 f6 dc          	vpsadbw xmm3,xmm3,xmm4
    dbb5:	c4 c1 79 7f 51 50    	vmovdqa XMMWORD PTR [r9+0x50],xmm2
    dbbb:	c5 e9 f6 d5          	vpsadbw xmm2,xmm2,xmm5
    dbbf:	c5 e1 fd da          	vpaddw xmm3,xmm3,xmm2
    dbc3:	c4 e2 79 00 57 20    	vpshufb xmm2,xmm0,XMMWORD PTR [rdi+0x20]
    dbc9:	c4 e2 79 00 47 30    	vpshufb xmm0,xmm0,XMMWORD PTR [rdi+0x30]
    dbcf:	c4 c1 79 7f 51 60    	vmovdqa XMMWORD PTR [r9+0x60],xmm2
    dbd5:	c5 e9 f6 d6          	vpsadbw xmm2,xmm2,xmm6
    dbd9:	c4 c1 79 7f 41 70    	vmovdqa XMMWORD PTR [r9+0x70],xmm0
    dbdf:	c5 f9 f6 c7          	vpsadbw xmm0,xmm0,xmm7
    dbe3:	c5 e1 fd da          	vpaddw xmm3,xmm3,xmm2
    dbe7:	c5 e1 fd d8          	vpaddw xmm3,xmm3,xmm0
    dbeb:	c5 e1 6d d3          	vpunpckhqdq xmm2,xmm3,xmm3
    dbef:	c5 e1 fd da          	vpaddw xmm3,xmm3,xmm2
    dbf3:	c5 f9 7e da          	vmovd  edx,xmm3
    dbf7:	c5 fa 6f 01          	vmovdqu xmm0,XMMWORD PTR [rcx]
    dbfb:	c4 c1 71 eb 08       	vpor   xmm1,xmm1,XMMWORD PTR [r8]
    dc00:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
    dc04:	c4 c1 79 7f 00       	vmovdqa XMMWORD PTR [r8],xmm0
    dc09:	44 0f b7 49 10       	movzx  r9d,WORD PTR [rcx+0x10]
    dc0e:	44 01 ca             	add    edx,r9d
    dc11:	66 41 89 50 10       	mov    WORD PTR [r8+0x10],dx
    dc16:	c4 e2 79 41 c0       	vphminposuw xmm0,xmm0
    dc1b:	c5 f9 7e c0          	vmovd  eax,xmm0
    dc1f:	81 c2 00 00 08 00    	add    edx,0x80000
    dc25:	66 39 d0             	cmp    ax,dx
    dc28:	0f 4f c2             	cmovg  eax,edx
    dc2b:	89 c2                	mov    edx,eax
    dc2d:	c1 ea 10             	shr    edx,0x10
    dc30:	c1 e2 06             	shl    edx,0x6
    dc33:	48 83 ee 80          	sub    rsi,0xffffffffffffff80
    dc37:	c5 f9 6f 04 14       	vmovdqa xmm0,XMMWORD PTR [rsp+rdx*1]
    dc3c:	c5 f9 6f 5c 14 10    	vmovdqa xmm3,XMMWORD PTR [rsp+rdx*1+0x10]
    dc42:	c5 f9 6f 54 14 20    	vmovdqa xmm2,XMMWORD PTR [rsp+rdx*1+0x20]
    dc48:	c5 f9 6f 4c 14 30    	vmovdqa xmm1,XMMWORD PTR [rsp+rdx*1+0x30]
    dc4e:	c5 f9 d6 46 80       	vmovq  QWORD PTR [rsi-0x80],xmm0
    dc53:	c5 f8 17 46 c0       	vmovhps QWORD PTR [rsi-0x40],xmm0
    dc58:	c5 f9 d6 5e a0       	vmovq  QWORD PTR [rsi-0x60],xmm3
    dc5d:	c5 f8 17 5e e0       	vmovhps QWORD PTR [rsi-0x20],xmm3
    dc62:	c5 f9 d6 16          	vmovq  QWORD PTR [rsi],xmm2
    dc66:	c5 f8 17 56 40       	vmovhps QWORD PTR [rsi+0x40],xmm2
    dc6b:	c5 f9 d6 4e 20       	vmovq  QWORD PTR [rsi+0x20],xmm1
    dc70:	c5 f8 17 4e 60       	vmovhps QWORD PTR [rsi+0x60],xmm1
    dc75:	48 81 c4 48 02 00 00 	add    rsp,0x248
    dc7c:	c3                   	ret    
    dc7d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000dc80 <x264_8_intra_sa8d_x9_8x8_avx>:
    dc80:	48 81 ec c8 02 00 00 	sub    rsp,0x2c8
    dc87:	c5 79 6f 3d 00 00 00 	vmovdqa xmm15,XMMWORD PTR [rip+0x0]        # dc8f <x264_8_intra_sa8d_x9_8x8_avx+0xf>
    dc8e:	00 
    dc8f:	c4 41 39 ef c0       	vpxor  xmm8,xmm8,xmm8
    dc94:	c5 fb 12 07          	vmovddup xmm0,QWORD PTR [rdi]
    dc98:	c4 42 79 04 cf       	vpmaddubsw xmm9,xmm0,xmm15
    dc9d:	c4 c1 79 60 c0       	vpunpcklbw xmm0,xmm0,xmm8
    dca2:	c5 79 7f 0c 24       	vmovdqa XMMWORD PTR [rsp],xmm9
    dca7:	c5 fb 12 4f 10       	vmovddup xmm1,QWORD PTR [rdi+0x10]
    dcac:	c4 42 71 04 cf       	vpmaddubsw xmm9,xmm1,xmm15
    dcb1:	c4 c1 71 60 c8       	vpunpcklbw xmm1,xmm1,xmm8
    dcb6:	c5 79 7f 4c 24 10    	vmovdqa XMMWORD PTR [rsp+0x10],xmm9
    dcbc:	c5 fb 12 57 20       	vmovddup xmm2,QWORD PTR [rdi+0x20]
    dcc1:	c4 42 69 04 cf       	vpmaddubsw xmm9,xmm2,xmm15
    dcc6:	c4 c1 69 60 d0       	vpunpcklbw xmm2,xmm2,xmm8
    dccb:	c5 79 7f 4c 24 20    	vmovdqa XMMWORD PTR [rsp+0x20],xmm9
    dcd1:	c5 fb 12 5f 30       	vmovddup xmm3,QWORD PTR [rdi+0x30]
    dcd6:	c4 42 61 04 cf       	vpmaddubsw xmm9,xmm3,xmm15
    dcdb:	c4 c1 61 60 d8       	vpunpcklbw xmm3,xmm3,xmm8
    dce0:	c5 79 7f 4c 24 30    	vmovdqa XMMWORD PTR [rsp+0x30],xmm9
    dce6:	c5 fb 12 67 40       	vmovddup xmm4,QWORD PTR [rdi+0x40]
    dceb:	c4 42 59 04 cf       	vpmaddubsw xmm9,xmm4,xmm15
    dcf0:	c4 c1 59 60 e0       	vpunpcklbw xmm4,xmm4,xmm8
    dcf5:	c5 79 7f 4c 24 40    	vmovdqa XMMWORD PTR [rsp+0x40],xmm9
    dcfb:	c5 fb 12 6f 50       	vmovddup xmm5,QWORD PTR [rdi+0x50]
    dd00:	c4 42 51 04 cf       	vpmaddubsw xmm9,xmm5,xmm15
    dd05:	c4 c1 51 60 e8       	vpunpcklbw xmm5,xmm5,xmm8
    dd0a:	c5 79 7f 4c 24 50    	vmovdqa XMMWORD PTR [rsp+0x50],xmm9
    dd10:	c5 fb 12 77 60       	vmovddup xmm6,QWORD PTR [rdi+0x60]
    dd15:	c4 42 49 04 cf       	vpmaddubsw xmm9,xmm6,xmm15
    dd1a:	c4 c1 49 60 f0       	vpunpcklbw xmm6,xmm6,xmm8
    dd1f:	c5 79 7f 4c 24 60    	vmovdqa XMMWORD PTR [rsp+0x60],xmm9
    dd25:	c5 fb 12 7f 70       	vmovddup xmm7,QWORD PTR [rdi+0x70]
    dd2a:	c4 42 41 04 cf       	vpmaddubsw xmm9,xmm7,xmm15
    dd2f:	c4 c1 41 60 f8       	vpunpcklbw xmm7,xmm7,xmm8
    dd34:	c5 79 7f 4c 24 70    	vmovdqa XMMWORD PTR [rsp+0x70],xmm9
    dd3a:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # dd41 <x264_8_intra_sa8d_x9_8x8_avx+0xc1>
    dd41:	4c 8d 8c 24 00 01 00 	lea    r9,[rsp+0x100]
    dd48:	00 
    dd49:	c5 79 fd c1          	vpaddw xmm8,xmm0,xmm1
    dd4d:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    dd51:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    dd55:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    dd59:	c5 b9 69 d1          	vpunpckhwd xmm2,xmm8,xmm1
    dd5d:	c5 39 61 c1          	vpunpcklwd xmm8,xmm8,xmm1
    dd61:	c5 b9 fd ca          	vpaddw xmm1,xmm8,xmm2
    dd65:	c4 c1 69 f9 d0       	vpsubw xmm2,xmm2,xmm8
    dd6a:	c5 79 69 c3          	vpunpckhwd xmm8,xmm0,xmm3
    dd6e:	c5 f9 61 c3          	vpunpcklwd xmm0,xmm0,xmm3
    dd72:	c5 b9 fd d8          	vpaddw xmm3,xmm8,xmm0
    dd76:	c5 39 f9 c0          	vpsubw xmm8,xmm8,xmm0
    dd7a:	c5 d9 fd c5          	vpaddw xmm0,xmm4,xmm5
    dd7e:	c5 d1 f9 ec          	vpsubw xmm5,xmm5,xmm4
    dd82:	c5 c9 fd e7          	vpaddw xmm4,xmm6,xmm7
    dd86:	c5 c1 f9 fe          	vpsubw xmm7,xmm7,xmm6
    dd8a:	c5 f9 69 f5          	vpunpckhwd xmm6,xmm0,xmm5
    dd8e:	c5 f9 61 c5          	vpunpcklwd xmm0,xmm0,xmm5
    dd92:	c5 f9 fd ee          	vpaddw xmm5,xmm0,xmm6
    dd96:	c5 c9 f9 f0          	vpsubw xmm6,xmm6,xmm0
    dd9a:	c5 d9 69 c7          	vpunpckhwd xmm0,xmm4,xmm7
    dd9e:	c5 d9 61 e7          	vpunpcklwd xmm4,xmm4,xmm7
    dda2:	c5 d9 fd f8          	vpaddw xmm7,xmm4,xmm0
    dda6:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    ddaa:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    ddae:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    ddb2:	c5 b9 fd ca          	vpaddw xmm1,xmm8,xmm2
    ddb6:	c5 39 f9 c2          	vpsubw xmm8,xmm8,xmm2
    ddba:	c5 d9 6a d3          	vpunpckhdq xmm2,xmm4,xmm3
    ddbe:	c5 d9 62 e3          	vpunpckldq xmm4,xmm4,xmm3
    ddc2:	c5 d9 fd da          	vpaddw xmm3,xmm4,xmm2
    ddc6:	c5 e9 f9 d4          	vpsubw xmm2,xmm2,xmm4
    ddca:	c4 c1 71 6a e0       	vpunpckhdq xmm4,xmm1,xmm8
    ddcf:	c4 c1 71 62 c8       	vpunpckldq xmm1,xmm1,xmm8
    ddd4:	c5 71 fd c4          	vpaddw xmm8,xmm1,xmm4
    ddd8:	c5 d9 f9 e1          	vpsubw xmm4,xmm4,xmm1
    dddc:	c5 d1 fd cf          	vpaddw xmm1,xmm5,xmm7
    dde0:	c5 c1 f9 fd          	vpsubw xmm7,xmm7,xmm5
    dde4:	c5 c9 fd e8          	vpaddw xmm5,xmm6,xmm0
    dde8:	c5 f9 f9 c6          	vpsubw xmm0,xmm0,xmm6
    ddec:	c5 f1 6a f7          	vpunpckhdq xmm6,xmm1,xmm7
    ddf0:	c5 f1 62 cf          	vpunpckldq xmm1,xmm1,xmm7
    ddf4:	c5 f1 fd fe          	vpaddw xmm7,xmm1,xmm6
    ddf8:	c5 c9 f9 f1          	vpsubw xmm6,xmm6,xmm1
    ddfc:	c5 d1 6a c8          	vpunpckhdq xmm1,xmm5,xmm0
    de00:	c5 d1 62 e8          	vpunpckldq xmm5,xmm5,xmm0
    de04:	c5 d1 fd c1          	vpaddw xmm0,xmm5,xmm1
    de08:	c5 f1 f9 cd          	vpsubw xmm1,xmm1,xmm5
    de0c:	c5 e1 fd ef          	vpaddw xmm5,xmm3,xmm7
    de10:	c5 c1 f9 fb          	vpsubw xmm7,xmm7,xmm3
    de14:	c5 e9 fd de          	vpaddw xmm3,xmm2,xmm6
    de18:	c5 c9 f9 f2          	vpsubw xmm6,xmm6,xmm2
    de1c:	c5 d1 6d d7          	vpunpckhqdq xmm2,xmm5,xmm7
    de20:	c5 d1 6c ef          	vpunpcklqdq xmm5,xmm5,xmm7
    de24:	c5 d1 fd fa          	vpaddw xmm7,xmm5,xmm2
    de28:	c5 e9 f9 d5          	vpsubw xmm2,xmm2,xmm5
    de2c:	c5 e1 6d ee          	vpunpckhqdq xmm5,xmm3,xmm6
    de30:	c5 e1 6c de          	vpunpcklqdq xmm3,xmm3,xmm6
    de34:	c5 e1 fd f5          	vpaddw xmm6,xmm3,xmm5
    de38:	c5 d1 f9 eb          	vpsubw xmm5,xmm5,xmm3
    de3c:	c5 b9 fd d8          	vpaddw xmm3,xmm8,xmm0
    de40:	c4 c1 79 f9 c0       	vpsubw xmm0,xmm0,xmm8
    de45:	c5 59 fd c1          	vpaddw xmm8,xmm4,xmm1
    de49:	c5 f1 f9 cc          	vpsubw xmm1,xmm1,xmm4
    de4d:	c5 e1 6d e0          	vpunpckhqdq xmm4,xmm3,xmm0
    de51:	c5 e1 6c d8          	vpunpcklqdq xmm3,xmm3,xmm0
    de55:	c5 e1 fd c4          	vpaddw xmm0,xmm3,xmm4
    de59:	c5 d9 f9 e3          	vpsubw xmm4,xmm4,xmm3
    de5d:	c5 b9 6d d9          	vpunpckhqdq xmm3,xmm8,xmm1
    de61:	c5 39 6c c1          	vpunpcklqdq xmm8,xmm8,xmm1
    de65:	c5 b9 fd cb          	vpaddw xmm1,xmm8,xmm3
    de69:	c4 c1 61 f9 d8       	vpsubw xmm3,xmm3,xmm8
    de6e:	c4 62 79 1d da       	vpabsw xmm11,xmm2
    de73:	c4 62 79 1d c6       	vpabsw xmm8,xmm6
    de78:	c4 41 21 fd d8       	vpaddw xmm11,xmm11,xmm8
    de7d:	c4 62 79 1d c5       	vpabsw xmm8,xmm5
    de82:	c4 41 21 fd d8       	vpaddw xmm11,xmm11,xmm8
    de87:	c4 62 79 1d c0       	vpabsw xmm8,xmm0
    de8c:	c4 41 21 fd d8       	vpaddw xmm11,xmm11,xmm8
    de91:	c4 62 79 1d c4       	vpabsw xmm8,xmm4
    de96:	c4 41 21 fd d8       	vpaddw xmm11,xmm11,xmm8
    de9b:	c4 62 79 1d c1       	vpabsw xmm8,xmm1
    dea0:	c4 41 21 fd d8       	vpaddw xmm11,xmm11,xmm8
    dea5:	c4 62 79 1d c3       	vpabsw xmm8,xmm3
    deaa:	c4 41 21 fd d8       	vpaddw xmm11,xmm11,xmm8
    deaf:	c5 7a 7e 42 07       	vmovq  xmm8,QWORD PTR [rdx+0x7]
    deb4:	c5 7b 12 4a 10       	vmovddup xmm9,QWORD PTR [rdx+0x10]
    deb9:	c4 41 79 7f 49 80    	vmovdqa XMMWORD PTR [r9-0x80],xmm9
    debf:	c4 41 79 7f 49 90    	vmovdqa XMMWORD PTR [r9-0x70],xmm9
    dec5:	c4 41 79 7f 49 a0    	vmovdqa XMMWORD PTR [r9-0x60],xmm9
    decb:	c4 41 79 7f 49 b0    	vmovdqa XMMWORD PTR [r9-0x50],xmm9
    ded1:	c4 41 39 61 c0       	vpunpcklwd xmm8,xmm8,xmm8
    ded6:	c4 62 31 00 0d 00 00 	vpshufb xmm9,xmm9,XMMWORD PTR [rip+0x0]        # dedf <x264_8_intra_sa8d_x9_8x8_avx+0x25f>
    dedd:	00 00 
    dedf:	c4 62 39 04 05 00 00 	vpmaddubsw xmm8,xmm8,XMMWORD PTR [rip+0x0]        # dee8 <x264_8_intra_sa8d_x9_8x8_avx+0x268>
    dee6:	00 00 
    dee8:	c4 62 31 04 0d 00 00 	vpmaddubsw xmm9,xmm9,XMMWORD PTR [rip+0x0]        # def1 <x264_8_intra_sa8d_x9_8x8_avx+0x271>
    deef:	00 00 
    def1:	c4 41 79 70 e0 4e    	vpshufd xmm12,xmm8,0x4e
    def7:	c4 41 79 70 e9 4e    	vpshufd xmm13,xmm9,0x4e
    defd:	c4 62 39 09 05 00 00 	vpsignw xmm8,xmm8,XMMWORD PTR [rip+0x0]        # df06 <x264_8_intra_sa8d_x9_8x8_avx+0x286>
    df04:	00 00 
    df06:	c4 62 31 09 0d 00 00 	vpsignw xmm9,xmm9,XMMWORD PTR [rip+0x0]        # df0f <x264_8_intra_sa8d_x9_8x8_avx+0x28f>
    df0d:	00 00 
    df0f:	c4 41 39 fd c4       	vpaddw xmm8,xmm8,xmm12
    df14:	c4 41 31 fd cd       	vpaddw xmm9,xmm9,xmm13
    df19:	c4 41 79 70 e0 b1    	vpshufd xmm12,xmm8,0xb1
    df1f:	c4 41 79 70 e9 b1    	vpshufd xmm13,xmm9,0xb1
    df25:	c4 62 39 09 05 00 00 	vpsignw xmm8,xmm8,XMMWORD PTR [rip+0x0]        # df2e <x264_8_intra_sa8d_x9_8x8_avx+0x2ae>
    df2c:	00 00 
    df2e:	c4 62 31 09 0d 00 00 	vpsignw xmm9,xmm9,XMMWORD PTR [rip+0x0]        # df37 <x264_8_intra_sa8d_x9_8x8_avx+0x2b7>
    df35:	00 00 
    df37:	c4 41 39 fd c4       	vpaddw xmm8,xmm8,xmm12
    df3c:	c4 41 31 fd cd       	vpaddw xmm9,xmm9,xmm13
    df41:	c4 41 39 fd d1       	vpaddw xmm10,xmm8,xmm9
    df46:	c5 29 fd 15 00 00 00 	vpaddw xmm10,xmm10,XMMWORD PTR [rip+0x0]        # df4e <x264_8_intra_sa8d_x9_8x8_avx+0x2ce>
    df4d:	00 
    df4e:	c5 29 db 15 00 00 00 	vpand  xmm10,xmm10,XMMWORD PTR [rip+0x0]        # df56 <x264_8_intra_sa8d_x9_8x8_avx+0x2d6>
    df55:	00 
    df56:	c4 c1 19 71 d2 04    	vpsrlw xmm12,xmm10,0x4
    df5c:	c4 c1 29 71 f2 02    	vpsllw xmm10,xmm10,0x2
    df62:	c4 41 11 ef ed       	vpxor  xmm13,xmm13,xmm13
    df67:	c4 42 19 00 e5       	vpshufb xmm12,xmm12,xmm13
    df6c:	c4 41 79 7f 21       	vmovdqa XMMWORD PTR [r9],xmm12
    df71:	c4 41 79 7f 61 10    	vmovdqa XMMWORD PTR [r9+0x10],xmm12
    df77:	c4 41 79 7f 61 20    	vmovdqa XMMWORD PTR [r9+0x20],xmm12
    df7d:	c4 41 79 7f 61 30    	vmovdqa XMMWORD PTR [r9+0x30],xmm12
    df83:	c4 c1 39 71 f0 03    	vpsllw xmm8,xmm8,0x3
    df89:	c5 39 f9 c7          	vpsubw xmm8,xmm8,xmm7
    df8d:	c5 29 f9 d7          	vpsubw xmm10,xmm10,xmm7
    df91:	c4 42 79 1d c0       	vpabsw xmm8,xmm8
    df96:	c4 42 79 1d d2       	vpabsw xmm10,xmm10
    df9b:	c4 41 39 fd c3       	vpaddw xmm8,xmm8,xmm11
    dfa0:	c4 41 21 fd da       	vpaddw xmm11,xmm11,xmm10
    dfa5:	c5 c1 61 fa          	vpunpcklwd xmm7,xmm7,xmm2
    dfa9:	c5 c9 61 f5          	vpunpcklwd xmm6,xmm6,xmm5
    dfad:	c5 f9 61 c4          	vpunpcklwd xmm0,xmm0,xmm4
    dfb1:	c5 f1 61 cb          	vpunpcklwd xmm1,xmm1,xmm3
    dfb5:	c5 c1 62 fe          	vpunpckldq xmm7,xmm7,xmm6
    dfb9:	c5 f9 62 c1          	vpunpckldq xmm0,xmm0,xmm1
    dfbd:	c5 c1 6c f8          	vpunpcklqdq xmm7,xmm7,xmm0
    dfc1:	c4 c1 31 71 f1 03    	vpsllw xmm9,xmm9,0x3
    dfc7:	c4 c1 29 73 db 02    	vpsrldq xmm10,xmm11,0x2
    dfcd:	c4 c1 41 f9 f9       	vpsubw xmm7,xmm7,xmm9
    dfd2:	c4 e2 79 1d ff       	vpabsw xmm7,xmm7
    dfd7:	c5 29 fd d7          	vpaddw xmm10,xmm10,xmm7
    dfdb:	c4 42 29 02 d0       	vphaddd xmm10,xmm10,xmm8
    dfe0:	c4 c1 21 71 d3 01    	vpsrlw xmm11,xmm11,0x1
    dfe6:	c4 c1 29 71 d2 01    	vpsrlw xmm10,xmm10,0x1
    dfec:	c5 fa 7e 6a 07       	vmovq  xmm5,QWORD PTR [rdx+0x7]
    dff1:	c4 e2 51 00 7f 80    	vpshufb xmm7,xmm5,XMMWORD PTR [rdi-0x80]
    dff7:	c4 e2 51 00 57 90    	vpshufb xmm2,xmm5,XMMWORD PTR [rdi-0x70]
    dffd:	c4 e2 51 00 77 a0    	vpshufb xmm6,xmm5,XMMWORD PTR [rdi-0x60]
    e003:	c4 e2 51 00 6f b0    	vpshufb xmm5,xmm5,XMMWORD PTR [rdi-0x50]
    e009:	c4 c1 79 7f 79 c0    	vmovdqa XMMWORD PTR [r9-0x40],xmm7
    e00f:	c4 c1 79 7f 51 d0    	vmovdqa XMMWORD PTR [r9-0x30],xmm2
    e015:	c4 c1 79 7f 71 e0    	vmovdqa XMMWORD PTR [r9-0x20],xmm6
    e01b:	c4 c1 79 7f 69 f0    	vmovdqa XMMWORD PTR [r9-0x10],xmm5
    e021:	c5 79 6f 42 10       	vmovdqa xmm8,XMMWORD PTR [rdx+0x10]
    e026:	c5 fa 6f 72 11       	vmovdqu xmm6,XMMWORD PTR [rdx+0x11]
    e02b:	c4 c1 69 73 f8 01    	vpslldq xmm2,xmm8,0x1
    e031:	c5 39 e0 ce          	vpavgb xmm9,xmm8,xmm6
    e035:	c5 e9 e0 ee          	vpavgb xmm5,xmm2,xmm6
    e039:	c5 c9 ef f2          	vpxor  xmm6,xmm6,xmm2
    e03d:	c5 c9 db 35 00 00 00 	vpand  xmm6,xmm6,XMMWORD PTR [rip+0x0]        # e045 <x264_8_intra_sa8d_x9_8x8_avx+0x3c5>
    e044:	00 
    e045:	c5 d1 d8 ee          	vpsubusb xmm5,xmm5,xmm6
    e049:	c5 39 e0 c5          	vpavgb xmm8,xmm8,xmm5
    e04d:	c4 e2 39 00 7f c0    	vpshufb xmm7,xmm8,XMMWORD PTR [rdi-0x40]
    e053:	c4 e2 39 00 57 d0    	vpshufb xmm2,xmm8,XMMWORD PTR [rdi-0x30]
    e059:	c4 e2 39 00 77 e0    	vpshufb xmm6,xmm8,XMMWORD PTR [rdi-0x20]
    e05f:	c4 e2 39 00 6f f0    	vpshufb xmm5,xmm8,XMMWORD PTR [rdi-0x10]
    e065:	49 83 c1 40          	add    r9,0x40
    e069:	e8 d2 01 00 00       	call   e240 <x264_8_intra_sa8d_x9_8x8_avx+0x5c0>
    e06e:	c4 62 21 02 df       	vphaddd xmm11,xmm11,xmm7
    e073:	c4 e2 31 00 3f       	vpshufb xmm7,xmm9,XMMWORD PTR [rdi]
    e078:	c4 e2 39 00 57 10    	vpshufb xmm2,xmm8,XMMWORD PTR [rdi+0x10]
    e07e:	c4 e2 31 00 77 20    	vpshufb xmm6,xmm9,XMMWORD PTR [rdi+0x20]
    e084:	c4 e2 39 00 6f 30    	vpshufb xmm5,xmm8,XMMWORD PTR [rdi+0x30]
    e08a:	49 81 c1 00 01 00 00 	add    r9,0x100
    e091:	e8 aa 01 00 00       	call   e240 <x264_8_intra_sa8d_x9_8x8_avx+0x5c0>
    e096:	c4 42 29 02 d3       	vphaddd xmm10,xmm10,xmm11
    e09b:	c5 79 6f e7          	vmovdqa xmm12,xmm7
    e09f:	c5 fa 6f 72 08       	vmovdqu xmm6,XMMWORD PTR [rdx+0x8]
    e0a4:	c5 7a 6f 42 07       	vmovdqu xmm8,XMMWORD PTR [rdx+0x7]
    e0a9:	c5 fa 6f 52 06       	vmovdqu xmm2,XMMWORD PTR [rdx+0x6]
    e0ae:	c5 39 e0 ce          	vpavgb xmm9,xmm8,xmm6
    e0b2:	c5 e9 e0 ee          	vpavgb xmm5,xmm2,xmm6
    e0b6:	c5 c9 ef f2          	vpxor  xmm6,xmm6,xmm2
    e0ba:	c5 c9 db 35 00 00 00 	vpand  xmm6,xmm6,XMMWORD PTR [rip+0x0]        # e0c2 <x264_8_intra_sa8d_x9_8x8_avx+0x442>
    e0c1:	00 
    e0c2:	c5 d1 d8 ee          	vpsubusb xmm5,xmm5,xmm6
    e0c6:	c5 39 e0 c5          	vpavgb xmm8,xmm8,xmm5
    e0ca:	c4 e2 39 00 7f 40    	vpshufb xmm7,xmm8,XMMWORD PTR [rdi+0x40]
    e0d0:	c4 e2 39 00 57 50    	vpshufb xmm2,xmm8,XMMWORD PTR [rdi+0x50]
    e0d6:	c4 e2 39 00 77 60    	vpshufb xmm6,xmm8,XMMWORD PTR [rdi+0x60]
    e0dc:	c4 e2 39 00 6f 70    	vpshufb xmm5,xmm8,XMMWORD PTR [rdi+0x70]
    e0e2:	49 81 e9 c0 00 00 00 	sub    r9,0xc0
    e0e9:	e8 52 01 00 00       	call   e240 <x264_8_intra_sa8d_x9_8x8_avx+0x5c0>
    e0ee:	c5 79 6f df          	vmovdqa xmm11,xmm7
    e0f2:	48 81 c7 00 01 00 00 	add    rdi,0x100
    e0f9:	c4 c1 33 10 f0       	vmovsd xmm6,xmm9,xmm8
    e0fe:	c4 e2 49 00 7f 80    	vpshufb xmm7,xmm6,XMMWORD PTR [rdi-0x80]
    e104:	c4 e2 39 00 57 90    	vpshufb xmm2,xmm8,XMMWORD PTR [rdi-0x70]
    e10a:	c4 e2 49 00 77 a0    	vpshufb xmm6,xmm6,XMMWORD PTR [rdi-0x60]
    e110:	c4 e2 39 00 6f b0    	vpshufb xmm5,xmm8,XMMWORD PTR [rdi-0x50]
    e116:	49 83 c1 40          	add    r9,0x40
    e11a:	e8 21 01 00 00       	call   e240 <x264_8_intra_sa8d_x9_8x8_avx+0x5c0>
    e11f:	c4 62 21 02 df       	vphaddd xmm11,xmm11,xmm7
    e124:	c4 c1 79 70 d1 01    	vpshufd xmm2,xmm9,0x1
    e12a:	c4 c3 69 0e d0 fc    	vpblendw xmm2,xmm2,xmm8,0xfc
    e130:	c4 41 39 60 c1       	vpunpcklbw xmm8,xmm8,xmm9
    e135:	c4 e2 69 00 7f c0    	vpshufb xmm7,xmm2,XMMWORD PTR [rdi-0x40]
    e13b:	c4 e2 69 00 57 d0    	vpshufb xmm2,xmm2,XMMWORD PTR [rdi-0x30]
    e141:	c4 e2 39 00 77 e0    	vpshufb xmm6,xmm8,XMMWORD PTR [rdi-0x20]
    e147:	c4 e2 39 00 6f f0    	vpshufb xmm5,xmm8,XMMWORD PTR [rdi-0x10]
    e14d:	49 83 c1 40          	add    r9,0x40
    e151:	e8 ea 00 00 00       	call   e240 <x264_8_intra_sa8d_x9_8x8_avx+0x5c0>
    e156:	c4 c2 41 02 fc       	vphaddd xmm7,xmm7,xmm12
    e15b:	c4 62 21 02 df       	vphaddd xmm11,xmm11,xmm7
    e160:	c4 63 39 20 42 07 0f 	vpinsrb xmm8,xmm8,BYTE PTR [rdx+0x7],0xf
    e167:	c4 e2 39 00 3f       	vpshufb xmm7,xmm8,XMMWORD PTR [rdi]
    e16c:	c4 e2 39 00 57 10    	vpshufb xmm2,xmm8,XMMWORD PTR [rdi+0x10]
    e172:	c4 e2 39 00 77 20    	vpshufb xmm6,xmm8,XMMWORD PTR [rdi+0x20]
    e178:	c4 e2 39 00 6f 30    	vpshufb xmm5,xmm8,XMMWORD PTR [rdi+0x30]
    e17e:	49 83 e9 80          	sub    r9,0xffffffffffffff80
    e182:	e8 b9 00 00 00       	call   e240 <x264_8_intra_sa8d_x9_8x8_avx+0x5c0>
    e187:	c5 c1 f5 3d 00 00 00 	vpmaddwd xmm7,xmm7,XMMWORD PTR [rip+0x0]        # e18f <x264_8_intra_sa8d_x9_8x8_avx+0x50f>
    e18e:	00 
    e18f:	c4 42 29 01 d3       	vphaddw xmm10,xmm10,xmm11
    e194:	c5 c1 6d d7          	vpunpckhqdq xmm2,xmm7,xmm7
    e198:	c5 c1 fd fa          	vpaddw xmm7,xmm7,xmm2
    e19c:	c5 fb 70 d7 0e       	vpshuflw xmm2,xmm7,0xe
    e1a1:	c5 c1 e3 fa          	vpavgw xmm7,xmm7,xmm2
    e1a5:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    e1a9:	c5 29 e3 d6          	vpavgw xmm10,xmm10,xmm6
    e1ad:	c5 f9 7e fa          	vmovd  edx,xmm7
    e1b1:	c5 fa 6f 39          	vmovdqu xmm7,XMMWORD PTR [rcx]
    e1b5:	c5 a9 fd ff          	vpaddw xmm7,xmm10,xmm7
    e1b9:	c4 c1 79 7f 38       	vmovdqa XMMWORD PTR [r8],xmm7
    e1be:	44 0f b7 49 10       	movzx  r9d,WORD PTR [rcx+0x10]
    e1c3:	44 01 ca             	add    edx,r9d
    e1c6:	66 41 89 50 10       	mov    WORD PTR [r8+0x10],dx
    e1cb:	c4 e2 79 41 ff       	vphminposuw xmm7,xmm7
    e1d0:	c5 f9 7e f8          	vmovd  eax,xmm7
    e1d4:	81 c2 00 00 08 00    	add    edx,0x80000
    e1da:	66 39 d0             	cmp    ax,dx
    e1dd:	0f 4f c2             	cmovg  eax,edx
    e1e0:	89 c2                	mov    edx,eax
    e1e2:	c1 ea 10             	shr    edx,0x10
    e1e5:	c1 e2 06             	shl    edx,0x6
    e1e8:	48 83 ee 80          	sub    rsi,0xffffffffffffff80
    e1ec:	c5 f9 6f bc 14 80 00 	vmovdqa xmm7,XMMWORD PTR [rsp+rdx*1+0x80]
    e1f3:	00 00 
    e1f5:	c5 f9 6f 94 14 90 00 	vmovdqa xmm2,XMMWORD PTR [rsp+rdx*1+0x90]
    e1fc:	00 00 
    e1fe:	c5 f9 6f b4 14 a0 00 	vmovdqa xmm6,XMMWORD PTR [rsp+rdx*1+0xa0]
    e205:	00 00 
    e207:	c5 f9 6f ac 14 b0 00 	vmovdqa xmm5,XMMWORD PTR [rsp+rdx*1+0xb0]
    e20e:	00 00 
    e210:	c5 f9 d6 7e 80       	vmovq  QWORD PTR [rsi-0x80],xmm7
    e215:	c5 f8 17 7e c0       	vmovhps QWORD PTR [rsi-0x40],xmm7
    e21a:	c5 f9 d6 56 a0       	vmovq  QWORD PTR [rsi-0x60],xmm2
    e21f:	c5 f8 17 56 e0       	vmovhps QWORD PTR [rsi-0x20],xmm2
    e224:	c5 f9 d6 36          	vmovq  QWORD PTR [rsi],xmm6
    e228:	c5 f8 17 76 40       	vmovhps QWORD PTR [rsi+0x40],xmm6
    e22d:	c5 f9 d6 6e 20       	vmovq  QWORD PTR [rsi+0x20],xmm5
    e232:	c5 f8 17 6e 60       	vmovhps QWORD PTR [rsi+0x60],xmm5
    e237:	48 81 c4 c8 02 00 00 	add    rsp,0x2c8
    e23e:	c3                   	ret    
    e23f:	90                   	nop
    e240:	c4 c1 79 7f 39       	vmovdqa XMMWORD PTR [r9],xmm7
    e245:	c4 c1 79 7f 51 10    	vmovdqa XMMWORD PTR [r9+0x10],xmm2
    e24b:	c4 c1 79 7f 71 20    	vmovdqa XMMWORD PTR [r9+0x20],xmm6
    e251:	c4 c1 79 7f 69 30    	vmovdqa XMMWORD PTR [r9+0x30],xmm5
    e257:	c5 fb 12 c7          	vmovddup xmm0,xmm7
    e25b:	c5 fb 12 e2          	vmovddup xmm4,xmm2
    e25f:	c5 fb 12 ce          	vmovddup xmm1,xmm6
    e263:	c5 fb 12 dd          	vmovddup xmm3,xmm5
    e267:	c5 c1 6d ff          	vpunpckhqdq xmm7,xmm7,xmm7
    e26b:	c5 e9 6d d2          	vpunpckhqdq xmm2,xmm2,xmm2
    e26f:	c5 c9 6d f6          	vpunpckhqdq xmm6,xmm6,xmm6
    e273:	c5 d1 6d ed          	vpunpckhqdq xmm5,xmm5,xmm5
    e277:	c4 c2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm15
    e27c:	c4 c2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm15
    e281:	c5 f9 f9 44 24 08    	vpsubw xmm0,xmm0,XMMWORD PTR [rsp+0x8]
    e287:	c5 d9 f9 64 24 18    	vpsubw xmm4,xmm4,XMMWORD PTR [rsp+0x18]
    e28d:	c4 c2 41 04 ff       	vpmaddubsw xmm7,xmm7,xmm15
    e292:	c4 c2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm15
    e297:	c5 c1 f9 7c 24 28    	vpsubw xmm7,xmm7,XMMWORD PTR [rsp+0x28]
    e29d:	c5 e9 f9 54 24 38    	vpsubw xmm2,xmm2,XMMWORD PTR [rsp+0x38]
    e2a3:	c4 c2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm15
    e2a8:	c4 c2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm15
    e2ad:	c5 f1 f9 4c 24 48    	vpsubw xmm1,xmm1,XMMWORD PTR [rsp+0x48]
    e2b3:	c5 e1 f9 5c 24 58    	vpsubw xmm3,xmm3,XMMWORD PTR [rsp+0x58]
    e2b9:	c4 c2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm15
    e2be:	c4 c2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm15
    e2c3:	c5 c9 f9 74 24 68    	vpsubw xmm6,xmm6,XMMWORD PTR [rsp+0x68]
    e2c9:	c5 d1 f9 6c 24 78    	vpsubw xmm5,xmm5,XMMWORD PTR [rsp+0x78]
    e2cf:	c5 79 fd ec          	vpaddw xmm13,xmm0,xmm4
    e2d3:	c5 d9 f9 e0          	vpsubw xmm4,xmm4,xmm0
    e2d7:	c5 c1 fd c2          	vpaddw xmm0,xmm7,xmm2
    e2db:	c5 e9 f9 d7          	vpsubw xmm2,xmm2,xmm7
    e2df:	c5 91 fd f8          	vpaddw xmm7,xmm13,xmm0
    e2e3:	c4 c1 79 f9 c5       	vpsubw xmm0,xmm0,xmm13
    e2e8:	c5 59 fd ea          	vpaddw xmm13,xmm4,xmm2
    e2ec:	c5 e9 f9 d4          	vpsubw xmm2,xmm2,xmm4
    e2f0:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    e2f4:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    e2f8:	c5 c9 fd cd          	vpaddw xmm1,xmm6,xmm5
    e2fc:	c5 d1 f9 ee          	vpsubw xmm5,xmm5,xmm6
    e300:	c5 d9 fd f1          	vpaddw xmm6,xmm4,xmm1
    e304:	c5 f1 f9 cc          	vpsubw xmm1,xmm1,xmm4
    e308:	c5 e1 fd e5          	vpaddw xmm4,xmm3,xmm5
    e30c:	c5 d1 f9 eb          	vpsubw xmm5,xmm5,xmm3
    e310:	c5 c1 fd de          	vpaddw xmm3,xmm7,xmm6
    e314:	c5 c9 f9 f7          	vpsubw xmm6,xmm6,xmm7
    e318:	c5 91 fd fc          	vpaddw xmm7,xmm13,xmm4
    e31c:	c4 c1 59 f9 e5       	vpsubw xmm4,xmm4,xmm13
    e321:	c5 60 c6 ee dd       	vshufps xmm13,xmm3,xmm6,0xdd
    e326:	c5 e0 c6 de 88       	vshufps xmm3,xmm3,xmm6,0x88
    e32b:	c5 91 fd f3          	vpaddw xmm6,xmm13,xmm3
    e32f:	c5 11 f9 eb          	vpsubw xmm13,xmm13,xmm3
    e333:	c5 c0 c6 dc dd       	vshufps xmm3,xmm7,xmm4,0xdd
    e338:	c5 c0 c6 fc 88       	vshufps xmm7,xmm7,xmm4,0x88
    e33d:	c5 c1 fd e3          	vpaddw xmm4,xmm7,xmm3
    e341:	c5 e1 f9 df          	vpsubw xmm3,xmm3,xmm7
    e345:	c5 f9 fd f9          	vpaddw xmm7,xmm0,xmm1
    e349:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    e34d:	c5 e9 fd c5          	vpaddw xmm0,xmm2,xmm5
    e351:	c5 d1 f9 ea          	vpsubw xmm5,xmm5,xmm2
    e355:	c5 c0 c6 d1 dd       	vshufps xmm2,xmm7,xmm1,0xdd
    e35a:	c5 c0 c6 f9 88       	vshufps xmm7,xmm7,xmm1,0x88
    e35f:	c5 c1 fd ca          	vpaddw xmm1,xmm7,xmm2
    e363:	c5 e9 f9 d7          	vpsubw xmm2,xmm2,xmm7
    e367:	c5 f8 c6 fd dd       	vshufps xmm7,xmm0,xmm5,0xdd
    e36c:	c5 f8 c6 c5 88       	vshufps xmm0,xmm0,xmm5,0x88
    e371:	c5 f9 fd ef          	vpaddw xmm5,xmm0,xmm7
    e375:	c5 c1 f9 f8          	vpsubw xmm7,xmm7,xmm0
    e379:	c4 c3 49 0e c5 aa    	vpblendw xmm0,xmm6,xmm13,0xaa
    e37f:	c4 c1 11 72 f5 10    	vpslld xmm13,xmm13,0x10
    e385:	c5 c9 72 d6 10       	vpsrld xmm6,xmm6,0x10
    e38a:	c5 11 eb ee          	vpor   xmm13,xmm13,xmm6
    e38e:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    e393:	c4 42 79 1d ed       	vpabsw xmm13,xmm13
    e398:	c5 91 ee c0          	vpmaxsw xmm0,xmm13,xmm0
    e39c:	c4 e3 59 0e f3 aa    	vpblendw xmm6,xmm4,xmm3,0xaa
    e3a2:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
    e3a7:	c5 d9 72 d4 10       	vpsrld xmm4,xmm4,0x10
    e3ac:	c5 e1 eb dc          	vpor   xmm3,xmm3,xmm4
    e3b0:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    e3b5:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    e3ba:	c5 c9 ee f3          	vpmaxsw xmm6,xmm6,xmm3
    e3be:	c4 e3 71 0e e2 aa    	vpblendw xmm4,xmm1,xmm2,0xaa
    e3c4:	c5 e9 72 f2 10       	vpslld xmm2,xmm2,0x10
    e3c9:	c5 f1 72 d1 10       	vpsrld xmm1,xmm1,0x10
    e3ce:	c5 e9 eb d1          	vpor   xmm2,xmm2,xmm1
    e3d2:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    e3d7:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    e3dc:	c5 d9 ee e2          	vpmaxsw xmm4,xmm4,xmm2
    e3e0:	c4 e3 51 0e cf aa    	vpblendw xmm1,xmm5,xmm7,0xaa
    e3e6:	c5 c1 72 f7 10       	vpslld xmm7,xmm7,0x10
    e3eb:	c5 d1 72 d5 10       	vpsrld xmm5,xmm5,0x10
    e3f0:	c5 c1 eb fd          	vpor   xmm7,xmm7,xmm5
    e3f4:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
    e3f9:	c4 e2 79 1d ff       	vpabsw xmm7,xmm7
    e3fe:	c5 f1 ee cf          	vpmaxsw xmm1,xmm1,xmm7
    e402:	c5 f9 fd c6          	vpaddw xmm0,xmm0,xmm6
    e406:	c5 f9 fd c4          	vpaddw xmm0,xmm0,xmm4
    e40a:	c5 f9 fd f9          	vpaddw xmm7,xmm0,xmm1
    e40e:	c3                   	ret    
    e40f:	90                   	nop

000000000000e410 <x264_8_hadamard_ac_8x8_avx>:
    e410:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # e418 <x264_8_hadamard_ac_8x8_avx+0x8>
    e417:	00 
    e418:	c5 fb 12 04 17       	vmovddup xmm0,QWORD PTR [rdi+rdx*1]
    e41d:	c5 fb 12 0c 37       	vmovddup xmm1,QWORD PTR [rdi+rsi*1]
    e422:	c5 fb 12 14 77       	vmovddup xmm2,QWORD PTR [rdi+rsi*2]
    e427:	c5 fb 12 1f          	vmovddup xmm3,QWORD PTR [rdi]
    e42b:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    e42f:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    e434:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    e439:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    e43e:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    e443:	c5 f9 fd e1          	vpaddw xmm4,xmm0,xmm1
    e447:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    e44b:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    e44f:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    e453:	c5 d9 fd d0          	vpaddw xmm2,xmm4,xmm0
    e457:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    e45b:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    e45f:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    e463:	c5 79 6f c4          	vmovdqa xmm8,xmm4
    e467:	c5 fb 12 0c 17       	vmovddup xmm1,QWORD PTR [rdi+rdx*1]
    e46c:	c5 fb 12 2c 37       	vmovddup xmm5,QWORD PTR [rdi+rsi*1]
    e471:	c5 fb 12 34 77       	vmovddup xmm6,QWORD PTR [rdi+rsi*2]
    e476:	c5 fb 12 27          	vmovddup xmm4,QWORD PTR [rdi]
    e47a:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    e47f:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    e484:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    e489:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    e48e:	c5 f1 fd fd          	vpaddw xmm7,xmm1,xmm5
    e492:	c5 d1 f9 e9          	vpsubw xmm5,xmm5,xmm1
    e496:	c5 c9 fd cc          	vpaddw xmm1,xmm6,xmm4
    e49a:	c5 d9 f9 e6          	vpsubw xmm4,xmm4,xmm6
    e49e:	c5 c1 fd f1          	vpaddw xmm6,xmm7,xmm1
    e4a2:	c5 f1 f9 cf          	vpsubw xmm1,xmm1,xmm7
    e4a6:	c5 d1 fd fc          	vpaddw xmm7,xmm5,xmm4
    e4aa:	c5 d9 f9 e5          	vpsubw xmm4,xmm4,xmm5
    e4ae:	c4 c1 79 6f e8       	vmovdqa xmm5,xmm8
    e4b3:	c5 79 6f c1          	vmovdqa xmm8,xmm1
    e4b7:	c5 79 6f cc          	vmovdqa xmm9,xmm4
    e4bb:	c5 f1 72 d2 10       	vpsrld xmm1,xmm2,0x10
    e4c0:	c4 e3 71 0e cd aa    	vpblendw xmm1,xmm1,xmm5,0xaa
    e4c6:	c5 d1 72 f5 10       	vpslld xmm5,xmm5,0x10
    e4cb:	c4 e3 51 0e ea 55    	vpblendw xmm5,xmm5,xmm2,0x55
    e4d1:	c5 f1 fd d5          	vpaddw xmm2,xmm1,xmm5
    e4d5:	c5 d1 f9 e9          	vpsubw xmm5,xmm5,xmm1
    e4d9:	c5 f1 72 d0 10       	vpsrld xmm1,xmm0,0x10
    e4de:	c4 e3 71 0e cb aa    	vpblendw xmm1,xmm1,xmm3,0xaa
    e4e4:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
    e4e9:	c4 e3 61 0e d8 55    	vpblendw xmm3,xmm3,xmm0,0x55
    e4ef:	c5 f1 fd c3          	vpaddw xmm0,xmm1,xmm3
    e4f3:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    e4f7:	c4 c1 79 6f c8       	vmovdqa xmm1,xmm8
    e4fc:	c4 c1 79 6f e1       	vmovdqa xmm4,xmm9
    e501:	c5 79 6f c5          	vmovdqa xmm8,xmm5
    e505:	c5 79 6f ca          	vmovdqa xmm9,xmm2
    e509:	c5 d1 72 d6 10       	vpsrld xmm5,xmm6,0x10
    e50e:	c4 e3 51 0e ef aa    	vpblendw xmm5,xmm5,xmm7,0xaa
    e514:	c5 c1 72 f7 10       	vpslld xmm7,xmm7,0x10
    e519:	c4 e3 41 0e fe 55    	vpblendw xmm7,xmm7,xmm6,0x55
    e51f:	c5 d1 fd f7          	vpaddw xmm6,xmm5,xmm7
    e523:	c5 c1 f9 fd          	vpsubw xmm7,xmm7,xmm5
    e527:	c5 d1 72 d1 10       	vpsrld xmm5,xmm1,0x10
    e52c:	c4 e3 51 0e ec aa    	vpblendw xmm5,xmm5,xmm4,0xaa
    e532:	c5 d9 72 f4 10       	vpslld xmm4,xmm4,0x10
    e537:	c4 e3 59 0e e1 55    	vpblendw xmm4,xmm4,xmm1,0x55
    e53d:	c5 d1 fd cc          	vpaddw xmm1,xmm5,xmm4
    e541:	c5 d9 f9 e5          	vpsubw xmm4,xmm4,xmm5
    e545:	c4 c1 79 6f d1       	vmovdqa xmm2,xmm9
    e54a:	c5 79 6f c8          	vmovdqa xmm9,xmm0
    e54e:	c5 79 6f d3          	vmovdqa xmm10,xmm3
    e552:	c4 e2 79 1d ea       	vpabsw xmm5,xmm2
    e557:	c4 e2 79 1d c6       	vpabsw xmm0,xmm6
    e55c:	c4 e2 79 1d df       	vpabsw xmm3,xmm7
    e561:	c5 d1 fd e8          	vpaddw xmm5,xmm5,xmm0
    e565:	c5 e9 fd d6          	vpaddw xmm2,xmm2,xmm6
    e569:	c5 c9 fd f6          	vpaddw xmm6,xmm6,xmm6
    e56d:	c5 c9 f9 f2          	vpsubw xmm6,xmm6,xmm2
    e571:	c5 d1 db 2d 00 00 00 	vpand  xmm5,xmm5,XMMWORD PTR [rip+0x0]        # e579 <x264_8_hadamard_ac_8x8_avx+0x169>
    e578:	00 
    e579:	c4 c2 79 1d c0       	vpabsw xmm0,xmm8
    e57e:	c5 d1 fd eb          	vpaddw xmm5,xmm5,xmm3
    e582:	c4 c2 79 1d d9       	vpabsw xmm3,xmm9
    e587:	c5 d1 fd e8          	vpaddw xmm5,xmm5,xmm0
    e58b:	c4 c2 79 1d c2       	vpabsw xmm0,xmm10
    e590:	c5 d1 fd eb          	vpaddw xmm5,xmm5,xmm3
    e594:	c4 e2 79 1d d9       	vpabsw xmm3,xmm1
    e599:	c5 d1 fd e8          	vpaddw xmm5,xmm5,xmm0
    e59d:	c4 e2 79 1d c4       	vpabsw xmm0,xmm4
    e5a2:	c5 d1 fd eb          	vpaddw xmm5,xmm5,xmm3
    e5a6:	c5 d1 fd e8          	vpaddw xmm5,xmm5,xmm0
    e5aa:	c5 a9 fd dc          	vpaddw xmm3,xmm10,xmm4
    e5ae:	c4 c1 59 f9 e2       	vpsubw xmm4,xmm4,xmm10
    e5b3:	c5 f9 7f 6c 24 28    	vmovdqa XMMWORD PTR [rsp+0x28],xmm5
    e5b9:	c5 b1 fd c1          	vpaddw xmm0,xmm9,xmm1
    e5bd:	c4 c1 71 f9 c9       	vpsubw xmm1,xmm1,xmm9
    e5c2:	c5 b9 fd ef          	vpaddw xmm5,xmm8,xmm7
    e5c6:	c4 c1 41 f9 f8       	vpsubw xmm7,xmm7,xmm8
    e5cb:	c5 79 6f ce          	vmovdqa xmm9,xmm6
    e5cf:	c5 e0 c6 f4 dd       	vshufps xmm6,xmm3,xmm4,0xdd
    e5d4:	c5 e0 c6 dc 88       	vshufps xmm3,xmm3,xmm4,0x88
    e5d9:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    e5de:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    e5e3:	c5 e1 ee de          	vpmaxsw xmm3,xmm3,xmm6
    e5e7:	c5 f8 c6 f1 dd       	vshufps xmm6,xmm0,xmm1,0xdd
    e5ec:	c5 f8 c6 c1 88       	vshufps xmm0,xmm0,xmm1,0x88
    e5f1:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    e5f6:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    e5fb:	c5 f9 ee c6          	vpmaxsw xmm0,xmm0,xmm6
    e5ff:	c4 c1 79 6f e1       	vmovdqa xmm4,xmm9
    e604:	c5 d0 c6 f7 dd       	vshufps xmm6,xmm5,xmm7,0xdd
    e609:	c5 d0 c6 ef 88       	vshufps xmm5,xmm5,xmm7,0x88
    e60e:	c4 e2 79 1d ed       	vpabsw xmm5,xmm5
    e613:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    e618:	c5 d1 ee ee          	vpmaxsw xmm5,xmm5,xmm6
    e61c:	c5 e8 c6 f4 dd       	vshufps xmm6,xmm2,xmm4,0xdd
    e621:	c5 e8 c6 d4 88       	vshufps xmm2,xmm2,xmm4,0x88
    e626:	c5 e9 fd e6          	vpaddw xmm4,xmm2,xmm6
    e62a:	c5 c9 f9 f2          	vpsubw xmm6,xmm6,xmm2
    e62e:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    e632:	c5 f9 fd c5          	vpaddw xmm0,xmm0,xmm5
    e636:	c5 f9 fd c0          	vpaddw xmm0,xmm0,xmm0
    e63a:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    e63f:	c5 d9 db 25 00 00 00 	vpand  xmm4,xmm4,XMMWORD PTR [rip+0x0]        # e647 <x264_8_hadamard_ac_8x8_avx+0x237>
    e646:	00 
    e647:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    e64c:	c5 f9 fd c6          	vpaddw xmm0,xmm0,xmm6
    e650:	c5 f9 fd c4          	vpaddw xmm0,xmm0,xmm4
    e654:	c5 f9 7f 44 24 18    	vmovdqa XMMWORD PTR [rsp+0x18],xmm0
    e65a:	c3                   	ret    
    e65b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000e660 <x264_8_pixel_hadamard_ac_16x16_avx>:
    e660:	48 89 e1             	mov    rcx,rsp
    e663:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    e667:	48 83 ec 30          	sub    rsp,0x30
    e66b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    e66f:	e8 9c fd ff ff       	call   e410 <x264_8_hadamard_ac_8x8_avx>
    e674:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    e678:	48 83 ec 20          	sub    rsp,0x20
    e67c:	e8 8f fd ff ff       	call   e410 <x264_8_hadamard_ac_8x8_avx>
    e681:	48 f7 da             	neg    rdx
    e684:	48 83 ec 20          	sub    rsp,0x20
    e688:	48 8d 7c 97 08       	lea    rdi,[rdi+rdx*4+0x8]
    e68d:	48 f7 da             	neg    rdx
    e690:	e8 7b fd ff ff       	call   e410 <x264_8_hadamard_ac_8x8_avx>
    e695:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    e699:	48 83 ec 20          	sub    rsp,0x20
    e69d:	e8 6e fd ff ff       	call   e410 <x264_8_hadamard_ac_8x8_avx>
    e6a2:	c5 f9 6f 6c 24 20    	vmovdqa xmm5,XMMWORD PTR [rsp+0x20]
    e6a8:	c5 f9 dd 44 24 30    	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x30]
    e6ae:	c5 d1 dd 6c 24 40    	vpaddusw xmm5,xmm5,XMMWORD PTR [rsp+0x40]
    e6b4:	c5 f9 dd 44 24 50    	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x50]
    e6ba:	c5 d1 dd 6c 24 60    	vpaddusw xmm5,xmm5,XMMWORD PTR [rsp+0x60]
    e6c0:	c5 f9 dd 44 24 70    	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x70]
    e6c6:	c5 d1 dd ac 24 80 00 	vpaddusw xmm5,xmm5,XMMWORD PTR [rsp+0x80]
    e6cd:	00 00 
    e6cf:	c5 f9 71 d0 01       	vpsrlw xmm0,xmm0,0x1
    e6d4:	c5 d9 72 d0 10       	vpsrld xmm4,xmm0,0x10
    e6d9:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    e6de:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
    e6e3:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e6e7:	c5 f9 6d e0          	vpunpckhqdq xmm4,xmm0,xmm0
    e6eb:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e6ef:	c5 fb 70 e0 4e       	vpshuflw xmm4,xmm0,0x4e
    e6f4:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e6f8:	c5 d1 f5 2d 00 00 00 	vpmaddwd xmm5,xmm5,XMMWORD PTR [rip+0x0]        # e700 <x264_8_pixel_hadamard_ac_16x16_avx+0xa0>
    e6ff:	00 
    e700:	c5 d1 6d dd          	vpunpckhqdq xmm3,xmm5,xmm5
    e704:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
    e708:	c5 fb 70 dd 4e       	vpshuflw xmm3,xmm5,0x4e
    e70d:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
    e711:	c5 f9 7e c2          	vmovd  edx,xmm0
    e715:	c5 f9 7e e8          	vmovd  eax,xmm5
    e719:	d1 ea                	shr    edx,1
    e71b:	d1 e8                	shr    eax,1
    e71d:	48 c1 e2 20          	shl    rdx,0x20
    e721:	48 01 d0             	add    rax,rdx
    e724:	48 89 cc             	mov    rsp,rcx
    e727:	c3                   	ret    
    e728:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    e72f:	00 

000000000000e730 <x264_8_pixel_hadamard_ac_16x8_avx>:
    e730:	48 89 e1             	mov    rcx,rsp
    e733:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    e737:	48 83 ec 30          	sub    rsp,0x30
    e73b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    e73f:	e8 cc fc ff ff       	call   e410 <x264_8_hadamard_ac_8x8_avx>
    e744:	48 f7 de             	neg    rsi
    e747:	48 83 ec 20          	sub    rsp,0x20
    e74b:	48 8d 7c b7 08       	lea    rdi,[rdi+rsi*4+0x8]
    e750:	48 f7 de             	neg    rsi
    e753:	e8 b8 fc ff ff       	call   e410 <x264_8_hadamard_ac_8x8_avx>
    e758:	c5 f9 6f 6c 24 20    	vmovdqa xmm5,XMMWORD PTR [rsp+0x20]
    e75e:	c5 f9 dd 44 24 30    	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x30]
    e764:	c5 d1 dd 6c 24 40    	vpaddusw xmm5,xmm5,XMMWORD PTR [rsp+0x40]
    e76a:	c5 d9 72 d0 10       	vpsrld xmm4,xmm0,0x10
    e76f:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    e774:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
    e779:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e77d:	c5 f9 6d e0          	vpunpckhqdq xmm4,xmm0,xmm0
    e781:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e785:	c5 fb 70 e0 4e       	vpshuflw xmm4,xmm0,0x4e
    e78a:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e78e:	c5 d1 f5 2d 00 00 00 	vpmaddwd xmm5,xmm5,XMMWORD PTR [rip+0x0]        # e796 <x264_8_pixel_hadamard_ac_16x8_avx+0x66>
    e795:	00 
    e796:	c5 d1 6d dd          	vpunpckhqdq xmm3,xmm5,xmm5
    e79a:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
    e79e:	c5 fb 70 dd 4e       	vpshuflw xmm3,xmm5,0x4e
    e7a3:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
    e7a7:	c5 f9 7e c2          	vmovd  edx,xmm0
    e7ab:	c5 f9 7e e8          	vmovd  eax,xmm5
    e7af:	c1 ea 02             	shr    edx,0x2
    e7b2:	d1 e8                	shr    eax,1
    e7b4:	48 c1 e2 20          	shl    rdx,0x20
    e7b8:	48 01 d0             	add    rax,rdx
    e7bb:	48 89 cc             	mov    rsp,rcx
    e7be:	c3                   	ret    
    e7bf:	90                   	nop

000000000000e7c0 <x264_8_pixel_hadamard_ac_8x16_avx>:
    e7c0:	48 89 e1             	mov    rcx,rsp
    e7c3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    e7c7:	48 83 ec 30          	sub    rsp,0x30
    e7cb:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    e7cf:	e8 3c fc ff ff       	call   e410 <x264_8_hadamard_ac_8x8_avx>
    e7d4:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    e7d8:	48 83 ec 20          	sub    rsp,0x20
    e7dc:	e8 2f fc ff ff       	call   e410 <x264_8_hadamard_ac_8x8_avx>
    e7e1:	c5 f9 6f 6c 24 20    	vmovdqa xmm5,XMMWORD PTR [rsp+0x20]
    e7e7:	c5 f9 dd 44 24 30    	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x30]
    e7ed:	c5 d1 dd 6c 24 40    	vpaddusw xmm5,xmm5,XMMWORD PTR [rsp+0x40]
    e7f3:	c5 d9 72 d0 10       	vpsrld xmm4,xmm0,0x10
    e7f8:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    e7fd:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
    e802:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e806:	c5 f9 6d e0          	vpunpckhqdq xmm4,xmm0,xmm0
    e80a:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e80e:	c5 fb 70 e0 4e       	vpshuflw xmm4,xmm0,0x4e
    e813:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e817:	c5 d1 f5 2d 00 00 00 	vpmaddwd xmm5,xmm5,XMMWORD PTR [rip+0x0]        # e81f <x264_8_pixel_hadamard_ac_8x16_avx+0x5f>
    e81e:	00 
    e81f:	c5 d1 6d dd          	vpunpckhqdq xmm3,xmm5,xmm5
    e823:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
    e827:	c5 fb 70 dd 4e       	vpshuflw xmm3,xmm5,0x4e
    e82c:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
    e830:	c5 f9 7e c2          	vmovd  edx,xmm0
    e834:	c5 f9 7e e8          	vmovd  eax,xmm5
    e838:	c1 ea 02             	shr    edx,0x2
    e83b:	d1 e8                	shr    eax,1
    e83d:	48 c1 e2 20          	shl    rdx,0x20
    e841:	48 01 d0             	add    rax,rdx
    e844:	48 89 cc             	mov    rsp,rcx
    e847:	c3                   	ret    
    e848:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    e84f:	00 

000000000000e850 <x264_8_pixel_hadamard_ac_8x8_avx>:
    e850:	48 89 e1             	mov    rcx,rsp
    e853:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    e857:	48 83 ec 30          	sub    rsp,0x30
    e85b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    e85f:	e8 ac fb ff ff       	call   e410 <x264_8_hadamard_ac_8x8_avx>
    e864:	c5 f9 6f 6c 24 20    	vmovdqa xmm5,XMMWORD PTR [rsp+0x20]
    e86a:	c5 d9 72 d0 10       	vpsrld xmm4,xmm0,0x10
    e86f:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
    e874:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
    e879:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e87d:	c5 f9 6d e0          	vpunpckhqdq xmm4,xmm0,xmm0
    e881:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e885:	c5 fb 70 e0 4e       	vpshuflw xmm4,xmm0,0x4e
    e88a:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
    e88e:	c5 d1 f5 2d 00 00 00 	vpmaddwd xmm5,xmm5,XMMWORD PTR [rip+0x0]        # e896 <x264_8_pixel_hadamard_ac_8x8_avx+0x46>
    e895:	00 
    e896:	c5 d1 6d dd          	vpunpckhqdq xmm3,xmm5,xmm5
    e89a:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
    e89e:	c5 fb 70 dd 4e       	vpshuflw xmm3,xmm5,0x4e
    e8a3:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
    e8a7:	c5 f9 7e c2          	vmovd  edx,xmm0
    e8ab:	c5 f9 7e e8          	vmovd  eax,xmm5
    e8af:	c1 ea 02             	shr    edx,0x2
    e8b2:	d1 e8                	shr    eax,1
    e8b4:	48 c1 e2 20          	shl    rdx,0x20
    e8b8:	48 01 d0             	add    rax,rdx
    e8bb:	48 89 cc             	mov    rsp,rcx
    e8be:	c3                   	ret    
    e8bf:	90                   	nop

000000000000e8c0 <x264_8_pixel_satd_4x4_xop>:
    e8c0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    e8c4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    e8c8:	c5 f9 6f 25 00 00 00 	vmovdqa xmm4,XMMWORD PTR [rip+0x0]        # e8d0 <x264_8_pixel_satd_4x4_xop+0x10>
    e8cf:	00 
    e8d0:	c5 f9 6e 12          	vmovd  xmm2,DWORD PTR [rdx]
    e8d4:	c5 f9 6e 2c 0a       	vmovd  xmm5,DWORD PTR [rdx+rcx*1]
    e8d9:	c5 e8 c6 d5 00       	vshufps xmm2,xmm2,xmm5,0x0
    e8de:	c5 f9 6e 1c 4a       	vmovd  xmm3,DWORD PTR [rdx+rcx*2]
    e8e3:	c4 a1 79 6e 2c 0a    	vmovd  xmm5,DWORD PTR [rdx+r9*1]
    e8e9:	c5 e0 c6 dd 00       	vshufps xmm3,xmm3,xmm5,0x0
    e8ee:	c5 f9 6e 07          	vmovd  xmm0,DWORD PTR [rdi]
    e8f2:	c5 f9 6e 2c 37       	vmovd  xmm5,DWORD PTR [rdi+rsi*1]
    e8f7:	c5 f8 c6 c5 00       	vshufps xmm0,xmm0,xmm5,0x0
    e8fc:	c5 f9 6e 0c 77       	vmovd  xmm1,DWORD PTR [rdi+rsi*2]
    e901:	c4 a1 79 6e 2c 07    	vmovd  xmm5,DWORD PTR [rdi+r8*1]
    e907:	c5 f0 c6 cd 00       	vshufps xmm1,xmm1,xmm5,0x0
    e90c:	c4 e2 69 04 d4       	vpmaddubsw xmm2,xmm2,xmm4
    e911:	c4 e2 79 04 c4       	vpmaddubsw xmm0,xmm0,xmm4
    e916:	c4 e2 61 04 dc       	vpmaddubsw xmm3,xmm3,xmm4
    e91b:	c4 e2 71 04 cc       	vpmaddubsw xmm1,xmm1,xmm4
    e920:	c5 f9 f9 c2          	vpsubw xmm0,xmm0,xmm2
    e924:	c5 f1 f9 cb          	vpsubw xmm1,xmm1,xmm3
    e928:	c5 f9 fd d1          	vpaddw xmm2,xmm0,xmm1
    e92c:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    e930:	c5 e9 6d c1          	vpunpckhqdq xmm0,xmm2,xmm1
    e934:	c5 e9 6c d1          	vpunpcklqdq xmm2,xmm2,xmm1
    e938:	c5 e9 fd c8          	vpaddw xmm1,xmm2,xmm0
    e93c:	c5 f9 f9 c2          	vpsubw xmm0,xmm0,xmm2
    e940:	8f e8 f0 a3 15 00 00 	vpperm xmm2,xmm1,xmm0,XMMWORD PTR [rip+0x0]        # e94a <x264_8_pixel_satd_4x4_xop+0x8a>
    e947:	00 00 00 
    e94a:	8f e8 f0 a3 0d 00 00 	vpperm xmm1,xmm1,xmm0,XMMWORD PTR [rip+0x0]        # e954 <x264_8_pixel_satd_4x4_xop+0x94>
    e951:	00 00 00 
    e954:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
    e959:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    e95e:	c5 f1 ee ca          	vpmaxsw xmm1,xmm1,xmm2
    e962:	8f e9 78 c7 c9       	vphaddwq xmm1,xmm1
    e967:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    e96b:	c5 f1 fe ca          	vpaddd xmm1,xmm1,xmm2
    e96f:	c5 f9 7e c8          	vmovd  eax,xmm1
    e973:	c3                   	ret    
    e974:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    e97b:	00 
    e97c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000e980 <x264_8_pixel_satd_4x8_xop>:
    e980:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    e984:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    e988:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # e990 <x264_8_pixel_satd_4x8_xop+0x10>
    e98f:	00 
    e990:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    e994:	c5 f9 6e 2c 0a       	vmovd  xmm5,DWORD PTR [rdx+rcx*1]
    e999:	c5 f9 6e 34 4a       	vmovd  xmm6,DWORD PTR [rdx+rcx*2]
    e99e:	4c 01 ca             	add    rdx,r9
    e9a1:	c5 f9 6e 07          	vmovd  xmm0,DWORD PTR [rdi]
    e9a5:	c5 f9 6e 0c 37       	vmovd  xmm1,DWORD PTR [rdi+rsi*1]
    e9aa:	c5 f9 6e 14 77       	vmovd  xmm2,DWORD PTR [rdi+rsi*2]
    e9af:	4c 01 c7             	add    rdi,r8
    e9b2:	c5 f9 6e 1c 0a       	vmovd  xmm3,DWORD PTR [rdx+rcx*1]
    e9b7:	c5 d8 c6 e3 00       	vshufps xmm4,xmm4,xmm3,0x0
    e9bc:	c5 f9 6e 1c 37       	vmovd  xmm3,DWORD PTR [rdi+rsi*1]
    e9c1:	c5 f8 c6 c3 00       	vshufps xmm0,xmm0,xmm3,0x0
    e9c6:	c5 f9 6e 1c 4a       	vmovd  xmm3,DWORD PTR [rdx+rcx*2]
    e9cb:	c5 d0 c6 eb 00       	vshufps xmm5,xmm5,xmm3,0x0
    e9d0:	c5 f9 6e 1c 77       	vmovd  xmm3,DWORD PTR [rdi+rsi*2]
    e9d5:	c5 f0 c6 cb 00       	vshufps xmm1,xmm1,xmm3,0x0
    e9da:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    e9df:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    e9e4:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    e9e9:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    e9ee:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    e9f2:	c5 f1 f9 cd          	vpsubw xmm1,xmm1,xmm5
    e9f6:	c5 f9 6e 2a          	vmovd  xmm5,DWORD PTR [rdx]
    e9fa:	4c 01 ca             	add    rdx,r9
    e9fd:	c5 f9 6e 1f          	vmovd  xmm3,DWORD PTR [rdi]
    ea01:	4c 01 c7             	add    rdi,r8
    ea04:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    ea08:	c5 c8 c6 f4 00       	vshufps xmm6,xmm6,xmm4,0x0
    ea0d:	c5 f9 6e 27          	vmovd  xmm4,DWORD PTR [rdi]
    ea11:	c5 e8 c6 d4 00       	vshufps xmm2,xmm2,xmm4,0x0
    ea16:	c5 f9 6e 24 0a       	vmovd  xmm4,DWORD PTR [rdx+rcx*1]
    ea1b:	c5 d0 c6 ec 00       	vshufps xmm5,xmm5,xmm4,0x0
    ea20:	c5 f9 6e 24 37       	vmovd  xmm4,DWORD PTR [rdi+rsi*1]
    ea25:	c5 e0 c6 dc 00       	vshufps xmm3,xmm3,xmm4,0x0
    ea2a:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    ea2f:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    ea34:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    ea39:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    ea3e:	c5 e9 f9 d6          	vpsubw xmm2,xmm2,xmm6
    ea42:	c5 e1 f9 dd          	vpsubw xmm3,xmm3,xmm5
    ea46:	c5 f9 fd e1          	vpaddw xmm4,xmm0,xmm1
    ea4a:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    ea4e:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    ea52:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    ea56:	c5 d9 fd d0          	vpaddw xmm2,xmm4,xmm0
    ea5a:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    ea5e:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    ea62:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    ea66:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    ea6b:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    ea70:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    ea75:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    ea7a:	8f e8 e8 a3 0d 00 00 	vpperm xmm1,xmm2,xmm0,XMMWORD PTR [rip+0x0]        # ea84 <x264_8_pixel_satd_4x8_xop+0x104>
    ea81:	00 00 00 
    ea84:	8f e8 e8 a3 15 00 00 	vpperm xmm2,xmm2,xmm0,XMMWORD PTR [rip+0x0]        # ea8e <x264_8_pixel_satd_4x8_xop+0x10e>
    ea8b:	00 00 00 
    ea8e:	c5 e9 ee d1          	vpmaxsw xmm2,xmm2,xmm1
    ea92:	8f e8 d8 a3 05 00 00 	vpperm xmm0,xmm4,xmm3,XMMWORD PTR [rip+0x0]        # ea9c <x264_8_pixel_satd_4x8_xop+0x11c>
    ea99:	00 00 30 
    ea9c:	8f e8 d8 a3 25 00 00 	vpperm xmm4,xmm4,xmm3,XMMWORD PTR [rip+0x0]        # eaa6 <x264_8_pixel_satd_4x8_xop+0x126>
    eaa3:	00 00 30 
    eaa6:	c5 d9 ee e0          	vpmaxsw xmm4,xmm4,xmm0
    eaaa:	c5 e9 fd d4          	vpaddw xmm2,xmm2,xmm4
    eaae:	8f e9 78 c7 d2       	vphaddwq xmm2,xmm2
    eab3:	c5 e9 6d e2          	vpunpckhqdq xmm4,xmm2,xmm2
    eab7:	c5 e9 fe d4          	vpaddd xmm2,xmm2,xmm4
    eabb:	c5 f9 7e d0          	vmovd  eax,xmm2
    eabf:	c3                   	ret    

000000000000eac0 <x264_8_pixel_satd_4x16_xop>:
    eac0:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    eac4:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    eac8:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # ead0 <x264_8_pixel_satd_4x16_xop+0x10>
    eacf:	00 
    ead0:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    ead4:	c5 f9 6e 2c 0a       	vmovd  xmm5,DWORD PTR [rdx+rcx*1]
    ead9:	c5 f9 6e 34 4a       	vmovd  xmm6,DWORD PTR [rdx+rcx*2]
    eade:	4c 01 ca             	add    rdx,r9
    eae1:	c5 f9 6e 07          	vmovd  xmm0,DWORD PTR [rdi]
    eae5:	c5 f9 6e 0c 37       	vmovd  xmm1,DWORD PTR [rdi+rsi*1]
    eaea:	c5 f9 6e 14 77       	vmovd  xmm2,DWORD PTR [rdi+rsi*2]
    eaef:	4c 01 c7             	add    rdi,r8
    eaf2:	c5 f9 6e 1c 0a       	vmovd  xmm3,DWORD PTR [rdx+rcx*1]
    eaf7:	c5 d8 c6 e3 00       	vshufps xmm4,xmm4,xmm3,0x0
    eafc:	c5 f9 6e 1c 37       	vmovd  xmm3,DWORD PTR [rdi+rsi*1]
    eb01:	c5 f8 c6 c3 00       	vshufps xmm0,xmm0,xmm3,0x0
    eb06:	c5 f9 6e 1c 4a       	vmovd  xmm3,DWORD PTR [rdx+rcx*2]
    eb0b:	c5 d0 c6 eb 00       	vshufps xmm5,xmm5,xmm3,0x0
    eb10:	c5 f9 6e 1c 77       	vmovd  xmm3,DWORD PTR [rdi+rsi*2]
    eb15:	c5 f0 c6 cb 00       	vshufps xmm1,xmm1,xmm3,0x0
    eb1a:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    eb1f:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    eb24:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    eb29:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    eb2e:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    eb32:	c5 f1 f9 cd          	vpsubw xmm1,xmm1,xmm5
    eb36:	c5 f9 6e 2a          	vmovd  xmm5,DWORD PTR [rdx]
    eb3a:	4c 01 ca             	add    rdx,r9
    eb3d:	c5 f9 6e 1f          	vmovd  xmm3,DWORD PTR [rdi]
    eb41:	4c 01 c7             	add    rdi,r8
    eb44:	c5 f9 6e 22          	vmovd  xmm4,DWORD PTR [rdx]
    eb48:	c5 c8 c6 f4 00       	vshufps xmm6,xmm6,xmm4,0x0
    eb4d:	c5 f9 6e 27          	vmovd  xmm4,DWORD PTR [rdi]
    eb51:	c5 e8 c6 d4 00       	vshufps xmm2,xmm2,xmm4,0x0
    eb56:	c5 f9 6e 24 0a       	vmovd  xmm4,DWORD PTR [rdx+rcx*1]
    eb5b:	c5 d0 c6 ec 00       	vshufps xmm5,xmm5,xmm4,0x0
    eb60:	c5 f9 6e 24 37       	vmovd  xmm4,DWORD PTR [rdi+rsi*1]
    eb65:	c5 e0 c6 dc 00       	vshufps xmm3,xmm3,xmm4,0x0
    eb6a:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    eb6f:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    eb74:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    eb79:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    eb7e:	c5 e9 f9 d6          	vpsubw xmm2,xmm2,xmm6
    eb82:	c5 e1 f9 dd          	vpsubw xmm3,xmm3,xmm5
    eb86:	c5 f9 fd e1          	vpaddw xmm4,xmm0,xmm1
    eb8a:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    eb8e:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    eb92:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    eb96:	c5 d9 fd d0          	vpaddw xmm2,xmm4,xmm0
    eb9a:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    eb9e:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    eba2:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    eba6:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    ebab:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    ebb0:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    ebb5:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    ebba:	8f e8 e8 a3 0d 00 00 	vpperm xmm1,xmm2,xmm0,XMMWORD PTR [rip+0x0]        # ebc4 <x264_8_pixel_satd_4x16_xop+0x104>
    ebc1:	00 00 00 
    ebc4:	8f e8 e8 a3 15 00 00 	vpperm xmm2,xmm2,xmm0,XMMWORD PTR [rip+0x0]        # ebce <x264_8_pixel_satd_4x16_xop+0x10e>
    ebcb:	00 00 00 
    ebce:	c5 e9 ee d1          	vpmaxsw xmm2,xmm2,xmm1
    ebd2:	8f e8 d8 a3 05 00 00 	vpperm xmm0,xmm4,xmm3,XMMWORD PTR [rip+0x0]        # ebdc <x264_8_pixel_satd_4x16_xop+0x11c>
    ebd9:	00 00 30 
    ebdc:	8f e8 d8 a3 25 00 00 	vpperm xmm4,xmm4,xmm3,XMMWORD PTR [rip+0x0]        # ebe6 <x264_8_pixel_satd_4x16_xop+0x126>
    ebe3:	00 00 30 
    ebe6:	c5 d9 ee e0          	vpmaxsw xmm4,xmm4,xmm0
    ebea:	c5 e9 fd d4          	vpaddw xmm2,xmm2,xmm4
    ebee:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
    ebf2:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
    ebf6:	c5 f9 6e 1a          	vmovd  xmm3,DWORD PTR [rdx]
    ebfa:	c5 f9 6e 2c 0a       	vmovd  xmm5,DWORD PTR [rdx+rcx*1]
    ebff:	c5 f9 6e 34 4a       	vmovd  xmm6,DWORD PTR [rdx+rcx*2]
    ec04:	4c 01 ca             	add    rdx,r9
    ec07:	c5 f9 6e 3f          	vmovd  xmm7,DWORD PTR [rdi]
    ec0b:	c5 f9 6e 24 37       	vmovd  xmm4,DWORD PTR [rdi+rsi*1]
    ec10:	c5 f9 6e 0c 77       	vmovd  xmm1,DWORD PTR [rdi+rsi*2]
    ec15:	4c 01 c7             	add    rdi,r8
    ec18:	c5 f9 6e 04 0a       	vmovd  xmm0,DWORD PTR [rdx+rcx*1]
    ec1d:	c5 e0 c6 d8 00       	vshufps xmm3,xmm3,xmm0,0x0
    ec22:	c5 f9 6e 04 37       	vmovd  xmm0,DWORD PTR [rdi+rsi*1]
    ec27:	c5 c0 c6 f8 00       	vshufps xmm7,xmm7,xmm0,0x0
    ec2c:	c5 f9 6e 04 4a       	vmovd  xmm0,DWORD PTR [rdx+rcx*2]
    ec31:	c5 d0 c6 e8 00       	vshufps xmm5,xmm5,xmm0,0x0
    ec36:	c5 f9 6e 04 77       	vmovd  xmm0,DWORD PTR [rdi+rsi*2]
    ec3b:	c5 d8 c6 e0 00       	vshufps xmm4,xmm4,xmm0,0x0
    ec40:	c5 f9 6f 05 00 00 00 	vmovdqa xmm0,XMMWORD PTR [rip+0x0]        # ec48 <x264_8_pixel_satd_4x16_xop+0x188>
    ec47:	00 
    ec48:	c4 e2 61 04 d8       	vpmaddubsw xmm3,xmm3,xmm0
    ec4d:	c4 e2 41 04 f8       	vpmaddubsw xmm7,xmm7,xmm0
    ec52:	c4 e2 51 04 e8       	vpmaddubsw xmm5,xmm5,xmm0
    ec57:	c4 e2 59 04 e0       	vpmaddubsw xmm4,xmm4,xmm0
    ec5c:	c5 c1 f9 fb          	vpsubw xmm7,xmm7,xmm3
    ec60:	c5 d9 f9 e5          	vpsubw xmm4,xmm4,xmm5
    ec64:	c5 f9 6e 2a          	vmovd  xmm5,DWORD PTR [rdx]
    ec68:	4c 01 ca             	add    rdx,r9
    ec6b:	c5 f9 6e 07          	vmovd  xmm0,DWORD PTR [rdi]
    ec6f:	4c 01 c7             	add    rdi,r8
    ec72:	c5 f9 6e 1a          	vmovd  xmm3,DWORD PTR [rdx]
    ec76:	c5 c8 c6 f3 00       	vshufps xmm6,xmm6,xmm3,0x0
    ec7b:	c5 f9 6e 1f          	vmovd  xmm3,DWORD PTR [rdi]
    ec7f:	c5 f0 c6 cb 00       	vshufps xmm1,xmm1,xmm3,0x0
    ec84:	c5 f9 6e 1c 0a       	vmovd  xmm3,DWORD PTR [rdx+rcx*1]
    ec89:	c5 d0 c6 eb 00       	vshufps xmm5,xmm5,xmm3,0x0
    ec8e:	c5 f9 6e 1c 37       	vmovd  xmm3,DWORD PTR [rdi+rsi*1]
    ec93:	c5 f8 c6 c3 00       	vshufps xmm0,xmm0,xmm3,0x0
    ec98:	c5 f9 6f 1d 00 00 00 	vmovdqa xmm3,XMMWORD PTR [rip+0x0]        # eca0 <x264_8_pixel_satd_4x16_xop+0x1e0>
    ec9f:	00 
    eca0:	c4 e2 49 04 f3       	vpmaddubsw xmm6,xmm6,xmm3
    eca5:	c4 e2 71 04 cb       	vpmaddubsw xmm1,xmm1,xmm3
    ecaa:	c4 e2 51 04 eb       	vpmaddubsw xmm5,xmm5,xmm3
    ecaf:	c4 e2 79 04 c3       	vpmaddubsw xmm0,xmm0,xmm3
    ecb4:	c5 f1 f9 ce          	vpsubw xmm1,xmm1,xmm6
    ecb8:	c5 f9 f9 c5          	vpsubw xmm0,xmm0,xmm5
    ecbc:	c5 c1 fd dc          	vpaddw xmm3,xmm7,xmm4
    ecc0:	c5 d9 f9 e7          	vpsubw xmm4,xmm4,xmm7
    ecc4:	c5 f1 fd f8          	vpaddw xmm7,xmm1,xmm0
    ecc8:	c5 f9 f9 c1          	vpsubw xmm0,xmm0,xmm1
    eccc:	c5 e1 fd cf          	vpaddw xmm1,xmm3,xmm7
    ecd0:	c5 c1 f9 fb          	vpsubw xmm7,xmm7,xmm3
    ecd4:	c5 d9 fd d8          	vpaddw xmm3,xmm4,xmm0
    ecd8:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    ecdc:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
    ece1:	c4 e2 79 1d ff       	vpabsw xmm7,xmm7
    ece6:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    eceb:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    ecf0:	8f e8 f0 a3 25 00 00 	vpperm xmm4,xmm1,xmm7,XMMWORD PTR [rip+0x0]        # ecfa <x264_8_pixel_satd_4x16_xop+0x23a>
    ecf7:	00 00 70 
    ecfa:	8f e8 f0 a3 0d 00 00 	vpperm xmm1,xmm1,xmm7,XMMWORD PTR [rip+0x0]        # ed04 <x264_8_pixel_satd_4x16_xop+0x244>
    ed01:	00 00 70 
    ed04:	c5 f1 ee cc          	vpmaxsw xmm1,xmm1,xmm4
    ed08:	c5 e9 fd d1          	vpaddw xmm2,xmm2,xmm1
    ed0c:	8f e8 e0 a3 3d 00 00 	vpperm xmm7,xmm3,xmm0,XMMWORD PTR [rip+0x0]        # ed16 <x264_8_pixel_satd_4x16_xop+0x256>
    ed13:	00 00 00 
    ed16:	8f e8 e0 a3 1d 00 00 	vpperm xmm3,xmm3,xmm0,XMMWORD PTR [rip+0x0]        # ed20 <x264_8_pixel_satd_4x16_xop+0x260>
    ed1d:	00 00 00 
    ed20:	c5 e1 ee df          	vpmaxsw xmm3,xmm3,xmm7
    ed24:	c5 e9 fd d3          	vpaddw xmm2,xmm2,xmm3
    ed28:	8f e9 78 c7 d2       	vphaddwq xmm2,xmm2
    ed2d:	c5 e9 6d da          	vpunpckhqdq xmm3,xmm2,xmm2
    ed31:	c5 e9 fe d3          	vpaddd xmm2,xmm2,xmm3
    ed35:	c5 f9 7e d0          	vmovd  eax,xmm2
    ed39:	c3                   	ret    
    ed3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000ed40 <x264_8_pixel_satd_8x8_internal_xop>:
    ed40:	c5 fb 12 22          	vmovddup xmm4,QWORD PTR [rdx]
    ed44:	c5 fb 12 2c 0a       	vmovddup xmm5,QWORD PTR [rdx+rcx*1]
    ed49:	c5 fb 12 07          	vmovddup xmm0,QWORD PTR [rdi]
    ed4d:	c5 fb 12 0c 37       	vmovddup xmm1,QWORD PTR [rdi+rsi*1]
    ed52:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    ed57:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    ed5c:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    ed61:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    ed66:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    ed6a:	c5 f1 f9 cd          	vpsubw xmm1,xmm1,xmm5
    ed6e:	c5 fb 12 24 4a       	vmovddup xmm4,QWORD PTR [rdx+rcx*2]
    ed73:	c4 a1 7b 12 2c 0a    	vmovddup xmm5,QWORD PTR [rdx+r9*1]
    ed79:	c5 fb 12 14 77       	vmovddup xmm2,QWORD PTR [rdi+rsi*2]
    ed7e:	c4 a1 7b 12 1c 07    	vmovddup xmm3,QWORD PTR [rdi+r8*1]
    ed84:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    ed89:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    ed8e:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    ed93:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    ed98:	c5 e9 f9 d4          	vpsubw xmm2,xmm2,xmm4
    ed9c:	c5 e1 f9 dd          	vpsubw xmm3,xmm3,xmm5
    eda0:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    eda4:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    eda8:	c5 f9 fd e1          	vpaddw xmm4,xmm0,xmm1
    edac:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    edb0:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    edb4:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    edb8:	c5 d9 fd d0          	vpaddw xmm2,xmm4,xmm0
    edbc:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    edc0:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    edc4:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    edc8:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    edcd:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    edd2:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    edd7:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    eddc:	8f e8 e8 a3 0d 00 00 	vpperm xmm1,xmm2,xmm0,XMMWORD PTR [rip+0x0]        # ede6 <x264_8_pixel_satd_8x8_internal_xop+0xa6>
    ede3:	00 00 00 
    ede6:	8f e8 e8 a3 15 00 00 	vpperm xmm2,xmm2,xmm0,XMMWORD PTR [rip+0x0]        # edf0 <x264_8_pixel_satd_8x8_internal_xop+0xb0>
    eded:	00 00 00 
    edf0:	c5 e9 ee d1          	vpmaxsw xmm2,xmm2,xmm1
    edf4:	c5 c9 fd f2          	vpaddw xmm6,xmm6,xmm2
    edf8:	8f e8 d8 a3 05 00 00 	vpperm xmm0,xmm4,xmm3,XMMWORD PTR [rip+0x0]        # ee02 <x264_8_pixel_satd_8x8_internal_xop+0xc2>
    edff:	00 00 30 
    ee02:	8f e8 d8 a3 25 00 00 	vpperm xmm4,xmm4,xmm3,XMMWORD PTR [rip+0x0]        # ee0c <x264_8_pixel_satd_8x8_internal_xop+0xcc>
    ee09:	00 00 30 
    ee0c:	c5 d9 ee e0          	vpmaxsw xmm4,xmm4,xmm0
    ee10:	c5 c9 fd f4          	vpaddw xmm6,xmm6,xmm4
    ee14:	c5 fb 12 1a          	vmovddup xmm3,QWORD PTR [rdx]
    ee18:	c5 fb 12 2c 0a       	vmovddup xmm5,QWORD PTR [rdx+rcx*1]
    ee1d:	c5 fb 12 17          	vmovddup xmm2,QWORD PTR [rdi]
    ee21:	c5 fb 12 24 37       	vmovddup xmm4,QWORD PTR [rdi+rsi*1]
    ee26:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    ee2b:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    ee30:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    ee35:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    ee3a:	c5 e9 f9 d3          	vpsubw xmm2,xmm2,xmm3
    ee3e:	c5 d9 f9 e5          	vpsubw xmm4,xmm4,xmm5
    ee42:	c5 fb 12 1c 4a       	vmovddup xmm3,QWORD PTR [rdx+rcx*2]
    ee47:	c4 a1 7b 12 2c 0a    	vmovddup xmm5,QWORD PTR [rdx+r9*1]
    ee4d:	c5 fb 12 0c 77       	vmovddup xmm1,QWORD PTR [rdi+rsi*2]
    ee52:	c4 a1 7b 12 04 07    	vmovddup xmm0,QWORD PTR [rdi+r8*1]
    ee58:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    ee5d:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    ee62:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    ee67:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    ee6c:	c5 f1 f9 cb          	vpsubw xmm1,xmm1,xmm3
    ee70:	c5 f9 f9 c5          	vpsubw xmm0,xmm0,xmm5
    ee74:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    ee78:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    ee7c:	c5 e9 fd dc          	vpaddw xmm3,xmm2,xmm4
    ee80:	c5 d9 f9 e2          	vpsubw xmm4,xmm4,xmm2
    ee84:	c5 f1 fd d0          	vpaddw xmm2,xmm1,xmm0
    ee88:	c5 f9 f9 c1          	vpsubw xmm0,xmm0,xmm1
    ee8c:	c5 e1 fd ca          	vpaddw xmm1,xmm3,xmm2
    ee90:	c5 e9 f9 d3          	vpsubw xmm2,xmm2,xmm3
    ee94:	c5 d9 fd d8          	vpaddw xmm3,xmm4,xmm0
    ee98:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    ee9c:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
    eea1:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    eea6:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    eeab:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    eeb0:	8f e8 f0 a3 25 00 00 	vpperm xmm4,xmm1,xmm2,XMMWORD PTR [rip+0x0]        # eeba <x264_8_pixel_satd_8x8_internal_xop+0x17a>
    eeb7:	00 00 20 
    eeba:	8f e8 f0 a3 0d 00 00 	vpperm xmm1,xmm1,xmm2,XMMWORD PTR [rip+0x0]        # eec4 <x264_8_pixel_satd_8x8_internal_xop+0x184>
    eec1:	00 00 20 
    eec4:	c5 f1 ee cc          	vpmaxsw xmm1,xmm1,xmm4
    eec8:	c5 c9 fd f1          	vpaddw xmm6,xmm6,xmm1
    eecc:	8f e8 e0 a3 15 00 00 	vpperm xmm2,xmm3,xmm0,XMMWORD PTR [rip+0x0]        # eed6 <x264_8_pixel_satd_8x8_internal_xop+0x196>
    eed3:	00 00 00 
    eed6:	8f e8 e0 a3 1d 00 00 	vpperm xmm3,xmm3,xmm0,XMMWORD PTR [rip+0x0]        # eee0 <x264_8_pixel_satd_8x8_internal_xop+0x1a0>
    eedd:	00 00 00 
    eee0:	c5 e1 ee da          	vpmaxsw xmm3,xmm3,xmm2
    eee4:	c5 c9 fd f3          	vpaddw xmm6,xmm6,xmm3
    eee8:	c3                   	ret    
    eee9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000eef0 <x264_8_pixel_satd_16x8_xop>:
    eef0:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # eef8 <x264_8_pixel_satd_16x8_xop+0x8>
    eef7:	00 
    eef8:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    eefc:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    ef00:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    ef04:	48 89 f8             	mov    rax,rdi
    ef07:	49 89 d2             	mov    r10,rdx
    ef0a:	e8 31 fe ff ff       	call   ed40 <x264_8_pixel_satd_8x8_internal_xop>
    ef0f:	48 8d 78 08          	lea    rdi,[rax+0x8]
    ef13:	49 8d 52 08          	lea    rdx,[r10+0x8]
    ef17:	e8 24 fe ff ff       	call   ed40 <x264_8_pixel_satd_8x8_internal_xop>
    ef1c:	8f e9 78 c7 f6       	vphaddwq xmm6,xmm6
    ef21:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    ef25:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    ef29:	c5 f9 7e f0          	vmovd  eax,xmm6
    ef2d:	c3                   	ret    
    ef2e:	66 90                	xchg   ax,ax

000000000000ef30 <x264_8_pixel_satd_16x16_xop>:
    ef30:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # ef38 <x264_8_pixel_satd_16x16_xop+0x8>
    ef37:	00 
    ef38:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    ef3c:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    ef40:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    ef44:	48 89 f8             	mov    rax,rdi
    ef47:	49 89 d2             	mov    r10,rdx
    ef4a:	e8 f1 fd ff ff       	call   ed40 <x264_8_pixel_satd_8x8_internal_xop>
    ef4f:	e8 ec fd ff ff       	call   ed40 <x264_8_pixel_satd_8x8_internal_xop>
    ef54:	48 8d 78 08          	lea    rdi,[rax+0x8]
    ef58:	49 8d 52 08          	lea    rdx,[r10+0x8]
    ef5c:	e8 df fd ff ff       	call   ed40 <x264_8_pixel_satd_8x8_internal_xop>
    ef61:	e8 da fd ff ff       	call   ed40 <x264_8_pixel_satd_8x8_internal_xop>
    ef66:	8f e9 78 c7 f6       	vphaddwq xmm6,xmm6
    ef6b:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    ef6f:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    ef73:	c5 f9 7e f0          	vmovd  eax,xmm6
    ef77:	c3                   	ret    
    ef78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    ef7f:	00 

000000000000ef80 <x264_8_pixel_satd_8x16_xop>:
    ef80:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # ef88 <x264_8_pixel_satd_8x16_xop+0x8>
    ef87:	00 
    ef88:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    ef8c:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    ef90:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    ef94:	e8 a7 fd ff ff       	call   ed40 <x264_8_pixel_satd_8x8_internal_xop>
    ef99:	e8 a2 fd ff ff       	call   ed40 <x264_8_pixel_satd_8x8_internal_xop>
    ef9e:	8f e9 78 c7 f6       	vphaddwq xmm6,xmm6
    efa3:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    efa7:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    efab:	c5 f9 7e f0          	vmovd  eax,xmm6
    efaf:	c3                   	ret    

000000000000efb0 <x264_8_pixel_satd_8x8_xop>:
    efb0:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # efb8 <x264_8_pixel_satd_8x8_xop+0x8>
    efb7:	00 
    efb8:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    efbc:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    efc0:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    efc4:	e8 77 fd ff ff       	call   ed40 <x264_8_pixel_satd_8x8_internal_xop>
    efc9:	8f e9 78 c7 f6       	vphaddwq xmm6,xmm6
    efce:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    efd2:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    efd6:	c5 f9 7e f0          	vmovd  eax,xmm6
    efda:	c3                   	ret    
    efdb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000efe0 <x264_8_pixel_satd_8x4_xop>:
    efe0:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # efe8 <x264_8_pixel_satd_8x4_xop+0x8>
    efe7:	00 
    efe8:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    efec:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    eff0:	c5 c9 ef f6          	vpxor  xmm6,xmm6,xmm6
    eff4:	e8 1b fe ff ff       	call   ee14 <x264_8_pixel_satd_8x8_internal_xop+0xd4>
    eff9:	8f e9 78 c7 f6       	vphaddwq xmm6,xmm6
    effe:	c5 c9 6d fe          	vpunpckhqdq xmm7,xmm6,xmm6
    f002:	c5 c9 fe f7          	vpaddd xmm6,xmm6,xmm7
    f006:	c5 f9 7e f0          	vmovd  eax,xmm6
    f00a:	c3                   	ret    
    f00b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000f010 <x264_8_pixel_sa8d_8x8_internal_xop>:
    f010:	48 8d 04 b7          	lea    rax,[rdi+rsi*4]
    f014:	4c 8d 14 8a          	lea    r10,[rdx+rcx*4]
    f018:	c5 fb 12 2a          	vmovddup xmm5,QWORD PTR [rdx]
    f01c:	c5 fb 12 34 0a       	vmovddup xmm6,QWORD PTR [rdx+rcx*1]
    f021:	c5 fb 12 07          	vmovddup xmm0,QWORD PTR [rdi]
    f025:	c5 fb 12 0c 37       	vmovddup xmm1,QWORD PTR [rdi+rsi*1]
    f02a:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    f02f:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    f034:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    f039:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    f03e:	c5 f9 f9 c5          	vpsubw xmm0,xmm0,xmm5
    f042:	c5 f1 f9 ce          	vpsubw xmm1,xmm1,xmm6
    f046:	c5 fb 12 2c 4a       	vmovddup xmm5,QWORD PTR [rdx+rcx*2]
    f04b:	c4 a1 7b 12 34 0a    	vmovddup xmm6,QWORD PTR [rdx+r9*1]
    f051:	c5 fb 12 14 77       	vmovddup xmm2,QWORD PTR [rdi+rsi*2]
    f056:	c4 21 7b 12 04 07    	vmovddup xmm8,QWORD PTR [rdi+r8*1]
    f05c:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    f061:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    f066:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    f06b:	c4 62 39 04 c7       	vpmaddubsw xmm8,xmm8,xmm7
    f070:	c5 e9 f9 d5          	vpsubw xmm2,xmm2,xmm5
    f074:	c5 39 f9 c6          	vpsubw xmm8,xmm8,xmm6
    f078:	c4 41 7b 12 1a       	vmovddup xmm11,QWORD PTR [r10]
    f07d:	c4 c1 7b 12 34 0a    	vmovddup xmm6,QWORD PTR [r10+rcx*1]
    f083:	c5 fb 12 20          	vmovddup xmm4,QWORD PTR [rax]
    f087:	c5 fb 12 2c 30       	vmovddup xmm5,QWORD PTR [rax+rsi*1]
    f08c:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    f091:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    f096:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    f09b:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    f0a0:	c4 c1 59 f9 e3       	vpsubw xmm4,xmm4,xmm11
    f0a5:	c5 d1 f9 ee          	vpsubw xmm5,xmm5,xmm6
    f0a9:	c4 41 7b 12 1c 4a    	vmovddup xmm11,QWORD PTR [r10+rcx*2]
    f0af:	c4 81 7b 12 34 0a    	vmovddup xmm6,QWORD PTR [r10+r9*1]
    f0b5:	c5 fb 12 1c 70       	vmovddup xmm3,QWORD PTR [rax+rsi*2]
    f0ba:	c4 21 7b 12 0c 00    	vmovddup xmm9,QWORD PTR [rax+r8*1]
    f0c0:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    f0c5:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    f0ca:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    f0cf:	c4 62 31 04 cf       	vpmaddubsw xmm9,xmm9,xmm7
    f0d4:	c4 c1 61 f9 db       	vpsubw xmm3,xmm3,xmm11
    f0d9:	c5 31 f9 ce          	vpsubw xmm9,xmm9,xmm6
    f0dd:	c5 f9 fd f1          	vpaddw xmm6,xmm0,xmm1
    f0e1:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    f0e5:	c5 b9 fd c2          	vpaddw xmm0,xmm8,xmm2
    f0e9:	c5 39 f9 c2          	vpsubw xmm8,xmm8,xmm2
    f0ed:	c5 c9 fd d0          	vpaddw xmm2,xmm6,xmm0
    f0f1:	c5 f9 f9 c6          	vpsubw xmm0,xmm0,xmm6
    f0f5:	c5 b9 fd f1          	vpaddw xmm6,xmm8,xmm1
    f0f9:	c5 39 f9 c1          	vpsubw xmm8,xmm8,xmm1
    f0fd:	c5 d9 fd cd          	vpaddw xmm1,xmm4,xmm5
    f101:	c5 d1 f9 ec          	vpsubw xmm5,xmm5,xmm4
    f105:	c5 b1 fd e3          	vpaddw xmm4,xmm9,xmm3
    f109:	c5 31 f9 cb          	vpsubw xmm9,xmm9,xmm3
    f10d:	c5 f1 fd dc          	vpaddw xmm3,xmm1,xmm4
    f111:	c5 d9 f9 e1          	vpsubw xmm4,xmm4,xmm1
    f115:	c5 b1 fd cd          	vpaddw xmm1,xmm9,xmm5
    f119:	c5 31 f9 cd          	vpsubw xmm9,xmm9,xmm5
    f11d:	c5 e9 fd eb          	vpaddw xmm5,xmm2,xmm3
    f121:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    f125:	c5 c9 fd d1          	vpaddw xmm2,xmm6,xmm1
    f129:	c5 f1 f9 ce          	vpsubw xmm1,xmm1,xmm6
    f12d:	c5 d0 c6 f3 dd       	vshufps xmm6,xmm5,xmm3,0xdd
    f132:	c5 d0 c6 eb 88       	vshufps xmm5,xmm5,xmm3,0x88
    f137:	c5 d1 fd de          	vpaddw xmm3,xmm5,xmm6
    f13b:	c5 c9 f9 f5          	vpsubw xmm6,xmm6,xmm5
    f13f:	c5 e8 c6 e9 dd       	vshufps xmm5,xmm2,xmm1,0xdd
    f144:	c5 e8 c6 d1 88       	vshufps xmm2,xmm2,xmm1,0x88
    f149:	c5 e9 fd cd          	vpaddw xmm1,xmm2,xmm5
    f14d:	c5 d1 f9 ea          	vpsubw xmm5,xmm5,xmm2
    f151:	c5 f9 fd d4          	vpaddw xmm2,xmm0,xmm4
    f155:	c5 d9 f9 e0          	vpsubw xmm4,xmm4,xmm0
    f159:	c4 c1 39 fd c1       	vpaddw xmm0,xmm8,xmm9
    f15e:	c4 41 31 f9 c8       	vpsubw xmm9,xmm9,xmm8
    f163:	c5 68 c6 c4 dd       	vshufps xmm8,xmm2,xmm4,0xdd
    f168:	c5 e8 c6 d4 88       	vshufps xmm2,xmm2,xmm4,0x88
    f16d:	c5 b9 fd e2          	vpaddw xmm4,xmm8,xmm2
    f171:	c5 39 f9 c2          	vpsubw xmm8,xmm8,xmm2
    f175:	c4 c1 78 c6 d1 dd    	vshufps xmm2,xmm0,xmm9,0xdd
    f17b:	c4 c1 78 c6 c1 88    	vshufps xmm0,xmm0,xmm9,0x88
    f181:	c5 79 fd ca          	vpaddw xmm9,xmm0,xmm2
    f185:	c5 e9 f9 d0          	vpsubw xmm2,xmm2,xmm0
    f189:	8f e8 e0 a3 05 00 00 	vpperm xmm0,xmm3,xmm6,XMMWORD PTR [rip+0x0]        # f193 <x264_8_pixel_sa8d_8x8_internal_xop+0x183>
    f190:	00 00 60 
    f193:	8f e8 e0 a3 1d 00 00 	vpperm xmm3,xmm3,xmm6,XMMWORD PTR [rip+0x0]        # f19d <x264_8_pixel_sa8d_8x8_internal_xop+0x18d>
    f19a:	00 00 60 
    f19d:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    f1a2:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    f1a7:	c5 e1 ee d8          	vpmaxsw xmm3,xmm3,xmm0
    f1ab:	8f e8 f0 a3 35 00 00 	vpperm xmm6,xmm1,xmm5,XMMWORD PTR [rip+0x0]        # f1b5 <x264_8_pixel_sa8d_8x8_internal_xop+0x1a5>
    f1b2:	00 00 50 
    f1b5:	8f e8 f0 a3 0d 00 00 	vpperm xmm1,xmm1,xmm5,XMMWORD PTR [rip+0x0]        # f1bf <x264_8_pixel_sa8d_8x8_internal_xop+0x1af>
    f1bc:	00 00 50 
    f1bf:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
    f1c4:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    f1c9:	c5 f1 ee ce          	vpmaxsw xmm1,xmm1,xmm6
    f1cd:	8f e8 d8 a3 2d 00 00 	vpperm xmm5,xmm4,xmm8,XMMWORD PTR [rip+0x0]        # f1d7 <x264_8_pixel_sa8d_8x8_internal_xop+0x1c7>
    f1d4:	00 00 80 
    f1d7:	8f e8 d8 a3 25 00 00 	vpperm xmm4,xmm4,xmm8,XMMWORD PTR [rip+0x0]        # f1e1 <x264_8_pixel_sa8d_8x8_internal_xop+0x1d1>
    f1de:	00 00 80 
    f1e1:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    f1e6:	c4 e2 79 1d ed       	vpabsw xmm5,xmm5
    f1eb:	c5 d9 ee e5          	vpmaxsw xmm4,xmm4,xmm5
    f1ef:	8f 68 b0 a3 05 00 00 	vpperm xmm8,xmm9,xmm2,XMMWORD PTR [rip+0x0]        # f1f9 <x264_8_pixel_sa8d_8x8_internal_xop+0x1e9>
    f1f6:	00 00 20 
    f1f9:	8f 68 b0 a3 0d 00 00 	vpperm xmm9,xmm9,xmm2,XMMWORD PTR [rip+0x0]        # f203 <x264_8_pixel_sa8d_8x8_internal_xop+0x1f3>
    f200:	00 00 20 
    f203:	c4 42 79 1d c9       	vpabsw xmm9,xmm9
    f208:	c4 42 79 1d c0       	vpabsw xmm8,xmm8
    f20d:	c4 41 31 ee c8       	vpmaxsw xmm9,xmm9,xmm8
    f212:	c5 e1 fd d9          	vpaddw xmm3,xmm3,xmm1
    f216:	c5 e1 fd dc          	vpaddw xmm3,xmm3,xmm4
    f21a:	c5 b1 fd db          	vpaddw xmm3,xmm9,xmm3
    f21e:	c3                   	ret    
    f21f:	90                   	nop

000000000000f220 <x264_8_pixel_sa8d_8x8_xop>:
    f220:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    f224:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    f228:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # f230 <x264_8_pixel_sa8d_8x8_xop+0x10>
    f22f:	00 
    f230:	e8 db fd ff ff       	call   f010 <x264_8_pixel_sa8d_8x8_internal_xop>
    f235:	8f e9 78 c7 db       	vphaddwq xmm3,xmm3
    f23a:	c5 e1 6d cb          	vpunpckhqdq xmm1,xmm3,xmm3
    f23e:	c5 e1 fe d9          	vpaddd xmm3,xmm3,xmm1
    f242:	c5 f9 7e d8          	vmovd  eax,xmm3
    f246:	83 c0 01             	add    eax,0x1
    f249:	d1 e8                	shr    eax,1
    f24b:	c3                   	ret    
    f24c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000f250 <x264_8_pixel_sa8d_16x16_xop>:
    f250:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    f254:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    f258:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # f260 <x264_8_pixel_sa8d_16x16_xop+0x10>
    f25f:	00 
    f260:	e8 ab fd ff ff       	call   f010 <x264_8_pixel_sa8d_8x8_internal_xop>
    f265:	48 83 c2 08          	add    rdx,0x8
    f269:	48 83 c7 08          	add    rdi,0x8
    f26d:	c5 79 6f d3          	vmovdqa xmm10,xmm3
    f271:	e8 9a fd ff ff       	call   f010 <x264_8_pixel_sa8d_8x8_internal_xop>
    f276:	48 8d 14 ca          	lea    rdx,[rdx+rcx*8]
    f27a:	48 8d 3c f7          	lea    rdi,[rdi+rsi*8]
    f27e:	c5 29 dd d3          	vpaddusw xmm10,xmm10,xmm3
    f282:	e8 89 fd ff ff       	call   f010 <x264_8_pixel_sa8d_8x8_internal_xop>
    f287:	48 83 ea 08          	sub    rdx,0x8
    f28b:	48 83 ef 08          	sub    rdi,0x8
    f28f:	c5 29 dd d3          	vpaddusw xmm10,xmm10,xmm3
    f293:	e8 78 fd ff ff       	call   f010 <x264_8_pixel_sa8d_8x8_internal_xop>
    f298:	c5 29 dd d3          	vpaddusw xmm10,xmm10,xmm3
    f29c:	8f 49 78 d7 d2       	vphadduwq xmm10,xmm10
    f2a1:	c4 c1 29 6d ca       	vpunpckhqdq xmm1,xmm10,xmm10
    f2a6:	c5 29 fe d1          	vpaddd xmm10,xmm10,xmm1
    f2aa:	c5 79 7e d0          	vmovd  eax,xmm10
    f2ae:	83 c0 01             	add    eax,0x1
    f2b1:	d1 e8                	shr    eax,1
    f2b3:	c3                   	ret    
    f2b4:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    f2bb:	00 
    f2bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000f2c0 <x264_8_pixel_sa8d_satd_8x8_internal_xop>:
    f2c0:	c5 fb 12 32          	vmovddup xmm6,QWORD PTR [rdx]
    f2c4:	c5 7b 12 1c 0a       	vmovddup xmm11,QWORD PTR [rdx+rcx*1]
    f2c9:	c5 fb 12 07          	vmovddup xmm0,QWORD PTR [rdi]
    f2cd:	c5 fb 12 0c 37       	vmovddup xmm1,QWORD PTR [rdi+rsi*1]
    f2d2:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    f2d7:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    f2dc:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    f2e1:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    f2e6:	c5 f9 f9 c6          	vpsubw xmm0,xmm0,xmm6
    f2ea:	c4 c1 71 f9 cb       	vpsubw xmm1,xmm1,xmm11
    f2ef:	c5 fb 12 34 4a       	vmovddup xmm6,QWORD PTR [rdx+rcx*2]
    f2f4:	c4 21 7b 12 1c 0a    	vmovddup xmm11,QWORD PTR [rdx+r9*1]
    f2fa:	c5 fb 12 14 77       	vmovddup xmm2,QWORD PTR [rdi+rsi*2]
    f2ff:	c4 a1 7b 12 1c 07    	vmovddup xmm3,QWORD PTR [rdi+r8*1]
    f305:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    f30a:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    f30f:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    f314:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    f319:	c5 e9 f9 d6          	vpsubw xmm2,xmm2,xmm6
    f31d:	c4 c1 61 f9 db       	vpsubw xmm3,xmm3,xmm11
    f322:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    f326:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    f32a:	c5 f9 fd f1          	vpaddw xmm6,xmm0,xmm1
    f32e:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    f332:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    f336:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    f33a:	c5 c9 fd d0          	vpaddw xmm2,xmm6,xmm0
    f33e:	c5 f9 f9 c6          	vpsubw xmm0,xmm0,xmm6
    f342:	c5 f1 fd f3          	vpaddw xmm6,xmm1,xmm3
    f346:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    f34a:	c4 62 79 1d e2       	vpabsw xmm12,xmm2
    f34f:	c4 62 79 1d f0       	vpabsw xmm14,xmm0
    f354:	c4 62 79 1d ee       	vpabsw xmm13,xmm6
    f359:	c4 62 79 1d fb       	vpabsw xmm15,xmm3
    f35e:	8f e8 98 a3 0d 00 00 	vpperm xmm1,xmm12,xmm14,XMMWORD PTR [rip+0x0]        # f368 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0xa8>
    f365:	00 00 e0 
    f368:	8f 68 98 a3 25 00 00 	vpperm xmm12,xmm12,xmm14,XMMWORD PTR [rip+0x0]        # f372 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0xb2>
    f36f:	00 00 e0 
    f372:	c5 19 ee e1          	vpmaxsw xmm12,xmm12,xmm1
    f376:	c4 41 29 fd d4       	vpaddw xmm10,xmm10,xmm12
    f37b:	8f 68 90 a3 35 00 00 	vpperm xmm14,xmm13,xmm15,XMMWORD PTR [rip+0x0]        # f385 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0xc5>
    f382:	00 00 f0 
    f385:	8f 68 90 a3 2d 00 00 	vpperm xmm13,xmm13,xmm15,XMMWORD PTR [rip+0x0]        # f38f <x264_8_pixel_sa8d_satd_8x8_internal_xop+0xcf>
    f38c:	00 00 f0 
    f38f:	c4 41 11 ee ee       	vpmaxsw xmm13,xmm13,xmm14
    f394:	c4 41 29 fd d5       	vpaddw xmm10,xmm10,xmm13
    f399:	c5 7b 12 3a          	vmovddup xmm15,QWORD PTR [rdx]
    f39d:	c5 7b 12 1c 0a       	vmovddup xmm11,QWORD PTR [rdx+rcx*1]
    f3a2:	c5 fb 12 27          	vmovddup xmm4,QWORD PTR [rdi]
    f3a6:	c5 fb 12 2c 37       	vmovddup xmm5,QWORD PTR [rdi+rsi*1]
    f3ab:	c4 62 01 04 ff       	vpmaddubsw xmm15,xmm15,xmm7
    f3b0:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    f3b5:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    f3ba:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    f3bf:	c4 c1 59 f9 e7       	vpsubw xmm4,xmm4,xmm15
    f3c4:	c4 c1 51 f9 eb       	vpsubw xmm5,xmm5,xmm11
    f3c9:	c5 7b 12 3c 4a       	vmovddup xmm15,QWORD PTR [rdx+rcx*2]
    f3ce:	c4 21 7b 12 1c 0a    	vmovddup xmm11,QWORD PTR [rdx+r9*1]
    f3d4:	c5 7b 12 04 77       	vmovddup xmm8,QWORD PTR [rdi+rsi*2]
    f3d9:	c4 21 7b 12 0c 07    	vmovddup xmm9,QWORD PTR [rdi+r8*1]
    f3df:	c4 62 01 04 ff       	vpmaddubsw xmm15,xmm15,xmm7
    f3e4:	c4 62 39 04 c7       	vpmaddubsw xmm8,xmm8,xmm7
    f3e9:	c4 62 21 04 df       	vpmaddubsw xmm11,xmm11,xmm7
    f3ee:	c4 62 31 04 cf       	vpmaddubsw xmm9,xmm9,xmm7
    f3f3:	c4 41 39 f9 c7       	vpsubw xmm8,xmm8,xmm15
    f3f8:	c4 41 31 f9 cb       	vpsubw xmm9,xmm9,xmm11
    f3fd:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    f401:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
    f405:	c5 59 fd fd          	vpaddw xmm15,xmm4,xmm5
    f409:	c5 d1 f9 ec          	vpsubw xmm5,xmm5,xmm4
    f40d:	c4 c1 39 fd e1       	vpaddw xmm4,xmm8,xmm9
    f412:	c4 41 31 f9 c8       	vpsubw xmm9,xmm9,xmm8
    f417:	c5 01 fd c4          	vpaddw xmm8,xmm15,xmm4
    f41b:	c4 c1 59 f9 e7       	vpsubw xmm4,xmm4,xmm15
    f420:	c5 31 fd fd          	vpaddw xmm15,xmm9,xmm5
    f424:	c5 31 f9 cd          	vpsubw xmm9,xmm9,xmm5
    f428:	c4 42 79 1d e0       	vpabsw xmm12,xmm8
    f42d:	c4 e2 79 1d cc       	vpabsw xmm1,xmm4
    f432:	c4 42 79 1d ef       	vpabsw xmm13,xmm15
    f437:	c4 42 79 1d f1       	vpabsw xmm14,xmm9
    f43c:	8f e8 98 a3 2d 00 00 	vpperm xmm5,xmm12,xmm1,XMMWORD PTR [rip+0x0]        # f446 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x186>
    f443:	00 00 10 
    f446:	8f 68 98 a3 25 00 00 	vpperm xmm12,xmm12,xmm1,XMMWORD PTR [rip+0x0]        # f450 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x190>
    f44d:	00 00 10 
    f450:	c5 19 ee e5          	vpmaxsw xmm12,xmm12,xmm5
    f454:	c4 41 29 fd d4       	vpaddw xmm10,xmm10,xmm12
    f459:	8f e8 90 a3 0d 00 00 	vpperm xmm1,xmm13,xmm14,XMMWORD PTR [rip+0x0]        # f463 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x1a3>
    f460:	00 00 e0 
    f463:	8f 68 90 a3 2d 00 00 	vpperm xmm13,xmm13,xmm14,XMMWORD PTR [rip+0x0]        # f46d <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x1ad>
    f46a:	00 00 e0 
    f46d:	c5 11 ee e9          	vpmaxsw xmm13,xmm13,xmm1
    f471:	c4 41 29 fd d5       	vpaddw xmm10,xmm10,xmm13
    f476:	c5 39 fd e2          	vpaddw xmm12,xmm8,xmm2
    f47a:	c5 39 f9 c2          	vpsubw xmm8,xmm8,xmm2
    f47e:	c5 81 fd d6          	vpaddw xmm2,xmm15,xmm6
    f482:	c5 01 f9 fe          	vpsubw xmm15,xmm15,xmm6
    f486:	c4 c1 18 c6 f0 dd    	vshufps xmm6,xmm12,xmm8,0xdd
    f48c:	c4 41 18 c6 e0 88    	vshufps xmm12,xmm12,xmm8,0x88
    f492:	c5 19 fd c6          	vpaddw xmm8,xmm12,xmm6
    f496:	c4 c1 49 f9 f4       	vpsubw xmm6,xmm6,xmm12
    f49b:	c4 41 68 c6 e7 dd    	vshufps xmm12,xmm2,xmm15,0xdd
    f4a1:	c4 c1 68 c6 d7 88    	vshufps xmm2,xmm2,xmm15,0x88
    f4a7:	c5 19 fd fa          	vpaddw xmm15,xmm12,xmm2
    f4ab:	c5 19 f9 e2          	vpsubw xmm12,xmm12,xmm2
    f4af:	c5 f9 fd d4          	vpaddw xmm2,xmm0,xmm4
    f4b3:	c5 d9 f9 e0          	vpsubw xmm4,xmm4,xmm0
    f4b7:	c5 b1 fd c3          	vpaddw xmm0,xmm9,xmm3
    f4bb:	c5 31 f9 cb          	vpsubw xmm9,xmm9,xmm3
    f4bf:	c5 e8 c6 dc dd       	vshufps xmm3,xmm2,xmm4,0xdd
    f4c4:	c5 e8 c6 d4 88       	vshufps xmm2,xmm2,xmm4,0x88
    f4c9:	c5 e9 fd e3          	vpaddw xmm4,xmm2,xmm3
    f4cd:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    f4d1:	c4 c1 78 c6 d1 dd    	vshufps xmm2,xmm0,xmm9,0xdd
    f4d7:	c4 c1 78 c6 c1 88    	vshufps xmm0,xmm0,xmm9,0x88
    f4dd:	c5 79 fd ca          	vpaddw xmm9,xmm0,xmm2
    f4e1:	c5 e9 f9 d0          	vpsubw xmm2,xmm2,xmm0
    f4e5:	8f e8 b8 a3 05 00 00 	vpperm xmm0,xmm8,xmm6,XMMWORD PTR [rip+0x0]        # f4ef <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x22f>
    f4ec:	00 00 60 
    f4ef:	8f 68 b8 a3 05 00 00 	vpperm xmm8,xmm8,xmm6,XMMWORD PTR [rip+0x0]        # f4f9 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x239>
    f4f6:	00 00 60 
    f4f9:	c4 42 79 1d c0       	vpabsw xmm8,xmm8
    f4fe:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    f503:	c5 39 ee c0          	vpmaxsw xmm8,xmm8,xmm0
    f507:	8f e8 80 a3 35 00 00 	vpperm xmm6,xmm15,xmm12,XMMWORD PTR [rip+0x0]        # f511 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x251>
    f50e:	00 00 c0 
    f511:	8f 68 80 a3 3d 00 00 	vpperm xmm15,xmm15,xmm12,XMMWORD PTR [rip+0x0]        # f51b <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x25b>
    f518:	00 00 c0 
    f51b:	c4 42 79 1d ff       	vpabsw xmm15,xmm15
    f520:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    f525:	c5 01 ee fe          	vpmaxsw xmm15,xmm15,xmm6
    f529:	8f 68 d8 a3 25 00 00 	vpperm xmm12,xmm4,xmm3,XMMWORD PTR [rip+0x0]        # f533 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x273>
    f530:	00 00 30 
    f533:	8f e8 d8 a3 25 00 00 	vpperm xmm4,xmm4,xmm3,XMMWORD PTR [rip+0x0]        # f53d <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x27d>
    f53a:	00 00 30 
    f53d:	c4 e2 79 1d e4       	vpabsw xmm4,xmm4
    f542:	c4 42 79 1d e4       	vpabsw xmm12,xmm12
    f547:	c5 99 ee e4          	vpmaxsw xmm4,xmm12,xmm4
    f54b:	8f e8 b0 a3 1d 00 00 	vpperm xmm3,xmm9,xmm2,XMMWORD PTR [rip+0x0]        # f555 <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x295>
    f552:	00 00 20 
    f555:	8f 68 b0 a3 0d 00 00 	vpperm xmm9,xmm9,xmm2,XMMWORD PTR [rip+0x0]        # f55f <x264_8_pixel_sa8d_satd_8x8_internal_xop+0x29f>
    f55c:	00 00 20 
    f55f:	c4 42 79 1d c9       	vpabsw xmm9,xmm9
    f564:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    f569:	c5 31 ee cb          	vpmaxsw xmm9,xmm9,xmm3
    f56d:	c5 01 fd fc          	vpaddw xmm15,xmm15,xmm4
    f571:	c4 41 39 fd c1       	vpaddw xmm8,xmm8,xmm9
    f576:	c4 41 39 fd c7       	vpaddw xmm8,xmm8,xmm15
    f57b:	c3                   	ret    
    f57c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000f580 <x264_8_pixel_sa8d_satd_16x16_xop>:
    f580:	48 83 ec 48          	sub    rsp,0x48
    f584:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # f58c <x264_8_pixel_sa8d_satd_16x16_xop+0xc>
    f58b:	00 
    f58c:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
    f590:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
    f594:	c4 41 29 ef d2       	vpxor  xmm10,xmm10,xmm10
    f599:	48 8d 42 08          	lea    rax,[rdx+0x8]
    f59d:	4c 8d 57 08          	lea    r10,[rdi+0x8]
    f5a1:	e8 1a fd ff ff       	call   f2c0 <x264_8_pixel_sa8d_satd_8x8_internal_xop>
    f5a6:	c5 79 7f 04 24       	vmovdqa XMMWORD PTR [rsp],xmm8
    f5ab:	e8 10 fd ff ff       	call   f2c0 <x264_8_pixel_sa8d_satd_8x8_internal_xop>
    f5b0:	c5 39 fd 04 24       	vpaddw xmm8,xmm8,XMMWORD PTR [rsp]
    f5b5:	c5 79 7f 04 24       	vmovdqa XMMWORD PTR [rsp],xmm8
    f5ba:	4c 89 d7             	mov    rdi,r10
    f5bd:	48 89 c2             	mov    rdx,rax
    f5c0:	e8 fb fc ff ff       	call   f2c0 <x264_8_pixel_sa8d_satd_8x8_internal_xop>
    f5c5:	c5 39 fd 04 24       	vpaddw xmm8,xmm8,XMMWORD PTR [rsp]
    f5ca:	c5 79 7f 04 24       	vmovdqa XMMWORD PTR [rsp],xmm8
    f5cf:	e8 ec fc ff ff       	call   f2c0 <x264_8_pixel_sa8d_satd_8x8_internal_xop>
    f5d4:	c5 39 fd 04 24       	vpaddw xmm8,xmm8,XMMWORD PTR [rsp]
    f5d9:	8f 49 78 d7 c0       	vphadduwq xmm8,xmm8
    f5de:	c4 41 39 6d f8       	vpunpckhqdq xmm15,xmm8,xmm8
    f5e3:	c4 41 39 fe c7       	vpaddd xmm8,xmm8,xmm15
    f5e8:	8f 49 78 c7 d2       	vphaddwq xmm10,xmm10
    f5ed:	c4 c1 29 6d e2       	vpunpckhqdq xmm4,xmm10,xmm10
    f5f2:	c5 29 fe d4          	vpaddd xmm10,xmm10,xmm4
    f5f6:	c5 79 7e c7          	vmovd  edi,xmm8
    f5fa:	c5 79 7e d0          	vmovd  eax,xmm10
    f5fe:	83 c7 01             	add    edi,0x1
    f601:	48 c1 e0 20          	shl    rax,0x20
    f605:	d1 ef                	shr    edi,1
    f607:	48 09 f8             	or     rax,rdi
    f60a:	48 83 c4 48          	add    rsp,0x48
    f60e:	c3                   	ret    
    f60f:	90                   	nop

000000000000f610 <x264_8_intra_satd_x9_4x4_xop>:
    f610:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
    f617:	c5 fa 6f 4e d8       	vmovdqu xmm1,XMMWORD PTR [rsi-0x28]
    f61c:	c4 e3 71 20 4e 5f 00 	vpinsrb xmm1,xmm1,BYTE PTR [rsi+0x5f],0x0
    f623:	c4 e3 71 20 4e 3f 01 	vpinsrb xmm1,xmm1,BYTE PTR [rsi+0x3f],0x1
    f62a:	c4 e3 71 20 4e 1f 02 	vpinsrb xmm1,xmm1,BYTE PTR [rsi+0x1f],0x2
    f631:	c4 e3 71 20 4e ff 03 	vpinsrb xmm1,xmm1,BYTE PTR [rsi-0x1],0x3
    f638:	c4 e2 71 00 0d 00 00 	vpshufb xmm1,xmm1,XMMWORD PTR [rip+0x0]        # f641 <x264_8_intra_satd_x9_4x4_xop+0x31>
    f63f:	00 00 
    f641:	c5 f9 73 d9 01       	vpsrldq xmm0,xmm1,0x1
    f646:	c5 e9 73 d9 02       	vpsrldq xmm2,xmm1,0x2
    f64b:	c5 f9 e0 e9          	vpavgb xmm5,xmm0,xmm1
    f64f:	c5 79 6f f9          	vmovdqa xmm15,xmm1
    f653:	c5 f1 e0 e2          	vpavgb xmm4,xmm1,xmm2
    f657:	c5 e9 ef d1          	vpxor  xmm2,xmm2,xmm1
    f65b:	c5 e9 db 15 00 00 00 	vpand  xmm2,xmm2,XMMWORD PTR [rip+0x0]        # f663 <x264_8_intra_satd_x9_4x4_xop+0x53>
    f662:	00 
    f663:	c5 d9 d8 e2          	vpsubusb xmm4,xmm4,xmm2
    f667:	c5 f9 e0 c4          	vpavgb xmm0,xmm0,xmm4
    f66b:	c4 e2 79 00 15 00 00 	vpshufb xmm2,xmm0,XMMWORD PTR [rip+0x0]        # f674 <x264_8_intra_satd_x9_4x4_xop+0x64>
    f672:	00 00 
    f674:	c4 e2 79 00 1d 00 00 	vpshufb xmm3,xmm0,XMMWORD PTR [rip+0x0]        # f67d <x264_8_intra_satd_x9_4x4_xop+0x6d>
    f67b:	00 00 
    f67d:	c5 f9 73 f8 05       	vpslldq xmm0,xmm0,0x5
    f682:	c4 e3 51 0f f8 05    	vpalignr xmm7,xmm5,xmm0,0x5
    f688:	c4 e2 41 00 35 00 00 	vpshufb xmm6,xmm7,XMMWORD PTR [rip+0x0]        # f691 <x264_8_intra_satd_x9_4x4_xop+0x81>
    f68f:	00 00 
    f691:	c4 e2 41 00 3d 00 00 	vpshufb xmm7,xmm7,XMMWORD PTR [rip+0x0]        # f69a <x264_8_intra_satd_x9_4x4_xop+0x8a>
    f698:	00 00 
    f69a:	c5 d1 73 dd 05       	vpsrldq xmm5,xmm5,0x5
    f69f:	c4 e3 51 0f e8 06    	vpalignr xmm5,xmm5,xmm0,0x6
    f6a5:	c4 e2 51 00 25 00 00 	vpshufb xmm4,xmm5,XMMWORD PTR [rip+0x0]        # f6ae <x264_8_intra_satd_x9_4x4_xop+0x9e>
    f6ac:	00 00 
    f6ae:	c4 e2 51 00 2d 00 00 	vpshufb xmm5,xmm5,XMMWORD PTR [rip+0x0]        # f6b7 <x264_8_intra_satd_x9_4x4_xop+0xa7>
    f6b5:	00 00 
    f6b7:	c5 f9 7f 14 24       	vmovdqa XMMWORD PTR [rsp],xmm2
    f6bc:	c5 f9 7f 5c 24 10    	vmovdqa XMMWORD PTR [rsp+0x10],xmm3
    f6c2:	c5 f9 7f 64 24 20    	vmovdqa XMMWORD PTR [rsp+0x20],xmm4
    f6c8:	c5 f9 7f 6c 24 30    	vmovdqa XMMWORD PTR [rsp+0x30],xmm5
    f6ce:	c5 f9 7f 74 24 40    	vmovdqa XMMWORD PTR [rsp+0x40],xmm6
    f6d4:	c5 f9 7f 7c 24 50    	vmovdqa XMMWORD PTR [rsp+0x50],xmm7
    f6da:	c5 79 6e 07          	vmovd  xmm8,DWORD PTR [rdi]
    f6de:	c5 79 6e 4f 10       	vmovd  xmm9,DWORD PTR [rdi+0x10]
    f6e3:	c5 79 6e 57 20       	vmovd  xmm10,DWORD PTR [rdi+0x20]
    f6e8:	c5 79 6e 5f 30       	vmovd  xmm11,DWORD PTR [rdi+0x30]
    f6ed:	c5 79 6f 25 00 00 00 	vmovdqa xmm12,XMMWORD PTR [rip+0x0]        # f6f5 <x264_8_intra_satd_x9_4x4_xop+0xe5>
    f6f4:	00 
    f6f5:	c4 41 79 70 c0 00    	vpshufd xmm8,xmm8,0x0
    f6fb:	c4 41 79 70 c9 00    	vpshufd xmm9,xmm9,0x0
    f701:	c4 41 79 70 d2 00    	vpshufd xmm10,xmm10,0x0
    f707:	c4 41 79 70 db 00    	vpshufd xmm11,xmm11,0x0
    f70d:	c4 42 39 04 c4       	vpmaddubsw xmm8,xmm8,xmm12
    f712:	c4 42 31 04 cc       	vpmaddubsw xmm9,xmm9,xmm12
    f717:	c4 42 29 04 d4       	vpmaddubsw xmm10,xmm10,xmm12
    f71c:	c4 42 21 04 dc       	vpmaddubsw xmm11,xmm11,xmm12
    f721:	c5 fb 12 c2          	vmovddup xmm0,xmm2
    f725:	c5 f9 70 ca ee       	vpshufd xmm1,xmm2,0xee
    f72a:	c5 fb 12 d3          	vmovddup xmm2,xmm3
    f72e:	c5 e1 6d db          	vpunpckhqdq xmm3,xmm3,xmm3
    f732:	e8 e9 01 00 00       	call   f920 <x264_8_intra_satd_x9_4x4_xop+0x310>
    f737:	c5 fb 12 d5          	vmovddup xmm2,xmm5
    f73b:	c5 f9 70 dd ee       	vpshufd xmm3,xmm5,0xee
    f740:	c5 f9 6f e8          	vmovdqa xmm5,xmm0
    f744:	c5 fb 12 c4          	vmovddup xmm0,xmm4
    f748:	c5 f9 70 cc ee       	vpshufd xmm1,xmm4,0xee
    f74d:	e8 ce 01 00 00       	call   f920 <x264_8_intra_satd_x9_4x4_xop+0x310>
    f752:	c5 fb 12 d7          	vmovddup xmm2,xmm7
    f756:	c5 f9 70 df ee       	vpshufd xmm3,xmm7,0xee
    f75b:	c5 f9 6f e0          	vmovdqa xmm4,xmm0
    f75f:	c5 fb 12 c6          	vmovddup xmm0,xmm6
    f763:	c5 f9 70 ce ee       	vpshufd xmm1,xmm6,0xee
    f768:	e8 b3 01 00 00       	call   f920 <x264_8_intra_satd_x9_4x4_xop+0x310>
    f76d:	c5 d9 62 e0          	vpunpckldq xmm4,xmm4,xmm0
    f771:	c5 f9 6f 0d 00 00 00 	vmovdqa xmm1,XMMWORD PTR [rip+0x0]        # f779 <x264_8_intra_satd_x9_4x4_xop+0x169>
    f778:	00 
    f779:	c4 62 39 09 c1       	vpsignw xmm8,xmm8,xmm1
    f77e:	c4 62 29 09 d1       	vpsignw xmm10,xmm10,xmm1
    f783:	c4 41 39 fd c1       	vpaddw xmm8,xmm8,xmm9
    f788:	c4 41 29 fd d3       	vpaddw xmm10,xmm10,xmm11
    f78d:	c4 e2 01 00 15 00 00 	vpshufb xmm2,xmm15,XMMWORD PTR [rip+0x0]        # f796 <x264_8_intra_satd_x9_4x4_xop+0x186>
    f794:	00 00 
    f796:	c4 e2 01 00 1d 00 00 	vpshufb xmm3,xmm15,XMMWORD PTR [rip+0x0]        # f79f <x264_8_intra_satd_x9_4x4_xop+0x18f>
    f79d:	00 00 
    f79f:	c5 f9 7f 54 24 60    	vmovdqa XMMWORD PTR [rsp+0x60],xmm2
    f7a5:	c5 f9 7f 5c 24 70    	vmovdqa XMMWORD PTR [rsp+0x70],xmm3
    f7ab:	c4 62 01 00 3d 00 00 	vpshufb xmm15,xmm15,XMMWORD PTR [rip+0x0]        # f7b4 <x264_8_intra_satd_x9_4x4_xop+0x1a4>
    f7b2:	00 00 
    f7b4:	c4 62 01 04 3d 00 00 	vpmaddubsw xmm15,xmm15,XMMWORD PTR [rip+0x0]        # f7bd <x264_8_intra_satd_x9_4x4_xop+0x1ad>
    f7bb:	00 00 
    f7bd:	c4 c1 7a 70 c7 b1    	vpshufhw xmm0,xmm15,0xb1
    f7c3:	c5 fb 70 c0 b1       	vpshuflw xmm0,xmm0,0xb1
    f7c8:	c4 62 01 09 3d 00 00 	vpsignw xmm15,xmm15,XMMWORD PTR [rip+0x0]        # f7d1 <x264_8_intra_satd_x9_4x4_xop+0x1c1>
    f7cf:	00 00 
    f7d1:	c5 81 fd c0          	vpaddw xmm0,xmm15,xmm0
    f7d5:	c5 f9 71 f0 02       	vpsllw xmm0,xmm0,0x2
    f7da:	c5 f9 6d d8          	vpunpckhqdq xmm3,xmm0,xmm0
    f7de:	c4 e2 79 00 0d 00 00 	vpshufb xmm1,xmm0,XMMWORD PTR [rip+0x0]        # f7e7 <x264_8_intra_satd_x9_4x4_xop+0x1d7>
    f7e5:	00 00 
    f7e7:	c4 e2 79 00 15 00 00 	vpshufb xmm2,xmm0,XMMWORD PTR [rip+0x0]        # f7f0 <x264_8_intra_satd_x9_4x4_xop+0x1e0>
    f7ee:	00 00 
    f7f0:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    f7f4:	c4 e2 61 09 1d 00 00 	vpsignw xmm3,xmm3,XMMWORD PTR [rip+0x0]        # f7fd <x264_8_intra_satd_x9_4x4_xop+0x1ed>
    f7fb:	00 00 
    f7fd:	c5 f9 e3 05 00 00 00 	vpavgw xmm0,xmm0,XMMWORD PTR [rip+0x0]        # f805 <x264_8_intra_satd_x9_4x4_xop+0x1f5>
    f804:	00 
    f805:	c5 f9 db 05 00 00 00 	vpand  xmm0,xmm0,XMMWORD PTR [rip+0x0]        # f80d <x264_8_intra_satd_x9_4x4_xop+0x1fd>
    f80c:	00 
    f80d:	c4 c1 39 fd f2       	vpaddw xmm6,xmm8,xmm10
    f812:	c4 41 29 f9 d0       	vpsubw xmm10,xmm10,xmm8
    f817:	8f 68 c8 a3 05 00 00 	vpperm xmm8,xmm6,xmm10,XMMWORD PTR [rip+0x0]        # f821 <x264_8_intra_satd_x9_4x4_xop+0x211>
    f81e:	00 00 a0 
    f821:	8f e8 c8 a3 35 00 00 	vpperm xmm6,xmm6,xmm10,XMMWORD PTR [rip+0x0]        # f82b <x264_8_intra_satd_x9_4x4_xop+0x21b>
    f828:	00 00 a0 
    f82b:	c5 39 fd d6          	vpaddw xmm10,xmm8,xmm6
    f82f:	c5 39 f9 c6          	vpsubw xmm8,xmm8,xmm6
    f833:	c5 f9 7e c1          	vmovd  ecx,xmm0
    f837:	c1 e9 04             	shr    ecx,0x4
    f83a:	69 c9 01 01 01 01    	imul   ecx,ecx,0x1010101
    f840:	89 8c 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],ecx
    f847:	89 8c 24 88 00 00 00 	mov    DWORD PTR [rsp+0x88],ecx
    f84e:	89 8c 24 90 00 00 00 	mov    DWORD PTR [rsp+0x90],ecx
    f855:	89 8c 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],ecx
    f85c:	c4 c1 61 f9 da       	vpsubw xmm3,xmm3,xmm10
    f861:	c4 c1 79 f9 c2       	vpsubw xmm0,xmm0,xmm10
    f866:	c4 c1 71 f9 ca       	vpsubw xmm1,xmm1,xmm10
    f86b:	c4 c1 69 f9 d0       	vpsubw xmm2,xmm2,xmm8
    f870:	c4 42 79 1d c0       	vpabsw xmm8,xmm8
    f875:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    f87a:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    f87f:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
    f884:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    f889:	c5 b9 e3 db          	vpavgw xmm3,xmm8,xmm3
    f88d:	c5 b9 e3 c0          	vpavgw xmm0,xmm8,xmm0
    f891:	c5 f1 e3 ca          	vpavgw xmm1,xmm1,xmm2
    f895:	c4 e2 61 01 d8       	vphaddw xmm3,xmm3,xmm0
    f89a:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
    f89e:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
    f8a2:	8f e9 78 c7 db       	vphaddwq xmm3,xmm3
    f8a7:	8f e9 78 c7 c9       	vphaddwq xmm1,xmm1
    f8ac:	c5 f1 6b cb          	vpackssdw xmm1,xmm1,xmm3
    f8b0:	c5 fa 6f 42 02       	vmovdqu xmm0,XMMWORD PTR [rdx+0x2]
    f8b5:	c5 f9 7e c9          	vmovd  ecx,xmm1
    f8b9:	c4 e3 51 0f e9 08    	vpalignr xmm5,xmm5,xmm1,0x8
    f8bf:	c5 d1 6b ec          	vpackssdw xmm5,xmm5,xmm4
    f8c3:	c5 f9 fd c5          	vpaddw xmm0,xmm0,xmm5
    f8c7:	0f b7 3a             	movzx  edi,WORD PTR [rdx]
    f8ca:	01 f9                	add    ecx,edi
    f8cc:	c4 e2 79 41 c0       	vphminposuw xmm0,xmm0
    f8d1:	c5 f9 7e c0          	vmovd  eax,xmm0
    f8d5:	05 00 00 01 00       	add    eax,0x10000
    f8da:	66 39 c8             	cmp    ax,cx
    f8dd:	0f 4d c1             	cmovge eax,ecx
    f8e0:	89 c1                	mov    ecx,eax
    f8e2:	c1 e9 10             	shr    ecx,0x10
    f8e5:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # f8ec <x264_8_intra_satd_x9_4x4_xop+0x2dc>
    f8ec:	0f b6 14 0a          	movzx  edx,BYTE PTR [rdx+rcx*1]
    f8f0:	8b 0c 14             	mov    ecx,DWORD PTR [rsp+rdx*1]
    f8f3:	89 0e                	mov    DWORD PTR [rsi],ecx
    f8f5:	8b 4c 14 08          	mov    ecx,DWORD PTR [rsp+rdx*1+0x8]
    f8f9:	89 4e 20             	mov    DWORD PTR [rsi+0x20],ecx
    f8fc:	8b 4c 14 10          	mov    ecx,DWORD PTR [rsp+rdx*1+0x10]
    f900:	89 4e 40             	mov    DWORD PTR [rsi+0x40],ecx
    f903:	8b 4c 14 18          	mov    ecx,DWORD PTR [rsp+rdx*1+0x18]
    f907:	89 4e 60             	mov    DWORD PTR [rsi+0x60],ecx
    f90a:	48 81 c4 a8 00 00 00 	add    rsp,0xa8
    f911:	c3                   	ret    
    f912:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    f919:	00 
    f91a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    f920:	c4 c2 79 04 c4       	vpmaddubsw xmm0,xmm0,xmm12
    f925:	c4 c2 71 04 cc       	vpmaddubsw xmm1,xmm1,xmm12
    f92a:	c4 c2 69 04 d4       	vpmaddubsw xmm2,xmm2,xmm12
    f92f:	c4 c2 61 04 dc       	vpmaddubsw xmm3,xmm3,xmm12
    f934:	c4 c1 79 f9 c0       	vpsubw xmm0,xmm0,xmm8
    f939:	c4 c1 71 f9 c9       	vpsubw xmm1,xmm1,xmm9
    f93e:	c4 c1 69 f9 d2       	vpsubw xmm2,xmm2,xmm10
    f943:	c4 c1 61 f9 db       	vpsubw xmm3,xmm3,xmm11
    f948:	c5 79 fd e9          	vpaddw xmm13,xmm0,xmm1
    f94c:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    f950:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    f954:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    f958:	c5 91 fd d0          	vpaddw xmm2,xmm13,xmm0
    f95c:	c4 c1 79 f9 c5       	vpsubw xmm0,xmm0,xmm13
    f961:	c5 71 fd eb          	vpaddw xmm13,xmm1,xmm3
    f965:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    f969:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    f96e:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    f973:	c4 42 79 1d ed       	vpabsw xmm13,xmm13
    f978:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    f97d:	8f e8 e8 a3 0d 00 00 	vpperm xmm1,xmm2,xmm0,XMMWORD PTR [rip+0x0]        # f987 <x264_8_intra_satd_x9_4x4_xop+0x377>
    f984:	00 00 00 
    f987:	8f e8 e8 a3 15 00 00 	vpperm xmm2,xmm2,xmm0,XMMWORD PTR [rip+0x0]        # f991 <x264_8_intra_satd_x9_4x4_xop+0x381>
    f98e:	00 00 00 
    f991:	c5 e9 ee d1          	vpmaxsw xmm2,xmm2,xmm1
    f995:	8f e8 90 a3 05 00 00 	vpperm xmm0,xmm13,xmm3,XMMWORD PTR [rip+0x0]        # f99f <x264_8_intra_satd_x9_4x4_xop+0x38f>
    f99c:	00 00 30 
    f99f:	8f 68 90 a3 2d 00 00 	vpperm xmm13,xmm13,xmm3,XMMWORD PTR [rip+0x0]        # f9a9 <x264_8_intra_satd_x9_4x4_xop+0x399>
    f9a6:	00 00 30 
    f9a9:	c5 11 ee e8          	vpmaxsw xmm13,xmm13,xmm0
    f9ad:	c5 91 fd d2          	vpaddw xmm2,xmm13,xmm2
    f9b1:	c5 e9 f5 15 00 00 00 	vpmaddwd xmm2,xmm2,XMMWORD PTR [rip+0x0]        # f9b9 <x264_8_intra_satd_x9_4x4_xop+0x3a9>
    f9b8:	00 
    f9b9:	c5 69 6d ea          	vpunpckhqdq xmm13,xmm2,xmm2
    f9bd:	c5 91 fe c2          	vpaddd xmm0,xmm13,xmm2
    f9c1:	c3                   	ret    
    f9c2:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    f9c9:	00 
    f9ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000f9d0 <x264_8_hadamard_ac_8x8_xop>:
    f9d0:	c5 f9 6f 3d 00 00 00 	vmovdqa xmm7,XMMWORD PTR [rip+0x0]        # f9d8 <x264_8_hadamard_ac_8x8_xop+0x8>
    f9d7:	00 
    f9d8:	c5 fb 12 04 17       	vmovddup xmm0,QWORD PTR [rdi+rdx*1]
    f9dd:	c5 fb 12 0c 37       	vmovddup xmm1,QWORD PTR [rdi+rsi*1]
    f9e2:	c5 fb 12 14 77       	vmovddup xmm2,QWORD PTR [rdi+rsi*2]
    f9e7:	c5 fb 12 1f          	vmovddup xmm3,QWORD PTR [rdi]
    f9eb:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    f9ef:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    f9f4:	c4 e2 79 04 c7       	vpmaddubsw xmm0,xmm0,xmm7
    f9f9:	c4 e2 61 04 df       	vpmaddubsw xmm3,xmm3,xmm7
    f9fe:	c4 e2 69 04 d7       	vpmaddubsw xmm2,xmm2,xmm7
    fa03:	c5 f9 fd e1          	vpaddw xmm4,xmm0,xmm1
    fa07:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
    fa0b:	c5 e9 fd c3          	vpaddw xmm0,xmm2,xmm3
    fa0f:	c5 e1 f9 da          	vpsubw xmm3,xmm3,xmm2
    fa13:	c5 d9 fd d0          	vpaddw xmm2,xmm4,xmm0
    fa17:	c5 f9 f9 c4          	vpsubw xmm0,xmm0,xmm4
    fa1b:	c5 f1 fd e3          	vpaddw xmm4,xmm1,xmm3
    fa1f:	c5 e1 f9 d9          	vpsubw xmm3,xmm3,xmm1
    fa23:	c5 79 6f c4          	vmovdqa xmm8,xmm4
    fa27:	c5 fb 12 0c 17       	vmovddup xmm1,QWORD PTR [rdi+rdx*1]
    fa2c:	c5 fb 12 2c 37       	vmovddup xmm5,QWORD PTR [rdi+rsi*1]
    fa31:	c5 fb 12 34 77       	vmovddup xmm6,QWORD PTR [rdi+rsi*2]
    fa36:	c5 fb 12 27          	vmovddup xmm4,QWORD PTR [rdi]
    fa3a:	c4 e2 51 04 ef       	vpmaddubsw xmm5,xmm5,xmm7
    fa3f:	c4 e2 71 04 cf       	vpmaddubsw xmm1,xmm1,xmm7
    fa44:	c4 e2 59 04 e7       	vpmaddubsw xmm4,xmm4,xmm7
    fa49:	c4 e2 49 04 f7       	vpmaddubsw xmm6,xmm6,xmm7
    fa4e:	c5 f1 fd fd          	vpaddw xmm7,xmm1,xmm5
    fa52:	c5 d1 f9 e9          	vpsubw xmm5,xmm5,xmm1
    fa56:	c5 c9 fd cc          	vpaddw xmm1,xmm6,xmm4
    fa5a:	c5 d9 f9 e6          	vpsubw xmm4,xmm4,xmm6
    fa5e:	c5 c1 fd f1          	vpaddw xmm6,xmm7,xmm1
    fa62:	c5 f1 f9 cf          	vpsubw xmm1,xmm1,xmm7
    fa66:	c5 d1 fd fc          	vpaddw xmm7,xmm5,xmm4
    fa6a:	c5 d9 f9 e5          	vpsubw xmm4,xmm4,xmm5
    fa6e:	c4 c1 79 6f e8       	vmovdqa xmm5,xmm8
    fa73:	c5 79 6f c1          	vmovdqa xmm8,xmm1
    fa77:	c5 79 6f cc          	vmovdqa xmm9,xmm4
    fa7b:	8f e8 e8 a3 0d 00 00 	vpperm xmm1,xmm2,xmm5,XMMWORD PTR [rip+0x0]        # fa85 <x264_8_hadamard_ac_8x8_xop+0xb5>
    fa82:	00 00 50 
    fa85:	8f e8 e8 a3 15 00 00 	vpperm xmm2,xmm2,xmm5,XMMWORD PTR [rip+0x0]        # fa8f <x264_8_hadamard_ac_8x8_xop+0xbf>
    fa8c:	00 00 50 
    fa8f:	c5 e9 fd e9          	vpaddw xmm5,xmm2,xmm1
    fa93:	c5 f1 f9 ca          	vpsubw xmm1,xmm1,xmm2
    fa97:	8f e8 f8 a3 15 00 00 	vpperm xmm2,xmm0,xmm3,XMMWORD PTR [rip+0x0]        # faa1 <x264_8_hadamard_ac_8x8_xop+0xd1>
    fa9e:	00 00 30 
    faa1:	8f e8 f8 a3 05 00 00 	vpperm xmm0,xmm0,xmm3,XMMWORD PTR [rip+0x0]        # faab <x264_8_hadamard_ac_8x8_xop+0xdb>
    faa8:	00 00 30 
    faab:	c5 f9 fd da          	vpaddw xmm3,xmm0,xmm2
    faaf:	c5 e9 f9 d0          	vpsubw xmm2,xmm2,xmm0
    fab3:	c4 c1 79 6f c0       	vmovdqa xmm0,xmm8
    fab8:	c4 c1 79 6f e1       	vmovdqa xmm4,xmm9
    fabd:	c5 79 6f c1          	vmovdqa xmm8,xmm1
    fac1:	c5 79 6f cd          	vmovdqa xmm9,xmm5
    fac5:	8f e8 c8 a3 0d 00 00 	vpperm xmm1,xmm6,xmm7,XMMWORD PTR [rip+0x0]        # facf <x264_8_hadamard_ac_8x8_xop+0xff>
    facc:	00 00 70 
    facf:	8f e8 c8 a3 35 00 00 	vpperm xmm6,xmm6,xmm7,XMMWORD PTR [rip+0x0]        # fad9 <x264_8_hadamard_ac_8x8_xop+0x109>
    fad6:	00 00 70 
    fad9:	c5 c9 fd f9          	vpaddw xmm7,xmm6,xmm1
    fadd:	c5 f1 f9 ce          	vpsubw xmm1,xmm1,xmm6
    fae1:	8f e8 f8 a3 35 00 00 	vpperm xmm6,xmm0,xmm4,XMMWORD PTR [rip+0x0]        # faeb <x264_8_hadamard_ac_8x8_xop+0x11b>
    fae8:	00 00 40 
    faeb:	8f e8 f8 a3 05 00 00 	vpperm xmm0,xmm0,xmm4,XMMWORD PTR [rip+0x0]        # faf5 <x264_8_hadamard_ac_8x8_xop+0x125>
    faf2:	00 00 40 
    faf5:	c5 f9 fd e6          	vpaddw xmm4,xmm0,xmm6
    faf9:	c5 c9 f9 f0          	vpsubw xmm6,xmm6,xmm0
    fafd:	c4 c1 79 6f e9       	vmovdqa xmm5,xmm9
    fb02:	c5 79 6f cb          	vmovdqa xmm9,xmm3
    fb06:	c5 79 6f d2          	vmovdqa xmm10,xmm2
    fb0a:	c4 e2 79 1d c5       	vpabsw xmm0,xmm5
    fb0f:	c4 e2 79 1d df       	vpabsw xmm3,xmm7
    fb14:	c4 e2 79 1d d1       	vpabsw xmm2,xmm1
    fb19:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    fb1d:	c5 d1 fd ef          	vpaddw xmm5,xmm5,xmm7
    fb21:	c5 c1 fd ff          	vpaddw xmm7,xmm7,xmm7
    fb25:	c5 c1 f9 fd          	vpsubw xmm7,xmm7,xmm5
    fb29:	c5 f9 db 05 00 00 00 	vpand  xmm0,xmm0,XMMWORD PTR [rip+0x0]        # fb31 <x264_8_hadamard_ac_8x8_xop+0x161>
    fb30:	00 
    fb31:	c4 c2 79 1d d8       	vpabsw xmm3,xmm8
    fb36:	c5 f9 fd c2          	vpaddw xmm0,xmm0,xmm2
    fb3a:	c4 c2 79 1d d1       	vpabsw xmm2,xmm9
    fb3f:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    fb43:	c4 c2 79 1d da       	vpabsw xmm3,xmm10
    fb48:	c5 f9 fd c2          	vpaddw xmm0,xmm0,xmm2
    fb4c:	c4 e2 79 1d d4       	vpabsw xmm2,xmm4
    fb51:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    fb55:	c4 e2 79 1d de       	vpabsw xmm3,xmm6
    fb5a:	c5 f9 fd c2          	vpaddw xmm0,xmm0,xmm2
    fb5e:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
    fb62:	c5 a9 fd d6          	vpaddw xmm2,xmm10,xmm6
    fb66:	c4 c1 49 f9 f2       	vpsubw xmm6,xmm6,xmm10
    fb6b:	c5 f9 7f 44 24 28    	vmovdqa XMMWORD PTR [rsp+0x28],xmm0
    fb71:	c5 b1 fd dc          	vpaddw xmm3,xmm9,xmm4
    fb75:	c4 c1 59 f9 e1       	vpsubw xmm4,xmm4,xmm9
    fb7a:	c5 b9 fd c1          	vpaddw xmm0,xmm8,xmm1
    fb7e:	c4 c1 71 f9 c8       	vpsubw xmm1,xmm1,xmm8
    fb83:	c5 79 6f cf          	vmovdqa xmm9,xmm7
    fb87:	c5 e8 c6 fe dd       	vshufps xmm7,xmm2,xmm6,0xdd
    fb8c:	c5 e8 c6 d6 88       	vshufps xmm2,xmm2,xmm6,0x88
    fb91:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
    fb96:	c4 e2 79 1d ff       	vpabsw xmm7,xmm7
    fb9b:	c5 e9 ee d7          	vpmaxsw xmm2,xmm2,xmm7
    fb9f:	c5 e0 c6 fc dd       	vshufps xmm7,xmm3,xmm4,0xdd
    fba4:	c5 e0 c6 dc 88       	vshufps xmm3,xmm3,xmm4,0x88
    fba9:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
    fbae:	c4 e2 79 1d ff       	vpabsw xmm7,xmm7
    fbb3:	c5 e1 ee df          	vpmaxsw xmm3,xmm3,xmm7
    fbb7:	c4 c1 79 6f f1       	vmovdqa xmm6,xmm9
    fbbc:	c5 f8 c6 f9 dd       	vshufps xmm7,xmm0,xmm1,0xdd
    fbc1:	c5 f8 c6 c1 88       	vshufps xmm0,xmm0,xmm1,0x88
    fbc6:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
    fbcb:	c4 e2 79 1d ff       	vpabsw xmm7,xmm7
    fbd0:	c5 f9 ee c7          	vpmaxsw xmm0,xmm0,xmm7
    fbd4:	c5 d0 c6 fe dd       	vshufps xmm7,xmm5,xmm6,0xdd
    fbd9:	c5 d0 c6 ee 88       	vshufps xmm5,xmm5,xmm6,0x88
    fbde:	c5 d1 fd f7          	vpaddw xmm6,xmm5,xmm7
    fbe2:	c5 c1 f9 fd          	vpsubw xmm7,xmm7,xmm5
    fbe6:	c5 e1 fd da          	vpaddw xmm3,xmm3,xmm2
    fbea:	c5 e1 fd d8          	vpaddw xmm3,xmm3,xmm0
    fbee:	c5 e1 fd db          	vpaddw xmm3,xmm3,xmm3
    fbf2:	c4 e2 79 1d ff       	vpabsw xmm7,xmm7
    fbf7:	c5 c9 db 35 00 00 00 	vpand  xmm6,xmm6,XMMWORD PTR [rip+0x0]        # fbff <x264_8_hadamard_ac_8x8_xop+0x22f>
    fbfe:	00 
    fbff:	c4 e2 79 1d f6       	vpabsw xmm6,xmm6
    fc04:	c5 e1 fd df          	vpaddw xmm3,xmm3,xmm7
    fc08:	c5 e1 fd de          	vpaddw xmm3,xmm3,xmm6
    fc0c:	c5 f9 7f 5c 24 18    	vmovdqa XMMWORD PTR [rsp+0x18],xmm3
    fc12:	c3                   	ret    
    fc13:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    fc1a:	00 
    fc1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000fc20 <x264_8_pixel_hadamard_ac_16x16_xop>:
    fc20:	48 89 e1             	mov    rcx,rsp
    fc23:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    fc27:	48 83 ec 30          	sub    rsp,0x30
    fc2b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    fc2f:	e8 9c fd ff ff       	call   f9d0 <x264_8_hadamard_ac_8x8_xop>
    fc34:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    fc38:	48 83 ec 20          	sub    rsp,0x20
    fc3c:	e8 8f fd ff ff       	call   f9d0 <x264_8_hadamard_ac_8x8_xop>
    fc41:	48 f7 da             	neg    rdx
    fc44:	48 83 ec 20          	sub    rsp,0x20
    fc48:	48 8d 7c 97 08       	lea    rdi,[rdi+rdx*4+0x8]
    fc4d:	48 f7 da             	neg    rdx
    fc50:	e8 7b fd ff ff       	call   f9d0 <x264_8_hadamard_ac_8x8_xop>
    fc55:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    fc59:	48 83 ec 20          	sub    rsp,0x20
    fc5d:	e8 6e fd ff ff       	call   f9d0 <x264_8_hadamard_ac_8x8_xop>
    fc62:	c5 f9 6f 44 24 20    	vmovdqa xmm0,XMMWORD PTR [rsp+0x20]
    fc68:	c5 e1 dd 5c 24 30    	vpaddusw xmm3,xmm3,XMMWORD PTR [rsp+0x30]
    fc6e:	c5 f9 dd 44 24 40    	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x40]
    fc74:	c5 e1 dd 5c 24 50    	vpaddusw xmm3,xmm3,XMMWORD PTR [rsp+0x50]
    fc7a:	c5 f9 dd 44 24 60    	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x60]
    fc80:	c5 e1 dd 5c 24 70    	vpaddusw xmm3,xmm3,XMMWORD PTR [rsp+0x70]
    fc86:	c5 f9 dd 84 24 80 00 	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x80]
    fc8d:	00 00 
    fc8f:	c5 e1 71 d3 01       	vpsrlw xmm3,xmm3,0x1
    fc94:	8f e9 78 d7 db       	vphadduwq xmm3,xmm3
    fc99:	c5 e1 6d f3          	vpunpckhqdq xmm6,xmm3,xmm3
    fc9d:	c5 e1 fe de          	vpaddd xmm3,xmm3,xmm6
    fca1:	8f e9 78 c7 c0       	vphaddwq xmm0,xmm0
    fca6:	c5 f9 6d d0          	vpunpckhqdq xmm2,xmm0,xmm0
    fcaa:	c5 f9 fe c2          	vpaddd xmm0,xmm0,xmm2
    fcae:	c5 f9 7e da          	vmovd  edx,xmm3
    fcb2:	c5 f9 7e c0          	vmovd  eax,xmm0
    fcb6:	d1 ea                	shr    edx,1
    fcb8:	d1 e8                	shr    eax,1
    fcba:	48 c1 e2 20          	shl    rdx,0x20
    fcbe:	48 01 d0             	add    rax,rdx
    fcc1:	48 89 cc             	mov    rsp,rcx
    fcc4:	c3                   	ret    
    fcc5:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    fccc:	00 
    fccd:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000fcd0 <x264_8_pixel_hadamard_ac_16x8_xop>:
    fcd0:	48 89 e1             	mov    rcx,rsp
    fcd3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    fcd7:	48 83 ec 30          	sub    rsp,0x30
    fcdb:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    fcdf:	e8 ec fc ff ff       	call   f9d0 <x264_8_hadamard_ac_8x8_xop>
    fce4:	48 f7 de             	neg    rsi
    fce7:	48 83 ec 20          	sub    rsp,0x20
    fceb:	48 8d 7c b7 08       	lea    rdi,[rdi+rsi*4+0x8]
    fcf0:	48 f7 de             	neg    rsi
    fcf3:	e8 d8 fc ff ff       	call   f9d0 <x264_8_hadamard_ac_8x8_xop>
    fcf8:	c5 f9 6f 44 24 20    	vmovdqa xmm0,XMMWORD PTR [rsp+0x20]
    fcfe:	c5 e1 dd 5c 24 30    	vpaddusw xmm3,xmm3,XMMWORD PTR [rsp+0x30]
    fd04:	c5 f9 dd 44 24 40    	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x40]
    fd0a:	8f e9 78 d7 db       	vphadduwq xmm3,xmm3
    fd0f:	c5 e1 6d f3          	vpunpckhqdq xmm6,xmm3,xmm3
    fd13:	c5 e1 fe de          	vpaddd xmm3,xmm3,xmm6
    fd17:	8f e9 78 c7 c0       	vphaddwq xmm0,xmm0
    fd1c:	c5 f9 6d d0          	vpunpckhqdq xmm2,xmm0,xmm0
    fd20:	c5 f9 fe c2          	vpaddd xmm0,xmm0,xmm2
    fd24:	c5 f9 7e da          	vmovd  edx,xmm3
    fd28:	c5 f9 7e c0          	vmovd  eax,xmm0
    fd2c:	c1 ea 02             	shr    edx,0x2
    fd2f:	d1 e8                	shr    eax,1
    fd31:	48 c1 e2 20          	shl    rdx,0x20
    fd35:	48 01 d0             	add    rax,rdx
    fd38:	48 89 cc             	mov    rsp,rcx
    fd3b:	c3                   	ret    
    fd3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000fd40 <x264_8_pixel_hadamard_ac_8x16_xop>:
    fd40:	48 89 e1             	mov    rcx,rsp
    fd43:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    fd47:	48 83 ec 30          	sub    rsp,0x30
    fd4b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    fd4f:	e8 7c fc ff ff       	call   f9d0 <x264_8_hadamard_ac_8x8_xop>
    fd54:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    fd58:	48 83 ec 20          	sub    rsp,0x20
    fd5c:	e8 6f fc ff ff       	call   f9d0 <x264_8_hadamard_ac_8x8_xop>
    fd61:	c5 f9 6f 44 24 20    	vmovdqa xmm0,XMMWORD PTR [rsp+0x20]
    fd67:	c5 e1 dd 5c 24 30    	vpaddusw xmm3,xmm3,XMMWORD PTR [rsp+0x30]
    fd6d:	c5 f9 dd 44 24 40    	vpaddusw xmm0,xmm0,XMMWORD PTR [rsp+0x40]
    fd73:	8f e9 78 d7 db       	vphadduwq xmm3,xmm3
    fd78:	c5 e1 6d f3          	vpunpckhqdq xmm6,xmm3,xmm3
    fd7c:	c5 e1 fe de          	vpaddd xmm3,xmm3,xmm6
    fd80:	8f e9 78 c7 c0       	vphaddwq xmm0,xmm0
    fd85:	c5 f9 6d d0          	vpunpckhqdq xmm2,xmm0,xmm0
    fd89:	c5 f9 fe c2          	vpaddd xmm0,xmm0,xmm2
    fd8d:	c5 f9 7e da          	vmovd  edx,xmm3
    fd91:	c5 f9 7e c0          	vmovd  eax,xmm0
    fd95:	c1 ea 02             	shr    edx,0x2
    fd98:	d1 e8                	shr    eax,1
    fd9a:	48 c1 e2 20          	shl    rdx,0x20
    fd9e:	48 01 d0             	add    rax,rdx
    fda1:	48 89 cc             	mov    rsp,rcx
    fda4:	c3                   	ret    
    fda5:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    fdac:	00 
    fdad:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000fdb0 <x264_8_pixel_hadamard_ac_8x8_xop>:
    fdb0:	48 89 e1             	mov    rcx,rsp
    fdb3:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    fdb7:	48 83 ec 30          	sub    rsp,0x30
    fdbb:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
    fdbf:	e8 0c fc ff ff       	call   f9d0 <x264_8_hadamard_ac_8x8_xop>
    fdc4:	c5 f9 6f 44 24 20    	vmovdqa xmm0,XMMWORD PTR [rsp+0x20]
    fdca:	8f e9 78 d7 db       	vphadduwq xmm3,xmm3
    fdcf:	c5 e1 6d f3          	vpunpckhqdq xmm6,xmm3,xmm3
    fdd3:	c5 e1 fe de          	vpaddd xmm3,xmm3,xmm6
    fdd7:	8f e9 78 c7 c0       	vphaddwq xmm0,xmm0
    fddc:	c5 f9 6d d0          	vpunpckhqdq xmm2,xmm0,xmm0
    fde0:	c5 f9 fe c2          	vpaddd xmm0,xmm0,xmm2
    fde4:	c5 f9 7e da          	vmovd  edx,xmm3
    fde8:	c5 f9 7e c0          	vmovd  eax,xmm0
    fdec:	c1 ea 02             	shr    edx,0x2
    fdef:	d1 e8                	shr    eax,1
    fdf1:	48 c1 e2 20          	shl    rdx,0x20
    fdf5:	48 01 d0             	add    rax,rdx
    fdf8:	48 89 cc             	mov    rsp,rcx
    fdfb:	c3                   	ret    
    fdfc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000fe00 <x264_8_hadamard_ac_8x8_avx2>:
    fe00:	c5 fd 6f 3d 00 00 00 	vmovdqa ymm7,YMMWORD PTR [rip+0x0]        # fe08 <x264_8_hadamard_ac_8x8_avx2+0x8>
    fe07:	00 
    fe08:	c5 f9 6f 04 17       	vmovdqa xmm0,XMMWORD PTR [rdi+rdx*1]
    fe0d:	c5 f9 6f 0c 37       	vmovdqa xmm1,XMMWORD PTR [rdi+rsi*1]
    fe12:	c5 f9 6f 14 77       	vmovdqa xmm2,XMMWORD PTR [rdi+rsi*2]
    fe17:	c5 f9 6f 1f          	vmovdqa xmm3,XMMWORD PTR [rdi]
    fe1b:	c4 e3 fd 00 c0 05    	vpermq ymm0,ymm0,0x5
    fe21:	c4 e3 fd 00 c9 05    	vpermq ymm1,ymm1,0x5
    fe27:	c4 e3 fd 00 d2 05    	vpermq ymm2,ymm2,0x5
    fe2d:	c4 e3 fd 00 db 05    	vpermq ymm3,ymm3,0x5
    fe33:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
    fe37:	c4 e2 75 04 cf       	vpmaddubsw ymm1,ymm1,ymm7
    fe3c:	c4 e2 7d 04 c7       	vpmaddubsw ymm0,ymm0,ymm7
    fe41:	c4 e2 65 04 df       	vpmaddubsw ymm3,ymm3,ymm7
    fe46:	c4 e2 6d 04 d7       	vpmaddubsw ymm2,ymm2,ymm7
    fe4b:	c5 fd fd e1          	vpaddw ymm4,ymm0,ymm1
    fe4f:	c5 f5 f9 c8          	vpsubw ymm1,ymm1,ymm0
    fe53:	c5 ed fd c3          	vpaddw ymm0,ymm2,ymm3
    fe57:	c5 e5 f9 da          	vpsubw ymm3,ymm3,ymm2
    fe5b:	c5 dd fd d0          	vpaddw ymm2,ymm4,ymm0
    fe5f:	c5 fd f9 c4          	vpsubw ymm0,ymm0,ymm4
    fe63:	c5 f5 fd e3          	vpaddw ymm4,ymm1,ymm3
    fe67:	c5 e5 f9 d9          	vpsubw ymm3,ymm3,ymm1
    fe6b:	c5 7d 6f c4          	vmovdqa ymm8,ymm4
    fe6f:	c5 f9 6f 0c 17       	vmovdqa xmm1,XMMWORD PTR [rdi+rdx*1]
    fe74:	c5 f9 6f 2c 37       	vmovdqa xmm5,XMMWORD PTR [rdi+rsi*1]
    fe79:	c5 f9 6f 34 77       	vmovdqa xmm6,XMMWORD PTR [rdi+rsi*2]
    fe7e:	c5 f9 6f 27          	vmovdqa xmm4,XMMWORD PTR [rdi]
    fe82:	c4 e3 fd 00 c9 05    	vpermq ymm1,ymm1,0x5
    fe88:	c4 e3 fd 00 ed 05    	vpermq ymm5,ymm5,0x5
    fe8e:	c4 e3 fd 00 f6 05    	vpermq ymm6,ymm6,0x5
    fe94:	c4 e3 fd 00 e4 05    	vpermq ymm4,ymm4,0x5
    fe9a:	c4 e2 55 04 ef       	vpmaddubsw ymm5,ymm5,ymm7
    fe9f:	c4 e2 75 04 cf       	vpmaddubsw ymm1,ymm1,ymm7
    fea4:	c4 e2 5d 04 e7       	vpmaddubsw ymm4,ymm4,ymm7
    fea9:	c4 e2 4d 04 f7       	vpmaddubsw ymm6,ymm6,ymm7
    feae:	c5 f5 fd fd          	vpaddw ymm7,ymm1,ymm5
    feb2:	c5 d5 f9 e9          	vpsubw ymm5,ymm5,ymm1
    feb6:	c5 cd fd cc          	vpaddw ymm1,ymm6,ymm4
    feba:	c5 dd f9 e6          	vpsubw ymm4,ymm4,ymm6
    febe:	c5 c5 fd f1          	vpaddw ymm6,ymm7,ymm1
    fec2:	c5 f5 f9 cf          	vpsubw ymm1,ymm1,ymm7
    fec6:	c5 d5 fd fc          	vpaddw ymm7,ymm5,ymm4
    feca:	c5 dd f9 e5          	vpsubw ymm4,ymm4,ymm5
    fece:	c4 c1 7d 6f e8       	vmovdqa ymm5,ymm8
    fed3:	c5 7d 6f c1          	vmovdqa ymm8,ymm1
    fed7:	c5 7d 6f cc          	vmovdqa ymm9,ymm4
    fedb:	c5 f5 72 d2 10       	vpsrld ymm1,ymm2,0x10
    fee0:	c4 e3 75 0e cd aa    	vpblendw ymm1,ymm1,ymm5,0xaa
    fee6:	c5 d5 72 f5 10       	vpslld ymm5,ymm5,0x10
    feeb:	c4 e3 55 0e ea 55    	vpblendw ymm5,ymm5,ymm2,0x55
    fef1:	c5 f5 fd d5          	vpaddw ymm2,ymm1,ymm5
    fef5:	c5 d5 f9 e9          	vpsubw ymm5,ymm5,ymm1
    fef9:	c5 f5 72 d0 10       	vpsrld ymm1,ymm0,0x10
    fefe:	c4 e3 75 0e cb aa    	vpblendw ymm1,ymm1,ymm3,0xaa
    ff04:	c5 e5 72 f3 10       	vpslld ymm3,ymm3,0x10
    ff09:	c4 e3 65 0e d8 55    	vpblendw ymm3,ymm3,ymm0,0x55
    ff0f:	c5 f5 fd c3          	vpaddw ymm0,ymm1,ymm3
    ff13:	c5 e5 f9 d9          	vpsubw ymm3,ymm3,ymm1
    ff17:	c4 c1 7d 6f c8       	vmovdqa ymm1,ymm8
    ff1c:	c4 c1 7d 6f e1       	vmovdqa ymm4,ymm9
    ff21:	c5 7d 6f c5          	vmovdqa ymm8,ymm5
    ff25:	c5 7d 6f ca          	vmovdqa ymm9,ymm2
    ff29:	c5 d5 72 d6 10       	vpsrld ymm5,ymm6,0x10
    ff2e:	c4 e3 55 0e ef aa    	vpblendw ymm5,ymm5,ymm7,0xaa
    ff34:	c5 c5 72 f7 10       	vpslld ymm7,ymm7,0x10
    ff39:	c4 e3 45 0e fe 55    	vpblendw ymm7,ymm7,ymm6,0x55
    ff3f:	c5 d5 fd f7          	vpaddw ymm6,ymm5,ymm7
    ff43:	c5 c5 f9 fd          	vpsubw ymm7,ymm7,ymm5
    ff47:	c5 d5 72 d1 10       	vpsrld ymm5,ymm1,0x10
    ff4c:	c4 e3 55 0e ec aa    	vpblendw ymm5,ymm5,ymm4,0xaa
    ff52:	c5 dd 72 f4 10       	vpslld ymm4,ymm4,0x10
    ff57:	c4 e3 5d 0e e1 55    	vpblendw ymm4,ymm4,ymm1,0x55
    ff5d:	c5 d5 fd cc          	vpaddw ymm1,ymm5,ymm4
    ff61:	c5 dd f9 e5          	vpsubw ymm4,ymm4,ymm5
    ff65:	c4 c1 7d 6f d1       	vmovdqa ymm2,ymm9
    ff6a:	c5 7d 6f c8          	vmovdqa ymm9,ymm0
    ff6e:	c5 7d 6f d3          	vmovdqa ymm10,ymm3
    ff72:	c4 e2 7d 1d ea       	vpabsw ymm5,ymm2
    ff77:	c4 e2 7d 1d c6       	vpabsw ymm0,ymm6
    ff7c:	c4 e2 7d 1d df       	vpabsw ymm3,ymm7
    ff81:	c5 d5 fd e8          	vpaddw ymm5,ymm5,ymm0
    ff85:	c5 ed fd d6          	vpaddw ymm2,ymm2,ymm6
    ff89:	c5 cd fd f6          	vpaddw ymm6,ymm6,ymm6
    ff8d:	c5 cd f9 f2          	vpsubw ymm6,ymm6,ymm2
    ff91:	c5 d5 db 2d 00 00 00 	vpand  ymm5,ymm5,YMMWORD PTR [rip+0x0]        # ff99 <x264_8_hadamard_ac_8x8_avx2+0x199>
    ff98:	00 
    ff99:	c4 c2 7d 1d c0       	vpabsw ymm0,ymm8
    ff9e:	c5 d5 fd eb          	vpaddw ymm5,ymm5,ymm3
    ffa2:	c4 c2 7d 1d d9       	vpabsw ymm3,ymm9
    ffa7:	c5 d5 fd e8          	vpaddw ymm5,ymm5,ymm0
    ffab:	c4 c2 7d 1d c2       	vpabsw ymm0,ymm10
    ffb0:	c5 d5 fd eb          	vpaddw ymm5,ymm5,ymm3
    ffb4:	c4 e2 7d 1d d9       	vpabsw ymm3,ymm1
    ffb9:	c5 d5 fd e8          	vpaddw ymm5,ymm5,ymm0
    ffbd:	c4 e2 7d 1d c4       	vpabsw ymm0,ymm4
    ffc2:	c5 d5 fd eb          	vpaddw ymm5,ymm5,ymm3
    ffc6:	c5 d5 fd e8          	vpaddw ymm5,ymm5,ymm0
    ffca:	c5 ad fd dc          	vpaddw ymm3,ymm10,ymm4
    ffce:	c4 c1 5d f9 e2       	vpsubw ymm4,ymm4,ymm10
    ffd3:	c5 fd 7f 6c 24 48    	vmovdqa YMMWORD PTR [rsp+0x48],ymm5
    ffd9:	c5 b5 fd c1          	vpaddw ymm0,ymm9,ymm1
    ffdd:	c4 c1 75 f9 c9       	vpsubw ymm1,ymm1,ymm9
    ffe2:	c5 bd fd ef          	vpaddw ymm5,ymm8,ymm7
    ffe6:	c4 c1 45 f9 f8       	vpsubw ymm7,ymm7,ymm8
    ffeb:	c5 7d 6f ce          	vmovdqa ymm9,ymm6
    ffef:	c5 e4 c6 f4 dd       	vshufps ymm6,ymm3,ymm4,0xdd
    fff4:	c5 e4 c6 dc 88       	vshufps ymm3,ymm3,ymm4,0x88
    fff9:	c4 e2 7d 1d db       	vpabsw ymm3,ymm3
    fffe:	c4 e2 7d 1d f6       	vpabsw ymm6,ymm6
   10003:	c5 e5 ee de          	vpmaxsw ymm3,ymm3,ymm6
   10007:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
   1000c:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
   10011:	c4 e2 7d 1d c0       	vpabsw ymm0,ymm0
   10016:	c4 e2 7d 1d f6       	vpabsw ymm6,ymm6
   1001b:	c5 fd ee c6          	vpmaxsw ymm0,ymm0,ymm6
   1001f:	c4 c1 7d 6f e1       	vmovdqa ymm4,ymm9
   10024:	c5 d4 c6 f7 dd       	vshufps ymm6,ymm5,ymm7,0xdd
   10029:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
   1002e:	c4 e2 7d 1d ed       	vpabsw ymm5,ymm5
   10033:	c4 e2 7d 1d f6       	vpabsw ymm6,ymm6
   10038:	c5 d5 ee ee          	vpmaxsw ymm5,ymm5,ymm6
   1003c:	c5 ec c6 f4 dd       	vshufps ymm6,ymm2,ymm4,0xdd
   10041:	c5 ec c6 d4 88       	vshufps ymm2,ymm2,ymm4,0x88
   10046:	c5 ed fd e6          	vpaddw ymm4,ymm2,ymm6
   1004a:	c5 cd f9 f2          	vpsubw ymm6,ymm6,ymm2
   1004e:	c5 fd fd c3          	vpaddw ymm0,ymm0,ymm3
   10052:	c5 fd fd c5          	vpaddw ymm0,ymm0,ymm5
   10056:	c5 fd fd c0          	vpaddw ymm0,ymm0,ymm0
   1005a:	c4 e2 7d 1d f6       	vpabsw ymm6,ymm6
   1005f:	c5 dd db 25 00 00 00 	vpand  ymm4,ymm4,YMMWORD PTR [rip+0x0]        # 10067 <x264_8_hadamard_ac_8x8_avx2+0x267>
   10066:	00 
   10067:	c4 e2 7d 1d e4       	vpabsw ymm4,ymm4
   1006c:	c5 fd fd c6          	vpaddw ymm0,ymm0,ymm6
   10070:	c5 fd fd c4          	vpaddw ymm0,ymm0,ymm4
   10074:	c5 fd 7f 44 24 28    	vmovdqa YMMWORD PTR [rsp+0x28],ymm0
   1007a:	c3                   	ret    
   1007b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000010080 <x264_8_pixel_hadamard_ac_16x16_avx2>:
   10080:	48 89 e1             	mov    rcx,rsp
   10083:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
   10087:	48 83 ec 60          	sub    rsp,0x60
   1008b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
   1008f:	e8 6c fd ff ff       	call   fe00 <x264_8_hadamard_ac_8x8_avx2>
   10094:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   10098:	48 83 ec 40          	sub    rsp,0x40
   1009c:	e8 5f fd ff ff       	call   fe00 <x264_8_hadamard_ac_8x8_avx2>
   100a1:	c5 fd 6f 6c 24 40    	vmovdqa ymm5,YMMWORD PTR [rsp+0x40]
   100a7:	c5 fd dd 44 24 60    	vpaddusw ymm0,ymm0,YMMWORD PTR [rsp+0x60]
   100ad:	c5 d5 dd ac 24 80 00 	vpaddusw ymm5,ymm5,YMMWORD PTR [rsp+0x80]
   100b4:	00 00 
   100b6:	c4 e3 7d 39 c4 01    	vextracti128 xmm4,ymm0,0x1
   100bc:	c4 e3 7d 39 eb 01    	vextracti128 xmm3,ymm5,0x1
   100c2:	c5 f9 dd c4          	vpaddusw xmm0,xmm0,xmm4
   100c6:	c5 d1 dd eb          	vpaddusw xmm5,xmm5,xmm3
   100ca:	c5 d9 72 d0 10       	vpsrld xmm4,xmm0,0x10
   100cf:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
   100d4:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
   100d9:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
   100dd:	c5 f9 6d e0          	vpunpckhqdq xmm4,xmm0,xmm0
   100e1:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
   100e5:	c5 fb 70 e0 4e       	vpshuflw xmm4,xmm0,0x4e
   100ea:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
   100ee:	c5 d1 f5 2d 00 00 00 	vpmaddwd xmm5,xmm5,XMMWORD PTR [rip+0x0]        # 100f6 <x264_8_pixel_hadamard_ac_16x16_avx2+0x76>
   100f5:	00 
   100f6:	c5 d1 6d dd          	vpunpckhqdq xmm3,xmm5,xmm5
   100fa:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
   100fe:	c5 fb 70 dd 4e       	vpshuflw xmm3,xmm5,0x4e
   10103:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
   10107:	c5 f9 7e c2          	vmovd  edx,xmm0
   1010b:	c5 f9 7e e8          	vmovd  eax,xmm5
   1010f:	c1 ea 02             	shr    edx,0x2
   10112:	d1 e8                	shr    eax,1
   10114:	48 c1 e2 20          	shl    rdx,0x20
   10118:	48 01 d0             	add    rax,rdx
   1011b:	48 89 cc             	mov    rsp,rcx
   1011e:	c5 f8 77             	vzeroupper 
   10121:	c3                   	ret    
   10122:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   10129:	00 
   1012a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010130 <x264_8_pixel_hadamard_ac_16x8_avx2>:
   10130:	48 89 e1             	mov    rcx,rsp
   10133:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
   10137:	48 83 ec 60          	sub    rsp,0x60
   1013b:	48 8d 14 76          	lea    rdx,[rsi+rsi*2]
   1013f:	e8 bc fc ff ff       	call   fe00 <x264_8_hadamard_ac_8x8_avx2>
   10144:	c5 fd 6f 6c 24 40    	vmovdqa ymm5,YMMWORD PTR [rsp+0x40]
   1014a:	c4 e3 7d 39 c4 01    	vextracti128 xmm4,ymm0,0x1
   10150:	c4 e3 7d 39 eb 01    	vextracti128 xmm3,ymm5,0x1
   10156:	c5 f9 dd c4          	vpaddusw xmm0,xmm0,xmm4
   1015a:	c5 d1 dd eb          	vpaddusw xmm5,xmm5,xmm3
   1015e:	c5 d9 72 d0 10       	vpsrld xmm4,xmm0,0x10
   10163:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
   10168:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
   1016d:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
   10171:	c5 f9 6d e0          	vpunpckhqdq xmm4,xmm0,xmm0
   10175:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
   10179:	c5 fb 70 e0 4e       	vpshuflw xmm4,xmm0,0x4e
   1017e:	c5 f9 fe c4          	vpaddd xmm0,xmm0,xmm4
   10182:	c5 d1 f5 2d 00 00 00 	vpmaddwd xmm5,xmm5,XMMWORD PTR [rip+0x0]        # 1018a <x264_8_pixel_hadamard_ac_16x8_avx2+0x5a>
   10189:	00 
   1018a:	c5 d1 6d dd          	vpunpckhqdq xmm3,xmm5,xmm5
   1018e:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
   10192:	c5 fb 70 dd 4e       	vpshuflw xmm3,xmm5,0x4e
   10197:	c5 d1 fe eb          	vpaddd xmm5,xmm5,xmm3
   1019b:	c5 f9 7e c2          	vmovd  edx,xmm0
   1019f:	c5 f9 7e e8          	vmovd  eax,xmm5
   101a3:	c1 ea 02             	shr    edx,0x2
   101a6:	d1 e8                	shr    eax,1
   101a8:	48 c1 e2 20          	shl    rdx,0x20
   101ac:	48 01 d0             	add    rax,rdx
   101af:	48 89 cc             	mov    rsp,rcx
   101b2:	c5 f8 77             	vzeroupper 
   101b5:	c3                   	ret    
   101b6:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   101bd:	00 
   101be:	66 90                	xchg   ax,ax

00000000000101c0 <x264_8_pixel_sa8d_satd_8x8_internal_avx2>:
   101c0:	c5 f9 6f 32          	vmovdqa xmm6,XMMWORD PTR [rdx]
   101c4:	c5 79 6f 1c 0a       	vmovdqa xmm11,XMMWORD PTR [rdx+rcx*1]
   101c9:	c5 f9 6f 07          	vmovdqa xmm0,XMMWORD PTR [rdi]
   101cd:	c5 f9 6f 0c 37       	vmovdqa xmm1,XMMWORD PTR [rdi+rsi*1]
   101d2:	c4 e3 fd 00 f6 05    	vpermq ymm6,ymm6,0x5
   101d8:	c4 43 fd 00 db 05    	vpermq ymm11,ymm11,0x5
   101de:	c4 e3 fd 00 c0 05    	vpermq ymm0,ymm0,0x5
   101e4:	c4 e3 fd 00 c9 05    	vpermq ymm1,ymm1,0x5
   101ea:	c4 e2 4d 04 f7       	vpmaddubsw ymm6,ymm6,ymm7
   101ef:	c4 e2 7d 04 c7       	vpmaddubsw ymm0,ymm0,ymm7
   101f4:	c4 62 25 04 df       	vpmaddubsw ymm11,ymm11,ymm7
   101f9:	c4 e2 75 04 cf       	vpmaddubsw ymm1,ymm1,ymm7
   101fe:	c5 fd f9 c6          	vpsubw ymm0,ymm0,ymm6
   10202:	c4 c1 75 f9 cb       	vpsubw ymm1,ymm1,ymm11
   10207:	c5 f9 6f 34 4a       	vmovdqa xmm6,XMMWORD PTR [rdx+rcx*2]
   1020c:	c4 21 79 6f 1c 0a    	vmovdqa xmm11,XMMWORD PTR [rdx+r9*1]
   10212:	c5 f9 6f 14 77       	vmovdqa xmm2,XMMWORD PTR [rdi+rsi*2]
   10217:	c4 a1 79 6f 1c 07    	vmovdqa xmm3,XMMWORD PTR [rdi+r8*1]
   1021d:	c4 e3 fd 00 f6 05    	vpermq ymm6,ymm6,0x5
   10223:	c4 43 fd 00 db 05    	vpermq ymm11,ymm11,0x5
   10229:	c4 e3 fd 00 d2 05    	vpermq ymm2,ymm2,0x5
   1022f:	c4 e3 fd 00 db 05    	vpermq ymm3,ymm3,0x5
   10235:	c4 e2 4d 04 f7       	vpmaddubsw ymm6,ymm6,ymm7
   1023a:	c4 e2 6d 04 d7       	vpmaddubsw ymm2,ymm2,ymm7
   1023f:	c4 62 25 04 df       	vpmaddubsw ymm11,ymm11,ymm7
   10244:	c4 e2 65 04 df       	vpmaddubsw ymm3,ymm3,ymm7
   10249:	c5 ed f9 d6          	vpsubw ymm2,ymm2,ymm6
   1024d:	c4 c1 65 f9 db       	vpsubw ymm3,ymm3,ymm11
   10252:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   10256:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   1025a:	c5 fd fd f1          	vpaddw ymm6,ymm0,ymm1
   1025e:	c5 f5 f9 c8          	vpsubw ymm1,ymm1,ymm0
   10262:	c5 ed fd c3          	vpaddw ymm0,ymm2,ymm3
   10266:	c5 e5 f9 da          	vpsubw ymm3,ymm3,ymm2
   1026a:	c5 cd fd d0          	vpaddw ymm2,ymm6,ymm0
   1026e:	c5 fd f9 c6          	vpsubw ymm0,ymm0,ymm6
   10272:	c5 f5 fd f3          	vpaddw ymm6,ymm1,ymm3
   10276:	c5 e5 f9 d9          	vpsubw ymm3,ymm3,ymm1
   1027a:	c4 62 7d 1d e2       	vpabsw ymm12,ymm2
   1027f:	c4 62 7d 1d f0       	vpabsw ymm14,ymm0
   10284:	c4 62 7d 1d ee       	vpabsw ymm13,ymm6
   10289:	c4 62 7d 1d fb       	vpabsw ymm15,ymm3
   1028e:	c4 c3 1d 0e ce aa    	vpblendw ymm1,ymm12,ymm14,0xaa
   10294:	c4 c1 0d 72 f6 10    	vpslld ymm14,ymm14,0x10
   1029a:	c4 c1 1d 72 d4 10    	vpsrld ymm12,ymm12,0x10
   102a0:	c4 41 0d eb f4       	vpor   ymm14,ymm14,ymm12
   102a5:	c5 8d ee c9          	vpmaxsw ymm1,ymm14,ymm1
   102a9:	c5 2d fd d1          	vpaddw ymm10,ymm10,ymm1
   102ad:	c4 43 15 0e e7 aa    	vpblendw ymm12,ymm13,ymm15,0xaa
   102b3:	c4 c1 05 72 f7 10    	vpslld ymm15,ymm15,0x10
   102b9:	c4 c1 15 72 d5 10    	vpsrld ymm13,ymm13,0x10
   102bf:	c4 41 05 eb fd       	vpor   ymm15,ymm15,ymm13
   102c4:	c4 41 1d ee e7       	vpmaxsw ymm12,ymm12,ymm15
   102c9:	c4 41 2d fd d4       	vpaddw ymm10,ymm10,ymm12
   102ce:	c5 79 6f 2a          	vmovdqa xmm13,XMMWORD PTR [rdx]
   102d2:	c5 79 6f 1c 0a       	vmovdqa xmm11,XMMWORD PTR [rdx+rcx*1]
   102d7:	c5 f9 6f 27          	vmovdqa xmm4,XMMWORD PTR [rdi]
   102db:	c5 f9 6f 2c 37       	vmovdqa xmm5,XMMWORD PTR [rdi+rsi*1]
   102e0:	c4 43 fd 00 ed 05    	vpermq ymm13,ymm13,0x5
   102e6:	c4 43 fd 00 db 05    	vpermq ymm11,ymm11,0x5
   102ec:	c4 e3 fd 00 e4 05    	vpermq ymm4,ymm4,0x5
   102f2:	c4 e3 fd 00 ed 05    	vpermq ymm5,ymm5,0x5
   102f8:	c4 62 15 04 ef       	vpmaddubsw ymm13,ymm13,ymm7
   102fd:	c4 e2 5d 04 e7       	vpmaddubsw ymm4,ymm4,ymm7
   10302:	c4 62 25 04 df       	vpmaddubsw ymm11,ymm11,ymm7
   10307:	c4 e2 55 04 ef       	vpmaddubsw ymm5,ymm5,ymm7
   1030c:	c4 c1 5d f9 e5       	vpsubw ymm4,ymm4,ymm13
   10311:	c4 c1 55 f9 eb       	vpsubw ymm5,ymm5,ymm11
   10316:	c5 79 6f 2c 4a       	vmovdqa xmm13,XMMWORD PTR [rdx+rcx*2]
   1031b:	c4 21 79 6f 1c 0a    	vmovdqa xmm11,XMMWORD PTR [rdx+r9*1]
   10321:	c5 79 6f 04 77       	vmovdqa xmm8,XMMWORD PTR [rdi+rsi*2]
   10326:	c4 21 79 6f 0c 07    	vmovdqa xmm9,XMMWORD PTR [rdi+r8*1]
   1032c:	c4 43 fd 00 ed 05    	vpermq ymm13,ymm13,0x5
   10332:	c4 43 fd 00 db 05    	vpermq ymm11,ymm11,0x5
   10338:	c4 43 fd 00 c0 05    	vpermq ymm8,ymm8,0x5
   1033e:	c4 43 fd 00 c9 05    	vpermq ymm9,ymm9,0x5
   10344:	c4 62 15 04 ef       	vpmaddubsw ymm13,ymm13,ymm7
   10349:	c4 62 3d 04 c7       	vpmaddubsw ymm8,ymm8,ymm7
   1034e:	c4 62 25 04 df       	vpmaddubsw ymm11,ymm11,ymm7
   10353:	c4 62 35 04 cf       	vpmaddubsw ymm9,ymm9,ymm7
   10358:	c4 41 3d f9 c5       	vpsubw ymm8,ymm8,ymm13
   1035d:	c4 41 35 f9 cb       	vpsubw ymm9,ymm9,ymm11
   10362:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   10366:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   1036a:	c5 5d fd ed          	vpaddw ymm13,ymm4,ymm5
   1036e:	c5 d5 f9 ec          	vpsubw ymm5,ymm5,ymm4
   10372:	c4 c1 3d fd e1       	vpaddw ymm4,ymm8,ymm9
   10377:	c4 41 35 f9 c8       	vpsubw ymm9,ymm9,ymm8
   1037c:	c5 15 fd c4          	vpaddw ymm8,ymm13,ymm4
   10380:	c4 c1 5d f9 e5       	vpsubw ymm4,ymm4,ymm13
   10385:	c5 35 fd ed          	vpaddw ymm13,ymm9,ymm5
   10389:	c5 35 f9 cd          	vpsubw ymm9,ymm9,ymm5
   1038d:	c4 c2 7d 1d c8       	vpabsw ymm1,ymm8
   10392:	c4 62 7d 1d f4       	vpabsw ymm14,ymm4
   10397:	c4 42 7d 1d e5       	vpabsw ymm12,ymm13
   1039c:	c4 42 7d 1d f9       	vpabsw ymm15,ymm9
   103a1:	c4 c3 75 0e ee aa    	vpblendw ymm5,ymm1,ymm14,0xaa
   103a7:	c4 c1 0d 72 f6 10    	vpslld ymm14,ymm14,0x10
   103ad:	c5 f5 72 d1 10       	vpsrld ymm1,ymm1,0x10
   103b2:	c5 0d eb f1          	vpor   ymm14,ymm14,ymm1
   103b6:	c5 8d ee ed          	vpmaxsw ymm5,ymm14,ymm5
   103ba:	c5 2d fd d5          	vpaddw ymm10,ymm10,ymm5
   103be:	c4 c3 1d 0e cf aa    	vpblendw ymm1,ymm12,ymm15,0xaa
   103c4:	c4 c1 05 72 f7 10    	vpslld ymm15,ymm15,0x10
   103ca:	c4 c1 1d 72 d4 10    	vpsrld ymm12,ymm12,0x10
   103d0:	c4 41 05 eb fc       	vpor   ymm15,ymm15,ymm12
   103d5:	c5 85 ee c9          	vpmaxsw ymm1,ymm15,ymm1
   103d9:	c5 2d fd d1          	vpaddw ymm10,ymm10,ymm1
   103dd:	c5 bd fd ea          	vpaddw ymm5,ymm8,ymm2
   103e1:	c5 3d f9 c2          	vpsubw ymm8,ymm8,ymm2
   103e5:	c5 95 fd d6          	vpaddw ymm2,ymm13,ymm6
   103e9:	c5 15 f9 ee          	vpsubw ymm13,ymm13,ymm6
   103ed:	c4 c1 54 c6 f0 dd    	vshufps ymm6,ymm5,ymm8,0xdd
   103f3:	c4 c1 54 c6 e8 88    	vshufps ymm5,ymm5,ymm8,0x88
   103f9:	c5 55 fd c6          	vpaddw ymm8,ymm5,ymm6
   103fd:	c5 cd f9 f5          	vpsubw ymm6,ymm6,ymm5
   10401:	c4 c1 6c c6 ed dd    	vshufps ymm5,ymm2,ymm13,0xdd
   10407:	c4 c1 6c c6 d5 88    	vshufps ymm2,ymm2,ymm13,0x88
   1040d:	c5 6d fd ed          	vpaddw ymm13,ymm2,ymm5
   10411:	c5 d5 f9 ea          	vpsubw ymm5,ymm5,ymm2
   10415:	c5 fd fd d4          	vpaddw ymm2,ymm0,ymm4
   10419:	c5 dd f9 e0          	vpsubw ymm4,ymm4,ymm0
   1041d:	c5 b5 fd c3          	vpaddw ymm0,ymm9,ymm3
   10421:	c5 35 f9 cb          	vpsubw ymm9,ymm9,ymm3
   10425:	c5 ec c6 dc dd       	vshufps ymm3,ymm2,ymm4,0xdd
   1042a:	c5 ec c6 d4 88       	vshufps ymm2,ymm2,ymm4,0x88
   1042f:	c5 ed fd e3          	vpaddw ymm4,ymm2,ymm3
   10433:	c5 e5 f9 da          	vpsubw ymm3,ymm3,ymm2
   10437:	c4 c1 7c c6 d1 dd    	vshufps ymm2,ymm0,ymm9,0xdd
   1043d:	c4 c1 7c c6 c1 88    	vshufps ymm0,ymm0,ymm9,0x88
   10443:	c5 7d fd ca          	vpaddw ymm9,ymm0,ymm2
   10447:	c5 ed f9 d0          	vpsubw ymm2,ymm2,ymm0
   1044b:	c4 e3 3d 0e c6 aa    	vpblendw ymm0,ymm8,ymm6,0xaa
   10451:	c5 cd 72 f6 10       	vpslld ymm6,ymm6,0x10
   10456:	c4 c1 3d 72 d0 10    	vpsrld ymm8,ymm8,0x10
   1045c:	c5 bd eb f6          	vpor   ymm6,ymm8,ymm6
   10460:	c4 e2 7d 1d c0       	vpabsw ymm0,ymm0
   10465:	c4 e2 7d 1d f6       	vpabsw ymm6,ymm6
   1046a:	c5 fd ee c6          	vpmaxsw ymm0,ymm0,ymm6
   1046e:	c4 63 15 0e c5 aa    	vpblendw ymm8,ymm13,ymm5,0xaa
   10474:	c5 d5 72 f5 10       	vpslld ymm5,ymm5,0x10
   10479:	c4 c1 15 72 d5 10    	vpsrld ymm13,ymm13,0x10
   1047f:	c5 95 eb ed          	vpor   ymm5,ymm13,ymm5
   10483:	c4 42 7d 1d c0       	vpabsw ymm8,ymm8
   10488:	c4 e2 7d 1d ed       	vpabsw ymm5,ymm5
   1048d:	c5 3d ee c5          	vpmaxsw ymm8,ymm8,ymm5
   10491:	c4 63 5d 0e eb aa    	vpblendw ymm13,ymm4,ymm3,0xaa
   10497:	c5 e5 72 f3 10       	vpslld ymm3,ymm3,0x10
   1049c:	c5 dd 72 d4 10       	vpsrld ymm4,ymm4,0x10
   104a1:	c5 e5 eb dc          	vpor   ymm3,ymm3,ymm4
   104a5:	c4 42 7d 1d ed       	vpabsw ymm13,ymm13
   104aa:	c4 e2 7d 1d db       	vpabsw ymm3,ymm3
   104af:	c5 15 ee eb          	vpmaxsw ymm13,ymm13,ymm3
   104b3:	c4 e3 35 0e e2 aa    	vpblendw ymm4,ymm9,ymm2,0xaa
   104b9:	c5 ed 72 f2 10       	vpslld ymm2,ymm2,0x10
   104be:	c4 c1 35 72 d1 10    	vpsrld ymm9,ymm9,0x10
   104c4:	c5 b5 eb d2          	vpor   ymm2,ymm9,ymm2
   104c8:	c4 e2 7d 1d e4       	vpabsw ymm4,ymm4
   104cd:	c4 e2 7d 1d d2       	vpabsw ymm2,ymm2
   104d2:	c5 dd ee e2          	vpmaxsw ymm4,ymm4,ymm2
   104d6:	c4 41 3d fd c5       	vpaddw ymm8,ymm8,ymm13
   104db:	c5 fd fd c4          	vpaddw ymm0,ymm0,ymm4
   104df:	c5 bd fd c0          	vpaddw ymm0,ymm8,ymm0
   104e3:	c3                   	ret    
   104e4:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   104eb:	00 
   104ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000104f0 <x264_8_pixel_sa8d_satd_16x16_avx2>:
   104f0:	48 83 ec 58          	sub    rsp,0x58
   104f4:	c5 fd 6f 3d 00 00 00 	vmovdqa ymm7,YMMWORD PTR [rip+0x0]        # 104fc <x264_8_pixel_sa8d_satd_16x16_avx2+0xc>
   104fb:	00 
   104fc:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
   10500:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
   10504:	c4 41 2d ef d2       	vpxor  ymm10,ymm10,ymm10
   10509:	e8 b2 fc ff ff       	call   101c0 <x264_8_pixel_sa8d_satd_8x8_internal_avx2>
   1050e:	c5 fd 7f 04 24       	vmovdqa YMMWORD PTR [rsp],ymm0
   10513:	e8 a8 fc ff ff       	call   101c0 <x264_8_pixel_sa8d_satd_8x8_internal_avx2>
   10518:	c5 fd fd 04 24       	vpaddw ymm0,ymm0,YMMWORD PTR [rsp]
   1051d:	c4 c3 7d 39 c0 01    	vextracti128 xmm8,ymm0,0x1
   10523:	c4 43 7d 39 d5 01    	vextracti128 xmm13,ymm10,0x1
   10529:	c5 b9 fd c0          	vpaddw xmm0,xmm8,xmm0
   1052d:	c4 41 29 fd d5       	vpaddw xmm10,xmm10,xmm13
   10532:	c5 29 f5 15 00 00 00 	vpmaddwd xmm10,xmm10,XMMWORD PTR [rip+0x0]        # 1053a <x264_8_pixel_sa8d_satd_16x16_avx2+0x4a>
   10539:	00 
   1053a:	c5 b9 72 d0 10       	vpsrld xmm8,xmm0,0x10
   1053f:	c5 f9 72 f0 10       	vpslld xmm0,xmm0,0x10
   10544:	c5 f9 72 d0 10       	vpsrld xmm0,xmm0,0x10
   10549:	c5 b9 fe c0          	vpaddd xmm0,xmm8,xmm0
   1054d:	c4 c2 79 02 c2       	vphaddd xmm0,xmm0,xmm10
   10552:	c5 79 70 c0 b1       	vpshufd xmm8,xmm0,0xb1
   10557:	c5 b9 fe c0          	vpaddd xmm0,xmm8,xmm0
   1055b:	c5 f9 7e c7          	vmovd  edi,xmm0
   1055f:	c4 e3 79 16 c0 02    	vpextrd eax,xmm0,0x2
   10565:	83 c7 01             	add    edi,0x1
   10568:	48 c1 e0 20          	shl    rax,0x20
   1056c:	d1 ef                	shr    edi,1
   1056e:	48 09 f8             	or     rax,rdi
   10571:	48 83 c4 58          	add    rsp,0x58
   10575:	c5 f8 77             	vzeroupper 
   10578:	c3                   	ret    
   10579:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000010580 <x264_8_pixel_satd_16x8_internal_avx2>:
   10580:	c4 e2 7d 5a 07       	vbroadcasti128 ymm0,XMMWORD PTR [rdi]
   10585:	c4 e2 7d 5a 22       	vbroadcasti128 ymm4,XMMWORD PTR [rdx]
   1058a:	c4 e2 7d 5a 0c 37    	vbroadcasti128 ymm1,XMMWORD PTR [rdi+rsi*1]
   10590:	c4 e2 7d 5a 2c 0a    	vbroadcasti128 ymm5,XMMWORD PTR [rdx+rcx*1]
   10596:	c4 e2 5d 04 e7       	vpmaddubsw ymm4,ymm4,ymm7
   1059b:	c4 e2 7d 04 c7       	vpmaddubsw ymm0,ymm0,ymm7
   105a0:	c4 e2 55 04 ef       	vpmaddubsw ymm5,ymm5,ymm7
   105a5:	c4 e2 75 04 cf       	vpmaddubsw ymm1,ymm1,ymm7
   105aa:	c5 fd f9 c4          	vpsubw ymm0,ymm0,ymm4
   105ae:	c5 f5 f9 cd          	vpsubw ymm1,ymm1,ymm5
   105b2:	c4 e2 7d 5a 14 77    	vbroadcasti128 ymm2,XMMWORD PTR [rdi+rsi*2]
   105b8:	c4 e2 7d 5a 24 4a    	vbroadcasti128 ymm4,XMMWORD PTR [rdx+rcx*2]
   105be:	c4 a2 7d 5a 1c 07    	vbroadcasti128 ymm3,XMMWORD PTR [rdi+r8*1]
   105c4:	c4 a2 7d 5a 2c 0a    	vbroadcasti128 ymm5,XMMWORD PTR [rdx+r9*1]
   105ca:	c4 e2 5d 04 e7       	vpmaddubsw ymm4,ymm4,ymm7
   105cf:	c4 e2 6d 04 d7       	vpmaddubsw ymm2,ymm2,ymm7
   105d4:	c4 e2 55 04 ef       	vpmaddubsw ymm5,ymm5,ymm7
   105d9:	c4 e2 65 04 df       	vpmaddubsw ymm3,ymm3,ymm7
   105de:	c5 ed f9 d4          	vpsubw ymm2,ymm2,ymm4
   105e2:	c5 e5 f9 dd          	vpsubw ymm3,ymm3,ymm5
   105e6:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   105ea:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   105ee:	c5 fd fd e1          	vpaddw ymm4,ymm0,ymm1
   105f2:	c5 f5 f9 c8          	vpsubw ymm1,ymm1,ymm0
   105f6:	c5 ed fd c3          	vpaddw ymm0,ymm2,ymm3
   105fa:	c5 e5 f9 da          	vpsubw ymm3,ymm3,ymm2
   105fe:	c5 dd fd d0          	vpaddw ymm2,ymm4,ymm0
   10602:	c5 fd f9 c4          	vpsubw ymm0,ymm0,ymm4
   10606:	c5 f5 fd e3          	vpaddw ymm4,ymm1,ymm3
   1060a:	c5 e5 f9 d9          	vpsubw ymm3,ymm3,ymm1
   1060e:	c4 e2 7d 1d d2       	vpabsw ymm2,ymm2
   10613:	c4 e2 7d 1d c0       	vpabsw ymm0,ymm0
   10618:	c4 e2 7d 1d e4       	vpabsw ymm4,ymm4
   1061d:	c4 e2 7d 1d db       	vpabsw ymm3,ymm3
   10622:	c4 e3 6d 0e c8 aa    	vpblendw ymm1,ymm2,ymm0,0xaa
   10628:	c5 fd 72 f0 10       	vpslld ymm0,ymm0,0x10
   1062d:	c5 ed 72 d2 10       	vpsrld ymm2,ymm2,0x10
   10632:	c5 fd eb c2          	vpor   ymm0,ymm0,ymm2
   10636:	c5 f5 ee c8          	vpmaxsw ymm1,ymm1,ymm0
   1063a:	c5 cd fd f1          	vpaddw ymm6,ymm6,ymm1
   1063e:	c4 e3 5d 0e d3 aa    	vpblendw ymm2,ymm4,ymm3,0xaa
   10644:	c5 e5 72 f3 10       	vpslld ymm3,ymm3,0x10
   10649:	c5 dd 72 d4 10       	vpsrld ymm4,ymm4,0x10
   1064e:	c5 e5 eb dc          	vpor   ymm3,ymm3,ymm4
   10652:	c5 ed ee d3          	vpmaxsw ymm2,ymm2,ymm3
   10656:	c5 cd fd f2          	vpaddw ymm6,ymm6,ymm2
   1065a:	c4 e2 7d 5a 0f       	vbroadcasti128 ymm1,XMMWORD PTR [rdi]
   1065f:	c4 e2 7d 5a 22       	vbroadcasti128 ymm4,XMMWORD PTR [rdx]
   10664:	c4 e2 7d 5a 14 37    	vbroadcasti128 ymm2,XMMWORD PTR [rdi+rsi*1]
   1066a:	c4 e2 7d 5a 2c 0a    	vbroadcasti128 ymm5,XMMWORD PTR [rdx+rcx*1]
   10670:	c4 e2 5d 04 e7       	vpmaddubsw ymm4,ymm4,ymm7
   10675:	c4 e2 75 04 cf       	vpmaddubsw ymm1,ymm1,ymm7
   1067a:	c4 e2 55 04 ef       	vpmaddubsw ymm5,ymm5,ymm7
   1067f:	c4 e2 6d 04 d7       	vpmaddubsw ymm2,ymm2,ymm7
   10684:	c5 f5 f9 cc          	vpsubw ymm1,ymm1,ymm4
   10688:	c5 ed f9 d5          	vpsubw ymm2,ymm2,ymm5
   1068c:	c4 e2 7d 5a 04 77    	vbroadcasti128 ymm0,XMMWORD PTR [rdi+rsi*2]
   10692:	c4 e2 7d 5a 24 4a    	vbroadcasti128 ymm4,XMMWORD PTR [rdx+rcx*2]
   10698:	c4 a2 7d 5a 1c 07    	vbroadcasti128 ymm3,XMMWORD PTR [rdi+r8*1]
   1069e:	c4 a2 7d 5a 2c 0a    	vbroadcasti128 ymm5,XMMWORD PTR [rdx+r9*1]
   106a4:	c4 e2 5d 04 e7       	vpmaddubsw ymm4,ymm4,ymm7
   106a9:	c4 e2 7d 04 c7       	vpmaddubsw ymm0,ymm0,ymm7
   106ae:	c4 e2 55 04 ef       	vpmaddubsw ymm5,ymm5,ymm7
   106b3:	c4 e2 65 04 df       	vpmaddubsw ymm3,ymm3,ymm7
   106b8:	c5 fd f9 c4          	vpsubw ymm0,ymm0,ymm4
   106bc:	c5 e5 f9 dd          	vpsubw ymm3,ymm3,ymm5
   106c0:	c5 f5 fd e2          	vpaddw ymm4,ymm1,ymm2
   106c4:	c5 ed f9 d1          	vpsubw ymm2,ymm2,ymm1
   106c8:	c5 fd fd cb          	vpaddw ymm1,ymm0,ymm3
   106cc:	c5 e5 f9 d8          	vpsubw ymm3,ymm3,ymm0
   106d0:	c5 dd fd c1          	vpaddw ymm0,ymm4,ymm1
   106d4:	c5 f5 f9 cc          	vpsubw ymm1,ymm1,ymm4
   106d8:	c5 ed fd e3          	vpaddw ymm4,ymm2,ymm3
   106dc:	c5 e5 f9 da          	vpsubw ymm3,ymm3,ymm2
   106e0:	c4 e2 7d 1d c0       	vpabsw ymm0,ymm0
   106e5:	c4 e2 7d 1d c9       	vpabsw ymm1,ymm1
   106ea:	c4 e2 7d 1d e4       	vpabsw ymm4,ymm4
   106ef:	c4 e2 7d 1d db       	vpabsw ymm3,ymm3
   106f4:	c4 e3 7d 0e d1 aa    	vpblendw ymm2,ymm0,ymm1,0xaa
   106fa:	c5 f5 72 f1 10       	vpslld ymm1,ymm1,0x10
   106ff:	c5 fd 72 d0 10       	vpsrld ymm0,ymm0,0x10
   10704:	c5 f5 eb c8          	vpor   ymm1,ymm1,ymm0
   10708:	c5 ed ee d1          	vpmaxsw ymm2,ymm2,ymm1
   1070c:	c5 cd fd f2          	vpaddw ymm6,ymm6,ymm2
   10710:	c4 e3 5d 0e c3 aa    	vpblendw ymm0,ymm4,ymm3,0xaa
   10716:	c5 e5 72 f3 10       	vpslld ymm3,ymm3,0x10
   1071b:	c5 dd 72 d4 10       	vpsrld ymm4,ymm4,0x10
   10720:	c5 e5 eb dc          	vpor   ymm3,ymm3,ymm4
   10724:	c5 fd ee c3          	vpmaxsw ymm0,ymm0,ymm3
   10728:	c5 cd fd f0          	vpaddw ymm6,ymm6,ymm0
   1072c:	c3                   	ret    
   1072d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000010730 <x264_8_pixel_satd_16x16_avx2>:
   10730:	c5 fd 6f 3d 00 00 00 	vmovdqa ymm7,YMMWORD PTR [rip+0x0]        # 10738 <x264_8_pixel_satd_16x16_avx2+0x8>
   10737:	00 
   10738:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
   1073c:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
   10740:	c5 cd ef f6          	vpxor  ymm6,ymm6,ymm6
   10744:	e8 37 fe ff ff       	call   10580 <x264_8_pixel_satd_16x8_internal_avx2>
   10749:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   1074d:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   10751:	e8 2a fe ff ff       	call   10580 <x264_8_pixel_satd_16x8_internal_avx2>
   10756:	c4 e3 7d 39 f0 01    	vextracti128 xmm0,ymm6,0x1
   1075c:	c5 f9 fd c6          	vpaddw xmm0,xmm0,xmm6
   10760:	c5 f9 f5 05 00 00 00 	vpmaddwd xmm0,xmm0,XMMWORD PTR [rip+0x0]        # 10768 <x264_8_pixel_satd_16x16_avx2+0x38>
   10767:	00 
   10768:	c5 f9 6d f8          	vpunpckhqdq xmm7,xmm0,xmm0
   1076c:	c5 f9 fe c7          	vpaddd xmm0,xmm0,xmm7
   10770:	c5 fb 70 f8 4e       	vpshuflw xmm7,xmm0,0x4e
   10775:	c5 f9 fe c7          	vpaddd xmm0,xmm0,xmm7
   10779:	c5 f9 7e c0          	vmovd  eax,xmm0
   1077d:	c5 f8 77             	vzeroupper 
   10780:	c3                   	ret    
   10781:	c5 f8 77             	vzeroupper 
   10784:	c3                   	ret    
   10785:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1078c:	00 
   1078d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000010790 <x264_8_pixel_satd_16x8_avx2>:
   10790:	c5 fd 6f 3d 00 00 00 	vmovdqa ymm7,YMMWORD PTR [rip+0x0]        # 10798 <x264_8_pixel_satd_16x8_avx2+0x8>
   10797:	00 
   10798:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
   1079c:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
   107a0:	c5 cd ef f6          	vpxor  ymm6,ymm6,ymm6
   107a4:	eb ab                	jmp    10751 <x264_8_pixel_satd_16x16_avx2+0x21>
   107a6:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   107ad:	00 
   107ae:	66 90                	xchg   ax,ax

00000000000107b0 <x264_8_pixel_satd_8x8_internal_avx2>:
   107b0:	c5 fa 7e 07          	vmovq  xmm0,QWORD PTR [rdi]
   107b4:	c5 fa 7e 12          	vmovq  xmm2,QWORD PTR [rdx]
   107b8:	c5 fa 7e 0c 37       	vmovq  xmm1,QWORD PTR [rdi+rsi*1]
   107bd:	c5 fa 7e 1c 0a       	vmovq  xmm3,QWORD PTR [rdx+rcx*1]
   107c2:	c4 e3 7d 38 04 b7 01 	vinserti128 ymm0,ymm0,XMMWORD PTR [rdi+rsi*4],0x1
   107c9:	c4 e3 6d 38 14 8a 01 	vinserti128 ymm2,ymm2,XMMWORD PTR [rdx+rcx*4],0x1
   107d0:	c4 a3 75 38 0c 07 01 	vinserti128 ymm1,ymm1,XMMWORD PTR [rdi+r8*1],0x1
   107d7:	c4 a3 65 38 1c 0a 01 	vinserti128 ymm3,ymm3,XMMWORD PTR [rdx+r9*1],0x1
   107de:	c5 fd 6c c0          	vpunpcklqdq ymm0,ymm0,ymm0
   107e2:	c5 ed 6c d2          	vpunpcklqdq ymm2,ymm2,ymm2
   107e6:	c5 f5 6c c9          	vpunpcklqdq ymm1,ymm1,ymm1
   107ea:	c5 e5 6c db          	vpunpcklqdq ymm3,ymm3,ymm3
   107ee:	c4 e2 6d 04 d7       	vpmaddubsw ymm2,ymm2,ymm7
   107f3:	c4 e2 7d 04 c7       	vpmaddubsw ymm0,ymm0,ymm7
   107f8:	c4 e2 65 04 df       	vpmaddubsw ymm3,ymm3,ymm7
   107fd:	c4 e2 75 04 cf       	vpmaddubsw ymm1,ymm1,ymm7
   10802:	c5 fd f9 c2          	vpsubw ymm0,ymm0,ymm2
   10806:	c5 f5 f9 cb          	vpsubw ymm1,ymm1,ymm3
   1080a:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
   1080e:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
   10812:	c5 fa 7e 17          	vmovq  xmm2,QWORD PTR [rdi]
   10816:	c5 fa 7e 22          	vmovq  xmm4,QWORD PTR [rdx]
   1081a:	c5 fa 7e 1c 37       	vmovq  xmm3,QWORD PTR [rdi+rsi*1]
   1081f:	c5 fa 7e 2c 0a       	vmovq  xmm5,QWORD PTR [rdx+rcx*1]
   10824:	c4 e3 6d 38 14 b7 01 	vinserti128 ymm2,ymm2,XMMWORD PTR [rdi+rsi*4],0x1
   1082b:	c4 e3 5d 38 24 8a 01 	vinserti128 ymm4,ymm4,XMMWORD PTR [rdx+rcx*4],0x1
   10832:	c4 a3 65 38 1c 07 01 	vinserti128 ymm3,ymm3,XMMWORD PTR [rdi+r8*1],0x1
   10839:	c4 a3 55 38 2c 0a 01 	vinserti128 ymm5,ymm5,XMMWORD PTR [rdx+r9*1],0x1
   10840:	c5 ed 6c d2          	vpunpcklqdq ymm2,ymm2,ymm2
   10844:	c5 dd 6c e4          	vpunpcklqdq ymm4,ymm4,ymm4
   10848:	c5 e5 6c db          	vpunpcklqdq ymm3,ymm3,ymm3
   1084c:	c5 d5 6c ed          	vpunpcklqdq ymm5,ymm5,ymm5
   10850:	c4 e2 5d 04 e7       	vpmaddubsw ymm4,ymm4,ymm7
   10855:	c4 e2 6d 04 d7       	vpmaddubsw ymm2,ymm2,ymm7
   1085a:	c4 e2 55 04 ef       	vpmaddubsw ymm5,ymm5,ymm7
   1085f:	c4 e2 65 04 df       	vpmaddubsw ymm3,ymm3,ymm7
   10864:	c5 ed f9 d4          	vpsubw ymm2,ymm2,ymm4
   10868:	c5 e5 f9 dd          	vpsubw ymm3,ymm3,ymm5
   1086c:	c5 fd fd e1          	vpaddw ymm4,ymm0,ymm1
   10870:	c5 f5 f9 c8          	vpsubw ymm1,ymm1,ymm0
   10874:	c5 ed fd c3          	vpaddw ymm0,ymm2,ymm3
   10878:	c5 e5 f9 da          	vpsubw ymm3,ymm3,ymm2
   1087c:	c5 dd fd d0          	vpaddw ymm2,ymm4,ymm0
   10880:	c5 fd f9 c4          	vpsubw ymm0,ymm0,ymm4
   10884:	c5 f5 fd e3          	vpaddw ymm4,ymm1,ymm3
   10888:	c5 e5 f9 d9          	vpsubw ymm3,ymm3,ymm1
   1088c:	c4 e2 7d 1d d2       	vpabsw ymm2,ymm2
   10891:	c4 e2 7d 1d c0       	vpabsw ymm0,ymm0
   10896:	c4 e2 7d 1d e4       	vpabsw ymm4,ymm4
   1089b:	c4 e2 7d 1d db       	vpabsw ymm3,ymm3
   108a0:	c4 e3 6d 0e c8 aa    	vpblendw ymm1,ymm2,ymm0,0xaa
   108a6:	c5 fd 72 f0 10       	vpslld ymm0,ymm0,0x10
   108ab:	c5 ed 72 d2 10       	vpsrld ymm2,ymm2,0x10
   108b0:	c5 fd eb c2          	vpor   ymm0,ymm0,ymm2
   108b4:	c5 f5 ee c8          	vpmaxsw ymm1,ymm1,ymm0
   108b8:	c5 cd fd f1          	vpaddw ymm6,ymm6,ymm1
   108bc:	c4 e3 5d 0e d3 aa    	vpblendw ymm2,ymm4,ymm3,0xaa
   108c2:	c5 e5 72 f3 10       	vpslld ymm3,ymm3,0x10
   108c7:	c5 dd 72 d4 10       	vpsrld ymm4,ymm4,0x10
   108cc:	c5 e5 eb dc          	vpor   ymm3,ymm3,ymm4
   108d0:	c5 ed ee d3          	vpmaxsw ymm2,ymm2,ymm3
   108d4:	c5 cd fd f2          	vpaddw ymm6,ymm6,ymm2
   108d8:	c3                   	ret    
   108d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000108e0 <x264_8_pixel_satd_8x16_avx2>:
   108e0:	c5 fd 6f 3d 00 00 00 	vmovdqa ymm7,YMMWORD PTR [rip+0x0]        # 108e8 <x264_8_pixel_satd_8x16_avx2+0x8>
   108e7:	00 
   108e8:	4c 8d 04 b6          	lea    r8,[rsi+rsi*4]
   108ec:	4c 8d 0c 89          	lea    r9,[rcx+rcx*4]
   108f0:	c5 cd ef f6          	vpxor  ymm6,ymm6,ymm6
   108f4:	e8 b7 fe ff ff       	call   107b0 <x264_8_pixel_satd_8x8_internal_avx2>
   108f9:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
   108fd:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
   10901:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   10905:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   10909:	e8 a2 fe ff ff       	call   107b0 <x264_8_pixel_satd_8x8_internal_avx2>
   1090e:	c4 e3 7d 39 f0 01    	vextracti128 xmm0,ymm6,0x1
   10914:	c5 f9 fd c6          	vpaddw xmm0,xmm0,xmm6
   10918:	c5 f9 f5 05 00 00 00 	vpmaddwd xmm0,xmm0,XMMWORD PTR [rip+0x0]        # 10920 <x264_8_pixel_satd_8x16_avx2+0x40>
   1091f:	00 
   10920:	c5 f9 6d f8          	vpunpckhqdq xmm7,xmm0,xmm0
   10924:	c5 f9 fe c7          	vpaddd xmm0,xmm0,xmm7
   10928:	c5 fb 70 f8 4e       	vpshuflw xmm7,xmm0,0x4e
   1092d:	c5 f9 fe c7          	vpaddd xmm0,xmm0,xmm7
   10931:	c5 f9 7e c0          	vmovd  eax,xmm0
   10935:	c5 f8 77             	vzeroupper 
   10938:	c3                   	ret    
   10939:	c5 f8 77             	vzeroupper 
   1093c:	c3                   	ret    
   1093d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000010940 <x264_8_pixel_satd_8x8_avx2>:
   10940:	c5 fd 6f 3d 00 00 00 	vmovdqa ymm7,YMMWORD PTR [rip+0x0]        # 10948 <x264_8_pixel_satd_8x8_avx2+0x8>
   10947:	00 
   10948:	4c 8d 04 b6          	lea    r8,[rsi+rsi*4]
   1094c:	4c 8d 0c 89          	lea    r9,[rcx+rcx*4]
   10950:	c5 cd ef f6          	vpxor  ymm6,ymm6,ymm6
   10954:	e8 57 fe ff ff       	call   107b0 <x264_8_pixel_satd_8x8_internal_avx2>
   10959:	c4 e3 7d 39 f0 01    	vextracti128 xmm0,ymm6,0x1
   1095f:	c5 f9 fd c6          	vpaddw xmm0,xmm0,xmm6
   10963:	c5 f9 f5 05 00 00 00 	vpmaddwd xmm0,xmm0,XMMWORD PTR [rip+0x0]        # 1096b <x264_8_pixel_satd_8x8_avx2+0x2b>
   1096a:	00 
   1096b:	c5 f9 6d f8          	vpunpckhqdq xmm7,xmm0,xmm0
   1096f:	c5 f9 fe c7          	vpaddd xmm0,xmm0,xmm7
   10973:	c5 fb 70 f8 4e       	vpshuflw xmm7,xmm0,0x4e
   10978:	c5 f9 fe c7          	vpaddd xmm0,xmm0,xmm7
   1097c:	c5 f9 7e c0          	vmovd  eax,xmm0
   10980:	c5 f8 77             	vzeroupper 
   10983:	c3                   	ret    
   10984:	c5 f8 77             	vzeroupper 
   10987:	c3                   	ret    
   10988:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1098f:	00 

0000000000010990 <x264_8_pixel_sa8d_8x8_internal_avx2>:
   10990:	c5 fa 7e 07          	vmovq  xmm0,QWORD PTR [rdi]
   10994:	c5 fa 7e 12          	vmovq  xmm2,QWORD PTR [rdx]
   10998:	c5 fa 7e 0c 37       	vmovq  xmm1,QWORD PTR [rdi+rsi*1]
   1099d:	c5 fa 7e 1c 0a       	vmovq  xmm3,QWORD PTR [rdx+rcx*1]
   109a2:	c4 e3 7d 38 04 b7 01 	vinserti128 ymm0,ymm0,XMMWORD PTR [rdi+rsi*4],0x1
   109a9:	c4 e3 6d 38 14 8a 01 	vinserti128 ymm2,ymm2,XMMWORD PTR [rdx+rcx*4],0x1
   109b0:	c4 a3 75 38 0c 07 01 	vinserti128 ymm1,ymm1,XMMWORD PTR [rdi+r8*1],0x1
   109b7:	c4 a3 65 38 1c 0a 01 	vinserti128 ymm3,ymm3,XMMWORD PTR [rdx+r9*1],0x1
   109be:	c5 fd 6c c0          	vpunpcklqdq ymm0,ymm0,ymm0
   109c2:	c5 ed 6c d2          	vpunpcklqdq ymm2,ymm2,ymm2
   109c6:	c5 f5 6c c9          	vpunpcklqdq ymm1,ymm1,ymm1
   109ca:	c5 e5 6c db          	vpunpcklqdq ymm3,ymm3,ymm3
   109ce:	c4 e2 6d 04 d7       	vpmaddubsw ymm2,ymm2,ymm7
   109d3:	c4 e2 7d 04 c7       	vpmaddubsw ymm0,ymm0,ymm7
   109d8:	c4 e2 65 04 df       	vpmaddubsw ymm3,ymm3,ymm7
   109dd:	c4 e2 75 04 cf       	vpmaddubsw ymm1,ymm1,ymm7
   109e2:	c5 fd f9 c2          	vpsubw ymm0,ymm0,ymm2
   109e6:	c5 f5 f9 cb          	vpsubw ymm1,ymm1,ymm3
   109ea:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
   109ee:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
   109f2:	c5 fa 7e 17          	vmovq  xmm2,QWORD PTR [rdi]
   109f6:	c5 fa 7e 22          	vmovq  xmm4,QWORD PTR [rdx]
   109fa:	c5 fa 7e 1c 37       	vmovq  xmm3,QWORD PTR [rdi+rsi*1]
   109ff:	c5 fa 7e 2c 0a       	vmovq  xmm5,QWORD PTR [rdx+rcx*1]
   10a04:	c4 e3 6d 38 14 b7 01 	vinserti128 ymm2,ymm2,XMMWORD PTR [rdi+rsi*4],0x1
   10a0b:	c4 e3 5d 38 24 8a 01 	vinserti128 ymm4,ymm4,XMMWORD PTR [rdx+rcx*4],0x1
   10a12:	c4 a3 65 38 1c 07 01 	vinserti128 ymm3,ymm3,XMMWORD PTR [rdi+r8*1],0x1
   10a19:	c4 a3 55 38 2c 0a 01 	vinserti128 ymm5,ymm5,XMMWORD PTR [rdx+r9*1],0x1
   10a20:	c5 ed 6c d2          	vpunpcklqdq ymm2,ymm2,ymm2
   10a24:	c5 dd 6c e4          	vpunpcklqdq ymm4,ymm4,ymm4
   10a28:	c5 e5 6c db          	vpunpcklqdq ymm3,ymm3,ymm3
   10a2c:	c5 d5 6c ed          	vpunpcklqdq ymm5,ymm5,ymm5
   10a30:	c4 e2 5d 04 e7       	vpmaddubsw ymm4,ymm4,ymm7
   10a35:	c4 e2 6d 04 d7       	vpmaddubsw ymm2,ymm2,ymm7
   10a3a:	c4 e2 55 04 ef       	vpmaddubsw ymm5,ymm5,ymm7
   10a3f:	c4 e2 65 04 df       	vpmaddubsw ymm3,ymm3,ymm7
   10a44:	c5 ed f9 d4          	vpsubw ymm2,ymm2,ymm4
   10a48:	c5 e5 f9 dd          	vpsubw ymm3,ymm3,ymm5
   10a4c:	c5 fd fd e1          	vpaddw ymm4,ymm0,ymm1
   10a50:	c5 f5 f9 c8          	vpsubw ymm1,ymm1,ymm0
   10a54:	c5 ed fd c3          	vpaddw ymm0,ymm2,ymm3
   10a58:	c5 e5 f9 da          	vpsubw ymm3,ymm3,ymm2
   10a5c:	c5 dd fd d0          	vpaddw ymm2,ymm4,ymm0
   10a60:	c5 fd f9 c4          	vpsubw ymm0,ymm0,ymm4
   10a64:	c5 f5 fd e3          	vpaddw ymm4,ymm1,ymm3
   10a68:	c5 e5 f9 d9          	vpsubw ymm3,ymm3,ymm1
   10a6c:	c4 e3 6d 46 cc 31    	vperm2i128 ymm1,ymm2,ymm4,0x31
   10a72:	c4 e3 6d 38 d4 01    	vinserti128 ymm2,ymm2,xmm4,0x1
   10a78:	c5 ed fd e1          	vpaddw ymm4,ymm2,ymm1
   10a7c:	c5 f5 f9 ca          	vpsubw ymm1,ymm1,ymm2
   10a80:	c4 e3 7d 46 d3 31    	vperm2i128 ymm2,ymm0,ymm3,0x31
   10a86:	c4 e3 7d 38 c3 01    	vinserti128 ymm0,ymm0,xmm3,0x1
   10a8c:	c5 fd fd da          	vpaddw ymm3,ymm0,ymm2
   10a90:	c5 ed f9 d0          	vpsubw ymm2,ymm2,ymm0
   10a94:	c5 dc c6 c1 dd       	vshufps ymm0,ymm4,ymm1,0xdd
   10a99:	c5 dc c6 e1 88       	vshufps ymm4,ymm4,ymm1,0x88
   10a9e:	c5 dd fd c8          	vpaddw ymm1,ymm4,ymm0
   10aa2:	c5 fd f9 c4          	vpsubw ymm0,ymm0,ymm4
   10aa6:	c5 e4 c6 e2 dd       	vshufps ymm4,ymm3,ymm2,0xdd
   10aab:	c5 e4 c6 da 88       	vshufps ymm3,ymm3,ymm2,0x88
   10ab0:	c5 e5 fd d4          	vpaddw ymm2,ymm3,ymm4
   10ab4:	c5 dd f9 e3          	vpsubw ymm4,ymm4,ymm3
   10ab8:	c4 e3 75 0e d8 aa    	vpblendw ymm3,ymm1,ymm0,0xaa
   10abe:	c5 fd 72 f0 10       	vpslld ymm0,ymm0,0x10
   10ac3:	c5 f5 72 d1 10       	vpsrld ymm1,ymm1,0x10
   10ac8:	c5 fd eb c1          	vpor   ymm0,ymm0,ymm1
   10acc:	c4 e2 7d 1d db       	vpabsw ymm3,ymm3
   10ad1:	c4 e2 7d 1d c0       	vpabsw ymm0,ymm0
   10ad6:	c5 e5 ee d8          	vpmaxsw ymm3,ymm3,ymm0
   10ada:	c4 e3 6d 0e cc aa    	vpblendw ymm1,ymm2,ymm4,0xaa
   10ae0:	c5 dd 72 f4 10       	vpslld ymm4,ymm4,0x10
   10ae5:	c5 ed 72 d2 10       	vpsrld ymm2,ymm2,0x10
   10aea:	c5 dd eb e2          	vpor   ymm4,ymm4,ymm2
   10aee:	c4 e2 7d 1d c9       	vpabsw ymm1,ymm1
   10af3:	c4 e2 7d 1d e4       	vpabsw ymm4,ymm4
   10af8:	c5 f5 ee cc          	vpmaxsw ymm1,ymm1,ymm4
   10afc:	c5 cd fd f3          	vpaddw ymm6,ymm6,ymm3
   10b00:	c5 cd fd f1          	vpaddw ymm6,ymm6,ymm1
   10b04:	c3                   	ret    
   10b05:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   10b0c:	00 
   10b0d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000010b10 <x264_8_pixel_sa8d_8x8_avx2>:
   10b10:	c5 fd 6f 3d 00 00 00 	vmovdqa ymm7,YMMWORD PTR [rip+0x0]        # 10b18 <x264_8_pixel_sa8d_8x8_avx2+0x8>
   10b17:	00 
   10b18:	4c 8d 04 b6          	lea    r8,[rsi+rsi*4]
   10b1c:	4c 8d 0c 89          	lea    r9,[rcx+rcx*4]
   10b20:	c5 cd ef f6          	vpxor  ymm6,ymm6,ymm6
   10b24:	e8 67 fe ff ff       	call   10990 <x264_8_pixel_sa8d_8x8_internal_avx2>
   10b29:	c4 e3 7d 39 f1 01    	vextracti128 xmm1,ymm6,0x1
   10b2f:	c5 c9 fd f1          	vpaddw xmm6,xmm6,xmm1
   10b33:	c5 c9 f5 35 00 00 00 	vpmaddwd xmm6,xmm6,XMMWORD PTR [rip+0x0]        # 10b3b <x264_8_pixel_sa8d_8x8_avx2+0x2b>
   10b3a:	00 
   10b3b:	c5 c9 6d ce          	vpunpckhqdq xmm1,xmm6,xmm6
   10b3f:	c5 c9 fe f1          	vpaddd xmm6,xmm6,xmm1
   10b43:	c5 fb 70 ce 4e       	vpshuflw xmm1,xmm6,0x4e
   10b48:	c5 c9 fe f1          	vpaddd xmm6,xmm6,xmm1
   10b4c:	c5 f9 7e f0          	vmovd  eax,xmm6
   10b50:	83 c0 01             	add    eax,0x1
   10b53:	d1 e8                	shr    eax,1
   10b55:	c5 f8 77             	vzeroupper 
   10b58:	c3                   	ret    
   10b59:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000010b60 <x264_8_intra_sad_x9_8x8_avx2>:
   10b60:	48 89 e0             	mov    rax,rsp
   10b63:	48 83 e4 e0          	and    rsp,0xffffffffffffffe0
   10b67:	48 81 ec 40 02 00 00 	sub    rsp,0x240
   10b6e:	c5 fe 6f 2f          	vmovdqu ymm5,YMMWORD PTR [rdi]
   10b72:	c5 fe 6f 77 40       	vmovdqu ymm6,YMMWORD PTR [rdi+0x40]
   10b77:	c5 d5 6c 6f 20       	vpunpcklqdq ymm5,ymm5,YMMWORD PTR [rdi+0x20]
   10b7c:	c5 cd 6c 77 60       	vpunpcklqdq ymm6,ymm6,YMMWORD PTR [rdi+0x60]
   10b81:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 10b88 <x264_8_intra_sad_x9_8x8_avx2+0x28>
   10b88:	c4 e2 7d 59 42 10    	vpbroadcastq ymm0,QWORD PTR [rdx+0x10]
   10b8e:	c5 fd f6 e5          	vpsadbw ymm4,ymm0,ymm5
   10b92:	c5 fd f6 d6          	vpsadbw ymm2,ymm0,ymm6
   10b96:	c5 fd 7f 04 24       	vmovdqa YMMWORD PTR [rsp],ymm0
   10b9b:	c5 fd 7f 44 24 20    	vmovdqa YMMWORD PTR [rsp+0x20],ymm0
   10ba1:	c5 dd fd e2          	vpaddw ymm4,ymm4,ymm2
   10ba5:	c4 e2 7d 59 4a 07    	vpbroadcastq ymm1,QWORD PTR [rdx+0x7]
   10bab:	c4 e2 75 00 5f 80    	vpshufb ymm3,ymm1,YMMWORD PTR [rdi-0x80]
   10bb1:	c4 e2 75 00 57 a0    	vpshufb ymm2,ymm1,YMMWORD PTR [rdi-0x60]
   10bb7:	c5 fd 7f 5c 24 40    	vmovdqa YMMWORD PTR [rsp+0x40],ymm3
   10bbd:	c5 fd 7f 54 24 60    	vmovdqa YMMWORD PTR [rsp+0x60],ymm2
   10bc3:	c5 e5 f6 dd          	vpsadbw ymm3,ymm3,ymm5
   10bc7:	c5 ed f6 d6          	vpsadbw ymm2,ymm2,ymm6
   10bcb:	c5 e5 fd da          	vpaddw ymm3,ymm3,ymm2
   10bcf:	4c 8d 8c 24 00 01 00 	lea    r9,[rsp+0x100]
   10bd6:	00 
   10bd7:	c5 e5 73 fb 02       	vpslldq ymm3,ymm3,0x2
   10bdc:	c5 dd eb e3          	vpor   ymm4,ymm4,ymm3
   10be0:	c5 ed ef d2          	vpxor  ymm2,ymm2,ymm2
   10be4:	c5 fd f6 c2          	vpsadbw ymm0,ymm0,ymm2
   10be8:	c5 f5 f6 ca          	vpsadbw ymm1,ymm1,ymm2
   10bec:	c5 fd fd c1          	vpaddw ymm0,ymm0,ymm1
   10bf0:	c5 fd 71 d0 03       	vpsrlw ymm0,ymm0,0x3
   10bf5:	c5 fd e3 c2          	vpavgw ymm0,ymm0,ymm2
   10bf9:	c4 e2 7d 00 c2       	vpshufb ymm0,ymm0,ymm2
   10bfe:	c4 c1 7d 7f 41 80    	vmovdqa YMMWORD PTR [r9-0x80],ymm0
   10c04:	c4 c1 7d 7f 41 a0    	vmovdqa YMMWORD PTR [r9-0x60],ymm0
   10c0a:	c5 fd f6 dd          	vpsadbw ymm3,ymm0,ymm5
   10c0e:	c5 fd f6 d6          	vpsadbw ymm2,ymm0,ymm6
   10c12:	c5 e5 fd da          	vpaddw ymm3,ymm3,ymm2
   10c16:	c5 e5 73 fb 04       	vpslldq ymm3,ymm3,0x4
   10c1b:	c5 dd eb e3          	vpor   ymm4,ymm4,ymm3
   10c1f:	c4 e2 7d 5a 42 10    	vbroadcasti128 ymm0,XMMWORD PTR [rdx+0x10]
   10c25:	c4 e2 7d 5a 52 11    	vbroadcasti128 ymm2,XMMWORD PTR [rdx+0x11]
   10c2b:	c5 f5 73 f8 01       	vpslldq ymm1,ymm0,0x1
   10c30:	c5 fd e0 da          	vpavgb ymm3,ymm0,ymm2
   10c34:	c5 f5 e0 fa          	vpavgb ymm7,ymm1,ymm2
   10c38:	c5 ed ef d1          	vpxor  ymm2,ymm2,ymm1
   10c3c:	c5 ed db 15 00 00 00 	vpand  ymm2,ymm2,YMMWORD PTR [rip+0x0]        # 10c44 <x264_8_intra_sad_x9_8x8_avx2+0xe4>
   10c43:	00 
   10c44:	c5 c5 d8 fa          	vpsubusb ymm7,ymm7,ymm2
   10c48:	c5 fd e0 c7          	vpavgb ymm0,ymm0,ymm7
   10c4c:	c4 e2 7d 00 4f c0    	vpshufb ymm1,ymm0,YMMWORD PTR [rdi-0x40]
   10c52:	c4 e2 7d 00 57 e0    	vpshufb ymm2,ymm0,YMMWORD PTR [rdi-0x20]
   10c58:	c4 c1 7d 7f 49 c0    	vmovdqa YMMWORD PTR [r9-0x40],ymm1
   10c5e:	c4 c1 7d 7f 51 e0    	vmovdqa YMMWORD PTR [r9-0x20],ymm2
   10c64:	c5 f5 f6 cd          	vpsadbw ymm1,ymm1,ymm5
   10c68:	c5 ed f6 d6          	vpsadbw ymm2,ymm2,ymm6
   10c6c:	c5 f5 fd ca          	vpaddw ymm1,ymm1,ymm2
   10c70:	c5 f5 73 f9 06       	vpslldq ymm1,ymm1,0x6
   10c75:	c5 dd eb e1          	vpor   ymm4,ymm4,ymm1
   10c79:	c4 e3 7d 39 e1 01    	vextracti128 xmm1,ymm4,0x1
   10c7f:	c5 d9 fd e1          	vpaddw xmm4,xmm4,xmm1
   10c83:	c4 c1 79 7f 20       	vmovdqa XMMWORD PTR [r8],xmm4
   10c88:	c4 e3 65 38 f8 01    	vinserti128 ymm7,ymm3,xmm0,0x1
   10c8e:	c4 e2 7d 5a 52 08    	vbroadcasti128 ymm2,XMMWORD PTR [rdx+0x8]
   10c94:	c4 e2 7d 5a 42 07    	vbroadcasti128 ymm0,XMMWORD PTR [rdx+0x7]
   10c9a:	c4 e2 7d 5a 4a 06    	vbroadcasti128 ymm1,XMMWORD PTR [rdx+0x6]
   10ca0:	c5 ed e0 d8          	vpavgb ymm3,ymm2,ymm0
   10ca4:	c5 f5 e0 e2          	vpavgb ymm4,ymm1,ymm2
   10ca8:	c5 ed ef d1          	vpxor  ymm2,ymm2,ymm1
   10cac:	c5 ed db 15 00 00 00 	vpand  ymm2,ymm2,YMMWORD PTR [rip+0x0]        # 10cb4 <x264_8_intra_sad_x9_8x8_avx2+0x154>
   10cb3:	00 
   10cb4:	c5 dd d8 e2          	vpsubusb ymm4,ymm4,ymm2
   10cb8:	c5 fd e0 c4          	vpavgb ymm0,ymm0,ymm4
   10cbc:	c4 e2 7d 00 4f 40    	vpshufb ymm1,ymm0,YMMWORD PTR [rdi+0x40]
   10cc2:	c4 e2 7d 00 57 60    	vpshufb ymm2,ymm0,YMMWORD PTR [rdi+0x60]
   10cc8:	c4 c1 7d 7f 09       	vmovdqa YMMWORD PTR [r9],ymm1
   10ccd:	c4 c1 7d 7f 51 20    	vmovdqa YMMWORD PTR [r9+0x20],ymm2
   10cd3:	c5 f5 f6 e5          	vpsadbw ymm4,ymm1,ymm5
   10cd7:	c5 ed f6 d6          	vpsadbw ymm2,ymm2,ymm6
   10cdb:	c5 dd fd e2          	vpaddw ymm4,ymm4,ymm2
   10cdf:	48 81 c7 00 01 00 00 	add    rdi,0x100
   10ce6:	49 81 c1 c0 00 00 00 	add    r9,0xc0
   10ced:	c4 e3 65 02 d0 f3    	vpblendd ymm2,ymm3,ymm0,0xf3
   10cf3:	c4 e2 6d 00 4f 80    	vpshufb ymm1,ymm2,YMMWORD PTR [rdi-0x80]
   10cf9:	c4 e2 6d 00 57 a0    	vpshufb ymm2,ymm2,YMMWORD PTR [rdi-0x60]
   10cff:	c4 c1 7d 7f 49 80    	vmovdqa YMMWORD PTR [r9-0x80],ymm1
   10d05:	c4 c1 7d 7f 51 a0    	vmovdqa YMMWORD PTR [r9-0x60],ymm2
   10d0b:	c5 f5 f6 cd          	vpsadbw ymm1,ymm1,ymm5
   10d0f:	c5 ed f6 d6          	vpsadbw ymm2,ymm2,ymm6
   10d13:	c5 f5 fd ca          	vpaddw ymm1,ymm1,ymm2
   10d17:	c5 f5 73 f9 02       	vpslldq ymm1,ymm1,0x2
   10d1c:	c5 dd eb e1          	vpor   ymm4,ymm4,ymm1
   10d20:	c5 ed 73 db 04       	vpsrldq ymm2,ymm3,0x4
   10d25:	c4 e3 6d 0e d0 fc    	vpblendw ymm2,ymm2,ymm0,0xfc
   10d2b:	c5 fd 60 c3          	vpunpcklbw ymm0,ymm0,ymm3
   10d2f:	c4 e2 6d 00 4f c0    	vpshufb ymm1,ymm2,YMMWORD PTR [rdi-0x40]
   10d35:	c4 e2 7d 00 57 e0    	vpshufb ymm2,ymm0,YMMWORD PTR [rdi-0x20]
   10d3b:	c4 c1 7d 7f 49 c0    	vmovdqa YMMWORD PTR [r9-0x40],ymm1
   10d41:	c4 c1 7d 7f 51 e0    	vmovdqa YMMWORD PTR [r9-0x20],ymm2
   10d47:	c5 f5 f6 cd          	vpsadbw ymm1,ymm1,ymm5
   10d4b:	c5 ed f6 d6          	vpsadbw ymm2,ymm2,ymm6
   10d4f:	c5 f5 fd ca          	vpaddw ymm1,ymm1,ymm2
   10d53:	c5 f5 73 f9 04       	vpslldq ymm1,ymm1,0x4
   10d58:	c5 dd eb e1          	vpor   ymm4,ymm4,ymm1
   10d5c:	c4 e2 45 00 8f 00 ff 	vpshufb ymm1,ymm7,YMMWORD PTR [rdi-0x100]
   10d63:	ff ff 
   10d65:	c4 e2 45 00 97 20 ff 	vpshufb ymm2,ymm7,YMMWORD PTR [rdi-0xe0]
   10d6c:	ff ff 
   10d6e:	c4 c1 7d 7f 09       	vmovdqa YMMWORD PTR [r9],ymm1
   10d73:	c4 c1 7d 7f 51 20    	vmovdqa YMMWORD PTR [r9+0x20],ymm2
   10d79:	c5 f5 f6 cd          	vpsadbw ymm1,ymm1,ymm5
   10d7d:	c5 ed f6 d6          	vpsadbw ymm2,ymm2,ymm6
   10d81:	c5 f5 fd ca          	vpaddw ymm1,ymm1,ymm2
   10d85:	c5 f5 73 f9 06       	vpslldq ymm1,ymm1,0x6
   10d8a:	c5 dd eb e1          	vpor   ymm4,ymm4,ymm1
   10d8e:	c4 e3 7d 39 e1 01    	vextracti128 xmm1,ymm4,0x1
   10d94:	c5 d9 fd e1          	vpaddw xmm4,xmm4,xmm1
   10d98:	c4 c1 79 6f 18       	vmovdqa xmm3,XMMWORD PTR [r8]
   10d9d:	c5 e5 6d fc          	vpunpckhqdq ymm7,ymm3,ymm4
   10da1:	c5 e5 6c dc          	vpunpcklqdq ymm3,ymm3,ymm4
   10da5:	c5 e1 fd df          	vpaddw xmm3,xmm3,xmm7
   10da9:	c5 f5 73 f8 01       	vpslldq ymm1,ymm0,0x1
   10dae:	c4 e2 7d 58 42 07    	vpbroadcastd ymm0,DWORD PTR [rdx+0x7]
   10db4:	c4 e3 7d 0f c1 01    	vpalignr ymm0,ymm0,ymm1,0x1
   10dba:	c4 e2 7d 00 0f       	vpshufb ymm1,ymm0,YMMWORD PTR [rdi]
   10dbf:	c4 e2 7d 00 57 20    	vpshufb ymm2,ymm0,YMMWORD PTR [rdi+0x20]
   10dc5:	c4 c1 7d 7f 49 40    	vmovdqa YMMWORD PTR [r9+0x40],ymm1
   10dcb:	c4 c1 7d 7f 51 60    	vmovdqa YMMWORD PTR [r9+0x60],ymm2
   10dd1:	c5 f5 f6 cd          	vpsadbw ymm1,ymm1,ymm5
   10dd5:	c5 ed f6 d6          	vpsadbw ymm2,ymm2,ymm6
   10dd9:	c5 f5 fd ca          	vpaddw ymm1,ymm1,ymm2
   10ddd:	c4 e3 7d 39 ca 01    	vextracti128 xmm2,ymm1,0x1
   10de3:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
   10de7:	c5 f1 6d d1          	vpunpckhqdq xmm2,xmm1,xmm1
   10deb:	c5 f1 fd ca          	vpaddw xmm1,xmm1,xmm2
   10def:	c5 f9 7e ca          	vmovd  edx,xmm1
   10df3:	c5 e1 fd 19          	vpaddw xmm3,xmm3,XMMWORD PTR [rcx]
   10df7:	c4 c1 79 7f 18       	vmovdqa XMMWORD PTR [r8],xmm3
   10dfc:	66 03 51 10          	add    dx,WORD PTR [rcx+0x10]
   10e00:	66 41 89 50 10       	mov    WORD PTR [r8+0x10],dx
   10e05:	c4 e2 79 41 db       	vphminposuw xmm3,xmm3
   10e0a:	c5 f9 7e d9          	vmovd  ecx,xmm3
   10e0e:	81 c2 00 00 08 00    	add    edx,0x80000
   10e14:	66 39 d1             	cmp    cx,dx
   10e17:	0f 4f ca             	cmovg  ecx,edx
   10e1a:	89 ca                	mov    edx,ecx
   10e1c:	48 c1 e9 10          	shr    rcx,0x10
   10e20:	48 c1 e1 06          	shl    rcx,0x6
   10e24:	48 83 ee 80          	sub    rsi,0xffffffffffffff80
   10e28:	c5 f9 6f 04 0c       	vmovdqa xmm0,XMMWORD PTR [rsp+rcx*1]
   10e2d:	c5 f9 6f 4c 0c 10    	vmovdqa xmm1,XMMWORD PTR [rsp+rcx*1+0x10]
   10e33:	c5 f9 6f 54 0c 20    	vmovdqa xmm2,XMMWORD PTR [rsp+rcx*1+0x20]
   10e39:	c5 f9 6f 5c 0c 30    	vmovdqa xmm3,XMMWORD PTR [rsp+rcx*1+0x30]
   10e3f:	c5 f9 d6 46 80       	vmovq  QWORD PTR [rsi-0x80],xmm0
   10e44:	c5 f8 17 46 c0       	vmovhps QWORD PTR [rsi-0x40],xmm0
   10e49:	c5 f9 d6 4e a0       	vmovq  QWORD PTR [rsi-0x60],xmm1
   10e4e:	c5 f8 17 4e e0       	vmovhps QWORD PTR [rsi-0x20],xmm1
   10e53:	c5 f9 d6 16          	vmovq  QWORD PTR [rsi],xmm2
   10e57:	c5 f8 17 56 40       	vmovhps QWORD PTR [rsi+0x40],xmm2
   10e5c:	c5 f9 d6 5e 20       	vmovq  QWORD PTR [rsi+0x20],xmm3
   10e61:	c5 f8 17 5e 60       	vmovhps QWORD PTR [rsi+0x60],xmm3
   10e66:	48 89 c4             	mov    rsp,rax
   10e69:	89 d0                	mov    eax,edx
   10e6b:	c5 f8 77             	vzeroupper 
   10e6e:	c3                   	ret    
   10e6f:	90                   	nop

0000000000010e70 <x264_8_pixel_satd_16x8_internal_avx512>:
   10e70:	62 e2 fd 48 5b 35 00 	vbroadcasti64x4 zmm22,YMMWORD PTR [rip+0x0]        # 10e7a <x264_8_pixel_satd_16x8_internal_avx512+0xa>
   10e77:	00 00 00 
   10e7a:	c5 ed 46 d2          	kxnorb k2,k2,k2
   10e7e:	41 b8 55 55 55 55    	mov    r8d,0x55555555
   10e84:	c5 f8 44 d2          	knotw  k2,k2
   10e88:	c4 c1 7b 92 c8       	kmovd  k1,r8d
   10e8d:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
   10e91:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
   10e95:	62 e2 7d 28 5a 07    	vbroadcasti32x4 ymm16,XMMWORD PTR [rdi]
   10e9b:	62 e2 7d 4a 5a 04 b7 	vbroadcasti32x4 zmm16{k2},XMMWORD PTR [rdi+rsi*4]
   10ea2:	62 e2 7d 28 5a 22    	vbroadcasti32x4 ymm20,XMMWORD PTR [rdx]
   10ea8:	62 e2 7d 4a 5a 24 8a 	vbroadcasti32x4 zmm20{k2},XMMWORD PTR [rdx+rcx*4]
   10eaf:	62 e2 7d 28 5a 14 77 	vbroadcasti32x4 ymm18,XMMWORD PTR [rdi+rsi*2]
   10eb6:	62 a2 7d 4a 5a 14 47 	vbroadcasti32x4 zmm18{k2},XMMWORD PTR [rdi+r8*2]
   10ebd:	62 e2 7d 28 5a 2c 4a 	vbroadcasti32x4 ymm21,XMMWORD PTR [rdx+rcx*2]
   10ec4:	62 a2 7d 4a 5a 2c 4a 	vbroadcasti32x4 zmm21{k2},XMMWORD PTR [rdx+r9*2]
   10ecb:	62 a2 5d 40 04 e6    	vpmaddubsw zmm20,zmm20,zmm22
   10ed1:	62 a2 7d 40 04 c6    	vpmaddubsw zmm16,zmm16,zmm22
   10ed7:	62 a2 55 40 04 ee    	vpmaddubsw zmm21,zmm21,zmm22
   10edd:	62 a2 6d 40 04 d6    	vpmaddubsw zmm18,zmm18,zmm22
   10ee3:	62 a1 7d 40 f9 c4    	vpsubw zmm16,zmm16,zmm20
   10ee9:	62 a1 6d 40 f9 d5    	vpsubw zmm18,zmm18,zmm21
   10eef:	62 e2 7d 28 5a 0c 37 	vbroadcasti32x4 ymm17,XMMWORD PTR [rdi+rsi*1]
   10ef6:	62 e2 7d 28 5a 24 0a 	vbroadcasti32x4 ymm20,XMMWORD PTR [rdx+rcx*1]
   10efd:	62 a2 7d 28 5a 1c 07 	vbroadcasti32x4 ymm19,XMMWORD PTR [rdi+r8*1]
   10f04:	62 a2 7d 28 5a 2c 0a 	vbroadcasti32x4 ymm21,XMMWORD PTR [rdx+r9*1]
   10f0b:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   10f0f:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   10f13:	62 e2 7d 4a 5a 0c 37 	vbroadcasti32x4 zmm17{k2},XMMWORD PTR [rdi+rsi*1]
   10f1a:	62 e2 7d 4a 5a 24 0a 	vbroadcasti32x4 zmm20{k2},XMMWORD PTR [rdx+rcx*1]
   10f21:	62 a2 7d 4a 5a 1c 07 	vbroadcasti32x4 zmm19{k2},XMMWORD PTR [rdi+r8*1]
   10f28:	62 a2 7d 4a 5a 2c 0a 	vbroadcasti32x4 zmm21{k2},XMMWORD PTR [rdx+r9*1]
   10f2f:	62 a2 5d 40 04 e6    	vpmaddubsw zmm20,zmm20,zmm22
   10f35:	62 a2 75 40 04 ce    	vpmaddubsw zmm17,zmm17,zmm22
   10f3b:	62 a2 55 40 04 ee    	vpmaddubsw zmm21,zmm21,zmm22
   10f41:	62 a2 65 40 04 de    	vpmaddubsw zmm19,zmm19,zmm22
   10f47:	62 a1 75 40 f9 cc    	vpsubw zmm17,zmm17,zmm20
   10f4d:	62 a1 65 40 f9 dd    	vpsubw zmm19,zmm19,zmm21
   10f53:	62 a1 7d 40 fd e1    	vpaddw zmm20,zmm16,zmm17
   10f59:	62 a1 75 40 f9 c8    	vpsubw zmm17,zmm17,zmm16
   10f5f:	62 a1 6d 40 fd c3    	vpaddw zmm16,zmm18,zmm19
   10f65:	62 a1 65 40 f9 da    	vpsubw zmm19,zmm19,zmm18
   10f6b:	62 a1 5d 40 fd d0    	vpaddw zmm18,zmm20,zmm16
   10f71:	62 a1 7d 40 f9 c4    	vpsubw zmm16,zmm16,zmm20
   10f77:	62 a1 75 40 fd e3    	vpaddw zmm20,zmm17,zmm19
   10f7d:	62 a1 65 40 f9 d9    	vpsubw zmm19,zmm19,zmm17
   10f83:	62 a2 7d 48 1d d2    	vpabsw zmm18,zmm18
   10f89:	62 a2 7d 48 1d c0    	vpabsw zmm16,zmm16
   10f8f:	62 b1 75 40 73 da 02 	vpsrldq zmm17,zmm18,0x2
   10f96:	62 b1 55 40 72 d0 10 	vpsrld zmm21,zmm16,0x10
   10f9d:	62 a1 6d 40 ee d1    	vpmaxsw zmm18,zmm18,zmm17
   10fa3:	62 a1 7d 40 ee c5    	vpmaxsw zmm16,zmm16,zmm21
   10fa9:	62 a2 7d 48 1d e4    	vpabsw zmm20,zmm20
   10faf:	62 a2 7d 48 1d db    	vpabsw zmm19,zmm19
   10fb5:	62 b1 75 40 73 dc 02 	vpsrldq zmm17,zmm20,0x2
   10fbc:	62 b1 55 40 72 d3 10 	vpsrld zmm21,zmm19,0x10
   10fc3:	62 a1 5d 40 ee e1    	vpmaxsw zmm20,zmm20,zmm17
   10fc9:	62 a1 65 40 ee dd    	vpmaxsw zmm19,zmm19,zmm21
   10fcf:	62 a1 6d 40 fd c8    	vpaddw zmm17,zmm18,zmm16
   10fd5:	62 a1 5d 40 fd c3    	vpaddw zmm16,zmm20,zmm19
   10fdb:	c3                   	ret    
   10fdc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000010fe0 <x264_8_pixel_satd_8x8_internal_avx512>:
   10fe0:	62 e2 fd 48 5b 25 00 	vbroadcasti64x4 zmm20,YMMWORD PTR [rip+0x0]        # 10fea <x264_8_pixel_satd_8x8_internal_avx512+0xa>
   10fe7:	00 00 00 
   10fea:	41 b8 55 55 55 55    	mov    r8d,0x55555555
   10ff0:	c4 c1 7b 92 c8       	kmovd  k1,r8d
   10ff5:	c4 e3 79 32 d1 05    	kshiftlb k2,k1,0x5
   10ffb:	c4 e3 79 32 d9 04    	kshiftlb k3,k1,0x4
   11001:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
   11005:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
   11009:	62 e2 fd 28 59 07    	vpbroadcastq ymm16,QWORD PTR [rdi]
   1100f:	62 e2 fd 29 59 04 77 	vpbroadcastq ymm16{k1},QWORD PTR [rdi+rsi*2]
   11016:	62 e2 fd 28 59 12    	vpbroadcastq ymm18,QWORD PTR [rdx]
   1101c:	62 e2 fd 29 59 14 4a 	vpbroadcastq ymm18{k1},QWORD PTR [rdx+rcx*2]
   11023:	62 e2 fd 4a 59 04 b7 	vpbroadcastq zmm16{k2},QWORD PTR [rdi+rsi*4]
   1102a:	62 e2 fd 4a 59 14 8a 	vpbroadcastq zmm18{k2},QWORD PTR [rdx+rcx*4]
   11031:	62 a2 fd 4b 59 04 47 	vpbroadcastq zmm16{k3},QWORD PTR [rdi+r8*2]
   11038:	62 a2 fd 4b 59 14 4a 	vpbroadcastq zmm18{k3},QWORD PTR [rdx+r9*2]
   1103f:	62 e2 fd 28 59 0c 37 	vpbroadcastq ymm17,QWORD PTR [rdi+rsi*1]
   11046:	62 a2 fd 29 59 0c 07 	vpbroadcastq ymm17{k1},QWORD PTR [rdi+r8*1]
   1104d:	62 e2 fd 28 59 1c 0a 	vpbroadcastq ymm19,QWORD PTR [rdx+rcx*1]
   11054:	62 a2 fd 29 59 1c 0a 	vpbroadcastq ymm19{k1},QWORD PTR [rdx+r9*1]
   1105b:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   1105f:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   11063:	62 e2 fd 4a 59 0c 37 	vpbroadcastq zmm17{k2},QWORD PTR [rdi+rsi*1]
   1106a:	62 e2 fd 4a 59 1c 0a 	vpbroadcastq zmm19{k2},QWORD PTR [rdx+rcx*1]
   11071:	62 a2 fd 4b 59 0c 07 	vpbroadcastq zmm17{k3},QWORD PTR [rdi+r8*1]
   11078:	62 a2 fd 4b 59 1c 0a 	vpbroadcastq zmm19{k3},QWORD PTR [rdx+r9*1]
   1107f:	62 a2 6d 40 04 d4    	vpmaddubsw zmm18,zmm18,zmm20
   11085:	62 a2 7d 40 04 c4    	vpmaddubsw zmm16,zmm16,zmm20
   1108b:	62 a2 65 40 04 dc    	vpmaddubsw zmm19,zmm19,zmm20
   11091:	62 a2 75 40 04 cc    	vpmaddubsw zmm17,zmm17,zmm20
   11097:	62 a1 7d 40 f9 c2    	vpsubw zmm16,zmm16,zmm18
   1109d:	62 a1 75 40 f9 cb    	vpsubw zmm17,zmm17,zmm19
   110a3:	62 a1 7d 40 fd d1    	vpaddw zmm18,zmm16,zmm17
   110a9:	62 a1 75 40 f9 c8    	vpsubw zmm17,zmm17,zmm16
   110af:	62 a1 ed 40 6d c1    	vpunpckhqdq zmm16,zmm18,zmm17
   110b5:	62 a1 ed 40 6c d1    	vpunpcklqdq zmm18,zmm18,zmm17
   110bb:	62 a1 6d 40 fd c8    	vpaddw zmm17,zmm18,zmm16
   110c1:	62 a1 7d 40 f9 c2    	vpsubw zmm16,zmm16,zmm18
   110c7:	62 a2 7d 48 1d c9    	vpabsw zmm17,zmm17
   110cd:	62 a2 7d 48 1d c0    	vpabsw zmm16,zmm16
   110d3:	62 b1 6d 40 73 d9 02 	vpsrldq zmm18,zmm17,0x2
   110da:	62 b1 65 40 72 d0 10 	vpsrld zmm19,zmm16,0x10
   110e1:	62 a1 75 40 ee ca    	vpmaxsw zmm17,zmm17,zmm18
   110e7:	62 a1 7d 40 ee c3    	vpmaxsw zmm16,zmm16,zmm19
   110ed:	c3                   	ret    
   110ee:	66 90                	xchg   ax,ax

00000000000110f0 <x264_8_pixel_satd_16x8_avx512>:
   110f0:	e8 7b fd ff ff       	call   10e70 <x264_8_pixel_satd_16x8_internal_avx512>
   110f5:	eb 2e                	jmp    11125 <x264_8_pixel_satd_8x8_avx512+0x5>
   110f7:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   110fe:	00 
   110ff:	90                   	nop

0000000000011100 <x264_8_pixel_satd_16x16_avx512>:
   11100:	e8 6b fd ff ff       	call   10e70 <x264_8_pixel_satd_16x8_internal_avx512>
   11105:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   11109:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   1110d:	62 a1 7d 40 fd f9    	vpaddw zmm23,zmm16,zmm17
   11113:	e8 7d fd ff ff       	call   10e95 <x264_8_pixel_satd_16x8_internal_avx512+0x25>
   11118:	62 a1 75 40 fd cf    	vpaddw zmm17,zmm17,zmm23
   1111e:	eb 05                	jmp    11125 <x264_8_pixel_satd_8x8_avx512+0x5>

0000000000011120 <x264_8_pixel_satd_8x8_avx512>:
   11120:	e8 bb fe ff ff       	call   10fe0 <x264_8_pixel_satd_8x8_internal_avx512>
   11125:	62 a1 7d c1 fd c1    	vpaddw zmm16{k1}{z},zmm16,zmm17
   1112b:	62 a3 7d 48 3b c1 01 	vextracti32x8 ymm17,zmm16,0x1
   11132:	62 a1 7d 20 fe c1    	vpaddd ymm16,ymm16,ymm17
   11138:	62 a3 7d 28 39 c1 01 	vextracti32x4 xmm17,ymm16,0x1
   1113f:	62 b1 7d 00 fe c1    	vpaddd xmm0,xmm16,xmm17
   11145:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
   11149:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
   1114d:	c4 e1 f9 7e c0       	vmovq  rax,xmm0
   11152:	c4 e3 fb f0 d0 20    	rorx   rdx,rax,0x20
   11158:	01 d0                	add    eax,edx
   1115a:	c3                   	ret    
   1115b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000011160 <x264_8_pixel_satd_8x16_avx512>:
   11160:	e8 7b fe ff ff       	call   10fe0 <x264_8_pixel_satd_8x8_internal_avx512>
   11165:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   11169:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   1116d:	62 a1 7d 40 fd e9    	vpaddw zmm21,zmm16,zmm17
   11173:	e8 91 fe ff ff       	call   11009 <x264_8_pixel_satd_8x8_internal_avx512+0x29>
   11178:	62 a1 75 40 fd cd    	vpaddw zmm17,zmm17,zmm21
   1117e:	eb a5                	jmp    11125 <x264_8_pixel_satd_8x8_avx512+0x5>

0000000000011180 <x264_8_pixel_satd_4x8_internal_avx512>:
   11180:	62 e2 7d 28 5a 25 00 	vbroadcasti32x4 ymm20,XMMWORD PTR [rip+0x0]        # 1118a <x264_8_pixel_satd_4x8_internal_avx512+0xa>
   11187:	00 00 00 
   1118a:	41 b8 0c 55 55 00    	mov    r8d,0x55550c
   11190:	c4 c1 7b 92 d0       	kmovd  k2,r8d
   11195:	c4 e3 79 32 da 02    	kshiftlb k3,k2,0x2
   1119b:	c4 e3 79 32 e2 04    	kshiftlb k4,k2,0x4
   111a1:	c4 e3 79 31 ca 08    	kshiftrd k1,k2,0x8
   111a7:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
   111ab:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
   111af:	62 e2 7d 08 58 07    	vpbroadcastd xmm16,DWORD PTR [rdi]
   111b5:	62 e2 7d 0a 58 04 77 	vpbroadcastd xmm16{k2},DWORD PTR [rdi+rsi*2]
   111bc:	62 e2 7d 08 58 12    	vpbroadcastd xmm18,DWORD PTR [rdx]
   111c2:	62 e2 7d 0a 58 14 4a 	vpbroadcastd xmm18{k2},DWORD PTR [rdx+rcx*2]
   111c9:	62 e2 7d 2b 58 04 b7 	vpbroadcastd ymm16{k3},DWORD PTR [rdi+rsi*4]
   111d0:	62 e2 7d 2b 58 14 8a 	vpbroadcastd ymm18{k3},DWORD PTR [rdx+rcx*4]
   111d7:	62 a2 7d 2c 58 04 47 	vpbroadcastd ymm16{k4},DWORD PTR [rdi+r8*2]
   111de:	62 a2 7d 2c 58 14 4a 	vpbroadcastd ymm18{k4},DWORD PTR [rdx+r9*2]
   111e5:	62 e2 7d 08 58 0c 37 	vpbroadcastd xmm17,DWORD PTR [rdi+rsi*1]
   111ec:	62 a2 7d 0a 58 0c 07 	vpbroadcastd xmm17{k2},DWORD PTR [rdi+r8*1]
   111f3:	62 e2 7d 08 58 1c 0a 	vpbroadcastd xmm19,DWORD PTR [rdx+rcx*1]
   111fa:	62 a2 7d 0a 58 1c 0a 	vpbroadcastd xmm19{k2},DWORD PTR [rdx+r9*1]
   11201:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   11205:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   11209:	62 e2 7d 2b 58 0c 37 	vpbroadcastd ymm17{k3},DWORD PTR [rdi+rsi*1]
   11210:	62 e2 7d 2b 58 1c 0a 	vpbroadcastd ymm19{k3},DWORD PTR [rdx+rcx*1]
   11217:	62 a2 7d 2c 58 0c 07 	vpbroadcastd ymm17{k4},DWORD PTR [rdi+r8*1]
   1121e:	62 a2 7d 2c 58 1c 0a 	vpbroadcastd ymm19{k4},DWORD PTR [rdx+r9*1]
   11225:	62 a2 6d 20 04 d4    	vpmaddubsw ymm18,ymm18,ymm20
   1122b:	62 a2 7d 20 04 c4    	vpmaddubsw ymm16,ymm16,ymm20
   11231:	62 a2 65 20 04 dc    	vpmaddubsw ymm19,ymm19,ymm20
   11237:	62 a2 75 20 04 cc    	vpmaddubsw ymm17,ymm17,ymm20
   1123d:	62 a1 7d 20 f9 c2    	vpsubw ymm16,ymm16,ymm18
   11243:	62 a1 75 20 f9 cb    	vpsubw ymm17,ymm17,ymm19
   11249:	62 a1 7d 20 fd d1    	vpaddw ymm18,ymm16,ymm17
   1124f:	62 a1 75 20 f9 c8    	vpsubw ymm17,ymm17,ymm16
   11255:	62 a1 ed 20 6d c1    	vpunpckhqdq ymm16,ymm18,ymm17
   1125b:	62 a1 ed 20 6c d1    	vpunpcklqdq ymm18,ymm18,ymm17
   11261:	62 a1 6d 20 fd c8    	vpaddw ymm17,ymm18,ymm16
   11267:	62 a1 7d 20 f9 c2    	vpsubw ymm16,ymm16,ymm18
   1126d:	62 a2 7d 28 1d c9    	vpabsw ymm17,ymm17
   11273:	62 a2 7d 28 1d c0    	vpabsw ymm16,ymm16
   11279:	62 b1 6d 20 73 d9 02 	vpsrldq ymm18,ymm17,0x2
   11280:	62 b1 65 20 72 d0 10 	vpsrld ymm19,ymm16,0x10
   11287:	62 a1 75 20 ee ca    	vpmaxsw ymm17,ymm17,ymm18
   1128d:	62 a1 7d 20 ee c3    	vpmaxsw ymm16,ymm16,ymm19
   11293:	c3                   	ret    
   11294:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1129b:	00 
   1129c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000112a0 <x264_8_pixel_satd_8x4_avx512>:
   112a0:	62 e1 7d 28 6f 25 00 	vmovdqa32 ymm20,YMMWORD PTR [rip+0x0]        # 112aa <x264_8_pixel_satd_8x4_avx512+0xa>
   112a7:	00 00 00 
   112aa:	41 b8 55 55 00 00    	mov    r8d,0x5555
   112b0:	c4 c1 78 92 c8       	kmovw  k1,r8d
   112b5:	62 e2 fd 28 59 07    	vpbroadcastq ymm16,QWORD PTR [rdi]
   112bb:	62 e2 fd 29 59 04 77 	vpbroadcastq ymm16{k1},QWORD PTR [rdi+rsi*2]
   112c2:	62 e2 fd 28 59 12    	vpbroadcastq ymm18,QWORD PTR [rdx]
   112c8:	62 e2 fd 29 59 14 4a 	vpbroadcastq ymm18{k1},QWORD PTR [rdx+rcx*2]
   112cf:	48 01 f7             	add    rdi,rsi
   112d2:	48 01 ca             	add    rdx,rcx
   112d5:	62 e2 fd 28 59 0f    	vpbroadcastq ymm17,QWORD PTR [rdi]
   112db:	62 e2 fd 29 59 0c 77 	vpbroadcastq ymm17{k1},QWORD PTR [rdi+rsi*2]
   112e2:	62 e2 fd 28 59 1a    	vpbroadcastq ymm19,QWORD PTR [rdx]
   112e8:	62 e2 fd 29 59 1c 4a 	vpbroadcastq ymm19{k1},QWORD PTR [rdx+rcx*2]
   112ef:	e8 31 ff ff ff       	call   11225 <x264_8_pixel_satd_4x8_internal_avx512+0xa5>
   112f4:	eb 0f                	jmp    11305 <x264_8_pixel_satd_4x8_avx512+0x5>
   112f6:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   112fd:	00 
   112fe:	66 90                	xchg   ax,ax

0000000000011300 <x264_8_pixel_satd_4x8_avx512>:
   11300:	e8 7b fe ff ff       	call   11180 <x264_8_pixel_satd_4x8_internal_avx512>
   11305:	62 a1 7d a1 fd c1    	vpaddw ymm16{k1}{z},ymm16,ymm17
   1130b:	62 a3 7d 28 39 c1 01 	vextracti32x4 xmm17,ymm16,0x1
   11312:	62 b1 7d 00 fe c1    	vpaddd xmm0,xmm16,xmm17
   11318:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
   1131c:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
   11320:	c4 e1 f9 7e c0       	vmovq  rax,xmm0
   11325:	c4 e3 fb f0 d0 20    	rorx   rdx,rax,0x20
   1132b:	01 d0                	add    eax,edx
   1132d:	c3                   	ret    
   1132e:	66 90                	xchg   ax,ax

0000000000011330 <x264_8_pixel_satd_4x16_avx512>:
   11330:	e8 4b fe ff ff       	call   11180 <x264_8_pixel_satd_4x8_internal_avx512>
   11335:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   11339:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   1133d:	62 a1 7d 20 fd e9    	vpaddw ymm21,ymm16,ymm17
   11343:	e8 67 fe ff ff       	call   111af <x264_8_pixel_satd_4x8_internal_avx512+0x2f>
   11348:	62 a1 75 20 fd cd    	vpaddw ymm17,ymm17,ymm21
   1134e:	eb b5                	jmp    11305 <x264_8_pixel_satd_4x8_avx512+0x5>

0000000000011350 <x264_8_pixel_satd_4x4_avx512>:
   11350:	c5 f9 6f 25 00 00 00 	vmovdqa xmm4,XMMWORD PTR [rip+0x0]        # 11358 <x264_8_pixel_satd_4x4_avx512+0x8>
   11357:	00 
   11358:	41 b8 0c 55 00 00    	mov    r8d,0x550c
   1135e:	c4 c1 78 92 d0       	kmovw  k2,r8d
   11363:	c4 e3 f9 30 ca 08    	kshiftrw k1,k2,0x8
   11369:	c4 e2 79 58 07       	vpbroadcastd xmm0,DWORD PTR [rdi]
   1136e:	62 f2 7d 0a 58 04 77 	vpbroadcastd xmm0{k2},DWORD PTR [rdi+rsi*2]
   11375:	c4 e2 79 58 12       	vpbroadcastd xmm2,DWORD PTR [rdx]
   1137a:	62 f2 7d 0a 58 14 4a 	vpbroadcastd xmm2{k2},DWORD PTR [rdx+rcx*2]
   11381:	48 01 f7             	add    rdi,rsi
   11384:	48 01 ca             	add    rdx,rcx
   11387:	c4 e2 79 58 0f       	vpbroadcastd xmm1,DWORD PTR [rdi]
   1138c:	62 f2 7d 0a 58 0c 77 	vpbroadcastd xmm1{k2},DWORD PTR [rdi+rsi*2]
   11393:	c4 e2 79 58 1a       	vpbroadcastd xmm3,DWORD PTR [rdx]
   11398:	62 f2 7d 0a 58 1c 4a 	vpbroadcastd xmm3{k2},DWORD PTR [rdx+rcx*2]
   1139f:	c4 e2 69 04 d4       	vpmaddubsw xmm2,xmm2,xmm4
   113a4:	c4 e2 79 04 c4       	vpmaddubsw xmm0,xmm0,xmm4
   113a9:	c4 e2 61 04 dc       	vpmaddubsw xmm3,xmm3,xmm4
   113ae:	c4 e2 71 04 cc       	vpmaddubsw xmm1,xmm1,xmm4
   113b3:	c5 f9 f9 c2          	vpsubw xmm0,xmm0,xmm2
   113b7:	c5 f1 f9 cb          	vpsubw xmm1,xmm1,xmm3
   113bb:	c5 f9 fd d1          	vpaddw xmm2,xmm0,xmm1
   113bf:	c5 f1 f9 c8          	vpsubw xmm1,xmm1,xmm0
   113c3:	c5 e9 6d c1          	vpunpckhqdq xmm0,xmm2,xmm1
   113c7:	c5 e9 6c d1          	vpunpcklqdq xmm2,xmm2,xmm1
   113cb:	c5 e9 fd c8          	vpaddw xmm1,xmm2,xmm0
   113cf:	c5 f9 f9 c2          	vpsubw xmm0,xmm0,xmm2
   113d3:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
   113d8:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
   113dd:	c5 e9 73 d9 02       	vpsrldq xmm2,xmm1,0x2
   113e2:	c5 e1 72 d0 10       	vpsrld xmm3,xmm0,0x10
   113e7:	c5 f1 ee ca          	vpmaxsw xmm1,xmm1,xmm2
   113eb:	c5 f9 ee c3          	vpmaxsw xmm0,xmm0,xmm3
   113ef:	62 f1 7d 89 fd c1    	vpaddw xmm0{k1}{z},xmm0,xmm1
   113f5:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
   113f9:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
   113fd:	c4 e1 f9 7e c0       	vmovq  rax,xmm0
   11402:	c4 e3 fb f0 d0 20    	rorx   rdx,rax,0x20
   11408:	01 d0                	add    eax,edx
   1140a:	c3                   	ret    
   1140b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000011410 <x264_8_pixel_sa8d_8x8_avx512>:
   11410:	62 e2 fd 48 5b 25 00 	vbroadcasti64x4 zmm20,YMMWORD PTR [rip+0x0]        # 1141a <x264_8_pixel_sa8d_8x8_avx512+0xa>
   11417:	00 00 00 
   1141a:	41 b8 55 55 55 55    	mov    r8d,0x55555555
   11420:	c4 c1 7b 92 c8       	kmovd  k1,r8d
   11425:	c4 e3 79 32 d1 05    	kshiftlb k2,k1,0x5
   1142b:	c4 e3 79 32 d9 04    	kshiftlb k3,k1,0x4
   11431:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
   11435:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
   11439:	62 e2 fd 28 59 07    	vpbroadcastq ymm16,QWORD PTR [rdi]
   1143f:	62 e2 fd 29 59 04 77 	vpbroadcastq ymm16{k1},QWORD PTR [rdi+rsi*2]
   11446:	62 e2 fd 28 59 12    	vpbroadcastq ymm18,QWORD PTR [rdx]
   1144c:	62 e2 fd 29 59 14 4a 	vpbroadcastq ymm18{k1},QWORD PTR [rdx+rcx*2]
   11453:	62 e2 fd 4a 59 04 b7 	vpbroadcastq zmm16{k2},QWORD PTR [rdi+rsi*4]
   1145a:	62 e2 fd 4a 59 14 8a 	vpbroadcastq zmm18{k2},QWORD PTR [rdx+rcx*4]
   11461:	62 a2 fd 4b 59 04 47 	vpbroadcastq zmm16{k3},QWORD PTR [rdi+r8*2]
   11468:	62 a2 fd 4b 59 14 4a 	vpbroadcastq zmm18{k3},QWORD PTR [rdx+r9*2]
   1146f:	62 e2 fd 28 59 0c 37 	vpbroadcastq ymm17,QWORD PTR [rdi+rsi*1]
   11476:	62 a2 fd 29 59 0c 07 	vpbroadcastq ymm17{k1},QWORD PTR [rdi+r8*1]
   1147d:	62 e2 fd 28 59 1c 0a 	vpbroadcastq ymm19,QWORD PTR [rdx+rcx*1]
   11484:	62 a2 fd 29 59 1c 0a 	vpbroadcastq ymm19{k1},QWORD PTR [rdx+r9*1]
   1148b:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
   1148f:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
   11493:	62 e2 fd 4a 59 0c 37 	vpbroadcastq zmm17{k2},QWORD PTR [rdi+rsi*1]
   1149a:	62 e2 fd 4a 59 1c 0a 	vpbroadcastq zmm19{k2},QWORD PTR [rdx+rcx*1]
   114a1:	62 a2 fd 4b 59 0c 07 	vpbroadcastq zmm17{k3},QWORD PTR [rdi+r8*1]
   114a8:	62 a2 fd 4b 59 1c 0a 	vpbroadcastq zmm19{k3},QWORD PTR [rdx+r9*1]
   114af:	62 a2 6d 40 04 d4    	vpmaddubsw zmm18,zmm18,zmm20
   114b5:	62 a2 7d 40 04 c4    	vpmaddubsw zmm16,zmm16,zmm20
   114bb:	62 a2 65 40 04 dc    	vpmaddubsw zmm19,zmm19,zmm20
   114c1:	62 a2 75 40 04 cc    	vpmaddubsw zmm17,zmm17,zmm20
   114c7:	62 a1 7d 40 f9 c2    	vpsubw zmm16,zmm16,zmm18
   114cd:	62 a1 75 40 f9 cb    	vpsubw zmm17,zmm17,zmm19
   114d3:	62 a1 7d 40 fd d1    	vpaddw zmm18,zmm16,zmm17
   114d9:	62 a1 75 40 f9 c8    	vpsubw zmm17,zmm17,zmm16
   114df:	62 a1 ed 40 6d c1    	vpunpckhqdq zmm16,zmm18,zmm17
   114e5:	62 a1 ed 40 6c d1    	vpunpcklqdq zmm18,zmm18,zmm17
   114eb:	62 a1 6d 40 fd c8    	vpaddw zmm17,zmm18,zmm16
   114f1:	62 a1 7d 40 f9 c2    	vpsubw zmm16,zmm16,zmm18
   114f7:	62 a1 74 40 c6 d0 88 	vshufps zmm18,zmm17,zmm16,0x88
   114fe:	62 a1 74 40 c6 c0 dd 	vshufps zmm16,zmm17,zmm16,0xdd
   11505:	62 a1 6d 40 fd c8    	vpaddw zmm17,zmm18,zmm16
   1150b:	62 a1 7d 40 f9 c2    	vpsubw zmm16,zmm16,zmm18
   11511:	62 a3 75 40 43 d0 44 	vshufi32x4 zmm18,zmm17,zmm16,0x44
   11518:	62 a3 75 40 43 c0 ee 	vshufi32x4 zmm16,zmm17,zmm16,0xee
   1151f:	62 a1 6d 40 fd c8    	vpaddw zmm17,zmm18,zmm16
   11525:	62 a1 7d 40 f9 c2    	vpsubw zmm16,zmm16,zmm18
   1152b:	62 a2 7d 48 1d c9    	vpabsw zmm17,zmm17
   11531:	62 a2 7d 48 1d c0    	vpabsw zmm16,zmm16
   11537:	62 b1 6d 40 73 d9 02 	vpsrldq zmm18,zmm17,0x2
   1153e:	62 b1 65 40 72 d0 10 	vpsrld zmm19,zmm16,0x10
   11545:	62 a1 75 40 ee ca    	vpmaxsw zmm17,zmm17,zmm18
   1154b:	62 a1 7d 40 ee c3    	vpmaxsw zmm16,zmm16,zmm19
   11551:	62 a1 75 c1 fd c8    	vpaddw zmm17{k1}{z},zmm17,zmm16
   11557:	62 a3 7d 48 3b c8 01 	vextracti32x8 ymm16,zmm17,0x1
   1155e:	62 a1 75 20 fe c8    	vpaddd ymm17,ymm17,ymm16
   11564:	62 a3 7d 28 39 c8 01 	vextracti32x4 xmm16,ymm17,0x1
   1156b:	62 b1 75 00 fe c0    	vpaddd xmm0,xmm17,xmm16
   11571:	c5 f9 6d c8          	vpunpckhqdq xmm1,xmm0,xmm0
   11575:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
   11579:	c4 e1 f9 7e c0       	vmovq  rax,xmm0
   1157e:	c4 e3 fb f0 d0 20    	rorx   rdx,rax,0x20
   11584:	8d 44 10 01          	lea    eax,[rax+rdx*1+0x1]
   11588:	d1 e8                	shr    eax,1
   1158a:	c3                   	ret    
   1158b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000011590 <x264_8_pixel_ssim_4x4x2_core_sse2>:
   11590:	66 0f ef ff          	pxor   xmm7,xmm7
   11594:	f3 0f 7e 27          	movq   xmm4,QWORD PTR [rdi]
   11598:	f3 0f 7e 2a          	movq   xmm5,QWORD PTR [rdx]
   1159c:	66 0f 60 e7          	punpcklbw xmm4,xmm7
   115a0:	66 0f 60 ef          	punpcklbw xmm5,xmm7
   115a4:	66 0f 6f c4          	movdqa xmm0,xmm4
   115a8:	66 0f 6f cd          	movdqa xmm1,xmm5
   115ac:	66 0f 6f f4          	movdqa xmm6,xmm4
   115b0:	66 0f f5 f5          	pmaddwd xmm6,xmm5
   115b4:	66 0f f5 e4          	pmaddwd xmm4,xmm4
   115b8:	66 0f f5 ed          	pmaddwd xmm5,xmm5
   115bc:	66 0f fe e5          	paddd  xmm4,xmm5
   115c0:	f3 0f 7e 14 37       	movq   xmm2,QWORD PTR [rdi+rsi*1]
   115c5:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
   115ca:	66 0f 60 d7          	punpcklbw xmm2,xmm7
   115ce:	66 0f 60 ef          	punpcklbw xmm5,xmm7
   115d2:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
   115d6:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
   115da:	66 0f fd c2          	paddw  xmm0,xmm2
   115de:	66 0f fd cd          	paddw  xmm1,xmm5
   115e2:	66 0f 6f da          	movdqa xmm3,xmm2
   115e6:	66 0f f5 dd          	pmaddwd xmm3,xmm5
   115ea:	66 0f f5 d2          	pmaddwd xmm2,xmm2
   115ee:	66 0f f5 ed          	pmaddwd xmm5,xmm5
   115f2:	66 0f fe e2          	paddd  xmm4,xmm2
   115f6:	66 0f fe f3          	paddd  xmm6,xmm3
   115fa:	66 0f fe e5          	paddd  xmm4,xmm5
   115fe:	f3 0f 7e 17          	movq   xmm2,QWORD PTR [rdi]
   11602:	f3 0f 7e 2a          	movq   xmm5,QWORD PTR [rdx]
   11606:	66 0f 60 d7          	punpcklbw xmm2,xmm7
   1160a:	66 0f 60 ef          	punpcklbw xmm5,xmm7
   1160e:	66 0f fd c2          	paddw  xmm0,xmm2
   11612:	66 0f fd cd          	paddw  xmm1,xmm5
   11616:	66 0f 6f da          	movdqa xmm3,xmm2
   1161a:	66 0f f5 dd          	pmaddwd xmm3,xmm5
   1161e:	66 0f f5 d2          	pmaddwd xmm2,xmm2
   11622:	66 0f f5 ed          	pmaddwd xmm5,xmm5
   11626:	66 0f fe e2          	paddd  xmm4,xmm2
   1162a:	66 0f fe f3          	paddd  xmm6,xmm3
   1162e:	66 0f fe e5          	paddd  xmm4,xmm5
   11632:	f3 0f 7e 14 37       	movq   xmm2,QWORD PTR [rdi+rsi*1]
   11637:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
   1163c:	66 0f 60 d7          	punpcklbw xmm2,xmm7
   11640:	66 0f 60 ef          	punpcklbw xmm5,xmm7
   11644:	66 0f fd c2          	paddw  xmm0,xmm2
   11648:	66 0f fd cd          	paddw  xmm1,xmm5
   1164c:	66 0f 6f da          	movdqa xmm3,xmm2
   11650:	66 0f f5 dd          	pmaddwd xmm3,xmm5
   11654:	66 0f f5 d2          	pmaddwd xmm2,xmm2
   11658:	66 0f f5 ed          	pmaddwd xmm5,xmm5
   1165c:	66 0f fe e2          	paddd  xmm4,xmm2
   11660:	66 0f fe f3          	paddd  xmm6,xmm3
   11664:	66 0f fe e5          	paddd  xmm4,xmm5
   11668:	66 0f 6f 15 00 00 00 	movdqa xmm2,XMMWORD PTR [rip+0x0]        # 11670 <x264_8_pixel_ssim_4x4x2_core_sse2+0xe0>
   1166f:	00 
   11670:	66 0f f5 c2          	pmaddwd xmm0,xmm2
   11674:	66 0f f5 ca          	pmaddwd xmm1,xmm2
   11678:	66 0f 6b c1          	packssdw xmm0,xmm1
   1167c:	0f 28 cc             	movaps xmm1,xmm4
   1167f:	0f c6 ce 88          	shufps xmm1,xmm6,0x88
   11683:	0f c6 e6 dd          	shufps xmm4,xmm6,0xdd
   11687:	66 0f f5 c2          	pmaddwd xmm0,xmm2
   1168b:	66 0f fe e1          	paddd  xmm4,xmm1
   1168f:	0f 28 c8             	movaps xmm1,xmm0
   11692:	0f c6 cc 88          	shufps xmm1,xmm4,0x88
   11696:	0f c6 c4 dd          	shufps xmm0,xmm4,0xdd
   1169a:	66 41 0f 7f 08       	movdqa XMMWORD PTR [r8],xmm1
   1169f:	66 41 0f 7f 40 10    	movdqa XMMWORD PTR [r8+0x10],xmm0
   116a5:	c3                   	ret    
   116a6:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   116ad:	00 
   116ae:	66 90                	xchg   ax,ax

00000000000116b0 <x264_8_pixel_ssim_end4_sse2>:
   116b0:	89 d2                	mov    edx,edx
   116b2:	66 0f 6f 07          	movdqa xmm0,XMMWORD PTR [rdi]
   116b6:	66 0f 6f 4f 10       	movdqa xmm1,XMMWORD PTR [rdi+0x10]
   116bb:	66 0f 6f 57 20       	movdqa xmm2,XMMWORD PTR [rdi+0x20]
   116c0:	66 0f 6f 5f 30       	movdqa xmm3,XMMWORD PTR [rdi+0x30]
   116c5:	66 0f 6f 67 40       	movdqa xmm4,XMMWORD PTR [rdi+0x40]
   116ca:	66 0f fe 06          	paddd  xmm0,XMMWORD PTR [rsi]
   116ce:	66 0f fe 4e 10       	paddd  xmm1,XMMWORD PTR [rsi+0x10]
   116d3:	66 0f fe 56 20       	paddd  xmm2,XMMWORD PTR [rsi+0x20]
   116d8:	66 0f fe 5e 30       	paddd  xmm3,XMMWORD PTR [rsi+0x30]
   116dd:	66 0f fe 66 40       	paddd  xmm4,XMMWORD PTR [rsi+0x40]
   116e2:	66 0f fe c1          	paddd  xmm0,xmm1
   116e6:	66 0f fe ca          	paddd  xmm1,xmm2
   116ea:	66 0f fe d3          	paddd  xmm2,xmm3
   116ee:	66 0f fe dc          	paddd  xmm3,xmm4
   116f2:	66 0f 6f e0          	movdqa xmm4,xmm0
   116f6:	66 0f 62 c1          	punpckldq xmm0,xmm1
   116fa:	66 0f 6a e1          	punpckhdq xmm4,xmm1
   116fe:	66 0f 6f ca          	movdqa xmm1,xmm2
   11702:	66 0f 62 d3          	punpckldq xmm2,xmm3
   11706:	66 0f 6a cb          	punpckhdq xmm1,xmm3
   1170a:	66 0f 6f d8          	movdqa xmm3,xmm0
   1170e:	66 0f 6c c2          	punpcklqdq xmm0,xmm2
   11712:	66 0f 6d da          	punpckhqdq xmm3,xmm2
   11716:	66 0f 6f d4          	movdqa xmm2,xmm4
   1171a:	66 0f 6c e1          	punpcklqdq xmm4,xmm1
   1171e:	66 0f 6d d1          	punpckhqdq xmm2,xmm1
   11722:	66 0f 6f cb          	movdqa xmm1,xmm3
   11726:	66 0f f5 c8          	pmaddwd xmm1,xmm0
   1172a:	66 0f 72 f3 10       	pslld  xmm3,0x10
   1172f:	66 0f eb c3          	por    xmm0,xmm3
   11733:	66 0f f5 c0          	pmaddwd xmm0,xmm0
   11737:	66 0f 72 f1 01       	pslld  xmm1,0x1
   1173c:	66 0f 72 f2 07       	pslld  xmm2,0x7
   11741:	66 0f 72 f4 06       	pslld  xmm4,0x6
   11746:	66 0f fa d1          	psubd  xmm2,xmm1
   1174a:	66 0f fa e0          	psubd  xmm4,xmm0
   1174e:	66 0f 6f 1d 00 00 00 	movdqa xmm3,XMMWORD PTR [rip+0x0]        # 11756 <x264_8_pixel_ssim_end4_sse2+0xa6>
   11755:	00 
   11756:	66 0f fe c3          	paddd  xmm0,xmm3
   1175a:	66 0f fe cb          	paddd  xmm1,xmm3
   1175e:	66 0f 6f 1d 00 00 00 	movdqa xmm3,XMMWORD PTR [rip+0x0]        # 11766 <x264_8_pixel_ssim_end4_sse2+0xb6>
   11765:	00 
   11766:	66 0f fe d3          	paddd  xmm2,xmm3
   1176a:	66 0f fe e3          	paddd  xmm4,xmm3
   1176e:	0f 5b c0             	cvtdq2ps xmm0,xmm0
   11771:	0f 5b c9             	cvtdq2ps xmm1,xmm1
   11774:	0f 5b d2             	cvtdq2ps xmm2,xmm2
   11777:	0f 5b e4             	cvtdq2ps xmm4,xmm4
   1177a:	0f 59 ca             	mulps  xmm1,xmm2
   1177d:	0f 59 c4             	mulps  xmm0,xmm4
   11780:	0f 5e c8             	divps  xmm1,xmm0
   11783:	83 fa 04             	cmp    edx,0x4
   11786:	74 11                	je     11799 <x264_8_pixel_ssim_end4_sse2+0xe9>
   11788:	48 f7 da             	neg    rdx
   1178b:	48 8d 0d 00 00 00 00 	lea    rcx,[rip+0x0]        # 11792 <x264_8_pixel_ssim_end4_sse2+0xe2>
   11792:	0f 10 04 91          	movups xmm0,XMMWORD PTR [rcx+rdx*4]
   11796:	0f 54 c8             	andps  xmm1,xmm0
   11799:	0f 12 c1             	movhlps xmm0,xmm1
   1179c:	0f 58 c1             	addps  xmm0,xmm1
   1179f:	f2 0f 70 c8 0e       	pshuflw xmm1,xmm0,0xe
   117a4:	f3 0f 58 c1          	addss  xmm0,xmm1
   117a8:	c3                   	ret    
   117a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000117b0 <x264_8_pixel_ssim_4x4x2_core_avx>:
   117b0:	c4 e2 79 30 27       	vpmovzxbw xmm4,QWORD PTR [rdi]
   117b5:	c4 e2 79 30 2a       	vpmovzxbw xmm5,QWORD PTR [rdx]
   117ba:	c5 d9 f5 c4          	vpmaddwd xmm0,xmm4,xmm4
   117be:	c5 d1 f5 cd          	vpmaddwd xmm1,xmm5,xmm5
   117c2:	c5 d9 f5 f5          	vpmaddwd xmm6,xmm4,xmm5
   117c6:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
   117ca:	c4 e2 79 30 14 37    	vpmovzxbw xmm2,QWORD PTR [rdi+rsi*1]
   117d0:	c4 e2 79 30 0c 0a    	vpmovzxbw xmm1,QWORD PTR [rdx+rcx*1]
   117d6:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
   117da:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
   117de:	c5 d9 fd e2          	vpaddw xmm4,xmm4,xmm2
   117e2:	c5 d1 fd e9          	vpaddw xmm5,xmm5,xmm1
   117e6:	c5 e9 f5 d9          	vpmaddwd xmm3,xmm2,xmm1
   117ea:	c5 e9 f5 d2          	vpmaddwd xmm2,xmm2,xmm2
   117ee:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
   117f2:	c5 f9 fe c2          	vpaddd xmm0,xmm0,xmm2
   117f6:	c5 c9 fe f3          	vpaddd xmm6,xmm6,xmm3
   117fa:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
   117fe:	c4 e2 79 30 17       	vpmovzxbw xmm2,QWORD PTR [rdi]
   11803:	c4 e2 79 30 0a       	vpmovzxbw xmm1,QWORD PTR [rdx]
   11808:	c5 d9 fd e2          	vpaddw xmm4,xmm4,xmm2
   1180c:	c5 d1 fd e9          	vpaddw xmm5,xmm5,xmm1
   11810:	c5 e9 f5 d9          	vpmaddwd xmm3,xmm2,xmm1
   11814:	c5 e9 f5 d2          	vpmaddwd xmm2,xmm2,xmm2
   11818:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
   1181c:	c5 f9 fe c2          	vpaddd xmm0,xmm0,xmm2
   11820:	c5 c9 fe f3          	vpaddd xmm6,xmm6,xmm3
   11824:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
   11828:	c4 e2 79 30 14 37    	vpmovzxbw xmm2,QWORD PTR [rdi+rsi*1]
   1182e:	c4 e2 79 30 0c 0a    	vpmovzxbw xmm1,QWORD PTR [rdx+rcx*1]
   11834:	c5 d9 fd e2          	vpaddw xmm4,xmm4,xmm2
   11838:	c5 d1 fd e9          	vpaddw xmm5,xmm5,xmm1
   1183c:	c5 e9 f5 d9          	vpmaddwd xmm3,xmm2,xmm1
   11840:	c5 e9 f5 d2          	vpmaddwd xmm2,xmm2,xmm2
   11844:	c5 f1 f5 c9          	vpmaddwd xmm1,xmm1,xmm1
   11848:	c5 f9 fe c2          	vpaddd xmm0,xmm0,xmm2
   1184c:	c5 c9 fe f3          	vpaddd xmm6,xmm6,xmm3
   11850:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
   11854:	c4 e2 59 01 e5       	vphaddw xmm4,xmm4,xmm5
   11859:	c5 d9 f5 25 00 00 00 	vpmaddwd xmm4,xmm4,XMMWORD PTR [rip+0x0]        # 11861 <x264_8_pixel_ssim_4x4x2_core_avx+0xb1>
   11860:	00 
   11861:	c4 e2 79 02 c6       	vphaddd xmm0,xmm0,xmm6
   11866:	c5 d8 c6 e8 88       	vshufps xmm5,xmm4,xmm0,0x88
   1186b:	c5 d8 c6 e0 dd       	vshufps xmm4,xmm4,xmm0,0xdd
   11870:	c4 c1 79 7f 28       	vmovdqa XMMWORD PTR [r8],xmm5
   11875:	c4 c1 79 7f 60 10    	vmovdqa XMMWORD PTR [r8+0x10],xmm4
   1187b:	c3                   	ret    
   1187c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000011880 <x264_8_pixel_ssim_end4_avx>:
   11880:	89 d2                	mov    edx,edx
   11882:	c5 f9 6f 07          	vmovdqa xmm0,XMMWORD PTR [rdi]
   11886:	c5 f9 6f 4f 10       	vmovdqa xmm1,XMMWORD PTR [rdi+0x10]
   1188b:	c5 f9 6f 57 20       	vmovdqa xmm2,XMMWORD PTR [rdi+0x20]
   11890:	c5 f9 6f 5f 30       	vmovdqa xmm3,XMMWORD PTR [rdi+0x30]
   11895:	c5 f9 6f 67 40       	vmovdqa xmm4,XMMWORD PTR [rdi+0x40]
   1189a:	c5 f9 fe 06          	vpaddd xmm0,xmm0,XMMWORD PTR [rsi]
   1189e:	c5 f1 fe 4e 10       	vpaddd xmm1,xmm1,XMMWORD PTR [rsi+0x10]
   118a3:	c5 e9 fe 56 20       	vpaddd xmm2,xmm2,XMMWORD PTR [rsi+0x20]
   118a8:	c5 e1 fe 5e 30       	vpaddd xmm3,xmm3,XMMWORD PTR [rsi+0x30]
   118ad:	c5 d9 fe 66 40       	vpaddd xmm4,xmm4,XMMWORD PTR [rsi+0x40]
   118b2:	c5 f9 fe c1          	vpaddd xmm0,xmm0,xmm1
   118b6:	c5 f1 fe ca          	vpaddd xmm1,xmm1,xmm2
   118ba:	c5 e9 fe d3          	vpaddd xmm2,xmm2,xmm3
   118be:	c5 e1 fe dc          	vpaddd xmm3,xmm3,xmm4
   118c2:	c5 f9 6a e1          	vpunpckhdq xmm4,xmm0,xmm1
   118c6:	c5 f9 62 c1          	vpunpckldq xmm0,xmm0,xmm1
   118ca:	c5 e9 6a cb          	vpunpckhdq xmm1,xmm2,xmm3
   118ce:	c5 e9 62 d3          	vpunpckldq xmm2,xmm2,xmm3
   118d2:	c5 f9 6d da          	vpunpckhqdq xmm3,xmm0,xmm2
   118d6:	c5 f9 6c c2          	vpunpcklqdq xmm0,xmm0,xmm2
   118da:	c5 d9 6d d1          	vpunpckhqdq xmm2,xmm4,xmm1
   118de:	c5 d9 6c e1          	vpunpcklqdq xmm4,xmm4,xmm1
   118e2:	c5 e1 f5 c8          	vpmaddwd xmm1,xmm3,xmm0
   118e6:	c5 e1 72 f3 10       	vpslld xmm3,xmm3,0x10
   118eb:	c5 f9 eb c3          	vpor   xmm0,xmm0,xmm3
   118ef:	c5 f9 f5 c0          	vpmaddwd xmm0,xmm0,xmm0
   118f3:	c5 f1 72 f1 01       	vpslld xmm1,xmm1,0x1
   118f8:	c5 e9 72 f2 07       	vpslld xmm2,xmm2,0x7
   118fd:	c5 d9 72 f4 06       	vpslld xmm4,xmm4,0x6
   11902:	c5 e9 fa d1          	vpsubd xmm2,xmm2,xmm1
   11906:	c5 d9 fa e0          	vpsubd xmm4,xmm4,xmm0
   1190a:	c5 f9 6f 1d 00 00 00 	vmovdqa xmm3,XMMWORD PTR [rip+0x0]        # 11912 <x264_8_pixel_ssim_end4_avx+0x92>
   11911:	00 
   11912:	c5 f9 fe c3          	vpaddd xmm0,xmm0,xmm3
   11916:	c5 f1 fe cb          	vpaddd xmm1,xmm1,xmm3
   1191a:	c5 f9 6f 1d 00 00 00 	vmovdqa xmm3,XMMWORD PTR [rip+0x0]        # 11922 <x264_8_pixel_ssim_end4_avx+0xa2>
   11921:	00 
   11922:	c5 e9 fe d3          	vpaddd xmm2,xmm2,xmm3
   11926:	c5 d9 fe e3          	vpaddd xmm4,xmm4,xmm3
   1192a:	c5 f8 5b c0          	vcvtdq2ps xmm0,xmm0
   1192e:	c5 f8 5b c9          	vcvtdq2ps xmm1,xmm1
   11932:	c5 f8 5b d2          	vcvtdq2ps xmm2,xmm2
   11936:	c5 f8 5b e4          	vcvtdq2ps xmm4,xmm4
   1193a:	c5 f0 59 ca          	vmulps xmm1,xmm1,xmm2
   1193e:	c5 f8 59 c4          	vmulps xmm0,xmm0,xmm4
   11942:	c5 f0 5e c8          	vdivps xmm1,xmm1,xmm0
   11946:	83 fa 04             	cmp    edx,0x4
   11949:	74 0f                	je     1195a <x264_8_pixel_ssim_end4_avx+0xda>
   1194b:	48 f7 da             	neg    rdx
   1194e:	48 8d 0d 00 00 00 00 	lea    rcx,[rip+0x0]        # 11955 <x264_8_pixel_ssim_end4_avx+0xd5>
   11955:	c5 f0 54 0c 91       	vandps xmm1,xmm1,XMMWORD PTR [rcx+rdx*4]
   1195a:	c5 f8 12 c1          	vmovhlps xmm0,xmm0,xmm1
   1195e:	c5 f8 58 c1          	vaddps xmm0,xmm0,xmm1
   11962:	c5 fa 16 c8          	vmovshdup xmm1,xmm0
   11966:	c5 fa 58 c1          	vaddss xmm0,xmm0,xmm1
   1196a:	c3                   	ret    
   1196b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000011970 <x264_8_pixel_asd8_sse2>:
   11970:	66 0f ef c0          	pxor   xmm0,xmm0
   11974:	66 0f ef c9          	pxor   xmm1,xmm1
   11978:	f3 0f 7e 17          	movq   xmm2,QWORD PTR [rdi]
   1197c:	f3 0f 7e 1a          	movq   xmm3,QWORD PTR [rdx]
   11980:	0f 16 14 37          	movhps xmm2,QWORD PTR [rdi+rsi*1]
   11984:	0f 16 1c 0a          	movhps xmm3,QWORD PTR [rdx+rcx*1]
   11988:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
   1198c:	66 0f f6 d1          	psadbw xmm2,xmm1
   11990:	66 0f f6 d9          	psadbw xmm3,xmm1
   11994:	f3 0f 7e 27          	movq   xmm4,QWORD PTR [rdi]
   11998:	f3 0f 7e 2c 4a       	movq   xmm5,QWORD PTR [rdx+rcx*2]
   1199d:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
   119a1:	0f 16 24 37          	movhps xmm4,QWORD PTR [rdi+rsi*1]
   119a5:	0f 16 2c 0a          	movhps xmm5,QWORD PTR [rdx+rcx*1]
   119a9:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
   119ad:	66 0f fd c2          	paddw  xmm0,xmm2
   119b1:	66 0f f9 c3          	psubw  xmm0,xmm3
   119b5:	66 0f f6 e1          	psadbw xmm4,xmm1
   119b9:	66 0f f6 e9          	psadbw xmm5,xmm1
   119bd:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
   119c1:	66 0f fd c4          	paddw  xmm0,xmm4
   119c5:	66 0f f9 c5          	psubw  xmm0,xmm5
   119c9:	41 83 e8 04          	sub    r8d,0x4
   119cd:	7f a9                	jg     11978 <x264_8_pixel_asd8_sse2+0x8>
   119cf:	0f 12 c8             	movhlps xmm1,xmm0
   119d2:	66 0f fd c1          	paddw  xmm0,xmm1
   119d6:	66 0f ef c9          	pxor   xmm1,xmm1
   119da:	66 0f f9 c8          	psubw  xmm1,xmm0
   119de:	66 0f ee c8          	pmaxsw xmm1,xmm0
   119e2:	66 0f 7e c8          	movd   eax,xmm1
   119e6:	c3                   	ret    
   119e7:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   119ee:	00 
   119ef:	90                   	nop

00000000000119f0 <x264_8_pixel_asd8_ssse3>:
   119f0:	66 0f ef c0          	pxor   xmm0,xmm0
   119f4:	66 0f ef c9          	pxor   xmm1,xmm1
   119f8:	f3 0f 7e 17          	movq   xmm2,QWORD PTR [rdi]
   119fc:	f3 0f 7e 1a          	movq   xmm3,QWORD PTR [rdx]
   11a00:	0f 16 14 37          	movhps xmm2,QWORD PTR [rdi+rsi*1]
   11a04:	0f 16 1c 0a          	movhps xmm3,QWORD PTR [rdx+rcx*1]
   11a08:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
   11a0c:	66 0f f6 d1          	psadbw xmm2,xmm1
   11a10:	66 0f f6 d9          	psadbw xmm3,xmm1
   11a14:	f3 0f 7e 27          	movq   xmm4,QWORD PTR [rdi]
   11a18:	f3 0f 7e 2c 4a       	movq   xmm5,QWORD PTR [rdx+rcx*2]
   11a1d:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
   11a21:	0f 16 24 37          	movhps xmm4,QWORD PTR [rdi+rsi*1]
   11a25:	0f 16 2c 0a          	movhps xmm5,QWORD PTR [rdx+rcx*1]
   11a29:	48 8d 3c 77          	lea    rdi,[rdi+rsi*2]
   11a2d:	66 0f fd c2          	paddw  xmm0,xmm2
   11a31:	66 0f f9 c3          	psubw  xmm0,xmm3
   11a35:	66 0f f6 e1          	psadbw xmm4,xmm1
   11a39:	66 0f f6 e9          	psadbw xmm5,xmm1
   11a3d:	48 8d 14 4a          	lea    rdx,[rdx+rcx*2]
   11a41:	66 0f fd c4          	paddw  xmm0,xmm4
   11a45:	66 0f f9 c5          	psubw  xmm0,xmm5
   11a49:	41 83 e8 04          	sub    r8d,0x4
   11a4d:	7f a9                	jg     119f8 <x264_8_pixel_asd8_ssse3+0x8>
   11a4f:	0f 12 c8             	movhlps xmm1,xmm0
   11a52:	66 0f fd c1          	paddw  xmm0,xmm1
   11a56:	66 0f 38 1d c8       	pabsw  xmm1,xmm0
   11a5b:	66 0f 7e c8          	movd   eax,xmm1
   11a5f:	c3                   	ret    

0000000000011a60 <x264_8_pixel_ads4_mmx2>:
   11a60:	0f 6f 37             	movq   mm6,QWORD PTR [rdi]
   11a63:	0f 6f 67 08          	movq   mm4,QWORD PTR [rdi+0x8]
   11a67:	0f 70 fe 00          	pshufw mm7,mm6,0x0
   11a6b:	0f 70 f6 aa          	pshufw mm6,mm6,0xaa
   11a6f:	0f 70 ec 00          	pshufw mm5,mm4,0x0
   11a73:	0f 70 e4 aa          	pshufw mm4,mm4,0xaa
   11a77:	4d 63 c9             	movsxd r9,r9d
   11a7a:	44 89 cf             	mov    edi,r9d
   11a7d:	4b 8d 44 08 07       	lea    rax,[r8+r9*1+0x7]
   11a82:	48 83 e0 f8          	and    rax,0xfffffffffffffff8
   11a86:	d1 e2                	shl    edx,1
   11a88:	0f 6f 06             	movq   mm0,QWORD PTR [rsi]
   11a8b:	0f 6f 4e 10          	movq   mm1,QWORD PTR [rsi+0x10]
   11a8f:	0f f9 c7             	psubw  mm0,mm7
   11a92:	0f f9 ce             	psubw  mm1,mm6
   11a95:	0f ef d2             	pxor   mm2,mm2
   11a98:	0f f9 d0             	psubw  mm2,mm0
   11a9b:	0f ee c2             	pmaxsw mm0,mm2
   11a9e:	0f ef db             	pxor   mm3,mm3
   11aa1:	0f f9 d9             	psubw  mm3,mm1
   11aa4:	0f ee cb             	pmaxsw mm1,mm3
   11aa7:	0f 6f 14 16          	movq   mm2,QWORD PTR [rsi+rdx*1]
   11aab:	0f 6f 5c 16 10       	movq   mm3,QWORD PTR [rsi+rdx*1+0x10]
   11ab0:	0f f9 d5             	psubw  mm2,mm5
   11ab3:	0f f9 dc             	psubw  mm3,mm4
   11ab6:	0f fd c1             	paddw  mm0,mm1
   11ab9:	0f ef c9             	pxor   mm1,mm1
   11abc:	0f f9 ca             	psubw  mm1,mm2
   11abf:	0f ee d1             	pmaxsw mm2,mm1
   11ac2:	0f ef c9             	pxor   mm1,mm1
   11ac5:	0f f9 cb             	psubw  mm1,mm3
   11ac8:	0f ee d9             	pmaxsw mm3,mm1
   11acb:	0f fd c2             	paddw  mm0,mm2
   11ace:	0f fd c3             	paddw  mm0,mm3
   11ad1:	0f 70 4c 24 08 00    	pshufw mm1,QWORD PTR [rsp+0x8],0x0
   11ad7:	0f dd 01             	paddusw mm0,QWORD PTR [rcx]
   11ada:	0f d9 c8             	psubusw mm1,mm0
   11add:	0f 63 c9             	packsswb mm1,mm1
   11ae0:	0f 7e 08             	movd   DWORD PTR [rax],mm1
   11ae3:	48 83 c6 08          	add    rsi,0x8
   11ae7:	48 83 c1 08          	add    rcx,0x8
   11aeb:	48 83 c0 04          	add    rax,0x4
   11aef:	83 ef 04             	sub    edi,0x4
   11af2:	7f 94                	jg     11a88 <x264_8_pixel_ads4_mmx2+0x28>
   11af4:	4b 8d 44 08 07       	lea    rax,[r8+r9*1+0x7]
   11af9:	48 83 e0 f8          	and    rax,0xfffffffffffffff8
   11afd:	e9 1e 09 00 00       	jmp    12420 <x264_8_pixel_ads_mvs_mmx>
   11b02:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11b09:	00 
   11b0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000011b10 <x264_8_pixel_ads2_mmx2>:
   11b10:	0f 6f 37             	movq   mm6,QWORD PTR [rdi]
   11b13:	0f 70 6c 24 08 00    	pshufw mm5,QWORD PTR [rsp+0x8],0x0
   11b19:	0f 70 fe 00          	pshufw mm7,mm6,0x0
   11b1d:	0f 70 f6 aa          	pshufw mm6,mm6,0xaa
   11b21:	4d 63 c9             	movsxd r9,r9d
   11b24:	44 89 cf             	mov    edi,r9d
   11b27:	4b 8d 44 08 07       	lea    rax,[r8+r9*1+0x7]
   11b2c:	48 83 e0 f8          	and    rax,0xfffffffffffffff8
   11b30:	d1 e2                	shl    edx,1
   11b32:	0f 6f 06             	movq   mm0,QWORD PTR [rsi]
   11b35:	0f 6f 0c 16          	movq   mm1,QWORD PTR [rsi+rdx*1]
   11b39:	0f f9 c7             	psubw  mm0,mm7
   11b3c:	0f f9 ce             	psubw  mm1,mm6
   11b3f:	0f ef d2             	pxor   mm2,mm2
   11b42:	0f f9 d0             	psubw  mm2,mm0
   11b45:	0f ee c2             	pmaxsw mm0,mm2
   11b48:	0f ef db             	pxor   mm3,mm3
   11b4b:	0f f9 d9             	psubw  mm3,mm1
   11b4e:	0f ee cb             	pmaxsw mm1,mm3
   11b51:	0f fd c1             	paddw  mm0,mm1
   11b54:	0f dd 01             	paddusw mm0,QWORD PTR [rcx]
   11b57:	0f 6f e5             	movq   mm4,mm5
   11b5a:	0f d9 e0             	psubusw mm4,mm0
   11b5d:	0f 63 e4             	packsswb mm4,mm4
   11b60:	0f 7e 20             	movd   DWORD PTR [rax],mm4
   11b63:	48 83 c6 08          	add    rsi,0x8
   11b67:	48 83 c1 08          	add    rcx,0x8
   11b6b:	48 83 c0 04          	add    rax,0x4
   11b6f:	83 ef 04             	sub    edi,0x4
   11b72:	7f be                	jg     11b32 <x264_8_pixel_ads2_mmx2+0x22>
   11b74:	4b 8d 44 08 07       	lea    rax,[r8+r9*1+0x7]
   11b79:	48 83 e0 f8          	and    rax,0xfffffffffffffff8
   11b7d:	e9 9e 08 00 00       	jmp    12420 <x264_8_pixel_ads_mvs_mmx>
   11b82:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11b89:	00 
   11b8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000011b90 <x264_8_pixel_ads1_mmx2>:
   11b90:	0f 70 3f 00          	pshufw mm7,QWORD PTR [rdi],0x0
   11b94:	0f 70 74 24 08 00    	pshufw mm6,QWORD PTR [rsp+0x8],0x0
   11b9a:	4d 63 c9             	movsxd r9,r9d
   11b9d:	44 89 cf             	mov    edi,r9d
   11ba0:	4b 8d 44 08 07       	lea    rax,[r8+r9*1+0x7]
   11ba5:	48 83 e0 f8          	and    rax,0xfffffffffffffff8
   11ba9:	d1 e2                	shl    edx,1
   11bab:	0f 6f 06             	movq   mm0,QWORD PTR [rsi]
   11bae:	0f 6f 4e 08          	movq   mm1,QWORD PTR [rsi+0x8]
   11bb2:	0f f9 c7             	psubw  mm0,mm7
   11bb5:	0f f9 cf             	psubw  mm1,mm7
   11bb8:	0f ef d2             	pxor   mm2,mm2
   11bbb:	0f f9 d0             	psubw  mm2,mm0
   11bbe:	0f ee c2             	pmaxsw mm0,mm2
   11bc1:	0f ef db             	pxor   mm3,mm3
   11bc4:	0f f9 d9             	psubw  mm3,mm1
   11bc7:	0f ee cb             	pmaxsw mm1,mm3
   11bca:	0f dd 01             	paddusw mm0,QWORD PTR [rcx]
   11bcd:	0f dd 49 08          	paddusw mm1,QWORD PTR [rcx+0x8]
   11bd1:	0f 6f e6             	movq   mm4,mm6
   11bd4:	0f 6f ee             	movq   mm5,mm6
   11bd7:	0f d9 e0             	psubusw mm4,mm0
   11bda:	0f d9 e9             	psubusw mm5,mm1
   11bdd:	0f 63 e5             	packsswb mm4,mm5
   11be0:	0f 7f 20             	movq   QWORD PTR [rax],mm4
   11be3:	48 83 c6 10          	add    rsi,0x10
   11be7:	48 83 c1 10          	add    rcx,0x10
   11beb:	48 83 c0 08          	add    rax,0x8
   11bef:	83 ef 08             	sub    edi,0x8
   11bf2:	7f b7                	jg     11bab <x264_8_pixel_ads1_mmx2+0x1b>
   11bf4:	4b 8d 44 08 07       	lea    rax,[r8+r9*1+0x7]
   11bf9:	48 83 e0 f8          	and    rax,0xfffffffffffffff8
   11bfd:	e9 1e 08 00 00       	jmp    12420 <x264_8_pixel_ads_mvs_mmx>
   11c02:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11c09:	00 
   11c0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000011c10 <x264_8_pixel_ads4_sse2>:
   11c10:	66 0f 6f 27          	movdqa xmm4,XMMWORD PTR [rdi]
   11c14:	f2 0f 70 fc 00       	pshuflw xmm7,xmm4,0x0
   11c19:	f2 0f 70 f4 aa       	pshuflw xmm6,xmm4,0xaa
   11c1e:	f3 0f 70 ec 00       	pshufhw xmm5,xmm4,0x0
   11c23:	f3 0f 70 e4 aa       	pshufhw xmm4,xmm4,0xaa
   11c28:	66 0f 6c ff          	punpcklqdq xmm7,xmm7
   11c2c:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
   11c30:	66 0f 6d ed          	punpckhqdq xmm5,xmm5
   11c34:	66 0f 6d e4          	punpckhqdq xmm4,xmm4
   11c38:	66 44 0f 6e 44 24 08 	movd   xmm8,DWORD PTR [rsp+0x8]
   11c3f:	f2 45 0f 70 c0 00    	pshuflw xmm8,xmm8,0x0
   11c45:	66 45 0f 6c c0       	punpcklqdq xmm8,xmm8
   11c4a:	4d 63 c9             	movsxd r9,r9d
   11c4d:	44 89 cf             	mov    edi,r9d
   11c50:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11c55:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11c59:	d1 e2                	shl    edx,1
   11c5b:	f3 44 0f 6f 16       	movdqu xmm10,XMMWORD PTR [rsi]
   11c60:	f3 44 0f 6f 1c 16    	movdqu xmm11,XMMWORD PTR [rsi+rdx*1]
   11c66:	66 41 0f 6f c2       	movdqa xmm0,xmm10
   11c6b:	66 0f f9 c7          	psubw  xmm0,xmm7
   11c6f:	f3 44 0f 6f 56 10    	movdqu xmm10,XMMWORD PTR [rsi+0x10]
   11c75:	66 41 0f 6f ca       	movdqa xmm1,xmm10
   11c7a:	66 0f f9 ce          	psubw  xmm1,xmm6
   11c7e:	66 0f ef d2          	pxor   xmm2,xmm2
   11c82:	66 0f f9 d0          	psubw  xmm2,xmm0
   11c86:	66 0f ee c2          	pmaxsw xmm0,xmm2
   11c8a:	66 0f ef db          	pxor   xmm3,xmm3
   11c8e:	66 0f f9 d9          	psubw  xmm3,xmm1
   11c92:	66 0f ee cb          	pmaxsw xmm1,xmm3
   11c96:	66 41 0f 6f d3       	movdqa xmm2,xmm11
   11c9b:	66 0f f9 d5          	psubw  xmm2,xmm5
   11c9f:	f3 44 0f 6f 5c 16 10 	movdqu xmm11,XMMWORD PTR [rsi+rdx*1+0x10]
   11ca6:	66 0f fd c1          	paddw  xmm0,xmm1
   11caa:	66 41 0f 6f db       	movdqa xmm3,xmm11
   11caf:	66 0f f9 dc          	psubw  xmm3,xmm4
   11cb3:	f3 44 0f 6f 09       	movdqu xmm9,XMMWORD PTR [rcx]
   11cb8:	66 0f ef c9          	pxor   xmm1,xmm1
   11cbc:	66 0f f9 ca          	psubw  xmm1,xmm2
   11cc0:	66 0f ee d1          	pmaxsw xmm2,xmm1
   11cc4:	66 0f ef c9          	pxor   xmm1,xmm1
   11cc8:	66 0f f9 cb          	psubw  xmm1,xmm3
   11ccc:	66 0f ee d9          	pmaxsw xmm3,xmm1
   11cd0:	66 0f fd c2          	paddw  xmm0,xmm2
   11cd4:	66 0f fd c3          	paddw  xmm0,xmm3
   11cd8:	66 41 0f dd c1       	paddusw xmm0,xmm9
   11cdd:	66 41 0f 6f c8       	movdqa xmm1,xmm8
   11ce2:	66 0f d9 c8          	psubusw xmm1,xmm0
   11ce6:	66 0f 63 c9          	packsswb xmm1,xmm1
   11cea:	66 0f d6 08          	movq   QWORD PTR [rax],xmm1
   11cee:	48 83 c6 10          	add    rsi,0x10
   11cf2:	48 83 c1 10          	add    rcx,0x10
   11cf6:	48 83 c0 08          	add    rax,0x8
   11cfa:	83 ef 08             	sub    edi,0x8
   11cfd:	0f 8f 63 ff ff ff    	jg     11c66 <x264_8_pixel_ads4_sse2+0x56>
   11d03:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11d08:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11d0c:	e9 0f 07 00 00       	jmp    12420 <x264_8_pixel_ads_mvs_mmx>
   11d11:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11d18:	00 
   11d19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000011d20 <x264_8_pixel_ads2_sse2>:
   11d20:	f3 0f 7e 37          	movq   xmm6,QWORD PTR [rdi]
   11d24:	66 0f 6e 6c 24 08    	movd   xmm5,DWORD PTR [rsp+0x8]
   11d2a:	f2 0f 70 fe 00       	pshuflw xmm7,xmm6,0x0
   11d2f:	f2 0f 70 f6 aa       	pshuflw xmm6,xmm6,0xaa
   11d34:	f2 0f 70 ed 00       	pshuflw xmm5,xmm5,0x0
   11d39:	66 0f 6c ff          	punpcklqdq xmm7,xmm7
   11d3d:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
   11d41:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
   11d45:	4d 63 c9             	movsxd r9,r9d
   11d48:	44 89 cf             	mov    edi,r9d
   11d4b:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11d50:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11d54:	d1 e2                	shl    edx,1
   11d56:	f3 0f 6f 06          	movdqu xmm0,XMMWORD PTR [rsi]
   11d5a:	f3 0f 6f 0c 16       	movdqu xmm1,XMMWORD PTR [rsi+rdx*1]
   11d5f:	66 0f f9 c7          	psubw  xmm0,xmm7
   11d63:	66 0f f9 ce          	psubw  xmm1,xmm6
   11d67:	f3 0f 6f 21          	movdqu xmm4,XMMWORD PTR [rcx]
   11d6b:	66 0f ef d2          	pxor   xmm2,xmm2
   11d6f:	66 0f f9 d0          	psubw  xmm2,xmm0
   11d73:	66 0f ee c2          	pmaxsw xmm0,xmm2
   11d77:	66 0f ef db          	pxor   xmm3,xmm3
   11d7b:	66 0f f9 d9          	psubw  xmm3,xmm1
   11d7f:	66 0f ee cb          	pmaxsw xmm1,xmm3
   11d83:	66 0f fd c1          	paddw  xmm0,xmm1
   11d87:	66 0f dd c4          	paddusw xmm0,xmm4
   11d8b:	66 0f 6f cd          	movdqa xmm1,xmm5
   11d8f:	66 0f d9 c8          	psubusw xmm1,xmm0
   11d93:	66 0f 63 c9          	packsswb xmm1,xmm1
   11d97:	66 0f d6 08          	movq   QWORD PTR [rax],xmm1
   11d9b:	48 83 c6 10          	add    rsi,0x10
   11d9f:	48 83 c1 10          	add    rcx,0x10
   11da3:	48 83 c0 08          	add    rax,0x8
   11da7:	83 ef 08             	sub    edi,0x8
   11daa:	7f aa                	jg     11d56 <x264_8_pixel_ads2_sse2+0x36>
   11dac:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11db1:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11db5:	e9 66 06 00 00       	jmp    12420 <x264_8_pixel_ads_mvs_mmx>
   11dba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000011dc0 <x264_8_pixel_ads1_sse2>:
   11dc0:	66 0f 6e 3f          	movd   xmm7,DWORD PTR [rdi]
   11dc4:	66 0f 6e 74 24 08    	movd   xmm6,DWORD PTR [rsp+0x8]
   11dca:	f2 0f 70 ff 00       	pshuflw xmm7,xmm7,0x0
   11dcf:	f2 0f 70 f6 00       	pshuflw xmm6,xmm6,0x0
   11dd4:	66 0f 6c ff          	punpcklqdq xmm7,xmm7
   11dd8:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
   11ddc:	4d 63 c9             	movsxd r9,r9d
   11ddf:	44 89 cf             	mov    edi,r9d
   11de2:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11de7:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11deb:	d1 e2                	shl    edx,1
   11ded:	f3 0f 6f 06          	movdqu xmm0,XMMWORD PTR [rsi]
   11df1:	f3 0f 6f 4e 10       	movdqu xmm1,XMMWORD PTR [rsi+0x10]
   11df6:	66 0f f9 c7          	psubw  xmm0,xmm7
   11dfa:	66 0f f9 cf          	psubw  xmm1,xmm7
   11dfe:	f3 0f 6f 11          	movdqu xmm2,XMMWORD PTR [rcx]
   11e02:	f3 0f 6f 59 10       	movdqu xmm3,XMMWORD PTR [rcx+0x10]
   11e07:	66 0f ef e4          	pxor   xmm4,xmm4
   11e0b:	66 0f f9 e0          	psubw  xmm4,xmm0
   11e0f:	66 0f ee c4          	pmaxsw xmm0,xmm4
   11e13:	66 0f ef ed          	pxor   xmm5,xmm5
   11e17:	66 0f f9 e9          	psubw  xmm5,xmm1
   11e1b:	66 0f ee cd          	pmaxsw xmm1,xmm5
   11e1f:	66 0f dd c2          	paddusw xmm0,xmm2
   11e23:	66 0f dd cb          	paddusw xmm1,xmm3
   11e27:	66 0f 6f e6          	movdqa xmm4,xmm6
   11e2b:	66 0f d9 e0          	psubusw xmm4,xmm0
   11e2f:	66 0f 6f ee          	movdqa xmm5,xmm6
   11e33:	66 0f d9 e9          	psubusw xmm5,xmm1
   11e37:	66 0f 63 e5          	packsswb xmm4,xmm5
   11e3b:	66 0f 7f 20          	movdqa XMMWORD PTR [rax],xmm4
   11e3f:	48 83 c6 20          	add    rsi,0x20
   11e43:	48 83 c1 20          	add    rcx,0x20
   11e47:	48 83 c0 10          	add    rax,0x10
   11e4b:	83 ef 10             	sub    edi,0x10
   11e4e:	7f 9d                	jg     11ded <x264_8_pixel_ads1_sse2+0x2d>
   11e50:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11e55:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11e59:	e9 c2 05 00 00       	jmp    12420 <x264_8_pixel_ads_mvs_mmx>
   11e5e:	66 90                	xchg   ax,ax

0000000000011e60 <x264_8_pixel_ads4_ssse3>:
   11e60:	66 0f 6f 27          	movdqa xmm4,XMMWORD PTR [rdi]
   11e64:	f2 0f 70 fc 00       	pshuflw xmm7,xmm4,0x0
   11e69:	f2 0f 70 f4 aa       	pshuflw xmm6,xmm4,0xaa
   11e6e:	f3 0f 70 ec 00       	pshufhw xmm5,xmm4,0x0
   11e73:	f3 0f 70 e4 aa       	pshufhw xmm4,xmm4,0xaa
   11e78:	66 0f 6c ff          	punpcklqdq xmm7,xmm7
   11e7c:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
   11e80:	66 0f 6d ed          	punpckhqdq xmm5,xmm5
   11e84:	66 0f 6d e4          	punpckhqdq xmm4,xmm4
   11e88:	66 44 0f 6e 44 24 08 	movd   xmm8,DWORD PTR [rsp+0x8]
   11e8f:	f2 45 0f 70 c0 00    	pshuflw xmm8,xmm8,0x0
   11e95:	66 45 0f 6c c0       	punpcklqdq xmm8,xmm8
   11e9a:	4d 63 c9             	movsxd r9,r9d
   11e9d:	44 89 cf             	mov    edi,r9d
   11ea0:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11ea5:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11ea9:	d1 e2                	shl    edx,1
   11eab:	f3 44 0f 6f 16       	movdqu xmm10,XMMWORD PTR [rsi]
   11eb0:	f3 44 0f 6f 1c 16    	movdqu xmm11,XMMWORD PTR [rsi+rdx*1]
   11eb6:	66 41 0f 6f c2       	movdqa xmm0,xmm10
   11ebb:	66 0f f9 c7          	psubw  xmm0,xmm7
   11ebf:	f3 44 0f 6f 56 10    	movdqu xmm10,XMMWORD PTR [rsi+0x10]
   11ec5:	66 41 0f 6f ca       	movdqa xmm1,xmm10
   11eca:	66 0f f9 ce          	psubw  xmm1,xmm6
   11ece:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
   11ed3:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
   11ed8:	66 41 0f 6f d3       	movdqa xmm2,xmm11
   11edd:	66 0f f9 d5          	psubw  xmm2,xmm5
   11ee1:	f3 44 0f 6f 5c 16 10 	movdqu xmm11,XMMWORD PTR [rsi+rdx*1+0x10]
   11ee8:	66 0f fd c1          	paddw  xmm0,xmm1
   11eec:	66 41 0f 6f db       	movdqa xmm3,xmm11
   11ef1:	66 0f f9 dc          	psubw  xmm3,xmm4
   11ef5:	f3 44 0f 6f 09       	movdqu xmm9,XMMWORD PTR [rcx]
   11efa:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
   11eff:	66 0f 38 1d db       	pabsw  xmm3,xmm3
   11f04:	66 0f fd c2          	paddw  xmm0,xmm2
   11f08:	66 0f fd c3          	paddw  xmm0,xmm3
   11f0c:	66 41 0f dd c1       	paddusw xmm0,xmm9
   11f11:	66 41 0f 6f c8       	movdqa xmm1,xmm8
   11f16:	66 0f d9 c8          	psubusw xmm1,xmm0
   11f1a:	66 0f 63 c9          	packsswb xmm1,xmm1
   11f1e:	66 0f d6 08          	movq   QWORD PTR [rax],xmm1
   11f22:	48 83 c6 10          	add    rsi,0x10
   11f26:	48 83 c1 10          	add    rcx,0x10
   11f2a:	48 83 c0 08          	add    rax,0x8
   11f2e:	83 ef 08             	sub    edi,0x8
   11f31:	7f 83                	jg     11eb6 <x264_8_pixel_ads4_ssse3+0x56>
   11f33:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11f38:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11f3c:	e9 af 05 00 00       	jmp    124f0 <x264_8_pixel_ads_mvs_ssse3>
   11f41:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11f48:	00 
   11f49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000011f50 <x264_8_pixel_ads2_ssse3>:
   11f50:	f3 0f 7e 37          	movq   xmm6,QWORD PTR [rdi]
   11f54:	66 0f 6e 6c 24 08    	movd   xmm5,DWORD PTR [rsp+0x8]
   11f5a:	f2 0f 70 fe 00       	pshuflw xmm7,xmm6,0x0
   11f5f:	f2 0f 70 f6 aa       	pshuflw xmm6,xmm6,0xaa
   11f64:	f2 0f 70 ed 00       	pshuflw xmm5,xmm5,0x0
   11f69:	66 0f 6c ff          	punpcklqdq xmm7,xmm7
   11f6d:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
   11f71:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
   11f75:	4d 63 c9             	movsxd r9,r9d
   11f78:	44 89 cf             	mov    edi,r9d
   11f7b:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11f80:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11f84:	d1 e2                	shl    edx,1
   11f86:	f3 0f 6f 06          	movdqu xmm0,XMMWORD PTR [rsi]
   11f8a:	f3 0f 6f 0c 16       	movdqu xmm1,XMMWORD PTR [rsi+rdx*1]
   11f8f:	66 0f f9 c7          	psubw  xmm0,xmm7
   11f93:	66 0f f9 ce          	psubw  xmm1,xmm6
   11f97:	f3 0f 6f 21          	movdqu xmm4,XMMWORD PTR [rcx]
   11f9b:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
   11fa0:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
   11fa5:	66 0f fd c1          	paddw  xmm0,xmm1
   11fa9:	66 0f dd c4          	paddusw xmm0,xmm4
   11fad:	66 0f 6f cd          	movdqa xmm1,xmm5
   11fb1:	66 0f d9 c8          	psubusw xmm1,xmm0
   11fb5:	66 0f 63 c9          	packsswb xmm1,xmm1
   11fb9:	66 0f d6 08          	movq   QWORD PTR [rax],xmm1
   11fbd:	48 83 c6 10          	add    rsi,0x10
   11fc1:	48 83 c1 10          	add    rcx,0x10
   11fc5:	48 83 c0 08          	add    rax,0x8
   11fc9:	83 ef 08             	sub    edi,0x8
   11fcc:	7f b8                	jg     11f86 <x264_8_pixel_ads2_ssse3+0x36>
   11fce:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   11fd3:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   11fd7:	e9 14 05 00 00       	jmp    124f0 <x264_8_pixel_ads_mvs_ssse3>
   11fdc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000011fe0 <x264_8_pixel_ads1_ssse3>:
   11fe0:	66 0f 6e 3f          	movd   xmm7,DWORD PTR [rdi]
   11fe4:	66 0f 6e 74 24 08    	movd   xmm6,DWORD PTR [rsp+0x8]
   11fea:	f2 0f 70 ff 00       	pshuflw xmm7,xmm7,0x0
   11fef:	f2 0f 70 f6 00       	pshuflw xmm6,xmm6,0x0
   11ff4:	66 0f 6c ff          	punpcklqdq xmm7,xmm7
   11ff8:	66 0f 6c f6          	punpcklqdq xmm6,xmm6
   11ffc:	4d 63 c9             	movsxd r9,r9d
   11fff:	44 89 cf             	mov    edi,r9d
   12002:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   12007:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   1200b:	d1 e2                	shl    edx,1
   1200d:	f3 0f 6f 06          	movdqu xmm0,XMMWORD PTR [rsi]
   12011:	f3 0f 6f 4e 10       	movdqu xmm1,XMMWORD PTR [rsi+0x10]
   12016:	66 0f f9 c7          	psubw  xmm0,xmm7
   1201a:	66 0f f9 cf          	psubw  xmm1,xmm7
   1201e:	f3 0f 6f 11          	movdqu xmm2,XMMWORD PTR [rcx]
   12022:	f3 0f 6f 59 10       	movdqu xmm3,XMMWORD PTR [rcx+0x10]
   12027:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
   1202c:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
   12031:	66 0f dd c2          	paddusw xmm0,xmm2
   12035:	66 0f dd cb          	paddusw xmm1,xmm3
   12039:	66 0f 6f e6          	movdqa xmm4,xmm6
   1203d:	66 0f d9 e0          	psubusw xmm4,xmm0
   12041:	66 0f 6f ee          	movdqa xmm5,xmm6
   12045:	66 0f d9 e9          	psubusw xmm5,xmm1
   12049:	66 0f 63 e5          	packsswb xmm4,xmm5
   1204d:	66 0f 7f 20          	movdqa XMMWORD PTR [rax],xmm4
   12051:	48 83 c6 20          	add    rsi,0x20
   12055:	48 83 c1 20          	add    rcx,0x20
   12059:	48 83 c0 10          	add    rax,0x10
   1205d:	83 ef 10             	sub    edi,0x10
   12060:	7f ab                	jg     1200d <x264_8_pixel_ads1_ssse3+0x2d>
   12062:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   12067:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   1206b:	e9 80 04 00 00       	jmp    124f0 <x264_8_pixel_ads_mvs_ssse3>

0000000000012070 <x264_8_pixel_ads4_avx>:
   12070:	c5 f9 6f 27          	vmovdqa xmm4,XMMWORD PTR [rdi]
   12074:	c5 fb 70 fc 00       	vpshuflw xmm7,xmm4,0x0
   12079:	c5 fb 70 f4 aa       	vpshuflw xmm6,xmm4,0xaa
   1207e:	c5 fa 70 ec 00       	vpshufhw xmm5,xmm4,0x0
   12083:	c5 fa 70 e4 aa       	vpshufhw xmm4,xmm4,0xaa
   12088:	c5 c1 6c ff          	vpunpcklqdq xmm7,xmm7,xmm7
   1208c:	c5 c9 6c f6          	vpunpcklqdq xmm6,xmm6,xmm6
   12090:	c5 d1 6d ed          	vpunpckhqdq xmm5,xmm5,xmm5
   12094:	c5 d9 6d e4          	vpunpckhqdq xmm4,xmm4,xmm4
   12098:	c5 79 6e 44 24 08    	vmovd  xmm8,DWORD PTR [rsp+0x8]
   1209e:	c4 41 7b 70 c0 00    	vpshuflw xmm8,xmm8,0x0
   120a4:	c4 41 39 6c c0       	vpunpcklqdq xmm8,xmm8,xmm8
   120a9:	4d 63 c9             	movsxd r9,r9d
   120ac:	44 89 cf             	mov    edi,r9d
   120af:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   120b4:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   120b8:	d1 e2                	shl    edx,1
   120ba:	c5 7a 6f 16          	vmovdqu xmm10,XMMWORD PTR [rsi]
   120be:	c5 7a 6f 1c 16       	vmovdqu xmm11,XMMWORD PTR [rsi+rdx*1]
   120c3:	c5 a9 f9 c7          	vpsubw xmm0,xmm10,xmm7
   120c7:	c5 7a 6f 56 10       	vmovdqu xmm10,XMMWORD PTR [rsi+0x10]
   120cc:	c5 a9 f9 ce          	vpsubw xmm1,xmm10,xmm6
   120d0:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
   120d5:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
   120da:	c5 a1 f9 d5          	vpsubw xmm2,xmm11,xmm5
   120de:	c5 7a 6f 5c 16 10    	vmovdqu xmm11,XMMWORD PTR [rsi+rdx*1+0x10]
   120e4:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
   120e8:	c5 a1 f9 dc          	vpsubw xmm3,xmm11,xmm4
   120ec:	c5 7a 6f 09          	vmovdqu xmm9,XMMWORD PTR [rcx]
   120f0:	c4 e2 79 1d d2       	vpabsw xmm2,xmm2
   120f5:	c4 e2 79 1d db       	vpabsw xmm3,xmm3
   120fa:	c5 f9 fd c2          	vpaddw xmm0,xmm0,xmm2
   120fe:	c5 f9 fd c3          	vpaddw xmm0,xmm0,xmm3
   12102:	c5 b1 dd c0          	vpaddusw xmm0,xmm9,xmm0
   12106:	c5 b9 d9 c8          	vpsubusw xmm1,xmm8,xmm0
   1210a:	c5 f1 63 c9          	vpacksswb xmm1,xmm1,xmm1
   1210e:	c5 f9 d6 08          	vmovq  QWORD PTR [rax],xmm1
   12112:	48 83 c6 10          	add    rsi,0x10
   12116:	48 83 c1 10          	add    rcx,0x10
   1211a:	48 83 c0 08          	add    rax,0x8
   1211e:	83 ef 08             	sub    edi,0x8
   12121:	7f a0                	jg     120c3 <x264_8_pixel_ads4_avx+0x53>
   12123:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   12128:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   1212c:	e9 bf 03 00 00       	jmp    124f0 <x264_8_pixel_ads_mvs_ssse3>
   12131:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   12138:	00 
   12139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000012140 <x264_8_pixel_ads2_avx>:
   12140:	c5 fa 7e 37          	vmovq  xmm6,QWORD PTR [rdi]
   12144:	c5 f9 6e 6c 24 08    	vmovd  xmm5,DWORD PTR [rsp+0x8]
   1214a:	c5 fb 70 fe 00       	vpshuflw xmm7,xmm6,0x0
   1214f:	c5 fb 70 f6 aa       	vpshuflw xmm6,xmm6,0xaa
   12154:	c5 fb 70 ed 00       	vpshuflw xmm5,xmm5,0x0
   12159:	c5 c1 6c ff          	vpunpcklqdq xmm7,xmm7,xmm7
   1215d:	c5 c9 6c f6          	vpunpcklqdq xmm6,xmm6,xmm6
   12161:	c5 d1 6c ed          	vpunpcklqdq xmm5,xmm5,xmm5
   12165:	4d 63 c9             	movsxd r9,r9d
   12168:	44 89 cf             	mov    edi,r9d
   1216b:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   12170:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   12174:	d1 e2                	shl    edx,1
   12176:	c5 fa 6f 06          	vmovdqu xmm0,XMMWORD PTR [rsi]
   1217a:	c5 fa 6f 0c 16       	vmovdqu xmm1,XMMWORD PTR [rsi+rdx*1]
   1217f:	c5 f9 f9 c7          	vpsubw xmm0,xmm0,xmm7
   12183:	c5 f1 f9 ce          	vpsubw xmm1,xmm1,xmm6
   12187:	c5 fa 6f 21          	vmovdqu xmm4,XMMWORD PTR [rcx]
   1218b:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
   12190:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
   12195:	c5 f9 fd c1          	vpaddw xmm0,xmm0,xmm1
   12199:	c5 f9 dd c4          	vpaddusw xmm0,xmm0,xmm4
   1219d:	c5 d1 d9 c8          	vpsubusw xmm1,xmm5,xmm0
   121a1:	c5 f1 63 c9          	vpacksswb xmm1,xmm1,xmm1
   121a5:	c5 f9 d6 08          	vmovq  QWORD PTR [rax],xmm1
   121a9:	48 83 c6 10          	add    rsi,0x10
   121ad:	48 83 c1 10          	add    rcx,0x10
   121b1:	48 83 c0 08          	add    rax,0x8
   121b5:	83 ef 08             	sub    edi,0x8
   121b8:	7f bc                	jg     12176 <x264_8_pixel_ads2_avx+0x36>
   121ba:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   121bf:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   121c3:	e9 28 03 00 00       	jmp    124f0 <x264_8_pixel_ads_mvs_ssse3>
   121c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   121cf:	00 

00000000000121d0 <x264_8_pixel_ads1_avx>:
   121d0:	c5 f9 6e 3f          	vmovd  xmm7,DWORD PTR [rdi]
   121d4:	c5 f9 6e 74 24 08    	vmovd  xmm6,DWORD PTR [rsp+0x8]
   121da:	c5 fb 70 ff 00       	vpshuflw xmm7,xmm7,0x0
   121df:	c5 fb 70 f6 00       	vpshuflw xmm6,xmm6,0x0
   121e4:	c5 c1 6c ff          	vpunpcklqdq xmm7,xmm7,xmm7
   121e8:	c5 c9 6c f6          	vpunpcklqdq xmm6,xmm6,xmm6
   121ec:	4d 63 c9             	movsxd r9,r9d
   121ef:	44 89 cf             	mov    edi,r9d
   121f2:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   121f7:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   121fb:	d1 e2                	shl    edx,1
   121fd:	c5 fa 6f 06          	vmovdqu xmm0,XMMWORD PTR [rsi]
   12201:	c5 fa 6f 4e 10       	vmovdqu xmm1,XMMWORD PTR [rsi+0x10]
   12206:	c5 f9 f9 c7          	vpsubw xmm0,xmm0,xmm7
   1220a:	c5 f1 f9 cf          	vpsubw xmm1,xmm1,xmm7
   1220e:	c5 fa 6f 11          	vmovdqu xmm2,XMMWORD PTR [rcx]
   12212:	c5 fa 6f 59 10       	vmovdqu xmm3,XMMWORD PTR [rcx+0x10]
   12217:	c4 e2 79 1d c0       	vpabsw xmm0,xmm0
   1221c:	c4 e2 79 1d c9       	vpabsw xmm1,xmm1
   12221:	c5 f9 dd c2          	vpaddusw xmm0,xmm0,xmm2
   12225:	c5 f1 dd cb          	vpaddusw xmm1,xmm1,xmm3
   12229:	c5 c9 d9 e0          	vpsubusw xmm4,xmm6,xmm0
   1222d:	c5 c9 d9 e9          	vpsubusw xmm5,xmm6,xmm1
   12231:	c5 d9 63 e5          	vpacksswb xmm4,xmm4,xmm5
   12235:	c5 f9 7f 20          	vmovdqa XMMWORD PTR [rax],xmm4
   12239:	48 83 c6 20          	add    rsi,0x20
   1223d:	48 83 c1 20          	add    rcx,0x20
   12241:	48 83 c0 10          	add    rax,0x10
   12245:	83 ef 10             	sub    edi,0x10
   12248:	7f b3                	jg     121fd <x264_8_pixel_ads1_avx+0x2d>
   1224a:	4b 8d 44 08 0f       	lea    rax,[r8+r9*1+0xf]
   1224f:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
   12253:	e9 98 02 00 00       	jmp    124f0 <x264_8_pixel_ads_mvs_ssse3>
   12258:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1225f:	00 

0000000000012260 <x264_8_pixel_ads4_avx2>:
   12260:	c4 e2 7d 79 3f       	vpbroadcastw ymm7,WORD PTR [rdi]
   12265:	c4 e2 7d 79 77 04    	vpbroadcastw ymm6,WORD PTR [rdi+0x4]
   1226b:	c4 e2 7d 79 6f 08    	vpbroadcastw ymm5,WORD PTR [rdi+0x8]
   12271:	c4 e2 7d 79 67 0c    	vpbroadcastw ymm4,WORD PTR [rdi+0xc]
   12277:	4d 63 c9             	movsxd r9,r9d
   1227a:	44 89 cf             	mov    edi,r9d
   1227d:	4b 8d 44 08 1f       	lea    rax,[r8+r9*1+0x1f]
   12282:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
   12286:	d1 e2                	shl    edx,1
   12288:	c5 fe 6f 06          	vmovdqu ymm0,YMMWORD PTR [rsi]
   1228c:	c5 fe 6f 4e 10       	vmovdqu ymm1,YMMWORD PTR [rsi+0x10]
   12291:	c5 fd f9 c7          	vpsubw ymm0,ymm0,ymm7
   12295:	c5 f5 f9 ce          	vpsubw ymm1,ymm1,ymm6
   12299:	c4 e2 7d 1d c0       	vpabsw ymm0,ymm0
   1229e:	c4 e2 7d 1d c9       	vpabsw ymm1,ymm1
   122a3:	c5 fe 6f 14 16       	vmovdqu ymm2,YMMWORD PTR [rsi+rdx*1]
   122a8:	c5 fe 6f 5c 16 10    	vmovdqu ymm3,YMMWORD PTR [rsi+rdx*1+0x10]
   122ae:	c5 ed f9 d5          	vpsubw ymm2,ymm2,ymm5
   122b2:	c5 e5 f9 dc          	vpsubw ymm3,ymm3,ymm4
   122b6:	c5 fd fd c1          	vpaddw ymm0,ymm0,ymm1
   122ba:	c4 e2 7d 1d d2       	vpabsw ymm2,ymm2
   122bf:	c4 e2 7d 1d db       	vpabsw ymm3,ymm3
   122c4:	c5 fd fd c2          	vpaddw ymm0,ymm0,ymm2
   122c8:	c5 fd fd c3          	vpaddw ymm0,ymm0,ymm3
   122cc:	c5 fe 6f 11          	vmovdqu ymm2,YMMWORD PTR [rcx]
   122d0:	c4 e2 7d 79 4c 24 08 	vpbroadcastw ymm1,WORD PTR [rsp+0x8]
   122d7:	c5 fd dd c2          	vpaddusw ymm0,ymm0,ymm2
   122db:	c5 f5 d9 c8          	vpsubusw ymm1,ymm1,ymm0
   122df:	c5 f5 63 c9          	vpacksswb ymm1,ymm1,ymm1
   122e3:	c4 e3 fd 00 c9 d8    	vpermq ymm1,ymm1,0xd8
   122e9:	c5 f9 7f 08          	vmovdqa XMMWORD PTR [rax],xmm1
   122ed:	48 83 c6 20          	add    rsi,0x20
   122f1:	48 83 c1 20          	add    rcx,0x20
   122f5:	48 83 c0 10          	add    rax,0x10
   122f9:	83 ef 10             	sub    edi,0x10
   122fc:	7f 8a                	jg     12288 <x264_8_pixel_ads4_avx2+0x28>
   122fe:	c5 f8 77             	vzeroupper 
   12301:	4b 8d 44 08 1f       	lea    rax,[r8+r9*1+0x1f]
   12306:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
   1230a:	e9 e1 01 00 00       	jmp    124f0 <x264_8_pixel_ads_mvs_ssse3>
   1230f:	90                   	nop

0000000000012310 <x264_8_pixel_ads2_avx2>:
   12310:	c4 e2 7d 79 3f       	vpbroadcastw ymm7,WORD PTR [rdi]
   12315:	c4 e2 7d 79 77 04    	vpbroadcastw ymm6,WORD PTR [rdi+0x4]
   1231b:	c4 e2 7d 79 6c 24 08 	vpbroadcastw ymm5,WORD PTR [rsp+0x8]
   12322:	4d 63 c9             	movsxd r9,r9d
   12325:	44 89 cf             	mov    edi,r9d
   12328:	4b 8d 44 08 1f       	lea    rax,[r8+r9*1+0x1f]
   1232d:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
   12331:	d1 e2                	shl    edx,1
   12333:	c5 fe 6f 06          	vmovdqu ymm0,YMMWORD PTR [rsi]
   12337:	c5 fe 6f 0c 16       	vmovdqu ymm1,YMMWORD PTR [rsi+rdx*1]
   1233c:	c5 fd f9 c7          	vpsubw ymm0,ymm0,ymm7
   12340:	c5 f5 f9 ce          	vpsubw ymm1,ymm1,ymm6
   12344:	c5 fe 6f 21          	vmovdqu ymm4,YMMWORD PTR [rcx]
   12348:	c4 e2 7d 1d c0       	vpabsw ymm0,ymm0
   1234d:	c4 e2 7d 1d c9       	vpabsw ymm1,ymm1
   12352:	c5 fd fd c1          	vpaddw ymm0,ymm0,ymm1
   12356:	c5 fd dd c4          	vpaddusw ymm0,ymm0,ymm4
   1235a:	c5 d5 d9 c8          	vpsubusw ymm1,ymm5,ymm0
   1235e:	c5 f5 63 c9          	vpacksswb ymm1,ymm1,ymm1
   12362:	c4 e3 fd 00 c9 d8    	vpermq ymm1,ymm1,0xd8
   12368:	c5 f9 7f 08          	vmovdqa XMMWORD PTR [rax],xmm1
   1236c:	48 83 c6 20          	add    rsi,0x20
   12370:	48 83 c1 20          	add    rcx,0x20
   12374:	48 83 c0 10          	add    rax,0x10
   12378:	83 ef 10             	sub    edi,0x10
   1237b:	7f b6                	jg     12333 <x264_8_pixel_ads2_avx2+0x23>
   1237d:	c5 f8 77             	vzeroupper 
   12380:	4b 8d 44 08 1f       	lea    rax,[r8+r9*1+0x1f]
   12385:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
   12389:	e9 62 01 00 00       	jmp    124f0 <x264_8_pixel_ads_mvs_ssse3>
   1238e:	66 90                	xchg   ax,ax

0000000000012390 <x264_8_pixel_ads1_avx2>:
   12390:	c4 e2 7d 79 3f       	vpbroadcastw ymm7,WORD PTR [rdi]
   12395:	c4 e2 7d 79 74 24 08 	vpbroadcastw ymm6,WORD PTR [rsp+0x8]
   1239c:	4d 63 c9             	movsxd r9,r9d
   1239f:	44 89 cf             	mov    edi,r9d
   123a2:	4b 8d 44 08 1f       	lea    rax,[r8+r9*1+0x1f]
   123a7:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
   123ab:	d1 e2                	shl    edx,1
   123ad:	c5 fe 6f 06          	vmovdqu ymm0,YMMWORD PTR [rsi]
   123b1:	c5 fe 6f 4e 20       	vmovdqu ymm1,YMMWORD PTR [rsi+0x20]
   123b6:	c5 fd f9 c7          	vpsubw ymm0,ymm0,ymm7
   123ba:	c5 f5 f9 cf          	vpsubw ymm1,ymm1,ymm7
   123be:	c5 fe 6f 11          	vmovdqu ymm2,YMMWORD PTR [rcx]
   123c2:	c5 fe 6f 59 20       	vmovdqu ymm3,YMMWORD PTR [rcx+0x20]
   123c7:	c4 e2 7d 1d c0       	vpabsw ymm0,ymm0
   123cc:	c4 e2 7d 1d c9       	vpabsw ymm1,ymm1
   123d1:	c5 fd dd c2          	vpaddusw ymm0,ymm0,ymm2
   123d5:	c5 f5 dd cb          	vpaddusw ymm1,ymm1,ymm3
   123d9:	c5 cd d9 e0          	vpsubusw ymm4,ymm6,ymm0
   123dd:	c5 cd d9 e9          	vpsubusw ymm5,ymm6,ymm1
   123e1:	c5 dd 63 e5          	vpacksswb ymm4,ymm4,ymm5
   123e5:	c4 e3 fd 00 e4 d8    	vpermq ymm4,ymm4,0xd8
   123eb:	c5 fd 7f 20          	vmovdqa YMMWORD PTR [rax],ymm4
   123ef:	48 83 c6 40          	add    rsi,0x40
   123f3:	48 83 c1 40          	add    rcx,0x40
   123f7:	48 83 c0 20          	add    rax,0x20
   123fb:	83 ef 20             	sub    edi,0x20
   123fe:	7f ad                	jg     123ad <x264_8_pixel_ads1_avx2+0x1d>
   12400:	c5 f8 77             	vzeroupper 
   12403:	4b 8d 44 08 1f       	lea    rax,[r8+r9*1+0x1f]
   12408:	48 83 e0 e0          	and    rax,0xffffffffffffffe0
   1240c:	e9 df 00 00 00       	jmp    124f0 <x264_8_pixel_ads_mvs_ssse3>
   12411:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   12418:	00 
   12419:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000012420 <x264_8_pixel_ads_mvs_mmx>:
   12420:	31 ff                	xor    edi,edi
   12422:	31 f6                	xor    esi,esi
   12424:	42 89 3c 08          	mov    DWORD PTR [rax+r9*1],edi
   12428:	eb 12                	jmp    1243c <x264_8_pixel_ads_mvs_mmx+0x1c>
   1242a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   12430:	83 c6 08             	add    esi,0x8
   12433:	44 39 ce             	cmp    esi,r9d
   12436:	0f 8d a8 00 00 00    	jge    124e4 <x264_8_pixel_ads_mvs_mmx+0xc4>
   1243c:	48 8b 14 30          	mov    rdx,QWORD PTR [rax+rsi*1]
   12440:	48 85 d2             	test   rdx,rdx
   12443:	74 eb                	je     12430 <x264_8_pixel_ads_mvs_mmx+0x10>
   12445:	31 c9                	xor    ecx,ecx
   12447:	66 41 89 34 78       	mov    WORD PTR [r8+rdi*2],si
   1244c:	f7 c2 ff 00 00 00    	test   edx,0xff
   12452:	0f 95 c1             	setne  cl
   12455:	01 cf                	add    edi,ecx
   12457:	ff c6                	inc    esi
   12459:	66 41 89 34 78       	mov    WORD PTR [r8+rdi*2],si
   1245e:	f7 c2 00 ff 00 00    	test   edx,0xff00
   12464:	0f 95 c1             	setne  cl
   12467:	01 cf                	add    edi,ecx
   12469:	ff c6                	inc    esi
   1246b:	66 41 89 34 78       	mov    WORD PTR [r8+rdi*2],si
   12470:	f7 c2 00 00 ff 00    	test   edx,0xff0000
   12476:	0f 95 c1             	setne  cl
   12479:	01 cf                	add    edi,ecx
   1247b:	ff c6                	inc    esi
   1247d:	66 41 89 34 78       	mov    WORD PTR [r8+rdi*2],si
   12482:	f7 c2 00 00 00 ff    	test   edx,0xff000000
   12488:	0f 95 c1             	setne  cl
   1248b:	01 cf                	add    edi,ecx
   1248d:	ff c6                	inc    esi
   1248f:	48 c1 ea 20          	shr    rdx,0x20
   12493:	66 41 89 34 78       	mov    WORD PTR [r8+rdi*2],si
   12498:	f7 c2 ff 00 00 00    	test   edx,0xff
   1249e:	0f 95 c1             	setne  cl
   124a1:	01 cf                	add    edi,ecx
   124a3:	ff c6                	inc    esi
   124a5:	66 41 89 34 78       	mov    WORD PTR [r8+rdi*2],si
   124aa:	f7 c2 00 ff 00 00    	test   edx,0xff00
   124b0:	0f 95 c1             	setne  cl
   124b3:	01 cf                	add    edi,ecx
   124b5:	ff c6                	inc    esi
   124b7:	66 41 89 34 78       	mov    WORD PTR [r8+rdi*2],si
   124bc:	f7 c2 00 00 ff 00    	test   edx,0xff0000
   124c2:	0f 95 c1             	setne  cl
   124c5:	01 cf                	add    edi,ecx
   124c7:	ff c6                	inc    esi
   124c9:	66 41 89 34 78       	mov    WORD PTR [r8+rdi*2],si
   124ce:	f7 c2 00 00 00 ff    	test   edx,0xff000000
   124d4:	0f 95 c1             	setne  cl
   124d7:	01 cf                	add    edi,ecx
   124d9:	ff c6                	inc    esi
   124db:	44 39 ce             	cmp    esi,r9d
   124de:	0f 8c 58 ff ff ff    	jl     1243c <x264_8_pixel_ads_mvs_mmx+0x1c>
   124e4:	89 f8                	mov    eax,edi
   124e6:	c3                   	ret    
   124e7:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   124ee:	00 
   124ef:	90                   	nop

00000000000124f0 <x264_8_pixel_ads_mvs_ssse3>:
   124f0:	66 0f 6f 1d 00 00 00 	movdqa xmm3,XMMWORD PTR [rip+0x0]        # 124f8 <x264_8_pixel_ads_mvs_ssse3+0x8>
   124f7:	00 
   124f8:	66 0f 6f 25 00 00 00 	movdqa xmm4,XMMWORD PTR [rip+0x0]        # 12500 <x264_8_pixel_ads_mvs_ssse3+0x10>
   124ff:	00 
   12500:	66 0f ef ed          	pxor   xmm5,xmm5
   12504:	49 01 c1             	add    r9,rax
   12507:	31 ff                	xor    edi,edi
   12509:	41 89 39             	mov    DWORD PTR [r9],edi
   1250c:	48 8d 35 ed da fe ff 	lea    rsi,[rip+0xfffffffffffedaed]        # 0 <x264_8_pixel_ssd_16x16_mmx>
   12513:	f3 0f 7e 00          	movq   xmm0,QWORD PTR [rax]
   12517:	66 0f 74 c5          	pcmpeqb xmm0,xmm5
   1251b:	66 0f d7 d0          	pmovmskb edx,xmm0
   1251f:	81 f2 ff ff 00 00    	xor    edx,0xffff
   12525:	0f b6 8c 32 00 00 00 	movzx  ecx,BYTE PTR [rdx+rsi*1+0x0]
   1252c:	00 
   1252d:	01 d2                	add    edx,edx
   1252f:	66 0f 6f d4          	movdqa xmm2,xmm4
   12533:	66 0f 38 00 94 d6 00 	pshufb xmm2,XMMWORD PTR [rsi+rdx*8+0x0]
   1253a:	00 00 00 
   1253d:	f3 41 0f 7f 14 78    	movdqu XMMWORD PTR [r8+rdi*2],xmm2
   12543:	01 cf                	add    edi,ecx
   12545:	66 0f fd e3          	paddw  xmm4,xmm3
   12549:	48 83 c0 08          	add    rax,0x8
   1254d:	4c 39 c8             	cmp    rax,r9
   12550:	7c c1                	jl     12513 <x264_8_pixel_ads_mvs_ssse3+0x23>
   12552:	89 f8                	mov    eax,edi
   12554:	c3                   	ret    
