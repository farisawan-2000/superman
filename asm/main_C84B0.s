.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C78B0
/* C84B0 800C78B0 40024800 */  mfc0       $v0, $9
/* C84B4 800C78B4 03E00008 */  jr         $ra
/* C84B8 800C78B8 00000000 */   nop
/* C84BC 800C78BC 00000000 */  nop
