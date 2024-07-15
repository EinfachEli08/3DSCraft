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
	.file	"ChunkWorker.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/world/ChunkWorker.c"
	.section	.text.ChunkWorker_Mainloop,"ax",%progbits
	.align	2
	.global	ChunkWorker_Mainloop
	.syntax unified
	.arm
	.type	ChunkWorker_Mainloop, %function
ChunkWorker_Mainloop:
.LVL0:
.LFB128:
	.loc 1 61 40 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 62 2 view .LVU1
	.loc 1 63 2 view .LVU2
	mov	r3, #0
	.loc 1 61 40 is_stmt 0 view .LVU3
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
.LBB2:
.LBB3:
	.loc 1 86 6 view .LVU4
	mov	fp, #0
.LBE3:
.LBE2:
	.loc 1 61 40 view .LVU5
	mov	r9, r0
	sub	sp, sp, #52
	.cfi_def_cfa_offset 88
.LBB7:
.LBB4:
	.loc 1 86 6 view .LVU6
	ldr	r10, .L29
.LBE4:
.LBE7:
	.loc 1 63 2 view .LVU7
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	r3, [sp, #32]
	.loc 1 64 2 is_stmt 1 view .LVU8
.LVL1:
	.loc 1 65 2 view .LVU9
.L2:
	.loc 1 65 37 view .LVU10
	ldr	r3, .L29+4
	ldr	r3, [r3]
	cmp	r3, r9
	beq	.L28
.L16:
	.loc 1 66 3 view .LVU11
	.loc 1 66 24 is_stmt 0 view .LVU12
	mov	r3, #0
	.loc 1 68 3 view .LVU13
	add	r4, r9, #16
	mov	r0, r4
	.loc 1 66 24 view .LVU14
	strb	r3, [r9, #88]
	.loc 1 68 3 is_stmt 1 view .LVU15
	bl	LightEvent_Wait
.LVL2:
	.loc 1 69 3 view .LVU16
	mov	r0, r4
	bl	LightEvent_Clear
.LVL3:
	.loc 1 71 3 view .LVU17
	.loc 1 71 24 is_stmt 0 view .LVU18
	mov	r3, #1
	.loc 1 73 3 view .LVU19
	add	r4, r9, #24
	mov	r0, r4
	.loc 1 71 24 view .LVU20
	strb	r3, [r9, #88]
	.loc 1 73 3 is_stmt 1 view .LVU21
	bl	LightLock_Lock
.LVL4:
	.loc 1 74 3 view .LVU22
.LBB8:
	.loc 1 74 8 view .LVU23
	.loc 1 74 17 is_stmt 0 view .LVU24
	ldr	r5, [r9, #8]
.LVL5:
	.loc 1 74 58 is_stmt 1 view .LVU25
	.loc 1 74 62 is_stmt 0 view .LVU26
	ldr	r2, [sp, #28]
	mov	r3, #12
	add	r2, r5, r2
	str	r2, [sp]
	add	r0, sp, #24
	add	r2, sp, #32
	add	r1, sp, #28
	bl	vec_reserve_po2_
.LVL6:
	.loc 1 74 61 discriminator 1 view .LVU27
	subs	r3, r0, #0
	beq	.L3
.LVL7:
.L6:
	.loc 1 74 61 discriminator 1 view .LVU28
.LBE8:
	.loc 1 74 6 is_stmt 1 discriminator 6 view .LVU29
	.loc 1 75 3 view .LVU30
	.loc 1 75 40 is_stmt 0 view .LVU31
	mov	r3, #0
	.loc 1 76 3 view .LVU32
	mov	r0, r4
	.loc 1 75 40 view .LVU33
	str	r3, [r9, #8]
	.loc 1 76 3 is_stmt 1 view .LVU34
	bl	LightLock_Unlock
.LVL8:
	.loc 1 78 3 view .LVU35
	.loc 1 78 30 view .LVU36
	.loc 1 78 22 is_stmt 0 view .LVU37
	ldr	r3, [sp, #28]
	.loc 1 78 30 view .LVU38
	cmp	r3, #0
	ble	.L2
.LBB9:
.LBB5:
	.loc 1 84 7 view .LVU39
	add	r2, r9, #4
	add	r6, sp, #36
	str	r2, [sp, #16]
	b	.L4
.LVL9:
.L8:
	.loc 1 84 7 view .LVU40
.LBE5:
.LBE9:
	.loc 1 78 30 is_stmt 1 view .LVU41
	cmp	r3, #0
	ble	.L2
.L4:
.LBB10:
	.loc 1 79 4 view .LVU42
	.loc 1 79 44 is_stmt 0 view .LVU43
	sub	r3, r3, #1
	.loc 1 79 37 view .LVU44
	ldr	ip, [sp, #24]
	.loc 1 79 43 view .LVU45
	add	lr, r3, r3, lsl #1
	add	r2, ip, lr, lsl #2
	.loc 1 79 15 view .LVU46
	ldm	r2, {r0, r1, r2}
	mov	r5, r1
	stm	r6, {r0, r1, r2}
.LVL10:
	.loc 1 81 4 is_stmt 1 view .LVU47
	.loc 1 81 7 is_stmt 0 view .LVU48
	ldr	r1, [r1, #8]
.LVL11:
	.loc 1 79 15 view .LVU49
	str	r3, [sp, #28]
.LVL12:
	.loc 1 81 7 view .LVU50
	cmp	r2, r1
	bne	.L8
	.loc 1 79 15 view .LVU51
	ldrb	r8, [ip, lr, lsl #2]	@ zero_extendqisi2
.LVL13:
.LBB6:
	.loc 1 82 23 is_stmt 1 discriminator 1 view .LVU52
	.loc 1 82 56 is_stmt 0 discriminator 1 view .LVU53
	add	r7, r8, r8, lsl #1
	add	r7, r9, r7, lsl #2
	.loc 1 82 23 discriminator 1 view .LVU54
	ldr	r3, [r7, #32]
	cmp	r3, #0
	.loc 1 82 14 view .LVU55
	movgt	r4, #0
	strgt	r2, [sp, #12]
	strgt	r9, [sp, #20]
	.loc 1 82 23 discriminator 1 view .LVU56
	ble	.L14
.LVL14:
.L9:
	.loc 1 83 6 is_stmt 1 view .LVU57
	.loc 1 84 7 view .LVU58
	.loc 1 83 46 is_stmt 0 view .LVU59
	ldr	r3, [r7, #28]
	add	r2, r4, r4, lsl #1
	add	r1, r3, r2, lsl #2
	.loc 1 83 9 view .LVU60
	ldrb	r0, [r1, #8]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L13
	.loc 1 84 7 view .LVU61
	ldr	r1, [r1, #4]
	ldr	r0, [sp, #12]
	.loc 1 84 46 view .LVU62
	ldr	r9, [r3, r2, lsl #2]
	.loc 1 84 7 view .LVU63
	str	r0, [sp, #44]
	strb	r8, [sp, #36]
	str	r5, [sp, #40]
	str	r1, [sp]
	ldr	r0, [sp, #16]
	ldm	r6, {r1, r2, r3}
	blx	r9
.LVL15:
.L13:
	.loc 1 86 6 is_stmt 1 view .LVU64
	mov	r0, r10
	mov	r1, fp
	bl	svcSleepThread
.LVL16:
	.loc 1 82 66 discriminator 2 view .LVU65
	.loc 1 82 23 is_stmt 0 discriminator 1 view .LVU66
	ldr	r3, [r7, #32]
	.loc 1 82 66 discriminator 2 view .LVU67
	add	r4, r4, #1
.LVL17:
	.loc 1 82 23 is_stmt 1 discriminator 1 view .LVU68
	cmp	r3, r4
	bgt	.L9
	ldr	r9, [sp, #20]
.LVL18:
.L14:
	.loc 1 82 23 is_stmt 0 discriminator 1 view .LVU69
.LBE6:
	.loc 1 89 5 is_stmt 1 view .LVU70
	.loc 1 100 5 is_stmt 0 view .LVU71
	ldr	r3, [r5]
	.loc 1 89 5 view .LVU72
	cmp	r8, #2
	.loc 1 100 5 view .LVU73
	sub	r3, r3, #1
	.loc 1 89 5 view .LVU74
	beq	.L10
	cmp	r8, #3
	beq	.L11
	.loc 1 100 5 is_stmt 1 view .LVU75
	.loc 1 101 8 is_stmt 0 view .LVU76
	cmp	r8, #4
	.loc 1 100 5 view .LVU77
	str	r3, [r5]
	.loc 1 101 5 is_stmt 1 view .LVU78
	.loc 1 101 46 discriminator 1 view .LVU79
	ldreq	r3, [r5, #4]
	subeq	r3, r3, #1
	streq	r3, [r5, #4]
.L15:
	.loc 1 103 5 view .LVU80
	mov	r0, #1000
	mov	r1, #0
	bl	svcSleepThread
.LVL19:
.LBE10:
	.loc 1 78 22 is_stmt 0 view .LVU81
	ldr	r3, [sp, #28]
	b	.L8
.LVL20:
.L28:
	.loc 1 65 37 discriminator 1 view .LVU82
	ldr	r3, [r9, #8]
	cmp	r3, #0
	bgt	.L16
	.loc 1 107 2 is_stmt 1 view .LVU83
	.loc 1 107 4 is_stmt 0 view .LVU84
	ldr	r0, [sp, #24]
	bl	free
.LVL21:
	.loc 1 108 1 view .LVU85
	add	sp, sp, #52
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL22:
.L11:
	.cfi_restore_state
.LBB11:
	.loc 1 94 7 is_stmt 1 view .LVU86
	.loc 1 94 31 is_stmt 0 view .LVU87
	mov	r2, #2
	.loc 1 100 5 view .LVU88
	str	r3, [r5]
	.loc 1 94 31 view .LVU89
	strb	r2, [r5, #12]
	.loc 1 95 7 is_stmt 1 view .LVU90
	.loc 1 100 5 view .LVU91
	.loc 1 101 5 view .LVU92
	b	.L15
.L10:
	.loc 1 91 7 view .LVU93
	.loc 1 91 31 is_stmt 0 view .LVU94
	mov	r2, #1
	.loc 1 100 5 view .LVU95
	str	r3, [r5]
	.loc 1 91 31 view .LVU96
	strb	r2, [r5, #12]
	.loc 1 92 7 is_stmt 1 view .LVU97
	.loc 1 100 5 view .LVU98
	.loc 1 101 5 view .LVU99
	b	.L15
.LVL23:
.L3:
	.loc 1 101 5 is_stmt 0 view .LVU100
.LBE11:
.LBB12:
	.loc 1 74 259 is_stmt 1 discriminator 3 view .LVU101
	cmp	r5, #0
	ble	.L6
	.loc 1 74 312 is_stmt 0 discriminator 5 view .LVU102
	ldr	r2, [sp, #28]
	ldr	r6, [sp, #24]
	add	lr, r2, #1
	.loc 1 74 351 discriminator 5 view .LVU103
	ldr	r7, [r9, #4]
	add	r2, r2, r2, lsl #1
	add	r5, lr, r5
.LVL24:
	.loc 1 74 351 discriminator 5 view .LVU104
	add	r6, r6, r2, lsl #2
.LVL25:
.L7:
	.loc 1 74 275 is_stmt 1 discriminator 5 view .LVU105
	.loc 1 74 320 is_stmt 0 discriminator 5 view .LVU106
	str	lr, [sp, #28]
	.loc 1 74 259 discriminator 3 view .LVU107
	add	lr, lr, #1
	.loc 1 74 324 discriminator 5 view .LVU108
	add	ip, r6, r3
	add	r2, r7, r3
	.loc 1 74 259 discriminator 3 view .LVU109
	cmp	r5, lr
	.loc 1 74 324 discriminator 5 view .LVU110
	ldm	r2, {r0, r1, r2}
	add	r3, r3, #12
	.loc 1 74 269 is_stmt 1 discriminator 5 view .LVU111
.LVL26:
	.loc 1 74 259 discriminator 3 view .LVU112
	.loc 1 74 324 is_stmt 0 discriminator 5 view .LVU113
	stm	ip, {r0, r1, r2}
	.loc 1 74 259 discriminator 3 view .LVU114
	bne	.L7
	b	.L6
.L30:
	.align	2
.L29:
	.word	7000
	.word	.LANCHOR0
.LBE12:
	.cfi_endproc
.LFE128:
	.size	ChunkWorker_Mainloop, .-ChunkWorker_Mainloop
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Couldn't set AppCpuTimeLimit\000"
	.align	2
.LC1:
	.ascii	"Couldn't create worker thread\000"
	.section	.text.ChunkWorker_Init,"ax",%progbits
	.align	2
	.global	ChunkWorker_Init
	.syntax unified
	.arm
	.type	ChunkWorker_Init, %function
ChunkWorker_Init:
.LVL27:
.LFB123:
	.loc 1 7 49 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 8 2 view .LVU116
.LBB16:
.LBB17:
	.file 2 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/WorkQueue.h"
	.loc 2 36 2 is_stmt 0 view .LVU117
	mov	r3, #0
.LBE17:
.LBE16:
	.loc 1 7 49 view .LVU118
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r5, r0
.LVL28:
.LBB20:
.LBI16:
	.loc 2 35 13 is_stmt 1 view .LVU119
.LBB18:
	.loc 2 36 2 view .LVU120
	str	r3, [r0, #4]	@ unaligned
	str	r3, [r0, #8]	@ unaligned
	str	r3, [r0, #12]	@ unaligned
	.loc 2 37 2 view .LVU121
.LBE18:
.LBE20:
	.loc 1 7 49 is_stmt 0 view .LVU122
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
.LBB21:
.LBB19:
	.loc 2 37 2 view .LVU123
	add	r0, r0, #24
.LVL29:
	.loc 2 37 2 view .LVU124
	bl	LightLock_Init
.LVL30:
	.loc 2 38 2 is_stmt 1 view .LVU125
	mov	r1, #1
	add	r0, r5, #16
	bl	LightEvent_Init
.LVL31:
	.loc 2 38 2 is_stmt 0 view .LVU126
.LBE19:
.LBE21:
	.loc 1 10 2 is_stmt 1 view .LVU127
	.loc 1 10 8 is_stmt 0 view .LVU128
	mov	r0, #30
	bl	APT_SetAppCpuTimeLimit
.LVL32:
	.loc 1 10 5 discriminator 1 view .LVU129
	cmp	r0, #0
	blt	.L37
.L32:
.LBB22:
	.loc 1 14 50 discriminator 3 view .LVU130
	mov	r4, #0
	add	r3, r5, #28
	add	r2, r5, #88
.L33:
	.loc 1 14 50 is_stmt 1 discriminator 3 view .LVU131
	str	r4, [r3]	@ unaligned
	str	r4, [r3, #4]	@ unaligned
	str	r4, [r3, #8]	@ unaligned
	.loc 1 14 46 discriminator 3 view .LVU132
	.loc 1 14 20 discriminator 2 view .LVU133
	add	r3, r3, #12
	cmp	r3, r2
	bne	.L33
.LBE22:
	.loc 1 16 2 view .LVU134
	.loc 1 17 1 view .LVU135
	.loc 1 18 2 is_stmt 0 view .LVU136
	add	r0, sp, #11
	.loc 1 17 6 view .LVU137
	strb	r4, [sp, #11]
	.loc 1 18 2 is_stmt 1 view .LVU138
	bl	APT_CheckNew3DS
.LVL33:
	.loc 1 19 2 view .LVU139
	ldr	r1, .L39
	add	r0, sp, #12
	bl	svcGetThreadPriority
.LVL34:
	.loc 1 20 2 view .LVU140
	.loc 1 21 6 is_stmt 0 discriminator 4 view .LVU141
	ldrb	r1, [sp, #11]	@ zero_extendqisi2
	.loc 1 21 80 view .LVU142
	ldr	r3, [sp, #12]
	.loc 1 21 6 discriminator 4 view .LVU143
	add	r1, r1, #1
	str	r1, [sp]
	mov	r2, #16384
	mov	r1, r5
	ldr	r0, .L39+4
	str	r4, [sp, #4]
	sub	r3, r3, #1
	bl	threadCreate
.LVL35:
	.loc 1 22 5 view .LVU144
	cmp	r0, #0
	.loc 1 20 22 view .LVU145
	str	r0, [r5]
	.loc 1 22 2 is_stmt 1 view .LVU146
	.loc 1 22 5 is_stmt 0 view .LVU147
	beq	.L38
	.loc 1 26 2 is_stmt 1 view .LVU148
	.loc 1 26 23 is_stmt 0 view .LVU149
	mov	r3, #0
	strb	r3, [r5, #88]
	.loc 1 27 1 view .LVU150
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL36:
.L37:
	.cfi_restore_state
	.loc 1 11 3 is_stmt 1 view .LVU151
	ldr	r0, .L39+8
	bl	Crash
.LVL37:
.LBB23:
	.loc 1 14 20 discriminator 2 view .LVU152
	b	.L32
.LVL38:
.L38:
	.loc 1 14 20 is_stmt 0 discriminator 2 view .LVU153
.LBE23:
	.loc 1 23 3 is_stmt 1 view .LVU154
	ldr	r0, .L39+12
	bl	Crash
.LVL39:
	.loc 1 26 2 view .LVU155
	.loc 1 26 23 is_stmt 0 view .LVU156
	mov	r3, #0
	strb	r3, [r5, #88]
	.loc 1 27 1 view .LVU157
	add	sp, sp, #20
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL40:
.L40:
	.loc 1 27 1 view .LVU158
	.align	2
.L39:
	.word	-32768
	.word	ChunkWorker_Mainloop
	.word	.LC0
	.word	.LC1
	.cfi_endproc
.LFE123:
	.size	ChunkWorker_Init, .-ChunkWorker_Init
	.section	.text.ChunkWorker_Deinit,"ax",%progbits
	.align	2
	.global	ChunkWorker_Deinit
	.syntax unified
	.arm
	.type	ChunkWorker_Deinit, %function
ChunkWorker_Deinit:
.LVL41:
.LFB124:
	.loc 1 30 51 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 31 2 view .LVU160
	.loc 1 30 51 is_stmt 0 view .LVU161
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 30 51 view .LVU162
	mov	r6, r0
.LBB27:
.LBB28:
	.loc 2 40 52 view .LVU163
	mov	r7, r6
	.loc 2 40 81 discriminator 1 view .LVU164
	mov	r5, #0
.LBE28:
.LBE27:
	.loc 1 31 15 view .LVU165
	ldr	r3, .L46
	.loc 1 32 2 view .LVU166
	add	r0, r0, #16
.LVL42:
	.loc 1 31 15 view .LVU167
	str	r6, [r3]
	.loc 1 32 2 is_stmt 1 view .LVU168
	bl	LightEvent_Signal
.LVL43:
	.loc 1 33 2 view .LVU169
	mvn	r2, #0
	mvn	r3, #0
	ldr	r0, [r6]
	bl	threadJoin
.LVL44:
	.loc 1 35 2 view .LVU170
	ldr	r0, [r6]
	bl	threadFree
.LVL45:
	.loc 1 36 2 view .LVU171
.LBB30:
.LBI27:
	.loc 2 40 13 view .LVU172
.LBB29:
	.loc 2 40 50 view .LVU173
	.loc 2 40 52 is_stmt 0 view .LVU174
	ldr	r0, [r7, #4]!
.LVL46:
	.loc 2 40 52 view .LVU175
	bl	free
.LVL47:
	add	r4, r6, #28
	.loc 2 40 81 discriminator 1 view .LVU176
	str	r5, [r6, #4]	@ unaligned
	add	r6, r6, #88
.LVL48:
	.loc 2 40 81 discriminator 1 view .LVU177
	str	r5, [r7, #4]	@ unaligned
	str	r5, [r7, #8]	@ unaligned
.LVL49:
	.loc 2 40 81 discriminator 1 view .LVU178
.LBE29:
.LBE30:
	.loc 1 38 2 is_stmt 1 view .LVU179
.LBB31:
	.loc 1 38 7 view .LVU180
	.loc 1 38 20 discriminator 1 view .LVU181
.L42:
	.loc 1 39 3 view .LVU182
	.loc 1 39 5 is_stmt 0 view .LVU183
	ldr	r0, [r4]
	bl	free
.LVL50:
	.loc 1 38 20 discriminator 1 view .LVU184
	add	r4, r4, #12
	.loc 1 39 45 discriminator 1 view .LVU185
	str	r5, [r4, #-12]	@ unaligned
	str	r5, [r4, #-8]	@ unaligned
	str	r5, [r4, #-4]	@ unaligned
	.loc 1 38 46 is_stmt 1 discriminator 3 view .LVU186
	.loc 1 38 20 discriminator 1 view .LVU187
	cmp	r4, r6
	bne	.L42
	pop	{r4, r5, r6, r7, r8, pc}
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
.LBE31:
	.cfi_endproc
.LFE124:
	.size	ChunkWorker_Deinit, .-ChunkWorker_Deinit
	.section	.text.ChunkWorker_Finish,"ax",%progbits
	.align	2
	.global	ChunkWorker_Finish
	.syntax unified
	.arm
	.type	ChunkWorker_Finish, %function
ChunkWorker_Finish:
.LVL51:
.LFB125:
	.loc 1 43 51 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 44 2 view .LVU189
	.loc 1 43 51 is_stmt 0 view .LVU190
	push	{r4, r6, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 43 51 view .LVU191
	mov	r4, r0
	.loc 1 44 2 view .LVU192
	add	r0, r0, #16
.LVL52:
	.loc 1 44 2 view .LVU193
	bl	LightEvent_Signal
.LVL53:
	.loc 1 45 2 is_stmt 1 view .LVU194
	.loc 1 45 70 is_stmt 0 discriminator 4 view .LVU195
	mov	r7, #0
	ldr	r6, .L53
.L49:
	.loc 1 45 70 is_stmt 1 discriminator 4 view .LVU196
	.loc 1 45 30 discriminator 1 view .LVU197
	.loc 1 45 20 is_stmt 0 discriminator 1 view .LVU198
	ldrb	r3, [r4, #88]	@ zero_extendqisi2
	.loc 1 45 30 discriminator 1 view .LVU199
	cmp	r3, #0
	bne	.L50
	.loc 1 45 30 discriminator 3 view .LVU200
	ldr	r3, [r4, #8]
	cmp	r3, #0
	pople	{r4, r6, r7, pc}
.L50:
	.loc 1 45 70 discriminator 4 view .LVU201
	mov	r0, r6
	mov	r1, r7
	bl	svcSleepThread
.LVL54:
	b	.L49
.L54:
	.align	2
.L53:
	.word	1000000
	.cfi_endproc
.LFE125:
	.size	ChunkWorker_Finish, .-ChunkWorker_Finish
	.section	.text.ChunkWorker_AddHandler,"ax",%progbits
	.align	2
	.global	ChunkWorker_AddHandler
	.syntax unified
	.arm
	.type	ChunkWorker_AddHandler, %function
ChunkWorker_AddHandler:
.LVL55:
.LFB126:
	.loc 1 48 95 is_stmt 1 view -0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 49 2 view .LVU203
	.loc 1 48 95 is_stmt 0 view .LVU204
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 14, -12
	.loc 1 48 95 view .LVU205
	mov	r5, r0
	add	r1, r1, r1, lsl #1
.LVL56:
	.loc 1 48 95 view .LVU206
	lsl	r4, r1, #2
	add	r6, sp, #16
	stm	r6, {r2, r3}
	.loc 1 49 4 view .LVU207
	add	r1, r4, #32
	add	r2, r4, #36
	.loc 1 49 24 view .LVU208
	add	r0, r4, #28
.LVL57:
	.loc 1 49 4 view .LVU209
	mov	r3, #12
	add	r2, r5, r2
	add	r1, r5, r1
	add	r0, r5, r0
	bl	vec_expand_
.LVL58:
	.loc 1 49 195 discriminator 1 view .LVU210
	cmp	r0, #0
	bne	.L55
	.loc 1 49 227 discriminator 1 view .LVU211
	add	r5, r5, r4
.LVL59:
	.loc 1 49 263 discriminator 1 view .LVU212
	ldr	r2, [r5, #32]
	.loc 1 49 227 discriminator 1 view .LVU213
	ldr	r3, [r5, #28]
	.loc 1 49 271 discriminator 1 view .LVU214
	add	r1, r2, #1
	.loc 1 49 275 discriminator 1 view .LVU215
	add	r2, r2, r2, lsl #1
	add	r3, r3, r2, lsl #2
	.loc 1 49 271 discriminator 1 view .LVU216
	str	r1, [r5, #32]
	.loc 1 49 275 discriminator 1 view .LVU217
	ldm	r6, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
.L55:
	.loc 1 50 1 view .LVU218
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE126:
	.size	ChunkWorker_AddHandler, .-ChunkWorker_AddHandler
	.section	.text.ChunkWorker_SetHandlerActive,"ax",%progbits
	.align	2
	.global	ChunkWorker_SetHandlerActive
	.syntax unified
	.arm
	.type	ChunkWorker_SetHandlerActive, %function
ChunkWorker_SetHandlerActive:
.LVL60:
.LFB127:
	.loc 1 52 106 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 53 2 view .LVU220
.LBB32:
	.loc 1 53 7 view .LVU221
	.loc 1 53 23 discriminator 1 view .LVU222
	.loc 1 53 51 is_stmt 0 discriminator 1 view .LVU223
	add	r1, r1, r1, lsl #1
.LVL61:
	.loc 1 53 51 discriminator 1 view .LVU224
	add	r0, r0, r1, lsl #2
.LVL62:
	.loc 1 53 51 discriminator 1 view .LVU225
.LBE32:
	.loc 1 52 106 view .LVU226
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB33:
	.loc 1 53 51 discriminator 1 view .LVU227
	ldr	lr, [r0, #32]
	.loc 1 53 23 discriminator 1 view .LVU228
	cmp	lr, #0
	ldreq	pc, [sp], #4
	.loc 1 53 14 view .LVU229
	mov	ip, #0
	ldr	r1, [r0, #28]
	b	.L61
.LVL63:
.L60:
	.loc 1 53 23 discriminator 1 view .LVU230
	cmp	ip, lr
	add	r1, r1, #12
	ldreq	pc, [sp], #4
.LVL64:
.L61:
	.loc 1 54 3 is_stmt 1 view .LVU231
	.loc 1 53 61 discriminator 2 view .LVU232
	.loc 1 54 6 is_stmt 0 view .LVU233
	ldr	r0, [r1, #4]
	.loc 1 53 61 discriminator 2 view .LVU234
	add	ip, ip, #1
.LVL65:
	.loc 1 53 23 is_stmt 1 discriminator 1 view .LVU235
	.loc 1 54 6 is_stmt 0 view .LVU236
	cmp	r0, r2
	bne	.L60
	.loc 1 55 4 is_stmt 1 view .LVU237
	.loc 1 55 46 is_stmt 0 view .LVU238
	strb	r3, [r1, #8]
	.loc 1 56 4 is_stmt 1 view .LVU239
	ldr	pc, [sp], #4
.LBE33:
	.cfi_endproc
.LFE127:
	.size	ChunkWorker_SetHandlerActive, .-ChunkWorker_SetHandlerActive
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	workerToStop, %object
	.size	workerToStop, 4
workerToStop:
	.space	4
	.text
.Letext0:
	.file 3 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 6 "C:/devkitPro/libctru/include/3ds/types.h"
	.file 7 "C:/devkitPro/libctru/include/3ds/svc.h"
	.file 8 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 9 "C:/devkitPro/libctru/include/3ds/synchronization.h"
	.file 10 "C:/devkitPro/libctru/include/3ds/thread.h"
	.file 11 "C:/devkitPro/libctru/include/3ds/services/csnd.h"
	.file 12 "C:/devkitPro/libctru/include/3ds/services/ndm.h"
	.file 13 "C:/devkitPro/libctru/include/3ds/gpu/enums.h"
	.file 14 "C:/devkitPro/libctru/include/3ds/ndsp/channel.h"
	.file 15 "C:/devkitPro/libctru/include/3ds/applets/error.h"
	.file 16 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 17 "C:/Users/Elias/CLionProjects/3DSCraft/include/rendering/VBOCache.h"
	.file 18 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Chunk.h"
	.file 19 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/ChunkWorker.h"
	.file 20 "C:/Users/Elias/CLionProjects/3DSCraft/dependencies/vec/vec.h"
	.file 21 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 22 "C:/devkitPro/libctru/include/3ds/services/apt.h"
	.file 23 "C:/devkitPro/devkitARM/arm-none-eabi/include/string.h"
	.file 24 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Crash.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xee5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x24
	.4byte	.LASF188
	.byte	0x1d
	.4byte	.LASF189
	.4byte	.LASF190
	.4byte	.LLRL25
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x34
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x61
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x74
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x67
	.byte	0x17
	.4byte	0x9a
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x26
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x42
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x38
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0xa1
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.4byte	.LASF22
	.uleb128 0x16
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0xd8
	.uleb128 0x16
	.ascii	"u64\000"
	.byte	0x18
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x16
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x16
	.ascii	"s64\000"
	.byte	0x1d
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x29
	.byte	0xd
	.4byte	0x10f
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x2a
	.byte	0xd
	.4byte	0x125
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2b
	.byte	0x10
	.4byte	0x15f
	.uleb128 0x6
	.4byte	0x164
	.uleb128 0x1c
	.4byte	0x16f
	.uleb128 0x2
	.4byte	0x16f
	.byte	0
	.uleb128 0x26
	.byte	0x4
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.4byte	.LASF26
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.4byte	.LASF27
	.uleb128 0xb
	.byte	0x1
	.4byte	0x34
	.byte	0x7
	.byte	0x69
	.byte	0xe
	.4byte	0x19f
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x6d
	.byte	0x3
	.4byte	0x17f
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF32
	.uleb128 0x27
	.4byte	0x1ab
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF33
	.uleb128 0x1d
	.4byte	0x1b7
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x7
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0xa
	.byte	0x11
	.4byte	0x1c3
	.uleb128 0xc
	.byte	0x8
	.byte	0x9
	.byte	0x13
	.byte	0x9
	.4byte	0x1ff
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x9
	.byte	0x15
	.byte	0x6
	.4byte	0x125
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x9
	.byte	0x16
	.byte	0xc
	.4byte	0x1cf
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x17
	.byte	0x3
	.4byte	0x1db
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xa
	.byte	0x16
	.byte	0x1c
	.4byte	0x217
	.uleb128 0x6
	.4byte	0x21c
	.uleb128 0x28
	.4byte	.LASF191
	.uleb128 0x6
	.4byte	0x1ab
	.uleb128 0xb
	.byte	0x1
	.4byte	0x34
	.byte	0xb
	.byte	0x28
	.byte	0x1
	.4byte	0x24c
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x34
	.byte	0xb
	.byte	0x31
	.byte	0x1
	.4byte	0x272
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x34
	.byte	0xc
	.byte	0x21
	.byte	0xe
	.4byte	0x298
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x1b2
	.uleb128 0x29
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0xd
	.2byte	0x1f6
	.byte	0x1
	.4byte	0x2b9
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x34
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.4byte	0x2d9
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.4byte	0x61
	.byte	0xf
	.byte	0x9
	.byte	0x1
	.4byte	0x2f5
	.uleb128 0x1e
	.4byte	.LASF57
	.2byte	0x100
	.uleb128 0x1e
	.4byte	.LASF58
	.2byte	0x200
	.byte	0
	.uleb128 0x6
	.4byte	0x221
	.uleb128 0x6
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x10
	.byte	0x8
	.byte	0x11
	.4byte	0xb4
	.uleb128 0xb
	.byte	0x1
	.4byte	0x34
	.byte	0x10
	.byte	0xa
	.byte	0x6
	.4byte	0x409
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x27
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x11
	.byte	0x8
	.byte	0x9
	.4byte	0x42d
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x11
	.byte	0x9
	.byte	0x9
	.4byte	0xfc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x11
	.byte	0xa
	.byte	0x8
	.4byte	0x16f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x11
	.byte	0xb
	.byte	0x3
	.4byte	0x409
	.uleb128 0x2a
	.2byte	0x2030
	.byte	0x12
	.byte	0x10
	.byte	0x9
	.4byte	0x4eb
	.uleb128 0x1a
	.ascii	"y\000"
	.byte	0x11
	.byte	0x6
	.4byte	0xad
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x12
	.byte	0x12
	.byte	0x8
	.4byte	0x4eb
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x13
	.byte	0xa
	.4byte	0x507
	.2byte	0x1004
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x15
	.byte	0xb
	.4byte	0xd8
	.2byte	0x2004
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x17
	.byte	0xb
	.4byte	0xc0
	.2byte	0x2008
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x19
	.byte	0x6
	.4byte	0x1b7
	.2byte	0x200a
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x1a
	.byte	0xb
	.4byte	0xd8
	.2byte	0x200c
	.uleb128 0x2b
	.ascii	"vbo\000"
	.byte	0x12
	.byte	0x1c
	.byte	0xc
	.4byte	0x42d
	.2byte	0x2010
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x1c
	.byte	0x11
	.4byte	0x42d
	.2byte	0x2018
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x1d
	.byte	0x9
	.4byte	0xfc
	.2byte	0x2020
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x1d
	.byte	0x13
	.4byte	0xfc
	.2byte	0x2024
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x1e
	.byte	0xb
	.4byte	0xd8
	.2byte	0x2028
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x1f
	.byte	0x6
	.4byte	0x1b7
	.2byte	0x202c
	.byte	0
	.uleb128 0x13
	.4byte	0x2ff
	.4byte	0x507
	.uleb128 0xa
	.4byte	0x2d
	.byte	0xf
	.uleb128 0xa
	.4byte	0x2d
	.byte	0xf
	.uleb128 0xa
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	0xb4
	.4byte	0x523
	.uleb128 0xa
	.4byte	0x2d
	.byte	0xf
	.uleb128 0xa
	.4byte	0x2d
	.byte	0xf
	.uleb128 0xa
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x12
	.byte	0x20
	.byte	0x3
	.4byte	0x439
	.uleb128 0xb
	.byte	0x1
	.4byte	0x34
	.byte	0x12
	.byte	0x22
	.byte	0xe
	.4byte	0x54f
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x12
	.byte	0x26
	.byte	0x3
	.4byte	0x52f
	.uleb128 0x2c
	.4byte	0x102ac
	.byte	0x12
	.byte	0x28
	.byte	0x9
	.4byte	0x617
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x12
	.byte	0x2a
	.byte	0xb
	.4byte	0xd8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x12
	.byte	0x2b
	.byte	0xb
	.4byte	0xd8
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x12
	.byte	0x2d
	.byte	0xb
	.4byte	0xd8
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x12
	.byte	0x2f
	.byte	0x13
	.4byte	0x54f
	.byte	0xc
	.uleb128 0x1a
	.ascii	"x\000"
	.byte	0x31
	.byte	0x6
	.4byte	0xad
	.byte	0x10
	.uleb128 0x1a
	.ascii	"z\000"
	.byte	0x31
	.byte	0x9
	.4byte	0xad
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x12
	.byte	0x32
	.byte	0xa
	.4byte	0x617
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x34
	.byte	0xa
	.4byte	0x627
	.4byte	0x10198
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x35
	.byte	0xb
	.4byte	0xd8
	.4byte	0x10298
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0x37
	.byte	0x9
	.4byte	0xfc
	.4byte	0x1029c
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x39
	.byte	0xb
	.4byte	0xd8
	.4byte	0x102a0
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0x3a
	.byte	0x6
	.4byte	0x1b7
	.4byte	0x102a4
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x3c
	.byte	0x6
	.4byte	0xad
	.4byte	0x102a8
	.byte	0
	.uleb128 0x13
	.4byte	0x523
	.4byte	0x627
	.uleb128 0xa
	.4byte	0x2d
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.4byte	0xb4
	.4byte	0x63d
	.uleb128 0xa
	.4byte	0x2d
	.byte	0xf
	.uleb128 0xa
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x12
	.byte	0x3d
	.byte	0x3
	.4byte	0x55b
	.uleb128 0xb
	.byte	0x1
	.4byte	0x34
	.byte	0x2
	.byte	0xd
	.byte	0xe
	.4byte	0x67b
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x2
	.byte	0x14
	.byte	0x3
	.4byte	0x649
	.uleb128 0xc
	.byte	0xc
	.byte	0x2
	.byte	0x16
	.byte	0x9
	.4byte	0x6b8
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0x2
	.byte	0x17
	.byte	0x11
	.4byte	0x67b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x2
	.byte	0x18
	.byte	0x9
	.4byte	0x6b8
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x2
	.byte	0x19
	.byte	0xb
	.4byte	0xd8
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x63d
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x2
	.byte	0x1a
	.byte	0x3
	.4byte	0x687
	.uleb128 0xc
	.byte	0xc
	.byte	0x2
	.byte	0x1d
	.byte	0x2
	.4byte	0x6fa
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x2
	.byte	0x1d
	.byte	0x17
	.4byte	0x6fa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x2
	.byte	0x1d
	.byte	0x21
	.4byte	0xad
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x2
	.byte	0x1d
	.byte	0x29
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x6bd
	.uleb128 0xc
	.byte	0x18
	.byte	0x2
	.byte	0x1c
	.byte	0x9
	.4byte	0x730
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x2
	.byte	0x1d
	.byte	0x35
	.4byte	0x6c9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x2
	.byte	0x1f
	.byte	0xd
	.4byte	0x1ff
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0x2
	.byte	0x20
	.byte	0xc
	.4byte	0x1cf
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0x2
	.byte	0x21
	.byte	0x3
	.4byte	0x6ff
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x13
	.byte	0x9
	.byte	0x10
	.4byte	0x748
	.uleb128 0x6
	.4byte	0x74d
	.uleb128 0x1c
	.4byte	0x762
	.uleb128 0x2
	.4byte	0x762
	.uleb128 0x2
	.4byte	0x6bd
	.uleb128 0x2
	.4byte	0x16f
	.byte	0
	.uleb128 0x6
	.4byte	0x730
	.uleb128 0xc
	.byte	0xc
	.byte	0x13
	.byte	0xa
	.byte	0x9
	.4byte	0x798
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0x13
	.byte	0xb
	.byte	0xd
	.4byte	0x73c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x13
	.byte	0xc
	.byte	0x8
	.4byte	0x16f
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x13
	.byte	0xd
	.byte	0x6
	.4byte	0x1b7
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0x13
	.byte	0xe
	.byte	0x3
	.4byte	0x767
	.uleb128 0xc
	.byte	0xc
	.byte	0x13
	.byte	0x15
	.byte	0x2
	.4byte	0x7d5
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x13
	.byte	0x15
	.byte	0x1a
	.4byte	0x7d5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x13
	.byte	0x15
	.byte	0x24
	.4byte	0xad
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x13
	.byte	0x15
	.byte	0x2c
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x798
	.uleb128 0xc
	.byte	0x5c
	.byte	0x13
	.byte	0x10
	.byte	0x9
	.4byte	0x818
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0x13
	.byte	0x11
	.byte	0x9
	.4byte	0x20b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x13
	.byte	0x13
	.byte	0xc
	.4byte	0x730
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0x13
	.byte	0x15
	.byte	0x38
	.4byte	0x818
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0x13
	.byte	0x17
	.byte	0xf
	.4byte	0x1be
	.byte	0x58
	.byte	0
	.uleb128 0x13
	.4byte	0x7a4
	.4byte	0x828
	.uleb128 0xa
	.4byte	0x2d
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0x13
	.byte	0x18
	.byte	0x3
	.4byte	0x7da
	.uleb128 0x1d
	.4byte	0x828
	.uleb128 0x17
	.4byte	.LASF174
	.byte	0x1d
	.byte	0x1e
	.4byte	0x84a
	.uleb128 0x5
	.byte	0x3
	.4byte	workerToStop
	.uleb128 0x6
	.4byte	0x834
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0x9
	.byte	0xca
	.4byte	0x860
	.uleb128 0x2
	.4byte	0x860
	.byte	0
	.uleb128 0x6
	.4byte	0x1cf
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0x14
	.byte	0xa1
	.byte	0x5
	.4byte	0xad
	.4byte	0x88f
	.uleb128 0x2
	.4byte	0x2f5
	.uleb128 0x2
	.4byte	0x2fa
	.uleb128 0x2
	.4byte	0x2fa
	.uleb128 0x2
	.4byte	0xad
	.uleb128 0x2
	.4byte	0xad
	.byte	0
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0x9
	.byte	0xbd
	.4byte	0x8a0
	.uleb128 0x2
	.4byte	0x860
	.byte	0
	.uleb128 0x15
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x11f
	.4byte	0x8b2
	.uleb128 0x2
	.4byte	0x8b2
	.byte	0
	.uleb128 0x6
	.4byte	0x1ff
	.uleb128 0x15
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x138
	.4byte	0x8c9
	.uleb128 0x2
	.4byte	0x8b2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF160
	.byte	0x14
	.byte	0x9f
	.byte	0x5
	.4byte	0xad
	.4byte	0x8ee
	.uleb128 0x2
	.4byte	0x2f5
	.uleb128 0x2
	.4byte	0x2fa
	.uleb128 0x2
	.4byte	0x2fa
	.uleb128 0x2
	.4byte	0xad
	.byte	0
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x7
	.2byte	0x35b
	.4byte	0x900
	.uleb128 0x2
	.4byte	0x130
	.byte	0
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x15
	.byte	0x5e
	.4byte	0x911
	.uleb128 0x2
	.4byte	0x16f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0xa
	.byte	0x48
	.4byte	0x922
	.uleb128 0x2
	.4byte	0x20b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF164
	.byte	0xa
	.byte	0x4f
	.byte	0x8
	.4byte	0x147
	.4byte	0x93d
	.uleb128 0x2
	.4byte	0x20b
	.uleb128 0x2
	.4byte	0x11a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0x9
	.2byte	0x12b
	.4byte	0x94f
	.uleb128 0x2
	.4byte	0x8b2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x119
	.4byte	0x966
	.uleb128 0x2
	.4byte	0x8b2
	.uleb128 0x2
	.4byte	0x19f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x9
	.byte	0xb7
	.4byte	0x977
	.uleb128 0x2
	.4byte	0x860
	.byte	0
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0xa
	.byte	0x33
	.byte	0x8
	.4byte	0x20b
	.4byte	0x9a6
	.uleb128 0x2
	.4byte	0x153
	.uleb128 0x2
	.4byte	0x16f
	.uleb128 0x2
	.4byte	0xfc
	.uleb128 0x2
	.4byte	0xad
	.uleb128 0x2
	.4byte	0xad
	.uleb128 0x2
	.4byte	0x1b7
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x7
	.2byte	0x35e
	.4byte	0x147
	.4byte	0x9c1
	.uleb128 0x2
	.4byte	0x9c1
	.uleb128 0x2
	.4byte	0x13b
	.byte	0
	.uleb128 0x6
	.4byte	0x125
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x16
	.2byte	0x206
	.4byte	0x147
	.4byte	0x9dc
	.uleb128 0x2
	.4byte	0x9dc
	.byte	0
	.uleb128 0x6
	.4byte	0x1b7
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0x17
	.byte	0x21
	.byte	0x8
	.4byte	0x16f
	.4byte	0xa01
	.uleb128 0x2
	.4byte	0x16f
	.uleb128 0x2
	.4byte	0xad
	.uleb128 0x2
	.4byte	0xfc
	.byte	0
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0x18
	.byte	0x3
	.4byte	0xa13
	.uleb128 0x2
	.4byte	0x298
	.uleb128 0x2d
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x16
	.2byte	0x1fa
	.4byte	0x147
	.4byte	0xa29
	.uleb128 0x2
	.4byte	0x10f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x3d
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbac
	.uleb128 0xd
	.4byte	.LASF180
	.byte	0x3d
	.byte	0x21
	.4byte	0x16f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xc
	.byte	0xc
	.byte	0x1
	.byte	0x3e
	.byte	0x2
	.4byte	0xa81
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x1
	.byte	0x3e
	.byte	0x17
	.4byte	0x6fa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x1
	.byte	0x3e
	.byte	0x21
	.4byte	0xad
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x1
	.byte	0x3e
	.byte	0x29
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF175
	.byte	0x3e
	.byte	0x35
	.4byte	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.4byte	.LASF176
	.byte	0x40
	.4byte	0xbac
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x18
	.4byte	.LLRL6
	.4byte	0xaf4
	.uleb128 0x12
	.ascii	"i__\000"
	.byte	0x4a
	.byte	0xc
	.4byte	0xad
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x12
	.ascii	"n__\000"
	.byte	0x4a
	.byte	0x11
	.4byte	0xad
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x865
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LLRL2
	.4byte	0xb52
	.uleb128 0x1f
	.4byte	.LASF177
	.byte	0x4f
	.4byte	0x6bd
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x18
	.4byte	.LLRL4
	.4byte	0xb48
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x52
	.byte	0xe
	.4byte	0xad
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2e
	.4byte	.LVL15
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.4byte	0xb3e
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LVL16
	.4byte	0x8ee
	.byte	0
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x8ee
	.byte	0
	.uleb128 0x8
	.4byte	.LVL2
	.4byte	0x8b7
	.4byte	0xb66
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL3
	.4byte	0x8a0
	.4byte	0xb7a
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	0x88f
	.4byte	0xb8e
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL8
	.4byte	0x84f
	.4byte	0xba2
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x900
	.byte	0
	.uleb128 0x6
	.4byte	0x828
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x34
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1b
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x34
	.byte	0x30
	.4byte	0xbac
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0x34
	.byte	0x4c
	.4byte	0x67b
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x20
	.4byte	.LASF148
	.byte	0x58
	.4byte	0x16f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF149
	.byte	0x62
	.4byte	0x1b7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LLRL23
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x35
	.byte	0xe
	.4byte	0xfc
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x30
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc95
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x30
	.byte	0x2a
	.4byte	0xbac
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0x30
	.byte	0x46
	.4byte	0x67b
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x30
	.ascii	"obj\000"
	.byte	0x1
	.byte	0x30
	.byte	0x5a
	.4byte	0x798
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x19
	.4byte	.LVL58
	.4byte	0x8c9
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0x2b
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcda
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x2b
	.byte	0x26
	.4byte	0xbac
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x8
	.4byte	.LVL53
	.4byte	0x93d
	.4byte	0xcd0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.byte	0
	.uleb128 0xe
	.4byte	.LVL54
	.4byte	0x8ee
	.byte	0
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0x1e
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7a
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x1e
	.byte	0x26
	.4byte	0xbac
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x31
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0xd29
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x26
	.byte	0xb
	.4byte	0xad
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xe
	.4byte	.LVL50
	.4byte	0x900
	.byte	0
	.uleb128 0x21
	.4byte	0xeba
	.4byte	.LBI27
	.byte	.LVU172
	.4byte	.LLRL15
	.byte	0x24
	.4byte	0xd53
	.uleb128 0x22
	.4byte	0xec7
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xe
	.4byte	.LVL47
	.4byte	0x900
	.byte	0
	.uleb128 0x8
	.4byte	.LVL43
	.4byte	0x93d
	.4byte	0xd67
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 16
	.byte	0
	.uleb128 0xe
	.4byte	.LVL44
	.4byte	0x922
	.uleb128 0xe
	.4byte	.LVL45
	.4byte	0x911
	.byte	0
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x7
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeba
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x7
	.byte	0x24
	.4byte	0xbac
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x17
	.4byte	.LASF185
	.byte	0x10
	.byte	0x6
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LASF186
	.byte	0x11
	.byte	0x6
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x18
	.4byte	.LLRL12
	.4byte	0xdd8
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0xe
	.byte	0xb
	.4byte	0xad
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x21
	.4byte	0xed3
	.4byte	.LBI16
	.byte	.LVU119
	.4byte	.LLRL10
	.byte	0x8
	.4byte	0xe22
	.uleb128 0x22
	.4byte	0xedc
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x8
	.4byte	.LVL30
	.4byte	0x966
	.4byte	0xe0c
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 24
	.byte	0
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0x94f
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 16
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL32
	.4byte	0xa13
	.4byte	0xe35
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x8
	.4byte	.LVL33
	.4byte	0x9c6
	.4byte	0xe49
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x8
	.4byte	.LVL34
	.4byte	0x9a6
	.4byte	0xe64
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0x8000
	.byte	0
	.uleb128 0x8
	.4byte	.LVL35
	.4byte	0x977
	.4byte	0xe8f
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	ChunkWorker_Mainloop
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL37
	.4byte	0xa01
	.4byte	0xea6
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL39
	.4byte	0xa01
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF187
	.byte	0x2
	.byte	0x28
	.byte	0xd
	.byte	0x3
	.4byte	0xed3
	.uleb128 0x23
	.4byte	.LASF142
	.byte	0x28
	.byte	0x29
	.4byte	0x762
	.byte	0
	.uleb128 0x33
	.4byte	.LASF192
	.byte	0x2
	.byte	0x23
	.byte	0xd
	.byte	0x3
	.uleb128 0x23
	.4byte	.LASF142
	.byte	0x23
	.byte	0x27
	.4byte	0x762
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
	.uleb128 0x5
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.sleb128 18
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
	.uleb128 0x10
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 52
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
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
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x83
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 .LVU10
	.uleb128 .LVU10
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
	.uleb128 .LFE128-.LVL0
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
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL1-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LFE128-.LVL1
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
.LVUS7:
	.uleb128 .LVU100
	.uleb128 .LVU105
.LLST7:
	.byte	0x8
	.4byte	.LVL23
	.uleb128 .LVL25-.LVL23
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU25
	.uleb128 .LVU28
	.uleb128 .LVU100
	.uleb128 .LVU104
.LLST8:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL23-.LVL5
	.uleb128 .LVL24-.LVL5
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS3:
	.uleb128 .LVU47
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU82
	.uleb128 .LVU86
	.uleb128 .LVU100
.LLST3:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x11
	.byte	0x7e
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL12-.LVL10
	.uleb128 0x11
	.byte	0x7e
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL12-.LVL10
	.uleb128 .LVL14-.LVL10
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL14-.LVL10
	.uleb128 .LVL20-.LVL10
	.uleb128 0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL22-.LVL10
	.uleb128 .LVL23-.LVL10
	.uleb128 0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS5:
	.uleb128 .LVU52
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU69
.LLST5:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL18-.LVL13
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL60
	.byte	0x4
	.uleb128 .LVL60-.LVL60
	.uleb128 .LVL62-.LVL60
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL62-.LVL60
	.uleb128 .LFE127-.LVL60
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
.LVUS22:
	.uleb128 0
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL60
	.byte	0x4
	.uleb128 .LVL60-.LVL60
	.uleb128 .LVL61-.LVL60
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL61-.LVL60
	.uleb128 .LFE127-.LVL60
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU222
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 0
.LLST24:
	.byte	0x6
	.4byte	.LVL60
	.byte	0x4
	.uleb128 .LVL60-.LVL60
	.uleb128 .LVL63-.LVL60
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.LVL60
	.uleb128 .LFE127-.LVL60
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL55
	.byte	0x4
	.uleb128 .LVL55-.LVL55
	.uleb128 .LVL57-.LVL55
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL57-.LVL55
	.uleb128 .LVL59-.LVL55
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL59-.LVL55
	.uleb128 .LFE126-.LVL55
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
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL55
	.byte	0x4
	.uleb128 .LVL55-.LVL55
	.uleb128 .LVL56-.LVL55
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL56-.LVL55
	.uleb128 .LFE126-.LVL55
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL52-.LVL51
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL52-.LVL51
	.uleb128 .LFE125-.LVL51
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL41
	.byte	0x4
	.uleb128 .LVL41-.LVL41
	.uleb128 .LVL42-.LVL41
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL42-.LVL41
	.uleb128 .LVL48-.LVL41
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL48-.LVL41
	.uleb128 .LFE124-.LVL41
	.uleb128 0x4
	.byte	0x76
	.sleb128 -88
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU181
	.uleb128 .LVU182
.LLST17:
	.byte	0x8
	.4byte	.LVL49
	.uleb128 .LVL49-.LVL49
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU172
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU178
.LLST16:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL46-.LVL45
	.uleb128 0x3
	.byte	0x76
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.LVL45
	.uleb128 .LVL49-.LVL45
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL29-.LVL27
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL29-.LVL27
	.uleb128 .LVL40-.LVL27
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL40-.LVL27
	.uleb128 .LFE123-.LVL27
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
.LVUS13:
	.uleb128 .LVU152
	.uleb128 .LVU153
.LLST13:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU119
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU126
.LLST11:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL29-.LVL28
	.uleb128 0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL28
	.uleb128 .LVL31-.LVL28
	.uleb128 0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
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
	.uleb128 .LBB7-.LBB2
	.uleb128 .LBE7-.LBB2
	.byte	0x4
	.uleb128 .LBB9-.LBB2
	.uleb128 .LBE9-.LBB2
	.byte	0x4
	.uleb128 .LBB10-.LBB2
	.uleb128 .LBE10-.LBB2
	.byte	0x4
	.uleb128 .LBB11-.LBB2
	.uleb128 .LBE11-.LBB2
	.byte	0
.LLRL4:
	.byte	0x5
	.4byte	.LBB3
	.byte	0x4
	.uleb128 .LBB3-.LBB3
	.uleb128 .LBE3-.LBB3
	.byte	0x4
	.uleb128 .LBB4-.LBB3
	.uleb128 .LBE4-.LBB3
	.byte	0x4
	.uleb128 .LBB5-.LBB3
	.uleb128 .LBE5-.LBB3
	.byte	0x4
	.uleb128 .LBB6-.LBB3
	.uleb128 .LBE6-.LBB3
	.byte	0
.LLRL6:
	.byte	0x5
	.4byte	.LBB8
	.byte	0x4
	.uleb128 .LBB8-.LBB8
	.uleb128 .LBE8-.LBB8
	.byte	0x4
	.uleb128 .LBB12-.LBB8
	.uleb128 .LBE12-.LBB8
	.byte	0
.LLRL10:
	.byte	0x5
	.4byte	.LBB16
	.byte	0x4
	.uleb128 .LBB16-.LBB16
	.uleb128 .LBE16-.LBB16
	.byte	0x4
	.uleb128 .LBB20-.LBB16
	.uleb128 .LBE20-.LBB16
	.byte	0x4
	.uleb128 .LBB21-.LBB16
	.uleb128 .LBE21-.LBB16
	.byte	0
.LLRL12:
	.byte	0x5
	.4byte	.LBB22
	.byte	0x4
	.uleb128 .LBB22-.LBB22
	.uleb128 .LBE22-.LBB22
	.byte	0x4
	.uleb128 .LBB23-.LBB22
	.uleb128 .LBE23-.LBB22
	.byte	0
.LLRL15:
	.byte	0x5
	.4byte	.LBB27
	.byte	0x4
	.uleb128 .LBB27-.LBB27
	.uleb128 .LBE27-.LBB27
	.byte	0x4
	.uleb128 .LBB30-.LBB27
	.uleb128 .LBE30-.LBB27
	.byte	0
.LLRL23:
	.byte	0x5
	.4byte	.LBB32
	.byte	0x4
	.uleb128 .LBB32-.LBB32
	.uleb128 .LBE32-.LBB32
	.byte	0x4
	.uleb128 .LBB33-.LBB32
	.uleb128 .LBE33-.LBB32
	.byte	0
.LLRL25:
	.byte	0x7
	.4byte	.LFB128
	.uleb128 .LFE128-.LFB128
	.byte	0x7
	.4byte	.LFB123
	.uleb128 .LFE123-.LFB123
	.byte	0x7
	.4byte	.LFB124
	.uleb128 .LFE124-.LFB124
	.byte	0x7
	.4byte	.LFB125
	.uleb128 .LFE125-.LFB125
	.byte	0x7
	.4byte	.LFB126
	.uleb128 .LFE126-.LFB126
	.byte	0x7
	.4byte	.LFB127
	.uleb128 .LFE127-.LFB127
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF115:
	.ascii	"ChunkGen_Empty\000"
.LASF191:
	.ascii	"Thread_tag\000"
.LASF141:
	.ascii	"capacity\000"
.LASF87:
	.ascii	"Block_Lava\000"
.LASF79:
	.ascii	"Block_Snow\000"
.LASF21:
	.ascii	"size_t\000"
.LASF185:
	.ascii	"prio\000"
.LASF138:
	.ascii	"WorkerItem\000"
.LASF20:
	.ascii	"uint64_t\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF48:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF192:
	.ascii	"WorkQueue_Init\000"
.LASF24:
	.ascii	"Result\000"
.LASF105:
	.ascii	"revision\000"
.LASF41:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF176:
	.ascii	"chunkworker\000"
.LASF123:
	.ascii	"clusters\000"
.LASF169:
	.ascii	"svcGetThreadPriority\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"__int64_t\000"
.LASF162:
	.ascii	"free\000"
.LASF135:
	.ascii	"WorkerItemType\000"
.LASF107:
	.ascii	"empty\000"
.LASF56:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF13:
	.ascii	"long long int\000"
.LASF3:
	.ascii	"signed char\000"
.LASF110:
	.ascii	"vertices\000"
.LASF89:
	.ascii	"Block_Coal_Ore\000"
.LASF156:
	.ascii	"LightLock_Lock\000"
.LASF82:
	.ascii	"Block_Sandstone\000"
.LASF149:
	.ascii	"active\000"
.LASF36:
	.ascii	"state\000"
.LASF65:
	.ascii	"Block_Sand\000"
.LASF9:
	.ascii	"long int\000"
.LASF163:
	.ascii	"threadFree\000"
.LASF122:
	.ascii	"genProgress\000"
.LASF182:
	.ascii	"ChunkWorker_Finish\000"
.LASF59:
	.ascii	"Block\000"
.LASF187:
	.ascii	"WorkQueue_Deinit\000"
.LASF158:
	.ascii	"LightEvent_Wait\000"
.LASF147:
	.ascii	"func\000"
.LASF151:
	.ascii	"thread\000"
.LASF86:
	.ascii	"Block_Water\000"
.LASF84:
	.ascii	"Block_Crafting_Table\000"
.LASF31:
	.ascii	"ResetType\000"
.LASF142:
	.ascii	"queue\000"
.LASF26:
	.ascii	"double\000"
.LASF85:
	.ascii	"Block_Grass_Path\000"
.LASF28:
	.ascii	"RESET_ONESHOT\000"
.LASF148:
	.ascii	"this\000"
.LASF189:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/world/"
	.ascii	"ChunkWorker.c\000"
.LASF83:
	.ascii	"Block_Smooth_Stone\000"
.LASF63:
	.ascii	"Block_Grass\000"
.LASF75:
	.ascii	"Block_Coarse\000"
.LASF29:
	.ascii	"RESET_STICKY\000"
.LASF81:
	.ascii	"Block_Netherrack\000"
.LASF117:
	.ascii	"ChunkGen_Finished\000"
.LASF129:
	.ascii	"WorkerItemType_Load\000"
.LASF111:
	.ascii	"transparentVertices\000"
.LASF150:
	.ascii	"WorkerFuncObj\000"
.LASF155:
	.ascii	"LightLock_Unlock\000"
.LASF101:
	.ascii	"memory\000"
.LASF25:
	.ascii	"ThreadFunc\000"
.LASF112:
	.ascii	"vboRevision\000"
.LASF174:
	.ascii	"workerToStop\000"
.LASF175:
	.ascii	"privateQueue\000"
.LASF119:
	.ascii	"tasksRunning\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF70:
	.ascii	"Block_Stonebrick\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF64:
	.ascii	"Block_Cobblestone\000"
.LASF173:
	.ascii	"APT_SetAppCpuTimeLimit\000"
.LASF178:
	.ascii	"ChunkWorker_Mainloop\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF146:
	.ascii	"WorkerFunc\000"
.LASF88:
	.ascii	"Block_Iron_Ore\000"
.LASF73:
	.ascii	"Block_Wool\000"
.LASF114:
	.ascii	"Cluster\000"
.LASF61:
	.ascii	"Block_Stone\000"
.LASF139:
	.ascii	"data\000"
.LASF100:
	.ascii	"size\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF42:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF136:
	.ascii	"type\000"
.LASF134:
	.ascii	"WorkerItemTypes_Count\000"
.LASF96:
	.ascii	"Block_Iron_Block\000"
.LASF93:
	.ascii	"Block_Gold_Block\000"
.LASF34:
	.ascii	"_LOCK_T\000"
.LASF183:
	.ascii	"ChunkWorker_Deinit\000"
.LASF104:
	.ascii	"metadataLight\000"
.LASF157:
	.ascii	"LightEvent_Clear\000"
.LASF74:
	.ascii	"Block_Bedrock\000"
.LASF177:
	.ascii	"item\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF160:
	.ascii	"vec_expand_\000"
.LASF179:
	.ascii	"ChunkWorker_SetHandlerActive\000"
.LASF116:
	.ascii	"ChunkGen_Terrain\000"
.LASF152:
	.ascii	"handler\000"
.LASF103:
	.ascii	"blocks\000"
.LASF71:
	.ascii	"Block_Brick\000"
.LASF80:
	.ascii	"Block_Obsidian\000"
.LASF106:
	.ascii	"seeThrough\000"
.LASF49:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF92:
	.ascii	"Block_Emerald_Ore\000"
.LASF94:
	.ascii	"Block_Diamond_Block\000"
.LASF184:
	.ascii	"ChunkWorker_Init\000"
.LASF120:
	.ascii	"graphicalTasksRunning\000"
.LASF23:
	.ascii	"Handle\000"
.LASF109:
	.ascii	"transparentVBO\000"
.LASF66:
	.ascii	"Block_Log\000"
.LASF97:
	.ascii	"Block_Emerald_Block\000"
.LASF118:
	.ascii	"ChunkGenProgress\000"
.LASF132:
	.ascii	"WorkerItemType_Decorate\000"
.LASF76:
	.ascii	"Block_Door_Top\000"
.LASF161:
	.ascii	"svcSleepThread\000"
.LASF14:
	.ascii	"__uint64_t\000"
.LASF38:
	.ascii	"LightEvent\000"
.LASF27:
	.ascii	"float\000"
.LASF113:
	.ascii	"forceVBOUpdate\000"
.LASF35:
	.ascii	"LightLock\000"
.LASF50:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF55:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF127:
	.ascii	"references\000"
.LASF90:
	.ascii	"Block_Diamond_Ore\000"
.LASF78:
	.ascii	"Block_Snow_Grass\000"
.LASF180:
	.ascii	"_this\000"
.LASF77:
	.ascii	"Block_Door_Bottom\000"
.LASF133:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF51:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF33:
	.ascii	"_Bool\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF172:
	.ascii	"Crash\000"
.LASF4:
	.ascii	"short int\000"
.LASF181:
	.ascii	"ChunkWorker_AddHandler\000"
.LASF159:
	.ascii	"vec_reserve_po2_\000"
.LASF170:
	.ascii	"APT_CheckNew3DS\000"
.LASF67:
	.ascii	"Block_Gravel\000"
.LASF143:
	.ascii	"itemAddedEvent\000"
.LASF126:
	.ascii	"displayRevision\000"
.LASF39:
	.ascii	"Thread\000"
.LASF145:
	.ascii	"WorkQueue\000"
.LASF98:
	.ascii	"Block_Furnace\000"
.LASF99:
	.ascii	"Blocks_Count\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF167:
	.ascii	"LightLock_Init\000"
.LASF125:
	.ascii	"heightmapRevision\000"
.LASF144:
	.ascii	"listInUse\000"
.LASF57:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF45:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF22:
	.ascii	"long double\000"
.LASF137:
	.ascii	"chunk\000"
.LASF121:
	.ascii	"uuid\000"
.LASF32:
	.ascii	"char\000"
.LASF124:
	.ascii	"heightmap\000"
.LASF102:
	.ascii	"VBO_Block\000"
.LASF58:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF60:
	.ascii	"Block_Air\000"
.LASF128:
	.ascii	"Chunk\000"
.LASF154:
	.ascii	"ChunkWorker\000"
.LASF108:
	.ascii	"emptyRevision\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF168:
	.ascii	"threadCreate\000"
.LASF91:
	.ascii	"Block_Gold_Ore\000"
.LASF131:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF190:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF44:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF165:
	.ascii	"LightEvent_Signal\000"
.LASF140:
	.ascii	"length\000"
.LASF52:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF164:
	.ascii	"threadJoin\000"
.LASF95:
	.ascii	"Block_Coal_Block\000"
.LASF186:
	.ascii	"isNew3ds\000"
.LASF153:
	.ascii	"working\000"
.LASF171:
	.ascii	"memset\000"
.LASF53:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF72:
	.ascii	"Block_Planks\000"
.LASF30:
	.ascii	"RESET_PULSE\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF188:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF166:
	.ascii	"LightEvent_Init\000"
.LASF54:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF69:
	.ascii	"Block_Glass\000"
.LASF46:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF43:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF68:
	.ascii	"Block_Leaves\000"
.LASF19:
	.ascii	"int64_t\000"
.LASF62:
	.ascii	"Block_Dirt\000"
.LASF37:
	.ascii	"lock\000"
.LASF130:
	.ascii	"WorkerItemType_Save\000"
.LASF47:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
