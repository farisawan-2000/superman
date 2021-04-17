.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B1770
/* B2370 800B1770 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B2374 800B1774 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2378 800B1778 AFA40048 */  sw         $a0, 0x48($sp)
/* B237C 800B177C AFA5004C */  sw         $a1, 0x4c($sp)
/* B2380 800B1780 AFA60050 */  sw         $a2, 0x50($sp)
/* B2384 800B1784 AFA0001C */  sw         $zero, 0x1c($sp)
/* B2388 800B1788 8FAE0048 */  lw         $t6, 0x48($sp)
/* B238C 800B178C 8DCF0000 */  lw         $t7, ($t6)
/* B2390 800B1790 31F80001 */  andi       $t8, $t7, 1
/* B2394 800B1794 17000003 */  bnez       $t8, .L800B17A4
/* B2398 800B1798 00000000 */   nop
/* B239C 800B179C 10000045 */  b          .L800B18B4
/* B23A0 800B17A0 24020005 */   addiu     $v0, $zero, 5
.L800B17A4:
/* B23A4 800B17A4 0C0290BF */  jal        func_800A42FC
/* B23A8 800B17A8 8FA40048 */   lw        $a0, 0x48($sp)
/* B23AC 800B17AC 24010002 */  addiu      $at, $zero, 2
/* B23B0 800B17B0 14410003 */  bne        $v0, $at, .L800B17C0
/* B23B4 800B17B4 00000000 */   nop
/* B23B8 800B17B8 1000003E */  b          .L800B18B4
/* B23BC 800B17BC 24020002 */   addiu     $v0, $zero, 2
.L800B17C0:
/* B23C0 800B17C0 8FB90048 */  lw         $t9, 0x48($sp)
/* B23C4 800B17C4 93280065 */  lbu        $t0, 0x65($t9)
/* B23C8 800B17C8 1100000B */  beqz       $t0, .L800B17F8
/* B23CC 800B17CC 00000000 */   nop
/* B23D0 800B17D0 8FA90048 */  lw         $t1, 0x48($sp)
/* B23D4 800B17D4 A1200065 */  sb         $zero, 0x65($t1)
/* B23D8 800B17D8 0C0291D5 */  jal        func_800A4754
/* B23DC 800B17DC 8FA40048 */   lw        $a0, 0x48($sp)
/* B23E0 800B17E0 AFA20040 */  sw         $v0, 0x40($sp)
/* B23E4 800B17E4 8FAA0040 */  lw         $t2, 0x40($sp)
/* B23E8 800B17E8 11400003 */  beqz       $t2, .L800B17F8
/* B23EC 800B17EC 00000000 */   nop
/* B23F0 800B17F0 10000030 */  b          .L800B18B4
/* B23F4 800B17F4 8FA20040 */   lw        $v0, 0x40($sp)
.L800B17F8:
/* B23F8 800B17F8 8FAB0048 */  lw         $t3, 0x48($sp)
/* B23FC 800B17FC AFA00044 */  sw         $zero, 0x44($sp)
/* B2400 800B1800 8D6C0050 */  lw         $t4, 0x50($t3)
/* B2404 800B1804 19800020 */  blez       $t4, .L800B1888
/* B2408 800B1808 00000000 */   nop
.L800B180C:
/* B240C 800B180C 8FAD0048 */  lw         $t5, 0x48($sp)
/* B2410 800B1810 8FAF0044 */  lw         $t7, 0x44($sp)
/* B2414 800B1814 27A70020 */  addiu      $a3, $sp, 0x20
/* B2418 800B1818 8DAE005C */  lw         $t6, 0x5c($t5)
/* B241C 800B181C 8DA40004 */  lw         $a0, 4($t5)
/* B2420 800B1820 8DA50008 */  lw         $a1, 8($t5)
/* B2424 800B1824 0C02E3D8 */  jal        func_800B8F60
/* B2428 800B1828 01CF3021 */   addu      $a2, $t6, $t7
/* B242C 800B182C AFA20040 */  sw         $v0, 0x40($sp)
/* B2430 800B1830 8FB80040 */  lw         $t8, 0x40($sp)
/* B2434 800B1834 13000003 */  beqz       $t8, .L800B1844
/* B2438 800B1838 00000000 */   nop
/* B243C 800B183C 1000001D */  b          .L800B18B4
/* B2440 800B1840 8FA20040 */   lw        $v0, 0x40($sp)
.L800B1844:
/* B2444 800B1844 97B90024 */  lhu        $t9, 0x24($sp)
/* B2448 800B1848 13200007 */  beqz       $t9, .L800B1868
/* B244C 800B184C 00000000 */   nop
/* B2450 800B1850 8FA80020 */  lw         $t0, 0x20($sp)
/* B2454 800B1854 11000004 */  beqz       $t0, .L800B1868
/* B2458 800B1858 00000000 */   nop
/* B245C 800B185C 8FA9001C */  lw         $t1, 0x1c($sp)
/* B2460 800B1860 252A0001 */  addiu      $t2, $t1, 1
/* B2464 800B1864 AFAA001C */  sw         $t2, 0x1c($sp)
.L800B1868:
/* B2468 800B1868 8FAB0044 */  lw         $t3, 0x44($sp)
/* B246C 800B186C 8FAD0048 */  lw         $t5, 0x48($sp)
/* B2470 800B1870 256C0001 */  addiu      $t4, $t3, 1
/* B2474 800B1874 AFAC0044 */  sw         $t4, 0x44($sp)
/* B2478 800B1878 8DAE0050 */  lw         $t6, 0x50($t5)
/* B247C 800B187C 018E082A */  slt        $at, $t4, $t6
/* B2480 800B1880 1420FFE2 */  bnez       $at, .L800B180C
/* B2484 800B1884 00000000 */   nop
.L800B1888:
/* B2488 800B1888 8FAF001C */  lw         $t7, 0x1c($sp)
/* B248C 800B188C 8FB80050 */  lw         $t8, 0x50($sp)
/* B2490 800B1890 AF0F0000 */  sw         $t7, ($t8)
/* B2494 800B1894 8FB90048 */  lw         $t9, 0x48($sp)
/* B2498 800B1898 8FA9004C */  lw         $t1, 0x4c($sp)
/* B249C 800B189C 8F280050 */  lw         $t0, 0x50($t9)
/* B24A0 800B18A0 AD280000 */  sw         $t0, ($t1)
/* B24A4 800B18A4 10000003 */  b          .L800B18B4
/* B24A8 800B18A8 00001025 */   or        $v0, $zero, $zero
/* B24AC 800B18AC 10000001 */  b          .L800B18B4
/* B24B0 800B18B0 00000000 */   nop
.L800B18B4:
/* B24B4 800B18B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B24B8 800B18B8 27BD0048 */  addiu      $sp, $sp, 0x48
/* B24BC 800B18BC 03E00008 */  jr         $ra
/* B24C0 800B18C0 00000000 */   nop
/* B24C4 800B18C4 00000000 */  nop
/* B24C8 800B18C8 00000000 */  nop
/* B24CC 800B18CC 00000000 */  nop
