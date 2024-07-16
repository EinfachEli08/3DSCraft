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
	.file	"state_machine.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/gui/state_machine/state_machine.c"
	.section	.text.state_machine_create,"ax",%progbits
	.align	2
	.global	state_machine_create
	.syntax unified
	.arm
	.type	state_machine_create, %function
state_machine_create:
.LFB5:
	.loc 1 9 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 10 2 view .LVU1
.LVL0:
	.loc 1 11 2 view .LVU2
	.loc 1 11 28 is_stmt 0 view .LVU3
	mov	r1, #8
	mov	r0, #1
	b	calloc
.LVL1:
	.cfi_endproc
.LFE5:
	.size	state_machine_create, .-state_machine_create
	.section	.text.state_machine_delete,"ax",%progbits
	.align	2
	.global	state_machine_delete
	.syntax unified
	.arm
	.type	state_machine_delete, %function
state_machine_delete:
.LVL2:
.LFB6:
	.loc 1 16 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 17 2 view .LVU5
	b	free
.LVL3:
	.loc 1 17 2 is_stmt 0 view .LVU6
	.cfi_endproc
.LFE6:
	.size	state_machine_delete, .-state_machine_delete
	.section	.text.state_machine_set_current_state,"ax",%progbits
	.align	2
	.global	state_machine_set_current_state
	.syntax unified
	.arm
	.type	state_machine_set_current_state, %function
state_machine_set_current_state:
.LVL4:
.LFB7:
	.loc 1 22 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 23 2 view .LVU8
	.loc 1 23 25 is_stmt 0 view .LVU9
	str	r1, [r0]
	.loc 1 24 1 view .LVU10
	bx	lr
	.cfi_endproc
.LFE7:
	.size	state_machine_set_current_state, .-state_machine_set_current_state
	.section	.text.state_machine_get_current_state,"ax",%progbits
	.align	2
	.global	state_machine_get_current_state
	.syntax unified
	.arm
	.type	state_machine_get_current_state, %function
state_machine_get_current_state:
.LVL5:
.LFB8:
	.loc 1 27 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 28 2 view .LVU12
	.loc 1 29 1 is_stmt 0 view .LVU13
	ldr	r0, [r0]
.LVL6:
	.loc 1 29 1 view .LVU14
	bx	lr
	.cfi_endproc
.LFE8:
	.size	state_machine_get_current_state, .-state_machine_get_current_state
	.section	.text.state_machine_run,"ax",%progbits
	.align	2
	.global	state_machine_run
	.syntax unified
	.arm
	.type	state_machine_run, %function
state_machine_run:
.LVL7:
.LFB9:
	.loc 1 32 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 33 2 view .LVU16
	.loc 1 35 2 view .LVU17
.LBB12:
.LBI12:
	.loc 1 46 5 view .LVU18
.LBB13:
	.loc 1 48 2 view .LVU19
	.loc 1 49 2 view .LVU20
.LBB14:
.LBI14:
	.loc 1 26 12 view .LVU21
.LBB15:
	.loc 1 28 2 view .LVU22
	.loc 1 28 16 is_stmt 0 view .LVU23
	ldr	r3, [r0]
.LVL8:
	.loc 1 28 16 view .LVU24
.LBE15:
.LBE14:
	.loc 1 50 2 is_stmt 1 view .LVU25
	.loc 1 50 2 is_stmt 0 view .LVU26
.LBE13:
.LBE12:
	.loc 1 35 5 discriminator 1 view .LVU27
	cmp	r3, #0
	bxeq	lr
	.loc 1 36 3 is_stmt 1 view .LVU28
.LVL9:
	.loc 1 37 3 view .LVU29
	bx	r3	@ indirect register sibling call
.LVL10:
	.loc 1 37 3 is_stmt 0 view .LVU30
	.cfi_endproc
.LFE9:
	.size	state_machine_run, .-state_machine_run
	.section	.text.state_machine_exit,"ax",%progbits
	.align	2
	.global	state_machine_exit
	.syntax unified
	.arm
	.type	state_machine_exit, %function
state_machine_exit:
.LVL11:
.LFB10:
	.loc 1 42 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 43 2 view .LVU32
.LBB16:
.LBB17:
	.loc 1 23 25 is_stmt 0 view .LVU33
	mov	r3, #0
.LVL12:
	.loc 1 23 25 view .LVU34
.LBE17:
.LBI16:
	.loc 1 21 6 is_stmt 1 view .LVU35
.LBB18:
	.loc 1 23 2 view .LVU36
	.loc 1 23 25 is_stmt 0 view .LVU37
	str	r3, [r0]
.LVL13:
	.loc 1 23 25 view .LVU38
.LBE18:
.LBE16:
	.loc 1 44 1 view .LVU39
	bx	lr
	.cfi_endproc
.LFE10:
	.size	state_machine_exit, .-state_machine_exit
	.section	.text.state_machine_state_is_valid,"ax",%progbits
	.align	2
	.global	state_machine_state_is_valid
	.syntax unified
	.arm
	.type	state_machine_state_is_valid, %function
