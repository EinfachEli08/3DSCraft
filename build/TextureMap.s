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
	.file	"TextureMap.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/rendering/TextureMap.c"
	.section	.text.hash,"ax",%progbits
	.align	2
	.global	hash
	.syntax unified
	.arm
	.type	hash, %function
hash:
.LVL0:
.LFB188:
	.loc 1 14 26 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 15 2 view .LVU1
	.loc 1 16 2 view .LVU2
	.loc 1 17 2 view .LVU3
	.loc 1 17 9 discriminator 1 view .LVU4
	.loc 1 17 18 is_stmt 0 discriminator 1 view .LVU5
	mov	r2, r0
.LVL1:
	.loc 1 17 14 discriminator 1 view .LVU6
	ldrb	r3, [r2], #1	@ zero_extendqisi2
.LVL2:
	.loc 1 15 16 view .LVU7
	ldr	r0, .L8
	.loc 1 17 9 discriminator 1 view .LVU8
	cmp	r3, #0
	bxeq	lr
.LVL3:
.L3:
	.loc 1 17 23 is_stmt 1 discriminator 2 view .LVU9
	add	r0, r0, r0, lsl #5
.LVL4:
	.loc 1 17 28 is_stmt 0 discriminator 2 view .LVU10
	add	r0, r3, r0
.LVL5:
	.loc 1 17 9 is_stmt 1 discriminator 1 view .LVU11
	.loc 1 17 14 is_stmt 0 discriminator 1 view .LVU12
	ldrb	r3, [r2], #1	@ zero_extendqisi2
.LVL6:
	.loc 1 17 9 discriminator 1 view .LVU13
	cmp	r3, #0
	bne	.L3
	bx	lr
.L9:
	.align	2
.L8:
	.word	5381
	.cfi_endproc
.LFE188:
	.size	hash, .-hash
	.section	.text.tileImage32,"ax",%progbits
	.align	2
	.global	tileImage32
	.syntax unified
	.arm
	.type	tileImage32, %function
tileImage32:
.LVL7:
.LFB192:
	.loc 1 84 59 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 85 2 view .LVU15
.LBB33:
	.loc 1 85 7 view .LVU16
	.loc 1 85 20 discriminator 1 view .LVU17
.LBE33:
	.loc 1 84 59 is_stmt 0 view .LVU18
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
.LBB58:
	.loc 1 85 20 discriminator 1 view .LVU19
	subs	r9, r3, #0
	pople	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	mov	r4, r1
	.loc 1 85 11 view .LVU20
	mov	r7, #0
	mov	r1, r2
.LVL8:
	.loc 1 85 11 view .LVU21
	sub	r3, r9, #1
.LVL9:
	.loc 1 85 11 view .LVU22
	mul	r3, r2, r3
	rsb	r10, r2, r2, lsl #30
	sub	r3, r3, #-1073741823
.LBB34:
.LBB35:
.LBB36:
.LBB37:
.LBB38:
.LBB39:
	.loc 1 72 4 view .LVU23
	ldr	r6, .L18
	.loc 1 73 4 view .LVU24
	ldr	r5, .L18+4
	lsl	r10, r10, #2
	add	r8, r0, r3, lsl #2
.LVL10:
.L12:
	.loc 1 73 4 view .LVU25
.LBE39:
.LBE38:
.LBE37:
.LBE36:
.LBE35:
	.loc 1 86 21 is_stmt 1 discriminator 1 view .LVU26
	cmp	r1, #0
	ble	.L15
.LBB54:
	.loc 1 88 59 is_stmt 0 discriminator 1 view .LVU27
	mov	ip, r8
.LBE54:
	.loc 1 86 12 view .LVU28
	mov	r0, #0
.LBB55:
	.loc 1 87 8 view .LVU29
	bic	r2, r7, #7
	.loc 1 88 59 discriminator 1 view .LVU30
	mul	r2, r1, r2
.LBB51:
.LBB48:
.LBB44:
.LBB40:
	.loc 1 71 29 view .LVU31
	lsl	lr, r7, #8
	and	lr, lr, #1792
.LVL11:
.L13:
	.loc 1 71 29 view .LVU32
.LBE40:
.LBE44:
.LBE48:
.LBE51:
	.loc 1 87 4 is_stmt 1 view .LVU33
	.loc 1 88 4 view .LVU34
.LBB52:
.LBI36:
	.loc 1 78 19 view .LVU35
.LBB49:
	.loc 1 79 2 view .LVU36
.LBB45:
.LBI38:
	.loc 1 70 19 view .LVU37
.LBB41:
	.loc 1 71 2 view .LVU38
	.loc 1 71 13 is_stmt 0 view .LVU39
	and	r3, r0, #7
	.loc 1 71 6 view .LVU40
	orr	r3, r3, lr
.LVL12:
	.loc 1 72 2 is_stmt 1 view .LVU41
	.loc 1 72 9 is_stmt 0 view .LVU42
	eor	r3, r3, r3, lsl #2
.LVL13:
	.loc 1 72 4 view .LVU43
	and	r3, r3, r6
.LVL14:
	.loc 1 73 2 is_stmt 1 view .LVU44
	.loc 1 73 9 is_stmt 0 view .LVU45
	eor	r3, r3, r3, lsl #1
.LVL15:
	.loc 1 73 4 view .LVU46
	and	r3, r3, r5
.LVL16:
	.loc 1 74 2 is_stmt 1 view .LVU47
.LBE41:
.LBE45:
	.loc 1 80 27 is_stmt 0 view .LVU48
	bic	fp, r0, #7
.LBB46:
.LBB42:
	.loc 1 74 9 view .LVU49
	orr	r3, r3, r3, lsr #7
.LVL17:
	.loc 1 75 2 is_stmt 1 view .LVU50
	.loc 1 75 2 is_stmt 0 view .LVU51
.LBE42:
.LBE46:
	.loc 1 80 2 is_stmt 1 view .LVU52
	.loc 1 81 2 view .LVU53
	.loc 1 81 2 is_stmt 0 view .LVU54
.LBE49:
.LBE52:
	.loc 1 90 4 is_stmt 1 view .LVU55
	.loc 1 88 8 is_stmt 0 discriminator 1 view .LVU56
	add	fp, r2, fp, lsl #3
.LVL18:
.LBB53:
.LBB50:
.LBB47:
.LBB43:
	.loc 1 74 4 view .LVU57
	and	r3, r3, #63
.LVL19:
	.loc 1 74 4 view .LVU58
.LBE43:
.LBE47:
.LBE50:
.LBE53:
	.loc 1 88 8 discriminator 1 view .LVU59
	add	r3, fp, r3
.LBE55:
	.loc 1 86 31 discriminator 3 view .LVU60
	add	r0, r0, #1
