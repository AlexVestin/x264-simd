
main:     file format elf64-x86-64


Disassembly of section .init:

00000000004004a8 <_init>:
  4004a8:	48 83 ec 08          	sub    rsp,0x8
  4004ac:	48 8b 05 45 1b 20 00 	mov    rax,QWORD PTR [rip+0x201b45]        # 601ff8 <__gmon_start__>
  4004b3:	48 85 c0             	test   rax,rax
  4004b6:	74 02                	je     4004ba <_init+0x12>
  4004b8:	ff d0                	call   rax
  4004ba:	48 83 c4 08          	add    rsp,0x8
  4004be:	c3                   	ret    

Disassembly of section .plt:

00000000004004c0 <.plt>:
  4004c0:	ff 35 42 1b 20 00    	push   QWORD PTR [rip+0x201b42]        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004c6:	ff 25 44 1b 20 00    	jmp    QWORD PTR [rip+0x201b44]        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004004d0 <__stack_chk_fail@plt>:
  4004d0:	ff 25 42 1b 20 00    	jmp    QWORD PTR [rip+0x201b42]        # 602018 <__stack_chk_fail@GLIBC_2.4>
  4004d6:	68 00 00 00 00       	push   0x0
  4004db:	e9 e0 ff ff ff       	jmp    4004c0 <.plt>

00000000004004e0 <sinf@plt>:
  4004e0:	ff 25 3a 1b 20 00    	jmp    QWORD PTR [rip+0x201b3a]        # 602020 <sinf@GLIBC_2.2.5>
  4004e6:	68 01 00 00 00       	push   0x1
  4004eb:	e9 d0 ff ff ff       	jmp    4004c0 <.plt>

00000000004004f0 <__printf_chk@plt>:
  4004f0:	ff 25 32 1b 20 00    	jmp    QWORD PTR [rip+0x201b32]        # 602028 <__printf_chk@GLIBC_2.3.4>
  4004f6:	68 02 00 00 00       	push   0x2
  4004fb:	e9 c0 ff ff ff       	jmp    4004c0 <.plt>

Disassembly of section .text:

