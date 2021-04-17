.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CED30
/* CF930 800CED30 40845800 */  mtc0       $a0, $11
/* CF934 800CED34 03E00008 */  jr         $ra
/* CF938 800CED38 00000000 */   nop
/* CF93C 800CED3C 00000000 */  nop
