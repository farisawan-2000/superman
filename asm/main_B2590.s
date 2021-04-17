.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B1990
/* B2590 800B1990 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2594 800B1994 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2598 800B1998 AFA40018 */  sw         $a0, 0x18($sp)
/* B259C 800B199C AFA5001C */  sw         $a1, 0x1c($sp)
/* B25A0 800B19A0 8FA40018 */  lw         $a0, 0x18($sp)
/* B25A4 800B19A4 0C02E2E8 */  jal        func_800B8BA0
/* B25A8 800B19A8 8FA5001C */   lw        $a1, 0x1c($sp)
/* B25AC 800B19AC 10400006 */  beqz       $v0, .L800B19C8
/* B25B0 800B19B0 00000000 */   nop
.L800B19B4:
/* B25B4 800B19B4 8FA40018 */  lw         $a0, 0x18($sp)
/* B25B8 800B19B8 0C02E2E8 */  jal        func_800B8BA0
/* B25BC 800B19BC 8FA5001C */   lw        $a1, 0x1c($sp)
/* B25C0 800B19C0 1440FFFC */  bnez       $v0, .L800B19B4
/* B25C4 800B19C4 00000000 */   nop
.L800B19C8:
/* B25C8 800B19C8 10000001 */  b          .L800B19D0
/* B25CC 800B19CC 00000000 */   nop
.L800B19D0:
/* B25D0 800B19D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B25D4 800B19D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* B25D8 800B19D8 03E00008 */  jr         $ra
/* B25DC 800B19DC 00000000 */   nop

glabel func_800B19E0
/* B25E0 800B19E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B25E4 800B19E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B25E8 800B19E8 AFA40020 */  sw         $a0, 0x20($sp)
/* B25EC 800B19EC 8FAE0020 */  lw         $t6, 0x20($sp)
/* B25F0 800B19F0 3C010400 */  lui        $at, 0x400
/* B25F4 800B19F4 01C1082B */  sltu       $at, $t6, $at
/* B25F8 800B19F8 1420000A */  bnez       $at, .L800B1A24
/* B25FC 800B19FC 00000000 */   nop
/* B2600 800B1A00 3C010500 */  lui        $at, 0x500
/* B2604 800B1A04 01C1082B */  sltu       $at, $t6, $at
/* B2608 800B1A08 10200006 */  beqz       $at, .L800B1A24
/* B260C 800B1A0C 00000000 */   nop
/* B2610 800B1A10 8FA40020 */  lw         $a0, 0x20($sp)
/* B2614 800B1A14 0C02D0B8 */  jal        func_800B42E0
/* B2618 800B1A18 27A5001C */   addiu     $a1, $sp, 0x1c
/* B261C 800B1A1C 10000005 */  b          .L800B1A34
/* B2620 800B1A20 8FA2001C */   lw        $v0, 0x1c($sp)
.L800B1A24:
/* B2624 800B1A24 10000003 */  b          .L800B1A34
/* B2628 800B1A28 00001025 */   or        $v0, $zero, $zero
/* B262C 800B1A2C 10000001 */  b          .L800B1A34
/* B2630 800B1A30 00000000 */   nop
.L800B1A34:
/* B2634 800B1A34 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2638 800B1A38 27BD0020 */  addiu      $sp, $sp, 0x20
/* B263C 800B1A3C 03E00008 */  jr         $ra
/* B2640 800B1A40 00000000 */   nop

