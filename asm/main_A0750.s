.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009FB50
/* A0750 8009FB50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A0754 8009FB54 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0758 8009FB58 AFA40018 */  sw         $a0, 0x18($sp)
/* A075C 8009FB5C AFA5001C */  sw         $a1, 0x1c($sp)
/* A0760 8009FB60 8FAE0018 */  lw         $t6, 0x18($sp)
/* A0764 8009FB64 31CF0003 */  andi       $t7, $t6, 3
/* A0768 8009FB68 15E00003 */  bnez       $t7, .L8009FB78
/* A076C 8009FB6C 00000000 */   nop
/* A0770 8009FB70 10000007 */  b          .L8009FB90
/* A0774 8009FB74 00000000 */   nop
.L8009FB78:
/* A0778 8009FB78 3C04800D */  lui        $a0, %hi(D_800D2DF0)
/* A077C 8009FB7C 3C05800D */  lui        $a1, %hi(D_800D2E08)
/* A0780 8009FB80 24A52E08 */  addiu      $a1, $a1, %lo(D_800D2E08)
/* A0784 8009FB84 24842DF0 */  addiu      $a0, $a0, %lo(D_800D2DF0)
/* A0788 8009FB88 0C02C480 */  jal        func_800B1200
/* A078C 8009FB8C 24060033 */   addiu     $a2, $zero, 0x33
.L8009FB90:
/* A0790 8009FB90 8FB8001C */  lw         $t8, 0x1c($sp)
/* A0794 8009FB94 13000003 */  beqz       $t8, .L8009FBA4
/* A0798 8009FB98 00000000 */   nop
/* A079C 8009FB9C 10000007 */  b          .L8009FBBC
/* A07A0 8009FBA0 00000000 */   nop
.L8009FBA4:
/* A07A4 8009FBA4 3C04800D */  lui        $a0, %hi(D_800D2E1C)
/* A07A8 8009FBA8 3C05800D */  lui        $a1, %hi(D_800D2E2C)
/* A07AC 8009FBAC 24A52E2C */  addiu      $a1, $a1, %lo(D_800D2E2C)
/* A07B0 8009FBB0 24842E1C */  addiu      $a0, $a0, %lo(D_800D2E1C)
/* A07B4 8009FBB4 0C02C480 */  jal        func_800B1200
/* A07B8 8009FBB8 24060034 */   addiu     $a2, $zero, 0x34
.L8009FBBC:
/* A07BC 8009FBBC 0C02B6C8 */  jal        func_800ADB20
/* A07C0 8009FBC0 00000000 */   nop
/* A07C4 8009FBC4 10400003 */  beqz       $v0, .L8009FBD4
/* A07C8 8009FBC8 00000000 */   nop
/* A07CC 8009FBCC 1000000B */  b          .L8009FBFC
/* A07D0 8009FBD0 2402FFFF */   addiu     $v0, $zero, -1
.L8009FBD4:
/* A07D4 8009FBD4 8FB90018 */  lw         $t9, 0x18($sp)
/* A07D8 8009FBD8 3C01A000 */  lui        $at, 0xa000
/* A07DC 8009FBDC 8FAA001C */  lw         $t2, 0x1c($sp)
/* A07E0 8009FBE0 03214025 */  or         $t0, $t9, $at
/* A07E4 8009FBE4 8D090000 */  lw         $t1, ($t0)
/* A07E8 8009FBE8 AD490000 */  sw         $t1, ($t2)
/* A07EC 8009FBEC 10000003 */  b          .L8009FBFC
/* A07F0 8009FBF0 00001025 */   or        $v0, $zero, $zero
/* A07F4 8009FBF4 10000001 */  b          .L8009FBFC
/* A07F8 8009FBF8 00000000 */   nop
.L8009FBFC:
/* A07FC 8009FBFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A0800 8009FC00 27BD0018 */  addiu      $sp, $sp, 0x18
/* A0804 8009FC04 03E00008 */  jr         $ra
/* A0808 8009FC08 00000000 */   nop
/* A080C 8009FC0C 00000000 */  nop
