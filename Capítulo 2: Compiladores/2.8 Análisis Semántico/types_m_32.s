	.file	"types.c"
# GNU C17 (Debian 14.2.0-16) version 14.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 14.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -m32 -mtune=generic -march=i686 -g -O2 -fasynchronous-unwind-tables
	.text
.Ltext0:
	.file 0 "/home/evaristo_estella/Documents/Maestria/M5-Ingenieria-Inversa/imf_m5_rev_eng/Cap\303\255tulo 2: Compiladores/2.8 An\303\241lisis Sem\303\241ntico" "types.c"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"Size of char: %d (MAX: %d, MIN: %d)\n"
	.align 4
.LC1:
	.string	"Size of unsigned char: %d (MAX: %d, MIN: %d)\n"
	.align 4
.LC2:
	.string	"Size of short: %d (MAX: %d, MIN: %d)\n"
	.align 4
.LC3:
	.string	"Size of unsigned short: %d (MAX: %d, MIN: %d)\n"
	.align 4
.LC4:
	.string	"Size of int: %d (MAX: %d, MIN: %d)\n"
	.align 4
.LC5:
	.string	"Size of unsigned int: %d (MAX: %d, MIN: %d)\n"
	.align 4
.LC6:
	.string	"Size of long: %d (MAX: %ld, MIN: %ld)\n"
	.align 4
.LC7:
	.string	"Size of unsigned long: %d (MAX: %lu, MIN: %d)\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11:
	.file 1 "types.c"
	.loc 1 4 16 view -0
	.cfi_startproc
	.loc 1 5 5 view .LVU1
.LVL0:
	.loc 1 6 5 view .LVU2
	.loc 1 7 5 view .LVU3
	.loc 1 8 5 view .LVU4
	.loc 1 9 5 view .LVU5
	.loc 1 10 5 view .LVU6
	.loc 1 11 5 view .LVU7
	.loc 1 12 5 view .LVU8
	.loc 1 14 5 view .LVU9
# types.c:4: int main(void) {
	.loc 1 4 16 is_stmt 0 view .LVU10
	leal	4(%esp), %ecx	#,
	.cfi_def_cfa 1, 0
	andl	$-16, %esp	#,
	pushl	-4(%ecx)	#
	pushl	%ebp	#
	movl	%esp, %ebp	#,
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx	#
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	call	__x86.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	# tmp98,
	pushl	%ecx	#
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
# types.c:14:     printf("Size of char: %d (MAX: %d, MIN: %d)\n", sizeof(var5), CHAR_MAX, CHAR_MIN);
	.loc 1 14 5 view .LVU11
	pushl	$-128	#
	pushl	$127	#
	pushl	$1	#
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp100
	pushl	%eax	# tmp100
	call	printf@PLT	#
.LVL1:
	.loc 1 15 5 is_stmt 1 view .LVU12
	leal	.LC1@GOTOFF(%ebx), %eax	#, tmp101
	pushl	$0	#
	pushl	$255	#
	pushl	$1	#
	pushl	%eax	# tmp101
	call	printf@PLT	#
.LVL2:
	.loc 1 16 5 view .LVU13
	addl	$32, %esp	#,
	leal	.LC2@GOTOFF(%ebx), %eax	#, tmp102
	pushl	$-32768	#
	pushl	$32767	#
	pushl	$2	#
	pushl	%eax	# tmp102
	call	printf@PLT	#
.LVL3:
	.loc 1 17 5 view .LVU14
	leal	.LC3@GOTOFF(%ebx), %eax	#, tmp103
	pushl	$0	#
	pushl	$65535	#
	pushl	$2	#
	pushl	%eax	# tmp103
	call	printf@PLT	#
.LVL4:
	.loc 1 18 5 view .LVU15
	addl	$32, %esp	#,
	leal	.LC4@GOTOFF(%ebx), %eax	#, tmp104
	pushl	$-2147483648	#
	pushl	$2147483647	#
	pushl	$4	#
	pushl	%eax	# tmp104
	call	printf@PLT	#
.LVL5:
	.loc 1 19 5 view .LVU16
	leal	.LC5@GOTOFF(%ebx), %eax	#, tmp105
	pushl	$0	#
	pushl	$-1	#
	pushl	$4	#
	pushl	%eax	# tmp105
	call	printf@PLT	#
