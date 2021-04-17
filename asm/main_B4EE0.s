.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B42E0
/* B4EE0 800B42E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4EE4 800B42E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4EE8 800B42E8 AFA40018 */  sw         $a0, 0x18($sp)
/* B4EEC 800B42EC AFA5001C */  sw         $a1, 0x1c($sp)
/* B4EF0 800B42F0 8FAE0018 */  lw         $t6, 0x18($sp)
/* B4EF4 800B42F4 31CF0003 */  andi       $t7, $t6, 3
/* B4EF8 800B42F8 15E00003 */  bnez       $t7, .L800B4308
/* B4EFC 800B42FC 00000000 */   nop
/* B4F00 800B4300 10000007 */  b          .L800B4320
/* B4F04 800B4304 00000000 */   nop
.L800B4308:
/* B4F08 800B4308 3C04800D */  lui        $a0, %hi(D_800D3A80)
/* B4F0C 800B430C 3C05800D */  lui        $a1, %hi(D_800D3A98)
/* B4F10 800B4310 24A53A98 */  addiu      $a1, $a1, %lo(D_800D3A98)
/* B4F14 800B4314 24843A80 */  addiu      $a0, $a0, %lo(D_800D3A80)
/* B4F18 800B4318 0C02C480 */  jal        func_800B1200
/* B4F1C 800B431C 24060033 */   addiu     $a2, $zero, 0x33
.L800B4320:
/* B4F20 800B4320 8FB8001C */  lw         $t8, 0x1c($sp)
/* B4F24 800B4324 13000003 */  beqz       $t8, .L800B4334
/* B4F28 800B4328 00000000 */   nop
/* B4F2C 800B432C 10000007 */  b          .L800B434C
/* B4F30 800B4330 00000000 */   nop
.L800B4334:
/* B4F34 800B4334 3C04800D */  lui        $a0, %hi(D_800D3AAC)
/* B4F38 800B4338 3C05800D */  lui        $a1, %hi(D_800D3ABC)
/* B4F3C 800B433C 24A53ABC */  addiu      $a1, $a1, %lo(D_800D3ABC)
/* B4F40 800B4340 24843AAC */  addiu      $a0, $a0, %lo(D_800D3AAC)
/* B4F44 800B4344 0C02C480 */  jal        func_800B1200
/* B4F48 800B4348 24060034 */   addiu     $a2, $zero, 0x34
.L800B434C:
/* B4F4C 800B434C 0C02B6D8 */  jal        func_800ADB60
/* B4F50 800B4350 00000000 */   nop
/* B4F54 800B4354 10400003 */  beqz       $v0, .L800B4364
/* B4F58 800B4358 00000000 */   nop
/* B4F5C 800B435C 1000000B */  b          .L800B438C
/* B4F60 800B4360 2402FFFF */   addiu     $v0, $zero, -1
.L800B4364:
/* B4F64 800B4364 8FB90018 */  lw         $t9, 0x18($sp)
/* B4F68 800B4368 3C01A000 */  lui        $at, 0xa000
/* B4F6C 800B436C 8FAA001C */  lw         $t2, 0x1c($sp)
/* B4F70 800B4370 03214025 */  or         $t0, $t9, $at
/* B4F74 800B4374 8D090000 */  lw         $t1, ($t0)
/* B4F78 800B4378 AD490000 */  sw         $t1, ($t2)
/* B4F7C 800B437C 10000003 */  b          .L800B438C
/* B4F80 800B4380 00001025 */   or        $v0, $zero, $zero
/* B4F84 800B4384 10000001 */  b          .L800B438C
/* B4F88 800B4388 00000000 */   nop
.L800B438C:
/* B4F8C 800B438C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4F90 800B4390 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4F94 800B4394 03E00008 */  jr         $ra
/* B4F98 800B4398 00000000 */   nop
/* B4F9C 800B439C 00000000 */  nop
