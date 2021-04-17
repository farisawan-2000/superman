.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C3D10
/* C4910 800C3D10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C4914 800C3D14 AFBF001C */  sw         $ra, 0x1c($sp)
/* C4918 800C3D18 AFA40028 */  sw         $a0, 0x28($sp)
/* C491C 800C3D1C 0C033DD4 */  jal        func_800CF750
/* C4920 800C3D20 AFB00018 */   sw        $s0, 0x18($sp)
/* C4924 800C3D24 93AE002B */  lbu        $t6, 0x2b($sp)
/* C4928 800C3D28 00408025 */  or         $s0, $v0, $zero
/* C492C 800C3D2C 11C00007 */  beqz       $t6, .L800C3D4C
/* C4930 800C3D30 00000000 */   nop
/* C4934 800C3D34 3C0F800E */  lui        $t7, %hi(D_800DB1F4)
/* C4938 800C3D38 8DEFB1F4 */  lw         $t7, %lo(D_800DB1F4)($t7)
/* C493C 800C3D3C 95F80000 */  lhu        $t8, ($t7)
/* C4940 800C3D40 37190020 */  ori        $t9, $t8, 0x20
/* C4944 800C3D44 10000007 */  b          .L800C3D64
/* C4948 800C3D48 A5F90000 */   sh        $t9, ($t7)
.L800C3D4C:
/* C494C 800C3D4C 3C08800E */  lui        $t0, %hi(D_800DB1F4)
/* C4950 800C3D50 8D08B1F4 */  lw         $t0, %lo(D_800DB1F4)($t0)
/* C4954 800C3D54 2401FFDF */  addiu      $at, $zero, -0x21
/* C4958 800C3D58 95090000 */  lhu        $t1, ($t0)
/* C495C 800C3D5C 01215024 */  and        $t2, $t1, $at
/* C4960 800C3D60 A50A0000 */  sh         $t2, ($t0)
.L800C3D64:
/* C4964 800C3D64 0C033DDC */  jal        func_800CF770
/* C4968 800C3D68 02002025 */   or        $a0, $s0, $zero
/* C496C 800C3D6C 8FBF001C */  lw         $ra, 0x1c($sp)
/* C4970 800C3D70 8FB00018 */  lw         $s0, 0x18($sp)
/* C4974 800C3D74 27BD0028 */  addiu      $sp, $sp, 0x28
/* C4978 800C3D78 03E00008 */  jr         $ra
/* C497C 800C3D7C 00000000 */   nop

glabel func_800C3D80
/* C4980 800C3D80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4984 800C3D84 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4988 800C3D88 AFA40018 */  sw         $a0, 0x18($sp)
/* C498C 800C3D8C 0C0336B4 */  jal        func_800CDAD0
/* C4990 800C3D90 AFA5001C */   sw        $a1, 0x1c($sp)
/* C4994 800C3D94 10400003 */  beqz       $v0, .L800C3DA4
/* C4998 800C3D98 00000000 */   nop
/* C499C 800C3D9C 10000008 */  b          .L800C3DC0
/* C49A0 800C3DA0 2402FFFF */   addiu     $v0, $zero, -1
.L800C3DA4:
/* C49A4 800C3DA4 8FAE0018 */  lw         $t6, 0x18($sp)
/* C49A8 800C3DA8 3C01A000 */  lui        $at, 0xa000
/* C49AC 800C3DAC 8FB9001C */  lw         $t9, 0x1c($sp)
/* C49B0 800C3DB0 01C17825 */  or         $t7, $t6, $at
/* C49B4 800C3DB4 8DF80000 */  lw         $t8, ($t7)
/* C49B8 800C3DB8 00001025 */  or         $v0, $zero, $zero
/* C49BC 800C3DBC AF380000 */  sw         $t8, ($t9)
.L800C3DC0:
/* C49C0 800C3DC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C49C4 800C3DC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C49C8 800C3DC8 03E00008 */  jr         $ra
/* C49CC 800C3DCC 00000000 */   nop

glabel func_800C3DD0
/* C49D0 800C3DD0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C49D4 800C3DD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C49D8 800C3DD8 8C820040 */  lw         $v0, 0x40($a0)
/* C49DC 800C3DDC A7A00020 */  sh         $zero, 0x20($sp)
/* C49E0 800C3DE0 8C8E003C */  lw         $t6, 0x3c($a0)
/* C49E4 800C3DE4 00A03025 */  or         $a2, $a1, $zero
/* C49E8 800C3DE8 27A50020 */  addiu      $a1, $sp, 0x20
/* C49EC 800C3DEC 000E7880 */  sll        $t7, $t6, 2
/* C49F0 800C3DF0 01EE7823 */  subu       $t7, $t7, $t6
/* C49F4 800C3DF4 000F7900 */  sll        $t7, $t7, 4
/* C49F8 800C3DF8 01E2C021 */  addu       $t8, $t7, $v0
/* C49FC 800C3DFC AFB80024 */  sw         $t8, 0x24($sp)
/* C4A00 800C3E00 0C03031B */  jal        func_800C0C6C
/* C4A04 800C3E04 24840014 */   addiu     $a0, $a0, 0x14
/* C4A08 800C3E08 8FBF0014 */  lw         $ra, 0x14($sp)
/* C4A0C 800C3E0C 27BD0030 */  addiu      $sp, $sp, 0x30
/* C4A10 800C3E10 03E00008 */  jr         $ra
/* C4A14 800C3E14 00000000 */   nop
/* C4A18 800C3E18 00000000 */  nop
/* C4A1C 800C3E1C 00000000 */  nop