.LVL20:
.LBB56:
	.loc 1 90 8 view .LVU61
	ldr	fp, [ip, #4]!
.LVL21:
	.loc 1 91 4 is_stmt 1 view .LVU62
.LBE56:
	.loc 1 86 21 is_stmt 0 discriminator 1 view .LVU63
	cmp	r1, r0
.LBB57:
	.loc 1 91 30 view .LVU64
	str	fp, [r4, r3, lsl #2]
.LBE57:
	.loc 1 86 31 is_stmt 1 discriminator 3 view .LVU65
.LVL22:
	.loc 1 86 21 discriminator 1 view .LVU66
	bne	.L13
.LVL23:
.L15:
	.loc 1 86 21 is_stmt 0 discriminator 1 view .LVU67
.LBE34:
	.loc 1 85 30 is_stmt 1 discriminator 2 view .LVU68
	add	r7, r7, #1
.LVL24:
	.loc 1 85 20 discriminator 1 view .LVU69
	cmp	r9, r7
	add	r8, r8, r10
	bne	.L12
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L19:
	.align	2
.L18:
	.word	4883
	.word	5397
.LBE58:
	.cfi_endproc
.LFE192:
	.size	tileImage32, .-tileImage32
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"Failed to load texture %s\012\000"
	.section	.text.Texture_Load,"ax",%progbits
	.align	2
	.global	Texture_Load
	.syntax unified
	.arm
	.type	Texture_Load, %function
Texture_Load:
.LVL25:
.LFB189:
	.loc 1 23 52 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 24 2 view .LVU71
	.loc 1 23 52 is_stmt 0 view .LVU72
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 25 15 view .LVU73
	mov	r3, #255
	.loc 1 23 52 view .LVU74
	mov	r4, r1
	.loc 1 24 12 view .LVU75
	mov	ip, #0
	.loc 1 23 52 view .LVU76
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	.loc 1 25 15 view .LVU77
	str	r3, [sp, #16]
	.loc 1 25 28 view .LVU78
	str	r3, [sp, #20]
	.loc 1 23 52 view .LVU79
	mov	r5, r0
	.loc 1 26 19 view .LVU80
	mov	r3, r4
	add	r2, sp, #20
	add	r1, sp, #16
.LVL26:
	.loc 1 26 19 view .LVU81
	add	r0, sp, #12
.LVL27:
	.loc 1 24 12 view .LVU82
	str	ip, [sp, #12]
	.loc 1 25 2 is_stmt 1 view .LVU83
	.loc 1 26 2 view .LVU84
	.loc 1 26 19 is_stmt 0 view .LVU85
	bl	lodepng_decode32_file
.LVL28:
	.loc 1 27 2 is_stmt 1 view .LVU86
	.loc 1 27 5 is_stmt 0 view .LVU87
	cmp	r0, #0
	bne	.L21
	.loc 1 27 17 discriminator 1 view .LVU88
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L21
.LBB65:
	.loc 1 28 3 is_stmt 1 view .LVU89
	.loc 1 28 56 is_stmt 0 view .LVU90
	ldr	r0, [sp, #16]
.LVL29:
	.loc 1 28 56 view .LVU91
	ldr	r3, [sp, #20]
	mul	r0, r3, r0
	.loc 1 28 38 view .LVU92
	lsl	r0, r0, #2
	bl	linearAlloc
.LVL30:
	.loc 1 30 13 view .LVU93
	ldr	r2, [sp, #16]
	.loc 1 28 38 view .LVU94
	mov	r4, r0
.LVL31:
	.loc 1 30 3 is_stmt 1 view .LVU95
	.loc 1 30 6 is_stmt 0 view .LVU96
	cmp	r2, #63
.LBB66:
	.loc 1 31 22 discriminator 1 view .LVU97
	ldr	r6, [sp, #20]
.LBE66:
	.loc 1 30 6 view .LVU98
	bhi	.L22
.L25:
.LVL32:
.LBB68:
	.loc 1 31 22 is_stmt 1 discriminator 1 view .LVU99
	cmp	r6, #0
	beq	.L29
.LBB67:
	.loc 1 33 52 is_stmt 0 view .LVU100
	mov	lr, #0
	ldr	ip, [sp, #12]
	lsl	r0, r2, #2
.LVL33:
	.loc 1 33 52 view .LVU101
	add	ip, ip, r2, lsl #2
.LVL34:
.L24:
	.loc 1 32 23 is_stmt 1 discriminator 1 view .LVU102
	cmp	r2, #0
	subne	r3, ip, r0
	beq	.L31
.LVL35:
.L28:
	.loc 1 33 6 view .LVU103
	.loc 1 33 29 is_stmt 0 view .LVU104
	ldr	r1, [r3]
	rev	r1, r1
	.loc 1 33 27 discriminator 1 view .LVU105
	str	r1, [r3], #4
	.loc 1 32 33 is_stmt 1 discriminator 3 view .LVU106
	.loc 1 32 23 discriminator 1 view .LVU107
	cmp	ip, r3
	bne	.L28
.L31:
.LBE67:
	.loc 1 31 33 discriminator 2 view .LVU108
	add	lr, lr, #1
.LVL36:
	.loc 1 31 22 discriminator 1 view .LVU109
	cmp	lr, r6
	add	ip, ip, r0
	bne	.L24
.LVL37:
.L29:
	.loc 1 31 22 is_stmt 0 discriminator 1 view .LVU110
.LBE68:
	.loc 1 46 3 is_stmt 1 view .LVU111
.LBB69:
.LBI69:
	.file 2 "C:/devkitPro/libctru/include/c3d/texture.h"
	.loc 2 112 19 view .LVU112
.LBB70:
	.loc 2 114 2 view .LVU113
	.loc 2 115 22 is_stmt 0 view .LVU114
	uxth	r2, r2
	.loc 2 114 9 view .LVU115
	orr	r2, r2, r6, lsl #16
.LVL38:
	.loc 2 114 9 view .LVU116
	mov	r3, #2048
	mov	r1, #0
	mov	r0, r5
	bl	C3D_TexInitWithParams
.LVL39:
	.loc 2 114 9 view .LVU117
.LBE70:
.LBE69:
	.loc 1 48 3 is_stmt 1 view .LVU118
	.loc 1 48 28 is_stmt 0 discriminator 2 view .LVU119
	ldrd	r6, [sp, #16]
	.loc 1 48 6 view .LVU120
	cmp	r6, #63
	bls	.L34
	.loc 1 48 18 discriminator 2 view .LVU121
	cmp	r7, #63
	bls	.L34
.L35:
	.loc 1 50 3 is_stmt 1 view .LVU122
	.loc 1 50 53 is_stmt 0 view .LVU123
	mul	r1, r7, r6
	.loc 1 50 3 view .LVU124
	mov	r0, r4
	lsl	r1, r1, #2
	bl	GSPGPU_FlushDataCache
.LVL40:
	.loc 1 51 3 is_stmt 1 view .LVU125
	ldr	r0, [sp, #12]
	bl	free
.LVL41:
	.loc 1 53 3 view .LVU126
	.loc 1 53 13 is_stmt 0 view .LVU127
	ldr	r3, [sp, #16]
	.loc 1 53 28 discriminator 1 view .LVU128
	ldr	r2, [sp, #20]
	.loc 1 53 6 view .LVU129
	cmp	r3, #63
	bls	.L37
	.loc 1 53 18 discriminator 1 view .LVU130
	cmp	r2, #63
	bhi	.L38
.L37:
	.loc 1 54 4 is_stmt 1 view .LVU131
	.loc 1 54 72 is_stmt 0 view .LVU132
	mul	r1, r2, r3
	.loc 1 54 4 view .LVU133
	mov	ip, #8
	mov	r3, #0
	.loc 1 54 72 view .LVU134
	lsl	r1, r1, #2
	.loc 1 54 4 view .LVU135
	ldr	r2, [r5]
	mov	r0, r4
	str	r1, [sp]
	str	ip, [sp, #4]
	mov	r1, r3
	bl	C3D_SyncTextureCopy
.LVL42:
.L39:
	.loc 1 63 3 is_stmt 1 view .LVU136
	mov	r0, r4
	bl	linearFree
.LVL43:
.LBE65:
	.loc 1 67 1 is_stmt 0 view .LVU137
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL44:
.L21:
	.cfi_restore_state
	.loc 1 65 3 is_stmt 1 view .LVU138
	mov	r1, r4
	ldr	r0, .L51
.LVL45:
	.loc 1 65 3 is_stmt 0 view .LVU139
	bl	Crash
.LVL46:
	.loc 1 67 1 view .LVU140
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL47:
.L34:
	.cfi_restore_state
.LBB72:
	.loc 1 48 34 is_stmt 1 discriminator 3 view .LVU141
	mov	r3, r7
	mov	r2, r6
	mov	r1, r4
	ldr	r0, [sp, #12]
	bl	tileImage32
.LVL48:
	b	.L35
.LVL49:
.L22:
	.loc 1 30 18 is_stmt 0 discriminator 1 view .LVU142
	cmp	r6, #63
	bls	.L25
.LVL50:
.LBB71:
	.loc 1 36 22 is_stmt 1 discriminator 1 view .LVU143
	.loc 1 36 30 is_stmt 0 discriminator 1 view .LVU144
	mul	ip, r6, r2
	.loc 1 36 22 discriminator 1 view .LVU145
	cmp	ip, #0
	beq	.L29
	.loc 1 42 45 view .LVU146
	ldr	r1, [sp, #12]
	sub	r0, r0, #4
.LVL51:
	.loc 1 42 45 view .LVU147
	sub	r1, r1, #4
	add	ip, r1, ip, lsl #2
.LVL52:
.L32:
	.loc 1 42 5 is_stmt 1 view .LVU148
	.loc 1 42 22 is_stmt 0 view .LVU149
	ldr	r3, [r1, #4]!
	rev	r3, r3
	.loc 1 36 22 discriminator 1 view .LVU150
	cmp	r1, ip
	.loc 1 42 20 discriminator 1 view .LVU151
	str	r3, [r0, #4]!
	.loc 1 36 41 is_stmt 1 discriminator 3 view .LVU152
	.loc 1 36 22 discriminator 1 view .LVU153
	bne	.L32
	b	.L29
.L38:
	.loc 1 36 22 is_stmt 0 discriminator 1 view .LVU154
.LBE71:
	.loc 1 56 4 is_stmt 1 view .LVU155
	mov	ip, #3
	.loc 1 57 56 is_stmt 0 view .LVU156
	uxth	r3, r3
	.loc 1 57 47 view .LVU157
	orr	r3, r3, r2, lsl #16
	.loc 1 56 4 view .LVU158
	mov	r1, r3
	ldr	r2, [r5]
	mov	r0, r4
	str	ip, [sp]
	bl	C3D_SyncDisplayTransfer
.LVL53:
	b	.L39
.L52:
	.align	2
.L51:
	.word	.LC1
.LBE72:
	.cfi_endproc
.LFE189:
	.size	Texture_Load, .-Texture_Load
	.section	.text.Texture_TileImage8,"ax",%progbits
	.align	2
	.global	Texture_TileImage8
	.syntax unified
	.arm
	.type	Texture_TileImage8, %function
Texture_TileImage8:
.LVL54:
.LFB193:
	.loc 1 95 63 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 96 2 view .LVU160
.LBB80:
	.loc 1 96 7 view .LVU161
	.loc 1 96 20 discriminator 1 view .LVU162
.LBE80:
	.loc 1 95 63 is_stmt 0 view .LVU163
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
.LBB107:
	.loc 1 96 20 discriminator 1 view .LVU164
	subs	r10, r2, #0
	pople	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 1 96 11 view .LVU165
	mov	r9, #0
.LBB81:
.LBB82:
	.loc 1 101 25 view .LVU166
	sub	r3, r10, #1
	mul	r3, r10, r3
	mov	r5, r1
.LBB83:
.LBB84:
.LBB85:
.LBB86:
	.loc 1 72 4 view .LVU167
	ldr	r7, .L59
	add	r1, r3, r0
.LVL55:
	.loc 1 73 4 view .LVU168
	ldr	r6, .L59+4
	add	r0, r0, r10
.LVL56:
	.loc 1 73 4 view .LVU169
	add	r8, r0, r3
	rsb	r1, r1, #0
.LVL57:
.L55:
	.loc 1 73 4 view .LVU170
.LBE86:
.LBE85:
.LBE84:
.LBE83:
.LBE82:
	.loc 1 97 21 is_stmt 1 discriminator 1 view .LVU171
	mov	r4, r8
	sub	r8, r8, r10
.LBB105:
	.loc 1 99 59 is_stmt 0 discriminator 1 view .LVU172
	mov	r0, r8
	.loc 1 98 8 view .LVU173
	bic	lr, r9, #7
	.loc 1 99 59 discriminator 1 view .LVU174
	mul	lr, r10, lr
.LBB101:
.LBB97:
.LBB92:
.LBB87:
	.loc 1 71 29 view .LVU175
	lsl	ip, r9, #8
	and	ip, ip, #1792
.LVL58:
.L56:
	.loc 1 71 29 view .LVU176
	add	r2, r1, r0
.LVL59:
	.loc 1 71 29 view .LVU177
.LBE87:
.LBE92:
.LBE97:
.LBE101:
	.loc 1 98 4 is_stmt 1 view .LVU178
	.loc 1 99 4 view .LVU179
.LBB102:
.LBI83:
	.loc 1 78 19 view .LVU180
.LBB98:
	.loc 1 79 2 view .LVU181
.LBB93:
.LBI85:
	.loc 1 70 19 view .LVU182
.LBB88:
	.loc 1 71 2 view .LVU183
	.loc 1 71 6 is_stmt 0 view .LVU184
	and	r3, r2, #7
	orr	r3, r3, ip
.LVL60:
	.loc 1 72 2 is_stmt 1 view .LVU185
	.loc 1 72 9 is_stmt 0 view .LVU186
	eor	r3, r3, r3, lsl #2
.LVL61:
	.loc 1 72 4 view .LVU187
	and	r3, r3, r7
.LVL62:
	.loc 1 73 2 is_stmt 1 view .LVU188
	.loc 1 73 9 is_stmt 0 view .LVU189
	eor	r3, r3, r3, lsl #1
.LVL63:
	.loc 1 73 9 view .LVU190
.LBE88:
.LBE93:
.LBE98:
.LBE102:
	.loc 1 101 7 view .LVU191
	ldrb	fp, [r0], #1	@ zero_extendqisi2
.LBB103:
.LBB99:
.LBB94:
.LBB89:
	.loc 1 73 4 view .LVU192
	and	r3, r3, r6
.LVL64:
	.loc 1 74 2 is_stmt 1 view .LVU193
.LBE89:
.LBE94:
	.loc 1 80 15 is_stmt 0 view .LVU194
	bic	r2, r2, #7
.LVL65:
.LBB95:
.LBB90:
	.loc 1 74 9 view .LVU195
	orr	r3, r3, r3, lsr #7
.LVL66:
	.loc 1 75 2 is_stmt 1 view .LVU196
	.loc 1 75 2 is_stmt 0 view .LVU197
.LBE90:
.LBE95:
	.loc 1 80 2 is_stmt 1 view .LVU198
	.loc 1 81 2 view .LVU199
	.loc 1 81 2 is_stmt 0 view .LVU200
.LBE99:
.LBE103:
	.loc 1 101 4 is_stmt 1 view .LVU201
	.loc 1 102 4 view .LVU202
	.loc 1 102 24 is_stmt 0 view .LVU203
	add	r2, r5, r2, lsl #3
.LBB104:
.LBB100:
.LBB96:
.LBB91:
	.loc 1 74 4 view .LVU204
	and	r3, r3, #63
.LVL67:
	.loc 1 74 4 view .LVU205
.LBE91:
.LBE96:
.LBE100:
.LBE104:
	.loc 1 102 24 view .LVU206
	add	r2, r2, lr
.LBE105:
	.loc 1 97 21 discriminator 1 view .LVU207
	cmp	r4, r0
.LBB106:
	.loc 1 102 24 view .LVU208
	strb	fp, [r2, r3]
.LBE106:
	.loc 1 97 30 is_stmt 1 discriminator 3 view .LVU209
.LVL68:
	.loc 1 97 21 discriminator 1 view .LVU210
	bne	.L56
.LBE81:
	.loc 1 96 29 discriminator 2 view .LVU211
	add	r9, r9, #1
.LVL69:
	.loc 1 96 20 discriminator 1 view .LVU212
	cmp	r10, r9
	add	r1, r1, r10
.LVL70:
	.loc 1 96 20 is_stmt 0 discriminator 1 view .LVU213
	bne	.L55
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L60:
	.align	2
.L59:
	.word	4883
	.word	5397
.LBE107:
	.cfi_endproc
.LFE193:
	.size	Texture_TileImage8, .-Texture_TileImage8
	.section	.text.downscaleImage,"ax",%progbits
	.align	2
	.global	downscaleImage
	.syntax unified
	.arm
	.type	downscaleImage, %function
downscaleImage:
.LVL71:
.LFB194:
	.loc 1 106 41 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 107 2 view .LVU215
	.loc 1 108 2 view .LVU216
	.loc 1 108 16 discriminator 1 view .LVU217
	.loc 1 106 41 is_stmt 0 view .LVU218
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
	.loc 1 108 16 discriminator 1 view .LVU219
	subs	r7, r1, #0
	pople	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	add	r4, r0, r7, lsl #3
	mov	r6, r0
.LBB108:
	.loc 1 112 96 view .LVU220
	mov	r0, #0
.LVL72:
	.loc 1 112 96 view .LVU221
	mov	lr, r4
.LBE108:
	.loc 1 108 9 view .LVU222
	mov	r5, r0
	lsl	r8, r7, #4
.LVL73:
.L63:
	.loc 1 109 17 is_stmt 1 discriminator 1 view .LVU223
	.loc 1 106 41 is_stmt 0 view .LVU224
	mov	r2, r4
	add	r3, r6, r0, lsl #4
	add	ip, r6, r0, lsl #2
.LVL74:
.L64:
.LBB109:
	.loc 1 110 4 is_stmt 1 view .LVU225
	.loc 1 111 4 view .LVU226
	.loc 1 112 4 view .LVU227
	.loc 1 112 28 is_stmt 0 view .LVU228
	ldrb	r1, [r3]	@ zero_extendqisi2
	.loc 1 112 52 view .LVU229
	ldrb	r10, [r3, #4]	@ zero_extendqisi2
	.loc 1 112 76 view .LVU230
	ldrb	r9, [r2]	@ zero_extendqisi2
	.loc 1 112 46 view .LVU231
	add	r1, r1, r10
	.loc 1 112 70 view .LVU232
	add	r1, r1, r9
	.loc 1 113 14 view .LVU233
	ldrb	r9, [r2, #4]	@ zero_extendqisi2
.LBE109:
	.loc 1 109 17 discriminator 1 view .LVU234
	add	r3, r3, #8
.LVL75:
.LBB110:
	.loc 1 112 105 view .LVU235
	add	r1, r1, r9
	.loc 1 113 50 view .LVU236
	asr	r1, r1, #2
	.loc 1 112 21 view .LVU237
	strb	r1, [ip]
	.loc 1 115 4 is_stmt 1 view .LVU238
	.loc 1 115 52 is_stmt 0 view .LVU239
	ldrb	r10, [r3, #-3]	@ zero_extendqisi2
	.loc 1 115 28 view .LVU240
	ldrb	r1, [r3, #-7]	@ zero_extendqisi2
	.loc 1 115 76 view .LVU241
	ldrb	r9, [r2, #1]	@ zero_extendqisi2
	.loc 1 115 46 view .LVU242
	add	r1, r1, r10
	.loc 1 115 70 view .LVU243
	add	r1, r1, r9
	.loc 1 116 14 view .LVU244
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
.LBE110:
	.loc 1 109 17 discriminator 1 view .LVU245
	add	ip, ip, #4
.LVL76:
.LBB111:
	.loc 1 115 105 view .LVU246
	add	r1, r1, r9
	.loc 1 116 50 view .LVU247
	asr	r1, r1, #2
	.loc 1 115 21 view .LVU248
	strb	r1, [ip, #-3]
	.loc 1 118 4 is_stmt 1 view .LVU249
	.loc 1 118 52 is_stmt 0 view .LVU250
	ldrb	r10, [r3, #-2]	@ zero_extendqisi2
	.loc 1 118 28 view .LVU251
	ldrb	r1, [r3, #-6]	@ zero_extendqisi2
	.loc 1 118 76 view .LVU252
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	.loc 1 118 46 view .LVU253
	add	r1, r1, r10
	.loc 1 118 70 view .LVU254
	add	r1, r1, r9
	.loc 1 119 14 view .LVU255
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
.LBE111:
	.loc 1 109 17 discriminator 1 view .LVU256
	add	r2, r2, #8
.LBB112:
	.loc 1 118 105 view .LVU257
	add	r1, r1, r9
	.loc 1 119 50 view .LVU258
	asr	r1, r1, #2
	.loc 1 118 21 view .LVU259
	strb	r1, [ip, #-2]
	.loc 1 121 4 is_stmt 1 view .LVU260
	.loc 1 121 28 is_stmt 0 view .LVU261
	ldrb	r1, [r3, #-5]	@ zero_extendqisi2
	.loc 1 121 52 view .LVU262
	ldrb	fp, [r3, #-1]	@ zero_extendqisi2
	.loc 1 121 76 view .LVU263
	ldrb	r10, [r2, #-5]	@ zero_extendqisi2
	.loc 1 122 14 view .LVU264
	ldrb	r9, [r2, #-1]	@ zero_extendqisi2
	.loc 1 121 46 view .LVU265
	add	r1, r1, fp
	.loc 1 121 70 view .LVU266
	add	r1, r1, r10
	.loc 1 121 105 view .LVU267
	add	r1, r1, r9
	.loc 1 122 50 view .LVU268
	asr	r1, r1, #2
.LBE112:
	.loc 1 109 17 discriminator 1 view .LVU269
	cmp	lr, r3
.LBB113:
	.loc 1 121 21 view .LVU270
	strb	r1, [ip, #-1]
.LBE113:
	.loc 1 109 26 is_stmt 1 discriminator 3 view .LVU271
	.loc 1 109 17 discriminator 1 view .LVU272
	bne	.L64
	.loc 1 108 25 discriminator 2 view .LVU273
	add	r5, r5, #1
.LVL77:
	.loc 1 108 16 discriminator 1 view .LVU274
	cmp	r7, r5
	add	r4, r4, r8
	add	r0, r0, r7
	add	lr, lr, r8
	bne	.L63
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE194:
	.size	downscaleImage, .-downscaleImage
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"Image size(%d, %d) doesn't match or ptr null(intern"
	.ascii	"al error)\012'\000"
	.align	2
.LC3:
	.ascii	"Couldn't alloc texture memory\000"
	.section	.text.Texture_MapInit,"ax",%progbits
	.align	2
	.global	Texture_MapInit
	.syntax unified
	.arm
	.type	Texture_MapInit, %function
Texture_MapInit:
.LVL78:
.LFB195:
	.loc 1 128 75 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 129 2 view .LVU276
	.loc 1 130 2 view .LVU277
	.loc 1 134 2 view .LVU278
	.loc 1 135 2 view .LVU279
	.loc 1 137 2 view .LVU280
	.loc 1 128 75 is_stmt 0 view .LVU281
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
	mov	r8, r0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 137 32 view .LVU282
	mov	r0, #65536
.LVL79:
	.loc 1 128 75 view .LVU283
	mov	r6, r2
	mov	r4, r1
	.loc 1 137 32 view .LVU284
	bl	linearAlloc
.LVL80:
.LBB114:
	.loc 1 138 46 discriminator 3 view .LVU285
	mov	ip, #255
.LBE114:
	.loc 1 137 32 view .LVU286
	mov	r7, r0
.LVL81:
	.loc 1 138 2 is_stmt 1 view .LVU287
.LBB115:
	.loc 1 138 7 view .LVU288
	.loc 1 138 20 discriminator 1 view .LVU289
	add	r2, r0, #261120
	sub	r3, r0, #4
	add	r2, r2, #1020
.LVL82:
.L68:
	.loc 1 138 36 discriminator 3 view .LVU290
	.loc 1 138 46 is_stmt 0 discriminator 3 view .LVU291
	str	ip, [r3, #4]!
	.loc 1 138 32 is_stmt 1 discriminator 3 view .LVU292
	.loc 1 138 20 discriminator 1 view .LVU293
	cmp	r3, r2
	bne	.L68
.LBE115:
	.loc 1 140 2 view .LVU294
.LVL83:
	.loc 1 141 2 view .LVU295
	.loc 1 141 14 is_stmt 0 view .LVU296
	ldr	r9, [r4]
.LVL84:
	.loc 1 142 2 is_stmt 1 view .LVU297
	.loc 1 143 2 view .LVU298
	.loc 1 143 58 view .LVU299
	.loc 1 143 58 is_stmt 0 discriminator 1 view .LVU300
	cmp	r9, #0
	cmpne	r6, #0
	.loc 1 140 6 view .LVU301
	movgt	r10, #0
	movgt	r5, r8
	.loc 1 130 6 view .LVU302
	strgt	r10, [sp, #12]
	.loc 1 129 6 view .LVU303
	strgt	r10, [sp, #8]
	.loc 1 143 58 discriminator 1 view .LVU304
	bgt	.L80
	b	.L81
.LVL85:
.L73:
.LBB116:
	.loc 1 167 4 is_stmt 1 view .LVU305
	ldr	r0, .L96
	bl	printf
.LVL86:
	.loc 1 169 3 is_stmt 0 view .LVU306
	ldr	r0, [sp, #20]
.LVL87:
.L79:
	.loc 1 169 3 is_stmt 1 view .LVU307
	.loc 1 170 12 is_stmt 0 view .LVU308
	add	r10, r10, #1
.LVL88:
	.loc 1 169 3 view .LVU309
	bl	free
.LVL89:
	.loc 1 170 3 is_stmt 1 view .LVU310
	.loc 1 170 3 is_stmt 0 view .LVU311
.LBE116:
	.loc 1 143 58 discriminator 1 view .LVU312
	cmp	r10, #63
	movle	r3, #1
	movgt	r3, #0
	cmp	r6, r10
	movle	r3, #0
.LBB125:
	.loc 1 170 12 view .LVU313
	ldr	r9, [r4, #4]!
.LVL90:
	.loc 1 171 3 is_stmt 1 view .LVU314
	.loc 1 171 3 is_stmt 0 view .LVU315
.LBE125:
	.loc 1 143 58 is_stmt 1 view .LVU316
	.loc 1 143 58 is_stmt 0 discriminator 1 view .LVU317
	add	r5, r5, #8
	cmp	r9, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	beq	.L81
.LVL91:
.L80:
.LBB126:
	.loc 1 144 3 is_stmt 1 view .LVU318
	.loc 1 145 3 view .LVU319
	.loc 1 145 20 is_stmt 0 view .LVU320
	mov	r3, r9
	add	r2, sp, #28
	add	r1, sp, #24
	add	r0, sp, #20
	bl	lodepng_decode32_file
.LVL92:
	.loc 1 146 9 view .LVU321
	ldr	r1, [sp, #24]
	.loc 1 145 20 view .LVU322
	mov	r3, r0
.LVL93:
	.loc 1 146 3 is_stmt 1 view .LVU323
	.loc 1 146 6 is_stmt 0 view .LVU324
	cmp	r1, #16
	.loc 1 146 20 discriminator 1 view .LVU325
	ldr	r2, [sp, #28]
	.loc 1 146 6 view .LVU326
	bne	.L73
	.loc 1 146 15 discriminator 1 view .LVU327
	cmp	r2, #16
	bne	.L73
	.loc 1 146 70 discriminator 3 view .LVU328
	clz	r3, r3
	.loc 1 146 35 discriminator 2 view .LVU329
	ldr	r0, [sp, #20]
.LVL94:
	.loc 1 146 70 discriminator 3 view .LVU330
	lsr	r3, r3, #5
	cmp	r0, #0
	moveq	r3, #0
	cmp	r3, #0
	beq	.L73
	mov	fp, r0
.LBB117:
.LBB118:
	.loc 1 147 13 view .LVU331
	mov	lr, #0
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	add	ip, r3, r2, lsl #7
	add	ip, r7, ip, lsl #2
.L74:
.LVL95:
.LBB119:
	.loc 1 148 23 is_stmt 1 discriminator 1 view .LVU332
.LBE119:
.LBE118:
.LBE117:
.LBE126:
	.loc 1 129 6 is_stmt 0 view .LVU333
	mov	r1, fp
.LBB127:
.LBB124:
.LBB121:
.LBB120:
	.loc 1 148 14 view .LVU334
	mov	r3, #0
.LVL96:
.L75:
	.loc 1 149 6 is_stmt 1 view .LVU335
	.loc 1 150 10 is_stmt 0 view .LVU336
	ldr	r2, [r1, #960]
	.loc 1 148 23 discriminator 1 view .LVU337
	sub	r1, r1, #64
	.loc 1 150 10 view .LVU338
	rev	r2, r2
	.loc 1 149 46 view .LVU339
	str	r2, [ip, r3, lsl #9]
	.loc 1 148 30 is_stmt 1 discriminator 3 view .LVU340
	add	r3, r3, #1
.LVL97:
	.loc 1 148 23 discriminator 1 view .LVU341
	cmp	r3, #16
	bne	.L75
.LBE120:
	.loc 1 147 29 discriminator 2 view .LVU342
	add	lr, lr, #1
.LVL98:
	.loc 1 147 22 discriminator 1 view .LVU343
	cmp	lr, #16
	add	fp, fp, #4
	add	ip, ip, #4
	bne	.L74
.LVL99:
	.loc 1 147 22 is_stmt 0 discriminator 1 view .LVU344
.LBE121:
.LBB122:
.LBB123:
	.loc 1 17 9 is_stmt 1 discriminator 1 view .LVU345
	.loc 1 17 14 is_stmt 0 discriminator 1 view .LVU346
	ldrb	r2, [r9], #1	@ zero_extendqisi2
.LVL100:
	.loc 1 15 16 view .LVU347
	ldr	r3, .L96+4
.LVL101:
	.loc 1 17 9 discriminator 1 view .LVU348
	cmp	r2, #0
	beq	.L77
.LVL102:
.L78:
	.loc 1 17 23 is_stmt 1 discriminator 2 view .LVU349
	add	r3, r3, r3, lsl #5
.LVL103:
	.loc 1 17 28 is_stmt 0 discriminator 2 view .LVU350
	add	r3, r2, r3
.LVL104:
	.loc 1 17 9 is_stmt 1 discriminator 1 view .LVU351
	.loc 1 17 14 is_stmt 0 discriminator 1 view .LVU352
	ldrb	r2, [r9], #1	@ zero_extendqisi2
.LVL105:
	.loc 1 17 9 discriminator 1 view .LVU353
	cmp	r2, #0
	bne	.L78
.LVL106:
.L77:
	.loc 1 18 2 is_stmt 1 view .LVU354
	.loc 1 18 2 is_stmt 0 view .LVU355
.LBE123:
.LBE122:
	.loc 1 156 12 view .LVU356
	ldr	r2, [sp, #8]
	.loc 1 155 22 discriminator 1 view .LVU357
	str	r3, [r5, #24]
	.loc 1 156 4 is_stmt 1 view .LVU358
	.loc 1 156 12 is_stmt 0 view .LVU359
	lsl	r3, r2, #8
	strh	r3, [r5, #28]	@ movhi
	.loc 1 157 4 is_stmt 1 view .LVU360
	.loc 1 161 9 is_stmt 0 view .LVU361
	add	r3, r2, #16
	str	r3, [sp, #8]
.LVL107:
	.loc 1 162 7 view .LVU362
	cmp	r3, #128
	.loc 1 157 12 view .LVU363
	ldr	r3, [sp, #12]
	lsl	r3, r3, #8
	strh	r3, [r5, #30]	@ movhi
	.loc 1 161 4 is_stmt 1 view .LVU364
.LVL108:
	.loc 1 162 4 view .LVU365
	.loc 1 162 7 is_stmt 0 view .LVU366
	bne	.L79
	.loc 1 163 5 is_stmt 1 view .LVU367
	.loc 1 163 10 is_stmt 0 view .LVU368
	ldr	r3, [sp, #12]
	add	r3, r3, #16
	str	r3, [sp, #12]
.LVL109:
	.loc 1 164 5 is_stmt 1 view .LVU369
	.loc 1 164 10 is_stmt 0 view .LVU370
	mov	r3, #0
.LVL110:
	.loc 1 164 10 view .LVU371
	str	r3, [sp, #8]
	b	.L79
.LVL111:
.L81:
	.loc 1 164 10 view .LVU372
.LBE124:
.LBE127:
	.loc 1 174 2 is_stmt 1 view .LVU373
	mov	r1, #65536
	mov	r0, r7
	bl	GSPGPU_FlushDataCache
.LVL112:
	.loc 1 175 2 view .LVU374
.LBB128:
	.loc 1 176 27 is_stmt 0 view .LVU375
	ldr	r3, .L96+8
	.loc 1 175 7 view .LVU376
	mov	r1, #0
	ldrd	r2, [r3]
	mov	r0, r8
	bl	C3D_TexInitWithParams
.LVL113:
	.loc 1 175 5 discriminator 1 view .LVU377
	cmp	r0, #0
	beq	.L94
.L70:
.LBE128:
	.loc 1 178 2 is_stmt 1 view .LVU378
.LVL114:
.LBB129:
.LBI129:
	.loc 2 157 20 view .LVU379
.LBB130:
	.loc 2 159 2 view .LVU380
	.loc 2 160 2 view .LVU381
.LBE130:
.LBE129:
	.loc 1 180 2 is_stmt 0 view .LVU382
	mov	ip, #3
.LBB133:
.LBB131:
	.loc 2 159 13 view .LVU383
	ldr	r2, [r8, #12]
.LBE131:
.LBE133:
	.loc 1 180 2 view .LVU384
	ldr	r3, .L96+12
.LBB134:
.LBB132:
	.loc 2 159 13 view .LVU385
	bic	r2, r2, #6
	.loc 2 160 13 view .LVU386
	str	r2, [r8, #12]
.LVL115:
	.loc 2 160 13 view .LVU387
.LBE132:
.LBE134:
	.loc 1 180 2 is_stmt 1 view .LVU388
	mov	r1, r3
	ldr	r2, [r8]
	mov	r0, r7
	str	ip, [sp]
	bl	C3D_SyncDisplayTransfer
.LVL116:
	.loc 1 185 2 view .LVU389
	.loc 1 186 2 view .LVU390
	.loc 1 188 2 view .LVU391
	.loc 1 188 20 is_stmt 0 view .LVU392
	mov	r0, #16384
	bl	linearAlloc
.LVL117:
	mov	r10, #2
	.loc 1 186 12 view .LVU393
	mov	r6, #16384
.LVL118:
	.loc 1 185 6 view .LVU394
	mov	r4, #64
	.loc 1 188 20 view .LVU395
	mov	r5, r0
.LVL119:
	.loc 1 190 2 is_stmt 1 view .LVU396
.LBB135:
	.loc 1 190 7 view .LVU397
	.loc 1 190 20 discriminator 1 view .LVU398
.L82:
	.loc 1 191 3 view .LVU399
	.loc 1 195 42 is_stmt 0 view .LVU400
	mul	r9, r4, r4
	.loc 1 191 3 view .LVU401
	mov	r1, r4
	mov	r0, r7
	bl	downscaleImage
.LVL120:
	.loc 1 193 3 is_stmt 1 view .LVU402
	.loc 1 195 49 is_stmt 0 view .LVU403
	lsl	fp, r9, #2
	.loc 1 193 3 view .LVU404
	mov	r3, r4
	mov	r2, r4
	mov	r1, r5
	mov	r0, r7
	bl	tileImage32
.LVL121:
	.loc 1 195 3 is_stmt 1 view .LVU405
	mov	r1, fp
	mov	r0, r5
	bl	GSPGPU_FlushDataCache
.LVL122:
	.loc 1 197 3 view .LVU406
	ldr	r1, [r8]
	mov	r2, fp
	add	r1, r1, r6, lsl #2
	mov	r0, r5
	bl	GX_RequestDma
.LVL123:
	.loc 1 198 3 view .LVU407
	.loc 1 201 8 is_stmt 0 view .LVU408
	add	r4, r4, r4, lsr #31
.LVL124:
	.loc 1 198 3 view .LVU409
	bl	gspWaitForAnyEvent
.LVL125:
	.loc 1 200 3 is_stmt 1 view .LVU410
	.loc 1 190 20 is_stmt 0 discriminator 1 view .LVU411
	cmp	r10, #1
	.loc 1 200 10 view .LVU412
	add	r6, r6, r9
.LVL126:
	.loc 1 201 3 is_stmt 1 view .LVU413
	.loc 1 201 8 is_stmt 0 view .LVU414
	asr	r4, r4, #1
.LVL127:
	.loc 1 190 37 is_stmt 1 discriminator 3 view .LVU415
	.loc 1 190 20 discriminator 1 view .LVU416
	movne	r10, #1
	bne	.L82
.L95:
.LBE135:
	.loc 1 204 2 view .LVU417
	mov	r0, r5
	bl	linearFree
.LVL128:
	.loc 1 205 2 view .LVU418
	mov	r0, r7
	.loc 1 206 1 is_stmt 0 view .LVU419
	add	sp, sp, #36
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
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
	.cfi_def_cfa_offset 0
.LVL129:
	.loc 1 205 2 view .LVU420
	b	linearFree
.LVL130:
.L94:
	.cfi_restore_state
.LBB136:
	.loc 1 177 3 is_stmt 1 view .LVU421
	ldr	r0, .L96+16
	bl	puts
.LVL131:
	b	.L70
.L97:
	.align	2
.L96:
	.word	.LC2
	.word	5381
	.word	.LANCHOR0
	.word	8388736
	.word	.LC3
.LBE136:
	.cfi_endproc
.LFE195:
	.size	Texture_MapInit, .-Texture_MapInit
	.section	.text.Texture_MapGetIcon,"ax",%progbits
	.align	2
	.global	Texture_MapGetIcon
	.syntax unified
	.arm
	.type	Texture_MapGetIcon, %function
Texture_MapGetIcon:
.LVL132:
.LFB196:
	.loc 1 208 70 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 209 2 view .LVU423
.LBB137:
.LBI137:
	.loc 1 14 10 view .LVU424
.LBB138:
	.loc 1 15 2 view .LVU425
	.loc 1 16 2 view .LVU426
	.loc 1 17 2 view .LVU427
	.loc 1 17 9 discriminator 1 view .LVU428
	.loc 1 17 9 is_stmt 0 discriminator 1 view .LVU429
.LBE138:
.LBE137:
	.loc 1 208 70 view .LVU430
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB141:
.LBB139:
	.loc 1 17 14 discriminator 1 view .LVU431
	ldrb	r3, [r2], #1	@ zero_extendqisi2
.LVL133:
	.loc 1 17 14 discriminator 1 view .LVU432
.LBE139:
.LBE141:
	.loc 1 208 70 view .LVU433
	mov	r4, r0
.LBB142:
.LBB140:
	.loc 1 17 9 discriminator 1 view .LVU434
	cmp	r3, #0
	.loc 1 15 16 view .LVU435
	ldr	ip, .L109
	.loc 1 17 9 discriminator 1 view .LVU436
	beq	.L99
.LVL134:
.L100:
	.loc 1 17 23 is_stmt 1 discriminator 2 view .LVU437
	add	ip, ip, ip, lsl #5
.LVL135:
	.loc 1 17 28 is_stmt 0 discriminator 2 view .LVU438
	add	ip, r3, ip
.LVL136:
	.loc 1 17 9 is_stmt 1 discriminator 1 view .LVU439
	.loc 1 17 14 is_stmt 0 discriminator 1 view .LVU440
	ldrb	r3, [r2], #1	@ zero_extendqisi2
.LVL137:
	.loc 1 17 9 discriminator 1 view .LVU441
	cmp	r3, #0
	bne	.L100
.LVL138:
.L99:
	.loc 1 17 9 discriminator 1 view .LVU442
.LBE140:
.LBE142:
.LBB143:
	.loc 1 210 23 is_stmt 1 discriminator 1 view .LVU443
	.loc 1 210 14 is_stmt 0 view .LVU444
	mov	r3, #0
	add	lr, r1, #24
	b	.L103
.LVL139:
.L101:
	.loc 1 210 51 discriminator 2 view .LVU445
	add	r3, r3, #1
.LVL140:
	.loc 1 210 23 is_stmt 1 discriminator 1 view .LVU446
	cmp	r3, #64
	beq	.L108
.LVL141:
.L103:
	.loc 1 211 3 view .LVU447
	.loc 1 210 51 discriminator 2 view .LVU448
	.loc 1 211 6 is_stmt 0 view .LVU449
	ldr	r2, [lr, r3, lsl #3]
	cmp	r2, ip
	bne	.L101
	.loc 1 212 4 is_stmt 1 view .LVU450
	.loc 1 212 21 is_stmt 0 view .LVU451
	add	r3, r3, #3
.LVL142:
	.loc 1 212 21 view .LVU452
	add	r1, r1, r3, lsl #3
.LVL143:
	.loc 1 212 21 view .LVU453
	ldm	r1, {r0, r1}
.LVL144:
	.loc 1 212 21 view .LVU454
	stm	r4, {r0, r1}
.LBE143:
	.loc 1 216 1 view .LVU455
	mov	r0, r4
	pop	{r4, pc}
.LVL145:
.L108:
	.loc 1 215 2 is_stmt 1 view .LVU456
	.loc 1 215 9 is_stmt 0 view .LVU457
	mov	r3, #0
.LVL146:
	.loc 1 216 1 view .LVU458
	mov	r0, r4
.LVL147:
	.loc 1 215 9 view .LVU459
	str	r3, [r4]
	str	r3, [r4, #4]
	.loc 1 216 1 view .LVU460
	pop	{r4, pc}
.L110:
	.align	2
.L109:
	.word	5381
	.cfi_endproc
.LFE196:
	.size	Texture_MapGetIcon, .-Texture_MapGetIcon
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.short	128
	.short	128
	.byte	2
	.byte	8
	.space	2
	.text
.Letext0:
	.file 3 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 6 "C:/devkitPro/libctru/include/3ds/types.h"
	.file 7 "C:/devkitPro/libctru/include/3ds/services/gspgpu.h"
	.file 8 "C:/devkitPro/libctru/include/3ds/gpu/gx.h"
	.file 9 "C:/devkitPro/libctru/include/3ds/gpu/enums.h"
	.file 10 "C:/Users/Elias/CLionProjects/3DSCraft/include/rendering/TextureMap.h"
	.file 11 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdio.h"
	.file 12 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Crash.h"
	.file 13 "C:/devkitPro/libctru/include/3ds/allocator/linear.h"
	.file 14 "C:/devkitPro/libctru/include/c3d/renderqueue.h"
	.file 15 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 16 "C:/Users/Elias/CLionProjects/3DSCraft/dependencies/lodepng/lodepng.h"
	.file 17 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1160
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2e
	.4byte	.LASF135
	.byte	0x1d
	.4byte	.LASF136
	.4byte	.LASF137
	.4byte	.LLRL95
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x47
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x37
	.byte	0x13
	.4byte	0x5a
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x6d
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x80
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x93
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2f
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x21
	.4byte	0xa1
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x3b
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0x4e
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x61
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x74
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x87
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x91
	.byte	0xd
	.4byte	0xa1
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.4byte	.LASF21
	.uleb128 0x1b
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0xad
	.uleb128 0x1b
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0xc5
	.uleb128 0x1b
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0xdd
	.uleb128 0x21
	.4byte	0x11d
	.uleb128 0x1b
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2a
	.byte	0xd
	.4byte	0x12d
	.uleb128 0x30
	.byte	0x4
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.4byte	.LASF23
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.4byte	.LASF24
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.uleb128 0x21
	.4byte	0x154
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.uleb128 0x9
	.4byte	0x11d
	.uleb128 0x10
	.4byte	0x47
	.byte	0x7
	.byte	0x35
	.4byte	0x1a8
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3f
	.byte	0x3
	.4byte	0x16c
	.uleb128 0x9
	.4byte	0x108
	.uleb128 0x9
	.4byte	0x154
	.uleb128 0x9
	.4byte	0x1c3
	.uleb128 0x31
	.uleb128 0x9
	.4byte	0x47
	.uleb128 0x9
	.4byte	0x15b
	.uleb128 0x10
	.4byte	0x47
	.byte	0x8
	.byte	0x13
	.4byte	0x1f8
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	0x47
	.byte	0x8
	.byte	0x22
	.4byte	0x216
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	0x47
	.byte	0x9
	.byte	0x1d
	.4byte	0x22e
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x9
	.byte	0x20
	.byte	0x3
	.4byte	0x216
	.uleb128 0x10
	.4byte	0x47
	.byte	0x9
	.byte	0x2d
	.4byte	0x26a
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x9
	.byte	0x34
	.byte	0x3
	.4byte	0x23a
	.uleb128 0x10
	.4byte	0x47
	.byte	0x9
	.byte	0x40
	.4byte	0x2d6
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF62
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF66
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0xd
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x9
	.byte	0x4f
	.byte	0x3
	.4byte	0x276
	.uleb128 0x9
	.4byte	0x1c9
	.uleb128 0x11
	.byte	0x18
	.byte	0x2
	.byte	0x4
	.byte	0x9
	.4byte	0x2fe
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x2
	.byte	0x6
	.byte	0x8
	.4byte	0x2fe
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x144
	.4byte	0x30e
	.uleb128 0x29
	.4byte	0x2d
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x2
	.byte	0x7
	.byte	0x3
	.4byte	0x2e7
	.uleb128 0x22
	.byte	0xb
	.4byte	0x337
	.uleb128 0x23
	.4byte	.LASF70
	.byte	0xd
	.byte	0x9
	.4byte	0x144
	.uleb128 0x23
	.4byte	.LASF71
	.byte	0xe
	.byte	0x10
	.4byte	0x337
	.byte	0
	.uleb128 0x9
	.4byte	0x30e
	.uleb128 0x11
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x3
	.4byte	0x360
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x2
	.byte	0x19
	.byte	0x8
	.4byte	0x112
	.byte	0
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x2
	.byte	0x1a
	.byte	0x8
	.4byte	0x112
	.byte	0x2
	.byte	0
	.uleb128 0x22
	.byte	0x14
	.4byte	0x378
	.uleb128 0x32
	.ascii	"dim\000"
	.byte	0x2
	.byte	0x16
	.byte	0x7
	.4byte	0x11d
	.uleb128 0x2a
	.4byte	0x33c
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.byte	0x3
	.4byte	0x3a9
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x2
	.byte	0x25
	.byte	0x8
	.4byte	0x112
	.byte	0
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x2
	.byte	0x26
	.byte	0x7
	.4byte	0x108
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x2
	.byte	0x27
	.byte	0x7
	.4byte	0x108
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.byte	0x20
	.4byte	0x3c0
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x22
	.byte	0x7
	.4byte	0x11d
	.uleb128 0x2a
	.4byte	0x378
	.byte	0
	.uleb128 0x11
	.byte	0x18
	.byte	0x2
	.byte	0x9
	.byte	0x9
	.4byte	0x411
	.uleb128 0x24
	.4byte	0x31a
	.byte	0
	.uleb128 0x33
	.ascii	"fmt\000"
	.byte	0x2
	.byte	0x11
	.byte	0xf
	.4byte	0x2d6
	.byte	0x4
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x12
	.byte	0x9
	.4byte	0xf5
	.byte	0x1c
	.byte	0x24
	.uleb128 0x24
	.4byte	0x360
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x2
	.byte	0x1e
	.byte	0x6
	.4byte	0x11d
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x2
	.byte	0x1f
	.byte	0x6
	.4byte	0x11d
	.byte	0x10
	.uleb128 0x24
	.4byte	0x3a9
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x2
	.byte	0x2a
	.byte	0x3
	.4byte	0x3c0
	.uleb128 0x11
	.byte	0x8
	.byte	0x2
	.byte	0x2c
	.byte	0x9
	.4byte	0x475
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x2
	.byte	0x2e
	.byte	0x6
	.4byte	0x112
	.byte	0
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x2
	.byte	0x2f
	.byte	0x6
	.4byte	0x112
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x30
	.byte	0x5
	.4byte	0x108
	.byte	0x4
	.byte	0x20
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x31
	.byte	0xf
	.4byte	0x2d6
	.byte	0x4
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x32
	.byte	0x19
	.4byte	0x26a
	.byte	0x3
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x33
	.byte	0x6
	.4byte	0x160
	.byte	0x1
	.byte	0x2b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x2
	.byte	0x34
	.byte	0x3
	.4byte	0x41d
	.uleb128 0x11
	.byte	0x8
	.byte	0xa
	.byte	0xc
	.byte	0x9
	.4byte	0x4aa
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xa
	.byte	0xd
	.byte	0xb
	.4byte	0xdd
	.byte	0
	.uleb128 0x2b
	.ascii	"u\000"
	.byte	0xa
	.4byte	0xb9
	.byte	0x4
	.uleb128 0x2b
	.ascii	"v\000"
	.byte	0xd
	.4byte	0xb9
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0xa
	.byte	0xf
	.byte	0x3
	.4byte	0x481
	.uleb128 0x34
	.2byte	0x218
	.byte	0xa
	.byte	0x11
	.byte	0x9
	.4byte	0x4db
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xa
	.byte	0x12
	.byte	0xa
	.4byte	0x411
	.byte	0
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xa
	.byte	0x13
	.byte	0x12
	.4byte	0x4db
	.byte	0x18
	.byte	0
	.uleb128 0x28
	.4byte	0x4aa
	.4byte	0x4eb
	.uleb128 0x29
	.4byte	0x2d
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0xa
	.byte	0x14
	.byte	0x3
	.4byte	0x4b6
	.uleb128 0x9
	.4byte	0x1c4
	.uleb128 0x35
	.4byte	.LASF138
	.byte	0x7
	.byte	0x8e
	.byte	0xe
	.4byte	0x1a8
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x8
	.byte	0x97
	.byte	0x8
	.4byte	0x138
	.4byte	0x528
	.uleb128 0x3
	.4byte	0x167
	.uleb128 0x3
	.4byte	0x167
	.uleb128 0x3
	.4byte	0x11d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0xb
	.byte	0xce
	.byte	0x5
	.4byte	0xa1
	.4byte	0x53f
	.uleb128 0x3
	.4byte	0x1c9
	.uleb128 0x2c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x2
	.byte	0x36
	.byte	0x5
	.4byte	0x160
	.4byte	0x55f
	.uleb128 0x3
	.4byte	0x55f
	.uleb128 0x3
	.4byte	0x337
	.uleb128 0x3
	.4byte	0x475
	.byte	0
	.uleb128 0x9
	.4byte	0x411
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0xc
	.byte	0x3
	.4byte	0x576
	.uleb128 0x3
	.4byte	0x1c9
	.uleb128 0x2c
	.byte	0
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0xd
	.byte	0x2b
	.4byte	0x587
	.uleb128 0x3
	.4byte	0x144
	.byte	0
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0xe
	.byte	0x4d
	.4byte	0x5ac
	.uleb128 0x3
	.4byte	0x167
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x3
	.4byte	0x167
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x3
	.4byte	0x11d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0xe
	.byte	0x4e
	.4byte	0x5d6
	.uleb128 0x3
	.4byte	0x167
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x3
	.4byte	0x167
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x3
	.4byte	0x11d
	.uleb128 0x3
	.4byte	0x11d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0xf
	.byte	0x5e
	.4byte	0x5e7
	.uleb128 0x3
	.4byte	0x144
	.byte	0
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x7
	.byte	0xd8
	.byte	0x8
	.4byte	0x138
	.4byte	0x602
	.uleb128 0x3
	.4byte	0x1be
	.uleb128 0x3
	.4byte	0x11d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0xd
	.byte	0xe
	.byte	0x7
	.4byte	0x144
	.4byte	0x618
	.uleb128 0x3
	.4byte	0xf5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x10
	.byte	0x8a
	.byte	0xa
	.4byte	0x2d
	.4byte	0x63d
	.uleb128 0x3
	.4byte	0x4f7
	.uleb128 0x3
	.4byte	0x63d
	.uleb128 0x3
	.4byte	0x63d
	.uleb128 0x3
	.4byte	0x1c9
	.byte	0
	.uleb128 0x9
	.4byte	0x2d
	.uleb128 0x36
	.4byte	.LASF139
	.byte	0x1
	.byte	0xd0
	.byte	0x11
	.4byte	0x4aa
	.4byte	.LFB196
	.4byte	.LFE196-.LFB196
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e9
	.uleb128 0x13
	.ascii	"map\000"
	.byte	0xd0
	.byte	0x31
	.4byte	0x6e9
	.4byte	.LLST88
	.4byte	.LVUS88
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0xd0
	.byte	0x3c
	.4byte	0x1b9
	.4byte	.LLST89
	.4byte	.LVUS89
	.uleb128 0x1c
	.ascii	"h\000"
	.byte	0xd1
	.byte	0xb
	.4byte	0xdd
	.uleb128 0x25
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.4byte	0x6aa
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0xd2
	.byte	0xe
	.4byte	0xf5
	.4byte	.LLST94
	.4byte	.LVUS94
	.byte	0
	.uleb128 0x18
	.4byte	0x1079
	.4byte	.LBI137
	.byte	.LVU424
	.4byte	.LLRL90
	.byte	0xd1
	.byte	0xf
	.uleb128 0x6
	.4byte	0x108a
	.4byte	.LLST91
	.4byte	.LVUS91
	.uleb128 0xd
	.4byte	.LLRL90
	.uleb128 0xc
	.4byte	0x1096
	.4byte	.LLST92
	.4byte	.LVUS92
	.uleb128 0xc
	.4byte	0x10a1
	.4byte	.LLST93
	.4byte	.LVUS93
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x4eb
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0x80
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab4
	.uleb128 0x13
	.ascii	"map\000"
	.byte	0x80
	.byte	0x23
	.4byte	0x6e9
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x80
	.byte	0x35
	.4byte	0x2e2
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x80
	.byte	0x40
	.4byte	0xa1
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x81
	.byte	0x6
	.4byte	0xa1
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x82
	.byte	0x6
	.4byte	0xa1
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x37
	.4byte	.LASF107
	.byte	0x1
	.byte	0x86
	.byte	0xc
	.4byte	0xa8
	.byte	0x2
	.uleb128 0x38
	.4byte	.LASF108
	.byte	0x1
	.byte	0x87
	.byte	0xc
	.4byte	0xa8
	.4byte	0x10000
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0x89
	.byte	0xc
	.4byte	0xab4
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x8c
	.byte	0x6
	.4byte	0xa1
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x8d
	.byte	0xe
	.4byte	0x1c9
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x5
	.ascii	"c\000"
	.byte	0x8e
	.byte	0x6
	.4byte	0xa1
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0xb9
	.byte	0x6
	.4byte	0xa1
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0xba
	.byte	0xc
	.4byte	0xe9
	.4byte	.LLST69
	.4byte	.LVUS69
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0xbc
	.byte	0x7
	.4byte	0x167
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x14
	.4byte	.LLRL71
	.4byte	0x81c
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x8a
	.byte	0xb
	.4byte	0xa1
	.4byte	.LLST72
	.4byte	.LVUS72
	.byte	0
	.uleb128 0x14
	.4byte	.LLRL73
	.4byte	0x920
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x90
	.byte	0xd
	.4byte	0xab4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.ascii	"w\000"
	.byte	0x90
	.byte	0x14
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.ascii	"h\000"
	.byte	0x90
	.byte	0x17
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0x91
	.byte	0xc
	.4byte	0xdd
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x14
	.4byte	.LLRL75
	.4byte	0x8dd
	.uleb128 0x1e
	.4byte	.LASF115
	.byte	0x9a
	.byte	0x15
	.4byte	0xab9
	.uleb128 0x14
	.4byte	.LLRL76
	.4byte	0x8a4
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x93
	.byte	0xd
	.4byte	0xa1
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0xd
	.4byte	.LLRL78
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x94
	.byte	0xe
	.4byte	0xa1
	.4byte	.LLST79
	.4byte	.LVUS79
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0x1079
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.byte	0x1
	.byte	0x9b
	.byte	0x18
	.uleb128 0x6
	.4byte	0x108a
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0xc
	.4byte	0x1096
	.4byte	.LLST81
	.4byte	.LVUS81
	.uleb128 0xc
	.4byte	0x10a1
	.4byte	.LLST82
	.4byte	.LVUS82
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL86
	.4byte	0x528
	.4byte	0x8f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL89
	.4byte	0x5d6
	.uleb128 0x1a
	.4byte	.LVL92
	.4byte	0x618
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.4byte	0x9bc
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0xbe
	.byte	0xb
	.4byte	0xa1
	.4byte	.LLST87
	.4byte	.LVUS87
	.uleb128 0x8
	.4byte	.LVL120
	.4byte	0xabe
	.4byte	0x958
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL121
	.4byte	0xc87
	.4byte	0x97e
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL122
	.4byte	0x5e7
	.4byte	0x998
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL123
	.4byte	0x508
	.4byte	0x9b2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL125
	.4byte	0x4fc
	.byte	0
	.uleb128 0x3a
	.4byte	0x10ab
	.4byte	.LBI129
	.byte	.LVU379
	.4byte	.LLRL83
	.byte	0x1
	.byte	0xb2
	.byte	0x2
	.4byte	0x9f9
	.uleb128 0x6
	.4byte	0x10d0
	.4byte	.LLST84
	.4byte	.LVUS84
	.uleb128 0x6
	.4byte	0x10c4
	.4byte	.LLST84
	.4byte	.LVUS84
	.uleb128 0x6
	.4byte	0x10b8
	.4byte	.LLST86
	.4byte	.LVUS86
	.byte	0
	.uleb128 0x8
	.4byte	.LVL80
	.4byte	0x602
	.4byte	0xa0e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x8
	.4byte	.LVL112
	.4byte	0x5e7
	.4byte	0xa29
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
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x8
	.4byte	.LVL113
	.4byte	0x53f
	.4byte	0xa42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.4byte	.LVL116
	.4byte	0x587
	.4byte	0xa6e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.4byte	0x800080
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0xc
	.4byte	0x800080
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x8
	.4byte	.LVL117
	.4byte	0x602
	.4byte	0xa83
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.byte	0
	.uleb128 0x8
	.4byte	.LVL128
	.4byte	0x576
	.4byte	0xa97
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.4byte	.LVL130
	.4byte	0x576
	.uleb128 0x1a
	.4byte	.LVL131
	.4byte	0x1158
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xdd
	.uleb128 0x9
	.4byte	0x4aa
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x6a
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb47
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x6a
	.byte	0x19
	.4byte	0x1b4
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x6a
	.byte	0x23
	.4byte	0xa1
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x6b
	.byte	0x6
	.4byte	0xa1
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x5
	.ascii	"j\000"
	.byte	0x6b
	.byte	0x9
	.4byte	0xa1
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0xd
	.4byte	.LLRL56
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x6e
	.byte	0xe
	.4byte	0x128
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x6f
	.byte	0xe
	.4byte	0x128
	.4byte	.LLST58
	.4byte	.LVUS58
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF119
	.byte	0x5f
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc82
	.uleb128 0x13
	.ascii	"src\000"
	.byte	0x5f
	.byte	0x22
	.4byte	0xc82
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x13
	.ascii	"dst\000"
	.byte	0x5f
	.byte	0x30
	.4byte	0xc82
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x5f
	.byte	0x39
	.4byte	0xa1
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0xd
	.4byte	.LLRL38
	.uleb128 0x5
	.ascii	"j\000"
	.byte	0x60
	.byte	0xb
	.4byte	0xa1
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x26
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x61
	.byte	0xc
	.4byte	0xa1
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0xd
	.4byte	.LLRL41
	.uleb128 0x1e
	.4byte	.LASF120
	.byte	0x62
	.byte	0x8
	.4byte	0x11d
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0x63
	.byte	0x8
	.4byte	0x11d
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x5
	.ascii	"v\000"
	.byte	0x65
	.byte	0x7
	.4byte	0x108
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x18
	.4byte	0xddd
	.4byte	.LBI83
	.byte	.LVU180
	.4byte	.LLRL44
	.byte	0x63
	.byte	0x15
	.uleb128 0x6
	.4byte	0xe00
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x20
	.4byte	0xdf6
	.uleb128 0x6
	.4byte	0xdec
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0xd
	.4byte	.LLRL44
	.uleb128 0xc
	.4byte	0xe0c
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0xc
	.4byte	0xe15
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x18
	.4byte	0xe21
	.4byte	.LBI85
	.byte	.LVU182
	.4byte	.LLRL49
	.byte	0x4f
	.byte	0xa
	.uleb128 0x20
	.4byte	0xe3a
	.uleb128 0x6
	.4byte	0xe30
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0xd
	.4byte	.LLRL49
	.uleb128 0xc
	.4byte	0xe44
	.4byte	.LLST51
	.4byte	.LVUS51
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xad
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x54
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddd
	.uleb128 0x13
	.ascii	"src\000"
	.byte	0x54
	.byte	0x17
	.4byte	0x167
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x13
	.ascii	"dst\000"
	.byte	0x54
	.byte	0x20
	.4byte	0x1b4
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0x54
	.byte	0x29
	.4byte	0xa1
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x54
	.byte	0x34
	.4byte	0xa1
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xd
	.4byte	.LLRL7
	.uleb128 0x5
	.ascii	"j\000"
	.byte	0x55
	.byte	0xb
	.4byte	0xa1
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x26
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x56
	.byte	0xc
	.4byte	0xa1
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xd
	.4byte	.LLRL10
	.uleb128 0x7
	.4byte	.LASF120
	.byte	0x57
	.byte	0x8
	.4byte	0x11d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0x58
	.byte	0x8
	.4byte	0x11d
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x5
	.ascii	"v\000"
	.byte	0x5a
	.byte	0x8
	.4byte	0x11d
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x18
	.4byte	0xddd
	.4byte	.LBI36
	.byte	.LVU35
	.4byte	.LLRL14
	.byte	0x58
	.byte	0x15
	.uleb128 0x6
	.4byte	0xe00
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x20
	.4byte	0xdf6
	.uleb128 0x6
	.4byte	0xdec
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xd
	.4byte	.LLRL14
	.uleb128 0xc
	.4byte	0xe0c
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xc
	.4byte	0xe15
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x18
	.4byte	0xe21
	.4byte	.LBI38
	.byte	.LVU37
	.4byte	.LLRL19
	.byte	0x4f
	.byte	0xa
	.uleb128 0x20
	.4byte	0xe3a
	.uleb128 0x6
	.4byte	0xe30
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xd
	.4byte	.LLRL19
	.uleb128 0xc
	.4byte	0xe44
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF126
	.byte	0x1
	.byte	0x4e
	.4byte	0x11d
	.4byte	0xe21
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x1
	.byte	0x4e
	.byte	0x29
	.4byte	0x11d
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x1
	.byte	0x4e
	.byte	0x30
	.4byte	0x11d
	.uleb128 0x15
	.4byte	.LASF125
	.byte	0x1
	.byte	0x4e
	.byte	0x37
	.4byte	0x11d
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x4f
	.byte	0x6
	.4byte	0x11d
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x50
	.byte	0xf
	.4byte	0x2d
	.byte	0
	.uleb128 0x27
	.4byte	.LASF127
	.byte	0x1
	.byte	0x46
	.4byte	0x11d
	.4byte	0xe4e
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x1
	.byte	0x46
	.byte	0x29
	.4byte	0x11d
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x1
	.byte	0x46
	.byte	0x30
	.4byte	0x11d
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x47
	.byte	0x6
	.4byte	0x11d
	.byte	0
	.uleb128 0x19
	.4byte	.LASF128
	.byte	0x17
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1079
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0x17
	.byte	0x1c
	.4byte	0x55f
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x17
	.byte	0x2a
	.4byte	0x1b9
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x18
	.byte	0xc
	.4byte	0xab4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x19
	.byte	0xf
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LASF72
	.byte	0x19
	.byte	0x1c
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0x1a
	.byte	0xb
	.4byte	0xdd
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x14
	.4byte	.LLRL25
	.4byte	0x1039
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0x1c
	.byte	0xd
	.4byte	0xab4
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x14
	.4byte	.LLRL27
	.4byte	0xf17
	.uleb128 0x5
	.ascii	"j\000"
	.byte	0x1f
	.byte	0xd
	.4byte	0xa1
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x26
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x20
	.byte	0xe
	.4byte	0xa1
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.4byte	0xf36
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x24
	.byte	0xd
	.4byte	0xa1
	.4byte	.LLST34
	.4byte	.LVUS34
	.byte	0
	.uleb128 0x3c
	.4byte	0x10dd
	.4byte	.LBI69
	.byte	.LVU112
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.byte	0x2e
	.byte	0x3
	.4byte	0xf99
	.uleb128 0x6
	.4byte	0x1110
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x6
	.4byte	0x1104
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x6
	.4byte	0x10f8
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x6
	.4byte	0x10ec
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x53f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL30
	.4byte	0x602
	.uleb128 0x8
	.4byte	.LVL40
	.4byte	0x5e7
	.4byte	0xfc1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL41
	.4byte	0x5d6
	.uleb128 0x8
	.4byte	.LVL42
	.4byte	0x5ac
	.4byte	0xfee
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x8
	.4byte	.LVL43
	.4byte	0x576
	.4byte	0x1002
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL48
	.4byte	0xc87
	.4byte	0x1022
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
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
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL53
	.4byte	0x587
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL28
	.4byte	0x618
	.4byte	0x105f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL46
	.4byte	0x564
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF131
	.byte	0x1
	.byte	0xe
	.byte	0xa
	.4byte	0xdd
	.byte	0x1
	.4byte	0x10ab
	.uleb128 0xf
	.ascii	"str\000"
	.byte	0x1
	.byte	0xe
	.byte	0x15
	.4byte	0x1b9
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0xf
	.byte	0x10
	.4byte	0x93
	.uleb128 0x1c
	.ascii	"c\000"
	.byte	0x10
	.byte	0x6
	.4byte	0xa1
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF140
	.byte	0x2
	.byte	0x9d
	.byte	0x14
	.byte	0x3
	.4byte	0x10dd
	.uleb128 0xf
	.ascii	"tex\000"
	.byte	0x2
	.byte	0x9d
	.byte	0x2e
	.4byte	0x55f
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0x2
	.byte	0x9d
	.byte	0x4c
	.4byte	0x22e
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0x2
	.byte	0x9d
	.byte	0x70
	.4byte	0x22e
	.byte	0
	.uleb128 0x27
	.4byte	.LASF134
	.byte	0x2
	.byte	0x70
	.4byte	0x160
	.4byte	0x111d
	.uleb128 0xf
	.ascii	"tex\000"
	.byte	0x2
	.byte	0x70
	.byte	0x2c
	.4byte	0x55f
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x2
	.byte	0x70
	.byte	0x35
	.4byte	0x112
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x2
	.byte	0x70
	.byte	0x40
	.4byte	0x112
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x2
	.byte	0x70
	.byte	0x55
	.4byte	0x2d6
	.byte	0
	.uleb128 0x3f
	.4byte	0x1079
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1158
	.uleb128 0x6
	.4byte	0x108a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xc
	.4byte	0x1096
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xc
	.4byte	0x10a1
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x40
	.4byte	.LASF141
	.4byte	.LASF142
	.byte	0x11
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x10
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
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
.LVUS88:
	.uleb128 0
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 .LVU456
	.uleb128 .LVU456
	.uleb128 0
.LLST88:
	.byte	0x6
	.4byte	.LVL132
	.byte	0x4
	.uleb128 .LVL132-.LVL132
	.uleb128 .LVL143-.LVL132
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL143-.LVL132
	.uleb128 .LVL145-.LVL132
	.uleb128 0x3
	.byte	0x7e
	.sleb128 -24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL145-.LVL132
	.uleb128 .LFE196-.LVL132
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS89:
	.uleb128 0
	.uleb128 .LVU432
	.uleb128 .LVU432
	.uleb128 .LVU437
	.uleb128 .LVU437
	.uleb128 0
.LLST89:
	.byte	0x6
	.4byte	.LVL132
	.byte	0x4
	.uleb128 .LVL132-.LVL132
	.uleb128 .LVL133-.LVL132
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL133-.LVL132
	.uleb128 .LVL134-.LVL132
	.uleb128 0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL134-.LVL132
	.uleb128 .LFE196-.LVL132
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
.LVUS94:
	.uleb128 .LVU442
	.uleb128 .LVU445
	.uleb128 .LVU445
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 .LVU456
	.uleb128 .LVU456
	.uleb128 .LVU458
.LLST94:
	.byte	0x6
	.4byte	.LVL138
	.byte	0x4
	.uleb128 .LVL138-.LVL138
	.uleb128 .LVL139-.LVL138
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL139-.LVL138
	.uleb128 .LVL142-.LVL138
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL142-.LVL138
	.uleb128 .LVL145-.LVL138
	.uleb128 0x3
	.byte	0x73
	.sleb128 -3
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL145-.LVL138
	.uleb128 .LVL146-.LVL138
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS91:
	.uleb128 .LVU424
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 .LVU432
	.uleb128 .LVU432
	.uleb128 .LVU440
	.uleb128 .LVU440
	.uleb128 .LVU441
	.uleb128 .LVU441
	.uleb128 .LVU442
.LLST91:
	.byte	0x6
	.4byte	.LVL132
	.byte	0x4
	.uleb128 .LVL132-.LVL132
	.uleb128 .LVL132-.LVL132
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL132-.LVL132
	.uleb128 .LVL133-.LVL132
	.uleb128 0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL133-.LVL132
	.uleb128 .LVL136-.LVL132
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL136-.LVL132
	.uleb128 .LVL137-.LVL132
	.uleb128 0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL137-.LVL132
	.uleb128 .LVL138-.LVL132
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS92:
	.uleb128 .LVU426
	.uleb128 .LVU437
	.uleb128 .LVU437
	.uleb128 .LVU438
	.uleb128 .LVU439
	.uleb128 .LVU442
.LLST92:
	.byte	0x6
	.4byte	.LVL132
	.byte	0x4
	.uleb128 .LVL132-.LVL132
	.uleb128 .LVL134-.LVL132
	.uleb128 0x4
	.byte	0xa
	.2byte	0x1505
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL134-.LVL132
	.uleb128 .LVL135-.LVL132
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL136-.LVL132
	.uleb128 .LVL138-.LVL132
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS93:
	.uleb128 .LVU432
	.uleb128 .LVU442
.LLST93:
	.byte	0x8
	.4byte	.LVL133
	.uleb128 .LVL138-.LVL133
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 0
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 .LVU420
	.uleb128 .LVU420
	.uleb128 .LVU421
	.uleb128 .LVU421
	.uleb128 0
.LLST59:
	.byte	0x6
	.4byte	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL79-.LVL78
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL79-.LVL78
	.uleb128 .LVL129-.LVL78
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL129-.LVL78
	.uleb128 .LVL130-.LVL78
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
	.uleb128 .LVL130-.LVL78
	.uleb128 .LFE195-.LVL78
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS60:
	.uleb128 0
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 0
.LLST60:
	.byte	0x6
	.4byte	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL80-1-.LVL78
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL80-1-.LVL78
	.uleb128 .LVL85-.LVL78
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL85-.LVL78
	.uleb128 .LFE195-.LVL78
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
.LVUS61:
	.uleb128 0
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU421
	.uleb128 .LVU421
	.uleb128 0
.LLST61:
	.byte	0x6
	.4byte	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL80-1-.LVL78
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL80-1-.LVL78
	.uleb128 .LVL118-.LVL78
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL118-.LVL78
	.uleb128 .LVL130-.LVL78
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
	.uleb128 .LVL130-.LVL78
	.uleb128 .LFE195-.LVL78
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS62:
	.uleb128 .LVU277
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU362
	.uleb128 .LVU365
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU372
.LLST62:
	.byte	0x6
	.4byte	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL85-.LVL78
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL85-.LVL78
	.uleb128 .LVL107-.LVL78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL108-.LVL78
	.uleb128 .LVL109-.LVL78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL109-.LVL78
	.uleb128 .LVL111-.LVL78
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS63:
	.uleb128 .LVU278
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU369
	.uleb128 .LVU369
	.uleb128 .LVU371
	.uleb128 .LVU371
	.uleb128 .LVU372
.LLST63:
	.byte	0x6
	.4byte	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL85-.LVL78
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL85-.LVL78
	.uleb128 .LVL109-.LVL78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x4
	.uleb128 .LVL109-.LVL78
	.uleb128 .LVL110-.LVL78
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL110-.LVL78
	.uleb128 .LVL111-.LVL78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
.LVUS64:
	.uleb128 .LVU287
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU420
	.uleb128 .LVU420
	.uleb128 .LVU421
	.uleb128 .LVU421
	.uleb128 0
.LLST64:
	.byte	0x6
	.4byte	.LVL81
	.byte	0x4
	.uleb128 .LVL81-.LVL81
	.uleb128 .LVL85-.LVL81
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL85-.LVL81
	.uleb128 .LVL129-.LVL81
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL129-.LVL81
	.uleb128 .LVL130-1-.LVL81
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL130-.LVL81
	.uleb128 .LFE195-.LVL81
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS65:
	.uleb128 .LVU295
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU372
.LLST65:
	.byte	0x6
	.4byte	.LVL83
	.byte	0x4
	.uleb128 .LVL83-.LVL83
	.uleb128 .LVL85-.LVL83
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL85-.LVL83
	.uleb128 .LVL88-.LVL83
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL88-.LVL83
	.uleb128 .LVL89-.LVL83
	.uleb128 0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL89-.LVL83
	.uleb128 .LVL111-.LVL83
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS66:
	.uleb128 .LVU297
	.uleb128 .LVU307
	.uleb128 .LVU314
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU349
	.uleb128 .LVU372
	.uleb128 .LVU399
	.uleb128 .LVU421
	.uleb128 0
.LLST66:
	.byte	0x6
	.4byte	.LVL84
	.byte	0x4
	.uleb128 .LVL84-.LVL84
	.uleb128 .LVL87-.LVL84
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL90-.LVL84
	.uleb128 .LVL100-.LVL84
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL100-.LVL84
	.uleb128 .LVL102-.LVL84
	.uleb128 0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL111-.LVL84
	.uleb128 .LVL119-.LVL84
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL130-.LVL84
	.uleb128 .LFE195-.LVL84
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS67:
	.uleb128 .LVU298
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU315
	.uleb128 .LVU315
	.uleb128 .LVU372
.LLST67:
	.byte	0x6
	.4byte	.LVL84
	.byte	0x4
	.uleb128 .LVL84-.LVL84
	.uleb128 .LVL85-.LVL84
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL85-.LVL84
	.uleb128 .LVL88-.LVL84
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL88-.LVL84
	.uleb128 .LVL90-.LVL84
	.uleb128 0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL90-.LVL84
	.uleb128 .LVL111-.LVL84
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS68:
	.uleb128 .LVU390
	.uleb128 .LVU399
	.uleb128 .LVU399
	.uleb128 .LVU409
	.uleb128 .LVU415
	.uleb128 .LVU420
.LLST68:
	.byte	0x6
	.4byte	.LVL116
	.byte	0x4
	.uleb128 .LVL116-.LVL116
	.uleb128 .LVL119-.LVL116
	.uleb128 0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL119-.LVL116
	.uleb128 .LVL124-.LVL116
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL127-.LVL116
	.uleb128 .LVL129-.LVL116
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS69:
	.uleb128 .LVU391
	.uleb128 .LVU399
	.uleb128 .LVU399
	.uleb128 .LVU420
.LLST69:
	.byte	0x6
	.4byte	.LVL116
	.byte	0x4
	.uleb128 .LVL116-.LVL116
	.uleb128 .LVL119-.LVL116
	.uleb128 0x4
	.byte	0xa
	.2byte	0x4000
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL119-.LVL116
	.uleb128 .LVL129-.LVL116
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS70:
	.uleb128 .LVU396
	.uleb128 .LVU399
	.uleb128 .LVU399
	.uleb128 .LVU420
.LLST70:
	.byte	0x6
	.4byte	.LVL119
	.byte	0x4
	.uleb128 .LVL119-.LVL119
	.uleb128 .LVL119-.LVL119
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL119-.LVL119
	.uleb128 .LVL129-.LVL119
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS72:
	.uleb128 .LVU289
	.uleb128 .LVU290
.LLST72:
	.byte	0x8
	.4byte	.LVL81
	.uleb128 .LVL82-.LVL81
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS74:
	.uleb128 .LVU323
	.uleb128 .LVU330
.LLST74:
	.byte	0x8
	.4byte	.LVL93
	.uleb128 .LVL94-.LVL93
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS77:
	.uleb128 .LVU332
	.uleb128 .LVU372
.LLST77:
	.byte	0x8
	.4byte	.LVL95
	.uleb128 .LVL111-.LVL95
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS79:
	.uleb128 .LVU332
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU348
.LLST79:
	.byte	0x6
	.4byte	.LVL95
	.byte	0x4
	.uleb128 .LVL95-.LVL95
	.uleb128 .LVL96-.LVL95
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL96-.LVL95
	.uleb128 .LVL101-.LVL95
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS80:
	.uleb128 .LVU344
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU355
.LLST80:
	.byte	0x6
	.4byte	.LVL99
	.byte	0x4
	.uleb128 .LVL99-.LVL99
	.uleb128 .LVL99-.LVL99
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL99-.LVL99
	.uleb128 .LVL100-.LVL99
	.uleb128 0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL100-.LVL99
	.uleb128 .LVL104-.LVL99
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL104-.LVL99
	.uleb128 .LVL105-.LVL99
	.uleb128 0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL105-.LVL99
	.uleb128 .LVL106-.LVL99
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS81:
	.uleb128 .LVU344
	.uleb128 .LVU349
	.uleb128 .LVU349
	.uleb128 .LVU350
	.uleb128 .LVU351
	.uleb128 .LVU354
.LLST81:
	.byte	0x6
	.4byte	.LVL99
	.byte	0x4
	.uleb128 .LVL99-.LVL99
	.uleb128 .LVL102-.LVL99
	.uleb128 0x4
	.byte	0xa
	.2byte	0x1505
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL102-.LVL99
	.uleb128 .LVL103-.LVL99
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL104-.LVL99
	.uleb128 .LVL106-.LVL99
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS82:
	.uleb128 .LVU347
	.uleb128 .LVU354
.LLST82:
	.byte	0x8
	.4byte	.LVL100
	.uleb128 .LVL106-.LVL100
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS87:
	.uleb128 .LVU398
	.uleb128 .LVU399
.LLST87:
	.byte	0x8
	.4byte	.LVL119
	.uleb128 .LVL119-.LVL119
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS84:
	.uleb128 .LVU379
	.uleb128 .LVU387
.LLST84:
	.byte	0x8
	.4byte	.LVL114
	.uleb128 .LVL115-.LVL114
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS86:
	.uleb128 .LVU379
	.uleb128 .LVU387
.LLST86:
	.byte	0x8
	.4byte	.LVL114
	.uleb128 .LVL115-.LVL114
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST52:
	.byte	0x6
	.4byte	.LVL71
	.byte	0x4
	.uleb128 .LVL71-.LVL71
	.uleb128 .LVL72-.LVL71
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL72-.LVL71
	.uleb128 .LFE194-.LVL71
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS53:
	.uleb128 0
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 0
.LLST53:
	.byte	0x6
	.4byte	.LVL71
	.byte	0x4
	.uleb128 .LVL71-.LVL71
	.uleb128 .LVL73-.LVL71
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL73-.LVL71
	.uleb128 .LFE194-.LVL71
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS54:
	.uleb128 .LVU223
	.uleb128 .LVU225
.LLST54:
	.byte	0x8
	.4byte	.LVL73
	.uleb128 .LVL74-.LVL73
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS55:
	.uleb128 .LVU217
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 0
.LLST55:
	.byte	0x6
	.4byte	.LVL71
	.byte	0x4
	.uleb128 .LVL71-.LVL71
	.uleb128 .LVL73-.LVL71
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.LVL71
	.uleb128 .LFE194-.LVL71
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS57:
	.uleb128 .LVU226
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 0
.LLST57:
	.byte	0x6
	.4byte	.LVL74
	.byte	0x4
	.uleb128 .LVL74-.LVL74
	.uleb128 .LVL76-.LVL74
	.uleb128 0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL76-.LVL74
	.uleb128 .LFE194-.LVL74
	.uleb128 0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS58:
	.uleb128 .LVU227
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 0
.LLST58:
	.byte	0x6
	.4byte	.LVL74
	.byte	0x4
	.uleb128 .LVL74-.LVL74
	.uleb128 .LVL75-.LVL74
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.LVL74
	.uleb128 .LFE194-.LVL74
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST35:
	.byte	0x6
	.4byte	.LVL54
	.byte	0x4
	.uleb128 .LVL54-.LVL54
	.uleb128 .LVL56-.LVL54
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL56-.LVL54
	.uleb128 .LFE193-.LVL54
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
.LVUS36:
	.uleb128 0
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 0
.LLST36:
	.byte	0x6
	.4byte	.LVL54
	.byte	0x4
	.uleb128 .LVL54-.LVL54
	.uleb128 .LVL55-.LVL54
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL55-.LVL54
	.uleb128 .LFE193-.LVL54
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 0
.LLST37:
	.byte	0x6
	.4byte	.LVL54
	.byte	0x4
	.uleb128 .LVL54-.LVL54
	.uleb128 .LVL57-.LVL54
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL57-.LVL54
	.uleb128 .LFE193-.LVL54
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS39:
	.uleb128 .LVU162
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 0
.LLST39:
	.byte	0x6
	.4byte	.LVL54
	.byte	0x4
	.uleb128 .LVL54-.LVL54
	.uleb128 .LVL57-.LVL54
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL57-.LVL54
	.uleb128 .LFE193-.LVL54
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS40:
	.uleb128 .LVU170
	.uleb128 .LVU176
	.uleb128 .LVU177
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU210
.LLST40:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL58-.LVL57
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.LVL57
	.uleb128 .LVL65-.LVL57
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL65-.LVL57
	.uleb128 .LVL68-.LVL57
	.uleb128 0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 .LVU200
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU213
.LLST42:
	.byte	0x6
	.4byte	.LVL66
	.byte	0x4
	.uleb128 .LVL66-.LVL66
	.uleb128 .LVL67-.LVL66
	.uleb128 0x16
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL66
	.uleb128 .LVL70-.LVL66
	.uleb128 0x9b
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x37
	.byte	0x25
	.byte	0x21
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 .LVU202
	.uleb128 0
.LLST43:
	.byte	0x8
	.4byte	.LVL66
	.uleb128 .LFE193-.LVL66
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS45:
	.uleb128 .LVU180
	.uleb128 .LVU200
.LLST45:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL66-.LVL59
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS46:
	.uleb128 .LVU180
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU200
.LLST46:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL65-.LVL59
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL65-.LVL59
	.uleb128 .LVL66-.LVL59
	.uleb128 0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS47:
	.uleb128 .LVU197
	.uleb128 .LVU200
.LLST47:
	.byte	0x8
	.4byte	.LVL66
	.uleb128 .LVL66-.LVL66
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS48:
	.uleb128 .LVU199
	.uleb128 .LVU200
.LLST48:
	.byte	0x8
	.4byte	.LVL66
	.uleb128 .LVL66-.LVL66
	.uleb128 0xd
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 .LVU182
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU197
.LLST50:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL65-.LVL59
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL65-.LVL59
	.uleb128 .LVL66-.LVL59
	.uleb128 0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 .LVU185
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU197
.LLST51:
	.byte	0x6
	.4byte	.LVL60
	.byte	0x4
	.uleb128 .LVL60-.LVL60
	.uleb128 .LVL61-.LVL60
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL61-.LVL60
	.uleb128 .LVL62-.LVL60
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL62-.LVL60
	.uleb128 .LVL63-.LVL60
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL63-.LVL60
	.uleb128 .LVL64-.LVL60
	.uleb128 0x15
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x77
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL64-.LVL60
	.uleb128 .LVL66-.LVL60
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL66-.LVL60
	.uleb128 .LVL66-.LVL60
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL10-.LVL7
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL10-.LVL7
	.uleb128 .LFE192-.LVL7
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
.LVUS4:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LFE192-.LVL7
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL10-.LVL7
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL10-.LVL7
	.uleb128 .LFE192-.LVL7
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL9-.LVL7
	.uleb128 .LFE192-.LVL7
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS8:
	.uleb128 .LVU17
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL10-.LVL7
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL7
	.uleb128 .LFE192-.LVL7
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS9:
	.uleb128 .LVU25
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU67
.LLST9:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL20-.LVL10
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL20-.LVL10
	.uleb128 .LVL22-.LVL10
	.uleb128 0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL10
	.uleb128 .LVL23-.LVL10
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS11:
	.uleb128 .LVU34
	.uleb128 .LVU67
.LLST11:
	.byte	0x8
	.4byte	.LVL11
	.uleb128 .LVL23-.LVL11
	.uleb128 0x6
	.byte	0x77
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU54
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU67
.LLST12:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0x10
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x7b
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.LVL17
	.uleb128 .LVL19-.LVL17
	.uleb128 0x13
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL17
	.uleb128 .LVL20-.LVL17
	.uleb128 0x70
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x27
	.byte	0x75
	.sleb128 0
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x27
	.byte	0x75
	.sleb128 0
	.byte	0x1a
	.byte	0x37
	.byte	0x25
	.byte	0x21
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL17
	.uleb128 .LVL23-.LVL17
	.uleb128 0x70
	.byte	0x70
	.sleb128 -1
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 -1
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x70
	.sleb128 -1
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 -1
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x27
	.byte	0x75
	.sleb128 0
	.byte	0x1a
	.byte	0x70
	.sleb128 -1
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 -1
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x70
	.sleb128 -1
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 -1
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x27
	.byte	0x75
	.sleb128 0
	.byte	0x1a
	.byte	0x37
	.byte	0x25
	.byte	0x21
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x70
	.sleb128 -1
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU62
	.uleb128 .LVU67
.LLST13:
	.byte	0x8
	.4byte	.LVL21
	.uleb128 .LVL23-.LVL21
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS15:
	.uleb128 .LVU35
	.uleb128 .LVU54
.LLST15:
	.byte	0x8
	.4byte	.LVL11
	.uleb128 .LVL17-.LVL11
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU35
	.uleb128 .LVU54
.LLST16:
	.byte	0x8
	.4byte	.LVL11
	.uleb128 .LVL17-.LVL11
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS17:
	.uleb128 .LVU51
	.uleb128 .LVU54
.LLST17:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL17-.LVL17
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU53
	.uleb128 .LVU54
.LLST18:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL17-.LVL17
	.uleb128 0x8
	.byte	0x70
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU37
	.uleb128 .LVU51
.LLST20:
	.byte	0x8
	.4byte	.LVL11
	.uleb128 .LVL17-.LVL11
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS21:
	.uleb128 .LVU41
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU51
.LLST21:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LVL14-.LVL12
	.uleb128 0x8
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL12
	.uleb128 .LVL15-.LVL12
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL15-.LVL12
	.uleb128 .LVL16-.LVL12
	.uleb128 0x15
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x70
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x21
	.byte	0x32
	.byte	0x24
	.byte	0x27
	.byte	0x76
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL12
	.uleb128 .LVL17-.LVL12
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL17-.LVL12
	.uleb128 .LVL17-.LVL12
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL27-.LVL25
	.uleb128 .LFE189-.LVL25
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST23:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL26-.LVL25
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL26-.LVL25
	.uleb128 .LVL28-1-.LVL25
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL28-1-.LVL25
	.uleb128 .LVL31-.LVL25
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL31-.LVL25
	.uleb128 .LVL44-.LVL25
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
	.uleb128 .LVL44-.LVL25
	.uleb128 .LVL47-.LVL25
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL47-.LVL25
	.uleb128 .LFE189-.LVL25
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
.LVUS24:
	.uleb128 .LVU86
	.uleb128 .LVU91
	.uleb128 .LVU138
	.uleb128 .LVU139
.LLST24:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL29-.LVL28
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL44-.LVL28
	.uleb128 .LVL45-.LVL28
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS26:
	.uleb128 .LVU95
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU138
	.uleb128 .LVU141
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 0
.LLST26:
	.byte	0x6
	.4byte	.LVL31
	.byte	0x4
	.uleb128 .LVL31-.LVL31
	.uleb128 .LVL33-.LVL31
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL33-.LVL31
	.uleb128 .LVL44-.LVL31
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL47-.LVL31
	.uleb128 .LVL49-.LVL31
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL49-.LVL31
	.uleb128 .LVL51-.LVL31
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL51-.LVL31
	.uleb128 .LFE189-.LVL31
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS28:
	.uleb128 .LVU99
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU110
.LLST28:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL34-.LVL32
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL32
	.uleb128 .LVL37-.LVL32
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS29:
	.uleb128 .LVU102
	.uleb128 .LVU103
.LLST29:
	.byte	0x8
	.4byte	.LVL34
	.uleb128 .LVL35-.LVL34
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU143
	.uleb128 .LVU148
.LLST34:
	.byte	0x8
	.4byte	.LVL50
	.uleb128 .LVL52-.LVL50
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU113
	.uleb128 .LVU117
.LLST30:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL39-.LVL37
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 .LVU112
	.uleb128 .LVU117
.LLST31:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL39-.LVL37
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS32:
	.uleb128 .LVU112
	.uleb128 .LVU116
.LLST32:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS33:
	.uleb128 .LVU112
	.uleb128 .LVU117
.LLST33:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL39-.LVL37
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU13
	.uleb128 .LVU13
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
	.uleb128 .LVL2-.LVL0
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LFE188-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU11
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x4
	.byte	0xa
	.2byte	0x1505
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LFE188-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS2:
	.uleb128 .LVU7
	.uleb128 0
.LLST2:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LFE188-.LVL2
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
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
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.4byte	.LFB196
	.4byte	.LFE196-.LFB196
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
.LLRL7:
	.byte	0x5
	.4byte	.LBB33
	.byte	0x4
	.uleb128 .LBB33-.LBB33
	.uleb128 .LBE33-.LBB33
	.byte	0x4
	.uleb128 .LBB58-.LBB33
	.uleb128 .LBE58-.LBB33
	.byte	0
.LLRL10:
	.byte	0x5
	.4byte	.LBB35
	.byte	0x4
	.uleb128 .LBB35-.LBB35
	.uleb128 .LBE35-.LBB35
	.byte	0x4
	.uleb128 .LBB54-.LBB35
	.uleb128 .LBE54-.LBB35
	.byte	0x4
	.uleb128 .LBB55-.LBB35
	.uleb128 .LBE55-.LBB35
	.byte	0x4
	.uleb128 .LBB56-.LBB35
	.uleb128 .LBE56-.LBB35
	.byte	0x4
	.uleb128 .LBB57-.LBB35
	.uleb128 .LBE57-.LBB35
	.byte	0
.LLRL14:
	.byte	0x5
	.4byte	.LBB36
	.byte	0x4
	.uleb128 .LBB36-.LBB36
	.uleb128 .LBE36-.LBB36
	.byte	0x4
	.uleb128 .LBB51-.LBB36
	.uleb128 .LBE51-.LBB36
	.byte	0x4
	.uleb128 .LBB52-.LBB36
	.uleb128 .LBE52-.LBB36
	.byte	0x4
	.uleb128 .LBB53-.LBB36
	.uleb128 .LBE53-.LBB36
	.byte	0
.LLRL19:
	.byte	0x5
	.4byte	.LBB38
	.byte	0x4
	.uleb128 .LBB38-.LBB38
	.uleb128 .LBE38-.LBB38
	.byte	0x4
	.uleb128 .LBB44-.LBB38
	.uleb128 .LBE44-.LBB38
	.byte	0x4
	.uleb128 .LBB45-.LBB38
	.uleb128 .LBE45-.LBB38
	.byte	0x4
	.uleb128 .LBB46-.LBB38
	.uleb128 .LBE46-.LBB38
	.byte	0x4
	.uleb128 .LBB47-.LBB38
	.uleb128 .LBE47-.LBB38
	.byte	0
.LLRL25:
	.byte	0x5
	.4byte	.LBB65
	.byte	0x4
	.uleb128 .LBB65-.LBB65
	.uleb128 .LBE65-.LBB65
	.byte	0x4
	.uleb128 .LBB72-.LBB65
	.uleb128 .LBE72-.LBB65
	.byte	0
.LLRL27:
	.byte	0x5
	.4byte	.LBB66
	.byte	0x4
	.uleb128 .LBB66-.LBB66
	.uleb128 .LBE66-.LBB66
	.byte	0x4
	.uleb128 .LBB68-.LBB66
	.uleb128 .LBE68-.LBB66
	.byte	0
.LLRL38:
	.byte	0x5
	.4byte	.LBB80
	.byte	0x4
	.uleb128 .LBB80-.LBB80
	.uleb128 .LBE80-.LBB80
	.byte	0x4
	.uleb128 .LBB107-.LBB80
	.uleb128 .LBE107-.LBB80
	.byte	0
.LLRL41:
	.byte	0x5
	.4byte	.LBB82
	.byte	0x4
	.uleb128 .LBB82-.LBB82
	.uleb128 .LBE82-.LBB82
	.byte	0x4
	.uleb128 .LBB105-.LBB82
	.uleb128 .LBE105-.LBB82
	.byte	0x4
	.uleb128 .LBB106-.LBB82
	.uleb128 .LBE106-.LBB82
	.byte	0
.LLRL44:
	.byte	0x5
	.4byte	.LBB83
	.byte	0x4
	.uleb128 .LBB83-.LBB83
	.uleb128 .LBE83-.LBB83
	.byte	0x4
	.uleb128 .LBB101-.LBB83
	.uleb128 .LBE101-.LBB83
	.byte	0x4
	.uleb128 .LBB102-.LBB83
	.uleb128 .LBE102-.LBB83
	.byte	0x4
	.uleb128 .LBB103-.LBB83
	.uleb128 .LBE103-.LBB83
	.byte	0x4
	.uleb128 .LBB104-.LBB83
	.uleb128 .LBE104-.LBB83
	.byte	0
.LLRL49:
	.byte	0x5
	.4byte	.LBB85
	.byte	0x4
	.uleb128 .LBB85-.LBB85
	.uleb128 .LBE85-.LBB85
	.byte	0x4
	.uleb128 .LBB92-.LBB85
	.uleb128 .LBE92-.LBB85
	.byte	0x4
	.uleb128 .LBB93-.LBB85
	.uleb128 .LBE93-.LBB85
	.byte	0x4
	.uleb128 .LBB94-.LBB85
	.uleb128 .LBE94-.LBB85
	.byte	0x4
	.uleb128 .LBB95-.LBB85
	.uleb128 .LBE95-.LBB85
	.byte	0x4
	.uleb128 .LBB96-.LBB85
	.uleb128 .LBE96-.LBB85
	.byte	0
.LLRL56:
	.byte	0x5
	.4byte	.LBB108
	.byte	0x4
	.uleb128 .LBB108-.LBB108
	.uleb128 .LBE108-.LBB108
	.byte	0x4
	.uleb128 .LBB109-.LBB108
	.uleb128 .LBE109-.LBB108
	.byte	0x4
	.uleb128 .LBB110-.LBB108
	.uleb128 .LBE110-.LBB108
	.byte	0x4
	.uleb128 .LBB111-.LBB108
	.uleb128 .LBE111-.LBB108
	.byte	0x4
	.uleb128 .LBB112-.LBB108
	.uleb128 .LBE112-.LBB108
	.byte	0x4
	.uleb128 .LBB113-.LBB108
	.uleb128 .LBE113-.LBB108
	.byte	0
.LLRL71:
	.byte	0x5
	.4byte	.LBB114
	.byte	0x4
	.uleb128 .LBB114-.LBB114
	.uleb128 .LBE114-.LBB114
	.byte	0x4
	.uleb128 .LBB115-.LBB114
	.uleb128 .LBE115-.LBB114
	.byte	0
.LLRL73:
	.byte	0x5
	.4byte	.LBB116
	.byte	0x4
	.uleb128 .LBB116-.LBB116
	.uleb128 .LBE116-.LBB116
	.byte	0x4
	.uleb128 .LBB125-.LBB116
	.uleb128 .LBE125-.LBB116
	.byte	0x4
	.uleb128 .LBB126-.LBB116
	.uleb128 .LBE126-.LBB116
	.byte	0x4
	.uleb128 .LBB127-.LBB116
	.uleb128 .LBE127-.LBB116
	.byte	0
.LLRL75:
	.byte	0x5
	.4byte	.LBB117
	.byte	0x4
	.uleb128 .LBB117-.LBB117
	.uleb128 .LBE117-.LBB117
	.byte	0x4
	.uleb128 .LBB124-.LBB117
	.uleb128 .LBE124-.LBB117
	.byte	0
.LLRL76:
	.byte	0x5
	.4byte	.LBB118
	.byte	0x4
	.uleb128 .LBB118-.LBB118
	.uleb128 .LBE118-.LBB118
	.byte	0x4
	.uleb128 .LBB121-.LBB118
	.uleb128 .LBE121-.LBB118
	.byte	0
.LLRL78:
	.byte	0x5
	.4byte	.LBB119
	.byte	0x4
	.uleb128 .LBB119-.LBB119
	.uleb128 .LBE119-.LBB119
	.byte	0x4
	.uleb128 .LBB120-.LBB119
	.uleb128 .LBE120-.LBB119
	.byte	0
.LLRL83:
	.byte	0x5
	.4byte	.LBB129
	.byte	0x4
	.uleb128 .LBB129-.LBB129
	.uleb128 .LBE129-.LBB129
	.byte	0x4
	.uleb128 .LBB133-.LBB129
	.uleb128 .LBE133-.LBB129
	.byte	0x4
	.uleb128 .LBB134-.LBB129
	.uleb128 .LBE134-.LBB129
	.byte	0
.LLRL90:
	.byte	0x5
	.4byte	.LBB137
	.byte	0x4
	.uleb128 .LBB137-.LBB137
	.uleb128 .LBE137-.LBB137
	.byte	0x4
	.uleb128 .LBB141-.LBB137
	.uleb128 .LBE141-.LBB137
	.byte	0x4
	.uleb128 .LBB142-.LBB137
	.uleb128 .LBE142-.LBB137
	.byte	0
.LLRL95:
	.byte	0x7
	.4byte	.LFB188
	.uleb128 .LFE188-.LFB188
	.byte	0x7
	.4byte	.LFB192
	.uleb128 .LFE192-.LFB192
	.byte	0x7
	.4byte	.LFB189
	.uleb128 .LFE189-.LFB189
	.byte	0x7
	.4byte	.LFB193
	.uleb128 .LFE193-.LFB193
	.byte	0x7
	.4byte	.LFB194
	.uleb128 .LFE194-.LFB194
	.byte	0x7
	.4byte	.LFB195
	.uleb128 .LFE195-.LFB195
	.byte	0x7
	.4byte	.LFB196
	.uleb128 .LFE196-.LFB196
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF56:
	.ascii	"GPU_RGBA5551\000"
.LASF88:
	.ascii	"texture\000"
.LASF20:
	.ascii	"size_t\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF66:
	.ascii	"GPU_ETC1\000"
.LASF22:
	.ascii	"Result\000"
.LASF80:
	.ascii	"border\000"
.LASF29:
	.ascii	"GSPGPU_EVENT_VBlank0\000"
.LASF83:
	.ascii	"type\000"
.LASF126:
	.ascii	"get_morton_offset\000"
.LASF69:
	.ascii	"C3D_TexCube\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF77:
	.ascii	"lodParam\000"
.LASF42:
	.ascii	"GX_TRANSFER_SCALE_X\000"
.LASF132:
	.ascii	"magFilter\000"
.LASF98:
	.ascii	"free\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF13:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF92:
	.ascii	"printf\000"
.LASF67:
	.ascii	"GPU_ETC1A4\000"
.LASF81:
	.ascii	"C3D_Tex\000"
.LASF89:
	.ascii	"icons\000"
.LASF10:
	.ascii	"long int\000"
.LASF60:
	.ascii	"GPU_HILO8\000"
.LASF119:
	.ascii	"Texture_TileImage8\000"
.LASF47:
	.ascii	"GPU_TEX_2D\000"
.LASF142:
	.ascii	"__builtin_puts\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF23:
	.ascii	"double\000"
.LASF84:
	.ascii	"onVram\000"
.LASF64:
	.ascii	"GPU_L4\000"
.LASF61:
	.ascii	"GPU_L8\000"
.LASF96:
	.ascii	"C3D_SyncDisplayTransfer\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF51:
	.ascii	"GPU_TEX_SHADOW_CUBE\000"
.LASF130:
	.ascii	"imgInLinRam\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF5:
	.ascii	"__int16_t\000"
.LASF34:
	.ascii	"GSPGPU_EVENT_MAX\000"
.LASF27:
	.ascii	"GSPGPU_EVENT_PSC0\000"
.LASF28:
	.ascii	"GSPGPU_EVENT_PSC1\000"
.LASF37:
	.ascii	"GX_TRANSFER_FMT_RGB8\000"
.LASF39:
	.ascii	"GX_TRANSFER_FMT_RGB5A1\000"
.LASF86:
	.ascii	"textureHash\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF95:
	.ascii	"linearFree\000"
.LASF138:
	.ascii	"gspWaitForAnyEvent\000"
.LASF97:
	.ascii	"C3D_SyncTextureCopy\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF44:
	.ascii	"GPU_NEAREST\000"
.LASF120:
	.ascii	"coarse_y\000"
.LASF73:
	.ascii	"width\000"
.LASF30:
	.ascii	"GSPGPU_EVENT_VBlank1\000"
.LASF70:
	.ascii	"data\000"
.LASF78:
	.ascii	"size\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF75:
	.ascii	"maxLevel\000"
.LASF110:
	.ascii	"filei\000"
.LASF87:
	.ascii	"Texture_MapIcon\000"
.LASF6:
	.ascii	"short int\000"
.LASF91:
	.ascii	"GX_RequestDma\000"
.LASF9:
	.ascii	"__int32_t\000"
.LASF33:
	.ascii	"GSPGPU_EVENT_DMA\000"
.LASF52:
	.ascii	"GPU_TEX_DISABLED\000"
.LASF19:
	.ascii	"ptrdiff_t\000"
.LASF141:
	.ascii	"puts\000"
.LASF108:
	.ascii	"maxSize\000"
.LASF107:
	.ascii	"mipmapLevels\000"
.LASF46:
	.ascii	"GPU_TEXTURE_FILTER_PARAM\000"
.LASF94:
	.ascii	"Crash\000"
.LASF71:
	.ascii	"cube\000"
.LASF102:
	.ascii	"filename\000"
.LASF85:
	.ascii	"C3D_TexInitParams\000"
.LASF79:
	.ascii	"param\000"
.LASF104:
	.ascii	"num_files\000"
.LASF100:
	.ascii	"linearAlloc\000"
.LASF24:
	.ascii	"float\000"
.LASF109:
	.ascii	"buffer\000"
.LASF112:
	.ascii	"tiledImage\000"
.LASF140:
	.ascii	"C3D_TexSetFilter\000"
.LASF118:
	.ascii	"offset2\000"
.LASF26:
	.ascii	"_Bool\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF53:
	.ascii	"GPU_TEXTURE_MODE_PARAM\000"
.LASF116:
	.ascii	"Texture_MapInit\000"
.LASF41:
	.ascii	"GX_TRANSFER_SCALE_NO\000"
.LASF113:
	.ascii	"image\000"
.LASF58:
	.ascii	"GPU_RGBA4\000"
.LASF54:
	.ascii	"GPU_RGBA8\000"
.LASF125:
	.ascii	"bytes_per_pixel\000"
.LASF114:
	.ascii	"error\000"
.LASF31:
	.ascii	"GSPGPU_EVENT_PPF\000"
.LASF82:
	.ascii	"format\000"
.LASF43:
	.ascii	"GX_TRANSFER_SCALE_XY\000"
.LASF106:
	.ascii	"locY\000"
.LASF139:
	.ascii	"Texture_MapGetIcon\000"
.LASF48:
	.ascii	"GPU_TEX_CUBE_MAP\000"
.LASF128:
	.ascii	"Texture_Load\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF57:
	.ascii	"GPU_RGB565\000"
.LASF63:
	.ascii	"GPU_LA4\000"
.LASF21:
	.ascii	"long double\000"
.LASF25:
	.ascii	"char\000"
.LASF59:
	.ascii	"GPU_LA8\000"
.LASF93:
	.ascii	"C3D_TexInitWithParams\000"
.LASF117:
	.ascii	"downscaleImage\000"
.LASF65:
	.ascii	"GPU_A4\000"
.LASF127:
	.ascii	"morton_interleave\000"
.LASF62:
	.ascii	"GPU_A8\000"
.LASF111:
	.ascii	"offset\000"
.LASF137:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF131:
	.ascii	"hash\000"
.LASF122:
	.ascii	"tileImage32\000"
.LASF115:
	.ascii	"icon\000"
.LASF76:
	.ascii	"minLevel\000"
.LASF101:
	.ascii	"lodepng_decode32_file\000"
.LASF35:
	.ascii	"GSPGPU_Event\000"
.LASF55:
	.ascii	"GPU_RGB8\000"
.LASF99:
	.ascii	"GSPGPU_FlushDataCache\000"
.LASF32:
	.ascii	"GSPGPU_EVENT_P3D\000"
.LASF38:
	.ascii	"GX_TRANSFER_FMT_RGB565\000"
.LASF90:
	.ascii	"Texture_Map\000"
.LASF121:
	.ascii	"dst_offset\000"
.LASF68:
	.ascii	"GPU_TEXCOLOR\000"
.LASF49:
	.ascii	"GPU_TEX_SHADOW_2D\000"
.LASF105:
	.ascii	"locX\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF135:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF133:
	.ascii	"minFilter\000"
.LASF74:
	.ascii	"lodBias\000"
.LASF123:
	.ascii	"sizex\000"
.LASF124:
	.ascii	"sizey\000"
.LASF45:
	.ascii	"GPU_LINEAR\000"
.LASF136:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/render"
	.ascii	"ing/TextureMap.c\000"
.LASF72:
	.ascii	"height\000"
.LASF40:
	.ascii	"GX_TRANSFER_FMT_RGBA4\000"
.LASF36:
	.ascii	"GX_TRANSFER_FMT_RGBA8\000"
.LASF129:
	.ascii	"result\000"
.LASF103:
	.ascii	"files\000"
.LASF134:
	.ascii	"C3D_TexInitVRAM\000"
.LASF50:
	.ascii	"GPU_TEX_PROJECTION\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
