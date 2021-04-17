.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B3320
/* B3F20 800B3320 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B3F24 800B3324 AFBF0024 */  sw         $ra, 0x24($sp)
/* B3F28 800B3328 AFA40038 */  sw         $a0, 0x38($sp)
/* B3F2C 800B332C AFB20020 */  sw         $s2, 0x20($sp)
/* B3F30 800B3330 AFB1001C */  sw         $s1, 0x1c($sp)
/* B3F34 800B3334 AFB00018 */  sw         $s0, 0x18($sp)
/* B3F38 800B3338 0C02C0C8 */  jal        func_800B0320
/* B3F3C 800B333C 00000000 */   nop
/* B3F40 800B3340 00408025 */  or         $s0, $v0, $zero
/* B3F44 800B3344 8FAE0038 */  lw         $t6, 0x38($sp)
/* B3F48 800B3348 15C00003 */  bnez       $t6, .L800B3358
/* B3F4C 800B334C 00000000 */   nop
/* B3F50 800B3350 10000003 */  b          .L800B3360
/* B3F54 800B3354 24110004 */   addiu     $s1, $zero, 4
.L800B3358:
/* B3F58 800B3358 8FAF0038 */  lw         $t7, 0x38($sp)
/* B3F5C 800B335C 95F10010 */  lhu        $s1, 0x10($t7)
.L800B3360:
/* B3F60 800B3360 02209025 */  or         $s2, $s1, $zero
/* B3F64 800B3364 24010002 */  addiu      $at, $zero, 2
/* B3F68 800B3368 12410011 */  beq        $s2, $at, .L800B33B0
/* B3F6C 800B336C 00000000 */   nop
/* B3F70 800B3370 24010004 */  addiu      $at, $zero, 4
/* B3F74 800B3374 12410006 */  beq        $s2, $at, .L800B3390
/* B3F78 800B3378 00000000 */   nop
/* B3F7C 800B337C 24010008 */  addiu      $at, $zero, 8
/* B3F80 800B3380 1241000B */  beq        $s2, $at, .L800B33B0
/* B3F84 800B3384 00000000 */   nop
/* B3F88 800B3388 10000012 */  b          .L800B33D4
/* B3F8C 800B338C 00000000 */   nop
.L800B3390:
/* B3F90 800B3390 3C19800D */  lui        $t9, %hi(D_800CC260)
/* B3F94 800B3394 8F39C260 */  lw         $t9, %lo(D_800CC260)($t9)
/* B3F98 800B3398 24180001 */  addiu      $t8, $zero, 1
/* B3F9C 800B339C A7380010 */  sh         $t8, 0x10($t9)
/* B3FA0 800B33A0 0C02618F */  jal        func_8009863C
/* B3FA4 800B33A4 00002025 */   or        $a0, $zero, $zero
/* B3FA8 800B33A8 1000000A */  b          .L800B33D4
/* B3FAC 800B33AC 00000000 */   nop
.L800B33B0:
/* B3FB0 800B33B0 8FA90038 */  lw         $t1, 0x38($sp)
/* B3FB4 800B33B4 24080001 */  addiu      $t0, $zero, 1
/* B3FB8 800B33B8 A5280010 */  sh         $t0, 0x10($t1)
/* B3FBC 800B33BC 8FAA0038 */  lw         $t2, 0x38($sp)
/* B3FC0 800B33C0 8D440008 */  lw         $a0, 8($t2)
/* B3FC4 800B33C4 0C026250 */  jal        func_80098940
/* B3FC8 800B33C8 01402825 */   or        $a1, $t2, $zero
/* B3FCC 800B33CC 10000001 */  b          .L800B33D4
/* B3FD0 800B33D0 00000000 */   nop
.L800B33D4:
/* B3FD4 800B33D4 0C02C0D0 */  jal        func_800B0340
/* B3FD8 800B33D8 02002025 */   or        $a0, $s0, $zero
/* B3FDC 800B33DC 10000001 */  b          .L800B33E4
/* B3FE0 800B33E0 00000000 */   nop
.L800B33E4:
/* B3FE4 800B33E4 8FBF0024 */  lw         $ra, 0x24($sp)
/* B3FE8 800B33E8 8FB00018 */  lw         $s0, 0x18($sp)
/* B3FEC 800B33EC 8FB1001C */  lw         $s1, 0x1c($sp)
/* B3FF0 800B33F0 8FB20020 */  lw         $s2, 0x20($sp)
/* B3FF4 800B33F4 03E00008 */  jr         $ra
/* B3FF8 800B33F8 27BD0038 */   addiu     $sp, $sp, 0x38
/* B3FFC 800B33FC 00000000 */  nop
