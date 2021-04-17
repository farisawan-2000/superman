.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D17C0
/* D23C0 800D17C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D23C4 800D17C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* D23C8 800D17C8 AFA5001C */  sw         $a1, 0x1c($sp)
/* D23CC 800D17CC AFA60020 */  sw         $a2, 0x20($sp)
/* D23D0 800D17D0 AFA70024 */  sw         $a3, 0x24($sp)
/* D23D4 800D17D4 0C031110 */  jal        func_800C4440
/* D23D8 800D17D8 AFA40018 */   sw        $a0, 0x18($sp)
/* D23DC 800D17DC 8FA40018 */  lw         $a0, 0x18($sp)
/* D23E0 800D17E0 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* D23E4 800D17E4 E4840030 */  swc1       $f4, 0x30($a0)
/* D23E8 800D17E8 C7A60020 */  lwc1       $f6, 0x20($sp)
/* D23EC 800D17EC E4860034 */  swc1       $f6, 0x34($a0)
/* D23F0 800D17F0 C7A80024 */  lwc1       $f8, 0x24($sp)
/* D23F4 800D17F4 E4880038 */  swc1       $f8, 0x38($a0)
/* D23F8 800D17F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* D23FC 800D17FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* D2400 800D1800 03E00008 */  jr         $ra
/* D2404 800D1804 00000000 */   nop

glabel func_800D1808
/* D2408 800D1808 27BDFF98 */  addiu      $sp, $sp, -0x68
/* D240C 800D180C AFBF0014 */  sw         $ra, 0x14($sp)
/* D2410 800D1810 AFA40068 */  sw         $a0, 0x68($sp)
/* D2414 800D1814 AFA5006C */  sw         $a1, 0x6c($sp)
/* D2418 800D1818 AFA60070 */  sw         $a2, 0x70($sp)
/* D241C 800D181C AFA70074 */  sw         $a3, 0x74($sp)
/* D2420 800D1820 0C031110 */  jal        func_800C4440
/* D2424 800D1824 27A40028 */   addiu     $a0, $sp, 0x28
/* D2428 800D1828 C7A4006C */  lwc1       $f4, 0x6c($sp)
/* D242C 800D182C C7A60070 */  lwc1       $f6, 0x70($sp)
/* D2430 800D1830 C7A80074 */  lwc1       $f8, 0x74($sp)
/* D2434 800D1834 27A40028 */  addiu      $a0, $sp, 0x28
/* D2438 800D1838 8FA50068 */  lw         $a1, 0x68($sp)
/* D243C 800D183C E7A40058 */  swc1       $f4, 0x58($sp)
/* D2440 800D1840 E7A6005C */  swc1       $f6, 0x5c($sp)
/* D2444 800D1844 0C0310D0 */  jal        func_800C4340
/* D2448 800D1848 E7A80060 */   swc1      $f8, 0x60($sp)
/* D244C 800D184C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D2450 800D1850 27BD0068 */  addiu      $sp, $sp, 0x68
/* D2454 800D1854 03E00008 */  jr         $ra
/* D2458 800D1858 00000000 */   nop
/* D245C 800D185C 00000000 */  nop
