.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B8AF0
/* B96F0 800B8AF0 3C02800D */  lui        $v0, %hi(D_800CD440)
/* B96F4 800B8AF4 03E00008 */  jr         $ra
/* B96F8 800B8AF8 8C42D440 */   lw        $v0, %lo(D_800CD440)($v0)

glabel func_800B8AFC
/* B96FC 800B8AFC 03E00008 */  jr         $ra
/* B9700 800B8B00 00000000 */   nop

glabel func_800B8B04
/* B9704 800B8B04 03E00008 */  jr         $ra
/* B9708 800B8B08 00000000 */   nop
/* B970C 800B8B0C 00000000 */  nop
