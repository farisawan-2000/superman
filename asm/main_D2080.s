.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D1480
/* D2080 800D1480 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D2084 800D1484 AFBF0014 */  sw         $ra, 0x14($sp)
/* D2088 800D1488 240E000F */  addiu      $t6, $zero, 0xf
/* D208C 800D148C A7AE0018 */  sh         $t6, 0x18($sp)
/* D2090 800D1490 27A50018 */  addiu      $a1, $sp, 0x18
/* D2094 800D1494 24840048 */  addiu      $a0, $a0, 0x48
/* D2098 800D1498 0C03031B */  jal        func_800C0C6C
/* D209C 800D149C 00003025 */   or        $a2, $zero, $zero
/* D20A0 800D14A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* D20A4 800D14A4 27BD0028 */  addiu      $sp, $sp, 0x28
/* D20A8 800D14A8 03E00008 */  jr         $ra
/* D20AC 800D14AC 00000000 */   nop

glabel func_800D14B0
/* D20B0 800D14B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D20B4 800D14B4 AFA50024 */  sw         $a1, 0x24($sp)
/* D20B8 800D14B8 8FAE0024 */  lw         $t6, 0x24($sp)
/* D20BC 800D14BC AFBF0014 */  sw         $ra, 0x14($sp)
/* D20C0 800D14C0 AFA40020 */  sw         $a0, 0x20($sp)
/* D20C4 800D14C4 15C00003 */  bnez       $t6, .L800D14D4
/* D20C8 800D14C8 AFA60028 */   sw        $a2, 0x28($sp)
/* D20CC 800D14CC 10000021 */  b          .L800D1554
/* D20D0 800D14D0 24020005 */   addiu     $v0, $zero, 5
.L800D14D4:
/* D20D4 800D14D4 0C031D08 */  jal        func_800C7420
/* D20D8 800D14D8 8FA40020 */   lw        $a0, 0x20($sp)
/* D20DC 800D14DC 24010002 */  addiu      $at, $zero, 2
/* D20E0 800D14E0 14410003 */  bne        $v0, $at, .L800D14F0
/* D20E4 800D14E4 00000000 */   nop
/* D20E8 800D14E8 1000001A */  b          .L800D1554
/* D20EC 800D14EC 24020002 */   addiu     $v0, $zero, 2
.L800D14F0:
/* D20F0 800D14F0 AFA0001C */  sw         $zero, 0x1c($sp)
.L800D14F4:
/* D20F4 800D14F4 8FAF0020 */  lw         $t7, 0x20($sp)
/* D20F8 800D14F8 8FB8001C */  lw         $t8, 0x1c($sp)
/* D20FC 800D14FC 01F8C821 */  addu       $t9, $t7, $t8
/* D2100 800D1500 9328002C */  lbu        $t0, 0x2c($t9)
/* D2104 800D1504 1100000F */  beqz       $t0, .L800D1544
/* D2108 800D1508 00000000 */   nop
/* D210C 800D150C 8FA90020 */  lw         $t1, 0x20($sp)
/* D2110 800D1510 8FAA001C */  lw         $t2, 0x1c($sp)
/* D2114 800D1514 8FAD0024 */  lw         $t5, 0x24($sp)
/* D2118 800D1518 012A5821 */  addu       $t3, $t1, $t2
/* D211C 800D151C 916C002C */  lbu        $t4, 0x2c($t3)
/* D2120 800D1520 A1AC0000 */  sb         $t4, ($t5)
/* D2124 800D1524 8FB8001C */  lw         $t8, 0x1c($sp)
/* D2128 800D1528 8FAE0024 */  lw         $t6, 0x24($sp)
/* D212C 800D152C 27190001 */  addiu      $t9, $t8, 1
/* D2130 800D1530 2B210020 */  slti       $at, $t9, 0x20
/* D2134 800D1534 25CF0001 */  addiu      $t7, $t6, 1
/* D2138 800D1538 AFB9001C */  sw         $t9, 0x1c($sp)
/* D213C 800D153C 1420FFED */  bnez       $at, .L800D14F4
/* D2140 800D1540 AFAF0024 */   sw        $t7, 0x24($sp)
.L800D1544:
/* D2144 800D1544 8FA8001C */  lw         $t0, 0x1c($sp)
/* D2148 800D1548 8FA90028 */  lw         $t1, 0x28($sp)
/* D214C 800D154C 00001025 */  or         $v0, $zero, $zero
/* D2150 800D1550 AD280000 */  sw         $t0, ($t1)
.L800D1554:
/* D2154 800D1554 8FBF0014 */  lw         $ra, 0x14($sp)
/* D2158 800D1558 27BD0020 */  addiu      $sp, $sp, 0x20
/* D215C 800D155C 03E00008 */  jr         $ra
/* D2160 800D1560 00000000 */   nop
/* D2164 800D1564 00000000 */  nop
/* D2168 800D1568 00000000 */  nop
/* D216C 800D156C 00000000 */  nop