glabel func_800B1A44
/* B2644 800B1A44 27BDFFF8 */  addiu      $sp, $sp, -8
/* B2648 800B1A48 00C03825 */  or         $a3, $a2, $zero
/* B264C 800B1A4C 10E00008 */  beqz       $a3, .L800B1A70
/* B2650 800B1A50 24C6FFFF */   addiu     $a2, $a2, -1
.L800B1A54:
/* B2654 800B1A54 90AE0000 */  lbu        $t6, ($a1)
/* B2658 800B1A58 24840001 */  addiu      $a0, $a0, 1
/* B265C 800B1A5C 24A50001 */  addiu      $a1, $a1, 1
/* B2660 800B1A60 A08EFFFF */  sb         $t6, -1($a0)
/* B2664 800B1A64 00C03825 */  or         $a3, $a2, $zero
/* B2668 800B1A68 14E0FFFA */  bnez       $a3, .L800B1A54
/* B266C 800B1A6C 24C6FFFF */   addiu     $a2, $a2, -1
.L800B1A70:
/* B2670 800B1A70 10000001 */  b          .L800B1A78
/* B2674 800B1A74 00000000 */   nop
.L800B1A78:
/* B2678 800B1A78 03E00008 */  jr         $ra
/* B267C 800B1A7C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B1A80
/* B2680 800B1A80 27BDFFF8 */  addiu      $sp, $sp, -8
/* B2684 800B1A84 00C03825 */  or         $a3, $a2, $zero
/* B2688 800B1A88 10E00008 */  beqz       $a3, .L800B1AAC
/* B268C 800B1A8C 24C6FFFF */   addiu     $a2, $a2, -1
.L800B1A90:
/* B2690 800B1A90 8CAE0000 */  lw         $t6, ($a1)
/* B2694 800B1A94 24840004 */  addiu      $a0, $a0, 4
/* B2698 800B1A98 24A50004 */  addiu      $a1, $a1, 4
/* B269C 800B1A9C AC8EFFFC */  sw         $t6, -4($a0)
/* B26A0 800B1AA0 00C03825 */  or         $a3, $a2, $zero
/* B26A4 800B1AA4 14E0FFFA */  bnez       $a3, .L800B1A90
/* B26A8 800B1AA8 24C6FFFF */   addiu     $a2, $a2, -1
.L800B1AAC:
/* B26AC 800B1AAC 10000001 */  b          .L800B1AB4
/* B26B0 800B1AB0 00000000 */   nop
.L800B1AB4:
/* B26B4 800B1AB4 03E00008 */  jr         $ra
/* B26B8 800B1AB8 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B1ABC
/* B26BC 800B1ABC 27BDFFF8 */  addiu      $sp, $sp, -8
/* B26C0 800B1AC0 90A60000 */  lbu        $a2, ($a1)
/* B26C4 800B1AC4 24840001 */  addiu      $a0, $a0, 1
/* B26C8 800B1AC8 24A50001 */  addiu      $a1, $a1, 1
/* B26CC 800B1ACC 00C03825 */  or         $a3, $a2, $zero
/* B26D0 800B1AD0 10E00007 */  beqz       $a3, .L800B1AF0
/* B26D4 800B1AD4 A086FFFF */   sb        $a2, -1($a0)
.L800B1AD8:
/* B26D8 800B1AD8 90A60000 */  lbu        $a2, ($a1)
/* B26DC 800B1ADC 24840001 */  addiu      $a0, $a0, 1
/* B26E0 800B1AE0 24A50001 */  addiu      $a1, $a1, 1
/* B26E4 800B1AE4 00C03825 */  or         $a3, $a2, $zero
/* B26E8 800B1AE8 14E0FFFB */  bnez       $a3, .L800B1AD8
/* B26EC 800B1AEC A086FFFF */   sb        $a2, -1($a0)
.L800B1AF0:
/* B26F0 800B1AF0 10000001 */  b          .L800B1AF8
/* B26F4 800B1AF4 00000000 */   nop
.L800B1AF8:
/* B26F8 800B1AF8 03E00008 */  jr         $ra
/* B26FC 800B1AFC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B1B00
/* B2700 800B1B00 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B2704 800B1B04 AFBF001C */  sw         $ra, 0x1c($sp)
/* B2708 800B1B08 AFA40040 */  sw         $a0, 0x40($sp)
/* B270C 800B1B0C AFB10018 */  sw         $s1, 0x18($sp)
/* B2710 800B1B10 AFB00014 */  sw         $s0, 0x14($sp)
/* B2714 800B1B14 8FAE0040 */  lw         $t6, 0x40($sp)
/* B2718 800B1B18 AFAE0030 */  sw         $t6, 0x30($sp)
/* B271C 800B1B1C 3C0F801A */  lui        $t7, %hi(D_801A4330)
/* B2720 800B1B20 25EF4330 */  addiu      $t7, $t7, %lo(D_801A4330)
/* B2724 800B1B24 AFAF002C */  sw         $t7, 0x2c($sp)
/* B2728 800B1B28 8FB80030 */  lw         $t8, 0x30($sp)
/* B272C 800B1B2C 8FA8002C */  lw         $t0, 0x2c($sp)
/* B2730 800B1B30 93190004 */  lbu        $t9, 4($t8)
/* B2734 800B1B34 A1190004 */  sb         $t9, 4($t0)
/* B2738 800B1B38 8FA90030 */  lw         $t1, 0x30($sp)
/* B273C 800B1B3C 8FAB002C */  lw         $t3, 0x2c($sp)
/* B2740 800B1B40 8D2A000C */  lw         $t2, 0xc($t1)
/* B2744 800B1B44 AD6A000C */  sw         $t2, 0xc($t3)
/* B2748 800B1B48 8FAC002C */  lw         $t4, 0x2c($sp)
/* B274C 800B1B4C A5800006 */  sh         $zero, 6($t4)
/* B2750 800B1B50 8FAD0030 */  lw         $t5, 0x30($sp)
/* B2754 800B1B54 2401FFFF */  addiu      $at, $zero, -1
/* B2758 800B1B58 8DAE0010 */  lw         $t6, 0x10($t5)
/* B275C 800B1B5C 15C10003 */  bne        $t6, $at, .L800B1B6C
/* B2760 800B1B60 00000000 */   nop
/* B2764 800B1B64 1000006C */  b          .L800B1D18
/* B2768 800B1B68 2402FFFB */   addiu     $v0, $zero, -5
.L800B1B6C:
/* B276C 800B1B6C 8FAF0030 */  lw         $t7, 0x30($sp)
/* B2770 800B1B70 8DF80014 */  lw         $t8, 0x14($t7)
/* B2774 800B1B74 2F010401 */  sltiu      $at, $t8, 0x401
/* B2778 800B1B78 14200003 */  bnez       $at, .L800B1B88
/* B277C 800B1B7C 00000000 */   nop
/* B2780 800B1B80 10000065 */  b          .L800B1D18
/* B2784 800B1B84 2402FFF8 */   addiu     $v0, $zero, -8
.L800B1B88:
/* B2788 800B1B88 8FB90040 */  lw         $t9, 0x40($sp)
/* B278C 800B1B8C 24010001 */  addiu      $at, $zero, 1
/* B2790 800B1B90 93280009 */  lbu        $t0, 9($t9)
/* B2794 800B1B94 1501002A */  bne        $t0, $at, .L800B1C40
/* B2798 800B1B98 00000000 */   nop
/* B279C 800B1B9C 8FA90030 */  lw         $t1, 0x30($sp)
/* B27A0 800B1BA0 3C010400 */  lui        $at, 0x400
/* B27A4 800B1BA4 34211000 */  ori        $at, $at, 0x1000
/* B27A8 800B1BA8 8D2A0010 */  lw         $t2, 0x10($t1)
/* B27AC 800B1BAC 0141082B */  sltu       $at, $t2, $at
/* B27B0 800B1BB0 14200008 */  bnez       $at, .L800B1BD4
/* B27B4 800B1BB4 00000000 */   nop
/* B27B8 800B1BB8 8D2B0014 */  lw         $t3, 0x14($t1)
/* B27BC 800B1BBC 3C010400 */  lui        $at, 0x400
/* B27C0 800B1BC0 34212000 */  ori        $at, $at, 0x2000
/* B27C4 800B1BC4 014B6021 */  addu       $t4, $t2, $t3
/* B27C8 800B1BC8 0181082B */  sltu       $at, $t4, $at
/* B27CC 800B1BCC 14200003 */  bnez       $at, .L800B1BDC
/* B27D0 800B1BD0 00000000 */   nop
.L800B1BD4:
/* B27D4 800B1BD4 10000002 */  b          .L800B1BE0
/* B27D8 800B1BD8 00008025 */   or        $s0, $zero, $zero
.L800B1BDC:
/* B27DC 800B1BDC 24100001 */  addiu      $s0, $zero, 1
.L800B1BE0:
/* B27E0 800B1BE0 16000015 */  bnez       $s0, .L800B1C38
/* B27E4 800B1BE4 00000000 */   nop
/* B27E8 800B1BE8 8FAD0030 */  lw         $t5, 0x30($sp)
/* B27EC 800B1BEC 3C010400 */  lui        $at, 0x400
/* B27F0 800B1BF0 8DAE0010 */  lw         $t6, 0x10($t5)
/* B27F4 800B1BF4 01C1082B */  sltu       $at, $t6, $at
/* B27F8 800B1BF8 14200008 */  bnez       $at, .L800B1C1C
/* B27FC 800B1BFC 00000000 */   nop
/* B2800 800B1C00 8DAF0014 */  lw         $t7, 0x14($t5)
/* B2804 800B1C04 3C010400 */  lui        $at, 0x400
/* B2808 800B1C08 34211000 */  ori        $at, $at, 0x1000
/* B280C 800B1C0C 01CFC021 */  addu       $t8, $t6, $t7
/* B2810 800B1C10 0301082B */  sltu       $at, $t8, $at
/* B2814 800B1C14 14200003 */  bnez       $at, .L800B1C24
/* B2818 800B1C18 00000000 */   nop
.L800B1C1C:
/* B281C 800B1C1C 10000002 */  b          .L800B1C28
/* B2820 800B1C20 00008825 */   or        $s1, $zero, $zero
.L800B1C24:
/* B2824 800B1C24 24110001 */  addiu      $s1, $zero, 1
.L800B1C28:
/* B2828 800B1C28 16200003 */  bnez       $s1, .L800B1C38
/* B282C 800B1C2C 00000000 */   nop
/* B2830 800B1C30 10000039 */  b          .L800B1D18
/* B2834 800B1C34 2402FFFB */   addiu     $v0, $zero, -5
.L800B1C38:
/* B2838 800B1C38 10000009 */  b          .L800B1C60
/* B283C 800B1C3C 00000000 */   nop
.L800B1C40:
/* B2840 800B1C40 8FB90030 */  lw         $t9, 0x30($sp)
/* B2844 800B1C44 0C027C0C */  jal        func_8009F030
/* B2848 800B1C48 8F240010 */   lw        $a0, 0x10($t9)
/* B284C 800B1C4C 2401FFFF */  addiu      $at, $zero, -1
/* B2850 800B1C50 14410003 */  bne        $v0, $at, .L800B1C60
/* B2854 800B1C54 00000000 */   nop
/* B2858 800B1C58 1000002F */  b          .L800B1D18
/* B285C 800B1C5C 2402FFFB */   addiu     $v0, $zero, -5
.L800B1C60:
/* B2860 800B1C60 8FA80030 */  lw         $t0, 0x30($sp)
/* B2864 800B1C64 8D090010 */  lw         $t1, 0x10($t0)
/* B2868 800B1C68 AFA90028 */  sw         $t1, 0x28($sp)
/* B286C 800B1C6C 8FAA0030 */  lw         $t2, 0x30($sp)
/* B2870 800B1C70 8FAD002C */  lw         $t5, 0x2c($sp)
/* B2874 800B1C74 8D4B0014 */  lw         $t3, 0x14($t2)
/* B2878 800B1C78 256C0010 */  addiu      $t4, $t3, 0x10
/* B287C 800B1C7C ADAC0000 */  sw         $t4, ($t5)
/* B2880 800B1C80 8FAE0030 */  lw         $t6, 0x30($sp)
/* B2884 800B1C84 8DCF0014 */  lw         $t7, 0x14($t6)
/* B2888 800B1C88 25F80010 */  addiu      $t8, $t7, 0x10
/* B288C 800B1C8C AFB80034 */  sw         $t8, 0x34($sp)
/* B2890 800B1C90 27B90034 */  addiu      $t9, $sp, 0x34
/* B2894 800B1C94 AFB9003C */  sw         $t9, 0x3c($sp)
/* B2898 800B1C98 AFA00038 */  sw         $zero, 0x38($sp)
/* B289C 800B1C9C 8FA80038 */  lw         $t0, 0x38($sp)
/* B28A0 800B1CA0 29010004 */  slti       $at, $t0, 4
/* B28A4 800B1CA4 10200010 */  beqz       $at, .L800B1CE8
/* B28A8 800B1CA8 00000000 */   nop
.L800B1CAC:
/* B28AC 800B1CAC 8FAA0038 */  lw         $t2, 0x38($sp)
/* B28B0 800B1CB0 8FA9003C */  lw         $t1, 0x3c($sp)
/* B28B4 800B1CB4 240B0004 */  addiu      $t3, $zero, 4
/* B28B8 800B1CB8 24060008 */  addiu      $a2, $zero, 8
/* B28BC 800B1CBC 016A2823 */  subu       $a1, $t3, $t2
/* B28C0 800B1CC0 0C02C4C8 */  jal        func_800B1320
/* B28C4 800B1CC4 012A2021 */   addu      $a0, $t1, $t2
/* B28C8 800B1CC8 8FAC0038 */  lw         $t4, 0x38($sp)
/* B28CC 800B1CCC 00408025 */  or         $s0, $v0, $zero
/* B28D0 800B1CD0 01906821 */  addu       $t5, $t4, $s0
/* B28D4 800B1CD4 AFAD0038 */  sw         $t5, 0x38($sp)
/* B28D8 800B1CD8 8FAE0038 */  lw         $t6, 0x38($sp)
/* B28DC 800B1CDC 29C10004 */  slti       $at, $t6, 4
/* B28E0 800B1CE0 1420FFF2 */  bnez       $at, .L800B1CAC
/* B28E4 800B1CE4 00000000 */   nop
.L800B1CE8:
/* B28E8 800B1CE8 8FA4002C */  lw         $a0, 0x2c($sp)
/* B28EC 800B1CEC 24050010 */  addiu      $a1, $zero, 0x10
/* B28F0 800B1CF0 0C02C8DC */  jal        func_800B2370
/* B28F4 800B1CF4 24060001 */   addiu     $a2, $zero, 1
/* B28F8 800B1CF8 8FAF0030 */  lw         $t7, 0x30($sp)
/* B28FC 800B1CFC 8FA40028 */  lw         $a0, 0x28($sp)
/* B2900 800B1D00 0C02C933 */  jal        func_800B24CC
/* B2904 800B1D04 8DE50014 */   lw        $a1, 0x14($t7)
/* B2908 800B1D08 10000003 */  b          .L800B1D18
/* B290C 800B1D0C 00001025 */   or        $v0, $zero, $zero
/* B2910 800B1D10 10000001 */  b          .L800B1D18
/* B2914 800B1D14 00000000 */   nop
.L800B1D18:
/* B2918 800B1D18 8FBF001C */  lw         $ra, 0x1c($sp)
/* B291C 800B1D1C 8FB00014 */  lw         $s0, 0x14($sp)
/* B2920 800B1D20 8FB10018 */  lw         $s1, 0x18($sp)
/* B2924 800B1D24 03E00008 */  jr         $ra
/* B2928 800B1D28 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800B1D2C
/* B292C 800B1D2C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B2930 800B1D30 AFBF001C */  sw         $ra, 0x1c($sp)
/* B2934 800B1D34 AFA40048 */  sw         $a0, 0x48($sp)
/* B2938 800B1D38 AFB10018 */  sw         $s1, 0x18($sp)
/* B293C 800B1D3C AFB00014 */  sw         $s0, 0x14($sp)
/* B2940 800B1D40 8FB00048 */  lw         $s0, 0x48($sp)
/* B2944 800B1D44 8FAE0048 */  lw         $t6, 0x48($sp)
/* B2948 800B1D48 91CF0009 */  lbu        $t7, 9($t6)
/* B294C 800B1D4C 15E00008 */  bnez       $t7, .L800B1D70
/* B2950 800B1D50 00000000 */   nop
/* B2954 800B1D54 0C027C0C */  jal        func_8009F030
/* B2958 800B1D58 8E040010 */   lw        $a0, 0x10($s0)
/* B295C 800B1D5C 2401FFFF */  addiu      $at, $zero, -1
/* B2960 800B1D60 14410003 */  bne        $v0, $at, .L800B1D70
/* B2964 800B1D64 00000000 */   nop
/* B2968 800B1D68 10000081 */  b          .L800B1F70
/* B296C 800B1D6C 2402FFFB */   addiu     $v0, $zero, -5
.L800B1D70:
/* B2970 800B1D70 8E180014 */  lw         $t8, 0x14($s0)
/* B2974 800B1D74 2F010401 */  sltiu      $at, $t8, 0x401
/* B2978 800B1D78 14200003 */  bnez       $at, .L800B1D88
/* B297C 800B1D7C 00000000 */   nop
/* B2980 800B1D80 1000007B */  b          .L800B1F70
/* B2984 800B1D84 2402FFF8 */   addiu     $v0, $zero, -8
.L800B1D88:
/* B2988 800B1D88 8E190010 */  lw         $t9, 0x10($s0)
/* B298C 800B1D8C 3C010400 */  lui        $at, 0x400
/* B2990 800B1D90 0321082B */  sltu       $at, $t9, $at
/* B2994 800B1D94 14200008 */  bnez       $at, .L800B1DB8
/* B2998 800B1D98 00000000 */   nop
/* B299C 800B1D9C 8E080010 */  lw         $t0, 0x10($s0)
/* B29A0 800B1DA0 8E090014 */  lw         $t1, 0x14($s0)
/* B29A4 800B1DA4 3C010500 */  lui        $at, 0x500
/* B29A8 800B1DA8 01095021 */  addu       $t2, $t0, $t1
/* B29AC 800B1DAC 0141082B */  sltu       $at, $t2, $at
/* B29B0 800B1DB0 14200003 */  bnez       $at, .L800B1DC0
/* B29B4 800B1DB4 00000000 */   nop
.L800B1DB8:
/* B29B8 800B1DB8 10000002 */  b          .L800B1DC4
/* B29BC 800B1DBC 00008825 */   or        $s1, $zero, $zero
.L800B1DC0:
/* B29C0 800B1DC0 24110001 */  addiu      $s1, $zero, 1
.L800B1DC4:
/* B29C4 800B1DC4 12200059 */  beqz       $s1, .L800B1F2C
/* B29C8 800B1DC8 00000000 */   nop
/* B29CC 800B1DCC 8E0B0010 */  lw         $t3, 0x10($s0)
/* B29D0 800B1DD0 316C0003 */  andi       $t4, $t3, 3
/* B29D4 800B1DD4 11800035 */  beqz       $t4, .L800B1EAC
/* B29D8 800B1DD8 AFAC0030 */   sw        $t4, 0x30($sp)
/* B29DC 800B1DDC 8E0D0014 */  lw         $t5, 0x14($s0)
/* B29E0 800B1DE0 24010001 */  addiu      $at, $zero, 1
/* B29E4 800B1DE4 11A10003 */  beq        $t5, $at, .L800B1DF4
/* B29E8 800B1DE8 00000000 */   nop
/* B29EC 800B1DEC 10000060 */  b          .L800B1F70
/* B29F0 800B1DF0 2402FFFB */   addiu     $v0, $zero, -5
.L800B1DF4:
/* B29F4 800B1DF4 8E040010 */  lw         $a0, 0x10($s0)
/* B29F8 800B1DF8 2401FFFC */  addiu      $at, $zero, -4
/* B29FC 800B1DFC 00817024 */  and        $t6, $a0, $at
/* B2A00 800B1E00 0C02C678 */  jal        func_800B19E0
/* B2A04 800B1E04 01C02025 */   or        $a0, $t6, $zero
/* B2A08 800B1E08 AFA2002C */  sw         $v0, 0x2c($sp)
/* B2A0C 800B1E0C 8FAF0030 */  lw         $t7, 0x30($sp)
/* B2A10 800B1E10 24010001 */  addiu      $at, $zero, 1
/* B2A14 800B1E14 15E1000A */  bne        $t7, $at, .L800B1E40
/* B2A18 800B1E18 00000000 */   nop
/* B2A1C 800B1E1C 92180018 */  lbu        $t8, 0x18($s0)
/* B2A20 800B1E20 8FA8002C */  lw         $t0, 0x2c($sp)
/* B2A24 800B1E24 3C01FF00 */  lui        $at, 0xff00
/* B2A28 800B1E28 3421FFFF */  ori        $at, $at, 0xffff
/* B2A2C 800B1E2C 0018CC00 */  sll        $t9, $t8, 0x10
/* B2A30 800B1E30 01014824 */  and        $t1, $t0, $at
/* B2A34 800B1E34 03295025 */  or         $t2, $t9, $t1
/* B2A38 800B1E38 10000014 */  b          .L800B1E8C
/* B2A3C 800B1E3C AFAA002C */   sw        $t2, 0x2c($sp)
.L800B1E40:
/* B2A40 800B1E40 8FAB0030 */  lw         $t3, 0x30($sp)
/* B2A44 800B1E44 24010002 */  addiu      $at, $zero, 2
/* B2A48 800B1E48 1561000A */  bne        $t3, $at, .L800B1E74
/* B2A4C 800B1E4C 00000000 */   nop
/* B2A50 800B1E50 920C0018 */  lbu        $t4, 0x18($s0)
/* B2A54 800B1E54 8FAE002C */  lw         $t6, 0x2c($sp)
/* B2A58 800B1E58 3C01FFFF */  lui        $at, 0xffff
/* B2A5C 800B1E5C 342100FF */  ori        $at, $at, 0xff
/* B2A60 800B1E60 000C6A00 */  sll        $t5, $t4, 8
/* B2A64 800B1E64 01C17824 */  and        $t7, $t6, $at
/* B2A68 800B1E68 01AFC025 */  or         $t8, $t5, $t7
/* B2A6C 800B1E6C 10000007 */  b          .L800B1E8C
/* B2A70 800B1E70 AFB8002C */   sw        $t8, 0x2c($sp)
.L800B1E74:
/* B2A74 800B1E74 8FB9002C */  lw         $t9, 0x2c($sp)
/* B2A78 800B1E78 92080018 */  lbu        $t0, 0x18($s0)
/* B2A7C 800B1E7C 2401FF00 */  addiu      $at, $zero, -0x100
/* B2A80 800B1E80 03214824 */  and        $t1, $t9, $at
/* B2A84 800B1E84 01095025 */  or         $t2, $t0, $t1
/* B2A88 800B1E88 AFAA002C */  sw         $t2, 0x2c($sp)
.L800B1E8C:
/* B2A8C 800B1E8C 8E040010 */  lw         $a0, 0x10($s0)
/* B2A90 800B1E90 2401FFFC */  addiu      $at, $zero, -4
/* B2A94 800B1E94 8FA5002C */  lw         $a1, 0x2c($sp)
/* B2A98 800B1E98 00815824 */  and        $t3, $a0, $at
/* B2A9C 800B1E9C 0C02C664 */  jal        func_800B1990
/* B2AA0 800B1EA0 01602025 */   or        $a0, $t3, $zero
/* B2AA4 800B1EA4 1000001F */  b          .L800B1F24
/* B2AA8 800B1EA8 00000000 */   nop
.L800B1EAC:
/* B2AAC 800B1EAC 8E0C0014 */  lw         $t4, 0x14($s0)
/* B2AB0 800B1EB0 000C7082 */  srl        $t6, $t4, 2
/* B2AB4 800B1EB4 AFAE0028 */  sw         $t6, 0x28($sp)
/* B2AB8 800B1EB8 260D0018 */  addiu      $t5, $s0, 0x18
/* B2ABC 800B1EBC AFAD0024 */  sw         $t5, 0x24($sp)
/* B2AC0 800B1EC0 8E0F0014 */  lw         $t7, 0x14($s0)
/* B2AC4 800B1EC4 31F80003 */  andi       $t8, $t7, 3
/* B2AC8 800B1EC8 13000003 */  beqz       $t8, .L800B1ED8
/* B2ACC 800B1ECC 00000000 */   nop
/* B2AD0 800B1ED0 10000027 */  b          .L800B1F70
/* B2AD4 800B1ED4 2402FFFB */   addiu     $v0, $zero, -5
.L800B1ED8:
/* B2AD8 800B1ED8 8FB90028 */  lw         $t9, 0x28($sp)
/* B2ADC 800B1EDC 03208825 */  or         $s1, $t9, $zero
/* B2AE0 800B1EE0 2728FFFF */  addiu      $t0, $t9, -1
/* B2AE4 800B1EE4 1220000F */  beqz       $s1, .L800B1F24
/* B2AE8 800B1EE8 AFA80028 */   sw        $t0, 0x28($sp)
.L800B1EEC:
/* B2AEC 800B1EEC 8FA90024 */  lw         $t1, 0x24($sp)
/* B2AF0 800B1EF0 8E040010 */  lw         $a0, 0x10($s0)
/* B2AF4 800B1EF4 8D250000 */  lw         $a1, ($t1)
/* B2AF8 800B1EF8 252A0004 */  addiu      $t2, $t1, 4
/* B2AFC 800B1EFC 0C02C664 */  jal        func_800B1990
/* B2B00 800B1F00 AFAA0024 */   sw        $t2, 0x24($sp)
/* B2B04 800B1F04 8E0B0010 */  lw         $t3, 0x10($s0)
/* B2B08 800B1F08 256C0004 */  addiu      $t4, $t3, 4
/* B2B0C 800B1F0C AE0C0010 */  sw         $t4, 0x10($s0)
/* B2B10 800B1F10 8FAE0028 */  lw         $t6, 0x28($sp)
/* B2B14 800B1F14 01C08825 */  or         $s1, $t6, $zero
/* B2B18 800B1F18 25CDFFFF */  addiu      $t5, $t6, -1
/* B2B1C 800B1F1C 1620FFF3 */  bnez       $s1, .L800B1EEC
/* B2B20 800B1F20 AFAD0028 */   sw        $t5, 0x28($sp)
.L800B1F24:
/* B2B24 800B1F24 10000005 */  b          .L800B1F3C
/* B2B28 800B1F28 00000000 */   nop
.L800B1F2C:
/* B2B2C 800B1F2C 8E040010 */  lw         $a0, 0x10($s0)
/* B2B30 800B1F30 26050018 */  addiu      $a1, $s0, 0x18
/* B2B34 800B1F34 0C02C691 */  jal        func_800B1A44
/* B2B38 800B1F38 8E060014 */   lw        $a2, 0x14($s0)
.L800B1F3C:
/* B2B3C 800B1F3C 920F0004 */  lbu        $t7, 4($s0)
/* B2B40 800B1F40 A3AF0038 */  sb         $t7, 0x38($sp)
/* B2B44 800B1F44 A7A0003A */  sh         $zero, 0x3a($sp)
/* B2B48 800B1F48 8E18000C */  lw         $t8, 0xc($s0)
/* B2B4C 800B1F4C AFB80040 */  sw         $t8, 0x40($sp)
/* B2B50 800B1F50 27A40034 */  addiu      $a0, $sp, 0x34
/* B2B54 800B1F54 24050010 */  addiu      $a1, $zero, 0x10
/* B2B58 800B1F58 0C02C907 */  jal        func_800B241C
/* B2B5C 800B1F5C 24060001 */   addiu     $a2, $zero, 1
/* B2B60 800B1F60 10000003 */  b          .L800B1F70
/* B2B64 800B1F64 00001025 */   or        $v0, $zero, $zero
/* B2B68 800B1F68 10000001 */  b          .L800B1F70
/* B2B6C 800B1F6C 00000000 */   nop
.L800B1F70:
/* B2B70 800B1F70 8FBF001C */  lw         $ra, 0x1c($sp)
/* B2B74 800B1F74 8FB00014 */  lw         $s0, 0x14($sp)
/* B2B78 800B1F78 8FB10018 */  lw         $s1, 0x18($sp)
/* B2B7C 800B1F7C 03E00008 */  jr         $ra
/* B2B80 800B1F80 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800B1F84
/* B2B84 800B1F84 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B2B88 800B1F88 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2B8C 800B1F8C AFA40038 */  sw         $a0, 0x38($sp)
/* B2B90 800B1F90 8FAE0038 */  lw         $t6, 0x38($sp)
/* B2B94 800B1F94 AFAE0034 */  sw         $t6, 0x34($sp)
/* B2B98 800B1F98 AFA00028 */  sw         $zero, 0x28($sp)
/* B2B9C 800B1F9C 240F0001 */  addiu      $t7, $zero, 1
/* B2BA0 800B1FA0 A7AF002C */  sh         $t7, 0x2c($sp)
/* B2BA4 800B1FA4 8FB80038 */  lw         $t8, 0x38($sp)
/* B2BA8 800B1FA8 24010001 */  addiu      $at, $zero, 1
/* B2BAC 800B1FAC 93190009 */  lbu        $t9, 9($t8)
/* B2BB0 800B1FB0 17210005 */  bne        $t9, $at, .L800B1FC8
/* B2BB4 800B1FB4 00000000 */   nop
/* B2BB8 800B1FB8 240803E9 */  addiu      $t0, $zero, 0x3e9
/* B2BBC 800B1FBC 27A9001C */  addiu      $t1, $sp, 0x1c
/* B2BC0 800B1FC0 10000004 */  b          .L800B1FD4
/* B2BC4 800B1FC4 AD280014 */   sw        $t0, 0x14($t1)
.L800B1FC8:
/* B2BC8 800B1FC8 240A03EA */  addiu      $t2, $zero, 0x3ea
/* B2BCC 800B1FCC 27AB001C */  addiu      $t3, $sp, 0x1c
/* B2BD0 800B1FD0 AD6A0014 */  sw         $t2, 0x14($t3)
.L800B1FD4:
/* B2BD4 800B1FD4 8FAC0034 */  lw         $t4, 0x34($sp)
/* B2BD8 800B1FD8 918D0004 */  lbu        $t5, 4($t4)
/* B2BDC 800B1FDC A3AD0020 */  sb         $t5, 0x20($sp)
/* B2BE0 800B1FE0 A7A00022 */  sh         $zero, 0x22($sp)
/* B2BE4 800B1FE4 27A4001C */  addiu      $a0, $sp, 0x1c
/* B2BE8 800B1FE8 24050018 */  addiu      $a1, $zero, 0x18
/* B2BEC 800B1FEC 0C02C907 */  jal        func_800B241C
/* B2BF0 800B1FF0 24060001 */   addiu     $a2, $zero, 1
/* B2BF4 800B1FF4 10000003 */  b          .L800B2004
/* B2BF8 800B1FF8 00001025 */   or        $v0, $zero, $zero
/* B2BFC 800B1FFC 10000001 */  b          .L800B2004
/* B2C00 800B2000 00000000 */   nop
.L800B2004:
/* B2C04 800B2004 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2C08 800B2008 27BD0038 */  addiu      $sp, $sp, 0x38
/* B2C0C 800B200C 03E00008 */  jr         $ra
/* B2C10 800B2010 00000000 */   nop

