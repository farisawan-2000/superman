.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B6440
/* B7040 800B6440 3C0EA450 */  lui        $t6, %hi(D_A4500004)
/* B7044 800B6444 03E00008 */  jr         $ra
/* B7048 800B6448 8DC20004 */   lw        $v0, %lo(D_A4500004)($t6)

glabel func_800B644C
/* B704C 800B644C 03E00008 */  jr         $ra
/* B7050 800B6450 00000000 */   nop

glabel func_800B6454
/* B7054 800B6454 03E00008 */  jr         $ra
/* B7058 800B6458 00000000 */   nop
/* B705C 800B645C 00000000 */  nop
