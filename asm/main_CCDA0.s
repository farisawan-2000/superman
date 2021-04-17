.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CC1A0
/* CCDA0 800CC1A0 03E00008 */  jr         $ra
/* CCDA4 800CC1A4 46006004 */   sqrt.s    $f0, $f12
/* CCDA8 800CC1A8 00000000 */  nop
/* CCDAC 800CC1AC 00000000 */  nop
