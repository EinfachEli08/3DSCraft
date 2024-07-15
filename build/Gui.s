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
	.file	"Gui.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/gui/Gui.c"
	.section	.text.Gui_Init,"ax",%progbits
	.align	2
	.global	Gui_Init
	.syntax unified
	.arm
	.type	Gui_Init, %function
Gui_Init:
.LFB212:
	.loc 1 23 17 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 24 2 view .LVU1
	mov	r3, #0
	.loc 1 27 11 is_stmt 0 view .LVU2
	mov	ip, #2
	.loc 1 28 11 view .LVU3
	mov	r0, #3
	.loc 1 24 2 view .LVU4
	ldr	r2, .L3
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	.loc 1 25 2 is_stmt 1 view .LVU5
	str	r3, [r2, #24]
	.loc 1 27 11 is_stmt 0 view .LVU6
	str	ip, [r2, #48]
	.loc 1 28 11 view .LVU7
	str	r0, [r2, #52]
	.loc 1 25 2 view .LVU8
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r3, [r2, #36]
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	.loc 1 27 2 is_stmt 1 view .LVU9
	.loc 1 28 2 view .LVU10
	.loc 1 29 1 is_stmt 0 view .LVU11
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.cfi_endproc
.LFE212:
	.size	Gui_Init, .-Gui_Init
	.section	.text.Gui_Deinit,"ax",%progbits
	.align	2
	.global	Gui_Deinit
	.syntax unified
	.arm
	.type	Gui_Deinit, %function
Gui_Deinit:
.LFB214:
	.loc 1 33 19 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 33 20 view .LVU13
	bx	lr
	.cfi_endproc
.LFE214:
	.size	Gui_Deinit, .-Gui_Deinit
	.section	.text.Gui_Frame,"ax",%progbits
	.align	2
	.global	Gui_Frame
	.syntax unified
	.arm
	.type	Gui_Frame, %function
Gui_Frame:
.LFB215:
	.loc 1 35 18 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 36 2 view .LVU15
	.loc 1 36 12 is_stmt 0 view .LVU16
	mov	r2, #0
	ldr	r3, .L7
	str	r2, [r3, #56]
	.loc 1 37 2 is_stmt 1 view .LVU17
	.loc 1 37 12 is_stmt 0 view .LVU18
	str	r2, [r3, #60]
	.loc 1 38 2 is_stmt 1 view .LVU19
	.loc 1 38 10 is_stmt 0 view .LVU20
	str	r2, [r3, #64]
	.loc 1 39 2 is_stmt 1 view .LVU21
	.loc 1 39 10 is_stmt 0 view .LVU22
	str	r2, [r3, #68]
	.loc 1 40 1 view .LVU23
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.cfi_endproc
.LFE215:
	.size	Gui_Frame, .-Gui_Frame
	.section	.text.Gui_Offset,"ax",%progbits
	.align	2
	.global	Gui_Offset
	.syntax unified
	.arm
	.type	Gui_Offset, %function
Gui_Offset:
.LVL0:
.LFB216:
	.loc 1 42 31 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 43 2 view .LVU25
	.loc 1 43 10 is_stmt 0 view .LVU26
	ldr	r3, .L10
	.loc 1 44 10 view .LVU27
	strd	r0, [r3, #64]
	.loc 1 45 1 view .LVU28
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.cfi_endproc
.LFE216:
	.size	Gui_Offset, .-Gui_Offset
	.section	.text.Gui_RelativeWidth,"ax",%progbits
	.align	2
	.global	Gui_RelativeWidth
	.syntax unified
	.arm
	.type	Gui_RelativeWidth, %function
Gui_RelativeWidth:
.LVL1:
.LFB217:
	.loc 1 47 32 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 47 34 view .LVU30
	.loc 1 47 32 is_stmt 0 view .LVU31
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	vpush.64	{d8}
	.cfi_def_cfa_offset 16
	.cfi_offset 80, -16
	.cfi_offset 81, -12
	.loc 1 47 32 view .LVU32
	vmov.f32	s16, s0
	.loc 1 47 41 view .LVU33
	bl	SpriteBatch_GetWidth
.LVL2:
	.loc 1 47 41 view .LVU34
	vmov	s15, r0	@ int
	.loc 1 47 64 discriminator 1 view .LVU35
	vcvt.f32.s32	s15, s15
	vmul.f32	s0, s15, s16
	.loc 1 47 69 view .LVU36
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 8
.LVL3:
	.loc 1 47 69 view .LVU37
	vcvt.s32.f32	s15, s0
	vmov	r0, s15	@ int
	pop	{r4, pc}
	.cfi_endproc
.LFE217:
	.size	Gui_RelativeWidth, .-Gui_RelativeWidth
	.section	.text.Gui_RelativeHeight,"ax",%progbits
	.align	2
	.global	Gui_RelativeHeight
	.syntax unified
	.arm
	.type	Gui_RelativeHeight, %function
Gui_RelativeHeight:
.LVL4:
.LFB218:
	.loc 1 48 33 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 48 35 view .LVU39
	.loc 1 48 33 is_stmt 0 view .LVU40
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	vpush.64	{d8}
	.cfi_def_cfa_offset 16
	.cfi_offset 80, -16
	.cfi_offset 81, -12
	.loc 1 48 33 view .LVU41
	vmov.f32	s16, s0
	.loc 1 48 42 view .LVU42
	bl	SpriteBatch_GetHeight
.LVL5:
	.loc 1 48 42 view .LVU43
	vmov	s15, r0	@ int
	.loc 1 48 66 discriminator 1 view .LVU44
	vcvt.f32.s32	s15, s15
	vmul.f32	s0, s15, s16
	.loc 1 48 71 view .LVU45
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 8
.LVL6:
	.loc 1 48 71 view .LVU46
	vcvt.s32.f32	s15, s0
	vmov	r0, s15	@ int
	pop	{r4, pc}
	.cfi_endproc
.LFE218:
	.size	Gui_RelativeHeight, .-Gui_RelativeHeight
	.section	.text.Gui_BeginRowCenter,"ax",%progbits
	.align	2
	.global	Gui_BeginRowCenter
	.syntax unified
	.arm
	.type	Gui_BeginRowCenter, %function
Gui_BeginRowCenter:
.LVL7:
.LFB219:
	.loc 1 50 47 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 51 2 view .LVU48
	.loc 1 50 47 is_stmt 0 view .LVU49
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 50 47 view .LVU50
	mov	r5, r1
	mov	r4, r0
	.loc 1 51 12 view .LVU51
	bl	SpriteBatch_GetWidth
.LVL8:
.LBB11:
.LBB12:
	.loc 1 56 13 view .LVU52
	mov	ip, #0
.LBE12:
.LBE11:
	.loc 1 51 10 discriminator 1 view .LVU53
	ldr	r3, .L18
	.loc 1 51 47 discriminator 1 view .LVU54
	add	r1, r4, r4, lsr #31
.LBB18:
.LBB13:
	.loc 1 56 48 view .LVU55
	ldr	r2, [r3, #48]
.LBE13:
.LBE18:
	.loc 1 51 35 discriminator 1 view .LVU56
	add	r0, r0, r0, lsr #31
.LBB19:
.LBB14:
	.loc 1 56 63 view .LVU57
	mul	r5, r2, r5
.LVL9:
	.loc 1 57 12 view .LVU58
	str	r2, [r3, #56]
.LBE14:
.LBE19:
	.loc 1 51 47 discriminator 1 view .LVU59
	asr	r1, r1, #1
.LBB20:
.LBB15:
	.loc 1 56 37 view .LVU60
	sub	r2, r4, r2, lsl #1
.LBE15:
.LBE20:
	.loc 1 51 39 discriminator 1 view .LVU61
	rsb	r1, r1, r0, asr #1
.LBB21:
.LBB16:
	.loc 1 56 52 view .LVU62
	sub	r2, r2, r5
.LBE16:
.LBE21:
	.loc 1 51 10 discriminator 1 view .LVU63
	str	r1, [r3, #64]
	.loc 1 52 2 is_stmt 1 view .LVU64
.LVL10:
.LBB22:
.LBI11:
	.loc 1 55 6 view .LVU65
.LBB17:
	.loc 1 56 2 view .LVU66
	.loc 1 56 13 is_stmt 0 view .LVU67
	str	r4, [r3, #72]
	str	ip, [r3, #76]
	str	r2, [r3, #80]
	.loc 1 57 2 is_stmt 1 view .LVU68
	.loc 1 58 2 view .LVU69
	.loc 1 58 12 is_stmt 0 view .LVU70
	str	ip, [r3, #60]
.LVL11:
	.loc 1 58 12 view .LVU71
.LBE17:
.LBE22:
	.loc 1 53 1 view .LVU72
	pop	{r4, r5, r6, pc}
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.cfi_endproc
.LFE219:
	.size	Gui_BeginRowCenter, .-Gui_BeginRowCenter
	.section	.text.Gui_BeginRow,"ax",%progbits
	.align	2
	.global	Gui_BeginRow
	.syntax unified
	.arm
	.type	Gui_BeginRow, %function
Gui_BeginRow:
.LVL12:
.LFB220:
	.loc 1 55 41 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 56 2 view .LVU74
	.loc 1 56 13 is_stmt 0 view .LVU75
	mov	ip, #0
	.loc 1 56 48 view .LVU76
	ldr	r2, .L21
	ldr	r3, [r2, #48]
	.loc 1 56 13 view .LVU77
	str	ip, [r2, #76]
	.loc 1 56 63 view .LVU78
	mul	r1, r1, r3
.LVL13:
	.loc 1 57 12 view .LVU79
	str	r3, [r2, #56]
	.loc 1 56 37 view .LVU80
	sub	r3, r0, r3, lsl #1
	.loc 1 56 52 view .LVU81
	sub	r3, r3, r1
	.loc 1 58 12 view .LVU82
	str	ip, [r2, #60]
	.loc 1 56 13 view .LVU83
	str	r0, [r2, #72]
	str	r3, [r2, #80]
	.loc 1 57 2 is_stmt 1 view .LVU84
	.loc 1 58 2 view .LVU85
	.loc 1 59 1 is_stmt 0 view .LVU86
	bx	lr
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.cfi_endproc
.LFE220:
	.size	Gui_BeginRow, .-Gui_BeginRow
	.section	.text.Gui_EndRow,"ax",%progbits
	.align	2
	.global	Gui_EndRow
	.syntax unified
	.arm
	.type	Gui_EndRow, %function
Gui_EndRow:
.LFB221:
	.loc 1 60 19 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 60 21 view .LVU88
	.loc 1 60 29 is_stmt 0 view .LVU89
	ldr	r2, .L24
	.loc 1 60 58 view .LVU90
	ldr	r3, [r2, #76]
	ldr	r0, [r2, #52]
	.loc 1 60 29 view .LVU91
	ldr	r1, [r2, #68]
	.loc 1 60 58 view .LVU92
	add	r3, r3, r0
	.loc 1 60 29 view .LVU93
	add	r3, r3, r1
	str	r3, [r2, #68]
	.loc 1 60 70 view .LVU94
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.cfi_endproc
.LFE221:
	.size	Gui_EndRow, .-Gui_EndRow
	.section	.text.Gui_Label,"ax",%progbits
	.align	2
	.global	Gui_Label
	.syntax unified
	.arm
	.type	Gui_Label, %function
Gui_Label:
.LVL14:
.LFB222:
	.loc 1 62 91 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 63 2 view .LVU96
	.loc 1 62 91 is_stmt 0 view .LVU97
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	vpush.64	{d8}
	.cfi_def_cfa_offset 24
	.cfi_offset 80, -24
	.cfi_offset 81, -20
	vmov	s16, r0
	.loc 1 63 69 view .LVU98
	vcmpe.f32	s16, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 63 38 discriminator 1 view .LVU99
	ldr	r5, .L39
	.loc 1 62 91 view .LVU100
	sub	sp, sp, #32
	.cfi_def_cfa_offset 56
.LBB23:
.LBB24:
	.loc 1 31 66 view .LVU101
	vldrhi.32	s15, [r5, #80]	@ int
	vcvthi.f32.s32	s15, s15
	.loc 1 31 98 view .LVU102
	vmulhi.f32	s15, s15, s16
.LBE24:
.LBE23:
	.loc 1 63 45 discriminator 1 view .LVU103
	ldrls	r2, [r5, #56]
.LVL15:
	.loc 1 63 45 discriminator 1 view .LVU104
	ldrls	r4, [r5, #72]
.LBB28:
.LBB25:
	.loc 1 31 60 view .LVU105
	vcvthi.s32.f32	s15, s15
.LBE25:
.LBE28:
	.loc 1 63 45 discriminator 1 view .LVU106
	subls	r4, r4, r2
	.loc 1 63 69 discriminator 1 view .LVU107
	ldrls	r2, [r5, #48]
.LBB29:
.LBB26:
	.loc 1 31 60 view .LVU108
	vmovhi	r4, s15	@ int
.LBE26:
.LBE29:
	.loc 1 63 69 discriminator 1 view .LVU109
	subls	r4, r4, r2
.LVL16:
.LBB30:
.LBI23:
	.loc 1 31 19 is_stmt 1 view .LVU110
.LBB27:
	.loc 1 31 53 view .LVU111
	.loc 1 31 53 is_stmt 0 view .LVU112
.LBE27:
.LBE30:
	.loc 1 64 2 is_stmt 1 view .LVU113
	.loc 1 64 6 is_stmt 0 view .LVU114
	mov	r2, #0
	.loc 1 67 1 view .LVU115
	add	r1, sp, #60
.LVL17:
	.loc 1 69 5 view .LVU116
	cmp	r3, r2
	.loc 1 62 91 view .LVU117
	ldr	r6, [sp, #56]
	.loc 1 67 1 view .LVU118
	str	r1, [sp, #28]
	.loc 1 64 6 view .LVU119
	str	r2, [sp, #24]
	.loc 1 66 2 is_stmt 1 view .LVU120
	.loc 1 67 1 view .LVU121
	.loc 1 68 2 view .LVU122
.LVL18:
	.loc 1 69 2 view .LVU123
	.loc 1 69 5 is_stmt 0 view .LVU124
	bne	.L30
.LVL19:
.L32:
	.loc 1 68 6 view .LVU125
	mov	r3, #0
.LVL20:
.L31:
	.loc 1 73 2 is_stmt 1 view .LVU126
	.loc 1 74 6 is_stmt 0 view .LVU127
	mov	r2, #0
	str	r6, [sp, #12]
	add	r0, sp, #24
	ldr	r1, [r5, #68]
	str	r4, [sp, #4]
	str	r0, [sp, #8]
	.loc 1 74 40 view .LVU128
	ldr	ip, [r5, #56]
	ldr	r0, [r5, #64]
	add	r0, r0, ip
	.loc 1 74 6 view .LVU129
	add	r0, r0, r3
	ldr	r3, [r5, #60]
.LVL21:
	.loc 1 74 6 view .LVU130
	str	r2, [sp]
	add	r1, r1, r3
	ldr	r3, [sp, #28]
	str	r3, [sp, #16]
	ldr	r3, .L39+4
	bl	SpriteBatch_PushTextVargs
.LVL22:
	.loc 1 75 1 is_stmt 1 view .LVU131
	.loc 1 76 2 view .LVU132
	.loc 1 76 40 is_stmt 0 discriminator 1 view .LVU133
	vcmp.f32	s16, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 77 103 view .LVU134
	ldr	r3, [r5, #76]
	ldr	r2, [sp, #24]
	.loc 1 76 40 discriminator 1 view .LVU135
	movls	r4, r0
.LVL23:
	.loc 1 77 103 view .LVU136
	cmp	r3, r2
	movlt	r3, r2
	.loc 1 76 48 discriminator 4 view .LVU137
	ldr	ip, [r5, #48]
	.loc 1 76 12 discriminator 4 view .LVU138
	ldr	r1, [r5, #56]
	.loc 1 76 48 discriminator 4 view .LVU139
	add	r4, r4, ip
	.loc 1 76 12 discriminator 4 view .LVU140
	add	r4, r4, r1
	str	r4, [r5, #56]
	.loc 1 77 2 is_stmt 1 view .LVU141
	.loc 1 77 28 is_stmt 0 view .LVU142
	str	r3, [r5, #76]
	.loc 1 78 1 view .LVU143
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 16
.LVL24:
	.loc 1 78 1 view .LVU144
	pop	{r4, r5, r6, pc}
.LVL25:
.L30:
	.cfi_restore_state
.LBB31:
	.loc 1 70 3 is_stmt 1 view .LVU145
	.loc 1 70 19 is_stmt 0 view .LVU146
	mov	r0, r6
.LVL26:
	.loc 1 70 19 view .LVU147
	bl	SpriteBatch_CalcTextWidthVargs
.LVL27:
	.loc 1 71 3 is_stmt 1 view .LVU148
	.loc 1 71 6 is_stmt 0 view .LVU149
	cmp	r4, r0
	blt	.L32
	.loc 1 71 26 is_stmt 1 discriminator 1 view .LVU150
	.loc 1 71 57 is_stmt 0 discriminator 1 view .LVU151
	add	r0, r0, r0, lsr #31
.LVL28:
	.loc 1 71 41 discriminator 1 view .LVU152
	add	r2, r4, r4, lsr #31
	.loc 1 71 57 discriminator 1 view .LVU153
	asr	r3, r0, #1
	.loc 1 71 34 discriminator 1 view .LVU154
	rsb	r3, r3, r2, asr #1
.LVL29:
	.loc 1 71 34 discriminator 1 view .LVU155
	b	.L31
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.word	32767
.LBE31:
	.cfi_endproc
.LFE222:
	.size	Gui_Label, .-Gui_Label
	.section	.text.Gui_Space,"ax",%progbits
	.align	2
	.global	Gui_Space
	.syntax unified
	.arm
	.type	Gui_Space, %function
Gui_Space:
.LVL30:
.LFB224:
	.loc 1 115 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 115 31 view .LVU157
	.loc 1 115 41 is_stmt 0 discriminator 1 view .LVU158
	ldr	r2, .L42
.LVL31:
.LBB32:
.LBI32:
	.loc 1 31 19 is_stmt 1 view .LVU159
.LBB33:
	.loc 1 31 53 view .LVU160
	.loc 1 31 66 is_stmt 0 view .LVU161
	vldr.32	s15, [r2, #80]	@ int
	vcvt.f32.s32	s15, s15
	.loc 1 31 98 view .LVU162
	vmul.f32	s15, s15, s0
	.loc 1 31 60 view .LVU163
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
.LBE33:
.LBE32:
	.loc 1 115 74 discriminator 1 view .LVU164
	ldr	r0, [r2, #48]
	.loc 1 115 41 discriminator 1 view .LVU165
	ldr	r1, [r2, #56]
	.loc 1 115 74 discriminator 1 view .LVU166
	add	r3, r3, r0
	.loc 1 115 41 discriminator 1 view .LVU167
	add	r3, r3, r1
	str	r3, [r2, #56]
	.loc 1 115 86 view .LVU168
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.cfi_endproc
.LFE224:
	.size	Gui_Space, .-Gui_Space
	.section	.text.Gui_VerticalSpace,"ax",%progbits
	.align	2
	.global	Gui_VerticalSpace
	.syntax unified
	.arm
	.type	Gui_VerticalSpace, %function
Gui_VerticalSpace:
.LVL32:
.LFB225:
	.loc 1 116 31 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 116 33 view .LVU170
	.loc 1 116 41 is_stmt 0 view .LVU171
	ldr	r2, .L45
	ldr	r3, [r2, #68]
	add	r3, r3, r0
	str	r3, [r2, #68]
	.loc 1 116 47 view .LVU172
	bx	lr
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.cfi_endproc
.LFE225:
	.size	Gui_VerticalSpace, .-Gui_VerticalSpace
	.section	.text.Gui_InputData,"ax",%progbits
	.align	2
	.global	Gui_InputData
	.syntax unified
	.arm
	.type	Gui_InputData, %function
Gui_InputData:
.LFB226:
	.loc 1 118 36 is_stmt 1 view -0
	.cfi_startproc
	@ args = 24, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 119 2 view .LVU174
	.loc 1 119 11 is_stmt 0 view .LVU175
	ldr	ip, .L49
	.loc 1 118 36 view .LVU176
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 14, -20
	.loc 1 120 8 view .LVU177
	mov	r5, ip
	.loc 1 118 36 view .LVU178
	add	lr, sp, #12
	.loc 1 119 11 view .LVU179
	add	r4, ip, #24
	.loc 1 118 36 view .LVU180
	stm	lr, {r0, r1, r2, r3}
	.loc 1 119 11 view .LVU181
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	r4, {r0, r1}
	.loc 1 120 2 is_stmt 1 view .LVU182
	.loc 1 120 8 is_stmt 0 view .LVU183
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	.loc 1 121 1 view .LVU184
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	.loc 1 120 8 view .LVU185
	stm	ip, {r0, r1}
	.loc 1 121 1 view .LVU186
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	bx	lr
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
	.cfi_endproc
.LFE226:
	.size	Gui_InputData, .-Gui_InputData
	.global	__aeabi_idiv
	.section	.text.Gui_IsCursorInside,"ax",%progbits
	.align	2
	.global	Gui_IsCursorInside
	.syntax unified
	.arm
	.type	Gui_IsCursorInside, %function
Gui_IsCursorInside:
.LVL33:
.LFB227:
	.loc 1 123 52 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 124 2 view .LVU188
	.loc 1 123 52 is_stmt 0 view .LVU189
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 124 23 view .LVU190
	ldr	r9, .L60
	.loc 1 123 52 view .LVU191
	mov	r8, r3
	mov	r7, r2
	.loc 1 124 23 view .LVU192
	ldrh	r4, [r9, #16]
	.loc 1 123 52 view .LVU193
	mov	r5, r0
	mov	r6, r1
	.loc 1 124 33 view .LVU194
	bl	SpriteBatch_GetScale
.LVL34:
	.loc 1 124 33 view .LVU195
	mov	r1, r0
	.loc 1 124 6 discriminator 1 view .LVU196
	mov	r0, r4
	bl	__aeabi_idiv
.LVL35:
	.loc 1 125 23 view .LVU197
	ldrh	r9, [r9, #18]
	.loc 1 124 6 discriminator 1 view .LVU198
	mov	r4, r0
.LVL36:
	.loc 1 125 2 is_stmt 1 view .LVU199
	.loc 1 125 33 is_stmt 0 view .LVU200
	bl	SpriteBatch_GetScale
.LVL37:
	.loc 1 125 33 view .LVU201
	mov	r1, r0
	.loc 1 125 6 discriminator 1 view .LVU202
	mov	r0, r9
	bl	__aeabi_idiv
.LVL38:
	.loc 1 126 2 is_stmt 1 view .LVU203
	.loc 1 126 24 is_stmt 0 view .LVU204
	cmp	r4, #0
	cmpne	r0, #0
	movne	ip, #1
	moveq	ip, #0
	.loc 1 126 37 view .LVU205
	mov	r3, r0
	.loc 1 126 42 discriminator 1 view .LVU206
	cmp	r4, r5
	movlt	r0, #0
	andge	r0, ip, #1
.LVL39:
	.loc 1 126 42 discriminator 1 view .LVU207
	cmp	r0, #0
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
	.loc 1 126 77 discriminator 3 view .LVU208
	add	r5, r5, r7
.LVL40:
	.loc 1 126 81 discriminator 5 view .LVU209
	cmp	r3, r6
	cmpge	r5, r4
	movgt	r0, #1
	movle	r0, #0
	pople	{r4, r5, r6, r7, r8, r9, r10, pc}
	.loc 1 126 116 discriminator 7 view .LVU210
	add	r6, r6, r8
.LVL41:
	.loc 1 126 99 discriminator 7 view .LVU211
	cmp	r6, r3
	movle	r0, #0
	movgt	r0, #1
	.loc 1 127 1 view .LVU212
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.cfi_endproc
.LFE227:
	.size	Gui_IsCursorInside, .-Gui_IsCursorInside
	.section	.text.Gui_WasCursorInside,"ax",%progbits
	.align	2
	.global	Gui_WasCursorInside
	.syntax unified
	.arm
	.type	Gui_WasCursorInside, %function
Gui_WasCursorInside:
.LVL42:
.LFB228:
	.loc 1 128 53 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 129 2 view .LVU214
	.loc 1 128 53 is_stmt 0 view .LVU215
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 129 29 view .LVU216
	ldr	r9, .L71
	.loc 1 128 53 view .LVU217
	mov	r8, r3
	mov	r7, r2
	.loc 1 129 29 view .LVU218
	ldrh	r4, [r9, #40]
	.loc 1 128 53 view .LVU219
	mov	r5, r0
	mov	r6, r1
	.loc 1 129 39 view .LVU220
	bl	SpriteBatch_GetScale
.LVL43:
	.loc 1 129 39 view .LVU221
	mov	r1, r0
	.loc 1 129 6 discriminator 1 view .LVU222
	mov	r0, r4
	bl	__aeabi_idiv
.LVL44:
	.loc 1 130 29 view .LVU223
	ldrh	r9, [r9, #42]
	.loc 1 129 6 discriminator 1 view .LVU224
	mov	r4, r0
.LVL45:
	.loc 1 130 2 is_stmt 1 view .LVU225
	.loc 1 130 39 is_stmt 0 view .LVU226
	bl	SpriteBatch_GetScale
.LVL46:
	.loc 1 130 39 view .LVU227
	mov	r1, r0
	.loc 1 130 6 discriminator 1 view .LVU228
	mov	r0, r9
	bl	__aeabi_idiv
.LVL47:
	.loc 1 131 2 is_stmt 1 view .LVU229
	.loc 1 131 27 is_stmt 0 view .LVU230
	cmp	r4, #0
	cmpne	r0, #0
	movne	ip, #1
	moveq	ip, #0
	.loc 1 131 43 view .LVU231
	mov	r3, r0
	.loc 1 131 48 discriminator 1 view .LVU232
	cmp	r4, r5
	movlt	r0, #0
	andge	r0, ip, #1
.LVL48:
	.loc 1 131 48 discriminator 1 view .LVU233
	cmp	r0, #0
	popeq	{r4, r5, r6, r7, r8, r9, r10, pc}
	.loc 1 131 89 discriminator 3 view .LVU234
	add	r5, r5, r7
.LVL49:
	.loc 1 131 93 discriminator 5 view .LVU235
	cmp	r3, r6
	cmpge	r5, r4
	movgt	r0, #1
	movle	r0, #0
	pople	{r4, r5, r6, r7, r8, r9, r10, pc}
	.loc 1 132 26 view .LVU236
	add	r6, r6, r8
.LVL50:
	.loc 1 131 114 discriminator 7 view .LVU237
	cmp	r6, r3
	movle	r0, #0
	movgt	r0, #1
	.loc 1 133 1 view .LVU238
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L72:
	.align	2
.L71:
	.word	.LANCHOR0
	.cfi_endproc
.LFE228:
	.size	Gui_WasCursorInside, .-Gui_WasCursorInside
	.section	.text.Gui_Button,"ax",%progbits
	.align	2
	.global	Gui_Button
	.syntax unified
	.arm
	.type	Gui_Button, %function
Gui_Button:
.LVL51:
.LFB223:
	.loc 1 80 52 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 83 2 view .LVU240
	.loc 1 84 1 view .LVU241
	.loc 1 80 52 is_stmt 0 view .LVU242
	push	{r1, r2, r3}
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	mov	r3, r0	@ float
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 48
	.cfi_offset 4, -48
	.cfi_offset 5, -44
	.cfi_offset 6, -40
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 14, -16
	vpush.64	{d8}
	.cfi_def_cfa_offset 56
	.cfi_offset 80, -56
	.cfi_offset 81, -52
	vmov	s16, r3
	sub	sp, sp, #48
	.cfi_def_cfa_offset 104
	.loc 1 84 1 view .LVU243
	add	r1, sp, #96
	.loc 1 86 18 view .LVU244
	ldr	r0, [sp, #92]
.LVL52:
	.loc 1 84 1 view .LVU245
	str	r1, [sp, #44]
	.loc 1 86 2 is_stmt 1 view .LVU246
	.loc 1 86 18 is_stmt 0 view .LVU247
	bl	SpriteBatch_CalcTextWidthVargs
.LVL53:
	.loc 1 90 40 view .LVU248
	vcmpe.f32	s16, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 88 18 view .LVU249
	ldr	r5, .L83
	.loc 1 90 40 discriminator 1 view .LVU250
	addls	r6, r0, #8
.LBB34:
.LBB35:
	.loc 1 31 66 view .LVU251
	vldrhi.32	s15, [r5, #80]	@ int
	vcvthi.f32.s32	s15, s15
	.loc 1 31 98 view .LVU252
	vmulhi.f32	s15, s15, s16
	.loc 1 31 60 view .LVU253
	vcvthi.s32.f32	s15, s15
	vmovhi	r6, s15	@ int
.LBE35:
.LBE34:
	.loc 1 88 6 view .LVU254
	ldr	r3, [r5, #56]
	ldr	r7, [r5, #64]
	.loc 1 89 18 view .LVU255
	ldr	r2, [r5, #68]
	.loc 1 88 6 view .LVU256
	add	r7, r7, r3
	.loc 1 89 18 view .LVU257
	ldr	r3, [r5, #60]
	.loc 1 86 18 view .LVU258
	str	r0, [sp, #32]
.LVL54:
	.loc 1 88 2 is_stmt 1 view .LVU259
	.loc 1 89 2 view .LVU260
	.loc 1 89 18 is_stmt 0 view .LVU261
	add	r3, r2, r3
	.loc 1 89 6 view .LVU262
	sub	fp, r3, #6
.LVL55:
	.loc 1 90 2 is_stmt 1 view .LVU263
.LBB37:
.LBI34:
	.loc 1 31 19 view .LVU264
.LBB36:
	.loc 1 31 53 view .LVU265
	.loc 1 31 53 is_stmt 0 view .LVU266
.LBE36:
.LBE37:
	.loc 1 92 1 is_stmt 1 view .LVU267
	.loc 1 92 16 is_stmt 0 view .LVU268
	mov	r2, r6
	mov	r1, fp
	.loc 1 89 18 view .LVU269
	str	r3, [sp, #28]
	.loc 1 92 16 view .LVU270
	mov	r0, r7
.LVL56:
	.loc 1 92 16 view .LVU271
	mov	r3, #20
	bl	Gui_IsCursorInside
.LVL57:
	mov	r4, r0
	.loc 1 96 2 view .LVU272
	mov	r0, #3
.LVL58:
	.loc 1 94 2 is_stmt 1 view .LVU273
	.loc 1 96 2 is_stmt 0 view .LVU274
	bl	SpriteBatch_BindGuiTexture
.LVL59:
	.loc 1 97 2 view .LVU275
	mov	r8, #20
	mov	r9, #8
	mov	r3, #0
	.loc 1 97 62 view .LVU276
	rsb	r4, r4, #0
.LVL60:
	.loc 1 97 62 view .LVU277
	and	r4, r4, #40
	.loc 1 97 2 view .LVU278
	add	r4, r4, #46
	.loc 1 94 6 view .LVU279
	sub	r10, r6, #16
	.loc 1 96 2 is_stmt 1 view .LVU280
	.loc 1 97 2 view .LVU281
	mvn	r2, #2
	mov	r1, fp
	mov	r0, r7
	str	r3, [sp, #4]
	str	r8, [sp, #16]
	mov	r3, r9
	str	r9, [sp, #12]
	str	r4, [sp, #8]
	str	r8, [sp]
	bl	SpriteBatch_PushQuad
.LVL61:
	.loc 1 98 2 view .LVU282
	add	r0, r7, r9
	mvn	r2, #2
	mov	r3, r10
	mov	r1, fp
	strd	r8, [sp]
	str	r8, [sp, #16]
	str	r10, [sp, #12]
	str	r4, [sp, #8]
	str	r0, [sp, #36]
	bl	SpriteBatch_PushQuad
.LVL62:
	.loc 1 100 2 view .LVU283
	mov	r2, #192
	ldr	r0, [sp, #36]
	mov	r3, r9
	mov	r1, fp
	add	r0, r0, r10
	str	r2, [sp, #4]
	str	r4, [sp, #8]
	mvn	r2, #2
	str	r8, [sp, #16]
	str	r9, [sp, #12]
	str	r8, [sp]
	bl	SpriteBatch_PushQuad
.LVL63:
	.loc 1 103 2 view .LVU284
	mov	r3, #0
	ldr	r2, [sp, #92]
	str	r3, [sp, #8]
	.loc 1 103 51 is_stmt 0 view .LVU285
	ldr	r3, [sp, #32]
	.loc 1 103 2 view .LVU286
	str	r2, [sp, #12]
	.loc 1 103 51 view .LVU287
	add	r0, r3, r3, lsr #31
	.loc 1 103 2 view .LVU288
	mov	r2, #1
	mvn	r3, #-2147483648
	strd	r2, [sp]
	ldr	r3, [sp, #44]
	.loc 1 103 51 view .LVU289
	asr	r0, r0, #1
	.loc 1 103 2 view .LVU290
	str	r3, [sp, #16]
	.loc 1 103 35 view .LVU291
	add	r3, r6, r6, lsr #31
	.loc 1 103 39 view .LVU292
	rsb	r0, r0, r3, asr #1
	.loc 1 103 2 view .LVU293
	mvn	r2, #0
	ldr	r3, .L83+4
	ldr	r1, [sp, #28]
	add	r0, r0, r7
	bl	SpriteBatch_PushTextVargs
.LVL64:
	.loc 1 105 1 is_stmt 1 view .LVU294
	.loc 1 107 2 view .LVU295
	.loc 1 108 96 is_stmt 0 view .LVU296
	ldr	r3, [r5, #76]
	.loc 1 107 12 view .LVU297
	ldr	r2, [r5, #56]
	.loc 1 108 96 view .LVU298
	cmp	r3, r8
	movlt	r3, r8
	.loc 1 108 28 view .LVU299
	str	r3, [r5, #76]
	.loc 1 107 17 view .LVU300
	ldr	r3, [r5, #48]
	.loc 1 110 19 view .LVU301
	ldr	r0, [r5, #8]
	.loc 1 107 17 view .LVU302
	add	r3, r6, r3
	.loc 1 107 12 view .LVU303
	add	r3, r3, r2
	.loc 1 110 5 view .LVU304
	ands	r0, r0, #1048576
	.loc 1 107 12 view .LVU305
	str	r3, [r5, #56]
	.loc 1 108 2 is_stmt 1 view .LVU306
	.loc 1 110 2 view .LVU307
	.loc 1 110 5 is_stmt 0 view .LVU308
	bne	.L82
.L77:
	.loc 1 113 1 view .LVU309
	add	sp, sp, #48
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	@ sp needed
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 48
.LVL65:
	.loc 1 113 1 view .LVU310
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 12
.LVL66:
	.loc 1 113 1 view .LVU311
	add	sp, sp, #12
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
.LVL67:
.L82:
	.cfi_restore_state
	.loc 1 110 34 discriminator 1 view .LVU312
	mov	r3, r8
	mov	r2, r6
	mov	r1, fp
	mov	r0, r7
	bl	Gui_WasCursorInside
.LVL68:
	b	.L77
.L84:
	.align	2
.L83:
	.word	.LANCHOR0
	.word	32767
	.cfi_endproc
.LFE223:
	.size	Gui_Button, .-Gui_Button
	.section	.text.Gui_EnteredCursorInside,"ax",%progbits
	.align	2
	.global	Gui_EnteredCursorInside
	.syntax unified
	.arm
	.type	Gui_EnteredCursorInside, %function
Gui_EnteredCursorInside:
.LVL69:
.LFB229:
	.loc 1 134 57 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 135 2 view .LVU314
	.loc 1 134 57 is_stmt 0 view .LVU315
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 135 29 view .LVU316
	ldr	r4, .L89
	.loc 1 134 57 view .LVU317
	mov	r7, r2
	mov	r8, r3
	.loc 1 135 29 view .LVU318
	ldrh	r9, [r4, #40]
	.loc 1 134 57 view .LVU319
	mov	r6, r1
	mov	r5, r0
	.loc 1 135 39 view .LVU320
	bl	SpriteBatch_GetScale
.LVL70:
	.loc 1 135 39 view .LVU321
	mov	r1, r0
	.loc 1 135 6 discriminator 1 view .LVU322
	mov	r0, r9
	bl	__aeabi_idiv
.LVL71:
	.loc 1 136 29 view .LVU323
	ldrh	r9, [r4, #42]
	.loc 1 135 6 discriminator 1 view .LVU324
	mov	r4, r0
.LVL72:
	.loc 1 136 2 is_stmt 1 view .LVU325
	.loc 1 136 39 is_stmt 0 view .LVU326
	bl	SpriteBatch_GetScale
.LVL73:
	.loc 1 136 39 view .LVU327
	mov	r1, r0
.LVL74:
	.loc 1 138 2 is_stmt 1 view .LVU328
	.loc 1 136 6 is_stmt 0 discriminator 1 view .LVU329
	mov	r0, r9
.LVL75:
	.loc 1 136 6 discriminator 1 view .LVU330
	bl	__aeabi_idiv
.LVL76:
	.loc 1 138 50 view .LVU331
	orrs	r0, r0, r4
	beq	.L88
	.loc 1 139 1 view .LVU332
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L88:
	.loc 1 138 53 discriminator 1 view .LVU333
	mov	r3, r8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r5
	.loc 1 139 1 view .LVU334
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_restore 14
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL77:
	.loc 1 138 53 discriminator 1 view .LVU335
	b	Gui_IsCursorInside
.LVL78:
.L90:
	.loc 1 138 53 discriminator 1 view .LVU336
	.align	2
.L89:
	.word	.LANCHOR0
	.cfi_endproc
.LFE229:
	.size	Gui_EnteredCursorInside, .-Gui_EnteredCursorInside
	.section	.text.Gui_GetCursorMovement,"ax",%progbits
	.align	2
	.global	Gui_GetCursorMovement
	.syntax unified
	.arm
	.type	Gui_GetCursorMovement, %function
Gui_GetCursorMovement:
.LVL79:
.LFB230:
	.loc 1 140 44 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 141 2 view .LVU338
	.loc 1 140 44 is_stmt 0 view .LVU339
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 141 25 view .LVU340
	ldr	r6, .L99
	.loc 1 140 44 view .LVU341
	mov	r5, r0
	.loc 1 141 5 view .LVU342
	ldr	r3, [r6, #16]
	.loc 1 140 44 view .LVU343
	mov	r4, r1
	.loc 1 141 5 view .LVU344
	cmp	r3, #0
	beq	.L92
	.loc 1 141 47 discriminator 1 view .LVU345
	ldr	r3, [r6, #40]
	cmp	r3, #0
	bne	.L93
.L92:
	.loc 1 142 3 is_stmt 1 view .LVU346
	.loc 1 142 6 is_stmt 0 view .LVU347
	mov	r2, #0
	.loc 1 144 3 view .LVU348
	mov	r3, r2
	.loc 1 142 6 view .LVU349
	str	r2, [r5]
	.loc 1 143 3 is_stmt 1 view .LVU350
	.loc 1 144 3 view .LVU351
	.loc 1 143 6 is_stmt 0 view .LVU352
	str	r3, [r4]
	.loc 1 148 1 view .LVU353
	pop	{r4, r5, r6, r7, r8, pc}
.L93:
	.loc 1 146 2 is_stmt 1 view .LVU354
	.loc 1 146 12 is_stmt 0 view .LVU355
	ldrh	r7, [r6, #16]
	.loc 1 146 22 view .LVU356
	bl	SpriteBatch_GetScale
.LVL80:
	.loc 1 146 22 view .LVU357
	mov	r1, r0
	.loc 1 146 20 discriminator 1 view .LVU358
	mov	r0, r7
	bl	__aeabi_idiv
.LVL81:
	.loc 1 146 55 discriminator 1 view .LVU359
	ldrh	r8, [r6, #40]
	.loc 1 146 20 discriminator 1 view .LVU360
	mov	r7, r0
	.loc 1 146 65 discriminator 1 view .LVU361
	bl	SpriteBatch_GetScale
.LVL82:
	mov	r1, r0
	.loc 1 146 63 discriminator 2 view .LVU362
	mov	r0, r8
	bl	__aeabi_idiv
.LVL83:
	.loc 1 146 45 discriminator 2 view .LVU363
	sub	r7, r7, r0
	.loc 1 146 5 discriminator 2 view .LVU364
	str	r7, [r5]
	.loc 1 147 2 is_stmt 1 view .LVU365
	.loc 1 147 12 is_stmt 0 view .LVU366
	ldrh	r5, [r6, #18]
.LVL84:
	.loc 1 147 22 view .LVU367
	bl	SpriteBatch_GetScale
.LVL85:
	mov	r1, r0
	.loc 1 147 20 discriminator 1 view .LVU368
	mov	r0, r5
	bl	__aeabi_idiv
.LVL86:
	.loc 1 147 55 discriminator 1 view .LVU369
	ldrh	r6, [r6, #42]
	.loc 1 147 20 discriminator 1 view .LVU370
	mov	r5, r0
	.loc 1 147 65 discriminator 1 view .LVU371
	bl	SpriteBatch_GetScale
.LVL87:
	mov	r1, r0
	.loc 1 147 63 discriminator 2 view .LVU372
	mov	r0, r6
	bl	__aeabi_idiv
.LVL88:
	.loc 1 147 45 discriminator 2 view .LVU373
	sub	r3, r5, r0
	.loc 1 143 6 view .LVU374
	str	r3, [r4]
	.loc 1 148 1 view .LVU375
	pop	{r4, r5, r6, r7, r8, pc}
.L100:
	.align	2
.L99:
	.word	.LANCHOR0
	.cfi_endproc
.LFE230:
	.size	Gui_GetCursorMovement, .-Gui_GetCursorMovement
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	input, %object
	.size	input, 24
input:
	.space	24
	.type	oldInput, %object
	.size	oldInput, 24
oldInput:
	.space	24
	.type	paddingX, %object
	.size	paddingX, 4
paddingX:
	.space	4
	.type	paddingY, %object
	.size	paddingY, 4
paddingY:
	.space	4
	.type	relativeX, %object
	.size	relativeX, 4
relativeX:
	.space	4
	.type	relativeY, %object
	.size	relativeY, 4
relativeY:
	.space	4
	.type	windowX, %object
	.size	windowX, 4
windowX:
	.space	4
	.type	windowY, %object
	.size	windowY, 4
windowY:
	.space	4
	.type	currentRow, %object
	.size	currentRow, 12
currentRow:
	.space	12
	.text
.Letext0:
	.file 2 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/InputData.h"
	.file 5 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stdarg.h"
	.file 6 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 7 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 8 "C:/devkitPro/libctru/include/3ds/services/csnd.h"
	.file 9 "C:/devkitPro/libctru/include/3ds/services/hid.h"
	.file 10 "C:/devkitPro/libctru/include/3ds/services/ndm.h"
	.file 11 "C:/devkitPro/libctru/include/3ds/gpu/enums.h"
	.file 12 "C:/devkitPro/libctru/include/3ds/ndsp/channel.h"
	.file 13 "C:/devkitPro/libctru/include/3ds/applets/error.h"
	.file 14 "C:/Users/Elias/CLionProjects/3DSCraft/include/gui/SpriteBatch.h"
	.file 15 "C:/devkitPro/libctru/include/3ds/types.h"
	.file 16 "C:/devkitPro/devkitARM/arm-none-eabi/include/string.h"
	.file 17 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf0c
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x22
	.4byte	.LASF183
	.byte	0x1d
	.4byte	.LASF184
	.4byte	.LASF185
	.4byte	.LLRL47
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0xa
	.4byte	.LASF7
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x5c
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0xa
	.4byte	.LASF8
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x42
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0xa
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x82
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x50
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x63
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x76
	.uleb128 0x1c
	.byte	0x18
	.byte	0x4
	.byte	0x5
	.4byte	0x139
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6
	.byte	0xb
	.4byte	0xaf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x6
	.byte	0x15
	.4byte	0xaf
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6
	.byte	0x1f
	.4byte	0xaf
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7
	.byte	0xa
	.4byte	0x97
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7
	.byte	0x16
	.4byte	0x97
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x8
	.byte	0xb
	.4byte	0xa3
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x8
	.byte	0x13
	.4byte	0xa3
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x9
	.byte	0xa
	.4byte	0x97
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.4byte	0x97
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0xa
	.byte	0x3
	.4byte	0xbb
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.4byte	0x151
	.uleb128 0x24
	.4byte	.LASF186
	.byte	0x4
	.byte	0x11
	.byte	0
	.4byte	0x168
	.uleb128 0x25
	.4byte	.LASF187
	.4byte	0x168
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0x67
	.byte	0x18
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0xc
	.byte	0x1
	.4byte	0x3b
	.byte	0x7
	.byte	0xa
	.byte	0x6
	.4byte	0x287
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x27
	.byte	0
	.uleb128 0x1d
	.4byte	0x293
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF70
	.uleb128 0x27
	.4byte	0x28c
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF71
	.uleb128 0x1d
	.4byte	0x90
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF72
	.uleb128 0x1e
	.ascii	"u32\000"
	.byte	0xf
	.byte	0x17
	.byte	0x12
	.4byte	0xaf
	.uleb128 0xc
	.byte	0x1
	.4byte	0x3b
	.byte	0x8
	.byte	0x28
	.byte	0x1
	.4byte	0x2dd
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x3b
	.byte	0x8
	.byte	0x31
	.byte	0x1
	.4byte	0x303
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2d
	.byte	0x9
	.byte	0xb
	.byte	0x1
	.4byte	0x3e0
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF89
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF90
	.2byte	0x200
	.uleb128 0xd
	.4byte	.LASF91
	.2byte	0x400
	.uleb128 0xd
	.4byte	.LASF92
	.2byte	0x800
	.uleb128 0xd
	.4byte	.LASF93
	.2byte	0x4000
	.uleb128 0xd
	.4byte	.LASF94
	.2byte	0x8000
	.uleb128 0x7
	.4byte	.LASF95
	.4byte	0x100000
	.uleb128 0x7
	.4byte	.LASF96
	.4byte	0x1000000
	.uleb128 0x7
	.4byte	.LASF97
	.4byte	0x2000000
	.uleb128 0x7
	.4byte	.LASF98
	.4byte	0x4000000
	.uleb128 0x7
	.4byte	.LASF99
	.4byte	0x8000000
	.uleb128 0x7
	.4byte	.LASF100
	.4byte	0x10000000
	.uleb128 0x7
	.4byte	.LASF101
	.4byte	0x20000000
	.uleb128 0x7
	.4byte	.LASF102
	.4byte	0x40000000
	.uleb128 0x7
	.4byte	.LASF103
	.4byte	0x80000000
	.uleb128 0x7
	.4byte	.LASF104
	.4byte	0x40000040
	.uleb128 0x7
	.4byte	.LASF105
	.4byte	0x80000080
	.uleb128 0x7
	.4byte	.LASF106
	.4byte	0x20000020
	.uleb128 0x7
	.4byte	.LASF107
	.4byte	0x10000010
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x3b
	.byte	0xa
	.byte	0x21
	.byte	0xe
	.4byte	0x406
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.byte	0x7
	.byte	0x1
	.4byte	0x3b
	.byte	0xb
	.2byte	0x1f6
	.byte	0x1
	.4byte	0x422
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x3b
	.byte	0xc
	.byte	0xb
	.byte	0x1
	.4byte	0x442
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.4byte	0x42
	.byte	0xd
	.byte	0x9
	.byte	0x1
	.4byte	0x45e
	.uleb128 0xd
	.4byte	.LASF117
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF118
	.2byte	0x200
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x3b
	.byte	0xe
	.byte	0x10
	.byte	0xe
	.4byte	0x48a
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF124
	.byte	0xe
	.byte	0x10
	.byte	0x75
	.4byte	0x45e
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x9
	.byte	0x12
	.4byte	0x139
	.uleb128 0x5
	.byte	0x3
	.4byte	oldInput
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xa
	.byte	0x12
	.4byte	0x139
	.uleb128 0x5
	.byte	0x3
	.4byte	input
	.uleb128 0x1c
	.byte	0xc
	.byte	0x1
	.byte	0xc
	.4byte	0x4e8
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.4byte	0x90
	.byte	0
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	0x90
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x1e
	.ascii	"Row\000"
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.4byte	0x4b8
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x12
	.byte	0xc
	.4byte	0x4e8
	.uleb128 0x5
	.byte	0x3
	.4byte	currentRow
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x13
	.byte	0xc
	.4byte	0x90
	.uleb128 0x5
	.byte	0x3
	.4byte	relativeX
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x13
	.byte	0x17
	.4byte	0x90
	.uleb128 0x5
	.byte	0x3
	.4byte	relativeY
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x14
	.byte	0xc
	.4byte	0x90
	.uleb128 0x5
	.byte	0x3
	.4byte	windowX
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x14
	.byte	0x15
	.4byte	0x90
	.uleb128 0x5
	.byte	0x3
	.4byte	windowY
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x15
	.byte	0xc
	.4byte	0x90
	.uleb128 0x5
	.byte	0x3
	.4byte	paddingX
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x15
	.byte	0x16
	.4byte	0x90
	.uleb128 0x5
	.byte	0x3
	.4byte	paddingY
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x24
	.4byte	0x90
	.4byte	0x57b
	.uleb128 0x12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x17
	.4byte	0x5b3
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x12
	.4byte	0x5c3
	.uleb128 0x3
	.4byte	0x48a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF140
	.byte	0xe
	.byte	0x1b
	.byte	0x5
	.4byte	0x90
	.4byte	0x601
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x97
	.uleb128 0x3
	.4byte	0x298
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x29f
	.uleb128 0x3
	.4byte	0x287
	.uleb128 0x3
	.4byte	0x16a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF141
	.byte	0xe
	.byte	0x1e
	.byte	0x5
	.4byte	0x90
	.4byte	0x61c
	.uleb128 0x3
	.4byte	0x287
	.uleb128 0x3
	.4byte	0x16a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0x27
	.4byte	0x90
	.4byte	0x62c
	.uleb128 0x12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF143
	.byte	0x26
	.4byte	0x90
	.4byte	0x63c
	.uleb128 0x12
	.byte	0
	.uleb128 0x16
	.4byte	.LASF144
	.byte	0x10
	.byte	0x21
	.byte	0x8
	.4byte	0x168
	.4byte	0x65c
	.uleb128 0x3
	.4byte	0x168
	.uleb128 0x3
	.4byte	0x90
	.uleb128 0x3
	.4byte	0x176
	.byte	0
	.uleb128 0xf
	.4byte	.LASF152
	.byte	0x8c
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6db
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x8c
	.byte	0x21
	.4byte	0x29f
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x8c
	.byte	0x29
	.4byte	0x29f
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x4
	.4byte	.LVL80
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL81
	.4byte	0xf06
	.uleb128 0x4
	.4byte	.LVL82
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL83
	.4byte	0xf06
	.uleb128 0x4
	.4byte	.LVL85
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL86
	.4byte	0xf06
	.uleb128 0x4
	.4byte	.LVL87
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL88
	.4byte	0xf06
	.byte	0
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x86
	.4byte	0x298
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c0
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x86
	.byte	0x21
	.4byte	0x90
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x86
	.byte	0x28
	.4byte	0x90
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x86
	.byte	0x2f
	.4byte	0x90
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x5
	.ascii	"h\000"
	.byte	0x86
	.byte	0x36
	.4byte	0x90
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x87
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x88
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x4
	.4byte	.LVL70
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL71
	.4byte	0xf06
	.uleb128 0x4
	.4byte	.LVL73
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL76
	.4byte	0xf06
	.uleb128 0x29
	.4byte	.LVL78
	.4byte	0x867
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x2
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0x80
	.4byte	0x298
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x867
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x80
	.byte	0x1d
	.4byte	0x90
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x80
	.byte	0x24
	.4byte	0x90
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x80
	.byte	0x2b
	.4byte	0x90
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x5
	.ascii	"h\000"
	.byte	0x80
	.byte	0x32
	.4byte	0x90
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x81
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x82
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x4
	.4byte	.LVL43
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL44
	.4byte	0xf06
	.uleb128 0x4
	.4byte	.LVL46
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL47
	.4byte	0xf06
	.byte	0
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0x7b
	.4byte	0x298
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90e
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x7b
	.byte	0x1c
	.4byte	0x90
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x7b
	.byte	0x23
	.4byte	0x90
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x7b
	.byte	0x2a
	.4byte	0x90
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x5
	.ascii	"h\000"
	.byte	0x7b
	.byte	0x31
	.4byte	0x90
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x7c
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0x7d
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL35
	.4byte	0xf06
	.uleb128 0x4
	.4byte	.LVL37
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL38
	.4byte	0xf06
	.byte	0
	.uleb128 0xf
	.4byte	.LASF153
	.byte	0x76
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x931
	.uleb128 0x17
	.4byte	.LASF155
	.byte	0x76
	.byte	0x1e
	.4byte	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0x74
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x951
	.uleb128 0x18
	.ascii	"y\000"
	.byte	0x74
	.byte	0x1c
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.4byte	.LASF156
	.byte	0x73
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x997
	.uleb128 0x17
	.4byte	.LASF157
	.byte	0x73
	.byte	0x16
	.4byte	0x34
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x2a
	.4byte	0xeb2
	.4byte	.LBI32
	.byte	.LVU159
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x73
	.byte	0x2c
	.uleb128 0x13
	.4byte	0xec3
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0x50
	.4byte	0x298
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc18
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0x50
	.byte	0x16
	.4byte	0x34
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0x50
	.byte	0x28
	.4byte	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.uleb128 0x20
	.ascii	"vl\000"
	.byte	0x53
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x56
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x19
	.ascii	"x\000"
	.byte	0x58
	.4byte	0x90
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x19
	.ascii	"y\000"
	.byte	0x59
	.4byte	0x90
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x19
	.ascii	"w\000"
	.byte	0x5a
	.4byte	0x90
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0x5c
	.byte	0x6
	.4byte	0x298
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x5e
	.byte	0x6
	.4byte	0x90
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1a
	.4byte	0xeb2
	.4byte	.LBI34
	.byte	.LVU264
	.4byte	.LLRL37
	.byte	0x5a
	.byte	0x2a
	.4byte	0xa62
	.uleb128 0x13
	.4byte	0xec3
	.4byte	.LLST38
	.4byte	.LVUS38
	.byte	0
	.uleb128 0x10
	.4byte	.LVL53
	.4byte	0x601
	.4byte	0xa7d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL57
	.4byte	0x867
	.4byte	0xaa2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x10
	.4byte	.LVL59
	.4byte	0x5b3
	.4byte	0xab5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x10
	.4byte	.LVL61
	.4byte	0x57b
	.4byte	0xafd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xfd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL62
	.4byte	0x57b
	.4byte	0xb48
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xfd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL63
	.4byte	0x57b
	.4byte	0xb96
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xfd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL64
	.4byte	0x5c3
	.4byte	0xbf5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x4f
	.byte	0x25
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7fff
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL68
	.4byte	0x7c0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF164
	.byte	0x3e
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd64
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0x3e
	.byte	0x16
	.4byte	0x34
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0x3e
	.byte	0x20
	.4byte	0x298
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0x3e
	.byte	0x30
	.4byte	0x97
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0x3e
	.byte	0x3c
	.4byte	0x298
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0x3e
	.byte	0x50
	.4byte	0x287
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x12
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x3f
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0x40
	.byte	0x6
	.4byte	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.ascii	"vl\000"
	.byte	0x42
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x44
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0x49
	.byte	0x6
	.4byte	0x90
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2b
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0xd10
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x46
	.byte	0x7
	.4byte	0x90
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x1b
	.4byte	.LVL27
	.4byte	0x601
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0xeb2
	.4byte	.LBI23
	.byte	.LVU110
	.4byte	.LLRL15
	.byte	0x3f
	.byte	0x47
	.4byte	0xd32
	.uleb128 0x13
	.4byte	0xec3
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL22
	.4byte	0x5c3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7fff
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF179
	.byte	0x3c
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.byte	0x1
	.4byte	0xd96
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x17
	.4byte	0x90
	.uleb128 0x21
	.4byte	.LASF174
	.byte	0x22
	.4byte	0x90
	.byte	0
	.uleb128 0xf
	.4byte	.LASF175
	.byte	0x32
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe01
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x32
	.byte	0x1d
	.4byte	0x90
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0x32
	.byte	0x28
	.4byte	0x90
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1a
	.4byte	0xd74
	.4byte	.LBI11
	.byte	.LVU65
	.4byte	.LLRL4
	.byte	0x34
	.byte	0x2
	.4byte	0xdf7
	.uleb128 0x2d
	.4byte	0xd8b
	.uleb128 0x13
	.4byte	0xd81
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x4
	.4byte	.LVL8
	.4byte	0x62c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x30
	.4byte	0x90
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe34
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x30
	.byte	0x1e
	.4byte	0x34
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x4
	.4byte	.LVL5
	.4byte	0x61c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0x2f
	.4byte	0x90
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe67
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x2f
	.byte	0x1d
	.4byte	0x34
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x4
	.4byte	.LVL2
	.4byte	0x62c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF178
	.byte	0x2a
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe92
	.uleb128 0x18
	.ascii	"x\000"
	.byte	0x2a
	.byte	0x15
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x18
	.ascii	"y\000"
	.byte	0x2a
	.byte	0x1c
	.4byte	0x90
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x14
	.4byte	.LASF180
	.byte	0x23
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF181
	.byte	0x21
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF188
	.byte	0x1
	.byte	0x1f
	.byte	0x13
	.4byte	0x90
	.byte	0x3
	.4byte	0xece
	.uleb128 0x2f
	.ascii	"s\000"
	.byte	0x1
	.byte	0x1f
	.byte	0x30
	.4byte	0x34
	.byte	0
	.uleb128 0x14
	.4byte	.LASF182
	.byte	0x17
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.4byte	0xd74
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf06
	.uleb128 0x31
	.4byte	0xd81
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	0xd8b
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x32
	.4byte	.LASF189
	.4byte	.LASF189
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.sleb128 5
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
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.sleb128 6
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 55
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
.LVUS45:
	.uleb128 0
	.uleb128 .LVU357
	.uleb128 .LVU357
	.uleb128 .LVU367
	.uleb128 .LVU367
	.uleb128 0
.LLST45:
	.byte	0x6
	.4byte	.LVL79
	.byte	0x4
	.uleb128 .LVL79-.LVL79
	.uleb128 .LVL80-1-.LVL79
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL80-1-.LVL79
	.uleb128 .LVL84-.LVL79
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL84-.LVL79
	.uleb128 .LFE230-.LVL79
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
.LVUS46:
	.uleb128 0
	.uleb128 .LVU357
	.uleb128 .LVU357
	.uleb128 0
.LLST46:
	.byte	0x6
	.4byte	.LVL79
	.byte	0x4
	.uleb128 .LVL79-.LVL79
	.uleb128 .LVL80-1-.LVL79
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL80-1-.LVL79
	.uleb128 .LFE230-.LVL79
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 0
.LLST39:
	.byte	0x6
	.4byte	.LVL69
	.byte	0x4
	.uleb128 .LVL69-.LVL69
	.uleb128 .LVL70-1-.LVL69
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL70-1-.LVL69
	.uleb128 .LVL77-.LVL69
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL77-.LVL69
	.uleb128 .LVL78-1-.LVL69
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL78-1-.LVL69
	.uleb128 .LFE229-.LVL69
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
.LVUS40:
	.uleb128 0
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 0
.LLST40:
	.byte	0x6
	.4byte	.LVL69
	.byte	0x4
	.uleb128 .LVL69-.LVL69
	.uleb128 .LVL70-1-.LVL69
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL70-1-.LVL69
	.uleb128 .LVL77-.LVL69
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL77-.LVL69
	.uleb128 .LVL78-1-.LVL69
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL78-1-.LVL69
	.uleb128 .LFE229-.LVL69
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
.LVUS41:
	.uleb128 0
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 0
.LLST41:
	.byte	0x6
	.4byte	.LVL69
	.byte	0x4
	.uleb128 .LVL69-.LVL69
	.uleb128 .LVL70-1-.LVL69
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL70-1-.LVL69
	.uleb128 .LVL77-.LVL69
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL77-.LVL69
	.uleb128 .LVL78-1-.LVL69
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL78-1-.LVL69
	.uleb128 .LFE229-.LVL69
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x2
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 0
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU336
	.uleb128 .LVU336
	.uleb128 0
.LLST42:
	.byte	0x6
	.4byte	.LVL69
	.byte	0x4
	.uleb128 .LVL69-.LVL69
	.uleb128 .LVL70-1-.LVL69
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL70-1-.LVL69
	.uleb128 .LVL77-.LVL69
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL77-.LVL69
	.uleb128 .LVL78-1-.LVL69
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL78-1-.LVL69
	.uleb128 .LFE229-.LVL69
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 .LVU325
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU335
.LLST43:
	.byte	0x6
	.4byte	.LVL72
	.byte	0x4
	.uleb128 .LVL72-.LVL72
	.uleb128 .LVL73-1-.LVL72
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL73-1-.LVL72
	.uleb128 .LVL77-.LVL72
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS44:
	.uleb128 .LVU328
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU331
.LLST44:
	.byte	0x6
	.4byte	.LVL74
	.byte	0x4
	.uleb128 .LVL74-.LVL74
	.uleb128 .LVL75-.LVL74
	.uleb128 0x6
	.byte	0x79
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.LVL74
	.uleb128 .LVL76-1-.LVL74
	.uleb128 0x6
	.byte	0x79
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 0
.LLST25:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL43-1-.LVL42
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL43-1-.LVL42
	.uleb128 .LVL49-.LVL42
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL49-.LVL42
	.uleb128 .LFE228-.LVL42
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
.LVUS26:
	.uleb128 0
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 0
.LLST26:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL43-1-.LVL42
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL43-1-.LVL42
	.uleb128 .LVL50-.LVL42
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL50-.LVL42
	.uleb128 .LFE228-.LVL42
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
.LVUS27:
	.uleb128 0
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST27:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL43-1-.LVL42
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL43-1-.LVL42
	.uleb128 .LFE228-.LVL42
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST28:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL43-1-.LVL42
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL43-1-.LVL42
	.uleb128 .LFE228-.LVL42
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS29:
	.uleb128 .LVU225
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 0
.LLST29:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL46-1-.LVL45
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL46-1-.LVL45
	.uleb128 .LFE228-.LVL45
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS30:
	.uleb128 .LVU229
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 0
.LLST30:
	.byte	0x6
	.4byte	.LVL47
	.byte	0x4
	.uleb128 .LVL47-.LVL47
	.uleb128 .LVL48-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL48-.LVL47
	.uleb128 .LFE228-.LVL47
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL33
	.byte	0x4
	.uleb128 .LVL33-.LVL33
	.uleb128 .LVL34-1-.LVL33
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL34-1-.LVL33
	.uleb128 .LVL40-.LVL33
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL40-.LVL33
	.uleb128 .LFE227-.LVL33
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
.LVUS20:
	.uleb128 0
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL33
	.byte	0x4
	.uleb128 .LVL33-.LVL33
	.uleb128 .LVL34-1-.LVL33
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL34-1-.LVL33
	.uleb128 .LVL41-.LVL33
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL41-.LVL33
	.uleb128 .LFE227-.LVL33
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
.LVUS21:
	.uleb128 0
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL33
	.byte	0x4
	.uleb128 .LVL33-.LVL33
	.uleb128 .LVL34-1-.LVL33
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL34-1-.LVL33
	.uleb128 .LFE227-.LVL33
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL33
	.byte	0x4
	.uleb128 .LVL33-.LVL33
	.uleb128 .LVL34-1-.LVL33
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL34-1-.LVL33
	.uleb128 .LFE227-.LVL33
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS23:
	.uleb128 .LVU199
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 0
.LLST23:
	.byte	0x6
	.4byte	.LVL36
	.byte	0x4
	.uleb128 .LVL36-.LVL36
	.uleb128 .LVL37-1-.LVL36
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL37-1-.LVL36
	.uleb128 .LFE227-.LVL36
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS24:
	.uleb128 .LVU203
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 0
.LLST24:
	.byte	0x6
	.4byte	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL39-.LVL38
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL39-.LVL38
	.uleb128 .LFE227-.LVL38
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS18:
	.uleb128 .LVU159
	.uleb128 .LVU161
.LLST18:
	.byte	0x8
	.4byte	.LVL31
	.uleb128 .LVL31-.LVL31
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 0
.LLST31:
	.byte	0x6
	.4byte	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL52-.LVL51
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL52-.LVL51
	.uleb128 .LVL53-1-.LVL51
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL53-1-.LVL51
	.uleb128 .LVL65-.LVL51
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL65-.LVL51
	.uleb128 .LVL67-.LVL51
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL51
	.uleb128 .LFE223-.LVL51
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0
.LVUS32:
	.uleb128 .LVU259
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 0
.LLST32:
	.byte	0x6
	.4byte	.LVL54
	.byte	0x4
	.uleb128 .LVL54-.LVL54
	.uleb128 .LVL56-.LVL54
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL56-.LVL54
	.uleb128 .LFE223-.LVL54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
.LVUS33:
	.uleb128 .LVU260
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 0
.LLST33:
	.byte	0x6
	.4byte	.LVL54
	.byte	0x4
	.uleb128 .LVL54-.LVL54
	.uleb128 .LVL66-.LVL54
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL66-.LVL54
	.uleb128 .LVL67-.LVL54
	.uleb128 0x7
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL54
	.uleb128 .LFE223-.LVL54
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS34:
	.uleb128 .LVU263
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 0
.LLST34:
	.byte	0x6
	.4byte	.LVL55
	.byte	0x4
	.uleb128 .LVL55-.LVL55
	.uleb128 .LVL66-.LVL55
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL66-.LVL55
	.uleb128 .LVL67-.LVL55
	.uleb128 0x7
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x36
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL55
	.uleb128 .LFE223-.LVL55
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS35:
	.uleb128 .LVU266
	.uleb128 .LVU311
	.uleb128 .LVU312
	.uleb128 0
.LLST35:
	.byte	0x6
	.4byte	.LVL55
	.byte	0x4
	.uleb128 .LVL55-.LVL55
	.uleb128 .LVL66-.LVL55
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL67-.LVL55
	.uleb128 .LFE223-.LVL55
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS36:
	.uleb128 .LVU273
	.uleb128 .LVU277
.LLST36:
	.byte	0x8
	.4byte	.LVL58
	.uleb128 .LVL60-.LVL58
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS38:
	.uleb128 .LVU264
	.uleb128 .LVU266
.LLST38:
	.byte	0x8
	.4byte	.LVL55
	.uleb128 .LVL55-.LVL55
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL19-.LVL14
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL19-.LVL14
	.uleb128 .LVL24-.LVL14
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL24-.LVL14
	.uleb128 .LVL25-.LVL14
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL14
	.uleb128 .LVL26-.LVL14
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL26-.LVL14
	.uleb128 .LFE222-.LVL14
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL17-.LVL14
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL17-.LVL14
	.uleb128 .LFE222-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LFE222-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x2
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x42
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL19-.LVL14
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL19-.LVL14
	.uleb128 .LVL25-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL14
	.uleb128 .LVL27-1-.LVL14
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL27-1-.LVL14
	.uleb128 .LFE222-.LVL14
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST11:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL17-.LVL14
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL17-.LVL14
	.uleb128 .LVL19-.LVL14
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.byte	0x4
	.uleb128 .LVL19-.LVL14
	.uleb128 .LVL25-.LVL14
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL25-.LVL14
	.uleb128 .LVL27-1-.LVL14
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.byte	0x4
	.uleb128 .LVL27-1-.LVL14
	.uleb128 .LFE222-.LVL14
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
.LVUS12:
	.uleb128 .LVU112
	.uleb128 .LVU136
	.uleb128 .LVU145
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL23-.LVL16
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL25-.LVL16
	.uleb128 .LFE222-.LVL16
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS13:
	.uleb128 .LVU123
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU130
	.uleb128 .LVU145
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL18
	.uleb128 .LVL21-.LVL18
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL25-.LVL18
	.uleb128 .LVL29-.LVL18
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL18
	.uleb128 .LFE222-.LVL18
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS14:
	.uleb128 .LVU131
	.uleb128 .LVU145
.LLST14:
	.byte	0x8
	.4byte	.LVL22
	.uleb128 .LVL25-.LVL22
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS17:
	.uleb128 .LVU148
	.uleb128 .LVU152
.LLST17:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS16:
	.uleb128 .LVU110
	.uleb128 .LVU112
.LLST16:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LVL16-.LVL16
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-1-.LVL7
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-1-.LVL7
	.uleb128 .LFE219-.LVL7
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-1-.LVL7
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL8-1-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL9-.LVL7
	.uleb128 .LFE219-.LVL7
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
.LVUS5:
	.uleb128 .LVU65
	.uleb128 .LVU71
.LLST5:
	.byte	0x8
	.4byte	.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 .LVL6-.LVL4
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL6-.LVL4
	.uleb128 .LFE218-.LVL4
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x40
	.uleb128 0x34
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-1-.LVL1
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x4
	.uleb128 .LVL2-1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LFE217-.LVL1
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x40
	.uleb128 0x34
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LFE220-.LVL12
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
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
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
.LLRL4:
	.byte	0x5
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB18-.LBB11
	.uleb128 .LBE18-.LBB11
	.byte	0x4
	.uleb128 .LBB19-.LBB11
	.uleb128 .LBE19-.LBB11
	.byte	0x4
	.uleb128 .LBB20-.LBB11
	.uleb128 .LBE20-.LBB11
	.byte	0x4
	.uleb128 .LBB21-.LBB11
	.uleb128 .LBE21-.LBB11
	.byte	0x4
	.uleb128 .LBB22-.LBB11
	.uleb128 .LBE22-.LBB11
	.byte	0
.LLRL15:
	.byte	0x5
	.4byte	.LBB23
	.byte	0x4
	.uleb128 .LBB23-.LBB23
	.uleb128 .LBE23-.LBB23
	.byte	0x4
	.uleb128 .LBB28-.LBB23
	.uleb128 .LBE28-.LBB23
	.byte	0x4
	.uleb128 .LBB29-.LBB23
	.uleb128 .LBE29-.LBB23
	.byte	0x4
	.uleb128 .LBB30-.LBB23
	.uleb128 .LBE30-.LBB23
	.byte	0
.LLRL37:
	.byte	0x5
	.4byte	.LBB34
	.byte	0x4
	.uleb128 .LBB34-.LBB34
	.uleb128 .LBE34-.LBB34
	.byte	0x4
	.uleb128 .LBB37-.LBB34
	.uleb128 .LBE37-.LBB34
	.byte	0
.LLRL47:
	.byte	0x7
	.4byte	.LFB212
	.uleb128 .LFE212-.LFB212
	.byte	0x7
	.4byte	.LFB214
	.uleb128 .LFE214-.LFB214
	.byte	0x7
	.4byte	.LFB215
	.uleb128 .LFE215-.LFB215
	.byte	0x7
	.4byte	.LFB216
	.uleb128 .LFE216-.LFB216
	.byte	0x7
	.4byte	.LFB217
	.uleb128 .LFE217-.LFB217
	.byte	0x7
	.4byte	.LFB218
	.uleb128 .LFE218-.LFB218
	.byte	0x7
	.4byte	.LFB219
	.uleb128 .LFE219-.LFB219
	.byte	0x7
	.4byte	.LFB220
	.uleb128 .LFE220-.LFB220
	.byte	0x7
	.4byte	.LFB221
	.uleb128 .LFE221-.LFB221
	.byte	0x7
	.4byte	.LFB222
	.uleb128 .LFE222-.LFB222
	.byte	0x7
	.4byte	.LFB224
	.uleb128 .LFE224-.LFB224
	.byte	0x7
	.4byte	.LFB225
	.uleb128 .LFE225-.LFB225
	.byte	0x7
	.4byte	.LFB226
	.uleb128 .LFE226-.LFB226
	.byte	0x7
	.4byte	.LFB227
	.uleb128 .LFE227-.LFB227
	.byte	0x7
	.4byte	.LFB228
	.uleb128 .LFE228-.LFB228
	.byte	0x7
	.4byte	.LFB223
	.uleb128 .LFE223-.LFB223
	.byte	0x7
	.4byte	.LFB229
	.uleb128 .LFE229-.LFB229
	.byte	0x7
	.4byte	.LFB230
	.uleb128 .LFE230-.LFB230
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"InputData\000"
.LASF161:
	.ascii	"textWidth\000"
.LASF57:
	.ascii	"Block_Lava\000"
.LASF84:
	.ascii	"KEY_START\000"
.LASF28:
	.ascii	"size_t\000"
.LASF58:
	.ascii	"Block_Iron_Ore\000"
.LASF169:
	.ascii	"wrap\000"
.LASF108:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF97:
	.ascii	"KEY_CSTICK_LEFT\000"
.LASF27:
	.ascii	"va_list\000"
.LASF74:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF98:
	.ascii	"KEY_CSTICK_UP\000"
.LASF13:
	.ascii	"int16_t\000"
.LASF116:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF12:
	.ascii	"long long int\000"
.LASF5:
	.ascii	"signed char\000"
.LASF59:
	.ascii	"Block_Coal_Ore\000"
.LASF122:
	.ascii	"GuiTexture_Widgets\000"
.LASF86:
	.ascii	"KEY_DLEFT\000"
.LASF52:
	.ascii	"Block_Sandstone\000"
.LASF179:
	.ascii	"Gui_EndRow\000"
.LASF35:
	.ascii	"Block_Sand\000"
.LASF9:
	.ascii	"long int\000"
.LASF173:
	.ascii	"Gui_BeginRow\000"
.LASF107:
	.ascii	"KEY_RIGHT\000"
.LASF50:
	.ascii	"Block_Obsidian\000"
.LASF186:
	.ascii	"__va_list\000"
.LASF56:
	.ascii	"Block_Water\000"
.LASF54:
	.ascii	"Block_Crafting_Table\000"
.LASF6:
	.ascii	"short int\000"
.LASF103:
	.ascii	"KEY_CPAD_DOWN\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF163:
	.ascii	"middlePieceSize\000"
.LASF72:
	.ascii	"double\000"
.LASF55:
	.ascii	"Block_Grass_Path\000"
.LASF19:
	.ascii	"circlePadX\000"
.LASF20:
	.ascii	"circlePadY\000"
.LASF148:
	.ascii	"Gui_WasCursorInside\000"
.LASF123:
	.ascii	"GuiTexture_MenuBackground\000"
.LASF102:
	.ascii	"KEY_CPAD_UP\000"
.LASF174:
	.ascii	"count\000"
.LASF23:
	.ascii	"cStickX\000"
.LASF24:
	.ascii	"cStickY\000"
.LASF181:
	.ascii	"Gui_Deinit\000"
.LASF51:
	.ascii	"Block_Netherrack\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF176:
	.ascii	"Gui_RelativeHeight\000"
.LASF7:
	.ascii	"__int16_t\000"
.LASF53:
	.ascii	"Block_Smooth_Stone\000"
.LASF142:
	.ascii	"SpriteBatch_GetHeight\000"
.LASF120:
	.ascii	"GuiTexture_Font\000"
.LASF85:
	.ascii	"KEY_DRIGHT\000"
.LASF175:
	.ascii	"Gui_BeginRowCenter\000"
.LASF152:
	.ascii	"Gui_GetCursorMovement\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF40:
	.ascii	"Block_Stonebrick\000"
.LASF34:
	.ascii	"Block_Cobblestone\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF99:
	.ascii	"KEY_CSTICK_DOWN\000"
.LASF158:
	.ascii	"Gui_Button\000"
.LASF43:
	.ascii	"Block_Wool\000"
.LASF131:
	.ascii	"relativeX\000"
.LASF132:
	.ascii	"relativeY\000"
.LASF31:
	.ascii	"Block_Stone\000"
.LASF127:
	.ascii	"width\000"
.LASF155:
	.ascii	"data\000"
.LASF92:
	.ascii	"KEY_Y\000"
.LASF159:
	.ascii	"size\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF157:
	.ascii	"space\000"
.LASF150:
	.ascii	"sclInputX\000"
.LASF151:
	.ascii	"sclInputY\000"
.LASF75:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF18:
	.ascii	"keysup\000"
.LASF124:
	.ascii	"GuiTexture\000"
.LASF145:
	.ascii	"sclOldInputX\000"
.LASF146:
	.ascii	"sclOldInputY\000"
.LASF149:
	.ascii	"Gui_IsCursorInside\000"
.LASF66:
	.ascii	"Block_Iron_Block\000"
.LASF63:
	.ascii	"Block_Gold_Block\000"
.LASF160:
	.ascii	"label\000"
.LASF165:
	.ascii	"shadow\000"
.LASF44:
	.ascii	"Block_Bedrock\000"
.LASF167:
	.ascii	"center\000"
.LASF38:
	.ascii	"Block_Leaves\000"
.LASF100:
	.ascii	"KEY_CPAD_RIGHT\000"
.LASF140:
	.ascii	"SpriteBatch_PushTextVargs\000"
.LASF62:
	.ascii	"Block_Emerald_Ore\000"
.LASF88:
	.ascii	"KEY_DDOWN\000"
.LASF41:
	.ascii	"Block_Brick\000"
.LASF171:
	.ascii	"xOffset\000"
.LASF109:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF121:
	.ascii	"GuiTexture_Icons\000"
.LASF141:
	.ascii	"SpriteBatch_CalcTextWidthVargs\000"
.LASF147:
	.ascii	"Gui_EnteredCursorInside\000"
.LASF130:
	.ascii	"currentRow\000"
.LASF81:
	.ascii	"KEY_A\000"
.LASF82:
	.ascii	"KEY_B\000"
.LASF137:
	.ascii	"SpriteBatch_GetScale\000"
.LASF64:
	.ascii	"Block_Diamond_Block\000"
.LASF90:
	.ascii	"KEY_L\000"
.LASF135:
	.ascii	"paddingX\000"
.LASF136:
	.ascii	"paddingY\000"
.LASF89:
	.ascii	"KEY_R\000"
.LASF36:
	.ascii	"Block_Log\000"
.LASF67:
	.ascii	"Block_Emerald_Block\000"
.LASF91:
	.ascii	"KEY_X\000"
.LASF93:
	.ascii	"KEY_ZL\000"
.LASF46:
	.ascii	"Block_Door_Top\000"
.LASF94:
	.ascii	"KEY_ZR\000"
.LASF154:
	.ascii	"Gui_VerticalSpace\000"
.LASF180:
	.ascii	"Gui_Frame\000"
.LASF95:
	.ascii	"KEY_TOUCH\000"
.LASF110:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF115:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF60:
	.ascii	"Block_Diamond_Ore\000"
.LASF48:
	.ascii	"Block_Snow_Grass\000"
.LASF47:
	.ascii	"Block_Door_Bottom\000"
.LASF119:
	.ascii	"GuiTexture_Blank\000"
.LASF111:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF138:
	.ascii	"SpriteBatch_PushQuad\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF73:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF129:
	.ascii	"unpaddedWidth\000"
.LASF156:
	.ascii	"Gui_Space\000"
.LASF105:
	.ascii	"KEY_DOWN\000"
.LASF172:
	.ascii	"xTextSize\000"
.LASF164:
	.ascii	"Gui_Label\000"
.LASF16:
	.ascii	"keysheld\000"
.LASF37:
	.ascii	"Block_Gravel\000"
.LASF189:
	.ascii	"__aeabi_idiv\000"
.LASF126:
	.ascii	"input\000"
.LASF153:
	.ascii	"Gui_InputData\000"
.LASF49:
	.ascii	"Block_Snow\000"
.LASF68:
	.ascii	"Block_Furnace\000"
.LASF69:
	.ascii	"Blocks_Count\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF33:
	.ascii	"Block_Grass\000"
.LASF78:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF17:
	.ascii	"keysdown\000"
.LASF71:
	.ascii	"_Bool\000"
.LASF29:
	.ascii	"long double\000"
.LASF166:
	.ascii	"color\000"
.LASF70:
	.ascii	"char\000"
.LASF168:
	.ascii	"text\000"
.LASF83:
	.ascii	"KEY_SELECT\000"
.LASF118:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF8:
	.ascii	"__uint16_t\000"
.LASF30:
	.ascii	"Block_Air\000"
.LASF178:
	.ascii	"Gui_Offset\000"
.LASF139:
	.ascii	"SpriteBatch_BindGuiTexture\000"
.LASF96:
	.ascii	"KEY_CSTICK_RIGHT\000"
.LASF61:
	.ascii	"Block_Gold_Ore\000"
.LASF185:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF77:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF187:
	.ascii	"__ap\000"
.LASF188:
	.ascii	"relativeToAbsoluteSize\000"
.LASF125:
	.ascii	"oldInput\000"
.LASF170:
	.ascii	"yTextSize\000"
.LASF112:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF65:
	.ascii	"Block_Coal_Block\000"
.LASF133:
	.ascii	"windowX\000"
.LASF134:
	.ascii	"windowY\000"
.LASF144:
	.ascii	"memset\000"
.LASF113:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF162:
	.ascii	"pressed\000"
.LASF42:
	.ascii	"Block_Planks\000"
.LASF87:
	.ascii	"KEY_DUP\000"
.LASF143:
	.ascii	"SpriteBatch_GetWidth\000"
.LASF183:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF117:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF114:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF2:
	.ascii	"float\000"
.LASF104:
	.ascii	"KEY_UP\000"
.LASF39:
	.ascii	"Block_Glass\000"
.LASF79:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF26:
	.ascii	"__gnuc_va_list\000"
.LASF76:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF182:
	.ascii	"Gui_Init\000"
.LASF32:
	.ascii	"Block_Dirt\000"
.LASF101:
	.ascii	"KEY_CPAD_LEFT\000"
.LASF128:
	.ascii	"highestElement\000"
.LASF21:
	.ascii	"touchX\000"
.LASF22:
	.ascii	"touchY\000"
.LASF184:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/gui/Gu"
	.ascii	"i.c\000"
.LASF45:
	.ascii	"Block_Coarse\000"
.LASF80:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF106:
	.ascii	"KEY_LEFT\000"
.LASF177:
	.ascii	"Gui_RelativeWidth\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
