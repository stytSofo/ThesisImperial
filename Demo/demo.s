
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
 6f4:	b0000090 	adrp	x16, 11000 <__FRAME_END__+0x100c4>
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
 7dc:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x100c4>
 7e0:	f947ec00 	ldr	x0, [x0, #4056]
 7e4:	d2800003 	mov	x3, #0x0                   	// #0
 7e8:	d2800004 	mov	x4, #0x0                   	// #0
 7ec:	97ffffcd 	bl	720 <__libc_start_main@plt>
 7f0:	97ffffe0 	bl	770 <abort@plt>

00000000000007f4 <call_weak_fn>:
 7f4:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x100c4>
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
 828:	b0000081 	adrp	x1, 11000 <__FRAME_END__+0x100c4>
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
 864:	b0000082 	adrp	x2, 11000 <__FRAME_END__+0x100c4>
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
 898:	b0000080 	adrp	x0, 11000 <__FRAME_END__+0x100c4>
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

0000000000000908 <callable_compartment1>:
 908:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 90c:	910003fd 	mov	x29, sp
 910:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 914:	91312000 	add	x0, x0, #0xc48
 918:	97ffff9e 	bl	790 <printf@plt>
 91c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 920:	d65f03c0 	ret

0000000000000924 <compartment2>:
 924:	d10043ff 	sub	sp, sp, #0x10
 928:	910023e8 	add	x8, sp, #0x8
 92c:	927dd108 	and	x8, x8, #0xfffffffffffff8
 930:	d2e0a009 	mov	x9, #0x500000000000000     	// #360287970189639680
 934:	aa090108 	orr	x8, x8, x9
 938:	f9000100 	str	x0, [x8]
 93c:	f9400108 	ldr	x8, [x8]
 940:	91002908 	add	x8, x8, #0xa
 944:	b340dd09 	bfxil	x9, x8, #0, #56
 948:	52800848 	mov	w8, #0x42                  	// #66
 94c:	39000128 	strb	w8, [x9]
 950:	910043ff 	add	sp, sp, #0x10
 954:	d65f03c0 	ret

0000000000000958 <callable_compartment2>:
 958:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 95c:	910003fd 	mov	x29, sp
 960:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 964:	91317c00 	add	x0, x0, #0xc5f
 968:	97ffff8a 	bl	790 <printf@plt>
 96c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 970:	d65f03c0 	ret

0000000000000974 <set_specific_tag>:
 974:	d10043ff 	sub	sp, sp, #0x10
 978:	f90007e0 	str	x0, [sp, #8]
 97c:	39001fe1 	strb	w1, [sp, #7]
 980:	f94007e8 	ldr	x8, [sp, #8]
 984:	9244ed08 	and	x8, x8, #0xf0ffffffffffffff
 988:	39401fe9 	ldrb	w9, [sp, #7]
 98c:	aa09e100 	orr	x0, x8, x9, lsl #56
 990:	910043ff 	add	sp, sp, #0x10
 994:	d65f03c0 	ret

0000000000000998 <mte_set_tag>:
 998:	d10143ff 	sub	sp, sp, #0x50
 99c:	a9047bfd 	stp	x29, x30, [sp, #64]
 9a0:	910103fd 	add	x29, sp, #0x40
 9a4:	f81f83a0 	stur	x0, [x29, #-8]
 9a8:	381f73a1 	sturb	w1, [x29, #-9]
 9ac:	f81e83a2 	stur	x2, [x29, #-24]
 9b0:	f85f83a0 	ldur	x0, [x29, #-8]
 9b4:	385f73a1 	ldurb	w1, [x29, #-9]
 9b8:	97ffffef 	bl	974 <set_specific_tag>
 9bc:	f90013e0 	str	x0, [sp, #32]
 9c0:	d2800208 	mov	x8, #0x10                  	// #16
 9c4:	f9000fe8 	str	x8, [sp, #24]
 9c8:	f9000bff 	str	xzr, [sp, #16]
 9cc:	14000001 	b	9d0 <mte_set_tag+0x38>
 9d0:	f9400be8 	ldr	x8, [sp, #16]
 9d4:	f85e83a9 	ldur	x9, [x29, #-24]
 9d8:	eb090108 	subs	x8, x8, x9
 9dc:	540001c2 	b.cs	a14 <mte_set_tag+0x7c>  // b.hs, b.nlast
 9e0:	14000001 	b	9e4 <mte_set_tag+0x4c>
 9e4:	f94013e8 	ldr	x8, [sp, #32]
 9e8:	f9400be9 	ldr	x9, [sp, #16]
 9ec:	8b090108 	add	x8, x8, x9
 9f0:	f90007e8 	str	x8, [sp, #8]
 9f4:	f94007e8 	ldr	x8, [sp, #8]
 9f8:	d9200908 	stg	x8, [x8]
 9fc:	14000001 	b	a00 <mte_set_tag+0x68>
 a00:	f9400fe9 	ldr	x9, [sp, #24]
 a04:	f9400be8 	ldr	x8, [sp, #16]
 a08:	8b090108 	add	x8, x8, x9
 a0c:	f9000be8 	str	x8, [sp, #16]
 a10:	17fffff0 	b	9d0 <mte_set_tag+0x38>
 a14:	f94013e0 	ldr	x0, [sp, #32]
 a18:	a9447bfd 	ldp	x29, x30, [sp, #64]
 a1c:	910143ff 	add	sp, sp, #0x50
 a20:	d65f03c0 	ret

0000000000000a24 <main>:
 a24:	d10183ff 	sub	sp, sp, #0x60
 a28:	a9057bfd 	stp	x29, x30, [sp, #80]
 a2c:	910143fd 	add	x29, sp, #0x50
 a30:	b81fc3bf 	stur	wzr, [x29, #-4]
 a34:	d2800340 	mov	x0, #0x1a                  	// #26
 a38:	97ffff46 	bl	750 <getauxval@plt>
 a3c:	2a0003e8 	mov	w8, w0
 a40:	37900108 	tbnz	w8, #18, a60 <main+0x3c>
 a44:	14000001 	b	a48 <main+0x24>
 a48:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a4c:	9131d800 	add	x0, x0, #0xc76
 a50:	97ffff50 	bl	790 <printf@plt>
 a54:	52800028 	mov	w8, #0x1                   	// #1
 a58:	b81fc3a8 	stur	w8, [x29, #-4]
 a5c:	14000071 	b	c20 <main+0x1fc>
 a60:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a64:	91323000 	add	x0, x0, #0xc8c
 a68:	97ffff4a 	bl	790 <printf@plt>
 a6c:	14000001 	b	a70 <main+0x4c>
 a70:	528006e0 	mov	w0, #0x37                  	// #55
 a74:	d29ffea1 	mov	x1, #0xfff5                	// #65525
 a78:	f2a000e1 	movk	x1, #0x7, lsl #16
 a7c:	2a1f03e4 	mov	w4, wzr
 a80:	2a0403e2 	mov	w2, w4
 a84:	2a0403e3 	mov	w3, w4
 a88:	97ffff46 	bl	7a0 <prctl@plt>
 a8c:	34000100 	cbz	w0, aac <main+0x88>
 a90:	14000001 	b	a94 <main+0x70>
 a94:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 a98:	91327800 	add	x0, x0, #0xc9e
 a9c:	97ffff25 	bl	730 <perror@plt>
 aa0:	52800028 	mov	w8, #0x1                   	// #1
 aa4:	b81fc3a8 	stur	w8, [x29, #-4]
 aa8:	1400005e 	b	c20 <main+0x1fc>
 aac:	aa1f03e0 	mov	x0, xzr
 ab0:	f90017e0 	str	x0, [sp, #40]
 ab4:	d2820001 	mov	x1, #0x1000                	// #4096
 ab8:	f90007e1 	str	x1, [sp, #8]
 abc:	52800462 	mov	w2, #0x23                  	// #35
 ac0:	b90017e2 	str	w2, [sp, #20]
 ac4:	52800443 	mov	w3, #0x22                  	// #34
 ac8:	b9001be3 	str	w3, [sp, #24]
 acc:	12800004 	mov	w4, #0xffffffff            	// #-1
 ad0:	b9001fe4 	str	w4, [sp, #28]
 ad4:	aa1f03e5 	mov	x5, xzr
 ad8:	f90013e5 	str	x5, [sp, #32]
 adc:	97ffff29 	bl	780 <mmap@plt>
 ae0:	f94007e1 	ldr	x1, [sp, #8]
 ae4:	b94017e2 	ldr	w2, [sp, #20]
 ae8:	b9401be3 	ldr	w3, [sp, #24]
 aec:	b9401fe4 	ldr	w4, [sp, #28]
 af0:	f94013e5 	ldr	x5, [sp, #32]
 af4:	aa0003e8 	mov	x8, x0
 af8:	f94017e0 	ldr	x0, [sp, #40]
 afc:	f81f03a8 	stur	x8, [x29, #-16]
 b00:	97ffff20 	bl	780 <mmap@plt>
 b04:	f81e83a0 	stur	x0, [x29, #-24]
 b08:	f85f03a8 	ldur	x8, [x29, #-16]
 b0c:	b1000508 	adds	x8, x8, #0x1
 b10:	540000e1 	b.ne	b2c <main+0x108>  // b.any
 b14:	14000001 	b	b18 <main+0xf4>
 b18:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b1c:	9132b400 	add	x0, x0, #0xcad
 b20:	97ffff1c 	bl	790 <printf@plt>
 b24:	12800000 	mov	w0, #0xffffffff            	// #-1
 b28:	97fffefa 	bl	710 <exit@plt>
 b2c:	f85e83a8 	ldur	x8, [x29, #-24]
 b30:	b1000508 	adds	x8, x8, #0x1
 b34:	540000e1 	b.ne	b50 <main+0x12c>  // b.any
 b38:	14000001 	b	b3c <main+0x118>
 b3c:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 b40:	91334800 	add	x0, x0, #0xcd2
 b44:	97ffff13 	bl	790 <printf@plt>
 b48:	12800000 	mov	w0, #0xffffffff            	// #-1
 b4c:	97fffef1 	bl	710 <exit@plt>
 b50:	f85f03a0 	ldur	x0, [x29, #-16]
 b54:	52800061 	mov	w1, #0x3                   	// #3
 b58:	d2800402 	mov	x2, #0x20                  	// #32
 b5c:	f90003e2 	str	x2, [sp]
 b60:	97ffff8e 	bl	998 <mte_set_tag>
 b64:	f94003e2 	ldr	x2, [sp]
 b68:	f81f03a0 	stur	x0, [x29, #-16]
 b6c:	f85e83a0 	ldur	x0, [x29, #-24]
 b70:	528000a1 	mov	w1, #0x5                   	// #5
 b74:	97ffff89 	bl	998 <mte_set_tag>
 b78:	f81e83a0 	stur	x0, [x29, #-24]
 b7c:	b81e43bf 	stur	wzr, [x29, #-28]
 b80:	14000001 	b	b84 <main+0x160>
 b84:	b85e43a8 	ldur	w8, [x29, #-28]
 b88:	71008108 	subs	w8, w8, #0x20
 b8c:	5400022a 	b.ge	bd0 <main+0x1ac>  // b.tcont
 b90:	14000001 	b	b94 <main+0x170>
 b94:	b85e43a8 	ldur	w8, [x29, #-28]
 b98:	11018508 	add	w8, w8, #0x61
 b9c:	f85f03a9 	ldur	x9, [x29, #-16]
 ba0:	b89e43aa 	ldursw	x10, [x29, #-28]
 ba4:	382a6928 	strb	w8, [x9, x10]
 ba8:	b85e43a8 	ldur	w8, [x29, #-28]
 bac:	11018508 	add	w8, w8, #0x61
 bb0:	f85e83a9 	ldur	x9, [x29, #-24]
 bb4:	b89e43aa 	ldursw	x10, [x29, #-28]
 bb8:	382a6928 	strb	w8, [x9, x10]
 bbc:	14000001 	b	bc0 <main+0x19c>
 bc0:	b85e43a8 	ldur	w8, [x29, #-28]
 bc4:	11000508 	add	w8, w8, #0x1
 bc8:	b81e43a8 	stur	w8, [x29, #-28]
 bcc:	17ffffee 	b	b84 <main+0x160>
 bd0:	f85f03a1 	ldur	x1, [x29, #-16]
 bd4:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bd8:	9133e000 	add	x0, x0, #0xcf8
 bdc:	97fffeed 	bl	790 <printf@plt>
 be0:	f85f03a0 	ldur	x0, [x29, #-16]
 be4:	97ffff3c 	bl	8d4 <compartment1>
 be8:	f85e83a1 	ldur	x1, [x29, #-24]
 bec:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 bf0:	91349000 	add	x0, x0, #0xd24
 bf4:	97fffee7 	bl	790 <printf@plt>
 bf8:	f85e83a0 	ldur	x0, [x29, #-24]
 bfc:	97ffff4a 	bl	924 <compartment2>
 c00:	f85e83a1 	ldur	x1, [x29, #-24]
 c04:	90000000 	adrp	x0, 0 <__abi_tag-0x278>
 c08:	91354400 	add	x0, x0, #0xd51
 c0c:	97fffee1 	bl	790 <printf@plt>
 c10:	f85e83a0 	ldur	x0, [x29, #-24]
 c14:	97ffff30 	bl	8d4 <compartment1>
 c18:	b81fc3bf 	stur	wzr, [x29, #-4]
 c1c:	14000001 	b	c20 <main+0x1fc>
 c20:	b85fc3a0 	ldur	w0, [x29, #-4]
 c24:	a9457bfd 	ldp	x29, x30, [sp, #80]
 c28:	910183ff 	add	sp, sp, #0x60
 c2c:	d65f03c0 	ret

Disassembly of section .fini:

0000000000000c30 <_fini>:
 c30:	d503201f 	nop
 c34:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 c38:	910003fd 	mov	x29, sp
 c3c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 c40:	d65f03c0 	ret
