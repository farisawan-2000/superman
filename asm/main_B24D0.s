.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B18D0
/* B24D0 800B18D0 AFA40000 */  sw         $a0, ($sp)
/* B24D4 800B18D4 10000003 */  b          .L800B18E4
/* B24D8 800B18D8 2402FFFF */   addiu     $v0, $zero, -1
/* B24DC 800B18DC 10000001 */  b          .L800B18E4
/* B24E0 800B18E0 00000000 */   nop
.L800B18E4:
/* B24E4 800B18E4 03E00008 */  jr         $ra
/* B24E8 800B18E8 00000000 */   nop

glabel func_800B18EC
/* B24EC 800B18EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B24F0 800B18F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B24F4 800B18F4 AFA40028 */  sw         $a0, 0x28($sp)
/* B24F8 800B18F8 8FAE0028 */  lw         $t6, 0x28($sp)
/* B24FC 800B18FC 91CF0004 */  lbu        $t7, 4($t6)
/* B2500 800B1900 29E10035 */  slti       $at, $t7, 0x35
/* B2504 800B1904 14200003 */  bnez       $at, .L800B1914
/* B2508 800B1908 00000000 */   nop
/* B250C 800B190C 1000001B */  b          .L800B197C
/* B2510 800B1910 2402FFFF */   addiu     $v0, $zero, -1
.L800B1914:
/* B2514 800B1914 8FB80028 */  lw         $t8, 0x28($sp)
/* B2518 800B1918 93190004 */  lbu        $t9, 4($t8)
/* B251C 800B191C 03002025 */  or         $a0, $t8, $zero
/* B2520 800B1920 00194080 */  sll        $t0, $t9, 2
/* B2524 800B1924 3C19800D */  lui        $t9, %hi(D_800CD580)
/* B2528 800B1928 0328C821 */  addu       $t9, $t9, $t0
/* B252C 800B192C 8F39D580 */  lw         $t9, %lo(D_800CD580)($t9)
/* B2530 800B1930 0320F809 */  jalr       $t9
/* B2534 800B1934 00000000 */   nop
/* B2538 800B1938 AFA20024 */  sw         $v0, 0x24($sp)
/* B253C 800B193C 8FA90024 */  lw         $t1, 0x24($sp)
/* B2540 800B1940 0521000A */  bgez       $t1, .L800B196C
/* B2544 800B1944 00000000 */   nop
/* B2548 800B1948 8FAA0028 */  lw         $t2, 0x28($sp)
/* B254C 800B194C 914B0004 */  lbu        $t3, 4($t2)
/* B2550 800B1950 A3AB001C */  sb         $t3, 0x1c($sp)
/* B2554 800B1954 8FAC0024 */  lw         $t4, 0x24($sp)
/* B2558 800B1958 A7AC001E */  sh         $t4, 0x1e($sp)
/* B255C 800B195C 27A40018 */  addiu      $a0, $sp, 0x18
/* B2560 800B1960 2405000C */  addiu      $a1, $zero, 0xc
/* B2564 800B1964 0C02C907 */  jal        func_800B241C
/* B2568 800B1968 24060001 */   addiu     $a2, $zero, 1
.L800B196C:
/* B256C 800B196C 10000003 */  b          .L800B197C
/* B2570 800B1970 8FA20024 */   lw        $v0, 0x24($sp)
/* B2574 800B1974 10000001 */  b          .L800B197C
/* B2578 800B1978 00000000 */   nop
.L800B197C:
/* B257C 800B197C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2580 800B1980 27BD0028 */  addiu      $sp, $sp, 0x28
/* B2584 800B1984 03E00008 */  jr         $ra
/* B2588 800B1988 00000000 */   nop
/* B258C 800B198C 00000000 */  nop
