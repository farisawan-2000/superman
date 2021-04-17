.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D19A0
/* D25A0 800D19A0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* D25A4 800D19A4 8FB80070 */  lw         $t8, 0x70($sp)
/* D25A8 800D19A8 3C0E8014 */  lui        $t6, %hi(D_80145890)
/* D25AC 800D19AC 25CE5890 */  addiu      $t6, $t6, %lo(D_80145890)
/* D25B0 800D19B0 240F0002 */  addiu      $t7, $zero, 2
/* D25B4 800D19B4 24010001 */  addiu      $at, $zero, 1
/* D25B8 800D19B8 AFBF001C */  sw         $ra, 0x1c($sp)
/* D25BC 800D19BC AFA40060 */  sw         $a0, 0x60($sp)
/* D25C0 800D19C0 AFA50064 */  sw         $a1, 0x64($sp)
/* D25C4 800D19C4 AFA60068 */  sw         $a2, 0x68($sp)
/* D25C8 800D19C8 AFA7006C */  sw         $a3, 0x6c($sp)
/* D25CC 800D19CC AFB00018 */  sw         $s0, 0x18($sp)
/* D25D0 800D19D0 AFA0005C */  sw         $zero, 0x5c($sp)
/* D25D4 800D19D4 AFAE0054 */  sw         $t6, 0x54($sp)
/* D25D8 800D19D8 13010009 */  beq        $t8, $at, .L800D1A00
/* D25DC 800D19DC AFAF0028 */   sw        $t7, 0x28($sp)
/* D25E0 800D19E0 97B9006A */  lhu        $t9, 0x6a($sp)
/* D25E4 800D19E4 2B210007 */  slti       $at, $t9, 7
/* D25E8 800D19E8 10200005 */  beqz       $at, .L800D1A00
/* D25EC 800D19EC 00000000 */   nop
/* D25F0 800D19F0 13200003 */  beqz       $t9, .L800D1A00
/* D25F4 800D19F4 00000000 */   nop
/* D25F8 800D19F8 10000065 */  b          .L800D1B90
/* D25FC 800D19FC 00001025 */   or        $v0, $zero, $zero
.L800D1A00:
/* D2600 800D1A00 0C02FF20 */  jal        func_800BFC80
/* D2604 800D1A04 00000000 */   nop
/* D2608 800D1A08 24080003 */  addiu      $t0, $zero, 3
/* D260C 800D1A0C 3C018014 */  lui        $at, %hi(D_80145420)
/* D2610 800D1A10 A0285420 */  sb         $t0, %lo(D_80145420)($at)
/* D2614 800D1A14 8FA40064 */  lw         $a0, 0x64($sp)
/* D2618 800D1A18 97A5006A */  lhu        $a1, 0x6a($sp)
/* D261C 800D1A1C 0C0346E9 */  jal        func_800D1BA4
/* D2620 800D1A20 8FA6006C */   lw        $a2, 0x6c($sp)
/* D2624 800D1A24 3C058014 */  lui        $a1, %hi(D_80145890)
/* D2628 800D1A28 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* D262C 800D1A2C 0C030F00 */  jal        func_800C3C00
/* D2630 800D1A30 24040001 */   addiu     $a0, $zero, 1
/* D2634 800D1A34 AFA2005C */  sw         $v0, 0x5c($sp)
/* D2638 800D1A38 8FA40060 */  lw         $a0, 0x60($sp)
/* D263C 800D1A3C 00002825 */  or         $a1, $zero, $zero
/* D2640 800D1A40 0C02F85C */  jal        func_800BE170
/* D2644 800D1A44 24060001 */   addiu     $a2, $zero, 1
.L800D1A48:
/* D2648 800D1A48 3C058014 */  lui        $a1, %hi(D_80145890)
/* D264C 800D1A4C 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* D2650 800D1A50 0C030F00 */  jal        func_800C3C00
/* D2654 800D1A54 00002025 */   or        $a0, $zero, $zero
/* D2658 800D1A58 AFA2005C */  sw         $v0, 0x5c($sp)
/* D265C 800D1A5C 8FA40060 */  lw         $a0, 0x60($sp)
/* D2660 800D1A60 00002825 */  or         $a1, $zero, $zero
/* D2664 800D1A64 0C02F85C */  jal        func_800BE170
/* D2668 800D1A68 24060001 */   addiu     $a2, $zero, 1
/* D266C 800D1A6C 8FAA0064 */  lw         $t2, 0x64($sp)
/* D2670 800D1A70 3C098014 */  lui        $t1, %hi(D_80145890)
/* D2674 800D1A74 25295890 */  addiu      $t1, $t1, %lo(D_80145890)
/* D2678 800D1A78 1140000C */  beqz       $t2, .L800D1AAC
/* D267C 800D1A7C AFA90054 */   sw        $t1, 0x54($sp)
/* D2680 800D1A80 1940000A */  blez       $t2, .L800D1AAC
/* D2684 800D1A84 AFA00058 */   sw        $zero, 0x58($sp)
.L800D1A88:
/* D2688 800D1A88 8FAD0058 */  lw         $t5, 0x58($sp)
/* D268C 800D1A8C 8FAF0064 */  lw         $t7, 0x64($sp)
/* D2690 800D1A90 8FAB0054 */  lw         $t3, 0x54($sp)
/* D2694 800D1A94 25AE0001 */  addiu      $t6, $t5, 1
/* D2698 800D1A98 01CF082A */  slt        $at, $t6, $t7
/* D269C 800D1A9C 256C0001 */  addiu      $t4, $t3, 1
/* D26A0 800D1AA0 AFAE0058 */  sw         $t6, 0x58($sp)
/* D26A4 800D1AA4 1420FFF8 */  bnez       $at, .L800D1A88
/* D26A8 800D1AA8 AFAC0054 */   sw        $t4, 0x54($sp)
.L800D1AAC:
/* D26AC 800D1AAC 8FB90054 */  lw         $t9, 0x54($sp)
/* D26B0 800D1AB0 27B8002C */  addiu      $t8, $sp, 0x2c
/* D26B4 800D1AB4 27290024 */  addiu      $t1, $t9, 0x24
.L800D1AB8:
/* D26B8 800D1AB8 8B210000 */  lwl        $at, ($t9)
/* D26BC 800D1ABC 9B210003 */  lwr        $at, 3($t9)
/* D26C0 800D1AC0 2739000C */  addiu      $t9, $t9, 0xc
/* D26C4 800D1AC4 2718000C */  addiu      $t8, $t8, 0xc
/* D26C8 800D1AC8 AF01FFF4 */  sw         $at, -0xc($t8)
/* D26CC 800D1ACC 8B21FFF8 */  lwl        $at, -8($t9)
/* D26D0 800D1AD0 9B21FFFB */  lwr        $at, -5($t9)
/* D26D4 800D1AD4 AF01FFF8 */  sw         $at, -8($t8)
/* D26D8 800D1AD8 8B21FFFC */  lwl        $at, -4($t9)
/* D26DC 800D1ADC 9B21FFFF */  lwr        $at, -1($t9)
/* D26E0 800D1AE0 1729FFF5 */  bne        $t9, $t1, .L800D1AB8
/* D26E4 800D1AE4 AF01FFFC */   sw        $at, -4($t8)
/* D26E8 800D1AE8 8B210000 */  lwl        $at, ($t9)
/* D26EC 800D1AEC 9B210003 */  lwr        $at, 3($t9)
/* D26F0 800D1AF0 AF010000 */  sw         $at, ($t8)
/* D26F4 800D1AF4 93AA002E */  lbu        $t2, 0x2e($sp)
/* D26F8 800D1AF8 314B00C0 */  andi       $t3, $t2, 0xc0
/* D26FC 800D1AFC 000B6103 */  sra        $t4, $t3, 4
/* D2700 800D1B00 15800014 */  bnez       $t4, .L800D1B54
/* D2704 800D1B04 AFAC005C */   sw        $t4, 0x5c($sp)
/* D2708 800D1B08 0C033AF4 */  jal        func_800CEBD0
/* D270C 800D1B0C 8FA4006C */   lw        $a0, 0x6c($sp)
/* D2710 800D1B10 93AD0052 */  lbu        $t5, 0x52($sp)
/* D2714 800D1B14 104D0011 */  beq        $v0, $t5, .L800D1B5C
/* D2718 800D1B18 00000000 */   nop
/* D271C 800D1B1C 8FA40060 */  lw         $a0, 0x60($sp)
/* D2720 800D1B20 0C0341F4 */  jal        func_800D07D0
/* D2724 800D1B24 8FA50064 */   lw        $a1, 0x64($sp)
/* D2728 800D1B28 AFA2005C */  sw         $v0, 0x5c($sp)
/* D272C 800D1B2C 8FAE005C */  lw         $t6, 0x5c($sp)
/* D2730 800D1B30 11C00005 */  beqz       $t6, .L800D1B48
/* D2734 800D1B34 00000000 */   nop
/* D2738 800D1B38 0C02FF31 */  jal        func_800BFCC4
/* D273C 800D1B3C 00000000 */   nop
/* D2740 800D1B40 10000013 */  b          .L800D1B90
/* D2744 800D1B44 8FA2005C */   lw        $v0, 0x5c($sp)
.L800D1B48:
/* D2748 800D1B48 240F0004 */  addiu      $t7, $zero, 4
/* D274C 800D1B4C 10000003 */  b          .L800D1B5C
/* D2750 800D1B50 AFAF005C */   sw        $t7, 0x5c($sp)
.L800D1B54:
/* D2754 800D1B54 24080001 */  addiu      $t0, $zero, 1
/* D2758 800D1B58 AFA8005C */  sw         $t0, 0x5c($sp)
.L800D1B5C:
/* D275C 800D1B5C 8FA9005C */  lw         $t1, 0x5c($sp)
/* D2760 800D1B60 24010004 */  addiu      $at, $zero, 4
/* D2764 800D1B64 15210007 */  bne        $t1, $at, .L800D1B84
/* D2768 800D1B68 00000000 */   nop
/* D276C 800D1B6C 8FB90028 */  lw         $t9, 0x28($sp)
/* D2770 800D1B70 2B300000 */  slti       $s0, $t9, 0
/* D2774 800D1B74 3A100001 */  xori       $s0, $s0, 1
/* D2778 800D1B78 2738FFFF */  addiu      $t8, $t9, -1
/* D277C 800D1B7C 1600FFB2 */  bnez       $s0, .L800D1A48
/* D2780 800D1B80 AFB80028 */   sw        $t8, 0x28($sp)
.L800D1B84:
/* D2784 800D1B84 0C02FF31 */  jal        func_800BFCC4
/* D2788 800D1B88 00000000 */   nop
/* D278C 800D1B8C 8FA2005C */  lw         $v0, 0x5c($sp)
.L800D1B90:
/* D2790 800D1B90 8FBF001C */  lw         $ra, 0x1c($sp)
/* D2794 800D1B94 8FB00018 */  lw         $s0, 0x18($sp)
/* D2798 800D1B98 27BD0060 */  addiu      $sp, $sp, 0x60
/* D279C 800D1B9C 03E00008 */  jr         $ra
/* D27A0 800D1BA0 00000000 */   nop

