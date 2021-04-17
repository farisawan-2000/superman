.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D3900
/* D4500 800D3900 3C02800E */  lui        $v0, %hi(D_800DB1F0)
/* D4504 800D3904 03E00008 */  jr         $ra
/* D4508 800D3908 8C42B1F0 */   lw        $v0, %lo(D_800DB1F0)($v0)
/* D450C 800D390C 00000000 */  nop
