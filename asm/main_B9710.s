.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B8B10
/* B9710 800B8B10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9714 800B8B14 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9718 800B8B18 AFA40018 */  sw         $a0, 0x18($sp)
/* B971C 800B8B1C AFA5001C */  sw         $a1, 0x1c($sp)
/* B9720 800B8B20 8FAE0018 */  lw         $t6, 0x18($sp)
/* B9724 800B8B24 31CF0003 */  andi       $t7, $t6, 3
/* B9728 800B8B28 15E00003 */  bnez       $t7, .L800B8B38
/* B972C 800B8B2C 00000000 */   nop
/* B9730 800B8B30 10000007 */  b          .L800B8B50
/* B9734 800B8B34 00000000 */   nop
.L800B8B38:
/* B9738 800B8B38 3C04800D */  lui        $a0, %hi(D_800D3C00)
/* B973C 800B8B3C 3C05800D */  lui        $a1, %hi(D_800D3C18)
/* B9740 800B8B40 24A53C18 */  addiu      $a1, $a1, %lo(D_800D3C18)
/* B9744 800B8B44 24843C00 */  addiu      $a0, $a0, %lo(D_800D3C00)
/* B9748 800B8B48 0C02C480 */  jal        func_800B1200
/* B974C 800B8B4C 24060034 */   addiu     $a2, $zero, 0x34
.L800B8B50:
/* B9750 800B8B50 0C02B6C8 */  jal        func_800ADB20
/* B9754 800B8B54 00000000 */   nop
/* B9758 800B8B58 10400003 */  beqz       $v0, .L800B8B68
/* B975C 800B8B5C 00000000 */   nop
/* B9760 800B8B60 1000000A */  b          .L800B8B8C
/* B9764 800B8B64 2402FFFF */   addiu     $v0, $zero, -1
.L800B8B68:
/* B9768 800B8B68 8FB90018 */  lw         $t9, 0x18($sp)
/* B976C 800B8B6C 8FB8001C */  lw         $t8, 0x1c($sp)
/* B9770 800B8B70 3C01A000 */  lui        $at, 0xa000
/* B9774 800B8B74 03214025 */  or         $t0, $t9, $at
/* B9778 800B8B78 AD180000 */  sw         $t8, ($t0)
/* B977C 800B8B7C 10000003 */  b          .L800B8B8C
/* B9780 800B8B80 00001025 */   or        $v0, $zero, $zero
/* B9784 800B8B84 10000001 */  b          .L800B8B8C
/* B9788 800B8B88 00000000 */   nop
.L800B8B8C:
/* B978C 800B8B8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9790 800B8B90 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9794 800B8B94 03E00008 */  jr         $ra
/* B9798 800B8B98 00000000 */   nop
/* B979C 800B8B9C 00000000 */  nop
