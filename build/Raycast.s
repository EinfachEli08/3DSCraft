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
	.file	"Raycast.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Raycast.c"
	.section	.text.Raycast_Cast,"ax",%progbits
	.align	2
	.global	Raycast_Cast
	.syntax unified
	.arm
	.type	Raycast_Cast, %function
Raycast_Cast:
.LVL0:
.LFB226:
	.loc 1 11 82 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB21:
.LBB22:
	.file 2 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/NumberUtils.h"
	.loc 2 25 47 is_stmt 0 view .LVU1
	vcvt.s32.f32	s13, s0
.LBE22:
.LBE21:
	.loc 1 11 82 view .LVU2
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
.LBB29:
.LBB30:
	.loc 2 25 47 view .LVU3
	vcvt.s32.f32	s14, s1
.LBE30:
.LBE29:
	.loc 1 11 82 view .LVU4
	vpush.64	{d8, d9, d10, d11, d12, d13}
	.cfi_def_cfa_offset 84
	.cfi_offset 80, -84
	.cfi_offset 81, -80
	.cfi_offset 82, -76
	.cfi_offset 83, -72
	.cfi_offset 84, -68
	.cfi_offset 85, -64
	.cfi_offset 86, -60
	.cfi_offset 87, -56
	.cfi_offset 88, -52
	.cfi_offset 89, -48
	.cfi_offset 90, -44
	.cfi_offset 91, -40
.LBB37:
.LBB23:
	.loc 2 25 58 view .LVU5
	vcvt.f32.s32	s8, s13
.LBE23:
.LBE37:
	.loc 1 15 8 view .LVU6
	vmul.f32	s18, s4, s4
	.loc 1 16 8 view .LVU7
	vmul.f32	s17, s5, s5
.LBB38:
.LBB24:
	.loc 2 25 58 view .LVU8
	vcmpe.f32	s8, s0
.LBE24:
.LBE38:
.LBB39:
.LBB40:
	.loc 2 25 47 view .LVU9
	vcvt.s32.f32	s15, s2
.LBE40:
.LBE39:
	.loc 1 14 8 view .LVU10
	vmul.f32	s16, s3, s3
.LBB47:
.LBB31:
	.loc 2 25 58 view .LVU11
	vcvt.f32.s32	s10, s14
.LBE31:
.LBE47:
	.loc 1 18 39 view .LVU12
	vadd.f32	s9, s18, s17
.LBB48:
.LBB25:
	.loc 2 25 58 view .LVU13
	vmrs	APSR_nzcv, FPSCR
.LBE25:
.LBE48:
	.loc 1 18 21 view .LVU14
	vldr.32	s11, .L59
.LBB49:
.LBB32:
	.loc 2 25 58 view .LVU15
	vcmpe.f32	s1, s10
.LBE32:
.LBE49:
	.loc 1 11 82 view .LVU16
	vmov.f32	s20, s0
.LVL1:
.LBB50:
.LBB41:
	.loc 2 25 58 view .LVU17
	vcvt.f32.s32	s12, s15
.LBE41:
.LBE50:
	.loc 1 18 47 view .LVU18
	vdiv.f32	s0, s9, s16
.LVL2:
.LBB51:
.LBB26:
	.loc 2 25 58 view .LVU19
	movgt	r3, #1
	movle	r3, #0
	.loc 2 25 56 view .LVU20
	vmov	r2, s13	@ int
.LBE26:
.LBE51:
.LBB52:
.LBB33:
	.loc 2 25 58 view .LVU21
	vmrs	APSR_nzcv, FPSCR
.LBE33:
.LBE52:
	.loc 1 18 21 view .LVU22
	vadd.f32	s0, s0, s11
.LBB53:
.LBB42:
	.loc 2 25 58 view .LVU23
	vcmpe.f32	s12, s2
.LBE42:
.LBE53:
.LBB54:
.LBB27:
	.loc 2 25 56 view .LVU24
	sub	r6, r2, r3
.LBE27:
.LBE54:
.LBB55:
.LBB34:
	.loc 2 25 58 view .LVU25
	movmi	r3, #1
	movpl	r3, #0
	.loc 2 25 56 view .LVU26
	vmov	r2, s14	@ int
.LBE34:
.LBE55:
.LBB56:
.LBB43:
	.loc 2 25 58 view .LVU27
	vmrs	APSR_nzcv, FPSCR
	vcmp.f32	s0, #0
.LBE43:
.LBE56:
.LBB57:
.LBB35:
	.loc 2 25 56 view .LVU28
	sub	r5, r2, r3
.LBE35:
.LBE57:
.LBB58:
.LBB44:
	.loc 2 25 58 view .LVU29
	movgt	r3, #1
	movle	r3, #0
	.loc 2 25 56 view .LVU30
	vmov	r2, s15	@ int
	vmrs	APSR_nzcv, FPSCR
.LBE44:
.LBE58:
	.loc 1 11 82 view .LVU31
	sub	sp, sp, #36
	.cfi_def_cfa_offset 120
	.loc 1 11 82 view .LVU32
	vmov.f32	s21, s1
.LVL3:
	.loc 1 11 82 view .LVU33
	vmov.f32	s23, s4
	vmov.f32	s22, s5
	vmov.f32	s19, s2
.LVL4:
	.loc 1 11 82 view .LVU34
	vmov.f32	s24, s3
.LVL5:
	.loc 1 12 2 is_stmt 1 view .LVU35
.LBB59:
.LBI21:
	.loc 2 25 19 view .LVU36
.LBB28:
	.loc 2 25 40 view .LVU37
	.loc 2 25 40 is_stmt 0 view .LVU38
.LBE28:
.LBE59:
.LBB60:
.LBI29:
	.loc 2 25 19 is_stmt 1 view .LVU39
.LBB36:
	.loc 2 25 40 view .LVU40
	.loc 2 25 40 is_stmt 0 view .LVU41
.LBE36:
.LBE60:
.LBB61:
.LBI39:
	.loc 2 25 19 is_stmt 1 view .LVU42
.LBB45:
	.loc 2 25 40 view .LVU43
