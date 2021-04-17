.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CF750
/* D0350 800CF750 40086000 */  mfc0       $t0, $12
/* D0354 800CF754 2401FFFE */  addiu      $at, $zero, -2
/* D0358 800CF758 01014824 */  and        $t1, $t0, $at
/* D035C 800CF75C 40896000 */  mtc0       $t1, $12
/* D0360 800CF760 31020001 */  andi       $v0, $t0, 1
/* D0364 800CF764 00000000 */  nop
/* D0368 800CF768 03E00008 */  jr         $ra
/* D036C 800CF76C 00000000 */   nop

glabel func_800CF770
/* D0370 800CF770 40086000 */  mfc0       $t0, $12
/* D0374 800CF774 01044025 */  or         $t0, $t0, $a0
/* D0378 800CF778 40886000 */  mtc0       $t0, $12
/* D037C 800CF77C 00000000 */  nop
/* D0380 800CF780 00000000 */  nop
/* D0384 800CF784 03E00008 */  jr         $ra
/* D0388 800CF788 00000000 */   nop
/* D038C 800CF78C 00000000 */  nop