glabel func_800B2014
/* B2C14 800B2014 AFA40000 */  sw         $a0, ($sp)
/* B2C18 800B2018 10000003 */  b          .L800B2028
/* B2C1C 800B201C 2402FFFF */   addiu     $v0, $zero, -1
/* B2C20 800B2020 10000001 */  b          .L800B2028
/* B2C24 800B2024 00000000 */   nop
.L800B2028:
/* B2C28 800B2028 03E00008 */  jr         $ra
/* B2C2C 800B202C 00000000 */   nop

glabel func_800B2030
/* B2C30 800B2030 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B2C34 800B2034 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2C38 800B2038 AFA40020 */  sw         $a0, 0x20($sp)
/* B2C3C 800B203C 8FAE0020 */  lw         $t6, 0x20($sp)
/* B2C40 800B2040 AFAE001C */  sw         $t6, 0x1c($sp)
/* B2C44 800B2044 3C0F801A */  lui        $t7, %hi(D_801A4330)
/* B2C48 800B2048 25EF4330 */  addiu      $t7, $t7, %lo(D_801A4330)
/* B2C4C 800B204C AFAF0018 */  sw         $t7, 0x18($sp)
/* B2C50 800B2050 8FB8001C */  lw         $t8, 0x1c($sp)
/* B2C54 800B2054 8FA80018 */  lw         $t0, 0x18($sp)
/* B2C58 800B2058 93190004 */  lbu        $t9, 4($t8)
/* B2C5C 800B205C A1190004 */  sb         $t9, 4($t0)
/* B2C60 800B2060 8FA90018 */  lw         $t1, 0x18($sp)
/* B2C64 800B2064 A5200006 */  sh         $zero, 6($t1)
/* B2C68 800B2068 8FAA001C */  lw         $t2, 0x1c($sp)
/* B2C6C 800B206C 8FAC0018 */  lw         $t4, 0x18($sp)
/* B2C70 800B2070 8D4B000C */  lw         $t3, 0xc($t2)
/* B2C74 800B2074 AD8B000C */  sw         $t3, 0xc($t4)
/* B2C78 800B2078 8FAD0020 */  lw         $t5, 0x20($sp)
/* B2C7C 800B207C 24010001 */  addiu      $at, $zero, 1
/* B2C80 800B2080 91AE0009 */  lbu        $t6, 9($t5)
/* B2C84 800B2084 15C10008 */  bne        $t6, $at, .L800B20A8
/* B2C88 800B2088 00000000 */   nop
/* B2C8C 800B208C 8FA40018 */  lw         $a0, 0x18($sp)
/* B2C90 800B2090 3C05800D */  lui        $a1, %hi(D_800D3768)
/* B2C94 800B2094 24A53768 */  addiu      $a1, $a1, %lo(D_800D3768)
/* B2C98 800B2098 0C02C6AF */  jal        func_800B1ABC
/* B2C9C 800B209C 24840010 */   addiu     $a0, $a0, 0x10
/* B2CA0 800B20A0 10000006 */  b          .L800B20BC
/* B2CA4 800B20A4 00000000 */   nop
.L800B20A8:
/* B2CA8 800B20A8 8FA40018 */  lw         $a0, 0x18($sp)
/* B2CAC 800B20AC 3C05800D */  lui        $a1, %hi(D_800D3770)
/* B2CB0 800B20B0 24A53770 */  addiu      $a1, $a1, %lo(D_800D3770)
/* B2CB4 800B20B4 0C02C6AF */  jal        func_800B1ABC
/* B2CB8 800B20B8 24840010 */   addiu     $a0, $a0, 0x10
.L800B20BC:
/* B2CBC 800B20BC 8FA40018 */  lw         $a0, 0x18($sp)
/* B2CC0 800B20C0 24050018 */  addiu      $a1, $zero, 0x18
/* B2CC4 800B20C4 0C02C907 */  jal        func_800B241C
/* B2CC8 800B20C8 24060001 */   addiu     $a2, $zero, 1
/* B2CCC 800B20CC 10000003 */  b          .L800B20DC
/* B2CD0 800B20D0 00001025 */   or        $v0, $zero, $zero
/* B2CD4 800B20D4 10000001 */  b          .L800B20DC
/* B2CD8 800B20D8 00000000 */   nop
.L800B20DC:
/* B2CDC 800B20DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2CE0 800B20E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* B2CE4 800B20E4 03E00008 */  jr         $ra
/* B2CE8 800B20E8 00000000 */   nop