0000000000400500 <main>:
  400500:	41 56                	push   r14
  400502:	41 55                	push   r13
  400504:	45 31 f6             	xor    r14d,r14d
  400507:	41 54                	push   r12
  400509:	55                   	push   rbp
  40050a:	bd f3 1a ca 6b       	mov    ebp,0x6bca1af3
  40050f:	53                   	push   rbx
  400510:	66 0f ef c0          	pxor   xmm0,xmm0
  400514:	bb 25 49 92 24       	mov    ebx,0x24924925
  400519:	48 81 ec 20 01 00 00 	sub    rsp,0x120
  400520:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400527:	00 00 
  400529:	48 89 84 24 18 01 00 	mov    QWORD PTR [rsp+0x118],rax
  400530:	00 
  400531:	31 c0                	xor    eax,eax
  400533:	4c 8d 6c 24 10       	lea    r13,[rsp+0x10]
  400538:	4c 8d a4 24 90 00 00 	lea    r12,[rsp+0x90]
  40053f:	00 
  400540:	eb 23                	jmp    400565 <main+0x65>
  400542:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  400548:	66 0f ef c0          	pxor   xmm0,xmm0
  40054c:	f2 0f 2a c6          	cvtsi2sd xmm0,esi
  400550:	f2 0f 58 c0          	addsd  xmm0,xmm0
  400554:	f2 0f 5e 05 84 09 00 	divsd  xmm0,QWORD PTR [rip+0x984]        # 400ee0 <_IO_stdin_used+0x20>
  40055b:	00 
  40055c:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  400560:	e8 7b ff ff ff       	call   4004e0 <sinf@plt>
  400565:	41 8d 76 01          	lea    esi,[r14+0x1]
  400569:	66 0f ef db          	pxor   xmm3,xmm3
  40056d:	42 8d 0c b5 00 00 00 	lea    ecx,[r14*4+0x0]
  400574:	00 
  400575:	66 0f ef c9          	pxor   xmm1,xmm1
  400579:	89 f0                	mov    eax,esi
  40057b:	f3 0f 5a c0          	cvtss2sd xmm0,xmm0
  40057f:	83 e0 03             	and    eax,0x3
  400582:	89 cf                	mov    edi,ecx
  400584:	f2 0f 2a d8          	cvtsi2sd xmm3,eax
  400588:	89 c8                	mov    eax,ecx
  40058a:	f7 ed                	imul   ebp
  40058c:	89 c8                	mov    eax,ecx
  40058e:	c1 f8 1f             	sar    eax,0x1f
  400591:	f2 0f 10 15 37 09 00 	movsd  xmm2,QWORD PTR [rip+0x937]        # 400ed0 <_IO_stdin_used+0x10>
  400598:	00 
  400599:	66 0f ef f6          	pxor   xmm6,xmm6
  40059d:	c1 fa 03             	sar    edx,0x3
  4005a0:	f2 0f 58 d0          	addsd  xmm2,xmm0
  4005a4:	29 c2                	sub    edx,eax
  4005a6:	66 0f ef c0          	pxor   xmm0,xmm0
  4005aa:	8d 04 d2             	lea    eax,[rdx+rdx*8]
  4005ad:	8d 04 42             	lea    eax,[rdx+rax*2]
  4005b0:	29 c7                	sub    edi,eax
  4005b2:	f2 0f 2a cf          	cvtsi2sd xmm1,edi
  4005b6:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  4005ba:	f2 0f 59 cb          	mulsd  xmm1,xmm3
  4005be:	f2 0f 58 0d 12 09 00 	addsd  xmm1,QWORD PTR [rip+0x912]        # 400ed8 <_IO_stdin_used+0x18>
  4005c5:	00 
  4005c6:	f2 0f 2c c1          	cvttsd2si eax,xmm1
  4005ca:	43 88 44 35 00       	mov    BYTE PTR [r13+r14*1+0x0],al
  4005cf:	89 c8                	mov    eax,ecx
  4005d1:	f7 e3                	mul    ebx
  4005d3:	89 c8                	mov    eax,ecx
  4005d5:	29 d0                	sub    eax,edx
  4005d7:	d1 e8                	shr    eax,1
  4005d9:	01 c2                	add    edx,eax
  4005db:	c1 ea 02             	shr    edx,0x2
  4005de:	8d 04 d5 00 00 00 00 	lea    eax,[rdx*8+0x0]
  4005e5:	29 d0                	sub    eax,edx
  4005e7:	29 c1                	sub    ecx,eax
  4005e9:	f2 0f 2a c1          	cvtsi2sd xmm0,ecx
  4005ed:	f2 0f 59 c2          	mulsd  xmm0,xmm2
  4005f1:	f2 0f 59 c3          	mulsd  xmm0,xmm3
  4005f5:	f2 0f 58 c6          	addsd  xmm0,xmm6
  4005f9:	f2 0f 2c c0          	cvttsd2si eax,xmm0
  4005fd:	43 88 04 34          	mov    BYTE PTR [r12+r14*1],al
  400601:	49 83 c6 01          	add    r14,0x1
  400605:	49 81 fe 80 00 00 00 	cmp    r14,0x80
  40060c:	0f 85 36 ff ff ff    	jne    400548 <main+0x48>
  400612:	66 0f ef c0          	pxor   xmm0,xmm0
  400616:	bf 01 00 00 00       	mov    edi,0x1
  40061b:	66 0f ef c9          	pxor   xmm1,xmm1
  40061f:	66 0f ef d2          	pxor   xmm2,xmm2
  400623:	66 48 0f 3a 22 44 24 	pinsrq xmm0,QWORD PTR [rsp+0x10],0x0
  40062a:	10 00 
  40062c:	66 48 0f 3a 22 8c 24 	pinsrq xmm1,QWORD PTR [rsp+0x90],0x0
  400633:	90 00 00 00 00 
  400638:	66 0f ef db          	pxor   xmm3,xmm3
  40063c:	66 0f 60 c2          	punpcklbw xmm0,xmm2
  400640:	66 0f ef e4          	pxor   xmm4,xmm4
  400644:	66 0f 60 ca          	punpcklbw xmm1,xmm2
  400648:	66 0f 6f e8          	movdqa xmm5,xmm0
  40064c:	66 48 0f 3a 22 9c 24 	pinsrq xmm3,QWORD PTR [rsp+0xa0],0x0
  400653:	a0 00 00 00 00 
  400658:	66 0f f9 e9          	psubw  xmm5,xmm1
  40065c:	66 0f ef c9          	pxor   xmm1,xmm1
  400660:	66 0f ef c0          	pxor   xmm0,xmm0
  400664:	66 48 0f 3a 22 a4 24 	pinsrq xmm4,QWORD PTR [rsp+0xa8],0x0
  40066b:	a8 00 00 00 00 
  400670:	66 48 0f 3a 22 4c 24 	pinsrq xmm1,QWORD PTR [rsp+0x18],0x0
  400677:	18 00 
  400679:	66 0f 60 da          	punpcklbw xmm3,xmm2
  40067d:	66 48 0f 3a 22 84 24 	pinsrq xmm0,QWORD PTR [rsp+0x98],0x0
  400684:	98 00 00 00 00 
  400689:	66 0f 60 ca          	punpcklbw xmm1,xmm2
  40068d:	66 0f 60 e2          	punpcklbw xmm4,xmm2
  400691:	66 0f 6f f9          	movdqa xmm7,xmm1
  400695:	66 0f ef c9          	pxor   xmm1,xmm1
  400699:	66 0f 60 c2          	punpcklbw xmm0,xmm2
  40069d:	66 48 0f 3a 22 4c 24 	pinsrq xmm1,QWORD PTR [rsp+0x20],0x0
  4006a4:	20 00 
  4006a6:	66 0f f9 f8          	psubw  xmm7,xmm0
  4006aa:	66 0f 6f c7          	movdqa xmm0,xmm7
  4006ae:	66 0f 6f f0          	movdqa xmm6,xmm0
  4006b2:	66 0f fd c5          	paddw  xmm0,xmm5
  4006b6:	66 0f 60 ca          	punpcklbw xmm1,xmm2
  4006ba:	66 0f f9 f5          	psubw  xmm6,xmm5
  4006be:	66 0f f9 cb          	psubw  xmm1,xmm3
  4006c2:	66 0f ef db          	pxor   xmm3,xmm3
  4006c6:	66 48 0f 3a 22 5c 24 	pinsrq xmm3,QWORD PTR [rsp+0x28],0x0
  4006cd:	28 00 
  4006cf:	66 0f 60 da          	punpcklbw xmm3,xmm2
  4006d3:	66 0f 6f fb          	movdqa xmm7,xmm3
  4006d7:	66 0f 6f d8          	movdqa xmm3,xmm0
  4006db:	66 0f 69 c6          	punpckhwd xmm0,xmm6
  4006df:	66 0f f9 fc          	psubw  xmm7,xmm4
  4006e3:	66 0f 6f ef          	movdqa xmm5,xmm7
  4006e7:	66 0f 61 de          	punpcklwd xmm3,xmm6
  4006eb:	66 0f f9 e9          	psubw  xmm5,xmm1
  4006ef:	66 0f fd cf          	paddw  xmm1,xmm7
  4006f3:	66 0f 6f e1          	movdqa xmm4,xmm1
  4006f7:	66 0f 69 cd          	punpckhwd xmm1,xmm5
  4006fb:	66 0f 61 e5          	punpcklwd xmm4,xmm5
  4006ff:	66 0f ef ff          	pxor   xmm7,xmm7
  400703:	66 0f 6f f1          	movdqa xmm6,xmm1
  400707:	66 0f 6f ec          	movdqa xmm5,xmm4
  40070b:	66 0f f9 f0          	psubw  xmm6,xmm0
  40070f:	66 0f fd c1          	paddw  xmm0,xmm1
  400713:	66 48 0f 3a 22 bc 24 	pinsrq xmm7,QWORD PTR [rsp+0xc8],0x0
  40071a:	c8 00 00 00 00 
  40071f:	66 0f f9 eb          	psubw  xmm5,xmm3
  400723:	66 0f fd dc          	paddw  xmm3,xmm4
  400727:	66 0f 6f e3          	movdqa xmm4,xmm3
  40072b:	66 0f 6a dd          	punpckhdq xmm3,xmm5
  40072f:	66 0f 62 e5          	punpckldq xmm4,xmm5
  400733:	66 0f 6f eb          	movdqa xmm5,xmm3
  400737:	66 0f f9 dc          	psubw  xmm3,xmm4
  40073b:	66 0f 60 fa          	punpcklbw xmm7,xmm2
  40073f:	66 0f fd ec          	paddw  xmm5,xmm4
  400743:	66 0f 6f e0          	movdqa xmm4,xmm0
  400747:	66 0f 6a c6          	punpckhdq xmm0,xmm6
  40074b:	66 0f 62 e6          	punpckldq xmm4,xmm6
  40074f:	66 0f 6f c8          	movdqa xmm1,xmm0
  400753:	66 0f f9 c4          	psubw  xmm0,xmm4
  400757:	66 0f fd cc          	paddw  xmm1,xmm4
  40075b:	0f 28 e5             	movaps xmm4,xmm5
  40075e:	66 0f 6d e9          	punpckhqdq xmm5,xmm1
  400762:	0f 16 e1             	movlhps xmm4,xmm1
  400765:	66 0f ef c9          	pxor   xmm1,xmm1
  400769:	66 0f 6f f1          	movdqa xmm6,xmm1
  40076d:	66 0f f9 f4          	psubw  xmm6,xmm4
  400771:	66 0f ee e6          	pmaxsw xmm4,xmm6
  400775:	66 0f 6f f1          	movdqa xmm6,xmm1
  400779:	66 0f f9 f5          	psubw  xmm6,xmm5
  40077d:	66 0f ee ee          	pmaxsw xmm5,xmm6
  400781:	0f 28 f3             	movaps xmm6,xmm3
  400784:	66 0f 6d d8          	punpckhqdq xmm3,xmm0
  400788:	66 0f ee e5          	pmaxsw xmm4,xmm5
  40078c:	0f 16 f0             	movlhps xmm6,xmm0
  40078f:	66 0f 6f c1          	movdqa xmm0,xmm1
  400793:	66 0f ef ed          	pxor   xmm5,xmm5
  400797:	66 0f f9 c6          	psubw  xmm0,xmm6
  40079b:	66 0f ee f0          	pmaxsw xmm6,xmm0
  40079f:	66 0f 6f c1          	movdqa xmm0,xmm1
  4007a3:	66 0f f9 c3          	psubw  xmm0,xmm3
  4007a7:	66 0f ee d8          	pmaxsw xmm3,xmm0
  4007ab:	66 0f ef c0          	pxor   xmm0,xmm0
  4007af:	66 0f ee f3          	pmaxsw xmm6,xmm3
  4007b3:	66 0f ef db          	pxor   xmm3,xmm3
  4007b7:	66 0f fd e6          	paddw  xmm4,xmm6
  4007bb:	66 48 0f 3a 22 ac 24 	pinsrq xmm5,QWORD PTR [rsp+0xc0],0x0
  4007c2:	c0 00 00 00 00 
  4007c7:	66 48 0f 3a 22 5c 24 	pinsrq xmm3,QWORD PTR [rsp+0x30],0x0
  4007ce:	30 00 
  4007d0:	66 48 0f 3a 22 84 24 	pinsrq xmm0,QWORD PTR [rsp+0xb0],0x0
  4007d7:	b0 00 00 00 00 
  4007dc:	66 0f 60 ea          	punpcklbw xmm5,xmm2
  4007e0:	66 0f 60 da          	punpcklbw xmm3,xmm2
  4007e4:	66 0f 60 c2          	punpcklbw xmm0,xmm2
  4007e8:	66 0f f9 d8          	psubw  xmm3,xmm0
  4007ec:	66 0f ef c0          	pxor   xmm0,xmm0
  4007f0:	66 48 0f 3a 22 44 24 	pinsrq xmm0,QWORD PTR [rsp+0x38],0x0
  4007f7:	38 00 
  4007f9:	66 44 0f 6f c0       	movdqa xmm8,xmm0
  4007fe:	66 0f ef c0          	pxor   xmm0,xmm0
  400802:	66 44 0f 60 c2       	punpcklbw xmm8,xmm2
  400807:	66 48 0f 3a 22 84 24 	pinsrq xmm0,QWORD PTR [rsp+0xb8],0x0
  40080e:	b8 00 00 00 00 
  400813:	66 0f 60 c2          	punpcklbw xmm0,xmm2
  400817:	66 44 0f f9 c0       	psubw  xmm8,xmm0
  40081c:	66 0f ef c0          	pxor   xmm0,xmm0
  400820:	66 48 0f 3a 22 44 24 	pinsrq xmm0,QWORD PTR [rsp+0x40],0x0
  400827:	40 00 
  400829:	66 0f 60 c2          	punpcklbw xmm0,xmm2
  40082d:	66 0f f9 c5          	psubw  xmm0,xmm5
  400831:	66 0f ef ed          	pxor   xmm5,xmm5
  400835:	66 48 0f 3a 22 6c 24 	pinsrq xmm5,QWORD PTR [rsp+0x48],0x0
  40083c:	48 00 
  40083e:	66 0f 60 ea          	punpcklbw xmm5,xmm2
  400842:	66 41 0f 6f d0       	movdqa xmm2,xmm8
  400847:	66 0f f9 ef          	psubw  xmm5,xmm7
  40084b:	66 0f f9 d3          	psubw  xmm2,xmm3
  40084f:	66 41 0f fd d8       	paddw  xmm3,xmm8
  400854:	66 44 0f 6f c5       	movdqa xmm8,xmm5
  400859:	66 0f 6f fb          	movdqa xmm7,xmm3
  40085d:	66 0f 69 da          	punpckhwd xmm3,xmm2
  400861:	66 44 0f f9 c0       	psubw  xmm8,xmm0
  400866:	66 0f fd c5          	paddw  xmm0,xmm5
  40086a:	66 0f 61 fa          	punpcklwd xmm7,xmm2
  40086e:	66 0f 6f d0          	movdqa xmm2,xmm0
  400872:	66 41 0f 69 c0       	punpckhwd xmm0,xmm8
  400877:	66 41 0f 61 d0       	punpcklwd xmm2,xmm8
  40087c:	66 0f 6f ef          	movdqa xmm5,xmm7
  400880:	66 0f fd c3          	paddw  xmm0,xmm3
  400884:	66 0f fd ea          	paddw  xmm5,xmm2
  400888:	66 0f f9 d7          	psubw  xmm2,xmm7
  40088c:	66 0f 6a d3          	punpckhdq xmm2,xmm3
  400890:	66 0f 6f f8          	movdqa xmm7,xmm0
  400894:	66 0f fd fa          	paddw  xmm7,xmm2
  400898:	66 0f f9 d0          	psubw  xmm2,xmm0
  40089c:	66 0f 62 fa          	punpckldq xmm7,xmm2
  4008a0:	66 0f 6f d5          	movdqa xmm2,xmm5
  4008a4:	66 0f fd d0          	paddw  xmm2,xmm0
  4008a8:	0f 28 da             	movaps xmm3,xmm2
  4008ab:	66 0f f9 c5          	psubw  xmm0,xmm5
  4008af:	66 0f 6d d7          	punpckhqdq xmm2,xmm7
  4008b3:	0f 16 df             	movlhps xmm3,xmm7
  4008b6:	66 0f 6f f9          	movdqa xmm7,xmm1
  4008ba:	66 0f f9 fb          	psubw  xmm7,xmm3
  4008be:	66 0f ee df          	pmaxsw xmm3,xmm7
  4008c2:	66 0f 6f f9          	movdqa xmm7,xmm1
  4008c6:	66 0f f9 fa          	psubw  xmm7,xmm2
  4008ca:	66 0f ee d7          	pmaxsw xmm2,xmm7
  4008ce:	66 0f ee d3          	pmaxsw xmm2,xmm3
  4008d2:	0f 28 d8             	movaps xmm3,xmm0
  4008d5:	66 0f fd d4          	paddw  xmm2,xmm4
  4008d9:	0f 16 dd             	movlhps xmm3,xmm5
  4008dc:	66 0f 6f e9          	movdqa xmm5,xmm1
  4008e0:	66 0f f9 c8          	psubw  xmm1,xmm0
  4008e4:	66 0f ee c1          	pmaxsw xmm0,xmm1
  4008e8:	66 0f f9 eb          	psubw  xmm5,xmm3
  4008ec:	66 0f ee dd          	pmaxsw xmm3,xmm5
  4008f0:	66 0f ee c3          	pmaxsw xmm0,xmm3
  4008f4:	66 0f fd d0          	paddw  xmm2,xmm0
  4008f8:	0f 29 14 24          	movaps XMMWORD PTR [rsp],xmm2
  4008fc:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  400900:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  400905:	89 c1                	mov    ecx,eax
  400907:	0f bf f0             	movsx  esi,ax
  40090a:	c1 f9 10             	sar    ecx,0x10
  40090d:	01 ce                	add    esi,ecx
  40090f:	48 89 c1             	mov    rcx,rax
  400912:	48 c1 f8 30          	sar    rax,0x30
  400916:	48 c1 e1 10          	shl    rcx,0x10
  40091a:	48 c1 f9 30          	sar    rcx,0x30
  40091e:	01 f1                	add    ecx,esi
  400920:	48 8d 35 9d 05 00 00 	lea    rsi,[rip+0x59d]        # 400ec4 <_IO_stdin_used+0x4>
  400927:	01 c8                	add    eax,ecx
  400929:	0f bf ca             	movsx  ecx,dx
  40092c:	01 c1                	add    ecx,eax
  40092e:	89 d0                	mov    eax,edx
  400930:	c1 f8 10             	sar    eax,0x10
  400933:	01 c1                	add    ecx,eax
  400935:	48 89 d0             	mov    rax,rdx
  400938:	48 c1 fa 30          	sar    rdx,0x30
  40093c:	48 c1 e0 10          	shl    rax,0x10
  400940:	48 c1 f8 30          	sar    rax,0x30
  400944:	01 c8                	add    eax,ecx
  400946:	01 c2                	add    edx,eax
  400948:	31 c0                	xor    eax,eax
  40094a:	e8 a1 fb ff ff       	call   4004f0 <__printf_chk@plt>
  40094f:	31 c0                	xor    eax,eax
  400951:	48 8b 9c 24 18 01 00 	mov    rbx,QWORD PTR [rsp+0x118]
  400958:	00 
  400959:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
  400960:	00 00 
  400962:	75 10                	jne    400974 <main+0x474>
  400964:	48 81 c4 20 01 00 00 	add    rsp,0x120
  40096b:	5b                   	pop    rbx
  40096c:	5d                   	pop    rbp
  40096d:	41 5c                	pop    r12
  40096f:	41 5d                	pop    r13
  400971:	41 5e                	pop    r14
  400973:	c3                   	ret    
  400974:	e8 57 fb ff ff       	call   4004d0 <__stack_chk_fail@plt>
  400979:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400980 <_start>:
  400980:	31 ed                	xor    ebp,ebp
  400982:	49 89 d1             	mov    r9,rdx
  400985:	5e                   	pop    rsi
  400986:	48 89 e2             	mov    rdx,rsp
  400989:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40098d:	50                   	push   rax
  40098e:	54                   	push   rsp
  40098f:	49 c7 c0 b0 0e 40 00 	mov    r8,0x400eb0
  400996:	48 c7 c1 40 0e 40 00 	mov    rcx,0x400e40
  40099d:	48 c7 c7 00 05 40 00 	mov    rdi,0x400500
  4009a4:	ff 15 46 16 20 00    	call   QWORD PTR [rip+0x201646]        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  4009aa:	f4                   	hlt    
  4009ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004009b0 <_dl_relocate_static_pie>:
  4009b0:	f3 c3                	repz ret 
  4009b2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4009b9:	00 00 00 
  4009bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004009c0 <deregister_tm_clones>:
  4009c0:	55                   	push   rbp
  4009c1:	b8 60 20 60 00       	mov    eax,0x602060
  4009c6:	48 3d 60 20 60 00    	cmp    rax,0x602060
  4009cc:	48 89 e5             	mov    rbp,rsp
  4009cf:	74 17                	je     4009e8 <deregister_tm_clones+0x28>
  4009d1:	b8 00 00 00 00       	mov    eax,0x0
  4009d6:	48 85 c0             	test   rax,rax
  4009d9:	74 0d                	je     4009e8 <deregister_tm_clones+0x28>
  4009db:	5d                   	pop    rbp
  4009dc:	bf 60 20 60 00       	mov    edi,0x602060
  4009e1:	ff e0                	jmp    rax
  4009e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4009e8:	5d                   	pop    rbp
  4009e9:	c3                   	ret    
  4009ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004009f0 <register_tm_clones>:
  4009f0:	be 60 20 60 00       	mov    esi,0x602060
  4009f5:	55                   	push   rbp
  4009f6:	48 81 ee 60 20 60 00 	sub    rsi,0x602060
  4009fd:	48 89 e5             	mov    rbp,rsp
  400a00:	48 c1 fe 03          	sar    rsi,0x3
  400a04:	48 89 f0             	mov    rax,rsi
  400a07:	48 c1 e8 3f          	shr    rax,0x3f
  400a0b:	48 01 c6             	add    rsi,rax
  400a0e:	48 d1 fe             	sar    rsi,1
  400a11:	74 15                	je     400a28 <register_tm_clones+0x38>
  400a13:	b8 00 00 00 00       	mov    eax,0x0
  400a18:	48 85 c0             	test   rax,rax
  400a1b:	74 0b                	je     400a28 <register_tm_clones+0x38>
  400a1d:	5d                   	pop    rbp
  400a1e:	bf 60 20 60 00       	mov    edi,0x602060
  400a23:	ff e0                	jmp    rax
  400a25:	0f 1f 00             	nop    DWORD PTR [rax]
  400a28:	5d                   	pop    rbp
  400a29:	c3                   	ret    
  400a2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400a30 <__do_global_dtors_aux>:
  400a30:	80 3d 29 16 20 00 00 	cmp    BYTE PTR [rip+0x201629],0x0        # 602060 <__TMC_END__>
  400a37:	75 17                	jne    400a50 <__do_global_dtors_aux+0x20>
  400a39:	55                   	push   rbp
  400a3a:	48 89 e5             	mov    rbp,rsp
  400a3d:	e8 7e ff ff ff       	call   4009c0 <deregister_tm_clones>
  400a42:	c6 05 17 16 20 00 01 	mov    BYTE PTR [rip+0x201617],0x1        # 602060 <__TMC_END__>
  400a49:	5d                   	pop    rbp
  400a4a:	c3                   	ret    
  400a4b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400a50:	f3 c3                	repz ret 
  400a52:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400a56:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400a5d:	00 00 00 