state_machine_state_is_valid:
.LVL14:
.LFB11:
	.loc 1 47 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 48 2 view .LVU41
	.loc 1 49 2 view .LVU42
.LBB19:
.LBI19:
	.loc 1 26 12 view .LVU43
.LBB20:
	.loc 1 28 2 view .LVU44
	.loc 1 28 2 is_stmt 0 view .LVU45
.LBE20:
.LBE19:
	.loc 1 50 2 is_stmt 1 view .LVU46
	.loc 1 50 23 is_stmt 0 view .LVU47
	ldr	r0, [r0]
.LVL15:
	.loc 1 51 1 view .LVU48
	subs	r0, r0, #0
	.loc 1 51 1 view .LVU49
	movne	r0, #1
.LVL16:
	.loc 1 51 1 view .LVU50
	bx	lr
	.cfi_endproc
.LFE11:
	.size	state_machine_state_is_valid, .-state_machine_state_is_valid
	.section	.text.state_machine_set_context,"ax",%progbits
	.align	2
	.global	state_machine_set_context
	.syntax unified
	.arm
	.type	state_machine_set_context, %function
state_machine_set_context:
.LVL17:
.LFB12:
	.loc 1 54 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 55 2 view .LVU52
	.loc 1 55 19 is_stmt 0 view .LVU53
	str	r1, [r0, #4]
	.loc 1 56 1 view .LVU54
	bx	lr
	.cfi_endproc
.LFE12:
	.size	state_machine_set_context, .-state_machine_set_context
	.section	.text.state_machine_get_context,"ax",%progbits
	.align	2
	.global	state_machine_get_context
	.syntax unified
	.arm
	.type	state_machine_get_context, %function
state_machine_get_context:
.LVL18:
.LFB13:
	.loc 1 59 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 60 2 view .LVU56
	.loc 1 61 1 is_stmt 0 view .LVU57
	ldr	r0, [r0, #4]
.LVL19:
	.loc 1 61 1 view .LVU58
	bx	lr
	.cfi_endproc
.LFE13:
	.size	state_machine_get_context, .-state_machine_get_context
	.text
.Letext0:
	.file 2 "C:/Users/Elias/CLionProjects/3DSCraft/include/gui/state_machine/state_machine.h"
	.file 3 "C:/devkitPro/devkitARM/lib/gcc/arm-none-eabi/13.2.0/include/stddef.h"
	.file 4 "C:/devkitPro/devkitARM/arm-none-eabi/include/stdlib.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3e5
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1d
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.LLRL13
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0xd6
	.byte	0x16
	.4byte	0x2d
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x8
	.byte	0x2
	.byte	0x9
	.byte	0x10
	.4byte	0xae
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0xa
	.byte	0xa
	.4byte	0xbe
	.byte	0
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x10
	.byte	0x9
	.4byte	0x7f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	0xb9
	.uleb128 0x3
	.4byte	0xb9
	.byte	0
	.uleb128 0x4
	.4byte	0x88
	.uleb128 0x4
	.4byte	0xae
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x2
	.byte	0x11
	.byte	0x3
	.4byte	0x88
	.uleb128 0x18
	.4byte	0xc3
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x2
	.byte	0x13
	.byte	0x10
	.4byte	0xe0
	.uleb128 0x4
	.4byte	0xe5
	.uleb128 0xd
	.4byte	0xf0
	.uleb128 0x3
	.4byte	0xf0
	.byte	0
	.uleb128 0x4
	.4byte	0xc3
	.uleb128 0x19
	.4byte	.LASF23
	.byte	0x4
	.byte	0x5e
	.byte	0x6
	.4byte	0x107
	.uleb128 0x3
	.4byte	0x7f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF17
	.byte	0x4
	.byte	0x5a
	.byte	0x7
	.4byte	0x7f
	.4byte	0x122
	.uleb128 0x3
	.4byte	0x34
	.uleb128 0x3
	.4byte	0x34
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x3a
	.byte	0x7
	.4byte	0x7f
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14f
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3a
	.byte	0x38
	.4byte	0x14f
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x4
	.4byte	0xcf
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x35
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x183
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x35
	.byte	0x31
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x35
	.byte	0x40
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x2e
	.byte	0x5
	.4byte	0x40
	.4byte	0x1aa
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2e
	.byte	0x39
	.4byte	0x14f
	.uleb128 0x1b
	.4byte	.LASF11
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0xd4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x29
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x29
	.byte	0x2a
	.4byte	0xf0
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xb
	.4byte	0x2bb
	.4byte	.LBI16
	.byte	.LVU35
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x2b
	.byte	0x2
	.uleb128 0x2
	.4byte	0x2d3
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2
	.4byte	0x2c8
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x1f
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1f
	.byte	0x29
	.4byte	0xf0
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1c
	.4byte	.LASF11
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1d
	.4byte	0x183
	.4byte	.LBI12
	.byte	.LVU18
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	0x28c
	.uleb128 0x2
	.4byte	0x192
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x10
	.4byte	0x19d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xb
	.4byte	0x2a0
	.4byte	.LBI14
	.byte	.LVU21
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x31
	.byte	0x12
	.uleb128 0x2
	.4byte	0x2af
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL10
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1a
	.byte	0xc
	.4byte	0xd4
	.4byte	0x2bb
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1a
	.byte	0x43
	.4byte	0x14f
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF24
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.byte	0x1
	.4byte	0x2df
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x15
	.byte	0x37
	.4byte	0xf0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x15
	.byte	0x4b
	.4byte	0xd4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0xf
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31e
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0xf
	.byte	0x2c
	.4byte	0xf0
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0xf5
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x8
	.byte	0x12
	.4byte	0xf0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x359
	.uleb128 0x20
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.byte	0x14
	.4byte	0xf0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x107
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x2bb
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37b
	.uleb128 0x13
	.4byte	0x2c8
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	0x2d3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x12
	.4byte	0x2a0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39c
	.uleb128 0x2
	.4byte	0x2af
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x21
	.4byte	0x183
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	0x192
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x10
	.4byte	0x19d
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xb
	.4byte	0x2a0
	.4byte	.LBI19
	.byte	.LVU43
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x31
	.byte	0x12
	.uleb128 0x2
	.4byte	0x2af
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS12:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
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
	.uleb128 .LFE13-.LVL18
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
	.uleb128 .LVU34
	.uleb128 .LVU38
.LLST7:
	.byte	0x8
	.4byte	.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU34
	.uleb128 .LVU38
.LLST8:
	.byte	0x8
	.4byte	.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL10-1-.LVL7
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL10-1-.LVL7
	.uleb128 .LFE9-.LVL7
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
	.uleb128 .LVU29
	.uleb128 .LVU30
.LLST3:
	.byte	0x8
	.4byte	.LVL9
	.uleb128 .LVL10-1-.LVL9
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS4:
	.uleb128 .LVU18
	.uleb128 .LVU26
.LLST4:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS5:
	.uleb128 .LVU24
	.uleb128 .LVU30
.LLST5:
	.byte	0x8
	.4byte	.LVL8
	.uleb128 .LVL10-1-.LVL8
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS6:
	.uleb128 .LVU21
	.uleb128 .LVU24
.LLST6:
	.byte	0x8
	.4byte	.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-1-.LVL2
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-1-.LVL2
	.uleb128 .LFE6-.LVL2
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
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.LVL5
	.uleb128 .LFE8-.LVL5
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
.LVUS9:
	.uleb128 0
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LFE11-.LVL14
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
.LVUS10:
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LVL16-.LVL14
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL16-.LVL14
	.uleb128 .LFE11-.LVL14
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
	.byte	0
.LVUS11:
	.uleb128 .LVU43
	.uleb128 .LVU45
.LLST11:
	.byte	0x8
	.4byte	.LVL14
	.uleb128 .LVL14-.LVL14
	.uleb128 0x1
	.byte	0x50
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
.LLRL13:
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
	.byte	0x7
	.4byte	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF17:
	.ascii	"calloc\000"
.LASF13:
	.ascii	"size_t\000"
.LASF19:
	.ascii	"state_machine_set_context\000"
.LASF25:
	.ascii	"state\000"
.LASF30:
	.ascii	"C:/Users/Elias/CLionProjects/3DSCraft/source/gui/st"
	.ascii	"ate_machine/state_machine.c\000"
.LASF21:
	.ascii	"state_machine_run\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF18:
	.ascii	"state_machine_state_is_valid\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF15:
	.ascii	"state_func\000"
.LASF32:
	.ascii	"state_machine_s\000"
.LASF14:
	.ascii	"state_machine_t\000"
.LASF11:
	.ascii	"current_state\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF29:
	.ascii	"GNU C17 13.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF12:
	.ascii	"context\000"
.LASF23:
	.ascii	"free\000"
.LASF2:
	.ascii	"long long int\000"
.LASF27:
	.ascii	"state_machine_get_context\000"
.LASF20:
	.ascii	"state_machine_exit\000"
.LASF6:
	.ascii	"short int\000"
.LASF31:
	.ascii	"C:\\\\Users\\\\Elias\\\\CLionProjects\\\\3DSCraft\\"
	.ascii	"\\build\000"
.LASF22:
	.ascii	"state_machine_get_current_state\000"
.LASF8:
	.ascii	"long int\000"
.LASF10:
	.ascii	"char\000"
.LASF3:
	.ascii	"long double\000"
.LASF28:
	.ascii	"state_machine_create\000"
.LASF4:
	.ascii	"signed char\000"
.LASF16:
	.ascii	"machine\000"
.LASF26:
	.ascii	"state_machine_delete\000"
.LASF24:
	.ascii	"state_machine_set_current_state\000"
	.ident	"GCC: (devkitARM release 63) 13.2.0"
