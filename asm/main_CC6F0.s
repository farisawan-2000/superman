.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CBAF0
/* CC6F0 800CBAF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC6F4 800CBAF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC6F8 800CBAF8 240E0001 */  addiu      $t6, $zero, 1
/* CC6FC 800CBAFC 3C01800E */  lui        $at, %hi(D_800DB110)
/* CC700 800CBB00 3C048014 */  lui        $a0, %hi(D_80146B68)
/* CC704 800CBB04 3C058014 */  lui        $a1, %hi(D_80146B60)
/* CC708 800CBB08 AC2EB110 */  sw         $t6, %lo(D_800DB110)($at)
/* CC70C 800CBB0C 24A56B60 */  addiu      $a1, $a1, %lo(D_80146B60)
/* CC710 800CBB10 24846B68 */  addiu      $a0, $a0, %lo(D_80146B68)
/* CC714 800CBB14 0C033544 */  jal        func_800CD510
/* CC718 800CBB18 24060001 */   addiu     $a2, $zero, 1
/* CC71C 800CBB1C 3C048014 */  lui        $a0, %hi(D_80146B68)
/* CC720 800CBB20 24846B68 */  addiu      $a0, $a0, %lo(D_80146B68)
/* CC724 800CBB24 00002825 */  or         $a1, $zero, $zero
/* CC728 800CBB28 0C02F7A8 */  jal        func_800BDEA0
/* CC72C 800CBB2C 00003025 */   or        $a2, $zero, $zero
/* CC730 800CBB30 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC734 800CBB34 27BD0018 */  addiu      $sp, $sp, 0x18
/* CC738 800CBB38 03E00008 */  jr         $ra
/* CC73C 800CBB3C 00000000 */   nop

glabel func_800CBB40
/* CC740 800CBB40 3C0E800E */  lui        $t6, %hi(D_800DB110)
/* CC744 800CBB44 8DCEB110 */  lw         $t6, %lo(D_800DB110)($t6)
/* CC748 800CBB48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CC74C 800CBB4C AFBF0014 */  sw         $ra, 0x14($sp)
/* CC750 800CBB50 15C00003 */  bnez       $t6, .L800CBB60
/* CC754 800CBB54 00000000 */   nop
/* CC758 800CBB58 0C032EBC */  jal        func_800CBAF0
/* CC75C 800CBB5C 00000000 */   nop
.L800CBB60:
/* CC760 800CBB60 3C048014 */  lui        $a0, %hi(D_80146B68)
/* CC764 800CBB64 24846B68 */  addiu      $a0, $a0, %lo(D_80146B68)
/* CC768 800CBB68 27A5001C */  addiu      $a1, $sp, 0x1c
/* CC76C 800CBB6C 0C02F85C */  jal        func_800BE170
/* CC770 800CBB70 24060001 */   addiu     $a2, $zero, 1
/* CC774 800CBB74 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC778 800CBB78 27BD0020 */  addiu      $sp, $sp, 0x20
/* CC77C 800CBB7C 03E00008 */  jr         $ra
/* CC780 800CBB80 00000000 */   nop

glabel func_800CBB84
/* CC784 800CBB84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC788 800CBB88 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC78C 800CBB8C 3C048014 */  lui        $a0, %hi(D_80146B68)
/* CC790 800CBB90 24846B68 */  addiu      $a0, $a0, %lo(D_80146B68)
/* CC794 800CBB94 00002825 */  or         $a1, $zero, $zero
/* CC798 800CBB98 0C02F7A8 */  jal        func_800BDEA0
/* CC79C 800CBB9C 00003025 */   or        $a2, $zero, $zero
/* CC7A0 800CBBA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC7A4 800CBBA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* CC7A8 800CBBA8 03E00008 */  jr         $ra
/* CC7AC 800CBBAC 00000000 */   nop
/* CC7B0 800CBBB0 00000000 */  nop
/* CC7B4 800CBBB4 00000000 */  nop
/* CC7B8 800CBBB8 00000000 */  nop
/* CC7BC 800CBBBC 00000000 */  nop
