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
	.file	"VertexFmt.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/rendering/VertexFmt.c"
	.global	__aeabi_idiv
	.section	.text.RGB16_ToHSV,"ax",%progbits
	.align	2
	.global	RGB16_ToHSV
	.syntax unified
	.arm
	.type	RGB16_ToHSV, %function
RGB16_ToHSV:
.LVL0:
.LFB10:
	.loc 1 5 35 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 6 2 view .LVU1
	.loc 1 8 2 view .LVU2
	.loc 1 9 24 is_stmt 0 view .LVU3
	lsr	r2, r0, #5
	.loc 1 10 6 view .LVU4
	and	r1, r0, #31
	.loc 1 9 6 view .LVU5
	and	r2, r2, #31
	.loc 1 12 35 view .LVU6
	cmp	r2, r1
	movge	ip, r2
	movlt	ip, r1
	.loc 1 8 25 view .LVU7
	lsr	r0, r0, #10
.LVL1:
	.loc 1 8 6 view .LVU8
	and	r3, r0, #31
.LVL2:
	.loc 1 9 2 is_stmt 1 view .LVU9
	.loc 1 10 2 view .LVU10
	.loc 1 11 2 view .LVU11
	.loc 1 12 2 view .LVU12
	.loc 1 12 6 is_stmt 0 view .LVU13
	cmp	ip, r3
	.loc 1 5 35 view .LVU14
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 12 6 view .LVU15
	movge	r5, ip
	movlt	r5, r3
.LVL3:
	.loc 1 13 2 is_stmt 1 view .LVU16
	.loc 1 11 6 is_stmt 0 view .LVU17
	cmp	r3, r2
	movlt	r0, r3
	movge	r0, r2
	.loc 1 13 6 view .LVU18
	cmp	r0, r1
	suble	r4, r5, r0
	subgt	r4, r5, r1
.LVL4:
	.loc 1 15 2 is_stmt 1 view .LVU19
	.loc 1 15 5 is_stmt 0 view .LVU20
	cmp	r4, #0
	beq	.L2
.LBB2:
	.loc 1 20 3 is_stmt 1 view .LVU21
	.loc 1 22 3 view .LVU22
	.loc 1 22 6 is_stmt 0 view .LVU23
	cmp	ip, r3
	bgt	.L3
	.loc 1 23 4 is_stmt 1 view .LVU24
	.loc 1 23 12 is_stmt 0 view .LVU25
	sub	r2, r2, r1
.LVL5:
	.loc 1 23 22 view .LVU26
	rsb	r2, r2, r2, lsl #4
	.loc 1 23 6 view .LVU27
	mov	r1, r4
.LVL6:
	.loc 1 23 6 view .LVU28
	lsl	r0, r2, #11
	bl	__aeabi_idiv
.LVL7:
	.loc 1 23 6 view .LVU29
	mov	r6, r0
.LVL8:
.L4:
	.loc 1 29 3 is_stmt 1 view .LVU30
	.loc 1 37 17 is_stmt 0 view .LVU31
	rsb	r4, r4, r4, lsl #5
.LVL9:
	.loc 1 29 6 view .LVU32
	cmp	r6, #0
	.loc 1 29 14 is_stmt 1 discriminator 1 view .LVU33
	.loc 1 37 30 is_stmt 0 view .LVU34
	sub	r0, r4, #8
	mov	r1, r5
	.loc 1 29 16 discriminator 1 view .LVU35
	addlt	r6, r6, #184320
.LVL10:
	.loc 1 31 3 is_stmt 1 view .LVU36
	.loc 1 37 3 view .LVU37
	.loc 1 37 30 is_stmt 0 view .LVU38
	bl	__aeabi_idiv
.LVL11:
.LBE2:
	.loc 1 41 69 view .LVU39
	lsl	r6, r6, #10
.LVL12:
	.loc 1 41 45 view .LVU40
	lsl	r4, r0, #5
	and	r4, r4, #992
	.loc 1 41 69 view .LVU41
	and	r6, r6, #31744
	orr	r4, r4, r6
