.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D1710
/* D2310 800D1710 40085000 */  mfc0       $t0, $10
/* D2314 800D1714 2409001F */  addiu      $t1, $zero, 0x1f
/* D2318 800D1718 40890000 */  mtc0       $t1, $0
/* D231C 800D171C 40802800 */  mtc0       $zero, $5
/* D2320 800D1720 240A0017 */  addiu      $t2, $zero, 0x17
/* D2324 800D1724 3C09C000 */  lui        $t1, 0xc000
/* D2328 800D1728 40895000 */  mtc0       $t1, $10
/* D232C 800D172C 3C098000 */  lui        $t1, 0x8000
/* D2330 800D1730 00095982 */  srl        $t3, $t1, 6
/* D2334 800D1734 016A5825 */  or         $t3, $t3, $t2
/* D2338 800D1738 408B1000 */  mtc0       $t3, $2
/* D233C 800D173C 24090001 */  addiu      $t1, $zero, 1
/* D2340 800D1740 40891800 */  mtc0       $t1, $3
/* D2344 800D1744 00000000 */  nop
/* D2348 800D1748 42000002 */  tlbwi
/* D234C 800D174C 00000000 */  nop
/* D2350 800D1750 00000000 */  nop
/* D2354 800D1754 00000000 */  nop
/* D2358 800D1758 00000000 */  nop
/* D235C 800D175C 40885000 */  mtc0       $t0, $10
/* D2360 800D1760 03E00008 */  jr         $ra
/* D2364 800D1764 00000000 */   nop
/* D2368 800D1768 00000000 */  nop
/* D236C 800D176C 00000000 */  nop
