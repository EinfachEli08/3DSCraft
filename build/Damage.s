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
	.file	"Damage.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/entity/Damage.c"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"fire\000"
	.align	2
.LC1:
	.ascii	"poison\000"
	.section	.text.OvertimeDamage,"ax",%progbits
	.align	2
	.global	OvertimeDamage
	.syntax unified
	.arm
	.type	OvertimeDamage, %function
OvertimeDamage:
.LVL0:
.LFB148:
	.loc 1 4 32 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 5 2 view .LVU1
	.loc 1 6 2 view .LVU2
	.loc 1 6 5 is_stmt 0 view .LVU3
	ldr	r3, .L9
	.loc 1 4 32 view .LVU4
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 6 5 view .LVU5
	cmp	r0, r3
	beq	.L8
	.loc 1 12 3 is_stmt 1 view .LVU6
	.loc 1 13 3 view .LVU7
	.loc 1 15 2 view .LVU8
	.loc 1 15 4 is_stmt 0 view .LVU9
	ldr	r3, .L9+4
	cmp	r0, r3
	popne	{r4, pc}
.LBB2:
	.loc 1 19 4 is_stmt 1 view .LVU10
.LBE2:
	.loc 1 16 13 view .LVU11
	cmp	r1, #0
	popge	{r4, pc}
.LVL1:
.L5:
.LBB3:
	.loc 1 17 4 view .LVU12
	.loc 1 18 4 view .LVU13
	mov	r0, #1
	bl	sleep
.LVL2:
	.loc 1 19 4 view .LVU14
.LBE3:
	.loc 1 16 13 view .LVU15
	b	.L5
.LVL3:
.L8:
.LBB4:
	.loc 1 10 4 view .LVU16
.LBE4:
	.loc 1 7 13 view .LVU17
	cmp	r1, #0
	popge	{r4, pc}
.LVL4:
.L4:
.LBB5:
	.loc 1 8 4 view .LVU18
	.loc 1 9 4 view .LVU19
	mov	r0, #1
	bl	sleep
.LVL5:
	.loc 1 10 4 view .LVU20
.LBE5:
	.loc 1 7 13 view .LVU21
	b	.L4
.L10:
	.align	2
.L9:
	.word	.LC0
	.word	.LC1
	.cfi_endproc
.LFE148:
	.size	OvertimeDamage, .-OvertimeDamage
	.text
