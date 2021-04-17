.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009F110
/* 9FD10 8009F110 18A00011 */  blez       $a1, .L8009F158
/* 9FD14 8009F114 00000000 */   nop
/* 9FD18 8009F118 240B2000 */  addiu      $t3, $zero, 0x2000
/* 9FD1C 8009F11C 00AB082B */  sltu       $at, $a1, $t3
/* 9FD20 8009F120 1020000F */  beqz       $at, .L8009F160
/* 9FD24 8009F124 00000000 */   nop
/* 9FD28 8009F128 00804025 */  or         $t0, $a0, $zero
/* 9FD2C 8009F12C 00854821 */  addu       $t1, $a0, $a1
/* 9FD30 8009F130 0109082B */  sltu       $at, $t0, $t1
/* 9FD34 8009F134 10200008 */  beqz       $at, .L8009F158
/* 9FD38 8009F138 00000000 */   nop
/* 9FD3C 8009F13C 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 9FD40 8009F140 310A000F */  andi       $t2, $t0, 0xf
/* 9FD44 8009F144 010A4023 */  subu       $t0, $t0, $t2
.L8009F148:
/* 9FD48 8009F148 BD190000 */  cache      0x19, ($t0)
/* 9FD4C 8009F14C 0109082B */  sltu       $at, $t0, $t1
/* 9FD50 8009F150 1420FFFD */  bnez       $at, .L8009F148
/* 9FD54 8009F154 25080010 */   addiu     $t0, $t0, 0x10
.L8009F158:
/* 9FD58 8009F158 03E00008 */  jr         $ra
/* 9FD5C 8009F15C 00000000 */   nop
.L8009F160:
/* 9FD60 8009F160 3C088000 */  lui        $t0, 0x8000
/* 9FD64 8009F164 010B4821 */  addu       $t1, $t0, $t3
/* 9FD68 8009F168 2529FFF0 */  addiu      $t1, $t1, -0x10
.L8009F16C:
/* 9FD6C 8009F16C BD010000 */  cache      1, ($t0)
/* 9FD70 8009F170 0109082B */  sltu       $at, $t0, $t1
/* 9FD74 8009F174 1420FFFD */  bnez       $at, .L8009F16C
/* 9FD78 8009F178 25080010 */   addiu     $t0, $t0, 0x10
/* 9FD7C 8009F17C 03E00008 */  jr         $ra
/* 9FD80 8009F180 00000000 */   nop
/* 9FD84 8009F184 00000000 */  nop
/* 9FD88 8009F188 00000000 */  nop
/* 9FD8C 8009F18C 00000000 */  nop
