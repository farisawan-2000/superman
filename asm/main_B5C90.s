.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B5090
/* B5C90 800B5090 3C02800D */  lui        $v0, %hi(D_800CC25C)
/* B5C94 800B5094 03E00008 */  jr         $ra
/* B5C98 800B5098 8C42C25C */   lw        $v0, %lo(D_800CC25C)($v0)

glabel func_800B509C
/* B5C9C 800B509C 03E00008 */  jr         $ra
/* B5CA0 800B50A0 00000000 */   nop

glabel func_800B50A4
/* B5CA4 800B50A4 03E00008 */  jr         $ra
/* B5CA8 800B50A8 00000000 */   nop
/* B5CAC 800B50AC 00000000 */  nop