.Letext0:
	.file 2 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Direction.h"
	.file 5 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 6 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Xorshift.h"
	.file 7 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 8 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 9 "C:/Users/Elias/CLionProjects/3DSCraft/include/rendering/VBOCache.h"
	.file 10 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Chunk.h"
	.file 11 "C:/devkitPro/libctru/include/3ds/synchronization.h"
	.file 12 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/WorkQueue.h"
	.file 13 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/World.h"
	.file 14 "C:/Users/Elias/CLionProjects/3DSCraft/include/inventory/ItemStack.h"
	.file 15 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/VecMath.h"
	.file 16 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Raycast.h"
	.file 17 "C:/Users/Elias/CLionProjects/3DSCraft/include/entity/Player.h"
	.file 18 "C:/devkitPro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa5a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF154
	.byte	0x1d
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.LLRL4
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x47
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x61
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x26
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3b
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x55
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x68
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x95
	.uleb128 0xc
	.4byte	0x47
	.byte	0x4
	.byte	0x3
	.4byte	0x11a
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x4
	.byte	0xb
	.byte	0x3
	.4byte	0xe4
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0x5
	.byte	0x8
	.byte	0x11
	.4byte	0xa8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF28
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0x5
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x7
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF31
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x8
	.byte	0x7
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x8
	.byte	0x9
	.4byte	0x18a
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x9
	.byte	0x9
	.byte	0x9
	.4byte	0x145
	.byte	0
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x9
	.byte	0xa
	.byte	0x8
	.4byte	0x158
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x9
	.byte	0xb
	.byte	0x3
	.4byte	0x166
	.uleb128 0xf
	.2byte	0x2030
	.byte	0xa
	.byte	0x10
	.4byte	0x248
	.uleb128 0x6
	.ascii	"y\000"
	.byte	0xa
	.byte	0x11
	.byte	0x6
	.4byte	0xa1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xa
	.byte	0x12
	.byte	0x8
	.4byte	0x248
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x13
	.byte	0xa
	.4byte	0x264
	.2byte	0x1004
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x15
	.byte	0xb
	.4byte	0xcc
	.2byte	0x2004
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x17
	.byte	0xb
	.4byte	0xb4
	.2byte	0x2008
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x19
	.byte	0x6
	.4byte	0x280
	.2byte	0x200a
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x1a
	.byte	0xb
	.4byte	0xcc
	.2byte	0x200c
	.uleb128 0x18
	.ascii	"vbo\000"
	.byte	0xa
	.byte	0x1c
	.byte	0xc
	.4byte	0x18a
	.2byte	0x2010
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1c
	.byte	0x11
	.4byte	0x18a
	.2byte	0x2018
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x1d
	.byte	0x9
	.4byte	0x145
	.2byte	0x2020
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x1d
	.byte	0x13
	.4byte	0x145
	.2byte	0x2024
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x1e
	.byte	0xb
	.4byte	0xcc
	.2byte	0x2028
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1f
	.byte	0x6
	.4byte	0x280
	.2byte	0x202c
	.byte	0
	.uleb128 0xa
	.4byte	0x126
	.4byte	0x264
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x280
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF47
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xa
	.byte	0x20
	.byte	0x3
	.4byte	0x196
	.uleb128 0xc
	.4byte	0x47
	.byte	0xa
	.byte	0x22
	.4byte	0x2b1
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0xa
	.byte	0x26
	.byte	0x3
	.4byte	0x293
	.uleb128 0x10
	.4byte	0x102ac
	.byte	0xa
	.byte	0x28
	.4byte	0x380
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xa
	.byte	0x2a
	.byte	0xb
	.4byte	0xcc
	.byte	0
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0xa
	.byte	0x2b
	.byte	0xb
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xa
	.byte	0x2d
	.byte	0xb
	.4byte	0xcc
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xa
	.byte	0x2f
	.byte	0x13
	.4byte	0x2b1
	.byte	0xc
	.uleb128 0x6
	.ascii	"x\000"
	.byte	0xa
	.byte	0x31
	.byte	0x6
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x6
	.ascii	"z\000"
	.byte	0xa
	.byte	0x31
	.byte	0x9
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xa
	.byte	0x32
	.byte	0xa
	.4byte	0x380
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xa
	.byte	0x34
	.byte	0xa
	.4byte	0x390
	.4byte	0x10198
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0xa
	.byte	0x35
	.byte	0xb
	.4byte	0xcc
	.4byte	0x10298
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0xa
	.byte	0x37
	.byte	0x9
	.4byte	0x145
	.4byte	0x1029c
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0xa
	.byte	0x39
	.byte	0xb
	.4byte	0xcc
	.4byte	0x102a0
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0xa
	.byte	0x3a
	.byte	0x6
	.4byte	0x280
	.4byte	0x102a4
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0xa
	.byte	0x3c
	.byte	0x6
	.4byte	0xa1
	.4byte	0x102a8
	.byte	0
	.uleb128 0xa
	.4byte	0x287
	.4byte	0x390
	.uleb128 0x4
	.4byte	0x2d
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x3a6
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0xa
	.byte	0x3d
	.byte	0x3
	.4byte	0x2bd
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF63
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF64
	.uleb128 0x19
	.ascii	"s32\000"
	.byte	0x12
	.byte	0x1c
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xb
	.byte	0xa
	.byte	0x11
	.4byte	0x15a
	.uleb128 0x8
	.byte	0x8
	.byte	0xb
	.byte	0x13
	.byte	0x9
	.4byte	0x3fc
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xb
	.byte	0x15
	.byte	0x6
	.4byte	0x3c0
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xb
	.byte	0x16
	.byte	0xc
	.4byte	0x3cc
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xb
	.byte	0x17
	.byte	0x3
	.4byte	0x3d8
	.uleb128 0xc
	.4byte	0x47
	.byte	0xc
	.byte	0xd
	.4byte	0x438
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xc
	.byte	0x14
	.byte	0x3
	.4byte	0x408
	.uleb128 0x8
	.byte	0xc
	.byte	0xc
	.byte	0x16
	.byte	0x9
	.4byte	0x475
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xc
	.byte	0x17
	.byte	0x11
	.4byte	0x438
	.byte	0
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xc
	.byte	0x18
	.byte	0x9
	.4byte	0x475
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xc
	.byte	0x19
	.byte	0xb
	.4byte	0xcc
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x3a6
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0xc
	.byte	0x1a
	.byte	0x3
	.4byte	0x444
	.uleb128 0x8
	.byte	0xc
	.byte	0xc
	.byte	0x1d
	.byte	0x2
	.4byte	0x4b7
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xc
	.byte	0x1d
	.byte	0x17
	.4byte	0x4b7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.byte	0x1d
	.byte	0x21
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xc
	.byte	0x1d
	.byte	0x29
	.4byte	0xa1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x47a
	.uleb128 0x8
	.byte	0x18
	.byte	0xc
	.byte	0x1c
	.byte	0x9
	.4byte	0x4ed
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0xc
	.byte	0x1d
	.byte	0x35
	.4byte	0x486
	.byte	0
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.byte	0x1f
	.byte	0xd
	.4byte	0x3fc
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.byte	0x20
	.byte	0xc
	.4byte	0x3cc
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xc
	.byte	0x21
	.byte	0x3
	.4byte	0x4bc
	.uleb128 0xc
	.4byte	0x47
	.byte	0xd
	.byte	0x11
	.4byte	0x517
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0xd
	.byte	0x11
	.byte	0x49
	.4byte	0x4f9
	.uleb128 0x1a
	.byte	0
	.byte	0xd
	.byte	0x18
	.byte	0x3
	.uleb128 0x11
	.byte	0
	.byte	0xd
	.byte	0x17
	.byte	0x2
	.4byte	0x53e
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0xd
	.byte	0x1a
	.byte	0x5
	.4byte	0x523
	.byte	0
	.uleb128 0x8
	.byte	0x10
	.byte	0xd
	.byte	0x13
	.byte	0x9
	.4byte	0x56f
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0xd
	.byte	0x14
	.byte	0xb
	.4byte	0xd8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0xd
	.byte	0x15
	.byte	0xf
	.4byte	0x517
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0xd
	.byte	0x1b
	.byte	0x4
	.4byte	0x528
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0xd
	.byte	0x1c
	.byte	0x3
	.4byte	0x53e
	.uleb128 0x8
	.byte	0xc
	.byte	0xd
	.byte	0x2a
	.byte	0x2
	.4byte	0x5ac
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0xd
	.byte	0x2a
	.byte	0x13
	.4byte	0x5ac
	.byte	0
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xd
	.byte	0x2a
	.byte	0x1d
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0xd
	.byte	0x2a
	.byte	0x25
	.4byte	0xa1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x475
	.uleb128 0x10
	.4byte	0xb5e278
	.byte	0xd
	.byte	0x1f
	.4byte	0x65b
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xd
	.byte	0x20
	.byte	0x6
	.4byte	0xa1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xd
	.byte	0x22
	.byte	0x7
	.4byte	0x65b
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0xd
	.byte	0x24
	.byte	0x14
	.4byte	0x56f
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0xd
	.byte	0x26
	.byte	0x6
	.4byte	0xa1
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0xd
	.byte	0x26
	.byte	0x19
	.4byte	0xa1
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0xd
	.byte	0x28
	.byte	0x8
	.4byte	0x66b
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0xd
	.byte	0x29
	.byte	0x9
	.4byte	0x67b
	.4byte	0xb5e118
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0xd
	.byte	0x2a
	.byte	0x31
	.4byte	0x57b
	.4byte	0xb5e25c
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0xd
	.byte	0x2c
	.byte	0xd
	.4byte	0x691
	.4byte	0xb5e268
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0xd
	.byte	0x2e
	.byte	0xd
	.4byte	0x139
	.4byte	0xb5e26c
	.uleb128 0x7
	.4byte	.LASF103
	.byte	0xd
	.byte	0x30
	.byte	0x6
	.4byte	0xa1
	.4byte	0xb5e270
	.byte	0
	.uleb128 0xa
	.4byte	0x132
	.4byte	0x66b
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	0x3a6
	.4byte	0x67b
	.uleb128 0x4
	.4byte	0x2d
	.byte	0xb3
	.byte	0
	.uleb128 0xa
	.4byte	0x475
	.4byte	0x691
	.uleb128 0x4
	.4byte	0x2d
	.byte	0x8
	.uleb128 0x4
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x4ed
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xd
	.byte	0x31
	.byte	0x3
	.4byte	0x5b1
	.uleb128 0x8
	.byte	0x3
	.byte	0xe
	.byte	0xa
	.byte	0x9
	.4byte	0x6d3
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0xe
	.byte	0xb
	.byte	0x8
	.4byte	0x126
	.byte	0
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xe
	.byte	0xc
	.byte	0xa
	.4byte	0xa8
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0xe
	.byte	0xc
	.byte	0x10
	.4byte	0xa8
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xe
	.byte	0xd
	.byte	0x3
	.4byte	0x6a2
	.uleb128 0x8
	.byte	0xc
	.byte	0xf
	.byte	0x9
	.byte	0x2
	.4byte	0x70a
	.uleb128 0x6
	.ascii	"x\000"
	.byte	0xf
	.byte	0xa
	.byte	0x9
	.4byte	0x3b2
	.byte	0
	.uleb128 0x6
	.ascii	"y\000"
	.byte	0xf
	.byte	0xa
	.byte	0xc
	.4byte	0x3b2
	.byte	0x4
	.uleb128 0x6
	.ascii	"z\000"
	.byte	0xf
	.byte	0xa
	.byte	0xf
	.4byte	0x3b2
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0xc
	.byte	0xf
	.byte	0x7
	.byte	0x9
	.4byte	0x723
	.uleb128 0x1c
	.ascii	"v\000"
	.byte	0xf
	.byte	0x8
	.byte	0x8
	.4byte	0x723
	.uleb128 0x1d
	.4byte	0x6df
	.byte	0
	.uleb128 0xa
	.4byte	0x3b2
	.4byte	0x733
	.uleb128 0x4
	.4byte	0x2d
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xf
	.byte	0xc
	.byte	0x3
	.4byte	0x70a
	.uleb128 0x8
	.byte	0x14
	.byte	0x10
	.byte	0x7
	.byte	0x9
	.4byte	0x784
	.uleb128 0x6
	.ascii	"x\000"
	.byte	0x10
	.byte	0x8
	.byte	0x6
	.4byte	0xa1
	.byte	0
	.uleb128 0x6
	.ascii	"y\000"
	.byte	0x10
	.byte	0x8
	.byte	0x9
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x6
	.ascii	"z\000"
	.byte	0x10
	.byte	0x8
	.byte	0xc
	.4byte	0xa1
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x10
	.byte	0x9
	.byte	0x8
	.4byte	0x3b2
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x10
	.byte	0xa
	.byte	0xc
	.4byte	0x11a
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF113
	.byte	0x10
	.byte	0xb
	.byte	0x3
	.4byte	0x73f
	.uleb128 0xf
	.2byte	0x184
	.byte	0x11
	.byte	0x15
	.4byte	0x987
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x11
	.byte	0x16
	.byte	0x9
	.4byte	0x733
	.byte	0
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x11
	.byte	0x17
	.byte	0x8
	.4byte	0x3b2
	.byte	0xc
	.uleb128 0x6
	.ascii	"yaw\000"
	.byte	0x11
	.byte	0x17
	.byte	0xf
	.4byte	0x3b2
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x11
	.byte	0x18
	.byte	0x8
	.4byte	0x3b2
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x11
	.byte	0x18
	.byte	0x11
	.4byte	0x3b2
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x11
	.byte	0x18
	.byte	0x19
	.4byte	0x3b2
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x11
	.byte	0x19
	.byte	0x6
	.4byte	0x280
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x11
	.byte	0x19
	.byte	0x10
	.4byte	0x280
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x11
	.byte	0x19
	.byte	0x18
	.4byte	0x280
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x11
	.byte	0x19
	.byte	0x23
	.4byte	0x280
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x11
	.byte	0x19
	.byte	0x2b
	.4byte	0x280
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x11
	.byte	0x1a
	.byte	0x9
	.4byte	0x987
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x11
	.byte	0x1c
	.byte	0x9
	.4byte	0x733
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x11
	.byte	0x1e
	.byte	0x6
	.4byte	0x280
	.byte	0x38
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x11
	.byte	0x20
	.byte	0x9
	.4byte	0x733
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x11
	.byte	0x21
	.byte	0x8
	.4byte	0x3b2
	.byte	0x48
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x11
	.byte	0x23
	.byte	0x8
	.4byte	0x3b2
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x11
	.byte	0x24
	.byte	0x6
	.4byte	0xa1
	.byte	0x50
	.uleb128 0x6
	.ascii	"hp\000"
	.byte	0x11
	.byte	0x26
	.byte	0x6
	.4byte	0xa1
	.byte	0x54
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x11
	.byte	0x27
	.byte	0x6
	.4byte	0xa1
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x11
	.byte	0x28
	.byte	0x6
	.4byte	0xa1
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x11
	.byte	0x29
	.byte	0x6
	.4byte	0xa1
	.byte	0x60
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x11
	.byte	0x2a
	.byte	0x6
	.4byte	0xa1
	.byte	0x64
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x11
	.byte	0x2b
	.byte	0x8
	.4byte	0x3b2
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x11
	.byte	0x2d
	.byte	0x8
	.4byte	0x3b2
	.byte	0x6c
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.4byte	0x3b2
	.byte	0x70
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x11
	.byte	0x2f
	.byte	0x8
	.4byte	0x3b2
	.byte	0x74
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x11
	.byte	0x30
	.byte	0x6
	.4byte	0xa1
	.byte	0x78
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x11
	.byte	0x32
	.byte	0x6
	.4byte	0xa1
	.byte	0x7c
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x11
	.byte	0x33
	.byte	0x6
	.4byte	0x280
	.byte	0x80
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x11
	.byte	0x35
	.byte	0x6
	.4byte	0xa1
	.byte	0x84
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x11
	.byte	0x36
	.byte	0x6
	.4byte	0xa1
	.byte	0x88
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x11
	.byte	0x37
	.byte	0x6
	.4byte	0xa1
	.byte	0x8c
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x11
	.byte	0x38
	.byte	0xc
	.4byte	0x98c
	.byte	0x90
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x11
	.byte	0x3a
	.byte	0x11
	.4byte	0x784
	.byte	0xac
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x11
	.byte	0x3b
	.byte	0x6
	.4byte	0x280
	.byte	0xc0
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x11
	.byte	0x3b
	.byte	0x14
	.4byte	0x280
	.byte	0xc1
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x11
	.byte	0x3c
	.byte	0xc
	.4byte	0x99c
	.byte	0xc2
	.byte	0
	.uleb128 0xb
	.4byte	0x696
	.uleb128 0xa
	.4byte	0x6d3
	.4byte	0x99c
	.uleb128 0x4
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x6d3
	.4byte	0x9ac
	.uleb128 0x4
	.4byte	0x2d
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF150
	.byte	0x11
	.byte	0x3d
	.byte	0x3
	.4byte	0x790
	.uleb128 0xd
	.4byte	.LASF153
	.4byte	0xa1
	.4byte	0x9c7
	.uleb128 0xe
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF157
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa58
	.uleb128 0x12
	.4byte	.LASF151
	.4byte	0xa1
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x12
	.4byte	.LASF152
	.4byte	0xa1
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0x1
	.byte	0x5
	.byte	0xa
	.4byte	0xa58
	.uleb128 0x20
	.4byte	.LLRL3
	.4byte	0xa33
	.uleb128 0xd
	.4byte	.LASF153
	.4byte	0xa1
	.4byte	0xa23
	.uleb128 0xe
	.byte	0
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x9b8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LLRL2
	.uleb128 0xd
	.4byte	.LASF153
	.4byte	0xa1
	.4byte	0xa47
	.uleb128 0xe
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x9b8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x9ac
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL3-.LVL0
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
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE148-.LVL0
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
.LVUS1:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE148-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
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
.LLRL2:
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0
.LLRL3:
	.byte	0x5
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB5-.LBB4
	.uleb128 .LBE5-.LBB4
	.byte	0
