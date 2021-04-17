.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D1770
/* D2370 800D1770 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D2374 800D1774 AFBF001C */  sw         $ra, 0x1c($sp)
/* D2378 800D1778 0C033DD4 */  jal        func_800CF750
/* D237C 800D177C AFB00018 */   sw        $s0, 0x18($sp)
/* D2380 800D1780 3C0F800E */  lui        $t7, %hi(D_800DA080)
/* D2384 800D1784 8DEFA080 */  lw         $t7, %lo(D_800DA080)($t7)
/* D2388 800D1788 240E0002 */  addiu      $t6, $zero, 2
/* D238C 800D178C 3C04800E */  lui        $a0, %hi(D_800DA078)
/* D2390 800D1790 00408025 */  or         $s0, $v0, $zero
/* D2394 800D1794 2484A078 */  addiu      $a0, $a0, %lo(D_800DA078)
/* D2398 800D1798 0C02FAFF */  jal        func_800BEBFC
/* D239C 800D179C A5EE0010 */   sh        $t6, 0x10($t7)
/* D23A0 800D17A0 0C033DDC */  jal        func_800CF770
/* D23A4 800D17A4 02002025 */   or        $a0, $s0, $zero
/* D23A8 800D17A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* D23AC 800D17AC 8FB00018 */  lw         $s0, 0x18($sp)
/* D23B0 800D17B0 27BD0028 */  addiu      $sp, $sp, 0x28
/* D23B4 800D17B4 03E00008 */  jr         $ra
/* D23B8 800D17B8 00000000 */   nop
/* D23BC 800D17BC 00000000 */  nop