0000000000400a60 <frame_dummy>:
  400a60:	55                   	push   rbp
  400a61:	48 89 e5             	mov    rbp,rsp
  400a64:	5d                   	pop    rbp
  400a65:	eb 89                	jmp    4009f0 <register_tm_clones>
  400a67:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  400a6e:	00 00 

0000000000400a70 <satd_8x8_asm>:
  400a70:	66 0f 6f 3c 25 30 0f 	movdqa xmm7,XMMWORD PTR ds:0x400f30
  400a77:	40 00 
  400a79:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
  400a7d:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
  400a81:	66 0f ef f6          	pxor   xmm6,xmm6
  400a85:	f3 0f 7e 22          	movq   xmm4,QWORD PTR [rdx]
  400a89:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
  400a8e:	66 0f 6c e4          	punpcklqdq xmm4,xmm4
  400a92:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
  400a96:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
  400a9a:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
  400a9f:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
  400aa4:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
  400aa9:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
  400aae:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
  400ab3:	66 0f f9 c4          	psubw  xmm0,xmm4
  400ab7:	66 0f f9 cd          	psubw  xmm1,xmm5
  400abb:	f3 0f 7e 24 4a       	movq   xmm4,QWORD PTR [rdx+rcx*2]
  400ac0:	f3 42 0f 7e 2c 0a    	movq   xmm5,QWORD PTR [rdx+r9*1]
  400ac6:	66 0f 6c e4          	punpcklqdq xmm4,xmm4
  400aca:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
  400acf:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
  400ad3:	f2 42 0f 12 1c 07    	movddup xmm3,QWORD PTR [rdi+r8*1]
  400ad9:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
  400ade:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
  400ae3:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
  400ae8:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
  400aed:	66 0f f9 d4          	psubw  xmm2,xmm4
  400af1:	66 0f f9 dd          	psubw  xmm3,xmm5
  400af5:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
  400af9:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  400afd:	66 0f 6f e0          	movdqa xmm4,xmm0
  400b01:	66 0f fd c1          	paddw  xmm0,xmm1
  400b05:	66 0f f9 cc          	psubw  xmm1,xmm4
  400b09:	66 0f 6f e2          	movdqa xmm4,xmm2
  400b0d:	66 0f fd d3          	paddw  xmm2,xmm3
  400b11:	66 0f f9 dc          	psubw  xmm3,xmm4
  400b15:	66 0f 6f e0          	movdqa xmm4,xmm0
  400b19:	66 0f fd c2          	paddw  xmm0,xmm2
  400b1d:	66 0f f9 d4          	psubw  xmm2,xmm4
  400b21:	66 0f 6f e1          	movdqa xmm4,xmm1
  400b25:	66 0f fd cb          	paddw  xmm1,xmm3
  400b29:	66 0f f9 dc          	psubw  xmm3,xmm4
  400b2d:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
  400b32:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
  400b37:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
  400b3c:	66 0f 38 1d db       	pabsw  xmm3,xmm3
  400b41:	66 0f 6f e0          	movdqa xmm4,xmm0
  400b45:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
  400b4b:	66 0f 72 f2 10       	pslld  xmm2,0x10
  400b50:	66 0f 72 d4 10       	psrld  xmm4,0x10
  400b55:	66 0f eb d4          	por    xmm2,xmm4
  400b59:	66 0f ee c2          	pmaxsw xmm0,xmm2
  400b5d:	66 0f fd f0          	paddw  xmm6,xmm0
  400b61:	66 0f 6f e1          	movdqa xmm4,xmm1
  400b65:	66 0f 3a 0e cb aa    	pblendw xmm1,xmm3,0xaa
  400b6b:	66 0f 72 f3 10       	pslld  xmm3,0x10
  400b70:	66 0f 72 d4 10       	psrld  xmm4,0x10
  400b75:	66 0f eb dc          	por    xmm3,xmm4
  400b79:	66 0f ee cb          	pmaxsw xmm1,xmm3
  400b7d:	66 0f fd f1          	paddw  xmm6,xmm1
  400b81:	f3 0f 7e 22          	movq   xmm4,QWORD PTR [rdx]
  400b85:	f3 0f 7e 2c 0a       	movq   xmm5,QWORD PTR [rdx+rcx*1]
  400b8a:	66 0f 6c e4          	punpcklqdq xmm4,xmm4
  400b8e:	f2 0f 12 07          	movddup xmm0,QWORD PTR [rdi]
  400b92:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
  400b96:	f2 0f 12 0c 37       	movddup xmm1,QWORD PTR [rdi+rsi*1]
  400b9b:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
  400ba0:	66 0f 38 04 c7       	pmaddubsw xmm0,xmm7
  400ba5:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
  400baa:	66 0f 38 04 cf       	pmaddubsw xmm1,xmm7
  400baf:	66 0f f9 c4          	psubw  xmm0,xmm4
  400bb3:	66 0f f9 cd          	psubw  xmm1,xmm5
  400bb7:	f3 0f 7e 24 4a       	movq   xmm4,QWORD PTR [rdx+rcx*2]
  400bbc:	f3 42 0f 7e 2c 0a    	movq   xmm5,QWORD PTR [rdx+r9*1]
  400bc2:	66 0f 6c e4          	punpcklqdq xmm4,xmm4
  400bc6:	f2 0f 12 14 77       	movddup xmm2,QWORD PTR [rdi+rsi*2]
  400bcb:	66 0f 6c ed          	punpcklqdq xmm5,xmm5
  400bcf:	f2 42 0f 12 1c 07    	movddup xmm3,QWORD PTR [rdi+r8*1]
  400bd5:	66 0f 38 04 e7       	pmaddubsw xmm4,xmm7
  400bda:	66 0f 38 04 d7       	pmaddubsw xmm2,xmm7
  400bdf:	66 0f 38 04 ef       	pmaddubsw xmm5,xmm7
  400be4:	66 0f 38 04 df       	pmaddubsw xmm3,xmm7
  400be9:	66 0f f9 d4          	psubw  xmm2,xmm4
  400bed:	66 0f f9 dd          	psubw  xmm3,xmm5
  400bf1:	48 8d 3c b7          	lea    rdi,[rdi+rsi*4]
  400bf5:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  400bf9:	66 0f 6f e0          	movdqa xmm4,xmm0
  400bfd:	66 0f fd c1          	paddw  xmm0,xmm1
  400c01:	66 0f f9 cc          	psubw  xmm1,xmm4
  400c05:	66 0f 6f e2          	movdqa xmm4,xmm2
  400c09:	66 0f fd d3          	paddw  xmm2,xmm3
  400c0d:	66 0f f9 dc          	psubw  xmm3,xmm4
  400c11:	66 0f 6f e0          	movdqa xmm4,xmm0
  400c15:	66 0f fd c2          	paddw  xmm0,xmm2
  400c19:	66 0f f9 d4          	psubw  xmm2,xmm4
  400c1d:	66 0f 6f e1          	movdqa xmm4,xmm1
  400c21:	66 0f fd cb          	paddw  xmm1,xmm3
  400c25:	66 0f f9 dc          	psubw  xmm3,xmm4
  400c29:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
  400c2e:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
  400c33:	66 0f 38 1d c9       	pabsw  xmm1,xmm1
  400c38:	66 0f 38 1d db       	pabsw  xmm3,xmm3
  400c3d:	66 0f 6f e0          	movdqa xmm4,xmm0
  400c41:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
  400c47:	66 0f 72 f2 10       	pslld  xmm2,0x10
  400c4c:	66 0f 72 d4 10       	psrld  xmm4,0x10
  400c51:	66 0f eb d4          	por    xmm2,xmm4
  400c55:	66 0f ee c2          	pmaxsw xmm0,xmm2
  400c59:	66 0f fd f0          	paddw  xmm6,xmm0
  400c5d:	66 0f 6f e1          	movdqa xmm4,xmm1
  400c61:	66 0f 3a 0e cb aa    	pblendw xmm1,xmm3,0xaa
  400c67:	66 0f 72 f3 10       	pslld  xmm3,0x10
  400c6c:	66 0f 72 d4 10       	psrld  xmm4,0x10
  400c71:	66 0f eb dc          	por    xmm3,xmm4
  400c75:	66 0f ee cb          	pmaxsw xmm1,xmm3
  400c79:	66 0f fd f1          	paddw  xmm6,xmm1
  400c7d:	66 0f f5 34 25 10 0f 	pmaddwd xmm6,XMMWORD PTR ds:0x400f10
  400c84:	40 00 
  400c86:	66 0f 70 fe ee       	pshufd xmm7,xmm6,0xee
  400c8b:	66 0f fe f7          	paddd  xmm6,xmm7
  400c8f:	f2 0f 70 fe 4e       	pshuflw xmm7,xmm6,0x4e
  400c94:	66 0f fe f7          	paddd  xmm6,xmm7
  400c98:	66 0f 7e f0          	movd   eax,xmm6
  400c9c:	c3                   	ret    