.LLRL4:
	.byte	0x7
	.4byte	.LFB148
	.uleb128 .LFE148-.LFB148
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF49:
	.ascii	"ChunkGen_Empty\000"
.LASF81:
	.ascii	"capacity\000"
.LASF92:
	.ascii	"GeneratorSettings\000"
.LASF30:
	.ascii	"size_t\000"
.LASF87:
	.ascii	"WorldGen_SuperFlat\000"
.LASF78:
	.ascii	"WorkerItem\000"
.LASF18:
	.ascii	"uint64_t\000"
.LASF121:
	.ascii	"sprinting\000"
.LASF113:
	.ascii	"Raycast_Result\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF38:
	.ascii	"revision\000"
.LASF112:
	.ascii	"direction\000"
.LASF76:
	.ascii	"type\000"
.LASF133:
	.ascii	"hunger\000"
.LASF9:
	.ascii	"long int\000"
.LASF103:
	.ascii	"weather\000"
.LASF57:
	.ascii	"clusters\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF75:
	.ascii	"WorkerItemType\000"
.LASF12:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF44:
	.ascii	"transparentVertices\000"
.LASF43:
	.ascii	"vertices\000"
.LASF88:
	.ascii	"WorldGenTypes_Count\000"
.LASF158:
	.ascii	"player\000"
