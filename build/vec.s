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
	.file	"vec.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/dependencies/vec/vec.c"
	.section	.text.vec_expand_,"ax",%progbits
	.align	2
	.global	vec_expand_
	.syntax unified
	.arm
	.type	vec_expand_, %function
vec_expand_:
.LVL0:
.LFB5:
	.loc 1 11 69 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 12 3 view .LVU1
	.loc 1 11 69 is_stmt 0 view .LVU2
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 12 6 view .LVU3
	ldr	r1, [r1]
.LVL1:
	.loc 1 11 69 view .LVU4
	mov	r4, r2
	.loc 1 12 21 view .LVU5
	ldr	r2, [r2]
.LVL2:
	.loc 1 12 6 view .LVU6
	cmp	r1, r2
	bge	.L2
	.loc 1 20 10 view .LVU7
	mov	r0, #0
.LVL3:
	.loc 1 20 10 view .LVU8
	pop	{r4, r5, r6, pc}
.LVL4:
.L2:
.LBB3:
	.loc 1 14 34 view .LVU9
	cmp	r2, #0
	.loc 1 14 34 discriminator 1 view .LVU10
	lslne	r5, r2, #1
	.loc 1 15 28 view .LVU11
	mulne	r3, r5, r3
.LVL5:
	.loc 1 15 28 view .LVU12
	mov	r6, r0
	.loc 1 13 5 is_stmt 1 view .LVU13
	.loc 1 14 5 view .LVU14
	.loc 1 15 11 is_stmt 0 view .LVU15
	mov	r1, r3
	ldr	r0, [r0]
.LVL6:
	.loc 1 14 34 discriminator 2 view .LVU16
	moveq	r5, #1
.LVL7:
	.loc 1 15 5 is_stmt 1 view .LVU17
	.loc 1 15 11 is_stmt 0 view .LVU18
	bl	realloc
.LVL8:
	.loc 1 16 5 is_stmt 1 view .LVU19
	.loc 1 16 8 is_stmt 0 view .LVU20
	cmp	r0, #0
	.loc 1 16 8 view .LVU21
	beq	.L7
	.loc 1 17 5 is_stmt 1 view .LVU22
	.loc 1 17 11 is_stmt 0 view .LVU23
	str	r0, [r6]
	.loc 1 18 5 is_stmt 1 view .LVU24
.LBE3:
	.loc 1 20 10 is_stmt 0 view .LVU25
	mov	r0, #0
.LVL9:
.LBB4:
	.loc 1 18 15 view .LVU26
	str	r5, [r4]
	pop	{r4, r5, r6, pc}
.LVL10:
.L7:
	.loc 1 16 28 discriminator 1 view .LVU27
	mvn	r0, #0
.LVL11:
	.loc 1 16 28 discriminator 1 view .LVU28
.LBE4:
	.loc 1 21 1 view .LVU29
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE5:
	.size	vec_expand_, .-vec_expand_
	.section	.text.vec_reserve_,"ax",%progbits
	.align	2
	.global	vec_reserve_
	.syntax unified
	.arm
	.type	vec_reserve_, %function
