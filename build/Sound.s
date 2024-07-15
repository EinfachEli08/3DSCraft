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
	.file	"Sound.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/misc/Sound.c"
	.section	.text.audioCallback,"ax",%progbits
	.align	2
	.global	audioCallback
	.syntax unified
	.arm
	.type	audioCallback, %function
audioCallback:
.LVL0:
.LFB111:
	.loc 1 162 38 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 163 2 view .LVU1
	.loc 1 164 2 view .LVU2
	.loc 1 164 6 is_stmt 0 view .LVU3
	ldr	r0, .L4
.LVL1:
	.loc 1 164 6 view .LVU4
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 164 5 view .LVU5
	cmp	r3, #0
	bxne	lr
.LBB8:
.LBI8:
	.loc 1 162 6 is_stmt 1 view .LVU6
.LVL2:
.LBB9:
	.loc 1 168 2 view .LVU7
	add	r0, r0, #4
	b	LightEvent_Signal
.LVL3:
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
.LBE9:
.LBE8:
	.cfi_endproc
.LFE111:
	.size	audioCallback, .-audioCallback
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"OP_FALSE: A request did not succeed.\000"
	.align	2
.LC1:
	.ascii	"OP_HOLE: There was a hole in the page sequence numb"
	.ascii	"ers.\000"
	.align	2
.LC2:
	.ascii	"OP_EREAD: An underlying read, seek or tell operatio"
	.ascii	"n failed.\000"
	.align	2
.LC3:
	.ascii	"OP_EFAULT: A NULL pointer was passed where none was"
	.ascii	" expected, or an internal library error was encount"
	.ascii	"ered.\000"
	.align	2
.LC4:
	.ascii	"OP_EIMPL: The stream used a feature which is not im"
	.ascii	"plemented.\000"
	.align	2
.LC5:
	.ascii	"OP_EINVAL: One or more parameters to a function wer"
	.ascii	"e invalid.\000"
	.align	2
.LC6:
	.ascii	"OP_ENOTFORMAT: This is not a valid Ogg Opus stream."
	.ascii	"\000"
	.align	2
.LC7:
	.ascii	"OP_EBADHEADER: A required header packet was not pro"
	.ascii	"perly formatted.\000"
	.align	2
.LC8:
	.ascii	"OP_EVERSION: The ID header contained an unrecognise"
	.ascii	"d version number.\000"
	.align	2
.LC9:
	.ascii	"OP_EBADPACKET: An audio packet failed to decode pro"
	.ascii	"perly.\000"
	.align	2
.LC10:
	.ascii	"OP_EBADLINK: We failed to find data we had seen bef"
	.ascii	"ore or the stream was sufficiently corrupt that see"
	.ascii	"king is impossible.\000"
	.align	2
.LC11:
	.ascii	"OP_ENOSEEK: An operation that requires seeking was "
	.ascii	"requested on an unseekable stream.\000"
	.align	2
.LC12:
	.ascii	"OP_EBADTIMESTAMP: The first or last granule positio"
	.ascii	"n of a link failed basic validity checks.\000"
	.align	2
.LC13:
	.ascii	"Unknown error.\000"
	.section	.text.opusStrError,"ax",%progbits
	.align	2
	.global	opusStrError
	.syntax unified
	.arm
	.type	opusStrError, %function
opusStrError:
.LVL4:
.LFB106:
	.loc 1 28 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 29 2 view .LVU9
	cmn	r0, #127
	.loc 1 28 1 is_stmt 0 view .LVU10
	mov	r3, r0
	.loc 1 29 2 view .LVU11
	bge	.L7
	cmn	r0, #139
	blt	.L21
	add	r3, r0, #139
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L21
.L10:
	.word	.L20
	.word	.L19
	.word	.L18
	.word	.L17
	.word	.L21
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L12
	.word	.L11
	.word	.L22
.L12:
	.loc 1 41 3 is_stmt 1 view .LVU12
	.loc 1 41 10 is_stmt 0 view .LVU13
	ldr	r0, .L25
.LVL5:
	.loc 1 41 10 view .LVU14
	bx	lr
.LVL6:
.L20:
	.loc 1 64 3 is_stmt 1 view .LVU15
	.loc 1 64 10 is_stmt 0 view .LVU16
	ldr	r0, .L25+4
.LVL7:
	.loc 1 64 10 view .LVU17
	bx	lr
.LVL8:
.L19:
	.loc 1 61 3 is_stmt 1 view .LVU18
	.loc 1 61 10 is_stmt 0 view .LVU19
	ldr	r0, .L25+8
.LVL9:
	.loc 1 61 10 view .LVU20
	bx	lr
.LVL10:
.L18:
	.loc 1 57 3 is_stmt 1 view .LVU21
	.loc 1 57 10 is_stmt 0 view .LVU22
	ldr	r0, .L25+12
.LVL11:
	.loc 1 57 10 view .LVU23
	bx	lr
.LVL12:
.L17:
	.loc 1 55 3 is_stmt 1 view .LVU24
	.loc 1 55 10 is_stmt 0 view .LVU25
	ldr	r0, .L25+16
.LVL13:
	.loc 1 55 10 view .LVU26
	bx	lr
.LVL14:
.L16:
	.loc 1 52 3 is_stmt 1 view .LVU27
	.loc 1 52 10 is_stmt 0 view .LVU28
	ldr	r0, .L25+20
.LVL15:
	.loc 1 52 10 view .LVU29
	bx	lr
.LVL16:
.L15:
	.loc 1 49 3 is_stmt 1 view .LVU30
	.loc 1 49 10 is_stmt 0 view .LVU31
	ldr	r0, .L25+24
.LVL17:
	.loc 1 49 10 view .LVU32
	bx	lr
.LVL18:
.L14:
	.loc 1 47 3 is_stmt 1 view .LVU33
	.loc 1 47 10 is_stmt 0 view .LVU34
	ldr	r0, .L25+28
.LVL19:
	.loc 1 47 10 view .LVU35
	bx	lr
.LVL20:
.L13:
	.loc 1 44 3 is_stmt 1 view .LVU36
	.loc 1 44 10 is_stmt 0 view .LVU37
	ldr	r0, .L25+32
.LVL21:
	.loc 1 44 10 view .LVU38
	bx	lr
.LVL22:
.L22:
	.loc 1 35 10 view .LVU39
	ldr	r0, .L25+36
.LVL23:
	.loc 1 35 10 view .LVU40
	bx	lr
.LVL24:
.L11:
	.loc 1 38 10 view .LVU41
	ldr	r0, .L25+40
.LVL25:
	.loc 1 38 10 view .LVU42
	bx	lr
.LVL26:
.L21:
	.loc 1 67 10 view .LVU43
	ldr	r0, .L25+44
.LVL27:
	.loc 1 67 10 view .LVU44
	bx	lr
.LVL28:
.L7:
	.loc 1 29 2 view .LVU45
	cmn	r0, #3
	beq	.L23
	.loc 1 31 10 view .LVU46
	ldr	r2, .L25+48
	cmn	r3, #1
	ldr	r0, .L25+44
.LVL29:
	.loc 1 31 10 view .LVU47
	moveq	r0, r2
	bx	lr
.LVL30:
.L23:
	.loc 1 29 2 view .LVU48
	ldr	r0, .L25+52
.LVL31:
	.loc 1 69 1 view .LVU49
	bx	lr
.L26:
	.align	2
.L25:
	.word	.LC4
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.word	.LC9
	.word	.LC8
	.word	.LC7
	.word	.LC6
	.word	.LC5
	.word	.LC2
	.word	.LC3
	.word	.LC13
	.word	.LC0
	.word	.LC1
	.cfi_endproc
.LFE106:
	.size	opusStrError, .-opusStrError
	.section	.text.DoQuit,"ax",%progbits
	.align	2
	.global	DoQuit
	.syntax unified
	.arm
	.type	DoQuit, %function
DoQuit:
.LVL32:
.LFB107:
	.loc 1 72 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 73 2 view .LVU51
	subs	r3, r0, #0
	beq	.L28
	cmp	r3, #1
	bxne	lr
	.loc 1 78 10 view .LVU52
	.loc 1 78 18 is_stmt 0 view .LVU53
	ldr	r2, .L33
	.loc 1 79 3 view .LVU54
	add	r0, r2, #16
