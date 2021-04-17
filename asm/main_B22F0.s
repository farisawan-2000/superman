.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B16F0
/* B22F0 800B16F0 0000000D */  break
/* B22F4 800B16F4 03E00008 */   jr        $ra
/* B22F8 800B16F8 00000000 */   nop
/* B22FC 800B16FC 00000000 */  nop
