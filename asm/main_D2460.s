.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D1860
/* D2460 800D1860 3C013F80 */  lui        $at, 0x3f80
/* D2464 800D1864 44811000 */  mtc1       $at, $f2
/* D2468 800D1868 04800004 */  bltz       $a0, .L800D187C
/* D246C 800D186C 3C01800E */   lui       $at, 0x800e
/* D2470 800D1870 3C01800E */  lui        $at, %hi(D_800DFEB0)
/* D2474 800D1874 10000003 */  b          .L800D1884
/* D2478 800D1878 C420FEB0 */   lwc1      $f0, %lo(D_800DFEB0)($at)
.L800D187C:
/* D247C 800D187C C420FEB4 */  lwc1       $f0, -0x14c($at)
/* D2480 800D1880 00042023 */  negu       $a0, $a0
.L800D1884:
/* D2484 800D1884 10800008 */  beqz       $a0, .L800D18A8
.L800D1888:
/* D2488 800D1888 308E0001 */   andi      $t6, $a0, 1
/* D248C 800D188C 11C00003 */  beqz       $t6, .L800D189C
/* D2490 800D1890 00047843 */   sra       $t7, $a0, 1
/* D2494 800D1894 46001082 */  mul.s      $f2, $f2, $f0
/* D2498 800D1898 00000000 */  nop
.L800D189C:
/* D249C 800D189C 46000002 */  mul.s      $f0, $f0, $f0
/* D24A0 800D18A0 15E0FFF9 */  bnez       $t7, .L800D1888
/* D24A4 800D18A4 01E02025 */   or        $a0, $t7, $zero
.L800D18A8:
/* D24A8 800D18A8 03E00008 */  jr         $ra
/* D24AC 800D18AC 46001006 */   mov.s     $f0, $f2

glabel func_800D18B0
/* D24B0 800D18B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D24B4 800D18B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* D24B8 800D18B8 AFA50024 */  sw         $a1, 0x24($sp)
/* D24BC 800D18BC AFA60028 */  sw         $a2, 0x28($sp)
/* D24C0 800D18C0 AFA7002C */  sw         $a3, 0x2c($sp)
/* D24C4 800D18C4 8CAE0008 */  lw         $t6, 8($a1)
/* D24C8 800D18C8 51C0002F */  beql       $t6, $zero, .L800D1988
/* D24CC 800D18CC 8FBF0014 */   lw        $ra, 0x14($sp)
/* D24D0 800D18D0 AFA40020 */  sw         $a0, 0x20($sp)
/* D24D4 800D18D4 0C031FF4 */  jal        func_800C7FD0
/* D24D8 800D18D8 AFA50024 */   sw        $a1, 0x24($sp)
/* D24DC 800D18DC 8FA40020 */  lw         $a0, 0x20($sp)
/* D24E0 800D18E0 8FA70024 */  lw         $a3, 0x24($sp)
/* D24E4 800D18E4 10400027 */  beqz       $v0, .L800D1984
/* D24E8 800D18E8 00403025 */   or        $a2, $v0, $zero
/* D24EC 800D18EC 93A3003B */  lbu        $v1, 0x3b($sp)
/* D24F0 800D18F0 04610004 */  bgez       $v1, .L800D1904
/* D24F4 800D18F4 00601025 */   or        $v0, $v1, $zero
/* D24F8 800D18F8 00021823 */  negu       $v1, $v0
/* D24FC 800D18FC 306F00FF */  andi       $t7, $v1, 0xff
/* D2500 800D1900 01E01825 */  or         $v1, $t7, $zero
.L800D1904:
/* D2504 800D1904 8CF90008 */  lw         $t9, 8($a3)
/* D2508 800D1908 8C98001C */  lw         $t8, 0x1c($a0)
/* D250C 800D190C 240A000D */  addiu      $t2, $zero, 0xd
/* D2510 800D1910 8F2800D8 */  lw         $t0, 0xd8($t9)
/* D2514 800D1914 ACC00000 */  sw         $zero, ($a2)
/* D2518 800D1918 A4CA0008 */  sh         $t2, 8($a2)
/* D251C 800D191C 03084821 */  addu       $t1, $t8, $t0
/* D2520 800D1920 ACC90004 */  sw         $t1, 4($a2)
/* D2524 800D1924 84EB001A */  lh         $t3, 0x1a($a3)
/* D2528 800D1928 A4CB000A */  sh         $t3, 0xa($a2)
/* D252C 800D192C 93AC0037 */  lbu        $t4, 0x37($sp)
/* D2530 800D1930 A0CC0012 */  sb         $t4, 0x12($a2)
/* D2534 800D1934 87AD0032 */  lh         $t5, 0x32($sp)
/* D2538 800D1938 A0C30013 */  sb         $v1, 0x13($a2)
/* D253C 800D193C A4CD0010 */  sh         $t5, 0x10($a2)
/* D2540 800D1940 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* D2544 800D1944 E4C4000C */  swc1       $f4, 0xc($a2)
/* D2548 800D1948 AFA70024 */  sw         $a3, 0x24($sp)
/* D254C 800D194C AFA6001C */  sw         $a2, 0x1c($sp)
/* D2550 800D1950 0C031FB2 */  jal        func_800C7EC8
/* D2554 800D1954 8FA5003C */   lw        $a1, 0x3c($sp)
/* D2558 800D1958 8FA6001C */  lw         $a2, 0x1c($sp)
/* D255C 800D195C 8FA70024 */  lw         $a3, 0x24($sp)
/* D2560 800D1960 24050003 */  addiu      $a1, $zero, 3
/* D2564 800D1964 ACC20014 */  sw         $v0, 0x14($a2)
/* D2568 800D1968 8FAE0028 */  lw         $t6, 0x28($sp)
/* D256C 800D196C ACCE0018 */  sw         $t6, 0x18($a2)
/* D2570 800D1970 8CEF0008 */  lw         $t7, 8($a3)
/* D2574 800D1974 8DE4000C */  lw         $a0, 0xc($t7)
/* D2578 800D1978 8C990008 */  lw         $t9, 8($a0)
/* D257C 800D197C 0320F809 */  jalr       $t9
/* D2580 800D1980 00000000 */   nop
.L800D1984:
/* D2584 800D1984 8FBF0014 */  lw         $ra, 0x14($sp)
.L800D1988:
/* D2588 800D1988 27BD0020 */  addiu      $sp, $sp, 0x20
/* D258C 800D198C 03E00008 */  jr         $ra
/* D2590 800D1990 00000000 */   nop
/* D2594 800D1994 00000000 */  nop
/* D2598 800D1998 00000000 */  nop
/* D259C 800D199C 00000000 */  nop