glabel func_800B20EC
/* B2CEC 800B20EC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B2CF0 800B20F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2CF4 800B20F4 AFA40030 */  sw         $a0, 0x30($sp)
/* B2CF8 800B20F8 8FAE0030 */  lw         $t6, 0x30($sp)
/* B2CFC 800B20FC AFAE002C */  sw         $t6, 0x2c($sp)
/* B2D00 800B2100 8FAF002C */  lw         $t7, 0x2c($sp)
/* B2D04 800B2104 91F80004 */  lbu        $t8, 4($t7)
/* B2D08 800B2108 A3B8001C */  sb         $t8, 0x1c($sp)
/* B2D0C 800B210C A7A0001E */  sh         $zero, 0x1e($sp)
/* B2D10 800B2110 8FB9002C */  lw         $t9, 0x2c($sp)
/* B2D14 800B2114 8F28000C */  lw         $t0, 0xc($t9)
/* B2D18 800B2118 AFA80024 */  sw         $t0, 0x24($sp)
/* B2D1C 800B211C 8FA90030 */  lw         $t1, 0x30($sp)
/* B2D20 800B2120 24010001 */  addiu      $at, $zero, 1
/* B2D24 800B2124 912A0009 */  lbu        $t2, 9($t1)
/* B2D28 800B2128 15410004 */  bne        $t2, $at, .L800B213C
/* B2D2C 800B212C 00000000 */   nop
/* B2D30 800B2130 240B0002 */  addiu      $t3, $zero, 2
/* B2D34 800B2134 10000003 */  b          .L800B2144
/* B2D38 800B2138 AFAB0028 */   sw        $t3, 0x28($sp)
.L800B213C:
/* B2D3C 800B213C 240C0005 */  addiu      $t4, $zero, 5
/* B2D40 800B2140 AFAC0028 */  sw         $t4, 0x28($sp)
.L800B2144:
/* B2D44 800B2144 27A40018 */  addiu      $a0, $sp, 0x18
/* B2D48 800B2148 24050014 */  addiu      $a1, $zero, 0x14
/* B2D4C 800B214C 0C02C907 */  jal        func_800B241C
/* B2D50 800B2150 24060001 */   addiu     $a2, $zero, 1
/* B2D54 800B2154 10000003 */  b          .L800B2164
/* B2D58 800B2158 00001025 */   or        $v0, $zero, $zero
/* B2D5C 800B215C 10000001 */  b          .L800B2164
/* B2D60 800B2160 00000000 */   nop
.L800B2164:
/* B2D64 800B2164 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2D68 800B2168 27BD0030 */  addiu      $sp, $sp, 0x30
/* B2D6C 800B216C 03E00008 */  jr         $ra
/* B2D70 800B2170 00000000 */   nop

