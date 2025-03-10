	.file	"types.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Size of char: %d (MAX: %d, MIN: %d)\n"
	.align 8
.LC1:
	.string	"Size of unsigned char: %d (MAX: %d, MIN: %d)\n"
	.align 8
.LC2:
	.string	"Size of short: %d (MAX: %d, MIN: %d)\n"
	.align 8
.LC3:
	.string	"Size of unsigned short: %d (MAX: %d, MIN: %d)\n"
	.align 8
.LC4:
	.string	"Size of int: %d (MAX: %d, MIN: %d)\n"
	.align 8
.LC5:
	.string	"Size of unsigned int: %d (MAX: %d, MIN: %d)\n"
	.align 8
.LC6:
	.string	"Size of long: %d (MAX: %ld, MIN: %ld)\n"
	.align 8
.LC7:
	.string	"Size of unsigned long: %d (MAX: %lu, MIN: %d)\n"
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
	subq	$32, %rsp
	movl	$572662306, -4(%rbp)
	movl	$858993459, -8(%rbp)
	movw	$17476, -10(%rbp)
	movw	$21845, -12(%rbp)
	movb	$102, -13(%rbp)
	movb	$119, -14(%rbp)
	movl	$2290649224, %eax
	movq	%rax, -24(%rbp)
	movl	$2576980377, %eax
	movq	%rax, -32(%rbp)
	movl	$-128, %ecx
	movl	$127, %edx
	movl	$1, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %ecx
	movl	$255, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-32768, %ecx
	movl	$32767, %edx
	movl	$2, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %ecx
	movl	$65535, %edx
	movl	$2, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-2147483648, %ecx
	movl	$2147483647, %edx
	movl	$4, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %ecx
	movl	$-1, %edx
	movl	$4, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movabsq	$-9223372036854775808, %rax
	movq	%rax, %rcx
	movabsq	$9223372036854775807, %rax
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %ecx
	movq	$-1, %rdx
	movl	$8, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