0000000000400c9d <satd_4x4_asm>:
  400c9d:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
  400ca1:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
  400ca5:	66 0f 6f 24 25 00 0f 	movdqa xmm4,XMMWORD PTR ds:0x400f00
  400cac:	40 00 
  400cae:	66 0f 6e 12          	movd   xmm2,DWORD PTR [rdx]
  400cb2:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
  400cb7:	0f c6 d5 00          	shufps xmm2,xmm5,0x0
  400cbb:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
  400cc0:	66 42 0f 6e 2c 0a    	movd   xmm5,DWORD PTR [rdx+r9*1]
  400cc6:	0f c6 dd 00          	shufps xmm3,xmm5,0x0
  400cca:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
  400cce:	66 0f 6e 2c 37       	movd   xmm5,DWORD PTR [rdi+rsi*1]
  400cd3:	0f c6 c5 00          	shufps xmm0,xmm5,0x0
  400cd7:	66 0f 6e 0c 77       	movd   xmm1,DWORD PTR [rdi+rsi*2]
  400cdc:	66 42 0f 6e 2c 07    	movd   xmm5,DWORD PTR [rdi+r8*1]
  400ce2:	0f c6 cd 00          	shufps xmm1,xmm5,0x0
  400ce6:	66 0f 38 04 d4       	pmaddubsw xmm2,xmm4
  400ceb:	66 0f 38 04 c4       	pmaddubsw xmm0,xmm4
  400cf0:	66 0f 38 04 dc       	pmaddubsw xmm3,xmm4
  400cf5:	66 0f 38 04 cc       	pmaddubsw xmm1,xmm4
  400cfa:	66 0f f9 c2          	psubw  xmm0,xmm2
  400cfe:	66 0f f9 cb          	psubw  xmm1,xmm3
  400d02:	66 0f 6f d0          	movdqa xmm2,xmm0
  400d06:	66 0f fd c1          	paddw  xmm0,xmm1
  400d0a:	66 0f f9 ca          	psubw  xmm1,xmm2
  400d0e:	66 0f 6f d0          	movdqa xmm2,xmm0
  400d12:	66 0f 6c c1          	punpcklqdq xmm0,xmm1
  400d16:	66 0f 6d d1          	punpckhqdq xmm2,xmm1
  400d1a:	66 0f 6f c8          	movdqa xmm1,xmm0
  400d1e:	66 0f fd c2          	paddw  xmm0,xmm2
  400d22:	66 0f f9 d1          	psubw  xmm2,xmm1
  400d26:	66 0f 6f c8          	movdqa xmm1,xmm0
  400d2a:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
  400d30:	66 0f 72 f2 10       	pslld  xmm2,0x10
  400d35:	66 0f 72 d1 10       	psrld  xmm1,0x10
  400d3a:	66 0f eb d1          	por    xmm2,xmm1
  400d3e:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
  400d43:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
  400d48:	66 0f ee c2          	pmaxsw xmm0,xmm2
  400d4c:	66 0f f5 04 25 10 0f 	pmaddwd xmm0,XMMWORD PTR ds:0x400f10
  400d53:	40 00 
  400d55:	66 0f 70 d0 ee       	pshufd xmm2,xmm0,0xee
  400d5a:	66 0f fe c2          	paddd  xmm0,xmm2
  400d5e:	f2 0f 70 d0 4e       	pshuflw xmm2,xmm0,0x4e
  400d63:	66 0f fe c2          	paddd  xmm0,xmm2
  400d67:	66 0f 7e c0          	movd   eax,xmm0
  400d6b:	c3                   	ret    

