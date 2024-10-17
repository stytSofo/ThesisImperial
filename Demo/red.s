	.text
	.file	"red.c"
	.globl	compartment1                    // -- Begin function compartment1
	.p2align	2
	.type	compartment1,@function
compartment1:                           // @compartment1
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	add	x8, sp, #8
	and	x8, x8, #0xfffffffffffff8
	orr	x8, x8, #0x300000000000000
	str	x8, [sp]                        // 8-byte Folded Spill
	str	x0, [x8]
	ldr	x0, [x8]
	bl	get_mte_tag
	and	w1, w0, #0xff
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8]
	add	x8, x8, #10
	mov	x9, #216172782113783808
	bfxil	x9, x8, #0, #56
	mov	w8, #65
	strb	w8, [x9]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	compartment1, .Lfunc_end0-compartment1
	.cfi_endproc
                                        // -- End function
	.globl	callable_compartment1           // -- Begin function callable_compartment1
	.p2align	2
	.type	callable_compartment1,@function
callable_compartment1:                  // @callable_compartment1
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end1:
	.size	callable_compartment1, .Lfunc_end1-callable_compartment1
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%hhx\n"
	.size	.L.str, 6

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"I am the compartment 1"
	.size	.L.str.1, 23

	.ident	"Ubuntu clang version 14.0.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym get_mte_tag
