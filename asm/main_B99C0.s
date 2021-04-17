.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B8DC0
/* B99C0 800B8DC0 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* B99C4 800B8DC4 03E00008 */  jr         $ra
/* B99C8 800B8DC8 8DC20010 */   lw        $v0, %lo(D_A4040010)($t6)

glabel func_800B8DCC
/* B99CC 800B8DCC 03E00008 */  jr         $ra
/* B99D0 800B8DD0 00000000 */   nop

glabel func_800B8DD4
/* B99D4 800B8DD4 03E00008 */  jr         $ra
/* B99D8 800B8DD8 00000000 */   nop
/* B99DC 800B8DDC 00000000 */  nop
