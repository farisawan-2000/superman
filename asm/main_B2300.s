.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B1700
/* B2300 800B1700 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B2304 800B1704 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2308 800B1708 AFA40020 */  sw         $a0, 0x20($sp)
/* B230C 800B170C AFA50024 */  sw         $a1, 0x24($sp)
/* B2310 800B1710 0C026DB4 */  jal        func_8009B6D0
/* B2314 800B1714 24040001 */   addiu     $a0, $zero, 1
/* B2318 800B1718 AFA2001C */  sw         $v0, 0x1c($sp)
/* B231C 800B171C 8FAE0020 */  lw         $t6, 0x20($sp)
/* B2320 800B1720 8FB80024 */  lw         $t8, 0x24($sp)
/* B2324 800B1724 8DCF0020 */  lw         $t7, 0x20($t6)
/* B2328 800B1728 AF0F0010 */  sw         $t7, 0x10($t8)
/* B232C 800B172C 8FB90020 */  lw         $t9, 0x20($sp)
/* B2330 800B1730 8FA90024 */  lw         $t1, 0x24($sp)
/* B2334 800B1734 8F280000 */  lw         $t0, ($t9)
/* B2338 800B1738 AD280000 */  sw         $t0, ($t1)
/* B233C 800B173C 8FAA0024 */  lw         $t2, 0x24($sp)
/* B2340 800B1740 8FAB0020 */  lw         $t3, 0x20($sp)
/* B2344 800B1744 AD6A0000 */  sw         $t2, ($t3)
/* B2348 800B1748 0C026DB4 */  jal        func_8009B6D0
/* B234C 800B174C 8FA4001C */   lw        $a0, 0x1c($sp)
/* B2350 800B1750 10000001 */  b          .L800B1758
/* B2354 800B1754 00000000 */   nop
.L800B1758:
/* B2358 800B1758 8FBF0014 */  lw         $ra, 0x14($sp)
/* B235C 800B175C 27BD0020 */  addiu      $sp, $sp, 0x20
/* B2360 800B1760 03E00008 */  jr         $ra
/* B2364 800B1764 00000000 */   nop
/* B2368 800B1768 00000000 */  nop
/* B236C 800B176C 00000000 */  nop
