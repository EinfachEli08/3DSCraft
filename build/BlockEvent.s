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
	.file	"BlockEvent.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/blocks/BlockEvent.c"
	.section	.text.BlockEvent_RandomTick,"ax",%progbits
	.align	2
	.global	BlockEvent_RandomTick
	.syntax unified
	.arm
	.type	BlockEvent_RandomTick, %function
BlockEvent_RandomTick:
.LVL0:
.LFB130:
	.loc 1 3 83 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 4 2 view .LVU1
	.loc 1 5 2 view .LVU2
.LBB60:
	.loc 1 5 7 view .LVU3
	.loc 1 5 20 discriminator 1 view .LVU4
.LBE60:
	.loc 1 3 83 is_stmt 0 view .LVU5
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
	mov	r6, #0
	mov	r8, r3
	mov	r10, r1
	.loc 1 4 6 view .LVU6
	mov	r7, r6
	.loc 1 3 83 view .LVU7
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
.LBB179:
.LBB61:
.LBB62:
.LBB63:
.LBB64:
.LBB65:
.LBB66:
	.file 2 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Chunk.h"
	.loc 2 103 2 view .LVU8
	add	r3, r1, #65536
.LVL1:
	.loc 2 103 2 view .LVU9
	add	ip, r2, #12
	str	r3, [sp, #20]
	str	r6, [sp]
	str	r8, [sp, #16]
.LVL2:
.L2:
	.loc 2 103 2 view .LVU10
.LBE66:
.LBE65:
.LBE64:
.LBE63:
.LBE62:
	.loc 1 6 21 is_stmt 1 discriminator 1 view .LVU11
	ldr	r3, [sp, #16]
	sub	fp, ip, #12
	add	r2, r3, r7, lsl #2
	ldr	r3, [sp, #64]
	str	r7, [sp, #8]
	add	r6, r3, r7, lsl #2
	str	ip, [sp, #4]
.LVL3:
.L11:
.LBB175:
	.loc 1 7 4 view .LVU12
	.loc 1 8 14 is_stmt 0 view .LVU13
	ldr	r0, [r2], #4
	.loc 1 8 8 view .LVU14
	ldr	r3, [sp]
	.loc 1 7 8 view .LVU15
	ldr	ip, [fp], #4
.LVL4:
	.loc 1 8 4 is_stmt 1 view .LVU16
	.loc 1 8 8 is_stmt 0 view .LVU17
	add	r0, r0, r3
.LVL5:
	.loc 1 9 4 is_stmt 1 view .LVU18
.LBB81:
.LBB82:
	.loc 2 107 27 is_stmt 0 view .LVU19
	cmp	r0, #0
	add	r4, r0, #15
	movge	r4, r0
	.loc 2 107 47 view .LVU20
	rsbs	r1, r0, #0
	.loc 2 107 27 view .LVU21
	asr	r4, r4, #4
	.loc 2 107 47 view .LVU22
	and	r1, r1, #15
	and	r7, r0, #15
	rsbpl	r7, r1, #0
	.loc 2 107 67 view .LVU23
	add	r1, r4, r4, lsl #8
	add	r1, r4, r1, lsl #1
	add	r1, r1, ip, lsl #4
.LBE82:
.LBE81:
	.loc 1 9 8 view .LVU24
	ldr	r8, [r6], #4
.LVL6:
	.loc 1 10 4 is_stmt 1 view .LVU25
.LBB87:
.LBI81:
	.loc 2 106 14 view .LVU26
.LBB83:
	.loc 2 107 2 view .LVU27
	.loc 2 107 2 is_stmt 0 view .LVU28
.LBE83:
.LBE87:
	.loc 1 11 4 is_stmt 1 view .LVU29
.LBB88:
.LBB84:
	.loc 2 107 67 is_stmt 0 view .LVU30
	add	r1, r1, r7
	add	r1, r10, r1, lsl #4
	add	r1, r1, r8
.LBE84:
.LBE88:
	.loc 1 11 4 view .LVU31
	ldrb	r1, [r1, #28]	@ zero_extendqisi2
.LBB89:
.LBB85:
	.loc 2 107 67 view .LVU32
	lsl	r5, ip, #4
.LBE85:
.LBE89:
	.loc 1 11 4 view .LVU33
	sub	r1, r1, #2
.LBB90:
.LBB86:
	.loc 2 107 67 view .LVU34
	lsl	r9, r4, #8
.LBE86:
.LBE90:
	.loc 1 11 4 view .LVU35
	cmp	r1, #23
	ldrls	pc, [pc, r1, asl #2]
	b	.L3
.L5:
	.word	.L8
	.word	.L6
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L6
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L3
	.word	.L4
.L6:
	.loc 1 24 6 is_stmt 1 view .LVU36
.LVL7:
.LBB91:
.LBI91:
	.loc 2 106 14 view .LVU37
.LBB92:
	.loc 2 107 2 view .LVU38
	.loc 2 107 27 is_stmt 0 view .LVU39
	adds	lr, r0, #1
.LVL8:
	.loc 2 107 27 view .LVU40
	addmi	r1, r0, #16
	movpl	r1, lr
	.loc 2 107 47 view .LVU41
	rsbs	r0, lr, #0
.LVL9:
	.loc 2 107 27 view .LVU42
	asr	r1, r1, #4
	.loc 2 107 47 view .LVU43
	and	r0, r0, #15
.LBE92:
.LBE91:
.LBB98:
.LBB99:
	.loc 2 95 74 view .LVU44
	add	ip, r1, r1, lsl #8
.LVL10:
	.loc 2 95 74 view .LVU45
.LBE99:
.LBE98:
.LBB104:
.LBB93:
	.loc 2 107 47 view .LVU46
	and	lr, lr, #15
.LVL11:
	.loc 2 107 47 view .LVU47
.LBE93:
.LBE104:
.LBB105:
.LBB100:
	.loc 2 95 74 view .LVU48
	add	r1, r1, ip, lsl #1
.LBE100:
.LBE105:
.LBB106:
.LBB94:
	.loc 2 107 47 view .LVU49
	rsbpl	lr, r0, #0
.LVL12:
	.loc 2 107 47 view .LVU50
.LBE94:
.LBE106:
.LBB107:
.LBI98:
	.loc 2 94 16 is_stmt 1 view .LVU51
.LBB101:
	.loc 2 95 2 view .LVU52
	.loc 2 95 74 is_stmt 0 view .LVU53
	add	r0, r5, lr
	lsl	ip, r1, #4
	add	ip, ip, r0, lsl #4
	add	ip, r10, ip
.LBE101:
.LBE107:
.LBB108:
.LBB95:
	.loc 2 107 67 view .LVU54
	add	r0, r5, r1
.LBE95:
.LBE108:
.LBB109:
.LBB102:
	.loc 2 95 74 view .LVU55
	add	ip, ip, r8
	str	r2, [sp, #12]
.LBE102:
.LBE109:
.LBB110:
.LBB96:
	.loc 2 107 67 view .LVU56
	add	r0, r0, lr
.LBE96:
.LBE110:
.LBB111:
.LBB103:
	.loc 2 95 74 view .LVU57
	add	ip, ip, #4096
	.loc 2 95 78 view .LVU58
	ldrb	r1, [ip, #28]	@ zero_extendqisi2
.LBE103:
.LBE111:
.LBB112:
.LBB97:
	.loc 2 107 67 view .LVU59
	add	r0, r10, r0, lsl #4
	add	r0, r0, r8
.LBE97:
.LBE112:
	.loc 1 24 10 discriminator 2 view .LVU60
	ldrb	r0, [r0, #28]	@ zero_extendqisi2
	and	r1, r1, #15
	bl	Block_Opaque
.LVL13:
	.loc 1 24 9 discriminator 3 view .LVU61
	cmp	r0, #0
	ldr	r2, [sp, #12]
	bne	.L29
.L3:
	.loc 1 36 4 is_stmt 1 view .LVU62
.LVL14:
	.loc 1 36 4 is_stmt 0 view .LVU63
.LBE175:
	.loc 1 6 29 is_stmt 1 discriminator 2 view .LVU64
	.loc 1 6 21 discriminator 1 view .LVU65
	ldr	r3, [sp, #4]
	cmp	fp, r3
	bne	.L11
.L30:
	ldr	r7, [sp, #8]
.LBE61:
	.loc 1 5 20 is_stmt 0 discriminator 1 view .LVU66
	ldr	r3, [sp]
	add	r7, r7, #3
	.loc 1 5 39 is_stmt 1 discriminator 2 view .LVU67
.LVL15:
	.loc 1 5 20 discriminator 1 view .LVU68
	add	r3, r3, #16
	cmp	r7, #24
	add	ip, fp, #12
	str	r3, [sp]
	bne	.L2
.LBE179:
	.loc 1 39 1 is_stmt 0 view .LVU69
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL16:
.L29:
	.cfi_restore_state
.LBB180:
.LBB178:
.LBB176:
	.loc 1 25 7 is_stmt 1 view .LVU70
.LBB113:
.LBI113:
	.loc 2 110 13 view .LVU71
.LBB114:
	.loc 2 111 2 view .LVU72
	.loc 2 112 2 view .LVU73
	.loc 2 112 47 is_stmt 0 view .LVU74
	add	r9, r9, r4
	add	r9, r4, r9, lsl #1
.LBB115:
.LBB116:
	.loc 2 101 8 view .LVU75
	lsl	r0, r9, #4
.LBE116:
.LBE115:
	.loc 2 112 47 view .LVU76
	add	r1, r5, r9
.LVL17:
.L25:
	.loc 2 112 47 view .LVU77
.LBE114:
.LBE113:
.LBB117:
.LBB79:
	mov	r3, #2
.LBB73:
.LBB67:
	.loc 2 101 8 view .LVU78
	add	ip, r5, r7
.LBE67:
.LBE73:
	.loc 2 112 47 view .LVU79
	add	r1, r1, r7
.LBB74:
.LBB68:
	.loc 2 101 8 view .LVU80
	add	ip, r0, ip, lsl #4
.LBE68:
.LBE74:
	.loc 2 112 47 view .LVU81
	add	r1, r10, r1, lsl #4
.LBB75:
.LBB69:
	.loc 2 101 8 view .LVU82
	add	ip, r10, ip
.LBE69:
.LBE75:
	.loc 2 112 47 view .LVU83
	add	r1, r1, r8
.LBB76:
.LBB70:
	.loc 2 101 8 view .LVU84
	add	ip, ip, r8
.L24:
	.loc 2 101 8 view .LVU85
.LBE70:
.LBE76:
	.loc 2 112 47 view .LVU86
	strb	r3, [r1, #28]
	.loc 2 113 2 is_stmt 1 view .LVU87
.LVL18:
.LBB77:
.LBI65:
	.loc 2 97 13 view .LVU88
.LBB71:
	.loc 2 98 2 view .LVU89
	.loc 2 99 2 view .LVU90
	.loc 2 100 2 view .LVU91
	.loc 2 101 2 view .LVU92
	.loc 2 101 8 is_stmt 0 view .LVU93
	add	r1, ip, #4096
	ldrb	ip, [r1, #28]	@ zero_extendqisi2
	.loc 2 102 2 view .LVU94
	add	r0, r10, r0
	.loc 2 101 8 view .LVU95
	bic	ip, ip, #15
	strb	ip, [r1, #28]
	.loc 2 102 2 is_stmt 1 view .LVU96
	add	r0, r0, #8192
	ldr	r1, [r0, #28]
	.loc 2 103 2 is_stmt 0 view .LVU97
	ldr	r3, [sp, #20]
	.loc 2 102 2 view .LVU98
	add	r1, r1, #1
	str	r1, [r0, #28]
	.loc 2 103 2 is_stmt 1 view .LVU99
	ldr	r1, [r3, #668]
	add	r1, r1, #1
	str	r1, [r3, #668]
.LVL19:
	.loc 2 103 2 is_stmt 0 view .LVU100
.LBE71:
.LBE77:
.LBE79:
.LBE117:
	.loc 1 36 4 is_stmt 1 view .LVU101
	.loc 1 36 4 is_stmt 0 view .LVU102
.LBE176:
	.loc 1 6 29 is_stmt 1 discriminator 2 view .LVU103
	.loc 1 6 21 discriminator 1 view .LVU104
	ldr	r3, [sp, #4]
	cmp	fp, r3
	bne	.L11
	b	.L30
.LVL20:
.L4:
.LBB177:
	.loc 1 29 6 view .LVU105
.LBB118:
.LBI118:
	.loc 2 106 14 view .LVU106
.LBB119:
	.loc 2 107 2 view .LVU107
	.loc 2 107 27 is_stmt 0 view .LVU108
	adds	lr, r0, #1
.LVL21:
	.loc 2 107 27 view .LVU109
	addmi	r1, r0, #16
	movpl	r1, lr
	.loc 2 107 47 view .LVU110
	rsbs	r0, lr, #0
.LVL22:
	.loc 2 107 27 view .LVU111
	asr	r1, r1, #4
	.loc 2 107 47 view .LVU112
	and	r0, r0, #15
.LBE119:
.LBE118:
.LBB125:
.LBB126:
	.loc 2 95 74 view .LVU113
	add	ip, r1, r1, lsl #8
.LVL23:
	.loc 2 95 74 view .LVU114
.LBE126:
.LBE125:
.LBB131:
.LBB120:
	.loc 2 107 47 view .LVU115
	and	lr, lr, #15
.LVL24:
	.loc 2 107 47 view .LVU116
.LBE120:
.LBE131:
.LBB132:
.LBB127:
	.loc 2 95 74 view .LVU117
	add	r1, r1, ip, lsl #1
.LBE127:
.LBE132:
.LBB133:
.LBB121:
	.loc 2 107 47 view .LVU118
	rsbpl	lr, r0, #0
.LVL25:
	.loc 2 107 47 view .LVU119
.LBE121:
.LBE133:
.LBB134:
.LBI125:
	.loc 2 94 16 is_stmt 1 view .LVU120
.LBB128:
	.loc 2 95 2 view .LVU121
	.loc 2 95 74 is_stmt 0 view .LVU122
	add	r0, r5, lr
	lsl	ip, r1, #4
	add	ip, ip, r0, lsl #4
	add	ip, r10, ip
.LBE128:
.LBE134:
.LBB135:
.LBB122:
	.loc 2 107 67 view .LVU123
	add	r0, r5, r1
.LBE122:
.LBE135:
.LBB136:
.LBB129:
	.loc 2 95 74 view .LVU124
	add	ip, ip, r8
.LBE129:
.LBE136:
.LBB137:
.LBB123:
	.loc 2 107 67 view .LVU125
	add	r0, r0, lr
.LBE123:
.LBE137:
.LBB138:
.LBB130:
	.loc 2 95 74 view .LVU126
	add	ip, ip, #4096
	.loc 2 95 78 view .LVU127
	ldrb	r1, [ip, #28]	@ zero_extendqisi2
.LBE130:
.LBE138:
.LBB139:
.LBB124:
	.loc 2 107 67 view .LVU128
	add	r0, r10, r0, lsl #4
	add	r0, r0, r8
.LBE124:
.LBE139:
	.loc 1 29 10 discriminator 2 view .LVU129
	ldrb	r0, [r0, #28]	@ zero_extendqisi2
	and	r1, r1, #15
	str	r2, [sp, #12]
	bl	Block_Opaque
.LVL26:
	.loc 1 29 9 discriminator 3 view .LVU130
	cmp	r0, #0
	ldr	r2, [sp, #12]
	beq	.L3
	.loc 1 30 7 is_stmt 1 view .LVU131
.LVL27:
.LBB140:
.LBI63:
	.loc 2 110 13 view .LVU132
.LBB80:
	.loc 2 111 2 view .LVU133
	.loc 2 112 2 view .LVU134
	.loc 2 112 47 is_stmt 0 view .LVU135
	add	r9, r9, r4
	add	r4, r4, r9, lsl #1
.LBB78:
.LBB72:
	.loc 2 101 8 view .LVU136
	lsl	r0, r4, #4
.LBE72:
.LBE78:
	.loc 2 112 47 view .LVU137
	add	r1, r5, r4
	b	.L25
.LVL28:
.L8:
	.loc 2 112 47 view .LVU138
.LBE80:
.LBE140:
	.loc 1 13 6 is_stmt 1 view .LVU139
.LBB141:
.LBI141:
	.loc 2 106 14 view .LVU140
.LBB142:
	.loc 2 107 2 view .LVU141
	.loc 2 107 27 is_stmt 0 view .LVU142
	adds	lr, r0, #1
.LVL29:
	.loc 2 107 27 view .LVU143
	addmi	r1, r0, #16
	movpl	r1, lr
	.loc 2 107 47 view .LVU144
	rsbs	r0, lr, #0
.LVL30:
	.loc 2 107 27 view .LVU145
	asr	r1, r1, #4
	.loc 2 107 47 view .LVU146
	and	r0, r0, #15
.LBE142:
.LBE141:
.LBB148:
.LBB149:
	.loc 2 95 74 view .LVU147
	add	ip, r1, r1, lsl #8
.LVL31:
	.loc 2 95 74 view .LVU148
.LBE149:
.LBE148:
.LBB154:
.LBB143:
	.loc 2 107 47 view .LVU149
	and	lr, lr, #15
.LVL32:
	.loc 2 107 47 view .LVU150
.LBE143:
.LBE154:
.LBB155:
.LBB150:
	.loc 2 95 74 view .LVU151
	add	r1, r1, ip, lsl #1
.LBE150:
.LBE155:
.LBB156:
.LBB144:
	.loc 2 107 47 view .LVU152
	rsbpl	lr, r0, #0
.LVL33:
	.loc 2 107 47 view .LVU153
.LBE144:
.LBE156:
.LBB157:
.LBI148:
	.loc 2 94 16 is_stmt 1 view .LVU154
.LBB151:
	.loc 2 95 2 view .LVU155
	.loc 2 95 74 is_stmt 0 view .LVU156
	add	r0, r5, lr
	lsl	ip, r1, #4
	add	ip, ip, r0, lsl #4
	add	ip, r10, ip
.LBE151:
.LBE157:
.LBB158:
.LBB145:
	.loc 2 107 67 view .LVU157
	add	r0, r5, r1
.LBE145:
.LBE158:
.LBB159:
.LBB152:
	.loc 2 95 74 view .LVU158
	add	ip, ip, r8
.LBE152:
.LBE159:
.LBB160:
.LBB146:
	.loc 2 107 67 view .LVU159
	add	r0, r0, lr
.LBE146:
.LBE160:
.LBB161:
.LBB153:
	.loc 2 95 74 view .LVU160
	add	ip, ip, #4096
	.loc 2 95 78 view .LVU161
	ldrb	r1, [ip, #28]	@ zero_extendqisi2
.LBE153:
.LBE161:
.LBB162:
.LBB147:
	.loc 2 107 67 view .LVU162
	add	r0, r10, r0, lsl #4
	add	r0, r0, r8
.LBE147:
.LBE162:
	.loc 1 13 11 discriminator 2 view .LVU163
	ldrb	r0, [r0, #28]	@ zero_extendqisi2
	and	r1, r1, #15
	str	r2, [sp, #12]
	bl	Block_Opaque
.LVL34:
	.loc 1 13 9 discriminator 3 view .LVU164
	cmp	r0, #0
	ldr	r2, [sp, #12]
	bne	.L3
	.loc 1 15 7 is_stmt 1 view .LVU165
.LVL35:
.LBB163:
.LBI163:
	.loc 2 110 13 view .LVU166
.LBB164:
	.loc 2 111 2 view .LVU167
	.loc 2 112 2 view .LVU168
	.loc 2 112 47 is_stmt 0 view .LVU169
	add	r9, r9, r4
	add	r9, r4, r9, lsl #1
.LBB165:
.LBB166:
	.loc 2 101 8 view .LVU170
	lsl	r0, r9, #4
.LBE166:
.LBE165:
	.loc 2 112 47 view .LVU171
	add	r1, r5, r9
.LBB171:
.LBB167:
	.loc 2 101 8 view .LVU172
	add	ip, r5, r7
.LBE167:
.LBE171:
	.loc 2 112 47 view .LVU173
	add	r1, r1, r7
.LBB172:
.LBB168:
	.loc 2 101 8 view .LVU174
	add	ip, r0, ip, lsl #4
.LBE168:
.LBE172:
	.loc 2 112 47 view .LVU175
	add	r1, r10, r1, lsl #4
.LBB173:
.LBB169:
	.loc 2 101 8 view .LVU176
	add	ip, r10, ip
.LBE169:
.LBE173:
	.loc 2 112 47 view .LVU177
	mov	r3, #3
	add	r1, r1, r8
.LBB174:
.LBB170:
	.loc 2 101 8 view .LVU178
	add	ip, ip, r8
	b	.L24
.LBE170:
.LBE174:
.LBE164:
.LBE163:
.LBE177:
.LBE178:
.LBE180:
	.cfi_endproc
.LFE130:
	.size	BlockEvent_RandomTick, .-BlockEvent_RandomTick
	.text
.Letext0:
	.file 3 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "C:/Users/Elias/CLionProjects/3DSCraft/include/blocks/Block.h"
	.file 6 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Xorshift.h"
	.file 7 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 8 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 9 "C:/Users/Elias/CLionProjects/3DSCraft/include/rendering/VBOCache.h"
	.file 10 "C:/devkitPro/libctru/include/3ds/synchronization.h"
	.file 11 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/WorkQueue.h"
	.file 12 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/World.h"
	.file 13 "C:/devkitPro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd36
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1d
	.4byte	.LASF148
	.4byte	.LASF149
	.4byte	.LLRL61
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x47
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x61
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x74
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x87
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x26
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x3b
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x55
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x95
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x8
	.byte	0x11
	.4byte	0xa8
	.uleb128 0x13
	.4byte	0x47
	.byte	0x5
	.byte	0xa
	.byte	0x6
	.4byte	0x1ed
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
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF60
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x6
	.byte	0x5
	.byte	0x12
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x7
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF63
	.uleb128 0x1f
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x8
	.byte	0x7
	.byte	0x11
	.4byte	0xc0
	.uleb128 0xe
	.byte	0x8
	.byte	0x9
	.byte	0x8
	.byte	0x9
	.4byte	0x245
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x9
	.byte	0x9
	.byte	0x9
	.4byte	0x200
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x9
	.byte	0xa
	.byte	0x8
	.4byte	0x213
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x9
	.byte	0xb
	.byte	0x3
	.4byte	0x221
	.uleb128 0x20
	.2byte	0x2030
	.byte	0x2
	.byte	0x10
	.byte	0x9
	.4byte	0x303
	.uleb128 0x15
	.ascii	"y\000"
	.byte	0x11
	.byte	0x6
	.4byte	0xa1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x2
	.byte	0x12
	.byte	0x8
	.4byte	0x303
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x13
	.byte	0xa
	.4byte	0x31f
	.2byte	0x1004
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x15
	.byte	0xb
	.4byte	0xcc
	.2byte	0x2004
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x17
	.byte	0xb
	.4byte	0xb4
	.2byte	0x2008
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x19
	.byte	0x6
	.4byte	0x33b
	.2byte	0x200a
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x1a
	.byte	0xb
	.4byte	0xcc
	.2byte	0x200c
	.uleb128 0x21
	.ascii	"vbo\000"
	.byte	0x2
	.byte	0x1c
	.byte	0xc
	.4byte	0x245
	.2byte	0x2010
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x1c
	.byte	0x11
	.4byte	0x245
	.2byte	0x2018
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x1d
	.byte	0x9
	.4byte	0x200
	.2byte	0x2020
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x1d
	.byte	0x13
	.4byte	0x200
	.2byte	0x2024
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x1e
	.byte	0xb
	.4byte	0xcc
	.2byte	0x2028
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x1f
	.byte	0x6
	.4byte	0x33b
	.2byte	0x202c
	.byte	0
	.uleb128 0xf
	.4byte	0xe4
	.4byte	0x31f
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0xa8
	.4byte	0x33b
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF79
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x2
	.byte	0x20
	.byte	0x3
	.4byte	0x251
	.uleb128 0x13
	.4byte	0x47
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.4byte	0x36d
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x2
	.byte	0x26
	.byte	0x3
	.4byte	0x34e
	.uleb128 0x17
	.4byte	0x102ac
	.byte	0x2
	.byte	0x28
	.4byte	0x43a
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x2
	.byte	0x2a
	.byte	0xb
	.4byte	0xcc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x2
	.byte	0x2b
	.byte	0xb
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x2
	.byte	0x2d
	.byte	0xb
	.4byte	0xcc
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x2
	.byte	0x2f
	.byte	0x13
	.4byte	0x36d
	.byte	0xc
	.uleb128 0x15
	.ascii	"x\000"
	.byte	0x31
	.byte	0x6
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x15
	.ascii	"z\000"
	.byte	0x31
	.byte	0x9
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x2
	.byte	0x32
	.byte	0xa
	.4byte	0x43a
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x2
	.byte	0x34
	.byte	0xa
	.4byte	0x44a
	.4byte	0x10198
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x2
	.byte	0x35
	.byte	0xb
	.4byte	0xcc
	.4byte	0x10298
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x2
	.byte	0x37
	.byte	0x9
	.4byte	0x200
	.4byte	0x1029c
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x2
	.byte	0x39
	.byte	0xb
	.4byte	0xcc
	.4byte	0x102a0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x2
	.byte	0x3a
	.byte	0x6
	.4byte	0x33b
	.4byte	0x102a4
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x2
	.byte	0x3c
	.byte	0x6
	.4byte	0xa1
	.4byte	0x102a8
	.byte	0
	.uleb128 0xf
	.4byte	0x342
	.4byte	0x44a
	.uleb128 0x7
	.4byte	0x2d
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	0xa8
	.4byte	0x460
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xf
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF94
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.4byte	0x379
	.uleb128 0xc
	.4byte	0xa1
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF95
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF96
	.uleb128 0x22
	.ascii	"s32\000"
	.byte	0xd
	.byte	0x1c
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0xa
	.byte	0xa
	.byte	0x11
	.4byte	0x215
	.uleb128 0xe
	.byte	0x8
	.byte	0xa
	.byte	0x13
	.byte	0x9
	.4byte	0x4bb
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0xa
	.byte	0x15
	.byte	0x6
	.4byte	0x47f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xa
	.byte	0x16
	.byte	0xc
	.4byte	0x48b
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0xa
	.byte	0x17
	.byte	0x3
	.4byte	0x497
	.uleb128 0x13
	.4byte	0x47
	.byte	0xb
	.byte	0xd
	.byte	0xe
	.4byte	0x4f8
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0xb
	.byte	0x14
	.byte	0x3
	.4byte	0x4c7
	.uleb128 0xe
	.byte	0xc
	.byte	0xb
	.byte	0x16
	.byte	0x9
	.4byte	0x535
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xb
	.byte	0x17
	.byte	0x11
	.4byte	0x4f8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.4byte	0x535
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xb
	.byte	0x19
	.byte	0xb
	.4byte	0xcc
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	0x460
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0xb
	.byte	0x1a
	.byte	0x3
	.4byte	0x504
	.uleb128 0xe
	.byte	0xc
	.byte	0xb
	.byte	0x1d
	.byte	0x2
	.4byte	0x577
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xb
	.byte	0x1d
	.byte	0x17
	.4byte	0x577
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xb
	.byte	0x1d
	.byte	0x21
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xb
	.byte	0x1d
	.byte	0x29
	.4byte	0xa1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	0x53a
	.uleb128 0xe
	.byte	0x18
	.byte	0xb
	.byte	0x1c
	.byte	0x9
	.4byte	0x5ad
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xb
	.byte	0x1d
	.byte	0x35
	.4byte	0x546
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xb
	.byte	0x1f
	.byte	0xd
	.4byte	0x4bb
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xb
	.byte	0x20
	.byte	0xc
	.4byte	0x48b
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0xb
	.byte	0x21
	.byte	0x3
	.4byte	0x57c
	.uleb128 0x13
	.4byte	0x47
	.byte	0xc
	.byte	0x11
	.byte	0xe
	.4byte	0x5d8
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0xc
	.byte	0x11
	.byte	0x49
	.4byte	0x5b9
	.uleb128 0x23
	.byte	0
	.byte	0xc
	.byte	0x18
	.byte	0x3
	.uleb128 0x24
	.byte	0
	.byte	0xc
	.byte	0x17
	.byte	0x2
	.4byte	0x5ff
	.uleb128 0x25
	.4byte	.LASF150
	.byte	0xc
	.byte	0x1a
	.byte	0x5
	.4byte	0x5e4
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0xc
	.byte	0x13
	.byte	0x9
	.4byte	0x630
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xc
	.byte	0x14
	.byte	0xb
	.4byte	0xd8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xc
	.byte	0x15
	.byte	0xf
	.4byte	0x5d8
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xc
	.byte	0x1b
	.byte	0x4
	.4byte	0x5e9
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0xc
	.byte	0x1c
	.byte	0x3
	.4byte	0x5ff
	.uleb128 0xe
	.byte	0xc
	.byte	0xc
	.byte	0x2a
	.byte	0x2
	.4byte	0x66d
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xc
	.byte	0x2a
	.byte	0x13
	.4byte	0x66d
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xc
	.byte	0x2a
	.byte	0x1d
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xc
	.byte	0x2a
	.byte	0x25
	.4byte	0xa1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	0x535
	.uleb128 0x17
	.4byte	0xb5e278
	.byte	0xc
	.byte	0x1f
	.4byte	0x71c
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xc
	.byte	0x20
	.byte	0x6
	.4byte	0xa1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xc
	.byte	0x22
	.byte	0x7
	.4byte	0x71c
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xc
	.byte	0x24
	.byte	0x14
	.4byte	0x630
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xc
	.byte	0x26
	.byte	0x6
	.4byte	0xa1
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xc
	.byte	0x26
	.byte	0x19
	.4byte	0xa1
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xc
	.byte	0x28
	.byte	0x8
	.4byte	0x72c
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0xc
	.byte	0x29
	.byte	0x9
	.4byte	0x73c
	.4byte	0xb5e118
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0xc
	.byte	0x2a
	.byte	0x31
	.4byte	0x63c
	.4byte	0xb5e25c
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0xc
	.byte	0x2c
	.byte	0xd
	.4byte	0x752
	.4byte	0xb5e268
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0xc
	.byte	0x2e
	.byte	0xd
	.4byte	0x1f4
	.4byte	0xb5e26c
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0xc
	.byte	0x30
	.byte	0x6
	.4byte	0xa1
	.4byte	0xb5e270
	.byte	0
	.uleb128 0xf
	.4byte	0x1ed
	.4byte	0x72c
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.4byte	0x460
	.4byte	0x73c
	.uleb128 0x7
	.4byte	0x2d
	.byte	0xb3
	.byte	0
	.uleb128 0xf
	.4byte	0x535
	.4byte	0x752
	.uleb128 0x7
	.4byte	0x2d
	.byte	0x8
	.uleb128 0x7
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	0x5ad
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0xc
	.byte	0x31
	.byte	0x3
	.4byte	0x672
	.uleb128 0x26
	.4byte	.LASF140
	.byte	0x5
	.byte	0x3d
	.byte	0x5
	.4byte	0x33b
	.4byte	0x77e
	.uleb128 0x18
	.4byte	0xe4
	.uleb128 0x18
	.4byte	0xa8
	.byte	0
	.uleb128 0x27
	.4byte	.LASF151
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc22
	.uleb128 0x19
	.4byte	.LASF137
	.byte	0x23
	.4byte	0xc22
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0x31
	.4byte	0x535
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1a
	.ascii	"x\000"
	.byte	0x3c
	.4byte	0x46c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1a
	.ascii	"y\000"
	.byte	0x45
	.4byte	0x46c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x28
	.ascii	"z\000"
	.byte	0x1
	.byte	0x3
	.byte	0x4e
	.4byte	0x46c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.ascii	"k\000"
	.byte	0x4
	.byte	0x6
	.4byte	0xa1
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x11
	.4byte	.LLRL5
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x5
	.byte	0xb
	.4byte	0xa1
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x11
	.4byte	.LLRL7
	.uleb128 0x10
	.ascii	"j\000"
	.byte	0x6
	.byte	0xc
	.4byte	0xa1
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x11
	.4byte	.LLRL9
	.uleb128 0x10
	.ascii	"px\000"
	.byte	0x7
	.byte	0x8
	.4byte	0xa1
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x10
	.ascii	"py\000"
	.byte	0x8
	.byte	0x8
	.4byte	0xa1
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x10
	.ascii	"pz\000"
	.byte	0x9
	.byte	0x8
	.4byte	0xa1
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x1
	.byte	0xa
	.byte	0xa
	.4byte	0xe4
	.uleb128 0xd
	.4byte	0xc27
	.4byte	.LBI63
	.byte	.LVU132
	.4byte	.LLRL13
	.byte	0x1e
	.byte	0x7
	.4byte	0x905
	.uleb128 0x2
	.4byte	0xc57
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2
	.4byte	0xc4e
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x5
	.4byte	0xc45
	.uleb128 0x5
	.4byte	0xc3c
	.uleb128 0x2
	.4byte	0xc31
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x11
	.4byte	.LLRL13
	.uleb128 0xb
	.4byte	0xc62
	.uleb128 0x29
	.4byte	0xcac
	.4byte	.LBI65
	.byte	.LVU88
	.4byte	.LLRL17
	.byte	0x2
	.byte	0x71
	.byte	0x2
	.uleb128 0x2
	.4byte	0xcdc
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x5
	.4byte	0xcd3
	.uleb128 0x5
	.4byte	0xcca
	.uleb128 0x5
	.4byte	0xcc1
	.uleb128 0x2
	.4byte	0xcb6
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x11
	.4byte	.LLRL17
	.uleb128 0xb
	.4byte	0xce7
	.uleb128 0xb
	.4byte	0xcf3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xc74
	.4byte	.LBI81
	.byte	.LVU26
	.4byte	.LLRL20
	.byte	0xa
	.byte	0x12
	.4byte	0x94e
	.uleb128 0x2
	.4byte	0xca2
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x2
	.4byte	0xc99
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x2
	.4byte	0xc90
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x2
	.4byte	0xc85
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.uleb128 0xd
	.4byte	0xc74
	.4byte	.LBI91
	.byte	.LVU37
	.4byte	.LLRL25
	.byte	0x18
	.byte	0xa
	.4byte	0x997
	.uleb128 0x2
	.4byte	0xca2
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x2
	.4byte	0xc99
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x2
	.4byte	0xc90
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x2
	.4byte	0xc85
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.uleb128 0xd
	.4byte	0xd05
	.4byte	.LBI98
	.byte	.LVU51
	.4byte	.LLRL30
	.byte	0x18
	.byte	0xa
	.4byte	0x9e0
	.uleb128 0x2
	.4byte	0xd2f
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x2
	.4byte	0xd26
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x2
	.4byte	0xd1d
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x2
	.4byte	0xd12
	.4byte	.LLST34
	.4byte	.LVUS34
	.byte	0
	.uleb128 0x1b
	.4byte	0xc27
	.4byte	.LBI113
	.byte	.LVU71
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.byte	0x19
	.4byte	0xa62
	.uleb128 0x2
	.4byte	0xc57
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x2
	.4byte	0xc4e
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x5
	.4byte	0xc45
	.uleb128 0x5
	.4byte	0xc3c
	.uleb128 0x2
	.4byte	0xc31
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0xb
	.4byte	0xc62
	.uleb128 0x2a
	.4byte	0xcac
	.4byte	.LBB115
	.4byte	.LBE115-.LBB115
	.byte	0x2
	.byte	0x71
	.byte	0x2
	.uleb128 0x5
	.4byte	0xcdc
	.uleb128 0x5
	.4byte	0xcd3
	.uleb128 0x5
	.4byte	0xcca
	.uleb128 0x5
	.4byte	0xcc1
	.uleb128 0x5
	.4byte	0xcb6
	.uleb128 0xb
	.4byte	0xce7
	.uleb128 0xb
	.4byte	0xcf3
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xc74
	.4byte	.LBI118
	.byte	.LVU106
	.4byte	.LLRL38
	.byte	0x1d
	.byte	0xa
	.4byte	0xaab
	.uleb128 0x2
	.4byte	0xca2
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x2
	.4byte	0xc99
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x2
	.4byte	0xc90
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x2
	.4byte	0xc85
	.4byte	.LLST42
	.4byte	.LVUS42
	.byte	0
	.uleb128 0xd
	.4byte	0xd05
	.4byte	.LBI125
	.byte	.LVU120
	.4byte	.LLRL43
	.byte	0x1d
	.byte	0xa
	.4byte	0xaf4
	.uleb128 0x2
	.4byte	0xd2f
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x2
	.4byte	0xd26
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x2
	.4byte	0xd1d
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x2
	.4byte	0xd12
	.4byte	.LLST47
	.4byte	.LVUS47
	.byte	0
	.uleb128 0xd
	.4byte	0xc74
	.4byte	.LBI141
	.byte	.LVU140
	.4byte	.LLRL48
	.byte	0xd
	.byte	0xb
	.4byte	0xb3d
	.uleb128 0x2
	.4byte	0xca2
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x2
	.4byte	0xc99
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x2
	.4byte	0xc90
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x2
	.4byte	0xc85
	.4byte	.LLST52
	.4byte	.LVUS52
	.byte	0
	.uleb128 0xd
	.4byte	0xd05
	.4byte	.LBI148
	.byte	.LVU154
	.4byte	.LLRL53
	.byte	0xd
	.byte	0xb
	.4byte	0xb86
	.uleb128 0x2
	.4byte	0xd2f
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x2
	.4byte	0xd26
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x2
	.4byte	0xd1d
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x2
	.4byte	0xd12
	.4byte	.LLST57
	.4byte	.LVUS57
	.byte	0
	.uleb128 0x1b
	.4byte	0xc27
	.4byte	.LBI163
	.byte	.LVU166
	.4byte	.LBB163
	.4byte	.LBE163-.LBB163
	.byte	0xf
	.4byte	0xc03
	.uleb128 0x2b
	.4byte	0xc57
	.byte	0x3
	.uleb128 0x2
	.4byte	0xc4e
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x5
	.4byte	0xc45
	.uleb128 0x5
	.4byte	0xc3c
	.uleb128 0x2
	.4byte	0xc31
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0xb
	.4byte	0xc62
	.uleb128 0x2c
	.4byte	0xcac
	.4byte	.LLRL60
	.byte	0x2
	.byte	0x71
	.byte	0x2
	.uleb128 0x5
	.4byte	0xcdc
	.uleb128 0x5
	.4byte	0xcd3
	.uleb128 0x5
	.4byte	0xcca
	.uleb128 0x5
	.4byte	0xcc1
	.uleb128 0x5
	.4byte	0xcb6
	.uleb128 0x11
	.4byte	.LLRL60
	.uleb128 0xb
	.4byte	0xce7
	.uleb128 0xb
	.4byte	0xcf3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x763
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0x763
	.uleb128 0x16
	.4byte	.LVL34
	.4byte	0x763
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x757
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x6e
	.4byte	0xc6f
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x6e
	.byte	0x23
	.4byte	0x535
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x6e
	.byte	0x2e
	.4byte	0xa1
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x6e
	.byte	0x35
	.4byte	0xa1
	.uleb128 0x8
	.ascii	"z\000"
	.byte	0x6e
	.byte	0x3c
	.4byte	0xa1
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0x6e
	.byte	0x45
	.4byte	0xe4
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0x2
	.byte	0x6f
	.byte	0xb
	.4byte	0xc6f
	.byte	0
	.uleb128 0xc
	.4byte	0x342
	.uleb128 0x2d
	.4byte	.LASF141
	.byte	0x2
	.byte	0x6a
	.byte	0xe
	.4byte	0xe4
	.byte	0x3
	.4byte	0xcac
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x6a
	.byte	0x24
	.4byte	0x535
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x6a
	.byte	0x2f
	.4byte	0xa1
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x6a
	.byte	0x36
	.4byte	0xa1
	.uleb128 0x8
	.ascii	"z\000"
	.byte	0x6a
	.byte	0x3d
	.4byte	0xa1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x61
	.4byte	0xd00
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x61
	.byte	0x26
	.4byte	0x535
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x61
	.byte	0x31
	.4byte	0xa1
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x61
	.byte	0x38
	.4byte	0xa1
	.uleb128 0x8
	.ascii	"z\000"
	.byte	0x61
	.byte	0x3f
	.4byte	0xa1
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0x61
	.byte	0x4a
	.4byte	0xa8
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0x2
	.byte	0x63
	.byte	0xb
	.4byte	0xc6f
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x2
	.byte	0x64
	.byte	0xb
	.4byte	0xd00
	.byte	0
	.uleb128 0xc
	.4byte	0xa8
	.uleb128 0x2e
	.4byte	.LASF146
	.byte	0x2
	.byte	0x5e
	.byte	0x10
	.4byte	0xa8
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x5e
	.byte	0x29
	.4byte	0x535
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x5e
	.byte	0x34
	.4byte	0xa1
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x5e
	.byte	0x3b
	.4byte	0xa1
	.uleb128 0x8
	.ascii	"z\000"
	.byte	0x5e
	.byte	0x42
	.4byte	0xa1
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0x9
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
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
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE130-.LVL0
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
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE130-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
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
	.uleb128 .LFE130-.LVL0
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
.LVUS3:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE130-.LVL0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
.LVUS4:
	.uleb128 .LVU2
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU68
	.uleb128 .LVU70
.LLST4:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL15-.LVL0
	.uleb128 .LVL16-.LVL0
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS6:
	.uleb128 .LVU4
	.uleb128 .LVU10
.LLST6:
	.byte	0x8
	.4byte	.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU10
	.uleb128 .LVU12
.LLST8:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU16
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU61
	.uleb128 .LVU105
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU130
	.uleb128 .LVU138
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU164
.LLST10:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL10-.LVL4
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL10-.LVL4
	.uleb128 .LVL13-1-.LVL4
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -4
	.byte	0x4
	.uleb128 .LVL20-.LVL4
	.uleb128 .LVL23-.LVL4
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL23-.LVL4
	.uleb128 .LVL26-1-.LVL4
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -4
	.byte	0x4
	.uleb128 .LVL28-.LVL4
	.uleb128 .LVL31-.LVL4
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL31-.LVL4
	.uleb128 .LVL34-1-.LVL4
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -4
	.byte	0
.LVUS11:
	.uleb128 .LVU18
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU61
	.uleb128 .LVU105
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU130
	.uleb128 .LVU138
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU164
.LLST11:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL9-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-.LVL5
	.uleb128 .LVL11-.LVL5
	.uleb128 0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL5
	.uleb128 .LVL13-1-.LVL5
	.uleb128 0x7
	.byte	0x72
	.sleb128 -4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL5
	.uleb128 .LVL22-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL22-.LVL5
	.uleb128 .LVL24-.LVL5
	.uleb128 0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL5
	.uleb128 .LVL26-1-.LVL5
	.uleb128 0x7
	.byte	0x72
	.sleb128 -4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL5
	.uleb128 .LVL30-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL30-.LVL5
	.uleb128 .LVL32-.LVL5
	.uleb128 0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.LVL5
	.uleb128 .LVL34-1-.LVL5
	.uleb128 0x7
	.byte	0x72
	.sleb128 -4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU25
	.uleb128 0
.LLST12:
	.byte	0x8
	.4byte	.LVL6
	.uleb128 .LFE130-.LVL6
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS14:
	.uleb128 .LVU132
	.uleb128 .LVU138
.LLST14:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU132
	.uleb128 .LVU138
.LLST15:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS16:
	.uleb128 .LVU132
	.uleb128 .LVU138
.LLST16:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS18:
	.uleb128 .LVU88
	.uleb128 .LVU100
.LLST18:
	.byte	0x8
	.4byte	.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU88
	.uleb128 .LVU100
.LLST19:
	.byte	0x8
	.4byte	.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS21:
	.uleb128 .LVU26
	.uleb128 .LVU28
.LLST21:
	.byte	0x8
	.4byte	.LVL6
	.uleb128 .LVL6-.LVL6
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS22:
	.uleb128 .LVU26
	.uleb128 .LVU28
.LLST22:
	.byte	0x8
	.4byte	.LVL6
	.uleb128 .LVL6-.LVL6
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS23:
	.uleb128 .LVU26
	.uleb128 .LVU28
.LLST23:
	.byte	0x8
	.4byte	.LVL6
	.uleb128 .LVL6-.LVL6
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS24:
	.uleb128 .LVU26
	.uleb128 .LVU28
.LLST24:
	.byte	0x8
	.4byte	.LVL6
	.uleb128 .LVL6-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS26:
	.uleb128 .LVU37
	.uleb128 .LVU50
.LLST26:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL12-.LVL7
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS27:
	.uleb128 .LVU37
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU50
.LLST27:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL11-.LVL7
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL11-.LVL7
	.uleb128 .LVL12-.LVL7
	.uleb128 0x9
	.byte	0x72
	.sleb128 -4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 .LVU37
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU50
.LLST28:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL10-.LVL7
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL10-.LVL7
	.uleb128 .LVL12-.LVL7
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -4
	.byte	0
.LVUS29:
	.uleb128 .LVU37
	.uleb128 .LVU50
.LLST29:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL12-.LVL7
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS31:
	.uleb128 .LVU50
	.uleb128 .LVU53
.LLST31:
	.byte	0x8
	.4byte	.LVL12
	.uleb128 .LVL12-.LVL12
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS32:
	.uleb128 .LVU50
	.uleb128 .LVU53
.LLST32:
	.byte	0x8
	.4byte	.LVL12
	.uleb128 .LVL12-.LVL12
	.uleb128 0x9
	.byte	0x72
	.sleb128 -4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 .LVU50
	.uleb128 .LVU53
.LLST33:
	.byte	0x8
	.4byte	.LVL12
	.uleb128 .LVL12-.LVL12
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -4
	.byte	0
.LVUS34:
	.uleb128 .LVU50
	.uleb128 .LVU53
.LLST34:
	.byte	0x8
	.4byte	.LVL12
	.uleb128 .LVL12-.LVL12
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS35:
	.uleb128 .LVU71
	.uleb128 .LVU77
.LLST35:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LVL17-.LVL16
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU71
	.uleb128 .LVU77
.LLST36:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LVL17-.LVL16
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS37:
	.uleb128 .LVU71
	.uleb128 .LVU77
.LLST37:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LVL17-.LVL16
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS39:
	.uleb128 .LVU106
	.uleb128 .LVU119
.LLST39:
	.byte	0x8
	.4byte	.LVL20
	.uleb128 .LVL25-.LVL20
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS40:
	.uleb128 .LVU106
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU119
.LLST40:
	.byte	0x6
	.4byte	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL21-.LVL20
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL20
	.uleb128 .LVL24-.LVL20
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL24-.LVL20
	.uleb128 .LVL25-.LVL20
	.uleb128 0x9
	.byte	0x72
	.sleb128 -4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU106
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU119
.LLST41:
	.byte	0x6
	.4byte	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL23-.LVL20
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL23-.LVL20
	.uleb128 .LVL25-.LVL20
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -4
	.byte	0
.LVUS42:
	.uleb128 .LVU106
	.uleb128 .LVU119
.LLST42:
	.byte	0x8
	.4byte	.LVL20
	.uleb128 .LVL25-.LVL20
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS44:
	.uleb128 .LVU119
	.uleb128 .LVU122
.LLST44:
	.byte	0x8
	.4byte	.LVL25
	.uleb128 .LVL25-.LVL25
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS45:
	.uleb128 .LVU119
	.uleb128 .LVU122
.LLST45:
	.byte	0x8
	.4byte	.LVL25
	.uleb128 .LVL25-.LVL25
	.uleb128 0x9
	.byte	0x72
	.sleb128 -4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS46:
	.uleb128 .LVU119
	.uleb128 .LVU122
.LLST46:
	.byte	0x8
	.4byte	.LVL25
	.uleb128 .LVL25-.LVL25
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -4
	.byte	0
.LVUS47:
	.uleb128 .LVU119
	.uleb128 .LVU122
.LLST47:
	.byte	0x8
	.4byte	.LVL25
	.uleb128 .LVL25-.LVL25
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS49:
	.uleb128 .LVU140
	.uleb128 .LVU153
.LLST49:
	.byte	0x8
	.4byte	.LVL28
	.uleb128 .LVL33-.LVL28
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS50:
	.uleb128 .LVU140
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU153
.LLST50:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL29-.LVL28
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL28
	.uleb128 .LVL32-.LVL28
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL32-.LVL28
	.uleb128 .LVL33-.LVL28
	.uleb128 0x9
	.byte	0x72
	.sleb128 -4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 .LVU140
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU153
.LLST51:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL31-.LVL28
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL31-.LVL28
	.uleb128 .LVL33-.LVL28
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -4
	.byte	0
.LVUS52:
	.uleb128 .LVU140
	.uleb128 .LVU153
.LLST52:
	.byte	0x8
	.4byte	.LVL28
	.uleb128 .LVL33-.LVL28
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS54:
	.uleb128 .LVU153
	.uleb128 .LVU156
.LLST54:
	.byte	0x8
	.4byte	.LVL33
	.uleb128 .LVL33-.LVL33
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS55:
	.uleb128 .LVU153
	.uleb128 .LVU156
.LLST55:
	.byte	0x8
	.4byte	.LVL33
	.uleb128 .LVL33-.LVL33
	.uleb128 0x9
	.byte	0x72
	.sleb128 -4
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS56:
	.uleb128 .LVU153
	.uleb128 .LVU156
.LLST56:
	.byte	0x8
	.4byte	.LVL33
	.uleb128 .LVL33-.LVL33
	.uleb128 0x2
	.byte	0x7b
	.sleb128 -4
	.byte	0
.LVUS57:
	.uleb128 .LVU153
	.uleb128 .LVU156
.LLST57:
	.byte	0x8
	.4byte	.LVL33
	.uleb128 .LVL33-.LVL33
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS58:
	.uleb128 .LVU166
	.uleb128 0
.LLST58:
	.byte	0x8
	.4byte	.LVL35
	.uleb128 .LFE130-.LVL35
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS59:
	.uleb128 .LVU166
	.uleb128 0
.LLST59:
	.byte	0x8
	.4byte	.LVL35
	.uleb128 .LFE130-.LVL35
	.uleb128 0x1
	.byte	0x5a
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
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
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
.LLRL5:
	.byte	0x5
	.4byte	.LBB60
	.byte	0x4
	.uleb128 .LBB60-.LBB60
	.uleb128 .LBE60-.LBB60
	.byte	0x4
	.uleb128 .LBB179-.LBB60
	.uleb128 .LBE179-.LBB60
	.byte	0x4
	.uleb128 .LBB180-.LBB60
	.uleb128 .LBE180-.LBB60
	.byte	0
.LLRL7:
	.byte	0x5
	.4byte	.LBB61
	.byte	0x4
	.uleb128 .LBB61-.LBB61
	.uleb128 .LBE61-.LBB61
	.byte	0x4
	.uleb128 .LBB178-.LBB61
	.uleb128 .LBE178-.LBB61
	.byte	0
.LLRL9:
	.byte	0x5
	.4byte	.LBB62
	.byte	0x4
	.uleb128 .LBB62-.LBB62
	.uleb128 .LBE62-.LBB62
	.byte	0x4
	.uleb128 .LBB175-.LBB62
	.uleb128 .LBE175-.LBB62
	.byte	0x4
	.uleb128 .LBB176-.LBB62
	.uleb128 .LBE176-.LBB62
	.byte	0x4
	.uleb128 .LBB177-.LBB62
	.uleb128 .LBE177-.LBB62
	.byte	0
.LLRL13:
	.byte	0x5
	.4byte	.LBB63
	.byte	0x4
	.uleb128 .LBB63-.LBB63
	.uleb128 .LBE63-.LBB63
	.byte	0x4
	.uleb128 .LBB117-.LBB63
	.uleb128 .LBE117-.LBB63
	.byte	0x4
	.uleb128 .LBB140-.LBB63
	.uleb128 .LBE140-.LBB63
	.byte	0
.LLRL17:
	.byte	0x5
	.4byte	.LBB65
	.byte	0x4
	.uleb128 .LBB65-.LBB65
	.uleb128 .LBE65-.LBB65
	.byte	0x4
	.uleb128 .LBB73-.LBB65
	.uleb128 .LBE73-.LBB65
	.byte	0x4
	.uleb128 .LBB74-.LBB65
	.uleb128 .LBE74-.LBB65
	.byte	0x4
	.uleb128 .LBB75-.LBB65
	.uleb128 .LBE75-.LBB65
	.byte	0x4
	.uleb128 .LBB76-.LBB65
	.uleb128 .LBE76-.LBB65
	.byte	0x4
	.uleb128 .LBB77-.LBB65
	.uleb128 .LBE77-.LBB65
	.byte	0x4
	.uleb128 .LBB78-.LBB65
	.uleb128 .LBE78-.LBB65
	.byte	0
.LLRL20:
	.byte	0x5
	.4byte	.LBB81
	.byte	0x4
	.uleb128 .LBB81-.LBB81
	.uleb128 .LBE81-.LBB81
	.byte	0x4
	.uleb128 .LBB87-.LBB81
	.uleb128 .LBE87-.LBB81
	.byte	0x4
	.uleb128 .LBB88-.LBB81
	.uleb128 .LBE88-.LBB81
	.byte	0x4
	.uleb128 .LBB89-.LBB81
	.uleb128 .LBE89-.LBB81
	.byte	0x4
	.uleb128 .LBB90-.LBB81
	.uleb128 .LBE90-.LBB81
	.byte	0
.LLRL25:
	.byte	0x5
	.4byte	.LBB91
	.byte	0x4
	.uleb128 .LBB91-.LBB91
	.uleb128 .LBE91-.LBB91
	.byte	0x4
	.uleb128 .LBB104-.LBB91
	.uleb128 .LBE104-.LBB91
	.byte	0x4
	.uleb128 .LBB106-.LBB91
	.uleb128 .LBE106-.LBB91
	.byte	0x4
	.uleb128 .LBB108-.LBB91
	.uleb128 .LBE108-.LBB91
	.byte	0x4
	.uleb128 .LBB110-.LBB91
	.uleb128 .LBE110-.LBB91
	.byte	0x4
	.uleb128 .LBB112-.LBB91
	.uleb128 .LBE112-.LBB91
	.byte	0
.LLRL30:
	.byte	0x5
	.4byte	.LBB98
	.byte	0x4
	.uleb128 .LBB98-.LBB98
	.uleb128 .LBE98-.LBB98
	.byte	0x4
	.uleb128 .LBB105-.LBB98
	.uleb128 .LBE105-.LBB98
	.byte	0x4
	.uleb128 .LBB107-.LBB98
	.uleb128 .LBE107-.LBB98
	.byte	0x4
	.uleb128 .LBB109-.LBB98
	.uleb128 .LBE109-.LBB98
	.byte	0x4
	.uleb128 .LBB111-.LBB98
	.uleb128 .LBE111-.LBB98
	.byte	0
.LLRL38:
	.byte	0x5
	.4byte	.LBB118
	.byte	0x4
	.uleb128 .LBB118-.LBB118
	.uleb128 .LBE118-.LBB118
	.byte	0x4
	.uleb128 .LBB131-.LBB118
	.uleb128 .LBE131-.LBB118
	.byte	0x4
	.uleb128 .LBB133-.LBB118
	.uleb128 .LBE133-.LBB118
	.byte	0x4
	.uleb128 .LBB135-.LBB118
	.uleb128 .LBE135-.LBB118
	.byte	0x4
	.uleb128 .LBB137-.LBB118
	.uleb128 .LBE137-.LBB118
	.byte	0x4
	.uleb128 .LBB139-.LBB118
	.uleb128 .LBE139-.LBB118
	.byte	0
.LLRL43:
	.byte	0x5
	.4byte	.LBB125
	.byte	0x4
	.uleb128 .LBB125-.LBB125
	.uleb128 .LBE125-.LBB125
	.byte	0x4
	.uleb128 .LBB132-.LBB125
	.uleb128 .LBE132-.LBB125
	.byte	0x4
	.uleb128 .LBB134-.LBB125
	.uleb128 .LBE134-.LBB125
	.byte	0x4
	.uleb128 .LBB136-.LBB125
	.uleb128 .LBE136-.LBB125
	.byte	0x4
	.uleb128 .LBB138-.LBB125
	.uleb128 .LBE138-.LBB125
	.byte	0
.LLRL48:
	.byte	0x5
	.4byte	.LBB141
	.byte	0x4
	.uleb128 .LBB141-.LBB141
	.uleb128 .LBE141-.LBB141
	.byte	0x4
	.uleb128 .LBB154-.LBB141
	.uleb128 .LBE154-.LBB141
	.byte	0x4
	.uleb128 .LBB156-.LBB141
	.uleb128 .LBE156-.LBB141
	.byte	0x4
	.uleb128 .LBB158-.LBB141
	.uleb128 .LBE158-.LBB141
	.byte	0x4
	.uleb128 .LBB160-.LBB141
	.uleb128 .LBE160-.LBB141
	.byte	0x4
	.uleb128 .LBB162-.LBB141
	.uleb128 .LBE162-.LBB141
	.byte	0
.LLRL53:
	.byte	0x5
	.4byte	.LBB148
	.byte	0x4
	.uleb128 .LBB148-.LBB148
	.uleb128 .LBE148-.LBB148
	.byte	0x4
	.uleb128 .LBB155-.LBB148
	.uleb128 .LBE155-.LBB148
	.byte	0x4
	.uleb128 .LBB157-.LBB148
	.uleb128 .LBE157-.LBB148
	.byte	0x4
	.uleb128 .LBB159-.LBB148
	.uleb128 .LBE159-.LBB148
	.byte	0x4
	.uleb128 .LBB161-.LBB148
	.uleb128 .LBE161-.LBB148
	.byte	0
.LLRL60:
	.byte	0x5
	.4byte	.LBB165
	.byte	0x4
	.uleb128 .LBB165-.LBB165
	.uleb128 .LBE165-.LBB165
	.byte	0x4
	.uleb128 .LBB171-.LBB165
	.uleb128 .LBE171-.LBB165
	.byte	0x4
	.uleb128 .LBB172-.LBB165
	.uleb128 .LBE172-.LBB165
	.byte	0x4
	.uleb128 .LBB173-.LBB165
	.uleb128 .LBE173-.LBB165
	.byte	0x4
	.uleb128 .LBB174-.LBB165
	.uleb128 .LBE174-.LBB165
	.byte	0
.LLRL61:
	.byte	0x7
	.4byte	.LFB130
	.uleb128 .LFE130-.LFB130
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF81:
	.ascii	"ChunkGen_Empty\000"
.LASF113:
	.ascii	"capacity\000"
.LASF124:
	.ascii	"GeneratorSettings\000"
.LASF47:
	.ascii	"Block_Lava\000"
.LASF39:
	.ascii	"Block_Snow\000"
.LASF62:
	.ascii	"size_t\000"
.LASF119:
	.ascii	"WorldGen_SuperFlat\000"
.LASF110:
	.ascii	"WorkerItem\000"
.LASF18:
	.ascii	"uint64_t\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF70:
	.ascii	"revision\000"
.LASF108:
	.ascii	"type\000"
.LASF135:
	.ascii	"weather\000"
.LASF89:
	.ascii	"clusters\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF145:
	.ascii	"addr\000"
.LASF107:
	.ascii	"WorkerItemType\000"
.LASF12:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF75:
	.ascii	"vertices\000"
.LASF120:
	.ascii	"WorldGenTypes_Count\000"
.LASF49:
	.ascii	"Block_Coal_Ore\000"
.LASF148:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/blocks"
	.ascii	"/BlockEvent.c\000"
.LASF42:
	.ascii	"Block_Sandstone\000"
.LASF72:
	.ascii	"empty\000"
.LASF98:
	.ascii	"state\000"
.LASF25:
	.ascii	"Block_Sand\000"
.LASF9:
	.ascii	"long int\000"
.LASF88:
	.ascii	"genProgress\000"
.LASF121:
	.ascii	"WorldGenType\000"
.LASF140:
	.ascii	"Block_Opaque\000"
.LASF46:
	.ascii	"Block_Water\000"
.LASF44:
	.ascii	"Block_Crafting_Table\000"
.LASF33:
	.ascii	"Block_Wool\000"
.LASF114:
	.ascii	"queue\000"
.LASF96:
	.ascii	"double\000"
.LASF45:
	.ascii	"Block_Grass_Path\000"
.LASF116:
	.ascii	"listInUse\000"
.LASF23:
	.ascii	"Block_Grass\000"
.LASF35:
	.ascii	"Block_Coarse\000"
.LASF134:
	.ascii	"randomTickGen\000"
.LASF41:
	.ascii	"Block_Netherrack\000"
.LASF83:
	.ascii	"ChunkGen_Finished\000"
.LASF61:
	.ascii	"Xorshift32\000"
.LASF43:
	.ascii	"Block_Smooth_Stone\000"
.LASF76:
	.ascii	"transparentVertices\000"
.LASF142:
	.ascii	"Chunk_SetBlock\000"
.LASF66:
	.ascii	"memory\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF77:
	.ascii	"vboRevision\000"
.LASF85:
	.ascii	"tasksRunning\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF30:
	.ascii	"Block_Stonebrick\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF24:
	.ascii	"Block_Cobblestone\000"
.LASF122:
	.ascii	"seed\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF48:
	.ascii	"Block_Iron_Ore\000"
.LASF126:
	.ascii	"name\000"
.LASF80:
	.ascii	"Cluster\000"
.LASF21:
	.ascii	"Block_Stone\000"
.LASF111:
	.ascii	"data\000"
.LASF65:
	.ascii	"size\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF125:
	.ascii	"HighestBlock\000"
.LASF106:
	.ascii	"WorkerItemTypes_Count\000"
.LASF56:
	.ascii	"Block_Iron_Block\000"
.LASF53:
	.ascii	"Block_Gold_Block\000"
.LASF64:
	.ascii	"_LOCK_T\000"
.LASF151:
	.ascii	"BlockEvent_RandomTick\000"
.LASF69:
	.ascii	"metadataLight\000"
.LASF34:
	.ascii	"Block_Bedrock\000"
.LASF139:
	.ascii	"cluster\000"
.LASF101:
	.ascii	"WorkerItemType_Load\000"
.LASF82:
	.ascii	"ChunkGen_Terrain\000"
.LASF51:
	.ascii	"Block_Gold_Ore\000"
.LASF68:
	.ascii	"blocks\000"
.LASF31:
	.ascii	"Block_Brick\000"
.LASF40:
	.ascii	"Block_Obsidian\000"
.LASF71:
	.ascii	"seeThrough\000"
.LASF52:
	.ascii	"Block_Emerald_Ore\000"
.LASF138:
	.ascii	"block\000"
.LASF54:
	.ascii	"Block_Diamond_Block\000"
.LASF150:
	.ascii	"superflat\000"
.LASF74:
	.ascii	"transparentVBO\000"
.LASF26:
	.ascii	"Block_Log\000"
.LASF57:
	.ascii	"Block_Emerald_Block\000"
.LASF84:
	.ascii	"ChunkGenProgress\000"
.LASF104:
	.ascii	"WorkerItemType_Decorate\000"
.LASF36:
	.ascii	"Block_Door_Top\000"
.LASF86:
	.ascii	"graphicalTasksRunning\000"
.LASF13:
	.ascii	"__uint64_t\000"
.LASF100:
	.ascii	"LightEvent\000"
.LASF95:
	.ascii	"float\000"
.LASF143:
	.ascii	"Chunk_SetMetadata\000"
.LASF97:
	.ascii	"LightLock\000"
.LASF133:
	.ascii	"workqueue\000"
.LASF93:
	.ascii	"references\000"
.LASF50:
	.ascii	"Block_Diamond_Ore\000"
.LASF38:
	.ascii	"Block_Snow_Grass\000"
.LASF37:
	.ascii	"Block_Door_Bottom\000"
.LASF105:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF123:
	.ascii	"settings\000"
.LASF79:
	.ascii	"_Bool\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF137:
	.ascii	"world\000"
.LASF4:
	.ascii	"short int\000"
.LASF130:
	.ascii	"chunkPool\000"
.LASF27:
	.ascii	"Block_Gravel\000"
.LASF115:
	.ascii	"itemAddedEvent\000"
.LASF136:
	.ascii	"World\000"
.LASF92:
	.ascii	"displayRevision\000"
.LASF117:
	.ascii	"WorkQueue\000"
.LASF144:
	.ascii	"metadata\000"
.LASF58:
	.ascii	"Block_Furnace\000"
.LASF59:
	.ascii	"Blocks_Count\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF91:
	.ascii	"heightmapRevision\000"
.LASF63:
	.ascii	"long double\000"
.LASF109:
	.ascii	"chunk\000"
.LASF87:
	.ascii	"uuid\000"
.LASF60:
	.ascii	"char\000"
.LASF90:
	.ascii	"heightmap\000"
.LASF67:
	.ascii	"VBO_Block\000"
.LASF132:
	.ascii	"freeChunks\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF20:
	.ascii	"Block_Air\000"
.LASF19:
	.ascii	"Block\000"
.LASF94:
	.ascii	"Chunk\000"
.LASF146:
	.ascii	"Chunk_GetMetadata\000"
.LASF128:
	.ascii	"cacheTranslationX\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF129:
	.ascii	"cacheTranslationZ\000"
.LASF103:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF149:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF78:
	.ascii	"forceVBOUpdate\000"
.LASF112:
	.ascii	"length\000"
.LASF55:
	.ascii	"Block_Coal_Block\000"
.LASF32:
	.ascii	"Block_Planks\000"
.LASF141:
	.ascii	"Chunk_GetBlock\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF147:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF127:
	.ascii	"genSettings\000"
.LASF118:
	.ascii	"WorldGen_Smea\000"
.LASF29:
	.ascii	"Block_Glass\000"
.LASF73:
	.ascii	"emptyRevision\000"
.LASF28:
	.ascii	"Block_Leaves\000"
.LASF22:
	.ascii	"Block_Dirt\000"
.LASF99:
	.ascii	"lock\000"
.LASF131:
	.ascii	"chunkCache\000"
.LASF102:
	.ascii	"WorkerItemType_Save\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
