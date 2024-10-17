
demo_stores:     file format elf64-littleaarch64


Disassembly of section .init:

00000000000006d8 <_init>:
 6d8:	d503201f 	nop
 6dc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 6e0:	910003fd 	mov	x29, sp
 6e4:	94000044 	bl	7f4 <call_weak_fn>
 6e8:	a8c17bfd 	ldp	x29, x30, [sp], #16
 6ec:	d65f03c0 	ret

Disassembly of section .plt:

00000000000006f0 <.plt>:
 6f0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 6f4:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0x10134>
 6f8:	f947fe11 	ldr	x17, [x16, #4088]
 6fc:	913fe210 	add	x16, x16, #0xff8
 700:	d61f0220 	br	x17
 704:	d503201f 	nop
 708:	d503201f 	nop
 70c:	d503201f 	nop

0000000000000710 <exit@plt>:
 710:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 714:	f9400211 	ldr	x17, [x16]
 718:	91000210 	add	x16, x16, #0x0
 71c:	d61f0220 	br	x17

0000000000000720 <__libc_start_main@plt>:
 720:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 724:	f9400611 	ldr	x17, [x16, #8]
 728:	91002210 	add	x16, x16, #0x8
 72c:	d61f0220 	br	x17

0000000000000730 <perror@plt>:
 730:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 734:	f9400a11 	ldr	x17, [x16, #16]
 738:	91004210 	add	x16, x16, #0x10
 73c:	d61f0220 	br	x17

0000000000000740 <__cxa_finalize@plt>:
 740:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 744:	f9400e11 	ldr	x17, [x16, #24]
 748:	91006210 	add	x16, x16, #0x18
 74c:	d61f0220 	br	x17

0000000000000750 <getauxval@plt>:
 750:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 754:	f9401211 	ldr	x17, [x16, #32]
 758:	91008210 	add	x16, x16, #0x20
 75c:	d61f0220 	br	x17

0000000000000760 <__gmon_start__@plt>:
 760:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 764:	f9401611 	ldr	x17, [x16, #40]
 768:	9100a210 	add	x16, x16, #0x28
 76c:	d61f0220 	br	x17

0000000000000770 <abort@plt>:
 770:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 774:	f9401a11 	ldr	x17, [x16, #48]
 778:	9100c210 	add	x16, x16, #0x30
 77c:	d61f0220 	br	x17

0000000000000780 <mmap@plt>:
 780:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 784:	f9401e11 	ldr	x17, [x16, #56]
 788:	9100e210 	add	x16, x16, #0x38
 78c:	d61f0220 	br	x17

0000000000000790 <printf@plt>:
 790:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 794:	f9402211 	ldr	x17, [x16, #64]
 798:	91010210 	add	x16, x16, #0x40
 79c:	d61f0220 	br	x17

00000000000007a0 <prctl@plt>:
 7a0:	d0000090 	adrp	x16, 12000 <exit@GLIBC_2.17>
 7a4:	f9402611 	ldr	x17, [x16, #72]
 7a8:	91012210 	add	x16, x16, #0x48
 7ac:	d61f0220 	br	x17

Disassembly of section .text:

00000000000007c0 <_start>:
 7c0:	d503201f 	nop
 7c4:	d280001d 	mov	x29, #0x0                   	// #0
 7c8:	d280001e 	mov	x30, #0x0                   	// #0
 7cc:	aa0003e5 	mov	x5, x0
 7d0:	f94003e1 	ldr	x1, [sp]
 7d4:	910023e2 	add	x2, sp, #0x8
 7d8:	910003e6 	mov	x6, sp
 7dc:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x10134>
 7e0:	f947ec00 	ldr	x0, [x0, #4056]
 7e4:	d2800003 	mov	x3, #0x0                   	// #0
 7e8:	d2800004 	mov	x4, #0x0                   	// #0
 7ec:	97ffffcd 	bl	720 <__libc_start_main@plt>
 7f0:	97ffffe0 	bl	770 <abort@plt>

00000000000007f4 <call_weak_fn>:
 7f4:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x10134>
 7f8:	f947e800 	ldr	x0, [x0, #4048]
 7fc:	b4000040 	cbz	x0, 804 <call_weak_fn+0x10>
 800:	17ffffd8 	b	760 <__gmon_start__@plt>
 804:	d65f03c0 	ret
 808:	d503201f 	nop
 80c:	d503201f 	nop

0000000000000810 <deregister_tm_clones>:
 810:	d0000080 	adrp	x0, 12000 <exit@GLIBC_2.17>
 814:	91018000 	add	x0, x0, #0x60
 818:	d0000081 	adrp	x1, 12000 <exit@GLIBC_2.17>
 81c:	91018021 	add	x1, x1, #0x60
 820:	eb00003f 	cmp	x1, x0
 824:	540000c0 	b.eq	83c <deregister_tm_clones+0x2c>  // b.none
 828:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0x10134>
 82c:	f947e021 	ldr	x1, [x1, #4032]
 830:	b4000061 	cbz	x1, 83c <deregister_tm_clones+0x2c>
 834:	aa0103f0 	mov	x16, x1
 838:	d61f0200 	br	x16
 83c:	d65f03c0 	ret

0000000000000840 <register_tm_clones>:
 840:	d0000080 	adrp	x0, 12000 <exit@GLIBC_2.17>
 844:	91018000 	add	x0, x0, #0x60
 848:	d0000081 	adrp	x1, 12000 <exit@GLIBC_2.17>
 84c:	91018021 	add	x1, x1, #0x60
 850:	cb000021 	sub	x1, x1, x0
 854:	d37ffc22 	lsr	x2, x1, #63
 858:	8b810c41 	add	x1, x2, x1, asr #3
 85c:	9341fc21 	asr	x1, x1, #1
 860:	b40000c1 	cbz	x1, 878 <register_tm_clones+0x38>
 864:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0x10134>
 868:	f947f042 	ldr	x2, [x2, #4064]
 86c:	b4000062 	cbz	x2, 878 <register_tm_clones+0x38>
 870:	aa0203f0 	mov	x16, x2
 874:	d61f0200 	br	x16
 878:	d65f03c0 	ret
 87c:	d503201f 	nop

0000000000000880 <__do_global_dtors_aux>:
 880:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 884:	910003fd 	mov	x29, sp
 888:	f9000bf3 	str	x19, [sp, #16]
 88c:	d0000093 	adrp	x19, 12000 <exit@GLIBC_2.17>
 890:	39418260 	ldrb	w0, [x19, #96]
 894:	35000140 	cbnz	w0, 8bc <__do_global_dtors_aux+0x3c>
 898:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x10134>
 89c:	f947e400 	ldr	x0, [x0, #4040]
 8a0:	b4000080 	cbz	x0, 8b0 <__do_global_dtors_aux+0x30>
 8a4:	d0000080 	adrp	x0, 12000 <exit@GLIBC_2.17>
 8a8:	f9402c00 	ldr	x0, [x0, #88]
 8ac:	97ffffa5 	bl	740 <__cxa_finalize@plt>
 8b0:	97ffffd8 	bl	810 <deregister_tm_clones>
 8b4:	52800020 	mov	w0, #0x1                   	// #1
 8b8:	39018260 	strb	w0, [x19, #96]
 8bc:	f9400bf3 	ldr	x19, [sp, #16]
 8c0:	a8c27bfd 	ldp	x29, x30, [sp], #32
 8c4:	d65f03c0 	ret
 8c8:	d503201f 	nop
 8cc:	d503201f 	nop

00000000000008d0 <frame_dummy>:
 8d0:	17ffffdc 	b	840 <register_tm_clones>

00000000000008d4 <compartment1>:
 8d4:	d10043ff 	sub	sp, sp, #0x10
 8d8:	910023e8 	add	x8, sp, #0x8
 8dc:	927dd108 	and	x8, x8, #0xfffffffffffff8
 8e0:	b2480508 	orr	x8, x8, #0x300000000000000
 8e4:	f9000100 	str	x0, [x8]
 8e8:	f9400108 	ldr	x8, [x8]
 8ec:	91002908 	add	x8, x8, #0xa
 8f0:	d2e06009 	mov	x9, #0x300000000000000     	// #216172782113783808
 8f4:	b340dd09 	bfxil	x9, x8, #0, #56
 8f8:	52800828 	mov	w8, #0x41                  	// #65
 8fc:	39000128 	strb	w8, [x9]
 900:	910043ff 	add	sp, sp, #0x10
 904:	d65f03c0 	ret

0000000000000908 <compartment2>:
 908:	d100c3ff 	sub	sp, sp, #0x30
 90c:	a9027bfd 	stp	x29, x30, [sp, #32]
 910:	910083fd 	add	x29, sp, #0x20
 914:	d10023a8 	sub	x8, x29, #0x8
 918:	927dd109 	and	x9, x8, #0xfffffffffffff8
 91c:	d2e0a008 	mov	x8, #0x500000000000000     	// #360287970189639680
 920:	f9000be8 	str	x8, [sp, #16]
 924:	aa080129 	orr	x9, x9, x8
 928:	f90007e9 	str	x9, [sp, #8]
 92c:	f9000120 	str	x0, [x9]
 930:	f9400129 	ldr	x9, [x9]
 934:	b340dd28 	bfxil	x8, x9, #0, #56
 938:	39400101 	ldrb	w1, [x8]
 93c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 940:	91311000 	add	x0, x0, #0xc44
 944:	97ffff93 	bl	790 <printf@plt>
 948:	f94007e8 	ldr	x8, [sp, #8]
 94c:	f9400be9 	ldr	x9, [sp, #16]
 950:	f9400108 	ldr	x8, [x8]
 954:	91002908 	add	x8, x8, #0xa
 958:	b340dd09 	bfxil	x9, x8, #0, #56
 95c:	52800848 	mov	w8, #0x42                  	// #66
 960:	39000128 	strb	w8, [x9]
 964:	a9427bfd 	ldp	x29, x30, [sp, #32]
 968:	9100c3ff 	add	sp, sp, #0x30
 96c:	d65f03c0 	ret

0000000000000970 <set_specific_tag>:
 970:	d10043ff 	sub	sp, sp, #0x10
 974:	f90007e0 	str	x0, [sp, #8]
 978:	39001fe1 	strb	w1, [sp, #7]
 97c:	f94007e8 	ldr	x8, [sp, #8]
 980:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 984:	39401fe9 	ldrb	w9, [sp, #7]
 988:	aa09e100 	orr	x0, x8, x9, lsl #56
 98c:	910043ff 	add	sp, sp, #0x10
 990:	d65f03c0 	ret

0000000000000994 <mte_set_tag>:
 994:	d10143ff 	sub	sp, sp, #0x50
 998:	a9047bfd 	stp	x29, x30, [sp, #64]
 99c:	910103fd 	add	x29, sp, #0x40
 9a0:	f81f83a0 	stur	x0, [x29, #-8]
 9a4:	381f73a1 	sturb	w1, [x29, #-9]
 9a8:	f81e83a2 	stur	x2, [x29, #-24]
 9ac:	f85f83a0 	ldur	x0, [x29, #-8]
 9b0:	385f73a1 	ldurb	w1, [x29, #-9]
 9b4:	97ffffef 	bl	970 <set_specific_tag>
 9b8:	f90013e0 	str	x0, [sp, #32]
 9bc:	d2800208 	mov	x8, #0x10                  	// #16
 9c0:	f9000fe8 	str	x8, [sp, #24]
 9c4:	f9000bff 	str	xzr, [sp, #16]
 9c8:	14000001 	b	9cc <mte_set_tag+0x38>
 9cc:	f9400be8 	ldr	x8, [sp, #16]
 9d0:	f85e83a9 	ldur	x9, [x29, #-24]
 9d4:	eb090108 	subs	x8, x8, x9
 9d8:	540001c2 	b.cs	a10 <mte_set_tag+0x7c>  // b.hs, b.nlast
 9dc:	14000001 	b	9e0 <mte_set_tag+0x4c>
 9e0:	f94013e8 	ldr	x8, [sp, #32]
 9e4:	f9400be9 	ldr	x9, [sp, #16]
 9e8:	8b090108 	add	x8, x8, x9
 9ec:	f90007e8 	str	x8, [sp, #8]
 9f0:	f94007e8 	ldr	x8, [sp, #8]
 9f4:	d9200908 	stg	x8, [x8]
 9f8:	14000001 	b	9fc <mte_set_tag+0x68>
 9fc:	f9400fe9 	ldr	x9, [sp, #24]
 a00:	f9400be8 	ldr	x8, [sp, #16]
 a04:	8b090108 	add	x8, x8, x9
 a08:	f9000be8 	str	x8, [sp, #16]
 a0c:	17fffff0 	b	9cc <mte_set_tag+0x38>
 a10:	f94013e0 	ldr	x0, [sp, #32]
 a14:	a9447bfd 	ldp	x29, x30, [sp, #64]
 a18:	910143ff 	add	sp, sp, #0x50
 a1c:	d65f03c0 	ret

0000000000000a20 <main>:
 a20:	d10183ff 	sub	sp, sp, #0x60
 a24:	a9057bfd 	stp	x29, x30, [sp, #80]
 a28:	910143fd 	add	x29, sp, #0x50
 a2c:	b81fc3bf 	stur	wzr, [x29, #-4]
 a30:	d2800340 	mov	x0, #0x1a                  	// #26
 a34:	97ffff47 	bl	750 <getauxval@plt>
 a38:	2a0003e8 	mov	w8, w0
 a3c:	37900108 	tbnz	w8, #18, a5c <main+0x3c>
 a40:	14000001 	b	a44 <main+0x24>
 a44:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a48:	91312400 	add	x0, x0, #0xc49
 a4c:	97ffff51 	bl	790 <printf@plt>
 a50:	52800028 	mov	w8, #0x1                   	// #1
 a54:	b81fc3a8 	stur	w8, [x29, #-4]
 a58:	14000071 	b	c1c <main+0x1fc>
 a5c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a60:	91317c00 	add	x0, x0, #0xc5f
 a64:	97ffff4b 	bl	790 <printf@plt>
 a68:	14000001 	b	a6c <main+0x4c>
 a6c:	528006e0 	mov	w0, #0x37                  	// #55
 a70:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 a74:	f2a000e1 	movk	x1, #0x7, lsl #16
 a78:	2a1f03e4 	mov	w4, wzr
 a7c:	2a0403e2 	mov	w2, w4
 a80:	2a0403e3 	mov	w3, w4
 a84:	97ffff47 	bl	7a0 <prctl@plt>
 a88:	34000100 	cbz	w0, aa8 <main+0x88>
 a8c:	14000001 	b	a90 <main+0x70>
 a90:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a94:	9131c400 	add	x0, x0, #0xc71
 a98:	97ffff26 	bl	730 <perror@plt>
 a9c:	52800028 	mov	w8, #0x1                   	// #1
 aa0:	b81fc3a8 	stur	w8, [x29, #-4]
 aa4:	1400005e 	b	c1c <main+0x1fc>
 aa8:	aa1f03e0 	mov	x0, xzr
 aac:	f90017e0 	str	x0, [sp, #40]
 ab0:	d2820001 	mov	x1, #0x1000                	// #4096
 ab4:	f90007e1 	str	x1, [sp, #8]
 ab8:	52800462 	mov	w2, #0x23                  	// #35
 abc:	b90017e2 	str	w2, [sp, #20]
 ac0:	52800443 	mov	w3, #0x22                  	// #34
 ac4:	b9001be3 	str	w3, [sp, #24]
 ac8:	12800004 	mov	w4, #0xffffffff            	// #-1
 acc:	b9001fe4 	str	w4, [sp, #28]
 ad0:	aa1f03e5 	mov	x5, xzr
 ad4:	f90013e5 	str	x5, [sp, #32]
 ad8:	97ffff2a 	bl	780 <mmap@plt>
 adc:	f94007e1 	ldr	x1, [sp, #8]
 ae0:	b94017e2 	ldr	w2, [sp, #20]
 ae4:	b9401be3 	ldr	w3, [sp, #24]
 ae8:	b9401fe4 	ldr	w4, [sp, #28]
 aec:	f94013e5 	ldr	x5, [sp, #32]
 af0:	aa0003e8 	mov	x8, x0
 af4:	f94017e0 	ldr	x0, [sp, #40]
 af8:	f81f03a8 	stur	x8, [x29, #-16]
 afc:	97ffff21 	bl	780 <mmap@plt>
 b00:	f81e83a0 	stur	x0, [x29, #-24]
 b04:	f85f03a8 	ldur	x8, [x29, #-16]
 b08:	b1000508 	adds	x8, x8, #0x1
 b0c:	540000e1 	b.ne	b28 <main+0x108>  // b.any
 b10:	14000001 	b	b14 <main+0xf4>
 b14:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b18:	91320000 	add	x0, x0, #0xc80
 b1c:	97ffff1d 	bl	790 <printf@plt>
 b20:	12800000 	mov	w0, #0xffffffff            	// #-1
 b24:	97fffefb 	bl	710 <exit@plt>
 b28:	f85e83a8 	ldur	x8, [x29, #-24]
 b2c:	b1000508 	adds	x8, x8, #0x1
 b30:	540000e1 	b.ne	b4c <main+0x12c>  // b.any
 b34:	14000001 	b	b38 <main+0x118>
 b38:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b3c:	91329400 	add	x0, x0, #0xca5
 b40:	97ffff14 	bl	790 <printf@plt>
 b44:	12800000 	mov	w0, #0xffffffff            	// #-1
 b48:	97fffef2 	bl	710 <exit@plt>
 b4c:	f85f03a0 	ldur	x0, [x29, #-16]
 b50:	52800061 	mov	w1, #0x3                   	// #3
 b54:	d2800402 	mov	x2, #0x20                  	// #32
 b58:	f90003e2 	str	x2, [sp]
 b5c:	97ffff8e 	bl	994 <mte_set_tag>
 b60:	f94003e2 	ldr	x2, [sp]
 b64:	f81f03a0 	stur	x0, [x29, #-16]
 b68:	f85e83a0 	ldur	x0, [x29, #-24]
 b6c:	528000a1 	mov	w1, #0x5                   	// #5
 b70:	97ffff89 	bl	994 <mte_set_tag>
 b74:	f81e83a0 	stur	x0, [x29, #-24]
 b78:	b81e43bf 	stur	wzr, [x29, #-28]
 b7c:	14000001 	b	b80 <main+0x160>
 b80:	b85e43a8 	ldur	w8, [x29, #-28]
 b84:	71008108 	subs	w8, w8, #0x20
 b88:	5400022a 	b.ge	bcc <main+0x1ac>  // b.tcont
 b8c:	14000001 	b	b90 <main+0x170>
 b90:	b85e43a8 	ldur	w8, [x29, #-28]
 b94:	11018508 	add	w8, w8, #0x61
 b98:	f85f03a9 	ldur	x9, [x29, #-16]
 b9c:	b89e43aa 	ldursw	x10, [x29, #-28]
 ba0:	382a6928 	strb	w8, [x9, x10]
 ba4:	b85e43a8 	ldur	w8, [x29, #-28]
 ba8:	11018508 	add	w8, w8, #0x61
 bac:	f85e83a9 	ldur	x9, [x29, #-24]
 bb0:	b89e43aa 	ldursw	x10, [x29, #-28]
 bb4:	382a6928 	strb	w8, [x9, x10]
 bb8:	14000001 	b	bbc <main+0x19c>
 bbc:	b85e43a8 	ldur	w8, [x29, #-28]
 bc0:	11000508 	add	w8, w8, #0x1
 bc4:	b81e43a8 	stur	w8, [x29, #-28]
 bc8:	17ffffee 	b	b80 <main+0x160>
 bcc:	f85f03a1 	ldur	x1, [x29, #-16]
 bd0:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bd4:	91332c00 	add	x0, x0, #0xccb
 bd8:	97fffeee 	bl	790 <printf@plt>
 bdc:	f85f03a0 	ldur	x0, [x29, #-16]
 be0:	97ffff3d 	bl	8d4 <compartment1>
 be4:	f85e83a1 	ldur	x1, [x29, #-24]
 be8:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bec:	9133dc00 	add	x0, x0, #0xcf7
 bf0:	97fffee8 	bl	790 <printf@plt>
 bf4:	f85e83a0 	ldur	x0, [x29, #-24]
 bf8:	97ffff44 	bl	908 <compartment2>
 bfc:	f85e83a1 	ldur	x1, [x29, #-24]
 c00:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c04:	91349000 	add	x0, x0, #0xd24
 c08:	97fffee2 	bl	790 <printf@plt>
 c0c:	f85e83a0 	ldur	x0, [x29, #-24]
 c10:	97ffff31 	bl	8d4 <compartment1>
 c14:	b81fc3bf 	stur	wzr, [x29, #-4]
 c18:	14000001 	b	c1c <main+0x1fc>
 c1c:	b85fc3a0 	ldur	w0, [x29, #-4]
 c20:	a9457bfd 	ldp	x29, x30, [sp, #80]
 c24:	910183ff 	add	sp, sp, #0x60
 c28:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000c2c <_fini>:
 c2c:	d503201f 	nop
 c30:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 c34:	910003fd 	mov	x29, sp
 c38:	a8c17bfd 	ldp	x29, x30, [sp], #16
 c3c:	d65f03c0 	ret