.LVL33:
	.loc 1 78 18 view .LVU55
	strb	r3, [r2, #12]
	.loc 1 79 3 is_stmt 1 view .LVU56
	b	LightEvent_Signal
.LVL34:
.L28:
.LBB12:
.LBI12:
	.loc 1 71 6 view .LVU57
.LBB13:
	.loc 1 75 10 view .LVU58
	.loc 1 75 18 is_stmt 0 view .LVU59
	mov	r3, #1
	ldr	r0, .L33
.LVL35:
	.loc 1 75 18 view .LVU60
	strb	r3, [r0], #4
	.loc 1 76 3 is_stmt 1 view .LVU61
	b	LightEvent_Signal
.LVL36:
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
.LBE13:
.LBE12:
	.cfi_endproc
.LFE107:
	.size	DoQuit, .-DoQuit
	.section	.rodata.str1.4
	.align	2
.LC14:
	.ascii	"Failed to allocate audio buffer\000"
	.section	.text.audioInit,"ax",%progbits
	.align	2
	.global	audioInit
	.syntax unified
	.arm
	.type	audioInit, %function
audioInit:
.LVL37:
.LFB108:
	.loc 1 84 29 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 85 2 view .LVU63
	.loc 1 84 29 is_stmt 0 view .LVU64
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 84 29 view .LVU65
	mov	r4, r0
	.loc 1 85 2 view .LVU66
	bl	ndspChnReset
.LVL38:
	.loc 1 86 2 is_stmt 1 view .LVU67
	mov	r0, #1
	bl	ndspSetOutputMode
.LVL39:
	.loc 1 87 2 view .LVU68
	mov	r1, #0
	mov	r0, r4
	bl	ndspChnSetInterp
.LVL40:
	.loc 1 88 2 view .LVU69
	vldr.32	s0, .L47
	mov	r0, r4
	bl	ndspChnSetRate
.LVL41:
	.loc 1 89 2 view .LVU70
	mov	r1, #6
	mov	r0, r4
	bl	ndspChnSetFormat
.LVL42:
	.loc 1 90 2 view .LVU71
	.loc 1 91 2 view .LVU72
	.loc 1 91 5 is_stmt 0 view .LVU73
	cmp	r4, #0
	beq	.L46
	.loc 1 99 2 is_stmt 1 view .LVU74
	.loc 1 99 5 is_stmt 0 view .LVU75
	cmp	r4, #1
	beq	.L40
	.loc 1 127 8 view .LVU76
	mov	r0, #1
	.loc 1 128 1 view .LVU77
	pop	{r4, r5, r6, pc}
.L46:
	.loc 1 93 3 is_stmt 1 view .LVU78
	.loc 1 93 30 is_stmt 0 view .LVU79
	ldr	r0, .L47+4
	bl	linearAlloc
.LVL43:
	.loc 1 93 18 discriminator 1 view .LVU80
	ldr	r5, .L47+8
	.loc 1 94 6 view .LVU81
	cmp	r0, #0
	.loc 1 93 30 view .LVU82
	mov	r6, r0
	.loc 1 93 18 discriminator 1 view .LVU83
	str	r0, [r5, #24]
	.loc 1 94 3 is_stmt 1 view .LVU84
	.loc 1 94 6 is_stmt 0 view .LVU85
	beq	.L41
	.loc 1 99 2 is_stmt 1 view .LVU86
	.loc 1 107 2 view .LVU87
.LBB14:
	.loc 1 109 3 view .LVU88
	mov	r1, r4
	mov	r2, #68
	add	r0, r5, #32
	bl	memset
.LVL44:
	.loc 1 110 3 view .LVU89
	.loc 1 111 3 view .LVU90
.LBB15:
	.loc 1 111 8 view .LVU91
	.loc 1 111 24 discriminator 1 view .LVU92
	.loc 1 112 4 view .LVU93
	.loc 1 113 26 is_stmt 0 view .LVU94
	mov	r3, #3
	.loc 1 114 11 view .LVU95
	add	r1, r6, #23040
	add	r2, r6, #46080
.LBE15:
.LBE14:
	.loc 1 127 8 view .LVU96
	mov	r0, #1
.LBB17:
.LBB16:
	.loc 1 112 30 view .LVU97
	str	r6, [r5, #28]
	.loc 1 113 4 is_stmt 1 view .LVU98
	.loc 1 113 26 is_stmt 0 view .LVU99
	strb	r3, [r5, #45]
	.loc 1 114 4 is_stmt 1 view .LVU100
.LVL45:
	.loc 1 111 76 discriminator 3 view .LVU101
	.loc 1 111 24 discriminator 1 view .LVU102
	.loc 1 112 4 view .LVU103
	.loc 1 112 30 is_stmt 0 view .LVU104
	str	r1, [r5, #52]
	.loc 1 113 4 is_stmt 1 view .LVU105
	.loc 1 113 26 is_stmt 0 view .LVU106
	strb	r3, [r5, #69]
	.loc 1 114 4 is_stmt 1 view .LVU107
.LVL46:
	.loc 1 111 76 discriminator 3 view .LVU108
	.loc 1 111 24 discriminator 1 view .LVU109
	.loc 1 112 4 view .LVU110
	.loc 1 112 30 is_stmt 0 view .LVU111
	str	r2, [r5, #76]
	.loc 1 113 4 is_stmt 1 view .LVU112
	.loc 1 113 26 is_stmt 0 view .LVU113
	strb	r3, [r5, #93]
	.loc 1 114 4 is_stmt 1 view .LVU114
.LVL47:
	.loc 1 111 76 discriminator 3 view .LVU115
	.loc 1 111 24 discriminator 1 view .LVU116
.LBE16:
.LBE17:
	.loc 1 117 2 view .LVU117
	.loc 1 128 1 is_stmt 0 view .LVU118
	pop	{r4, r5, r6, pc}
.LVL48:
.L40:
	.loc 1 101 3 is_stmt 1 view .LVU119
	.loc 1 101 30 is_stmt 0 view .LVU120
	ldr	r0, .L47+4
	bl	linearAlloc
.LVL49:
	.loc 1 101 18 discriminator 1 view .LVU121
	ldr	r4, .L47+8
.LVL50:
	.loc 1 102 6 view .LVU122
	cmp	r0, #0
	.loc 1 101 30 view .LVU123
	mov	r5, r0
	.loc 1 101 18 discriminator 1 view .LVU124
	str	r0, [r4, #100]
	.loc 1 102 3 is_stmt 1 view .LVU125
	.loc 1 102 6 is_stmt 0 view .LVU126
	beq	.L41
	.loc 1 107 2 is_stmt 1 view .LVU127
	.loc 1 117 2 view .LVU128
.LBB18:
	.loc 1 119 3 view .LVU129
	mov	r2, #68
	mov	r1, #0
	add	r0, r4, #108
	bl	memset
.LVL51:
	.loc 1 120 3 view .LVU130
	.loc 1 121 3 view .LVU131
.LBB19:
	.loc 1 121 8 view .LVU132
	.loc 1 121 24 discriminator 1 view .LVU133
	.loc 1 122 4 view .LVU134
	.loc 1 123 26 is_stmt 0 view .LVU135
	mov	r3, #3
	.loc 1 124 11 view .LVU136
	add	r1, r5, #23040
	add	r2, r5, #46080
.LBE19:
.LBE18:
	.loc 1 127 8 view .LVU137
	mov	r0, #1
.LBB21:
.LBB20:
	.loc 1 122 30 view .LVU138
	str	r5, [r4, #104]
	.loc 1 123 4 is_stmt 1 view .LVU139
	.loc 1 123 26 is_stmt 0 view .LVU140
	strb	r3, [r4, #121]
	.loc 1 124 4 is_stmt 1 view .LVU141
.LVL52:
	.loc 1 121 76 discriminator 3 view .LVU142
	.loc 1 121 24 discriminator 1 view .LVU143
	.loc 1 122 4 view .LVU144
	.loc 1 122 30 is_stmt 0 view .LVU145
	str	r1, [r4, #128]
	.loc 1 123 4 is_stmt 1 view .LVU146
	.loc 1 123 26 is_stmt 0 view .LVU147
	strb	r3, [r4, #145]
	.loc 1 124 4 is_stmt 1 view .LVU148
.LVL53:
	.loc 1 121 76 discriminator 3 view .LVU149
	.loc 1 121 24 discriminator 1 view .LVU150
	.loc 1 122 4 view .LVU151
	.loc 1 122 30 is_stmt 0 view .LVU152
	str	r2, [r4, #152]
	.loc 1 123 4 is_stmt 1 view .LVU153
	.loc 1 123 26 is_stmt 0 view .LVU154
	strb	r3, [r4, #169]
	.loc 1 124 4 is_stmt 1 view .LVU155
.LVL54:
	.loc 1 121 76 discriminator 3 view .LVU156
	.loc 1 121 24 discriminator 1 view .LVU157
.LBE20:
.LBE21:
	.loc 1 128 1 is_stmt 0 view .LVU158
	pop	{r4, r5, r6, pc}
.LVL55:
.L41:
	.loc 1 95 4 is_stmt 1 view .LVU159
	ldr	r0, .L47+12
	bl	puts
.LVL56:
	.loc 1 96 4 view .LVU160
	.loc 1 96 10 is_stmt 0 view .LVU161
	mov	r0, #0
	pop	{r4, r5, r6, pc}
.L48:
	.align	2
.L47:
	.word	1195081728
	.word	69120
	.word	.LANCHOR0
	.word	.LC14
	.cfi_endproc
.LFE108:
	.size	audioInit, .-audioInit
	.section	.text.audioExit,"ax",%progbits
	.align	2
	.global	audioExit
	.syntax unified
	.arm
	.type	audioExit, %function
audioExit:
.LVL57:
.LFB109:
	.loc 1 130 30 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 133 2 view .LVU163
	.loc 1 130 30 is_stmt 0 view .LVU164
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 130 30 view .LVU165
	mov	r4, r0
	.loc 1 133 2 view .LVU166
	bl	ndspChnReset
.LVL58:
	.loc 1 135 2 is_stmt 1 view .LVU167
	.loc 1 135 2 is_stmt 0 discriminator 1 view .LVU168
	ldr	r3, .L53
	.loc 1 135 2 view .LVU169
	cmp	r4, #0
	.loc 1 135 2 discriminator 1 view .LVU170
	ldreq	r0, [r3, #24]
	.loc 1 135 2 discriminator 2 view .LVU171
	ldrne	r0, [r3, #100]
	.loc 1 136 1 view .LVU172
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL59:
	.loc 1 135 2 discriminator 4 view .LVU173
	b	linearFree
.LVL60:
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
	.cfi_endproc
.LFE109:
	.size	audioExit, .-audioExit
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"op_read_stereo: error %d (%s)\000"
	.section	.text.fillBuffer,"ax",%progbits
	.align	2
	.global	fillBuffer
	.syntax unified
	.arm
	.type	fillBuffer, %function
fillBuffer:
.LVL61:
.LFB110:
	.loc 1 138 77 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 139 2 view .LVU175
	.loc 1 140 2 view .LVU176
	.loc 1 140 22 view .LVU177
	.loc 1 138 77 is_stmt 0 view .LVU178
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 139 6 view .LVU179
	mov	r4, #0
	.loc 1 138 77 view .LVU180
	mov	r6, r0
	mov	r5, r1
	mov	r7, r2
	b	.L60
.LVL62:
.L56:
.LBB22:
	.loc 1 152 16 view .LVU181
	add	r4, r4, r1
.LVL63:
	.loc 1 152 16 view .LVU182
.LBE22:
	.loc 1 140 22 is_stmt 1 view .LVU183
	cmp	r4, #5760
	bge	.L64
.LVL64:
.L60:
.LBB23:
	.loc 1 141 3 view .LVU184
	.loc 1 142 3 view .LVU185
	.loc 1 143 3 view .LVU186
	.loc 1 141 12 is_stmt 0 view .LVU187
	ldr	r1, [r7]
	.loc 1 142 46 view .LVU188
	rsb	r2, r4, #5760
	.loc 1 143 23 view .LVU189
	add	r1, r1, r4, lsl #2
.LVL65:
	.loc 1 143 23 view .LVU190
	mov	r0, r5
	lsl	r2, r2, #1
.LVL66:
	.loc 1 143 23 view .LVU191
	bl	op_read_stereo
.LVL67:
	.loc 1 152 3 is_stmt 1 view .LVU192
	.loc 1 144 3 view .LVU193
	.loc 1 144 6 is_stmt 0 view .LVU194
	subs	r1, r0, #0
	.loc 1 141 42 view .LVU195
	lsl	r8, r4, #2
	.loc 1 144 6 view .LVU196
	bgt	.L56
	.loc 1 145 4 is_stmt 1 view .LVU197
	.loc 1 145 7 is_stmt 0 view .LVU198
	bne	.L65
.LVL68:
.L57:
	.loc 1 145 7 view .LVU199
.LBE23:
	.loc 1 154 2 is_stmt 1 view .LVU200
	.loc 1 154 5 is_stmt 0 view .LVU201
	cmp	r4, #0
	bne	.L59
	.loc 1 155 9 view .LVU202
	mov	r0, r4
	.loc 1 161 1 view .LVU203
	pop	{r4, r5, r6, r7, r8, pc}
.LVL69:
.L64:
	.loc 1 161 1 view .LVU204
	lsl	r8, r4, #2
.LVL70:
.L59:
	.loc 1 157 2 is_stmt 1 view .LVU205
	.loc 1 158 2 is_stmt 0 view .LVU206
	mov	r1, r7
	mov	r0, r6
	.loc 1 157 21 view .LVU207
	str	r4, [r7, #4]
	.loc 1 158 2 is_stmt 1 view .LVU208
	bl	ndspChnWaveBufAdd
.LVL71:
	.loc 1 159 2 view .LVU209
	mov	r1, r8
	ldr	r0, [r7]
	bl	DSP_FlushDataCache
.LVL72:
	.loc 1 160 2 view .LVU210
	.loc 1 160 8 is_stmt 0 view .LVU211
	mov	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.LVL73:
.L65:
.LBB24:
	.loc 1 147 4 is_stmt 1 view .LVU212
	bl	opusStrError
.LVL74:
	.loc 1 147 4 is_stmt 0 view .LVU213
	mov	r2, r0
	.loc 1 147 4 discriminator 1 view .LVU214
	ldr	r0, .L66
	bl	printf
.LVL75:
	.loc 1 149 4 is_stmt 1 view .LVU215
	b	.L57
.L67:
	.align	2
.L66:
	.word	.LC15
.LBE24:
	.cfi_endproc
.LFE110:
	.size	fillBuffer, .-fillBuffer
	.section	.text.audioThread0,"ax",%progbits
	.align	2
	.global	audioThread0
	.syntax unified
	.arm
	.type	audioThread0, %function
audioThread0:
.LVL76:
.LFB112:
	.loc 1 170 42 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 171 2 view .LVU217
	.loc 1 170 42 is_stmt 0 view .LVU218
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 173 9 view .LVU219
	ldr	r6, .L79
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
.LVL77:
	.loc 1 173 2 is_stmt 1 view .LVU220
	.loc 1 173 9 view .LVU221
	popne	{r4, r5, r6, r7, r8, pc}
	mov	r7, r0
	add	r5, r6, #100
	.loc 1 182 3 is_stmt 0 view .LVU222
	add	r8, r6, #4
.LVL78:
.L70:
.LBB25:
	.loc 1 174 24 is_stmt 1 discriminator 1 view .LVU223
	ldr	r4, .L79+4
.LVL79:
.L72:
	.loc 1 175 4 view .LVU224
	.loc 1 175 7 is_stmt 0 view .LVU225
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L71
.L74:
	.loc 1 174 76 is_stmt 1 discriminator 2 view .LVU226
	.loc 1 174 24 discriminator 1 view .LVU227
	add	r4, r4, #24
	cmp	r4, r5
	bne	.L72
.LBE25:
	.loc 1 182 3 view .LVU228
	mov	r0, r8
	bl	LightEvent_Wait
.LVL80:
	.loc 1 173 9 view .LVU229
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L70
	pop	{r4, r5, r6, r7, r8, pc}
.L71:
.LBB26:
	.loc 1 178 4 view .LVU230
	.loc 1 178 9 is_stmt 0 view .LVU231
	mov	r2, r4
	mov	r1, r7
	mov	r0, #0
	bl	fillBuffer
.LVL81:
	.loc 1 178 7 discriminator 1 view .LVU232
	cmp	r0, #0
	bne	.L74
	pop	{r4, r5, r6, r7, r8, pc}
.L80:
	.align	2
.L79:
	.word	.LANCHOR0
	.word	.LANCHOR0+28
.LBE26:
	.cfi_endproc
.LFE112:
	.size	audioThread0, .-audioThread0
	.section	.text.audioThread1,"ax",%progbits
	.align	2
	.global	audioThread1
	.syntax unified
	.arm
	.type	audioThread1, %function
audioThread1:
.LVL82:
.LFB113:
	.loc 1 185 42 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 186 2 view .LVU234
	.loc 1 185 42 is_stmt 0 view .LVU235
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 188 9 view .LVU236
	ldr	r6, .L90
	ldrb	r3, [r6, #12]	@ zero_extendqisi2
	cmp	r3, #0
.LVL83:
	.loc 1 188 2 is_stmt 1 view .LVU237
	.loc 1 188 9 view .LVU238
	popne	{r4, r5, r6, r7, r8, pc}
	mov	r7, r0
	add	r5, r6, #176
	.loc 1 198 3 is_stmt 0 view .LVU239
	add	r8, r6, #16
.LVL84:
.L83:
.LBB27:
	.loc 1 189 24 is_stmt 1 discriminator 1 view .LVU240
	ldr	r4, .L90+4
.LVL85:
.L86:
	.loc 1 190 4 view .LVU241
	.loc 1 190 7 is_stmt 0 view .LVU242
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L89
.L84:
	.loc 1 189 76 is_stmt 1 discriminator 2 view .LVU243
	.loc 1 189 24 discriminator 1 view .LVU244
	add	r4, r4, #24
	cmp	r4, r5
	bne	.L86
.LBE27:
	.loc 1 198 3 view .LVU245
	mov	r0, r8
	bl	LightEvent_Wait
.LVL86:
	.loc 1 188 9 view .LVU246
	ldrb	r3, [r6, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L83
	pop	{r4, r5, r6, r7, r8, pc}
.L89:
.LBB28:
	.loc 1 193 4 view .LVU247
	.loc 1 193 9 is_stmt 0 view .LVU248
	mov	r2, r4
	mov	r1, r7
	mov	r0, #1
	bl	fillBuffer
.LVL87:
	.loc 1 193 7 discriminator 1 view .LVU249
	cmp	r0, #0
	bne	.L84
	.loc 1 194 5 is_stmt 1 view .LVU250
	.loc 1 194 13 is_stmt 0 view .LVU251
	mov	r3, #1
	strb	r3, [r6, #12]
	.loc 1 195 5 is_stmt 1 view .LVU252
	pop	{r4, r5, r6, r7, r8, pc}
.L91:
	.align	2
.L90:
	.word	.LANCHOR0
	.word	.LANCHOR0+104
.LBE28:
	.cfi_endproc
.LFE113:
	.size	audioThread1, .-audioThread1
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"Free thread %p\012\000"
	.align	2
.LC17:
	.ascii	"An Error occured opening file %s \012\000"
	.align	2
.LC18:
	.ascii	"Failed to initialise audio 0\000"
	.section	.text.playopus,"ax",%progbits
	.align	2
	.global	playopus
	.syntax unified
	.arm
	.type	playopus, %function
playopus:
.LVL88:
.LFB114:
	.loc 1 202 29 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 203 2 view .LVU254
	.loc 1 202 29 is_stmt 0 view .LVU255
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 203 5 view .LVU256
	ldrb	r5, [r0, #128]	@ zero_extendqisi2
	.loc 1 202 29 view .LVU257
	mov	r4, r0
	.loc 1 203 5 view .LVU258
	cmp	r5, #0
	.loc 1 202 29 view .LVU259
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 1 203 5 view .LVU260
	beq	.L93
	.loc 1 217 2 is_stmt 1 view .LVU261
	.loc 1 217 10 is_stmt 0 view .LVU262
	mov	r2, #0
	ldr	r3, .L119
	strb	r2, [r3, #12]
	.loc 1 218 2 is_stmt 1 view .LVU263
.LVL89:
.L94:
	.loc 1 220 3 view .LVU264
	mov	r1, #0
	ldr	r0, .L119+4
	bl	LightEvent_Init
.LVL90:
.L98:
	.loc 1 226 2 view .LVU265
	.loc 1 226 6 is_stmt 0 view .LVU266
	mov	r3, #0
	.loc 1 227 26 view .LVU267
	mov	r0, r4
	add	r1, sp, #8
	.loc 1 226 6 view .LVU268
	str	r3, [sp, #8]
	.loc 1 227 2 is_stmt 1 view .LVU269
	.loc 1 227 26 is_stmt 0 view .LVU270
	bl	op_open_file
.LVL91:
	.loc 1 228 5 view .LVU271
	ldr	r6, [sp, #8]
	.loc 1 227 26 view .LVU272
	mov	r5, r0
.LVL92:
	.loc 1 228 2 is_stmt 1 view .LVU273
	.loc 1 228 5 is_stmt 0 view .LVU274
	cmp	r6, #0
	bne	.L115
	.loc 1 233 2 is_stmt 1 view .LVU275
	.loc 1 233 7 is_stmt 0 view .LVU276
	ldrb	r0, [r4, #128]	@ zero_extendqisi2
.LVL93:
	.loc 1 233 7 view .LVU277
	eor	r0, r0, #1
	bl	audioInit
.LVL94:
	.loc 1 233 5 discriminator 1 view .LVU278
	cmp	r0, #0
	beq	.L116
	.loc 1 238 2 is_stmt 1 view .LVU279
	.loc 1 238 5 is_stmt 0 view .LVU280
	ldrb	r3, [r4, #128]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L117
.L102:
	.loc 1 242 2 is_stmt 1 view .LVU281
	.loc 1 242 10 is_stmt 0 view .LVU282
	mov	r3, #48
	.loc 1 243 2 view .LVU283
	ldr	r1, .L119+8
	add	r0, sp, #12
	.loc 1 242 10 view .LVU284
	str	r3, [sp, #12]
	.loc 1 243 2 is_stmt 1 view .LVU285
	bl	svcGetThreadPriority
.LVL95:
	.loc 1 244 2 view .LVU286
	.loc 1 245 2 view .LVU287
	.loc 1 246 2 view .LVU288
	.loc 1 247 20 is_stmt 0 discriminator 4 view .LVU289
	mov	r3, #0
	mvn	r2, #0
	str	r3, [sp, #4]
	.loc 1 244 11 view .LVU290
	ldr	r3, [sp, #12]
	.loc 1 247 20 discriminator 4 view .LVU291
	str	r2, [sp]
	.loc 1 244 11 view .LVU292
	add	r3, r3, r2
	.loc 1 245 36 view .LVU293
	cmp	r3, #24
	movlt	r3, #24
	.loc 1 246 36 view .LVU294
	cmp	r3, #63
	movge	r3, #63
	.loc 1 247 20 view .LVU295
	ldrb	lr, [r4, #128]	@ zero_extendqisi2
	.loc 1 247 20 discriminator 1 view .LVU296
	ldr	ip, .L119+12
	.loc 1 247 20 discriminator 4 view .LVU297
	cmp	lr, #0
	mov	r2, #32768
	mov	r1, r5
	.loc 1 247 20 discriminator 1 view .LVU298
	ldr	r0, .L119+16
	.loc 1 247 20 discriminator 4 view .LVU299
	moveq	r0, ip
	.loc 1 246 11 view .LVU300
	str	r3, [sp, #12]
	.loc 1 247 2 is_stmt 1 view .LVU301
	.loc 1 247 20 is_stmt 0 discriminator 4 view .LVU302
	bl	threadCreate
.LVL96:
	.loc 1 248 2 is_stmt 1 view .LVU303
	.loc 1 249 18 is_stmt 0 view .LVU304
	str	r5, [r4, #136]
	.loc 1 248 17 view .LVU305
	str	r0, [r4, #132]
	.loc 1 249 2 is_stmt 1 view .LVU306
	.loc 1 250 2 view .LVU307
	.loc 1 251 1 is_stmt 0 view .LVU308
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL97:
.L93:
	.cfi_restore_state
	.loc 1 203 32 discriminator 1 view .LVU309
	ldr	r3, [r0, #132]
	cmp	r3, #0
	beq	.L118
.LBB35:
	.loc 1 205 3 is_stmt 1 view .LVU310
.LVL98:
.LBB36:
.LBI36:
	.loc 1 71 6 view .LVU311
.LBB37:
	.loc 1 73 2 view .LVU312
	.loc 1 78 10 view .LVU313
	.loc 1 78 18 is_stmt 0 view .LVU314
	mov	r3, #1
	ldr	r6, .L119
	.loc 1 79 3 view .LVU315
	add	r0, r6, #16
.LVL99:
	.loc 1 78 18 view .LVU316
	strb	r3, [r6, #12]
	.loc 1 79 3 is_stmt 1 view .LVU317
	bl	LightEvent_Signal
.LVL100:
	.loc 1 80 3 view .LVU318
	.loc 1 80 3 is_stmt 0 view .LVU319
.LBE37:
.LBE36:
	.loc 1 206 3 is_stmt 1 view .LVU320
	mov	r3, #0
	ldr	r2, .L119+20
	ldr	r0, [r4, #132]
	bl	threadJoin
.LVL101:
	.loc 1 207 3 view .LVU321
	ldr	r0, [r4, #132]
	bl	threadFree
.LVL102:
	.loc 1 208 3 view .LVU322
	ldr	r0, .L119+24
	ldr	r1, [r4, #132]
	bl	DebugUI_Log
.LVL103:
	.loc 1 209 3 view .LVU323
	.loc 1 210 12 is_stmt 0 view .LVU324
	ldr	r0, [r4, #136]
	.loc 1 209 18 view .LVU325
	str	r5, [r4, #132]
	.loc 1 210 3 is_stmt 1 view .LVU326
	.loc 1 210 6 is_stmt 0 view .LVU327
	cmp	r0, #0
	beq	.L97
	.loc 1 212 4 is_stmt 1 view .LVU328
	bl	op_free
.LVL104:
.L97:
	.loc 1 214 3 view .LVU329
.LBB38:
.LBI38:
	.loc 1 130 6 view .LVU330
.LBB39:
	.loc 1 133 2 view .LVU331
	mov	r0, #1
	bl	ndspChnReset
.LVL105:
	.loc 1 135 2 view .LVU332
	.loc 1 135 2 is_stmt 0 discriminator 4 view .LVU333
	ldr	r0, [r6, #100]
	bl	linearFree
.LVL106:
	.loc 1 135 2 discriminator 4 view .LVU334
.LBE39:
.LBE38:
	.loc 1 215 3 is_stmt 1 view .LVU335
	.loc 1 215 18 is_stmt 0 view .LVU336
	mov	r3, #0
.LBE35:
	.loc 1 218 11 view .LVU337
	ldrb	r2, [r4, #128]	@ zero_extendqisi2
	.loc 1 217 2 is_stmt 1 view .LVU338
.LBB40:
	.loc 1 215 18 is_stmt 0 view .LVU339
	str	r3, [r4, #132]
.LBE40:
	.loc 1 218 5 view .LVU340
	cmp	r2, r3
	.loc 1 217 10 view .LVU341
	strb	r3, [r6, #12]
	.loc 1 218 2 is_stmt 1 view .LVU342
	.loc 1 218 5 is_stmt 0 view .LVU343
	bne	.L94
	.loc 1 224 3 is_stmt 1 view .LVU344
	mov	r1, #0
	ldr	r0, .L119+28
	bl	LightEvent_Init
.LVL107:
	b	.L98
.LVL108:
.L115:
.LBB41:
	.loc 1 230 3 view .LVU345
	mov	r1, r4
	ldr	r0, .L119+32
.LVL109:
	.loc 1 230 3 is_stmt 0 view .LVU346
	bl	DebugUI_Log
.LVL110:
	.loc 1 231 3 is_stmt 1 view .LVU347
.LBE41:
	.loc 1 251 1 is_stmt 0 view .LVU348
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL111:
.L118:
	.cfi_restore_state
	.loc 1 217 2 is_stmt 1 view .LVU349
	.loc 1 217 10 is_stmt 0 view .LVU350
	ldr	r2, .L119
	.loc 1 224 3 view .LVU351
	mov	r1, #0
	ldr	r0, .L119+28
.LVL112:
	.loc 1 217 10 view .LVU352
	strb	r3, [r2, #12]
	.loc 1 218 2 is_stmt 1 view .LVU353
	.loc 1 224 3 view .LVU354
	bl	LightEvent_Init
.LVL113:
	b	.L98
.LVL114:
.L117:
	.loc 1 240 3 view .LVU355
	mov	r1, r6
	ldr	r0, .L119+36
	bl	ndspSetCallback
.LVL115:
	b	.L102
.L116:
	.loc 1 235 3 view .LVU356
	ldr	r0, .L119+40
	bl	puts
.LVL116:
	.loc 1 236 3 view .LVU357
	.loc 1 251 1 is_stmt 0 view .LVU358
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL117:
.L120:
	.loc 1 251 1 view .LVU359
	.align	2
.L119:
	.word	.LANCHOR0
	.word	.LANCHOR0+4
	.word	-32768
	.word	audioThread1
	.word	audioThread0
	.word	50000
	.word	.LC16
	.word	.LANCHOR0+16
	.word	.LC17
	.word	audioCallback
	.word	.LC18
	.cfi_endproc
.LFE114:
	.size	playopus, .-playopus
	.global	s_quit1
	.global	s_quit0
	.global	s_event1
	.global	s_event
	.global	s_audioBuffer1
	.global	s_audioBuffer0
	.global	s_waveBufs1
	.global	s_waveBufs0
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_quit0, %object
	.size	s_quit0, 1
s_quit0:
	.space	1
	.space	3
	.type	s_event, %object
	.size	s_event, 8
s_event:
	.space	8
	.type	s_quit1, %object
	.size	s_quit1, 1
s_quit1:
	.space	1
	.space	3
	.type	s_event1, %object
	.size	s_event1, 8
s_event1:
	.space	8
	.type	s_audioBuffer0, %object
	.size	s_audioBuffer0, 4
s_audioBuffer0:
	.space	4
	.type	s_waveBufs0, %object
	.size	s_waveBufs0, 72
s_waveBufs0:
	.space	72
	.type	s_audioBuffer1, %object
	.size	s_audioBuffer1, 4
s_audioBuffer1:
	.space	4
	.type	s_waveBufs1, %object
	.size	s_waveBufs1, 72
s_waveBufs1:
	.space	72
	.text
.Letext0:
	.file 2 "C:/devkitPro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 4 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "C:/devkitPro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 6 "C:/devkitPro/portlibs/3ds/include/opus/opus_types.h"
	.file 7 "C:/devkitPro/portlibs/3ds/include/opus/opusfile.h"
	.file 8 "C:/devkitPro/libctru/include/3ds/types.h"
	.file 9 "C:/devkitPro/libctru/include/3ds/svc.h"
	.file 10 "C:/devkitPro/libctru/include/3ds/synchronization.h"
	.file 11 "C:/devkitPro/libctru/include/3ds/thread.h"
	.file 12 "C:/devkitPro/libctru/include/3ds/ndsp/ndsp.h"
	.file 13 "C:/devkitPro/libctru/include/3ds/ndsp/channel.h"
	.file 14 "C:/Users/Elias/CLionProjects/3DSCraft/include/misc/Sound.h"
	.file 15 "C:/devkitPro/libctru/include/3ds/services/dsp.h"
	.file 16 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdio.h"
	.file 17 "C:/devkitPro/libctru/include/3ds/allocator/linear.h"
	.file 18 "C:/devkitPro/devkitARM/arm-none-eabi/include/string.h"
	.file 19 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf58
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x29
	.4byte	.LASF150
	.byte	0x1d
	.4byte	.LASF151
	.4byte	.LASF152
	.4byte	.LLRL36
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x2a
	.byte	0x4
	.uleb128 0x13
	.4byte	0x3b
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x4e
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x61
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x74
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x87
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x9a
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0xad
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x26
	.uleb128 0x2b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x13
	.4byte	0xc7
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x13
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.4byte	0x42
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x55
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x8e
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0xa1
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0xbb
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x7
	.byte	0x11
	.4byte	0x11b
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.uleb128 0x13
	.4byte	0x14b
	.uleb128 0x6
	.4byte	0x152
	.uleb128 0x6
	.4byte	0xc7
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x35
	.byte	0x14
	.4byte	0x103
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x85
	.byte	0x1c
	.4byte	0x179
	.uleb128 0x24
	.4byte	.LASF29
	.uleb128 0xf
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0xf7
	.uleb128 0xf
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0x10f
	.uleb128 0xf
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0x127
	.uleb128 0xf
	.ascii	"u64\000"
	.byte	0x18
	.byte	0x12
	.4byte	0x133
	.uleb128 0xf
	.ascii	"s8\000"
	.byte	0x1a
	.byte	0x10
	.4byte	0xeb
	.uleb128 0xf
	.ascii	"s16\000"
	.byte	0x1b
	.byte	0x11
	.4byte	0x103
	.uleb128 0xf
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0x11b
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x29
	.byte	0xd
	.4byte	0x193
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x2a
	.byte	0xd
	.4byte	0x1be
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x2b
	.byte	0x10
	.4byte	0x1ed
	.uleb128 0x6
	.4byte	0x1f2
	.uleb128 0x2c
	.4byte	0x1fd
	.uleb128 0x2
	.4byte	0x3b
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF33
	.uleb128 0x14
	.4byte	0x61
	.byte	0x9
	.byte	0x69
	.byte	0xe
	.4byte	0x223
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x6d
	.byte	0x3
	.4byte	0x204
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.4byte	.LASF38
	.uleb128 0x2d
	.4byte	0x22f
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xa
	.byte	0xa
	.byte	0x11
	.4byte	0x13f
	.uleb128 0x1a
	.byte	0x8
	.byte	0xa
	.byte	0x13
	.4byte	0x26a
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0xa
	.byte	0x15
	.byte	0x6
	.4byte	0x1be
	.byte	0
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0xa
	.byte	0x16
	.byte	0xc
	.4byte	0x23b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xa
	.byte	0x17
	.byte	0x3
	.4byte	0x247
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xb
	.byte	0x16
	.byte	0x1c
	.4byte	0x282
	.uleb128 0x6
	.4byte	0x287
	.uleb128 0x24
	.4byte	.LASF44
	.uleb128 0x6
	.4byte	0x17e
	.uleb128 0x6
	.4byte	0x296
	.uleb128 0x2e
	.uleb128 0x14
	.4byte	0x61
	.byte	0xc
	.byte	0xf
	.byte	0x1
	.4byte	0x2b6
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xc
	.byte	0x13
	.byte	0x3
	.4byte	0x297
	.uleb128 0x1a
	.byte	0x6
	.byte	0xc
	.byte	0x25
	.4byte	0x2f2
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0xc
	.byte	0x27
	.byte	0x6
	.4byte	0x188
	.byte	0
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0xc
	.byte	0x28
	.byte	0x6
	.4byte	0x1b3
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0xc
	.byte	0x29
	.byte	0x6
	.4byte	0x1b3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xc
	.byte	0x2a
	.byte	0x3
	.4byte	0x2c2
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0xc
	.byte	0x2d
	.byte	0x20
	.4byte	0x30a
	.uleb128 0x2f
	.4byte	.LASF153
	.byte	0x18
	.byte	0xc
	.byte	0x39
	.byte	0x8
	.4byte	0x379
	.uleb128 0x30
	.4byte	0x39e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0xc
	.byte	0x42
	.byte	0x6
	.4byte	0x193
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0xc
	.byte	0x43
	.byte	0x11
	.4byte	0x3de
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xc
	.byte	0x45
	.byte	0x6
	.4byte	0x193
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0xc
	.byte	0x46
	.byte	0x6
	.4byte	0x22f
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xc
	.byte	0x47
	.byte	0x5
	.4byte	0x17e
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0xc
	.byte	0x49
	.byte	0x6
	.4byte	0x188
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x3e3
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.4byte	0x61
	.byte	0xc
	.byte	0x31
	.byte	0x1
	.4byte	0x39e
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x3
	.byte	0
	.uleb128 0x31
	.byte	0x4
	.byte	0xc
	.byte	0x3b
	.byte	0x2
	.4byte	0x3d4
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x3d
	.byte	0x7
	.4byte	0x3d4
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x3e
	.byte	0x8
	.4byte	0x3d9
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x3f
	.byte	0x7
	.4byte	0x28c
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x40
	.byte	0xf
	.4byte	0x291
	.byte	0
	.uleb128 0x6
	.4byte	0x1a9
	.uleb128 0x6
	.4byte	0x1b3
	.uleb128 0x6
	.4byte	0x2f2
	.uleb128 0x6
	.4byte	0x2fe
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xc
	.byte	0x4e
	.byte	0x10
	.4byte	0x1ed
	.uleb128 0x14
	.4byte	0x61
	.byte	0xd
	.byte	0x18
	.byte	0x1
	.4byte	0x43d
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x40
	.byte	0
	.uleb128 0x14
	.4byte	0x61
	.byte	0xd
	.byte	0x2a
	.byte	0x1
	.4byte	0x45c
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xd
	.byte	0x2e
	.byte	0x3
	.4byte	0x43d
	.uleb128 0x1a
	.byte	0x8c
	.byte	0xe
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0xe
	.byte	0x5
	.byte	0x7
	.4byte	0x4a5
	.byte	0
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0xe
	.byte	0x6
	.byte	0x6
	.4byte	0x22f
	.byte	0x80
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0xe
	.byte	0x7
	.byte	0xa
	.4byte	0x4b5
	.byte	0x84
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0xe
	.byte	0x8
	.byte	0xf
	.4byte	0x4ba
	.byte	0x88
	.byte	0
	.uleb128 0x25
	.4byte	0x14b
	.4byte	0x4b5
	.uleb128 0x26
	.4byte	0x2d
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	0x276
	.uleb128 0x6
	.4byte	0x16d
	.uleb128 0x13
	.4byte	0x4ba
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xe
	.byte	0x9
	.byte	0x2
	.4byte	0x468
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0xe
	.byte	0x12
	.4byte	0xce
	.2byte	0xbb80
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0xf
	.byte	0x12
	.4byte	0xce
	.2byte	0x1680
	.uleb128 0x32
	.4byte	.LASF91
	.byte	0x1
	.byte	0x10
	.byte	0x12
	.4byte	0xce
	.byte	0x2
	.uleb128 0x33
	.4byte	.LASF92
	.byte	0x1
	.byte	0x11
	.byte	0x12
	.4byte	0xce
	.sleb128 -1
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x12
	.byte	0x12
	.4byte	0xce
	.2byte	0x8000
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x13
	.byte	0x15
	.4byte	0xdf
	.2byte	0x5a00
	.uleb128 0x25
	.4byte	0x2fe
	.4byte	0x52e
	.uleb128 0x26
	.4byte	0x2d
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x14
	.byte	0xd
	.4byte	0x51e
	.uleb128 0x5
	.byte	0x3
	.4byte	s_waveBufs0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x15
	.byte	0xd
	.4byte	0x51e
	.uleb128 0x5
	.byte	0x3
	.4byte	s_waveBufs1
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x16
	.byte	0xa
	.4byte	0x561
	.uleb128 0x5
	.byte	0x3
	.4byte	s_audioBuffer0
	.uleb128 0x6
	.4byte	0x103
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x17
	.byte	0xa
	.4byte	0x561
	.uleb128 0x5
	.byte	0x3
	.4byte	s_audioBuffer1
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x18
	.byte	0xc
	.4byte	0x26a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x18
	.byte	0x15
	.4byte	0x26a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event1
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x19
	.byte	0xe
	.4byte	0x236
	.uleb128 0x5
	.byte	0x3
	.4byte	s_quit0
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x19
	.byte	0x1f
	.4byte	0x236
	.uleb128 0x5
	.byte	0x3
	.4byte	s_quit1
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0xb
	.byte	0x33
	.byte	0x8
	.4byte	0x276
	.4byte	0x5ea
	.uleb128 0x2
	.4byte	0x1e1
	.uleb128 0x2
	.4byte	0x3b
	.uleb128 0x2
	.4byte	0xd3
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x22f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x35e
	.byte	0x8
	.4byte	0x1d5
	.4byte	0x606
	.uleb128 0x2
	.4byte	0x606
	.uleb128 0x2
	.4byte	0x1c9
	.byte	0
	.uleb128 0x6
	.4byte	0x1be
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0xc
	.byte	0xae
	.4byte	0x621
	.uleb128 0x2
	.4byte	0x3e8
	.uleb128 0x2
	.4byte	0x3b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x444
	.byte	0x36
	.4byte	0x4ba
	.4byte	0x63d
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x2
	.4byte	0x15c
	.byte	0
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x119
	.4byte	0x654
	.uleb128 0x2
	.4byte	0x654
	.uleb128 0x2
	.4byte	0x223
	.byte	0
	.uleb128 0x6
	.4byte	0x26a
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x58b
	.4byte	0x66b
	.uleb128 0x2
	.4byte	0x4ba
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF109
	.4byte	0xc7
	.4byte	0x67a
	.uleb128 0x18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0xb
	.byte	0x48
	.4byte	0x68b
	.uleb128 0x2
	.4byte	0x276
	.byte	0
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0xb
	.byte	0x4f
	.byte	0x8
	.4byte	0x1d5
	.4byte	0x6a6
	.uleb128 0x2
	.4byte	0x276
	.uleb128 0x2
	.4byte	0x19e
	.byte	0
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x138
	.4byte	0x6b8
	.uleb128 0x2
	.4byte	0x654
	.byte	0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xf
	.byte	0x4e
	.byte	0x8
	.4byte	0x1d5
	.4byte	0x6d3
	.uleb128 0x2
	.4byte	0x291
	.uleb128 0x2
	.4byte	0x193
	.byte	0
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0xd
	.byte	0xbc
	.4byte	0x6e9
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x3e3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x10
	.byte	0xce
	.byte	0x5
	.4byte	0xc7
	.4byte	0x700
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x18
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x829
	.byte	0x2d
	.4byte	0xc7
	.4byte	0x721
	.uleb128 0x2
	.4byte	0x4ba
	.uleb128 0x2
	.4byte	0x721
	.uleb128 0x2
	.4byte	0xc7
	.byte	0
	.uleb128 0x6
	.4byte	0x161
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x11
	.byte	0x2b
	.4byte	0x737
	.uleb128 0x2
	.4byte	0x3b
	.byte	0
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x12
	.byte	0x21
	.byte	0x8
	.4byte	0x3b
	.4byte	0x757
	.uleb128 0x2
	.4byte	0x3b
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0xd3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x11
	.byte	0xe
	.byte	0x7
	.4byte	0x3b
	.4byte	0x76d
	.uleb128 0x2
	.4byte	0xd3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xd
	.byte	0x6c
	.4byte	0x783
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x188
	.byte	0
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xd
	.byte	0x89
	.4byte	0x799
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xd
	.byte	0x7b
	.4byte	0x7af
	.uleb128 0x2
	.4byte	0xc7
	.uleb128 0x2
	.4byte	0x45c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xc
	.byte	0x83
	.4byte	0x7c0
	.uleb128 0x2
	.4byte	0x2b6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xd
	.byte	0x38
	.4byte	0x7d1
	.uleb128 0x2
	.4byte	0xc7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x12b
	.4byte	0x7e3
	.uleb128 0x2
	.4byte	0x654
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0xca
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa30
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0xca
	.byte	0x16
	.4byte	0xa30
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x27
	.4byte	.LASF126
	.byte	0xe2
	.byte	0x6
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xe3
	.byte	0xf
	.4byte	0x4ba
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x27
	.4byte	.LASF127
	.byte	0xf2
	.byte	0xa
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xf7
	.byte	0x9
	.4byte	0x276
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0xe
	.4byte	.LLRL33
	.4byte	0x90f
	.uleb128 0x1c
	.4byte	.LASF109
	.4byte	0xc7
	.4byte	0x864
	.uleb128 0x18
	.byte	0
	.uleb128 0x1e
	.4byte	0xe0b
	.4byte	.LBI36
	.byte	.LVU311
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0xcd
	.byte	0x3
	.4byte	0x89a
	.uleb128 0x11
	.4byte	0xe15
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x9
	.4byte	.LVL100
	.4byte	0x7d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xc5a
	.4byte	.LBI38
	.byte	.LVU330
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0xd6
	.byte	0x3
	.4byte	0x8dc
	.uleb128 0x11
	.4byte	0xc64
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x5
	.4byte	.LVL105
	.4byte	0x7c0
	.4byte	0x8d2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL106
	.4byte	0x726
	.byte	0
	.uleb128 0x12
	.4byte	.LVL101
	.4byte	0x68b
	.uleb128 0x12
	.4byte	.LVL102
	.4byte	0x67a
	.uleb128 0x5
	.4byte	.LVL103
	.4byte	0x66b
	.4byte	0x905
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x12
	.4byte	.LVL104
	.4byte	0x659
	.byte	0
	.uleb128 0x34
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.4byte	0x945
	.uleb128 0x1c
	.4byte	.LASF109
	.4byte	0xc7
	.4byte	0x92b
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.4byte	.LVL110
	.4byte	0x66b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL90
	.4byte	0x63d
	.4byte	0x961
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL91
	.4byte	0x621
	.4byte	0x97b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.4byte	.LVL94
	.4byte	0xc70
	.uleb128 0x5
	.4byte	.LVL95
	.4byte	0x5ea
	.4byte	0x99f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0x8000
	.byte	0
	.uleb128 0x5
	.4byte	.LVL96
	.4byte	0x5bb
	.4byte	0x9c7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL107
	.4byte	0x63d
	.4byte	0x9e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL113
	.4byte	0x63d
	.4byte	0x9ff
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL115
	.4byte	0x60b
	.4byte	0xa1c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	audioCallback
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL116
	.4byte	0xf49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x4c4
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0xb9
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab5
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0xb9
	.byte	0x1f
	.4byte	0x3d
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xba
	.byte	0x15
	.4byte	0x4bf
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0xe
	.4byte	.LLRL28
	.4byte	0xaa4
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0xbd
	.4byte	0xd3
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x9
	.4byte	.LVL87
	.4byte	0xb4b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL86
	.4byte	0x6a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0xaa
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb35
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0xaa
	.byte	0x1f
	.4byte	0x3d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xab
	.byte	0x15
	.4byte	0x4bf
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xe
	.4byte	.LLRL24
	.4byte	0xb24
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0xae
	.4byte	0xd3
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x9
	.4byte	.LVL81
	.4byte	0xb4b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL80
	.4byte	0x6a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0xa2
	.4byte	0xb4b
	.uleb128 0x20
	.4byte	.LASF142
	.byte	0xa2
	.byte	0x20
	.4byte	0x3d
	.byte	0
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0x8a
	.byte	0x5
	.4byte	0x22f
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5a
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0x8a
	.byte	0x14
	.4byte	0xc7
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x8a
	.byte	0x2b
	.4byte	0x4ba
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0x8a
	.byte	0x43
	.4byte	0x3e3
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0x8b
	.byte	0x6
	.4byte	0xc7
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xe
	.4byte	.LLRL18
	.4byte	0xc2f
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x8d
	.byte	0xc
	.4byte	0x561
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x8e
	.byte	0x10
	.4byte	0xdf
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0x8f
	.byte	0xd
	.4byte	0xce
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x5
	.4byte	.LVL67
	.4byte	0x700
	.4byte	0xc12
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.byte	0xa
	.2byte	0x1680
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x12
	.4byte	.LVL74
	.4byte	0xe21
	.uleb128 0x9
	.4byte	.LVL75
	.4byte	0x6e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL71
	.4byte	0x6d3
	.4byte	0xc49
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
	.byte	0
	.uleb128 0x9
	.4byte	.LVL72
	.4byte	0x6b8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF141
	.byte	0x82
	.4byte	0xc70
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x82
	.byte	0x14
	.4byte	0xc7
	.byte	0
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x54
	.byte	0x5
	.4byte	0x22f
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0b
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0x54
	.byte	0x13
	.4byte	0xc7
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x35
	.4byte	.LASF139
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.4byte	0xdf
	.4byte	0x10e00
	.uleb128 0xe
	.4byte	.LLRL5
	.4byte	0xcff
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x6e
	.byte	0xc
	.4byte	0x561
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xe
	.4byte	.LLRL7
	.4byte	0xce2
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x6f
	.4byte	0xd3
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x9
	.4byte	.LVL44
	.4byte	0xf52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 32
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
	.byte	0x8
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LLRL9
	.4byte	0xd52
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x78
	.byte	0xc
	.4byte	0x561
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xe
	.4byte	.LLRL11
	.4byte	0xd35
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x79
	.4byte	0xd3
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x9
	.4byte	.LVL51
	.4byte	0xf52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 108
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL38
	.4byte	0x7c0
	.4byte	0xd66
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL39
	.4byte	0x7af
	.4byte	0xd79
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL40
	.4byte	0x799
	.4byte	0xd92
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
	.byte	0
	.uleb128 0x5
	.4byte	.LVL41
	.4byte	0x783
	.4byte	0xdb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x34
	.byte	0x4
	.4byte	0x473b8000
	.byte	0
	.uleb128 0x5
	.4byte	.LVL42
	.4byte	0x76d
	.4byte	0xdcb
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
	.byte	0x36
	.byte	0
	.uleb128 0x5
	.4byte	.LVL43
	.4byte	0x757
	.4byte	0xde1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x8
	.byte	0x87
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.4byte	.LVL49
	.4byte	0x757
	.4byte	0xdf7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x8
	.byte	0x87
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x9
	.4byte	.LVL56
	.4byte	0xf49
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF145
	.byte	0x47
	.4byte	0xe21
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x47
	.byte	0x11
	.4byte	0xc7
	.byte	0
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x1b
	.byte	0xd
	.4byte	0x157
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4e
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x1b
	.byte	0x1e
	.4byte	0xc7
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x22
	.4byte	0xb35
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea5
	.uleb128 0x11
	.4byte	0xb3f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x36
	.4byte	0xb35
	.4byte	.LBI8
	.byte	.LVU6
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xa2
	.byte	0x6
	.uleb128 0x11
	.4byte	0xb3f
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x23
	.4byte	.LVL3
	.4byte	0x7d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0xe0b
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0b
	.uleb128 0x11
	.4byte	0xe15
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1e
	.4byte	0xe0b
	.4byte	.LBI12
	.byte	.LVU57
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x47
	.byte	0x6
	.4byte	0xef7
	.uleb128 0x37
	.4byte	0xe15
	.byte	0
	.uleb128 0x23
	.4byte	.LVL36
	.4byte	0x7d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL34
	.4byte	0x7d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+16
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0xc5a
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf49
	.uleb128 0x11
	.4byte	0xc64
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x5
	.4byte	.LVL58
	.4byte	0x7c0
	.4byte	0xf3f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL60
	.4byte	0x726
	.byte	0
	.uleb128 0x28
	.4byte	.LASF147
	.4byte	.LASF148
	.uleb128 0x28
	.4byte	.LASF118
	.4byte	.LASF149
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
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
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.sleb128 208
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x24
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.sleb128 19
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS30:
	.uleb128 0
	.uleb128 .LVU264
	.uleb128 .LVU264
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU316
	.uleb128 .LVU316
	.uleb128 .LVU349
	.uleb128 .LVU349
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 0
.LLST30:
	.byte	0x6
	.4byte	.LVL88
	.byte	0x4
	.uleb128 .LVL88-.LVL88
	.uleb128 .LVL89-.LVL88
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL89-.LVL88
	.uleb128 .LVL97-.LVL88
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL97-.LVL88
	.uleb128 .LVL99-.LVL88
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL99-.LVL88
	.uleb128 .LVL111-.LVL88
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL111-.LVL88
	.uleb128 .LVL112-.LVL88
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL112-.LVL88
	.uleb128 .LVL117-.LVL88
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL117-.LVL88
	.uleb128 .LFE114-.LVL88
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
.LVUS31:
	.uleb128 .LVU273
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU309
	.uleb128 .LVU345
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU349
	.uleb128 .LVU355
	.uleb128 .LVU359
.LLST31:
	.byte	0x6
	.4byte	.LVL92
	.byte	0x4
	.uleb128 .LVL92-.LVL92
	.uleb128 .LVL93-.LVL92
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL93-.LVL92
	.uleb128 .LVL97-.LVL92
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL108-.LVL92
	.uleb128 .LVL109-.LVL92
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL109-.LVL92
	.uleb128 .LVL111-.LVL92
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL114-.LVL92
	.uleb128 .LVL117-.LVL92
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS32:
	.uleb128 .LVU303
	.uleb128 .LVU309
.LLST32:
	.byte	0x8
	.4byte	.LVL96
	.uleb128 .LVL97-.LVL96
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS34:
	.uleb128 .LVU311
	.uleb128 .LVU319
.LLST34:
	.byte	0x8
	.4byte	.LVL98
	.uleb128 .LVL100-.LVL98
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 .LVU330
	.uleb128 .LVU334
.LLST35:
	.byte	0x8
	.4byte	.LVL104
	.uleb128 .LVL106-.LVL104
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST26:
	.byte	0x6
	.4byte	.LVL82
	.byte	0x4
	.uleb128 .LVL82-.LVL82
	.uleb128 .LVL84-.LVL82
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL84-.LVL82
	.uleb128 .LFE113-.LVL82
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS27:
	.uleb128 .LVU237
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST27:
	.byte	0x6
	.4byte	.LVL83
	.byte	0x4
	.uleb128 .LVL83-.LVL83
	.uleb128 .LVL84-.LVL83
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL84-.LVL83
	.uleb128 .LFE113-.LVL83
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS29:
	.uleb128 .LVU240
	.uleb128 .LVU241
.LLST29:
	.byte	0x8
	.4byte	.LVL84
	.uleb128 .LVL85-.LVL84
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL76
	.byte	0x4
	.uleb128 .LVL76-.LVL76
	.uleb128 .LVL78-.LVL76
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL78-.LVL76
	.uleb128 .LFE112-.LVL76
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS23:
	.uleb128 .LVU220
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 0
.LLST23:
	.byte	0x6
	.4byte	.LVL77
	.byte	0x4
	.uleb128 .LVL77-.LVL77
	.uleb128 .LVL78-.LVL77
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL78-.LVL77
	.uleb128 .LFE112-.LVL77
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS25:
	.uleb128 .LVU223
	.uleb128 .LVU224
.LLST25:
	.byte	0x8
	.4byte	.LVL78
	.uleb128 .LVL79-.LVL78
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL61
	.byte	0x4
	.uleb128 .LVL61-.LVL61
	.uleb128 .LVL62-.LVL61
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL62-.LVL61
	.uleb128 .LFE110-.LVL61
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL61
	.byte	0x4
	.uleb128 .LVL61-.LVL61
	.uleb128 .LVL62-.LVL61
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL62-.LVL61
	.uleb128 .LFE110-.LVL61
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL61
	.byte	0x4
	.uleb128 .LVL61-.LVL61
	.uleb128 .LVL62-.LVL61
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL62-.LVL61
	.uleb128 .LFE110-.LVL61
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS17:
	.uleb128 .LVU176
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL61
	.byte	0x4
	.uleb128 .LVL61-.LVL61
	.uleb128 .LVL62-.LVL61
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL62-.LVL61
	.uleb128 .LFE110-.LVL61
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS19:
	.uleb128 .LVU185
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU192
.LLST19:
	.byte	0x6
	.4byte	.LVL64
	.byte	0x4
	.uleb128 .LVL64-.LVL64
	.uleb128 .LVL65-.LVL64
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL65-.LVL64
	.uleb128 .LVL67-1-.LVL64
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS20:
	.uleb128 .LVU181
	.uleb128 .LVU182
	.uleb128 .LVU186
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU204
	.uleb128 .LVU212
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL62
	.byte	0x4
	.uleb128 .LVL62-.LVL62
	.uleb128 .LVL63-.LVL62
	.uleb128 0x9
	.byte	0xa
	.2byte	0x1680
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL64-.LVL62
	.uleb128 .LVL66-.LVL62
	.uleb128 0x9
	.byte	0xa
	.2byte	0x1680
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL66-.LVL62
	.uleb128 .LVL67-1-.LVL62
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL67-1-.LVL62
	.uleb128 .LVL69-.LVL62
	.uleb128 0x9
	.byte	0xa
	.2byte	0x1680
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.LVL62
	.uleb128 .LFE110-.LVL62
	.uleb128 0x9
	.byte	0xa
	.2byte	0x1680
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU181
	.uleb128 .LVU184
	.uleb128 .LVU193
	.uleb128 .LVU199
	.uleb128 .LVU204
	.uleb128 .LVU205
	.uleb128 .LVU212
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU215
.LLST21:
	.byte	0x6
	.4byte	.LVL62
	.byte	0x4
	.uleb128 .LVL62-.LVL62
	.uleb128 .LVL64-.LVL62
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL67-.LVL62
	.uleb128 .LVL68-.LVL62
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL69-.LVL62
	.uleb128 .LVL70-.LVL62
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL73-.LVL62
	.uleb128 .LVL74-1-.LVL62
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL74-1-.LVL62
	.uleb128 .LVL75-1-.LVL62
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-1-.LVL37
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL38-1-.LVL37
	.uleb128 .LVL50-.LVL37
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL50-.LVL37
	.uleb128 .LFE108-.LVL37
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
	.uleb128 .LVU90
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU119
.LLST6:
	.byte	0x6
	.4byte	.LVL44
	.byte	0x4
	.uleb128 .LVL44-.LVL44
	.uleb128 .LVL45-.LVL44
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL45-.LVL44
	.uleb128 .LVL46-.LVL44
	.uleb128 0x5
	.byte	0x76
	.sleb128 23040
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.LVL44
	.uleb128 .LVL47-.LVL44
	.uleb128 0x5
	.byte	0x76
	.sleb128 46080
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.LVL44
	.uleb128 .LVL48-.LVL44
	.uleb128 0x5
	.byte	0x76
	.sleb128 69120
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU92
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU119
.LLST8:
	.byte	0x6
	.4byte	.LVL44
	.byte	0x4
	.uleb128 .LVL44-.LVL44
	.uleb128 .LVL45-.LVL44
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-.LVL44
	.uleb128 .LVL46-.LVL44
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.LVL44
	.uleb128 .LVL47-.LVL44
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.LVL44
	.uleb128 .LVL48-.LVL44
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU131
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU159
.LLST10:
	.byte	0x6
	.4byte	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL52-.LVL51
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL52-.LVL51
	.uleb128 .LVL53-.LVL51
	.uleb128 0x5
	.byte	0x75
	.sleb128 23040
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.LVL51
	.uleb128 .LVL54-.LVL51
	.uleb128 0x5
	.byte	0x75
	.sleb128 46080
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.LVL51
	.uleb128 .LVL55-.LVL51
	.uleb128 0x5
	.byte	0x75
	.sleb128 69120
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU133
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU159
.LLST12:
	.byte	0x6
	.4byte	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL52-.LVL51
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.LVL51
	.uleb128 .LVL53-.LVL51
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.LVL51
	.uleb128 .LVL54-.LVL51
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.LVL51
	.uleb128 .LVL55-.LVL51
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL5-.LVL4
	.uleb128 .LVL6-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL4
	.uleb128 .LVL7-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL7-.LVL4
	.uleb128 .LVL8-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL4
	.uleb128 .LVL9-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-.LVL4
	.uleb128 .LVL10-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL4
	.uleb128 .LVL11-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL11-.LVL4
	.uleb128 .LVL12-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL4
	.uleb128 .LVL13-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL13-.LVL4
	.uleb128 .LVL14-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL4
	.uleb128 .LVL15-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL15-.LVL4
	.uleb128 .LVL16-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL4
	.uleb128 .LVL17-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL17-.LVL4
	.uleb128 .LVL18-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.LVL4
	.uleb128 .LVL19-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL19-.LVL4
	.uleb128 .LVL20-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL4
	.uleb128 .LVL21-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL21-.LVL4
	.uleb128 .LVL22-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL4
	.uleb128 .LVL23-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL23-.LVL4
	.uleb128 .LVL24-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL4
	.uleb128 .LVL25-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL25-.LVL4
	.uleb128 .LVL26-.LVL4
	.uleb128 0x4
	.byte	0x73
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL4
	.uleb128 .LVL27-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL27-.LVL4
	.uleb128 .LVL28-.LVL4
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
	.uleb128 .LVL28-.LVL4
	.uleb128 .LVL29-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL29-.LVL4
	.uleb128 .LVL30-.LVL4
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL30-.LVL4
	.uleb128 .LVL31-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.LVL4
	.uleb128 .LFE106-.LVL4
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
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
	.uleb128 .LFE111-.LVL0
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
	.uleb128 .LVU7
	.uleb128 0
.LLST1:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LFE111-.LVL2
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
.LVUS3:
	.uleb128 0
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL33-.LVL32
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL33-.LVL32
	.uleb128 .LVL34-1-.LVL32
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL34-1-.LVL32
	.uleb128 .LVL34-.LVL32
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
	.uleb128 .LVL34-.LVL32
	.uleb128 .LVL35-.LVL32
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL35-.LVL32
	.uleb128 .LFE107-.LVL32
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
	.uleb128 0
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL58-1-.LVL57
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL58-1-.LVL57
	.uleb128 .LVL59-.LVL57
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL59-.LVL57
	.uleb128 .LFE109-.LVL57
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
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
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
	.4byte	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB17-.LBB14
	.uleb128 .LBE17-.LBB14
	.byte	0
.LLRL7:
	.byte	0x5
	.4byte	.LBB15
	.byte	0x4
	.uleb128 .LBB15-.LBB15
	.uleb128 .LBE15-.LBB15
	.byte	0x4
	.uleb128 .LBB16-.LBB15
	.uleb128 .LBE16-.LBB15
	.byte	0
.LLRL9:
	.byte	0x5
	.4byte	.LBB18
	.byte	0x4
	.uleb128 .LBB18-.LBB18
	.uleb128 .LBE18-.LBB18
	.byte	0x4
	.uleb128 .LBB21-.LBB18
	.uleb128 .LBE21-.LBB18
	.byte	0
.LLRL11:
	.byte	0x5
	.4byte	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB20-.LBB19
	.uleb128 .LBE20-.LBB19
	.byte	0
.LLRL18:
	.byte	0x5
	.4byte	.LBB22
	.byte	0x4
	.uleb128 .LBB22-.LBB22
	.uleb128 .LBE22-.LBB22
	.byte	0x4
	.uleb128 .LBB23-.LBB22
	.uleb128 .LBE23-.LBB22
	.byte	0x4
	.uleb128 .LBB24-.LBB22
	.uleb128 .LBE24-.LBB22
	.byte	0
.LLRL24:
	.byte	0x5
	.4byte	.LBB25
	.byte	0x4
	.uleb128 .LBB25-.LBB25
	.uleb128 .LBE25-.LBB25
	.byte	0x4
	.uleb128 .LBB26-.LBB25
	.uleb128 .LBE26-.LBB25
	.byte	0
.LLRL28:
	.byte	0x5
	.4byte	.LBB27
	.byte	0x4
	.uleb128 .LBB27-.LBB27
	.uleb128 .LBE27-.LBB27
	.byte	0x4
	.uleb128 .LBB28-.LBB27
	.uleb128 .LBE28-.LBB27
	.byte	0
.LLRL33:
	.byte	0x5
	.4byte	.LBB35
	.byte	0x4
	.uleb128 .LBB35-.LBB35
	.uleb128 .LBE35-.LBB35
	.byte	0x4
	.uleb128 .LBB40-.LBB35
	.uleb128 .LBE40-.LBB35
	.byte	0
.LLRL36:
	.byte	0x7
	.4byte	.LFB111
	.uleb128 .LFE111-.LFB111
	.byte	0x7
	.4byte	.LFB106
	.uleb128 .LFE106-.LFB106
	.byte	0x7
	.4byte	.LFB107
	.uleb128 .LFE107-.LFB107
	.byte	0x7
	.4byte	.LFB108
	.uleb128 .LFE108-.LFB108
	.byte	0x7
	.4byte	.LFB109
	.uleb128 .LFE109-.LFB109
	.byte	0x7
	.4byte	.LFB110
	.uleb128 .LFE110-.LFB110
	.byte	0x7
	.4byte	.LFB112
	.uleb128 .LFE112-.LFB112
	.byte	0x7
	.4byte	.LFB113
	.uleb128 .LFE113-.LFB113
	.byte	0x7
	.4byte	.LFB114
	.uleb128 .LFE114-.LFB114
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF50:
	.ascii	"history0\000"
.LASF44:
	.ascii	"Thread_tag\000"
.LASF30:
	.ascii	"Handle\000"
.LASF75:
	.ascii	"NDSP_FORMAT_PCM8\000"
.LASF17:
	.ascii	"size_t\000"
.LASF25:
	.ascii	"uint64_t\000"
.LASF3:
	.ascii	"signed char\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF31:
	.ascii	"Result\000"
.LASF65:
	.ascii	"data_pcm8\000"
.LASF76:
	.ascii	"NDSP_FORMAT_PCM16\000"
.LASF109:
	.ascii	"DebugUI_Log\000"
.LASF73:
	.ascii	"NDSP_FORMAT_STEREO_PCM8\000"
.LASF104:
	.ascii	"svcGetThreadPriority\000"
.LASF115:
	.ascii	"printf\000"
.LASF149:
	.ascii	"__builtin_memset\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF97:
	.ascii	"s_audioBuffer0\000"
.LASF98:
	.ascii	"s_audioBuffer1\000"
.LASF141:
	.ascii	"audioExit\000"
.LASF67:
	.ascii	"data_adpcm\000"
.LASF96:
	.ascii	"s_waveBufs1\000"
.LASF4:
	.ascii	"__int8_t\000"
.LASF60:
	.ascii	"next\000"
.LASF21:
	.ascii	"int16_t\000"
.LASF15:
	.ascii	"long long int\000"
.LASF137:
	.ascii	"totalSamples\000"
.LASF114:
	.ascii	"ndspChnWaveBufAdd\000"
.LASF92:
	.ascii	"THREAD_AFFINITY\000"
.LASF28:
	.ascii	"opus_int16\000"
.LASF70:
	.ascii	"NDSP_FORMAT_MONO_PCM8\000"
.LASF40:
	.ascii	"state\000"
.LASF12:
	.ascii	"long int\000"
.LASF110:
	.ascii	"threadFree\000"
.LASF148:
	.ascii	"__builtin_puts\000"
.LASF94:
	.ascii	"WAVEBUF_SIZE\000"
.LASF53:
	.ascii	"ndspWaveBuf\000"
.LASF48:
	.ascii	"ndspOutputMode\000"
.LASF37:
	.ascii	"ResetType\000"
.LASF22:
	.ascii	"uint16_t\000"
.LASF33:
	.ascii	"double\000"
.LASF52:
	.ascii	"ndspAdpcmData\000"
.LASF72:
	.ascii	"NDSP_FORMAT_MONO_ADPCM\000"
.LASF34:
	.ascii	"RESET_ONESHOT\000"
.LASF138:
	.ascii	"buffer\000"
.LASF61:
	.ascii	"NDSP_WBUF_FREE\000"
.LASF35:
	.ascii	"RESET_STICKY\000"
.LASF13:
	.ascii	"__uint32_t\000"
.LASF136:
	.ascii	"waveBuf_\000"
.LASF133:
	.ascii	"audioThread0\000"
.LASF130:
	.ascii	"audioThread1\000"
.LASF151:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/misc/S"
	.ascii	"ound.c\000"
.LASF7:
	.ascii	"__int16_t\000"
.LASF101:
	.ascii	"s_quit0\000"
.LASF102:
	.ascii	"s_quit1\000"
.LASF86:
	.ascii	"threaid\000"
.LASF129:
	.ascii	"playopus\000"
.LASF83:
	.ascii	"ndspInterpType\000"
.LASF29:
	.ascii	"OggOpusFile\000"
.LASF32:
	.ascii	"ThreadFunc\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF117:
	.ascii	"linearFree\000"
.LASF87:
	.ascii	"opusFile\000"
.LASF131:
	.ascii	"sound\000"
.LASF78:
	.ascii	"NDSP_FRONT_BYPASS\000"
.LASF14:
	.ascii	"long unsigned int\000"
.LASF63:
	.ascii	"NDSP_WBUF_PLAYING\000"
.LASF10:
	.ascii	"short unsigned int\000"
.LASF77:
	.ascii	"NDSP_FORMAT_ADPCM\000"
.LASF51:
	.ascii	"history1\000"
.LASF26:
	.ascii	"_LOCK_T\000"
.LASF127:
	.ascii	"priority\000"
.LASF124:
	.ascii	"ndspChnReset\000"
.LASF100:
	.ascii	"s_event1\000"
.LASF132:
	.ascii	"opusFile_\000"
.LASF64:
	.ascii	"NDSP_WBUF_DONE\000"
.LASF121:
	.ascii	"ndspChnSetRate\000"
.LASF146:
	.ascii	"opusStrError\000"
.LASF84:
	.ascii	"path\000"
.LASF144:
	.ascii	"audioInit\000"
.LASF54:
	.ascii	"nsamples\000"
.LASF145:
	.ascii	"DoQuit\000"
.LASF113:
	.ascii	"DSP_FlushDataCache\000"
.LASF140:
	.ascii	"samples\000"
.LASF46:
	.ascii	"NDSP_OUTPUT_STEREO\000"
.LASF66:
	.ascii	"data_pcm16\000"
.LASF79:
	.ascii	"NDSP_3D_SURROUND_PREPROCESSED\000"
.LASF134:
	.ascii	"audioCallback\000"
.LASF123:
	.ascii	"ndspSetOutputMode\000"
.LASF122:
	.ascii	"ndspChnSetInterp\000"
.LASF135:
	.ascii	"_channel\000"
.LASF82:
	.ascii	"NDSP_INTERP_NONE\000"
.LASF105:
	.ascii	"op_open_file\000"
.LASF143:
	.ascii	"fillBuffer\000"
.LASF89:
	.ascii	"SAMPLE_RATE\000"
.LASF16:
	.ascii	"__uint64_t\000"
.LASF120:
	.ascii	"ndspChnSetFormat\000"
.LASF42:
	.ascii	"LightEvent\000"
.LASF2:
	.ascii	"float\000"
.LASF95:
	.ascii	"s_waveBufs0\000"
.LASF126:
	.ascii	"error\000"
.LASF39:
	.ascii	"LightLock\000"
.LASF142:
	.ascii	"nul_\000"
.LASF91:
	.ascii	"CHANNELS_PER_SAMPLE\000"
.LASF153:
	.ascii	"tag_ndspWaveBuf\000"
.LASF81:
	.ascii	"NDSP_INTERP_LINEAR\000"
.LASF38:
	.ascii	"_Bool\000"
.LASF23:
	.ascii	"int32_t\000"
.LASF6:
	.ascii	"unsigned char\000"
.LASF108:
	.ascii	"op_free\000"
.LASF8:
	.ascii	"short int\000"
.LASF106:
	.ascii	"ndspSetCallback\000"
.LASF112:
	.ascii	"LightEvent_Wait\000"
.LASF99:
	.ascii	"s_event\000"
.LASF43:
	.ascii	"Thread\000"
.LASF24:
	.ascii	"uint32_t\000"
.LASF18:
	.ascii	"long double\000"
.LASF27:
	.ascii	"char\000"
.LASF57:
	.ascii	"looping\000"
.LASF139:
	.ascii	"bufferSize\000"
.LASF55:
	.ascii	"adpcm_data\000"
.LASF9:
	.ascii	"__uint16_t\000"
.LASF49:
	.ascii	"index\000"
.LASF59:
	.ascii	"sequence_id\000"
.LASF11:
	.ascii	"__int32_t\000"
.LASF103:
	.ascii	"threadCreate\000"
.LASF116:
	.ascii	"op_read_stereo\000"
.LASF56:
	.ascii	"offset\000"
.LASF152:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF125:
	.ascii	"LightEvent_Signal\000"
.LASF19:
	.ascii	"int8_t\000"
.LASF111:
	.ascii	"threadJoin\000"
.LASF80:
	.ascii	"NDSP_INTERP_POLYPHASE\000"
.LASF128:
	.ascii	"threadId\000"
.LASF119:
	.ascii	"linearAlloc\000"
.LASF118:
	.ascii	"memset\000"
.LASF74:
	.ascii	"NDSP_FORMAT_STEREO_PCM16\000"
.LASF58:
	.ascii	"status\000"
.LASF45:
	.ascii	"NDSP_OUTPUT_MONO\000"
.LASF36:
	.ascii	"RESET_PULSE\000"
.LASF20:
	.ascii	"uint8_t\000"
.LASF150:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF107:
	.ascii	"LightEvent_Init\000"
.LASF71:
	.ascii	"NDSP_FORMAT_MONO_PCM16\000"
.LASF88:
	.ascii	"Sound\000"
.LASF93:
	.ascii	"THREAD_STACK_SZ\000"
.LASF69:
	.ascii	"ndspCallback\000"
.LASF47:
	.ascii	"NDSP_OUTPUT_SURROUND\000"
.LASF68:
	.ascii	"data_vaddr\000"
.LASF147:
	.ascii	"puts\000"
.LASF41:
	.ascii	"lock\000"
.LASF90:
	.ascii	"SAMPLES_PER_BUF\000"
.LASF85:
	.ascii	"background\000"
.LASF62:
	.ascii	"NDSP_WBUF_QUEUED\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
