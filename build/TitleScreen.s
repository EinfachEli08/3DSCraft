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
	.file	"TitleScreen.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/gui/TitleScreen.c"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Singleplayer\000"
	.align	2
.LC1:
	.ascii	"Quit\000"
	.section	.text.TitleScreen,"ax",%progbits
	.align	2
	.global	TitleScreen
	.syntax unified
	.arm
	.type	TitleScreen, %function
TitleScreen:
.LVL0:
.LFB212:
	.loc 1 15 44 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 17 2 view .LVU1
	.loc 1 15 44 is_stmt 0 view .LVU2
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 17 2 view .LVU3
	mov	r7, #0
	.loc 1 15 44 view .LVU4
	mov	r9, r0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 56
	.loc 1 17 2 view .LVU5
	mov	r0, #4
.LVL1:
	.loc 1 17 2 view .LVU6
	bl	SpriteBatch_BindGuiTexture
.LVL2:
	.loc 1 18 2 is_stmt 1 view .LVU7
.LBB2:
	.loc 1 18 7 view .LVU8
	.loc 1 18 20 discriminator 1 view .LVU9
.LBB3:
	.loc 1 20 4 is_stmt 0 view .LVU10
	mov	r5, #32
	mov	r6, r7
	ldr	r8, .L15+4
.LVL3:
.L2:
	.loc 1 19 21 is_stmt 1 discriminator 1 view .LVU11
	.loc 1 20 4 is_stmt 0 view .LVU12
	mov	r4, #0
