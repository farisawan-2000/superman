.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AD150
/* ADD50 800AD150 18A00011 */  blez       $a1, .L800AD198
/* ADD54 800AD154 00000000 */   nop
/* ADD58 800AD158 240B4000 */  addiu      $t3, $zero, 0x4000
/* ADD5C 800AD15C 00AB082B */  sltu       $at, $a1, $t3
/* ADD60 800AD160 1020000F */  beqz       $at, .L800AD1A0
/* ADD64 800AD164 00000000 */   nop
/* ADD68 800AD168 00804025 */  or         $t0, $a0, $zero
/* ADD6C 800AD16C 00854821 */  addu       $t1, $a0, $a1
/* ADD70 800AD170 0109082B */  sltu       $at, $t0, $t1
/* ADD74 800AD174 10200008 */  beqz       $at, .L800AD198
/* ADD78 800AD178 00000000 */   nop
/* ADD7C 800AD17C 2529FFE0 */  addiu      $t1, $t1, -0x20
/* ADD80 800AD180 310A001F */  andi       $t2, $t0, 0x1f
/* ADD84 800AD184 010A4023 */  subu       $t0, $t0, $t2
.L800AD188:
/* ADD88 800AD188 BD100000 */  cache      0x10, ($t0)
/* ADD8C 800AD18C 0109082B */  sltu       $at, $t0, $t1
/* ADD90 800AD190 1420FFFD */  bnez       $at, .L800AD188
/* ADD94 800AD194 25080020 */   addiu     $t0, $t0, 0x20
.L800AD198:
/* ADD98 800AD198 03E00008 */  jr         $ra
/* ADD9C 800AD19C 00000000 */   nop
.L800AD1A0:
/* ADDA0 800AD1A0 3C088000 */  lui        $t0, 0x8000
/* ADDA4 800AD1A4 010B4821 */  addu       $t1, $t0, $t3
/* ADDA8 800AD1A8 2529FFE0 */  addiu      $t1, $t1, -0x20
.L800AD1AC:
/* ADDAC 800AD1AC BD000000 */  cache      0, ($t0)
/* ADDB0 800AD1B0 0109082B */  sltu       $at, $t0, $t1
/* ADDB4 800AD1B4 1420FFFD */  bnez       $at, .L800AD1AC
/* ADDB8 800AD1B8 25080020 */   addiu     $t0, $t0, 0x20
/* ADDBC 800AD1BC 03E00008 */  jr         $ra
/* ADDC0 800AD1C0 00000000 */   nop
/* ADDC4 800AD1C4 00000000 */  nop
/* ADDC8 800AD1C8 00000000 */  nop
/* ADDCC 800AD1CC 00000000 */  nop
