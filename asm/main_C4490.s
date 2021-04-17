.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C3890
/* C4490 800C3890 40846000 */  mtc0       $a0, $12
/* C4494 800C3894 00000000 */  nop
/* C4498 800C3898 03E00008 */  jr         $ra
/* C449C 800C389C 00000000 */   nop

glabel func_800C38A0
/* C44A0 800C38A0 40026000 */  mfc0       $v0, $12
/* C44A4 800C38A4 03E00008 */  jr         $ra
/* C44A8 800C38A8 00000000 */   nop
/* C44AC 800C38AC 00000000 */  nop
