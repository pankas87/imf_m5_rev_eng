		.file	"variables.c"
		.text
		.globl	gvar1
		.data
		.type	gvar1, @object
		.size	gvar1, 1
	gvar1:
		.byte	17
		.globl	gvar2
		.type	gvar2, @object
		.size	gvar2, 1
	gvar2:
		.byte	34
		.globl	gvar3
		.align 2
		.type	gvar3, @object
		.size	gvar3, 2
	gvar3:
		.value	51
		.globl	gvar4
		.align 2
		.type	gvar4, @object
		.size	gvar4, 2
	gvar4:
		.value	68
		.globl	gvar5
		.align 4
		.type	gvar5, @object
		.size	gvar5, 4
	gvar5:
		.long	85
		.globl	gvar6
		.align 4
		.type	gvar6, @object
		.size	gvar6, 4
	gvar6:
		.long	102
		.globl	gvar7
		.align 8
		.type	gvar7, @object
		.size	gvar7, 8
	gvar7:
	.quad	119
	.globl	gvar8
	.align 8
	.type	gvar8, @object
	.size	gvar8, 8
gvar8:
	.quad	136
	.globl	gvar9
	.align 8
	.type	gvar9, @object
	.size	gvar9, 8
gvar9:
	.quad	153
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movb	$17, -1(%rbp)
	movb	$34, -2(%rbp)
	movw	$51, -4(%rbp)
	movw	$68, -6(%rbp)
	movl	$85, -12(%rbp)
	movl	$102, -16(%rbp)
	movq	$119, -24(%rbp)
	movq	$136, -32(%rbp)
	movq	$153, -40(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
