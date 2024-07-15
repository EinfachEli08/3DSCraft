	.arch armv6k
	.fpu vfp
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"SuperFlatGen.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/world/worldgen/SuperFlatGen.c"
	.section	.text.SuperFlatGen_Init,"ax",%progbits
	.align	2
	.global	SuperFlatGen_Init
	.syntax unified
	.arm
	.type	SuperFlatGen_Init, %function
SuperFlatGen_Init:
.LVL0:
.LFB130:
	.loc 1 5 57 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 5 58 view .LVU1
	bx	lr
	.cfi_endproc
.LFE130:
	.size	SuperFlatGen_Init, .-SuperFlatGen_Init
	.section	.text.SuperFlatGen_Generate,"ax",%progbits
	.align	2
	.global	SuperFlatGen_Generate
	.syntax unified
	.arm
	.type	SuperFlatGen_Generate, %function
SuperFlatGen_Generate:
.LVL1:
.LFB131:
	.loc 1 7 75 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 8 2 view .LVU3
.LBB10:
	.loc 1 8 7 view .LVU4
	.loc 1 8 20 discriminator 1 view .LVU5
.LBE10:
	.loc 1 7 75 is_stmt 0 view .LVU6
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB32:
.LBB11:
.LBB12:
.LBB13:
	.loc 1 28 35 discriminator 3 view .LVU7
	mov	r7, #14
	mov	fp, #0
	add	r4, r2, #65536
	ldr	r6, [r4, #668]
	.loc 1 28 35 discriminator 3 view .LVU8
.LBE13:
.LBE12:
	.loc 1 9 3 is_stmt 1 view .LVU9
.LVL2:
	.loc 1 10 3 view .LVU10
.LBE11:
.LBE32:
	.loc 1 7 75 is_stmt 0 view .LVU11
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	mov	r9, r7
	str	r6, [sp, #12]
	mov	r7, fp
	mov	r6, r2
	.loc 1 7 75 view .LVU12
	add	r0, sp, #32
.LVL3:
	.loc 1 7 75 view .LVU13
	stmdb	r0, {r1, r2, r3}
	add	r8, r2, #8192
	add	r8, r8, #44
.LBB33:
.LBB30:
.LBB28:
.LBB26:
.LBB14:
.LBB15:
.LBB16:
.LBB17:
	.file 2 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Chunk.h"
	.loc 2 101 8 view .LVU14
	ldr	r5, .L11
	str	r4, [sp, #16]
	str	r8, [sp, #8]
.LVL4:
.L8:
	.loc 2 101 8 view .LVU15
.LBE17:
.LBE16:
.LBE15:
.LBE14:
.LBE26:
.LBE28:
	.loc 1 27 3 is_stmt 1 view .LVU16
.LBB29:
	.loc 1 27 8 view .LVU17
	.loc 1 27 21 discriminator 1 view .LVU18
.LBB27:
.LBB23:
.LBB20:
	.loc 2 111 40 is_stmt 0 view .LVU19
	asr	fp, r7, #4
	rsb	r2, fp, #0
	bic	r2, r2, #508
	lsl	r2, r2, #22
	.loc 2 112 23 view .LVU20
	and	r4, r7, #15
	lsr	r2, r2, #22
	add	r4, r4, r2
	lsl	r4, r4, #4
	add	r10, r4, #4096
	add	r3, fp, fp, lsl #8
	add	r10, r10, #44
	add	r10, r6, r10
	add	r3, fp, r3, lsl #1
	lsl	ip, fp, #8
	add	r3, r6, r3, lsl #4
	str	r6, [sp, #4]
	mov	r6, r10
	mov	r10, ip
	add	r3, r3, #8192
	ldr	r8, [r3, #28]
	ldr	r3, [sp, #8]
	add	r4, r3, r4
.LVL5:
.L4:
	.loc 2 112 23 view .LVU21
.LBE20:
.LBE23:
	.loc 1 28 22 is_stmt 1 discriminator 2 view .LVU22
.LBB24:
.LBB21:
	.loc 2 112 47 is_stmt 0 view .LVU23
	sub	r0, r6, #4096
	mov	r2, #16
	mov	r1, r9
	sub	r0, r0, #16
	bl	memset
.LVL6:
	sub	r2, r6, #16
.LVL7:
.L5:
	.loc 2 112 47 view .LVU24
.LBE21:
.LBE24:
	.loc 1 28 35 is_stmt 1 discriminator 3 view .LVU25
.LBB25:
.LBI14:
	.loc 2 110 13 view .LVU26
.LBB22:
	.loc 2 111 2 view .LVU27
	.loc 2 112 2 view .LVU28
	.loc 2 113 2 view .LVU29
.LBB19:
.LBI16:
	.loc 2 97 13 view .LVU30
.LBB18:
	.loc 2 98 2 view .LVU31
	.loc 2 99 2 view .LVU32
	.loc 2 100 2 view .LVU33
	.loc 2 101 2 view .LVU34
	.loc 2 101 8 is_stmt 0 view .LVU35
	ldr	r3, [r2]
	and	r3, r3, r5
	str	r3, [r2], #4
	.loc 2 102 2 is_stmt 1 view .LVU36
	.loc 2 103 2 view .LVU37
.LVL8:
	.loc 2 103 2 is_stmt 0 view .LVU38
.LBE18:
.LBE19:
.LBE22:
.LBE25:
	.loc 1 28 31 is_stmt 1 discriminator 3 view .LVU39
	.loc 1 28 22 discriminator 2 view .LVU40
	cmp	r2, r6
	bne	.L5
.LBE27:
	.loc 1 27 30 discriminator 2 view .LVU41
	.loc 1 27 21 discriminator 1 view .LVU42
	add	r6, r2, #256
	cmp	r6, r4
	bne	.L4
	ldr	r6, [sp, #4]
	add	ip, r10, fp
	add	r3, fp, ip, lsl #1
	add	r3, r6, r3, lsl #4
.LBE29:
.LBE30:
	.loc 1 8 27 is_stmt 0 discriminator 2 view .LVU43
	add	r7, r7, #1
	add	r3, r3, #8192
	add	r0, r8, #256
	.loc 1 8 20 discriminator 1 view .LVU44
	cmp	r7, #17
	str	r0, [r3, #28]
	.loc 1 8 27 is_stmt 1 discriminator 2 view .LVU45
.LVL9:
	.loc 1 8 20 discriminator 1 view .LVU46
.LBB31:
	.loc 1 9 3 view .LVU47
.LVL10:
	.loc 1 10 3 view .LVU48
	ldrne	r3, .L11+4
	addne	r3, r3, r7
	ldrbne	r9, [r3, #-1]	@ zero_extendqisi2
	bne	.L8
.LVL11:
.L7:
	.loc 1 10 3 is_stmt 0 view .LVU49
	ldr	r6, [sp, #12]
	ldr	r4, [sp, #16]
	add	r6, r6, #4352
	str	r6, [r4, #668]
.LBE31:
.LBE33:
	.loc 1 30 1 view .LVU50
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL12:
.L12:
	.loc 1 30 1 view .LVU51
	.align	2
.L11:
	.word	-252645136
	.word	.LANCHOR0
	.cfi_endproc
.LFE131:
	.size	SuperFlatGen_Generate, .-SuperFlatGen_Generate
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	CSWTCH.5, %object
	.size	CSWTCH.5, 16
CSWTCH.5:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.text
.Letext0:
	.file 3 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 4 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 7 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 8 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Xorshift.h"
	.file 9 "C:/Users/Elias/CLionProjects/3DSCraft/include/rendering/VBOCache.h"
	.file 10 "C:/devkitPro/libctru/include/3ds/synchronization.h"
	.file 11 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/WorkQueue.h"
	.file 12 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/World.h"
	.file 13 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/worldgen/SuperFlatGen.h"
	.file 14 "C:/devkitPro/libctru/include/3ds/types.h"
	.file 15 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x9b0
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF149
	.byte	0x1d
	.4byte	.LASF150
	.4byte	.LASF151
	.4byte	.LLRL14
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x68
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x82
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x95
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0xa8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x69
	.byte	0x20
	.4byte	0x26
	.uleb128 0x1c
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x5c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x76
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2c
	.byte	0x13
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.4byte	0xaf
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x7
	.byte	0x11
	.4byte	0xd5
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF23
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x8
	.byte	0x11
	.4byte	0xbd
	.uleb128 0xe
	.4byte	0x68
	.byte	0x7
	.byte	0xa
	.byte	0x6
	.4byte	0x223
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x8
	.byte	0x5
	.byte	0x12
	.4byte	0xe1
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x8
	.byte	0x9
	.4byte	0x253
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0x9
	.byte	0x9
	.byte	0x9
	.4byte	0x34
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x9
	.byte	0xa
	.byte	0x8
	.4byte	0xbb
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x9
	.byte	0xb
	.byte	0x3
	.4byte	0x22f
	.uleb128 0x1d
	.2byte	0x2030
	.byte	0x2
	.byte	0x10
	.byte	0x9
	.4byte	0x311
	.uleb128 0x10
	.ascii	"y\000"
	.byte	0x11
	.byte	0x6
	.4byte	0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x2
	.byte	0x12
	.byte	0x8
	.4byte	0x311
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x13
	.byte	0xa
	.4byte	0x32d
	.2byte	0x1004
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x15
	.byte	0xb
	.4byte	0xe1
	.2byte	0x2004
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x17
	.byte	0xb
	.4byte	0xc9
	.2byte	0x2008
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x19
	.byte	0x6
	.4byte	0x349
	.2byte	0x200a
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x1a
	.byte	0xb
	.4byte	0xe1
	.2byte	0x200c
	.uleb128 0x1e
	.ascii	"vbo\000"
	.byte	0x2
	.byte	0x1c
	.byte	0xc
	.4byte	0x253
	.2byte	0x2010
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x1c
	.byte	0x11
	.4byte	0x253
	.2byte	0x2018
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x1d
	.byte	0x9
	.4byte	0x34
	.2byte	0x2020
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x1d
	.byte	0x13
	.4byte	0x34
	.2byte	0x2024
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x1e
	.byte	0xb
	.4byte	0xe1
	.2byte	0x2028
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x1f
	.byte	0x6
	.4byte	0x349
	.2byte	0x202c
	.byte	0
	.uleb128 0xa
	.4byte	0x11a
	.4byte	0x32d
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xbd
	.4byte	0x349
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF81
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x2
	.byte	0x20
	.byte	0x3
	.4byte	0x25f
	.uleb128 0xe
	.4byte	0x68
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.4byte	0x37b
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x2
	.byte	0x26
	.byte	0x3
	.4byte	0x35c
	.uleb128 0x17
	.4byte	0x102ac
	.byte	0x2
	.byte	0x28
	.4byte	0x448
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x2
	.byte	0x2a
	.byte	0xb
	.4byte	0xe1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x2
	.byte	0x2b
	.byte	0xb
	.4byte	0xe1
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x2
	.byte	0x2d
	.byte	0xb
	.4byte	0xe1
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x2
	.byte	0x2f
	.byte	0x13
	.4byte	0x37b
	.byte	0xc
	.uleb128 0x10
	.ascii	"x\000"
	.byte	0x31
	.byte	0x6
	.4byte	0x40
	.byte	0x10
	.uleb128 0x10
	.ascii	"z\000"
	.byte	0x31
	.byte	0x9
	.4byte	0x40
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x2
	.byte	0x32
	.byte	0xa
	.4byte	0x448
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x2
	.byte	0x34
	.byte	0xa
	.4byte	0x458
	.4byte	0x10198
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x2
	.byte	0x35
	.byte	0xb
	.4byte	0xe1
	.4byte	0x10298
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x2
	.byte	0x37
	.byte	0x9
	.4byte	0x34
	.4byte	0x1029c
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x2
	.byte	0x39
	.byte	0xb
	.4byte	0xe1
	.4byte	0x102a0
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0x2
	.byte	0x3a
	.byte	0x6
	.4byte	0x349
	.4byte	0x102a4
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x2
	.byte	0x3c
	.byte	0x6
	.4byte	0x40
	.4byte	0x102a8
	.byte	0
	.uleb128 0xa
	.4byte	0x350
	.4byte	0x458
	.uleb128 0x5
	.4byte	0x2d
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0xbd
	.4byte	0x46e
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.4byte	0x387
	.uleb128 0x1f
	.ascii	"s32\000"
	.byte	0xe
	.byte	0x1c
	.byte	0x11
	.4byte	0xd5
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xa
	.byte	0xa
	.byte	0x11
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0x13
	.byte	0x9
	.4byte	0x4b6
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xa
	.byte	0x15
	.byte	0x6
	.4byte	0x47a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xa
	.byte	0x16
	.byte	0xc
	.4byte	0x486
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0xa
	.byte	0x17
	.byte	0x3
	.4byte	0x492
	.uleb128 0xe
	.4byte	0x68
	.byte	0xb
	.byte	0xd
	.byte	0xe
	.4byte	0x4f3
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xb
	.byte	0x14
	.byte	0x3
	.4byte	0x4c2
	.uleb128 0x8
	.byte	0xc
	.byte	0xb
	.byte	0x16
	.byte	0x9
	.4byte	0x530
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xb
	.byte	0x17
	.byte	0x11
	.4byte	0x4f3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.4byte	0x530
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xb
	.byte	0x19
	.byte	0xb
	.4byte	0xe1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x46e
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xb
	.byte	0x1a
	.byte	0x3
	.4byte	0x4ff
	.uleb128 0x8
	.byte	0xc
	.byte	0xb
	.byte	0x1d
	.byte	0x2
	.4byte	0x572
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xb
	.byte	0x1d
	.byte	0x17
	.4byte	0x572
	.byte	0
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xb
	.byte	0x1d
	.byte	0x21
	.4byte	0x40
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xb
	.byte	0x1d
	.byte	0x29
	.4byte	0x40
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x535
	.uleb128 0x8
	.byte	0x18
	.byte	0xb
	.byte	0x1c
	.byte	0x9
	.4byte	0x5a8
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xb
	.byte	0x1d
	.byte	0x35
	.4byte	0x541
	.byte	0
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0xb
	.byte	0x1f
	.byte	0xd
	.4byte	0x4b6
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xb
	.byte	0x20
	.byte	0xc
	.4byte	0x486
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0xb
	.byte	0x21
	.byte	0x3
	.4byte	0x577
	.uleb128 0xe
	.4byte	0x68
	.byte	0xc
	.byte	0x11
	.byte	0xe
	.4byte	0x5d3
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xc
	.byte	0x11
	.byte	0x49
	.4byte	0x5b4
	.uleb128 0x20
	.byte	0
	.byte	0xc
	.byte	0x18
	.byte	0x3
	.uleb128 0x21
	.byte	0
	.byte	0xc
	.byte	0x17
	.byte	0x2
	.4byte	0x5fa
	.uleb128 0x22
	.4byte	.LASF152
	.byte	0xc
	.byte	0x1a
	.byte	0x5
	.4byte	0x5df
	.byte	0
	.uleb128 0x8
	.byte	0x10
	.byte	0xc
	.byte	0x13
	.byte	0x9
	.4byte	0x62b
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xc
	.byte	0x14
	.byte	0xb
	.4byte	0xed
	.byte	0
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xc
	.byte	0x15
	.byte	0xf
	.4byte	0x5d3
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xc
	.byte	0x1b
	.byte	0x4
	.4byte	0x5e4
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xc
	.byte	0x1c
	.byte	0x3
	.4byte	0x5fa
	.uleb128 0x8
	.byte	0xc
	.byte	0xc
	.byte	0x2a
	.byte	0x2
	.4byte	0x668
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0xc
	.byte	0x2a
	.byte	0x13
	.4byte	0x668
	.byte	0
	.uleb128 0x2
	.4byte	.LASF112
	.byte	0xc
	.byte	0x2a
	.byte	0x1d
	.4byte	0x40
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0xc
	.byte	0x2a
	.byte	0x25
	.4byte	0x40
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x530
	.uleb128 0x17
	.4byte	0xb5e278
	.byte	0xc
	.byte	0x1f
	.4byte	0x717
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xc
	.byte	0x20
	.byte	0x6
	.4byte	0x40
	.byte	0
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0xc
	.byte	0x22
	.byte	0x7
	.4byte	0x717
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0xc
	.byte	0x24
	.byte	0x14
	.4byte	0x62b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0xc
	.byte	0x26
	.byte	0x6
	.4byte	0x40
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0xc
	.byte	0x26
	.byte	0x19
	.4byte	0x40
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0xc
	.byte	0x28
	.byte	0x8
	.4byte	0x727
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0xc
	.byte	0x29
	.byte	0x9
	.4byte	0x737
	.4byte	0xb5e118
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0xc
	.byte	0x2a
	.byte	0x31
	.4byte	0x637
	.4byte	0xb5e25c
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0xc
	.byte	0x2c
	.byte	0xd
	.4byte	0x74d
	.4byte	0xb5e268
	.uleb128 0x6
	.4byte	.LASF134
	.byte	0xc
	.byte	0x2e
	.byte	0xd
	.4byte	0x223
	.4byte	0xb5e26c
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0xc
	.byte	0x30
	.byte	0x6
	.4byte	0x40
	.4byte	0xb5e270
	.byte	0
	.uleb128 0xa
	.4byte	0x105
	.4byte	0x727
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	0x46e
	.4byte	0x737
	.uleb128 0x5
	.4byte	0x2d
	.byte	0xb3
	.byte	0
	.uleb128 0xa
	.4byte	0x530
	.4byte	0x74d
	.uleb128 0x5
	.4byte	0x2d
	.byte	0x8
	.uleb128 0x5
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x5a8
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0xc
	.byte	0x31
	.byte	0x3
	.4byte	0x66d
	.uleb128 0x8
	.byte	0x4
	.byte	0xd
	.byte	0x6
	.byte	0x9
	.4byte	0x775
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xd
	.byte	0x6
	.byte	0x19
	.4byte	0x775
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x752
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0xd
	.byte	0x6
	.byte	0x22
	.4byte	0x75e
	.uleb128 0x18
	.4byte	.LASF142
	.byte	0x7
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d3
	.uleb128 0x23
	.4byte	.LASF114
	.byte	0x1
	.byte	0x7
	.byte	0x27
	.4byte	0x74d
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0x7
	.byte	0x39
	.4byte	0x535
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0x7
	.byte	0x45
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LLRL1
	.uleb128 0x12
	.ascii	"y\000"
	.byte	0x8
	.byte	0xb
	.4byte	0x40
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xc
	.4byte	.LLRL3
	.uleb128 0x24
	.4byte	.LASF141
	.byte	0x1
	.byte	0x9
	.byte	0x9
	.4byte	0x11a
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xc
	.4byte	.LLRL5
	.uleb128 0x12
	.ascii	"x\000"
	.byte	0x1b
	.byte	0xc
	.4byte	0x40
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xc
	.4byte	.LLRL7
	.uleb128 0x12
	.ascii	"z\000"
	.byte	0x1c
	.byte	0xd
	.4byte	0x40
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x25
	.4byte	0x908
	.4byte	.LBI14
	.byte	.LVU26
	.4byte	.LLRL9
	.byte	0x1
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb
	.4byte	0x938
	.uleb128 0xb
	.4byte	0x92f
	.uleb128 0xb
	.4byte	0x926
	.uleb128 0xb
	.4byte	0x91d
	.uleb128 0x13
	.4byte	0x912
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xc
	.4byte	.LLRL9
	.uleb128 0x14
	.4byte	0x943
	.uleb128 0x26
	.4byte	0x953
	.4byte	.LBI16
	.byte	.LVU30
	.4byte	.LLRL11
	.byte	0x2
	.byte	0x71
	.byte	0x2
	.4byte	0x8b0
	.uleb128 0x13
	.4byte	0x983
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xb
	.4byte	0x97a
	.uleb128 0xb
	.4byte	0x971
	.uleb128 0xb
	.4byte	0x968
	.uleb128 0x13
	.4byte	0x95d
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xc
	.4byte	.LLRL11
	.uleb128 0x14
	.4byte	0x98e
	.uleb128 0x14
	.4byte	0x998
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL6
	.4byte	0x9a8
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x76
	.sleb128 -4112
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF143
	.byte	0x5
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x903
	.uleb128 0x28
	.ascii	"gen\000"
	.byte	0x1
	.byte	0x5
	.byte	0x26
	.4byte	0x903
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0x5
	.byte	0x32
	.4byte	0x775
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x9
	.4byte	0x77a
	.uleb128 0x19
	.4byte	.LASF144
	.byte	0x6e
	.4byte	0x94e
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0x6e
	.byte	0x23
	.4byte	0x530
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x6e
	.byte	0x2e
	.4byte	0x40
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x6e
	.byte	0x35
	.4byte	0x40
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x6e
	.byte	0x3c
	.4byte	0x40
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x6e
	.byte	0x45
	.4byte	0x11a
	.uleb128 0x16
	.4byte	.LASF147
	.byte	0x6f
	.4byte	0x94e
	.byte	0
	.uleb128 0x9
	.4byte	0x350
	.uleb128 0x19
	.4byte	.LASF145
	.byte	0x61
	.4byte	0x9a3
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0x61
	.byte	0x26
	.4byte	0x530
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x61
	.byte	0x31
	.4byte	0x40
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x61
	.byte	0x38
	.4byte	0x40
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x61
	.byte	0x3f
	.4byte	0x40
	.uleb128 0xf
	.4byte	.LASF146
	.byte	0x61
	.byte	0x4a
	.4byte	0xbd
	.uleb128 0x16
	.4byte	.LASF147
	.byte	0x63
	.4byte	0x94e
	.uleb128 0x16
	.4byte	.LASF148
	.byte	0x64
	.4byte	0x9a3
	.byte	0
	.uleb128 0x9
	.4byte	0xbd
	.uleb128 0x29
	.4byte	.LASF153
	.4byte	.LASF154
	.byte	0xf
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LFE131-.LVL1
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU15
	.uleb128 .LVU46
	.uleb128 .LVU51
.LLST2:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL4-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL1
	.uleb128 .LVL12-.LVL1
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS4:
	.uleb128 .LVU10
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU51
.LLST4:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LVL10-.LVL2
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL10-.LVL2
	.uleb128 .LVL11-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL2
	.uleb128 .LVL12-.LVL2
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS6:
	.uleb128 .LVU18
	.uleb128 .LVU21
.LLST6:
	.byte	0x8
	.4byte	.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU21
	.uleb128 .LVU24
.LLST8:
	.byte	0x8
	.4byte	.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU26
	.uleb128 .LVU38
.LLST10:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
.LVUS12:
	.uleb128 .LVU30
	.uleb128 .LVU38
.LLST12:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU30
	.uleb128 .LVU38
.LLST13:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB32-.LBB10
	.uleb128 .LBE32-.LBB10
	.byte	0x4
	.uleb128 .LBB33-.LBB10
	.uleb128 .LBE33-.LBB10
	.byte	0
.LLRL3:
	.byte	0x5
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB30-.LBB11
	.uleb128 .LBE30-.LBB11
	.byte	0x4
	.uleb128 .LBB31-.LBB11
	.uleb128 .LBE31-.LBB11
	.byte	0
.LLRL5:
	.byte	0x5
	.4byte	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB28-.LBB12
	.uleb128 .LBE28-.LBB12
	.byte	0x4
	.uleb128 .LBB29-.LBB12
	.uleb128 .LBE29-.LBB12
	.byte	0
.LLRL7:
	.byte	0x5
	.4byte	.LBB13
	.byte	0x4
	.uleb128 .LBB13-.LBB13
	.uleb128 .LBE13-.LBB13
	.byte	0x4
	.uleb128 .LBB26-.LBB13
	.uleb128 .LBE26-.LBB13
	.byte	0x4
	.uleb128 .LBB27-.LBB13
	.uleb128 .LBE27-.LBB13
	.byte	0
.LLRL9:
	.byte	0x5
	.4byte	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB23-.LBB14
	.uleb128 .LBE23-.LBB14
	.byte	0x4
	.uleb128 .LBB24-.LBB14
	.uleb128 .LBE24-.LBB14
	.byte	0x4
	.uleb128 .LBB25-.LBB14
	.uleb128 .LBE25-.LBB14
	.byte	0
.LLRL11:
	.byte	0x5
	.4byte	.LBB16
	.byte	0x4
	.uleb128 .LBB16-.LBB16
	.uleb128 .LBE16-.LBB16
	.byte	0x4
	.uleb128 .LBB19-.LBB16
	.uleb128 .LBE19-.LBB16
	.byte	0
.LLRL14:
	.byte	0x7
	.4byte	.LFB130
	.uleb128 .LFE130-.LFB130
	.byte	0x7
	.4byte	.LFB131
	.uleb128 .LFE131-.LFB131
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF83:
	.ascii	"ChunkGen_Empty\000"
.LASF113:
	.ascii	"capacity\000"
.LASF124:
	.ascii	"GeneratorSettings\000"
.LASF53:
	.ascii	"Block_Lava\000"
.LASF45:
	.ascii	"Block_Snow\000"
.LASF5:
	.ascii	"size_t\000"
.LASF119:
	.ascii	"WorldGen_SuperFlat\000"
.LASF110:
	.ascii	"WorkerItem\000"
.LASF20:
	.ascii	"uint64_t\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF72:
	.ascii	"revision\000"
.LASF108:
	.ascii	"type\000"
.LASF135:
	.ascii	"weather\000"
.LASF91:
	.ascii	"clusters\000"
.LASF154:
	.ascii	"__builtin_memset\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF148:
	.ascii	"addr\000"
.LASF107:
	.ascii	"WorkerItemType\000"
.LASF32:
	.ascii	"Block_Log\000"
.LASF2:
	.ascii	"long long int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF77:
	.ascii	"vertices\000"
.LASF120:
	.ascii	"WorldGenTypes_Count\000"
.LASF55:
	.ascii	"Block_Coal_Ore\000"
.LASF150:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/world/"
	.ascii	"worldgen/SuperFlatGen.c\000"
.LASF74:
	.ascii	"empty\000"
.LASF98:
	.ascii	"state\000"
.LASF31:
	.ascii	"Block_Sand\000"
.LASF12:
	.ascii	"long int\000"
.LASF90:
	.ascii	"genProgress\000"
.LASF25:
	.ascii	"Block\000"
.LASF52:
	.ascii	"Block_Water\000"
.LASF50:
	.ascii	"Block_Crafting_Table\000"
.LASF17:
	.ascii	"uint16_t\000"
.LASF24:
	.ascii	"double\000"
.LASF51:
	.ascii	"Block_Grass_Path\000"
.LASF140:
	.ascii	"this\000"
.LASF116:
	.ascii	"listInUse\000"
.LASF29:
	.ascii	"Block_Grass\000"
.LASF41:
	.ascii	"Block_Coarse\000"
.LASF134:
	.ascii	"randomTickGen\000"
.LASF47:
	.ascii	"Block_Netherrack\000"
.LASF85:
	.ascii	"ChunkGen_Finished\000"
.LASF66:
	.ascii	"Xorshift32\000"
.LASF49:
	.ascii	"Block_Smooth_Stone\000"
.LASF121:
	.ascii	"WorldGenType\000"
.LASF78:
	.ascii	"transparentVertices\000"
.LASF144:
	.ascii	"Chunk_SetBlock\000"
.LASF68:
	.ascii	"memory\000"
.LASF13:
	.ascii	"__uint32_t\000"
.LASF79:
	.ascii	"vboRevision\000"
.LASF141:
	.ascii	"block\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF36:
	.ascii	"Block_Stonebrick\000"
.LASF84:
	.ascii	"ChunkGen_Terrain\000"
.LASF30:
	.ascii	"Block_Cobblestone\000"
.LASF122:
	.ascii	"seed\000"
.LASF14:
	.ascii	"long unsigned int\000"
.LASF54:
	.ascii	"Block_Iron_Ore\000"
.LASF39:
	.ascii	"Block_Wool\000"
.LASF48:
	.ascii	"Block_Sandstone\000"
.LASF82:
	.ascii	"Cluster\000"
.LASF145:
	.ascii	"Chunk_SetMetadata\000"
.LASF126:
	.ascii	"name\000"
.LASF111:
	.ascii	"data\000"
.LASF67:
	.ascii	"size\000"
.LASF10:
	.ascii	"short unsigned int\000"
.LASF125:
	.ascii	"HighestBlock\000"
.LASF106:
	.ascii	"WorkerItemTypes_Count\000"
.LASF62:
	.ascii	"Block_Iron_Block\000"
.LASF59:
	.ascii	"Block_Gold_Block\000"
.LASF58:
	.ascii	"Block_Emerald_Ore\000"
.LASF21:
	.ascii	"_LOCK_T\000"
.LASF87:
	.ascii	"tasksRunning\000"
.LASF71:
	.ascii	"metadataLight\000"
.LASF40:
	.ascii	"Block_Bedrock\000"
.LASF139:
	.ascii	"item\000"
.LASF147:
	.ascii	"cluster\000"
.LASF109:
	.ascii	"chunk\000"
.LASF127:
	.ascii	"genSettings\000"
.LASF57:
	.ascii	"Block_Gold_Ore\000"
.LASF70:
	.ascii	"blocks\000"
.LASF46:
	.ascii	"Block_Obsidian\000"
.LASF73:
	.ascii	"seeThrough\000"
.LASF138:
	.ascii	"SuperFlatGen\000"
.LASF114:
	.ascii	"queue\000"
.LASF60:
	.ascii	"Block_Diamond_Block\000"
.LASF152:
	.ascii	"superflat\000"
.LASF76:
	.ascii	"transparentVBO\000"
.LASF37:
	.ascii	"Block_Brick\000"
.LASF63:
	.ascii	"Block_Emerald_Block\000"
.LASF86:
	.ascii	"ChunkGenProgress\000"
.LASF104:
	.ascii	"WorkerItemType_Decorate\000"
.LASF42:
	.ascii	"Block_Door_Top\000"
.LASF88:
	.ascii	"graphicalTasksRunning\000"
.LASF123:
	.ascii	"settings\000"
.LASF15:
	.ascii	"__uint64_t\000"
.LASF100:
	.ascii	"LightEvent\000"
.LASF23:
	.ascii	"float\000"
.LASF97:
	.ascii	"LightLock\000"
.LASF133:
	.ascii	"workqueue\000"
.LASF95:
	.ascii	"references\000"
.LASF56:
	.ascii	"Block_Diamond_Ore\000"
.LASF44:
	.ascii	"Block_Snow_Grass\000"
.LASF43:
	.ascii	"Block_Door_Bottom\000"
.LASF105:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF96:
	.ascii	"Chunk\000"
.LASF81:
	.ascii	"_Bool\000"
.LASF18:
	.ascii	"int32_t\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF137:
	.ascii	"world\000"
.LASF8:
	.ascii	"short int\000"
.LASF130:
	.ascii	"chunkPool\000"
.LASF143:
	.ascii	"SuperFlatGen_Init\000"
.LASF33:
	.ascii	"Block_Gravel\000"
.LASF115:
	.ascii	"itemAddedEvent\000"
.LASF136:
	.ascii	"World\000"
.LASF94:
	.ascii	"displayRevision\000"
.LASF117:
	.ascii	"WorkQueue\000"
.LASF146:
	.ascii	"metadata\000"
.LASF64:
	.ascii	"Block_Furnace\000"
.LASF65:
	.ascii	"Blocks_Count\000"
.LASF19:
	.ascii	"uint32_t\000"
.LASF93:
	.ascii	"heightmapRevision\000"
.LASF3:
	.ascii	"long double\000"
.LASF112:
	.ascii	"length\000"
.LASF89:
	.ascii	"uuid\000"
.LASF22:
	.ascii	"char\000"
.LASF92:
	.ascii	"heightmap\000"
.LASF69:
	.ascii	"VBO_Block\000"
.LASF132:
	.ascii	"freeChunks\000"
.LASF9:
	.ascii	"__uint16_t\000"
.LASF26:
	.ascii	"Block_Air\000"
.LASF142:
	.ascii	"SuperFlatGen_Generate\000"
.LASF128:
	.ascii	"cacheTranslationX\000"
.LASF11:
	.ascii	"__int32_t\000"
.LASF129:
	.ascii	"cacheTranslationZ\000"
.LASF103:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF151:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF80:
	.ascii	"forceVBOUpdate\000"
.LASF61:
	.ascii	"Block_Coal_Block\000"
.LASF101:
	.ascii	"WorkerItemType_Load\000"
.LASF153:
	.ascii	"memset\000"
.LASF38:
	.ascii	"Block_Planks\000"
.LASF16:
	.ascii	"uint8_t\000"
.LASF149:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF118:
	.ascii	"WorldGen_Smea\000"
.LASF35:
	.ascii	"Block_Glass\000"
.LASF27:
	.ascii	"Block_Stone\000"
.LASF75:
	.ascii	"emptyRevision\000"
.LASF34:
	.ascii	"Block_Leaves\000"
.LASF28:
	.ascii	"Block_Dirt\000"
.LASF99:
	.ascii	"lock\000"
.LASF131:
	.ascii	"chunkCache\000"
.LASF102:
	.ascii	"WorkerItemType_Save\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
