.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CC4B0
/* CD0B0 800CC4B0 AC800000 */  sw         $zero, ($a0)
/* CD0B4 800CC4B4 AC850004 */  sw         $a1, 4($a0)
/* CD0B8 800CC4B8 AC860008 */  sw         $a2, 8($a0)
/* CD0BC 800CC4BC A480000C */  sh         $zero, 0xc($a0)
/* CD0C0 800CC4C0 A480000E */  sh         $zero, 0xe($a0)
/* CD0C4 800CC4C4 03E00008 */  jr         $ra
/* CD0C8 800CC4C8 AC870010 */   sw        $a3, 0x10($a0)
/* CD0CC 800CC4CC 00000000 */  nop
