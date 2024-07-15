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
	.file	"Cursor.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/rendering/Cursor.c"
	.section	.text.Cursor_Init,"ax",%progbits
	.align	2
	.global	Cursor_Init
	.syntax unified
	.arm
	.type	Cursor_Init, %function
Cursor_Init:
.LFB212:
	.loc 1 11 20 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 12 2 view .LVU1
	.loc 1 11 20 is_stmt 0 view .LVU2
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 12 14 view .LVU3
	mov	r0, #576
	bl	linearAlloc
.LVL0:
	mov	r4, r0
	.loc 1 12 12 discriminator 1 view .LVU4
	ldr	r3, .L7
	.loc 1 13 2 view .LVU5
	mov	r2, #576
	ldr	r1, .L7+4
	.loc 1 12 12 discriminator 1 view .LVU6
	str	r0, [r3]
	.loc 1 13 2 is_stmt 1 view .LVU7
	bl	memcpy
.LVL1:
	.loc 1 15 2 view .LVU8
.LBB22:
	.loc 1 15 7 view .LVU9
	.loc 1 15 20 discriminator 1 view .LVU10
	.loc 1 16 23 is_stmt 0 view .LVU11
	mvn	r3, #0
	mov	r0, r4
	add	r2, r4, #576
.LVL2:
.L2:
	.loc 1 16 3 is_stmt 1 view .LVU12
	.loc 1 17 3 view .LVU13
	.loc 1 16 23 is_stmt 0 view .LVU14
	strh	r3, [r0, #10]	@ movhi
	.loc 1 18 3 is_stmt 1 view .LVU15
	.loc 1 18 23 is_stmt 0 view .LVU16
	strb	r3, [r0, #12]
	.loc 1 15 30 is_stmt 1 discriminator 3 view .LVU17
	.loc 1 15 20 discriminator 1 view .LVU18
	add	r0, r0, #16
	cmp	r0, r2
	bne	.L2
	pop	{r4, pc}
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	cube_sides_lut
.LBE22:
	.cfi_endproc
.LFE212:
	.size	Cursor_Init, .-Cursor_Init
	.section	.text.Cursor_Deinit,"ax",%progbits
	.align	2
	.global	Cursor_Deinit
	.syntax unified
	.arm
	.type	Cursor_Deinit, %function
Cursor_Deinit:
.LFB213:
	.loc 1 22 22 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 22 24 view .LVU20
	ldr	r3, .L10
	ldr	r0, [r3]
	b	linearFree
.LVL3:
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.cfi_endproc
.LFE213:
	.size	Cursor_Deinit, .-Cursor_Deinit
	.section	.text.Cursor_Draw,"ax",%progbits
	.align	2
	.global	Cursor_Draw
	.syntax unified
	.arm
	.type	Cursor_Draw, %function
Cursor_Draw:
.LVL4:
.LFB214:
	.loc 1 24 116 view -0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 25 2 view .LVU22
	.loc 1 26 2 view .LVU23
	.loc 1 24 116 is_stmt 0 view .LVU24
	mov	ip, r0
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
	sub	sp, sp, #148
	.cfi_def_cfa_offset 184
.LVL5:
.LBB45:
.LBI45:
	.file 2 "C:/devkitPro/libctru/include/c3d/maths.h"
	.loc 2 324 20 is_stmt 1 view .LVU25
	.loc 2 326 2 view .LVU26
.LBB46:
.LBI46:
	.loc 2 311 20 view .LVU27
.LBB47:
	.loc 2 313 2 view .LVU28
.LBB48:
.LBI48:
	.loc 2 288 20 view .LVU29
.LBB49:
	.loc 2 290 2 view .LVU30
.LBE49:
.LBE48:
.LBE47:
.LBE46:
.LBE45:
	.loc 1 24 116 is_stmt 0 view .LVU31
	ldrb	lr, [sp, #192]	@ zero_extendqisi2
	ldr	r10, [sp, #188]
	mov	r4, r1
	mov	r8, r2
.LBB62:
.LBB58:
.LBB54:
.LBB52:
.LBB50:
	.loc 2 290 2 view .LVU32
	mov	r1, #0
.LVL6:
	.loc 2 290 2 view .LVU33
	mov	r2, #64
.LVL7:
	.loc 2 290 2 view .LVU34
	add	r0, sp, #16
.LVL8:
	.loc 2 290 2 view .LVU35
.LBE50:
.LBE52:
.LBE54:
.LBE58:
.LBE62:
	.loc 1 24 116 view .LVU36
	mov	r7, r3
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	r9, [sp, #184]
.LBB63:
.LBB59:
.LBB55:
.LBB53:
.LBB51:
	.loc 2 290 2 view .LVU37
	bl	memset
.LVL9:
	.loc 2 290 2 view .LVU38
.LBE51:
.LBE53:
	.loc 2 314 2 is_stmt 1 view .LVU39
.LBE55:
.LBE59:
.LBE63:
	.loc 1 27 2 is_stmt 0 view .LVU40
	vmov	s15, r10	@ int
	vcvt.f32.s32	s2, s15
	vmov	s15, r9	@ int
	vcvt.f32.s32	s1, s15
	vmov	s15, r7	@ int
.LBB64:
.LBB60:
.LBB56:
	.loc 2 314 14 view .LVU41
	mov	r3, #1065353216
.LBE56:
.LBE60:
.LBE64:
.LBB65:
	.loc 1 34 11 view .LVU42
	mov	r6, #0
.LBE65:
	.loc 1 27 2 view .LVU43
	mov	r1, #1
	vcvt.f32.s32	s0, s15
	add	r0, sp, #16
.LVL10:
.LBB71:
.LBB61:
.LBB57:
	.loc 2 314 14 view .LVU44
	str	r3, [sp, #28]	@ float
	.loc 2 315 2 is_stmt 1 view .LVU45
	.loc 2 315 14 is_stmt 0 view .LVU46
	str	r3, [sp, #40]	@ float
	.loc 2 316 2 is_stmt 1 view .LVU47
	.loc 2 316 14 is_stmt 0 view .LVU48
	str	r3, [sp, #52]	@ float
	.loc 2 317 2 is_stmt 1 view .LVU49
	.loc 2 317 14 is_stmt 0 view .LVU50
	str	r3, [sp, #64]	@ float
.LVL11:
	.loc 2 317 14 view .LVU51
.LBE57:
.LBE61:
.LBE71:
	.loc 1 27 2 is_stmt 1 view .LVU52
	bl	Mtx_Translate
.LVL12:
	.loc 1 29 2 view .LVU53
	.loc 1 30 2 view .LVU54
	mov	r1, r4
	add	r2, sp, #16
	add	r0, sp, #80
	bl	Mtx_Multiply
.LVL13:
	.loc 1 32 2 view .LVU55
	.loc 1 33 2 view .LVU56
	.loc 1 33 15 is_stmt 0 view .LVU57
	ldr	r3, .L22+12
	.loc 1 32 9 view .LVU58
	mov	fp, r6
	ldr	r5, .L22+16
	.loc 1 33 15 view .LVU59
	ldr	r4, [r3]
.LVL14:
	.loc 1 34 2 is_stmt 1 view .LVU60
.LBB72:
	.loc 1 34 7 view .LVU61
	.loc 1 34 20 discriminator 1 view .LVU62
	b	.L16
.LVL15:
.L13:
	.loc 1 34 26 discriminator 2 view .LVU63
	add	r6, r6, #1
.LVL16:
	.loc 1 34 20 discriminator 1 view .LVU64
	cmp	r6, #6
	add	r5, r5, #12
.LVL17:
	.loc 1 34 20 is_stmt 0 discriminator 1 view .LVU65
	beq	.L21
.LVL18:
.L16:
.LBB66:
	.loc 1 35 3 is_stmt 1 view .LVU66
	.loc 1 36 3 view .LVU67
	.loc 1 36 7 is_stmt 0 view .LVU68
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #4]
	ldr	r1, [r5]
	mov	r0, r8
	add	r3, r10, r3
	add	r2, r9, r2
	add	r1, r7, r1
	bl	World_GetBlock
.LVL19:
	.loc 1 36 6 discriminator 1 view .LVU69
	cmp	r0, #0
	bne	.L13
.LBB67:
	.loc 1 37 4 is_stmt 1 view .LVU70
	.loc 1 37 16 is_stmt 0 view .LVU71
	ldr	r3, .L22+20
	add	r1, r6, r6, lsl #1
	.loc 1 37 4 view .LVU72
	add	r1, r3, r1, lsl #5
	mov	r2, #96
	mov	r0, r4
	bl	memcpy
.LVL20:
	.loc 1 38 4 is_stmt 1 view .LVU73
	.loc 1 38 12 is_stmt 0 discriminator 1 view .LVU74
	ldr	r3, [sp, #12]
	add	r1, r4, #96
	cmp	r3, r6
	movne	r3, #32
	moveq	r3, #65
	orr	r2, r3, r3, lsl #8
.LVL21:
	.loc 1 39 4 is_stmt 1 view .LVU75
.LBB68:
	.loc 1 39 9 view .LVU76
	.loc 1 39 22 discriminator 1 view .LVU77
.L15:
	.loc 1 40 5 view .LVU78
	.loc 1 41 5 view .LVU79
	.loc 1 40 19 is_stmt 0 view .LVU80
	strh	r2, [r4, #10]	@ movhi
	.loc 1 42 5 is_stmt 1 view .LVU81
	.loc 1 42 19 is_stmt 0 view .LVU82
	strb	r3, [r4, #12]
	.loc 1 39 28 is_stmt 1 discriminator 3 view .LVU83
	.loc 1 39 22 discriminator 1 view .LVU84
	add	r4, r4, #16
	cmp	r4, r1
	bne	.L15
	.loc 1 39 22 is_stmt 0 discriminator 1 view .LVU85
.LBE68:
	.loc 1 44 4 is_stmt 1 view .LVU86
.LVL22:
	.loc 1 45 4 view .LVU87
.LBE67:
.LBE66:
	.loc 1 34 26 is_stmt 0 discriminator 2 view .LVU88
	add	r6, r6, #1
.LVL23:
	.loc 1 34 20 discriminator 1 view .LVU89
	cmp	r6, #6
.LBB70:
.LBB69:
	.loc 1 45 13 view .LVU90
	add	fp, fp, #6
.LVL24:
	.loc 1 45 13 view .LVU91
.LBE69:
.LBE70:
	.loc 1 34 26 is_stmt 1 discriminator 2 view .LVU92
	.loc 1 34 20 discriminator 1 view .LVU93
	add	r5, r5, #12
.LVL25:
	.loc 1 34 20 is_stmt 0 discriminator 1 view .LVU94
	bne	.L16
.LVL26:
.L21:
	.loc 1 34 20 discriminator 1 view .LVU95
.LBE72:
	.loc 1 49 2 is_stmt 1 view .LVU96
.LBB73:
.LBI73:
	.file 3 "C:/devkitPro/libctru/include/c3d/uniforms.h"
	.loc 3 38 20 view .LVU97
	.loc 3 40 2 view .LVU98
.LBB74:
.LBI74:
	.loc 3 30 20 view .LVU99
.LBB75:
	.loc 3 32 2 view .LVU100
	.loc 3 33 2 view .LVU101
.LBB76:
.LBI76:
	.loc 3 15 25 view .LVU102
.LBB77:
	.loc 3 17 2 view .LVU103
	.loc 3 18 2 view .LVU104
	.loc 3 18 16 discriminator 1 view .LVU105
	.loc 3 19 3 view .LVU106
	.loc 3 18 26 discriminator 3 view .LVU107
	.loc 3 18 16 discriminator 1 view .LVU108
	.loc 3 19 3 view .LVU109
	.loc 3 18 26 discriminator 3 view .LVU110
	.loc 3 18 16 discriminator 1 view .LVU111
	.loc 3 19 3 view .LVU112
	.loc 3 18 26 discriminator 3 view .LVU113
	.loc 3 18 16 discriminator 1 view .LVU114
	.loc 3 19 3 view .LVU115
.LBE77:
.LBE76:
	.loc 3 35 10 is_stmt 0 view .LVU116
	ldr	r1, [sp, #8]
.LBB80:
.LBB78:
	.loc 3 19 31 view .LVU117
	ldr	r3, .L22+24
	ldr	r2, .L22+28
.LBE78:
.LBE80:
	.loc 3 35 10 view .LVU118
	ldr	lr, .L22+32
.LBB81:
.LBB79:
	.loc 3 19 31 view .LVU119
	str	r2, [r3, r1]	@ unaligned
	.loc 3 18 26 is_stmt 1 discriminator 3 view .LVU120
.LVL27:
	.loc 3 18 16 discriminator 1 view .LVU121
	.loc 3 20 2 view .LVU122
	.loc 3 20 2 is_stmt 0 view .LVU123
.LBE79:
.LBE81:
	.loc 3 34 2 is_stmt 1 view .LVU124
	.loc 3 34 16 discriminator 1 view .LVU125
	.loc 3 35 10 is_stmt 0 view .LVU126
	add	ip, sp, #80
.LVL28:
	.loc 3 35 10 view .LVU127
	add	lr, lr, r1, lsl #4
	ldmia	ip!, {r0, r1, r2, r3}
.LVL29:
	.loc 3 35 10 view .LVU128
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
.LBE75:
.LBE74:
.LBE73:
	.loc 1 51 2 view .LVU129
	mov	r4, #0
.LVL30:
.LBB84:
.LBB83:
.LBB82:
	.loc 3 35 10 view .LVU130
	stm	lr, {r0, r1, r2, r3}
.LVL31:
	.loc 3 35 10 view .LVU131
.LBE82:
.LBE83:
.LBE84:
	.loc 1 51 2 is_stmt 1 view .LVU132
	mov	r5, #7
	mov	r3, #1
	mov	r1, r4
	mov	r2, r3
	mov	r0, r4
	strd	r4, [sp]
	bl	C3D_AlphaBlend
.LVL32:
	.loc 1 53 2 view .LVU133
	vldr.32	s1, .L22
	vldr.32	s0, .L22+4
	mov	r0, #1
	bl	C3D_DepthMap
.LVL33:
	.loc 1 55 2 view .LVU134
	.loc 1 55 20 is_stmt 0 view .LVU135
	mov	r0, r4
	bl	C3D_GetTexEnv
.LVL34:
.LBB85:
.LBB86:
	.file 4 "C:/devkitPro/libctru/include/c3d/texenv.h"
	.loc 4 38 13 view .LVU136
	mvn	r3, #0
.LVL35:
	.loc 4 38 13 view .LVU137
.LBE86:
.LBE85:
	.loc 1 56 2 is_stmt 1 view .LVU138
.LBB88:
.LBI85:
	.loc 4 31 20 view .LVU139
.LBB87:
	.loc 4 33 2 view .LVU140
	.loc 4 34 2 view .LVU141
	.loc 4 35 2 view .LVU142
	.loc 4 35 13 is_stmt 0 view .LVU143
	str	r4, [r0, #4]
	.loc 4 36 2 is_stmt 1 view .LVU144
	.loc 4 37 2 view .LVU145
	.loc 4 38 13 is_stmt 0 view .LVU146
	str	r3, [r0, #12]
	.loc 4 36 15 view .LVU147
	str	r4, [r0, #8]
	.loc 4 38 2 is_stmt 1 view .LVU148
	.loc 4 39 2 view .LVU149
	.loc 4 40 2 view .LVU150
	.loc 4 39 16 is_stmt 0 view .LVU151
	str	r4, [r0, #16]
.LVL36:
	.loc 4 39 16 view .LVU152
.LBE87:
.LBE88:
	.loc 1 57 2 is_stmt 1 view .LVU153
.LBB89:
.LBI89:
	.loc 4 49 20 view .LVU154
.LBB90:
	.loc 4 54 2 view .LVU155
	.loc 4 55 2 view .LVU156
	.loc 4 56 3 view .LVU157
	.loc 4 57 2 view .LVU158
	.loc 4 58 3 view .LVU159
	.loc 4 56 15 is_stmt 0 view .LVU160
	str	r4, [r0]
.LVL37:
	.loc 4 56 15 view .LVU161
.LBE90:
.LBE89:
	.loc 1 58 2 is_stmt 1 view .LVU162
	.loc 1 60 2 view .LVU163
	.loc 1 60 25 is_stmt 0 view .LVU164
	bl	C3D_GetBufInfo
.LVL38:
	.loc 1 62 2 view .LVU165
	mov	r9, #0
	.loc 1 60 25 view .LVU166
	mov	r7, r0
.LVL39:
	.loc 1 61 2 is_stmt 1 view .LVU167
	.loc 1 62 2 is_stmt 0 view .LVU168
	ldr	r8, .L22+36
.LVL40:
	.loc 1 61 2 view .LVU169
	bl	BufInfo_Init
.LVL41:
	.loc 1 62 2 is_stmt 1 view .LVU170
	ldr	r1, .L22+12
	mov	r3, #4
	ldr	r1, [r1]
	mov	r2, #16
	mov	r0, r7
	strd	r8, [sp]
	bl	BufInfo_Add
.LVL42:
	.loc 1 64 2 view .LVU171
	mov	r2, fp
	mov	r1, r4
	mov	r0, r4
	bl	C3D_DrawArrays
.LVL43:
	.loc 1 66 2 view .LVU172
	mov	r3, r5
	mov	r2, r6
	mov	r1, r4
	mov	r0, r4
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	C3D_AlphaBlend
.LVL44:
	.loc 1 68 2 view .LVU173
	vldr.32	s1, .L22+8
	vldr.32	s0, .L22+4
	mov	r0, #1
	bl	C3D_DepthMap
.LVL45:
	.loc 1 69 1 is_stmt 0 view .LVU174
	add	sp, sp, #148
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL46:
.L23:
	.loc 1 69 1 view .LVU175
	.align	2
.L22:
	.word	981668463
	.word	-1082130432
	.word	0
	.word	.LANCHOR0
	.word	DirectionToOffset
	.word	cube_sides_lut
	.word	C3D_FVUnifDirty
	.word	16843009
	.word	C3D_FVUnif
	.word	12816
	.cfi_endproc
.LFE214:
	.size	Cursor_Draw, .-Cursor_Draw
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cursorVBO, %object
	.size	cursorVBO, 4
cursorVBO:
	.space	4
	.text
.Letext0:
	.file 5 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Direction.h"
	.file 6 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 7 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 8 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 9 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Xorshift.h"
	.file 10 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 11 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 12 "C:/Users/Elias/CLionProjects/3DSCraft/include/rendering/VBOCache.h"
	.file 13 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Chunk.h"
	.file 14 "C:/devkitPro/libctru/include/3ds/types.h"
	.file 15 "C:/devkitPro/libctru/include/3ds/synchronization.h"
	.file 16 "C:/devkitPro/libctru/include/3ds/services/csnd.h"
	.file 17 "C:/devkitPro/libctru/include/3ds/services/ndm.h"
	.file 18 "C:/devkitPro/libctru/include/3ds/gpu/enums.h"
	.file 19 "C:/devkitPro/libctru/include/3ds/ndsp/channel.h"
	.file 20 "C:/devkitPro/libctru/include/3ds/applets/error.h"
	.file 21 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/WorkQueue.h"
	.file 22 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/World.h"
	.file 23 "C:/devkitPro/libctru/include/c3d/types.h"
	.file 24 "C:/devkitPro/libctru/include/c3d/buffers.h"
	.file 25 "C:/Users/Elias/CLionProjects/3DSCraft/include/rendering/VertexFmt.h"
	.file 26 "C:/devkitPro/devkitARM/arm-none-eabi/include/string.h"
	.file 27 "C:/devkitPro/libctru/include/c3d/base.h"
	.file 28 "C:/devkitPro/libctru/include/c3d/effect.h"
	.file 29 "C:/devkitPro/libctru/include/3ds/allocator/linear.h"
	.file 30 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x170f
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x35
	.4byte	.LASF285
	.byte	0x1d
	.4byte	.LASF286
	.4byte	.LASF287
	.4byte	.LLRL47
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x36
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x5
	.byte	0x3
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF5
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF7
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF9
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x5
	.byte	0xb
	.byte	0x3
	.4byte	0x42
	.uleb128 0x8
	.4byte	0x3b
	.4byte	0xa3
	.uleb128 0x6
	.4byte	0x34
	.byte	0x6
	.uleb128 0x6
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.4byte	0x3b
	.uleb128 0x1d
	.4byte	.LASF223
	.byte	0x5
	.byte	0x13
	.byte	0xc
	.4byte	0x8d
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x6
	.byte	0x2b
	.byte	0x17
	.4byte	0x7a
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x6
	.byte	0x37
	.byte	0x13
	.4byte	0xd3
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x6
	.byte	0x39
	.byte	0x1c
	.4byte	0xe6
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.4byte	0xf9
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x6
	.byte	0x4f
	.byte	0x1b
	.4byte	0x10c
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF22
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x6
	.byte	0x69
	.byte	0x20
	.4byte	0x2d
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0xbb
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x7
	.byte	0x20
	.byte	0x13
	.4byte	0xc7
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0xda
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0xed
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x100
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.4byte	0x11a
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0x126
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF71
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x9
	.byte	0x5
	.byte	0x12
	.4byte	0x156
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0xa
	.byte	0xd6
	.byte	0x16
	.4byte	0x34
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0xa
	.byte	0x91
	.byte	0xd
	.4byte	0x3b
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.4byte	.LASF75
	.uleb128 0x37
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0xb
	.byte	0x7
	.byte	0x11
	.4byte	0x14a
	.uleb128 0xa
	.byte	0x8
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.4byte	0x2dc
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0xc
	.byte	0x9
	.byte	0x9
	.4byte	0x28b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0xc
	.byte	0xa
	.byte	0x8
	.4byte	0x2aa
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0xc
	.byte	0xb
	.byte	0x3
	.4byte	0x2b8
	.uleb128 0x38
	.2byte	0x2030
	.byte	0xd
	.byte	0x10
	.byte	0x9
	.4byte	0x39b
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0xd
	.byte	0x11
	.byte	0x6
	.4byte	0x3b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x12
	.byte	0x8
	.4byte	0x39b
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x13
	.byte	0xa
	.4byte	0x3b7
	.2byte	0x1004
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x15
	.byte	0xb
	.4byte	0x156
	.2byte	0x2004
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x17
	.byte	0xb
	.4byte	0x13e
	.2byte	0x2008
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x19
	.byte	0x6
	.4byte	0x3d3
	.2byte	0x200a
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x1a
	.byte	0xb
	.4byte	0x156
	.2byte	0x200c
	.uleb128 0x39
	.ascii	"vbo\000"
	.byte	0xd
	.byte	0x1c
	.byte	0xc
	.4byte	0x2dc
	.2byte	0x2010
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x1c
	.byte	0x11
	.4byte	0x2dc
	.2byte	0x2018
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1d
	.byte	0x9
	.4byte	0x28b
	.2byte	0x2020
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x1d
	.byte	0x13
	.4byte	0x28b
	.2byte	0x2024
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x1e
	.byte	0xb
	.4byte	0x156
	.2byte	0x2028
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x1f
	.byte	0x6
	.4byte	0x3d3
	.2byte	0x202c
	.byte	0
	.uleb128 0x8
	.4byte	0x16e
	.4byte	0x3b7
	.uleb128 0x6
	.4byte	0x34
	.byte	0xf
	.uleb128 0x6
	.4byte	0x34
	.byte	0xf
	.uleb128 0x6
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x126
	.4byte	0x3d3
	.uleb128 0x6
	.4byte	0x34
	.byte	0xf
	.uleb128 0x6
	.4byte	0x34
	.byte	0xf
	.uleb128 0x6
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x2
	.4byte	.LASF91
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0xd
	.byte	0x20
	.byte	0x3
	.4byte	0x2e8
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0xd
	.byte	0x22
	.byte	0xe
	.4byte	0x406
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0xd
	.byte	0x26
	.byte	0x3
	.4byte	0x3e6
	.uleb128 0x29
	.4byte	0x102ac
	.byte	0xd
	.byte	0x28
	.4byte	0x4d5
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xd
	.byte	0x2a
	.byte	0xb
	.4byte	0x156
	.byte	0
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xd
	.byte	0x2b
	.byte	0xb
	.4byte	0x156
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xd
	.byte	0x2d
	.byte	0xb
	.4byte	0x156
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xd
	.byte	0x2f
	.byte	0x13
	.4byte	0x406
	.byte	0xc
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0xd
	.byte	0x31
	.byte	0x6
	.4byte	0x3b
	.byte	0x10
	.uleb128 0xb
	.ascii	"z\000"
	.byte	0xd
	.byte	0x31
	.byte	0x9
	.4byte	0x3b
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xd
	.byte	0x32
	.byte	0xa
	.4byte	0x4d5
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0xd
	.byte	0x34
	.byte	0xa
	.4byte	0x4e5
	.4byte	0x10198
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0xd
	.byte	0x35
	.byte	0xb
	.4byte	0x156
	.4byte	0x10298
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0xd
	.byte	0x37
	.byte	0x9
	.4byte	0x28b
	.4byte	0x1029c
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0xd
	.byte	0x39
	.byte	0xb
	.4byte	0x156
	.4byte	0x102a0
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0xd
	.byte	0x3a
	.byte	0x6
	.4byte	0x3d3
	.4byte	0x102a4
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0xd
	.byte	0x3c
	.byte	0x6
	.4byte	0x3b
	.4byte	0x102a8
	.byte	0
	.uleb128 0x8
	.4byte	0x3da
	.4byte	0x4e5
	.uleb128 0x6
	.4byte	0x34
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x126
	.4byte	0x4fb
	.uleb128 0x6
	.4byte	0x34
	.byte	0xf
	.uleb128 0x6
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF106
	.byte	0xd
	.byte	0x3d
	.byte	0x3
	.4byte	0x412
	.uleb128 0xd
	.4byte	0x50c
	.uleb128 0x3a
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.4byte	.LASF107
	.uleb128 0x1e
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0x13e
	.uleb128 0x1e
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0x156
	.uleb128 0x1e
	.ascii	"u64\000"
	.byte	0x18
	.byte	0x12
	.4byte	0x162
	.uleb128 0x1e
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0x14a
	.uleb128 0x8
	.4byte	0x51f
	.4byte	0x550
	.uleb128 0x6
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF108
	.byte	0xf
	.byte	0xa
	.byte	0x11
	.4byte	0x2ac
	.uleb128 0xa
	.byte	0x8
	.byte	0xf
	.byte	0x13
	.byte	0x9
	.4byte	0x580
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xf
	.byte	0x15
	.byte	0x6
	.4byte	0x535
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0xf
	.byte	0x16
	.byte	0xc
	.4byte	0x550
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF111
	.byte	0xf
	.byte	0x17
	.byte	0x3
	.4byte	0x55c
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x10
	.byte	0x28
	.byte	0x1
	.4byte	0x5b2
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
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x10
	.byte	0x31
	.byte	0x1
	.4byte	0x5d8
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
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x11
	.byte	0x21
	.byte	0xe
	.4byte	0x5fe
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
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x12
	.byte	0xec
	.byte	0x1
	.4byte	0x62a
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF129
	.byte	0x12
	.byte	0xf2
	.byte	0x3
	.4byte	0x5fe
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x12
	.byte	0xf6
	.byte	0x1
	.4byte	0x69e
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.4byte	.LASF145
	.2byte	0x106
	.4byte	0x636
	.uleb128 0x16
	.byte	0x1
	.4byte	0x7a
	.2byte	0x13b
	.4byte	0x6f2
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF156
	.2byte	0x146
	.4byte	0x6a9
	.uleb128 0x16
	.byte	0x1
	.4byte	0x7a
	.2byte	0x16c
	.4byte	0x746
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF167
	.2byte	0x177
	.4byte	0x6fd
	.uleb128 0x16
	.byte	0x1
	.4byte	0x7a
	.2byte	0x17b
	.4byte	0x770
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.byte	0x2
	.4byte	0xe6
	.2byte	0x1ed
	.4byte	0x798
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0
	.uleb128 0x17
	.4byte	.LASF172
	.2byte	0x100
	.uleb128 0x17
	.4byte	.LASF173
	.2byte	0x200
	.uleb128 0x17
	.4byte	.LASF174
	.2byte	0x300
	.byte	0
	.uleb128 0x15
	.4byte	.LASF175
	.2byte	0x1f2
	.4byte	0x770
	.uleb128 0x16
	.byte	0x1
	.4byte	0x7a
	.2byte	0x1f6
	.4byte	0x7bc
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.4byte	.LASF178
	.2byte	0x1f9
	.4byte	0x7a3
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.4byte	0x7e7
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.4byte	0xe6
	.byte	0x14
	.byte	0x9
	.byte	0x1
	.4byte	0x803
	.uleb128 0x17
	.4byte	.LASF182
	.2byte	0x100
	.uleb128 0x17
	.4byte	.LASF183
	.2byte	0x200
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x15
	.byte	0xd
	.byte	0xe
	.4byte	0x835
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF190
	.byte	0x15
	.byte	0x14
	.byte	0x3
	.4byte	0x803
	.uleb128 0xa
	.byte	0xc
	.byte	0x15
	.byte	0x16
	.byte	0x9
	.4byte	0x872
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x15
	.byte	0x17
	.byte	0x11
	.4byte	0x835
	.byte	0
	.uleb128 0x2
	.4byte	.LASF192
	.byte	0x15
	.byte	0x18
	.byte	0x9
	.4byte	0x872
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x15
	.byte	0x19
	.byte	0xb
	.4byte	0x156
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x4fb
	.uleb128 0x5
	.4byte	.LASF193
	.byte	0x15
	.byte	0x1a
	.byte	0x3
	.4byte	0x841
	.uleb128 0xa
	.byte	0xc
	.byte	0x15
	.byte	0x1d
	.byte	0x2
	.4byte	0x8b4
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0x15
	.byte	0x1d
	.byte	0x17
	.4byte	0x8b4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x15
	.byte	0x1d
	.byte	0x21
	.4byte	0x3b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x15
	.byte	0x1d
	.byte	0x29
	.4byte	0x3b
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x877
	.uleb128 0xa
	.byte	0x18
	.byte	0x15
	.byte	0x1c
	.byte	0x9
	.4byte	0x8ea
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x15
	.byte	0x1d
	.byte	0x35
	.4byte	0x883
	.byte	0
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x15
	.byte	0x1f
	.byte	0xd
	.4byte	0x580
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x15
	.byte	0x20
	.byte	0xc
	.4byte	0x550
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF200
	.byte	0x15
	.byte	0x21
	.byte	0x3
	.4byte	0x8b9
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x16
	.byte	0x11
	.byte	0xe
	.4byte	0x916
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0
	.uleb128 0x1
	.4byte	.LASF202
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF204
	.byte	0x16
	.byte	0x11
	.byte	0x49
	.4byte	0x8f6
	.uleb128 0x3b
	.byte	0
	.byte	0x16
	.byte	0x18
	.byte	0x3
	.uleb128 0x1f
	.byte	0
	.byte	0x16
	.byte	0x17
	.byte	0x2
	.4byte	0x93d
	.uleb128 0x2a
	.4byte	.LASF220
	.byte	0x16
	.byte	0x1a
	.byte	0x5
	.4byte	0x922
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x16
	.byte	0x13
	.byte	0x9
	.4byte	0x96e
	.uleb128 0x2
	.4byte	.LASF205
	.byte	0x16
	.byte	0x14
	.byte	0xb
	.4byte	0x162
	.byte	0
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x16
	.byte	0x15
	.byte	0xf
	.4byte	0x916
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF206
	.byte	0x16
	.byte	0x1b
	.byte	0x4
	.4byte	0x927
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF207
	.byte	0x16
	.byte	0x1c
	.byte	0x3
	.4byte	0x93d
	.uleb128 0xa
	.byte	0xc
	.byte	0x16
	.byte	0x2a
	.byte	0x2
	.4byte	0x9ab
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0x16
	.byte	0x2a
	.byte	0x13
	.4byte	0x9ab
	.byte	0
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x16
	.byte	0x2a
	.byte	0x1d
	.4byte	0x3b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x16
	.byte	0x2a
	.byte	0x25
	.4byte	0x3b
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x872
	.uleb128 0x29
	.4byte	0xb5e278
	.byte	0x16
	.byte	0x1f
	.4byte	0xa5a
	.uleb128 0x2
	.4byte	.LASF208
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.4byte	0x3b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF209
	.byte	0x16
	.byte	0x22
	.byte	0x7
	.4byte	0xa5a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF210
	.byte	0x16
	.byte	0x24
	.byte	0x14
	.4byte	0x96e
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF211
	.byte	0x16
	.byte	0x26
	.byte	0x6
	.4byte	0x3b
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF212
	.byte	0x16
	.byte	0x26
	.byte	0x19
	.4byte	0x3b
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF213
	.byte	0x16
	.byte	0x28
	.byte	0x8
	.4byte	0xa6a
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF214
	.byte	0x16
	.byte	0x29
	.byte	0x9
	.4byte	0xa7a
	.4byte	0xb5e118
	.uleb128 0xf
	.4byte	.LASF215
	.byte	0x16
	.byte	0x2a
	.byte	0x31
	.4byte	0x97a
	.4byte	0xb5e25c
	.uleb128 0xf
	.4byte	.LASF216
	.byte	0x16
	.byte	0x2c
	.byte	0xd
	.4byte	0xa90
	.4byte	0xb5e268
	.uleb128 0xf
	.4byte	.LASF217
	.byte	0x16
	.byte	0x2e
	.byte	0xd
	.4byte	0x27f
	.4byte	0xb5e26c
	.uleb128 0xf
	.4byte	.LASF218
	.byte	0x16
	.byte	0x30
	.byte	0x6
	.4byte	0x3b
	.4byte	0xb5e270
	.byte	0
	.uleb128 0x8
	.4byte	0x278
	.4byte	0xa6a
	.uleb128 0x6
	.4byte	0x34
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x4fb
	.4byte	0xa7a
	.uleb128 0x6
	.4byte	0x34
	.byte	0xb3
	.byte	0
	.uleb128 0x8
	.4byte	0x872
	.4byte	0xa90
	.uleb128 0x6
	.4byte	0x34
	.byte	0x8
	.uleb128 0x6
	.4byte	0x34
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x8ea
	.uleb128 0x5
	.4byte	.LASF219
	.byte	0x16
	.byte	0x31
	.byte	0x3
	.4byte	0x9b0
	.uleb128 0xa
	.byte	0x10
	.byte	0x17
	.byte	0x29
	.byte	0x2
	.4byte	0xad7
	.uleb128 0xb
	.ascii	"w\000"
	.byte	0x17
	.byte	0x2b
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xb
	.ascii	"z\000"
	.byte	0x17
	.byte	0x2c
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x17
	.byte	0x2d
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x17
	.byte	0x2e
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x17
	.byte	0x34
	.byte	0x2
	.4byte	0xb0d
	.uleb128 0xb
	.ascii	"r\000"
	.byte	0x17
	.byte	0x36
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xb
	.ascii	"k\000"
	.byte	0x17
	.byte	0x37
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0xb
	.ascii	"j\000"
	.byte	0x17
	.byte	0x38
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0xb
	.ascii	"i\000"
	.byte	0x17
	.byte	0x39
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0x1f
	.byte	0x10
	.byte	0x17
	.byte	0x24
	.byte	0x9
	.4byte	0xb2a
	.uleb128 0x21
	.4byte	0xaa1
	.uleb128 0x21
	.4byte	0xad7
	.uleb128 0x22
	.ascii	"c\000"
	.byte	0x3f
	.byte	0x8
	.4byte	0xb2a
	.byte	0
	.uleb128 0x8
	.4byte	0x26
	.4byte	0xb3a
	.uleb128 0x6
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF221
	.byte	0x17
	.byte	0x40
	.byte	0x3
	.4byte	0xb0d
	.uleb128 0x1f
	.byte	0x40
	.byte	0x17
	.byte	0x4c
	.byte	0x9
	.4byte	0xb62
	.uleb128 0x22
	.ascii	"r\000"
	.byte	0x4e
	.byte	0xb
	.4byte	0xb62
	.uleb128 0x22
	.ascii	"m\000"
	.byte	0x4f
	.byte	0x8
	.4byte	0xb72
	.byte	0
	.uleb128 0x8
	.4byte	0xb3a
	.4byte	0xb72
	.uleb128 0x6
	.4byte	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x26
	.4byte	0xb82
	.uleb128 0x6
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF222
	.byte	0x17
	.byte	0x50
	.byte	0x3
	.4byte	0xb46
	.uleb128 0x1c
	.4byte	0xb82
	.uleb128 0x8
	.4byte	0xb3a
	.4byte	0xba9
	.uleb128 0x6
	.4byte	0x34
	.byte	0x1
	.uleb128 0x6
	.4byte	0x34
	.byte	0x5f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF224
	.byte	0x3
	.byte	0x7
	.byte	0x11
	.4byte	0xb93
	.uleb128 0x8
	.4byte	0x3d3
	.4byte	0xbcb
	.uleb128 0x6
	.4byte	0x34
	.byte	0x1
	.uleb128 0x6
	.4byte	0x34
	.byte	0x5f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF225
	.byte	0x3
	.byte	0xb
	.byte	0xc
	.4byte	0xbb5
	.uleb128 0xa
	.byte	0xc
	.byte	0x18
	.byte	0x4
	.byte	0x9
	.4byte	0xbfb
	.uleb128 0x2
	.4byte	.LASF226
	.byte	0x18
	.byte	0x6
	.byte	0x6
	.4byte	0x51f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF227
	.byte	0x18
	.byte	0x7
	.byte	0x6
	.4byte	0x540
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF228
	.byte	0x18
	.byte	0x8
	.byte	0x3
	.4byte	0xbd7
	.uleb128 0xa
	.byte	0x98
	.byte	0x18
	.byte	0xa
	.byte	0x9
	.4byte	0xc38
	.uleb128 0x2
	.4byte	.LASF229
	.byte	0x18
	.byte	0xc
	.byte	0x6
	.4byte	0x51f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF230
	.byte	0x18
	.byte	0xd
	.byte	0x6
	.4byte	0x3b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF231
	.byte	0x18
	.byte	0xe
	.byte	0xd
	.4byte	0xc38
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0xbfb
	.4byte	0xc48
	.uleb128 0x6
	.4byte	0x34
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	.LASF232
	.byte	0x18
	.byte	0xf
	.byte	0x3
	.4byte	0xc07
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0x3
	.4byte	0xc74
	.uleb128 0x2b
	.4byte	.LASF233
	.byte	0x10
	.4byte	0x51f
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF234
	.byte	0x1a
	.4byte	0x51f
	.byte	0xc
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.4byte	0xc8f
	.uleb128 0x2a
	.4byte	.LASF235
	.byte	0x4
	.byte	0x9
	.byte	0x7
	.4byte	0x51f
	.uleb128 0x21
	.4byte	0xc54
	.byte	0
	.uleb128 0xa
	.byte	0x14
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.4byte	0xcfa
	.uleb128 0x2
	.4byte	.LASF236
	.byte	0x4
	.byte	0x6
	.byte	0x6
	.4byte	0x514
	.byte	0
	.uleb128 0x2
	.4byte	.LASF237
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.4byte	0x514
	.byte	0x2
	.uleb128 0x3c
	.4byte	0xc74
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF238
	.byte	0x4
	.byte	0xc
	.byte	0x6
	.4byte	0x514
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF239
	.byte	0x4
	.byte	0xc
	.byte	0xf
	.4byte	0x514
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF240
	.byte	0x4
	.byte	0xd
	.byte	0x6
	.4byte	0x51f
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x4
	.byte	0xe
	.byte	0x6
	.4byte	0x514
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.4byte	0x514
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.4byte	.LASF243
	.byte	0x4
	.byte	0xf
	.byte	0x3
	.4byte	0xc8f
	.uleb128 0xc
	.byte	0x1
	.4byte	0x7a
	.byte	0x4
	.byte	0x12
	.byte	0x1
	.4byte	0xd26
	.uleb128 0x1
	.4byte	.LASF244
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF245
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF246
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF247
	.byte	0x4
	.byte	0x16
	.byte	0x3
	.4byte	0xd06
	.uleb128 0xa
	.byte	0x10
	.byte	0x19
	.byte	0x7
	.byte	0x9
	.4byte	0xd6f
	.uleb128 0xb
	.ascii	"xyz\000"
	.byte	0x19
	.byte	0x8
	.byte	0xa
	.4byte	0xd6f
	.byte	0
	.uleb128 0xb
	.ascii	"uv\000"
	.byte	0x19
	.byte	0x9
	.byte	0xa
	.4byte	0xd7f
	.byte	0x6
	.uleb128 0xb
	.ascii	"rgb\000"
	.byte	0x19
	.byte	0xa
	.byte	0xa
	.4byte	0xd8f
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF248
	.byte	0x19
	.byte	0xb
	.byte	0xa
	.4byte	0xd8f
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0xd7f
	.uleb128 0x6
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.4byte	0xd8f
	.uleb128 0x6
	.4byte	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x126
	.4byte	0xd9f
	.uleb128 0x6
	.4byte	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF249
	.byte	0x19
	.byte	0xc
	.byte	0x3
	.4byte	0xd32
	.uleb128 0x1c
	.4byte	0xd9f
	.uleb128 0x2c
	.4byte	.LASF268
	.byte	0x7
	.byte	0x15
	.4byte	0xdc1
	.uleb128 0x5
	.byte	0x3
	.4byte	cursorVBO
	.uleb128 0xd
	.4byte	0xd9f
	.uleb128 0x8
	.4byte	0xdab
	.4byte	0xdd6
	.uleb128 0x6
	.4byte	0x34
	.byte	0x23
	.byte	0
	.uleb128 0x1c
	.4byte	0xdc6
	.uleb128 0x1d
	.4byte	.LASF250
	.byte	0x1
	.byte	0x9
	.byte	0x1a
	.4byte	0xdd6
	.uleb128 0x14
	.4byte	.LASF251
	.byte	0x1a
	.byte	0x21
	.byte	0x8
	.4byte	0x2aa
	.4byte	0xe07
	.uleb128 0x4
	.4byte	0x2aa
	.uleb128 0x4
	.4byte	0x3b
	.uleb128 0x4
	.4byte	0x28b
	.byte	0
	.uleb128 0x18
	.4byte	.LASF253
	.byte	0x1b
	.byte	0x17
	.4byte	0xe22
	.uleb128 0x4
	.4byte	0x798
	.uleb128 0x4
	.4byte	0x3b
	.uleb128 0x4
	.4byte	0x3b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF252
	.byte	0x18
	.byte	0x12
	.byte	0x5
	.4byte	0x3b
	.4byte	0xe4c
	.uleb128 0x4
	.4byte	0xe4c
	.uleb128 0x4
	.4byte	0x507
	.uleb128 0x4
	.4byte	0x297
	.uleb128 0x4
	.4byte	0x3b
	.uleb128 0x4
	.4byte	0x52a
	.byte	0
	.uleb128 0xd
	.4byte	0xc48
	.uleb128 0x18
	.4byte	.LASF254
	.byte	0x18
	.byte	0x11
	.4byte	0xe62
	.uleb128 0x4
	.4byte	0xe4c
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF288
	.byte	0x18
	.byte	0x14
	.byte	0xe
	.4byte	0xe4c
	.uleb128 0x14
	.4byte	.LASF255
	.byte	0x4
	.byte	0x18
	.byte	0xd
	.4byte	0xe84
	.4byte	0xe84
	.uleb128 0x4
	.4byte	0x3b
	.byte	0
	.uleb128 0xd
	.4byte	0xcfa
	.uleb128 0x18
	.4byte	.LASF256
	.byte	0x1c
	.byte	0x4
	.4byte	0xea4
	.uleb128 0x4
	.4byte	0x3d3
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0x18
	.4byte	.LASF257
	.byte	0x1c
	.byte	0xc
	.4byte	0xece
	.uleb128 0x4
	.4byte	0x62a
	.uleb128 0x4
	.4byte	0x62a
	.uleb128 0x4
	.4byte	0x69e
	.uleb128 0x4
	.4byte	0x69e
	.uleb128 0x4
	.4byte	0x69e
	.uleb128 0x4
	.4byte	0x69e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF258
	.byte	0x16
	.byte	0x41
	.byte	0x7
	.4byte	0x16e
	.4byte	0xef3
	.uleb128 0x4
	.4byte	0xef3
	.uleb128 0x4
	.4byte	0x3b
	.uleb128 0x4
	.4byte	0x3b
	.uleb128 0x4
	.4byte	0x3b
	.byte	0
	.uleb128 0xd
	.4byte	0xa95
	.uleb128 0x2d
	.4byte	.LASF259
	.2byte	0x16f
	.4byte	0xf13
	.uleb128 0x4
	.4byte	0xf13
	.uleb128 0x4
	.4byte	0xf18
	.uleb128 0x4
	.4byte	0xf18
	.byte	0
	.uleb128 0xd
	.4byte	0xb82
	.uleb128 0xd
	.4byte	0xb8e
	.uleb128 0x2d
	.4byte	.LASF260
	.2byte	0x1ae
	.4byte	0xf42
	.uleb128 0x4
	.4byte	0xf13
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x3d3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF261
	.byte	0x1d
	.byte	0x2b
	.4byte	0xf53
	.uleb128 0x4
	.4byte	0x2aa
	.byte	0
	.uleb128 0x14
	.4byte	.LASF262
	.byte	0x1a
	.byte	0x1f
	.byte	0x8
	.4byte	0x2aa
	.4byte	0xf73
	.uleb128 0x4
	.4byte	0x2aa
	.uleb128 0x4
	.4byte	0x507
	.uleb128 0x4
	.4byte	0x28b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF263
	.byte	0x1d
	.byte	0xe
	.byte	0x7
	.4byte	0x2aa
	.4byte	0xf89
	.uleb128 0x4
	.4byte	0x28b
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF289
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14b3
	.uleb128 0x23
	.4byte	.LASF264
	.byte	0x16
	.4byte	0x3b
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x23
	.4byte	.LASF265
	.byte	0x2c
	.4byte	0xf13
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x23
	.4byte	.LASF266
	.byte	0x43
	.4byte	0xef3
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x3f
	.ascii	"x\000"
	.byte	0x1
	.byte	0x18
	.byte	0x4e
	.4byte	0x3b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2e
	.ascii	"y\000"
	.byte	0x55
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii	"z\000"
	.byte	0x5c
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x40
	.4byte	.LASF267
	.byte	0x1
	.byte	0x18
	.byte	0x69
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.4byte	.LASF269
	.byte	0x19
	.byte	0xa
	.4byte	0xb82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x41
	.ascii	"mvp\000"
	.byte	0x1
	.byte	0x1d
	.byte	0xa
	.4byte	0xb82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.4byte	.LASF87
	.byte	0x20
	.byte	0x9
	.4byte	0x28b
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x19
	.ascii	"vtx\000"
	.byte	0x21
	.byte	0xf
	.4byte	0xdc1
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x19
	.ascii	"env\000"
	.byte	0x37
	.byte	0xe
	.4byte	0xe84
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x20
	.4byte	.LASF270
	.byte	0x3c
	.byte	0xf
	.4byte	0xe4c
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2f
	.4byte	.LLRL18
	.4byte	0x110d
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x22
	.byte	0xb
	.4byte	0x3b
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x24
	.4byte	.LLRL20
	.uleb128 0x20
	.4byte	.LASF226
	.byte	0x23
	.byte	0xe
	.4byte	0x14b3
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x2f
	.4byte	.LLRL22
	.4byte	0x10fb
	.uleb128 0x20
	.4byte	.LASF240
	.byte	0x26
	.byte	0xc
	.4byte	0x126
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x30
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.4byte	0x10e4
	.uleb128 0x19
	.ascii	"j\000"
	.byte	0x27
	.byte	0xd
	.4byte	0x3b
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL20
	.4byte	0x1700
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0xece
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x1690
	.4byte	.LBI45
	.byte	.LVU25
	.4byte	.LLRL9
	.byte	0x1a
	.4byte	0x11ba
	.uleb128 0x7
	.4byte	0x169b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x31
	.4byte	0x16a8
	.4byte	.LBI46
	.byte	.LVU27
	.4byte	.LLRL9
	.2byte	0x146
	.uleb128 0x7
	.4byte	0x16dd
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x7
	.4byte	0x16d3
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x7
	.4byte	0x16c9
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x7
	.4byte	0x16bf
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x7
	.4byte	0x16b3
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x31
	.4byte	0x16e8
	.4byte	.LBI48
	.byte	.LVU29
	.4byte	.LLRL16
	.2byte	0x139
	.uleb128 0x7
	.4byte	0x16f3
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0x1709
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x15cf
	.4byte	.LBI73
	.byte	.LVU97
	.4byte	.LLRL25
	.byte	0x31
	.4byte	0x129d
	.uleb128 0x7
	.4byte	0x15f1
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x7
	.4byte	0x15e6
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x7
	.4byte	0x15da
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x32
	.4byte	0x15fe
	.4byte	.LBI74
	.byte	.LVU99
	.4byte	.LLRL25
	.byte	0x28
	.byte	0x2
	.uleb128 0x7
	.4byte	0x1609
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x7
	.4byte	0x162c
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x7
	.4byte	0x1620
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x7
	.4byte	0x1615
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x24
	.4byte	.LLRL25
	.uleb128 0x26
	.4byte	0x1638
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x42
	.4byte	0x1641
	.uleb128 0x32
	.4byte	0x1652
	.4byte	.LBI76
	.byte	.LVU102
	.4byte	.LLRL34
	.byte	0x21
	.byte	0x12
	.uleb128 0x7
	.4byte	0x167a
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x7
	.4byte	0x166f
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x7
	.4byte	0x1663
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x24
	.4byte	.LLRL34
	.uleb128 0x26
	.4byte	0x1686
	.4byte	.LLST38
	.4byte	.LVUS38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0x15b7
	.4byte	.LBI85
	.byte	.LVU139
	.4byte	.LLRL39
	.byte	0x38
	.4byte	0x12be
	.uleb128 0x7
	.4byte	0x15c2
	.4byte	.LLST40
	.4byte	.LVUS40
	.byte	0
	.uleb128 0x43
	.4byte	0x1566
	.4byte	.LBI89
	.byte	.LVU154
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.byte	0x1
	.byte	0x39
	.byte	0x2
	.4byte	0x1326
	.uleb128 0x7
	.4byte	0x159f
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x7
	.4byte	0x1594
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x7
	.4byte	0x1589
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x7
	.4byte	0x157d
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x7
	.4byte	0x1571
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x26
	.4byte	0x15aa
	.4byte	.LLST46
	.4byte	.LVUS46
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0xf1d
	.4byte	0x1361
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x77
	.sleb128 0
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0x26
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.uleb128 0x6
	.byte	0x79
	.sleb128 0
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0x26
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.uleb128 0x6
	.byte	0x7a
	.sleb128 0
	.byte	0xa8
	.uleb128 0x3b
	.byte	0xa8
	.uleb128 0x26
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0xef8
	.4byte	0x1383
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x11
	.4byte	.LVL32
	.4byte	0xea4
	.4byte	0x13b5
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL33
	.4byte	0xe89
	.4byte	0x13e0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0xbf800000
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3a83126f
	.byte	0
	.uleb128 0x11
	.4byte	.LVL34
	.4byte	0xe6e
	.4byte	0x13f4
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.4byte	.LVL38
	.4byte	0xe62
	.uleb128 0x11
	.4byte	.LVL41
	.4byte	0xe51
	.4byte	0x1411
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL42
	.4byte	0xe22
	.4byte	0x1437
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0x11
	.4byte	.LVL43
	.4byte	0xe07
	.4byte	0x1457
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL44
	.4byte	0xea4
	.4byte	0x148b
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL45
	.4byte	0xe89
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0xbf800000
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xa3
	.uleb128 0x33
	.4byte	.LASF271
	.byte	0x16
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d6
	.uleb128 0x45
	.4byte	.LVL3
	.4byte	0xf42
	.byte	0
	.uleb128 0x33
	.4byte	.LASF272
	.byte	0xb
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1536
	.uleb128 0x30
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x1509
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0xf
	.byte	0xb
	.4byte	0x3b
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL0
	.4byte	0xf73
	.4byte	0x151e
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x240
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL1
	.4byte	0x1700
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x240
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF275
	.byte	0x4
	.byte	0x4d
	.4byte	0x1566
	.uleb128 0xe
	.ascii	"env\000"
	.byte	0x4
	.byte	0x4d
	.byte	0x2f
	.4byte	0xe84
	.uleb128 0x12
	.4byte	.LASF273
	.byte	0x4
	.byte	0x4d
	.byte	0x43
	.4byte	0xd26
	.uleb128 0x12
	.4byte	.LASF274
	.byte	0x4
	.byte	0x4d
	.byte	0x59
	.4byte	0x746
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF276
	.byte	0x4
	.byte	0x31
	.4byte	0x15b7
	.uleb128 0xe
	.ascii	"env\000"
	.byte	0x4
	.byte	0x31
	.byte	0x2e
	.4byte	0xe84
	.uleb128 0x12
	.4byte	.LASF273
	.byte	0x4
	.byte	0x31
	.byte	0x42
	.4byte	0xd26
	.uleb128 0xe
	.ascii	"s1\000"
	.byte	0x4
	.byte	0x32
	.byte	0xd
	.4byte	0x6f2
	.uleb128 0xe
	.ascii	"s2\000"
	.byte	0x4
	.byte	0x33
	.byte	0xd
	.4byte	0x6f2
	.uleb128 0xe
	.ascii	"s3\000"
	.byte	0x4
	.byte	0x34
	.byte	0xd
	.4byte	0x6f2
	.uleb128 0x46
	.4byte	.LASF274
	.byte	0x4
	.byte	0x36
	.byte	0x6
	.4byte	0x3b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF277
	.byte	0x4
	.byte	0x1f
	.4byte	0x15cf
	.uleb128 0xe
	.ascii	"env\000"
	.byte	0x4
	.byte	0x1f
	.byte	0x2f
	.4byte	0xe84
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF278
	.byte	0x3
	.byte	0x26
	.4byte	0x15fe
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0x3
	.byte	0x26
	.byte	0x35
	.4byte	0x7bc
	.uleb128 0xe
	.ascii	"id\000"
	.byte	0x3
	.byte	0x26
	.byte	0x3f
	.4byte	0x3b
	.uleb128 0xe
	.ascii	"mtx\000"
	.byte	0x3
	.byte	0x26
	.byte	0x52
	.4byte	0xf18
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF279
	.byte	0x3
	.byte	0x1e
	.4byte	0x164d
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0x3
	.byte	0x1e
	.byte	0x35
	.4byte	0x7bc
	.uleb128 0xe
	.ascii	"id\000"
	.byte	0x3
	.byte	0x1e
	.byte	0x3f
	.4byte	0x3b
	.uleb128 0xe
	.ascii	"mtx\000"
	.byte	0x3
	.byte	0x1e
	.byte	0x52
	.4byte	0xf18
	.uleb128 0xe
	.ascii	"num\000"
	.byte	0x3
	.byte	0x1e
	.byte	0x5b
	.4byte	0x3b
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x20
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x27
	.ascii	"ptr\000"
	.byte	0x21
	.byte	0xc
	.4byte	0x164d
	.byte	0
	.uleb128 0xd
	.4byte	0xb3a
	.uleb128 0x47
	.4byte	.LASF290
	.byte	0x3
	.byte	0xf
	.byte	0x19
	.4byte	0x164d
	.byte	0x3
	.4byte	0x1690
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0x3
	.byte	0xf
	.byte	0x3c
	.4byte	0x7bc
	.uleb128 0xe
	.ascii	"id\000"
	.byte	0x3
	.byte	0xf
	.byte	0x46
	.4byte	0x3b
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x3
	.byte	0xf
	.byte	0x4e
	.4byte	0x3b
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x11
	.byte	0x6
	.4byte	0x3b
	.byte	0
	.uleb128 0x28
	.4byte	.LASF280
	.2byte	0x144
	.4byte	0x16a8
	.uleb128 0x13
	.ascii	"out\000"
	.2byte	0x144
	.byte	0x2a
	.4byte	0xf13
	.byte	0
	.uleb128 0x28
	.4byte	.LASF281
	.2byte	0x137
	.4byte	0x16e8
	.uleb128 0x13
	.ascii	"out\000"
	.2byte	0x137
	.byte	0x2a
	.4byte	0xf13
	.uleb128 0x13
	.ascii	"x\000"
	.2byte	0x137
	.byte	0x35
	.4byte	0x26
	.uleb128 0x13
	.ascii	"y\000"
	.2byte	0x137
	.byte	0x3e
	.4byte	0x26
	.uleb128 0x13
	.ascii	"z\000"
	.2byte	0x137
	.byte	0x47
	.4byte	0x26
	.uleb128 0x13
	.ascii	"w\000"
	.2byte	0x137
	.byte	0x50
	.4byte	0x26
	.byte	0
	.uleb128 0x28
	.4byte	.LASF282
	.2byte	0x120
	.4byte	0x1700
	.uleb128 0x13
	.ascii	"out\000"
	.2byte	0x120
	.byte	0x27
	.4byte	0xf13
	.byte	0
	.uleb128 0x34
	.4byte	.LASF262
	.4byte	.LASF283
	.uleb128 0x34
	.4byte	.LASF251
	.4byte	.LASF284
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1e
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 23
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 24
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.sleb128 2
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.sleb128 3
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x21
	.sleb128 30
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS1:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL8-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-.LVL4
	.uleb128 .LVL9-1-.LVL4
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL9-1-.LVL4
	.uleb128 .LFE214-.LVL4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL6-.LVL4
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL6-.LVL4
	.uleb128 .LVL14-.LVL4
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL14-.LVL4
	.uleb128 .LFE214-.LVL4
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x1
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL7-.LVL4
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL7-.LVL4
	.uleb128 .LVL40-.LVL4
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL40-.LVL4
	.uleb128 .LFE214-.LVL4
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x2
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL9-1-.LVL4
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL9-1-.LVL4
	.uleb128 .LVL39-.LVL4
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL39-.LVL4
	.uleb128 .LFE214-.LVL4
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU56
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU175
.LLST5:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LVL46-.LVL13
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS6:
	.uleb128 .LVU60
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU130
.LLST6:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL21-.LVL14
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-.LVL14
	.uleb128 .LVL22-.LVL14
	.uleb128 0x4
	.byte	0x71
	.sleb128 -96
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL14
	.uleb128 .LVL24-.LVL14
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL24-.LVL14
	.uleb128 .LVL30-.LVL14
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS7:
	.uleb128 .LVU137
	.uleb128 .LVU165
.LLST7:
	.byte	0x8
	.4byte	.LVL35
	.uleb128 .LVL38-1-.LVL35
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS8:
	.uleb128 .LVU167
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU175
.LLST8:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL41-1-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL41-1-.LVL39
	.uleb128 .LVL46-.LVL39
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS19:
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU175
.LLST19:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LVL23-.LVL14
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL23-.LVL14
	.uleb128 .LVL24-.LVL14
	.uleb128 0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL14
	.uleb128 .LVL46-.LVL14
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS21:
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU67
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU95
.LLST21:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL17-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL17-.LVL15
	.uleb128 .LVL18-.LVL15
	.uleb128 0x3
	.byte	0x75
	.sleb128 -12
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.LVL15
	.uleb128 .LVL25-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL25-.LVL15
	.uleb128 .LVL26-.LVL15
	.uleb128 0x3
	.byte	0x75
	.sleb128 -12
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU75
	.uleb128 .LVU95
.LLST23:
	.byte	0x8
	.4byte	.LVL21
	.uleb128 .LVL26-.LVL21
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS24:
	.uleb128 .LVU77
	.uleb128 .LVU78
.LLST24:
	.byte	0x8
	.4byte	.LVL21
	.uleb128 .LVL21-.LVL21
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU25
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU51
.LLST10:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL8-.LVL5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL5
	.uleb128 .LVL9-1-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-1-.LVL5
	.uleb128 .LVL10-.LVL5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL5
	.uleb128 .LVL11-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS11:
	.uleb128 .LVU27
	.uleb128 .LVU51
.LLST11:
	.byte	0x8
	.4byte	.LVL5
	.uleb128 .LVL11-.LVL5
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS15:
	.uleb128 .LVU27
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU51
.LLST15:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL8-.LVL5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL5
	.uleb128 .LVL9-1-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-1-.LVL5
	.uleb128 .LVL10-.LVL5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL5
	.uleb128 .LVL11-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS17:
	.uleb128 .LVU29
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU38
.LLST17:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL8-.LVL5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL5
	.uleb128 .LVL9-1-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-1-.LVL5
	.uleb128 .LVL9-.LVL5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -176
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU97
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU131
.LLST26:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL28-.LVL26
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL26
	.uleb128 .LVL29-.LVL26
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL29-.LVL26
	.uleb128 .LVL31-.LVL26
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 .LVU97
	.uleb128 .LVU131
.LLST27:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL31-.LVL26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
.LVUS28:
	.uleb128 .LVU97
	.uleb128 .LVU131
.LLST28:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL31-.LVL26
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS29:
	.uleb128 .LVU100
	.uleb128 .LVU131
.LLST29:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL31-.LVL26
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU100
	.uleb128 .LVU131
.LLST30:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL31-.LVL26
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS31:
	.uleb128 .LVU99
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU131
.LLST31:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL28-.LVL26
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL26
	.uleb128 .LVL29-.LVL26
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL29-.LVL26
	.uleb128 .LVL31-.LVL26
	.uleb128 0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU99
	.uleb128 .LVU131
.LLST32:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL31-.LVL26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
.LVUS33:
	.uleb128 .LVU125
	.uleb128 .LVU131
.LLST33:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL31-.LVL27
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 .LVU102
	.uleb128 .LVU123
.LLST35:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU102
	.uleb128 .LVU123
.LLST36:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
.LVUS37:
	.uleb128 .LVU102
	.uleb128 .LVU123
.LLST37:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU105
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU123
.LLST38:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL26-.LVL26
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL26-.LVL26
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL26-.LVL26
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL27-.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS40:
	.uleb128 .LVU139
	.uleb128 .LVU152
.LLST40:
	.byte	0x8
	.4byte	.LVL35
	.uleb128 .LVL36-.LVL35
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS41:
	.uleb128 .LVU154
	.uleb128 .LVU161
.LLST41:
	.byte	0x8
	.4byte	.LVL36
	.uleb128 .LVL37-.LVL36
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS44:
	.uleb128 .LVU154
	.uleb128 .LVU161
.LLST44:
	.byte	0x8
	.4byte	.LVL36
	.uleb128 .LVL37-.LVL36
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS45:
	.uleb128 .LVU154
	.uleb128 .LVU161
.LLST45:
	.byte	0x8
	.4byte	.LVL36
	.uleb128 .LVL37-.LVL36
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS46:
	.uleb128 .LVU156
	.uleb128 .LVU161
.LLST46:
	.byte	0x8
	.4byte	.LVL36
	.uleb128 .LVL37-.LVL36
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 .LVU10
	.uleb128 .LVU12
.LLST0:
	.byte	0x8
	.4byte	.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x2
	.byte	0x30
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
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
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
	.4byte	.LBB45
	.byte	0x4
	.uleb128 .LBB45-.LBB45
	.uleb128 .LBE45-.LBB45
	.byte	0x4
	.uleb128 .LBB62-.LBB45
	.uleb128 .LBE62-.LBB45
	.byte	0x4
	.uleb128 .LBB63-.LBB45
	.uleb128 .LBE63-.LBB45
	.byte	0x4
	.uleb128 .LBB64-.LBB45
	.uleb128 .LBE64-.LBB45
	.byte	0x4
	.uleb128 .LBB71-.LBB45
	.uleb128 .LBE71-.LBB45
	.byte	0
.LLRL16:
	.byte	0x5
	.4byte	.LBB48
	.byte	0x4
	.uleb128 .LBB48-.LBB48
	.uleb128 .LBE48-.LBB48
	.byte	0x4
	.uleb128 .LBB52-.LBB48
	.uleb128 .LBE52-.LBB48
	.byte	0x4
	.uleb128 .LBB53-.LBB48
	.uleb128 .LBE53-.LBB48
	.byte	0
.LLRL18:
	.byte	0x5
	.4byte	.LBB65
	.byte	0x4
	.uleb128 .LBB65-.LBB65
	.uleb128 .LBE65-.LBB65
	.byte	0x4
	.uleb128 .LBB72-.LBB65
	.uleb128 .LBE72-.LBB65
	.byte	0
.LLRL20:
	.byte	0x5
	.4byte	.LBB66
	.byte	0x4
	.uleb128 .LBB66-.LBB66
	.uleb128 .LBE66-.LBB66
	.byte	0x4
	.uleb128 .LBB70-.LBB66
	.uleb128 .LBE70-.LBB66
	.byte	0
.LLRL22:
	.byte	0x5
	.4byte	.LBB67
	.byte	0x4
	.uleb128 .LBB67-.LBB67
	.uleb128 .LBE67-.LBB67
	.byte	0x4
	.uleb128 .LBB69-.LBB67
	.uleb128 .LBE69-.LBB67
	.byte	0
.LLRL25:
	.byte	0x5
	.4byte	.LBB73
	.byte	0x4
	.uleb128 .LBB73-.LBB73
	.uleb128 .LBE73-.LBB73
	.byte	0x4
	.uleb128 .LBB84-.LBB73
	.uleb128 .LBE84-.LBB73
	.byte	0
.LLRL34:
	.byte	0x5
	.4byte	.LBB76
	.byte	0x4
	.uleb128 .LBB76-.LBB76
	.uleb128 .LBE76-.LBB76
	.byte	0x4
	.uleb128 .LBB80-.LBB76
	.uleb128 .LBE80-.LBB76
	.byte	0x4
	.uleb128 .LBB81-.LBB76
	.uleb128 .LBE81-.LBB76
	.byte	0
.LLRL39:
	.byte	0x5
	.4byte	.LBB85
	.byte	0x4
	.uleb128 .LBB85-.LBB85
	.uleb128 .LBE85-.LBB85
	.byte	0x4
	.uleb128 .LBB88-.LBB85
	.uleb128 .LBE88-.LBB85
	.byte	0
.LLRL47:
	.byte	0x7
	.4byte	.LFB212
	.uleb128 .LFE212-.LFB212
	.byte	0x7
	.4byte	.LFB213
	.uleb128 .LFE213-.LFB213
	.byte	0x7
	.4byte	.LFB214
	.uleb128 .LFE214-.LFB214
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF144:
	.ascii	"GPU_SRC_ALPHA_SATURATE\000"
.LASF279:
	.ascii	"C3D_FVUnifMtxNx4\000"
.LASF86:
	.ascii	"transparentVBO\000"
.LASF121:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF272:
	.ascii	"Cursor_Init\000"
.LASF174:
	.ascii	"GPU_GEOMETRY_PRIM\000"
.LASF69:
	.ascii	"Block_Furnace\000"
.LASF193:
	.ascii	"WorkerItem\000"
.LASF196:
	.ascii	"capacity\000"
.LASF68:
	.ascii	"Block_Emerald_Block\000"
.LASF243:
	.ascii	"C3D_TexEnv\000"
.LASF167:
	.ascii	"GPU_COMBINEFUNC\000"
.LASF281:
	.ascii	"Mtx_Diagonal\000"
.LASF227:
	.ascii	"flags\000"
.LASF50:
	.ascii	"Block_Snow\000"
.LASF164:
	.ascii	"GPU_DOT3_RGBA\000"
.LASF287:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF134:
	.ascii	"GPU_DST_COLOR\000"
.LASF118:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF248:
	.ascii	"fxyz\000"
.LASF54:
	.ascii	"Block_Smooth_Stone\000"
.LASF9:
	.ascii	"Direction_Invalid\000"
.LASF219:
	.ascii	"World\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF198:
	.ascii	"itemAddedEvent\000"
.LASF204:
	.ascii	"WorldGenType\000"
.LASF133:
	.ascii	"GPU_ONE_MINUS_SRC_COLOR\000"
.LASF42:
	.ascii	"Block_Brick\000"
.LASF239:
	.ascii	"funcAlpha\000"
.LASF37:
	.ascii	"Block_Log\000"
.LASF119:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF18:
	.ascii	"__int32_t\000"
.LASF244:
	.ascii	"C3D_RGB\000"
.LASF125:
	.ascii	"GPU_BLEND_SUBTRACT\000"
.LASF72:
	.ascii	"Xorshift32\000"
.LASF290:
	.ascii	"C3D_FVUnifWritePtr\000"
.LASF51:
	.ascii	"Block_Obsidian\000"
.LASF56:
	.ascii	"Block_Grass_Path\000"
.LASF222:
	.ascii	"C3D_Mtx\000"
.LASF241:
	.ascii	"scaleRgb\000"
.LASF15:
	.ascii	"short int\000"
.LASF229:
	.ascii	"base_paddr\000"
.LASF246:
	.ascii	"C3D_Both\000"
.LASF256:
	.ascii	"C3D_DepthMap\000"
.LASF267:
	.ascii	"highlight\000"
.LASF126:
	.ascii	"GPU_BLEND_REVERSE_SUBTRACT\000"
.LASF112:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF273:
	.ascii	"mode\000"
.LASF96:
	.ascii	"ChunkGenProgress\000"
.LASF283:
	.ascii	"__builtin_memcpy\000"
.LASF123:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF141:
	.ascii	"GPU_ONE_MINUS_CONSTANT_COLOR\000"
.LASF7:
	.ascii	"Direction_North\000"
.LASF137:
	.ascii	"GPU_ONE_MINUS_SRC_ALPHA\000"
.LASF14:
	.ascii	"__int16_t\000"
.LASF176:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF127:
	.ascii	"GPU_BLEND_MIN\000"
.LASF80:
	.ascii	"blocks\000"
.LASF165:
	.ascii	"GPU_MULTIPLY_ADD\000"
.LASF280:
	.ascii	"Mtx_Identity\000"
.LASF157:
	.ascii	"GPU_REPLACE\000"
.LASF192:
	.ascii	"chunk\000"
.LASF6:
	.ascii	"Direction_Top\000"
.LASF90:
	.ascii	"forceVBOUpdate\000"
.LASF234:
	.ascii	"opAlpha\000"
.LASF250:
	.ascii	"cube_sides_lut\000"
.LASF28:
	.ascii	"uint32_t\000"
.LASF181:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF289:
	.ascii	"Cursor_Draw\000"
.LASF245:
	.ascii	"C3D_Alpha\000"
.LASF29:
	.ascii	"uint64_t\000"
.LASF258:
	.ascii	"World_GetBlock\000"
.LASF79:
	.ascii	"VBO_Block\000"
.LASF0:
	.ascii	"float\000"
.LASF122:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF143:
	.ascii	"GPU_ONE_MINUS_CONSTANT_ALPHA\000"
.LASF25:
	.ascii	"int16_t\000"
.LASF124:
	.ascii	"GPU_BLEND_ADD\000"
.LASF145:
	.ascii	"GPU_BLENDFACTOR\000"
.LASF1:
	.ascii	"long long unsigned int\000"
.LASF211:
	.ascii	"cacheTranslationX\000"
.LASF212:
	.ascii	"cacheTranslationZ\000"
.LASF233:
	.ascii	"opRgb\000"
.LASF140:
	.ascii	"GPU_CONSTANT_COLOR\000"
.LASF48:
	.ascii	"Block_Door_Bottom\000"
.LASF131:
	.ascii	"GPU_ONE\000"
.LASF257:
	.ascii	"C3D_AlphaBlend\000"
.LASF201:
	.ascii	"WorldGen_Smea\000"
.LASF263:
	.ascii	"linearAlloc\000"
.LASF284:
	.ascii	"__builtin_memset\000"
.LASF58:
	.ascii	"Block_Lava\000"
.LASF117:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF73:
	.ascii	"size_t\000"
.LASF70:
	.ascii	"Blocks_Count\000"
.LASF282:
	.ascii	"Mtx_Zeros\000"
.LASF226:
	.ascii	"offset\000"
.LASF275:
	.ascii	"C3D_TexEnvFunc\000"
.LASF247:
	.ascii	"C3D_TexEnvMode\000"
.LASF106:
	.ascii	"Chunk\000"
.LASF142:
	.ascii	"GPU_CONSTANT_ALPHA\000"
.LASF91:
	.ascii	"_Bool\000"
.LASF185:
	.ascii	"WorkerItemType_Save\000"
.LASF31:
	.ascii	"Block_Air\000"
.LASF238:
	.ascii	"funcRgb\000"
.LASF288:
	.ascii	"C3D_GetBufInfo\000"
.LASF99:
	.ascii	"uuid\000"
.LASF23:
	.ascii	"__uint64_t\000"
.LASF216:
	.ascii	"workqueue\000"
.LASF217:
	.ascii	"randomTickGen\000"
.LASF47:
	.ascii	"Block_Door_Top\000"
.LASF88:
	.ascii	"transparentVertices\000"
.LASF43:
	.ascii	"Block_Planks\000"
.LASF16:
	.ascii	"__uint16_t\000"
.LASF52:
	.ascii	"Block_Netherrack\000"
.LASF206:
	.ascii	"settings\000"
.LASF172:
	.ascii	"GPU_TRIANGLE_STRIP\000"
.LASF65:
	.ascii	"Block_Diamond_Block\000"
.LASF269:
	.ascii	"model\000"
.LASF159:
	.ascii	"GPU_ADD\000"
.LASF32:
	.ascii	"Block_Stone\000"
.LASF71:
	.ascii	"char\000"
.LASF108:
	.ascii	"LightLock\000"
.LASF116:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF186:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF115:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF74:
	.ascii	"ptrdiff_t\000"
.LASF223:
	.ascii	"DirectionToOffset\000"
.LASF158:
	.ascii	"GPU_MODULATE\000"
.LASF82:
	.ascii	"revision\000"
.LASF103:
	.ascii	"heightmapRevision\000"
.LASF155:
	.ascii	"GPU_PREVIOUS\000"
.LASF194:
	.ascii	"data\000"
.LASF111:
	.ascii	"LightEvent\000"
.LASF95:
	.ascii	"ChunkGen_Finished\000"
.LASF24:
	.ascii	"uint8_t\000"
.LASF67:
	.ascii	"Block_Iron_Block\000"
.LASF97:
	.ascii	"tasksRunning\000"
.LASF260:
	.ascii	"Mtx_Translate\000"
.LASF208:
	.ascii	"HighestBlock\000"
.LASF113:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF161:
	.ascii	"GPU_INTERPOLATE\000"
.LASF147:
	.ascii	"GPU_FRAGMENT_PRIMARY_COLOR\000"
.LASF249:
	.ascii	"WorldVertex\000"
.LASF189:
	.ascii	"WorkerItemTypes_Count\000"
.LASF149:
	.ascii	"GPU_TEXTURE0\000"
.LASF64:
	.ascii	"Block_Gold_Block\000"
.LASF22:
	.ascii	"long long int\000"
.LASF162:
	.ascii	"GPU_SUBTRACT\000"
.LASF63:
	.ascii	"Block_Emerald_Ore\000"
.LASF110:
	.ascii	"lock\000"
.LASF132:
	.ascii	"GPU_SRC_COLOR\000"
.LASF271:
	.ascii	"Cursor_Deinit\000"
.LASF203:
	.ascii	"WorldGenTypes_Count\000"
.LASF230:
	.ascii	"bufCount\000"
.LASF213:
	.ascii	"chunkPool\000"
.LASF221:
	.ascii	"C3D_FVec\000"
.LASF255:
	.ascii	"C3D_GetTexEnv\000"
.LASF261:
	.ascii	"linearFree\000"
.LASF242:
	.ascii	"scaleAlpha\000"
.LASF251:
	.ascii	"memset\000"
.LASF173:
	.ascii	"GPU_TRIANGLE_FAN\000"
.LASF220:
	.ascii	"superflat\000"
.LASF55:
	.ascii	"Block_Crafting_Table\000"
.LASF202:
	.ascii	"WorldGen_SuperFlat\000"
.LASF77:
	.ascii	"size\000"
.LASF175:
	.ascii	"GPU_Primitive_t\000"
.LASF274:
	.ascii	"param\000"
.LASF265:
	.ascii	"projectionview\000"
.LASF62:
	.ascii	"Block_Gold_Ore\000"
.LASF218:
	.ascii	"weather\000"
.LASF183:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF136:
	.ascii	"GPU_SRC_ALPHA\000"
.LASF120:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF264:
	.ascii	"projUniform\000"
.LASF205:
	.ascii	"seed\000"
.LASF224:
	.ascii	"C3D_FVUnif\000"
.LASF8:
	.ascii	"Direction_South\000"
.LASF30:
	.ascii	"Block\000"
.LASF252:
	.ascii	"BufInfo_Add\000"
.LASF59:
	.ascii	"Block_Iron_Ore\000"
.LASF85:
	.ascii	"emptyRevision\000"
.LASF139:
	.ascii	"GPU_ONE_MINUS_DST_ALPHA\000"
.LASF33:
	.ascii	"Block_Dirt\000"
.LASF104:
	.ascii	"displayRevision\000"
.LASF75:
	.ascii	"long double\000"
.LASF76:
	.ascii	"_LOCK_T\000"
.LASF26:
	.ascii	"uint16_t\000"
.LASF285:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF178:
	.ascii	"GPU_SHADER_TYPE\000"
.LASF3:
	.ascii	"Direction_West\000"
.LASF135:
	.ascii	"GPU_ONE_MINUS_DST_COLOR\000"
.LASF128:
	.ascii	"GPU_BLEND_MAX\000"
.LASF163:
	.ascii	"GPU_DOT3_RGB\000"
.LASF268:
	.ascii	"cursorVBO\000"
.LASF4:
	.ascii	"Direction_East\000"
.LASF168:
	.ascii	"GPU_TEVSCALE_1\000"
.LASF169:
	.ascii	"GPU_TEVSCALE_2\000"
.LASF170:
	.ascii	"GPU_TEVSCALE_4\000"
.LASF114:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF19:
	.ascii	"long int\000"
.LASF138:
	.ascii	"GPU_DST_ALPHA\000"
.LASF278:
	.ascii	"C3D_FVUnifMtx4x4\000"
.LASF195:
	.ascii	"length\000"
.LASF215:
	.ascii	"freeChunks\000"
.LASF182:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF98:
	.ascii	"graphicalTasksRunning\000"
.LASF188:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF177:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF179:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF5:
	.ascii	"Direction_Bottom\000"
.LASF53:
	.ascii	"Block_Sandstone\000"
.LASF225:
	.ascii	"C3D_FVUnifDirty\000"
.LASF93:
	.ascii	"ChunkGen_Empty\000"
.LASF57:
	.ascii	"Block_Water\000"
.LASF87:
	.ascii	"vertices\000"
.LASF34:
	.ascii	"Block_Grass\000"
.LASF13:
	.ascii	"__uint8_t\000"
.LASF237:
	.ascii	"srcAlpha\000"
.LASF44:
	.ascii	"Block_Wool\000"
.LASF209:
	.ascii	"name\000"
.LASF156:
	.ascii	"GPU_TEVSRC\000"
.LASF40:
	.ascii	"Block_Glass\000"
.LASF259:
	.ascii	"Mtx_Multiply\000"
.LASF81:
	.ascii	"metadataLight\000"
.LASF148:
	.ascii	"GPU_FRAGMENT_SECONDARY_COLOR\000"
.LASF61:
	.ascii	"Block_Diamond_Ore\000"
.LASF21:
	.ascii	"long unsigned int\000"
.LASF92:
	.ascii	"Cluster\000"
.LASF84:
	.ascii	"empty\000"
.LASF200:
	.ascii	"WorkQueue\000"
.LASF197:
	.ascii	"queue\000"
.LASF94:
	.ascii	"ChunkGen_Terrain\000"
.LASF27:
	.ascii	"int32_t\000"
.LASF266:
	.ascii	"world\000"
.LASF254:
	.ascii	"BufInfo_Init\000"
.LASF78:
	.ascii	"memory\000"
.LASF154:
	.ascii	"GPU_CONSTANT\000"
.LASF36:
	.ascii	"Block_Sand\000"
.LASF12:
	.ascii	"Direction\000"
.LASF129:
	.ascii	"GPU_BLENDEQUATION\000"
.LASF191:
	.ascii	"type\000"
.LASF45:
	.ascii	"Block_Bedrock\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF150:
	.ascii	"GPU_TEXTURE1\000"
.LASF151:
	.ascii	"GPU_TEXTURE2\000"
.LASF152:
	.ascii	"GPU_TEXTURE3\000"
.LASF20:
	.ascii	"__uint32_t\000"
.LASF207:
	.ascii	"GeneratorSettings\000"
.LASF210:
	.ascii	"genSettings\000"
.LASF35:
	.ascii	"Block_Cobblestone\000"
.LASF89:
	.ascii	"vboRevision\000"
.LASF253:
	.ascii	"C3D_DrawArrays\000"
.LASF105:
	.ascii	"references\000"
.LASF235:
	.ascii	"opAll\000"
.LASF286:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/render"
	.ascii	"ing/Cursor.c\000"
.LASF187:
	.ascii	"WorkerItemType_Decorate\000"
.LASF276:
	.ascii	"C3D_TexEnvSrc\000"
.LASF171:
	.ascii	"GPU_TRIANGLES\000"
.LASF109:
	.ascii	"state\000"
.LASF83:
	.ascii	"seeThrough\000"
.LASF39:
	.ascii	"Block_Leaves\000"
.LASF102:
	.ascii	"heightmap\000"
.LASF236:
	.ascii	"srcRgb\000"
.LASF240:
	.ascii	"color\000"
.LASF231:
	.ascii	"buffers\000"
.LASF49:
	.ascii	"Block_Snow_Grass\000"
.LASF228:
	.ascii	"C3D_BufCfg\000"
.LASF38:
	.ascii	"Block_Gravel\000"
.LASF146:
	.ascii	"GPU_PRIMARY_COLOR\000"
.LASF100:
	.ascii	"genProgress\000"
.LASF11:
	.ascii	"signed char\000"
.LASF17:
	.ascii	"short unsigned int\000"
.LASF46:
	.ascii	"Block_Coarse\000"
.LASF262:
	.ascii	"memcpy\000"
.LASF130:
	.ascii	"GPU_ZERO\000"
.LASF101:
	.ascii	"clusters\000"
.LASF166:
	.ascii	"GPU_ADD_MULTIPLY\000"
.LASF270:
	.ascii	"bufInfo\000"
.LASF107:
	.ascii	"double\000"
.LASF199:
	.ascii	"listInUse\000"
.LASF60:
	.ascii	"Block_Coal_Ore\000"
.LASF153:
	.ascii	"GPU_PREVIOUS_BUFFER\000"
.LASF190:
	.ascii	"WorkerItemType\000"
.LASF41:
	.ascii	"Block_Stonebrick\000"
.LASF66:
	.ascii	"Block_Coal_Block\000"
.LASF277:
	.ascii	"C3D_TexEnvInit\000"
.LASF214:
	.ascii	"chunkCache\000"
.LASF184:
	.ascii	"WorkerItemType_Load\000"
.LASF160:
	.ascii	"GPU_ADD_SIGNED\000"
.LASF232:
	.ascii	"C3D_BufInfo\000"
.LASF180:
	.ascii	"NDSP_ENCODING_PCM16\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
