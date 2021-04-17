.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD5C0
/* CE1C0 800CD5C0 18A0001F */  blez       $a1, .L800CD640
/* CE1C4 800CD5C4 00000000 */   nop
/* CE1C8 800CD5C8 240B2000 */  addiu      $t3, $zero, 0x2000
/* CE1CC 800CD5CC 00AB082B */  sltu       $at, $a1, $t3
/* CE1D0 800CD5D0 1020001D */  beqz       $at, .L800CD648
/* CE1D4 800CD5D4 00000000 */   nop
/* CE1D8 800CD5D8 00804025 */  or         $t0, $a0, $zero
/* CE1DC 800CD5DC 00854821 */  addu       $t1, $a0, $a1
/* CE1E0 800CD5E0 0109082B */  sltu       $at, $t0, $t1
/* CE1E4 800CD5E4 10200016 */  beqz       $at, .L800CD640
/* CE1E8 800CD5E8 00000000 */   nop
/* CE1EC 800CD5EC 310A000F */  andi       $t2, $t0, 0xf
/* CE1F0 800CD5F0 11400007 */  beqz       $t2, .L800CD610
/* CE1F4 800CD5F4 2529FFF0 */   addiu     $t1, $t1, -0x10
/* CE1F8 800CD5F8 010A4023 */  subu       $t0, $t0, $t2
/* CE1FC 800CD5FC BD150000 */  cache      0x15, ($t0)
/* CE200 800CD600 0109082B */  sltu       $at, $t0, $t1
/* CE204 800CD604 1020000E */  beqz       $at, .L800CD640
/* CE208 800CD608 00000000 */   nop
/* CE20C 800CD60C 25080010 */  addiu      $t0, $t0, 0x10
.L800CD610:
/* CE210 800CD610 312A000F */  andi       $t2, $t1, 0xf
/* CE214 800CD614 11400006 */  beqz       $t2, .L800CD630
/* CE218 800CD618 00000000 */   nop
/* CE21C 800CD61C 012A4823 */  subu       $t1, $t1, $t2
/* CE220 800CD620 BD350010 */  cache      0x15, 0x10($t1)
/* CE224 800CD624 0128082B */  sltu       $at, $t1, $t0
/* CE228 800CD628 14200005 */  bnez       $at, .L800CD640
/* CE22C 800CD62C 00000000 */   nop
.L800CD630:
/* CE230 800CD630 BD110000 */  cache      0x11, ($t0)
/* CE234 800CD634 0109082B */  sltu       $at, $t0, $t1
/* CE238 800CD638 1420FFFD */  bnez       $at, .L800CD630
/* CE23C 800CD63C 25080010 */   addiu     $t0, $t0, 0x10
.L800CD640:
/* CE240 800CD640 03E00008 */  jr         $ra
/* CE244 800CD644 00000000 */   nop
.L800CD648:
/* CE248 800CD648 3C088000 */  lui        $t0, 0x8000
/* CE24C 800CD64C 010B4821 */  addu       $t1, $t0, $t3
/* CE250 800CD650 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800CD654:
/* CE254 800CD654 BD010000 */  cache      1, ($t0)
/* CE258 800CD658 0109082B */  sltu       $at, $t0, $t1
/* CE25C 800CD65C 1420FFFD */  bnez       $at, .L800CD654
/* CE260 800CD660 25080010 */   addiu     $t0, $t0, 0x10
/* CE264 800CD664 03E00008 */  jr         $ra
/* CE268 800CD668 00000000 */   nop
/* CE26C 800CD66C 00000000 */  nop