.LVL13:
.L2:
	.loc 1 39 2 is_stmt 1 view .LVU42
	.loc 1 41 2 view .LVU43
	.loc 1 42 1 is_stmt 0 view .LVU44
	orr	r0, r4, r5
	pop	{r4, r5, r6, pc}
.LVL14:
.L3:
.LBB3:
	.loc 1 24 8 is_stmt 1 view .LVU45
	.loc 1 24 11 is_stmt 0 view .LVU46
	cmp	r2, r5
	beq	.L10
	.loc 1 27 4 is_stmt 1 view .LVU47
	.loc 1 27 12 is_stmt 0 view .LVU48
	sub	r3, r3, r2
.LVL15:
	.loc 1 27 22 view .LVU49
	rsb	r3, r3, r3, lsl #4
	.loc 1 27 29 view .LVU50
	mov	r1, r4
.LVL16:
	.loc 1 27 29 view .LVU51
	lsl	r0, r3, #11
	bl	__aeabi_idiv
.LVL17:
	.loc 1 27 6 view .LVU52
	add	r6, r0, #122880
.LVL18:
	.loc 1 27 6 view .LVU53
	b	.L4
.LVL19:
.L10:
	.loc 1 25 4 is_stmt 1 view .LVU54
	.loc 1 25 12 is_stmt 0 view .LVU55
	sub	r1, r1, r3
.LVL20:
	.loc 1 25 22 view .LVU56
	rsb	r0, r1, r1, lsl #4
	.loc 1 25 29 view .LVU57
	lsl	r0, r0, #11
	mov	r1, r4
	bl	__aeabi_idiv
.LVL21:
	.loc 1 25 6 view .LVU58
	add	r6, r0, #61440
.LVL22:
	.loc 1 25 6 view .LVU59
	b	.L4
.LBE3:
	.cfi_endproc
.LFE10:
	.size	RGB16_ToHSV, .-RGB16_ToHSV
	.section	.text.HSV16_ToRGB,"ax",%progbits
	.align	2
	.global	HSV16_ToRGB
	.syntax unified
	.arm
	.type	HSV16_ToRGB, %function
HSV16_ToRGB:
.LVL23:
.LFB11:
	.loc 1 44 34 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 45 2 view .LVU61
	.loc 1 46 2 view .LVU62
	.loc 1 46 62 is_stmt 0 view .LVU63
	asr	r3, r0, #5
.LVL24:
	.loc 1 48 5 view .LVU64
	ands	r1, r3, #31
	.loc 1 46 71 view .LVU65
	and	r2, r0, #31
.LVL25:
	.loc 1 48 2 is_stmt 1 view .LVU66
	moveq	r0, r2
.LVL26:
	.loc 1 49 9 is_stmt 0 view .LVU67
	moveq	r3, r2
.LVL27:
	.loc 1 48 5 view .LVU68
	beq	.L12
.LBB4:
	.loc 1 51 3 is_stmt 1 view .LVU69
.LVL28:
	.loc 1 52 3 view .LVU70
	.loc 1 53 3 view .LVU71
	.loc 1 54 3 view .LVU72
	.loc 1 55 3 view .LVU73
.LBE4:
	.loc 1 46 32 is_stmt 0 view .LVU74
	asr	r0, r0, #10
.LVL29:
	.loc 1 46 10 view .LVU75
	and	r0, r0, #31
.LBB8:
.LBB5:
	.loc 1 77 37 view .LVU76
	smulbb	r0, r0, r1
	.loc 1 77 29 view .LVU77
	rsb	r3, r2, r2, lsl #4
	rsb	r3, r3, r3, lsl #5
.LBE5:
	.loc 1 55 25 view .LVU78
	mul	r1, r1, r2
.LVL30:
	.loc 1 57 3 is_stmt 1 view .LVU79
.LBB6:
	.loc 1 77 4 view .LVU80
	.loc 1 78 4 view .LVU81
	.loc 1 80 6 view .LVU82
	.loc 1 81 6 view .LVU83
	.loc 1 77 29 is_stmt 0 view .LVU84
	lsl	r3, r3, #11
	.loc 1 77 33 view .LVU85
	mla	r3, r2, r0, r3
	.loc 1 77 64 view .LVU86
	sub	ip, r1, r1, lsl #4
	.loc 1 77 8 view .LVU87
	ldr	r0, .L14
	.loc 1 77 45 view .LVU88
	add	r3, r3, ip, lsl #11
	.loc 1 77 8 view .LVU89
	smull	ip, r0, r0, r3
	asr	r3, r3, #31
	rsb	r3, r3, r0, asr #15
