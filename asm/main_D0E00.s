.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D0200
/* D0E00 800D0200 03E00008 */  jr         $ra
/* D0E04 800D0204 8C82002C */   lw        $v0, 0x2c($a0)
/* D0E08 800D0208 00000000 */  nop
/* D0E0C 800D020C 00000000 */  nop
