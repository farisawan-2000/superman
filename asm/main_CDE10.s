.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD210
/* CDE10 800CD210 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CDE14 800CD214 AFBF0014 */  sw         $ra, 0x14($sp)
/* CDE18 800CD218 AFA5002C */  sw         $a1, 0x2c($sp)
/* CDE1C 800CD21C 00A07025 */  or         $t6, $a1, $zero
/* CDE20 800CD220 240F000A */  addiu      $t7, $zero, 0xa
/* CDE24 800CD224 A7AF0018 */  sh         $t7, 0x18($sp)
/* CDE28 800CD228 A7AE001C */  sh         $t6, 0x1c($sp)
/* CDE2C 800CD22C 27A50018 */  addiu      $a1, $sp, 0x18
/* CDE30 800CD230 24840048 */  addiu      $a0, $a0, 0x48
/* CDE34 800CD234 0C03031B */  jal        func_800C0C6C
/* CDE38 800CD238 00003025 */   or        $a2, $zero, $zero
/* CDE3C 800CD23C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CDE40 800CD240 27BD0028 */  addiu      $sp, $sp, 0x28
/* CDE44 800CD244 03E00008 */  jr         $ra
/* CDE48 800CD248 00000000 */   nop
/* CDE4C 800CD24C 00000000 */  nop
