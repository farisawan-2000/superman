.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D2F90
/* D3B90 800D2F90 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* D3B94 800D2F94 03E00008 */  jr         $ra
/* D3B98 800D2F98 ADC40010 */   sw        $a0, %lo(D_A4040010)($t6)
/* D3B9C 800D2F9C 00000000 */  nop
