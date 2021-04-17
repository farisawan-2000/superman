.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B8BA0
/* B97A0 800B8BA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B97A4 800B8BA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B97A8 800B8BA8 AFA40018 */  sw         $a0, 0x18($sp)
/* B97AC 800B8BAC AFA5001C */  sw         $a1, 0x1c($sp)
/* B97B0 800B8BB0 8FAE0018 */  lw         $t6, 0x18($sp)
/* B97B4 800B8BB4 31CF0003 */  andi       $t7, $t6, 3
/* B97B8 800B8BB8 15E00003 */  bnez       $t7, .L800B8BC8
/* B97BC 800B8BBC 00000000 */   nop
/* B97C0 800B8BC0 10000007 */  b          .L800B8BE0
/* B97C4 800B8BC4 00000000 */   nop
.L800B8BC8:
/* B97C8 800B8BC8 3C04800D */  lui        $a0, %hi(D_800D3C30)
/* B97CC 800B8BCC 3C05800D */  lui        $a1, %hi(D_800D3C48)
/* B97D0 800B8BD0 24A53C48 */  addiu      $a1, $a1, %lo(D_800D3C48)
/* B97D4 800B8BD4 24843C30 */  addiu      $a0, $a0, %lo(D_800D3C30)
/* B97D8 800B8BD8 0C02C480 */  jal        func_800B1200
/* B97DC 800B8BDC 24060033 */   addiu     $a2, $zero, 0x33
.L800B8BE0:
/* B97E0 800B8BE0 0C02B6D8 */  jal        func_800ADB60
/* B97E4 800B8BE4 00000000 */   nop
/* B97E8 800B8BE8 10400003 */  beqz       $v0, .L800B8BF8
/* B97EC 800B8BEC 00000000 */   nop
/* B97F0 800B8BF0 1000000A */  b          .L800B8C1C
/* B97F4 800B8BF4 2402FFFF */   addiu     $v0, $zero, -1
.L800B8BF8:
/* B97F8 800B8BF8 8FB90018 */  lw         $t9, 0x18($sp)
/* B97FC 800B8BFC 8FB8001C */  lw         $t8, 0x1c($sp)
/* B9800 800B8C00 3C01A000 */  lui        $at, 0xa000
/* B9804 800B8C04 03214025 */  or         $t0, $t9, $at
/* B9808 800B8C08 AD180000 */  sw         $t8, ($t0)
/* B980C 800B8C0C 10000003 */  b          .L800B8C1C
/* B9810 800B8C10 00001025 */   or        $v0, $zero, $zero
/* B9814 800B8C14 10000001 */  b          .L800B8C1C
/* B9818 800B8C18 00000000 */   nop
.L800B8C1C:
/* B981C 800B8C1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9820 800B8C20 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9824 800B8C24 03E00008 */  jr         $ra
/* B9828 800B8C28 00000000 */   nop
/* B982C 800B8C2C 00000000 */  nop
