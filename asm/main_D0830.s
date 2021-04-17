.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CFC30
/* D0830 800CFC30 3C0E800E */  lui        $t6, %hi(D_800DB0E0)
/* D0834 800CFC34 8DCEB0E0 */  lw         $t6, %lo(D_800DB0E0)($t6)
/* D0838 800CFC38 15C00003 */  bnez       $t6, .L800CFC48
/* D083C 800CFC3C 00000000 */   nop
/* D0840 800CFC40 03E00008 */  jr         $ra
/* D0844 800CFC44 00001025 */   or        $v0, $zero, $zero
.L800CFC48:
/* D0848 800CFC48 3C02800E */  lui        $v0, %hi(D_800DB0E8)
/* D084C 800CFC4C 8C42B0E8 */  lw         $v0, %lo(D_800DB0E8)($v0)
/* D0850 800CFC50 03E00008 */  jr         $ra
/* D0854 800CFC54 00000000 */   nop
/* D0858 800CFC58 00000000 */  nop
/* D085C 800CFC5C 00000000 */  nop
