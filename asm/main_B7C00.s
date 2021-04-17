.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B7000
/* B7C00 800B7000 40026800 */  mfc0       $v0, $13
/* B7C04 800B7004 03E00008 */  jr         $ra
/* B7C08 800B7008 00000000 */   nop
/* B7C0C 800B700C 00000000 */  nop
