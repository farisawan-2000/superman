.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B6CB0
/* B78B0 800B6CB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B78B4 800B6CB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B78B8 800B6CB8 AFA40018 */  sw         $a0, 0x18($sp)
/* B78BC 800B6CBC AFA5001C */  sw         $a1, 0x1c($sp)
/* B78C0 800B6CC0 AFA60020 */  sw         $a2, 0x20($sp)
/* B78C4 800B6CC4 AFA70024 */  sw         $a3, 0x24($sp)
/* B78C8 800B6CC8 0C028116 */  jal        func_800A0458
/* B78CC 800B6CCC 8FA40018 */   lw        $a0, 0x18($sp)
/* B78D0 800B6CD0 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* B78D4 800B6CD4 8FAE0018 */  lw         $t6, 0x18($sp)
/* B78D8 800B6CD8 E5C40030 */  swc1       $f4, 0x30($t6)
/* B78DC 800B6CDC C7A60020 */  lwc1       $f6, 0x20($sp)
/* B78E0 800B6CE0 8FAF0018 */  lw         $t7, 0x18($sp)
/* B78E4 800B6CE4 E5E60034 */  swc1       $f6, 0x34($t7)
/* B78E8 800B6CE8 C7A80024 */  lwc1       $f8, 0x24($sp)
/* B78EC 800B6CEC 8FB80018 */  lw         $t8, 0x18($sp)
/* B78F0 800B6CF0 E7080038 */  swc1       $f8, 0x38($t8)
/* B78F4 800B6CF4 10000001 */  b          .L800B6CFC
/* B78F8 800B6CF8 00000000 */   nop
.L800B6CFC:
/* B78FC 800B6CFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7900 800B6D00 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7904 800B6D04 03E00008 */  jr         $ra
/* B7908 800B6D08 00000000 */   nop

glabel func_800B6D0C
/* B790C 800B6D0C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* B7910 800B6D10 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7914 800B6D14 AFA40058 */  sw         $a0, 0x58($sp)
/* B7918 800B6D18 AFA5005C */  sw         $a1, 0x5c($sp)
/* B791C 800B6D1C AFA60060 */  sw         $a2, 0x60($sp)
/* B7920 800B6D20 AFA70064 */  sw         $a3, 0x64($sp)
/* B7924 800B6D24 27A40018 */  addiu      $a0, $sp, 0x18
/* B7928 800B6D28 8FA5005C */  lw         $a1, 0x5c($sp)
/* B792C 800B6D2C 8FA60060 */  lw         $a2, 0x60($sp)
/* B7930 800B6D30 0C02DB2C */  jal        func_800B6CB0
/* B7934 800B6D34 8FA70064 */   lw        $a3, 0x64($sp)
/* B7938 800B6D38 27A40018 */  addiu      $a0, $sp, 0x18
/* B793C 800B6D3C 0C02807C */  jal        func_800A01F0
/* B7940 800B6D40 8FA50058 */   lw        $a1, 0x58($sp)
/* B7944 800B6D44 10000001 */  b          .L800B6D4C
/* B7948 800B6D48 00000000 */   nop
.L800B6D4C:
/* B794C 800B6D4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7950 800B6D50 27BD0058 */  addiu      $sp, $sp, 0x58
/* B7954 800B6D54 03E00008 */  jr         $ra
/* B7958 800B6D58 00000000 */   nop
/* B795C 800B6D5C 00000000 */  nop