vec_reserve_:
.LVL12:
.LFB6:
	.loc 1 24 77 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 25 3 view .LVU31
	.loc 1 26 3 view .LVU32
	.loc 1 24 77 is_stmt 0 view .LVU33
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 24 77 view .LVU34
	ldr	r6, [sp, #16]
	mov	r4, r2
	.loc 1 26 6 view .LVU35
	ldr	r2, [r2]
.LVL13:
	.loc 1 26 6 view .LVU36
	cmp	r2, r6
	blt	.L11
	.loc 1 32 10 view .LVU37
	mov	r0, #0
.LVL14:
	.loc 1 32 10 view .LVU38
	pop	{r4, r5, r6, pc}
.LVL15:
.L11:
.LBB6:
	.loc 1 27 5 is_stmt 1 view .LVU39
	mov	r5, r0
	.loc 1 27 17 is_stmt 0 view .LVU40
	mul	r1, r3, r6
.LVL16:
	.loc 1 27 17 view .LVU41
	ldr	r0, [r0]
.LVL17:
	.loc 1 27 17 view .LVU42
	bl	realloc
.LVL18:
	.loc 1 28 5 is_stmt 1 view .LVU43
	.loc 1 28 8 is_stmt 0 view .LVU44
	cmp	r0, #0
	.loc 1 28 8 view .LVU45
	beq	.L14
	.loc 1 29 5 is_stmt 1 view .LVU46
	.loc 1 29 11 is_stmt 0 view .LVU47
	str	r0, [r5]
	.loc 1 30 5 is_stmt 1 view .LVU48
.LBE6:
	.loc 1 32 10 is_stmt 0 view .LVU49
	mov	r0, #0
.LVL19:
.LBB7:
	.loc 1 30 15 view .LVU50
	str	r6, [r4]
	pop	{r4, r5, r6, pc}
.LVL20:
.L14:
	.loc 1 28 28 discriminator 1 view .LVU51
	mvn	r0, #0
.LVL21:
	.loc 1 28 28 discriminator 1 view .LVU52
.LBE7:
	.loc 1 33 1 view .LVU53
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE6:
	.size	vec_reserve_, .-vec_reserve_
	.section	.text.vec_reserve_po2_,"ax",%progbits
	.align	2
	.global	vec_reserve_po2_
	.syntax unified
	.arm
	.type	vec_reserve_po2_, %function
vec_reserve_po2_:
.LVL22:
.LFB7:
	.loc 1 38 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 39 3 view .LVU55
	.loc 1 40 3 view .LVU56
	.loc 1 38 3 is_stmt 0 view .LVU57
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 38 3 view .LVU58
	ldr	ip, [sp, #16]
	.loc 1 40 6 view .LVU59
	cmp	ip, #0
	beq	.L21
	.loc 1 41 13 discriminator 1 view .LVU60
	cmp	ip, #1
	mov	r6, r0
	mov	r5, r2
	.loc 1 41 13 is_stmt 1 discriminator 1 view .LVU61
	.loc 1 39 7 is_stmt 0 view .LVU62
	mov	r4, #1
	.loc 1 41 13 discriminator 1 view .LVU63
	ble	.L19
.LVL23:
.L20:
	.loc 1 41 18 is_stmt 1 discriminator 2 view .LVU64
	.loc 1 41 21 is_stmt 0 discriminator 2 view .LVU65
	lsl	r4, r4, #1
.LVL24:
	.loc 1 41 13 is_stmt 1 discriminator 1 view .LVU66
	cmp	ip, r4
	bgt	.L20
.LVL25:
.L19:
	.loc 1 42 3 view .LVU67
.LBB11:
.LBI11:
	.loc 1 24 5 view .LVU68
.LBB12:
	.loc 1 25 3 view .LVU69
	.loc 1 26 3 view .LVU70
	.loc 1 26 6 is_stmt 0 view .LVU71
	ldr	r2, [r5]
.LVL26:
	.loc 1 26 6 view .LVU72
	cmp	r2, r4
	blt	.L26
.LVL27:
.L21:
	.loc 1 26 6 view .LVU73
.LBE12:
.LBE11:
	.loc 1 40 22 discriminator 1 view .LVU74
	mov	r0, #0
.LVL28:
	.loc 1 40 22 discriminator 1 view .LVU75
	pop	{r4, r5, r6, pc}
.LVL29:
.L26:
.LBB17:
.LBB15:
.LBB13:
	.loc 1 27 5 is_stmt 1 view .LVU76
	.loc 1 27 17 is_stmt 0 view .LVU77
	mul	r1, r4, r3
.LVL30:
	.loc 1 27 17 view .LVU78
	ldr	r0, [r6]
.LVL31:
	.loc 1 27 17 view .LVU79
	bl	realloc
.LVL32:
	.loc 1 28 5 is_stmt 1 view .LVU80
	.loc 1 28 8 is_stmt 0 view .LVU81
	cmp	r0, #0
	.loc 1 28 8 view .LVU82
	beq	.L23
	.loc 1 29 5 is_stmt 1 view .LVU83
	.loc 1 29 11 is_stmt 0 view .LVU84
	str	r0, [r6]
	.loc 1 30 5 is_stmt 1 view .LVU85
.LBE13:
.LBE15:
.LBE17:
	.loc 1 40 22 is_stmt 0 discriminator 1 view .LVU86
	mov	r0, #0
.LVL33:
.LBB18:
.LBB16:
.LBB14:
	.loc 1 30 15 view .LVU87
	str	r4, [r5]
	pop	{r4, r5, r6, pc}
.LVL34:
.L23:
	.loc 1 28 28 discriminator 1 view .LVU88
	mvn	r0, #0
.LVL35:
	.loc 1 28 28 discriminator 1 view .LVU89
.LBE14:
.LBE16:
.LBE18:
	.loc 1 43 1 view .LVU90
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE7:
	.size	vec_reserve_po2_, .-vec_reserve_po2_
	.section	.text.vec_compact_,"ax",%progbits
	.align	2
	.global	vec_compact_
	.syntax unified
	.arm
	.type	vec_compact_, %function
vec_compact_:
.LVL36:
.LFB8:
	.loc 1 46 70 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 47 3 view .LVU92
	.loc 1 46 70 is_stmt 0 view .LVU93
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 47 7 view .LVU94
	ldr	r6, [r1]
	.loc 1 46 70 view .LVU95
	mov	r4, r0
	.loc 1 47 6 view .LVU96
	cmp	r6, #0
	.loc 1 46 70 view .LVU97
	mov	r5, r2
	.loc 1 48 5 view .LVU98
	ldr	r0, [r0]
.LVL37:
	.loc 1 47 6 view .LVU99
	beq	.L33
.LBB19:
	.loc 1 53 5 is_stmt 1 view .LVU100
	.loc 1 54 5 view .LVU101
.LVL38:
	.loc 1 55 5 view .LVU102
	.loc 1 55 11 is_stmt 0 view .LVU103
	mul	r1, r3, r6
.LVL39:
	.loc 1 55 11 view .LVU104
	bl	realloc
.LVL40:
	.loc 1 56 5 is_stmt 1 view .LVU105
	.loc 1 56 8 is_stmt 0 view .LVU106
	cmp	r0, #0
	.loc 1 56 8 view .LVU107
	beq	.L31
	.loc 1 57 5 is_stmt 1 view .LVU108
	.loc 1 57 15 is_stmt 0 view .LVU109
	str	r6, [r5]
	.loc 1 58 5 is_stmt 1 view .LVU110
	.loc 1 58 11 is_stmt 0 view .LVU111
	str	r0, [r4]
.LBE19:
	.loc 1 60 3 is_stmt 1 view .LVU112
	.loc 1 51 12 is_stmt 0 view .LVU113
	mov	r0, #0
.LVL41:
	.loc 1 51 12 view .LVU114
	pop	{r4, r5, r6, pc}
.LVL42:
.L33:
	.loc 1 48 5 is_stmt 1 view .LVU115
	bl	free
.LVL43:
	.loc 1 49 5 view .LVU116
	.loc 1 49 11 is_stmt 0 view .LVU117
	str	r6, [r4]
	.loc 1 50 5 is_stmt 1 view .LVU118
	.loc 1 51 12 is_stmt 0 view .LVU119
	mov	r0, #0
	.loc 1 50 15 view .LVU120
	str	r6, [r5]
	.loc 1 51 5 is_stmt 1 view .LVU121
	pop	{r4, r5, r6, pc}
.LVL44:
.L31:
.LBB20:
	.loc 1 56 28 is_stmt 0 discriminator 1 view .LVU122
	mvn	r0, #0
.LVL45:
	.loc 1 56 28 discriminator 1 view .LVU123
.LBE20:
	.loc 1 61 1 view .LVU124
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE8:
	.size	vec_compact_, .-vec_compact_
	.section	.text.vec_insert_,"ax",%progbits
	.align	2
	.global	vec_insert_
	.syntax unified
	.arm
	.type	vec_insert_, %function
vec_insert_:
.LVL46:
.LFB9:
	.loc 1 66 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 67 3 view .LVU126
	.loc 1 66 3 is_stmt 0 view .LVU127
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB24:
.LBB25:
	.loc 1 12 19 view .LVU128
	ldr	ip, [r1]
.LBE25:
.LBE24:
	.loc 1 66 3 view .LVU129
	mov	r4, r3
.LBB32:
.LBB29:
	.loc 1 12 21 view .LVU130
	ldr	r3, [r2]
.LVL47:
	.loc 1 12 21 view .LVU131
.LBE29:
.LBE32:
	.loc 1 66 3 view .LVU132
	mov	r8, r0
.LVL48:
.LBB33:
.LBI24:
	.loc 1 11 5 is_stmt 1 view .LVU133
.LBB30:
	.loc 1 12 3 view .LVU134
	.loc 1 12 6 is_stmt 0 view .LVU135
	cmp	ip, r3
.LBB26:
	.loc 1 15 11 view .LVU136
	ldr	r0, [r0]
.LVL49:
	.loc 1 15 11 view .LVU137
.LBE26:
	.loc 1 12 6 view .LVU138
	blt	.L35
.LBB27:
	.loc 1 14 34 view .LVU139
	cmp	r3, #0
	.loc 1 14 34 discriminator 1 view .LVU140
	lslne	r5, r3, #1
	mov	r6, r1
	moveq	r1, r4
.LVL50:
	.loc 1 15 28 view .LVU141
	mulne	r1, r5, r4
	.loc 1 14 34 discriminator 2 view .LVU142
	moveq	r5, #1
	mov	r7, r2
	.loc 1 13 5 is_stmt 1 view .LVU143
	.loc 1 14 5 view .LVU144
.LVL51:
	.loc 1 15 5 view .LVU145
	.loc 1 15 11 is_stmt 0 view .LVU146
	bl	realloc
.LVL52:
	.loc 1 16 5 is_stmt 1 view .LVU147
	.loc 1 16 8 is_stmt 0 view .LVU148
	cmp	r0, #0
	.loc 1 16 8 view .LVU149
	beq	.L39
	.loc 1 17 5 is_stmt 1 view .LVU150
	.loc 1 17 11 is_stmt 0 view .LVU151
	str	r0, [r8]
	.loc 1 18 5 is_stmt 1 view .LVU152
	.loc 1 18 15 is_stmt 0 view .LVU153
	str	r5, [r7]
.LVL53:
	.loc 1 18 15 view .LVU154
.LBE27:
.LBE30:
.LBE33:
	.loc 1 68 3 is_stmt 1 view .LVU155
	.loc 1 71 12 is_stmt 0 view .LVU156
	ldr	ip, [r6]
.LVL54:
.L35:
	.loc 1 69 3 is_stmt 1 view .LVU157
	.loc 1 69 24 is_stmt 0 view .LVU158
	ldr	r3, [sp, #24]
	.loc 1 71 20 view .LVU159
	ldr	r2, [sp, #24]
	.loc 1 69 24 view .LVU160
	add	r3, r3, #1
	.loc 1 69 29 view .LVU161
	mul	r3, r4, r3
	.loc 1 71 20 view .LVU162
	sub	r2, ip, r2
	.loc 1 70 23 view .LVU163
	sub	r1, r3, r4
	.loc 1 69 3 view .LVU164
	add	r1, r0, r1
	mul	r2, r4, r2
	add	r0, r0, r3
	bl	memmove
.LVL55:
	.loc 1 72 3 is_stmt 1 view .LVU165
	.loc 1 72 10 is_stmt 0 view .LVU166
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL56:
.L39:
.LBB34:
.LBB31:
.LBB28:
	.loc 1 16 28 discriminator 1 view .LVU167
	mvn	r0, #0
.LVL57:
	.loc 1 16 28 discriminator 1 view .LVU168
.LBE28:
.LBE31:
.LBE34:
	.loc 1 73 1 view .LVU169
	pop	{r4, r5, r6, r7, r8, pc}
	.cfi_endproc
.LFE9:
	.size	vec_insert_, .-vec_insert_
	.section	.text.vec_splice_,"ax",%progbits
	.align	2
	.global	vec_splice_
	.syntax unified
	.arm
	.type	vec_splice_, %function
vec_splice_:
.LVL58:
.LFB10:
	.loc 1 78 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 79 3 view .LVU171
	.loc 1 80 3 view .LVU172
	.loc 1 78 3 is_stmt 0 view .LVU173
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 78 3 view .LVU174
	ldr	ip, [sp, #8]
	.loc 1 82 20 view .LVU175
	ldr	r2, [r1]
.LVL59:
	.loc 1 78 3 view .LVU176
	ldr	lr, [sp, #12]
	.loc 1 80 11 view .LVU177
	ldr	r0, [r0]
.LVL60:
	.loc 1 82 20 view .LVU178
	sub	r2, r2, ip
	.loc 1 81 26 view .LVU179
	add	r4, ip, lr
	.loc 1 82 28 view .LVU180
	sub	r2, r2, lr
	.loc 1 80 3 view .LVU181
	mla	r1, r3, r4, r0
.LVL61:
	.loc 1 83 1 view .LVU182
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 80 3 view .LVU183
	mul	r2, r3, r2
	mla	r0, r3, ip, r0
	b	memmove
.LVL62:
	.loc 1 80 3 view .LVU184
	.cfi_endproc
.LFE10:
	.size	vec_splice_, .-vec_splice_
	.section	.text.vec_swapsplice_,"ax",%progbits
	.align	2
	.global	vec_swapsplice_
	.syntax unified
	.arm
	.type	vec_swapsplice_, %function
vec_swapsplice_:
.LVL63:
.LFB11:
	.loc 1 88 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 89 3 view .LVU186
	.loc 1 90 3 view .LVU187
	.loc 1 88 3 is_stmt 0 view .LVU188
	ldr	r2, [sp, #4]
.LVL64:
	.loc 1 91 28 view .LVU189
	ldr	r1, [r1]
.LVL65:
	.loc 1 90 11 view .LVU190
	ldr	r0, [r0]
.LVL66:
	.loc 1 88 3 view .LVU191
	ldr	ip, [sp]
	.loc 1 91 28 view .LVU192
	sub	r1, r1, r2
	.loc 1 90 3 view .LVU193
	mla	r1, r3, r1, r0
	mul	r2, r2, r3
	mla	r0, r3, ip, r0
	b	memmove
.LVL67:
	.loc 1 90 3 view .LVU194
	.cfi_endproc
.LFE11:
	.size	vec_swapsplice_, .-vec_swapsplice_
	.section	.text.vec_swap_,"ax",%progbits
	.align	2
	.global	vec_swap_
	.syntax unified
	.arm
	.type	vec_swap_, %function
vec_swap_:
.LVL68:
.LFB12:
	.loc 1 98 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 98 3 is_stmt 0 view .LVU196
	ldr	ip, [sp]
	ldr	r2, [sp, #4]
.LVL69:
	.loc 1 103 6 view .LVU197
	cmp	ip, r2
	.loc 1 99 3 is_stmt 1 view .LVU198
	.loc 1 100 3 view .LVU199
	.loc 1 101 3 view .LVU200
	.loc 1 102 3 view .LVU201
	.loc 1 103 3 view .LVU202
	.loc 1 103 6 is_stmt 0 view .LVU203
	bxeq	lr
	.loc 1 104 3 is_stmt 1 view .LVU204
	.loc 1 104 7 is_stmt 0 view .LVU205
	ldr	r1, [r0]
.LVL70:
	.loc 1 107 10 view .LVU206
	cmp	r3, #0
	.loc 1 104 37 view .LVU207
	mul	ip, r3, ip
.LVL71:
	.loc 1 105 3 is_stmt 1 view .LVU208
	.loc 1 105 5 is_stmt 0 view .LVU209
	mla	r2, r3, r2, r1
.LVL72:
	.loc 1 106 3 is_stmt 1 view .LVU210
	.loc 1 107 3 view .LVU211
	.loc 1 107 10 view .LVU212
	.loc 1 107 10 is_stmt 0 view .LVU213
	bxeq	lr
	sub	ip, ip, #1
.LVL73:
	.loc 1 107 10 view .LVU214
	add	r1, r1, ip
.LVL74:
	.loc 1 107 10 view .LVU215
	add	r3, r2, r3
.LVL75:
.L46:
	.loc 1 108 5 is_stmt 1 view .LVU216
	.loc 1 108 9 is_stmt 0 view .LVU217
	ldrb	r0, [r1, #1]!	@ zero_extendqisi2
.LVL76:
	.loc 1 109 5 is_stmt 1 view .LVU218
	.loc 1 109 10 is_stmt 0 view .LVU219
	ldrb	ip, [r2]	@ zero_extendqisi2
	.loc 1 109 8 view .LVU220
	strb	ip, [r1]
	.loc 1 110 5 is_stmt 1 view .LVU221
	.loc 1 110 8 is_stmt 0 view .LVU222
	strb	r0, [r2], #1
.LVL77:
	.loc 1 111 5 is_stmt 1 view .LVU223
	.loc 1 107 10 view .LVU224
	.loc 1 107 10 is_stmt 0 view .LVU225
	cmp	r2, r3
	bne	.L46
	bx	lr
	.cfi_endproc
.LFE12:
	.size	vec_swap_, .-vec_swap_
	.text
.Letext0:
	.file 2 "C:/devkitPro/devkitARM/arm-none-eabi/include/string.h"
	.file 3 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 4 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x736
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1d
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.LLRL62
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x16
	.4byte	.LASF34
	.byte	0x4
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x9
	.4byte	0x5c
	.uleb128 0x9
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x9
	.4byte	0x97
	.uleb128 0x19
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x40
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x2
	.byte	0x20
	.byte	0x8
	.4byte	0x7f
	.4byte	0xd0
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x92
	.uleb128 0x6
	.4byte	0x34
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF35
	.byte	0x3
	.byte	0x5e
	.byte	0x6
	.4byte	0xe2
	.uleb128 0x6
	.4byte	0x7f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x3
	.byte	0x91
	.byte	0x7
	.4byte	0x7f
	.4byte	0xfd
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x34
	.byte	0
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x60
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c3
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x60
	.byte	0x17
	.4byte	0x98
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x60
	.byte	0x22
	.4byte	0x9d
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x60
	.byte	0x2f
	.4byte	0x9d
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x60
	.byte	0x3d
	.4byte	0x40
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x61
	.byte	0x14
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x61
	.byte	0x1e
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x5
	.ascii	"a\000"
	.byte	0x63
	.byte	0x12
	.4byte	0x81
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x5
	.ascii	"b\000"
	.byte	0x63
	.byte	0x16
	.4byte	0x81
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x5
	.ascii	"tmp\000"
	.byte	0x63
	.byte	0x19
	.4byte	0x5c
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x1b
	.4byte	.LASF21
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.4byte	0x40
	.4byte	.LLST61
	.4byte	.LVUS61
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x56
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25b
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x56
	.byte	0x1d
	.4byte	0x98
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x56
	.byte	0x28
	.4byte	0x9d
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x56
	.byte	0x35
	.4byte	0x9d
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x56
	.byte	0x43
	.4byte	0x40
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x57
	.byte	0x1a
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x57
	.byte	0x25
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.4byte	.LVL67
	.4byte	0xb0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x4c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e1
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x4c
	.byte	0x19
	.4byte	0x98
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x4c
	.byte	0x24
	.4byte	0x9d
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x4c
	.byte	0x31
	.4byte	0x9d
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x4c
	.byte	0x3f
	.4byte	0x40
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4d
	.byte	0x16
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4d
	.byte	0x21
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.4byte	.LVL62
	.4byte	0xb0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x40
	.4byte	0x40
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e7
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x40
	.byte	0x18
	.4byte	0x98
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x40
	.byte	0x23
	.4byte	0x9d
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x40
	.byte	0x30
	.4byte	0x9d
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x40
	.byte	0x3e
	.4byte	0x40
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x12
	.ascii	"idx\000"
	.byte	0x41
	.byte	0x16
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.ascii	"err\000"
	.byte	0x43
	.byte	0x7
	.4byte	0x40
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x1e
	.4byte	0x610
	.4byte	.LBI24
	.byte	.LVU133
	.4byte	.LLRL38
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x3dd
	.uleb128 0x2
	.4byte	0x63f
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x2
	.4byte	0x634
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x2
	.4byte	0x629
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x2
	.4byte	0x61e
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0xb
	.4byte	0x64a
	.4byte	.LLRL43
	.uleb128 0x8
	.4byte	0x64b
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x8
	.4byte	0x656
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0xc
	.4byte	.LVL52
	.4byte	0xe2
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL55
	.4byte	0xb0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x2e
	.4byte	0x40
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49d
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x2e
	.byte	0x19
	.4byte	0x98
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x2e
	.byte	0x24
	.4byte	0x9d
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x2e
	.byte	0x31
	.4byte	0x9d
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x2e
	.byte	0x3f
	.4byte	0x40
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x1f
	.4byte	.LLRL30
	.4byte	0x493
	.uleb128 0x5
	.ascii	"ptr\000"
	.byte	0x35
	.byte	0xb
	.4byte	0x7f
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x5
	.ascii	"n\000"
	.byte	0x36
	.byte	0x9
	.4byte	0x40
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0xf
	.4byte	.LVL40
	.4byte	0xe2
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xc
	.byte	0x76
	.sleb128 0
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL43
	.4byte	0xd0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x24
	.4byte	0x40
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a4
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0x25
	.byte	0xa
	.4byte	0x98
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x25
	.byte	0x15
	.4byte	0x9d
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x25
	.byte	0x22
	.4byte	0x9d
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x25
	.byte	0x30
	.4byte	0x40
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x12
	.ascii	"n\000"
	.byte	0x25
	.byte	0x3b
	.4byte	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.ascii	"n2\000"
	.byte	0x27
	.byte	0x7
	.4byte	0x40
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x20
	.4byte	0x5a4
	.4byte	.LBI11
	.byte	.LVU68
	.4byte	.LLRL18
	.byte	0x1
	.byte	0x2a
	.byte	0xa
	.uleb128 0x2
	.4byte	0x5de
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x2
	.4byte	0x5d3
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2
	.4byte	0x5c8
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x2
	.4byte	0x5bd
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x2
	.4byte	0x5b2
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xb
	.4byte	0x5e8
	.4byte	.LLRL24
	.uleb128 0x8
	.4byte	0x5e9
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0xf
	.4byte	.LVL32
	.4byte	0xe2
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xc
	.byte	0x74
	.sleb128 0
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x18
	.4byte	0x40
	.4byte	0x610
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x18
	.byte	0x19
	.4byte	0x98
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x18
	.byte	0x24
	.4byte	0x9d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x18
	.byte	0x31
	.4byte	0x9d
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x18
	.byte	0x3f
	.4byte	0x40
	.uleb128 0x21
	.ascii	"n\000"
	.byte	0x1
	.byte	0x18
	.byte	0x4a
	.4byte	0x40
	.uleb128 0x14
	.uleb128 0x10
	.ascii	"ptr\000"
	.byte	0x1b
	.byte	0xb
	.4byte	0x7f
	.uleb128 0xf
	.4byte	.LVL18
	.4byte	0xe2
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xc
	.byte	0x76
	.sleb128 0
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0xb
	.4byte	0x40
	.4byte	0x66a
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0xb
	.byte	0x18
	.4byte	0x98
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0xb
	.byte	0x23
	.4byte	0x9d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0xb
	.byte	0x30
	.4byte	0x9d
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0xb
	.byte	0x3e
	.4byte	0x40
	.uleb128 0x14
	.uleb128 0x10
	.ascii	"ptr\000"
	.byte	0xd
	.byte	0xb
	.4byte	0x7f
	.uleb128 0x10
	.ascii	"n\000"
	.byte	0xe
	.byte	0x9
	.4byte	0x40
	.uleb128 0xc
	.4byte	.LVL8
	.4byte	0xe2
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x610
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d6
	.uleb128 0x2
	.4byte	0x61e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2
	.4byte	0x629
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2
	.4byte	0x634
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2
	.4byte	0x63f
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xb
	.4byte	0x64a
	.4byte	.LLRL4
	.uleb128 0x8
	.4byte	0x64b
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x8
	.4byte	0x656
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x5a4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	0x5b2
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2
	.4byte	0x5bd
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2
	.4byte	0x5c8
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2
	.4byte	0x5d3
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x24
	.4byte	0x5de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.4byte	0x5e8
	.4byte	.LLRL11
	.uleb128 0x8
	.4byte	0x5e9
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
.LVUS54:
	.uleb128 0
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 0
.LLST54:
	.byte	0x6
	.4byte	.LVL68
	.byte	0x4
	.uleb128 .LVL68-.LVL68
	.uleb128 .LVL75-.LVL68
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL75-.LVL68
	.uleb128 .LFE12-.LVL68
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
.LVUS55:
	.uleb128 0
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 0
.LLST55:
	.byte	0x6
	.4byte	.LVL68
	.byte	0x4
	.uleb128 .LVL68-.LVL68
	.uleb128 .LVL70-.LVL68
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL70-.LVL68
	.uleb128 .LFE12-.LVL68
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
.LVUS56:
	.uleb128 0
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 0
.LLST56:
	.byte	0x6
	.4byte	.LVL68
	.byte	0x4
	.uleb128 .LVL68-.LVL68
	.uleb128 .LVL69-.LVL68
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL69-.LVL68
	.uleb128 .LFE12-.LVL68
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
.LVUS57:
	.uleb128 0
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 0
.LLST57:
	.byte	0x6
	.4byte	.LVL68
	.byte	0x4
	.uleb128 .LVL68-.LVL68
	.uleb128 .LVL75-.LVL68
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL75-.LVL68
	.uleb128 .LFE12-.LVL68
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
.LVUS58:
	.uleb128 .LVU208
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 0
.LLST58:
	.byte	0x6
	.4byte	.LVL71
	.byte	0x4
	.uleb128 .LVL71-.LVL71
	.uleb128 .LVL73-.LVL71
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.LVL71
	.uleb128 .LVL74-.LVL71
	.uleb128 0x8
	.byte	0x71
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL74-.LVL71
	.uleb128 .LVL75-.LVL71
	.uleb128 0x9
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.LVL71
	.uleb128 .LVL76-.LVL71
	.uleb128 0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL76-.LVL71
	.uleb128 .LVL77-.LVL71
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL77-.LVL71
	.uleb128 .LFE12-.LVL71
	.uleb128 0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 .LVU210
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 0
.LLST59:
	.byte	0x6
	.4byte	.LVL72
	.byte	0x4
	.uleb128 .LVL72-.LVL72
	.uleb128 .LVL77-.LVL72
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL77-.LVL72
	.uleb128 .LVL77-.LVL72
	.uleb128 0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL77-.LVL72
	.uleb128 .LFE12-.LVL72
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS60:
	.uleb128 .LVU218
	.uleb128 0
.LLST60:
	.byte	0x8
	.4byte	.LVL76
	.uleb128 .LFE12-.LVL76
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS61:
	.uleb128 .LVU211
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU216
.LLST61:
	.byte	0x6
	.4byte	.LVL72
	.byte	0x4
	.uleb128 .LVL72-.LVL72
	.uleb128 .LVL72-.LVL72
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL72-.LVL72
	.uleb128 .LVL75-.LVL72
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 0
.LLST50:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL66-.LVL63
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL66-.LVL63
	.uleb128 .LFE11-.LVL63
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
.LVUS51:
	.uleb128 0
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 0
.LLST51:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL65-.LVL63
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL65-.LVL63
	.uleb128 .LFE11-.LVL63
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
.LVUS52:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST52:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL64-.LVL63
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL64-.LVL63
	.uleb128 .LFE11-.LVL63
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
.LVUS53:
	.uleb128 0
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 0
.LLST53:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL67-1-.LVL63
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL67-1-.LVL63
	.uleb128 .LFE11-.LVL63
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
.LVUS46:
	.uleb128 0
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 0
.LLST46:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL60-.LVL58
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL60-.LVL58
	.uleb128 .LFE10-.LVL58
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
.LVUS47:
	.uleb128 0
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 0
.LLST47:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL61-.LVL58
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL61-.LVL58
	.uleb128 .LFE10-.LVL58
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
.LVUS48:
	.uleb128 0
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 0
.LLST48:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL59-.LVL58
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL59-.LVL58
	.uleb128 .LFE10-.LVL58
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
.LVUS49:
	.uleb128 0
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 0
.LLST49:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL62-1-.LVL58
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL62-1-.LVL58
	.uleb128 .LFE10-.LVL58
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
.LVUS33:
	.uleb128 0
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 0
.LLST33:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL49-.LVL46
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL49-.LVL46
	.uleb128 .LFE9-.LVL46
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS34:
	.uleb128 0
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST34:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL50-.LVL46
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL50-.LVL46
	.uleb128 .LVL54-.LVL46
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL54-.LVL46
	.uleb128 .LVL56-.LVL46
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
	.uleb128 .LVL56-.LVL46
	.uleb128 .LFE9-.LVL46
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST35:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL52-1-.LVL46
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL52-1-.LVL46
	.uleb128 .LVL54-.LVL46
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL54-.LVL46
	.uleb128 .LVL56-.LVL46
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
	.byte	0x4
	.uleb128 .LVL56-.LVL46
	.uleb128 .LFE9-.LVL46
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 0
.LLST36:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL47-.LVL46
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL47-.LVL46
	.uleb128 .LFE9-.LVL46
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS37:
	.uleb128 .LVU154
	.uleb128 .LVU157
.LLST37:
	.byte	0x8
	.4byte	.LVL53
	.uleb128 .LVL54-.LVL53
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS39:
	.uleb128 .LVU133
	.uleb128 .LVU154
	.uleb128 .LVU167
	.uleb128 .LVU168
.LLST39:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL53-.LVL48
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL56-.LVL48
	.uleb128 .LVL57-.LVL48
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS40:
	.uleb128 .LVU133
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU154
	.uleb128 .LVU167
	.uleb128 .LVU168
.LLST40:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL52-1-.LVL48
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL52-1-.LVL48
	.uleb128 .LVL53-.LVL48
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL56-.LVL48
	.uleb128 .LVL57-.LVL48
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS41:
	.uleb128 .LVU133
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU154
	.uleb128 .LVU167
	.uleb128 .LVU168
.LLST41:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL50-.LVL48
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL50-.LVL48
	.uleb128 .LVL53-.LVL48
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL56-.LVL48
	.uleb128 .LVL57-.LVL48
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS42:
	.uleb128 .LVU133
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU154
	.uleb128 .LVU167
	.uleb128 .LVU168
.LLST42:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL49-.LVL48
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL49-.LVL48
	.uleb128 .LVL53-.LVL48
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL56-.LVL48
	.uleb128 .LVL57-.LVL48
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS44:
	.uleb128 .LVU147
	.uleb128 .LVU154
	.uleb128 .LVU167
	.uleb128 .LVU168
.LLST44:
	.byte	0x6
	.4byte	.LVL52
	.byte	0x4
	.uleb128 .LVL52-.LVL52
	.uleb128 .LVL53-.LVL52
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL56-.LVL52
	.uleb128 .LVL57-.LVL52
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS45:
	.uleb128 .LVU145
	.uleb128 .LVU157
	.uleb128 .LVU167
	.uleb128 0
.LLST45:
	.byte	0x6
	.4byte	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL54-.LVL51
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL56-.LVL51
	.uleb128 .LFE9-.LVL51
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST26:
	.byte	0x6
	.4byte	.LVL36
	.byte	0x4
	.uleb128 .LVL36-.LVL36
	.uleb128 .LVL37-.LVL36
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL37-.LVL36
	.uleb128 .LFE8-.LVL36
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 0
.LLST27:
	.byte	0x6
	.4byte	.LVL36
	.byte	0x4
	.uleb128 .LVL36-.LVL36
	.uleb128 .LVL39-.LVL36
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL39-.LVL36
	.uleb128 .LVL42-.LVL36
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
	.uleb128 .LVL42-.LVL36
	.uleb128 .LVL43-1-.LVL36
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL43-1-.LVL36
	.uleb128 .LFE8-.LVL36
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
.LVUS28:
	.uleb128 0
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 0
.LLST28:
	.byte	0x6
	.4byte	.LVL36
	.byte	0x4
	.uleb128 .LVL36-.LVL36
	.uleb128 .LVL40-1-.LVL36
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL40-1-.LVL36
	.uleb128 .LVL42-.LVL36
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL42-.LVL36
	.uleb128 .LVL43-1-.LVL36
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL43-1-.LVL36
	.uleb128 .LFE8-.LVL36
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 0
.LLST29:
	.byte	0x6
	.4byte	.LVL36
	.byte	0x4
	.uleb128 .LVL36-.LVL36
	.uleb128 .LVL40-1-.LVL36
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL40-1-.LVL36
	.uleb128 .LVL42-.LVL36
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
	.uleb128 .LVL42-.LVL36
	.uleb128 .LVL43-1-.LVL36
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL43-1-.LVL36
	.uleb128 .LFE8-.LVL36
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
.LVUS31:
	.uleb128 .LVU105
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU115
	.uleb128 .LVU122
	.uleb128 .LVU123
.LLST31:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL41-.LVL40
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL41-.LVL40
	.uleb128 .LVL42-.LVL40
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL44-.LVL40
	.uleb128 .LVL45-.LVL40
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS32:
	.uleb128 .LVU102
	.uleb128 .LVU115
	.uleb128 .LVU122
	.uleb128 0
.LLST32:
	.byte	0x6
	.4byte	.LVL38
	.byte	0x4
	.uleb128 .LVL38-.LVL38
	.uleb128 .LVL42-.LVL38
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL44-.LVL38
	.uleb128 .LFE8-.LVL38
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL28-.LVL22
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL28-.LVL22
	.uleb128 .LVL29-.LVL22
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
	.uleb128 .LVL29-.LVL22
	.uleb128 .LVL31-.LVL22
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.LVL22
	.uleb128 .LFE7-.LVL22
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL30-.LVL22
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL30-.LVL22
	.uleb128 .LFE7-.LVL22
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
.LVUS15:
	.uleb128 0
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL26-.LVL22
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL26-.LVL22
	.uleb128 .LVL27-.LVL22
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL27-.LVL22
	.uleb128 .LVL29-.LVL22
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
	.byte	0x4
	.uleb128 .LVL29-.LVL22
	.uleb128 .LFE7-.LVL22
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL32-1-.LVL22
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL32-1-.LVL22
	.uleb128 .LFE7-.LVL22
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
.LVUS17:
	.uleb128 .LVU56
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU67
.LLST17:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL23-.LVL22
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.LVL22
	.uleb128 .LVL25-.LVL22
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS19:
	.uleb128 .LVU68
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 .LVU89
.LLST19:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS20:
	.uleb128 .LVU68
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU89
.LLST20:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL32-1-.LVL25
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL32-1-.LVL25
	.uleb128 .LVL35-.LVL25
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
.LVUS21:
	.uleb128 .LVU68
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 .LVU89
.LLST21:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL26-.LVL25
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL26-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS22:
	.uleb128 .LVU68
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU89
.LLST22:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL30-.LVL25
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL30-.LVL25
	.uleb128 .LVL35-.LVL25
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
.LVUS23:
	.uleb128 .LVU68
	.uleb128 .LVU73
	.uleb128 .LVU76
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU89
.LLST23:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL31-.LVL25
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS25:
	.uleb128 .LVU80
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU89
.LLST25:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL33-.LVL32
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL33-.LVL32
	.uleb128 .LVL34-.LVL32
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL34-.LVL32
	.uleb128 .LVL35-.LVL32
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL4-.LVL0
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
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LFE5-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
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
	.uleb128 .LFE5-.LVL0
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
.LVUS2:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE5-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LFE5-.LVL0
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
.LVUS5:
	.uleb128 .LVU19
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
.LLST5:
	.byte	0x6
	.4byte	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL9-.LVL8
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-.LVL8
	.uleb128 .LVL10-.LVL8
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL10-.LVL8
	.uleb128 .LVL11-.LVL8
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS6:
	.uleb128 .LVU17
	.uleb128 0
.LLST6:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LFE5-.LVL7
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL14-.LVL12
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL14-.LVL12
	.uleb128 .LVL15-.LVL12
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
	.uleb128 .LVL15-.LVL12
	.uleb128 .LVL17-.LVL12
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL17-.LVL12
	.uleb128 .LFE6-.LVL12
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL16-.LVL12
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL16-.LVL12
	.uleb128 .LFE6-.LVL12
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
.LVUS9:
	.uleb128 0
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LFE6-.LVL12
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL18-1-.LVL12
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-1-.LVL12
	.uleb128 .LFE6-.LVL12
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
.LVUS12:
	.uleb128 .LVU43
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU52
.LLST12:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL19-.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL20-.LVL18
	.uleb128 .LVL21-.LVL18
	.uleb128 0x1
	.byte	0x50
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LBB3
	.byte	0x4
	.uleb128 .LBB3-.LBB3
	.uleb128 .LBE3-.LBB3
	.byte	0x4
	.uleb128 .LBB4-.LBB3
	.uleb128 .LBE4-.LBB3
	.byte	0
.LLRL11:
	.byte	0x5
	.4byte	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB7-.LBB6
	.uleb128 .LBE7-.LBB6
	.byte	0
.LLRL18:
	.byte	0x5
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB17-.LBB11
	.uleb128 .LBE17-.LBB11
	.byte	0x4
	.uleb128 .LBB18-.LBB11
	.uleb128 .LBE18-.LBB11
	.byte	0
.LLRL24:
	.byte	0x5
	.4byte	.LBB13
	.byte	0x4
	.uleb128 .LBB13-.LBB13
	.uleb128 .LBE13-.LBB13
	.byte	0x4
	.uleb128 .LBB14-.LBB13
	.uleb128 .LBE14-.LBB13
	.byte	0
.LLRL30:
	.byte	0x5
	.4byte	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB20-.LBB19
	.uleb128 .LBE20-.LBB19
	.byte	0
.LLRL38:
	.byte	0x5
	.4byte	.LBB24
	.byte	0x4
	.uleb128 .LBB24-.LBB24
	.uleb128 .LBE24-.LBB24
	.byte	0x4
	.uleb128 .LBB32-.LBB24
	.uleb128 .LBE32-.LBB24
	.byte	0x4
	.uleb128 .LBB33-.LBB24
	.uleb128 .LBE33-.LBB24
	.byte	0x4
	.uleb128 .LBB34-.LBB24
	.uleb128 .LBE34-.LBB24
	.byte	0
.LLRL43:
	.byte	0x5
	.4byte	.LBB26
	.byte	0x4
	.uleb128 .LBB26-.LBB26
	.uleb128 .LBE26-.LBB26
	.byte	0x4
	.uleb128 .LBB27-.LBB26
	.uleb128 .LBE27-.LBB26
	.byte	0x4
	.uleb128 .LBB28-.LBB26
	.uleb128 .LBE28-.LBB26
	.byte	0
.LLRL62:
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0x7
	.4byte	.LFB8
	.uleb128 .LFE8-.LFB8
	.byte	0x7
	.4byte	.LFB9
	.uleb128 .LFE9-.LFB9
	.byte	0x7
	.4byte	.LFB10
	.uleb128 .LFE10-.LFB10
	.byte	0x7
	.4byte	.LFB11
	.uleb128 .LFE11-.LFB11
	.byte	0x7
	.4byte	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF19:
	.ascii	"idx1\000"
.LASF34:
	.ascii	"size_t\000"
.LASF17:
	.ascii	"capacity\000"
.LASF27:
	.ascii	"vec_compact_\000"
.LASF21:
	.ascii	"count\000"
.LASF20:
	.ascii	"idx2\000"
.LASF24:
	.ascii	"start\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF26:
	.ascii	"vec_insert_\000"
.LASF11:
	.ascii	"float\000"
.LASF15:
	.ascii	"data\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF18:
	.ascii	"memsz\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF23:
	.ascii	"vec_swapsplice_\000"
.LASF28:
	.ascii	"vec_reserve_po2_\000"
.LASF32:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/dependencies/"
	.ascii	"vec/vec.c\000"
.LASF12:
	.ascii	"double\000"
.LASF14:
	.ascii	"realloc\000"
.LASF30:
	.ascii	"vec_expand_\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF31:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF13:
	.ascii	"memmove\000"
.LASF3:
	.ascii	"long double\000"
.LASF35:
	.ascii	"free\000"
.LASF2:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"char\000"
.LASF25:
	.ascii	"vec_splice_\000"
.LASF6:
	.ascii	"short int\000"
.LASF33:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF22:
	.ascii	"vec_swap_\000"
.LASF8:
	.ascii	"long int\000"
.LASF29:
	.ascii	"vec_reserve_\000"
.LASF4:
	.ascii	"signed char\000"
.LASF16:
	.ascii	"length\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