.LASF151:
	.ascii	"cause\000"
.LASF40:
	.ascii	"empty\000"
.LASF66:
	.ascii	"state\000"
.LASF131:
	.ascii	"armour\000"
.LASF132:
	.ascii	"oxygen\000"
.LASF56:
	.ascii	"genProgress\000"
.LASF89:
	.ascii	"WorldGenType\000"
.LASF82:
	.ascii	"queue\000"
.LASF64:
	.ascii	"double\000"
.LASF150:
	.ascii	"Player\000"
.LASF84:
	.ascii	"listInUse\000"
.LASF140:
	.ascii	"gamemode\000"
.LASF102:
	.ascii	"randomTickGen\000"
.LASF51:
	.ascii	"ChunkGen_Finished\000"
.LASF119:
	.ascii	"grounded\000"
.LASF29:
	.ascii	"Xorshift32\000"
.LASF26:
	.ascii	"Direction\000"
.LASF157:
	.ascii	"OvertimeDamage\000"
.LASF25:
	.ascii	"Direction_Invalid\000"
.LASF134:
	.ascii	"difficulty\000"
.LASF20:
	.ascii	"Direction_East\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF45:
	.ascii	"vboRevision\000"
.LASF53:
	.ascii	"tasksRunning\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF125:
	.ascii	"view\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF114:
	.ascii	"position\000"