.LBE6:
	.loc 1 55 17 view .LVU90
	rsb	ip, r2, r2, lsl #5
	.loc 1 55 7 view .LVU91
	ldr	r0, .L14+4
	.loc 1 55 21 view .LVU92
	sub	ip, ip, r1
	.loc 1 55 7 view .LVU93
	smull	r0, r1, r0, ip
.LVL31:
	.loc 1 55 7 view .LVU94
	asr	r0, ip, #31
	add	r1, r1, ip
	rsb	r0, r0, r1, asr #4
.LBB7:
	.loc 1 81 8 view .LVU95
	sxth	r3, r3
.LVL32:
	.loc 1 82 6 is_stmt 1 view .LVU96
	.loc 1 83 6 view .LVU97
.LBE7:
.LBE8:
	.loc 1 98 14 is_stmt 0 view .LVU98
	and	r0, r0, #31
.LVL33:
.L12:
	.loc 1 98 2 is_stmt 1 view .LVU99
	.loc 1 98 37 is_stmt 0 view .LVU100
	lsl	r3, r3, #5
.LVL34:
	.loc 1 98 37 view .LVU101
	and	r3, r3, #992
	.loc 1 98 43 view .LVU102
	orr	r0, r0, r2, lsl #10
	.loc 1 99 1 view .LVU103
	orr	r0, r3, r0
	bx	lr
.L15:
	.align	2
.L14:
	.word	147783821
	.word	-2078209981
	.cfi_endproc
.LFE11:
	.size	HSV16_ToRGB, .-HSV16_ToRGB
	.text
.Letext0:
	.file 2 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2ce
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1d
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.LLRL25
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x55
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x34
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x49
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x2c
	.4byte	0x84
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c7
	.uleb128 0x8
	.ascii	"hsv\000"
	.byte	0x2c
	.byte	0x1d
	.4byte	0x84
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1
	.ascii	"r\000"
	.byte	0x2d
	.byte	0xa
	.4byte	0x84
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1
	.ascii	"g\000"
	.byte	0x2d
	.byte	0xd
	.4byte	0x84
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1
	.ascii	"b\000"
	.byte	0x2d
	.byte	0x10
	.4byte	0x84
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2e
	.byte	0xa
	.4byte	0x84
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2e
	.byte	0x29
	.4byte	0x84
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2e
	.byte	0x47
	.4byte	0x84
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x6
	.4byte	.LLRL18
	.uleb128 0x1
	.ascii	"h\000"
	.byte	0x33
	.byte	0x7
	.4byte	0x7d
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x1
	.ascii	"s\000"
	.byte	0x34
	.byte	0x7
	.4byte	0x7d
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x1
	.ascii	"v\000"
	.byte	0x35
	.byte	0x7
	.4byte	0x7d
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x1
	.ascii	"i\000"
	.byte	0x36
	.byte	0x7
	.4byte	0x7d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x1
	.ascii	"p\000"
	.byte	0x37
	.byte	0x7
	.4byte	0x7d
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xc
	.4byte	0x1b7
	.uleb128 0x9
	.ascii	"q\000"
	.byte	0x3a
	.4byte	0x7d
	.byte	0
	.uleb128 0x6
	.4byte	.LLRL24
	.uleb128 0x9
	.ascii	"t\000"
	.byte	0x4d
	.4byte	0x7d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.4byte	0x84
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c8
	.uleb128 0x8
	.ascii	"rgb\000"
	.byte	0x5
	.byte	0x1e
	.4byte	0x90
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0xa
	.4byte	0x84
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.4byte	0x84
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x18
	.4byte	0x84
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1
	.ascii	"r\000"
	.byte	0x8
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1
	.ascii	"g\000"
	.byte	0x9
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1
	.ascii	"b\000"
	.byte	0xa
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1
	.ascii	"m\000"
	.byte	0xb
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1
	.ascii	"M\000"
	.byte	0xc
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0xd
	.byte	0x6
	.4byte	0x7d
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x6
	.4byte	.LLRL9
	.uleb128 0x1
	.ascii	"h\000"
	.byte	0x14
	.byte	0x7
	.4byte	0x7d
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x5
	.4byte	.LVL7
	.4byte	0x2c8
	.uleb128 0x5
	.4byte	.LVL11
	.4byte	0x2c8
	.uleb128 0x5
	.4byte	.LVL17
	.4byte	0x2c8
	.uleb128 0x5
	.4byte	.LVL21
	.4byte	0x2c8
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.sleb128 9
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0x9
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
.LVUS11:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST11:
	.byte	0x6
	.4byte	.LVL23
	.byte	0x4
	.uleb128 .LVL23-.LVL23
	.uleb128 .LVL26-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL26-.LVL23
	.uleb128 .LFE11-.LVL23
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU83
	.uleb128 0