glabel func_800D1BA4
/* D27A4 800D1BA4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D27A8 800D1BA8 3C0E8014 */  lui        $t6, %hi(D_80145890)
/* D27AC 800D1BAC AFBF0014 */  sw         $ra, 0x14($sp)
/* D27B0 800D1BB0 AFA40048 */  sw         $a0, 0x48($sp)
/* D27B4 800D1BB4 AFA5004C */  sw         $a1, 0x4c($sp)
/* D27B8 800D1BB8 25CE5890 */  addiu      $t6, $t6, %lo(D_80145890)
/* D27BC 800D1BBC 240F0001 */  addiu      $t7, $zero, 1
/* D27C0 800D1BC0 3C018014 */  lui        $at, 0x8014
/* D27C4 800D1BC4 241800FF */  addiu      $t8, $zero, 0xff
/* D27C8 800D1BC8 24190023 */  addiu      $t9, $zero, 0x23
/* D27CC 800D1BCC 24080001 */  addiu      $t0, $zero, 1
/* D27D0 800D1BD0 24090003 */  addiu      $t1, $zero, 3
/* D27D4 800D1BD4 AFA60050 */  sw         $a2, 0x50($sp)
/* D27D8 800D1BD8 AFAE0044 */  sw         $t6, 0x44($sp)
/* D27DC 800D1BDC AC2F58CC */  sw         $t7, 0x58cc($at)
/* D27E0 800D1BE0 A3B8001C */  sb         $t8, 0x1c($sp)
/* D27E4 800D1BE4 A3B9001D */  sb         $t9, 0x1d($sp)
/* D27E8 800D1BE8 A3A8001E */  sb         $t0, 0x1e($sp)
/* D27EC 800D1BEC A3A9001F */  sb         $t1, 0x1f($sp)
/* D27F0 800D1BF0 0C033AC8 */  jal        func_800CEB20
/* D27F4 800D1BF4 97A4004E */   lhu       $a0, 0x4e($sp)
/* D27F8 800D1BF8 97AA004E */  lhu        $t2, 0x4e($sp)
/* D27FC 800D1BFC 240D00FF */  addiu      $t5, $zero, 0xff
/* D2800 800D1C00 A3AD0042 */  sb         $t5, 0x42($sp)
/* D2804 800D1C04 000A5940 */  sll        $t3, $t2, 5
/* D2808 800D1C08 004B6025 */  or         $t4, $v0, $t3
/* D280C 800D1C0C A7AC0020 */  sh         $t4, 0x20($sp)
/* D2810 800D1C10 AFA00018 */  sw         $zero, 0x18($sp)
.L800D1C14:
/* D2814 800D1C14 8FAE0050 */  lw         $t6, 0x50($sp)
/* D2818 800D1C18 8FB80018 */  lw         $t8, 0x18($sp)
/* D281C 800D1C1C 91CF0000 */  lbu        $t7, ($t6)
/* D2820 800D1C20 03B8C821 */  addu       $t9, $sp, $t8
/* D2824 800D1C24 A32F0022 */  sb         $t7, 0x22($t9)
/* D2828 800D1C28 8FAA0018 */  lw         $t2, 0x18($sp)
/* D282C 800D1C2C 8FA80050 */  lw         $t0, 0x50($sp)
/* D2830 800D1C30 254B0001 */  addiu      $t3, $t2, 1
/* D2834 800D1C34 29610020 */  slti       $at, $t3, 0x20
/* D2838 800D1C38 25090001 */  addiu      $t1, $t0, 1
/* D283C 800D1C3C AFAB0018 */  sw         $t3, 0x18($sp)
/* D2840 800D1C40 1420FFF4 */  bnez       $at, .L800D1C14
/* D2844 800D1C44 AFA90050 */   sw        $t1, 0x50($sp)
/* D2848 800D1C48 8FAC0048 */  lw         $t4, 0x48($sp)
/* D284C 800D1C4C 1180000E */  beqz       $t4, .L800D1C88
/* D2850 800D1C50 00000000 */   nop
/* D2854 800D1C54 1980000C */  blez       $t4, .L800D1C88
/* D2858 800D1C58 AFA00018 */   sw        $zero, 0x18($sp)
.L800D1C5C:
/* D285C 800D1C5C 8FAD0044 */  lw         $t5, 0x44($sp)
/* D2860 800D1C60 A1A00000 */  sb         $zero, ($t5)
/* D2864 800D1C64 8FB80018 */  lw         $t8, 0x18($sp)
/* D2868 800D1C68 8FA80048 */  lw         $t0, 0x48($sp)
/* D286C 800D1C6C 8FAE0044 */  lw         $t6, 0x44($sp)
/* D2870 800D1C70 27190001 */  addiu      $t9, $t8, 1
/* D2874 800D1C74 0328082A */  slt        $at, $t9, $t0
/* D2878 800D1C78 25CF0001 */  addiu      $t7, $t6, 1
/* D287C 800D1C7C AFAF0044 */  sw         $t7, 0x44($sp)
/* D2880 800D1C80 1420FFF6 */  bnez       $at, .L800D1C5C
/* D2884 800D1C84 AFB90018 */   sw        $t9, 0x18($sp)
.L800D1C88:
/* D2888 800D1C88 27AA001C */  addiu      $t2, $sp, 0x1c
/* D288C 800D1C8C 254C0024 */  addiu      $t4, $t2, 0x24
/* D2890 800D1C90 8FA90044 */  lw         $t1, 0x44($sp)
.L800D1C94:
/* D2894 800D1C94 8D410000 */  lw         $at, ($t2)
/* D2898 800D1C98 254A000C */  addiu      $t2, $t2, 0xc
/* D289C 800D1C9C 2529000C */  addiu      $t1, $t1, 0xc
/* D28A0 800D1CA0 A921FFF4 */  swl        $at, -0xc($t1)
/* D28A4 800D1CA4 B921FFF7 */  swr        $at, -9($t1)
/* D28A8 800D1CA8 8D41FFF8 */  lw         $at, -8($t2)
/* D28AC 800D1CAC A921FFF8 */  swl        $at, -8($t1)
/* D28B0 800D1CB0 B921FFFB */  swr        $at, -5($t1)
/* D28B4 800D1CB4 8D41FFFC */  lw         $at, -4($t2)
/* D28B8 800D1CB8 A921FFFC */  swl        $at, -4($t1)
/* D28BC 800D1CBC 154CFFF5 */  bne        $t2, $t4, .L800D1C94
/* D28C0 800D1CC0 B921FFFF */   swr       $at, -1($t1)
/* D28C4 800D1CC4 8D410000 */  lw         $at, ($t2)
/* D28C8 800D1CC8 240F00FE */  addiu      $t7, $zero, 0xfe
/* D28CC 800D1CCC A9210000 */  swl        $at, ($t1)
/* D28D0 800D1CD0 B9210003 */  swr        $at, 3($t1)
/* D28D4 800D1CD4 8FAD0044 */  lw         $t5, 0x44($sp)
/* D28D8 800D1CD8 25AE0028 */  addiu      $t6, $t5, 0x28
/* D28DC 800D1CDC AFAE0044 */  sw         $t6, 0x44($sp)
/* D28E0 800D1CE0 A1CF0000 */  sb         $t7, ($t6)
/* D28E4 800D1CE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D28E8 800D1CE8 27BD0048 */  addiu      $sp, $sp, 0x48
/* D28EC 800D1CEC 03E00008 */  jr         $ra
/* D28F0 800D1CF0 00000000 */   nop
/* D28F4 800D1CF4 00000000 */  nop
/* D28F8 800D1CF8 00000000 */  nop
/* D28FC 800D1CFC 00000000 */  nop