.LASF95:
	.ascii	"genSettings\000"
.LASF90:
	.ascii	"seed\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF94:
	.ascii	"name\000"
.LASF48:
	.ascii	"Cluster\000"
.LASF79:
	.ascii	"data\000"
.LASF33:
	.ascii	"size\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF153:
	.ascii	"sleep\000"
.LASF93:
	.ascii	"HighestBlock\000"
.LASF74:
	.ascii	"WorkerItemTypes_Count\000"
.LASF32:
	.ascii	"_LOCK_T\000"
.LASF34:
	.ascii	"memory\000"
.LASF37:
	.ascii	"metadataLight\000"
.LASF69:
	.ascii	"WorkerItemType_Load\000"
.LASF122:
	.ascii	"flying\000"
.LASF50:
	.ascii	"ChunkGen_Terrain\000"
.LASF111:
	.ascii	"distSqr\000"
.LASF36:
	.ascii	"blocks\000"
.LASF118:
	.ascii	"crouchAdd\000"
.LASF39:
	.ascii	"seeThrough\000"
.LASF105:
	.ascii	"block\000"
.LASF19:
	.ascii	"Direction_West\000"
.LASF143:
	.ascii	"quickSelectBarSlot\000"
.LASF109:
	.ascii	"superflat\000"
