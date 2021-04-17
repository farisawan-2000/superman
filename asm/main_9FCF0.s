.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009F0F0
/* 9FCF0 8009F0F0 40846000 */  mtc0       $a0, $12
/* 9FCF4 8009F0F4 00000000 */  nop
/* 9FCF8 8009F0F8 03E00008 */  jr         $ra
/* 9FCFC 8009F0FC 00000000 */   nop

glabel func_8009F100
/* 9FD00 8009F100 40026000 */  mfc0       $v0, $12
/* 9FD04 8009F104 03E00008 */  jr         $ra
/* 9FD08 8009F108 00000000 */   nop
/* 9FD0C 8009F10C 00000000 */  nop