.LLST12:
	.byte	0x8
	.4byte	.LVL30
	.uleb128 .LFE11-.LVL30
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS13:
	.uleb128 .LVU96
	.uleb128 .LVU101
.LLST13:
	.byte	0x8
	.4byte	.LVL32
	.uleb128 .LVL34-.LVL32
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS14:
	.uleb128 .LVU97
	.uleb128 .LVU99
.LLST14:
	.byte	0x8
	.4byte	.LVL32
	.uleb128 .LVL33-.LVL32
	.uleb128 0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x4f
	.byte	0x1e
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x26
	.byte	0x4f
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x1c
	.byte	0x4f
	.byte	0x1b
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU63
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL23
	.byte	0x4
	.uleb128 .LVL23-.LVL23
	.uleb128 .LVL26-.LVL23
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0x3a
	.byte	0x26
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL23
	.uleb128 .LFE11-.LVL23
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x3a
	.byte	0x26
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU64
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL24
	.byte	0x4
	.uleb128 .LVL24-.LVL24
	.uleb128 .LVL27-.LVL24
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-.LVL24
	.uleb128 .LFE11-.LVL24
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU66
	.uleb128 0
.LLST17:
	.byte	0x8
	.4byte	.LVL25
	.uleb128 .LFE11-.LVL25
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS19:
	.uleb128 .LVU70
	.uleb128 .LVU75
.LLST19:
	.byte	0x8
	.4byte	.LVL28
	.uleb128 .LVL29-.LVL28
	.uleb128 0xb
	.byte	0x70
	.sleb128 0
	.byte	0x3a
	.byte	0x26
	.byte	0x4f
	.byte	0x1a
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU71
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU99
.LLST20:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL30-.LVL28
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL28
	.uleb128 .LVL33-.LVL28
	.uleb128 0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU72
	.uleb128 .LVU99
.LLST21:
	.byte	0x8
	.4byte	.LVL28
	.uleb128 .LVL33-.LVL28
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS22:
	.uleb128 .LVU73
	.uleb128 .LVU99
.LLST22:
	.byte	0x8
	.4byte	.LVL28
	.uleb128 .LVL33-.LVL28
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU79
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU99
.LLST23:
	.byte	0x6
	.4byte	.LVL30
	.byte	0x4
	.uleb128 .LVL30-.LVL30
	.uleb128 .LVL31-.LVL30
	.uleb128 0xe
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x4f
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x4f
	.byte	0x1b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.LVL30
	.uleb128 .LVL33-.LVL30
	.uleb128 0x1c
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x4f
	.byte	0x1e
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x26
	.byte	0x4f
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x1c
	.byte	0x4f
	.byte	0x1b
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
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
	.uleb128 .LFE10-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU37
	.uleb128 .LVU40
.LLST1:
	.byte	0x8
	.4byte	.LVL10
	.uleb128 .LVL12-.LVL10
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS2:
	.uleb128 .LVU43
	.uleb128 .LVU45
