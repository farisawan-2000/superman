.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D3D00
/* D4900 800D3D00 3C0EA450 */  lui        $t6, %hi(D_A450000C)
/* D4904 800D3D04 8DC4000C */  lw         $a0, %lo(D_A450000C)($t6)
/* D4908 800D3D08 3C018000 */  lui        $at, 0x8000
/* D490C 800D3D0C 27BDFFF8 */  addiu      $sp, $sp, -8
/* D4910 800D3D10 00817824 */  and        $t7, $a0, $at
/* D4914 800D3D14 11E00003 */  beqz       $t7, .L800D3D24
/* D4918 800D3D18 00000000 */   nop
/* D491C 800D3D1C 10000002 */  b          .L800D3D28
/* D4920 800D3D20 24020001 */   addiu     $v0, $zero, 1
.L800D3D24:
/* D4924 800D3D24 00001025 */  or         $v0, $zero, $zero
.L800D3D28:
/* D4928 800D3D28 03E00008 */  jr         $ra
/* D492C 800D3D2C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800D3D30
/* D4930 800D3D30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D4934 800D3D34 AFBF001C */  sw         $ra, 0x1c($sp)
/* D4938 800D3D38 0C033DD4 */  jal        func_800CF750
/* D493C 800D3D3C AFB00018 */   sw        $s0, 0x18($sp)
/* D4940 800D3D40 3C0E800E */  lui        $t6, %hi(D_800DB1F0)
/* D4944 800D3D44 8DCEB1F0 */  lw         $t6, %lo(D_800DB1F0)($t6)
/* D4948 800D3D48 00408025 */  or         $s0, $v0, $zero
/* D494C 800D3D4C 02002025 */  or         $a0, $s0, $zero
/* D4950 800D3D50 8DCF0004 */  lw         $t7, 4($t6)
/* D4954 800D3D54 0C033DDC */  jal        func_800CF770
/* D4958 800D3D58 AFAF0020 */   sw        $t7, 0x20($sp)
/* D495C 800D3D5C 8FBF001C */  lw         $ra, 0x1c($sp)
/* D4960 800D3D60 8FA20020 */  lw         $v0, 0x20($sp)
/* D4964 800D3D64 8FB00018 */  lw         $s0, 0x18($sp)
/* D4968 800D3D68 03E00008 */  jr         $ra
/* D496C 800D3D6C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800D3D70
/* D4970 800D3D70 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* D4974 800D3D74 8DC50010 */  lw         $a1, %lo(D_A4040010)($t6)
/* D4978 800D3D78 27BDFFF8 */  addiu      $sp, $sp, -8
/* D497C 800D3D7C 30AF0001 */  andi       $t7, $a1, 1
/* D4980 800D3D80 15E00003 */  bnez       $t7, .L800D3D90
/* D4984 800D3D84 00000000 */   nop
/* D4988 800D3D88 10000004 */  b          .L800D3D9C
/* D498C 800D3D8C 2402FFFF */   addiu     $v0, $zero, -1
.L800D3D90:
/* D4990 800D3D90 3C18A408 */  lui        $t8, 0xa408
/* D4994 800D3D94 AF040000 */  sw         $a0, ($t8)
/* D4998 800D3D98 00001025 */  or         $v0, $zero, $zero
.L800D3D9C:
/* D499C 800D3D9C 03E00008 */  jr         $ra
/* D49A0 800D3DA0 27BD0008 */   addiu     $sp, $sp, 8
/* D49A4 800D3DA4 00000000 */  nop
/* D49A8 800D3DA8 00000000 */  nop
/* D49AC 800D3DAC 00000000 */  nop