0000000000400d6c <add>:
  400d6c:	4c 8d 04 76          	lea    r8,[rsi+rsi*2]
  400d70:	4c 8d 0c 49          	lea    r9,[rcx+rcx*2]
  400d74:	66 0f 6f 24 25 00 0f 	movdqa xmm4,XMMWORD PTR ds:0x400f00
  400d7b:	40 00 
  400d7d:	66 0f 6e 12          	movd   xmm2,DWORD PTR [rdx]
  400d81:	66 0f 6e 2c 0a       	movd   xmm5,DWORD PTR [rdx+rcx*1]
  400d86:	0f c6 d5 00          	shufps xmm2,xmm5,0x0
  400d8a:	66 0f 6e 1c 4a       	movd   xmm3,DWORD PTR [rdx+rcx*2]
  400d8f:	66 42 0f 6e 2c 0a    	movd   xmm5,DWORD PTR [rdx+r9*1]
  400d95:	0f c6 dd 00          	shufps xmm3,xmm5,0x0
  400d99:	66 0f 6e 07          	movd   xmm0,DWORD PTR [rdi]
  400d9d:	66 0f 6e 2c 37       	movd   xmm5,DWORD PTR [rdi+rsi*1]
  400da2:	0f c6 c5 00          	shufps xmm0,xmm5,0x0
  400da6:	66 0f 6e 0c 77       	movd   xmm1,DWORD PTR [rdi+rsi*2]
  400dab:	66 42 0f 6e 2c 07    	movd   xmm5,DWORD PTR [rdi+r8*1]
  400db1:	0f c6 cd 00          	shufps xmm1,xmm5,0x0
  400db5:	66 0f 38 04 d4       	pmaddubsw xmm2,xmm4
  400dba:	66 0f 38 04 c4       	pmaddubsw xmm0,xmm4
  400dbf:	66 0f 38 04 dc       	pmaddubsw xmm3,xmm4
  400dc4:	66 0f 38 04 cc       	pmaddubsw xmm1,xmm4
  400dc9:	66 0f f9 c2          	psubw  xmm0,xmm2
  400dcd:	66 0f f9 cb          	psubw  xmm1,xmm3
  400dd1:	66 0f 6f d0          	movdqa xmm2,xmm0
  400dd5:	66 0f fd c1          	paddw  xmm0,xmm1
  400dd9:	66 0f f9 ca          	psubw  xmm1,xmm2
  400ddd:	66 0f 6f d0          	movdqa xmm2,xmm0
  400de1:	66 0f 6c c1          	punpcklqdq xmm0,xmm1
  400de5:	66 0f 6d d1          	punpckhqdq xmm2,xmm1
  400de9:	66 0f 6f c8          	movdqa xmm1,xmm0
  400ded:	66 0f fd c2          	paddw  xmm0,xmm2
  400df1:	66 0f f9 d1          	psubw  xmm2,xmm1
  400df5:	66 0f 6f c8          	movdqa xmm1,xmm0
  400df9:	66 0f 3a 0e c2 aa    	pblendw xmm0,xmm2,0xaa
  400dff:	66 0f 72 f2 10       	pslld  xmm2,0x10
  400e04:	66 0f 72 d1 10       	psrld  xmm1,0x10
  400e09:	66 0f eb d1          	por    xmm2,xmm1
  400e0d:	66 0f 38 1d c0       	pabsw  xmm0,xmm0
  400e12:	66 0f 38 1d d2       	pabsw  xmm2,xmm2
  400e17:	66 0f ee c2          	pmaxsw xmm0,xmm2
  400e1b:	66 0f f5 04 25 10 0f 	pmaddwd xmm0,XMMWORD PTR ds:0x400f10
  400e22:	40 00 
  400e24:	66 0f 70 c8 ee       	pshufd xmm1,xmm0,0xee
  400e29:	66 0f fe c1          	paddd  xmm0,xmm1
  400e2d:	f2 0f 70 c8 4e       	pshuflw xmm1,xmm0,0x4e
  400e32:	66 0f fe c1          	paddd  xmm0,xmm1
  400e36:	66 0f 7e c0          	movd   eax,xmm0
  400e3a:	c3                   	ret    
  400e3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400e40 <__libc_csu_init>:
  400e40:	41 57                	push   r15
  400e42:	41 56                	push   r14
  400e44:	49 89 d7             	mov    r15,rdx
  400e47:	41 55                	push   r13
  400e49:	41 54                	push   r12
  400e4b:	4c 8d 25 ae 0f 20 00 	lea    r12,[rip+0x200fae]        # 601e00 <__frame_dummy_init_array_entry>
  400e52:	55                   	push   rbp
  400e53:	48 8d 2d ae 0f 20 00 	lea    rbp,[rip+0x200fae]        # 601e08 <__init_array_end>
  400e5a:	53                   	push   rbx
  400e5b:	41 89 fd             	mov    r13d,edi
  400e5e:	49 89 f6             	mov    r14,rsi
  400e61:	4c 29 e5             	sub    rbp,r12
  400e64:	48 83 ec 08          	sub    rsp,0x8
  400e68:	48 c1 fd 03          	sar    rbp,0x3
  400e6c:	e8 37 f6 ff ff       	call   4004a8 <_init>
  400e71:	48 85 ed             	test   rbp,rbp
  400e74:	74 20                	je     400e96 <__libc_csu_init+0x56>
  400e76:	31 db                	xor    ebx,ebx
  400e78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400e7f:	00 
  400e80:	4c 89 fa             	mov    rdx,r15
  400e83:	4c 89 f6             	mov    rsi,r14
  400e86:	44 89 ef             	mov    edi,r13d
  400e89:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  400e8d:	48 83 c3 01          	add    rbx,0x1
  400e91:	48 39 dd             	cmp    rbp,rbx
  400e94:	75 ea                	jne    400e80 <__libc_csu_init+0x40>
  400e96:	48 83 c4 08          	add    rsp,0x8
  400e9a:	5b                   	pop    rbx
  400e9b:	5d                   	pop    rbp
  400e9c:	41 5c                	pop    r12
  400e9e:	41 5d                	pop    r13
  400ea0:	41 5e                	pop    r14
  400ea2:	41 5f                	pop    r15
  400ea4:	c3                   	ret    
  400ea5:	90                   	nop
  400ea6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400ead:	00 00 00 

0000000000400eb0 <__libc_csu_fini>:
  400eb0:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400eb4 <_fini>:
  400eb4:	48 83 ec 08          	sub    rsp,0x8
  400eb8:	48 83 c4 08          	add    rsp,0x8
  400ebc:	c3                   	ret    