.LLST2:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS3:
	.uleb128 .LVU9
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL7-1-.LVL2
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL7-1-.LVL2
	.uleb128 .LVL14-.LVL2
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL2
	.uleb128 .LVL15-.LVL2
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL15-.LVL2
	.uleb128 .LVL19-.LVL2
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL2
	.uleb128 .LVL21-1-.LVL2
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL21-1-.LVL2
	.uleb128 .LFE10-.LVL2
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU10
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL5-.LVL2
	.uleb128 .LVL14-.LVL2
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL2
	.uleb128 .LVL17-1-.LVL2
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL17-1-.LVL2
	.uleb128 .LVL19-.LVL2
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL2
	.uleb128 .LVL21-1-.LVL2
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL21-1-.LVL2
	.uleb128 .LFE10-.LVL2
	.uleb128 0xe
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU11
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LVL14-.LVL2
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL2
	.uleb128 .LVL16-.LVL2
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL16-.LVL2
	.uleb128 .LVL19-.LVL2
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL2
	.uleb128 .LVL20-.LVL2
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL20-.LVL2
	.uleb128 .LFE10-.LVL2
	.uleb128 0xc
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU12
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x19
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x24
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x12
	.byte	0x73
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL2
	.uleb128 .LVL7-1-.LVL2
	.uleb128 0x2d
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x73
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-1-.LVL2
	.uleb128 .LVL14-.LVL2
	.uleb128 0x38
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL2
	.uleb128 .LVL15-.LVL2
	.uleb128 0x19
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL2
	.uleb128 .LVL16-.LVL2
	.uleb128 0x24
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL2
	.uleb128 .LVL17-1-.LVL2
	.uleb128 0x2d
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-1-.LVL2
	.uleb128 .LVL19-.LVL2
	.uleb128 0x38
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL2
	.uleb128 .LVL20-.LVL2
	.uleb128 0x19
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL2
	.uleb128 .LVL21-1-.LVL2
	.uleb128 0x22
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x12
	.byte	0x73
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-1-.LVL2
	.uleb128 .LFE10-.LVL2
	.uleb128 0x38
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU16
	.uleb128 0
.LLST7:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LFE10-.LVL3
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS8:
	.uleb128 .LVU19
	.uleb128 .LVU32
	.uleb128 .LVU45
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL9-.LVL4
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL14-.LVL4
	.uleb128 .LFE10-.LVL4
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS10:
	.uleb128 .LVU30
	.uleb128 .LVU40
	.uleb128 .LVU53
	.uleb128 .LVU54
	.uleb128 .LVU59
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL12-.LVL8
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL18-.LVL8
	.uleb128 .LVL19-.LVL8
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL22-.LVL8
	.uleb128 .LFE10-.LVL8
	.uleb128 0x1
	.byte	0x56
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
.LLRL9:
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0
.LLRL18:
	.byte	0x5
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB8-.LBB4
	.uleb128 .LBE8-.LBB4
	.byte	0
.LLRL24:
	.byte	0x5
	.4byte	.LBB5
	.byte	0x4
	.uleb128 .LBB5-.LBB5
	.uleb128 .LBE5-.LBB5
	.byte	0x4
	.uleb128 .LBB6-.LBB5
	.uleb128 .LBE6-.LBB5
	.byte	0x4
	.uleb128 .LBB7-.LBB5
	.uleb128 .LBE7-.LBB5
	.byte	0
.LLRL25:
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF23:
	.ascii	"out_s\000"
.LASF24:
	.ascii	"out_v\000"
.LASF25:
	.ascii	"delta\000"
.LASF29:
	.ascii	"__aeabi_idiv\000"
.LASF15:
	.ascii	"float\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF16:
	.ascii	"double\000"
.LASF6:
	.ascii	"__int16_t\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF28:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF26:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF11:
	.ascii	"int16_t\000"
.LASF27:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/render"
	.ascii	"ing/VertexFmt.c\000"
.LASF10:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"char\000"
.LASF5:
	.ascii	"short int\000"
.LASF17:
	.ascii	"in_h\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF21:
	.ascii	"RGB16_ToHSV\000"
.LASF8:
	.ascii	"long int\000"
.LASF13:
	.ascii	"long double\000"
.LASF18:
	.ascii	"in_s\000"
.LASF3:
	.ascii	"signed char\000"
.LASF19:
	.ascii	"in_v\000"
.LASF20:
	.ascii	"HSV16_ToRGB\000"
.LASF22:
	.ascii	"out_h\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
