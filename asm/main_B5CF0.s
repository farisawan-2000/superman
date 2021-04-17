.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B50F0
/* B5CF0 800B50F0 03E00008 */  jr         $ra
/* B5CF4 800B50F4 8C82002C */   lw        $v0, 0x2c($a0)

glabel func_800B50F8
/* B5CF8 800B50F8 03E00008 */  jr         $ra
/* B5CFC 800B50FC 00000000 */   nop

glabel func_800B5100
/* B5D00 800B5100 03E00008 */  jr         $ra
/* B5D04 800B5104 00000000 */   nop
/* B5D08 800B5108 00000000 */  nop
/* B5D0C 800B510C 00000000 */  nop
