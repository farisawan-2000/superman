.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B97D0
/* BA3D0 800B97D0 AC800000 */  sw         $zero, ($a0)
/* BA3D4 800B97D4 03E00008 */  jr         $ra
/* BA3D8 800B97D8 00000000 */   nop

glabel func_800B97DC
/* BA3DC 800B97DC 03E00008 */  jr         $ra
/* BA3E0 800B97E0 00000000 */   nop
/* BA3E4 800B97E4 00000000 */  nop
/* BA3E8 800B97E8 00000000 */  nop
/* BA3EC 800B97EC 00000000 */  nop
