.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B67F0
/* B73F0 800B67F0 40085000 */  mfc0       $t0, $10
/* B73F4 800B67F4 2409001F */  addiu      $t1, $zero, 0x1f
/* B73F8 800B67F8 40890000 */  mtc0       $t1, $0
/* B73FC 800B67FC 40802800 */  mtc0       $zero, $5
/* B7400 800B6800 240A0017 */  addiu      $t2, $zero, 0x17
/* B7404 800B6804 3C09C000 */  lui        $t1, 0xc000
/* B7408 800B6808 40895000 */  mtc0       $t1, $10
/* B740C 800B680C 3C098000 */  lui        $t1, 0x8000
/* B7410 800B6810 00095982 */  srl        $t3, $t1, 6
/* B7414 800B6814 016A5825 */  or         $t3, $t3, $t2
/* B7418 800B6818 408B1000 */  mtc0       $t3, $2
/* B741C 800B681C 24090001 */  addiu      $t1, $zero, 1
/* B7420 800B6820 40891800 */  mtc0       $t1, $3
/* B7424 800B6824 00000000 */  nop
/* B7428 800B6828 42000002 */  tlbwi
/* B742C 800B682C 00000000 */  nop
/* B7430 800B6830 00000000 */  nop
/* B7434 800B6834 00000000 */  nop
/* B7438 800B6838 00000000 */  nop
/* B743C 800B683C 40885000 */  mtc0       $t0, $10
/* B7440 800B6840 03E00008 */  jr         $ra
/* B7444 800B6844 00000000 */   nop
/* B7448 800B6848 00000000 */  nop
/* B744C 800B684C 00000000 */  nop
