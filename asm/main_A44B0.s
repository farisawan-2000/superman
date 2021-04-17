.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A38B0
/* A44B0 800A38B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A44B4 800A38B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A44B8 800A38B8 0C02E368 */  jal        func_800B8DA0
/* A44BC 800A38BC 24040400 */   addiu     $a0, $zero, 0x400
/* A44C0 800A38C0 10000001 */  b          .L800A38C8
/* A44C4 800A38C4 00000000 */   nop
.L800A38C8:
/* A44C8 800A38C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A44CC 800A38CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* A44D0 800A38D0 03E00008 */  jr         $ra
/* A44D4 800A38D4 00000000 */   nop
/* A44D8 800A38D8 00000000 */  nop
/* A44DC 800A38DC 00000000 */  nop