.LASF115:
	.ascii	"pitch\000"
.LASF42:
	.ascii	"transparentVBO\000"
.LASF123:
	.ascii	"crouching\000"
.LASF152:
	.ascii	"time\000"
.LASF52:
	.ascii	"ChunkGenProgress\000"
.LASF72:
	.ascii	"WorkerItemType_Decorate\000"
.LASF54:
	.ascii	"graphicalTasksRunning\000"
.LASF91:
	.ascii	"settings\000"
.LASF117:
	.ascii	"fovAdd\000"
.LASF139:
	.ascii	"spawnset\000"
.LASF13:
	.ascii	"__uint64_t\000"
.LASF68:
	.ascii	"LightEvent\000"
.LASF63:
	.ascii	"float\000"
.LASF127:
	.ascii	"velocity\000"
.LASF65:
	.ascii	"LightLock\000"
.LASF101:
	.ascii	"workqueue\000"
.LASF126:
	.ascii	"autoJumpEnabled\000"
.LASF155:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/entity"
	.ascii	"/Damage.c\000"
.LASF61:
	.ascii	"references\000"
.LASF73:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF142:
	.ascii	"quickSelectBarSlots\000"
.LASF62:
	.ascii	"Chunk\000"
.LASF47:
	.ascii	"_Bool\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF135:
	.ascii	"rndy\000"
