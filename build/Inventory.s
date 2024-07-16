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
	.file	"Inventory.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/gui/Inventory.c"
	.section	.text.clickAtStack,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.type	clickAtStack, %function
clickAtStack:
.LVL0:
.LFB216:
	.loc 1 9 44 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 10 2 view .LVU1
	.loc 1 10 18 is_stmt 0 view .LVU2
	ldr	r1, .L18
	ldr	r3, [r1]
	.loc 1 10 34 discriminator 1 view .LVU3
	ldr	r2, [r1, #4]
	.loc 1 10 5 view .LVU4
	cmp	r3, #0
	beq	.L16
	.loc 1 12 9 is_stmt 1 view .LVU5
	.loc 1 12 12 is_stmt 0 view .LVU6
	cmp	r0, r2
	beq	.L3
	.loc 1 15 9 is_stmt 1 view .LVU7
	.loc 1 16 3 view .LVU8
	.loc 1 16 6 is_stmt 0 view .LVU9
	cmp	r3, r0
	beq	.L12
	.loc 1 16 29 is_stmt 1 discriminator 1 view .LVU10
.LVL1:
.LBB6:
.LBI6:
	.file 2 "C:/Users/Elias/CLionProjects/3DSCraft/include/inventory/ItemStack.h"
	.loc 2 18 13 view .LVU11
.LBB7:
	.loc 2 19 2 view .LVU12
.LBE7:
.LBE6:
	.loc 1 9 44 is_stmt 0 view .LVU13
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB12:
.LBB10:
	.loc 2 19 10 view .LVU14
	ldrh	ip, [r3]	@ unaligned
	.loc 2 19 5 view .LVU15
	ldrb	r4, [r0]	@ zero_extendqisi2
	uxtb	lr, ip
	cmp	r4, lr
	.loc 2 19 65 discriminator 3 view .LVU16
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	.loc 2 19 5 view .LVU17
	beq	.L17
.L7:
	.loc 2 19 59 discriminator 3 view .LVU18
	cmp	r2, #0
	beq	.L8
.LBB8:
	.loc 2 26 13 view .LVU19
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	.loc 2 26 3 is_stmt 1 view .LVU20
.LVL2:
	.loc 2 27 3 view .LVU21
	.loc 2 27 8 is_stmt 0 view .LVU22
	ldrh	r4, [r0]	@ unaligned
	ldrb	lr, [r0, #2]	@ zero_extendqisi2
	strh	r4, [r3]	@ unaligned
.LVL3:
	.loc 2 27 8 view .LVU23
	strb	lr, [r3, #2]
.LVL4:
	.loc 2 28 3 is_stmt 1 view .LVU24
	.loc 2 28 8 is_stmt 0 view .LVU25
	strh	ip, [r0]	@ unaligned
	strb	r2, [r0, #2]
.LVL5:
.L6:
	.loc 2 28 8 view .LVU26
.LBE8:
.LBE10:
.LBE12:
	.loc 1 17 3 is_stmt 1 view .LVU27
	.loc 1 17 15 is_stmt 0 view .LVU28
	mov	r3, #0
	str	r3, [r1]
	.loc 1 19 1 view .LVU29
	pop	{r4, pc}
.L3:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
	.loc 1 13 3 is_stmt 1 view .LVU30
	.loc 1 14 23 is_stmt 0 view .LVU31
	mov	r3, #0
	stm	r1, {r0, r3}
	bx	lr
.L16:
	.loc 1 10 25 discriminator 1 view .LVU32
	cmp	r0, r2
	beq	.L3
	.loc 1 11 3 is_stmt 1 view .LVU33
	.loc 1 11 23 is_stmt 0 view .LVU34
	str	r0, [r1, #4]
	bx	lr
.LVL6:
.L17:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB13:
.LBB11:
	.loc 2 19 32 discriminator 1 view .LVU35
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	cmp	lr, ip, lsr #8
	bne	.L7
.L8:
.LBB9:
	.loc 2 20 3 is_stmt 1 view .LVU36
	.loc 2 20 18 is_stmt 0 view .LVU37
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
.LVL7:
	.loc 2 21 3 is_stmt 1 view .LVU38
	.loc 2 20 36 is_stmt 0 view .LVU39
	rsb	r2, r2, #64
.LVL8:
	.loc 2 20 7 view .LVU40
	cmp	r2, lr
	movge	r2, lr
	.loc 2 21 15 view .LVU41
	uxtb	r2, r2
	sub	lr, lr, r2
.LVL9:
	.loc 2 21 15 view .LVU42
	strb	lr, [r3, #2]
.LVL10:
	.loc 2 22 3 is_stmt 1 view .LVU43
	.loc 2 22 15 is_stmt 0 view .LVU44
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
.LVL11:
	.loc 2 23 14 view .LVU45
	strh	ip, [r0]	@ unaligned
	.loc 2 22 15 view .LVU46
	add	r2, r2, r3
	strb	r2, [r0, #2]
	.loc 2 23 3 is_stmt 1 view .LVU47
	.loc 2 24 3 view .LVU48
.LBE9:
	.loc 2 19 80 is_stmt 0 view .LVU49
	b	.L6
.LVL12:
.L12:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
	.loc 2 19 80 view .LVU50
.LBE11:
.LBE13:
	.loc 1 17 3 is_stmt 1 view .LVU51
	.loc 1 17 15 is_stmt 0 view .LVU52
	mov	r3, #0
	str	r3, [r1]
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.cfi_endproc
.LFE216:
	.size	clickAtStack, .-clickAtStack
	.section	.text.Inventory_DrawQuickSelect,"ax",%progbits
	.align	2
	.global	Inventory_DrawQuickSelect
	.syntax unified
	.arm
	.type	Inventory_DrawQuickSelect, %function
Inventory_DrawQuickSelect:
.LVL13:
.LFB217:
	.loc 1 21 91 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 22 2 view .LVU54
	.loc 1 21 91 is_stmt 0 view .LVU55
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
	mov	r10, r3
	mov	r7, r0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 1 22 2 view .LVU56
	mov	r0, #3
.LVL14:
	.loc 1 21 91 view .LVU57
	mov	r9, r1
	mov	r4, r2
	.loc 1 22 2 view .LVU58
	bl	SpriteBatch_BindGuiTexture
.LVL15:
	.loc 1 24 2 is_stmt 1 view .LVU59
.LBB14:
	.loc 1 24 7 view .LVU60
	.loc 1 24 20 discriminator 1 view .LVU61
	cmp	r10, #0
.LBE14:
	.loc 1 47 40 is_stmt 0 view .LVU62
	sub	r8, r10, #2
.LBB18:
	.loc 1 24 20 discriminator 1 view .LVU63
	ble	.L27
.LBB15:
	.loc 1 27 15 view .LVU64
	add	ip, r9, #3
	.loc 1 27 7 view .LVU65
	lsl	ip, ip, #1
	.loc 1 31 7 view .LVU66
	sub	r3, ip, #4
.LBE15:
	.loc 1 24 11 view .LVU67
	mov	r5, #0
	ldr	fp, .L42
.LBB16:
	.loc 1 31 7 view .LVU68
	str	r3, [sp, #28]
	add	r6, r7, #1
	str	ip, [sp, #32]
	str	r7, [sp, #36]
	b	.L26
.LVL16:
.L22:
	.loc 1 31 3 is_stmt 1 view .LVU69
	.loc 1 31 7 is_stmt 0 view .LVU70
	mov	r3, #36
	mov	r0, r7
	mov	r2, r3
	ldr	r1, [sp, #28]
	bl	Gui_EnteredCursorInside
.LVL17:
	.loc 1 31 6 discriminator 1 view .LVU71
	cmp	r0, #0
	bne	.L39
.L23:
	.loc 1 35 3 is_stmt 1 view .LVU72
	mov	r0, #2
	bl	SpriteBatch_SetScale
.LVL18:
	.loc 1 36 3 view .LVU73
	.loc 1 36 6 is_stmt 0 view .LVU74
	ldr	r3, [fp]
	cmp	r4, r3
	beq	.L40
.L24:
	.loc 1 40 3 is_stmt 1 view .LVU75
	.loc 1 41 4 view .LVU76
	.loc 1 40 6 is_stmt 0 view .LVU77
	cmp	r5, r8
	.loc 1 41 4 view .LVU78
	add	r7, r6, #20
.LVL19:
	.loc 1 40 6 view .LVU79
	bge	.L25
	.loc 1 41 4 view .LVU80
	mov	r2, #22
	mov	r1, #0
	mov	r3, #20
	str	r2, [sp, #16]
	str	r2, [sp]
	mov	r2, #21
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r1, r9
	mov	r2, #10
	mov	r0, r7
	str	r3, [sp, #12]
	bl	SpriteBatch_PushQuad
.LVL20:
.L25:
	.loc 1 41 4 view .LVU81
.LBE16:
	.loc 1 24 30 is_stmt 1 discriminator 2 view .LVU82
	add	r5, r5, #1
.LVL21:
	.loc 1 24 20 discriminator 1 view .LVU83
	cmp	r10, r5
	mov	r6, r7
.LVL22:
	.loc 1 24 20 is_stmt 0 discriminator 1 view .LVU84
	add	r4, r4, #3
	beq	.L41
.LVL23:
.L26:
.LBB17:
	.loc 1 25 3 is_stmt 1 view .LVU85
	mov	r0, #1
	bl	SpriteBatch_SetScale
.LVL24:
	.loc 1 26 3 view .LVU86
	.loc 1 28 6 is_stmt 0 view .LVU87
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	lsl	r7, r6, #1
.LVL25:
	.loc 1 27 3 is_stmt 1 view .LVU88
	.loc 1 28 3 view .LVU89
	.loc 1 28 6 is_stmt 0 view .LVU90
	cmp	r3, #0
	beq	.L22
	.loc 1 29 4 is_stmt 1 view .LVU91
	mov	r3, #11
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	str	r3, [sp]
	ldrb	r0, [r4]	@ zero_extendqisi2
	ldr	r3, [sp, #32]
	add	r2, r7, #4
.LVL26:
	.loc 1 29 4 is_stmt 0 view .LVU92
	bl	SpriteBatch_PushIcon
.LVL27:
	.loc 1 29 4 view .LVU93
	b	.L22
.L39:
	.loc 1 32 4 is_stmt 1 view .LVU94
	.loc 1 32 14 is_stmt 0 view .LVU95
	ldr	r3, [sp, #80]
	.loc 1 33 4 view .LVU96
	mov	r0, r4
	.loc 1 32 14 view .LVU97
	str	r5, [r3]
	.loc 1 33 4 is_stmt 1 view .LVU98
	bl	clickAtStack
.LVL28:
	b	.L23
.L40:
	.loc 1 37 4 view .LVU99
	ldr	r3, .L42+4
	mov	r0, r6
	str	r3, [sp, #4]
	mov	r3, #18
	mov	r2, #9
	add	r1, r9, #1
	str	r3, [sp]
	bl	SpriteBatch_PushSingleColorQuad
.LVL29:
	.loc 1 38 4 view .LVU100
	mov	r0, #3
	bl	SpriteBatch_BindGuiTexture
.LVL30:
	b	.L24
.LVL31:
.L41:
	.loc 1 38 4 is_stmt 0 view .LVU101
.LBE17:
	ldr	r7, [sp, #36]
.LVL32:
.L27:
	.loc 1 38 4 view .LVU102
.LBE18:
	.loc 1 44 2 is_stmt 1 view .LVU103
	.loc 1 46 2 is_stmt 0 view .LVU104
	mov	r5, #22
	mov	r6, #21
	mov	r4, #0
	.loc 1 44 2 view .LVU105
	mov	r0, #2
	bl	SpriteBatch_SetScale
.LVL33:
	.loc 1 46 2 is_stmt 1 view .LVU106
	mov	r3, r6
	mov	r1, r9
	mov	r0, r7
	mov	r2, #10
	str	r5, [sp, #16]
	str	r6, [sp, #12]
	str	r4, [sp, #8]
	str	r4, [sp, #4]
	str	r5, [sp]
	bl	SpriteBatch_PushQuad
.LVL34:
	.loc 1 47 2 view .LVU107
	mov	r3, #161
	.loc 1 47 31 is_stmt 0 view .LVU108
	add	r8, r8, r8, lsl #2
	.loc 1 47 26 view .LVU109
	add	r0, r7, r8, lsl #2
	.loc 1 47 2 view .LVU110
	mov	r1, r9
	str	r3, [sp, #4]
	add	r0, r0, r6
	mov	r3, r6
	mov	r2, #10
	str	r5, [sp, #16]
	str	r6, [sp, #12]
	str	r4, [sp, #8]
	str	r5, [sp]
	bl	SpriteBatch_PushQuad
.LVL35:
	.loc 1 49 2 is_stmt 1 view .LVU111
	mov	r3, #24
	.loc 1 49 37 is_stmt 0 view .LVU112
	ldr	r2, [sp, #80]
	.loc 1 49 2 view .LVU113
	str	r5, [sp, #8]
	.loc 1 49 37 view .LVU114
	ldr	r0, [r2]
	.loc 1 49 2 view .LVU115
	sub	r1, r9, #1
	.loc 1 49 37 view .LVU116
	add	r0, r0, r0, lsl #2
	.loc 1 49 25 view .LVU117
	add	r0, r7, r0, lsl #2
	.loc 1 49 2 view .LVU118
	mov	r2, #14
	stm	sp, {r3, r4}
	str	r3, [sp, #16]
	str	r3, [sp, #12]
	sub	r0, r0, #1
	bl	SpriteBatch_PushQuad
.LVL36:
	.loc 1 50 1 view .LVU119
	add	sp, sp, #44
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL37:
.L43:
	.loc 1 50 1 view .LVU120
	.align	2
.L42:
	.word	.LANCHOR0
	.word	20642
	.cfi_endproc
.LFE217:
	.size	Inventory_DrawQuickSelect, .-Inventory_DrawQuickSelect
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	" << \000"
	.align	2
.LC2:
	.ascii	" >> \000"
	.section	.text.Inventory_Draw,"ax",%progbits
	.align	2
	.global	Inventory_Draw
	.syntax unified
	.arm
	.type	Inventory_Draw, %function
Inventory_Draw:
.LVL38:
.LFB218:
	.loc 1 52 82 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 53 2 view .LVU122
	.loc 1 52 82 is_stmt 0 view .LVU123
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
	vpush.64	{d8}
	.cfi_def_cfa_offset 44
	.cfi_offset 80, -44
	.cfi_offset 81, -40
	mov	ip, r0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 80
	.loc 1 53 2 view .LVU124
	mov	r0, #1
.LVL39:
	.loc 1 52 82 view .LVU125
	mov	r4, r3
	mov	r8, r1
	ldr	fp, [sp, #84]
	str	ip, [sp, #16]
	str	r2, [sp, #12]
	.loc 1 53 2 view .LVU126
	bl	SpriteBatch_SetScale
.LVL40:
	.loc 1 55 2 is_stmt 1 view .LVU127
	.loc 1 56 2 view .LVU128
	.loc 1 57 2 view .LVU129
	.loc 1 58 1 view .LVU130
	.loc 1 59 1 view .LVU131
	.loc 1 61 2 view .LVU132
	.loc 1 61 16 is_stmt 0 view .LVU133
	ldr	r3, .L78
	str	r3, [sp, #28]
	.loc 1 62 2 is_stmt 1 view .LVU134
	.loc 1 62 5 is_stmt 0 view .LVU135
	ldr	r3, [sp, #80]
	cmp	r3, #32
	bgt	.L45
	.loc 1 70 38 discriminator 1 view .LVU136
	lsl	r3, fp, #5
	.loc 1 76 6 view .LVU137
	sub	r5, r3, #32
.L46:
	.loc 1 76 2 is_stmt 1 view .LVU138
.LVL41:
	.loc 1 77 2 view .LVU139
.LBB19:
	.loc 1 77 7 view .LVU140
	.loc 1 77 31 is_stmt 0 discriminator 1 view .LVU141
	vmov	s15, r3	@ int
	vcvt.f64.s32	d0, s15
	vldr.32	s15, [sp, #80]	@ int
	vcvt.f64.s32	d1, s15
	bl	fmin
.LVL42:
	.loc 1 77 29 discriminator 1 view .LVU142
	vmov	s15, r5	@ int
	vcvt.f64.s32	d7, s15
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	.loc 1 77 31 discriminator 1 view .LVU143
	vmov.f64	d8, d0
.LVL43:
	.loc 1 77 29 is_stmt 1 discriminator 1 view .LVU144
	ble	.L50
	.loc 1 77 29 is_stmt 0 discriminator 1 view .LVU145
.LBE19:
	.loc 1 58 6 view .LVU146
	mov	r10, #0
	add	r3, r5, r5, lsl #1
	.loc 1 55 6 view .LVU147
	ldr	r9, [sp, #16]
	add	r4, r4, r3
.LVL44:
.LBB20:
	.loc 1 92 88 view .LVU148
	str	fp, [sp, #20]
.LVL45:
.L57:
	.loc 1 79 3 is_stmt 1 view .LVU149
	.loc 1 79 16 is_stmt 0 view .LVU150
	ldrb	r0, [r4]	@ zero_extendqisi2
	.loc 1 79 6 view .LVU151
	cmp	r0, #0
	beq	.L52
	.loc 1 79 23 discriminator 1 view .LVU152
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L52
	.loc 1 81 4 is_stmt 1 view .LVU153
.LVL46:
	.loc 1 82 4 view .LVU154
	.loc 1 82 7 is_stmt 0 view .LVU155
	ldr	r2, [sp, #12]
	.loc 1 82 15 view .LVU156
	add	r3, r9, #16
	.loc 1 82 7 view .LVU157
	cmp	r3, r2
	.loc 1 84 5 is_stmt 1 view .LVU158
.LVL47:
	.loc 1 85 5 view .LVU159
	.loc 1 84 11 is_stmt 0 view .LVU160
	ldrge	r3, [sp, #16]
	movlt	r6, r9
	movge	r6, r3
	movlt	r9, r3
	.loc 1 94 10 view .LVU161
	addge	r9, r3, #16
	.loc 1 89 5 view .LVU162
	mov	r3, #10
	.loc 1 85 11 view .LVU163
	addge	r8, r8, #17
.LVL48:
	.loc 1 86 5 is_stmt 1 view .LVU164
	.loc 1 89 5 is_stmt 0 view .LVU165
	lsl	r6, r6, #1
	lsl	r7, r8, #1
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	mov	r2, r6
	str	r3, [sp]
	mov	r3, r7
	.loc 1 86 13 view .LVU166
	movge	fp, #1
	.loc 1 81 12 view .LVU167
	movlt	fp, #0
.LVL49:
	.loc 1 88 4 is_stmt 1 view .LVU168
	.loc 1 89 5 view .LVU169
	bl	SpriteBatch_PushIcon
.LVL50:
	.loc 1 90 4 view .LVU170
	.loc 1 90 8 is_stmt 0 view .LVU171
	mov	r3, #32
	mov	r1, r7
	mov	r2, r3
	mov	r0, r6
	bl	Gui_EnteredCursorInside
.LVL51:
	.loc 1 90 7 discriminator 1 view .LVU172
	cmp	r0, #0
	bne	.L76
.L54:
	.loc 1 92 4 is_stmt 1 view .LVU173
	ldr	r3, .L78+4
	.loc 1 92 4 is_stmt 0 discriminator 4 view .LVU174
	mov	r0, r6
	.loc 1 92 4 view .LVU175
	ldr	r3, [r3]
	.loc 1 92 4 discriminator 4 view .LVU176
	mov	r2, #9
	.loc 1 92 4 view .LVU177
	cmp	r4, r3
	.loc 1 92 4 discriminator 1 view .LVU178
	addne	r3, sp, #32
	addne	r3, r3, r10, lsl #1
	ldrshne	r3, [r3, #-4]
	.loc 1 92 4 discriminator 2 view .LVU179
	ldreq	r3, .L78+8
	.loc 1 92 4 discriminator 4 view .LVU180
	mov	r1, r7
	str	r3, [sp, #4]
	mov	r3, #32
	str	r3, [sp]
	bl	SpriteBatch_PushSingleColorQuad
.LVL52:
	.loc 1 93 4 is_stmt 1 view .LVU181
	.loc 1 94 4 view .LVU182
	.loc 1 95 4 view .LVU183
	.loc 1 95 7 is_stmt 0 view .LVU184
	cmp	fp, #0
	.loc 1 93 9 view .LVU185
	eoreq	r10, r10, #1
.LVL53:
	.loc 1 95 7 view .LVU186
	bne	.L77
.LVL54:
.L52:
	.loc 1 77 55 is_stmt 1 discriminator 2 view .LVU187
	add	r5, r5, #1
.LVL55:
	.loc 1 77 29 discriminator 1 view .LVU188
	vmov	s15, r5	@ int
	vcvt.f64.s32	d7, s15
	vcmpe.f64	d7, d8
	vmrs	APSR_nzcv, FPSCR
	add	r4, r4, #3
	bmi	.L57
	.loc 1 77 29 is_stmt 0 discriminator 1 view .LVU189
	ldr	fp, [sp, #20]
.LVL56:
.L50:
	.loc 1 77 29 discriminator 1 view .LVU190
.LBE20:
	.loc 1 104 2 is_stmt 1 view .LVU191
	mov	r0, #2
	bl	SpriteBatch_SetScale
.LVL57:
	.loc 1 105 2 view .LVU192
	.loc 1 106 1 is_stmt 0 view .LVU193
	mov	r0, fp
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 44
	@ sp needed
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL58:
.L77:
	.cfi_restore_state
.LBB21:
	.loc 1 97 5 is_stmt 1 view .LVU194
	.loc 1 99 5 view .LVU195
	mov	r6, #2
	.loc 1 99 68 is_stmt 0 view .LVU196
	ldr	r3, [sp, #12]
	.loc 1 99 5 view .LVU197
	ldr	r0, [sp, #16]
	sub	r1, r7, #2
	ldr	r7, .L78+12
	.loc 1 99 68 view .LVU198
	sub	r3, r3, #32
	.loc 1 99 5 view .LVU199
	mov	r2, #10
	strd	r6, [sp]
	lsl	r3, r3, #1
	lsl	r0, r0, #1
	bl	SpriteBatch_PushSingleColorQuad
.LVL59:
	.loc 1 97 10 view .LVU200
	mov	r10, #0
	b	.L52
.LVL60:
.L76:
	.loc 1 91 5 is_stmt 1 view .LVU201
	mov	r0, r4
	bl	clickAtStack
.LVL61:
	b	.L54
.LVL62:
.L45:
	.loc 1 91 5 is_stmt 0 view .LVU202
.LBE21:
	.loc 1 64 3 is_stmt 1 view .LVU203
	mov	r1, #60
	mov	r0, #0
	bl	Gui_Offset
.LVL63:
	.loc 1 65 3 view .LVU204
	.loc 1 65 7 is_stmt 0 view .LVU205
	ldr	r1, .L78+16
	mov	r0, #0
	bl	Gui_Button
.LVL64:
	.loc 1 65 31 discriminator 1 view .LVU206
	cmp	fp, #1
	movle	r0, #0
	andgt	r0, r0, #1
	.loc 1 69 3 view .LVU207
	mov	r1, #60
	.loc 1 65 31 discriminator 1 view .LVU208
	cmp	r0, #0
	.loc 1 67 4 is_stmt 1 view .LVU209
	.loc 1 69 3 is_stmt 0 view .LVU210
	ldr	r0, .L78+20
	.loc 1 67 8 view .LVU211
	subne	fp, fp, #1
.LVL65:
	.loc 1 69 3 is_stmt 1 view .LVU212
	bl	Gui_Offset
.LVL66:
	.loc 1 70 3 view .LVU213
	.loc 1 70 7 is_stmt 0 view .LVU214
	mov	r0, #0
	ldr	r1, .L78+24
	bl	Gui_Button
.LVL67:
	.loc 1 70 6 discriminator 1 view .LVU215
	cmp	r0, #0
	.loc 1 70 38 discriminator 1 view .LVU216
	lsl	r3, fp, #5
	.loc 1 70 6 discriminator 1 view .LVU217
	beq	.L75
	.loc 1 70 31 discriminator 1 view .LVU218
	ldr	r2, [sp, #80]
	cmp	r2, r3
	.loc 1 72 4 is_stmt 1 view .LVU219
.LBB22:
	.loc 1 77 40 is_stmt 0 discriminator 1 view .LVU220
	movgt	r5, r3
.LBE22:
	.loc 1 72 8 view .LVU221
	addgt	fp, fp, #1
.LVL68:
.LBB23:
	.loc 1 77 40 discriminator 1 view .LVU222
	addgt	r3, r3, #32
	bgt	.L46
.L75:
	.loc 1 77 40 discriminator 1 view .LVU223
.LBE23:
	.loc 1 76 6 view .LVU224
	sub	r5, r3, #32
	b	.L46
.L79:
	.align	2
.L78:
	.word	692727147
	.word	.LANCHOR0
	.word	20642
	.word	7399
	.word	.LC1
	.word	270
	.word	.LC2
	.cfi_endproc
.LFE218:
	.size	Inventory_Draw, .-Inventory_Draw
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sourceStack, %object
	.size	sourceStack, 4
sourceStack:
	.space	4
	.type	proposedSourceStack, %object
	.size	proposedSourceStack, 4
proposedSourceStack:
	.space	4
	.text
.Letext0:
	.file 3 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 6 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Item.h"
	.file 7 "C:/devkitPro/libctru/include/3ds/services/csnd.h"
	.file 8 "C:/devkitPro/libctru/include/3ds/services/ndm.h"
	.file 9 "C:/devkitPro/libctru/include/3ds/gpu/enums.h"
	.file 10 "C:/devkitPro/libctru/include/3ds/ndsp/channel.h"
	.file 11 "C:/devkitPro/libctru/include/3ds/applets/error.h"
	.file 12 "C:/Users/Elias/CLionProjects/3DSCraft/include/gui/SpriteBatch.h"
	.file 13 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h"
	.file 14 "C:/Users/Elias/CLionProjects/3DSCraft/include/gui/Gui.h"
	.file 15 "C:/devkitPro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa93
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0x1d
	.4byte	.LASF116
	.4byte	.LASF117
	.4byte	.LLRL26
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
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x55
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x3
	.byte	0x37
	.byte	0x13
	.4byte	0x68
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x49
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0x5c
	.uleb128 0x12
	.4byte	0xa3
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x7d
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x8
	.byte	0x11
	.4byte	0x97
	.uleb128 0x7
	.byte	0x1
	.4byte	0x55
	.byte	0x5
	.byte	0xa
	.byte	0x6
	.4byte	0x1ca
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xf
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x13
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x17
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x19
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x1b
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x1e
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x1f
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x25
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x26
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	0x1d6
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF57
	.uleb128 0x12
	.4byte	0x1cf
	.uleb128 0x7
	.byte	0x1
	.4byte	0x55
	.byte	0x6
	.byte	0xa
	.byte	0x6
	.4byte	0x1f5
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF60
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF61
	.uleb128 0x1c
	.byte	0x3
	.byte	0x2
	.byte	0xa
	.byte	0x9
	.4byte	0x231
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0xb
	.byte	0x8
	.4byte	0xc0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0xc
	.byte	0xa
	.4byte	0x97
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0xc
	.byte	0x10
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x2
	.byte	0xd
	.byte	0x3
	.4byte	0x203
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF66
	.uleb128 0xe
	.4byte	0x3b
	.uleb128 0x1d
	.ascii	"u32\000"
	.byte	0xf
	.byte	0x17
	.byte	0x12
	.4byte	0xb4
	.uleb128 0x7
	.byte	0x1
	.4byte	0x55
	.byte	0x7
	.byte	0x28
	.byte	0x1
	.4byte	0x27b
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x55
	.byte	0x7
	.byte	0x31
	.byte	0x1
	.4byte	0x2a1
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x55
	.byte	0x8
	.byte	0x21
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.byte	0x7
	.byte	0x1
	.4byte	0x55
	.byte	0x9
	.2byte	0x1f6
	.byte	0x1
	.4byte	0x2e3
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x55
	.byte	0xa
	.byte	0xb
	.byte	0x1
	.4byte	0x303
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.4byte	0x6f
	.byte	0xb
	.byte	0x9
	.byte	0x1
	.4byte	0x31f
	.uleb128 0x13
	.4byte	.LASF84
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF85
	.2byte	0x200
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x55
	.byte	0xc
	.byte	0x10
	.byte	0xe
	.4byte	0x34b
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0xc
	.byte	0x10
	.byte	0x75
	.4byte	0x31f
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x7
	.byte	0x13
	.4byte	0x368
	.uleb128 0x5
	.byte	0x3
	.4byte	sourceStack
	.uleb128 0xe
	.4byte	0x231
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x7
	.byte	0x27
	.4byte	0x368
	.uleb128 0x5
	.byte	0x3
	.4byte	proposedSourceStack
	.uleb128 0x1f
	.4byte	.LASF94
	.byte	0xd
	.2byte	0x158
	.byte	0xf
	.4byte	0x34
	.4byte	0x39a
	.uleb128 0x3
	.4byte	0x34
	.uleb128 0x3
	.4byte	0x34
	.byte	0
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x1e
	.4byte	0x23d
	.4byte	0x3b4
	.uleb128 0x3
	.4byte	0x1fc
	.uleb128 0x3
	.4byte	0x1ca
	.uleb128 0x20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0xe
	.byte	0x12
	.4byte	0x3ca
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0xc
	.byte	0x17
	.4byte	0x403
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0xc
	.byte	0x15
	.4byte	0x42d
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0xa3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x23
	.4byte	0x23d
	.4byte	0x450
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0xc
	.byte	0x18
	.4byte	0x475
	.uleb128 0x3
	.4byte	0xc0
	.uleb128 0x3
	.4byte	0x97
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.uleb128 0x3
	.4byte	0x3b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0xc
	.byte	0x23
	.4byte	0x486
	.uleb128 0x3
	.4byte	0x3b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0xc
	.byte	0x12
	.4byte	0x497
	.uleb128 0x3
	.4byte	0x34b
	.byte	0
	.uleb128 0x21
	.4byte	.LASF118
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.4byte	0x3b
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x711
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x34
	.byte	0x18
	.4byte	0x3b
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x34
	.byte	0x1f
	.4byte	0x3b
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xa
	.ascii	"w\000"
	.byte	0x34
	.byte	0x26
	.4byte	0x3b
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x34
	.byte	0x34
	.4byte	0x368
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x34
	.byte	0x40
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x34
	.byte	0x4b
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x37
	.4byte	0x3b
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x38
	.4byte	0x3b
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x39
	.4byte	0x3b
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x3a
	.4byte	0x23d
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x3b
	.4byte	0x23d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x3d
	.byte	0x10
	.4byte	0x711
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x4c
	.4byte	0x3b
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x15
	.4byte	.LLRL24
	.4byte	0x68c
	.uleb128 0xc
	.ascii	"i\000"
	.byte	0x4d
	.byte	0xb
	.4byte	0x3b
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x4
	.4byte	.LVL42
	.4byte	0x37e
	.4byte	0x5c7
	.uleb128 0x1
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0x34
	.byte	0
	.uleb128 0x4
	.4byte	.LVL50
	.4byte	0x450
	.4byte	0x5e7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x4
	.4byte	.LVL51
	.4byte	0x42d
	.4byte	0x60d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.4byte	.LVL52
	.4byte	0x403
	.4byte	0x639
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.4byte	.LVL59
	.4byte	0x403
	.4byte	0x67b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x32
	.byte	0x1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL61
	.4byte	0x9d0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL40
	.4byte	0x475
	.4byte	0x69f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL57
	.4byte	0x475
	.4byte	0x6b2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	0x3b4
	.4byte	0x6cb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x4
	.4byte	.LVL64
	.4byte	0x39a
	.4byte	0x6e2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x4
	.4byte	.LVL66
	.4byte	0x3b4
	.4byte	0x6fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0xd
	.4byte	.LVL67
	.4byte	0x39a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0xaf
	.4byte	0x721
	.uleb128 0x23
	.4byte	0x2d
	.byte	0x1
	.byte	0
	.uleb128 0x24
	.4byte	.LASF119
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d0
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x15
	.byte	0x24
	.4byte	0x3b
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x15
	.byte	0x2b
	.4byte	0x3b
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x15
	.byte	0x39
	.4byte	0x368
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x15
	.byte	0x45
	.4byte	0x3b
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x15
	.byte	0x51
	.4byte	0x244
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.4byte	.LLRL9
	.4byte	0x8d7
	.uleb128 0xc
	.ascii	"i\000"
	.byte	0x18
	.byte	0xb
	.4byte	0x3b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x25
	.4byte	.LLRL11
	.uleb128 0xc
	.ascii	"rx\000"
	.byte	0x1a
	.byte	0x7
	.4byte	0x3b
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xc
	.ascii	"ry\000"
	.byte	0x1b
	.byte	0x7
	.4byte	0x3b
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x4
	.4byte	.LVL17
	.4byte	0x42d
	.4byte	0x7f7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x4
	.4byte	.LVL18
	.4byte	0x475
	.4byte	0x80a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LVL20
	.4byte	0x3ca
	.4byte	0x84c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x46
	.byte	0
	.uleb128 0x4
	.4byte	.LVL24
	.4byte	0x475
	.4byte	0x85f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	0x450
	.4byte	0x880
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x4
	.4byte	.LVL28
	.4byte	0x9d0
	.4byte	0x894
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL29
	.4byte	0x403
	.4byte	0x8c6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x3
	.byte	0xa
	.2byte	0x50a2
	.byte	0
	.uleb128 0xd
	.4byte	.LVL30
	.4byte	0x486
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL15
	.4byte	0x486
	.4byte	0x8ea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x4
	.4byte	.LVL33
	.4byte	0x475
	.4byte	0x8fd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	0x3ca
	.4byte	0x945
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL35
	.4byte	0x3ca
	.4byte	0x995
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xa
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL36
	.4byte	0x3ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 -1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF120
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5a
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x9
	.byte	0x25
	.4byte	0x368
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x27
	.4byte	0xa5a
	.4byte	.LBI6
	.byte	.LVU11
	.4byte	.LLRL0
	.byte	0x1
	.byte	0x10
	.byte	0x1d
	.uleb128 0x16
	.4byte	0xa6d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x16
	.4byte	0xa63
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x28
	.4byte	0xa88
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xa3d
	.uleb128 0x17
	.4byte	0xa89
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x29
	.4byte	0xa77
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x17
	.4byte	0xa7c
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF121
	.byte	0x2
	.byte	0x12
	.byte	0xd
	.byte	0x3
	.uleb128 0x18
	.ascii	"src\000"
	.byte	0x2b
	.4byte	0x368
	.uleb128 0x18
	.ascii	"dst\000"
	.byte	0x3b
	.4byte	0x368
	.uleb128 0x2b
	.4byte	0xa88
	.uleb128 0x19
	.ascii	"vol\000"
	.byte	0x14
	.byte	0x7
	.4byte	0x3b
	.byte	0
	.uleb128 0x2c
	.uleb128 0x19
	.ascii	"tmp\000"
	.byte	0x1a
	.byte	0xd
	.4byte	0x231
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
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
.LVUS14:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL39-.LVL38
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL39-.LVL38
	.uleb128 .LVL40-1-.LVL38
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL40-1-.LVL38
	.uleb128 .LFE218-.LVL38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL40-1-.LVL38
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL40-1-.LVL38
	.uleb128 .LVL45-.LVL38
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL45-.LVL38
	.uleb128 .LVL62-.LVL38
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
	.uleb128 .LVL62-.LVL38
	.uleb128 .LFE218-.LVL38
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL40-1-.LVL38
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL40-1-.LVL38
	.uleb128 .LFE218-.LVL38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL40-1-.LVL38
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL40-1-.LVL38
	.uleb128 .LVL44-.LVL38
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL44-.LVL38
	.uleb128 .LVL62-.LVL38
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
	.byte	0x4
	.uleb128 .LVL62-.LVL38
	.uleb128 .LFE218-.LVL38
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS18:
	.uleb128 .LVU128
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU168
	.uleb128 .LVU187
	.uleb128 .LVU190
	.uleb128 .LVU202
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL45-.LVL40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL45-.LVL40
	.uleb128 .LVL47-.LVL40
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL47-.LVL40
	.uleb128 .LVL49-.LVL40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL54-.LVL40
	.uleb128 .LVL56-.LVL40
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL62-.LVL40
	.uleb128 .LFE218-.LVL40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS19:
	.uleb128 .LVU129
	.uleb128 0
.LLST19:
	.byte	0x8
	.4byte	.LVL40
	.uleb128 .LFE218-.LVL40
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS20:
	.uleb128 .LVU130
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU190
	.uleb128 .LVU194
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL45-.LVL40
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL45-.LVL40
	.uleb128 .LVL56-.LVL40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x4
	.uleb128 .LVL58-.LVL40
	.uleb128 .LVL62-.LVL40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x4
	.uleb128 .LVL62-.LVL40
	.uleb128 .LFE218-.LVL40
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS21:
	.uleb128 .LVU131
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU186
	.uleb128 .LVU187
	.uleb128 .LVU190
	.uleb128 .LVU195
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL45-.LVL40
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-.LVL40
	.uleb128 .LVL52-.LVL40
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL52-.LVL40
	.uleb128 .LVL53-.LVL40
	.uleb128 0x4
	.byte	0x7a
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.LVL40
	.uleb128 .LVL56-.LVL40
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL58-.LVL40
	.uleb128 .LVL60-.LVL40
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL60-.LVL40
	.uleb128 .LVL62-.LVL40
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL62-.LVL40
	.uleb128 .LFE218-.LVL40
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU132
	.uleb128 .LVU149
	.uleb128 .LVU154
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU187
	.uleb128 .LVU194
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL45-.LVL40
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.LVL40
	.uleb128 .LVL48-.LVL40
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.LVL40
	.uleb128 .LVL49-.LVL40
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.LVL40
	.uleb128 .LVL54-.LVL40
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL58-.LVL40
	.uleb128 .LVL62-.LVL40
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL62-.LVL40
	.uleb128 .LFE218-.LVL40
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU139
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU190
	.uleb128 .LVU194
	.uleb128 .LVU202
.LLST23:
	.byte	0x6
	.4byte	.LVL41
	.byte	0x4
	.uleb128 .LVL41-.LVL41
	.uleb128 .LVL45-.LVL41
	.uleb128 0x5
	.byte	0x7b
	.sleb128 -1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-.LVL41
	.uleb128 .LVL56-.LVL41
	.uleb128 0x9
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.LVL41
	.uleb128 .LVL62-.LVL41
	.uleb128 0x9
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU141
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU202
.LLST25:
	.byte	0x6
	.4byte	.LVL41
	.byte	0x4
	.uleb128 .LVL41-.LVL41
	.uleb128 .LVL43-.LVL41
	.uleb128 0x5
	.byte	0x7b
	.sleb128 -1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL41
	.uleb128 .LVL62-.LVL41
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL16-.LVL13
	.uleb128 .LVL32-.LVL13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x4
	.uleb128 .LVL32-.LVL13
	.uleb128 .LFE217-.LVL13
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
.LVUS6:
	.uleb128 0
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-1-.LVL13
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL15-1-.LVL13
	.uleb128 .LVL37-.LVL13
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL37-.LVL13
	.uleb128 .LFE217-.LVL13
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
.LVUS7:
	.uleb128 0
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-1-.LVL13
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL15-1-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL16-.LVL13
	.uleb128 .LFE217-.LVL13
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
.LVUS8:
	.uleb128 0
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-1-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL15-1-.LVL13
	.uleb128 .LVL37-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL37-.LVL13
	.uleb128 .LFE217-.LVL13
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
.LVUS10:
	.uleb128 .LVU61
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU102
.LLST10:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LVL32-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS12:
	.uleb128 .LVU69
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU85
	.uleb128 .LVU88
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU102
.LLST12:
	.byte	0x6
	.4byte	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL19-.LVL16
	.uleb128 0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL16
	.uleb128 .LVL22-.LVL16
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL16
	.uleb128 .LVL23-.LVL16
	.uleb128 0x7
	.byte	0x77
	.sleb128 -20
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL16
	.uleb128 .LVL26-.LVL16
	.uleb128 0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL16
	.uleb128 .LVL27-1-.LVL16
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL27-1-.LVL16
	.uleb128 .LVL31-.LVL16
	.uleb128 0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.LVL16
	.uleb128 .LVL32-.LVL16
	.uleb128 0x7
	.byte	0x76
	.sleb128 -20
	.byte	0x31
	.byte	0x24
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU69
	.uleb128 .LVU85
	.uleb128 .LVU89
	.uleb128 .LVU102
.LLST13:
	.byte	0x6
	.4byte	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL23-.LVL16
	.uleb128 0x5
	.byte	0x79
	.sleb128 3
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL16
	.uleb128 .LVL32-.LVL16
	.uleb128 0x5
	.byte	0x79
	.sleb128 3
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU11
	.uleb128 .LVU26
	.uleb128 .LVU35
	.uleb128 .LVU50
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.LVL1
	.uleb128 .LVL12-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS2:
	.uleb128 .LVU11
	.uleb128 .LVU26
	.uleb128 .LVU35
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU50
.LLST2:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL6-.LVL1
	.uleb128 .LVL11-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL11-.LVL1
	.uleb128 .LVL12-.LVL1
	.uleb128 0x5
	.byte	0x3
	.4byte	sourceStack
	.byte	0
.LVUS3:
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU26
.LLST3:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0xa
	.byte	0x93
	.uleb128 0x1
	.byte	0x73
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x73
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x6
	.byte	0x93
	.uleb128 0x2
	.byte	0x73
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x2
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0
.LVUS4:
	.uleb128 .LVU38
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
.LLST4:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x17
	.byte	0x8
	.byte	0x40
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x7e
	.sleb128 0
	.byte	0x8
	.byte	0xff
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
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x19
	.byte	0x8
	.byte	0x40
	.byte	0x70
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x7e
	.sleb128 0
	.byte	0x8
	.byte	0xff
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
	.uleb128 .LVL9-.LVL7
	.uleb128 .LVL10-.LVL7
	.uleb128 0x1b
	.byte	0x8
	.byte	0x40
	.byte	0x70
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x73
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
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
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
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
.LLRL0:
	.byte	0x5
	.4byte	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB12-.LBB6
	.uleb128 .LBE12-.LBB6
	.byte	0x4
	.uleb128 .LBB13-.LBB6
	.uleb128 .LBE13-.LBB6
	.byte	0
.LLRL9:
	.byte	0x5
	.4byte	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB18-.LBB14
	.uleb128 .LBE18-.LBB14
	.byte	0
.LLRL11:
	.byte	0x5
	.4byte	.LBB15
	.byte	0x4
	.uleb128 .LBB15-.LBB15
	.uleb128 .LBE15-.LBB15
	.byte	0x4
	.uleb128 .LBB16-.LBB15
	.uleb128 .LBE16-.LBB15
	.byte	0x4
	.uleb128 .LBB17-.LBB15
	.uleb128 .LBE17-.LBB15
	.byte	0
.LLRL24:
	.byte	0x5
	.4byte	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB20-.LBB19
	.uleb128 .LBE20-.LBB19
	.byte	0x4
	.uleb128 .LBB21-.LBB19
	.uleb128 .LBE21-.LBB19
	.byte	0x4
	.uleb128 .LBB22-.LBB19
	.uleb128 .LBE22-.LBB19
	.byte	0x4
	.uleb128 .LBB23-.LBB19
	.uleb128 .LBE23-.LBB19
	.byte	0
.LLRL26:
	.byte	0x7
	.4byte	.LFB216
	.uleb128 .LFE216-.LFB216
	.byte	0x7
	.4byte	.LFB217
	.uleb128 .LFE217-.LFB217
	.byte	0x7
	.4byte	.LFB218
	.uleb128 .LFE218-.LFB218
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF95:
	.ascii	"Gui_Button\000"
.LASF104:
	.ascii	"count\000"
.LASF44:
	.ascii	"Block_Lava\000"
.LASF3:
	.ascii	"signed char\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF75:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF116:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/gui/In"
	.ascii	"ventory.c\000"
.LASF68:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"int16_t\000"
.LASF83:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF12:
	.ascii	"long long int\000"
.LASF92:
	.ascii	"sourceStack\000"
.LASF46:
	.ascii	"Block_Coal_Ore\000"
.LASF89:
	.ascii	"GuiTexture_Widgets\000"
.LASF39:
	.ascii	"Block_Sandstone\000"
.LASF22:
	.ascii	"Block_Sand\000"
.LASF9:
	.ascii	"long int\000"
.LASF101:
	.ascii	"SpriteBatch_SetScale\000"
.LASF16:
	.ascii	"Block\000"
.LASF37:
	.ascii	"Block_Obsidian\000"
.LASF43:
	.ascii	"Block_Water\000"
.LASF41:
	.ascii	"Block_Crafting_Table\000"
.LASF2:
	.ascii	"double\000"
.LASF42:
	.ascii	"Block_Grass_Path\000"
.LASF90:
	.ascii	"GuiTexture_MenuBackground\000"
.LASF20:
	.ascii	"Block_Grass\000"
.LASF32:
	.ascii	"Block_Coarse\000"
.LASF38:
	.ascii	"Block_Netherrack\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF6:
	.ascii	"__int16_t\000"
.LASF40:
	.ascii	"Block_Smooth_Stone\000"
.LASF87:
	.ascii	"GuiTexture_Font\000"
.LASF119:
	.ascii	"Inventory_DrawQuickSelect\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF27:
	.ascii	"Block_Stonebrick\000"
.LASF21:
	.ascii	"Block_Cobblestone\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF45:
	.ascii	"Block_Iron_Ore\000"
.LASF30:
	.ascii	"Block_Wool\000"
.LASF18:
	.ascii	"Block_Stone\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF69:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF91:
	.ascii	"GuiTexture\000"
.LASF53:
	.ascii	"Block_Iron_Block\000"
.LASF50:
	.ascii	"Block_Gold_Block\000"
.LASF28:
	.ascii	"Block_Brick\000"
.LASF31:
	.ascii	"Block_Bedrock\000"
.LASF25:
	.ascii	"Block_Leaves\000"
.LASF49:
	.ascii	"Block_Emerald_Ore\000"
.LASF48:
	.ascii	"Block_Gold_Ore\000"
.LASF94:
	.ascii	"fmin\000"
.LASF106:
	.ascii	"headX\000"
.LASF107:
	.ascii	"headY\000"
.LASF76:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF88:
	.ascii	"GuiTexture_Icons\000"
.LASF99:
	.ascii	"Gui_EnteredCursorInside\000"
.LASF109:
	.ascii	"even\000"
.LASF51:
	.ascii	"Block_Diamond_Block\000"
.LASF120:
	.ascii	"clickAtStack\000"
.LASF113:
	.ascii	"selected\000"
.LASF98:
	.ascii	"SpriteBatch_PushSingleColorQuad\000"
.LASF23:
	.ascii	"Block_Log\000"
.LASF54:
	.ascii	"Block_Emerald_Block\000"
.LASF111:
	.ascii	"colors\000"
.LASF33:
	.ascii	"Block_Door_Top\000"
.LASF61:
	.ascii	"float\000"
.LASF108:
	.ascii	"site\000"
.LASF77:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF82:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF47:
	.ascii	"Block_Diamond_Ore\000"
.LASF35:
	.ascii	"Block_Snow_Grass\000"
.LASF34:
	.ascii	"Block_Door_Bottom\000"
.LASF86:
	.ascii	"GuiTexture_Blank\000"
.LASF103:
	.ascii	"stacks\000"
.LASF100:
	.ascii	"SpriteBatch_PushIcon\000"
.LASF78:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF97:
	.ascii	"SpriteBatch_PushQuad\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF67:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF110:
	.ascii	"newLine\000"
.LASF112:
	.ascii	"startindex\000"
.LASF93:
	.ascii	"proposedSourceStack\000"
.LASF7:
	.ascii	"short int\000"
.LASF63:
	.ascii	"meta\000"
.LASF121:
	.ascii	"ItemStack_Transfer\000"
.LASF118:
	.ascii	"Inventory_Draw\000"
.LASF65:
	.ascii	"ItemStack\000"
.LASF24:
	.ascii	"Block_Gravel\000"
.LASF36:
	.ascii	"Block_Snow\000"
.LASF55:
	.ascii	"Block_Furnace\000"
.LASF56:
	.ascii	"Blocks_Count\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF72:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF66:
	.ascii	"_Bool\000"
.LASF60:
	.ascii	"long double\000"
.LASF57:
	.ascii	"char\000"
.LASF85:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF17:
	.ascii	"Block_Air\000"
.LASF96:
	.ascii	"Gui_Offset\000"
.LASF102:
	.ascii	"SpriteBatch_BindGuiTexture\000"
.LASF59:
	.ascii	"Items_Count\000"
.LASF58:
	.ascii	"Item_Totem\000"
.LASF117:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF71:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF64:
	.ascii	"amount\000"
.LASF79:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF52:
	.ascii	"Block_Coal_Block\000"
.LASF80:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF29:
	.ascii	"Block_Planks\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF115:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF84:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF81:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF26:
	.ascii	"Block_Glass\000"
.LASF62:
	.ascii	"block\000"
.LASF73:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF70:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF19:
	.ascii	"Block_Dirt\000"
.LASF114:
	.ascii	"stack\000"
.LASF105:
	.ascii	"_site\000"
.LASF74:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
