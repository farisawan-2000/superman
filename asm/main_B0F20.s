.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B0320
/* B0F20 800B0320 40086000 */  mfc0       $t0, $12
/* B0F24 800B0324 2401FFFE */  addiu      $at, $zero, -2
/* B0F28 800B0328 01014824 */  and        $t1, $t0, $at
/* B0F2C 800B032C 40896000 */  mtc0       $t1, $12
/* B0F30 800B0330 31020001 */  andi       $v0, $t0, 1
/* B0F34 800B0334 00000000 */  nop
/* B0F38 800B0338 03E00008 */  jr         $ra
/* B0F3C 800B033C 00000000 */   nop

glabel func_800B0340
/* B0F40 800B0340 40086000 */  mfc0       $t0, $12
/* B0F44 800B0344 01044025 */  or         $t0, $t0, $a0
/* B0F48 800B0348 40886000 */  mtc0       $t0, $12
/* B0F4C 800B034C 00000000 */  nop
/* B0F50 800B0350 00000000 */  nop
/* B0F54 800B0354 03E00008 */  jr         $ra
/* B0F58 800B0358 00000000 */   nop
/* B0F5C 800B035C 00000000 */  nop