.LVL6:
	.loc 1 20 5 view .LVU17
	addl	$32, %esp	#,
	leal	.LC6@GOTOFF(%ebx), %eax	#, tmp106
	pushl	$-2147483648	#
	pushl	$2147483647	#
	pushl	$4	#
	pushl	%eax	# tmp106
	call	printf@PLT	#
.LVL7:
	.loc 1 21 5 view .LVU18
	leal	.LC7@GOTOFF(%ebx), %eax	#, tmp107
	pushl	$0	#
	pushl	$-1	#
	pushl	$4	#
	pushl	%eax	# tmp107
	call	printf@PLT	#
.LVL8:
	addl	$32, %esp	#,
# types.c:22: }
	.loc 1 22 1 is_stmt 0 view .LVU20
	leal	-8(%ebp), %esp	#,
	xorl	%eax, %eax	#
	popl	%ecx	#
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	leal	-4(%ecx), %esp	#,
	.cfi_def_cfa 4, 4
	ret	
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB12:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE12:
	.text
.Letext0:
	.file 2 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x15a
	.value	0x5
	.byte	0x1
	.byte	0x4
	.long	.Ldebug_abbrev0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x8
	.long	0x2d
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0xa
	.byte	0x4
	.long	0x34
	.uleb128 0xb
	.long	.LASF21
	.byte	0x2
	.value	0x16b
	.byte	0xc
	.long	0x5c
	.long	0x96
	.uleb128 0xc
	.long	0x78
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.long	0x5c
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x5
	.long	0x5c
	.long	0x22222222
	.uleb128 0x3
	.long	.LASF13
	.byte	0x6
	.long	0x26
	.long	0x33333333
	.uleb128 0x4
	.long	.LASF14
	.byte	0x7
	.long	0x55
	.value	0x4444
	.uleb128 0x4
	.long	.LASF15
	.byte	0x8
	.long	0x40
	.value	0x5555
	.uleb128 0x5
	.long	.LASF16
	.byte	0x9
	.long	0x2d
	.byte	0x66
	.uleb128 0x5
	.long	.LASF17
	.byte	0xa
	.long	0x39
	.byte	0x77
	.uleb128 0x6
	.long	.LASF18
	.byte	0xb
	.long	0x71
	.sleb128 -2004318072
	.uleb128 0x6
	.long	.LASF19
	.byte	0xc
	.long	0x47
	.sleb128 -1717986919
	.uleb128 0x2
	.long	.LVL1
	.long	0x7e
	.uleb128 0x2
	.long	.LVL2
	.long	0x7e
	.uleb128 0x2
	.long	.LVL3
	.long	0x7e
	.uleb128 0x2
	.long	.LVL4
	.long	0x7e
	.uleb128 0x2
	.long	.LVL5
	.long	0x7e
	.uleb128 0x2
	.long	.LVL6
	.long	0x7e
	.uleb128 0x2
	.long	.LVL7
	.long	0x7e
	.uleb128 0x2
	.long	.LVL8
	.long	0x7e
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	0
	.long	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x4
	.byte	0
	.long	0
.LLRL0:
	.byte	0x7
	.long	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"var1"
.LASF13:
	.string	"var2"
.LASF14:
	.string	"var3"
.LASF15:
	.string	"var4"
.LASF16:
	.string	"var5"
.LASF17:
	.string	"var6"
.LASF18:
	.string	"var7"
.LASF19:
	.string	"var8"
.LASF4:
	.string	"unsigned char"
.LASF22:
	.string	"main"
.LASF11:
	.string	"long int"
.LASF20:
	.string	"GNU C17 14.2.0 -m32 -mtune=generic -march=i686 -g -O2 -fasynchronous-unwind-tables"
.LASF5:
	.string	"short unsigned int"
.LASF21:
	.string	"printf"
.LASF3:
	.string	"char"
.LASF8:
	.string	"short int"
.LASF7:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"types.c"
.LASF1:
	.string	"/home/evaristo_estella/Documents/Maestria/M5-Ingenieria-Inversa/imf_m5_rev_eng/Cap\303\255tulo 2: Compiladores/2.8 An\303\241lisis Sem\303\241ntico"
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