.LBE45:
.LBE61:
	.loc 1 11 82 is_stmt 0 view .LVU44
	mov	r7, r0
	str	r1, [sp, #4]
.LBB62:
.LBB46:
	.loc 2 25 56 view .LVU45
	sub	r4, r2, r3
.LVL6:
	.loc 2 25 56 view .LVU46
.LBE46:
.LBE62:
	.loc 1 14 2 is_stmt 1 view .LVU47
	.loc 1 15 2 view .LVU48
	.loc 1 16 2 view .LVU49
	.loc 1 18 2 view .LVU50
	bmi	.L48
	.loc 1 18 21 is_stmt 0 view .LVU51
	vsqrt.f32	s27, s0
.LVL7:
.L4:
	.loc 1 19 2 is_stmt 1 view .LVU52
	.loc 1 19 39 is_stmt 0 view .LVU53
	vadd.f32	s15, s16, s17
	.loc 1 19 21 view .LVU54
	vldr.32	s14, .L59
	.loc 1 19 47 view .LVU55
	vdiv.f32	s0, s15, s18
	.loc 1 19 21 view .LVU56
	vadd.f32	s0, s0, s14
	vcmp.f32	s0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L49
	vsqrt.f32	s26, s0
.L7:
	.loc 1 20 2 is_stmt 1 view .LVU57
	.loc 1 20 39 is_stmt 0 view .LVU58
	vadd.f32	s16, s16, s18
.LVL8:
	.loc 1 20 21 view .LVU59
	vldr.32	s15, .L59
	.loc 1 20 47 view .LVU60
	vdiv.f32	s0, s16, s17
	.loc 1 20 21 view .LVU61
	vadd.f32	s0, s0, s15
	vcmp.f32	s0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L50
	vsqrt.f32	s18, s0
.LVL9:
.L10:
	.loc 1 22 2 is_stmt 1 view .LVU62
	.loc 1 23 2 view .LVU63
	.loc 1 24 2 view .LVU64
	.loc 1 24 5 is_stmt 0 view .LVU65
	vcmpe.f32	s24, #0
	.loc 1 26 24 view .LVU66
	vmov	s15, r6	@ int
	.loc 1 24 5 view .LVU67
	vmrs	APSR_nzcv, FPSCR
	.loc 1 25 3 is_stmt 1 view .LVU68
.LVL10:
	.loc 1 26 3 view .LVU69
	.loc 1 26 24 is_stmt 0 view .LVU70
	vcvt.f32.s32	s25, s15
	.loc 1 29 21 view .LVU71
	vldrpl.32	s15, .L59
	.loc 1 25 9 view .LVU72
	mvnmi	r3, #0
	.loc 1 29 21 view .LVU73
	vaddpl.f32	s25, s25, s15
	.loc 1 28 9 view .LVU74
	movpl	r3, #1
	.loc 1 31 5 view .LVU75
	vcmpe.f32	s23, #0
	.loc 1 33 24 view .LVU76
	vmov	s15, r5	@ int
	.loc 1 26 24 view .LVU77
	vsubmi.f32	s25, s20, s25
	.loc 1 29 27 view .LVU78
	vsubpl.f32	s25, s25, s20
	.loc 1 25 9 view .LVU79
	strmi	r3, [sp]
	.loc 1 28 3 is_stmt 1 view .LVU80
.LVL11:
	.loc 1 29 3 view .LVU81
	.loc 1 28 9 is_stmt 0 view .LVU82
	strpl	r3, [sp]
	.loc 1 31 5 view .LVU83
	vmrs	APSR_nzcv, FPSCR
	.loc 1 33 24 view .LVU84
	vcvt.f32.s32	s16, s15
	.loc 1 36 21 view .LVU85
	vldrpl.32	s15, .L59
	.loc 1 38 5 view .LVU86
	vcmpe.f32	s22, #0
	.loc 1 36 21 view .LVU87
	vaddpl.f32	s16, s16, s15
	.loc 1 33 24 view .LVU88
	vsubmi.f32	s16, s21, s16
	.loc 1 40 24 view .LVU89
	vmov	s15, r4	@ int
	.loc 1 36 27 view .LVU90
	vsubpl.f32	s16, s16, s21
	.loc 1 32 9 view .LVU91
	mvnmi	r10, #0
	.loc 1 35 9 view .LVU92
	movpl	r10, #1
	.loc 1 38 5 view .LVU93
	vmrs	APSR_nzcv, FPSCR
	.loc 1 40 24 view .LVU94
	vcvt.f32.s32	s17, s15
.LVL12:
	.loc 1 43 21 view .LVU95
	vldrpl.32	s15, .L59
	vaddpl.f32	s17, s17, s15
	.loc 1 40 24 view .LVU96
	vsubmi.f32	s17, s19, s17
	.loc 1 43 27 view .LVU97
	vsubpl.f32	s17, s17, s19
	.loc 1 29 13 view .LVU98
	vmul.f32	s25, s25, s27
.LVL13:
	.loc 1 31 2 is_stmt 1 view .LVU99
	.loc 1 32 3 view .LVU100
	.loc 1 33 3 view .LVU101
	.loc 1 35 3 view .LVU102
	.loc 1 36 3 view .LVU103
	.loc 1 36 13 is_stmt 0 view .LVU104
	vmul.f32	s16, s16, s26
.LVL14:
	.loc 1 38 2 is_stmt 1 view .LVU105
	.loc 1 39 3 view .LVU106
	.loc 1 40 3 view .LVU107
	.loc 1 39 9 is_stmt 0 view .LVU108
	mvnmi	fp, #0
	.loc 1 42 3 is_stmt 1 view .LVU109
.LVL15:
	.loc 1 43 3 view .LVU110
	.loc 1 42 9 is_stmt 0 view .LVU111
	movpl	fp, #1
	.loc 1 43 13 view .LVU112
	vmul.f32	s17, s17, s18
.LVL16:
	.loc 1 46 2 is_stmt 1 view .LVU113
	.loc 1 47 2 view .LVU114
	.loc 1 47 13 view .LVU115
	.loc 1 42 9 is_stmt 0 view .LVU116
	mov	r9, #66
.LVL17:
.L31:
	.loc 1 48 3 is_stmt 1 view .LVU117
	.loc 1 52 10 view .LVU118
	.loc 1 48 6 is_stmt 0 view .LVU119
	vcmpe.f32	s16, s25
	vmrs	APSR_nzcv, FPSCR
	ble	.L20
	.loc 1 49 4 is_stmt 1 view .LVU120
	.loc 1 48 29 is_stmt 0 discriminator 1 view .LVU121
	vcmpe.f32	s17, s25
	vmrs	APSR_nzcv, FPSCR
	ble	.L20
	.loc 1 49 14 view .LVU122
	vadd.f32	s25, s25, s27
.LVL18:
	.loc 1 50 4 is_stmt 1 view .LVU123
	.loc 1 51 9 is_stmt 0 view .LVU124
	mov	r8, #0
	.loc 1 50 9 view .LVU125
	ldr	r3, [sp]
	add	r6, r6, r3
.LVL19:
	.loc 1 51 4 is_stmt 1 view .LVU126
.L23:
	.loc 1 61 3 view .LVU127
	.loc 1 61 7 is_stmt 0 view .LVU128
	mov	r3, r4
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	World_GetBlock
.LVL20:
	.loc 1 61 6 discriminator 1 view .LVU129
	cmp	r0, #0
	beq	.L26
.LVL21:
.L28:
	.loc 1 61 122 discriminator 3 view .LVU130
	mov	r0, #1
.L30:
.LVL22:
	.loc 1 67 2 is_stmt 1 view .LVU131
	cmp	r8, #1
	beq	.L32
	cmp	r8, #2
	bne	.L57
	.loc 1 81 4 view .LVU132
	.loc 1 81 7 is_stmt 0 view .LVU133
	vcmpe.f32	s22, #0
	vmrs	APSR_nzcv, FPSCR
	movgt	r3, #4
	movle	r3, #5
.L34:
	.loc 1 91 16 view .LVU134
	vmov	s15, r5	@ int
	vmov	s14, r6	@ int
	vcvt.f32.s32	s15, s15
	vcvt.f32.s32	s13, s14
.LBB63:
.LBB64:
	.file 3 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/VecMath.h"
	.loc 3 17 51 view .LVU135
	vsub.f32	s1, s15, s21
.LBE64:
.LBE63:
	.loc 1 91 16 view .LVU136
	vmov	s14, r4	@ int
.LBB68:
.LBB65:
	.loc 3 17 51 view .LVU137
	vsub.f32	s13, s13, s20
.LBE65:
.LBE68:
	.loc 1 91 16 view .LVU138
	vcvt.f32.s32	s14, s14
.LBB69:
.LBB70:
.LBB71:
	.loc 3 20 66 view .LVU139
	vmul.f32	s1, s1, s1
.LBE71:
.LBE70:
.LBE69:
.LBB76:
.LBB66:
	.loc 3 17 51 view .LVU140
	vsub.f32	s15, s14, s19
.LBE66:
.LBE76:
.LBB77:
.LBB74:
.LBB72:
	.loc 3 20 60 view .LVU141
	vmla.f32	s1, s13, s13
	.loc 3 20 72 view .LVU142
	vmla.f32	s1, s15, s15
.LBE72:
.LBE74:
.LBE77:
	.loc 1 72 20 view .LVU143
	ldr	r2, [sp, #4]
	.loc 1 92 15 discriminator 1 view .LVU144
	vstr.32	s1, [r2, #12]
	.loc 1 72 20 view .LVU145
	strb	r3, [r2, #16]
	.loc 1 91 2 is_stmt 1 view .LVU146
.LVL23:
.LBB78:
.LBI63:
	.loc 3 17 15 view .LVU147
.LBB67:
	.loc 3 17 44 view .LVU148
	.loc 3 17 44 is_stmt 0 view .LVU149
.LBE67:
.LBE78:
	.loc 1 92 2 is_stmt 1 view .LVU150
.LBB79:
.LBI69:
	.loc 3 24 14 view .LVU151
	.loc 3 24 38 view .LVU152
.LBB75:
.LBI70:
	.loc 3 20 14 view .LVU153
.LBB73:
	.loc 3 20 43 view .LVU154
	.loc 3 20 43 is_stmt 0 view .LVU155
.LBE73:
.LBE75:
.LBE79:
	.loc 1 93 2 is_stmt 1 view .LVU156
	.loc 1 94 2 view .LVU157
	.loc 1 95 2 view .LVU158
	.loc 1 97 2 view .LVU159
	.loc 1 93 9 is_stmt 0 view .LVU160
	str	r6, [r2]
	.loc 1 94 9 view .LVU161
	str	r5, [r2, #4]
	.loc 1 95 9 view .LVU162
	str	r4, [r2, #8]
	.loc 1 98 1 view .LVU163
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 84
	@ sp needed
	vldm	sp!, {d8-d13}
	.cfi_restore 90
	.cfi_restore 91
	.cfi_restore 88
	.cfi_restore 89
	.cfi_restore 86
	.cfi_restore 87
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
.LVL24:
	.loc 1 98 1 view .LVU164
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL25:
.L20:
	.cfi_restore_state
	.loc 1 53 4 is_stmt 1 view .LVU165
	.loc 1 57 4 view .LVU166
	.loc 1 52 13 is_stmt 0 view .LVU167
	vcmpe.f32	s17, s16
	vmrs	APSR_nzcv, FPSCR
	.loc 1 53 14 view .LVU168
	vaddgt.f32	s16, s16, s26
.LVL26:
	.loc 1 54 4 is_stmt 1 view .LVU169
	.loc 1 55 9 is_stmt 0 view .LVU170
	movgt	r8, #1
	.loc 1 57 14 view .LVU171
	vaddle.f32	s17, s17, s18
.LVL27:
	.loc 1 59 9 view .LVU172
	movle	r8, #2
	.loc 1 54 9 view .LVU173
	addgt	r5, r5, r10
.LVL28:
	.loc 1 55 4 is_stmt 1 view .LVU174
	.loc 1 58 4 view .LVU175
	.loc 1 58 9 is_stmt 0 view .LVU176
	addle	r4, r4, fp
.LVL29:
	.loc 1 59 4 is_stmt 1 view .LVU177
	.loc 1 59 4 is_stmt 0 view .LVU178
	b	.L23
.LVL30:
.L26:
	.loc 1 61 63 discriminator 2 view .LVU179
	mov	r3, r4
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	World_GetBlock
.LVL31:
	.loc 1 47 13 is_stmt 1 view .LVU180
	.loc 1 64 6 is_stmt 0 view .LVU181
	subs	r9, r9, #1
.LVL32:
	.loc 1 64 3 is_stmt 1 view .LVU182
	.loc 1 64 6 is_stmt 0 view .LVU183
	beq	.L58
	.loc 1 47 13 view .LVU184
	cmp	r0, #27
	bne	.L31
	b	.L28
.LVL33:
.L57:
	.loc 1 69 4 is_stmt 1 view .LVU185
	.loc 1 69 7 is_stmt 0 view .LVU186
	vcmpe.f32	s24, #0
	vmrs	APSR_nzcv, FPSCR
	movle	r3, #1
	movgt	r3, #0
	b	.L34
.L32:
	.loc 1 75 4 is_stmt 1 view .LVU187
	.loc 1 75 7 is_stmt 0 view .LVU188
	vcmpe.f32	s23, #0
	vmrs	APSR_nzcv, FPSCR
	movgt	r3, #2
	movle	r3, #3
	b	.L34
.LVL34:
.L58:
	.loc 1 61 60 discriminator 1 view .LVU189
	sub	r0, r0, #27
.LVL35:
	.loc 1 61 60 discriminator 1 view .LVU190
	clz	r0, r0
	lsr	r0, r0, #5
	b	.L30
.LVL36:
.L49:
	.loc 1 19 21 view .LVU191
	bl	sqrtf
.LVL37:
	vmov.f32	s26, s0
	b	.L7
.LVL38:
.L48:
	.loc 1 18 21 view .LVU192
	bl	sqrtf
.LVL39:
	.loc 1 18 21 view .LVU193
	vmov.f32	s27, s0
	b	.L4
.LVL40:
.L50:
	.loc 1 20 21 view .LVU194
	bl	sqrtf
.LVL41:
	vmov.f32	s18, s0
.LVL42:
	.loc 1 20 21 view .LVU195
	b	.L10
.L60:
	.align	2
.L59:
	.word	1065353216
	.cfi_endproc
.LFE226:
	.size	Raycast_Cast, .-Raycast_Cast
	.text
.Letext0:
	.file 4 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Direction.h"
	.file 7 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 8 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Xorshift.h"
	.file 9 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 10 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 11 "C:/Users/Elias/CLionProjects/3DSCraft/include/rendering/VBOCache.h"
	.file 12 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Chunk.h"
	.file 13 "C:/devkitPro/libctru/include/3ds/synchronization.h"
	.file 14 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/WorkQueue.h"
	.file 15 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/World.h"
	.file 16 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Raycast.h"
	.file 17 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdio.h"
	.file 18 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h"
	.file 19 "C:/devkitPro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc5a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1c
	.4byte	.LASF178
	.byte	0x1d
	.4byte	.LASF179
	.4byte	.LASF180
	.4byte	.LLRL31
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x47
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x61
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x69
	.byte	0x20
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x3b
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2c
	.byte	0x13
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.4byte	0x95
	.uleb128 0x11
	.4byte	0x47
	.byte	0x6
	.byte	0x3
	.byte	0xe
	.4byte	0x122
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0xb
	.byte	0x3
	.4byte	0xeb
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x8
	.byte	0x11
	.4byte	0xaf
	.uleb128 0x11
	.4byte	0x47
	.byte	0x7
	.byte	0xa
	.byte	0x6
	.4byte	0x237
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	0x243
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF69
	.uleb128 0x1e
	.4byte	0x23c
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x8
	.byte	0x5
	.byte	0x12
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x9
	.byte	0xd6
	.byte	0x16
	.4byte	0xa8
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF72
	.uleb128 0x1f
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x7
	.byte	0x11
	.4byte	0xc7
	.uleb128 0x9
	.byte	0x8
	.byte	0xb
	.byte	0x8
	.byte	0x9
	.4byte	0x299
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0xb
	.byte	0x9
	.byte	0x9
	.4byte	0x254
	.byte	0
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.4byte	0x267
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.4byte	0x275
	.uleb128 0x20
	.2byte	0x2030
	.byte	0xc
	.byte	0x10
	.byte	0x9
	.4byte	0x358
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0xc
	.byte	0x11
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0xc
	.byte	0x12
	.byte	0x8
	.4byte	0x358
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x13
	.byte	0xa
	.4byte	0x374
	.2byte	0x1004
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x15
	.byte	0xb
	.4byte	0xd3
	.2byte	0x2004
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x17
	.byte	0xb
	.4byte	0xbb
	.2byte	0x2008
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x19
	.byte	0x6
	.4byte	0x390
	.2byte	0x200a
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x1a
	.byte	0xb
	.4byte	0xd3
	.2byte	0x200c
	.uleb128 0x21
	.ascii	"vbo\000"
	.byte	0xc
	.byte	0x1c
	.byte	0xc
	.4byte	0x299
	.2byte	0x2010
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x1c
	.byte	0x11
	.4byte	0x299
	.2byte	0x2018
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x1d
	.byte	0x9
	.4byte	0x254
	.2byte	0x2020
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x1d
	.byte	0x13
	.4byte	0x254
	.2byte	0x2024
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x1e
	.byte	0xb
	.4byte	0xd3
	.2byte	0x2028
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x1f
	.byte	0x6
	.4byte	0x390
	.2byte	0x202c
	.byte	0
	.uleb128 0xc
	.4byte	0x12e
	.4byte	0x374
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xf
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xf
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0xaf
	.4byte	0x390
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xf
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xf
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF88
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xc
	.byte	0x20
	.byte	0x3
	.4byte	0x2a5
	.uleb128 0x11
	.4byte	0x47
	.byte	0xc
	.byte	0x22
	.byte	0xe
	.4byte	0x3c2
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xc
	.byte	0x26
	.byte	0x3
	.4byte	0x3a3
	.uleb128 0x17
	.4byte	0x102ac
	.byte	0xc
	.byte	0x28
	.4byte	0x491
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0xc
	.byte	0x2a
	.byte	0xb
	.4byte	0xd3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF95
	.byte	0xc
	.byte	0x2b
	.byte	0xb
	.4byte	0xd3
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xc
	.byte	0x2d
	.byte	0xb
	.4byte	0xd3
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xc
	.byte	0x2f
	.byte	0x13
	.4byte	0x3c2
	.byte	0xc
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0xc
	.byte	0x31
	.byte	0x6
	.4byte	0x2d
	.byte	0x10
	.uleb128 0xa
	.ascii	"z\000"
	.byte	0xc
	.byte	0x31
	.byte	0x9
	.4byte	0x2d
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xc
	.byte	0x32
	.byte	0xa
	.4byte	0x491
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0xc
	.byte	0x34
	.byte	0xa
	.4byte	0x4a1
	.4byte	0x10198
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0xc
	.byte	0x35
	.byte	0xb
	.4byte	0xd3
	.4byte	0x10298
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0xc
	.byte	0x37
	.byte	0x9
	.4byte	0x254
	.4byte	0x1029c
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0xc
	.byte	0x39
	.byte	0xb
	.4byte	0xd3
	.4byte	0x102a0
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0xc
	.byte	0x3a
	.byte	0x6
	.4byte	0x390
	.4byte	0x102a4
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0xc
	.byte	0x3c
	.byte	0x6
	.4byte	0x2d
	.4byte	0x102a8
	.byte	0
	.uleb128 0xc
	.4byte	0x397
	.4byte	0x4a1
	.uleb128 0x6
	.4byte	0xa8
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0xaf
	.4byte	0x4b7
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xf
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xc
	.byte	0x3d
	.byte	0x3
	.4byte	0x3ce
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF104
	.uleb128 0x22
	.ascii	"s32\000"
	.byte	0x13
	.byte	0x1c
	.byte	0x11
	.4byte	0xc7
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xd
	.byte	0xa
	.byte	0x11
	.4byte	0x269
	.uleb128 0x9
	.byte	0x8
	.byte	0xd
	.byte	0x13
	.byte	0x9
	.4byte	0x506
	.uleb128 0x2
	.4byte	.LASF106
	.byte	0xd
	.byte	0x15
	.byte	0x6
	.4byte	0x4ca
	.byte	0
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xd
	.byte	0x16
	.byte	0xc
	.4byte	0x4d6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xd
	.byte	0x17
	.byte	0x3
	.4byte	0x4e2
	.uleb128 0x11
	.4byte	0x47
	.byte	0xe
	.byte	0xd
	.byte	0xe
	.4byte	0x543
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x512
	.uleb128 0x9
	.byte	0xc
	.byte	0xe
	.byte	0x16
	.byte	0x9
	.4byte	0x580
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xe
	.byte	0x17
	.byte	0x11
	.4byte	0x543
	.byte	0
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0xe
	.byte	0x18
	.byte	0x9
	.4byte	0x580
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xe
	.byte	0x19
	.byte	0xb
	.4byte	0xd3
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x4b7
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xe
	.byte	0x1a
	.byte	0x3
	.4byte	0x54f
	.uleb128 0x9
	.byte	0xc
	.byte	0xe
	.byte	0x1d
	.byte	0x2
	.4byte	0x5c2
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xe
	.byte	0x1d
	.byte	0x17
	.4byte	0x5c2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xe
	.byte	0x1d
	.byte	0x21
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xe
	.byte	0x1d
	.byte	0x29
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x585
	.uleb128 0x9
	.byte	0x18
	.byte	0xe
	.byte	0x1c
	.byte	0x9
	.4byte	0x5f8
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0xe
	.byte	0x1d
	.byte	0x35
	.4byte	0x591
	.byte	0
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0xe
	.byte	0x1f
	.byte	0xd
	.4byte	0x506
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0xe
	.byte	0x20
	.byte	0xc
	.4byte	0x4d6
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xe
	.byte	0x21
	.byte	0x3
	.4byte	0x5c7
	.uleb128 0x11
	.4byte	0x47
	.byte	0xf
	.byte	0x11
	.byte	0xe
	.4byte	0x623
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xf
	.byte	0x11
	.byte	0x49
	.4byte	0x604
	.uleb128 0x23
	.byte	0
	.byte	0xf
	.byte	0x18
	.byte	0x3
	.uleb128 0x18
	.byte	0
	.byte	0xf
	.byte	0x17
	.byte	0x2
	.4byte	0x64a
	.uleb128 0x24
	.4byte	.LASF145
	.byte	0xf
	.byte	0x1a
	.byte	0x5
	.4byte	0x62f
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0xf
	.byte	0x13
	.byte	0x9
	.4byte	0x67b
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0xf
	.byte	0x14
	.byte	0xb
	.4byte	0xdf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0xf
	.byte	0x15
	.byte	0xf
	.4byte	0x623
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0xf
	.byte	0x1b
	.byte	0x4
	.4byte	0x634
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0xf
	.byte	0x1c
	.byte	0x3
	.4byte	0x64a
	.uleb128 0x9
	.byte	0xc
	.byte	0xf
	.byte	0x2a
	.byte	0x2
	.4byte	0x6b8
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0xf
	.byte	0x2a
	.byte	0x13
	.4byte	0x6b8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0xf
	.byte	0x2a
	.byte	0x1d
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0xf
	.byte	0x2a
	.byte	0x25
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x580
	.uleb128 0x17
	.4byte	0xb5e278
	.byte	0xf
	.byte	0x1f
	.4byte	0x767
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0xf
	.byte	0x20
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0xf
	.byte	0x22
	.byte	0x7
	.4byte	0x767
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0xf
	.byte	0x24
	.byte	0x14
	.4byte	0x67b
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0xf
	.byte	0x26
	.byte	0x6
	.4byte	0x2d
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xf
	.byte	0x26
	.byte	0x19
	.4byte	0x2d
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0xf
	.byte	0x28
	.byte	0x8
	.4byte	0x777
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0xf
	.byte	0x29
	.byte	0x9
	.4byte	0x787
	.4byte	0xb5e118
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0xf
	.byte	0x2a
	.byte	0x31
	.4byte	0x687
	.4byte	0xb5e25c
	.uleb128 0x7
	.4byte	.LASF141
	.byte	0xf
	.byte	0x2c
	.byte	0xd
	.4byte	0x79d
	.4byte	0xb5e268
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0xf
	.byte	0x2e
	.byte	0xd
	.4byte	0x248
	.4byte	0xb5e26c
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0xf
	.byte	0x30
	.byte	0x6
	.4byte	0x2d
	.4byte	0xb5e270
	.byte	0
	.uleb128 0xc
	.4byte	0x23c
	.4byte	0x777
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.4byte	0x4b7
	.4byte	0x787
	.uleb128 0x6
	.4byte	0xa8
	.byte	0xb3
	.byte	0
	.uleb128 0xc
	.4byte	0x580
	.4byte	0x79d
	.uleb128 0x6
	.4byte	0xa8
	.byte	0x8
	.uleb128 0x6
	.4byte	0xa8
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x5f8
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0xf
	.byte	0x31
	.byte	0x3
	.4byte	0x6bd
	.uleb128 0x9
	.byte	0xc
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.4byte	0x7d9
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x3
	.byte	0xa
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x3
	.byte	0xa
	.byte	0xc
	.4byte	0x26
	.byte	0x4
	.uleb128 0xa
	.ascii	"z\000"
	.byte	0x3
	.byte	0xa
	.byte	0xf
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.byte	0xc
	.byte	0x3
	.byte	0x7
	.byte	0x9
	.4byte	0x7f2
	.uleb128 0x25
	.ascii	"v\000"
	.byte	0x3
	.byte	0x8
	.byte	0x8
	.4byte	0x7f2
	.uleb128 0x26
	.4byte	0x7ae
	.byte	0
	.uleb128 0xc
	.4byte	0x26
	.4byte	0x802
	.uleb128 0x6
	.4byte	0xa8
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x3
	.byte	0xc
	.byte	0x3
	.4byte	0x7d9
	.uleb128 0x9
	.byte	0x14
	.byte	0x10
	.byte	0x7
	.byte	0x9
	.4byte	0x853
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x10
	.byte	0x8
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x10
	.byte	0x8
	.byte	0x9
	.4byte	0x2d
	.byte	0x4
	.uleb128 0xa
	.ascii	"z\000"
	.byte	0x10
	.byte	0x8
	.byte	0xc
	.4byte	0x2d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0x10
	.byte	0x9
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF148
	.byte	0x10
	.byte	0xa
	.byte	0xc
	.4byte	0x122
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0x10
	.byte	0xb
	.byte	0x3
	.4byte	0x80e
	.uleb128 0x19
	.4byte	.LASF150
	.byte	0x11
	.byte	0xce
	.byte	0x5
	.4byte	0x2d
	.4byte	0x876
	.uleb128 0xf
	.4byte	0x237
	.uleb128 0x27
	.byte	0
	.uleb128 0x19
	.4byte	.LASF151
	.byte	0xf
	.byte	0x41
	.byte	0x7
	.4byte	0x12e
	.4byte	0x89b
	.uleb128 0xf
	.4byte	0x89b
	.uleb128 0xf
	.4byte	0x2d
	.uleb128 0xf
	.4byte	0x2d
	.uleb128 0xf
	.4byte	0x2d
	.byte	0
	.uleb128 0xe
	.4byte	0x7a2
	.uleb128 0x28
	.4byte	.LASF152
	.byte	0x12
	.2byte	0x18b
	.byte	0xe
	.4byte	0x26
	.4byte	0x8b7
	.uleb128 0xf
	.4byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.4byte	0x390
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbae
	.uleb128 0x14
	.4byte	.LASF153
	.byte	0x19
	.4byte	0x89b
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x14
	.4byte	.LASF154
	.byte	0x27
	.4byte	0x802
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x14
	.4byte	.LASF155
	.byte	0x35
	.4byte	0x802
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2a
	.ascii	"out\000"
	.byte	0x1
	.byte	0xb
	.byte	0x4d
	.4byte	0xbae
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0xc
	.byte	0x6
	.4byte	0x2d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0xc
	.byte	0x21
	.4byte	0x2d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0xc
	.byte	0x3c
	.4byte	0x2d
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0xe
	.byte	0x8
	.4byte	0x26
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0xf
	.byte	0x8
	.4byte	0x26
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x10
	.byte	0x8
	.4byte	0x26
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x15
	.4byte	.LASF162
	.byte	0x12
	.4byte	0x26
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x5b
	.uleb128 0x15
	.4byte	.LASF163
	.byte	0x13
	.4byte	0x26
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x5a
	.uleb128 0x15
	.4byte	.LASF164
	.byte	0x14
	.4byte	0x26
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x52
	.uleb128 0x4
	.4byte	.LASF165
	.byte	0x16
	.byte	0x6
	.4byte	0x2d
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x4
	.4byte	.LASF166
	.byte	0x16
	.byte	0xd
	.4byte	0x2d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x4
	.4byte	.LASF167
	.byte	0x16
	.byte	0x14
	.4byte	0x2d
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x17
	.byte	0x8
	.4byte	0x26
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0x17
	.byte	0x13
	.4byte	0x26
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x4
	.4byte	.LASF170
	.byte	0x17
	.byte	0x1e
	.4byte	0x26
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x2b
	.ascii	"hit\000"
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	0x2d
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x4
	.4byte	.LASF171
	.byte	0x2e
	.byte	0xf
	.4byte	0x2d
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x2e
	.byte	0x19
	.4byte	0x2d
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0x5b
	.byte	0x9
	.4byte	0x802
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x12
	.4byte	0xc45
	.4byte	.LBI21
	.byte	.LVU36
	.4byte	.LLRL20
	.byte	0xc
	.byte	0xd
	.4byte	0xa8d
	.uleb128 0x1a
	.4byte	0xc52
	.byte	0
	.uleb128 0x12
	.4byte	0xc45
	.4byte	.LBI29
	.byte	.LVU39
	.4byte	.LLRL21
	.byte	0xc
	.byte	0x28
	.4byte	0xaaf
	.uleb128 0x10
	.4byte	0xc52
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.uleb128 0x12
	.4byte	0xc45
	.4byte	.LBI39
	.byte	.LVU42
	.4byte	.LLRL23
	.byte	0xc
	.byte	0x43
	.4byte	0xad1
	.uleb128 0x10
	.4byte	0xc52
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.uleb128 0x12
	.4byte	0xbf3
	.4byte	.LBI63
	.byte	.LVU147
	.4byte	.LLRL25
	.byte	0x5b
	.byte	0x10
	.4byte	0xb00
	.uleb128 0x10
	.4byte	0xc0c
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x10
	.4byte	0xc02
	.4byte	.LLST27
	.4byte	.LVUS27
	.byte	0
	.uleb128 0x12
	.4byte	0xbb3
	.4byte	.LBI69
	.byte	.LVU151
	.4byte	.LLRL28
	.byte	0x5c
	.byte	0x11
	.4byte	0xb46
	.uleb128 0x10
	.4byte	0xbc2
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x2c
	.4byte	0xbcf
	.4byte	.LBI70
	.byte	.LVU153
	.4byte	.LLRL28
	.byte	0x3
	.byte	0x18
	.byte	0x2d
	.uleb128 0x1a
	.4byte	0xbe8
	.uleb128 0x10
	.4byte	0xbde
	.4byte	.LLST30
	.4byte	.LVUS30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL20
	.4byte	0x876
	.4byte	0xb6c
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL31
	.4byte	0x876
	.4byte	0xb92
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL37
	.4byte	0x8a0
	.uleb128 0x16
	.4byte	.LVL39
	.4byte	0x8a0
	.uleb128 0x16
	.4byte	.LVL41
	.4byte	0x8a0
	.byte	0
	.uleb128 0xe
	.4byte	0x853
	.uleb128 0x13
	.4byte	.LASF174
	.byte	0x18
	.byte	0xe
	.4byte	0x26
	.4byte	0xbcf
	.uleb128 0xb
	.ascii	"vec\000"
	.byte	0x3
	.byte	0x18
	.byte	0x1f
	.4byte	0x802
	.byte	0
	.uleb128 0x13
	.4byte	.LASF175
	.byte	0x14
	.byte	0xe
	.4byte	0x26
	.4byte	0xbf3
	.uleb128 0xb
	.ascii	"a\000"
	.byte	0x3
	.byte	0x14
	.byte	0x1c
	.4byte	0x802
	.uleb128 0xb
	.ascii	"b\000"
	.byte	0x3
	.byte	0x14
	.byte	0x26
	.4byte	0x802
	.byte	0
	.uleb128 0x13
	.4byte	.LASF176
	.byte	0x11
	.byte	0xf
	.4byte	0x802
	.4byte	0xc17
	.uleb128 0xb
	.ascii	"a\000"
	.byte	0x3
	.byte	0x11
	.byte	0x1d
	.4byte	0x802
	.uleb128 0xb
	.ascii	"b\000"
	.byte	0x3
	.byte	0x11
	.byte	0x27
	.4byte	0x802
	.byte	0
	.uleb128 0x13
	.4byte	.LASF177
	.byte	0xe
	.byte	0xf
	.4byte	0x802
	.4byte	0xc45
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.4byte	0x26
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x3
	.byte	0xe
	.byte	0x25
	.4byte	0x26
	.uleb128 0xb
	.ascii	"z\000"
	.byte	0x3
	.byte	0xe
	.byte	0x2e
	.4byte	0x26
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF182
	.byte	0x2
	.byte	0x19
	.byte	0x13
	.4byte	0x2d
	.byte	0x3
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x2
	.byte	0x19
	.byte	0x23
	.4byte	0x26
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x15
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
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LVL38-.LVL0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL38-.LVL0
	.uleb128 .LVL39-1-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL39-1-.LVL0
	.uleb128 .LFE226-.LVL0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS1:
	.uleb128 .LVU17
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x6
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x6
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LVL4-.LVL1
	.uleb128 0xa
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL4-.LVL1
	.uleb128 .LVL7-.LVL1
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL7-.LVL1
	.uleb128 .LVL24-.LVL1
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL24-.LVL1
	.uleb128 .LVL25-.LVL1
	.uleb128 0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL25-.LVL1
	.uleb128 .LVL38-.LVL1
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL38-.LVL1
	.uleb128 .LVL39-1-.LVL1
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL39-1-.LVL1
	.uleb128 .LFE226-.LVL1
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS2:
	.uleb128 .LVU35
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x44
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x45
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL7-.LVL5
	.uleb128 .LVL24-.LVL5
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL24-.LVL5
	.uleb128 .LVL25-.LVL5
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL25-.LVL5
	.uleb128 .LVL38-.LVL5
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL38-.LVL5
	.uleb128 .LVL39-1-.LVL5
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x44
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x45
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL39-1-.LVL5
	.uleb128 .LFE226-.LVL5
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL7-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL7-.LVL0
	.uleb128 .LVL38-.LVL0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0x4
	.uleb128 .LVL38-.LVL0
	.uleb128 .LVL39-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL39-1-.LVL0
	.uleb128 .LFE226-.LVL0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
.LVUS4:
	.uleb128 .LVU38
	.uleb128 0
.LLST4:
	.byte	0x8
	.4byte	.LVL5
	.uleb128 .LFE226-.LVL5
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS5:
	.uleb128 .LVU41
	.uleb128 0
.LLST5:
	.byte	0x8
	.4byte	.LVL5
	.uleb128 .LFE226-.LVL5
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS6:
	.uleb128 .LVU46
	.uleb128 0
.LLST6:
	.byte	0x8
	.4byte	.LVL6
	.uleb128 .LFE226-.LVL6
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS7:
	.uleb128 .LVU48
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU164
	.uleb128 .LVU165
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL8-.LVL6
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL8-.LVL6
	.uleb128 .LVL24-.LVL6
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x58
	.uleb128 0x26
	.byte	0x12
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL6
	.uleb128 .LVL36-.LVL6
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x58
	.uleb128 0x26
	.byte	0x12
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.LVL6
	.uleb128 .LVL40-.LVL6
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL40-.LVL6
	.uleb128 .LFE226-.LVL6
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x58
	.uleb128 0x26
	.byte	0x12
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU49
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL9-.LVL6
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x52
	.byte	0x4
	.uleb128 .LVL9-.LVL6
	.uleb128 .LVL36-.LVL6
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x57
	.uleb128 0x26
	.byte	0x12
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.LVL6
	.uleb128 .LVL42-.LVL6
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x52
	.byte	0x4
	.uleb128 .LVL42-.LVL6
	.uleb128 .LFE226-.LVL6
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x57
	.uleb128 0x26
	.byte	0x12
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU50
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU164
	.uleb128 .LVU165
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL12-.LVL6
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x51
	.byte	0x4
	.uleb128 .LVL12-.LVL6
	.uleb128 .LVL24-.LVL6
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x56
	.uleb128 0x26
	.byte	0x12
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL6
	.uleb128 .LVL36-.LVL6
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x56
	.uleb128 0x26
	.byte	0x12
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL36-.LVL6
	.uleb128 .LFE226-.LVL6
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x51
	.byte	0
.LVUS10:
	.uleb128 .LVU69
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU191
.LLST10:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL13-.LVL10
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL10
	.uleb128 .LVL36-.LVL10
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
.LVUS11:
	.uleb128 .LVU101
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU191
.LLST11:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL13-.LVL13
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL36-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS12:
	.uleb128 .LVU107
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU191
.LLST12:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LVL16-.LVL14
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL14
	.uleb128 .LVL36-.LVL14
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS13:
	.uleb128 .LVU99
	.uleb128 .LVU131
	.uleb128 .LVU165
	.uleb128 .LVU185
	.uleb128 .LVU189
	.uleb128 .LVU191
.LLST13:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL22-.LVL13
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x59
	.byte	0x4
	.uleb128 .LVL25-.LVL13
	.uleb128 .LVL33-.LVL13
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x59
	.byte	0x4
	.uleb128 .LVL34-.LVL13
	.uleb128 .LVL36-.LVL13
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x59
	.byte	0
.LVUS14:
	.uleb128 .LVU105
	.uleb128 .LVU131
	.uleb128 .LVU165
	.uleb128 .LVU185
	.uleb128 .LVU189
	.uleb128 .LVU191
.LLST14:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL22-.LVL14
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL25-.LVL14
	.uleb128 .LVL33-.LVL14
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL34-.LVL14
	.uleb128 .LVL36-.LVL14
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0
.LVUS15:
	.uleb128 .LVU113
	.uleb128 .LVU131
	.uleb128 .LVU165
	.uleb128 .LVU172
	.uleb128 .LVU175
	.uleb128 .LVU185
	.uleb128 .LVU189
	.uleb128 .LVU191
.LLST15:
	.byte	0x6
	.4byte	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL22-.LVL16
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x51
	.byte	0x4
	.uleb128 .LVL25-.LVL16
	.uleb128 .LVL27-.LVL16
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x51
	.byte	0x4
	.uleb128 .LVL28-.LVL16
	.uleb128 .LVL33-.LVL16
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x51
	.byte	0x4
	.uleb128 .LVL34-.LVL16
	.uleb128 .LVL36-.LVL16
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x51
	.byte	0
.LVUS16:
	.uleb128 .LVU114
	.uleb128 .LVU130
	.uleb128 .LVU165
	.uleb128 .LVU180
	.uleb128 .LVU182
	.uleb128 .LVU185
	.uleb128 .LVU189
	.uleb128 .LVU190
.LLST16:
	.byte	0x6
	.4byte	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL21-.LVL16
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL16
	.uleb128 .LVL31-.LVL16
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.LVL16
	.uleb128 .LVL33-.LVL16
	.uleb128 0xb
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4b
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL16
	.uleb128 .LVL35-.LVL16
	.uleb128 0xb
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4b
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU114
	.uleb128 .LVU127
	.uleb128 .LVU131
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU185
	.uleb128 .LVU189
.LLST17:
	.byte	0x6
	.4byte	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL19-.LVL16
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL16
	.uleb128 .LVL25-.LVL16
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL25-.LVL16
	.uleb128 .LVL28-.LVL16
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL16
	.uleb128 .LVL29-.LVL16
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL16
	.uleb128 .LVL30-.LVL16
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.LVL16
	.uleb128 .LVL34-.LVL16
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS18:
	.uleb128 .LVU114
	.uleb128 .LVU115
.LLST18:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LVL16-.LVL16
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU149
	.uleb128 .LVU160
.LLST19:
	.byte	0x8
	.4byte	.LVL23
	.uleb128 .LVL23-.LVL23
	.uleb128 0xa
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS22:
	.uleb128 .LVU38
	.uleb128 .LVU41
.LLST22:
	.byte	0x8
	.4byte	.LVL5
	.uleb128 .LVL5-.LVL5
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.byte	0
.LVUS24:
	.uleb128 .LVU41
	.uleb128 .LVU46
.LLST24:
	.byte	0x8
	.4byte	.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.byte	0
.LVUS26:
	.uleb128 .LVU147
	.uleb128 .LVU149
.LLST26:
	.byte	0x8
	.4byte	.LVL23
	.uleb128 .LVL23-.LVL23
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS27:
	.uleb128 .LVU147
	.uleb128 .LVU149
.LLST27:
	.byte	0x8
	.4byte	.LVL23
	.uleb128 .LVL23-.LVL23
	.uleb128 0x16
	.byte	0x76
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x75
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS29:
	.uleb128 .LVU151
	.uleb128 .LVU155
.LLST29:
	.byte	0x8
	.4byte	.LVL23
	.uleb128 .LVL23-.LVL23
	.uleb128 0xa
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS30:
	.uleb128 .LVU153
	.uleb128 .LVU155
.LLST30:
	.byte	0x8
	.4byte	.LVL23
	.uleb128 .LVL23-.LVL23
	.uleb128 0xa
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
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
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
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
.LLRL20:
	.byte	0x5
	.4byte	.LBB21
	.byte	0x4
	.uleb128 .LBB21-.LBB21
	.uleb128 .LBE21-.LBB21
	.byte	0x4
	.uleb128 .LBB37-.LBB21
	.uleb128 .LBE37-.LBB21
	.byte	0x4
	.uleb128 .LBB38-.LBB21
	.uleb128 .LBE38-.LBB21
	.byte	0x4
	.uleb128 .LBB48-.LBB21
	.uleb128 .LBE48-.LBB21
	.byte	0x4
	.uleb128 .LBB51-.LBB21
	.uleb128 .LBE51-.LBB21
	.byte	0x4
	.uleb128 .LBB54-.LBB21
	.uleb128 .LBE54-.LBB21
	.byte	0x4
	.uleb128 .LBB59-.LBB21
	.uleb128 .LBE59-.LBB21
	.byte	0
.LLRL21:
	.byte	0x5
	.4byte	.LBB29
	.byte	0x4
	.uleb128 .LBB29-.LBB29
	.uleb128 .LBE29-.LBB29
	.byte	0x4
	.uleb128 .LBB47-.LBB29
	.uleb128 .LBE47-.LBB29
	.byte	0x4
	.uleb128 .LBB49-.LBB29
	.uleb128 .LBE49-.LBB29
	.byte	0x4
	.uleb128 .LBB52-.LBB29
	.uleb128 .LBE52-.LBB29
	.byte	0x4
	.uleb128 .LBB55-.LBB29
	.uleb128 .LBE55-.LBB29
	.byte	0x4
	.uleb128 .LBB57-.LBB29
	.uleb128 .LBE57-.LBB29
	.byte	0x4
	.uleb128 .LBB60-.LBB29
	.uleb128 .LBE60-.LBB29
	.byte	0
.LLRL23:
	.byte	0x5
	.4byte	.LBB39
	.byte	0x4
	.uleb128 .LBB39-.LBB39
	.uleb128 .LBE39-.LBB39
	.byte	0x4
	.uleb128 .LBB50-.LBB39
	.uleb128 .LBE50-.LBB39
	.byte	0x4
	.uleb128 .LBB53-.LBB39
	.uleb128 .LBE53-.LBB39
	.byte	0x4
	.uleb128 .LBB56-.LBB39
	.uleb128 .LBE56-.LBB39
	.byte	0x4
	.uleb128 .LBB58-.LBB39
	.uleb128 .LBE58-.LBB39
	.byte	0x4
	.uleb128 .LBB61-.LBB39
	.uleb128 .LBE61-.LBB39
	.byte	0x4
	.uleb128 .LBB62-.LBB39
	.uleb128 .LBE62-.LBB39
	.byte	0
.LLRL25:
	.byte	0x5
	.4byte	.LBB63
	.byte	0x4
	.uleb128 .LBB63-.LBB63
	.uleb128 .LBE63-.LBB63
	.byte	0x4
	.uleb128 .LBB68-.LBB63
	.uleb128 .LBE68-.LBB63
	.byte	0x4
	.uleb128 .LBB76-.LBB63
	.uleb128 .LBE76-.LBB63
	.byte	0x4
	.uleb128 .LBB78-.LBB63
	.uleb128 .LBE78-.LBB63
	.byte	0
.LLRL28:
	.byte	0x5
	.4byte	.LBB69
	.byte	0x4
	.uleb128 .LBB69-.LBB69
	.uleb128 .LBE69-.LBB69
	.byte	0x4
	.uleb128 .LBB77-.LBB69
	.uleb128 .LBE77-.LBB69
	.byte	0x4
	.uleb128 .LBB79-.LBB69
	.uleb128 .LBE79-.LBB69
	.byte	0
.LLRL31:
	.byte	0x7
	.4byte	.LFB226
	.uleb128 .LFE226-.LFB226
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF90:
	.ascii	"ChunkGen_Empty\000"
.LASF145:
	.ascii	"superflat\000"
.LASF3:
	.ascii	"short int\000"
.LASF132:
	.ascii	"GeneratorSettings\000"
.LASF48:
	.ascii	"Block_Snow\000"
.LASF71:
	.ascii	"size_t\000"
.LASF127:
	.ascii	"WorldGen_SuperFlat\000"
.LASF118:
	.ascii	"WorkerItem\000"
.LASF19:
	.ascii	"uint64_t\000"
.LASF149:
	.ascii	"Raycast_Result\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF79:
	.ascii	"revision\000"
.LASF148:
	.ascii	"direction\000"
.LASF116:
	.ascii	"type\000"
.LASF121:
	.ascii	"capacity\000"
.LASF20:
	.ascii	"Direction_West\000"
.LASF143:
	.ascii	"weather\000"
.LASF98:
	.ascii	"clusters\000"
.LASF150:
	.ascii	"printf\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF115:
	.ascii	"WorkerItemType\000"
.LASF182:
	.ascii	"FastFloor\000"
.LASF64:
	.ascii	"Block_Coal_Block\000"
.LASF11:
	.ascii	"long long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF84:
	.ascii	"vertices\000"
.LASF128:
	.ascii	"WorldGenTypes_Count\000"
.LASF58:
	.ascii	"Block_Coal_Ore\000"
.LASF51:
	.ascii	"Block_Sandstone\000"
.LASF81:
	.ascii	"empty\000"
.LASF106:
	.ascii	"state\000"
.LASF34:
	.ascii	"Block_Sand\000"
.LASF8:
	.ascii	"long int\000"
.LASF97:
	.ascii	"genProgress\000"
.LASF129:
	.ascii	"WorldGenType\000"
.LASF55:
	.ascii	"Block_Water\000"
.LASF53:
	.ascii	"Block_Crafting_Table\000"
.LASF42:
	.ascii	"Block_Wool\000"
.LASF122:
	.ascii	"queue\000"
.LASF104:
	.ascii	"double\000"
.LASF54:
	.ascii	"Block_Grass_Path\000"
.LASF124:
	.ascii	"listInUse\000"
.LASF32:
	.ascii	"Block_Grass\000"
.LASF44:
	.ascii	"Block_Coarse\000"
.LASF142:
	.ascii	"randomTickGen\000"
.LASF92:
	.ascii	"ChunkGen_Finished\000"
.LASF70:
	.ascii	"Xorshift32\000"
.LASF27:
	.ascii	"Direction\000"
.LASF52:
	.ascii	"Block_Smooth_Stone\000"
.LASF85:
	.ascii	"transparentVertices\000"
.LASF26:
	.ascii	"Direction_Invalid\000"
.LASF21:
	.ascii	"Direction_East\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF86:
	.ascii	"vboRevision\000"
.LASF168:
	.ascii	"sideDistX\000"
.LASF162:
	.ascii	"deltaDistX\000"
.LASF163:
	.ascii	"deltaDistY\000"
.LASF39:
	.ascii	"Block_Stonebrick\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF33:
	.ascii	"Block_Cobblestone\000"
.LASF135:
	.ascii	"genSettings\000"
.LASF130:
	.ascii	"seed\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF171:
	.ascii	"side\000"
.LASF138:
	.ascii	"chunkPool\000"
.LASF12:
	.ascii	"__uint64_t\000"
.LASF57:
	.ascii	"Block_Iron_Ore\000"
.LASF134:
	.ascii	"name\000"
.LASF89:
	.ascii	"Cluster\000"
.LASF94:
	.ascii	"tasksRunning\000"
.LASF119:
	.ascii	"data\000"
.LASF74:
	.ascii	"size\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF133:
	.ascii	"HighestBlock\000"
.LASF114:
	.ascii	"WorkerItemTypes_Count\000"
.LASF65:
	.ascii	"Block_Iron_Block\000"
.LASF62:
	.ascii	"Block_Gold_Block\000"
.LASF73:
	.ascii	"_LOCK_T\000"
.LASF177:
	.ascii	"f3_new\000"
.LASF75:
	.ascii	"memory\000"
.LASF167:
	.ascii	"stepZ\000"
.LASF161:
	.ascii	"zSqr\000"
.LASF78:
	.ascii	"metadataLight\000"
.LASF43:
	.ascii	"Block_Bedrock\000"
.LASF152:
	.ascii	"sqrtf\000"
.LASF37:
	.ascii	"Block_Leaves\000"
.LASF109:
	.ascii	"WorkerItemType_Load\000"
.LASF91:
	.ascii	"ChunkGen_Terrain\000"
.LASF60:
	.ascii	"Block_Gold_Ore\000"
.LASF147:
	.ascii	"distSqr\000"
.LASF169:
	.ascii	"sideDistY\000"
.LASF77:
	.ascii	"blocks\000"
.LASF40:
	.ascii	"Block_Brick\000"
.LASF49:
	.ascii	"Block_Obsidian\000"
.LASF80:
	.ascii	"seeThrough\000"
.LASF181:
	.ascii	"Raycast_Cast\000"
.LASF61:
	.ascii	"Block_Emerald_Ore\000"
.LASF63:
	.ascii	"Block_Diamond_Block\000"
.LASF160:
	.ascii	"ySqr\000"
.LASF83:
	.ascii	"transparentVBO\000"
.LASF35:
	.ascii	"Block_Log\000"
.LASF66:
	.ascii	"Block_Emerald_Block\000"
.LASF93:
	.ascii	"ChunkGenProgress\000"
.LASF112:
	.ascii	"WorkerItemType_Decorate\000"
.LASF45:
	.ascii	"Block_Door_Top\000"
.LASF95:
	.ascii	"graphicalTasksRunning\000"
.LASF131:
	.ascii	"settings\000"
.LASF50:
	.ascii	"Block_Netherrack\000"
.LASF176:
	.ascii	"f3_sub\000"
.LASF108:
	.ascii	"LightEvent\000"
.LASF0:
	.ascii	"float\000"
.LASF105:
	.ascii	"LightLock\000"
.LASF141:
	.ascii	"workqueue\000"
.LASF102:
	.ascii	"references\000"
.LASF59:
	.ascii	"Block_Diamond_Ore\000"
.LASF47:
	.ascii	"Block_Snow_Grass\000"
.LASF46:
	.ascii	"Block_Door_Bottom\000"
.LASF113:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF103:
	.ascii	"Chunk\000"
.LASF88:
	.ascii	"_Bool\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF159:
	.ascii	"xSqr\000"
.LASF153:
	.ascii	"world\000"
.LASF25:
	.ascii	"Direction_South\000"
.LASF151:
	.ascii	"World_GetBlock\000"
.LASF22:
	.ascii	"Direction_Bottom\000"
.LASF36:
	.ascii	"Block_Gravel\000"
.LASF123:
	.ascii	"itemAddedEvent\000"
.LASF144:
	.ascii	"World\000"
.LASF101:
	.ascii	"displayRevision\000"
.LASF125:
	.ascii	"WorkQueue\000"
.LASF67:
	.ascii	"Block_Furnace\000"
.LASF68:
	.ascii	"Blocks_Count\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF100:
	.ascii	"heightmapRevision\000"
.LASF72:
	.ascii	"long double\000"
.LASF117:
	.ascii	"chunk\000"
.LASF96:
	.ascii	"uuid\000"
.LASF69:
	.ascii	"char\000"
.LASF99:
	.ascii	"heightmap\000"
.LASF76:
	.ascii	"VBO_Block\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF146:
	.ascii	"float3\000"
.LASF140:
	.ascii	"freeChunks\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF29:
	.ascii	"Block_Air\000"
.LASF126:
	.ascii	"WorldGen_Smea\000"
.LASF28:
	.ascii	"Block\000"
.LASF179:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/misc/R"
	.ascii	"aycast.c\000"
.LASF136:
	.ascii	"cacheTranslationX\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF137:
	.ascii	"cacheTranslationZ\000"
.LASF174:
	.ascii	"f3_magSqr\000"
.LASF111:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF23:
	.ascii	"Direction_Top\000"
.LASF180:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF87:
	.ascii	"forceVBOUpdate\000"
.LASF120:
	.ascii	"length\000"
.LASF173:
	.ascii	"dist\000"
.LASF156:
	.ascii	"mapX\000"
.LASF157:
	.ascii	"mapY\000"
.LASF158:
	.ascii	"mapZ\000"
.LASF41:
	.ascii	"Block_Planks\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF178:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF170:
	.ascii	"sideDistZ\000"
.LASF164:
	.ascii	"deltaDistZ\000"
.LASF165:
	.ascii	"stepX\000"
.LASF166:
	.ascii	"stepY\000"
.LASF154:
	.ascii	"inpos\000"
.LASF38:
	.ascii	"Block_Glass\000"
.LASF155:
	.ascii	"raydir\000"
.LASF30:
	.ascii	"Block_Stone\000"
.LASF175:
	.ascii	"f3_dot\000"
.LASF82:
	.ascii	"emptyRevision\000"
.LASF56:
	.ascii	"Block_Lava\000"
.LASF31:
	.ascii	"Block_Dirt\000"
.LASF172:
	.ascii	"steps\000"
.LASF107:
	.ascii	"lock\000"
.LASF139:
	.ascii	"chunkCache\000"
.LASF110:
	.ascii	"WorkerItemType_Save\000"
.LASF24:
	.ascii	"Direction_North\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