glabel func_800B2174
/* B2D74 800B2174 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B2D78 800B2178 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2D7C 800B217C AFA40028 */  sw         $a0, 0x28($sp)
/* B2D80 800B2180 8FAE0028 */  lw         $t6, 0x28($sp)
/* B2D84 800B2184 AFAE0024 */  sw         $t6, 0x24($sp)
/* B2D88 800B2188 3C0F801A */  lui        $t7, %hi(D_801A4330)
/* B2D8C 800B218C 25EF4330 */  addiu      $t7, $t7, %lo(D_801A4330)
/* B2D90 800B2190 AFAF0020 */  sw         $t7, 0x20($sp)
/* B2D94 800B2194 8FB80028 */  lw         $t8, 0x28($sp)
/* B2D98 800B2198 24010001 */  addiu      $at, $zero, 1
/* B2D9C 800B219C 93190009 */  lbu        $t9, 9($t8)
/* B2DA0 800B21A0 17210004 */  bne        $t9, $at, .L800B21B4
/* B2DA4 800B21A4 00000000 */   nop
/* B2DA8 800B21A8 24080002 */  addiu      $t0, $zero, 2
/* B2DAC 800B21AC 10000003 */  b          .L800B21BC
/* B2DB0 800B21B0 AFA8001C */   sw        $t0, 0x1c($sp)
.L800B21B4:
/* B2DB4 800B21B4 24090006 */  addiu      $t1, $zero, 6
/* B2DB8 800B21B8 AFA9001C */  sw         $t1, 0x1c($sp)
.L800B21BC:
/* B2DBC 800B21BC 8FAA001C */  lw         $t2, 0x1c($sp)
/* B2DC0 800B21C0 8FAD0020 */  lw         $t5, 0x20($sp)
/* B2DC4 800B21C4 000A5900 */  sll        $t3, $t2, 4
/* B2DC8 800B21C8 256C0024 */  addiu      $t4, $t3, 0x24
/* B2DCC 800B21CC ADAC0000 */  sw         $t4, ($t5)
/* B2DD0 800B21D0 8FAE0024 */  lw         $t6, 0x24($sp)
/* B2DD4 800B21D4 8FB80020 */  lw         $t8, 0x20($sp)
/* B2DD8 800B21D8 91CF0004 */  lbu        $t7, 4($t6)
/* B2DDC 800B21DC A30F0004 */  sb         $t7, 4($t8)
/* B2DE0 800B21E0 8FB90020 */  lw         $t9, 0x20($sp)
/* B2DE4 800B21E4 A7200006 */  sh         $zero, 6($t9)
/* B2DE8 800B21E8 8FA80024 */  lw         $t0, 0x24($sp)
/* B2DEC 800B21EC 8FAA0020 */  lw         $t2, 0x20($sp)
/* B2DF0 800B21F0 8D09000C */  lw         $t1, 0xc($t0)
/* B2DF4 800B21F4 AD49000C */  sw         $t1, 0xc($t2)
/* B2DF8 800B21F8 8FAB001C */  lw         $t3, 0x1c($sp)
/* B2DFC 800B21FC 8FAC0020 */  lw         $t4, 0x20($sp)
/* B2E00 800B2200 AD8B0010 */  sw         $t3, 0x10($t4)
/* B2E04 800B2204 8FAE0020 */  lw         $t6, 0x20($sp)
/* B2E08 800B2208 3C0D0400 */  lui        $t5, 0x400
/* B2E0C 800B220C 35AD1000 */  ori        $t5, $t5, 0x1000
/* B2E10 800B2210 ADCD0024 */  sw         $t5, 0x24($t6)
/* B2E14 800B2214 8FB80020 */  lw         $t8, 0x20($sp)
/* B2E18 800B2218 240F1000 */  addiu      $t7, $zero, 0x1000
/* B2E1C 800B221C AF0F0028 */  sw         $t7, 0x28($t8)
/* B2E20 800B2220 8FA80020 */  lw         $t0, 0x20($sp)
/* B2E24 800B2224 24190007 */  addiu      $t9, $zero, 7
/* B2E28 800B2228 A519002C */  sh         $t9, 0x2c($t0)
/* B2E2C 800B222C 8FAA0020 */  lw         $t2, 0x20($sp)
/* B2E30 800B2230 3C090400 */  lui        $t1, 0x400
/* B2E34 800B2234 35291000 */  ori        $t1, $t1, 0x1000
/* B2E38 800B2238 AD490030 */  sw         $t1, 0x30($t2)
/* B2E3C 800B223C 8FAC0020 */  lw         $t4, 0x20($sp)
/* B2E40 800B2240 3C0B0400 */  lui        $t3, 0x400
/* B2E44 800B2244 AD8B0014 */  sw         $t3, 0x14($t4)
/* B2E48 800B2248 8FAE0020 */  lw         $t6, 0x20($sp)
/* B2E4C 800B224C 240D1000 */  addiu      $t5, $zero, 0x1000
/* B2E50 800B2250 ADCD0018 */  sw         $t5, 0x18($t6)
/* B2E54 800B2254 8FB80020 */  lw         $t8, 0x20($sp)
/* B2E58 800B2258 240F0003 */  addiu      $t7, $zero, 3
/* B2E5C 800B225C A70F001C */  sh         $t7, 0x1c($t8)
/* B2E60 800B2260 8FA80020 */  lw         $t0, 0x20($sp)
/* B2E64 800B2264 3C190400 */  lui        $t9, 0x400
/* B2E68 800B2268 AD190020 */  sw         $t9, 0x20($t0)
/* B2E6C 800B226C 8FA9001C */  lw         $t1, 0x1c($sp)
/* B2E70 800B2270 29210003 */  slti       $at, $t1, 3
/* B2E74 800B2274 1420002F */  bnez       $at, .L800B2334
/* B2E78 800B2278 00000000 */   nop
/* B2E7C 800B227C 8FAB0020 */  lw         $t3, 0x20($sp)
/* B2E80 800B2280 3C0A8820 */  lui        $t2, 0x8820
/* B2E84 800B2284 AD6A0034 */  sw         $t2, 0x34($t3)
/* B2E88 800B2288 8FAD0020 */  lw         $t5, 0x20($sp)
/* B2E8C 800B228C 240C6130 */  addiu      $t4, $zero, 0x6130
/* B2E90 800B2290 ADAC0038 */  sw         $t4, 0x38($t5)
/* B2E94 800B2294 8FAF0020 */  lw         $t7, 0x20($sp)
/* B2E98 800B2298 240E0005 */  addiu      $t6, $zero, 5
/* B2E9C 800B229C A5EE003C */  sh         $t6, 0x3c($t7)
/* B2EA0 800B22A0 8FB80020 */  lw         $t8, 0x20($sp)
/* B2EA4 800B22A4 AF000040 */  sw         $zero, 0x40($t8)
/* B2EA8 800B22A8 8FA80020 */  lw         $t0, 0x20($sp)
/* B2EAC 800B22AC 24190004 */  addiu      $t9, $zero, 4
/* B2EB0 800B22B0 AD190044 */  sw         $t9, 0x44($t0)
/* B2EB4 800B22B4 8FAA0020 */  lw         $t2, 0x20($sp)
/* B2EB8 800B22B8 3C090020 */  lui        $t1, 0x20
/* B2EBC 800B22BC AD490048 */  sw         $t1, 0x48($t2)
/* B2EC0 800B22C0 8FAC0020 */  lw         $t4, 0x20($sp)
/* B2EC4 800B22C4 240B0003 */  addiu      $t3, $zero, 3
/* B2EC8 800B22C8 A58B004C */  sh         $t3, 0x4c($t4)
/* B2ECC 800B22CC 8FAD0020 */  lw         $t5, 0x20($sp)
/* B2ED0 800B22D0 ADA00050 */  sw         $zero, 0x50($t5)
/* B2ED4 800B22D4 8FAF0020 */  lw         $t7, 0x20($sp)
/* B2ED8 800B22D8 3C0E0400 */  lui        $t6, 0x400
/* B2EDC 800B22DC 35CE2000 */  ori        $t6, $t6, 0x2000
/* B2EE0 800B22E0 ADEE0054 */  sw         $t6, 0x54($t7)
/* B2EE4 800B22E4 8FB90020 */  lw         $t9, 0x20($sp)
/* B2EE8 800B22E8 3C180080 */  lui        $t8, 0x80
/* B2EEC 800B22EC AF380058 */  sw         $t8, 0x58($t9)
/* B2EF0 800B22F0 8FA90020 */  lw         $t1, 0x20($sp)
/* B2EF4 800B22F4 24080003 */  addiu      $t0, $zero, 3
/* B2EF8 800B22F8 A528005C */  sh         $t0, 0x5c($t1)
/* B2EFC 800B22FC 8FAA0020 */  lw         $t2, 0x20($sp)
/* B2F00 800B2300 AD400060 */  sw         $zero, 0x60($t2)
/* B2F04 800B2304 8FAC0020 */  lw         $t4, 0x20($sp)
/* B2F08 800B2308 3C0B8820 */  lui        $t3, 0x8820
/* B2F0C 800B230C 356B6130 */  ori        $t3, $t3, 0x6130
/* B2F10 800B2310 AD8B0064 */  sw         $t3, 0x64($t4)
/* B2F14 800B2314 8FAE0020 */  lw         $t6, 0x20($sp)
/* B2F18 800B2318 340D9000 */  ori        $t5, $zero, 0x9000
/* B2F1C 800B231C ADCD0068 */  sw         $t5, 0x68($t6)
/* B2F20 800B2320 8FB80020 */  lw         $t8, 0x20($sp)
/* B2F24 800B2324 240F0003 */  addiu      $t7, $zero, 3
/* B2F28 800B2328 A70F006C */  sh         $t7, 0x6c($t8)
/* B2F2C 800B232C 8FB90020 */  lw         $t9, 0x20($sp)
/* B2F30 800B2330 AF200070 */  sw         $zero, 0x70($t9)
.L800B2334:
/* B2F34 800B2334 8FA80020 */  lw         $t0, 0x20($sp)
/* B2F38 800B2338 24060001 */  addiu      $a2, $zero, 1
/* B2F3C 800B233C 01002025 */  or         $a0, $t0, $zero
/* B2F40 800B2340 0C02C907 */  jal        func_800B241C
/* B2F44 800B2344 8D050000 */   lw        $a1, ($t0)
/* B2F48 800B2348 10000003 */  b          .L800B2358
/* B2F4C 800B234C 00001025 */   or        $v0, $zero, $zero
/* B2F50 800B2350 10000001 */  b          .L800B2358
/* B2F54 800B2354 00000000 */   nop
.L800B2358:
/* B2F58 800B2358 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2F5C 800B235C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B2F60 800B2360 03E00008 */  jr         $ra
/* B2F64 800B2364 00000000 */   nop
/* B2F68 800B2368 00000000 */  nop
/* B2F6C 800B236C 00000000 */  nop