.LVL4:
.L3:
	.loc 1 20 4 is_stmt 1 view .LVU13
	mov	r1, r4
	mov	r3, #32
	mvn	r2, #3
	mov	r0, r7
	stm	sp, {r5, r6}
	str	r8, [sp, #20]
	str	r5, [sp, #16]
	str	r5, [sp, #12]
	str	r6, [sp, #8]
	.loc 1 19 21 is_stmt 0 discriminator 1 view .LVU14
	add	r4, r4, #32
	.loc 1 20 4 view .LVU15
	bl	SpriteBatch_PushQuadColor
.LVL5:
	.loc 1 19 38 is_stmt 1 discriminator 3 view .LVU16
	.loc 1 19 21 discriminator 1 view .LVU17
	cmp	r4, #128
	bne	.L3
.LBE3:
	.loc 1 18 37 discriminator 2 view .LVU18
	.loc 1 18 20 discriminator 1 view .LVU19
	add	r7, r7, #32
	cmp	r7, #192
	bne	.L2
.LBE2:
	.loc 1 24 2 view .LVU20
	mov	r1, #64
	mov	r0, #0
	bl	Gui_Offset
.LVL6:
	.loc 1 25 2 view .LVU21
	vldr.32	s0, .L15
	bl	Gui_RelativeWidth
.LVL7:
	.loc 1 25 2 is_stmt 0 discriminator 1 view .LVU22
	mov	r1, #1
	bl	Gui_BeginRow
.LVL8:
	.loc 1 26 2 is_stmt 1 view .LVU23
	.loc 1 26 17 is_stmt 0 view .LVU24
	ldr	r1, .L15+8
	ldr	r0, .L15+12
	bl	Gui_Button
.LVL9:
	.loc 1 26 15 discriminator 1 view .LVU25
	ldr	r4, .L15+16
	strb	r0, [r4]
	.loc 1 27 2 is_stmt 1 view .LVU26
	bl	Gui_EndRow
.LVL10:
	.loc 1 28 2 view .LVU27
	vldr.32	s0, .L15
	bl	Gui_RelativeWidth
.LVL11:
	.loc 1 28 2 is_stmt 0 discriminator 1 view .LVU28
	mov	r1, #1
	bl	Gui_BeginRow
.LVL12:
	.loc 1 29 2 is_stmt 1 view .LVU29
	.loc 1 29 17 is_stmt 0 view .LVU30
	ldr	r1, .L15+20
	ldr	r0, .L15+12
	bl	Gui_Button
.LVL13:
	.loc 1 29 15 discriminator 1 view .LVU31
	strb	r0, [r4, #1]
	.loc 1 30 2 is_stmt 1 view .LVU32
	bl	Gui_EndRow
.LVL14:
	.loc 1 32 2 view .LVU33
	.loc 1 32 5 is_stmt 0 view .LVU34
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L13
	.loc 1 35 2 is_stmt 1 view .LVU35
	.loc 1 35 4 is_stmt 0 view .LVU36
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L14
.L1:
	.loc 1 38 1 view .LVU37
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL15:
.L13:
	.cfi_restore_state
	.loc 1 33 3 is_stmt 1 view .LVU38
	mov	r0, r9
	ldr	r1, .L15+24
	bl	state_machine_set_current_state
.LVL16:
	.loc 1 35 2 view .LVU39
	.loc 1 35 4 is_stmt 0 view .LVU40
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1
.L14:
	.loc 1 36 3 is_stmt 1 view .LVU41
	mov	r0, #0
	bl	exit
.LVL17:
.L16:
	.align	2
.L15:
	.word	1065353216
	.word	32767
	.word	.LC0
	.word	1065437102
	.word	.LANCHOR0
	.word	.LC1
	.word	SelectWorldScreen
	.cfi_endproc
.LFE212:
	.size	TitleScreen, .-TitleScreen
	.bss
	.set	.LANCHOR0,. + 0
	.type	clicked_play, %object
	.size	clicked_play, 1
clicked_play:
	.space	1
	.type	clicked_quit, %object
	.size	clicked_quit, 1
clicked_quit:
	.space	1
	.text
.Letext0:
	.file 2 "C:/Users/Elias/CLionProjects/3DSCraft/include/gui/state_machine/state_machine.h"
	.file 3 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 6 "C:/devkitPro/libctru/include/3ds/services/csnd.h"
	.file 7 "C:/devkitPro/libctru/include/3ds/services/ndm.h"
	.file 8 "C:/devkitPro/libctru/include/3ds/gpu/enums.h"
	.file 9 "C:/devkitPro/libctru/include/3ds/ndsp/channel.h"
	.file 10 "C:/devkitPro/libctru/include/3ds/applets/error.h"
	.file 11 "C:/Users/Elias/CLionProjects/3DSCraft/include/gui/SpriteBatch.h"
	.file 12 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 13 "C:/Users/Elias/CLionProjects/3DSCraft/include/gui/Gui.h"
	.file 14 "C:/devkitPro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5ea
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x1d
	.4byte	.LASF99
	.4byte	.LASF100
	.4byte	.LLRL3
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF4
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x8
	.byte	0x2
	.byte	0x9
	.byte	0x10
	.4byte	0x53
	.uleb128 0xa
	.4byte	.LASF0
	.byte	0xa
	.byte	0xa
	.4byte	0x63
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1
	.byte	0x10
	.byte	0x9
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	0x5e
	.uleb128 0x2
	.4byte	0x5e
	.byte	0
	.uleb128 0x9
	.4byte	0x2d
	.uleb128 0x9
	.4byte	0x53
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x11
	.byte	0x3
	.4byte	0x2d
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0x13
	.byte	0x10
	.4byte	0x82
	.uleb128 0x9
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x92
	.uleb128 0x2
	.4byte	0x92
	.byte	0
	.uleb128 0x9
	.4byte	0x6a
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x3
	.byte	0x37
	.byte	0x13
	.4byte	0xb1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0xd2
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0xa5
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0xc6
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x7
	.byte	0x1
	.4byte	0x9e
	.byte	0x5
	.byte	0xa
	.byte	0x6
	.4byte	0x212
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x27
	.byte	0
	.uleb128 0x9
	.4byte	0x21e
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF59
	.uleb128 0x17
	.4byte	0x217
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF60
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF61
	.uleb128 0x18
	.ascii	"u32\000"
	.byte	0xe
	.byte	0x17
	.byte	0x12
	.4byte	0x101
	.uleb128 0x7
	.byte	0x1
	.4byte	0x9e
	.byte	0x6
	.byte	0x28
	.byte	0x1
	.4byte	0x263
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x9e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.4byte	0x289
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x9e
	.byte	0x7
	.byte	0x21
	.byte	0xe
	.4byte	0x2af
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.byte	0x7
	.byte	0x1
	.4byte	0x9e
	.byte	0x8
	.2byte	0x1f6
	.byte	0x1
	.4byte	0x2cb
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x9e
	.byte	0x9
	.byte	0xb
	.byte	0x1
	.4byte	0x2eb
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.4byte	0xb8
	.byte	0xa
	.byte	0x9
	.byte	0x1
	.4byte	0x307
	.uleb128 0xc
	.4byte	.LASF79
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF80
	.2byte	0x200
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x9e
	.byte	0xb
	.byte	0x10
	.byte	0xe
	.4byte	0x333
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0xb
	.byte	0x10
	.byte	0x75
	.4byte	0x307
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0xc
	.4byte	0x223
	.uleb128 0x5
	.byte	0x3
	.4byte	clicked_play
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0xd
	.4byte	0x223
	.uleb128 0x5
	.byte	0x3
	.4byte	clicked_quit
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5d
	.byte	0x6
	.4byte	0x371
	.uleb128 0x2
	.4byte	0xe7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.4byte	0x383
	.uleb128 0x2
	.4byte	0x92
	.byte	0
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x2
	.byte	0x1f
	.byte	0x6
	.4byte	0x39a
	.uleb128 0x2
	.4byte	0x92
	.uleb128 0x2
	.4byte	0x76
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0xd
	.byte	0x19
	.byte	0x6
	.4byte	0x3a8
	.uleb128 0xe
	.byte	0
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x1e
	.4byte	0x223
	.4byte	0x3c2
	.uleb128 0x2
	.4byte	0x26
	.uleb128 0x2
	.4byte	0x212
	.uleb128 0xe
	.byte	0
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0xd
	.byte	0x18
	.byte	0x6
	.4byte	0x3d9
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.byte	0
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0xf
	.4byte	0xe7
	.4byte	0x3ed
	.uleb128 0x2
	.4byte	0x26
	.byte	0
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0xd
	.byte	0x12
	.byte	0x6
	.4byte	0x404
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0xb
	.byte	0x16
	.byte	0x6
	.4byte	0x443
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xf5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0xb
	.byte	0x12
	.byte	0x6
	.4byte	0x455
	.uleb128 0x2
	.4byte	0x333
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x1
	.byte	0xf
	.byte	0x23
	.4byte	0x92
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1e
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x501
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x12
	.byte	0xb
	.4byte	0xe7
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1f
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x10
	.ascii	"j\000"
	.byte	0x13
	.byte	0xc
	.4byte	0xe7
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x404
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 -32
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xfc
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL2
	.4byte	0x443
	.4byte	0x514
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.4byte	.LVL6
	.4byte	0x3ed
	.4byte	0x52e
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.4byte	.LVL7
	.4byte	0x3d9
	.4byte	0x548
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3f800000
	.byte	0
	.uleb128 0x5
	.4byte	.LVL8
	.4byte	0x3c2
	.4byte	0x55b
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL9
	.4byte	0x3a8
	.4byte	0x572
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL10
	.4byte	0x39a
	.uleb128 0x5
	.4byte	.LVL11
	.4byte	0x3d9
	.4byte	0x595
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3f800000
	.byte	0
	.uleb128 0x5
	.4byte	.LVL12
	.4byte	0x3c2
	.4byte	0x5a8
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL13
	.4byte	0x3a8
	.4byte	0x5bf
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x12
	.4byte	.LVL14
	.4byte	0x39a
	.uleb128 0x5
	.4byte	.LVL16
	.4byte	0x383
	.4byte	0x5dc
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL17
	.4byte	0x35f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 .LVU6
	.uleb128 .LVU6
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
	.uleb128 .LFE212-.LVL0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS1:
	.uleb128 .LVU9
	.uleb128 .LVU11
.LLST1:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU11
	.uleb128 .LVU13
.LLST2:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x2
	.byte	0x30
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
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
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
.LLRL3:
	.byte	0x7
	.4byte	.LFB212
	.uleb128 .LFE212-.LFB212
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF80:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF37:
	.ascii	"Block_Snow_Grass\000"
.LASF44:
	.ascii	"Block_Grass_Path\000"
.LASF0:
	.ascii	"current_state\000"
.LASF66:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF34:
	.ascii	"Block_Coarse\000"
.LASF8:
	.ascii	"short int\000"
.LASF74:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF3:
	.ascii	"state_func\000"
.LASF53:
	.ascii	"Block_Diamond_Block\000"
.LASF51:
	.ascii	"Block_Emerald_Ore\000"
.LASF97:
	.ascii	"SpriteBatch_BindGuiTexture\000"
.LASF87:
	.ascii	"clicked_play\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF50:
	.ascii	"Block_Gold_Ore\000"
.LASF76:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF83:
	.ascii	"GuiTexture_Icons\000"
.LASF2:
	.ascii	"state_machine_t\000"
.LASF63:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF103:
	.ascii	"TitleScreen\000"
.LASF102:
	.ascii	"Gui_EndRow\000"
.LASF93:
	.ascii	"Gui_BeginRow\000"
.LASF33:
	.ascii	"Block_Bedrock\000"
.LASF19:
	.ascii	"Block_Air\000"
.LASF57:
	.ascii	"Block_Furnace\000"
.LASF84:
	.ascii	"GuiTexture_Widgets\000"
.LASF21:
	.ascii	"Block_Dirt\000"
.LASF100:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF4:
	.ascii	"float\000"
.LASF15:
	.ascii	"unsigned int\000"
.LASF58:
	.ascii	"Blocks_Count\000"
.LASF13:
	.ascii	"long long int\000"
.LASF79:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF68:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF86:
	.ascii	"GuiTexture\000"
.LASF28:
	.ascii	"Block_Glass\000"
.LASF27:
	.ascii	"Block_Leaves\000"
.LASF54:
	.ascii	"Block_Coal_Block\000"
.LASF1:
	.ascii	"context\000"
.LASF88:
	.ascii	"clicked_quit\000"
.LASF47:
	.ascii	"Block_Iron_Ore\000"
.LASF67:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF91:
	.ascii	"exit\000"
.LASF38:
	.ascii	"Block_Snow\000"
.LASF18:
	.ascii	"long double\000"
.LASF22:
	.ascii	"Block_Grass\000"
.LASF6:
	.ascii	"unsigned char\000"
.LASF78:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF40:
	.ascii	"Block_Netherrack\000"
.LASF5:
	.ascii	"signed char\000"
.LASF35:
	.ascii	"Block_Door_Top\000"
.LASF14:
	.ascii	"long long unsigned int\000"
.LASF25:
	.ascii	"Block_Log\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF55:
	.ascii	"Block_Iron_Block\000"
.LASF101:
	.ascii	"state_machine_s\000"
.LASF29:
	.ascii	"Block_Stonebrick\000"
.LASF82:
	.ascii	"GuiTexture_Font\000"
.LASF65:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF9:
	.ascii	"short unsigned int\000"
.LASF24:
	.ascii	"Block_Sand\000"
.LASF90:
	.ascii	"state_machine_set_current_state\000"
.LASF89:
	.ascii	"SelectWorldScreen\000"
.LASF81:
	.ascii	"GuiTexture_Blank\000"
.LASF59:
	.ascii	"char\000"
.LASF20:
	.ascii	"Block_Stone\000"
.LASF10:
	.ascii	"long int\000"
.LASF39:
	.ascii	"Block_Obsidian\000"
.LASF85:
	.ascii	"GuiTexture_MenuBackground\000"
.LASF49:
	.ascii	"Block_Diamond_Ore\000"
.LASF16:
	.ascii	"int16_t\000"
.LASF52:
	.ascii	"Block_Gold_Block\000"
.LASF60:
	.ascii	"_Bool\000"
.LASF72:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF94:
	.ascii	"Gui_RelativeWidth\000"
.LASF45:
	.ascii	"Block_Water\000"
.LASF99:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/gui/Ti"
	.ascii	"tleScreen.c\000"
.LASF42:
	.ascii	"Block_Smooth_Stone\000"
.LASF64:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF48:
	.ascii	"Block_Coal_Ore\000"
.LASF71:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF61:
	.ascii	"double\000"
.LASF104:
	.ascii	"machine\000"
.LASF32:
	.ascii	"Block_Wool\000"
.LASF41:
	.ascii	"Block_Sandstone\000"
.LASF31:
	.ascii	"Block_Planks\000"
.LASF36:
	.ascii	"Block_Door_Bottom\000"
.LASF7:
	.ascii	"__int16_t\000"
.LASF69:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF70:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF95:
	.ascii	"Gui_Offset\000"
.LASF92:
	.ascii	"Gui_Button\000"
.LASF75:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF98:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF62:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF46:
	.ascii	"Block_Lava\000"
.LASF96:
	.ascii	"SpriteBatch_PushQuadColor\000"
.LASF43:
	.ascii	"Block_Crafting_Table\000"
.LASF30:
	.ascii	"Block_Brick\000"
.LASF56:
	.ascii	"Block_Emerald_Block\000"
.LASF26:
	.ascii	"Block_Gravel\000"
.LASF77:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF23:
	.ascii	"Block_Cobblestone\000"
.LASF73:
	.ascii	"NDM_DAEMON_FRIENDS\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
