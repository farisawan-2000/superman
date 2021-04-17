.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D3A30
/* D4630 800D3A30 03E00008 */  jr         $ra
/* D4634 800D3A34 AC800000 */   sw        $zero, ($a0)
/* D4638 800D3A38 00000000 */  nop
/* D463C 800D3A3C 00000000 */  nop
