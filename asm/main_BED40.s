.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BE140
/* BED40 800BE140 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BED44 800BE144 00802825 */  or         $a1, $a0, $zero
/* BED48 800BE148 AFBF0014 */  sw         $ra, 0x14($sp)
/* BED4C 800BE14C 3C04800E */  lui        $a0, %hi(D_800DA040)
/* BED50 800BE150 0C0335F4 */  jal        func_800CD7D0
/* BED54 800BE154 8C84A040 */   lw        $a0, %lo(D_800DA040)($a0)
/* BED58 800BE158 8FBF0014 */  lw         $ra, 0x14($sp)
/* BED5C 800BE15C 27BD0018 */  addiu      $sp, $sp, 0x18
/* BED60 800BE160 03E00008 */  jr         $ra
/* BED64 800BE164 00000000 */   nop
/* BED68 800BE168 00000000 */  nop
/* BED6C 800BE16C 00000000 */  nop
