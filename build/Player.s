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
	.file	"Player.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/entity/Player.c"
	.section	.text.Player_Init,"ax",%progbits
	.align	2
	.global	Player_Init
	.syntax unified
	.arm
	.type	Player_Init, %function
Player_Init:
.LVL0:
.LFB150:
	.loc 1 7 48 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 8 2 view .LVU1
	.loc 1 8 21 is_stmt 0 view .LVU2
	mov	r3, #0
	.loc 1 7 48 view .LVU3
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 14 19 view .LVU4
	mov	r2, #0
	.loc 1 18 20 view .LVU5
	mov	ip, #1
	.loc 1 24 17 view .LVU6
	vldr.32	s15, .L8
	.loc 1 37 30 view .LVU7
	mov	r9, #9
	.loc 1 8 21 view .LVU8
	str	r3, [r0]	@ float
	str	r3, [r0, #4]	@ float
	str	r3, [r0, #8]	@ float
	.loc 1 10 2 is_stmt 1 view .LVU9
	.loc 1 10 18 is_stmt 0 view .LVU10
	str	r3, [r0, #20]	@ float
	.loc 1 11 2 is_stmt 1 view .LVU11
	.loc 1 11 16 is_stmt 0 view .LVU12
	str	r3, [r0, #12]	@ float
	.loc 1 12 2 is_stmt 1 view .LVU13
	.loc 1 12 14 is_stmt 0 view .LVU14
	str	r3, [r0, #16]	@ float
	.loc 1 14 2 is_stmt 1 view .LVU15
	.loc 1 20 17 is_stmt 0 view .LVU16
	str	r3, [r0, #24]	@ float
	.loc 1 21 20 view .LVU17
	str	r3, [r0, #28]	@ float
	.loc 1 24 17 view .LVU18
	str	r3, [r0, #44]	@ float
	str	r3, [r0, #48]	@ float
	.loc 1 32 21 view .LVU19
	str	r3, [r0, #60]	@ float
	str	r3, [r0, #64]	@ float
	str	r3, [r0, #68]	@ float
	.loc 1 33 23 view .LVU20
	str	r3, [r0, #72]	@ float
	.loc 1 35 28 view .LVU21
	str	r3, [r0, #76]	@ float
.LBB113:
.LBB114:
.LBB115:
	.loc 1 53 55 discriminator 3 view .LVU22
	mov	lr, #13
.LBE115:
.LBE114:
	.loc 1 52 26 view .LVU23
	mov	r3, r0
.LBE113:
	.loc 1 16 16 view .LVU24
	str	r1, [r0, #40]
.LBB124:
	.loc 1 42 26 view .LVU25
	ldr	r8, .L8+4
	ldr	r1, .L8+8
.LVL1:
	.loc 1 42 26 view .LVU26
	ldr	r7, .L8+12
	ldr	r6, .L8+16
	ldr	r5, .L8+20
	ldr	r4, .L8+24
.LBE124:
	.loc 1 24 17 view .LVU27
	vstr.32	s15, [r0, #52]
	.loc 1 37 30 view .LVU28
	str	r9, [r0, #132]
.LBB125:
	.loc 1 42 26 view .LVU29
	str	r8, [r0, #194]	@ unaligned
	str	r7, [r0, #198]	@ unaligned
	str	r6, [r0, #202]	@ unaligned
	str	r5, [r0, #206]	@ unaligned
	str	r4, [r0, #210]	@ unaligned
.LBE125:
	.loc 1 14 19 view .LVU30
	strb	r2, [r0, #32]
	.loc 1 15 2 is_stmt 1 view .LVU31
	.loc 1 16 2 view .LVU32
	.loc 1 17 2 view .LVU33
	.loc 1 17 18 is_stmt 0 view .LVU34
	str	r2, [r0, #124]
	.loc 1 18 2 is_stmt 1 view .LVU35
	.loc 1 18 20 is_stmt 0 view .LVU36
	str	ip, [r0, #100]
	.loc 1 20 2 is_stmt 1 view .LVU37
	.loc 1 21 2 view .LVU38
	.loc 1 22 2 view .LVU39
	.loc 1 22 21 is_stmt 0 view .LVU40
	str	r2, [r0, #80]
	.loc 1 24 2 is_stmt 1 view .LVU41
	.loc 1 26 2 view .LVU42
	.loc 1 26 20 is_stmt 0 view .LVU43
	strb	r2, [r0, #36]
	.loc 1 27 2 is_stmt 1 view .LVU44
	.loc 1 15 20 is_stmt 0 view .LVU45
	strh	r2, [r0, #34]	@ movhi
	.loc 1 29 2 is_stmt 1 view .LVU46
	.loc 1 30 2 view .LVU47
	.loc 1 29 23 is_stmt 0 view .LVU48
	strh	r2, [r0, #192]	@ movhi
	.loc 1 32 2 is_stmt 1 view .LVU49
	.loc 1 33 2 view .LVU50
	.loc 1 35 2 view .LVU51
	.loc 1 37 2 view .LVU52
	.loc 1 38 2 view .LVU53
	.loc 1 38 29 is_stmt 0 view .LVU54
	str	r2, [r0, #136]
	.loc 1 39 2 is_stmt 1 view .LVU55
	.loc 1 39 24 is_stmt 0 view .LVU56
	str	ip, [r0, #140]
.LBB126:
	.loc 1 41 3 is_stmt 1 view .LVU57
.LVL2:
	.loc 1 42 3 view .LVU58
	.loc 1 43 3 view .LVU59
	.loc 1 44 3 view .LVU60
	.loc 1 45 3 view .LVU61
	.loc 1 46 3 view .LVU62
	.loc 1 47 3 view .LVU63
	.loc 1 48 3 view .LVU64
	.loc 1 49 3 view .LVU65
	.loc 1 50 3 view .LVU66
	.loc 1 51 3 view .LVU67
	.loc 1 52 3 view .LVU68
	.loc 1 42 26 is_stmt 0 view .LVU69
	str	r1, [r0, #214]	@ unaligned
	ldr	r1, .L8+28
	.loc 1 52 26 view .LVU70
	strb	ip, [r0, #226]
	.loc 1 53 3 is_stmt 1 view .LVU71
.LBB118:
	.loc 1 53 8 view .LVU72
.LVL3:
	.loc 1 53 21 discriminator 1 view .LVU73
.LBE118:
	.loc 1 42 26 is_stmt 0 view .LVU74
	str	r1, [r0, #218]	@ unaligned
	ldr	r1, .L8+32
	str	r1, [r0, #222]	@ unaligned
.LVL4:
.L2:
.LBB119:
.LBB116:
	.loc 1 53 32 is_stmt 1 discriminator 3 view .LVU75
	.loc 1 53 55 is_stmt 0 discriminator 3 view .LVU76
	strb	r2, [r3, #228]
.LBE116:
	.loc 1 53 28 discriminator 3 view .LVU77
	add	r2, r2, #1
.LVL5:
	.loc 1 53 21 discriminator 1 view .LVU78
	cmp	r2, #16
.LBB117:
	.loc 1 53 55 discriminator 3 view .LVU79
	strb	lr, [r3, #227]
	strb	ip, [r3, #229]
.LBE117:
	.loc 1 53 28 is_stmt 1 discriminator 3 view .LVU80
.LVL6:
	.loc 1 53 21 discriminator 1 view .LVU81
	add	r3, r3, #3
	bne	.L2
.LBE119:
	.loc 1 54 3 view .LVU82
.LVL7:
	.loc 1 55 3 view .LVU83
	.loc 1 56 3 view .LVU84
	.loc 1 57 3 view .LVU85
	.loc 1 58 3 view .LVU86
	.loc 1 59 3 view .LVU87
	.loc 1 60 3 view .LVU88
	.loc 1 61 3 view .LVU89
	.loc 1 62 3 view .LVU90
	.loc 1 63 3 view .LVU91
	.loc 1 64 3 view .LVU92
	.loc 1 65 3 view .LVU93
	.loc 1 66 3 view .LVU94
	.loc 1 67 3 view .LVU95
	.loc 1 68 3 view .LVU96
	.loc 1 69 3 view .LVU97
	.loc 1 70 3 view .LVU98
	.loc 1 71 3 view .LVU99
	.loc 1 72 3 view .LVU100
	.loc 1 73 3 view .LVU101
	.loc 1 74 3 view .LVU102
	.loc 1 75 3 view .LVU103
	.loc 1 76 3 view .LVU104
	.loc 1 77 3 view .LVU105
	.loc 1 78 3 view .LVU106
	.loc 1 79 3 view .LVU107
	.loc 1 79 26 is_stmt 0 view .LVU108
	mov	r1, #256
.LBB120:
.LBB121:
	.loc 1 82 57 discriminator 3 view .LVU109
	mov	r2, #0
.LVL8:
	.loc 1 82 57 discriminator 3 view .LVU110
.LBE121:
.LBE120:
	.loc 1 54 26 view .LVU111
	ldr	ip, .L8+36
	ldr	r3, .L8+40
	str	ip, [r0, #275]	@ unaligned
	ldr	ip, .L8+44
	str	r3, [r0, #279]	@ unaligned
	ldr	r3, .L8+48
	str	ip, [r0, #283]	@ unaligned
	ldr	ip, .L8+52
	str	r3, [r0, #287]	@ unaligned
	ldr	r3, .L8+56
	str	ip, [r0, #291]	@ unaligned
	ldr	ip, .L8+60
	str	r3, [r0, #295]	@ unaligned
	ldr	r3, .L8+64
	str	ip, [r0, #299]	@ unaligned
	ldr	ip, .L8+68
	str	r3, [r0, #303]	@ unaligned
	ldr	r3, .L8+72
	str	ip, [r0, #307]	@ unaligned
	ldr	ip, .L8+76
	str	r3, [r0, #311]	@ unaligned
	ldr	r3, .L8+80
	str	ip, [r0, #315]	@ unaligned
	ldr	ip, .L8+84
	str	r3, [r0, #319]	@ unaligned
	ldr	r3, .L8+88
	str	ip, [r0, #323]	@ unaligned
	ldr	ip, .L8+92
	str	r3, [r0, #327]	@ unaligned
	ldr	r3, .L8+96
	str	ip, [r0, #331]	@ unaligned
	ldr	ip, .L8+100
	str	r3, [r0, #335]	@ unaligned
	ldr	r3, .L8+104
	str	ip, [r0, #339]	@ unaligned
	ldr	ip, .L8+108
	str	r3, [r0, #343]	@ unaligned
	.loc 1 79 26 view .LVU112
	add	r3, r0, #348
	.loc 1 54 26 view .LVU113
	str	ip, [r0, #347]	@ unaligned
	.loc 1 79 26 view .LVU114
	strh	r1, [r3, #3]	@ unaligned
	.loc 1 82 3 is_stmt 1 view .LVU115
.LBB123:
	.loc 1 82 8 view .LVU116
.LVL9:
	.loc 1 82 21 discriminator 1 view .LVU117
	add	r3, r0, #144
	add	r1, r0, #171
.LVL10:
.L3:
.LBB122:
	.loc 1 82 31 discriminator 3 view .LVU118
	.loc 1 82 57 is_stmt 0 discriminator 3 view .LVU119
	strh	r2, [r3]	@ unaligned
	strb	r2, [r3, #2]
.LBE122:
	.loc 1 82 27 is_stmt 1 discriminator 3 view .LVU120
	.loc 1 82 21 discriminator 1 view .LVU121
	add	r3, r3, #3
	cmp	r3, r1
	bne	.L3
.LBE123:
.LBE126:
	.loc 1 84 2 view .LVU122
	.loc 1 86 2 view .LVU123
	.loc 1 86 26 is_stmt 0 view .LVU124
	mov	r3, #1
	strb	r3, [r0, #56]
	.loc 1 87 1 view .LVU125
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L9:
	.align	2
.L8:
	.word	-1082130432
	.word	33619969
	.word	16779521
	.word	196864
	.word	16778241
	.word	100728837
	.word	524544
	.word	184614922
	.word	786688
	.word	117506062
	.word	983296
	.word	16781313
	.word	302055441
	.word	1245440
	.word	16782337
	.word	369164309
	.word	1507584
	.word	16783361
	.word	453050393
	.word	1704192
	.word	16786433
	.word	587268124
	.word	1900800
	.word	16785665
	.word	570490911
	.word	1966336
	.word	16786689
	.word	637599776
	.cfi_endproc
.LFE150:
	.size	Player_Init, .-Player_Init
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC38:
	.ascii	"ur burning lol\000"
	.align	2
.LC39:
	.ascii	"Fire\000"
	.align	2
.LC40:
	.ascii	"Player died\000"
	.align	2
.LC41:
	.ascii	"Died by %s\000"
	.align	2
.LC42:
	.ascii	"lol ur world is gone\000"
	.section	.text.Player_Update,"ax",%progbits
	.align	2
	.global	Player_Update
	.syntax unified
	.arm
	.type	Player_Update, %function
Player_Update:
.LVL11:
.LFB151:
	.loc 1 89 63 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 90 2 view .LVU127
	.loc 1 89 63 is_stmt 0 view .LVU128
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	vpush.64	{d8, d9}
	.cfi_def_cfa_offset 36
	.cfi_offset 80, -36
	.cfi_offset 81, -32
	.cfi_offset 82, -28
	.cfi_offset 83, -24
	.loc 1 90 25 view .LVU129
	vldr.32	s19, [r0, #16]
	.loc 1 89 63 view .LVU130
	mov	r4, r0
	sub	sp, sp, #20
	.cfi_def_cfa_offset 56
	.loc 1 90 25 view .LVU131
	vmov.f32	s0, s19
	.loc 1 89 63 view .LVU132
	mov	r6, r2
	.loc 1 90 25 view .LVU133
	bl	sinf
.LVL12:
	.loc 1 90 45 discriminator 1 view .LVU134
	vldr.32	s17, [r4, #12]
	.loc 1 90 25 view .LVU135
	vmov.f32	s16, s0
	.loc 1 90 45 discriminator 1 view .LVU136
	vmov.f32	s0, s17
	bl	cosf
.LVL13:
	vmov.f32	s18, s0
	.loc 1 90 17 discriminator 2 view .LVU137
	vmov.f32	s0, s17
	bl	sinf
.LVL14:
	vmov.f32	s17, s0
	.loc 1 90 88 discriminator 3 view .LVU138
	vmov.f32	s0, s19
	bl	cosf
.LVL15:
	.loc 1 91 24 view .LVU139
	vldr.32	s15, .L48+8
	vldr.32	s1, [r4, #4]
	.loc 1 90 17 discriminator 5 view .LVU140
	vnmul.f32	s5, s0, s18
	.loc 1 90 17 discriminator 2 view .LVU141
	vnmul.f32	s3, s16, s18
	.loc 1 91 24 view .LVU142
	vldr.32	s2, [r4, #8]
	vadd.f32	s1, s1, s15
	vldr.32	s0, [r4]
	.loc 1 90 17 discriminator 5 view .LVU143
	vstr.32	s17, [r4, #48]
	.loc 1 91 24 discriminator 1 view .LVU144
	vmov.f32	s4, s17
	.loc 1 90 17 discriminator 5 view .LVU145
	vstr.32	s3, [r4, #44]
	vstr.32	s5, [r4, #52]
	.loc 1 91 2 is_stmt 1 view .LVU146
.LVL16:
.LBB127:
.LBI127:
	.file 2 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/VecMath.h"
	.loc 2 14 15 view .LVU147
	.loc 2 14 51 view .LVU148
.LBE127:
	.loc 1 91 24 is_stmt 0 discriminator 1 view .LVU149
	ldr	r0, [r4, #40]
	add	r1, r4, #172
	vstr.32	s2, [sp, #12]
.LVL17:
	.loc 1 91 24 discriminator 1 view .LVU150
	vstr.32	s0, [sp, #4]
	vstr.32	s1, [sp, #8]
	bl	Raycast_Cast
.LVL18:
	.loc 1 92 52 view .LVU151
	subs	r3, r0, #0
	.loc 1 91 23 discriminator 2 view .LVU152
	strb	r0, [r4, #192]
	.loc 1 92 2 is_stmt 1 view .LVU153
	.loc 1 92 52 is_stmt 0 view .LVU154
	beq	.L11
	.loc 1 92 52 discriminator 1 view .LVU155
	vldr.32	s14, [r4, #184]
	vldr.32	s15, .L48+12
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #1
	movpl	r3, #0
.L11:
	.loc 1 95 23 view .LVU156
	vldr.32	s0, [r4, #64]
	.loc 1 95 6 view .LVU157
	vldr.32	s15, .L48+16
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	.loc 1 98 52 view .LVU158
	vldr.32	s17, [r4]
	.loc 1 98 71 view .LVU159
	vldr.32	s16, [r4, #4]
	.loc 1 98 92 view .LVU160
	vldr.32	s18, [r4, #8]
	.loc 1 98 7 view .LVU161
	ldr	r5, [r4, #40]
	.loc 1 92 29 discriminator 6 view .LVU162
	strb	r3, [r4, #193]
	.loc 1 95 3 is_stmt 1 view .LVU163
	.loc 1 95 6 is_stmt 0 view .LVU164
	bls	.L43
.L13:
	.loc 1 104 3 is_stmt 1 view .LVU165
	.loc 1 104 7 is_stmt 0 view .LVU166
	vcvt.s32.f32	s15, s18
	vmov	r3, s15	@ int
	vcvt.s32.f32	s15, s16
	vmov	r2, s15	@ int
	vcvt.s32.f32	s15, s17
	mov	r0, r5
	vmov	r1, s15	@ int
	bl	World_GetBlock
.LVL19:
	.loc 1 104 6 discriminator 1 view .LVU167
	cmp	r0, #27
	beq	.L44
.L15:
	.loc 1 111 4 is_stmt 1 view .LVU168
	adr	r1, .L48
	ldrd	r0, [r1]
	bl	svcSleepThread
.LVL20:
	.loc 1 112 4 view .LVU169
	.loc 1 112 43 is_stmt 0 view .LVU170
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	.loc 1 113 6 view .LVU171
	cmp	r3, #400
	.loc 1 112 23 view .LVU172
	str	r3, [r4, #80]
	.loc 1 113 4 is_stmt 1 view .LVU173
	.loc 1 113 39 is_stmt 0 discriminator 1 view .LVU174
	ldr	r3, [r4, #96]
	.loc 1 113 6 view .LVU175
	beq	.L16
	.loc 1 117 4 is_stmt 1 view .LVU176
	.loc 1 117 7 is_stmt 0 view .LVU177
	cmp	r3, #0
	beq	.L18
.L42:
	.loc 1 120 23 view .LVU178
	ldr	r3, [r4, #84]
.L19:
	.loc 1 126 3 is_stmt 1 view .LVU179
	.loc 1 126 6 is_stmt 0 view .LVU180
	cmp	r3, #0
	ble	.L45
	.loc 1 172 1 view .LVU181
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	vldm	sp!, {d8-d9}
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 20
	pop	{r4, r5, r6, r7, pc}
.LVL21:
.L45:
	.cfi_restore_state
	.loc 1 127 4 is_stmt 1 view .LVU182
	.loc 1 127 7 is_stmt 0 view .LVU183
	ldr	r3, [r4, #100]
	cmp	r3, #4
	beq	.L22
	.loc 1 128 5 is_stmt 1 view .LVU184
	.loc 1 145 5 view .LVU185
	.loc 1 145 25 is_stmt 0 view .LVU186
	mov	r3, #1
	str	r3, [r4, #120]
.LBB128:
	.loc 1 146 6 is_stmt 1 view .LVU187
	.loc 1 146 13 is_stmt 0 view .LVU188
	ldrb	r1, [r6]	@ zero_extendqisi2
	.loc 1 146 9 view .LVU189
	cmp	r1, #0
	beq	.L46
.LBB129:
	.loc 1 149 7 is_stmt 1 view .LVU190
	ldr	r0, .L48+24
	bl	DebugUI_Log
.LVL22:
.L24:
.LBE129:
	.loc 1 151 6 view .LVU191
	.loc 1 151 31 is_stmt 0 view .LVU192
	vldr.32	s15, [r4, #108]
	.loc 1 153 10 view .LVU193
	mov	r5, #1
	.loc 1 151 24 view .LVU194
	vstr.32	s15, [r4]
	.loc 1 152 6 is_stmt 1 view .LVU195
	.loc 1 152 13 is_stmt 0 view .LVU196
	ldr	r7, [r4, #40]
.LVL23:
	.loc 1 153 6 is_stmt 1 view .LVU197
	.loc 1 154 6 view .LVU198
	.loc 1 154 12 is_stmt 0 view .LVU199
	b	.L25
.LVL24:
.L26:
	.loc 1 154 41 view .LVU200
	vldr.32	s15, [r4, #108]
	.loc 1 155 13 view .LVU201
	add	r5, r5, #1
.LVL25:
.L25:
	.loc 1 154 75 is_stmt 1 view .LVU202
	.loc 1 154 13 is_stmt 0 view .LVU203
	vldr.32	s14, [r4, #116]
	vcvt.s32.f32	s15, s15
	vmov	r1, s15	@ int
	vcvt.s32.f32	s15, s14
	mov	r2, r5
	mov	r0, r7
	vmov	r3, s15	@ int
	bl	World_GetBlock
.LVL26:
	.loc 1 155 7 is_stmt 1 view .LVU204
	.loc 1 154 75 is_stmt 0 discriminator 1 view .LVU205
	cmp	r0, #0
	bne	.L26
	.loc 1 157 5 is_stmt 1 view .LVU206
.LVL27:
	.loc 1 158 6 view .LVU207
	.loc 1 158 24 is_stmt 0 view .LVU208
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
.LBE128:
	.loc 1 163 15 view .LVU209
	mov	r2, #0
.LBB131:
	.loc 1 158 24 view .LVU210
	cmp	r3, #1
	.loc 1 158 47 discriminator 1 view .LVU211
	addne	r5, r5, #1
.LVL28:
	.loc 1 158 24 discriminator 2 view .LVU212
	vmov	s15, r5	@ int
.LBE131:
	.loc 1 161 15 view .LVU213
	mov	r3, #20
.LBB132:
	.loc 1 158 24 discriminator 2 view .LVU214
	vcvt.f32.s32	s15, s15
	.loc 1 159 24 view .LVU215
	ldr	r1, [r4, #116]	@ float
	.loc 1 158 24 discriminator 4 view .LVU216
	vstr.32	s15, [r4, #4]
.LVL29:
	.loc 1 159 6 is_stmt 1 view .LVU217
	.loc 1 159 24 is_stmt 0 view .LVU218
	str	r1, [r4, #8]	@ float
.LBE132:
	.loc 1 161 5 is_stmt 1 view .LVU219
	.loc 1 161 15 is_stmt 0 view .LVU220
	str	r3, [r4, #84]
	.loc 1 162 5 is_stmt 1 view .LVU221
	.loc 1 162 19 is_stmt 0 view .LVU222
	str	r3, [r4, #96]
	.loc 1 163 5 is_stmt 1 view .LVU223
	.loc 1 163 15 is_stmt 0 view .LVU224
	strb	r2, [r6]
	.loc 1 172 1 view .LVU225
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	vldm	sp!, {d8-d9}
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 20
	pop	{r4, r5, r6, r7, pc}
.LVL30:
.L16:
	.cfi_restore_state
	.loc 1 113 31 discriminator 1 view .LVU226
	cmp	r3, #0
	beq	.L18
	.loc 1 114 5 is_stmt 1 view .LVU227
	.loc 1 115 24 is_stmt 0 view .LVU228
	mov	r2, #0
	.loc 1 114 34 view .LVU229
	sub	r3, r3, #1
	.loc 1 117 7 view .LVU230
	cmp	r3, #0
	.loc 1 114 19 view .LVU231
	str	r3, [r4, #96]
	.loc 1 115 5 is_stmt 1 view .LVU232
	.loc 1 115 24 is_stmt 0 view .LVU233
	str	r2, [r4, #80]
	.loc 1 117 4 is_stmt 1 view .LVU234
	.loc 1 117 7 is_stmt 0 view .LVU235
	bne	.L42
.L18:
	.loc 1 118 5 is_stmt 1 view .LVU236
	adr	r1, .L48
	ldrd	r0, [r1]
	bl	svcSleepThread
.LVL31:
	.loc 1 119 5 view .LVU237
	.loc 1 119 7 is_stmt 0 view .LVU238
	ldr	r3, [r4, #80]
	cmp	r3, #400
	bne	.L42
	.loc 1 120 6 is_stmt 1 view .LVU239
	.loc 1 121 25 is_stmt 0 view .LVU240
	mov	r2, #0
	.loc 1 120 27 view .LVU241
	ldr	r3, [r4, #84]
	sub	r3, r3, #1
	.loc 1 121 25 view .LVU242
	strd	r2, [r4, #80]
	b	.L19
.L43:
	.loc 1 96 4 is_stmt 1 view .LVU243
	.loc 1 97 4 view .LVU244
	.loc 1 97 17 is_stmt 0 view .LVU245
	vcvt.f64.f32	d0, s0
	bl	round
.LVL32:
	.loc 1 98 73 view .LVU246
	vldr.32	s15, .L48+20
	vsub.f32	s16, s16, s15
	.loc 1 98 7 view .LVU247
	vcvt.s32.f32	s15, s17
	vcvt.s32.f32	s14, s18
	.loc 1 97 17 discriminator 1 view .LVU248
	vcvt.f32.f64	s0, d0
	.loc 1 98 7 view .LVU249
	vmov	r1, s15	@ int
	vcvt.s32.f32	s15, s16
	vmov	r3, s14	@ int
	mov	r0, r5
	.loc 1 97 17 discriminator 1 view .LVU250
	vstr.32	s0, [r4, #104]
	.loc 1 98 4 is_stmt 1 view .LVU251
	.loc 1 98 7 is_stmt 0 view .LVU252
	vmov	r2, s15	@ int
	bl	World_GetBlock
.LVL33:
	.loc 1 98 6 discriminator 1 view .LVU253
	cmp	r0, #0
	beq	.L47
	.loc 1 99 5 is_stmt 1 view .LVU254
	.loc 1 99 26 is_stmt 0 view .LVU255
	vldr.32	s15, [r4, #84]	@ int
	vldr.32	s14, [r4, #104]
	vcvt.f32.s32	s15, s15
	vadd.f32	s15, s15, s14
	.loc 1 100 17 view .LVU256
	mov	r3, #0
	.loc 1 99 15 view .LVU257
	vcvt.s32.f32	s15, s15
	vldr.32	s16, [r4, #4]
	vldr.32	s18, [r4, #8]
	vldr.32	s17, [r4]
	vstr.32	s15, [r4, #84]	@ int
	.loc 1 100 5 is_stmt 1 view .LVU258
	ldr	r5, [r4, #40]
	.loc 1 100 17 is_stmt 0 view .LVU259
	str	r3, [r4, #104]	@ float
	b	.L13
.L44:
.LBB133:
	.loc 1 105 4 is_stmt 1 view .LVU260
	ldr	r0, .L48+28
	bl	DebugUI_Log
.LVL34:
	.loc 1 106 4 view .LVU261
	mov	r1, #10
	ldr	r0, .L48+32
	bl	OvertimeDamage
.LVL35:
	b	.L15
.L47:
	.loc 1 106 4 is_stmt 0 view .LVU262
	vldr.32	s16, [r4, #4]
	vldr.32	s18, [r4, #8]
	vldr.32	s17, [r4]
	ldr	r5, [r4, #40]
	b	.L13
.L46:
	.loc 1 106 4 view .LVU263
.LBE133:
.LBB134:
.LBB130:
	.loc 1 147 7 is_stmt 1 view .LVU264
	ldr	r0, .L48+36
	bl	DebugUI_Log
.LVL36:
.LBE130:
	b	.L24
.L22:
	.loc 1 147 7 is_stmt 0 view .LVU265
.LBE134:
.LBB135:
	.loc 1 165 5 is_stmt 1 view .LVU266
	ldr	r0, .L48+40
.LBE135:
	.loc 1 172 1 is_stmt 0 view .LVU267
	add	sp, sp, #20
	.cfi_def_cfa_offset 36
	@ sp needed
	vldm	sp!, {d8-d9}
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 20
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL37:
.LBB136:
	.loc 1 165 5 view .LVU268
	b	DebugUI_Log
.LVL38:
.L49:
	.align	3
.L48:
	.word	10000000
	.word	0
	.word	1070805811
	.word	1110147072
	.word	-1052770304
	.word	1065353216
	.word	.LC41
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC42
.LBE136:
	.cfi_endproc
.LFE151:
	.size	Player_Update, .-Player_Update
	.section	.text.Player_CanMove,"ax",%progbits
	.align	2
	.global	Player_CanMove
	.syntax unified
	.arm
	.type	Player_CanMove, %function
Player_CanMove:
.LVL39:
.LFB152:
	.loc 1 174 48 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB137:
.LBB138:
.LBB139:
.LBB140:
.LBB141:
.LBB142:
	.file 3 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/NumberUtils.h"
	.loc 3 25 47 is_stmt 0 view .LVU270
	vcvt.s32.f32	s13, s0
	.loc 3 25 58 view .LVU271
	vcvt.f32.s32	s10, s13
.LBE142:
.LBE141:
.LBB148:
.LBB149:
	.loc 3 25 47 view .LVU272
	vcvt.s32.f32	s14, s2
.LBE149:
.LBE148:
.LBB156:
.LBB143:
	.loc 3 25 58 view .LVU273
	vcmpe.f32	s10, s0
.LBE143:
.LBE156:
.LBB157:
.LBB158:
	.loc 3 25 47 view .LVU274
	vcvt.s32.f32	s15, s1
.LBE158:
.LBE157:
.LBB165:
.LBB150:
	.loc 3 25 58 view .LVU275
	vcvt.f32.s32	s11, s14
.LBE150:
.LBE165:
.LBB166:
.LBB144:
	vmrs	APSR_nzcv, FPSCR
.LBE144:
.LBE166:
.LBB167:
.LBB159:
	vcvt.f32.s32	s12, s15
.LBE159:
.LBE167:
.LBB168:
.LBB151:
	vcmpe.f32	s2, s11
.LBE151:
.LBE168:
.LBE140:
.LBE139:
.LBE138:
.LBE137:
	.loc 1 174 48 view .LVU276
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
.LBB206:
.LBB201:
.LBB195:
.LBB189:
.LBB169:
.LBB145:
	.loc 3 25 58 view .LVU277
	movgt	r3, #1
	movle	r3, #0
	.loc 3 25 56 view .LVU278
	vmov	r2, s13	@ int
.LBE145:
.LBE169:
.LBE189:
.LBE195:
.LBE201:
.LBE206:
	.loc 1 174 48 view .LVU279
	vpush.64	{d8, d9, d10}
	.cfi_def_cfa_offset 60
	.cfi_offset 80, -60
	.cfi_offset 81, -56
	.cfi_offset 82, -52
	.cfi_offset 83, -48
	.cfi_offset 84, -44
	.cfi_offset 85, -40
.LBB207:
.LBB202:
.LBB196:
.LBB190:
.LBB170:
.LBB152:
	.loc 3 25 58 view .LVU280
	vmrs	APSR_nzcv, FPSCR
.LBE152:
.LBE170:
.LBB171:
.LBB160:
	vcmpe.f32	s1, s12
.LBE160:
.LBE171:
.LBB172:
.LBB146:
	.loc 3 25 56 view .LVU281
	sub	r8, r2, r3
	add	r2, r8, #2
.LBE146:
.LBE172:
.LBE190:
.LBE196:
.LBE202:
.LBE207:
	.loc 1 174 48 view .LVU282
	sub	sp, sp, #20
	.cfi_def_cfa_offset 80
.LBB208:
.LBB203:
.LBB197:
.LBB191:
.LBB173:
.LBB153:
	.loc 3 25 58 view .LVU283
	movmi	r3, #1
	movpl	r3, #0
	str	r2, [sp]
.LBE153:
.LBE173:
.LBB174:
.LBB161:
	vmrs	APSR_nzcv, FPSCR
.LBE161:
.LBE174:
.LBB175:
.LBB154:
	.loc 3 25 56 view .LVU284
	vmov	r2, s14	@ int
	sub	r7, r2, r3
.LBE154:
.LBE175:
.LBB176:
.LBB162:
	.loc 3 25 58 view .LVU285
	movmi	r3, #1
	movpl	r3, #0
	.loc 3 25 56 view .LVU286
	vmov	r2, s15	@ int
.LBE162:
.LBE176:
	.loc 1 183 10 view .LVU287
	vldr.32	s20, .L80
.LBB177:
.LBB178:
	.loc 3 33 19 view .LVU288
	vldr.32	s19, .L80+4
	.loc 3 33 30 discriminator 1 view .LVU289
	vldr.32	s21, .L80+8
.LBE178:
.LBE177:
.LBE191:
.LBE197:
.LBE203:
.LBE208:
	.loc 1 174 48 view .LVU290
	vmov.f32	s16, s0
.LVL40:
	.loc 1 174 48 view .LVU291
	vmov.f32	s18, s2
	vmov.f32	s17, s1
.LVL41:
	.loc 1 175 2 is_stmt 1 view .LVU292
.LBB209:
	.loc 1 175 7 view .LVU293
	.loc 1 175 21 discriminator 1 view .LVU294
.LBE209:
	.loc 1 174 48 is_stmt 0 view .LVU295
	mov	r6, r0
	sub	fp, r8, #1
.LBB210:
.LBB204:
.LBB198:
.LBB192:
.LBB182:
.LBB163:
	.loc 3 25 56 view .LVU296
	sub	r8, r2, r3
	sub	r9, r7, #1
	add	r10, r8, #3
	add	r7, r7, #2
.LVL42:
.L51:
	.loc 3 25 56 view .LVU297
.LBE163:
.LBE182:
.LBE192:
.LBE198:
	.loc 1 176 21 is_stmt 1 discriminator 1 view .LVU298
	mov	r5, r8
.LVL43:
.L63:
.LBB199:
	.loc 1 177 23 discriminator 1 view .LVU299
	mov	r4, r9
.LVL44:
.L53:
.LBB193:
	.loc 1 178 5 view .LVU300
.LBB183:
.LBI141:
	.loc 3 25 19 view .LVU301
.LBB147:
	.loc 3 25 40 view .LVU302
	.loc 3 25 40 is_stmt 0 view .LVU303
.LBE147:
.LBE183:
	.loc 1 179 5 is_stmt 1 view .LVU304
.LBB184:
.LBI157:
	.loc 3 25 19 view .LVU305
.LBB164:
	.loc 3 25 40 view .LVU306
	.loc 3 25 40 is_stmt 0 view .LVU307
.LBE164:
.LBE184:
	.loc 1 180 5 is_stmt 1 view .LVU308
.LBB185:
.LBI148:
	.loc 3 25 19 view .LVU309
.LBB155:
	.loc 3 25 40 view .LVU310
	.loc 3 25 40 is_stmt 0 view .LVU311
.LBE155:
.LBE185:
	.loc 1 181 5 is_stmt 1 view .LVU312
	.loc 1 181 9 is_stmt 0 view .LVU313
	mov	r3, r4
	mov	r2, r5
	mov	r1, fp
	ldr	r0, [r6, #40]
	bl	World_GetBlock
.LVL45:
	.loc 1 181 8 discriminator 1 view .LVU314
	cmp	r0, #0
	bne	.L52
.L55:
.LBE193:
	.loc 1 177 29 is_stmt 1 discriminator 2 view .LVU315
	.loc 1 177 23 discriminator 1 view .LVU316
	add	r4, r4, #1
.LVL46:
	.loc 1 177 23 is_stmt 0 discriminator 1 view .LVU317
	cmp	r4, r7
	bne	.L53
.LBE199:
	.loc 1 176 27 is_stmt 1 discriminator 2 view .LVU318
.LVL47:
	.loc 1 176 21 discriminator 1 view .LVU319
	add	r5, r5, #1
	cmp	r5, r10
	bne	.L63
.LBE204:
	.loc 1 175 27 discriminator 2 view .LVU320
	.loc 1 175 21 discriminator 1 view .LVU321
	ldr	r3, [sp]
	add	fp, fp, #1
	.loc 1 175 21 is_stmt 0 discriminator 1 view .LVU322
	cmp	fp, r3
	bne	.L51
.LBE210:
	.loc 1 192 8 view .LVU323
	mov	r0, #1
.LVL48:
.L61:
	.loc 1 193 1 view .LVU324
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 60
	@ sp needed
	vldm	sp!, {d8-d10}
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
.LVL49:
	.loc 1 193 1 view .LVU325
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL50:
.L52:
	.cfi_restore_state
.LBB211:
.LBB205:
.LBB200:
.LBB194:
	.loc 1 181 65 discriminator 1 view .LVU326
	mov	r3, r4
	mov	r2, r5
	mov	r1, fp
	ldr	r0, [r6, #40]
	bl	World_GetBlock
.LVL51:
	.loc 1 181 63 discriminator 1 view .LVU327
	cmp	r0, #27
	beq	.L55
	.loc 1 182 7 view .LVU328
	mov	r3, r4
	mov	r2, r5
	mov	r1, fp
	ldr	r0, [r6, #40]
	bl	World_GetBlock
.LVL52:
	.loc 1 182 5 discriminator 1 view .LVU329
	cmp	r0, #26
	beq	.L55
	.loc 1 183 6 is_stmt 1 view .LVU330
	.loc 1 183 10 is_stmt 0 view .LVU331
	vmov	s15, fp	@ int
	vcvt.f32.s32	s14, s15
	vsub.f32	s15, s16, s20
.LVL53:
.LBB186:
.LBI177:
	.loc 3 32 19 is_stmt 1 view .LVU332
.LBB179:
	.loc 3 33 2 view .LVU333
	.loc 3 33 19 is_stmt 0 view .LVU334
	vadd.f32	s13, s14, s19
	.loc 3 33 78 view .LVU335
	vcmpe.f32	s15, s13
	vmrs	APSR_nzcv, FPSCR
	bhi	.L55
	.loc 3 33 30 discriminator 1 view .LVU336
	vadd.f32	s15, s15, s21
.LVL54:
	.loc 3 33 24 discriminator 1 view .LVU337
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L55
.LBE179:
.LBE186:
	.loc 1 183 10 view .LVU338
	vmov	s15, r5	@ int
	vcvt.f32.s32	s15, s15
.LBB187:
.LBB180:
	.loc 3 33 55 discriminator 3 view .LVU339
	vadd.f32	s14, s15, s19
.LVL55:
	.loc 3 33 42 discriminator 3 view .LVU340
	vcmpe.f32	s14, s17
	vmrs	APSR_nzcv, FPSCR
	blt	.L55
	.loc 3 33 66 discriminator 5 view .LVU341
	vldr.32	s14, .L80+12
	vadd.f32	s14, s17, s14
	.loc 3 33 60 discriminator 5 view .LVU342
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L55
.LBE180:
.LBE187:
	.loc 1 183 10 view .LVU343
	vmov	s15, r4	@ int
	vcvt.f32.s32	s14, s15
.LVL56:
	.loc 1 183 10 view .LVU344
	vsub.f32	s15, s18, s20
.LBB188:
.LBB181:
	.loc 3 33 91 discriminator 7 view .LVU345
	vadd.f32	s13, s14, s19
	.loc 3 33 78 discriminator 7 view .LVU346
	vcmpe.f32	s15, s13
	vmrs	APSR_nzcv, FPSCR
	bhi	.L55
	.loc 3 33 102 discriminator 9 view .LVU347
	vadd.f32	s15, s15, s21
	.loc 3 33 96 discriminator 9 view .LVU348
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L55
.LBE181:
.LBE188:
	.loc 1 186 13 view .LVU349
	mov	r0, #0
	b	.L61
.L81:
	.align	2
.L80:
	.word	1051092582
	.word	1065353216
	.word	1059481190
	.word	1072064102
.LBE194:
.LBE200:
.LBE205:
.LBE211:
	.cfi_endproc
.LFE152:
	.size	Player_CanMove, .-Player_CanMove
	.section	.text.Player_Jump,"ax",%progbits
	.align	2
	.global	Player_Jump
	.syntax unified
	.arm
	.type	Player_Jump, %function
Player_Jump:
.LVL57:
.LFB153:
	.loc 1 195 47 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 196 2 view .LVU351
	.loc 1 196 5 is_stmt 0 view .LVU352
	ldrb	r3, [r0, #32]	@ zero_extendqisi2
	.loc 1 195 47 view .LVU353
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	.loc 1 196 5 view .LVU354
	cmp	r3, #0
	beq	.L82
	.loc 1 196 23 discriminator 1 view .LVU355
	ldrb	r3, [r0, #35]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L82
	.loc 1 197 3 is_stmt 1 view .LVU356
	.loc 1 197 31 is_stmt 0 view .LVU357
	vldr.32	s15, .L88
	vmul.f32	s0, s0, s15
	.loc 1 198 31 view .LVU358
	vmul.f32	s2, s2, s15
	.loc 1 200 18 view .LVU359
	mov	r2, #1
	.loc 1 197 22 view .LVU360
	vstr.32	s0, [r0, #60]
	.loc 1 198 3 is_stmt 1 view .LVU361
	.loc 1 198 22 is_stmt 0 view .LVU362
	vstr.32	s2, [r0, #68]
	.loc 1 199 3 is_stmt 1 view .LVU363
	.loc 1 200 3 view .LVU364
	.loc 1 201 3 view .LVU365
	.loc 1 199 22 is_stmt 0 view .LVU366
	ldr	r1, .L88+4
	.loc 1 201 21 view .LVU367
	strb	r3, [r0, #36]
	.loc 1 199 22 view .LVU368
	str	r1, [r0, #64]	@ float
	.loc 1 200 18 view .LVU369
	strb	r2, [r0, #33]
.L82:
	.loc 1 203 1 view .LVU370
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L89:
	.align	2
.L88:
	.word	1066192077
	.word	1087792742
	.cfi_endproc
.LFE153:
	.size	Player_Jump, .-Player_Jump
	.section	.text.Player_Move,"ax",%progbits
	.align	2
	.global	Player_Move
	.syntax unified
	.arm
	.type	Player_Move, %function
Player_Move:
.LVL58:
.LFB154:
	.loc 1 208 57 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 210 23 is_stmt 0 view .LVU372
	vldr.32	s15, [r0, #72]
	.loc 1 208 57 view .LVU373
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
	.loc 1 210 23 view .LVU374
	vadd.f32	s15, s0, s15
	.loc 1 208 57 view .LVU375
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	.cfi_def_cfa_offset 100
	.cfi_offset 80, -100
	.cfi_offset 81, -96
	.cfi_offset 82, -92
	.cfi_offset 83, -88
	.cfi_offset 84, -84
	.cfi_offset 85, -80
	.cfi_offset 86, -76
	.cfi_offset 87, -72
	.cfi_offset 88, -68
	.cfi_offset 89, -64
	.cfi_offset 90, -60
	.cfi_offset 91, -56
	.cfi_offset 92, -52
	.cfi_offset 93, -48
	.cfi_offset 94, -44
	.cfi_offset 95, -40
	.loc 1 212 30 view .LVU376
	vldr.32	s20, .L182
.LVL59:
	.loc 1 209 2 is_stmt 1 view .LVU377
	.loc 1 209 28 is_stmt 0 view .LVU378
	vldr.32	s13, [r0, #76]
	.loc 1 212 30 view .LVU379
	vcmpe.f32	s15, s20
	.loc 1 209 28 view .LVU380
	vsub.f32	s14, s13, s0
	.loc 1 212 30 view .LVU381
	vmrs	APSR_nzcv, FPSCR
	.loc 1 208 57 view .LVU382
	sub	sp, sp, #212
	.cfi_def_cfa_offset 312
	.loc 1 208 57 view .LVU383
	vstr.32	s1, [sp, #76]
	vstr.32	s2, [sp, #80]
	vstr.32	s3, [sp, #84]
	.loc 1 209 28 view .LVU384
	vstr.32	s14, [r0, #76]
	.loc 1 210 2 is_stmt 1 view .LVU385
	.loc 1 210 23 is_stmt 0 view .LVU386
	vstr.32	s15, [r0, #72]
	.loc 1 211 2 is_stmt 1 view .LVU387
.LVL60:
	.loc 1 212 2 view .LVU388
	.loc 1 212 30 view .LVU389
	blt	.L90
	mov	fp, r0
	vmov.f32	s23, s1
	vmov.f32	s22, s2
	vmov.f32	s24, s3
.LBB260:
	.loc 1 213 19 is_stmt 0 view .LVU390
	vldr.32	s15, [r0, #64]
	.loc 1 213 22 view .LVU391
	vldr.32	s25, .L182+4
	.loc 1 214 6 view .LVU392
	vldr.32	s21, .L182+8
	.loc 1 216 42 discriminator 1 view .LVU393
	vldr.32	s16, .L182+72
.LVL61:
.L131:
	.loc 1 213 3 is_stmt 1 view .LVU394
	.loc 1 213 22 is_stmt 0 view .LVU395
	vsub.f32	s15, s15, s25
	.loc 1 214 3 is_stmt 1 view .LVU396
	.loc 1 214 64 is_stmt 0 discriminator 1 view .LVU397
	vcmp.f32	s15, s21
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s15, s21
	.loc 1 216 6 view .LVU398
	ldrb	r3, [fp, #35]	@ zero_extendqisi2
	vstr.32	s15, [fp, #64]
	.loc 1 216 3 is_stmt 1 view .LVU399
	.loc 1 216 6 is_stmt 0 view .LVU400
	cmp	r3, #0
	.loc 1 219 14 view .LVU401
	ldrb	r4, [fp, #32]	@ zero_extendqisi2
	.loc 1 216 6 view .LVU402
	bne	.L94
	.loc 1 218 3 is_stmt 1 view .LVU403
.LVL62:
	.loc 1 219 3 view .LVU404
	.loc 1 219 6 is_stmt 0 view .LVU405
	cmp	r4, #0
.LBB261:
.LBB262:
	.loc 2 18 50 view .LVU406
	vmul.f32	s15, s15, s20
.LBE262:
.LBE261:
	.loc 1 219 6 view .LVU407
	bne	.L95
	.loc 1 220 4 is_stmt 1 view .LVU408
	.loc 1 220 7 is_stmt 0 view .LVU409
	vldr.32	s14, .L182+12
	vldr.32	s13, .L182+16
	.loc 1 220 14 view .LVU410
	ldrb	r3, [fp, #33]	@ zero_extendqisi2
	.loc 1 220 7 view .LVU411
	cmp	r3, #0
	vmovne.f32	s14, s13
.L97:
.LVL63:
	.loc 1 228 3 is_stmt 1 view .LVU412
.LBB265:
.LBI261:
	.loc 2 18 15 view .LVU413
.LBB263:
	.loc 2 18 43 view .LVU414
	.loc 2 18 43 is_stmt 0 view .LVU415
.LBE263:
.LBE265:
.LBB266:
.LBI266:
	.loc 2 18 15 is_stmt 1 view .LVU416
.LBB267:
	.loc 2 18 43 view .LVU417
	.loc 2 18 43 is_stmt 0 view .LVU418
.LBE267:
.LBE266:
.LBB269:
.LBI269:
	.loc 2 16 15 is_stmt 1 view .LVU419
.LBB270:
	.loc 2 16 44 view .LVU420
	.loc 2 16 44 is_stmt 0 view .LVU421
.LBE270:
.LBE269:
.LBB273:
.LBI273:
	.loc 2 16 15 is_stmt 1 view .LVU422
.LBB274:
	.loc 2 16 44 view .LVU423
.LBE274:
.LBE273:
	.loc 1 229 10 is_stmt 0 view .LVU424
	ldm	fp, {r0, r1, r2}
.LBB278:
.LBB268:
	.loc 2 18 50 view .LVU425
	vmul.f32	s29, s23, s14
	vmul.f32	s28, s24, s14
.LBE268:
.LBE278:
.LBB279:
.LBB264:
	vldr.32	s10, [fp, #60]
	vldr.32	s11, [fp, #68]
.LBE264:
.LBE279:
.LBB280:
.LBB271:
	.loc 2 16 51 view .LVU426
	vmla.f32	s15, s22, s14
.LVL64:
	.loc 2 16 51 view .LVU427
.LBE271:
.LBE280:
.LBB281:
.LBB276:
	vldr.32	s13, [fp]
	vldr.32	s12, [fp, #4]
	vldr.32	s14, [fp, #8]
.LVL65:
	.loc 2 16 51 view .LVU428
.LBE276:
.LBE281:
.LBB282:
.LBB272:
	vmla.f32	s29, s10, s20
	vmla.f32	s28, s11, s20
.LBE272:
.LBE282:
.LBB283:
.LBB277:
	vadd.f32	s26, s15, s12
	vadd.f32	s29, s29, s13
	vadd.f32	s28, s28, s14
.LVL66:
.LBB275:
.LBI275:
	.loc 2 14 15 is_stmt 1 view .LVU429
	.loc 2 14 51 view .LVU430
	.loc 2 14 51 is_stmt 0 view .LVU431
.LBE275:
.LBE277:
.LBE283:
	.loc 1 233 20 view .LVU432
	mov	r3, #0
.LBB284:
.LBB285:
	.loc 1 241 8 view .LVU433
	vldr.32	s19, .L182+20
.LBB286:
.LBB287:
	.file 4 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Collision.h"
	.loc 4 9 109 discriminator 1 view .LVU434
	vldr.32	s18, .L182+24
.LBE287:
.LBE286:
.LBB292:
.LBB293:
.LBB294:
.LBB295:
.LBB296:
.LBB297:
.LBB298:
	vldr.32	s17, .L182+28
	vstr.32	s26, [sp, #104]
	vstr.32	s29, [sp, #100]
	vstr.32	s28, [sp, #108]
.LVL67:
	.loc 4 9 109 discriminator 1 view .LVU435
.LBE298:
.LBE297:
.LBE296:
.LBE295:
.LBE294:
.LBE293:
.LBE292:
.LBE285:
.LBE284:
	.loc 1 229 3 is_stmt 1 view .LVU436
	.loc 1 231 2 view .LVU437
	.loc 1 233 3 view .LVU438
	.loc 1 234 3 view .LVU439
.LBB401:
	.loc 1 234 8 view .LVU440
	.loc 1 234 21 discriminator 1 view .LVU441
.LBE401:
	.loc 1 229 10 is_stmt 0 view .LVU442
	add	lr, sp, #112
	stm	lr, {r0, r1, r2}
	add	ip, sp, #124
	.loc 1 233 20 view .LVU443
	strb	r3, [fp, #32]
	str	r4, [sp, #72]
	str	r3, [sp, #68]
.LVL68:
.L115:
.LBB402:
.LBB398:
	.loc 1 235 4 is_stmt 1 view .LVU444
	.loc 1 235 19 is_stmt 0 view .LVU445
	ldr	r3, .L182+48
.LBB385:
.LBB288:
	.loc 4 9 109 discriminator 1 view .LVU446
	vldr.32	s12, .L182+32
.LBE288:
.LBE385:
	.loc 1 235 19 view .LVU447
	ldm	r3, {r0, r1, r2}
	add	r3, sp, #124
	stm	r3, {r0, r1, r2}
	.loc 1 237 11 view .LVU448
	add	r3, sp, #112
	.loc 1 235 8 view .LVU449
	ldr	r4, [ip], #4
.LVL69:
	.loc 1 236 3 is_stmt 1 view .LVU450
	.loc 1 237 4 view .LVU451
	.loc 1 239 4 view .LVU452
	.loc 1 237 11 is_stmt 0 view .LVU453
	ldm	r3, {r0, r1, r2}
	add	r3, sp, #136
	stm	r3, {r0, r1, r2}
	.loc 1 239 28 view .LVU454
	add	r3, sp, #208
	add	r2, r3, r4, lsl #2
	vldr.32	s27, [r2, #-108]
	.loc 1 239 18 view .LVU455
	vstr.32	s27, [r2, #-72]
	.loc 1 240 4 is_stmt 1 view .LVU456
	.loc 1 241 27 is_stmt 0 view .LVU457
	vldr.32	s13, [sp, #136]
	.loc 1 241 67 view .LVU458
	vldr.32	s14, [sp, #144]
.LBB386:
.LBB376:
.LBB366:
.LBB356:
.LBB309:
.LBB310:
	.loc 3 25 47 view .LVU459
	vcvt.s32.f32	s9, s13
.LBE310:
.LBE309:
.LBE356:
.LBE366:
.LBE376:
.LBE386:
	.loc 1 241 8 view .LVU460
	vldr.32	s15, [sp, #140]
.LBB387:
.LBB377:
.LBB367:
.LBB357:
.LBB318:
.LBB319:
	.loc 3 25 47 view .LVU461
	vcvt.s32.f32	s10, s14
.LBE319:
.LBE318:
.LBB326:
.LBB311:
	.loc 3 25 58 view .LVU462
	vcvt.f32.s32	s2, s9
.LBE311:
.LBE326:
.LBB327:
.LBB328:
	.loc 3 25 47 view .LVU463
	vcvt.s32.f32	s11, s15
.LBE328:
.LBE327:
.LBB335:
.LBB312:
	.loc 3 25 58 view .LVU464
	vcmpe.f32	s13, s2
.LBE312:
.LBE335:
.LBB336:
.LBB320:
	vcvt.f32.s32	s5, s10
.LBE320:
.LBE336:
.LBE357:
.LBE367:
.LBE377:
.LBE387:
	.loc 1 236 8 view .LVU465
	mov	r1, #0
.LBB388:
.LBB378:
.LBB368:
.LBB358:
.LBB337:
.LBB313:
	.loc 3 25 58 view .LVU466
	vmrs	APSR_nzcv, FPSCR
.LBE313:
.LBE337:
.LBB338:
.LBB329:
	vcvt.f32.s32	s6, s11
.LBE329:
.LBE338:
.LBB339:
.LBB321:
	vcmpe.f32	s14, s5
.LBE321:
.LBE339:
.LBE358:
.LBE368:
.LBE378:
.LBE388:
	.loc 1 239 28 view .LVU467
	lsl	r3, r4, #2
.LBB389:
.LBB379:
.LBB369:
.LBB359:
.LBB340:
.LBB314:
	.loc 3 25 58 view .LVU468
	movmi	r2, #1
	movpl	r2, r1
.LBE314:
.LBE340:
.LBE359:
.LBE369:
.LBE379:
.LBE389:
	.loc 1 239 28 view .LVU469
	str	r3, [sp, #64]
.LBB390:
.LBB380:
.LBB370:
.LBB360:
.LBB341:
.LBB322:
	.loc 3 25 58 view .LVU470
	vmrs	APSR_nzcv, FPSCR
.LBE322:
.LBE341:
.LBB342:
.LBB315:
	.loc 3 25 56 view .LVU471
	vmov	r3, s9	@ int
.LBE315:
.LBE342:
.LBB343:
.LBB330:
	.loc 3 25 58 view .LVU472
	vcmpe.f32	s15, s6
.LBE330:
.LBE343:
.LBE360:
.LBE370:
.LBE380:
.LBE390:
	.loc 1 241 8 view .LVU473
	vsub.f32	s7, s13, s19
	vsub.f32	s8, s14, s19
.LVL70:
.LBB391:
.LBI286:
	.loc 4 9 12 is_stmt 1 view .LVU474
.LBB289:
	.loc 4 9 79 view .LVU475
.LBE289:
.LBE391:
.LBB392:
.LBB381:
.LBB371:
.LBB361:
.LBB344:
.LBB316:
	.loc 3 25 56 is_stmt 0 view .LVU476
	sub	r10, r3, r2
.LBE316:
.LBE344:
.LBB345:
.LBB323:
	.loc 3 25 58 view .LVU477
	movmi	r2, #1
	movpl	r2, r1
	.loc 3 25 56 view .LVU478
	vmov	r3, s10	@ int
.LBE323:
.LBE345:
.LBB346:
.LBB331:
	.loc 3 25 58 view .LVU479
	vmrs	APSR_nzcv, FPSCR
.LBE331:
.LBE346:
.LBE361:
.LBE371:
.LBE381:
.LBE392:
.LBB393:
.LBB290:
	.loc 4 9 109 discriminator 1 view .LVU480
	vadd.f32	s12, s15, s12
	vadd.f32	s3, s7, s18
	vadd.f32	s4, s8, s18
.LBE290:
.LBE393:
.LBB394:
.LBB382:
.LBB372:
.LBB362:
.LBB347:
.LBB324:
	.loc 3 25 56 view .LVU481
	sub	r7, r3, r2
.LBE324:
.LBE347:
.LBB348:
.LBB332:
	.loc 3 25 58 view .LVU482
	movmi	r2, #1
	movpl	r2, r1
	.loc 3 25 56 view .LVU483
	vmov	r3, s11	@ int
.LBE332:
.LBE348:
.LBE362:
.LBE372:
.LBE382:
.LBE394:
.LBB395:
.LBB291:
	.loc 4 9 86 discriminator 2 view .LVU484
	vstr.32	s15, [sp, #164]
	vstr.32	s7, [sp, #160]
	vstr.32	s8, [sp, #168]
	vstr.32	s12, [sp, #176]
	vstr.32	s3, [sp, #172]
	vstr.32	s4, [sp, #180]
.LVL71:
	.loc 4 9 86 discriminator 2 view .LVU485
.LBE291:
.LBE395:
	.loc 1 244 4 is_stmt 1 view .LVU486
.LBB396:
	.loc 1 244 9 view .LVU487
	.loc 1 244 23 discriminator 1 view .LVU488
	mov	r5, r1
.LBB383:
.LBB373:
.LBB363:
.LBB349:
.LBB333:
	.loc 3 25 56 is_stmt 0 view .LVU489
	sub	r2, r3, r2
	sub	r6, r10, #1
	add	r10, r10, #2
	sub	r9, r7, #1
	add	r8, r2, #3
	add	r7, r7, #2
	str	r4, [sp, #56]
	str	ip, [sp, #60]
	str	r10, [sp, #48]
	str	r2, [sp, #52]
.LVL72:
.L98:
	.loc 3 25 56 view .LVU490
.LBE333:
.LBE349:
.LBE363:
.LBE373:
	.loc 1 245 23 is_stmt 1 discriminator 1 view .LVU491
	ldr	r10, [sp, #52]
.LVL73:
.L105:
.LBB374:
	.loc 1 246 25 discriminator 1 view .LVU492
	mov	r4, r9
.LVL74:
.L102:
.LBB364:
	.loc 1 247 7 view .LVU493
.LBB350:
.LBI309:
	.loc 3 25 19 view .LVU494
.LBB317:
	.loc 3 25 40 view .LVU495
	.loc 3 25 40 is_stmt 0 view .LVU496
.LBE317:
.LBE350:
	.loc 1 248 7 is_stmt 1 view .LVU497
.LBB351:
.LBI327:
	.loc 3 25 19 view .LVU498
.LBB334:
	.loc 3 25 40 view .LVU499
	.loc 3 25 40 is_stmt 0 view .LVU500
.LBE334:
.LBE351:
	.loc 1 249 7 is_stmt 1 view .LVU501
.LBB352:
.LBI318:
	.loc 3 25 19 view .LVU502
.LBB325:
	.loc 3 25 40 view .LVU503
	.loc 3 25 40 is_stmt 0 view .LVU504
.LBE325:
.LBE352:
	.loc 1 250 7 is_stmt 1 view .LVU505
	.loc 1 250 11 is_stmt 0 view .LVU506
	mov	r3, r4
	mov	r2, r10
	mov	r1, r6
	ldr	r0, [fp, #40]
	bl	World_GetBlock
.LVL75:
	.loc 1 250 10 discriminator 1 view .LVU507
	cmp	r0, #0
	bne	.L177
.L101:
	.loc 1 250 10 discriminator 1 view .LVU508
.LBE364:
	.loc 1 246 31 is_stmt 1 discriminator 2 view .LVU509
	.loc 1 246 25 discriminator 1 view .LVU510
	add	r4, r4, #1
.LVL76:
	.loc 1 246 25 is_stmt 0 discriminator 1 view .LVU511
	cmp	r7, r4
	bne	.L102
	.loc 1 246 25 discriminator 1 view .LVU512
.LBE374:
	.loc 1 245 29 is_stmt 1 discriminator 2 view .LVU513
.LVL77:
	.loc 1 245 23 discriminator 1 view .LVU514
	add	r10, r10, #1
	cmp	r8, r10
	bne	.L105
.LBE383:
	.loc 1 244 29 discriminator 2 view .LVU515
	.loc 1 244 23 discriminator 1 view .LVU516
	ldr	r3, [sp, #48]
	add	r6, r6, #1
	.loc 1 244 23 is_stmt 0 discriminator 1 view .LVU517
	cmp	r3, r6
	bne	.L98
.LBE396:
	.loc 1 264 7 view .LVU518
	cmp	r5, #0
	ldr	r4, [sp, #56]
.LVL78:
	.loc 1 264 7 view .LVU519
	ldr	ip, [sp, #60]
	.loc 1 264 4 is_stmt 1 view .LVU520
	.loc 1 264 7 is_stmt 0 view .LVU521
	bne	.L106
	.loc 1 265 5 is_stmt 1 view .LVU522
	.loc 1 265 19 is_stmt 0 view .LVU523
	ldr	r3, [sp, #64]
	add	r3, r3, #208
	add	r2, sp, r3
	vstr.32	s27, [r2, #-96]
.L112:
.LBE398:
	.loc 1 234 27 is_stmt 1 discriminator 2 view .LVU524
	.loc 1 234 21 discriminator 1 view .LVU525
	add	r3, sp, #136
	.loc 1 234 21 is_stmt 0 discriminator 1 view .LVU526
	cmp	r3, ip
	bne	.L115
.LBE402:
	.loc 1 283 6 view .LVU527
	ldrb	r3, [fp, #32]	@ zero_extendqisi2
	.loc 1 283 6 view .LVU528
	vldr.32	s30, [fp]
	cmp	r3, #0
	vldr.32	s15, [fp, #4]
	vldr.32	s27, [fp, #8]
	vldr.32	s18, [sp, #112]
	vldr.32	s19, [sp, #116]
	vldr.32	s17, [sp, #120]
	ldr	r4, [sp, #72]
	ldr	r1, [sp, #68]
	.loc 1 281 3 is_stmt 1 view .LVU529
.LVL79:
.LBB403:
.LBI403:
	.loc 2 17 15 view .LVU530
.LBB404:
	.loc 2 17 44 view .LVU531
	.loc 2 17 44 is_stmt 0 view .LVU532
.LBE404:
.LBE403:
	.loc 1 283 3 is_stmt 1 view .LVU533
	.loc 1 283 6 is_stmt 0 view .LVU534
	beq	.L116
	.loc 1 283 24 discriminator 1 view .LVU535
	ldrb	r2, [fp, #35]	@ zero_extendqisi2
	cmp	r2, #0
	.loc 1 283 43 is_stmt 1 discriminator 2 view .LVU536
	.loc 1 283 58 is_stmt 0 discriminator 2 view .LVU537
	movne	r2, #0
	strbne	r2, [fp, #35]
.L116:
	.loc 1 285 3 is_stmt 1 view .LVU538
	.loc 1 285 6 is_stmt 0 view .LVU539
	cmp	r1, #0
	beq	.L117
	.loc 1 285 21 discriminator 1 view .LVU540
	ldrb	r2, [fp, #56]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L178
.LVL80:
.L117:
	.loc 1 294 3 is_stmt 1 view .LVU541
	.loc 1 294 6 is_stmt 0 view .LVU542
	ldrb	r2, [fp, #36]	@ zero_extendqisi2
	.loc 1 294 34 discriminator 1 view .LVU543
	vldr.32	s14, [fp, #28]
	.loc 1 294 6 view .LVU544
	cmp	r2, #0
	beq	.L118
	.loc 1 294 25 discriminator 1 view .LVU545
	vldr.32	s15, .L182+36
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	.loc 1 294 55 is_stmt 1 discriminator 2 view .LVU546
	.loc 1 294 73 is_stmt 0 discriminator 2 view .LVU547
	vldrgt.32	s15, .L182+60
	vsubgt.f32	s14, s14, s15
	vstrgt.32	s14, [fp, #28]
	.loc 1 295 3 is_stmt 1 view .LVU548
.L119:
	.loc 1 297 3 view .LVU549
	.loc 1 297 25 is_stmt 0 discriminator 1 view .LVU550
	eor	r3, r3, #1
	.loc 1 297 46 discriminator 2 view .LVU551
	tst	r4, r3
	bne	.L123
.LVL81:
.L124:
	.loc 1 305 22 view .LVU552
	vldr.32	s15, [fp, #64]
.LVL82:
.L122:
	.loc 1 304 3 is_stmt 1 view .LVU553
	.loc 1 305 22 is_stmt 0 view .LVU554
	vldr.32	s13, [fp, #60]
	vldr.32	s12, .L182+40
	vmul.f32	s13, s13, s12
	vldr.32	s14, [fp, #68]
	.loc 1 306 81 view .LVU555
	vcmpe.f32	s13, #0
	.loc 1 305 22 view .LVU556
	vmul.f32	s14, s14, s12
	.loc 1 306 81 view .LVU557
	vmrs	APSR_nzcv, FPSCR
	.loc 1 304 20 view .LVU558
	add	r3, sp, #112
	ldm	r3, {r0, r1, r2}
	.loc 1 305 22 view .LVU559
	vstr.32	s15, [fp, #64]
	vstr.32	s13, [fp, #60]
	vstr.32	s14, [fp, #68]
	.loc 1 304 20 view .LVU560
	stm	fp, {r0, r1, r2}
	.loc 1 305 3 is_stmt 1 view .LVU561
	.loc 1 306 3 view .LVU562
	.loc 1 306 81 is_stmt 0 view .LVU563
	bmi	.L179
	.loc 1 306 81 discriminator 2 view .LVU564
	vldr.32	s12, .L182+44
	vcmpe.f32	s13, s12
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #1
	movpl	r3, #0
.L127:
	.loc 1 307 81 view .LVU565
	vcmpe.f32	s14, #0
	.loc 1 306 6 discriminator 4 view .LVU566
	cmp	r3, #0
	.loc 1 306 108 discriminator 5 view .LVU567
	vstrne.32	s16, [fp, #60]
	.loc 1 307 3 is_stmt 1 view .LVU568
	.loc 1 307 81 is_stmt 0 view .LVU569
	vmrs	APSR_nzcv, FPSCR
	bmi	.L180
	.loc 1 307 81 discriminator 2 view .LVU570
	vldr.32	s13, .L182+44
	vcmpe.f32	s14, s13
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #1
	movpl	r3, #0
.L130:
	.loc 1 309 24 view .LVU571
	vldr.32	s14, [fp, #72]
	vsub.f32	s14, s14, s20
.LBE260:
	.loc 1 212 30 view .LVU572
	vcmpe.f32	s14, s20
.LBB471:
	.loc 1 307 6 discriminator 4 view .LVU573
	cmp	r3, #0
	.loc 1 307 108 discriminator 5 view .LVU574
	vstrne.32	s16, [fp, #68]
	.loc 1 309 3 is_stmt 1 view .LVU575
.LBE471:
	.loc 1 212 30 is_stmt 0 view .LVU576
	vmrs	APSR_nzcv, FPSCR
.LBB472:
	.loc 1 309 24 view .LVU577
	vstr.32	s14, [fp, #72]
.LVL83:
	.loc 1 309 24 view .LVU578
.LBE472:
	.loc 1 212 30 is_stmt 1 view .LVU579
	bge	.L131
.LVL84:
.L90:
	.loc 1 311 1 is_stmt 0 view .LVU580
	add	sp, sp, #212
	.cfi_remember_state
	.cfi_def_cfa_offset 100
	@ sp needed
	vldm	sp!, {d8-d15}
	.cfi_restore 94
	.cfi_restore 95
	.cfi_restore 92
	.cfi_restore 93
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
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L183:
	.align	2
.L182:
	.word	1015580809
	.word	1051372203
	.word	-1035468800
	.word	1008981771
	.word	995783695
	.word	1051092582
	.word	1059481190
	.word	1065353216
	.word	1072064102
	.word	-1097229926
	.word	1064514355
	.word	1036831949
	.word	.LANCHOR0
	.word	1087792742
	.word	1066192077
	.word	1023969417
	.word	-1110651699
	.word	1007192201
	.word	0
.LVL85:
.L177:
	.cfi_restore_state
.LBB473:
.LBB406:
.LBB399:
.LBB397:
.LBB384:
.LBB375:
.LBB365:
	.loc 1 250 67 discriminator 1 view .LVU581
	mov	r3, r4
	mov	r2, r10
	mov	r1, r6
	ldr	r0, [fp, #40]
	bl	World_GetBlock
.LVL86:
	.loc 1 250 65 discriminator 1 view .LVU582
	cmp	r0, #27
	beq	.L101
	.loc 1 251 9 view .LVU583
	mov	r3, r4
	mov	r2, r10
	mov	r1, r6
	ldr	r0, [fp, #40]
	bl	World_GetBlock
.LVL87:
.LBB353:
	.loc 1 252 8 is_stmt 1 view .LVU584
.LBE353:
	.loc 1 251 7 is_stmt 0 discriminator 1 view .LVU585
	cmp	r0, #26
.LBB354:
	.loc 1 258 25 view .LVU586
	add	ip, sp, #8
	add	lr, sp, #160
.LBE354:
	.loc 1 251 7 discriminator 1 view .LVU587
	beq	.L101
.LBB355:
	.loc 1 252 23 view .LVU588
	vmov	s15, r6	@ int
	vmov	s13, r4	@ int
	vcvt.f32.s32	s14, s15
	vmov	s15, r10	@ int
	vcvt.f32.s32	s13, s13
.LVL88:
	.loc 1 252 23 view .LVU589
	vcvt.f32.s32	s15, s15
.LVL89:
.LBB304:
.LBI297:
	.loc 4 9 12 is_stmt 1 view .LVU590
.LBB299:
	.loc 4 9 79 view .LVU591
.LBE299:
.LBE304:
	.loc 1 258 25 is_stmt 0 view .LVU592
	add	r3, sp, #96
	str	r3, [sp, #44]
	add	r3, sp, #92
	str	r3, [sp, #40]
	add	r3, sp, #148
	str	r3, [sp, #36]
	mov	r3, #0
.LBB305:
.LBB300:
	.loc 4 9 109 discriminator 1 view .LVU593
	vadd.f32	s11, s15, s17
	vadd.f32	s12, s13, s17
	vadd.f32	s10, s14, s17
.LBE300:
.LBE305:
	.loc 1 258 25 view .LVU594
	str	r3, [sp, #32]
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	.loc 1 256 12 view .LVU595
	mov	r2, #0
	.loc 1 258 25 view .LVU596
	ldm	lr, {r0, r1}
	.loc 1 254 24 view .LVU597
	vstr.32	s16, [sp, #148]
	vstr.32	s16, [sp, #152]
	.loc 1 258 25 view .LVU598
	stm	ip, {r0, r1}
.LBB306:
.LBB301:
	.loc 4 9 86 discriminator 2 view .LVU599
	vstr.32	s11, [sp, #200]
	vstr.32	s12, [sp, #204]
.LVL90:
	.loc 4 9 86 discriminator 2 view .LVU600
.LBE301:
.LBE306:
	.loc 1 254 8 is_stmt 1 view .LVU601
	.loc 1 255 8 view .LVU602
	.loc 1 256 8 view .LVU603
	.loc 1 258 7 view .LVU604
.LBB307:
.LBB302:
	.loc 4 9 86 is_stmt 0 discriminator 2 view .LVU605
	vstr.32	s13, [sp, #192]
	vstr.32	s10, [sp, #196]
.LBE302:
.LBE307:
	.loc 1 256 12 view .LVU606
	str	r2, [sp, #96]
	.loc 1 258 25 view .LVU607
	add	r2, sp, #208
	ldmdb	r2, {r0, r1}
	stm	sp, {r0, r1}
	add	r3, sp, #184
.LBB308:
.LBB303:
	.loc 4 9 86 discriminator 2 view .LVU608
	vstr.32	s14, [sp, #184]
	vstr.32	s15, [sp, #188]
.LBE303:
.LBE308:
	.loc 1 254 24 view .LVU609
	vstr.32	s16, [sp, #156]
	.loc 1 255 14 view .LVU610
	vstr.32	s16, [sp, #92]
	.loc 1 258 25 view .LVU611
	ldm	r3, {r0, r1, r2, r3}
	bl	Collision_BoxIntersect
.LVL91:
	.loc 1 259 8 is_stmt 1 view .LVU612
	.loc 1 259 18 is_stmt 0 view .LVU613
	orr	r0, r0, r5
.LVL92:
	.loc 1 259 18 view .LVU614
	uxtb	r5, r0
.LVL93:
	.loc 1 259 18 view .LVU615
	b	.L101
.LVL94:
.L106:
	.loc 1 259 18 view .LVU616
.LBE355:
.LBE365:
.LBE375:
.LBE384:
.LBE397:
	.loc 1 266 9 is_stmt 1 view .LVU617
	.loc 1 266 12 is_stmt 0 view .LVU618
	cmp	r4, #1
	beq	.L181
	.loc 1 273 5 is_stmt 1 view .LVU619
.LVL95:
	.loc 1 274 5 view .LVU620
	.loc 1 274 8 is_stmt 0 view .LVU621
	cmp	r4, #0
	.loc 1 275 6 is_stmt 1 view .LVU622
	.loc 1 275 25 is_stmt 0 view .LVU623
	vstreq.32	s16, [fp, #60]
	.loc 1 277 6 is_stmt 1 view .LVU624
	.loc 1 277 25 is_stmt 0 view .LVU625
	vstrne.32	s16, [fp, #68]
	.loc 1 273 19 view .LVU626
	str	r5, [sp, #68]
	b	.L112
.LVL96:
.L181:
	.loc 1 267 5 is_stmt 1 view .LVU627
	.loc 1 267 8 is_stmt 0 view .LVU628
	vldr.32	s15, [fp, #64]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L109
	.loc 1 267 34 discriminator 2 view .LVU629
	vcmpe.f32	s22, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L109
.L110:
	.loc 1 268 5 is_stmt 1 view .LVU630
	.loc 1 268 20 is_stmt 0 view .LVU631
	mov	r2, #0
	.loc 1 269 24 view .LVU632
	vstr.32	s16, [fp, #60]
	.loc 1 270 24 view .LVU633
	vstr.32	s16, [fp, #64]
	.loc 1 271 24 view .LVU634
	vstr.32	s16, [fp, #68]
	.loc 1 268 20 view .LVU635
	strb	r2, [fp, #33]
	.loc 1 269 5 is_stmt 1 view .LVU636
	.loc 1 270 5 view .LVU637
	.loc 1 271 5 view .LVU638
	b	.L112
.LVL97:
.L178:
	.loc 1 271 5 is_stmt 0 view .LVU639
.LBE399:
.LBE406:
.LBB407:
	.loc 1 286 4 is_stmt 1 view .LVU640
.LBB408:
.LBI408:
	.loc 2 17 15 view .LVU641
.LBB409:
	.loc 2 17 44 view .LVU642
	.loc 2 17 51 is_stmt 0 view .LVU643
	vsub.f32	s26, s26, s15
.LVL98:
	.loc 2 17 51 view .LVU644
	vsub.f32	s29, s29, s30
.LVL99:
	.loc 2 17 51 view .LVU645
.LBE409:
.LBE408:
.LBB411:
.LBB412:
.LBB413:
.LBB414:
.LBB415:
.LBB416:
	.loc 2 20 66 view .LVU646
	vmul.f32	s15, s26, s26
.LVL100:
	.loc 2 20 66 view .LVU647
.LBE416:
.LBE415:
.LBE414:
.LBE413:
.LBE412:
.LBE411:
.LBB424:
.LBB410:
	.loc 2 17 51 view .LVU648
	vsub.f32	s28, s28, s27
.LVL101:
	.loc 2 17 51 view .LVU649
.LBE410:
.LBE424:
.LBB425:
.LBI411:
	.loc 2 25 15 is_stmt 1 view .LVU650
.LBB421:
	.loc 2 26 2 view .LVU651
.LBB420:
.LBI413:
	.loc 2 23 14 view .LVU652
.LBB419:
	.loc 2 23 35 view .LVU653
.LBB418:
.LBI415:
	.loc 2 20 14 view .LVU654
.LBB417:
	.loc 2 20 43 view .LVU655
	.loc 2 20 60 is_stmt 0 view .LVU656
	vmla.f32	s15, s29, s29
	.loc 2 20 72 view .LVU657
	vmla.f32	s15, s28, s28
.LBE417:
.LBE418:
	.loc 2 23 42 discriminator 1 view .LVU658
	vsqrt.f32	s11, s15
.LVL102:
	.loc 2 23 42 discriminator 1 view .LVU659
.LBE419:
.LBE420:
	.loc 2 27 2 is_stmt 1 view .LVU660
	.loc 2 27 2 is_stmt 0 view .LVU661
.LBE421:
.LBE425:
	.loc 1 287 4 is_stmt 1 view .LVU662
.LBB426:
.LBB422:
	.loc 2 27 9 is_stmt 0 view .LVU663
	vdiv.f32	s12, s29, s11
.LVL103:
	.loc 2 27 9 view .LVU664
	vdiv.f32	s13, s26, s11
.LVL104:
	.loc 2 27 9 view .LVU665
.LBE422:
.LBE426:
	.loc 1 287 18 view .LVU666
	vadd.f32	s12, s12, s18
.LVL105:
.LBB427:
.LBI427:
	.loc 3 25 19 is_stmt 1 view .LVU667
.LBB428:
	.loc 3 25 40 view .LVU668
.LBE428:
.LBE427:
	.loc 1 288 12 is_stmt 0 view .LVU669
	vadd.f32	s13, s13, s19
.LVL106:
.LBB435:
.LBB429:
	.loc 3 25 47 view .LVU670
	vcvt.s32.f32	s10, s12
.LBE429:
.LBE435:
.LBB436:
.LBB423:
	.loc 2 27 9 view .LVU671
	vdiv.f32	s14, s28, s11
.LVL107:
	.loc 2 27 9 view .LVU672
.LBE423:
.LBE436:
.LBB437:
.LBB430:
	.loc 3 25 58 view .LVU673
	vcvt.f32.s32	s7, s10
.LBE430:
.LBE437:
	.loc 1 287 18 view .LVU674
	vadd.f32	s14, s14, s17
.LVL108:
.LBB438:
.LBB439:
	.loc 3 25 47 view .LVU675
	vcvt.s32.f32	s11, s13
.LVL109:
	.loc 3 25 47 view .LVU676
.LBE439:
.LBE438:
.LBB445:
.LBB446:
	vcvt.s32.f32	s15, s14
.LVL110:
	.loc 3 25 47 view .LVU677
.LBE446:
.LBE445:
.LBB451:
.LBB431:
	.loc 3 25 58 view .LVU678
	vcmpe.f32	s12, s7
.LBE431:
.LBE451:
.LBB452:
.LBB440:
	vcvt.f32.s32	s8, s11
.LBE440:
.LBE452:
.LBB453:
.LBB432:
	vmrs	APSR_nzcv, FPSCR
.LBE432:
.LBE453:
.LBB454:
.LBB447:
	vcvt.f32.s32	s9, s15
.LBE447:
.LBE454:
.LBB455:
.LBB441:
	vcmpe.f32	s13, s8
.LBE441:
.LBE455:
.LBB456:
.LBB433:
	movmi	r3, #1
	movpl	r3, #0
	.loc 3 25 56 view .LVU679
	vmov	r2, s10	@ int
.LBE433:
.LBE456:
.LBB457:
.LBB442:
	.loc 3 25 58 view .LVU680
	vmrs	APSR_nzcv, FPSCR
.LBE442:
.LBE457:
.LBB458:
.LBB448:
	vcmpe.f32	s14, s9
.LBE448:
.LBE458:
.LBB459:
.LBB434:
	.loc 3 25 56 view .LVU681
	sub	r6, r2, r3
.LVL111:
	.loc 3 25 56 view .LVU682
.LBE434:
.LBE459:
.LBB460:
.LBI438:
	.loc 3 25 19 is_stmt 1 view .LVU683
.LBB443:
	.loc 3 25 40 view .LVU684
	.loc 3 25 58 is_stmt 0 view .LVU685
	movmi	r3, #1
	movpl	r3, #0
	.loc 3 25 56 view .LVU686
	vmov	r2, s11	@ int
.LBE443:
.LBE460:
.LBB461:
.LBB449:
	.loc 3 25 58 view .LVU687
	vmrs	APSR_nzcv, FPSCR
.LBE449:
.LBE461:
.LBB462:
.LBB444:
	.loc 3 25 56 view .LVU688
	sub	r5, r2, r3
.LVL112:
	.loc 3 25 56 view .LVU689
.LBE444:
.LBE462:
.LBB463:
.LBI445:
	.loc 3 25 19 is_stmt 1 view .LVU690
.LBB450:
	.loc 3 25 40 view .LVU691
	.loc 3 25 56 is_stmt 0 view .LVU692
	vmov	ip, s15	@ int
	.loc 3 25 58 view .LVU693
	movmi	r3, #1
	movpl	r3, #0
	.loc 3 25 56 view .LVU694
	sub	r7, ip, r3
.LVL113:
	.loc 3 25 56 view .LVU695
.LBE450:
.LBE463:
	.loc 1 287 18 discriminator 1 view .LVU696
	mov	r1, r6
	mov	r3, r7
	add	r2, r5, #2
	ldr	r0, [fp, #40]
	bl	World_GetBlock
.LVL114:
	.loc 1 289 4 is_stmt 1 view .LVU697
	.loc 1 289 25 is_stmt 0 discriminator 1 view .LVU698
	mov	r3, r7
	mov	r1, r6
	ldr	r0, [fp, #40]
	add	r2, r5, #1
	bl	World_GetBlock
.LVL115:
	.loc 1 291 4 is_stmt 1 view .LVU699
	.loc 1 291 149 discriminator 1 view .LVU700
.LBB464:
.LBI464:
	.loc 1 195 6 view .LVU701
.LBB465:
	.loc 1 196 2 view .LVU702
	.loc 1 196 5 is_stmt 0 view .LVU703
	ldrb	r3, [fp, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L117
	.loc 1 196 23 discriminator 1 view .LVU704
	ldrb	r2, [fp, #35]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L117
	.loc 1 197 3 is_stmt 1 view .LVU705
	.loc 1 197 31 is_stmt 0 view .LVU706
	vldr.32	s15, .L182+56
	vmul.f32	s13, s23, s15
	.loc 1 198 31 view .LVU707
	vmul.f32	s15, s24, s15
	.loc 1 199 22 view .LVU708
	ldr	r3, .L182+52
	vldr.32	s14, [fp, #28]
	str	r3, [fp, #64]	@ float
	.loc 1 200 18 view .LVU709
	mov	r3, #1
	.loc 1 197 22 view .LVU710
	vstr.32	s13, [fp, #60]
	.loc 1 198 3 is_stmt 1 view .LVU711
	.loc 1 198 22 is_stmt 0 view .LVU712
	vstr.32	s15, [fp, #68]
	.loc 1 199 3 is_stmt 1 view .LVU713
	.loc 1 200 3 view .LVU714
	.loc 1 201 3 view .LVU715
.LVL116:
	.loc 1 201 3 is_stmt 0 view .LVU716
.LBE465:
.LBE464:
.LBE407:
	.loc 1 294 3 is_stmt 1 view .LVU717
.LBB468:
.LBB467:
.LBB466:
	.loc 1 201 21 is_stmt 0 view .LVU718
	strb	r2, [fp, #36]
	.loc 1 200 18 view .LVU719
	strb	r3, [fp, #33]
.L118:
	.loc 1 200 18 view .LVU720
.LBE466:
.LBE467:
.LBE468:
	.loc 1 295 3 is_stmt 1 view .LVU721
	.loc 1 295 26 is_stmt 0 discriminator 1 view .LVU722
	vcmpe.f32	s14, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L124
	.loc 1 295 55 is_stmt 1 discriminator 2 view .LVU723
	.loc 1 295 73 is_stmt 0 discriminator 2 view .LVU724
	vldr.32	s13, .L182+60
	vadd.f32	s14, s14, s13
	.loc 1 305 22 view .LVU725
	vldr.32	s15, [fp, #64]
	.loc 1 295 73 discriminator 2 view .LVU726
	vstr.32	s14, [fp, #28]
	.loc 1 297 3 is_stmt 1 view .LVU727
	b	.L122
.LVL117:
.L94:
	.loc 1 216 23 discriminator 1 view .LVU728
	.loc 1 216 42 is_stmt 0 discriminator 1 view .LVU729
	vstr.32	s16, [fp, #64]
	.loc 1 218 3 is_stmt 1 view .LVU730
.LVL118:
	.loc 1 219 3 view .LVU731
	.loc 1 224 10 view .LVU732
	.loc 1 216 42 is_stmt 0 discriminator 1 view .LVU733
	vmov.f32	s15, s16
	vldr.32	s14, .L182+60
	b	.L97
.LVL119:
.L180:
	.loc 1 307 81 discriminator 1 view .LVU734
	vldr.32	s13, .L182+64
	vcmpe.f32	s14, s13
	vmrs	APSR_nzcv, FPSCR
	movgt	r3, #1
	movle	r3, #0
	b	.L130
.L179:
	.loc 1 306 81 discriminator 1 view .LVU735
	vldr.32	s12, .L182+64
	vcmpe.f32	s13, s12
	vmrs	APSR_nzcv, FPSCR
	movgt	r3, #1
	movle	r3, #0
	b	.L127
.LVL120:
.L95:
	.loc 1 224 10 is_stmt 1 view .LVU736
	.loc 1 226 8 view .LVU737
	.loc 1 226 11 is_stmt 0 view .LVU738
	vldr.32	s14, .L182+68
	.loc 1 226 18 view .LVU739
	ldrb	r3, [fp, #36]	@ zero_extendqisi2
	.loc 1 226 11 view .LVU740
	cmp	r3, #0
	movne	r4, r3
	vmoveq.f32	s14, s20
	b	.L97
.LVL121:
.L109:
.LBB469:
.LBB400:
	.loc 1 267 51 is_stmt 1 discriminator 3 view .LVU741
	.loc 1 267 68 is_stmt 0 discriminator 3 view .LVU742
	mov	r2, #1
	strb	r2, [fp, #32]
	b	.L110
.LVL122:
.L123:
	.loc 1 267 68 discriminator 3 view .LVU743
.LBE400:
.LBE469:
.LBB470:
.LBB405:
	.loc 2 17 51 view .LVU744
	vsub.f32	s18, s18, s30
.LVL123:
	.loc 2 17 51 view .LVU745
	vsub.f32	s17, s17, s27
.LVL124:
	.loc 2 17 51 view .LVU746
.LBE405:
.LBE470:
	.loc 1 297 96 discriminator 4 view .LVU747
	vcmp.f32	s18, #0
	.loc 1 297 61 discriminator 3 view .LVU748
	vldr.32	s15, [fp, #4]
	.loc 1 297 96 discriminator 4 view .LVU749
	vmrs	APSR_nzcv, FPSCR
	.loc 1 297 116 discriminator 5 view .LVU750
	vcmp.f32	s17, #0
	.loc 1 297 96 discriminator 4 view .LVU751
	movne	r3, #1
	moveq	r3, #0
	.loc 1 297 116 discriminator 5 view .LVU752
	vmrs	APSR_nzcv, FPSCR
	.loc 1 297 61 discriminator 3 view .LVU753
	vcmpe.f32	s15, s19
	.loc 1 297 116 discriminator 5 view .LVU754
	moveq	r3, #0
	andne	r3, r3, #1
	.loc 1 297 61 discriminator 3 view .LVU755
	vmrs	APSR_nzcv, FPSCR
	.loc 1 297 116 discriminator 5 view .LVU756
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	beq	.L124
	.loc 1 299 4 is_stmt 1 view .LVU757
	.loc 1 299 13 is_stmt 0 view .LVU758
	ldm	fp, {r0, r1, r2}
	.loc 1 300 21 view .LVU759
	mov	r3, #1
	strb	r3, [fp, #32]
	.loc 1 299 13 view .LVU760
	add	r3, sp, #112
.LVL125:
	.loc 1 300 21 view .LVU761
	vldr.32	s15, .L182+72
	.loc 1 299 13 view .LVU762
	stm	r3, {r0, r1, r2}
.LVL126:
	.loc 1 300 4 is_stmt 1 view .LVU763
	.loc 1 301 4 view .LVU764
	b	.L122
.LBE473:
	.cfi_endproc
.LFE154:
	.size	Player_Move, .-Player_Move
	.section	.rodata.str1.4
	.align	2
.LC43:
	.ascii	"romfs:/assets/sound/entity/player/hit.opus\000"
	.section	.text.Player_PlaceBlock,"ax",%progbits
	.align	2
	.global	Player_PlaceBlock
	.syntax unified
	.arm
	.type	Player_PlaceBlock, %function
Player_PlaceBlock:
.LVL127:
.LFB155:
	.loc 1 313 54 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 314 2 view .LVU766
	.loc 1 313 54 is_stmt 0 view .LVU767
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 1 314 12 view .LVU768
	ldr	r0, [r0, #40]
.LVL128:
	.loc 1 314 59 discriminator 2 view .LVU769
	vldr.32	s15, [r4, #76]
	.loc 1 314 5 view .LVU770
	cmp	r0, #0
	.loc 1 313 54 view .LVU771
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 314 5 view .LVU772
	beq	.L185
	.loc 1 314 20 discriminator 1 view .LVU773
	ldrb	r3, [r4, #193]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L211
.LVL129:
.L185:
	.loc 1 331 2 is_stmt 1 view .LVU774
	.loc 1 331 5 is_stmt 0 view .LVU775
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 331 39 is_stmt 1 discriminator 1 view .LVU776
	.loc 1 331 65 is_stmt 0 discriminator 1 view .LVU777
	ldrmi	r3, .L212+16
	strmi	r3, [r4, #76]	@ float
.L184:
	.loc 1 332 1 view .LVU778
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL130:
.L211:
	.cfi_restore_state
	.loc 1 314 50 discriminator 2 view .LVU779
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L184
.LBB474:
	.loc 1 315 3 is_stmt 1 view .LVU780
	.loc 1 315 14 is_stmt 0 view .LVU781
	ldrb	r2, [r4, #188]	@ zero_extendqisi2
	ldr	r3, .L212+20
	add	r2, r2, r2, lsl #1
	.loc 1 318 37 view .LVU782
	ldr	ip, [r3, r2, lsl #2]
	mov	r6, r1
	ldr	r1, [r4, #172]
.LVL131:
	.loc 1 316 7 view .LVU783
	vldr.32	s15, [r4]
	.loc 1 318 37 view .LVU784
	add	r1, r1, ip
	.loc 1 316 7 view .LVU785
	vmov	s14, r1	@ int
	vldr.32	s12, .L212
.LBB475:
.LBB476:
	.loc 3 33 19 view .LVU786
	vldr.32	s13, .L212+4
.LBE476:
.LBE475:
	.loc 1 316 7 view .LVU787
	vcvt.f32.s32	s14, s14
	vsub.f32	s15, s15, s12
.LBB481:
.LBB477:
	.loc 3 33 19 view .LVU788
	vadd.f32	s11, s14, s13
	.loc 3 33 78 view .LVU789
	vcmpe.f32	s15, s11
	vmrs	APSR_nzcv, FPSCR
.LBE477:
.LBE481:
	.loc 1 315 14 view .LVU790
	add	r3, r3, r2, lsl #2
.LVL132:
	.loc 1 316 3 is_stmt 1 view .LVU791
	.loc 1 318 72 is_stmt 0 view .LVU792
	ldr	ip, [r3, #4]
	ldr	r2, [r4, #176]
	.loc 1 316 7 view .LVU793
	vldr.32	s10, [r4, #4]
	.loc 1 318 72 view .LVU794
	add	r2, r2, ip
	.loc 1 319 28 view .LVU795
	ldr	ip, [r3, #8]
	ldr	r3, [r4, #180]
.LVL133:
	.loc 1 317 22 view .LVU796
	vldr.32	s9, [r4, #8]
	.loc 1 319 28 view .LVU797
	add	r3, r3, ip
.LVL134:
.LBB482:
.LBI475:
	.loc 3 32 19 is_stmt 1 view .LVU798
.LBB478:
	.loc 3 33 2 view .LVU799
	.loc 3 33 78 is_stmt 0 view .LVU800
	bhi	.L188
	.loc 3 33 30 discriminator 1 view .LVU801
	vldr.32	s11, .L212+8
	vadd.f32	s15, s15, s11
.LVL135:
	.loc 3 33 24 discriminator 1 view .LVU802
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L188
.LBE478:
.LBE482:
	.loc 1 316 7 view .LVU803
	vmov	s15, r2	@ int
	vcvt.f32.s32	s15, s15
.LVL136:
.LBB483:
.LBB479:
	.loc 3 33 55 discriminator 3 view .LVU804
	vadd.f32	s14, s15, s13
.LVL137:
	.loc 3 33 42 discriminator 3 view .LVU805
	vcmpe.f32	s10, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L188
	.loc 3 33 66 discriminator 5 view .LVU806
	vldr.32	s14, .L212+12
	vadd.f32	s10, s10, s14
.LVL138:
	.loc 3 33 60 discriminator 5 view .LVU807
	vcmpe.f32	s15, s10
	vmrs	APSR_nzcv, FPSCR
	bhi	.L188
.LBE479:
.LBE483:
	.loc 1 316 7 view .LVU808
	vmov	s15, r3	@ int
.LVL139:
	.loc 1 316 7 view .LVU809
	vcvt.f32.s32	s15, s15
.LVL140:
	.loc 1 316 7 view .LVU810
	vsub.f32	s9, s9, s12
.LVL141:
.LBB484:
.LBB480:
	.loc 3 33 91 discriminator 7 view .LVU811
	vadd.f32	s13, s15, s13
	.loc 3 33 78 discriminator 7 view .LVU812
	vcmpe.f32	s9, s13
	vmrs	APSR_nzcv, FPSCR
	bhi	.L188
	.loc 3 33 102 discriminator 9 view .LVU813
	vadd.f32	s9, s9, s11
.LVL142:
	.loc 3 33 96 discriminator 9 view .LVU814
	vcmpe.f32	s15, s9
	vmrs	APSR_nzcv, FPSCR
	bls	.L184
.LVL143:
.L188:
	.loc 3 33 96 discriminator 9 view .LVU815
.LBE480:
.LBE484:
	.loc 1 321 3 is_stmt 1 view .LVU816
	.loc 1 322 75 is_stmt 0 view .LVU817
	ldr	ip, [r4, #136]
	.loc 1 327 3 view .LVU818
	ldr	r5, .L212+24
	.loc 1 321 3 view .LVU819
	add	ip, ip, ip, lsl #1
	add	ip, r4, ip
	ldrb	lr, [ip, #145]	@ zero_extendqisi2
	.loc 1 327 3 view .LVU820
	add	r7, r5, #32
	.loc 1 321 3 view .LVU821
	str	lr, [sp, #4]
.LVL144:
	.loc 1 321 3 view .LVU822
	ldrb	ip, [ip, #144]	@ zero_extendqisi2
	str	ip, [sp]
	bl	World_SetBlockAndMeta
.LVL145:
	.loc 1 324 3 is_stmt 1 view .LVU823
	.loc 1 324 21 is_stmt 0 view .LVU824
	mov	r3, #0
	.loc 1 327 3 view .LVU825
	mov	r0, r6
	.loc 1 324 21 view .LVU826
	strb	r3, [r6, #128]
	.loc 1 325 3 is_stmt 1 view .LVU827
.LVL146:
	.loc 1 326 3 view .LVU828
	.loc 1 326 18 is_stmt 0 view .LVU829
	strb	r3, [r6]
	.loc 1 327 3 is_stmt 1 view .LVU830
	bl	strlen
.LVL147:
	add	ip, r6, r0
.L195:
	mov	lr, r5
	add	ip, ip, #16
	ldmia	lr!, {r0, r1, r2, r3}
	cmp	lr, r7
	add	r5, r5, #16
	str	r0, [ip, #-16]	@ unaligned
	str	r1, [ip, #-12]	@ unaligned
	str	r2, [ip, #-8]	@ unaligned
	str	r3, [ip, #-4]	@ unaligned
	bne	.L195
	ldmia	r5!, {r0, r1}
	ldrh	r3, [r5]	@ unaligned
	str	r0, [ip]	@ unaligned
	strh	r3, [ip, #8]	@ unaligned
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	.loc 1 329 3 is_stmt 0 view .LVU831
	mov	r0, r6
	.loc 1 327 3 view .LVU832
	str	r1, [ip, #4]	@ unaligned
	strb	r3, [ip, #10]
	.loc 1 329 3 is_stmt 1 view .LVU833
	bl	playopus
.LVL148:
	vldr.32	s15, [r4, #76]
	b	.L185
.L213:
	.align	2
.L212:
	.word	1051092582
	.word	1065353216
	.word	1059481190
	.word	1072064102
	.word	1045220557
	.word	DirectionToOffset
	.word	.LC43
.LBE474:
	.cfi_endproc
.LFE155:
	.size	Player_PlaceBlock, .-Player_PlaceBlock
	.section	.text.Player_BreakBlock,"ax",%progbits
	.align	2
	.global	Player_BreakBlock
	.syntax unified
	.arm
	.type	Player_BreakBlock, %function
Player_BreakBlock:
.LVL149:
.LFB156:
	.loc 1 334 40 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 335 2 view .LVU835
	.loc 1 334 40 is_stmt 0 view .LVU836
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 1 335 12 view .LVU837
	ldr	r0, [r0, #40]
.LVL150:
	.loc 1 335 59 discriminator 2 view .LVU838
	vldr.32	s15, [r4, #76]
	.loc 1 335 5 view .LVU839
	cmp	r0, #0
	.loc 1 334 40 view .LVU840
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 335 5 view .LVU841
	beq	.L215
	.loc 1 335 20 discriminator 1 view .LVU842
	ldrb	r3, [r4, #193]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L228
.L215:
	.loc 1 338 2 is_stmt 1 view .LVU843
	.loc 1 338 5 is_stmt 0 view .LVU844
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 338 39 is_stmt 1 discriminator 1 view .LVU845
	.loc 1 338 65 is_stmt 0 discriminator 1 view .LVU846
	ldrmi	r3, .L229
	strmi	r3, [r4, #76]	@ float
.L214:
	.loc 1 339 1 view .LVU847
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL151:
.L228:
	.cfi_restore_state
	.loc 1 335 50 discriminator 2 view .LVU848
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L214
	.loc 1 336 3 is_stmt 1 view .LVU849
	ldrd	r2, [r4, #176]
	mov	ip, #0
	ldr	r1, [r4, #172]
	str	ip, [sp]
	bl	World_SetBlock
.LVL152:
	vldr.32	s15, [r4, #76]
	b	.L215
.L230:
	.align	2
.L229:
	.word	1045220557
	.cfi_endproc
.LFE156:
	.size	Player_BreakBlock, .-Player_BreakBlock
	.global	GravityPlusFriction
	.global	MaxFallVelocity
	.global	MaxWalkVelocity
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC37:
	.word	0
	.word	2
	.word	1
	.type	GravityPlusFriction, %object
	.size	GravityPlusFriction, 4
GravityPlusFriction:
	.word	1092616192
	.type	MaxFallVelocity, %object
	.size	MaxFallVelocity, 4
MaxFallVelocity:
	.word	-1035468800
	.type	MaxWalkVelocity, %object
	.size	MaxWalkVelocity, 4
MaxWalkVelocity:
	.word	1082759578
	.text
.Letext0:
	.file 5 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 6 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 7 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Direction.h"
	.file 8 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 9 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Xorshift.h"
	.file 10 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 11 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 12 "C:/Users/Elias/CLionProjects/3DSCraft/include/rendering/VBOCache.h"
	.file 13 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Chunk.h"
	.file 14 "C:/devkitPro/libctru/include/3ds/types.h"
	.file 15 "C:/devkitPro/libctru/include/3ds/synchronization.h"
	.file 16 "C:/devkitPro/libctru/include/3ds/thread.h"
	.file 17 "C:/devkitPro/libctru/include/3ds/services/csnd.h"
	.file 18 "C:/devkitPro/libctru/include/3ds/services/ndm.h"
	.file 19 "C:/devkitPro/libctru/include/3ds/gpu/enums.h"
	.file 20 "C:/devkitPro/libctru/include/3ds/ndsp/channel.h"
	.file 21 "C:/devkitPro/libctru/include/3ds/applets/error.h"
	.file 22 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/WorkQueue.h"
	.file 23 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/World.h"
	.file 24 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Item.h"
	.file 25 "C:/Users/Elias/CLionProjects/3DSCraft/include/inventory/ItemStack.h"
	.file 26 "C:/Users/Elias/CLionProjects/3DSCraft/include/entity/Damage.h"
	.file 27 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Raycast.h"
	.file 28 "C:/devkitPro/portlibs/3ds/include/opus/opusfile.h"
	.file 29 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Sound.h"
	.file 30 "C:/Users/Elias/CLionProjects/3DSCraft/include/entity/Player.h"
	.file 31 "C:/devkitPro/devkitARM/arm-none-eabi/include/string.h"
	.file 32 "C:/devkitPro/devkitARM/arm-none-eabi/include/math.h"
	.file 33 "C:/devkitPro/libctru/include/3ds/svc.h"
	.file 34 "C:/Users/Elias/CLionProjects/3DSCraft/include/gui/DebugUI.h"
	.file 35 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1eac
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x3d
	.4byte	.LASF284
	.byte	0x1d
	.4byte	.LASF285
	.4byte	.LASF286
	.4byte	.LLRL130
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3e
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x5
	.byte	0x2b
	.byte	0x17
	.4byte	0x55
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x5
	.byte	0x39
	.byte	0x1c
	.4byte	0x6f
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.4byte	0x82
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4f
	.byte	0x1b
	.4byte	0x95
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x5
	.byte	0x67
	.byte	0x17
	.4byte	0xa8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x5
	.byte	0x69
	.byte	0x20
	.4byte	0x34
	.uleb128 0x26
	.4byte	0x2d
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x49
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x6
	.byte	0x24
	.byte	0x14
	.4byte	0x63
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2c
	.byte	0x13
	.4byte	0x76
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x6
	.byte	0x30
	.byte	0x14
	.4byte	0x89
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x6
	.byte	0x38
	.byte	0x13
	.4byte	0x9c
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x6
	.byte	0x3c
	.byte	0x14
	.4byte	0xaf
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0x7
	.byte	0x3
	.byte	0xe
	.4byte	0x140
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x7
	.byte	0xb
	.byte	0x3
	.4byte	0x108
	.uleb128 0xf
	.4byte	0x2d
	.4byte	0x162
	.uleb128 0x8
	.4byte	0x3b
	.byte	0x6
	.uleb128 0x8
	.4byte	0x3b
	.byte	0x2
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF225
	.byte	0x7
	.byte	0x13
	.byte	0xc
	.4byte	0x14c
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0x8
	.byte	0xa
	.byte	0x6
	.4byte	0x278
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x27
	.byte	0
	.uleb128 0x9
	.4byte	0x284
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF71
	.uleb128 0x26
	.4byte	0x27d
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x9
	.byte	0x5
	.byte	0x12
	.4byte	0xe4
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0xa
	.byte	0xd6
	.byte	0x16
	.4byte	0x3b
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.4byte	.LASF74
	.uleb128 0x3f
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0xb
	.byte	0x7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x9
	.4byte	0x27d
	.uleb128 0xc
	.byte	0x8
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.4byte	0x2df
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xc
	.byte	0x9
	.byte	0x9
	.4byte	0x295
	.byte	0
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0xc
	.byte	0xa
	.byte	0x8
	.4byte	0x2a8
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0xc
	.byte	0xb
	.byte	0x3
	.4byte	0x2bb
	.uleb128 0x30
	.2byte	0x2030
	.byte	0xd
	.byte	0x10
	.4byte	0x39d
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0xd
	.byte	0x11
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0xd
	.byte	0x12
	.byte	0x8
	.4byte	0x39d
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x13
	.byte	0xa
	.4byte	0x3b9
	.2byte	0x1004
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x15
	.byte	0xb
	.4byte	0xe4
	.2byte	0x2004
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x17
	.byte	0xb
	.4byte	0xcc
	.2byte	0x2008
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x19
	.byte	0x6
	.4byte	0x3d5
	.2byte	0x200a
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1a
	.byte	0xb
	.4byte	0xe4
	.2byte	0x200c
	.uleb128 0x40
	.ascii	"vbo\000"
	.byte	0xd
	.byte	0x1c
	.byte	0xc
	.4byte	0x2df
	.2byte	0x2010
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1c
	.byte	0x11
	.4byte	0x2df
	.2byte	0x2018
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x1d
	.byte	0x9
	.4byte	0x295
	.2byte	0x2020
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x1d
	.byte	0x13
	.4byte	0x295
	.2byte	0x2024
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x1e
	.byte	0xb
	.4byte	0xe4
	.2byte	0x2028
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x1f
	.byte	0x6
	.4byte	0x3d5
	.2byte	0x202c
	.byte	0
	.uleb128 0xf
	.4byte	0x16e
	.4byte	0x3b9
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xf
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xf
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0xc0
	.4byte	0x3d5
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xf
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xf
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.4byte	.LASF90
	.uleb128 0x5
	.4byte	.LASF91
	.byte	0xd
	.byte	0x20
	.byte	0x3
	.4byte	0x2eb
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0xd
	.byte	0x22
	.byte	0xe
	.4byte	0x408
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0xd
	.byte	0x26
	.byte	0x3
	.4byte	0x3e8
	.uleb128 0x31
	.4byte	0x102ac
	.byte	0xd
	.byte	0x28
	.4byte	0x4d7
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xd
	.byte	0x2a
	.byte	0xb
	.4byte	0xe4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xd
	.byte	0x2b
	.byte	0xb
	.4byte	0xe4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xd
	.byte	0x2d
	.byte	0xb
	.4byte	0xe4
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xd
	.byte	0x2f
	.byte	0x13
	.4byte	0x408
	.byte	0xc
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0xd
	.byte	0x31
	.byte	0x6
	.4byte	0x2d
	.byte	0x10
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0xd
	.byte	0x31
	.byte	0x9
	.4byte	0x2d
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xd
	.byte	0x32
	.byte	0xa
	.4byte	0x4d7
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0xd
	.byte	0x34
	.byte	0xa
	.4byte	0x4e7
	.4byte	0x10198
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0xd
	.byte	0x35
	.byte	0xb
	.4byte	0xe4
	.4byte	0x10298
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0xd
	.byte	0x37
	.byte	0x9
	.4byte	0x295
	.4byte	0x1029c
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0xd
	.byte	0x39
	.byte	0xb
	.4byte	0xe4
	.4byte	0x102a0
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0xd
	.byte	0x3a
	.byte	0x6
	.4byte	0x3d5
	.4byte	0x102a4
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0xd
	.byte	0x3c
	.byte	0x6
	.4byte	0x2d
	.4byte	0x102a8
	.byte	0
	.uleb128 0xf
	.4byte	0x3dc
	.4byte	0x4e7
	.uleb128 0x8
	.4byte	0x3b
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	0xc0
	.4byte	0x4fd
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xf
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0xd
	.byte	0x3d
	.byte	0x3
	.4byte	0x414
	.uleb128 0x9
	.4byte	0x2d
	.uleb128 0x9
	.4byte	0x26
	.uleb128 0x26
	.4byte	0x26
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.4byte	.LASF106
	.uleb128 0x21
	.ascii	"u32\000"
	.byte	0xe
	.byte	0x17
	.byte	0x12
	.4byte	0xe4
	.uleb128 0x21
	.ascii	"s32\000"
	.byte	0xe
	.byte	0x1c
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x21
	.ascii	"s64\000"
	.byte	0xe
	.byte	0x1d
	.byte	0x11
	.4byte	0xf0
	.uleb128 0x5
	.4byte	.LASF107
	.byte	0xf
	.byte	0xa
	.byte	0x11
	.4byte	0x2aa
	.uleb128 0xc
	.byte	0x8
	.byte	0xf
	.byte	0x13
	.byte	0x9
	.4byte	0x573
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xf
	.byte	0x15
	.byte	0x6
	.4byte	0x52b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xf
	.byte	0x16
	.byte	0xc
	.4byte	0x543
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF110
	.byte	0xf
	.byte	0x17
	.byte	0x3
	.4byte	0x54f
	.uleb128 0x5
	.4byte	.LASF111
	.byte	0x10
	.byte	0x16
	.byte	0x1c
	.4byte	0x58b
	.uleb128 0x9
	.4byte	0x590
	.uleb128 0x32
	.4byte	.LASF182
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0x11
	.byte	0x28
	.byte	0x1
	.4byte	0x5bb
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0x11
	.byte	0x31
	.byte	0x1
	.4byte	0x5e1
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0x12
	.byte	0x21
	.byte	0xe
	.4byte	0x607
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x3
	.byte	0
	.uleb128 0x41
	.byte	0x7
	.byte	0x1
	.4byte	0x55
	.byte	0x13
	.2byte	0x1f6
	.byte	0x1
	.4byte	0x623
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.4byte	0x643
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
	.uleb128 0x12
	.byte	0x2
	.4byte	0x6f
	.byte	0x15
	.byte	0x9
	.byte	0x1
	.4byte	0x65f
	.uleb128 0x33
	.4byte	.LASF129
	.2byte	0x100
	.uleb128 0x33
	.4byte	.LASF130
	.2byte	0x200
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0x16
	.byte	0xd
	.byte	0xe
	.4byte	0x691
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0x16
	.byte	0x14
	.byte	0x3
	.4byte	0x65f
	.uleb128 0xc
	.byte	0xc
	.byte	0x16
	.byte	0x16
	.byte	0x9
	.4byte	0x6ce
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x16
	.byte	0x17
	.byte	0x11
	.4byte	0x691
	.byte	0
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x16
	.byte	0x18
	.byte	0x9
	.4byte	0x6ce
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x16
	.byte	0x19
	.byte	0xb
	.4byte	0xe4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x4fd
	.uleb128 0x5
	.4byte	.LASF140
	.byte	0x16
	.byte	0x1a
	.byte	0x3
	.4byte	0x69d
	.uleb128 0xc
	.byte	0xc
	.byte	0x16
	.byte	0x1d
	.byte	0x2
	.4byte	0x710
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x16
	.byte	0x1d
	.byte	0x17
	.4byte	0x710
	.byte	0
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x16
	.byte	0x1d
	.byte	0x21
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x16
	.byte	0x1d
	.byte	0x29
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x6d3
	.uleb128 0xc
	.byte	0x18
	.byte	0x16
	.byte	0x1c
	.byte	0x9
	.4byte	0x746
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x16
	.byte	0x1d
	.byte	0x35
	.4byte	0x6df
	.byte	0
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0x16
	.byte	0x1f
	.byte	0xd
	.4byte	0x573
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x16
	.byte	0x20
	.byte	0xc
	.4byte	0x543
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF147
	.byte	0x16
	.byte	0x21
	.byte	0x3
	.4byte	0x715
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0xe
	.4byte	0x772
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF151
	.byte	0x17
	.byte	0x11
	.byte	0x49
	.4byte	0x752
	.uleb128 0x42
	.byte	0
	.byte	0x17
	.byte	0x18
	.byte	0x3
	.uleb128 0x34
	.byte	0
	.byte	0x17
	.byte	0x17
	.byte	0x2
	.4byte	0x799
	.uleb128 0x43
	.4byte	.LASF176
	.byte	0x17
	.byte	0x1a
	.byte	0x5
	.4byte	0x77e
	.byte	0
	.uleb128 0xc
	.byte	0x10
	.byte	0x17
	.byte	0x13
	.byte	0x9
	.4byte	0x7ca
	.uleb128 0x2
	.4byte	.LASF152
	.byte	0x17
	.byte	0x14
	.byte	0xb
	.4byte	0xfc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x17
	.byte	0x15
	.byte	0xf
	.4byte	0x772
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF153
	.byte	0x17
	.byte	0x1b
	.byte	0x4
	.4byte	0x783
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF154
	.byte	0x17
	.byte	0x1c
	.byte	0x3
	.4byte	0x799
	.uleb128 0xc
	.byte	0xc
	.byte	0x17
	.byte	0x2a
	.byte	0x2
	.4byte	0x807
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x17
	.byte	0x2a
	.byte	0x13
	.4byte	0x807
	.byte	0
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x17
	.byte	0x2a
	.byte	0x1d
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x17
	.byte	0x2a
	.byte	0x25
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x6ce
	.uleb128 0x31
	.4byte	0xb5e278
	.byte	0x17
	.byte	0x1f
	.4byte	0x8b6
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0x17
	.byte	0x22
	.byte	0x7
	.4byte	0x8b6
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0x17
	.byte	0x24
	.byte	0x14
	.4byte	0x7ca
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0x17
	.byte	0x26
	.byte	0x6
	.4byte	0x2d
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x17
	.byte	0x26
	.byte	0x19
	.4byte	0x2d
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x17
	.byte	0x28
	.byte	0x8
	.4byte	0x8c6
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF161
	.byte	0x17
	.byte	0x29
	.byte	0x9
	.4byte	0x8d6
	.4byte	0xb5e118
	.uleb128 0x13
	.4byte	.LASF162
	.byte	0x17
	.byte	0x2a
	.byte	0x31
	.4byte	0x7d6
	.4byte	0xb5e25c
	.uleb128 0x13
	.4byte	.LASF163
	.byte	0x17
	.byte	0x2c
	.byte	0xd
	.4byte	0x8ec
	.4byte	0xb5e268
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0x17
	.byte	0x2e
	.byte	0xd
	.4byte	0x289
	.4byte	0xb5e26c
	.uleb128 0x13
	.4byte	.LASF165
	.byte	0x17
	.byte	0x30
	.byte	0x6
	.4byte	0x2d
	.4byte	0xb5e270
	.byte	0
	.uleb128 0xf
	.4byte	0x27d
	.4byte	0x8c6
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.4byte	0x4fd
	.4byte	0x8d6
	.uleb128 0x8
	.4byte	0x3b
	.byte	0xb3
	.byte	0
	.uleb128 0xf
	.4byte	0x6ce
	.4byte	0x8ec
	.uleb128 0x8
	.4byte	0x3b
	.byte	0x8
	.uleb128 0x8
	.4byte	0x3b
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x746
	.uleb128 0x5
	.4byte	.LASF166
	.byte	0x17
	.byte	0x31
	.byte	0x3
	.4byte	0x80c
	.uleb128 0x12
	.byte	0x1
	.4byte	0x55
	.byte	0x18
	.byte	0xa
	.byte	0x6
	.4byte	0x917
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x3
	.byte	0x19
	.byte	0xa
	.byte	0x9
	.4byte	0x948
	.uleb128 0x2
	.4byte	.LASF169
	.byte	0x19
	.byte	0xb
	.byte	0x8
	.4byte	0x16e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x19
	.byte	0xc
	.byte	0xa
	.4byte	0xc0
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x19
	.byte	0xc
	.byte	0x10
	.4byte	0xc0
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF172
	.byte	0x19
	.byte	0xd
	.byte	0x3
	.4byte	0x917
	.uleb128 0xc
	.byte	0x8
	.byte	0x1a
	.byte	0x5
	.byte	0x9
	.4byte	0x978
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x1a
	.byte	0x6
	.byte	0xa
	.4byte	0x27d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x1a
	.byte	0x7
	.byte	0x9
	.4byte	0x2d
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF175
	.byte	0x1a
	.byte	0x8
	.byte	0x2
	.4byte	0x954
	.uleb128 0xc
	.byte	0xc
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.4byte	0x9af
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x2
	.byte	0xa
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x2
	.byte	0xa
	.byte	0xc
	.4byte	0x26
	.byte	0x4
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x2
	.byte	0xa
	.byte	0xf
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x34
	.byte	0xc
	.byte	0x2
	.byte	0x7
	.byte	0x9
	.4byte	0x9c8
	.uleb128 0x44
	.ascii	"v\000"
	.byte	0x2
	.byte	0x8
	.byte	0x8
	.4byte	0x9c8
	.uleb128 0x45
	.4byte	0x984
	.byte	0
	.uleb128 0xf
	.4byte	0x26
	.4byte	0x9d8
	.uleb128 0x8
	.4byte	0x3b
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF177
	.byte	0x2
	.byte	0xc
	.byte	0x3
	.4byte	0x9af
	.uleb128 0xc
	.byte	0x14
	.byte	0x1b
	.byte	0x7
	.byte	0x9
	.4byte	0xa29
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x1b
	.byte	0x8
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x1b
	.byte	0x8
	.byte	0x9
	.4byte	0x2d
	.byte	0x4
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x1b
	.byte	0x8
	.byte	0xc
	.4byte	0x2d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF178
	.byte	0x1b
	.byte	0x9
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x1b
	.byte	0xa
	.byte	0xc
	.4byte	0x140
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF180
	.byte	0x1b
	.byte	0xb
	.byte	0x3
	.4byte	0x9e4
	.uleb128 0x5
	.4byte	.LASF181
	.byte	0x1c
	.byte	0x85
	.byte	0x1c
	.4byte	0xa41
	.uleb128 0x32
	.4byte	.LASF181
	.uleb128 0xc
	.byte	0x8c
	.byte	0x1d
	.byte	0x4
	.byte	0x9
	.4byte	0xa84
	.uleb128 0x2
	.4byte	.LASF183
	.byte	0x1d
	.byte	0x5
	.byte	0x7
	.4byte	0xa84
	.byte	0
	.uleb128 0x2
	.4byte	.LASF184
	.byte	0x1d
	.byte	0x6
	.byte	0x6
	.4byte	0x3d5
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF185
	.byte	0x1d
	.byte	0x7
	.byte	0xa
	.4byte	0xa94
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF186
	.byte	0x1d
	.byte	0x8
	.byte	0xf
	.4byte	0xa99
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.4byte	0x27d
	.4byte	0xa94
	.uleb128 0x8
	.4byte	0x3b
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	0x57f
	.uleb128 0x9
	.4byte	0xa35
	.uleb128 0x5
	.4byte	.LASF187
	.byte	0x1d
	.byte	0x9
	.byte	0x2
	.4byte	0xa46
	.uleb128 0x30
	.2byte	0x184
	.byte	0x1e
	.byte	0x15
	.4byte	0xca1
	.uleb128 0x2
	.4byte	.LASF188
	.byte	0x1e
	.byte	0x16
	.byte	0x9
	.4byte	0x9d8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF189
	.byte	0x1e
	.byte	0x17
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0xd
	.ascii	"yaw\000"
	.byte	0x1e
	.byte	0x17
	.byte	0xf
	.4byte	0x26
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF190
	.byte	0x1e
	.byte	0x18
	.byte	0x8
	.4byte	0x26
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x1e
	.byte	0x18
	.byte	0x11
	.4byte	0x26
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF192
	.byte	0x1e
	.byte	0x18
	.byte	0x19
	.4byte	0x26
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF193
	.byte	0x1e
	.byte	0x19
	.byte	0x6
	.4byte	0x3d5
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0x1e
	.byte	0x19
	.byte	0x10
	.4byte	0x3d5
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x1e
	.byte	0x19
	.byte	0x18
	.4byte	0x3d5
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x1e
	.byte	0x19
	.byte	0x23
	.4byte	0x3d5
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x1e
	.byte	0x19
	.byte	0x2b
	.4byte	0x3d5
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x1e
	.byte	0x1a
	.byte	0x9
	.4byte	0xca1
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x1e
	.byte	0x1c
	.byte	0x9
	.4byte	0x9d8
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x1e
	.byte	0x1e
	.byte	0x6
	.4byte	0x3d5
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x1e
	.byte	0x20
	.byte	0x9
	.4byte	0x9d8
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF202
	.byte	0x1e
	.byte	0x21
	.byte	0x8
	.4byte	0x26
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF203
	.byte	0x1e
	.byte	0x23
	.byte	0x8
	.4byte	0x26
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF204
	.byte	0x1e
	.byte	0x24
	.byte	0x6
	.4byte	0x2d
	.byte	0x50
	.uleb128 0xd
	.ascii	"hp\000"
	.byte	0x1e
	.byte	0x26
	.byte	0x6
	.4byte	0x2d
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF205
	.byte	0x1e
	.byte	0x27
	.byte	0x6
	.4byte	0x2d
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF206
	.byte	0x1e
	.byte	0x28
	.byte	0x6
	.4byte	0x2d
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF207
	.byte	0x1e
	.byte	0x29
	.byte	0x6
	.4byte	0x2d
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF208
	.byte	0x1e
	.byte	0x2a
	.byte	0x6
	.4byte	0x2d
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF209
	.byte	0x1e
	.byte	0x2b
	.byte	0x8
	.4byte	0x26
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF210
	.byte	0x1e
	.byte	0x2d
	.byte	0x8
	.4byte	0x26
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF211
	.byte	0x1e
	.byte	0x2e
	.byte	0x8
	.4byte	0x26
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF212
	.byte	0x1e
	.byte	0x2f
	.byte	0x8
	.4byte	0x26
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF213
	.byte	0x1e
	.byte	0x30
	.byte	0x6
	.4byte	0x2d
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF214
	.byte	0x1e
	.byte	0x32
	.byte	0x6
	.4byte	0x2d
	.byte	0x7c
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x1e
	.byte	0x33
	.byte	0x6
	.4byte	0x3d5
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x1e
	.byte	0x35
	.byte	0x6
	.4byte	0x2d
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF217
	.byte	0x1e
	.byte	0x36
	.byte	0x6
	.4byte	0x2d
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF218
	.byte	0x1e
	.byte	0x37
	.byte	0x6
	.4byte	0x2d
	.byte	0x8c
	.uleb128 0x2
	.4byte	.LASF219
	.byte	0x1e
	.byte	0x38
	.byte	0xc
	.4byte	0xca6
	.byte	0x90
	.uleb128 0x2
	.4byte	.LASF220
	.byte	0x1e
	.byte	0x3a
	.byte	0x11
	.4byte	0xa29
	.byte	0xac
	.uleb128 0x2
	.4byte	.LASF221
	.byte	0x1e
	.byte	0x3b
	.byte	0x6
	.4byte	0x3d5
	.byte	0xc0
	.uleb128 0x2
	.4byte	.LASF222
	.byte	0x1e
	.byte	0x3b
	.byte	0x14
	.4byte	0x3d5
	.byte	0xc1
	.uleb128 0x2
	.4byte	.LASF223
	.byte	0x1e
	.byte	0x3c
	.byte	0xc
	.4byte	0xcb6
	.byte	0xc2
	.byte	0
	.uleb128 0x9
	.4byte	0x8f1
	.uleb128 0xf
	.4byte	0x948
	.4byte	0xcb6
	.uleb128 0x8
	.4byte	0x3b
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x948
	.4byte	0xcc6
	.uleb128 0x8
	.4byte	0x3b
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF224
	.byte	0x1e
	.byte	0x3d
	.byte	0x3
	.4byte	0xaaa
	.uleb128 0xc
	.byte	0x18
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.4byte	0xcf6
	.uleb128 0xd
	.ascii	"min\000"
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.4byte	0x9d8
	.byte	0
	.uleb128 0xd
	.ascii	"max\000"
	.byte	0x4
	.byte	0x7
	.byte	0x1e
	.4byte	0x9d8
	.byte	0xc
	.byte	0
	.uleb128 0x21
	.ascii	"Box\000"
	.byte	0x4
	.byte	0x7
	.byte	0x25
	.4byte	0xcd2
	.uleb128 0x27
	.4byte	.LASF226
	.byte	0xcd
	.4byte	0x513
	.uleb128 0x5
	.byte	0x3
	.4byte	MaxWalkVelocity
	.uleb128 0x27
	.4byte	.LASF227
	.byte	0xce
	.4byte	0x513
	.uleb128 0x5
	.byte	0x3
	.4byte	MaxFallVelocity
	.uleb128 0x27
	.4byte	.LASF228
	.byte	0xcf
	.4byte	0x513
	.uleb128 0x5
	.byte	0x3
	.4byte	GravityPlusFriction
	.uleb128 0x22
	.4byte	.LASF229
	.byte	0x17
	.byte	0x42
	.4byte	0xd57
	.uleb128 0x6
	.4byte	0xca1
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x16e
	.byte	0
	.uleb128 0x22
	.4byte	.LASF230
	.byte	0x1d
	.byte	0xb
	.4byte	0xd68
	.uleb128 0x6
	.4byte	0xd68
	.byte	0
	.uleb128 0x9
	.4byte	0xa9e
	.uleb128 0x23
	.4byte	.LASF232
	.byte	0x1f
	.byte	0x2a
	.byte	0x7
	.4byte	0x2b6
	.4byte	0xd8d
	.uleb128 0x6
	.4byte	0x2b6
	.uleb128 0x6
	.4byte	0x278
	.uleb128 0x6
	.4byte	0x295
	.byte	0
	.uleb128 0x22
	.4byte	.LASF231
	.byte	0x17
	.byte	0x46
	.4byte	0xdb7
	.uleb128 0x6
	.4byte	0xca1
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x16e
	.uleb128 0x6
	.4byte	0xc0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF233
	.2byte	0x18b
	.byte	0xe
	.4byte	0x26
	.4byte	0xdcd
	.uleb128 0x6
	.4byte	0x26
	.byte	0
	.uleb128 0x23
	.4byte	.LASF234
	.byte	0x4
	.byte	0xe
	.byte	0x5
	.4byte	0x3d5
	.4byte	0xdfc
	.uleb128 0x6
	.4byte	0xcf6
	.uleb128 0x6
	.4byte	0xcf6
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0xdfc
	.uleb128 0x6
	.4byte	0x50e
	.uleb128 0x6
	.4byte	0x509
	.byte	0
	.uleb128 0x9
	.4byte	0x9d8
	.uleb128 0x46
	.4byte	.LASF235
	.byte	0x21
	.2byte	0x35b
	.byte	0x6
	.4byte	0xe14
	.uleb128 0x6
	.4byte	0x537
	.byte	0
	.uleb128 0x47
	.4byte	.LASF271
	.byte	0x1a
	.byte	0xa
	.byte	0x6
	.4byte	0xe22
	.uleb128 0x17
	.byte	0
	.uleb128 0x22
	.4byte	.LASF236
	.byte	0x22
	.byte	0x8
	.4byte	0xe34
	.uleb128 0x6
	.4byte	0x278
	.uleb128 0x17
	.byte	0
	.uleb128 0x23
	.4byte	.LASF237
	.byte	0x17
	.byte	0x41
	.byte	0x7
	.4byte	0x16e
	.4byte	0xe59
	.uleb128 0x6
	.4byte	0xca1
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x24
	.4byte	.LASF238
	.2byte	0x151
	.byte	0xf
	.4byte	0x518
	.4byte	0xe6f
	.uleb128 0x6
	.4byte	0x518
	.byte	0
	.uleb128 0x23
	.4byte	.LASF239
	.byte	0x1b
	.byte	0xd
	.byte	0x5
	.4byte	0x3d5
	.4byte	0xe94
	.uleb128 0x6
	.4byte	0xca1
	.uleb128 0x6
	.4byte	0x9d8
	.uleb128 0x6
	.4byte	0x9d8
	.uleb128 0x6
	.4byte	0xe94
	.byte	0
	.uleb128 0x9
	.4byte	0xa29
	.uleb128 0x24
	.4byte	.LASF240
	.2byte	0x176
	.byte	0xe
	.4byte	0x26
	.4byte	0xeaf
	.uleb128 0x6
	.4byte	0x26
	.byte	0
	.uleb128 0x24
	.4byte	.LASF241
	.2byte	0x177
	.byte	0xe
	.4byte	0x26
	.4byte	0xec5
	.uleb128 0x6
	.4byte	0x26
	.byte	0
	.uleb128 0x35
	.4byte	.LASF242
	.2byte	0x14e
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeff
	.uleb128 0x28
	.4byte	.LASF244
	.2byte	0x14e
	.byte	0x20
	.4byte	0xeff
	.4byte	.LLST129
	.4byte	.LVUS129
	.uleb128 0x15
	.4byte	.LVL152
	.4byte	0xd32
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xcc6
	.uleb128 0x35
	.4byte	.LASF243
	.2byte	0x139
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1053
	.uleb128 0x28
	.4byte	.LASF244
	.2byte	0x139
	.byte	0x20
	.4byte	0xeff
	.4byte	.LLST113
	.4byte	.LVUS113
	.uleb128 0x28
	.4byte	.LASF245
	.2byte	0x139
	.byte	0x2f
	.4byte	0xd68
	.4byte	.LLST114
	.4byte	.LVUS114
	.uleb128 0x48
	.4byte	.LBB474
	.4byte	.LBE474-.LBB474
	.uleb128 0x25
	.4byte	.LASF246
	.2byte	0x13b
	.byte	0xe
	.4byte	0x1053
	.4byte	.LLST115
	.4byte	.LVUS115
	.uleb128 0x36
	.4byte	.LASF249
	.2byte	0x145
	.byte	0x9
	.4byte	0x2b6
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC43
	.byte	0x9f
	.uleb128 0x19
	.4byte	0x1dd5
	.4byte	.LBI475
	.2byte	.LVU798
	.4byte	.LLRL116
	.2byte	0x13c
	.byte	0x7
	.4byte	0x1024
	.uleb128 0x3
	.4byte	0x1e5c
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0x3
	.4byte	0x1e51
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0x3
	.4byte	0x1e46
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0x3
	.4byte	0x1e3b
	.4byte	.LLST120
	.4byte	.LVUS120
	.uleb128 0x3
	.4byte	0x1e30
	.4byte	.LLST121
	.4byte	.LVUS121
	.uleb128 0x3
	.4byte	0x1e25
	.4byte	.LLST122
	.4byte	.LVUS122
	.uleb128 0x3
	.4byte	0x1e1a
	.4byte	.LLST123
	.4byte	.LVUS123
	.uleb128 0x3
	.4byte	0x1e0f
	.4byte	.LLST124
	.4byte	.LVUS124
	.uleb128 0x3
	.4byte	0x1e04
	.4byte	.LLST123
	.4byte	.LVUS123
	.uleb128 0x3
	.4byte	0x1df9
	.4byte	.LLST126
	.4byte	.LVUS126
	.uleb128 0x3
	.4byte	0x1dee
	.4byte	.LLST127
	.4byte	.LVUS127
	.uleb128 0x3
	.4byte	0x1de3
	.4byte	.LLST128
	.4byte	.LVUS128
	.byte	0
	.uleb128 0x29
	.4byte	.LVL145
	.4byte	0xd8d
	.uleb128 0xa
	.4byte	.LVL147
	.4byte	0x1ea4
	.4byte	0x1041
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL148
	.4byte	0xd57
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xbb
	.uleb128 0x2a
	.4byte	.LASF247
	.byte	0xd0
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b5
	.uleb128 0x1d
	.4byte	.LASF244
	.byte	0xd0
	.byte	0x1a
	.4byte	0xeff
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x2b
	.ascii	"dt\000"
	.byte	0xd0
	.byte	0x28
	.4byte	0x26
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x1d
	.4byte	.LASF248
	.byte	0xd0
	.byte	0x33
	.4byte	0x9d8
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x49
	.4byte	.LASF250
	.byte	0x1
	.byte	0xd3
	.byte	0xe
	.4byte	0x513
	.byte	0x4
	.4byte	0x3c888889
	.uleb128 0x10
	.4byte	.LLRL38
	.uleb128 0x1a
	.4byte	.LASF251
	.byte	0xda
	.byte	0x9
	.4byte	0x26
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0xe4
	.byte	0xa
	.4byte	0x9d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x1b
	.4byte	.LASF253
	.byte	0xe5
	.byte	0xa
	.4byte	0x9d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1a
	.4byte	.LASF254
	.byte	0xe7
	.byte	0x7
	.4byte	0x3d5
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x1a
	.4byte	.LASF255
	.byte	0xe7
	.byte	0x1e
	.4byte	0x3d5
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x25
	.4byte	.LASF256
	.2byte	0x119
	.byte	0xa
	.4byte	0x9d8
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x1c
	.4byte	.LLRL57
	.4byte	0x13ed
	.uleb128 0xe
	.ascii	"j\000"
	.byte	0xea
	.byte	0xc
	.4byte	0x2d
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x10
	.4byte	.LLRL59
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0xeb
	.byte	0x8
	.4byte	0x2d
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x1a
	.4byte	.LASF257
	.byte	0xec
	.byte	0x8
	.4byte	0x3d5
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x1b
	.4byte	.LASF258
	.byte	0xed
	.byte	0xb
	.4byte	0x9d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0xf0
	.byte	0x8
	.4byte	0xcf6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1c
	.4byte	.LLRL69
	.4byte	0x138a
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0xf4
	.byte	0xd
	.4byte	0x2d
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x10
	.4byte	.LLRL71
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0xf5
	.byte	0xe
	.4byte	0x2d
	.4byte	.LLST72
	.4byte	.LVUS72
	.uleb128 0x10
	.4byte	.LLRL73
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0xf6
	.byte	0xf
	.4byte	0x2d
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x10
	.4byte	.LLRL75
	.uleb128 0x1f
	.ascii	"pX\000"
	.byte	0x1
	.byte	0xf7
	.byte	0xb
	.4byte	0x2d
	.uleb128 0x1f
	.ascii	"pY\000"
	.byte	0x1
	.byte	0xf8
	.byte	0xb
	.4byte	0x2d
	.uleb128 0xe
	.ascii	"pZ\000"
	.byte	0xf9
	.byte	0xb
	.4byte	0x2d
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x1c
	.4byte	.LLRL77
	.4byte	0x12c1
	.uleb128 0x1b
	.4byte	.LASF260
	.byte	0xfc
	.byte	0xc
	.4byte	0xcf6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.4byte	.LASF261
	.byte	0xfe
	.byte	0xf
	.4byte	0x9d8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1b
	.4byte	.LASF262
	.byte	0xff
	.byte	0xe
	.4byte	0x26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x36
	.4byte	.LASF263
	.2byte	0x100
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x25
	.4byte	.LASF264
	.2byte	0x102
	.byte	0xc
	.4byte	0x3d5
	.4byte	.LLST78
	.4byte	.LVUS78
	.uleb128 0x11
	.4byte	0x1c81
	.4byte	.LBI297
	.2byte	.LVU590
	.4byte	.LLRL79
	.byte	0xfc
	.byte	0x17
	.4byte	0x12b7
	.uleb128 0x3
	.4byte	0x1cc3
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x3
	.4byte	0x1cb9
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x3
	.4byte	0x1caf
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x3
	.4byte	0x1ca5
	.4byte	.LLST83
	.4byte	.LVUS83
	.uleb128 0x3
	.4byte	0x1c9b
	.4byte	.LLST84
	.4byte	.LVUS84
	.uleb128 0x3
	.4byte	0x1c91
	.4byte	.LLST85
	.4byte	.LVUS85
	.byte	0
	.uleb128 0x29
	.4byte	.LVL91
	.4byte	0xdcd
	.byte	0
	.uleb128 0x11
	.4byte	0x1e68
	.4byte	.LBI309
	.2byte	.LVU494
	.4byte	.LLRL86
	.byte	0xf7
	.byte	0x10
	.4byte	0x12e4
	.uleb128 0x3
	.4byte	0x1e76
	.4byte	.LLST87
	.4byte	.LVUS87
	.byte	0
	.uleb128 0x11
	.4byte	0x1e68
	.4byte	.LBI318
	.2byte	.LVU502
	.4byte	.LLRL88
	.byte	0xf9
	.byte	0x10
	.4byte	0x1307
	.uleb128 0x3
	.4byte	0x1e76
	.4byte	.LLST89
	.4byte	.LVUS89
	.byte	0
	.uleb128 0x11
	.4byte	0x1e68
	.4byte	.LBI327
	.2byte	.LVU498
	.4byte	.LLRL90
	.byte	0xf8
	.byte	0x10
	.4byte	0x132a
	.uleb128 0x3
	.4byte	0x1e76
	.4byte	.LLST91
	.4byte	.LVUS91
	.byte	0
	.uleb128 0xa
	.4byte	.LVL75
	.4byte	0xe34
	.4byte	0x134a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL86
	.4byte	0xe34
	.4byte	0x136a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL87
	.4byte	0xe34
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x1c81
	.4byte	.LBI286
	.2byte	.LVU474
	.4byte	.LLRL62
	.byte	0x1
	.byte	0xf1
	.byte	0x8
	.uleb128 0x3
	.4byte	0x1cc3
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x3
	.4byte	0x1cb9
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x3
	.4byte	0x1caf
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x3
	.4byte	0x1ca5
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x3
	.4byte	0x1c9b
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x3
	.4byte	0x1c91
	.4byte	.LLST68
	.4byte	.LVUS68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LLRL95
	.4byte	0x158f
	.uleb128 0x25
	.4byte	.LASF265
	.2byte	0x11e
	.byte	0xb
	.4byte	0x9d8
	.4byte	.LLST96
	.4byte	.LVUS96
	.uleb128 0x37
	.4byte	.LASF169
	.2byte	0x11f
	.4byte	0x16e
	.uleb128 0x37
	.4byte	.LASF266
	.2byte	0x121
	.4byte	0x16e
	.uleb128 0x19
	.4byte	0x1d5c
	.4byte	.LBI408
	.2byte	.LVU641
	.4byte	.LLRL97
	.2byte	0x11e
	.byte	0x15
	.4byte	0x1451
	.uleb128 0x3
	.4byte	0x1d76
	.4byte	.LLST98
	.4byte	.LVUS98
	.uleb128 0x3
	.4byte	0x1d6c
	.4byte	.LLST99
	.4byte	.LVUS99
	.byte	0
	.uleb128 0x19
	.4byte	0x1cce
	.4byte	.LBI411
	.2byte	.LVU650
	.4byte	.LLRL100
	.2byte	0x11e
	.byte	0x15
	.4byte	0x14b5
	.uleb128 0x3
	.4byte	0x1cde
	.4byte	.LLST101
	.4byte	.LVUS101
	.uleb128 0x10
	.4byte	.LLRL100
	.uleb128 0x4a
	.4byte	0x1cea
	.uleb128 0x2c
	.4byte	0x1cf5
	.4byte	.LBI413
	.2byte	.LVU652
	.4byte	.LLRL102
	.byte	0x2
	.byte	0x1a
	.byte	0xc
	.uleb128 0x16
	.4byte	0x1d05
	.uleb128 0x2c
	.4byte	0x1d12
	.4byte	.LBI415
	.2byte	.LVU654
	.4byte	.LLRL103
	.byte	0x2
	.byte	0x17
	.byte	0x2a
	.uleb128 0x16
	.4byte	0x1d2c
	.uleb128 0x16
	.4byte	0x1d22
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x1e68
	.4byte	.LBI427
	.2byte	.LVU667
	.4byte	.LLRL104
	.2byte	0x11f
	.byte	0x12
	.4byte	0x14d9
	.uleb128 0x3
	.4byte	0x1e76
	.4byte	.LLST105
	.4byte	.LVUS105
	.byte	0
	.uleb128 0x19
	.4byte	0x1e68
	.4byte	.LBI438
	.2byte	.LVU683
	.4byte	.LLRL106
	.2byte	0x120
	.byte	0xc
	.4byte	0x14fd
	.uleb128 0x3
	.4byte	0x1e76
	.4byte	.LLST107
	.4byte	.LVUS107
	.byte	0
	.uleb128 0x19
	.4byte	0x1e68
	.4byte	.LBI445
	.2byte	.LVU690
	.4byte	.LLRL108
	.2byte	0x11f
	.byte	0x12
	.4byte	0x1521
	.uleb128 0x3
	.4byte	0x1e76
	.4byte	.LLST109
	.4byte	.LVUS109
	.byte	0
	.uleb128 0x19
	.4byte	0x16b5
	.4byte	.LBI464
	.2byte	.LVU701
	.4byte	.LLRL110
	.2byte	0x123
	.byte	0x95
	.4byte	0x1552
	.uleb128 0x3
	.4byte	0x16cd
	.4byte	.LLST111
	.4byte	.LVUS111
	.uleb128 0x3
	.4byte	0x16c2
	.4byte	.LLST112
	.4byte	.LVUS112
	.byte	0
	.uleb128 0xa
	.4byte	.LVL114
	.4byte	0xe34
	.4byte	0x1572
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 2
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL115
	.4byte	0xe34
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 1
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x1d37
	.4byte	.LBI261
	.2byte	.LVU413
	.4byte	.LLRL43
	.byte	0xe4
	.byte	0x13
	.4byte	0x15bf
	.uleb128 0x3
	.4byte	0x1d51
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x3
	.4byte	0x1d47
	.4byte	.LLST45
	.4byte	.LVUS45
	.byte	0
	.uleb128 0x11
	.4byte	0x1d37
	.4byte	.LBI266
	.2byte	.LVU416
	.4byte	.LLRL46
	.byte	0xe4
	.byte	0x13
	.4byte	0x15e7
	.uleb128 0x16
	.4byte	0x1d51
	.uleb128 0x3
	.4byte	0x1d47
	.4byte	.LLST47
	.4byte	.LVUS47
	.byte	0
	.uleb128 0x11
	.4byte	0x1d81
	.4byte	.LBI269
	.2byte	.LVU419
	.4byte	.LLRL48
	.byte	0xe4
	.byte	0x13
	.4byte	0x1617
	.uleb128 0x3
	.4byte	0x1d9b
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x3
	.4byte	0x1d91
	.4byte	.LLST50
	.4byte	.LVUS50
	.byte	0
	.uleb128 0x11
	.4byte	0x1d81
	.4byte	.LBI273
	.2byte	.LVU422
	.4byte	.LLRL51
	.byte	0xe4
	.byte	0x13
	.4byte	0x1685
	.uleb128 0x3
	.4byte	0x1d9b
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x3
	.4byte	0x1d91
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x4b
	.4byte	0x1da6
	.4byte	.LBI275
	.2byte	.LVU429
	.4byte	.LBB275
	.4byte	.LBE275-.LBB275
	.byte	0x2
	.byte	0x10
	.byte	0x33
	.uleb128 0x3
	.4byte	0x1dca
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x3
	.4byte	0x1dc0
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x3
	.4byte	0x1db6
	.4byte	.LLST56
	.4byte	.LVUS56
	.byte	0
	.byte	0
	.uleb128 0x4c
	.4byte	0x1d5c
	.4byte	.LBI403
	.2byte	.LVU530
	.4byte	.LLRL92
	.byte	0x1
	.2byte	0x119
	.byte	0x14
	.uleb128 0x3
	.4byte	0x1d76
	.4byte	.LLST93
	.4byte	.LVUS93
	.uleb128 0x3
	.4byte	0x1d6c
	.4byte	.LLST94
	.4byte	.LVUS94
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF267
	.byte	0x1
	.byte	0xc3
	.byte	0x6
	.byte	0x1
	.4byte	0x16d9
	.uleb128 0x38
	.4byte	.LASF244
	.byte	0xc3
	.byte	0x1a
	.4byte	0xeff
	.uleb128 0x38
	.4byte	.LASF248
	.byte	0xc3
	.byte	0x29
	.4byte	0x9d8
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF287
	.byte	0x1
	.byte	0xae
	.byte	0x5
	.4byte	0x3d5
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18c2
	.uleb128 0x1d
	.4byte	.LASF244
	.byte	0xae
	.byte	0x1c
	.4byte	0xeff
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x2b
	.ascii	"new\000"
	.byte	0xae
	.byte	0x2b
	.4byte	0x9d8
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x10
	.4byte	.LLRL20
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0xaf
	.byte	0xb
	.4byte	0x2d
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x10
	.4byte	.LLRL22
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0xb0
	.byte	0xc
	.4byte	0x2d
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x10
	.4byte	.LLRL24
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0xb1
	.byte	0xd
	.4byte	0x2d
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x10
	.4byte	.LLRL26
	.uleb128 0x1f
	.ascii	"pX\000"
	.byte	0x1
	.byte	0xb2
	.byte	0x9
	.4byte	0x2d
	.uleb128 0x1f
	.ascii	"pY\000"
	.byte	0x1
	.byte	0xb3
	.byte	0x9
	.4byte	0x2d
	.uleb128 0xe
	.ascii	"pZ\000"
	.byte	0xb4
	.byte	0x9
	.4byte	0x2d
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x11
	.4byte	0x1e68
	.4byte	.LBI141
	.2byte	.LVU301
	.4byte	.LLRL28
	.byte	0xb2
	.byte	0xe
	.4byte	0x17a3
	.uleb128 0x16
	.4byte	0x1e76
	.byte	0
	.uleb128 0x11
	.4byte	0x1e68
	.4byte	.LBI148
	.2byte	.LVU309
	.4byte	.LLRL29
	.byte	0xb4
	.byte	0xe
	.4byte	0x17be
	.uleb128 0x16
	.4byte	0x1e76
	.byte	0
	.uleb128 0x11
	.4byte	0x1e68
	.4byte	.LBI157
	.2byte	.LVU305
	.4byte	.LLRL30
	.byte	0xb3
	.byte	0xe
	.4byte	0x17d9
	.uleb128 0x16
	.4byte	0x1e76
	.byte	0
	.uleb128 0x11
	.4byte	0x1dd5
	.4byte	.LBI177
	.2byte	.LVU332
	.4byte	.LLRL31
	.byte	0xb7
	.byte	0xa
	.4byte	0x1861
	.uleb128 0x1e
	.4byte	0x1e5c
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x1e
	.4byte	0x1e51
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x1e
	.4byte	0x1e46
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x3
	.4byte	0x1e3b
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x16
	.4byte	0x1e30
	.uleb128 0x3
	.4byte	0x1e25
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x1e
	.4byte	0x1e1a
	.byte	0x4
	.4byte	0x3f266666
	.uleb128 0x1e
	.4byte	0x1e0f
	.byte	0x4
	.4byte	0x3fe66666
	.uleb128 0x1e
	.4byte	0x1e04
	.byte	0x4
	.4byte	0x3f266666
	.uleb128 0x16
	.4byte	0x1df9
	.uleb128 0x16
	.4byte	0x1dee
	.uleb128 0x3
	.4byte	0x1de3
	.4byte	.LLST34
	.4byte	.LVUS34
	.byte	0
	.uleb128 0xa
	.4byte	.LVL45
	.4byte	0xe34
	.4byte	0x1881
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL51
	.4byte	0xe34
	.4byte	0x18a1
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL52
	.4byte	0xe34
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF268
	.byte	0x59
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf1
	.uleb128 0x1d
	.4byte	.LASF244
	.byte	0x59
	.byte	0x1c
	.4byte	0xeff
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1d
	.4byte	.LASF245
	.byte	0x59
	.byte	0x2b
	.4byte	0xd68
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2b
	.ascii	"dmg\000"
	.byte	0x59
	.byte	0x3a
	.4byte	0x1bf1
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2d
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.4byte	0x195b
	.uleb128 0x20
	.4byte	.LASF236
	.4byte	0x2d
	.4byte	0x192b
	.uleb128 0x17
	.byte	0
	.uleb128 0xa
	.4byte	.LVL34
	.4byte	0xe22
	.4byte	0x1942
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0xe14
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0x19b1
	.uleb128 0x20
	.4byte	.LASF236
	.4byte	0x2d
	.4byte	0x196f
	.uleb128 0x17
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF198
	.byte	0x88
	.byte	0xd
	.4byte	0xca1
	.uleb128 0x2e
	.4byte	.LASF269
	.byte	0x89
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2e
	.4byte	.LASF270
	.byte	0x8d
	.byte	0xa
	.4byte	0x3d5
	.uleb128 0x39
	.4byte	0x19a2
	.uleb128 0x3a
	.4byte	.LASF236
	.byte	0x69
	.4byte	0x2d
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x3a
	.4byte	.LASF236
	.byte	0x69
	.4byte	0x2d
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LLRL13
	.4byte	0x1a6a
	.uleb128 0x1a
	.4byte	.LASF198
	.byte	0x98
	.byte	0xd
	.4byte	0xca1
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1a
	.4byte	.LASF269
	.byte	0x99
	.byte	0xa
	.4byte	0x2d
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1a
	.4byte	.LASF270
	.byte	0x9d
	.byte	0xa
	.4byte	0x3d5
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x2d
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.4byte	0x1a23
	.uleb128 0x20
	.4byte	.LASF236
	.4byte	0x2d
	.4byte	0x1a0f
	.uleb128 0x17
	.byte	0
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0xe22
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB129
	.4byte	.LBE129-.LBB129
	.4byte	0x1a53
	.uleb128 0x20
	.4byte	.LASF236
	.4byte	0x2d
	.4byte	0x1a3f
	.uleb128 0x17
	.byte	0
	.uleb128 0x15
	.4byte	.LVL22
	.4byte	0xe22
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0xe34
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LLRL17
	.4byte	0x1a96
	.uleb128 0x20
	.4byte	.LASF236
	.4byte	0x2d
	.4byte	0x1a82
	.uleb128 0x17
	.byte	0
	.uleb128 0x50
	.4byte	.LVL38
	.4byte	0xe22
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.byte	0
	.uleb128 0x51
	.4byte	0x1da6
	.4byte	.LBI127
	.2byte	.LVU147
	.4byte	.LBB127
	.4byte	.LBE127-.LBB127
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x1ad8
	.uleb128 0x3
	.4byte	0x1dca
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x3
	.4byte	0x1dc0
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x3
	.4byte	0x1db6
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL12
	.4byte	0xeaf
	.4byte	0x1aee
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0
	.uleb128 0xa
	.4byte	.LVL13
	.4byte	0xe99
	.4byte	0x1b04
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0
	.uleb128 0xa
	.4byte	.LVL14
	.4byte	0xeaf
	.4byte	0x1b1a
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0
	.uleb128 0xa
	.4byte	.LVL15
	.4byte	0xe99
	.4byte	0x1b30
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0
	.uleb128 0xa
	.4byte	.LVL18
	.4byte	0xe6f
	.4byte	0x1b45
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 172
	.byte	0
	.uleb128 0xa
	.4byte	.LVL19
	.4byte	0xe34
	.4byte	0x1b7a
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL20
	.4byte	0xe01
	.4byte	0x1b98
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.byte	0xc
	.4byte	0x989680
	.byte	0xa8
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.4byte	.LVL31
	.4byte	0xe01
	.4byte	0x1bb6
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.byte	0xc
	.4byte	0x989680
	.byte	0xa8
	.uleb128 0x34
	.byte	0
	.uleb128 0x29
	.4byte	.LVL32
	.4byte	0xe59
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0xe34
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x978
	.uleb128 0x2a
	.4byte	.LASF272
	.byte	0x7
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c81
	.uleb128 0x52
	.4byte	.LASF244
	.byte	0x1
	.byte	0x7
	.byte	0x1a
	.4byte	0xeff
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1d
	.4byte	.LASF198
	.byte	0x7
	.byte	0x29
	.4byte	0xca1
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2f
	.4byte	.LASF273
	.byte	0x1
	.byte	0x54
	.byte	0xd
	.4byte	0x3d5
	.uleb128 0x10
	.4byte	.LLRL1
	.uleb128 0xe
	.ascii	"l\000"
	.byte	0x29
	.byte	0x7
	.4byte	0x2d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1c
	.4byte	.LLRL3
	.4byte	0x1c68
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x35
	.byte	0xc
	.4byte	0x2d
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x10
	.4byte	.LLRL5
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x52
	.byte	0xc
	.4byte	0x2d
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF274
	.byte	0x4
	.byte	0x9
	.byte	0xc
	.4byte	0xcf6
	.4byte	0x1cce
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x4
	.byte	0x9
	.byte	0x26
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z\000"
	.byte	0x4
	.byte	0x9
	.byte	0x2f
	.4byte	0x26
	.uleb128 0x7
	.ascii	"w\000"
	.byte	0x4
	.byte	0x9
	.byte	0x38
	.4byte	0x26
	.uleb128 0x7
	.ascii	"h\000"
	.byte	0x4
	.byte	0x9
	.byte	0x41
	.4byte	0x26
	.uleb128 0x7
	.ascii	"d\000"
	.byte	0x4
	.byte	0x9
	.byte	0x4a
	.4byte	0x26
	.byte	0
	.uleb128 0x18
	.4byte	.LASF275
	.byte	0x2
	.byte	0x19
	.byte	0xf
	.4byte	0x9d8
	.4byte	0x1cf5
	.uleb128 0x7
	.ascii	"vec\000"
	.byte	0x2
	.byte	0x19
	.byte	0x1d
	.4byte	0x9d8
	.uleb128 0x1f
	.ascii	"m\000"
	.byte	0x2
	.byte	0x1a
	.byte	0x8
	.4byte	0x26
	.byte	0
	.uleb128 0x18
	.4byte	.LASF276
	.byte	0x2
	.byte	0x17
	.byte	0xe
	.4byte	0x26
	.4byte	0x1d12
	.uleb128 0x7
	.ascii	"vec\000"
	.byte	0x2
	.byte	0x17
	.byte	0x1c
	.4byte	0x9d8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF277
	.byte	0x2
	.byte	0x14
	.byte	0xe
	.4byte	0x26
	.4byte	0x1d37
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x2
	.byte	0x14
	.byte	0x1c
	.4byte	0x9d8
	.uleb128 0x7
	.ascii	"b\000"
	.byte	0x2
	.byte	0x14
	.byte	0x26
	.4byte	0x9d8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF278
	.byte	0x2
	.byte	0x12
	.byte	0xf
	.4byte	0x9d8
	.4byte	0x1d5c
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x2
	.byte	0x12
	.byte	0x1d
	.4byte	0x9d8
	.uleb128 0x7
	.ascii	"b\000"
	.byte	0x2
	.byte	0x12
	.byte	0x26
	.4byte	0x26
	.byte	0
	.uleb128 0x18
	.4byte	.LASF279
	.byte	0x2
	.byte	0x11
	.byte	0xf
	.4byte	0x9d8
	.4byte	0x1d81
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x2
	.byte	0x11
	.byte	0x1d
	.4byte	0x9d8
	.uleb128 0x7
	.ascii	"b\000"
	.byte	0x2
	.byte	0x11
	.byte	0x27
	.4byte	0x9d8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF280
	.byte	0x2
	.byte	0x10
	.byte	0xf
	.4byte	0x9d8
	.4byte	0x1da6
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x2
	.byte	0x10
	.byte	0x1d
	.4byte	0x9d8
	.uleb128 0x7
	.ascii	"b\000"
	.byte	0x2
	.byte	0x10
	.byte	0x27
	.4byte	0x9d8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF281
	.byte	0x2
	.byte	0xe
	.byte	0xf
	.4byte	0x9d8
	.4byte	0x1dd5
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x2
	.byte	0xe
	.byte	0x1c
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x2
	.byte	0xe
	.byte	0x25
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z\000"
	.byte	0x2
	.byte	0xe
	.byte	0x2e
	.4byte	0x26
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF282
	.byte	0x20
	.4byte	0x3d5
	.4byte	0x1e68
	.uleb128 0x7
	.ascii	"x0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x26
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x30
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x3a
	.4byte	0x26
	.uleb128 0x7
	.ascii	"w0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x44
	.4byte	0x26
	.uleb128 0x7
	.ascii	"h0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x4e
	.4byte	0x26
	.uleb128 0x7
	.ascii	"d0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x58
	.4byte	0x26
	.uleb128 0x7
	.ascii	"x1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x62
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x6c
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x76
	.4byte	0x26
	.uleb128 0x7
	.ascii	"w1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x80
	.4byte	0x26
	.uleb128 0x7
	.ascii	"h1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x8a
	.4byte	0x26
	.uleb128 0x7
	.ascii	"d1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x94
	.4byte	0x26
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF283
	.byte	0x19
	.4byte	0x2d
	.4byte	0x1e81
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x3
	.byte	0x19
	.byte	0x23
	.4byte	0x26
	.byte	0
	.uleb128 0x53
	.4byte	0x16b5
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ea4
	.uleb128 0x3c
	.4byte	0x16c2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3c
	.4byte	0x16cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x54
	.4byte	.LASF288
	.4byte	.LASF289
	.byte	0x23
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
	.uleb128 0x4
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x15
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.sleb128 105
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 32
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
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x29
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x5
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 19
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x4c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
.LVUS129:
	.uleb128 0
	.uleb128 .LVU838
	.uleb128 .LVU838
	.uleb128 0
.LLST129:
	.byte	0x6
	.4byte	.LVL149
	.byte	0x4
	.uleb128 .LVL149-.LVL149
	.uleb128 .LVL150-.LVL149
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL150-.LVL149
	.uleb128 .LFE156-.LVL149
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS113:
	.uleb128 0
	.uleb128 .LVU769
	.uleb128 .LVU769
	.uleb128 0
.LLST113:
	.byte	0x6
	.4byte	.LVL127
	.byte	0x4
	.uleb128 .LVL127-.LVL127
	.uleb128 .LVL128-.LVL127
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL128-.LVL127
	.uleb128 .LFE155-.LVL127
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS114:
	.uleb128 0
	.uleb128 .LVU774
	.uleb128 .LVU774
	.uleb128 .LVU779
	.uleb128 .LVU779
	.uleb128 .LVU783
	.uleb128 .LVU783
	.uleb128 0
.LLST114:
	.byte	0x6
	.4byte	.LVL127
	.byte	0x4
	.uleb128 .LVL127-.LVL127
	.uleb128 .LVL129-.LVL127
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL129-.LVL127
	.uleb128 .LVL130-.LVL127
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL130-.LVL127
	.uleb128 .LVL131-.LVL127
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL131-.LVL127
	.uleb128 .LFE155-.LVL127
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS115:
	.uleb128 .LVU791
	.uleb128 .LVU796
.LLST115:
	.byte	0x8
	.4byte	.LVL132
	.uleb128 .LVL133-.LVL132
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS117:
	.uleb128 .LVU798
	.uleb128 .LVU815
.LLST117:
	.byte	0x8
	.4byte	.LVL134
	.uleb128 .LVL143-.LVL134
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS120:
	.uleb128 .LVU798
	.uleb128 .LVU810
	.uleb128 .LVU810
	.uleb128 .LVU815
.LLST120:
	.byte	0x6
	.4byte	.LVL134
	.byte	0x4
	.uleb128 .LVL134-.LVL134
	.uleb128 .LVL140-.LVL134
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL140-.LVL134
	.uleb128 .LVL143-.LVL134
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0
.LVUS121:
	.uleb128 .LVU798
	.uleb128 .LVU804
	.uleb128 .LVU804
	.uleb128 .LVU809
	.uleb128 .LVU809
	.uleb128 .LVU815
.LLST121:
	.byte	0x6
	.4byte	.LVL134
	.byte	0x4
	.uleb128 .LVL134-.LVL134
	.uleb128 .LVL136-.LVL134
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL136-.LVL134
	.uleb128 .LVL139-.LVL134
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0x4
	.uleb128 .LVL139-.LVL134
	.uleb128 .LVL143-.LVL134
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS122:
	.uleb128 .LVU798
	.uleb128 .LVU805
	.uleb128 .LVU805
	.uleb128 .LVU815
.LLST122:
	.byte	0x6
	.4byte	.LVL134
	.byte	0x4
	.uleb128 .LVL134-.LVL134
	.uleb128 .LVL137-.LVL134
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0x4
	.uleb128 .LVL137-.LVL134
	.uleb128 .LVL143-.LVL134
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS123:
	.uleb128 .LVU798
	.uleb128 .LVU815
.LLST123:
	.byte	0x8
	.4byte	.LVL134
	.uleb128 .LVL143-.LVL134
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f266666
	.byte	0
.LVUS124:
	.uleb128 .LVU798
	.uleb128 .LVU815
.LLST124:
	.byte	0x8
	.4byte	.LVL134
	.uleb128 .LVL143-.LVL134
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3fe66666
	.byte	0
.LVUS126:
	.uleb128 .LVU798
	.uleb128 .LVU811
	.uleb128 .LVU811
	.uleb128 .LVU814
	.uleb128 .LVU814
	.uleb128 .LVU815
.LLST126:
	.byte	0x6
	.4byte	.LVL134
	.byte	0x4
	.uleb128 .LVL134-.LVL134
	.uleb128 .LVL141-.LVL134
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0x49
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3ea66666
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL141-.LVL134
	.uleb128 .LVL142-.LVL134
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x49
	.byte	0x4
	.uleb128 .LVL142-.LVL134
	.uleb128 .LVL143-.LVL134
	.uleb128 0xe
	.byte	0x74
	.sleb128 8
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3ea66666
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS127:
	.uleb128 .LVU798
	.uleb128 .LVU807
	.uleb128 .LVU807
	.uleb128 .LVU815
.LLST127:
	.byte	0x6
	.4byte	.LVL134
	.byte	0x4
	.uleb128 .LVL134-.LVL134
	.uleb128 .LVL138-.LVL134
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4a
	.byte	0x4
	.uleb128 .LVL138-.LVL134
	.uleb128 .LVL143-.LVL134
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.byte	0
.LVUS128:
	.uleb128 .LVU798
	.uleb128 .LVU802
	.uleb128 .LVU802
	.uleb128 .LVU815
.LLST128:
	.byte	0x6
	.4byte	.LVL134
	.byte	0x4
	.uleb128 .LVL134-.LVL134
	.uleb128 .LVL135-.LVL134
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0x4
	.uleb128 .LVL135-.LVL134
	.uleb128 .LVL143-.LVL134
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU580
	.uleb128 .LVU580
	.uleb128 .LVU581
	.uleb128 .LVU581
	.uleb128 0
.LLST35:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL61-.LVL58
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL61-.LVL58
	.uleb128 .LVL84-.LVL58
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL84-.LVL58
	.uleb128 .LVL85-.LVL58
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL85-.LVL58
	.uleb128 .LFE154-.LVL58
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 0
.LLST36:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL61-.LVL58
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x4
	.uleb128 .LVL61-.LVL58
	.uleb128 .LFE154-.LVL58
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x40
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS37:
	.uleb128 .LVU377
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU580
	.uleb128 .LVU580
	.uleb128 .LVU581
	.uleb128 .LVU581
	.uleb128 0
.LLST37:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL61-.LVL59
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL61-.LVL59
	.uleb128 .LVL84-.LVL59
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL84-.LVL59
	.uleb128 .LVL85-.LVL59
	.uleb128 0x9
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL85-.LVL59
	.uleb128 .LFE154-.LVL59
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS39:
	.uleb128 .LVU404
	.uleb128 .LVU412
	.uleb128 .LVU731
	.uleb128 .LVU734
	.uleb128 .LVU736
	.uleb128 .LVU741
.LLST39:
	.byte	0x6
	.4byte	.LVL62
	.byte	0x4
	.uleb128 .LVL62-.LVL62
	.uleb128 .LVL63-.LVL62
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x4
	.uleb128 .LVL118-.LVL62
	.uleb128 .LVL119-.LVL62
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x4
	.uleb128 .LVL120-.LVL62
	.uleb128 .LVL121-.LVL62
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS40:
	.uleb128 .LVU438
	.uleb128 .LVU444
	.uleb128 .LVU620
	.uleb128 .LVU627
.LLST40:
	.byte	0x6
	.4byte	.LVL67
	.byte	0x4
	.uleb128 .LVL67-.LVL67
	.uleb128 .LVL68-.LVL67
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL95-.LVL67
	.uleb128 .LVL96-.LVL67
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU438
	.uleb128 .LVU444
	.uleb128 .LVU444
	.uleb128 .LVU580
	.uleb128 .LVU581
	.uleb128 .LVU728
	.uleb128 .LVU734
	.uleb128 .LVU736
	.uleb128 .LVU741
	.uleb128 0
.LLST41:
	.byte	0x6
	.4byte	.LVL67
	.byte	0x4
	.uleb128 .LVL67-.LVL67
	.uleb128 .LVL68-.LVL67
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL68-.LVL67
	.uleb128 .LVL84-.LVL67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0x4
	.uleb128 .LVL85-.LVL67
	.uleb128 .LVL117-.LVL67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0x4
	.uleb128 .LVL119-.LVL67
	.uleb128 .LVL120-.LVL67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0x4
	.uleb128 .LVL121-.LVL67
	.uleb128 .LFE154-.LVL67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
.LVUS42:
	.uleb128 .LVU532
	.uleb128 .LVU541
	.uleb128 .LVU541
	.uleb128 .LVU552
	.uleb128 .LVU552
	.uleb128 .LVU553
	.uleb128 .LVU639
	.uleb128 .LVU647
	.uleb128 .LVU647
	.uleb128 .LVU697
	.uleb128 .LVU697
	.uleb128 .LVU728
	.uleb128 .LVU743
	.uleb128 .LVU745
	.uleb128 .LVU745
	.uleb128 .LVU746
	.uleb128 .LVU746
	.uleb128 .LVU761
	.uleb128 .LVU761
	.uleb128 .LVU763
.LLST42:
	.byte	0x6
	.4byte	.LVL79
	.byte	0x4
	.uleb128 .LVL79-.LVL79
	.uleb128 .LVL80-.LVL79
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL80-.LVL79
	.uleb128 .LVL81-.LVL79
	.uleb128 0x16
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL81-.LVL79
	.uleb128 .LVL82-.LVL79
	.uleb128 0x1c
	.byte	0x91
	.sleb128 -208
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -200
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL97-.LVL79
	.uleb128 .LVL100-.LVL79
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL100-.LVL79
	.uleb128 .LVL114-1-.LVL79
	.uleb128 0x20
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0x7b
	.sleb128 4
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL114-1-.LVL79
	.uleb128 .LVL117-.LVL79
	.uleb128 0x16
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL122-.LVL79
	.uleb128 .LVL123-.LVL79
	.uleb128 0x16
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL123-.LVL79
	.uleb128 .LVL124-.LVL79
	.uleb128 0x19
	.byte	0x91
	.sleb128 -208
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL124-.LVL79
	.uleb128 .LVL125-.LVL79
	.uleb128 0x1c
	.byte	0x91
	.sleb128 -208
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -200
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL125-.LVL79
	.uleb128 .LVL126-.LVL79
	.uleb128 0x1b
	.byte	0x73
	.sleb128 0
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5e
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -200
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS58:
	.uleb128 .LVU441
	.uleb128 .LVU444
.LLST58:
	.byte	0x8
	.4byte	.LVL67
	.uleb128 .LVL68-.LVL67
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS60:
	.uleb128 .LVU450
	.uleb128 .LVU490
	.uleb128 .LVU490
	.uleb128 .LVU580
	.uleb128 .LVU581
	.uleb128 .LVU728
	.uleb128 .LVU734
	.uleb128 .LVU736
	.uleb128 .LVU741
	.uleb128 0
.LLST60:
	.byte	0x6
	.4byte	.LVL69
	.byte	0x4
	.uleb128 .LVL69-.LVL69
	.uleb128 .LVL72-.LVL69
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL72-.LVL69
	.uleb128 .LVL84-.LVL69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0x4
	.uleb128 .LVL85-.LVL69
	.uleb128 .LVL117-.LVL69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0x4
	.uleb128 .LVL119-.LVL69
	.uleb128 .LVL120-.LVL69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0x4
	.uleb128 .LVL121-.LVL69
	.uleb128 .LFE154-.LVL69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
.LVUS61:
	.uleb128 .LVU451
	.uleb128 .LVU490
	.uleb128 .LVU490
	.uleb128 .LVU541
	.uleb128 .LVU581
	.uleb128 .LVU689
	.uleb128 .LVU741
	.uleb128 .LVU743
.LLST61:
	.byte	0x6
	.4byte	.LVL69
	.byte	0x4
	.uleb128 .LVL69-.LVL69
	.uleb128 .LVL72-.LVL69
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.LVL69
	.uleb128 .LVL80-.LVL69
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL85-.LVL69
	.uleb128 .LVL112-.LVL69
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL121-.LVL69
	.uleb128 .LVL122-.LVL69
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS70:
	.uleb128 .LVU488
	.uleb128 .LVU490
.LLST70:
	.byte	0x8
	.4byte	.LVL71
	.uleb128 .LVL72-.LVL71
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS72:
	.uleb128 .LVU490
	.uleb128 .LVU492
.LLST72:
	.byte	0x8
	.4byte	.LVL72
	.uleb128 .LVL73-.LVL72
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS74:
	.uleb128 .LVU492
	.uleb128 .LVU493
.LLST74:
	.byte	0x8
	.4byte	.LVL73
	.uleb128 .LVL74-.LVL73
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS76:
	.uleb128 .LVU504
	.uleb128 .LVU511
	.uleb128 .LVU511
	.uleb128 .LVU519
	.uleb128 .LVU581
	.uleb128 .LVU616
.LLST76:
	.byte	0x6
	.4byte	.LVL74
	.byte	0x4
	.uleb128 .LVL74-.LVL74
	.uleb128 .LVL76-.LVL74
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL76-.LVL74
	.uleb128 .LVL78-.LVL74
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL85-.LVL74
	.uleb128 .LVL94-.LVL74
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS78:
	.uleb128 .LVU612
	.uleb128 .LVU614
.LLST78:
	.byte	0x8
	.4byte	.LVL91
	.uleb128 .LVL92-.LVL91
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS80:
	.uleb128 .LVU590
	.uleb128 .LVU600
.LLST80:
	.byte	0x8
	.4byte	.LVL89
	.uleb128 .LVL90-.LVL89
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS83:
	.uleb128 .LVU590
	.uleb128 .LVU600
.LLST83:
	.byte	0x8
	.4byte	.LVL89
	.uleb128 .LVL90-.LVL89
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4d
	.byte	0
.LVUS84:
	.uleb128 .LVU590
	.uleb128 .LVU600
.LLST84:
	.byte	0x8
	.4byte	.LVL89
	.uleb128 .LVL90-.LVL89
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0
.LVUS85:
	.uleb128 .LVU589
	.uleb128 .LVU600
.LLST85:
	.byte	0x8
	.4byte	.LVL88
	.uleb128 .LVL90-.LVL88
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0
.LVUS87:
	.uleb128 .LVU494
	.uleb128 .LVU496
.LLST87:
	.byte	0x8
	.4byte	.LVL74
	.uleb128 .LVL74-.LVL74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
.LVUS89:
	.uleb128 .LVU502
	.uleb128 .LVU504
.LLST89:
	.byte	0x8
	.4byte	.LVL74
	.uleb128 .LVL74-.LVL74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
.LVUS91:
	.uleb128 .LVU498
	.uleb128 .LVU500
.LLST91:
	.byte	0x8
	.4byte	.LVL74
	.uleb128 .LVL74-.LVL74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
.LVUS63:
	.uleb128 .LVU474
	.uleb128 .LVU485
.LLST63:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL71-.LVL70
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f266666
	.byte	0
.LVUS64:
	.uleb128 .LVU474
	.uleb128 .LVU485
.LLST64:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL71-.LVL70
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3fe66666
	.byte	0
.LVUS66:
	.uleb128 .LVU474
	.uleb128 .LVU485
.LLST66:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL71-.LVL70
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x48
	.byte	0
.LVUS67:
	.uleb128 .LVU474
	.uleb128 .LVU485
.LLST67:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL71-.LVL70
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0
.LVUS68:
	.uleb128 .LVU474
	.uleb128 .LVU485
.LLST68:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL71-.LVL70
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x47
	.byte	0
.LVUS96:
	.uleb128 .LVU661
	.uleb128 .LVU664
	.uleb128 .LVU664
	.uleb128 .LVU665
	.uleb128 .LVU665
	.uleb128 .LVU667
	.uleb128 .LVU667
	.uleb128 .LVU670
	.uleb128 .LVU670
	.uleb128 .LVU672
	.uleb128 .LVU672
	.uleb128 .LVU675
	.uleb128 .LVU675
	.uleb128 .LVU676
.LLST96:
	.byte	0x6
	.4byte	.LVL102
	.byte	0x4
	.uleb128 .LVL102-.LVL102
	.uleb128 .LVL103-.LVL102
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5a
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL103-.LVL102
	.uleb128 .LVL104-.LVL102
	.uleb128 0x18
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5a
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL104-.LVL102
	.uleb128 .LVL105-.LVL102
	.uleb128 0x12
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL105-.LVL102
	.uleb128 .LVL106-.LVL102
	.uleb128 0x18
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL106-.LVL102
	.uleb128 .LVL107-.LVL102
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5a
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL107-.LVL102
	.uleb128 .LVL108-.LVL102
	.uleb128 0x18
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5a
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL108-.LVL102
	.uleb128 .LVL109-.LVL102
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5a
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4b
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS98:
	.uleb128 .LVU641
	.uleb128 .LVU647
	.uleb128 .LVU647
	.uleb128 .LVU649
.LLST98:
	.byte	0x6
	.4byte	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL100-.LVL97
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL100-.LVL97
	.uleb128 .LVL101-.LVL97
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS99:
	.uleb128 .LVU641
	.uleb128 .LVU644
	.uleb128 .LVU644
	.uleb128 .LVU645
	.uleb128 .LVU645
	.uleb128 .LVU649
.LLST99:
	.byte	0x6
	.4byte	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL98-.LVL97
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL98-.LVL97
	.uleb128 .LVL99-.LVL97
	.uleb128 0xd
	.byte	0x90
	.uleb128 0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -216
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL99-.LVL97
	.uleb128 .LVL101-.LVL97
	.uleb128 0xe
	.byte	0x91
	.sleb128 -220
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -216
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS101:
	.uleb128 .LVU651
	.uleb128 .LVU661
.LLST101:
	.byte	0x8
	.4byte	.LVL101
	.uleb128 .LVL102-.LVL101
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS105:
	.uleb128 .LVU667
	.uleb128 .LVU682
.LLST105:
	.byte	0x8
	.4byte	.LVL105
	.uleb128 .LVL111-.LVL105
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4c
	.byte	0
.LVUS107:
	.uleb128 .LVU682
	.uleb128 .LVU689
.LLST107:
	.byte	0x8
	.4byte	.LVL111
	.uleb128 .LVL112-.LVL111
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4d
	.byte	0
.LVUS109:
	.uleb128 .LVU689
	.uleb128 .LVU695
.LLST109:
	.byte	0x8
	.4byte	.LVL112
	.uleb128 .LVL113-.LVL112
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0
.LVUS111:
	.uleb128 .LVU701
	.uleb128 .LVU716
.LLST111:
	.byte	0x8
	.4byte	.LVL115
	.uleb128 .LVL116-.LVL115
	.uleb128 0xc
	.byte	0x91
	.sleb128 -244
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -236
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS112:
	.uleb128 .LVU701
	.uleb128 .LVU716
.LLST112:
	.byte	0x8
	.4byte	.LVL115
	.uleb128 .LVL116-.LVL115
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS44:
	.uleb128 .LVU413
	.uleb128 .LVU415
.LLST44:
	.byte	0x8
	.4byte	.LVL63
	.uleb128 .LVL63-.LVL63
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3c888889
	.byte	0
.LVUS45:
	.uleb128 .LVU413
	.uleb128 .LVU415
.LLST45:
	.byte	0x8
	.4byte	.LVL63
	.uleb128 .LVL63-.LVL63
	.uleb128 0xe
	.byte	0x7b
	.sleb128 60
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 64
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 68
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS47:
	.uleb128 .LVU415
	.uleb128 .LVU418
.LLST47:
	.byte	0x8
	.4byte	.LVL63
	.uleb128 .LVL63-.LVL63
	.uleb128 0xe
	.byte	0x91
	.sleb128 -244
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -236
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS49:
	.uleb128 .LVU418
	.uleb128 .LVU421
.LLST49:
	.byte	0x8
	.4byte	.LVL63
	.uleb128 .LVL63-.LVL63
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x57
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x56
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x58
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS50:
	.uleb128 .LVU418
	.uleb128 .LVU421
.LLST50:
	.byte	0x8
	.4byte	.LVL63
	.uleb128 .LVL63-.LVL63
	.uleb128 0x32
	.byte	0x7b
	.sleb128 60
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 64
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 68
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS52:
	.uleb128 .LVU421
	.uleb128 .LVU427
	.uleb128 .LVU427
	.uleb128 .LVU428
	.uleb128 .LVU428
	.uleb128 .LVU435
.LLST52:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL64-.LVL63
	.uleb128 0x3f
	.byte	0x7b
	.sleb128 60
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x57
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x56
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 68
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x58
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL64-.LVL63
	.uleb128 .LVL65-.LVL63
	.uleb128 0x35
	.byte	0x7b
	.sleb128 60
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x57
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 68
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x58
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL65-.LVL63
	.uleb128 .LVL67-.LVL63
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS53:
	.uleb128 .LVU421
	.uleb128 .LVU435
.LLST53:
	.byte	0x8
	.4byte	.LVL63
	.uleb128 .LVL67-.LVL63
	.uleb128 0xc
	.byte	0x7b
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS54:
	.uleb128 .LVU429
	.uleb128 .LVU431
.LLST54:
	.byte	0x8
	.4byte	.LVL66
	.uleb128 .LVL66-.LVL66
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x5c
	.byte	0
.LVUS55:
	.uleb128 .LVU429
	.uleb128 .LVU431
.LLST55:
	.byte	0x8
	.4byte	.LVL66
	.uleb128 .LVL66-.LVL66
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x5a
	.byte	0
.LVUS56:
	.uleb128 .LVU429
	.uleb128 .LVU431
.LLST56:
	.byte	0x8
	.4byte	.LVL66
	.uleb128 .LVL66-.LVL66
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x5d
	.byte	0
.LVUS93:
	.uleb128 .LVU530
	.uleb128 .LVU532
.LLST93:
	.byte	0x8
	.4byte	.LVL79
	.uleb128 .LVL79-.LVL79
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS94:
	.uleb128 .LVU530
	.uleb128 .LVU532
.LLST94:
	.byte	0x8
	.4byte	.LVL79
	.uleb128 .LVL79-.LVL79
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL42-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL42-.LVL39
	.uleb128 .LFE152-.LVL39
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS19:
	.uleb128 .LVU291
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL41-.LVL40
	.uleb128 0x6
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL41-.LVL40
	.uleb128 .LVL42-.LVL40
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x40
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
	.uleb128 .LVL42-.LVL40
	.uleb128 .LVL49-.LVL40
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL49-.LVL40
	.uleb128 .LVL50-.LVL40
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL50-.LVL40
	.uleb128 .LFE152-.LVL40
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS21:
	.uleb128 .LVU294
	.uleb128 .LVU297
.LLST21:
	.byte	0x8
	.4byte	.LVL41
	.uleb128 .LVL42-.LVL41
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU297
	.uleb128 .LVU299
.LLST23:
	.byte	0x8
	.4byte	.LVL42
	.uleb128 .LVL43-.LVL42
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU299
	.uleb128 .LVU300
.LLST25:
	.byte	0x8
	.4byte	.LVL43
	.uleb128 .LVL44-.LVL43
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 .LVU311
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 .LVU324
	.uleb128 .LVU326
	.uleb128 0
.LLST27:
	.byte	0x6
	.4byte	.LVL44
	.byte	0x4
	.uleb128 .LVL44-.LVL44
	.uleb128 .LVL46-.LVL44
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL46-.LVL44
	.uleb128 .LVL48-.LVL44
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.LVL44
	.uleb128 .LFE152-.LVL44
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS32:
	.uleb128 .LVU332
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 0
.LLST32:
	.byte	0x6
	.4byte	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL56-.LVL53
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL56-.LVL53
	.uleb128 .LFE152-.LVL53
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0
.LVUS33:
	.uleb128 .LVU332
	.uleb128 .LVU340
	.uleb128 .LVU340
	.uleb128 0
.LLST33:
	.byte	0x6
	.4byte	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL55-.LVL53
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0x4
	.uleb128 .LVL55-.LVL53
	.uleb128 .LFE152-.LVL53
	.uleb128 0x7
	.byte	0x7b
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU332
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 0
.LLST34:
	.byte	0x6
	.4byte	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL54-.LVL53
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0x4
	.uleb128 .LVL54-.LVL53
	.uleb128 .LFE152-.LVL53
	.uleb128 0x8
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LVL37-.LVL11
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL37-.LVL11
	.uleb128 .LFE151-.LVL11
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LFE151-.LVL11
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-1-.LVL11
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL12-1-.LVL11
	.uleb128 .LVL37-.LVL11
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL37-.LVL11
	.uleb128 .LFE151-.LVL11
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x2
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU197
	.uleb128 .LVU226
.LLST14:
	.byte	0x8
	.4byte	.LVL23
	.uleb128 .LVL30-.LVL23
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS15:
	.uleb128 .LVU198
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU212
.LLST15:
	.byte	0x6
	.4byte	.LVL23
	.byte	0x4
	.uleb128 .LVL23-.LVL23
	.uleb128 .LVL24-.LVL23
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL23
	.uleb128 .LVL28-.LVL23
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS16:
	.uleb128 .LVU207
	.uleb128 .LVU217
.LLST16:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL29-.LVL27
	.uleb128 0x7
	.byte	0x77
	.sleb128 24
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU147
	.uleb128 .LVU150
.LLST10:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LVL17-.LVL16
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.byte	0
.LVUS11:
	.uleb128 .LVU147
	.uleb128 .LVU150
.LLST11:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LVL17-.LVL16
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.byte	0
.LVUS12:
	.uleb128 .LVU147
	.uleb128 .LVU150
.LLST12:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LVL17-.LVL16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x2
	.byte	0x70
	.sleb128 40
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE150-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU58
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x3
	.byte	0x72
	.sleb128 11
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x3
	.byte	0x72
	.sleb128 12
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x72
	.sleb128 11
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x2
	.byte	0x4c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x2
	.byte	0x4d
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x2
	.byte	0x4e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x2
	.byte	0x4f
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x21
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x23
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x27
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x29
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2d
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2f
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LFE150-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x35
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU73
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU110
.LLST4:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LVL6-.LVL3
	.uleb128 0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL3
	.uleb128 .LVL8-.LVL3
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS6:
	.uleb128 .LVU117
	.uleb128 .LVU118
.LLST6:
	.byte	0x8
	.4byte	.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
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
	.4byte	.LBB113
	.byte	0x4
	.uleb128 .LBB113-.LBB113
	.uleb128 .LBE113-.LBB113
	.byte	0x4
	.uleb128 .LBB124-.LBB113
	.uleb128 .LBE124-.LBB113
	.byte	0x4
	.uleb128 .LBB125-.LBB113
	.uleb128 .LBE125-.LBB113
	.byte	0x4
	.uleb128 .LBB126-.LBB113
	.uleb128 .LBE126-.LBB113
	.byte	0
.LLRL3:
	.byte	0x5
	.4byte	.LBB114
	.byte	0x4
	.uleb128 .LBB114-.LBB114
	.uleb128 .LBE114-.LBB114
	.byte	0x4
	.uleb128 .LBB118-.LBB114
	.uleb128 .LBE118-.LBB114
	.byte	0x4
	.uleb128 .LBB119-.LBB114
	.uleb128 .LBE119-.LBB114
	.byte	0
.LLRL5:
	.byte	0x5
	.4byte	.LBB120
	.byte	0x4
	.uleb128 .LBB120-.LBB120
	.uleb128 .LBE120-.LBB120
	.byte	0x4
	.uleb128 .LBB123-.LBB120
	.uleb128 .LBE123-.LBB120
	.byte	0
.LLRL13:
	.byte	0x5
	.4byte	.LBB128
	.byte	0x4
	.uleb128 .LBB128-.LBB128
	.uleb128 .LBE128-.LBB128
	.byte	0x4
	.uleb128 .LBB131-.LBB128
	.uleb128 .LBE131-.LBB128
	.byte	0x4
	.uleb128 .LBB132-.LBB128
	.uleb128 .LBE132-.LBB128
	.byte	0x4
	.uleb128 .LBB134-.LBB128
	.uleb128 .LBE134-.LBB128
	.byte	0
.LLRL17:
	.byte	0x5
	.4byte	.LBB135
	.byte	0x4
	.uleb128 .LBB135-.LBB135
	.uleb128 .LBE135-.LBB135
	.byte	0x4
	.uleb128 .LBB136-.LBB135
	.uleb128 .LBE136-.LBB135
	.byte	0
.LLRL20:
	.byte	0x5
	.4byte	.LBB137
	.byte	0x4
	.uleb128 .LBB137-.LBB137
	.uleb128 .LBE137-.LBB137
	.byte	0x4
	.uleb128 .LBB206-.LBB137
	.uleb128 .LBE206-.LBB137
	.byte	0x4
	.uleb128 .LBB207-.LBB137
	.uleb128 .LBE207-.LBB137
	.byte	0x4
	.uleb128 .LBB208-.LBB137
	.uleb128 .LBE208-.LBB137
	.byte	0x4
	.uleb128 .LBB209-.LBB137
	.uleb128 .LBE209-.LBB137
	.byte	0x4
	.uleb128 .LBB210-.LBB137
	.uleb128 .LBE210-.LBB137
	.byte	0x4
	.uleb128 .LBB211-.LBB137
	.uleb128 .LBE211-.LBB137
	.byte	0
.LLRL22:
	.byte	0x5
	.4byte	.LBB138
	.byte	0x4
	.uleb128 .LBB138-.LBB138
	.uleb128 .LBE138-.LBB138
	.byte	0x4
	.uleb128 .LBB201-.LBB138
	.uleb128 .LBE201-.LBB138
	.byte	0x4
	.uleb128 .LBB202-.LBB138
	.uleb128 .LBE202-.LBB138
	.byte	0x4
	.uleb128 .LBB203-.LBB138
	.uleb128 .LBE203-.LBB138
	.byte	0x4
	.uleb128 .LBB204-.LBB138
	.uleb128 .LBE204-.LBB138
	.byte	0x4
	.uleb128 .LBB205-.LBB138
	.uleb128 .LBE205-.LBB138
	.byte	0
.LLRL24:
	.byte	0x5
	.4byte	.LBB139
	.byte	0x4
	.uleb128 .LBB139-.LBB139
	.uleb128 .LBE139-.LBB139
	.byte	0x4
	.uleb128 .LBB195-.LBB139
	.uleb128 .LBE195-.LBB139
	.byte	0x4
	.uleb128 .LBB196-.LBB139
	.uleb128 .LBE196-.LBB139
	.byte	0x4
	.uleb128 .LBB197-.LBB139
	.uleb128 .LBE197-.LBB139
	.byte	0x4
	.uleb128 .LBB198-.LBB139
	.uleb128 .LBE198-.LBB139
	.byte	0x4
	.uleb128 .LBB199-.LBB139
	.uleb128 .LBE199-.LBB139
	.byte	0x4
	.uleb128 .LBB200-.LBB139
	.uleb128 .LBE200-.LBB139
	.byte	0
.LLRL26:
	.byte	0x5
	.4byte	.LBB140
	.byte	0x4
	.uleb128 .LBB140-.LBB140
	.uleb128 .LBE140-.LBB140
	.byte	0x4
	.uleb128 .LBB189-.LBB140
	.uleb128 .LBE189-.LBB140
	.byte	0x4
	.uleb128 .LBB190-.LBB140
	.uleb128 .LBE190-.LBB140
	.byte	0x4
	.uleb128 .LBB191-.LBB140
	.uleb128 .LBE191-.LBB140
	.byte	0x4
	.uleb128 .LBB192-.LBB140
	.uleb128 .LBE192-.LBB140
	.byte	0x4
	.uleb128 .LBB193-.LBB140
	.uleb128 .LBE193-.LBB140
	.byte	0x4
	.uleb128 .LBB194-.LBB140
	.uleb128 .LBE194-.LBB140
	.byte	0
.LLRL28:
	.byte	0x5
	.4byte	.LBB141
	.byte	0x4
	.uleb128 .LBB141-.LBB141
	.uleb128 .LBE141-.LBB141
	.byte	0x4
	.uleb128 .LBB156-.LBB141
	.uleb128 .LBE156-.LBB141
	.byte	0x4
	.uleb128 .LBB166-.LBB141
	.uleb128 .LBE166-.LBB141
	.byte	0x4
	.uleb128 .LBB169-.LBB141
	.uleb128 .LBE169-.LBB141
	.byte	0x4
	.uleb128 .LBB172-.LBB141
	.uleb128 .LBE172-.LBB141
	.byte	0x4
	.uleb128 .LBB183-.LBB141
	.uleb128 .LBE183-.LBB141
	.byte	0
.LLRL29:
	.byte	0x5
	.4byte	.LBB148
	.byte	0x4
	.uleb128 .LBB148-.LBB148
	.uleb128 .LBE148-.LBB148
	.byte	0x4
	.uleb128 .LBB165-.LBB148
	.uleb128 .LBE165-.LBB148
	.byte	0x4
	.uleb128 .LBB168-.LBB148
	.uleb128 .LBE168-.LBB148
	.byte	0x4
	.uleb128 .LBB170-.LBB148
	.uleb128 .LBE170-.LBB148
	.byte	0x4
	.uleb128 .LBB173-.LBB148
	.uleb128 .LBE173-.LBB148
	.byte	0x4
	.uleb128 .LBB175-.LBB148
	.uleb128 .LBE175-.LBB148
	.byte	0x4
	.uleb128 .LBB185-.LBB148
	.uleb128 .LBE185-.LBB148
	.byte	0
.LLRL30:
	.byte	0x5
	.4byte	.LBB157
	.byte	0x4
	.uleb128 .LBB157-.LBB157
	.uleb128 .LBE157-.LBB157
	.byte	0x4
	.uleb128 .LBB167-.LBB157
	.uleb128 .LBE167-.LBB157
	.byte	0x4
	.uleb128 .LBB171-.LBB157
	.uleb128 .LBE171-.LBB157
	.byte	0x4
	.uleb128 .LBB174-.LBB157
	.uleb128 .LBE174-.LBB157
	.byte	0x4
	.uleb128 .LBB176-.LBB157
	.uleb128 .LBE176-.LBB157
	.byte	0x4
	.uleb128 .LBB182-.LBB157
	.uleb128 .LBE182-.LBB157
	.byte	0x4
	.uleb128 .LBB184-.LBB157
	.uleb128 .LBE184-.LBB157
	.byte	0
.LLRL31:
	.byte	0x5
	.4byte	.LBB177
	.byte	0x4
	.uleb128 .LBB177-.LBB177
	.uleb128 .LBE177-.LBB177
	.byte	0x4
	.uleb128 .LBB186-.LBB177
	.uleb128 .LBE186-.LBB177
	.byte	0x4
	.uleb128 .LBB187-.LBB177
	.uleb128 .LBE187-.LBB177
	.byte	0x4
	.uleb128 .LBB188-.LBB177
	.uleb128 .LBE188-.LBB177
	.byte	0
.LLRL38:
	.byte	0x5
	.4byte	.LBB260
	.byte	0x4
	.uleb128 .LBB260-.LBB260
	.uleb128 .LBE260-.LBB260
	.byte	0x4
	.uleb128 .LBB471-.LBB260
	.uleb128 .LBE471-.LBB260
	.byte	0x4
	.uleb128 .LBB472-.LBB260
	.uleb128 .LBE472-.LBB260
	.byte	0x4
	.uleb128 .LBB473-.LBB260
	.uleb128 .LBE473-.LBB260
	.byte	0
.LLRL43:
	.byte	0x5
	.4byte	.LBB261
	.byte	0x4
	.uleb128 .LBB261-.LBB261
	.uleb128 .LBE261-.LBB261
	.byte	0x4
	.uleb128 .LBB265-.LBB261
	.uleb128 .LBE265-.LBB261
	.byte	0x4
	.uleb128 .LBB279-.LBB261
	.uleb128 .LBE279-.LBB261
	.byte	0
.LLRL46:
	.byte	0x5
	.4byte	.LBB266
	.byte	0x4
	.uleb128 .LBB266-.LBB266
	.uleb128 .LBE266-.LBB266
	.byte	0x4
	.uleb128 .LBB278-.LBB266
	.uleb128 .LBE278-.LBB266
	.byte	0
.LLRL48:
	.byte	0x5
	.4byte	.LBB269
	.byte	0x4
	.uleb128 .LBB269-.LBB269
	.uleb128 .LBE269-.LBB269
	.byte	0x4
	.uleb128 .LBB280-.LBB269
	.uleb128 .LBE280-.LBB269
	.byte	0x4
	.uleb128 .LBB282-.LBB269
	.uleb128 .LBE282-.LBB269
	.byte	0
.LLRL51:
	.byte	0x5
	.4byte	.LBB273
	.byte	0x4
	.uleb128 .LBB273-.LBB273
	.uleb128 .LBE273-.LBB273
	.byte	0x4
	.uleb128 .LBB281-.LBB273
	.uleb128 .LBE281-.LBB273
	.byte	0x4
	.uleb128 .LBB283-.LBB273
	.uleb128 .LBE283-.LBB273
	.byte	0
.LLRL57:
	.byte	0x5
	.4byte	.LBB284
	.byte	0x4
	.uleb128 .LBB284-.LBB284
	.uleb128 .LBE284-.LBB284
	.byte	0x4
	.uleb128 .LBB401-.LBB284
	.uleb128 .LBE401-.LBB284
	.byte	0x4
	.uleb128 .LBB402-.LBB284
	.uleb128 .LBE402-.LBB284
	.byte	0x4
	.uleb128 .LBB406-.LBB284
	.uleb128 .LBE406-.LBB284
	.byte	0x4
	.uleb128 .LBB469-.LBB284
	.uleb128 .LBE469-.LBB284
	.byte	0
.LLRL59:
	.byte	0x5
	.4byte	.LBB285
	.byte	0x4
	.uleb128 .LBB285-.LBB285
	.uleb128 .LBE285-.LBB285
	.byte	0x4
	.uleb128 .LBB398-.LBB285
	.uleb128 .LBE398-.LBB285
	.byte	0x4
	.uleb128 .LBB399-.LBB285
	.uleb128 .LBE399-.LBB285
	.byte	0x4
	.uleb128 .LBB400-.LBB285
	.uleb128 .LBE400-.LBB285
	.byte	0
.LLRL62:
	.byte	0x5
	.4byte	.LBB286
	.byte	0x4
	.uleb128 .LBB286-.LBB286
	.uleb128 .LBE286-.LBB286
	.byte	0x4
	.uleb128 .LBB385-.LBB286
	.uleb128 .LBE385-.LBB286
	.byte	0x4
	.uleb128 .LBB391-.LBB286
	.uleb128 .LBE391-.LBB286
	.byte	0x4
	.uleb128 .LBB393-.LBB286
	.uleb128 .LBE393-.LBB286
	.byte	0x4
	.uleb128 .LBB395-.LBB286
	.uleb128 .LBE395-.LBB286
	.byte	0
.LLRL69:
	.byte	0x5
	.4byte	.LBB292
	.byte	0x4
	.uleb128 .LBB292-.LBB292
	.uleb128 .LBE292-.LBB292
	.byte	0x4
	.uleb128 .LBB386-.LBB292
	.uleb128 .LBE386-.LBB292
	.byte	0x4
	.uleb128 .LBB387-.LBB292
	.uleb128 .LBE387-.LBB292
	.byte	0x4
	.uleb128 .LBB388-.LBB292
	.uleb128 .LBE388-.LBB292
	.byte	0x4
	.uleb128 .LBB389-.LBB292
	.uleb128 .LBE389-.LBB292
	.byte	0x4
	.uleb128 .LBB390-.LBB292
	.uleb128 .LBE390-.LBB292
	.byte	0x4
	.uleb128 .LBB392-.LBB292
	.uleb128 .LBE392-.LBB292
	.byte	0x4
	.uleb128 .LBB394-.LBB292
	.uleb128 .LBE394-.LBB292
	.byte	0x4
	.uleb128 .LBB396-.LBB292
	.uleb128 .LBE396-.LBB292
	.byte	0x4
	.uleb128 .LBB397-.LBB292
	.uleb128 .LBE397-.LBB292
	.byte	0
.LLRL71:
	.byte	0x5
	.4byte	.LBB293
	.byte	0x4
	.uleb128 .LBB293-.LBB293
	.uleb128 .LBE293-.LBB293
	.byte	0x4
	.uleb128 .LBB376-.LBB293
	.uleb128 .LBE376-.LBB293
	.byte	0x4
	.uleb128 .LBB377-.LBB293
	.uleb128 .LBE377-.LBB293
	.byte	0x4
	.uleb128 .LBB378-.LBB293
	.uleb128 .LBE378-.LBB293
	.byte	0x4
	.uleb128 .LBB379-.LBB293
	.uleb128 .LBE379-.LBB293
	.byte	0x4
	.uleb128 .LBB380-.LBB293
	.uleb128 .LBE380-.LBB293
	.byte	0x4
	.uleb128 .LBB381-.LBB293
	.uleb128 .LBE381-.LBB293
	.byte	0x4
	.uleb128 .LBB382-.LBB293
	.uleb128 .LBE382-.LBB293
	.byte	0x4
	.uleb128 .LBB383-.LBB293
	.uleb128 .LBE383-.LBB293
	.byte	0x4
	.uleb128 .LBB384-.LBB293
	.uleb128 .LBE384-.LBB293
	.byte	0
.LLRL73:
	.byte	0x5
	.4byte	.LBB294
	.byte	0x4
	.uleb128 .LBB294-.LBB294
	.uleb128 .LBE294-.LBB294
	.byte	0x4
	.uleb128 .LBB366-.LBB294
	.uleb128 .LBE366-.LBB294
	.byte	0x4
	.uleb128 .LBB367-.LBB294
	.uleb128 .LBE367-.LBB294
	.byte	0x4
	.uleb128 .LBB368-.LBB294
	.uleb128 .LBE368-.LBB294
	.byte	0x4
	.uleb128 .LBB369-.LBB294
	.uleb128 .LBE369-.LBB294
	.byte	0x4
	.uleb128 .LBB370-.LBB294
	.uleb128 .LBE370-.LBB294
	.byte	0x4
	.uleb128 .LBB371-.LBB294
	.uleb128 .LBE371-.LBB294
	.byte	0x4
	.uleb128 .LBB372-.LBB294
	.uleb128 .LBE372-.LBB294
	.byte	0x4
	.uleb128 .LBB373-.LBB294
	.uleb128 .LBE373-.LBB294
	.byte	0x4
	.uleb128 .LBB374-.LBB294
	.uleb128 .LBE374-.LBB294
	.byte	0x4
	.uleb128 .LBB375-.LBB294
	.uleb128 .LBE375-.LBB294
	.byte	0
.LLRL75:
	.byte	0x5
	.4byte	.LBB295
	.byte	0x4
	.uleb128 .LBB295-.LBB295
	.uleb128 .LBE295-.LBB295
	.byte	0x4
	.uleb128 .LBB356-.LBB295
	.uleb128 .LBE356-.LBB295
	.byte	0x4
	.uleb128 .LBB357-.LBB295
	.uleb128 .LBE357-.LBB295
	.byte	0x4
	.uleb128 .LBB358-.LBB295
	.uleb128 .LBE358-.LBB295
	.byte	0x4
	.uleb128 .LBB359-.LBB295
	.uleb128 .LBE359-.LBB295
	.byte	0x4
	.uleb128 .LBB360-.LBB295
	.uleb128 .LBE360-.LBB295
	.byte	0x4
	.uleb128 .LBB361-.LBB295
	.uleb128 .LBE361-.LBB295
	.byte	0x4
	.uleb128 .LBB362-.LBB295
	.uleb128 .LBE362-.LBB295
	.byte	0x4
	.uleb128 .LBB363-.LBB295
	.uleb128 .LBE363-.LBB295
	.byte	0x4
	.uleb128 .LBB364-.LBB295
	.uleb128 .LBE364-.LBB295
	.byte	0x4
	.uleb128 .LBB365-.LBB295
	.uleb128 .LBE365-.LBB295
	.byte	0
.LLRL77:
	.byte	0x5
	.4byte	.LBB296
	.byte	0x4
	.uleb128 .LBB296-.LBB296
	.uleb128 .LBE296-.LBB296
	.byte	0x4
	.uleb128 .LBB353-.LBB296
	.uleb128 .LBE353-.LBB296
	.byte	0x4
	.uleb128 .LBB354-.LBB296
	.uleb128 .LBE354-.LBB296
	.byte	0x4
	.uleb128 .LBB355-.LBB296
	.uleb128 .LBE355-.LBB296
	.byte	0
.LLRL79:
	.byte	0x5
	.4byte	.LBB297
	.byte	0x4
	.uleb128 .LBB297-.LBB297
	.uleb128 .LBE297-.LBB297
	.byte	0x4
	.uleb128 .LBB304-.LBB297
	.uleb128 .LBE304-.LBB297
	.byte	0x4
	.uleb128 .LBB305-.LBB297
	.uleb128 .LBE305-.LBB297
	.byte	0x4
	.uleb128 .LBB306-.LBB297
	.uleb128 .LBE306-.LBB297
	.byte	0x4
	.uleb128 .LBB307-.LBB297
	.uleb128 .LBE307-.LBB297
	.byte	0x4
	.uleb128 .LBB308-.LBB297
	.uleb128 .LBE308-.LBB297
	.byte	0
.LLRL86:
	.byte	0x5
	.4byte	.LBB309
	.byte	0x4
	.uleb128 .LBB309-.LBB309
	.uleb128 .LBE309-.LBB309
	.byte	0x4
	.uleb128 .LBB326-.LBB309
	.uleb128 .LBE326-.LBB309
	.byte	0x4
	.uleb128 .LBB335-.LBB309
	.uleb128 .LBE335-.LBB309
	.byte	0x4
	.uleb128 .LBB337-.LBB309
	.uleb128 .LBE337-.LBB309
	.byte	0x4
	.uleb128 .LBB340-.LBB309
	.uleb128 .LBE340-.LBB309
	.byte	0x4
	.uleb128 .LBB342-.LBB309
	.uleb128 .LBE342-.LBB309
	.byte	0x4
	.uleb128 .LBB344-.LBB309
	.uleb128 .LBE344-.LBB309
	.byte	0x4
	.uleb128 .LBB350-.LBB309
	.uleb128 .LBE350-.LBB309
	.byte	0
.LLRL88:
	.byte	0x5
	.4byte	.LBB318
	.byte	0x4
	.uleb128 .LBB318-.LBB318
	.uleb128 .LBE318-.LBB318
	.byte	0x4
	.uleb128 .LBB336-.LBB318
	.uleb128 .LBE336-.LBB318
	.byte	0x4
	.uleb128 .LBB339-.LBB318
	.uleb128 .LBE339-.LBB318
	.byte	0x4
	.uleb128 .LBB341-.LBB318
	.uleb128 .LBE341-.LBB318
	.byte	0x4
	.uleb128 .LBB345-.LBB318
	.uleb128 .LBE345-.LBB318
	.byte	0x4
	.uleb128 .LBB347-.LBB318
	.uleb128 .LBE347-.LBB318
	.byte	0x4
	.uleb128 .LBB352-.LBB318
	.uleb128 .LBE352-.LBB318
	.byte	0
.LLRL90:
	.byte	0x5
	.4byte	.LBB327
	.byte	0x4
	.uleb128 .LBB327-.LBB327
	.uleb128 .LBE327-.LBB327
	.byte	0x4
	.uleb128 .LBB338-.LBB327
	.uleb128 .LBE338-.LBB327
	.byte	0x4
	.uleb128 .LBB343-.LBB327
	.uleb128 .LBE343-.LBB327
	.byte	0x4
	.uleb128 .LBB346-.LBB327
	.uleb128 .LBE346-.LBB327
	.byte	0x4
	.uleb128 .LBB348-.LBB327
	.uleb128 .LBE348-.LBB327
	.byte	0x4
	.uleb128 .LBB349-.LBB327
	.uleb128 .LBE349-.LBB327
	.byte	0x4
	.uleb128 .LBB351-.LBB327
	.uleb128 .LBE351-.LBB327
	.byte	0
.LLRL92:
	.byte	0x5
	.4byte	.LBB403
	.byte	0x4
	.uleb128 .LBB403-.LBB403
	.uleb128 .LBE403-.LBB403
	.byte	0x4
	.uleb128 .LBB470-.LBB403
	.uleb128 .LBE470-.LBB403
	.byte	0
.LLRL95:
	.byte	0x5
	.4byte	.LBB407
	.byte	0x4
	.uleb128 .LBB407-.LBB407
	.uleb128 .LBE407-.LBB407
	.byte	0x4
	.uleb128 .LBB468-.LBB407
	.uleb128 .LBE468-.LBB407
	.byte	0
.LLRL97:
	.byte	0x5
	.4byte	.LBB408
	.byte	0x4
	.uleb128 .LBB408-.LBB408
	.uleb128 .LBE408-.LBB408
	.byte	0x4
	.uleb128 .LBB424-.LBB408
	.uleb128 .LBE424-.LBB408
	.byte	0
.LLRL100:
	.byte	0x5
	.4byte	.LBB411
	.byte	0x4
	.uleb128 .LBB411-.LBB411
	.uleb128 .LBE411-.LBB411
	.byte	0x4
	.uleb128 .LBB425-.LBB411
	.uleb128 .LBE425-.LBB411
	.byte	0x4
	.uleb128 .LBB426-.LBB411
	.uleb128 .LBE426-.LBB411
	.byte	0x4
	.uleb128 .LBB436-.LBB411
	.uleb128 .LBE436-.LBB411
	.byte	0
.LLRL102:
	.byte	0x5
	.4byte	.LBB413
	.byte	0x4
	.uleb128 .LBB413-.LBB413
	.uleb128 .LBE413-.LBB413
	.byte	0x4
	.uleb128 .LBB420-.LBB413
	.uleb128 .LBE420-.LBB413
	.byte	0
.LLRL103:
	.byte	0x5
	.4byte	.LBB415
	.byte	0x4
	.uleb128 .LBB415-.LBB415
	.uleb128 .LBE415-.LBB415
	.byte	0x4
	.uleb128 .LBB418-.LBB415
	.uleb128 .LBE418-.LBB415
	.byte	0
.LLRL104:
	.byte	0x5
	.4byte	.LBB427
	.byte	0x4
	.uleb128 .LBB427-.LBB427
	.uleb128 .LBE427-.LBB427
	.byte	0x4
	.uleb128 .LBB435-.LBB427
	.uleb128 .LBE435-.LBB427
	.byte	0x4
	.uleb128 .LBB437-.LBB427
	.uleb128 .LBE437-.LBB427
	.byte	0x4
	.uleb128 .LBB451-.LBB427
	.uleb128 .LBE451-.LBB427
	.byte	0x4
	.uleb128 .LBB453-.LBB427
	.uleb128 .LBE453-.LBB427
	.byte	0x4
	.uleb128 .LBB456-.LBB427
	.uleb128 .LBE456-.LBB427
	.byte	0x4
	.uleb128 .LBB459-.LBB427
	.uleb128 .LBE459-.LBB427
	.byte	0
.LLRL106:
	.byte	0x5
	.4byte	.LBB438
	.byte	0x4
	.uleb128 .LBB438-.LBB438
	.uleb128 .LBE438-.LBB438
	.byte	0x4
	.uleb128 .LBB452-.LBB438
	.uleb128 .LBE452-.LBB438
	.byte	0x4
	.uleb128 .LBB455-.LBB438
	.uleb128 .LBE455-.LBB438
	.byte	0x4
	.uleb128 .LBB457-.LBB438
	.uleb128 .LBE457-.LBB438
	.byte	0x4
	.uleb128 .LBB460-.LBB438
	.uleb128 .LBE460-.LBB438
	.byte	0x4
	.uleb128 .LBB462-.LBB438
	.uleb128 .LBE462-.LBB438
	.byte	0
.LLRL108:
	.byte	0x5
	.4byte	.LBB445
	.byte	0x4
	.uleb128 .LBB445-.LBB445
	.uleb128 .LBE445-.LBB445
	.byte	0x4
	.uleb128 .LBB454-.LBB445
	.uleb128 .LBE454-.LBB445
	.byte	0x4
	.uleb128 .LBB458-.LBB445
	.uleb128 .LBE458-.LBB445
	.byte	0x4
	.uleb128 .LBB461-.LBB445
	.uleb128 .LBE461-.LBB445
	.byte	0x4
	.uleb128 .LBB463-.LBB445
	.uleb128 .LBE463-.LBB445
	.byte	0
.LLRL110:
	.byte	0x5
	.4byte	.LBB464
	.byte	0x4
	.uleb128 .LBB464-.LBB464
	.uleb128 .LBE464-.LBB464
	.byte	0x4
	.uleb128 .LBB467-.LBB464
	.uleb128 .LBE467-.LBB464
	.byte	0
.LLRL116:
	.byte	0x5
	.4byte	.LBB475
	.byte	0x4
	.uleb128 .LBB475-.LBB475
	.uleb128 .LBE475-.LBB475
	.byte	0x4
	.uleb128 .LBB481-.LBB475
	.uleb128 .LBE481-.LBB475
	.byte	0x4
	.uleb128 .LBB482-.LBB475
	.uleb128 .LBE482-.LBB475
	.byte	0x4
	.uleb128 .LBB483-.LBB475
	.uleb128 .LBE483-.LBB475
	.byte	0x4
	.uleb128 .LBB484-.LBB475
	.uleb128 .LBE484-.LBB475
	.byte	0
.LLRL130:
	.byte	0x7
	.4byte	.LFB150
	.uleb128 .LFE150-.LFB150
	.byte	0x7
	.4byte	.LFB151
	.uleb128 .LFE151-.LFB151
	.byte	0x7
	.4byte	.LFB152
	.uleb128 .LFE152-.LFB152
	.byte	0x7
	.4byte	.LFB153
	.uleb128 .LFE153-.LFB153
	.byte	0x7
	.4byte	.LFB154
	.uleb128 .LFE154-.LFB154
	.byte	0x7
	.4byte	.LFB155
	.uleb128 .LFE155-.LFB155
	.byte	0x7
	.4byte	.LFB156
	.uleb128 .LFE156-.LFB156
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF179:
	.ascii	"direction\000"
.LASF85:
	.ascii	"transparentVBO\000"
.LASF61:
	.ascii	"Block_Diamond_Ore\000"
.LASF121:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF13:
	.ascii	"__int64_t\000"
.LASF227:
	.ascii	"MaxFallVelocity\000"
.LASF69:
	.ascii	"Block_Furnace\000"
.LASF220:
	.ascii	"viewRayCast\000"
.LASF140:
	.ascii	"WorkerItem\000"
.LASF218:
	.ascii	"inventorySite\000"
.LASF288:
	.ascii	"strlen\000"
.LASF143:
	.ascii	"capacity\000"
.LASF182:
	.ascii	"Thread_tag\000"
.LASF68:
	.ascii	"Block_Emerald_Block\000"
.LASF249:
	.ascii	"soundfile\000"
.LASF171:
	.ascii	"amount\000"
.LASF234:
	.ascii	"Collision_BoxIntersect\000"
.LASF50:
	.ascii	"Block_Snow\000"
.LASF286:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF118:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF54:
	.ascii	"Block_Smooth_Stone\000"
.LASF28:
	.ascii	"Direction_Invalid\000"
.LASF166:
	.ascii	"World\000"
.LASF191:
	.ascii	"fovAdd\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF145:
	.ascii	"itemAddedEvent\000"
.LASF42:
	.ascii	"Block_Brick\000"
.LASF119:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF9:
	.ascii	"__int32_t\000"
.LASF185:
	.ascii	"threaid\000"
.LASF72:
	.ascii	"Xorshift32\000"
.LASF178:
	.ascii	"distSqr\000"
.LASF192:
	.ascii	"crouchAdd\000"
.LASF51:
	.ascii	"Block_Obsidian\000"
.LASF56:
	.ascii	"Block_Grass_Path\000"
.LASF151:
	.ascii	"WorldGenType\000"
.LASF112:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF208:
	.ascii	"difficulty\000"
.LASF95:
	.ascii	"ChunkGenProgress\000"
.LASF230:
	.ascii	"playopus\000"
.LASF123:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF26:
	.ascii	"Direction_North\000"
.LASF222:
	.ascii	"blockInActionRange\000"
.LASF219:
	.ascii	"quickSelectBar\000"
.LASF124:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF43:
	.ascii	"Block_Planks\000"
.LASF257:
	.ascii	"collision\000"
.LASF221:
	.ascii	"blockInSight\000"
.LASF139:
	.ascii	"chunk\000"
.LASF89:
	.ascii	"forceVBOUpdate\000"
.LASF228:
	.ascii	"GravityPlusFriction\000"
.LASF19:
	.ascii	"uint32_t\000"
.LASF128:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF21:
	.ascii	"uint64_t\000"
.LASF237:
	.ascii	"World_GetBlock\000"
.LASF78:
	.ascii	"VBO_Block\000"
.LASF282:
	.ascii	"AABB_Overlap\000"
.LASF223:
	.ascii	"inventory\000"
.LASF170:
	.ascii	"meta\000"
.LASF186:
	.ascii	"opusFile\000"
.LASF122:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF34:
	.ascii	"Block_Grass\000"
.LASF174:
	.ascii	"time\000"
.LASF205:
	.ascii	"armour\000"
.LASF253:
	.ascii	"finalPos\000"
.LASF1:
	.ascii	"long long unsigned int\000"
.LASF260:
	.ascii	"blockBox\000"
.LASF206:
	.ascii	"oxygen\000"
.LASF181:
	.ascii	"OggOpusFile\000"
.LASF189:
	.ascii	"pitch\000"
.LASF127:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF158:
	.ascii	"cacheTranslationX\000"
.LASF233:
	.ascii	"sqrtf\000"
.LASF159:
	.ascii	"cacheTranslationZ\000"
.LASF289:
	.ascii	"__builtin_strlen\000"
.LASF216:
	.ascii	"quickSelectBarSlots\000"
.LASF48:
	.ascii	"Block_Door_Bottom\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF184:
	.ascii	"background\000"
.LASF148:
	.ascii	"WorldGen_Smea\000"
.LASF160:
	.ascii	"chunkPool\000"
.LASF168:
	.ascii	"Items_Count\000"
.LASF58:
	.ascii	"Block_Lava\000"
.LASF214:
	.ascii	"gamemode\000"
.LASF117:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF73:
	.ascii	"size_t\000"
.LASF70:
	.ascii	"Blocks_Count\000"
.LASF10:
	.ascii	"long int\000"
.LASF20:
	.ascii	"int64_t\000"
.LASF246:
	.ascii	"offset\000"
.LASF231:
	.ascii	"World_SetBlockAndMeta\000"
.LASF105:
	.ascii	"Chunk\000"
.LASF90:
	.ascii	"_Bool\000"
.LASF264:
	.ascii	"intersects\000"
.LASF272:
	.ascii	"Player_Init\000"
.LASF132:
	.ascii	"WorkerItemType_Save\000"
.LASF31:
	.ascii	"Block_Air\000"
.LASF277:
	.ascii	"f3_dot\000"
.LASF57:
	.ascii	"Block_Water\000"
.LASF98:
	.ascii	"uuid\000"
.LASF15:
	.ascii	"__uint64_t\000"
.LASF163:
	.ascii	"workqueue\000"
.LASF244:
	.ascii	"player\000"
.LASF195:
	.ascii	"sprinting\000"
.LASF183:
	.ascii	"path\000"
.LASF164:
	.ascii	"randomTickGen\000"
.LASF47:
	.ascii	"Block_Door_Top\000"
.LASF196:
	.ascii	"flying\000"
.LASF268:
	.ascii	"Player_Update\000"
.LASF52:
	.ascii	"Block_Netherrack\000"
.LASF153:
	.ascii	"settings\000"
.LASF65:
	.ascii	"Block_Diamond_Block\000"
.LASF248:
	.ascii	"accl\000"
.LASF167:
	.ascii	"Item_Totem\000"
.LASF254:
	.ascii	"wallCollision\000"
.LASF217:
	.ascii	"quickSelectBarSlot\000"
.LASF32:
	.ascii	"Block_Stone\000"
.LASF71:
	.ascii	"char\000"
.LASF107:
	.ascii	"LightLock\000"
.LASF116:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF280:
	.ascii	"f3_add\000"
.LASF133:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF115:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF225:
	.ascii	"DirectionToOffset\000"
.LASF111:
	.ascii	"Thread\000"
.LASF81:
	.ascii	"revision\000"
.LASF102:
	.ascii	"heightmapRevision\000"
.LASF157:
	.ascii	"genSettings\000"
.LASF141:
	.ascii	"data\000"
.LASF110:
	.ascii	"LightEvent\000"
.LASF94:
	.ascii	"ChunkGen_Finished\000"
.LASF16:
	.ascii	"uint8_t\000"
.LASF173:
	.ascii	"cause\000"
.LASF67:
	.ascii	"Block_Iron_Block\000"
.LASF96:
	.ascii	"tasksRunning\000"
.LASF232:
	.ascii	"strncat\000"
.LASF236:
	.ascii	"DebugUI_Log\000"
.LASF155:
	.ascii	"HighestBlock\000"
.LASF265:
	.ascii	"nrmDiff\000"
.LASF113:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF25:
	.ascii	"Direction_Top\000"
.LASF263:
	.ascii	"face\000"
.LASF136:
	.ascii	"WorkerItemTypes_Count\000"
.LASF64:
	.ascii	"Block_Gold_Block\000"
.LASF204:
	.ascii	"hungertimer\000"
.LASF14:
	.ascii	"long long int\000"
.LASF63:
	.ascii	"Block_Emerald_Ore\000"
.LASF229:
	.ascii	"World_SetBlock\000"
.LASF278:
	.ascii	"f3_scl\000"
.LASF109:
	.ascii	"lock\000"
.LASF275:
	.ascii	"f3_nrm\000"
.LASF262:
	.ascii	"depth\000"
.LASF150:
	.ascii	"WorldGenTypes_Count\000"
.LASF39:
	.ascii	"Block_Leaves\000"
.LASF287:
	.ascii	"Player_CanMove\000"
.LASF245:
	.ascii	"sound\000"
.LASF239:
	.ascii	"Raycast_Cast\000"
.LASF209:
	.ascii	"rndy\000"
.LASF176:
	.ascii	"superflat\000"
.LASF55:
	.ascii	"Block_Crafting_Table\000"
.LASF149:
	.ascii	"WorldGen_SuperFlat\000"
.LASF203:
	.ascii	"breakPlaceTimeout\000"
.LASF269:
	.ascii	"spawnY\000"
.LASF76:
	.ascii	"size\000"
.LASF82:
	.ascii	"seeThrough\000"
.LASF243:
	.ascii	"Player_PlaceBlock\000"
.LASF274:
	.ascii	"Box_Create\000"
.LASF165:
	.ascii	"weather\000"
.LASF180:
	.ascii	"Raycast_Result\000"
.LASF130:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF210:
	.ascii	"spawnx\000"
.LASF211:
	.ascii	"spawny\000"
.LASF212:
	.ascii	"spawnz\000"
.LASF120:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF152:
	.ascii	"seed\000"
.LASF79:
	.ascii	"blocks\000"
.LASF27:
	.ascii	"Direction_South\000"
.LASF285:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/entity"
	.ascii	"/Player.c\000"
.LASF59:
	.ascii	"Block_Iron_Ore\000"
.LASF84:
	.ascii	"emptyRevision\000"
.LASF252:
	.ascii	"newPos\000"
.LASF33:
	.ascii	"Block_Dirt\000"
.LASF235:
	.ascii	"svcSleepThread\000"
.LASF172:
	.ascii	"ItemStack\000"
.LASF103:
	.ascii	"displayRevision\000"
.LASF74:
	.ascii	"long double\000"
.LASF75:
	.ascii	"_LOCK_T\000"
.LASF17:
	.ascii	"uint16_t\000"
.LASF284:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF22:
	.ascii	"Direction_West\000"
.LASF226:
	.ascii	"MaxWalkVelocity\000"
.LASF91:
	.ascii	"Cluster\000"
.LASF215:
	.ascii	"cheats\000"
.LASF258:
	.ascii	"axisStep\000"
.LASF281:
	.ascii	"f3_new\000"
.LASF193:
	.ascii	"grounded\000"
.LASF23:
	.ascii	"Direction_East\000"
.LASF190:
	.ascii	"bobbing\000"
.LASF5:
	.ascii	"short int\000"
.LASF279:
	.ascii	"f3_sub\000"
.LASF114:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF213:
	.ascii	"spawnset\000"
.LASF207:
	.ascii	"hunger\000"
.LASF142:
	.ascii	"length\000"
.LASF162:
	.ascii	"freeChunks\000"
.LASF129:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF97:
	.ascii	"graphicalTasksRunning\000"
.LASF200:
	.ascii	"autoJumpEnabled\000"
.LASF135:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF125:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF126:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF24:
	.ascii	"Direction_Bottom\000"
.LASF53:
	.ascii	"Block_Sandstone\000"
.LASF169:
	.ascii	"block\000"
.LASF92:
	.ascii	"ChunkGen_Empty\000"
.LASF86:
	.ascii	"vertices\000"
.LASF6:
	.ascii	"__uint8_t\000"
.LASF44:
	.ascii	"Block_Wool\000"
.LASF156:
	.ascii	"name\000"
.LASF49:
	.ascii	"Block_Snow_Grass\000"
.LASF40:
	.ascii	"Block_Glass\000"
.LASF80:
	.ascii	"metadataLight\000"
.LASF241:
	.ascii	"sinf\000"
.LASF202:
	.ascii	"simStepAccum\000"
.LASF201:
	.ascii	"velocity\000"
.LASF177:
	.ascii	"float3\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF187:
	.ascii	"Sound\000"
.LASF83:
	.ascii	"empty\000"
.LASF147:
	.ascii	"WorkQueue\000"
.LASF175:
	.ascii	"Damage\000"
.LASF0:
	.ascii	"float\000"
.LASF144:
	.ascii	"queue\000"
.LASF93:
	.ascii	"ChunkGen_Terrain\000"
.LASF18:
	.ascii	"int32_t\000"
.LASF198:
	.ascii	"world\000"
.LASF77:
	.ascii	"memory\000"
.LASF36:
	.ascii	"Block_Sand\000"
.LASF29:
	.ascii	"Direction\000"
.LASF261:
	.ascii	"normal\000"
.LASF138:
	.ascii	"type\000"
.LASF45:
	.ascii	"Block_Bedrock\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF154:
	.ascii	"GeneratorSettings\000"
.LASF62:
	.ascii	"Block_Gold_Ore\000"
.LASF35:
	.ascii	"Block_Cobblestone\000"
.LASF88:
	.ascii	"vboRevision\000"
.LASF104:
	.ascii	"references\000"
.LASF266:
	.ascii	"landingBlock\000"
.LASF255:
	.ascii	"wasGrounded\000"
.LASF134:
	.ascii	"WorkerItemType_Decorate\000"
.LASF108:
	.ascii	"state\000"
.LASF238:
	.ascii	"round\000"
.LASF240:
	.ascii	"cosf\000"
.LASF101:
	.ascii	"heightmap\000"
.LASF247:
	.ascii	"Player_Move\000"
.LASF270:
	.ascii	"shouldOffset\000"
.LASF30:
	.ascii	"Block\000"
.LASF38:
	.ascii	"Block_Gravel\000"
.LASF251:
	.ascii	"speedFactor\000"
.LASF99:
	.ascii	"genProgress\000"
.LASF3:
	.ascii	"signed char\000"
.LASF259:
	.ascii	"playerBox\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF273:
	.ascii	"showDebugInfo\000"
.LASF46:
	.ascii	"Block_Coarse\000"
.LASF100:
	.ascii	"clusters\000"
.LASF199:
	.ascii	"view\000"
.LASF87:
	.ascii	"transparentVertices\000"
.LASF37:
	.ascii	"Block_Log\000"
.LASF106:
	.ascii	"double\000"
.LASF146:
	.ascii	"listInUse\000"
.LASF194:
	.ascii	"jumped\000"
.LASF60:
	.ascii	"Block_Coal_Ore\000"
.LASF267:
	.ascii	"Player_Jump\000"
.LASF137:
	.ascii	"WorkerItemType\000"
.LASF41:
	.ascii	"Block_Stonebrick\000"
.LASF256:
	.ascii	"movDiff\000"
.LASF66:
	.ascii	"Block_Coal_Block\000"
.LASF276:
	.ascii	"f3_mag\000"
.LASF161:
	.ascii	"chunkCache\000"
.LASF131:
	.ascii	"WorkerItemType_Load\000"
.LASF250:
	.ascii	"SimStep\000"
.LASF188:
	.ascii	"position\000"
.LASF197:
	.ascii	"crouching\000"
.LASF271:
	.ascii	"OvertimeDamage\000"
.LASF224:
	.ascii	"Player\000"
.LASF283:
	.ascii	"FastFloor\000"
.LASF242:
	.ascii	"Player_BreakBlock\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
