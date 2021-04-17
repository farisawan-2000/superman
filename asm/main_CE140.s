.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD540
/* CE140 800CD540 18A00011 */  blez       $a1, .L800CD588
/* CE144 800CD544 00000000 */   nop
/* CE148 800CD548 240B4000 */  addiu      $t3, $zero, 0x4000
/* CE14C 800CD54C 00AB082B */  sltu       $at, $a1, $t3
/* CE150 800CD550 1020000F */  beqz       $at, .L800CD590
/* CE154 800CD554 00000000 */   nop
/* CE158 800CD558 00804025 */  or         $t0, $a0, $zero
/* CE15C 800CD55C 00854821 */  addu       $t1, $a0, $a1
/* CE160 800CD560 0109082B */  sltu       $at, $t0, $t1
/* CE164 800CD564 10200008 */  beqz       $at, .L800CD588
/* CE168 800CD568 00000000 */   nop
/* CE16C 800CD56C 310A001F */  andi       $t2, $t0, 0x1f
/* CE170 800CD570 2529FFE0 */  addiu      $t1, $t1, -0x20
/* CE174 800CD574 010A4023 */  subu       $t0, $t0, $t2
.L800CD578:
/* CE178 800CD578 BD100000 */  cache      0x10, ($t0)
/* CE17C 800CD57C 0109082B */  sltu       $at, $t0, $t1
/* CE180 800CD580 1420FFFD */  bnez       $at, .L800CD578
/* CE184 800CD584 25080020 */   addiu     $t0, $t0, 0x20
.L800CD588:
/* CE188 800CD588 03E00008 */  jr         $ra
/* CE18C 800CD58C 00000000 */   nop
.L800CD590:
/* CE190 800CD590 3C088000 */  lui        $t0, 0x8000
/* CE194 800CD594 010B4821 */  addu       $t1, $t0, $t3
/* CE198 800CD598 2529FFE0 */  addiu      $t1, $t1, -0x20
.L800CD59C:
/* CE19C 800CD59C BD000000 */  cache      0, ($t0)
/* CE1A0 800CD5A0 0109082B */  sltu       $at, $t0, $t1
/* CE1A4 800CD5A4 1420FFFD */  bnez       $at, .L800CD59C
/* CE1A8 800CD5A8 25080020 */   addiu     $t0, $t0, 0x20
/* CE1AC 800CD5AC 03E00008 */  jr         $ra
/* CE1B0 800CD5B0 00000000 */   nop
/* CE1B4 800CD5B4 00000000 */  nop
/* CE1B8 800CD5B8 00000000 */  nop
/* CE1BC 800CD5BC 00000000 */  nop