.LASF128:
	.ascii	"simStepAccum\000"
.LASF124:
	.ascii	"world\000"
.LASF4:
	.ascii	"short int\000"
.LASF98:
	.ascii	"chunkPool\000"
.LASF106:
	.ascii	"meta\000"
.LASF24:
	.ascii	"Direction_South\000"
.LASF116:
	.ascii	"bobbing\000"
.LASF21:
	.ascii	"Direction_Bottom\000"
.LASF108:
	.ascii	"ItemStack\000"
.LASF83:
	.ascii	"itemAddedEvent\000"
.LASF104:
	.ascii	"World\000"
.LASF60:
	.ascii	"displayRevision\000"
.LASF85:
	.ascii	"WorkQueue\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF146:
	.ascii	"viewRayCast\000"
.LASF59:
	.ascii	"heightmapRevision\000"
.LASF31:
	.ascii	"long double\000"
.LASF77:
	.ascii	"chunk\000"
.LASF55:
	.ascii	"uuid\000"
.LASF28:
	.ascii	"char\000"
.LASF58:
	.ascii	"heightmap\000"
.LASF148:
	.ascii	"blockInActionRange\000"
.LASF35:
	.ascii	"VBO_Block\000"
.LASF120:
	.ascii	"jumped\000"
.LASF110:
	.ascii	"float3\000"
.LASF100:
	.ascii	"freeChunks\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF86:
	.ascii	"WorldGen_Smea\000"
.LASF147:
	.ascii	"blockInSight\000"
.LASF27:
	.ascii	"Block\000"
.LASF96:
	.ascii	"cacheTranslationX\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF97:
	.ascii	"cacheTranslationZ\000"
.LASF129:
	.ascii	"breakPlaceTimeout\000"
.LASF71:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF22:
	.ascii	"Direction_Top\000"
.LASF156:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF107:
	.ascii	"amount\000"
.LASF46:
	.ascii	"forceVBOUpdate\000"
.LASF80:
	.ascii	"length\000"
.LASF145:
	.ascii	"quickSelectBar\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF154:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF130:
	.ascii	"hungertimer\000"
.LASF149:
	.ascii	"inventory\000"
.LASF136:
	.ascii	"spawnx\000"
.LASF137:
	.ascii	"spawny\000"
.LASF138:
	.ascii	"spawnz\000"
.LASF141:
	.ascii	"cheats\000"
.LASF41:
	.ascii	"emptyRevision\000"
.LASF67:
	.ascii	"lock\000"
.LASF99:
	.ascii	"chunkCache\000"
.LASF70:
	.ascii	"WorkerItemType_Save\000"
.LASF144:
	.ascii	"inventorySite\000"
.LASF23:
	.ascii	"Direction_North\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
