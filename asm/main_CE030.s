.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD430
/* CE030 800CD430 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CE034 800CD434 AFBF0014 */  sw         $ra, 0x14($sp)
/* CE038 800CD438 240E000B */  addiu      $t6, $zero, 0xb
/* CE03C 800CD43C AFA5001C */  sw         $a1, 0x1c($sp)
/* CE040 800CD440 AFA60020 */  sw         $a2, 0x20($sp)
/* CE044 800CD444 A7AE0018 */  sh         $t6, 0x18($sp)
/* CE048 800CD448 AFA70024 */  sw         $a3, 0x24($sp)
/* CE04C 800CD44C 00003025 */  or         $a2, $zero, $zero
/* CE050 800CD450 27A50018 */  addiu      $a1, $sp, 0x18
/* CE054 800CD454 0C03031B */  jal        func_800C0C6C
/* CE058 800CD458 24840048 */   addiu     $a0, $a0, 0x48
/* CE05C 800CD45C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CE060 800CD460 27BD0028 */  addiu      $sp, $sp, 0x28
/* CE064 800CD464 03E00008 */  jr         $ra
/* CE068 800CD468 00000000 */   nop
/* CE06C 800CD46C 00000000 */  nop
