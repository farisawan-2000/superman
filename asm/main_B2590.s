.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B1990
/* B2590 800B1990 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B2594 800B1994 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2598 800B1998 AFA40030 */  sw         $a0, 0x30($sp)
/* B259C 800B199C AFA50034 */  sw         $a1, 0x34($sp)
/* B25A0 800B19A0 3C0E8018 */  lui        $t6, %hi(D_8017A2B8)
/* B25A4 800B19A4 85CEA2B8 */  lh         $t6, %lo(D_8017A2B8)($t6)
/* B25A8 800B19A8 2401FFFF */  addiu      $at, $zero, -1
/* B25AC 800B19AC 11C10003 */  beq        $t6, $at, .L800B19BC
/* B25B0 800B19B0 3C01800E */   lui       $at, %hi(D_800D9FA0)
/* B25B4 800B19B4 10000004 */  b          .L800B19C8
/* B25B8 800B19B8 AC2E9FA0 */   sw        $t6, %lo(D_800D9FA0)($at)
.L800B19BC:
/* B25BC 800B19BC 240F0001 */  addiu      $t7, $zero, 1
/* B25C0 800B19C0 3C01800E */  lui        $at, %hi(D_800D9FA0)
/* B25C4 800B19C4 AC2F9FA0 */  sw         $t7, %lo(D_800D9FA0)($at)
.L800B19C8:
/* B25C8 800B19C8 3C18800E */  lui        $t8, %hi(D_800D9DE0)
/* B25CC 800B19CC 8F189DE0 */  lw         $t8, %lo(D_800D9DE0)($t8)
/* B25D0 800B19D0 3C01800E */  lui        $at, %hi(D_800D9DE0)
/* B25D4 800B19D4 3C098018 */  lui        $t1, %hi(D_8017A2B8)
/* B25D8 800B19D8 27190001 */  addiu      $t9, $t8, 1
/* B25DC 800B19DC AC399DE0 */  sw         $t9, %lo(D_800D9DE0)($at)
/* B25E0 800B19E0 3C018014 */  lui        $at, %hi(D_80144294)
/* B25E4 800B19E4 A4204294 */  sh         $zero, %lo(D_80144294)($at)
/* B25E8 800B19E8 8529A2B8 */  lh         $t1, %lo(D_8017A2B8)($t1)
/* B25EC 800B19EC 3C018014 */  lui        $at, %hi(D_80144296)
/* B25F0 800B19F0 24080001 */  addiu      $t0, $zero, 1
/* B25F4 800B19F4 A4284296 */  sh         $t0, %lo(D_80144296)($at)
/* B25F8 800B19F8 2401FFFF */  addiu      $at, $zero, -1
/* B25FC 800B19FC 15210002 */  bne        $t1, $at, .L800B1A08
/* B2600 800B1A00 3C018018 */   lui       $at, %hi(D_8017A2B8)
/* B2604 800B1A04 A420A2B8 */  sh         $zero, %lo(D_8017A2B8)($at)
.L800B1A08:
/* B2608 800B1A08 3C0A8016 */  lui        $t2, %hi(D_8015F464)
/* B260C 800B1A0C 8D4AF464 */  lw         $t2, %lo(D_8015F464)($t2)
/* B2610 800B1A10 15400004 */  bnez       $t2, .L800B1A24
/* B2614 800B1A14 00000000 */   nop
/* B2618 800B1A18 240B0001 */  addiu      $t3, $zero, 1
/* B261C 800B1A1C 3C018016 */  lui        $at, %hi(D_8015F464)
/* B2620 800B1A20 AC2BF464 */  sw         $t3, %lo(D_8015F464)($at)
.L800B1A24:
/* B2624 800B1A24 3C0C0049 */  lui        $t4, 0x49
/* B2628 800B1A28 3C0D0049 */  lui        $t5, 0x49
/* B262C 800B1A2C 25AD2460 */  addiu      $t5, $t5, 0x2460
/* B2630 800B1A30 258CEF20 */  addiu      $t4, $t4, -0x10e0
/* B2634 800B1A34 3C058033 */  lui        $a1, %hi(D_8032E000)
/* B2638 800B1A38 24A5E000 */  addiu      $a1, $a1, %lo(D_8032E000)
/* B263C 800B1A3C 01802025 */  or         $a0, $t4, $zero
/* B2640 800B1A40 0C0003F0 */  jal        func_80000FC0
/* B2644 800B1A44 01AC3023 */   subu      $a2, $t5, $t4
/* B2648 800B1A48 3C0E004A */  lui        $t6, 0x4a
/* B264C 800B1A4C 3C0F004B */  lui        $t7, 0x4b
/* B2650 800B1A50 25EF73A0 */  addiu      $t7, $t7, 0x73a0
/* B2654 800B1A54 25CE45C0 */  addiu      $t6, $t6, 0x45c0
/* B2658 800B1A58 3C058033 */  lui        $a1, %hi(D_80331540)
/* B265C 800B1A5C 24A51540 */  addiu      $a1, $a1, %lo(D_80331540)
/* B2660 800B1A60 01C02025 */  or         $a0, $t6, $zero
/* B2664 800B1A64 0C0003F0 */  jal        func_80000FC0
/* B2668 800B1A68 01EE3023 */   subu      $a2, $t7, $t6
/* B266C 800B1A6C 3C180012 */  lui        $t8, 0x12
/* B2670 800B1A70 3C190013 */  lui        $t9, 0x13
/* B2674 800B1A74 2739D6D0 */  addiu      $t9, $t9, -0x2930
/* B2678 800B1A78 27183CD0 */  addiu      $t8, $t8, 0x3cd0
/* B267C 800B1A7C 3C05801C */  lui        $a1, %hi(D_801C65F0)
/* B2680 800B1A80 24A565F0 */  addiu      $a1, $a1, %lo(D_801C65F0)
/* B2684 800B1A84 03002025 */  or         $a0, $t8, $zero
/* B2688 800B1A88 0C0003F0 */  jal        func_80000FC0
/* B268C 800B1A8C 03383023 */   subu      $a2, $t9, $t8
/* B2690 800B1A90 0C0070AE */  jal        func_8001C2B8
/* B2694 800B1A94 00000000 */   nop
/* B2698 800B1A98 24080001 */  addiu      $t0, $zero, 1
/* B269C 800B1A9C 3C018014 */  lui        $at, %hi(D_8014429A)
/* B26A0 800B1AA0 A428429A */  sh         $t0, %lo(D_8014429A)($at)
/* B26A4 800B1AA4 3C01800D */  lui        $at, %hi(D_800D6300)
/* B26A8 800B1AA8 24090016 */  addiu      $t1, $zero, 0x16
/* B26AC 800B1AAC AC296300 */  sw         $t1, %lo(D_800D6300)($at)
/* B26B0 800B1AB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B26B4 800B1AB4 27BD0030 */  addiu      $sp, $sp, 0x30
/* B26B8 800B1AB8 03E00008 */  jr         $ra
/* B26BC 800B1ABC 00000000 */   nop

glabel func_800B1AC0
/* B26C0 800B1AC0 27BDFE18 */  addiu      $sp, $sp, -0x1e8
/* B26C4 800B1AC4 AFBF003C */  sw         $ra, 0x3c($sp)
/* B26C8 800B1AC8 AFA401E8 */  sw         $a0, 0x1e8($sp)
/* B26CC 800B1ACC AFA501EC */  sw         $a1, 0x1ec($sp)
/* B26D0 800B1AD0 AFB00038 */  sw         $s0, 0x38($sp)
/* B26D4 800B1AD4 3C0E8018 */  lui        $t6, %hi(D_8017A2B8)
/* B26D8 800B1AD8 85CEA2B8 */  lh         $t6, %lo(D_8017A2B8)($t6)
/* B26DC 800B1ADC 2401FFFF */  addiu      $at, $zero, -1
/* B26E0 800B1AE0 11C10003 */  beq        $t6, $at, .L800B1AF0
/* B26E4 800B1AE4 3C01800E */   lui       $at, %hi(D_800D9FA0)
/* B26E8 800B1AE8 10000004 */  b          .L800B1AFC
/* B26EC 800B1AEC AC2E9FA0 */   sw        $t6, %lo(D_800D9FA0)($at)
.L800B1AF0:
/* B26F0 800B1AF0 240F0001 */  addiu      $t7, $zero, 1
/* B26F4 800B1AF4 3C01800E */  lui        $at, %hi(D_800D9FA0)
/* B26F8 800B1AF8 AC2F9FA0 */  sw         $t7, %lo(D_800D9FA0)($at)
.L800B1AFC:
/* B26FC 800B1AFC 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* B2700 800B1B00 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* B2704 800B1B04 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2708 800B1B08 3C08BA00 */  lui        $t0, 0xba00
/* B270C 800B1B0C AFB800D4 */  sw         $t8, 0xd4($sp)
/* B2710 800B1B10 8FA900D4 */  lw         $t1, 0xd4($sp)
/* B2714 800B1B14 27190008 */  addiu      $t9, $t8, 8
/* B2718 800B1B18 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* B271C 800B1B1C 35081402 */  ori        $t0, $t0, 0x1402
/* B2720 800B1B20 AD280000 */  sw         $t0, ($t1)
/* B2724 800B1B24 8FAB00D4 */  lw         $t3, 0xd4($sp)
/* B2728 800B1B28 3C0A0030 */  lui        $t2, 0x30
/* B272C 800B1B2C AD6A0004 */  sw         $t2, 4($t3)
/* B2730 800B1B30 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* B2734 800B1B34 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* B2738 800B1B38 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B273C 800B1B3C 3C0EF700 */  lui        $t6, 0xf700
/* B2740 800B1B40 AFAC00D0 */  sw         $t4, 0xd0($sp)
/* B2744 800B1B44 8FAF00D0 */  lw         $t7, 0xd0($sp)
/* B2748 800B1B48 258D0008 */  addiu      $t5, $t4, 8
/* B274C 800B1B4C AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* B2750 800B1B50 ADEE0000 */  sw         $t6, ($t7)
/* B2754 800B1B54 8FB900D0 */  lw         $t9, 0xd0($sp)
/* B2758 800B1B58 3C180001 */  lui        $t8, 1
/* B275C 800B1B5C 37180001 */  ori        $t8, $t8, 1
/* B2760 800B1B60 AF380004 */  sw         $t8, 4($t9)
/* B2764 800B1B64 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B2768 800B1B68 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B276C 800B1B6C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2770 800B1B70 3C0AF64F */  lui        $t2, 0xf64f
/* B2774 800B1B74 AFA800CC */  sw         $t0, 0xcc($sp)
/* B2778 800B1B78 8FAB00CC */  lw         $t3, 0xcc($sp)
/* B277C 800B1B7C 25090008 */  addiu      $t1, $t0, 8
/* B2780 800B1B80 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B2784 800B1B84 354AC3BC */  ori        $t2, $t2, 0xc3bc
/* B2788 800B1B88 AD6A0000 */  sw         $t2, ($t3)
/* B278C 800B1B8C 8FAC00CC */  lw         $t4, 0xcc($sp)
/* B2790 800B1B90 AD800004 */  sw         $zero, 4($t4)
/* B2794 800B1B94 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B2798 800B1B98 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B279C 800B1B9C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B27A0 800B1BA0 3C0FE700 */  lui        $t7, 0xe700
/* B27A4 800B1BA4 AFAD00C8 */  sw         $t5, 0xc8($sp)
/* B27A8 800B1BA8 8FB800C8 */  lw         $t8, 0xc8($sp)
/* B27AC 800B1BAC 25AE0008 */  addiu      $t6, $t5, 8
/* B27B0 800B1BB0 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B27B4 800B1BB4 AF0F0000 */  sw         $t7, ($t8)
/* B27B8 800B1BB8 8FB900C8 */  lw         $t9, 0xc8($sp)
/* B27BC 800B1BBC AF200004 */  sw         $zero, 4($t9)
/* B27C0 800B1BC0 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B27C4 800B1BC4 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B27C8 800B1BC8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B27CC 800B1BCC 3C0ABA00 */  lui        $t2, 0xba00
/* B27D0 800B1BD0 AFA800C4 */  sw         $t0, 0xc4($sp)
/* B27D4 800B1BD4 8FAB00C4 */  lw         $t3, 0xc4($sp)
/* B27D8 800B1BD8 25090008 */  addiu      $t1, $t0, 8
/* B27DC 800B1BDC AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B27E0 800B1BE0 354A1402 */  ori        $t2, $t2, 0x1402
/* B27E4 800B1BE4 AD6A0000 */  sw         $t2, ($t3)
/* B27E8 800B1BE8 8FAC00C4 */  lw         $t4, 0xc4($sp)
/* B27EC 800B1BEC AD800004 */  sw         $zero, 4($t4)
/* B27F0 800B1BF0 3C014120 */  lui        $at, 0x4120
/* B27F4 800B1BF4 44812000 */  mtc1       $at, $f4
/* B27F8 800B1BF8 3C0145FA */  lui        $at, 0x45fa
/* B27FC 800B1BFC 44813000 */  mtc1       $at, $f6
/* B2800 800B1C00 3C013F80 */  lui        $at, 0x3f80
/* B2804 800B1C04 44814000 */  mtc1       $at, $f8
/* B2808 800B1C08 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* B280C 800B1C0C 3C073FAA */  lui        $a3, 0x3faa
/* B2810 800B1C10 34E7AAAB */  ori        $a3, $a3, 0xaaab
/* B2814 800B1C14 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* B2818 800B1C18 27A501E6 */  addiu      $a1, $sp, 0x1e6
/* B281C 800B1C1C 3C064204 */  lui        $a2, 0x4204
/* B2820 800B1C20 E7A40010 */  swc1       $f4, 0x10($sp)
/* B2824 800B1C24 E7A60014 */  swc1       $f6, 0x14($sp)
/* B2828 800B1C28 0C030EC4 */  jal        func_800C3B10
/* B282C 800B1C2C E7A80018 */   swc1      $f8, 0x18($sp)
/* B2830 800B1C30 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B2834 800B1C34 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B2838 800B1C38 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B283C 800B1C3C 3C0FBC00 */  lui        $t7, 0xbc00
/* B2840 800B1C40 AFAD00C0 */  sw         $t5, 0xc0($sp)
/* B2844 800B1C44 8FB800C0 */  lw         $t8, 0xc0($sp)
/* B2848 800B1C48 25AE0008 */  addiu      $t6, $t5, 8
/* B284C 800B1C4C AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B2850 800B1C50 35EF000E */  ori        $t7, $t7, 0xe
/* B2854 800B1C54 AF0F0000 */  sw         $t7, ($t8)
/* B2858 800B1C58 8FA800C0 */  lw         $t0, 0xc0($sp)
/* B285C 800B1C5C 97B901E6 */  lhu        $t9, 0x1e6($sp)
/* B2860 800B1C60 AD190004 */  sw         $t9, 4($t0)
/* B2864 800B1C64 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B2868 800B1C68 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B286C 800B1C6C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2870 800B1C70 3C0B0103 */  lui        $t3, 0x103
/* B2874 800B1C74 AFA900BC */  sw         $t1, 0xbc($sp)
/* B2878 800B1C78 8FAC00BC */  lw         $t4, 0xbc($sp)
/* B287C 800B1C7C 252A0008 */  addiu      $t2, $t1, 8
/* B2880 800B1C80 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B2884 800B1C84 356B0040 */  ori        $t3, $t3, 0x40
/* B2888 800B1C88 3C0D800F */  lui        $t5, %hi(D_800F2A68)
/* B288C 800B1C8C AD8B0000 */  sw         $t3, ($t4)
/* B2890 800B1C90 8DAD2A68 */  lw         $t5, %lo(D_800F2A68)($t5)
/* B2894 800B1C94 8FAF00BC */  lw         $t7, 0xbc($sp)
/* B2898 800B1C98 3C018000 */  lui        $at, 0x8000
/* B289C 800B1C9C 01A17021 */  addu       $t6, $t5, $at
/* B28A0 800B1CA0 3C18800F */  lui        $t8, %hi(D_800F2A68)
/* B28A4 800B1CA4 ADEE0004 */  sw         $t6, 4($t7)
/* B28A8 800B1CA8 8F182A68 */  lw         $t8, %lo(D_800F2A68)($t8)
/* B28AC 800B1CAC 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B28B0 800B1CB0 27190040 */  addiu      $t9, $t8, 0x40
/* B28B4 800B1CB4 AC392A68 */  sw         $t9, %lo(D_800F2A68)($at)
/* B28B8 800B1CB8 3C013F80 */  lui        $at, 0x3f80
/* B28BC 800B1CBC 44813000 */  mtc1       $at, $f6
/* B28C0 800B1CC0 44805000 */  mtc1       $zero, $f10
/* B28C4 800B1CC4 44808000 */  mtc1       $zero, $f16
/* B28C8 800B1CC8 44809000 */  mtc1       $zero, $f18
/* B28CC 800B1CCC 44802000 */  mtc1       $zero, $f4
/* B28D0 800B1CD0 44804000 */  mtc1       $zero, $f8
/* B28D4 800B1CD4 03202025 */  or         $a0, $t9, $zero
/* B28D8 800B1CD8 24050000 */  addiu      $a1, $zero, 0
/* B28DC 800B1CDC 24060000 */  addiu      $a2, $zero, 0
/* B28E0 800B1CE0 3C07447A */  lui        $a3, 0x447a
/* B28E4 800B1CE4 E7A60020 */  swc1       $f6, 0x20($sp)
/* B28E8 800B1CE8 E7AA0010 */  swc1       $f10, 0x10($sp)
/* B28EC 800B1CEC E7B00014 */  swc1       $f16, 0x14($sp)
/* B28F0 800B1CF0 E7B20018 */  swc1       $f18, 0x18($sp)
/* B28F4 800B1CF4 E7A4001C */  swc1       $f4, 0x1c($sp)
/* B28F8 800B1CF8 0C03141A */  jal        func_800C5068
/* B28FC 800B1CFC E7A80024 */   swc1      $f8, 0x24($sp)
/* B2900 800B1D00 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B2904 800B1D04 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B2908 800B1D08 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B290C 800B1D0C 3C0A0101 */  lui        $t2, 0x101
/* B2910 800B1D10 AFA800B8 */  sw         $t0, 0xb8($sp)
/* B2914 800B1D14 8FAB00B8 */  lw         $t3, 0xb8($sp)
/* B2918 800B1D18 25090008 */  addiu      $t1, $t0, 8
/* B291C 800B1D1C AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B2920 800B1D20 354A0040 */  ori        $t2, $t2, 0x40
/* B2924 800B1D24 3C0C800F */  lui        $t4, %hi(D_800F2A68)
/* B2928 800B1D28 AD6A0000 */  sw         $t2, ($t3)
/* B292C 800B1D2C 8D8C2A68 */  lw         $t4, %lo(D_800F2A68)($t4)
/* B2930 800B1D30 8FAE00B8 */  lw         $t6, 0xb8($sp)
/* B2934 800B1D34 3C018000 */  lui        $at, 0x8000
/* B2938 800B1D38 01816821 */  addu       $t5, $t4, $at
/* B293C 800B1D3C 3C0F800F */  lui        $t7, %hi(D_800F2A68)
/* B2940 800B1D40 ADCD0004 */  sw         $t5, 4($t6)
/* B2944 800B1D44 8DEF2A68 */  lw         $t7, %lo(D_800F2A68)($t7)
/* B2948 800B1D48 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B294C 800B1D4C 25F80040 */  addiu      $t8, $t7, 0x40
/* B2950 800B1D50 AC382A68 */  sw         $t8, %lo(D_800F2A68)($at)
/* B2954 800B1D54 3C01447A */  lui        $at, 0x447a
/* B2958 800B1D58 44815000 */  mtc1       $at, $f10
/* B295C 800B1D5C 3C013F80 */  lui        $at, 0x3f80
/* B2960 800B1D60 44814000 */  mtc1       $at, $f8
/* B2964 800B1D64 E7AA0010 */  swc1       $f10, 0x10($sp)
/* B2968 800B1D68 44805000 */  mtc1       $zero, $f10
/* B296C 800B1D6C 44808000 */  mtc1       $zero, $f16
/* B2970 800B1D70 44809000 */  mtc1       $zero, $f18
/* B2974 800B1D74 44802000 */  mtc1       $zero, $f4
/* B2978 800B1D78 44803000 */  mtc1       $zero, $f6
/* B297C 800B1D7C 3C058014 */  lui        $a1, %hi(D_80142C50)
/* B2980 800B1D80 24A52C50 */  addiu      $a1, $a1, %lo(D_80142C50)
/* B2984 800B1D84 03002025 */  or         $a0, $t8, $zero
/* B2988 800B1D88 24060000 */  addiu      $a2, $zero, 0
/* B298C 800B1D8C 24070000 */  addiu      $a3, $zero, 0
/* B2990 800B1D90 E7A80024 */  swc1       $f8, 0x24($sp)
/* B2994 800B1D94 E7AA0028 */  swc1       $f10, 0x28($sp)
/* B2998 800B1D98 E7B00014 */  swc1       $f16, 0x14($sp)
/* B299C 800B1D9C E7B20018 */  swc1       $f18, 0x18($sp)
/* B29A0 800B1DA0 E7A4001C */  swc1       $f4, 0x1c($sp)
/* B29A4 800B1DA4 0C031F8F */  jal        func_800C7E3C
/* B29A8 800B1DA8 E7A60020 */   swc1      $f6, 0x20($sp)
/* B29AC 800B1DAC 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* B29B0 800B1DB0 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* B29B4 800B1DB4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B29B8 800B1DB8 3C090384 */  lui        $t1, 0x384
/* B29BC 800B1DBC AFB900B4 */  sw         $t9, 0xb4($sp)
/* B29C0 800B1DC0 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* B29C4 800B1DC4 27280008 */  addiu      $t0, $t9, 8
/* B29C8 800B1DC8 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* B29CC 800B1DCC 35290010 */  ori        $t1, $t1, 0x10
/* B29D0 800B1DD0 AD490000 */  sw         $t1, ($t2)
/* B29D4 800B1DD4 8FAC00B4 */  lw         $t4, 0xb4($sp)
/* B29D8 800B1DD8 3C0B8014 */  lui        $t3, %hi(D_80142C50)
/* B29DC 800B1DDC 256B2C50 */  addiu      $t3, $t3, %lo(D_80142C50)
/* B29E0 800B1DE0 AD8B0004 */  sw         $t3, 4($t4)
/* B29E4 800B1DE4 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B29E8 800B1DE8 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B29EC 800B1DEC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B29F0 800B1DF0 3C0F0382 */  lui        $t7, 0x382
/* B29F4 800B1DF4 AFAD00B0 */  sw         $t5, 0xb0($sp)
/* B29F8 800B1DF8 8FB800B0 */  lw         $t8, 0xb0($sp)
/* B29FC 800B1DFC 25AE0008 */  addiu      $t6, $t5, 8
/* B2A00 800B1E00 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B2A04 800B1E04 35EF0010 */  ori        $t7, $t7, 0x10
/* B2A08 800B1E08 AF0F0000 */  sw         $t7, ($t8)
/* B2A0C 800B1E0C 8FA900B0 */  lw         $t1, 0xb0($sp)
/* B2A10 800B1E10 3C198014 */  lui        $t9, %hi(D_80142C50)
/* B2A14 800B1E14 27392C50 */  addiu      $t9, $t9, %lo(D_80142C50)
/* B2A18 800B1E18 27280010 */  addiu      $t0, $t9, 0x10
/* B2A1C 800B1E1C AD280004 */  sw         $t0, 4($t1)
/* B2A20 800B1E20 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* B2A24 800B1E24 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* B2A28 800B1E28 3C053F80 */  lui        $a1, 0x3f80
/* B2A2C 800B1E2C 3C063F80 */  lui        $a2, 0x3f80
/* B2A30 800B1E30 0C02F8F1 */  jal        func_800BE3C4
/* B2A34 800B1E34 3C073F80 */   lui       $a3, 0x3f80
/* B2A38 800B1E38 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B2A3C 800B1E3C 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B2A40 800B1E40 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2A44 800B1E44 3C0C0102 */  lui        $t4, 0x102
/* B2A48 800B1E48 AFAA00AC */  sw         $t2, 0xac($sp)
/* B2A4C 800B1E4C 8FAD00AC */  lw         $t5, 0xac($sp)
/* B2A50 800B1E50 254B0008 */  addiu      $t3, $t2, 8
/* B2A54 800B1E54 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B2A58 800B1E58 358C0040 */  ori        $t4, $t4, 0x40
/* B2A5C 800B1E5C 3C0E800F */  lui        $t6, %hi(D_800F2A68)
/* B2A60 800B1E60 ADAC0000 */  sw         $t4, ($t5)
/* B2A64 800B1E64 8DCE2A68 */  lw         $t6, %lo(D_800F2A68)($t6)
/* B2A68 800B1E68 8FB800AC */  lw         $t8, 0xac($sp)
/* B2A6C 800B1E6C 3C018000 */  lui        $at, 0x8000
/* B2A70 800B1E70 01C17821 */  addu       $t7, $t6, $at
/* B2A74 800B1E74 3C19800F */  lui        $t9, %hi(D_800F2A68)
/* B2A78 800B1E78 AF0F0004 */  sw         $t7, 4($t8)
/* B2A7C 800B1E7C 8F392A68 */  lw         $t9, %lo(D_800F2A68)($t9)
/* B2A80 800B1E80 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B2A84 800B1E84 27280040 */  addiu      $t0, $t9, 0x40
/* B2A88 800B1E88 AC282A68 */  sw         $t0, %lo(D_800F2A68)($at)
/* B2A8C 800B1E8C 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B2A90 800B1E90 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B2A94 800B1E94 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2A98 800B1E98 3C0BE700 */  lui        $t3, 0xe700
/* B2A9C 800B1E9C AFA900A8 */  sw         $t1, 0xa8($sp)
/* B2AA0 800B1EA0 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* B2AA4 800B1EA4 252A0008 */  addiu      $t2, $t1, 8
/* B2AA8 800B1EA8 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B2AAC 800B1EAC AD8B0000 */  sw         $t3, ($t4)
/* B2AB0 800B1EB0 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* B2AB4 800B1EB4 ADA00004 */  sw         $zero, 4($t5)
/* B2AB8 800B1EB8 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B2ABC 800B1EBC 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B2AC0 800B1EC0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2AC4 800B1EC4 3C18BA00 */  lui        $t8, 0xba00
/* B2AC8 800B1EC8 AFAE00A4 */  sw         $t6, 0xa4($sp)
/* B2ACC 800B1ECC 8FB900A4 */  lw         $t9, 0xa4($sp)
/* B2AD0 800B1ED0 25CF0008 */  addiu      $t7, $t6, 8
/* B2AD4 800B1ED4 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* B2AD8 800B1ED8 37181402 */  ori        $t8, $t8, 0x1402
/* B2ADC 800B1EDC AF380000 */  sw         $t8, ($t9)
/* B2AE0 800B1EE0 8FA800A4 */  lw         $t0, 0xa4($sp)
/* B2AE4 800B1EE4 AD000004 */  sw         $zero, 4($t0)
/* B2AE8 800B1EE8 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B2AEC 800B1EEC 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B2AF0 800B1EF0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2AF4 800B1EF4 3C0BBA00 */  lui        $t3, 0xba00
/* B2AF8 800B1EF8 AFA900A0 */  sw         $t1, 0xa0($sp)
/* B2AFC 800B1EFC 8FAC00A0 */  lw         $t4, 0xa0($sp)
/* B2B00 800B1F00 252A0008 */  addiu      $t2, $t1, 8
/* B2B04 800B1F04 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B2B08 800B1F08 356B1301 */  ori        $t3, $t3, 0x1301
/* B2B0C 800B1F0C AD8B0000 */  sw         $t3, ($t4)
/* B2B10 800B1F10 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* B2B14 800B1F14 ADA00004 */  sw         $zero, 4($t5)
/* B2B18 800B1F18 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B2B1C 800B1F1C 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B2B20 800B1F20 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2B24 800B1F24 3C18BB00 */  lui        $t8, 0xbb00
/* B2B28 800B1F28 AFAE009C */  sw         $t6, 0x9c($sp)
/* B2B2C 800B1F2C 8FB9009C */  lw         $t9, 0x9c($sp)
/* B2B30 800B1F30 25CF0008 */  addiu      $t7, $t6, 8
/* B2B34 800B1F34 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* B2B38 800B1F38 37180001 */  ori        $t8, $t8, 1
/* B2B3C 800B1F3C AF380000 */  sw         $t8, ($t9)
/* B2B40 800B1F40 8FA9009C */  lw         $t1, 0x9c($sp)
/* B2B44 800B1F44 2408FFFF */  addiu      $t0, $zero, -1
/* B2B48 800B1F48 AD280004 */  sw         $t0, 4($t1)
/* B2B4C 800B1F4C 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B2B50 800B1F50 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B2B54 800B1F54 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2B58 800B1F58 3C0CE700 */  lui        $t4, 0xe700
/* B2B5C 800B1F5C AFAA0098 */  sw         $t2, 0x98($sp)
/* B2B60 800B1F60 8FAD0098 */  lw         $t5, 0x98($sp)
/* B2B64 800B1F64 254B0008 */  addiu      $t3, $t2, 8
/* B2B68 800B1F68 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B2B6C 800B1F6C ADAC0000 */  sw         $t4, ($t5)
/* B2B70 800B1F70 8FAE0098 */  lw         $t6, 0x98($sp)
/* B2B74 800B1F74 ADC00004 */  sw         $zero, 4($t6)
/* B2B78 800B1F78 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* B2B7C 800B1F7C 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* B2B80 800B1F80 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2B84 800B1F84 3C19EE00 */  lui        $t9, 0xee00
/* B2B88 800B1F88 AFAF0094 */  sw         $t7, 0x94($sp)
/* B2B8C 800B1F8C 8FA80094 */  lw         $t0, 0x94($sp)
/* B2B90 800B1F90 25F80008 */  addiu      $t8, $t7, 8
/* B2B94 800B1F94 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* B2B98 800B1F98 AD190000 */  sw         $t9, ($t0)
/* B2B9C 800B1F9C 8FA90094 */  lw         $t1, 0x94($sp)
/* B2BA0 800B1FA0 AD200004 */  sw         $zero, 4($t1)
/* B2BA4 800B1FA4 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B2BA8 800B1FA8 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B2BAC 800B1FAC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2BB0 800B1FB0 3C0CB900 */  lui        $t4, 0xb900
/* B2BB4 800B1FB4 AFAA0090 */  sw         $t2, 0x90($sp)
/* B2BB8 800B1FB8 8FAD0090 */  lw         $t5, 0x90($sp)
/* B2BBC 800B1FBC 254B0008 */  addiu      $t3, $t2, 8
/* B2BC0 800B1FC0 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B2BC4 800B1FC4 358C031D */  ori        $t4, $t4, 0x31d
/* B2BC8 800B1FC8 ADAC0000 */  sw         $t4, ($t5)
/* B2BCC 800B1FCC 8FAF0090 */  lw         $t7, 0x90($sp)
/* B2BD0 800B1FD0 3C0E0F0A */  lui        $t6, 0xf0a
/* B2BD4 800B1FD4 35CE4000 */  ori        $t6, $t6, 0x4000
/* B2BD8 800B1FD8 ADEE0004 */  sw         $t6, 4($t7)
/* B2BDC 800B1FDC 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* B2BE0 800B1FE0 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* B2BE4 800B1FE4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2BE8 800B1FE8 3C08FCFF */  lui        $t0, 0xfcff
/* B2BEC 800B1FEC AFB8008C */  sw         $t8, 0x8c($sp)
/* B2BF0 800B1FF0 8FA9008C */  lw         $t1, 0x8c($sp)
/* B2BF4 800B1FF4 27190008 */  addiu      $t9, $t8, 8
/* B2BF8 800B1FF8 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* B2BFC 800B1FFC 3508FFFF */  ori        $t0, $t0, 0xffff
/* B2C00 800B2000 AD280000 */  sw         $t0, ($t1)
/* B2C04 800B2004 8FAB008C */  lw         $t3, 0x8c($sp)
/* B2C08 800B2008 3C0AFFFC */  lui        $t2, 0xfffc
/* B2C0C 800B200C 354AF279 */  ori        $t2, $t2, 0xf279
/* B2C10 800B2010 AD6A0004 */  sw         $t2, 4($t3)
/* B2C14 800B2014 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* B2C18 800B2018 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* B2C1C 800B201C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2C20 800B2020 3C0EBA00 */  lui        $t6, 0xba00
/* B2C24 800B2024 AFAC0088 */  sw         $t4, 0x88($sp)
/* B2C28 800B2028 8FAF0088 */  lw         $t7, 0x88($sp)
/* B2C2C 800B202C 258D0008 */  addiu      $t5, $t4, 8
/* B2C30 800B2030 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* B2C34 800B2034 35CE0C02 */  ori        $t6, $t6, 0xc02
/* B2C38 800B2038 ADEE0000 */  sw         $t6, ($t7)
/* B2C3C 800B203C 8FB90088 */  lw         $t9, 0x88($sp)
/* B2C40 800B2040 24182000 */  addiu      $t8, $zero, 0x2000
/* B2C44 800B2044 AF380004 */  sw         $t8, 4($t9)
/* B2C48 800B2048 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B2C4C 800B204C 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B2C50 800B2050 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2C54 800B2054 3C0AE700 */  lui        $t2, 0xe700
/* B2C58 800B2058 AFA80084 */  sw         $t0, 0x84($sp)
/* B2C5C 800B205C 8FAB0084 */  lw         $t3, 0x84($sp)
/* B2C60 800B2060 25090008 */  addiu      $t1, $t0, 8
/* B2C64 800B2064 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B2C68 800B2068 AD6A0000 */  sw         $t2, ($t3)
/* B2C6C 800B206C 8FAC0084 */  lw         $t4, 0x84($sp)
/* B2C70 800B2070 AD800004 */  sw         $zero, 4($t4)
/* B2C74 800B2074 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B2C78 800B2078 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B2C7C 800B207C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2C80 800B2080 3C0F0600 */  lui        $t7, 0x600
/* B2C84 800B2084 AFAD0080 */  sw         $t5, 0x80($sp)
/* B2C88 800B2088 8FB80080 */  lw         $t8, 0x80($sp)
/* B2C8C 800B208C 25AE0008 */  addiu      $t6, $t5, 8
/* B2C90 800B2090 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B2C94 800B2094 AF0F0000 */  sw         $t7, ($t8)
/* B2C98 800B2098 8FA80080 */  lw         $t0, 0x80($sp)
/* B2C9C 800B209C 3C198018 */  lui        $t9, %hi(D_8017A1F0)
/* B2CA0 800B20A0 2739A1F0 */  addiu      $t9, $t9, %lo(D_8017A1F0)
/* B2CA4 800B20A4 AD190004 */  sw         $t9, 4($t0)
/* B2CA8 800B20A8 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B2CAC 800B20AC 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B2CB0 800B20B0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2CB4 800B20B4 3C0BBC00 */  lui        $t3, 0xbc00
/* B2CB8 800B20B8 AFA9007C */  sw         $t1, 0x7c($sp)
/* B2CBC 800B20BC 8FAC007C */  lw         $t4, 0x7c($sp)
/* B2CC0 800B20C0 252A0008 */  addiu      $t2, $t1, 8
/* B2CC4 800B20C4 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B2CC8 800B20C8 356B0008 */  ori        $t3, $t3, 8
/* B2CCC 800B20CC AD8B0000 */  sw         $t3, ($t4)
/* B2CD0 800B20D0 3C0D800D */  lui        $t5, %hi(D_800D6718)
/* B2CD4 800B20D4 3C0E800D */  lui        $t6, %hi(D_800D6714)
/* B2CD8 800B20D8 8DCE6714 */  lw         $t6, %lo(D_800D6714)($t6)
/* B2CDC 800B20DC 8DAD6718 */  lw         $t5, %lo(D_800D6718)($t5)
/* B2CE0 800B20E0 3C180001 */  lui        $t8, 1
/* B2CE4 800B20E4 3718F400 */  ori        $t8, $t8, 0xf400
/* B2CE8 800B20E8 01AE7823 */  subu       $t7, $t5, $t6
/* B2CEC 800B20EC 030F001A */  div        $zero, $t8, $t7
/* B2CF0 800B20F0 15E00002 */  bnez       $t7, .L800B20FC
/* B2CF4 800B20F4 00000000 */   nop
/* B2CF8 800B20F8 0007000D */  break      7
.L800B20FC:
/* B2CFC 800B20FC 2401FFFF */   addiu     $at, $zero, -1
/* B2D00 800B2100 15E10004 */  bne        $t7, $at, .L800B2114
/* B2D04 800B2104 3C018000 */   lui       $at, 0x8000
/* B2D08 800B2108 17010002 */  bne        $t8, $at, .L800B2114
/* B2D0C 800B210C 00000000 */   nop
/* B2D10 800B2110 0006000D */  break      6
.L800B2114:
/* B2D14 800B2114 000E5023 */   negu      $t2, $t6
/* B2D18 800B2118 000A5A00 */  sll        $t3, $t2, 8
/* B2D1C 800B211C 03000821 */  addu       $at, $t8, $zero
/* B2D20 800B2120 01616021 */  addu       $t4, $t3, $at
/* B2D24 800B2124 0000C812 */  mflo       $t9
/* B2D28 800B2128 3328FFFF */  andi       $t0, $t9, 0xffff
/* B2D2C 800B212C 00084C00 */  sll        $t1, $t0, 0x10
/* B2D30 800B2130 018F001A */  div        $zero, $t4, $t7
/* B2D34 800B2134 8FA8007C */  lw         $t0, 0x7c($sp)
/* B2D38 800B2138 00006812 */  mflo       $t5
/* B2D3C 800B213C 31B8FFFF */  andi       $t8, $t5, 0xffff
/* B2D40 800B2140 0138C825 */  or         $t9, $t1, $t8
/* B2D44 800B2144 15E00002 */  bnez       $t7, .L800B2150
/* B2D48 800B2148 00000000 */   nop
/* B2D4C 800B214C 0007000D */  break      7
.L800B2150:
/* B2D50 800B2150 2401FFFF */   addiu     $at, $zero, -1
/* B2D54 800B2154 15E10004 */  bne        $t7, $at, .L800B2168
/* B2D58 800B2158 3C018000 */   lui       $at, 0x8000
/* B2D5C 800B215C 15810002 */  bne        $t4, $at, .L800B2168
/* B2D60 800B2160 00000000 */   nop
/* B2D64 800B2164 0006000D */  break      6
.L800B2168:
/* B2D68 800B2168 AD190004 */   sw        $t9, 4($t0)
/* B2D6C 800B216C 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B2D70 800B2170 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B2D74 800B2174 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2D78 800B2178 3C0BF800 */  lui        $t3, 0xf800
/* B2D7C 800B217C AFAE0078 */  sw         $t6, 0x78($sp)
/* B2D80 800B2180 8FAC0078 */  lw         $t4, 0x78($sp)
/* B2D84 800B2184 25CA0008 */  addiu      $t2, $t6, 8
/* B2D88 800B2188 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B2D8C 800B218C AD8B0000 */  sw         $t3, ($t4)
/* B2D90 800B2190 8FAD0078 */  lw         $t5, 0x78($sp)
/* B2D94 800B2194 240F00FF */  addiu      $t7, $zero, 0xff
/* B2D98 800B2198 ADAF0004 */  sw         $t7, 4($t5)
/* B2D9C 800B219C 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* B2DA0 800B21A0 3C06800E */  lui        $a2, %hi(D_800D9FA4)
/* B2DA4 800B21A4 3C07800E */  lui        $a3, %hi(D_800D9FA8)
/* B2DA8 800B21A8 8CE79FA8 */  lw         $a3, %lo(D_800D9FA8)($a3)
/* B2DAC 800B21AC 8CC69FA4 */  lw         $a2, %lo(D_800D9FA4)($a2)
/* B2DB0 800B21B0 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* B2DB4 800B21B4 0C034602 */  jal        func_800D1808
/* B2DB8 800B21B8 24050000 */   addiu     $a1, $zero, 0
/* B2DBC 800B21BC 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B2DC0 800B21C0 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B2DC4 800B21C4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2DC8 800B21C8 3C190100 */  lui        $t9, 0x100
/* B2DCC 800B21CC AFA90074 */  sw         $t1, 0x74($sp)
/* B2DD0 800B21D0 8FA80074 */  lw         $t0, 0x74($sp)
/* B2DD4 800B21D4 25380008 */  addiu      $t8, $t1, 8
/* B2DD8 800B21D8 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* B2DDC 800B21DC 37390040 */  ori        $t9, $t9, 0x40
/* B2DE0 800B21E0 3C0E800F */  lui        $t6, %hi(D_800F2A68)
/* B2DE4 800B21E4 AD190000 */  sw         $t9, ($t0)
/* B2DE8 800B21E8 8DCE2A68 */  lw         $t6, %lo(D_800F2A68)($t6)
/* B2DEC 800B21EC 8FAB0074 */  lw         $t3, 0x74($sp)
/* B2DF0 800B21F0 3C018000 */  lui        $at, 0x8000
/* B2DF4 800B21F4 01C15021 */  addu       $t2, $t6, $at
/* B2DF8 800B21F8 3C0C800F */  lui        $t4, %hi(D_800F2A68)
/* B2DFC 800B21FC AD6A0004 */  sw         $t2, 4($t3)
/* B2E00 800B2200 8D8C2A68 */  lw         $t4, %lo(D_800F2A68)($t4)
/* B2E04 800B2204 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B2E08 800B2208 258F0040 */  addiu      $t7, $t4, 0x40
/* B2E0C 800B220C AC2F2A68 */  sw         $t7, %lo(D_800F2A68)($at)
/* B2E10 800B2210 3C053DCC */  lui        $a1, 0x3dcc
/* B2E14 800B2214 34A5CCCD */  ori        $a1, $a1, 0xcccd
/* B2E18 800B2218 00A03021 */  addu       $a2, $a1, $zero
/* B2E1C 800B221C 00A03821 */  addu       $a3, $a1, $zero
/* B2E20 800B2220 0C02F8F1 */  jal        func_800BE3C4
/* B2E24 800B2224 01E02025 */   or        $a0, $t7, $zero
/* B2E28 800B2228 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B2E2C 800B222C 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B2E30 800B2230 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2E34 800B2234 3C180100 */  lui        $t8, 0x100
/* B2E38 800B2238 AFAD0070 */  sw         $t5, 0x70($sp)
/* B2E3C 800B223C 8FB90070 */  lw         $t9, 0x70($sp)
/* B2E40 800B2240 25A90008 */  addiu      $t1, $t5, 8
/* B2E44 800B2244 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B2E48 800B2248 37180040 */  ori        $t8, $t8, 0x40
/* B2E4C 800B224C 3C08800F */  lui        $t0, %hi(D_800F2A68)
/* B2E50 800B2250 AF380000 */  sw         $t8, ($t9)
/* B2E54 800B2254 8D082A68 */  lw         $t0, %lo(D_800F2A68)($t0)
/* B2E58 800B2258 8FAA0070 */  lw         $t2, 0x70($sp)
/* B2E5C 800B225C 3C018000 */  lui        $at, 0x8000
/* B2E60 800B2260 01017021 */  addu       $t6, $t0, $at
/* B2E64 800B2264 3C0B800F */  lui        $t3, %hi(D_800F2A68)
/* B2E68 800B2268 AD4E0004 */  sw         $t6, 4($t2)
/* B2E6C 800B226C 8D6B2A68 */  lw         $t3, %lo(D_800F2A68)($t3)
/* B2E70 800B2270 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B2E74 800B2274 256C0040 */  addiu      $t4, $t3, 0x40
/* B2E78 800B2278 AC2C2A68 */  sw         $t4, %lo(D_800F2A68)($at)
/* B2E7C 800B227C 3C04800E */  lui        $a0, %hi(D_800D9F6C)
/* B2E80 800B2280 0C022AC8 */  jal        func_8008AB20
/* B2E84 800B2284 24849F6C */   addiu     $a0, $a0, %lo(D_800D9F6C)
/* B2E88 800B2288 8FAF01EC */  lw         $t7, 0x1ec($sp)
/* B2E8C 800B228C 11E00010 */  beqz       $t7, .L800B22D0
/* B2E90 800B2290 00000000 */   nop
/* B2E94 800B2294 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B2E98 800B2298 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B2E9C 800B229C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2EA0 800B22A0 3C180600 */  lui        $t8, 0x600
/* B2EA4 800B22A4 AFAD006C */  sw         $t5, 0x6c($sp)
/* B2EA8 800B22A8 8FB9006C */  lw         $t9, 0x6c($sp)
/* B2EAC 800B22AC 25A90008 */  addiu      $t1, $t5, 8
/* B2EB0 800B22B0 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B2EB4 800B22B4 AF380000 */  sw         $t8, ($t9)
/* B2EB8 800B22B8 8FAE006C */  lw         $t6, 0x6c($sp)
/* B2EBC 800B22BC 3C08801D */  lui        $t0, %hi(D_801CC218)
/* B2EC0 800B22C0 2508C218 */  addiu      $t0, $t0, %lo(D_801CC218)
/* B2EC4 800B22C4 ADC80004 */  sw         $t0, 4($t6)
/* B2EC8 800B22C8 1000000E */  b          .L800B2304
/* B2ECC 800B22CC 00000000 */   nop
.L800B22D0:
/* B2ED0 800B22D0 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B2ED4 800B22D4 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B2ED8 800B22D8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B2EDC 800B22DC 3C0C0600 */  lui        $t4, 0x600
/* B2EE0 800B22E0 AFAA0068 */  sw         $t2, 0x68($sp)
/* B2EE4 800B22E4 8FAF0068 */  lw         $t7, 0x68($sp)
/* B2EE8 800B22E8 254B0008 */  addiu      $t3, $t2, 8
/* B2EEC 800B22EC AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B2EF0 800B22F0 ADEC0000 */  sw         $t4, ($t7)
/* B2EF4 800B22F4 8FA90068 */  lw         $t1, 0x68($sp)
/* B2EF8 800B22F8 3C0D801D */  lui        $t5, %hi(D_801CCF90)
/* B2EFC 800B22FC 25ADCF90 */  addiu      $t5, $t5, %lo(D_801CCF90)
/* B2F00 800B2300 AD2D0004 */  sw         $t5, 4($t1)
.L800B2304:
/* B2F04 800B2304 3C188014 */  lui        $t8, %hi(D_80144294)
/* B2F08 800B2308 87184294 */  lh         $t8, %lo(D_80144294)($t8)
/* B2F0C 800B230C 2401FFFF */  addiu      $at, $zero, -1
/* B2F10 800B2310 130104A0 */  beq        $t8, $at, .L800B3594
/* B2F14 800B2314 00000000 */   nop
/* B2F18 800B2318 33194000 */  andi       $t9, $t8, 0x4000
/* B2F1C 800B231C 17200219 */  bnez       $t9, .L800B2B84
/* B2F20 800B2320 00000000 */   nop
/* B2F24 800B2324 3C088014 */  lui        $t0, %hi(D_80144294)
/* B2F28 800B2328 95084294 */  lhu        $t0, %lo(D_80144294)($t0)
/* B2F2C 800B232C 2D01000A */  sltiu      $at, $t0, 0xa
/* B2F30 800B2330 10200387 */  beqz       $at, .L800B3150
/* B2F34 800B2334 00000000 */   nop
/* B2F38 800B2338 00084080 */  sll        $t0, $t0, 2
/* B2F3C 800B233C 3C01800E */  lui        $at, %hi(D_800DF228)
/* B2F40 800B2340 00280821 */  addu       $at, $at, $t0
/* B2F44 800B2344 8C28F228 */  lw         $t0, %lo(D_800DF228)($at)
/* B2F48 800B2348 01000008 */  jr         $t0
/* B2F4C 800B234C 00000000 */   nop
/* B2F50 800B2350 3C108014 */  lui        $s0, %hi(D_80144294)
/* B2F54 800B2354 86104294 */  lh         $s0, %lo(D_80144294)($s0)
/* B2F58 800B2358 12000007 */  beqz       $s0, .L800B2378
/* B2F5C 800B235C 24010005 */   addiu     $at, $zero, 5
/* B2F60 800B2360 1201001C */  beq        $s0, $at, .L800B23D4
/* B2F64 800B2364 24010008 */   addiu     $at, $zero, 8
/* B2F68 800B2368 12010031 */  beq        $s0, $at, .L800B2430
/* B2F6C 800B236C 00000000 */   nop
/* B2F70 800B2370 10000044 */  b          .L800B2484
/* B2F74 800B2374 00000000 */   nop
.L800B2378:
/* B2F78 800B2378 3C0E800E */  lui        $t6, %hi(D_800D9FA0)
/* B2F7C 800B237C 8DCE9FA0 */  lw         $t6, %lo(D_800D9FA0)($t6)
/* B2F80 800B2380 3C013F80 */  lui        $at, 0x3f80
/* B2F84 800B2384 44818000 */  mtc1       $at, $f16
/* B2F88 800B2388 000E5080 */  sll        $t2, $t6, 2
/* B2F8C 800B238C 014E5021 */  addu       $t2, $t2, $t6
/* B2F90 800B2390 000A50C0 */  sll        $t2, $t2, 3
/* B2F94 800B2394 014E5021 */  addu       $t2, $t2, $t6
/* B2F98 800B2398 44819000 */  mtc1       $at, $f18
/* B2F9C 800B239C 000A5080 */  sll        $t2, $t2, 2
/* B2FA0 800B23A0 3C048017 */  lui        $a0, %hi(D_80176DD8)
/* B2FA4 800B23A4 008A2021 */  addu       $a0, $a0, $t2
/* B2FA8 800B23A8 240B0001 */  addiu      $t3, $zero, 1
/* B2FAC 800B23AC AFAB0018 */  sw         $t3, 0x18($sp)
/* B2FB0 800B23B0 8C846DD8 */  lw         $a0, %lo(D_80176DD8)($a0)
/* B2FB4 800B23B4 240500A0 */  addiu      $a1, $zero, 0xa0
/* B2FB8 800B23B8 24060050 */  addiu      $a2, $zero, 0x50
/* B2FBC 800B23BC 240700FF */  addiu      $a3, $zero, 0xff
/* B2FC0 800B23C0 E7B00010 */  swc1       $f16, 0x10($sp)
/* B2FC4 800B23C4 0C02757E */  jal        func_8009D5F8
/* B2FC8 800B23C8 E7B20014 */   swc1      $f18, 0x14($sp)
/* B2FCC 800B23CC 1000002D */  b          .L800B2484
/* B2FD0 800B23D0 00000000 */   nop
.L800B23D4:
/* B2FD4 800B23D4 3C0C800E */  lui        $t4, %hi(D_800D9FA0)
/* B2FD8 800B23D8 8D8C9FA0 */  lw         $t4, %lo(D_800D9FA0)($t4)
/* B2FDC 800B23DC 3C013F80 */  lui        $at, 0x3f80
/* B2FE0 800B23E0 44812000 */  mtc1       $at, $f4
/* B2FE4 800B23E4 000C7880 */  sll        $t7, $t4, 2
/* B2FE8 800B23E8 01EC7821 */  addu       $t7, $t7, $t4
/* B2FEC 800B23EC 000F78C0 */  sll        $t7, $t7, 3
/* B2FF0 800B23F0 01EC7821 */  addu       $t7, $t7, $t4
/* B2FF4 800B23F4 44813000 */  mtc1       $at, $f6
/* B2FF8 800B23F8 000F7880 */  sll        $t7, $t7, 2
/* B2FFC 800B23FC 3C048017 */  lui        $a0, %hi(D_80176DF8)
/* B3000 800B2400 008F2021 */  addu       $a0, $a0, $t7
/* B3004 800B2404 240D0001 */  addiu      $t5, $zero, 1
/* B3008 800B2408 AFAD0018 */  sw         $t5, 0x18($sp)
/* B300C 800B240C 8C846DF8 */  lw         $a0, %lo(D_80176DF8)($a0)
/* B3010 800B2410 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3014 800B2414 24060050 */  addiu      $a2, $zero, 0x50
/* B3018 800B2418 240700FF */  addiu      $a3, $zero, 0xff
/* B301C 800B241C E7A40010 */  swc1       $f4, 0x10($sp)
/* B3020 800B2420 0C02757E */  jal        func_8009D5F8
/* B3024 800B2424 E7A60014 */   swc1      $f6, 0x14($sp)
/* B3028 800B2428 10000016 */  b          .L800B2484
/* B302C 800B242C 00000000 */   nop
.L800B2430:
/* B3030 800B2430 3C09800E */  lui        $t1, %hi(D_800D9FA0)
/* B3034 800B2434 8D299FA0 */  lw         $t1, %lo(D_800D9FA0)($t1)
/* B3038 800B2438 3C013F80 */  lui        $at, 0x3f80
/* B303C 800B243C 44814000 */  mtc1       $at, $f8
/* B3040 800B2440 0009C080 */  sll        $t8, $t1, 2
/* B3044 800B2444 0309C021 */  addu       $t8, $t8, $t1
/* B3048 800B2448 0018C0C0 */  sll        $t8, $t8, 3
/* B304C 800B244C 0309C021 */  addu       $t8, $t8, $t1
/* B3050 800B2450 44815000 */  mtc1       $at, $f10
/* B3054 800B2454 0018C080 */  sll        $t8, $t8, 2
/* B3058 800B2458 3C048017 */  lui        $a0, %hi(D_80176E04)
/* B305C 800B245C 00982021 */  addu       $a0, $a0, $t8
/* B3060 800B2460 24190001 */  addiu      $t9, $zero, 1
/* B3064 800B2464 AFB90018 */  sw         $t9, 0x18($sp)
/* B3068 800B2468 8C846E04 */  lw         $a0, %lo(D_80176E04)($a0)
/* B306C 800B246C 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3070 800B2470 24060050 */  addiu      $a2, $zero, 0x50
/* B3074 800B2474 240700FF */  addiu      $a3, $zero, 0xff
/* B3078 800B2478 E7A80010 */  swc1       $f8, 0x10($sp)
/* B307C 800B247C 0C02757E */  jal        func_8009D5F8
/* B3080 800B2480 E7AA0014 */   swc1      $f10, 0x14($sp)
.L800B2484:
/* B3084 800B2484 3C048014 */  lui        $a0, %hi(D_80144296)
/* B3088 800B2488 84844296 */  lh         $a0, %lo(D_80144296)($a0)
/* B308C 800B248C 24050066 */  addiu      $a1, $zero, 0x66
/* B3090 800B2490 24060030 */  addiu      $a2, $zero, 0x30
/* B3094 800B2494 00800821 */  addu       $at, $a0, $zero
/* B3098 800B2498 00012080 */  sll        $a0, $at, 2
/* B309C 800B249C 00812021 */  addu       $a0, $a0, $at
/* B30A0 800B24A0 00042100 */  sll        $a0, $a0, 4
/* B30A4 800B24A4 24840062 */  addiu      $a0, $a0, 0x62
/* B30A8 800B24A8 0C027593 */  jal        func_8009D64C
/* B30AC 800B24AC 240700FF */   addiu     $a3, $zero, 0xff
/* B30B0 800B24B0 3C08800E */  lui        $t0, %hi(D_800D9FA0)
/* B30B4 800B24B4 8D089FA0 */  lw         $t0, %lo(D_800D9FA0)($t0)
/* B30B8 800B24B8 3C013F80 */  lui        $at, 0x3f80
/* B30BC 800B24BC 44818000 */  mtc1       $at, $f16
/* B30C0 800B24C0 00087080 */  sll        $t6, $t0, 2
/* B30C4 800B24C4 01C87021 */  addu       $t6, $t6, $t0
/* B30C8 800B24C8 000E70C0 */  sll        $t6, $t6, 3
/* B30CC 800B24CC 01C87021 */  addu       $t6, $t6, $t0
/* B30D0 800B24D0 44819000 */  mtc1       $at, $f18
/* B30D4 800B24D4 000E7080 */  sll        $t6, $t6, 2
/* B30D8 800B24D8 3C048017 */  lui        $a0, %hi(D_80176DDC)
/* B30DC 800B24DC 008E2021 */  addu       $a0, $a0, $t6
/* B30E0 800B24E0 240A0001 */  addiu      $t2, $zero, 1
/* B30E4 800B24E4 AFAA0018 */  sw         $t2, 0x18($sp)
/* B30E8 800B24E8 8C846DDC */  lw         $a0, %lo(D_80176DDC)($a0)
/* B30EC 800B24EC 24050078 */  addiu      $a1, $zero, 0x78
/* B30F0 800B24F0 24060078 */  addiu      $a2, $zero, 0x78
/* B30F4 800B24F4 240700FF */  addiu      $a3, $zero, 0xff
/* B30F8 800B24F8 E7B00010 */  swc1       $f16, 0x10($sp)
/* B30FC 800B24FC 0C02757E */  jal        func_8009D5F8
/* B3100 800B2500 E7B20014 */   swc1      $f18, 0x14($sp)
/* B3104 800B2504 3C0B800E */  lui        $t3, %hi(D_800D9FA0)
/* B3108 800B2508 8D6B9FA0 */  lw         $t3, %lo(D_800D9FA0)($t3)
/* B310C 800B250C 3C013F80 */  lui        $at, 0x3f80
/* B3110 800B2510 44812000 */  mtc1       $at, $f4
/* B3114 800B2514 000B6080 */  sll        $t4, $t3, 2
/* B3118 800B2518 018B6021 */  addu       $t4, $t4, $t3
/* B311C 800B251C 000C60C0 */  sll        $t4, $t4, 3
/* B3120 800B2520 018B6021 */  addu       $t4, $t4, $t3
/* B3124 800B2524 44813000 */  mtc1       $at, $f6
/* B3128 800B2528 000C6080 */  sll        $t4, $t4, 2
/* B312C 800B252C 3C048017 */  lui        $a0, %hi(D_80176DE0)
/* B3130 800B2530 008C2021 */  addu       $a0, $a0, $t4
/* B3134 800B2534 240F0001 */  addiu      $t7, $zero, 1
/* B3138 800B2538 AFAF0018 */  sw         $t7, 0x18($sp)
/* B313C 800B253C 8C846DE0 */  lw         $a0, %lo(D_80176DE0)($a0)
/* B3140 800B2540 240500C8 */  addiu      $a1, $zero, 0xc8
/* B3144 800B2544 24060078 */  addiu      $a2, $zero, 0x78
/* B3148 800B2548 240700FF */  addiu      $a3, $zero, 0xff
/* B314C 800B254C E7A40010 */  swc1       $f4, 0x10($sp)
/* B3150 800B2550 0C02757E */  jal        func_8009D5F8
/* B3154 800B2554 E7A60014 */   swc1      $f6, 0x14($sp)
/* B3158 800B2558 100002FD */  b          .L800B3150
/* B315C 800B255C 00000000 */   nop
/* B3160 800B2560 3C0D8014 */  lui        $t5, %hi(D_80144298)
/* B3164 800B2564 95AD4298 */  lhu        $t5, %lo(D_80144298)($t5)
/* B3168 800B2568 2DA1000B */  sltiu      $at, $t5, 0xb
/* B316C 800B256C 10200102 */  beqz       $at, .L800B2978
/* B3170 800B2570 00000000 */   nop
/* B3174 800B2574 000D6880 */  sll        $t5, $t5, 2
/* B3178 800B2578 3C01800E */  lui        $at, %hi(D_800DF250)
/* B317C 800B257C 002D0821 */  addu       $at, $at, $t5
/* B3180 800B2580 8C2DF250 */  lw         $t5, %lo(D_800DF250)($at)
/* B3184 800B2584 01A00008 */  jr         $t5
/* B3188 800B2588 00000000 */   nop
/* B318C 800B258C 3C09800E */  lui        $t1, %hi(D_800D9FA0)
/* B3190 800B2590 8D299FA0 */  lw         $t1, %lo(D_800D9FA0)($t1)
/* B3194 800B2594 3C013F80 */  lui        $at, 0x3f80
/* B3198 800B2598 44814000 */  mtc1       $at, $f8
/* B319C 800B259C 0009C080 */  sll        $t8, $t1, 2
/* B31A0 800B25A0 0309C021 */  addu       $t8, $t8, $t1
/* B31A4 800B25A4 0018C0C0 */  sll        $t8, $t8, 3
/* B31A8 800B25A8 0309C021 */  addu       $t8, $t8, $t1
/* B31AC 800B25AC 44815000 */  mtc1       $at, $f10
/* B31B0 800B25B0 0018C080 */  sll        $t8, $t8, 2
/* B31B4 800B25B4 3C048017 */  lui        $a0, %hi(D_80176DE4)
/* B31B8 800B25B8 00982021 */  addu       $a0, $a0, $t8
/* B31BC 800B25BC 24190001 */  addiu      $t9, $zero, 1
/* B31C0 800B25C0 AFB90018 */  sw         $t9, 0x18($sp)
/* B31C4 800B25C4 8C846DE4 */  lw         $a0, %lo(D_80176DE4)($a0)
/* B31C8 800B25C8 240500A0 */  addiu      $a1, $zero, 0xa0
/* B31CC 800B25CC 24060050 */  addiu      $a2, $zero, 0x50
/* B31D0 800B25D0 240700FF */  addiu      $a3, $zero, 0xff
/* B31D4 800B25D4 E7A80010 */  swc1       $f8, 0x10($sp)
/* B31D8 800B25D8 0C02757E */  jal        func_8009D5F8
/* B31DC 800B25DC E7AA0014 */   swc1      $f10, 0x14($sp)
/* B31E0 800B25E0 100000E5 */  b          .L800B2978
/* B31E4 800B25E4 00000000 */   nop
/* B31E8 800B25E8 3C08800E */  lui        $t0, %hi(D_800D9FA0)
/* B31EC 800B25EC 8D089FA0 */  lw         $t0, %lo(D_800D9FA0)($t0)
/* B31F0 800B25F0 3C013F80 */  lui        $at, 0x3f80
/* B31F4 800B25F4 44818000 */  mtc1       $at, $f16
/* B31F8 800B25F8 00087080 */  sll        $t6, $t0, 2
/* B31FC 800B25FC 01C87021 */  addu       $t6, $t6, $t0
/* B3200 800B2600 000E70C0 */  sll        $t6, $t6, 3
/* B3204 800B2604 01C87021 */  addu       $t6, $t6, $t0
/* B3208 800B2608 44819000 */  mtc1       $at, $f18
/* B320C 800B260C 000E7080 */  sll        $t6, $t6, 2
/* B3210 800B2610 3C048017 */  lui        $a0, %hi(D_80176DEC)
/* B3214 800B2614 008E2021 */  addu       $a0, $a0, $t6
/* B3218 800B2618 240A0001 */  addiu      $t2, $zero, 1
/* B321C 800B261C AFAA0018 */  sw         $t2, 0x18($sp)
/* B3220 800B2620 8C846DEC */  lw         $a0, %lo(D_80176DEC)($a0)
/* B3224 800B2624 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3228 800B2628 24060050 */  addiu      $a2, $zero, 0x50
/* B322C 800B262C 240700FF */  addiu      $a3, $zero, 0xff
/* B3230 800B2630 E7B00010 */  swc1       $f16, 0x10($sp)
/* B3234 800B2634 0C02757E */  jal        func_8009D5F8
/* B3238 800B2638 E7B20014 */   swc1      $f18, 0x14($sp)
/* B323C 800B263C 100000CE */  b          .L800B2978
/* B3240 800B2640 00000000 */   nop
/* B3244 800B2644 3C0B800E */  lui        $t3, %hi(D_800D9FA0)
/* B3248 800B2648 8D6B9FA0 */  lw         $t3, %lo(D_800D9FA0)($t3)
/* B324C 800B264C 3C013F80 */  lui        $at, 0x3f80
/* B3250 800B2650 44812000 */  mtc1       $at, $f4
/* B3254 800B2654 000B6080 */  sll        $t4, $t3, 2
/* B3258 800B2658 018B6021 */  addu       $t4, $t4, $t3
/* B325C 800B265C 000C60C0 */  sll        $t4, $t4, 3
/* B3260 800B2660 018B6021 */  addu       $t4, $t4, $t3
/* B3264 800B2664 44813000 */  mtc1       $at, $f6
/* B3268 800B2668 000C6080 */  sll        $t4, $t4, 2
/* B326C 800B266C 3C048017 */  lui        $a0, %hi(D_80176DF0)
/* B3270 800B2670 008C2021 */  addu       $a0, $a0, $t4
/* B3274 800B2674 240F0001 */  addiu      $t7, $zero, 1
/* B3278 800B2678 AFAF0018 */  sw         $t7, 0x18($sp)
/* B327C 800B267C 8C846DF0 */  lw         $a0, %lo(D_80176DF0)($a0)
/* B3280 800B2680 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3284 800B2684 24060050 */  addiu      $a2, $zero, 0x50
/* B3288 800B2688 240700FF */  addiu      $a3, $zero, 0xff
/* B328C 800B268C E7A40010 */  swc1       $f4, 0x10($sp)
/* B3290 800B2690 0C02757E */  jal        func_8009D5F8
/* B3294 800B2694 E7A60014 */   swc1      $f6, 0x14($sp)
/* B3298 800B2698 100000B7 */  b          .L800B2978
/* B329C 800B269C 00000000 */   nop
/* B32A0 800B26A0 3C0D800E */  lui        $t5, %hi(D_800D9FA0)
/* B32A4 800B26A4 8DAD9FA0 */  lw         $t5, %lo(D_800D9FA0)($t5)
/* B32A8 800B26A8 3C013F80 */  lui        $at, 0x3f80
/* B32AC 800B26AC 44814000 */  mtc1       $at, $f8
/* B32B0 800B26B0 000D4880 */  sll        $t1, $t5, 2
/* B32B4 800B26B4 012D4821 */  addu       $t1, $t1, $t5
/* B32B8 800B26B8 000948C0 */  sll        $t1, $t1, 3
/* B32BC 800B26BC 012D4821 */  addu       $t1, $t1, $t5
/* B32C0 800B26C0 44815000 */  mtc1       $at, $f10
/* B32C4 800B26C4 00094880 */  sll        $t1, $t1, 2
/* B32C8 800B26C8 3C048017 */  lui        $a0, %hi(D_80176DF4)
/* B32CC 800B26CC 00892021 */  addu       $a0, $a0, $t1
/* B32D0 800B26D0 24180001 */  addiu      $t8, $zero, 1
/* B32D4 800B26D4 AFB80018 */  sw         $t8, 0x18($sp)
/* B32D8 800B26D8 8C846DF4 */  lw         $a0, %lo(D_80176DF4)($a0)
/* B32DC 800B26DC 240500A0 */  addiu      $a1, $zero, 0xa0
/* B32E0 800B26E0 24060050 */  addiu      $a2, $zero, 0x50
/* B32E4 800B26E4 240700FF */  addiu      $a3, $zero, 0xff
/* B32E8 800B26E8 E7A80010 */  swc1       $f8, 0x10($sp)
/* B32EC 800B26EC 0C02757E */  jal        func_8009D5F8
/* B32F0 800B26F0 E7AA0014 */   swc1      $f10, 0x14($sp)
/* B32F4 800B26F4 100000A0 */  b          .L800B2978
/* B32F8 800B26F8 00000000 */   nop
/* B32FC 800B26FC 3C19800E */  lui        $t9, %hi(D_800D9FA0)
/* B3300 800B2700 8F399FA0 */  lw         $t9, %lo(D_800D9FA0)($t9)
/* B3304 800B2704 3C013F80 */  lui        $at, 0x3f80
/* B3308 800B2708 44818000 */  mtc1       $at, $f16
/* B330C 800B270C 00194080 */  sll        $t0, $t9, 2
/* B3310 800B2710 01194021 */  addu       $t0, $t0, $t9
/* B3314 800B2714 000840C0 */  sll        $t0, $t0, 3
/* B3318 800B2718 01194021 */  addu       $t0, $t0, $t9
/* B331C 800B271C 44819000 */  mtc1       $at, $f18
/* B3320 800B2720 00084080 */  sll        $t0, $t0, 2
/* B3324 800B2724 3C048017 */  lui        $a0, %hi(D_80176DFC)
/* B3328 800B2728 00882021 */  addu       $a0, $a0, $t0
/* B332C 800B272C 240E0001 */  addiu      $t6, $zero, 1
/* B3330 800B2730 AFAE0018 */  sw         $t6, 0x18($sp)
/* B3334 800B2734 8C846DFC */  lw         $a0, %lo(D_80176DFC)($a0)
/* B3338 800B2738 240500A0 */  addiu      $a1, $zero, 0xa0
/* B333C 800B273C 24060050 */  addiu      $a2, $zero, 0x50
/* B3340 800B2740 240700FF */  addiu      $a3, $zero, 0xff
/* B3344 800B2744 E7B00010 */  swc1       $f16, 0x10($sp)
/* B3348 800B2748 0C02757E */  jal        func_8009D5F8
/* B334C 800B274C E7B20014 */   swc1      $f18, 0x14($sp)
/* B3350 800B2750 10000089 */  b          .L800B2978
/* B3354 800B2754 00000000 */   nop
/* B3358 800B2758 3C0A800E */  lui        $t2, %hi(D_800D9FA0)
/* B335C 800B275C 8D4A9FA0 */  lw         $t2, %lo(D_800D9FA0)($t2)
/* B3360 800B2760 3C013F80 */  lui        $at, 0x3f80
/* B3364 800B2764 44812000 */  mtc1       $at, $f4
/* B3368 800B2768 000A5880 */  sll        $t3, $t2, 2
/* B336C 800B276C 016A5821 */  addu       $t3, $t3, $t2
/* B3370 800B2770 000B58C0 */  sll        $t3, $t3, 3
/* B3374 800B2774 016A5821 */  addu       $t3, $t3, $t2
/* B3378 800B2778 44813000 */  mtc1       $at, $f6
/* B337C 800B277C 000B5880 */  sll        $t3, $t3, 2
/* B3380 800B2780 3C048017 */  lui        $a0, %hi(D_80176E08)
/* B3384 800B2784 008B2021 */  addu       $a0, $a0, $t3
/* B3388 800B2788 240C0001 */  addiu      $t4, $zero, 1
/* B338C 800B278C AFAC0018 */  sw         $t4, 0x18($sp)
/* B3390 800B2790 8C846E08 */  lw         $a0, %lo(D_80176E08)($a0)
/* B3394 800B2794 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3398 800B2798 24060050 */  addiu      $a2, $zero, 0x50
/* B339C 800B279C 240700FF */  addiu      $a3, $zero, 0xff
/* B33A0 800B27A0 E7A40010 */  swc1       $f4, 0x10($sp)
/* B33A4 800B27A4 0C02757E */  jal        func_8009D5F8
/* B33A8 800B27A8 E7A60014 */   swc1      $f6, 0x14($sp)
/* B33AC 800B27AC 10000072 */  b          .L800B2978
/* B33B0 800B27B0 00000000 */   nop
/* B33B4 800B27B4 3C0F800E */  lui        $t7, %hi(D_800D9FA0)
/* B33B8 800B27B8 8DEF9FA0 */  lw         $t7, %lo(D_800D9FA0)($t7)
/* B33BC 800B27BC 3C013F80 */  lui        $at, 0x3f80
/* B33C0 800B27C0 44814000 */  mtc1       $at, $f8
/* B33C4 800B27C4 000F6880 */  sll        $t5, $t7, 2
/* B33C8 800B27C8 01AF6821 */  addu       $t5, $t5, $t7
/* B33CC 800B27CC 000D68C0 */  sll        $t5, $t5, 3
/* B33D0 800B27D0 01AF6821 */  addu       $t5, $t5, $t7
/* B33D4 800B27D4 44815000 */  mtc1       $at, $f10
/* B33D8 800B27D8 000D6880 */  sll        $t5, $t5, 2
/* B33DC 800B27DC 3C048017 */  lui        $a0, %hi(D_80176E0C)
/* B33E0 800B27E0 008D2021 */  addu       $a0, $a0, $t5
/* B33E4 800B27E4 24090001 */  addiu      $t1, $zero, 1
/* B33E8 800B27E8 AFA90018 */  sw         $t1, 0x18($sp)
/* B33EC 800B27EC 8C846E0C */  lw         $a0, %lo(D_80176E0C)($a0)
/* B33F0 800B27F0 240500A0 */  addiu      $a1, $zero, 0xa0
/* B33F4 800B27F4 24060050 */  addiu      $a2, $zero, 0x50
/* B33F8 800B27F8 240700FF */  addiu      $a3, $zero, 0xff
/* B33FC 800B27FC E7A80010 */  swc1       $f8, 0x10($sp)
/* B3400 800B2800 0C02757E */  jal        func_8009D5F8
/* B3404 800B2804 E7AA0014 */   swc1      $f10, 0x14($sp)
/* B3408 800B2808 1000005B */  b          .L800B2978
/* B340C 800B280C 00000000 */   nop
/* B3410 800B2810 3C18800E */  lui        $t8, %hi(D_800D9FA0)
/* B3414 800B2814 8F189FA0 */  lw         $t8, %lo(D_800D9FA0)($t8)
/* B3418 800B2818 3C013F80 */  lui        $at, 0x3f80
/* B341C 800B281C 44818000 */  mtc1       $at, $f16
/* B3420 800B2820 0018C880 */  sll        $t9, $t8, 2
/* B3424 800B2824 0338C821 */  addu       $t9, $t9, $t8
/* B3428 800B2828 0019C8C0 */  sll        $t9, $t9, 3
/* B342C 800B282C 0338C821 */  addu       $t9, $t9, $t8
/* B3430 800B2830 44819000 */  mtc1       $at, $f18
/* B3434 800B2834 0019C880 */  sll        $t9, $t9, 2
/* B3438 800B2838 3C048017 */  lui        $a0, %hi(D_80176E10)
/* B343C 800B283C 00992021 */  addu       $a0, $a0, $t9
/* B3440 800B2840 24080001 */  addiu      $t0, $zero, 1
/* B3444 800B2844 AFA80018 */  sw         $t0, 0x18($sp)
/* B3448 800B2848 8C846E10 */  lw         $a0, %lo(D_80176E10)($a0)
/* B344C 800B284C 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3450 800B2850 24060050 */  addiu      $a2, $zero, 0x50
/* B3454 800B2854 240700FF */  addiu      $a3, $zero, 0xff
/* B3458 800B2858 E7B00010 */  swc1       $f16, 0x10($sp)
/* B345C 800B285C 0C02757E */  jal        func_8009D5F8
/* B3460 800B2860 E7B20014 */   swc1      $f18, 0x14($sp)
/* B3464 800B2864 10000044 */  b          .L800B2978
/* B3468 800B2868 00000000 */   nop
/* B346C 800B286C 3C0E800E */  lui        $t6, %hi(D_800D9FA0)
/* B3470 800B2870 8DCE9FA0 */  lw         $t6, %lo(D_800D9FA0)($t6)
/* B3474 800B2874 3C013F80 */  lui        $at, 0x3f80
/* B3478 800B2878 44812000 */  mtc1       $at, $f4
/* B347C 800B287C 000E5080 */  sll        $t2, $t6, 2
/* B3480 800B2880 014E5021 */  addu       $t2, $t2, $t6
/* B3484 800B2884 000A50C0 */  sll        $t2, $t2, 3
/* B3488 800B2888 014E5021 */  addu       $t2, $t2, $t6
/* B348C 800B288C 44813000 */  mtc1       $at, $f6
/* B3490 800B2890 000A5080 */  sll        $t2, $t2, 2
/* B3494 800B2894 3C048017 */  lui        $a0, %hi(D_80176E14)
/* B3498 800B2898 008A2021 */  addu       $a0, $a0, $t2
/* B349C 800B289C 240B0001 */  addiu      $t3, $zero, 1
/* B34A0 800B28A0 AFAB0018 */  sw         $t3, 0x18($sp)
/* B34A4 800B28A4 8C846E14 */  lw         $a0, %lo(D_80176E14)($a0)
/* B34A8 800B28A8 240500A0 */  addiu      $a1, $zero, 0xa0
/* B34AC 800B28AC 24060050 */  addiu      $a2, $zero, 0x50
/* B34B0 800B28B0 240700FF */  addiu      $a3, $zero, 0xff
/* B34B4 800B28B4 E7A40010 */  swc1       $f4, 0x10($sp)
/* B34B8 800B28B8 0C02757E */  jal        func_8009D5F8
/* B34BC 800B28BC E7A60014 */   swc1      $f6, 0x14($sp)
/* B34C0 800B28C0 1000002D */  b          .L800B2978
/* B34C4 800B28C4 00000000 */   nop
/* B34C8 800B28C8 3C0C800E */  lui        $t4, %hi(D_800D9FA0)
/* B34CC 800B28CC 8D8C9FA0 */  lw         $t4, %lo(D_800D9FA0)($t4)
/* B34D0 800B28D0 3C013F80 */  lui        $at, 0x3f80
/* B34D4 800B28D4 44814000 */  mtc1       $at, $f8
/* B34D8 800B28D8 000C7880 */  sll        $t7, $t4, 2
/* B34DC 800B28DC 01EC7821 */  addu       $t7, $t7, $t4
/* B34E0 800B28E0 000F78C0 */  sll        $t7, $t7, 3
/* B34E4 800B28E4 01EC7821 */  addu       $t7, $t7, $t4
/* B34E8 800B28E8 44815000 */  mtc1       $at, $f10
/* B34EC 800B28EC 000F7880 */  sll        $t7, $t7, 2
/* B34F0 800B28F0 3C048017 */  lui        $a0, %hi(D_80176E18)
/* B34F4 800B28F4 008F2021 */  addu       $a0, $a0, $t7
/* B34F8 800B28F8 240D0001 */  addiu      $t5, $zero, 1
/* B34FC 800B28FC AFAD0018 */  sw         $t5, 0x18($sp)
/* B3500 800B2900 8C846E18 */  lw         $a0, %lo(D_80176E18)($a0)
/* B3504 800B2904 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3508 800B2908 24060050 */  addiu      $a2, $zero, 0x50
/* B350C 800B290C 240700FF */  addiu      $a3, $zero, 0xff
/* B3510 800B2910 E7A80010 */  swc1       $f8, 0x10($sp)
/* B3514 800B2914 0C02757E */  jal        func_8009D5F8
/* B3518 800B2918 E7AA0014 */   swc1      $f10, 0x14($sp)
/* B351C 800B291C 10000016 */  b          .L800B2978
/* B3520 800B2920 00000000 */   nop
/* B3524 800B2924 3C09800E */  lui        $t1, %hi(D_800D9FA0)
/* B3528 800B2928 8D299FA0 */  lw         $t1, %lo(D_800D9FA0)($t1)
/* B352C 800B292C 3C013F80 */  lui        $at, 0x3f80
/* B3530 800B2930 44818000 */  mtc1       $at, $f16
/* B3534 800B2934 0009C080 */  sll        $t8, $t1, 2
/* B3538 800B2938 0309C021 */  addu       $t8, $t8, $t1
/* B353C 800B293C 0018C0C0 */  sll        $t8, $t8, 3
/* B3540 800B2940 0309C021 */  addu       $t8, $t8, $t1
/* B3544 800B2944 44819000 */  mtc1       $at, $f18
/* B3548 800B2948 0018C080 */  sll        $t8, $t8, 2
/* B354C 800B294C 3C048017 */  lui        $a0, %hi(D_80176E1C)
/* B3550 800B2950 00982021 */  addu       $a0, $a0, $t8
/* B3554 800B2954 24190001 */  addiu      $t9, $zero, 1
/* B3558 800B2958 AFB90018 */  sw         $t9, 0x18($sp)
/* B355C 800B295C 8C846E1C */  lw         $a0, %lo(D_80176E1C)($a0)
/* B3560 800B2960 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3564 800B2964 24060050 */  addiu      $a2, $zero, 0x50
/* B3568 800B2968 240700FF */  addiu      $a3, $zero, 0xff
/* B356C 800B296C E7B00010 */  swc1       $f16, 0x10($sp)
/* B3570 800B2970 0C02757E */  jal        func_8009D5F8
/* B3574 800B2974 E7B20014 */   swc1      $f18, 0x14($sp)
.L800B2978:
/* B3578 800B2978 2404008A */  addiu      $a0, $zero, 0x8a
/* B357C 800B297C 24050066 */  addiu      $a1, $zero, 0x66
/* B3580 800B2980 24060030 */  addiu      $a2, $zero, 0x30
/* B3584 800B2984 0C027593 */  jal        func_8009D64C
/* B3588 800B2988 240700FF */   addiu     $a3, $zero, 0xff
/* B358C 800B298C 3C08800E */  lui        $t0, %hi(D_800D9FA0)
/* B3590 800B2990 8D089FA0 */  lw         $t0, %lo(D_800D9FA0)($t0)
/* B3594 800B2994 3C013F80 */  lui        $at, 0x3f80
/* B3598 800B2998 44812000 */  mtc1       $at, $f4
/* B359C 800B299C 00087080 */  sll        $t6, $t0, 2
/* B35A0 800B29A0 01C87021 */  addu       $t6, $t6, $t0
/* B35A4 800B29A4 000E70C0 */  sll        $t6, $t6, 3
/* B35A8 800B29A8 01C87021 */  addu       $t6, $t6, $t0
/* B35AC 800B29AC 44813000 */  mtc1       $at, $f6
/* B35B0 800B29B0 000E7080 */  sll        $t6, $t6, 2
/* B35B4 800B29B4 3C048017 */  lui        $a0, %hi(D_80176DE8)
/* B35B8 800B29B8 008E2021 */  addu       $a0, $a0, $t6
/* B35BC 800B29BC 240A0001 */  addiu      $t2, $zero, 1
/* B35C0 800B29C0 AFAA0018 */  sw         $t2, 0x18($sp)
/* B35C4 800B29C4 8C846DE8 */  lw         $a0, %lo(D_80176DE8)($a0)
/* B35C8 800B29C8 240500A0 */  addiu      $a1, $zero, 0xa0
/* B35CC 800B29CC 24060078 */  addiu      $a2, $zero, 0x78
/* B35D0 800B29D0 240700FF */  addiu      $a3, $zero, 0xff
/* B35D4 800B29D4 E7A40010 */  swc1       $f4, 0x10($sp)
/* B35D8 800B29D8 0C02757E */  jal        func_8009D5F8
/* B35DC 800B29DC E7A60014 */   swc1      $f6, 0x14($sp)
/* B35E0 800B29E0 100001DB */  b          .L800B3150
/* B35E4 800B29E4 00000000 */   nop
/* B35E8 800B29E8 3C0B800E */  lui        $t3, %hi(D_800D9FA0)
/* B35EC 800B29EC 8D6B9FA0 */  lw         $t3, %lo(D_800D9FA0)($t3)
/* B35F0 800B29F0 3C013F80 */  lui        $at, 0x3f80
/* B35F4 800B29F4 44814000 */  mtc1       $at, $f8
/* B35F8 800B29F8 000B6080 */  sll        $t4, $t3, 2
/* B35FC 800B29FC 018B6021 */  addu       $t4, $t4, $t3
/* B3600 800B2A00 000C60C0 */  sll        $t4, $t4, 3
/* B3604 800B2A04 018B6021 */  addu       $t4, $t4, $t3
/* B3608 800B2A08 44815000 */  mtc1       $at, $f10
/* B360C 800B2A0C 000C6080 */  sll        $t4, $t4, 2
/* B3610 800B2A10 3C048017 */  lui        $a0, %hi(D_80176E00)
/* B3614 800B2A14 008C2021 */  addu       $a0, $a0, $t4
/* B3618 800B2A18 240F0001 */  addiu      $t7, $zero, 1
/* B361C 800B2A1C AFAF0018 */  sw         $t7, 0x18($sp)
/* B3620 800B2A20 8C846E00 */  lw         $a0, %lo(D_80176E00)($a0)
/* B3624 800B2A24 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3628 800B2A28 24060038 */  addiu      $a2, $zero, 0x38
/* B362C 800B2A2C 240700FF */  addiu      $a3, $zero, 0xff
/* B3630 800B2A30 E7A80010 */  swc1       $f8, 0x10($sp)
/* B3634 800B2A34 0C02757E */  jal        func_8009D5F8
/* B3638 800B2A38 E7AA0014 */   swc1      $f10, 0x14($sp)
/* B363C 800B2A3C 3C058014 */  lui        $a1, %hi(D_80144296)
/* B3640 800B2A40 84A54296 */  lh         $a1, %lo(D_80144296)($a1)
/* B3644 800B2A44 24040064 */  addiu      $a0, $zero, 0x64
/* B3648 800B2A48 24060078 */  addiu      $a2, $zero, 0x78
/* B364C 800B2A4C 00052940 */  sll        $a1, $a1, 5
/* B3650 800B2A50 24A5004E */  addiu      $a1, $a1, 0x4e
/* B3654 800B2A54 0C027593 */  jal        func_8009D64C
/* B3658 800B2A58 240700FF */   addiu     $a3, $zero, 0xff
/* B365C 800B2A5C AFA00064 */  sw         $zero, 0x64($sp)
.L800B2A60:
/* B3660 800B2A60 8FAD0064 */  lw         $t5, 0x64($sp)
/* B3664 800B2A64 3C188014 */  lui        $t8, %hi(D_801442A0)
/* B3668 800B2A68 2401FF3F */  addiu      $at, $zero, -0xc1
/* B366C 800B2A6C 000D4840 */  sll        $t1, $t5, 1
/* B3670 800B2A70 0309C021 */  addu       $t8, $t8, $t1
/* B3674 800B2A74 871842A0 */  lh         $t8, %lo(D_801442A0)($t8)
/* B3678 800B2A78 0301C824 */  and        $t9, $t8, $at
/* B367C 800B2A7C 1320001D */  beqz       $t9, .L800B2AF4
/* B3680 800B2A80 00000000 */   nop
/* B3684 800B2A84 3C088018 */  lui        $t0, %hi(D_8017A2B8)
/* B3688 800B2A88 8508A2B8 */  lh         $t0, %lo(D_8017A2B8)($t0)
/* B368C 800B2A8C 3C05800E */  lui        $a1, 0x800e
/* B3690 800B2A90 330700C0 */  andi       $a3, $t8, 0xc0
/* B3694 800B2A94 00087080 */  sll        $t6, $t0, 2
/* B3698 800B2A98 00AE2821 */  addu       $a1, $a1, $t6
/* B369C 800B2A9C 00073983 */  sra        $a3, $a3, 6
/* B36A0 800B2AA0 24E70001 */  addiu      $a3, $a3, 1
/* B36A4 800B2AA4 8CA59DA4 */  lw         $a1, -0x625c($a1)
/* B36A8 800B2AA8 27A4004C */  addiu      $a0, $sp, 0x4c
/* B36AC 800B2AAC 0C03313D */  jal        func_800CC4F4
/* B36B0 800B2AB0 03203025 */   or        $a2, $t9, $zero
/* B36B4 800B2AB4 8FA60064 */  lw         $a2, 0x64($sp)
/* B36B8 800B2AB8 3C013F80 */  lui        $at, 0x3f80
/* B36BC 800B2ABC 44818000 */  mtc1       $at, $f16
/* B36C0 800B2AC0 44819000 */  mtc1       $at, $f18
/* B36C4 800B2AC4 240A0001 */  addiu      $t2, $zero, 1
/* B36C8 800B2AC8 00063140 */  sll        $a2, $a2, 5
/* B36CC 800B2ACC 24C60060 */  addiu      $a2, $a2, 0x60
/* B36D0 800B2AD0 AFAA0018 */  sw         $t2, 0x18($sp)
/* B36D4 800B2AD4 27A4004C */  addiu      $a0, $sp, 0x4c
/* B36D8 800B2AD8 240500A0 */  addiu      $a1, $zero, 0xa0
/* B36DC 800B2ADC 240700FF */  addiu      $a3, $zero, 0xff
/* B36E0 800B2AE0 E7B00010 */  swc1       $f16, 0x10($sp)
/* B36E4 800B2AE4 0C02757E */  jal        func_8009D5F8
/* B36E8 800B2AE8 E7B20014 */   swc1      $f18, 0x14($sp)
/* B36EC 800B2AEC 1000001E */  b          .L800B2B68
/* B36F0 800B2AF0 00000000 */   nop
.L800B2AF4:
/* B36F4 800B2AF4 8FAF0064 */  lw         $t7, 0x64($sp)
/* B36F8 800B2AF8 3C0B8018 */  lui        $t3, %hi(D_8017A2B8)
/* B36FC 800B2AFC 856BA2B8 */  lh         $t3, %lo(D_8017A2B8)($t3)
/* B3700 800B2B00 3C098014 */  lui        $t1, %hi(D_801442A0)
/* B3704 800B2B04 000F6840 */  sll        $t5, $t7, 1
/* B3708 800B2B08 012D4821 */  addu       $t1, $t1, $t5
/* B370C 800B2B0C 000B6080 */  sll        $t4, $t3, 2
/* B3710 800B2B10 852942A0 */  lh         $t1, %lo(D_801442A0)($t1)
/* B3714 800B2B14 018B6021 */  addu       $t4, $t4, $t3
/* B3718 800B2B18 000C6080 */  sll        $t4, $t4, 2
/* B371C 800B2B1C 3C013F80 */  lui        $at, 0x3f80
/* B3720 800B2B20 018B6021 */  addu       $t4, $t4, $t3
/* B3724 800B2B24 000C6080 */  sll        $t4, $t4, 2
/* B3728 800B2B28 00094080 */  sll        $t0, $t1, 2
/* B372C 800B2B2C 44812000 */  mtc1       $at, $f4
/* B3730 800B2B30 44813000 */  mtc1       $at, $f6
/* B3734 800B2B34 01887021 */  addu       $t6, $t4, $t0
/* B3738 800B2B38 3C048017 */  lui        $a0, 0x8017
/* B373C 800B2B3C 008E2021 */  addu       $a0, $a0, $t6
/* B3740 800B2B40 24190001 */  addiu      $t9, $zero, 1
/* B3744 800B2B44 000F3140 */  sll        $a2, $t7, 5
/* B3748 800B2B48 24C60060 */  addiu      $a2, $a2, 0x60
/* B374C 800B2B4C AFB90018 */  sw         $t9, 0x18($sp)
/* B3750 800B2B50 8C846BE0 */  lw         $a0, 0x6be0($a0)
/* B3754 800B2B54 240500A0 */  addiu      $a1, $zero, 0xa0
/* B3758 800B2B58 240700FF */  addiu      $a3, $zero, 0xff
/* B375C 800B2B5C E7A40010 */  swc1       $f4, 0x10($sp)
/* B3760 800B2B60 0C02757E */  jal        func_8009D5F8
/* B3764 800B2B64 E7A60014 */   swc1      $f6, 0x14($sp)
.L800B2B68:
/* B3768 800B2B68 8FB80064 */  lw         $t8, 0x64($sp)
/* B376C 800B2B6C 270A0001 */  addiu      $t2, $t8, 1
/* B3770 800B2B70 29410004 */  slti       $at, $t2, 4
/* B3774 800B2B74 1420FFBA */  bnez       $at, .L800B2A60
/* B3778 800B2B78 AFAA0064 */   sw        $t2, 0x64($sp)
/* B377C 800B2B7C 10000174 */  b          .L800B3150
/* B3780 800B2B80 00000000 */   nop
.L800B2B84:
/* B3784 800B2B84 3C108014 */  lui        $s0, %hi(D_80144294)
/* B3788 800B2B88 86104294 */  lh         $s0, %lo(D_80144294)($s0)
/* B378C 800B2B8C 24014001 */  addiu      $at, $zero, 0x4001
/* B3790 800B2B90 12010009 */  beq        $s0, $at, .L800B2BB8
/* B3794 800B2B94 24014005 */   addiu     $at, $zero, 0x4005
/* B3798 800B2B98 120100B3 */  beq        $s0, $at, .L800B2E68
/* B379C 800B2B9C 24014007 */   addiu     $at, $zero, 0x4007
/* B37A0 800B2BA0 120100C8 */  beq        $s0, $at, .L800B2EC4
/* B37A4 800B2BA4 24014009 */   addiu     $at, $zero, 0x4009
/* B37A8 800B2BA8 12010164 */  beq        $s0, $at, .L800B313C
/* B37AC 800B2BAC 00000000 */   nop
/* B37B0 800B2BB0 10000167 */  b          .L800B3150
/* B37B4 800B2BB4 00000000 */   nop
.L800B2BB8:
/* B37B8 800B2BB8 0C000BA0 */  jal        func_80002E80
/* B37BC 800B2BBC 24040001 */   addiu     $a0, $zero, 1
/* B37C0 800B2BC0 AFA201E0 */  sw         $v0, 0x1e0($sp)
/* B37C4 800B2BC4 8FAB01E0 */  lw         $t3, 0x1e0($sp)
/* B37C8 800B2BC8 11600025 */  beqz       $t3, .L800B2C60
/* B37CC 800B2BCC 00000000 */   nop
/* B37D0 800B2BD0 01608025 */  or         $s0, $t3, $zero
/* B37D4 800B2BD4 2401FFFE */  addiu      $at, $zero, -2
/* B37D8 800B2BD8 1201000D */  beq        $s0, $at, .L800B2C10
/* B37DC 800B2BDC 2401FFFF */   addiu     $at, $zero, -1
/* B37E0 800B2BE0 16010015 */  bne        $s0, $at, .L800B2C38
/* B37E4 800B2BE4 00000000 */   nop
/* B37E8 800B2BE8 240D0002 */  addiu      $t5, $zero, 2
/* B37EC 800B2BEC 3C018014 */  lui        $at, %hi(D_80144294)
/* B37F0 800B2BF0 A42D4294 */  sh         $t5, %lo(D_80144294)($at)
/* B37F4 800B2BF4 3C018014 */  lui        $at, %hi(D_80144296)
/* B37F8 800B2BF8 2409FFFF */  addiu      $t1, $zero, -1
/* B37FC 800B2BFC A4294296 */  sh         $t1, %lo(D_80144296)($at)
/* B3800 800B2C00 3C018014 */  lui        $at, %hi(D_80144298)
/* B3804 800B2C04 240C0001 */  addiu      $t4, $zero, 1
/* B3808 800B2C08 10000151 */  b          .L800B3150
/* B380C 800B2C0C A42C4298 */   sh        $t4, %lo(D_80144298)($at)
.L800B2C10:
/* B3810 800B2C10 24080003 */  addiu      $t0, $zero, 3
/* B3814 800B2C14 3C018014 */  lui        $at, %hi(D_80144294)
/* B3818 800B2C18 A4284294 */  sh         $t0, %lo(D_80144294)($at)
/* B381C 800B2C1C 3C018014 */  lui        $at, %hi(D_80144296)
/* B3820 800B2C20 240EFFFF */  addiu      $t6, $zero, -1
/* B3824 800B2C24 A42E4296 */  sh         $t6, %lo(D_80144296)($at)
/* B3828 800B2C28 3C018014 */  lui        $at, %hi(D_80144298)
/* B382C 800B2C2C 240F0002 */  addiu      $t7, $zero, 2
/* B3830 800B2C30 10000147 */  b          .L800B3150
/* B3834 800B2C34 A42F4298 */   sh        $t7, %lo(D_80144298)($at)
.L800B2C38:
/* B3838 800B2C38 24190004 */  addiu      $t9, $zero, 4
/* B383C 800B2C3C 3C018014 */  lui        $at, %hi(D_80144294)
/* B3840 800B2C40 A4394294 */  sh         $t9, %lo(D_80144294)($at)
/* B3844 800B2C44 3C018014 */  lui        $at, %hi(D_80144296)
/* B3848 800B2C48 2418FFFF */  addiu      $t8, $zero, -1
/* B384C 800B2C4C A4384296 */  sh         $t8, %lo(D_80144296)($at)
/* B3850 800B2C50 3C018014 */  lui        $at, %hi(D_80144298)
/* B3854 800B2C54 240A0003 */  addiu      $t2, $zero, 3
/* B3858 800B2C58 1000013D */  b          .L800B3150
/* B385C 800B2C5C A42A4298 */   sh        $t2, %lo(D_80144298)($at)
.L800B2C60:
/* B3860 800B2C60 3C0B4E53 */  lui        $t3, 0x4e53
/* B3864 800B2C64 356B5045 */  ori        $t3, $t3, 0x5045
/* B3868 800B2C68 3C04800E */  lui        $a0, 0x800e
/* B386C 800B2C6C 3C05800E */  lui        $a1, 0x800e
/* B3870 800B2C70 27AD00D8 */  addiu      $t5, $sp, 0xd8
/* B3874 800B2C74 24090020 */  addiu      $t1, $zero, 0x20
/* B3878 800B2C78 AFAB01DC */  sw         $t3, 0x1dc($sp)
/* B387C 800B2C7C AFA90014 */  sw         $t1, 0x14($sp)
/* B3880 800B2C80 AFAD0010 */  sw         $t5, 0x10($sp)
/* B3884 800B2C84 24A5F1FC */  addiu      $a1, $a1, -0xe04
/* B3888 800B2C88 2484F1F0 */  addiu      $a0, $a0, -0xe10
/* B388C 800B2C8C 01603821 */  addu       $a3, $t3, $zero
/* B3890 800B2C90 0C000EB7 */  jal        func_80003ADC
/* B3894 800B2C94 24063630 */   addiu     $a2, $zero, 0x3630
/* B3898 800B2C98 AFA201E0 */  sw         $v0, 0x1e0($sp)
/* B389C 800B2C9C 8FAC01E0 */  lw         $t4, 0x1e0($sp)
/* B38A0 800B2CA0 11800010 */  beqz       $t4, .L800B2CE4
/* B38A4 800B2CA4 00000000 */   nop
/* B38A8 800B2CA8 3C084E53 */  lui        $t0, 0x4e53
/* B38AC 800B2CAC 35085050 */  ori        $t0, $t0, 0x5050
/* B38B0 800B2CB0 3C04800E */  lui        $a0, 0x800e
/* B38B4 800B2CB4 3C05800E */  lui        $a1, 0x800e
/* B38B8 800B2CB8 27AE00D8 */  addiu      $t6, $sp, 0xd8
/* B38BC 800B2CBC 240F0020 */  addiu      $t7, $zero, 0x20
/* B38C0 800B2CC0 AFA801DC */  sw         $t0, 0x1dc($sp)
/* B38C4 800B2CC4 AFAF0014 */  sw         $t7, 0x14($sp)
/* B38C8 800B2CC8 AFAE0010 */  sw         $t6, 0x10($sp)
/* B38CC 800B2CCC 24A5F20C */  addiu      $a1, $a1, -0xdf4
/* B38D0 800B2CD0 2484F200 */  addiu      $a0, $a0, -0xe00
/* B38D4 800B2CD4 01003821 */  addu       $a3, $t0, $zero
/* B38D8 800B2CD8 0C000EB7 */  jal        func_80003ADC
/* B38DC 800B2CDC 24063630 */   addiu     $a2, $zero, 0x3630
/* B38E0 800B2CE0 AFA201E0 */  sw         $v0, 0x1e0($sp)
.L800B2CE4:
/* B38E4 800B2CE4 8FB901E0 */  lw         $t9, 0x1e0($sp)
/* B38E8 800B2CE8 13200045 */  beqz       $t9, .L800B2E00
/* B38EC 800B2CEC 00000000 */   nop
/* B38F0 800B2CF0 27380012 */  addiu      $t8, $t9, 0x12
/* B38F4 800B2CF4 2F010005 */  sltiu      $at, $t8, 5
/* B38F8 800B2CF8 10200115 */  beqz       $at, .L800B3150
/* B38FC 800B2CFC 00000000 */   nop
/* B3900 800B2D00 0018C080 */  sll        $t8, $t8, 2
/* B3904 800B2D04 3C01800E */  lui        $at, %hi(D_800DF27C)
/* B3908 800B2D08 00380821 */  addu       $at, $at, $t8
/* B390C 800B2D0C 8C38F27C */  lw         $t8, %lo(D_800DF27C)($at)
/* B3910 800B2D10 03000008 */  jr         $t8
/* B3914 800B2D14 00000000 */   nop
/* B3918 800B2D18 240A0004 */  addiu      $t2, $zero, 4
/* B391C 800B2D1C 3C018014 */  lui        $at, %hi(D_80144294)
/* B3920 800B2D20 A42A4294 */  sh         $t2, %lo(D_80144294)($at)
/* B3924 800B2D24 3C018014 */  lui        $at, %hi(D_80144296)
/* B3928 800B2D28 240BFFFF */  addiu      $t3, $zero, -1
/* B392C 800B2D2C A42B4296 */  sh         $t3, %lo(D_80144296)($at)
/* B3930 800B2D30 3C018014 */  lui        $at, %hi(D_80144298)
/* B3934 800B2D34 240D0007 */  addiu      $t5, $zero, 7
/* B3938 800B2D38 10000105 */  b          .L800B3150
/* B393C 800B2D3C A42D4298 */   sh        $t5, %lo(D_80144298)($at)
/* B3940 800B2D40 24090004 */  addiu      $t1, $zero, 4
/* B3944 800B2D44 3C018014 */  lui        $at, %hi(D_80144294)
/* B3948 800B2D48 A4294294 */  sh         $t1, %lo(D_80144294)($at)
/* B394C 800B2D4C 3C018014 */  lui        $at, %hi(D_80144296)
/* B3950 800B2D50 240CFFFF */  addiu      $t4, $zero, -1
/* B3954 800B2D54 A42C4296 */  sh         $t4, %lo(D_80144296)($at)
/* B3958 800B2D58 3C018014 */  lui        $at, %hi(D_80144298)
/* B395C 800B2D5C 24080008 */  addiu      $t0, $zero, 8
/* B3960 800B2D60 100000FB */  b          .L800B3150
/* B3964 800B2D64 A4284298 */   sh        $t0, %lo(D_80144298)($at)
/* B3968 800B2D68 240E0004 */  addiu      $t6, $zero, 4
/* B396C 800B2D6C 3C018014 */  lui        $at, %hi(D_80144294)
/* B3970 800B2D70 A42E4294 */  sh         $t6, %lo(D_80144294)($at)
/* B3974 800B2D74 3C018014 */  lui        $at, %hi(D_80144296)
/* B3978 800B2D78 240FFFFF */  addiu      $t7, $zero, -1
/* B397C 800B2D7C A42F4296 */  sh         $t7, %lo(D_80144296)($at)
/* B3980 800B2D80 3C018014 */  lui        $at, %hi(D_80144298)
/* B3984 800B2D84 24190009 */  addiu      $t9, $zero, 9
/* B3988 800B2D88 100000F1 */  b          .L800B3150
/* B398C 800B2D8C A4394298 */   sh        $t9, %lo(D_80144298)($at)
/* B3990 800B2D90 24180004 */  addiu      $t8, $zero, 4
/* B3994 800B2D94 3C018014 */  lui        $at, %hi(D_80144294)
/* B3998 800B2D98 A4384294 */  sh         $t8, %lo(D_80144294)($at)
/* B399C 800B2D9C 3C018014 */  lui        $at, %hi(D_80144296)
/* B39A0 800B2DA0 240AFFFF */  addiu      $t2, $zero, -1
/* B39A4 800B2DA4 A42A4296 */  sh         $t2, %lo(D_80144296)($at)
/* B39A8 800B2DA8 3C018014 */  lui        $at, %hi(D_80144298)
/* B39AC 800B2DAC 240B0003 */  addiu      $t3, $zero, 3
/* B39B0 800B2DB0 100000E7 */  b          .L800B3150
/* B39B4 800B2DB4 A42B4298 */   sh        $t3, %lo(D_80144298)($at)
/* B39B8 800B2DB8 3C0D8014 */  lui        $t5, %hi(D_801442A0)
/* B39BC 800B2DBC 25AD42A0 */  addiu      $t5, $t5, %lo(D_801442A0)
/* B39C0 800B2DC0 3C098014 */  lui        $t1, %hi(D_801442A0)
/* B39C4 800B2DC4 A5A00000 */  sh         $zero, ($t5)
/* B39C8 800B2DC8 252942A0 */  addiu      $t1, $t1, %lo(D_801442A0)
/* B39CC 800B2DCC 3C0C8014 */  lui        $t4, %hi(D_801442A0)
/* B39D0 800B2DD0 A5200002 */  sh         $zero, 2($t1)
/* B39D4 800B2DD4 258C42A0 */  addiu      $t4, $t4, %lo(D_801442A0)
/* B39D8 800B2DD8 3C088014 */  lui        $t0, %hi(D_801442A0)
/* B39DC 800B2DDC A5800004 */  sh         $zero, 4($t4)
/* B39E0 800B2DE0 250842A0 */  addiu      $t0, $t0, %lo(D_801442A0)
/* B39E4 800B2DE4 A5000006 */  sh         $zero, 6($t0)
/* B39E8 800B2DE8 240E0007 */  addiu      $t6, $zero, 7
/* B39EC 800B2DEC 3C018014 */  lui        $at, %hi(D_80144294)
/* B39F0 800B2DF0 A42E4294 */  sh         $t6, %lo(D_80144294)($at)
/* B39F4 800B2DF4 3C018014 */  lui        $at, %hi(D_80144296)
/* B39F8 800B2DF8 100000D5 */  b          .L800B3150
/* B39FC 800B2DFC A4204296 */   sh        $zero, %lo(D_80144296)($at)
.L800B2E00:
/* B3A00 800B2E00 27AF00D8 */  addiu      $t7, $sp, 0xd8
/* B3A04 800B2E04 91F90008 */  lbu        $t9, 8($t7)
/* B3A08 800B2E08 3C188014 */  lui        $t8, %hi(D_801442A0)
/* B3A0C 800B2E0C 271842A0 */  addiu      $t8, $t8, %lo(D_801442A0)
/* B3A10 800B2E10 27AA00D8 */  addiu      $t2, $sp, 0xd8
/* B3A14 800B2E14 A7190000 */  sh         $t9, ($t8)
/* B3A18 800B2E18 914B0009 */  lbu        $t3, 9($t2)
/* B3A1C 800B2E1C 3C0D8014 */  lui        $t5, %hi(D_801442A0)
/* B3A20 800B2E20 25AD42A0 */  addiu      $t5, $t5, %lo(D_801442A0)
/* B3A24 800B2E24 27A900D8 */  addiu      $t1, $sp, 0xd8
/* B3A28 800B2E28 A5AB0002 */  sh         $t3, 2($t5)
/* B3A2C 800B2E2C 912C000A */  lbu        $t4, 0xa($t1)
/* B3A30 800B2E30 3C088014 */  lui        $t0, %hi(D_801442A0)
/* B3A34 800B2E34 250842A0 */  addiu      $t0, $t0, %lo(D_801442A0)
/* B3A38 800B2E38 27AE00D8 */  addiu      $t6, $sp, 0xd8
/* B3A3C 800B2E3C A50C0004 */  sh         $t4, 4($t0)
/* B3A40 800B2E40 91CF000B */  lbu        $t7, 0xb($t6)
/* B3A44 800B2E44 3C198014 */  lui        $t9, %hi(D_801442A0)
/* B3A48 800B2E48 273942A0 */  addiu      $t9, $t9, %lo(D_801442A0)
/* B3A4C 800B2E4C 24180007 */  addiu      $t8, $zero, 7
/* B3A50 800B2E50 3C018014 */  lui        $at, %hi(D_80144294)
/* B3A54 800B2E54 A72F0006 */  sh         $t7, 6($t9)
/* B3A58 800B2E58 A4384294 */  sh         $t8, %lo(D_80144294)($at)
/* B3A5C 800B2E5C 3C018014 */  lui        $at, %hi(D_80144296)
/* B3A60 800B2E60 100000BB */  b          .L800B3150
/* B3A64 800B2E64 A4204296 */   sh        $zero, %lo(D_80144296)($at)
.L800B2E68:
/* B3A68 800B2E68 0C000D2E */  jal        func_800034B8
/* B3A6C 800B2E6C 00000000 */   nop
/* B3A70 800B2E70 AFA201E0 */  sw         $v0, 0x1e0($sp)
/* B3A74 800B2E74 8FAA01E0 */  lw         $t2, 0x1e0($sp)
/* B3A78 800B2E78 2401FFFD */  addiu      $at, $zero, -3
/* B3A7C 800B2E7C 1541000B */  bne        $t2, $at, .L800B2EAC
/* B3A80 800B2E80 00000000 */   nop
/* B3A84 800B2E84 240B0006 */  addiu      $t3, $zero, 6
/* B3A88 800B2E88 3C018014 */  lui        $at, %hi(D_80144294)
/* B3A8C 800B2E8C A42B4294 */  sh         $t3, %lo(D_80144294)($at)
/* B3A90 800B2E90 3C018014 */  lui        $at, %hi(D_80144296)
/* B3A94 800B2E94 240DFFFF */  addiu      $t5, $zero, -1
/* B3A98 800B2E98 A42D4296 */  sh         $t5, %lo(D_80144296)($at)
/* B3A9C 800B2E9C 3C018014 */  lui        $at, %hi(D_80144298)
/* B3AA0 800B2EA0 24090004 */  addiu      $t1, $zero, 4
/* B3AA4 800B2EA4 100000AA */  b          .L800B3150
/* B3AA8 800B2EA8 A4294298 */   sh        $t1, %lo(D_80144298)($at)
.L800B2EAC:
/* B3AAC 800B2EAC 3C018014 */  lui        $at, %hi(D_80144294)
/* B3AB0 800B2EB0 A4204294 */  sh         $zero, %lo(D_80144294)($at)
/* B3AB4 800B2EB4 3C018014 */  lui        $at, %hi(D_80144296)
/* B3AB8 800B2EB8 240C0001 */  addiu      $t4, $zero, 1
/* B3ABC 800B2EBC 100000A4 */  b          .L800B3150
/* B3AC0 800B2EC0 A42C4296 */   sh        $t4, %lo(D_80144296)($at)
.L800B2EC4:
/* B3AC4 800B2EC4 27A800D8 */  addiu      $t0, $sp, 0xd8
/* B3AC8 800B2EC8 A1000000 */  sb         $zero, ($t0)
/* B3ACC 800B2ECC 27AE00D8 */  addiu      $t6, $sp, 0xd8
/* B3AD0 800B2ED0 A1C00001 */  sb         $zero, 1($t6)
/* B3AD4 800B2ED4 3C0F8018 */  lui        $t7, %hi(D_8017A2B8)
/* B3AD8 800B2ED8 85EFA2B8 */  lh         $t7, %lo(D_8017A2B8)($t7)
/* B3ADC 800B2EDC 27AA00D8 */  addiu      $t2, $sp, 0xd8
/* B3AE0 800B2EE0 3C0B8018 */  lui        $t3, %hi(D_8017A2B8)
/* B3AE4 800B2EE4 31F9FF00 */  andi       $t9, $t7, 0xff00
/* B3AE8 800B2EE8 0019C203 */  sra        $t8, $t9, 8
/* B3AEC 800B2EEC A1580002 */  sb         $t8, 2($t2)
/* B3AF0 800B2EF0 856BA2B8 */  lh         $t3, %lo(D_8017A2B8)($t3)
/* B3AF4 800B2EF4 27A900D8 */  addiu      $t1, $sp, 0xd8
/* B3AF8 800B2EF8 3C0C8018 */  lui        $t4, %hi(D_8017A2C4)
/* B3AFC 800B2EFC 316D00FF */  andi       $t5, $t3, 0xff
/* B3B00 800B2F00 A12D0003 */  sb         $t5, 3($t1)
/* B3B04 800B2F04 858CA2C4 */  lh         $t4, %lo(D_8017A2C4)($t4)
/* B3B08 800B2F08 27AF00D8 */  addiu      $t7, $sp, 0xd8
/* B3B0C 800B2F0C 3C198018 */  lui        $t9, %hi(D_8017A2C4)
/* B3B10 800B2F10 3188FF00 */  andi       $t0, $t4, 0xff00
/* B3B14 800B2F14 00087203 */  sra        $t6, $t0, 8
/* B3B18 800B2F18 A1EE0004 */  sb         $t6, 4($t7)
/* B3B1C 800B2F1C 8739A2C4 */  lh         $t9, %lo(D_8017A2C4)($t9)
/* B3B20 800B2F20 27AA00D8 */  addiu      $t2, $sp, 0xd8
/* B3B24 800B2F24 3C0B8018 */  lui        $t3, %hi(D_8017A2BC)
/* B3B28 800B2F28 333800FF */  andi       $t8, $t9, 0xff
/* B3B2C 800B2F2C A1580005 */  sb         $t8, 5($t2)
/* B3B30 800B2F30 856BA2BC */  lh         $t3, %lo(D_8017A2BC)($t3)
/* B3B34 800B2F34 27AC00D8 */  addiu      $t4, $sp, 0xd8
/* B3B38 800B2F38 3C088018 */  lui        $t0, %hi(D_8017A2BC)
/* B3B3C 800B2F3C 316DFF00 */  andi       $t5, $t3, 0xff00
/* B3B40 800B2F40 000D4A03 */  sra        $t1, $t5, 8
/* B3B44 800B2F44 A1890006 */  sb         $t1, 6($t4)
/* B3B48 800B2F48 8508A2BC */  lh         $t0, %lo(D_8017A2BC)($t0)
/* B3B4C 800B2F4C 27AF00D8 */  addiu      $t7, $sp, 0xd8
/* B3B50 800B2F50 3C198014 */  lui        $t9, %hi(D_801442A0)
/* B3B54 800B2F54 310E00FF */  andi       $t6, $t0, 0xff
/* B3B58 800B2F58 A1EE0007 */  sb         $t6, 7($t7)
/* B3B5C 800B2F5C 273942A0 */  addiu      $t9, $t9, %lo(D_801442A0)
/* B3B60 800B2F60 87380000 */  lh         $t8, ($t9)
/* B3B64 800B2F64 27AA00D8 */  addiu      $t2, $sp, 0xd8
/* B3B68 800B2F68 3C0B8014 */  lui        $t3, %hi(D_801442A0)
/* B3B6C 800B2F6C 256B42A0 */  addiu      $t3, $t3, %lo(D_801442A0)
/* B3B70 800B2F70 A1580008 */  sb         $t8, 8($t2)
/* B3B74 800B2F74 856D0002 */  lh         $t5, 2($t3)
/* B3B78 800B2F78 27A900D8 */  addiu      $t1, $sp, 0xd8
/* B3B7C 800B2F7C 3C0C8014 */  lui        $t4, %hi(D_801442A0)
/* B3B80 800B2F80 258C42A0 */  addiu      $t4, $t4, %lo(D_801442A0)
/* B3B84 800B2F84 A12D0009 */  sb         $t5, 9($t1)
/* B3B88 800B2F88 85880004 */  lh         $t0, 4($t4)
/* B3B8C 800B2F8C 27AE00D8 */  addiu      $t6, $sp, 0xd8
/* B3B90 800B2F90 3C0F8014 */  lui        $t7, %hi(D_801442A0)
/* B3B94 800B2F94 25EF42A0 */  addiu      $t7, $t7, %lo(D_801442A0)
/* B3B98 800B2F98 A1C8000A */  sb         $t0, 0xa($t6)
/* B3B9C 800B2F9C 85F90006 */  lh         $t9, 6($t7)
/* B3BA0 800B2FA0 27B800D8 */  addiu      $t8, $sp, 0xd8
/* B3BA4 800B2FA4 A319000B */  sb         $t9, 0xb($t8)
/* B3BA8 800B2FA8 27AA00D8 */  addiu      $t2, $sp, 0xd8
/* B3BAC 800B2FAC AFAA0048 */  sw         $t2, 0x48($sp)
/* B3BB0 800B2FB0 25440002 */  addiu      $a0, $t2, 2
/* B3BB4 800B2FB4 0C0278E0 */  jal        func_8009E380
/* B3BB8 800B2FB8 2405001E */   addiu     $a1, $zero, 0x1e
/* B3BBC 800B2FBC 8FAB0048 */  lw         $t3, 0x48($sp)
/* B3BC0 800B2FC0 A5620000 */  sh         $v0, ($t3)
/* B3BC4 800B2FC4 3C04800E */  lui        $a0, 0x800e
/* B3BC8 800B2FC8 3C05800E */  lui        $a1, 0x800e
/* B3BCC 800B2FCC 3C074E53 */  lui        $a3, 0x4e53
/* B3BD0 800B2FD0 27AD00D8 */  addiu      $t5, $sp, 0xd8
/* B3BD4 800B2FD4 24090020 */  addiu      $t1, $zero, 0x20
/* B3BD8 800B2FD8 AFA90014 */  sw         $t1, 0x14($sp)
/* B3BDC 800B2FDC AFAD0010 */  sw         $t5, 0x10($sp)
/* B3BE0 800B2FE0 34E75045 */  ori        $a3, $a3, 0x5045
/* B3BE4 800B2FE4 24A5F21C */  addiu      $a1, $a1, -0xde4
/* B3BE8 800B2FE8 2484F210 */  addiu      $a0, $a0, -0xdf0
/* B3BEC 800B2FEC 0C000DDD */  jal        func_80003774
/* B3BF0 800B2FF0 24063630 */   addiu     $a2, $zero, 0x3630
/* B3BF4 800B2FF4 AFA201E0 */  sw         $v0, 0x1e0($sp)
/* B3BF8 800B2FF8 8FAC01E0 */  lw         $t4, 0x1e0($sp)
/* B3BFC 800B2FFC 2588000D */  addiu      $t0, $t4, 0xd
/* B3C00 800B3000 2D010012 */  sltiu      $at, $t0, 0x12
/* B3C04 800B3004 10200052 */  beqz       $at, .L800B3150
/* B3C08 800B3008 00000000 */   nop
/* B3C0C 800B300C 00084080 */  sll        $t0, $t0, 2
/* B3C10 800B3010 3C01800E */  lui        $at, %hi(D_800DF290)
/* B3C14 800B3014 00280821 */  addu       $at, $at, $t0
/* B3C18 800B3018 8C28F290 */  lw         $t0, %lo(D_800DF290)($at)
/* B3C1C 800B301C 01000008 */  jr         $t0
/* B3C20 800B3020 00000000 */   nop
/* B3C24 800B3024 240E0004 */  addiu      $t6, $zero, 4
/* B3C28 800B3028 3C018014 */  lui        $at, %hi(D_80144294)
/* B3C2C 800B302C A42E4294 */  sh         $t6, %lo(D_80144294)($at)
/* B3C30 800B3030 3C018014 */  lui        $at, %hi(D_80144296)
/* B3C34 800B3034 240FFFFF */  addiu      $t7, $zero, -1
/* B3C38 800B3038 A42F4296 */  sh         $t7, %lo(D_80144296)($at)
/* B3C3C 800B303C 3C018014 */  lui        $at, %hi(D_80144298)
/* B3C40 800B3040 24190005 */  addiu      $t9, $zero, 5
/* B3C44 800B3044 10000042 */  b          .L800B3150
/* B3C48 800B3048 A4394298 */   sh        $t9, %lo(D_80144298)($at)
/* B3C4C 800B304C 24180004 */  addiu      $t8, $zero, 4
/* B3C50 800B3050 3C018014 */  lui        $at, %hi(D_80144294)
/* B3C54 800B3054 A4384294 */  sh         $t8, %lo(D_80144294)($at)
/* B3C58 800B3058 3C018014 */  lui        $at, %hi(D_80144296)
/* B3C5C 800B305C 240AFFFF */  addiu      $t2, $zero, -1
/* B3C60 800B3060 A42A4296 */  sh         $t2, %lo(D_80144296)($at)
/* B3C64 800B3064 3C018014 */  lui        $at, %hi(D_80144298)
/* B3C68 800B3068 240B0006 */  addiu      $t3, $zero, 6
/* B3C6C 800B306C 10000038 */  b          .L800B3150
/* B3C70 800B3070 A42B4298 */   sh        $t3, %lo(D_80144298)($at)
/* B3C74 800B3074 240D0004 */  addiu      $t5, $zero, 4
/* B3C78 800B3078 3C018014 */  lui        $at, %hi(D_80144294)
/* B3C7C 800B307C A42D4294 */  sh         $t5, %lo(D_80144294)($at)
/* B3C80 800B3080 3C018014 */  lui        $at, %hi(D_80144296)
/* B3C84 800B3084 2409FFFF */  addiu      $t1, $zero, -1
/* B3C88 800B3088 A4294296 */  sh         $t1, %lo(D_80144296)($at)
/* B3C8C 800B308C 3C018014 */  lui        $at, %hi(D_80144298)
/* B3C90 800B3090 240C0007 */  addiu      $t4, $zero, 7
/* B3C94 800B3094 1000002E */  b          .L800B3150
/* B3C98 800B3098 A42C4298 */   sh        $t4, %lo(D_80144298)($at)
/* B3C9C 800B309C 24080004 */  addiu      $t0, $zero, 4
/* B3CA0 800B30A0 3C018014 */  lui        $at, %hi(D_80144294)
/* B3CA4 800B30A4 A4284294 */  sh         $t0, %lo(D_80144294)($at)
/* B3CA8 800B30A8 3C018014 */  lui        $at, %hi(D_80144296)
/* B3CAC 800B30AC 240EFFFF */  addiu      $t6, $zero, -1
/* B3CB0 800B30B0 A42E4296 */  sh         $t6, %lo(D_80144296)($at)
/* B3CB4 800B30B4 3C018014 */  lui        $at, %hi(D_80144298)
/* B3CB8 800B30B8 240F0008 */  addiu      $t7, $zero, 8
/* B3CBC 800B30BC 10000024 */  b          .L800B3150
/* B3CC0 800B30C0 A42F4298 */   sh        $t7, %lo(D_80144298)($at)
/* B3CC4 800B30C4 24190004 */  addiu      $t9, $zero, 4
/* B3CC8 800B30C8 3C018014 */  lui        $at, %hi(D_80144294)
/* B3CCC 800B30CC A4394294 */  sh         $t9, %lo(D_80144294)($at)
/* B3CD0 800B30D0 3C018014 */  lui        $at, %hi(D_80144296)
/* B3CD4 800B30D4 2418FFFF */  addiu      $t8, $zero, -1
/* B3CD8 800B30D8 A4384296 */  sh         $t8, %lo(D_80144296)($at)
/* B3CDC 800B30DC 3C018014 */  lui        $at, %hi(D_80144298)
/* B3CE0 800B30E0 240A0009 */  addiu      $t2, $zero, 9
/* B3CE4 800B30E4 1000001A */  b          .L800B3150
/* B3CE8 800B30E8 A42A4298 */   sh        $t2, %lo(D_80144298)($at)
/* B3CEC 800B30EC 240B0004 */  addiu      $t3, $zero, 4
/* B3CF0 800B30F0 3C018014 */  lui        $at, %hi(D_80144294)
/* B3CF4 800B30F4 A42B4294 */  sh         $t3, %lo(D_80144294)($at)
/* B3CF8 800B30F8 3C018014 */  lui        $at, %hi(D_80144296)
/* B3CFC 800B30FC 240DFFFF */  addiu      $t5, $zero, -1
/* B3D00 800B3100 A42D4296 */  sh         $t5, %lo(D_80144296)($at)
/* B3D04 800B3104 3C018014 */  lui        $at, %hi(D_80144298)
/* B3D08 800B3108 24090003 */  addiu      $t1, $zero, 3
/* B3D0C 800B310C 10000010 */  b          .L800B3150
/* B3D10 800B3110 A4294298 */   sh        $t1, %lo(D_80144298)($at)
/* B3D14 800B3114 240C0009 */  addiu      $t4, $zero, 9
/* B3D18 800B3118 3C018014 */  lui        $at, %hi(D_80144294)
/* B3D1C 800B311C A42C4294 */  sh         $t4, %lo(D_80144294)($at)
/* B3D20 800B3120 3C018014 */  lui        $at, %hi(D_80144296)
/* B3D24 800B3124 2408FFFF */  addiu      $t0, $zero, -1
/* B3D28 800B3128 A4284296 */  sh         $t0, %lo(D_80144296)($at)
/* B3D2C 800B312C 3C018014 */  lui        $at, %hi(D_80144298)
/* B3D30 800B3130 240E000A */  addiu      $t6, $zero, 0xa
/* B3D34 800B3134 10000006 */  b          .L800B3150
/* B3D38 800B3138 A42E4298 */   sh        $t6, %lo(D_80144298)($at)
.L800B313C:
/* B3D3C 800B313C 0C000BA0 */  jal        func_80002E80
/* B3D40 800B3140 24040001 */   addiu     $a0, $zero, 1
/* B3D44 800B3144 240FFFFF */  addiu      $t7, $zero, -1
/* B3D48 800B3148 3C018014 */  lui        $at, %hi(D_80144294)
/* B3D4C 800B314C A42F4294 */  sh         $t7, %lo(D_80144294)($at)
.L800B3150:
/* B3D50 800B3150 3C198014 */  lui        $t9, %hi(D_80144294)
/* B3D54 800B3154 87394294 */  lh         $t9, %lo(D_80144294)($t9)
/* B3D58 800B3158 24010007 */  addiu      $at, $zero, 7
/* B3D5C 800B315C 1321001E */  beq        $t9, $at, .L800B31D8
/* B3D60 800B3160 00000000 */   nop
/* B3D64 800B3164 3C18800F */  lui        $t8, %hi(D_800EA0D0)
/* B3D68 800B3168 2718A0D0 */  addiu      $t8, $t8, %lo(D_800EA0D0)
/* B3D6C 800B316C 830A0000 */  lb         $t2, ($t8)
/* B3D70 800B3170 24010030 */  addiu      $at, $zero, 0x30
/* B3D74 800B3174 0141001A */  div        $zero, $t2, $at
/* B3D78 800B3178 00005812 */  mflo       $t3
/* B3D7C 800B317C 000B6C00 */  sll        $t5, $t3, 0x10
/* B3D80 800B3180 000D4C03 */  sra        $t1, $t5, 0x10
/* B3D84 800B3184 11200011 */  beqz       $t1, .L800B31CC
/* B3D88 800B3188 A7AB01DA */   sh        $t3, 0x1da($sp)
/* B3D8C 800B318C 3C0C8018 */  lui        $t4, %hi(D_8017A310)
/* B3D90 800B3190 8D8CA310 */  lw         $t4, %lo(D_8017A310)($t4)
/* B3D94 800B3194 1580003E */  bnez       $t4, .L800B3290
/* B3D98 800B3198 00000000 */   nop
/* B3D9C 800B319C 3C0E8014 */  lui        $t6, %hi(D_80144296)
/* B3DA0 800B31A0 85CE4296 */  lh         $t6, %lo(D_80144296)($t6)
/* B3DA4 800B31A4 24080001 */  addiu      $t0, $zero, 1
/* B3DA8 800B31A8 3C018018 */  lui        $at, %hi(D_8017A310)
/* B3DAC 800B31AC AC28A310 */  sw         $t0, %lo(D_8017A310)($at)
/* B3DB0 800B31B0 2401FFFF */  addiu      $at, $zero, -1
/* B3DB4 800B31B4 11C10036 */  beq        $t6, $at, .L800B3290
/* B3DB8 800B31B8 00000000 */   nop
/* B3DBC 800B31BC 39CF0001 */  xori       $t7, $t6, 1
/* B3DC0 800B31C0 3C018014 */  lui        $at, %hi(D_80144296)
/* B3DC4 800B31C4 10000032 */  b          .L800B3290
/* B3DC8 800B31C8 A42F4296 */   sh        $t7, %lo(D_80144296)($at)
.L800B31CC:
/* B3DCC 800B31CC 3C018018 */  lui        $at, %hi(D_8017A310)
/* B3DD0 800B31D0 1000002F */  b          .L800B3290
/* B3DD4 800B31D4 AC20A310 */   sw        $zero, %lo(D_8017A310)($at)
.L800B31D8:
/* B3DD8 800B31D8 3C19800F */  lui        $t9, %hi(D_800EA0D4)
/* B3DDC 800B31DC 2739A0D4 */  addiu      $t9, $t9, %lo(D_800EA0D4)
/* B3DE0 800B31E0 83380000 */  lb         $t8, ($t9)
/* B3DE4 800B31E4 24010030 */  addiu      $at, $zero, 0x30
/* B3DE8 800B31E8 0301001A */  div        $zero, $t8, $at
/* B3DEC 800B31EC 00005012 */  mflo       $t2
/* B3DF0 800B31F0 000A5C00 */  sll        $t3, $t2, 0x10
/* B3DF4 800B31F4 000B6C03 */  sra        $t5, $t3, 0x10
/* B3DF8 800B31F8 11A00023 */  beqz       $t5, .L800B3288
/* B3DFC 800B31FC A7AA01D8 */   sh        $t2, 0x1d8($sp)
/* B3E00 800B3200 3C098018 */  lui        $t1, %hi(D_8017A314)
/* B3E04 800B3204 8D29A314 */  lw         $t1, %lo(D_8017A314)($t1)
/* B3E08 800B3208 15200021 */  bnez       $t1, .L800B3290
/* B3E0C 800B320C 00000000 */   nop
/* B3E10 800B3210 000A4400 */  sll        $t0, $t2, 0x10
/* B3E14 800B3214 240C0001 */  addiu      $t4, $zero, 1
/* B3E18 800B3218 3C018018 */  lui        $at, %hi(D_8017A314)
/* B3E1C 800B321C 00087403 */  sra        $t6, $t0, 0x10
/* B3E20 800B3220 05C1000D */  bgez       $t6, .L800B3258
/* B3E24 800B3224 AC2CA314 */   sw        $t4, %lo(D_8017A314)($at)
/* B3E28 800B3228 3C0F8014 */  lui        $t7, %hi(D_80144296)
/* B3E2C 800B322C 85EF4296 */  lh         $t7, %lo(D_80144296)($t7)
/* B3E30 800B3230 3C018014 */  lui        $at, %hi(D_80144296)
/* B3E34 800B3234 25F90001 */  addiu      $t9, $t7, 1
/* B3E38 800B3238 0019C400 */  sll        $t8, $t9, 0x10
/* B3E3C 800B323C A4394296 */  sh         $t9, %lo(D_80144296)($at)
/* B3E40 800B3240 00185C03 */  sra        $t3, $t8, 0x10
/* B3E44 800B3244 29610004 */  slti       $at, $t3, 4
/* B3E48 800B3248 14200011 */  bnez       $at, .L800B3290
/* B3E4C 800B324C 3C018014 */   lui       $at, %hi(D_80144296)
/* B3E50 800B3250 1000000F */  b          .L800B3290
/* B3E54 800B3254 A4204296 */   sh        $zero, %lo(D_80144296)($at)
.L800B3258:
/* B3E58 800B3258 3C0D8014 */  lui        $t5, %hi(D_80144296)
/* B3E5C 800B325C 85AD4296 */  lh         $t5, %lo(D_80144296)($t5)
/* B3E60 800B3260 3C018014 */  lui        $at, %hi(D_80144296)
/* B3E64 800B3264 25A9FFFF */  addiu      $t1, $t5, -1
/* B3E68 800B3268 00096400 */  sll        $t4, $t1, 0x10
/* B3E6C 800B326C 000C5403 */  sra        $t2, $t4, 0x10
/* B3E70 800B3270 05410007 */  bgez       $t2, .L800B3290
/* B3E74 800B3274 A4294296 */   sh        $t1, %lo(D_80144296)($at)
/* B3E78 800B3278 24080003 */  addiu      $t0, $zero, 3
/* B3E7C 800B327C 3C018014 */  lui        $at, %hi(D_80144296)
/* B3E80 800B3280 10000003 */  b          .L800B3290
/* B3E84 800B3284 A4284296 */   sh        $t0, %lo(D_80144296)($at)
.L800B3288:
/* B3E88 800B3288 3C018018 */  lui        $at, %hi(D_8017A314)
/* B3E8C 800B328C AC20A314 */  sw         $zero, %lo(D_8017A314)($at)
.L800B3290:
/* B3E90 800B3290 3C0E800F */  lui        $t6, %hi(D_800EA0D8)
/* B3E94 800B3294 25CEA0D8 */  addiu      $t6, $t6, %lo(D_800EA0D8)
/* B3E98 800B3298 95CF0000 */  lhu        $t7, ($t6)
/* B3E9C 800B329C 31F94000 */  andi       $t9, $t7, 0x4000
/* B3EA0 800B32A0 1320000E */  beqz       $t9, .L800B32DC
/* B3EA4 800B32A4 00000000 */   nop
/* B3EA8 800B32A8 3C188018 */  lui        $t8, %hi(D_8017A30C)
/* B3EAC 800B32AC 8F18A30C */  lw         $t8, %lo(D_8017A30C)($t8)
/* B3EB0 800B32B0 1700000C */  bnez       $t8, .L800B32E4
/* B3EB4 800B32B4 00000000 */   nop
/* B3EB8 800B32B8 240B0001 */  addiu      $t3, $zero, 1
/* B3EBC 800B32BC 3C018018 */  lui        $at, %hi(D_8017A30C)
/* B3EC0 800B32C0 AC2BA30C */  sw         $t3, %lo(D_8017A30C)($at)
/* B3EC4 800B32C4 3C018014 */  lui        $at, %hi(D_80144294)
/* B3EC8 800B32C8 A4204294 */  sh         $zero, %lo(D_80144294)($at)
/* B3ECC 800B32CC 3C018014 */  lui        $at, %hi(D_80144296)
/* B3ED0 800B32D0 240D0001 */  addiu      $t5, $zero, 1
/* B3ED4 800B32D4 10000003 */  b          .L800B32E4
/* B3ED8 800B32D8 A42D4296 */   sh        $t5, %lo(D_80144296)($at)
.L800B32DC:
/* B3EDC 800B32DC 3C018018 */  lui        $at, %hi(D_8017A30C)
/* B3EE0 800B32E0 AC20A30C */  sw         $zero, %lo(D_8017A30C)($at)
.L800B32E4:
/* B3EE4 800B32E4 3C09800F */  lui        $t1, %hi(D_800EA0D8)
/* B3EE8 800B32E8 2529A0D8 */  addiu      $t1, $t1, %lo(D_800EA0D8)
/* B3EEC 800B32EC 952C0000 */  lhu        $t4, ($t1)
/* B3EF0 800B32F0 318A8000 */  andi       $t2, $t4, 0x8000
/* B3EF4 800B32F4 114000A4 */  beqz       $t2, .L800B3588
/* B3EF8 800B32F8 00000000 */   nop
/* B3EFC 800B32FC 3C088018 */  lui        $t0, %hi(D_8017A308)
/* B3F00 800B3300 8D08A308 */  lw         $t0, %lo(D_8017A308)($t0)
/* B3F04 800B3304 150000AD */  bnez       $t0, .L800B35BC
/* B3F08 800B3308 00000000 */   nop
/* B3F0C 800B330C 3C0F8014 */  lui        $t7, %hi(D_80144294)
/* B3F10 800B3310 95EF4294 */  lhu        $t7, %lo(D_80144294)($t7)
/* B3F14 800B3314 240E0001 */  addiu      $t6, $zero, 1
/* B3F18 800B3318 3C018018 */  lui        $at, %hi(D_8017A308)
/* B3F1C 800B331C AC2EA308 */  sw         $t6, %lo(D_8017A308)($at)
/* B3F20 800B3320 2DE1000A */  sltiu      $at, $t7, 0xa
/* B3F24 800B3324 10200095 */  beqz       $at, .L800B357C
/* B3F28 800B3328 00000000 */   nop
/* B3F2C 800B332C 000F7880 */  sll        $t7, $t7, 2
/* B3F30 800B3330 3C01800E */  lui        $at, %hi(D_800DF2D8)
/* B3F34 800B3334 002F0821 */  addu       $at, $at, $t7
/* B3F38 800B3338 8C2FF2D8 */  lw         $t7, %lo(D_800DF2D8)($at)
/* B3F3C 800B333C 01E00008 */  jr         $t7
/* B3F40 800B3340 00000000 */   nop
/* B3F44 800B3344 3C198014 */  lui        $t9, %hi(D_80144296)
/* B3F48 800B3348 87394296 */  lh         $t9, %lo(D_80144296)($t9)
/* B3F4C 800B334C 1720000A */  bnez       $t9, .L800B3378
/* B3F50 800B3350 00000000 */   nop
/* B3F54 800B3354 24180001 */  addiu      $t8, $zero, 1
/* B3F58 800B3358 3C018014 */  lui        $at, %hi(D_80144294)
/* B3F5C 800B335C A4384294 */  sh         $t8, %lo(D_80144294)($at)
/* B3F60 800B3360 3C018014 */  lui        $at, %hi(D_80144296)
/* B3F64 800B3364 240BFFFF */  addiu      $t3, $zero, -1
/* B3F68 800B3368 A42B4296 */  sh         $t3, %lo(D_80144296)($at)
/* B3F6C 800B336C 3C018014 */  lui        $at, %hi(D_80144298)
/* B3F70 800B3370 10000082 */  b          .L800B357C
/* B3F74 800B3374 A4204298 */   sh        $zero, %lo(D_80144298)($at)
.L800B3378:
/* B3F78 800B3378 3C0D8014 */  lui        $t5, %hi(D_8014429A)
/* B3F7C 800B337C 85AD429A */  lh         $t5, %lo(D_8014429A)($t5)
/* B3F80 800B3380 15A0000B */  bnez       $t5, .L800B33B0
/* B3F84 800B3384 00000000 */   nop
/* B3F88 800B3388 24090009 */  addiu      $t1, $zero, 9
/* B3F8C 800B338C 3C018014 */  lui        $at, %hi(D_80144294)
/* B3F90 800B3390 A4294294 */  sh         $t1, %lo(D_80144294)($at)
/* B3F94 800B3394 3C018014 */  lui        $at, %hi(D_80144296)
/* B3F98 800B3398 240CFFFF */  addiu      $t4, $zero, -1
/* B3F9C 800B339C A42C4296 */  sh         $t4, %lo(D_80144296)($at)
/* B3FA0 800B33A0 3C018014 */  lui        $at, %hi(D_80144298)
/* B3FA4 800B33A4 240A000A */  addiu      $t2, $zero, 0xa
/* B3FA8 800B33A8 10000074 */  b          .L800B357C
/* B3FAC 800B33AC A42A4298 */   sh        $t2, %lo(D_80144298)($at)
.L800B33B0:
/* B3FB0 800B33B0 2408FFFF */  addiu      $t0, $zero, -1
/* B3FB4 800B33B4 3C018014 */  lui        $at, %hi(D_80144294)
/* B3FB8 800B33B8 10000070 */  b          .L800B357C
/* B3FBC 800B33BC A4284294 */   sh        $t0, %lo(D_80144294)($at)
/* B3FC0 800B33C0 3C0E8014 */  lui        $t6, %hi(D_80144294)
/* B3FC4 800B33C4 85CE4294 */  lh         $t6, %lo(D_80144294)($t6)
/* B3FC8 800B33C8 3C018014 */  lui        $at, %hi(D_80144294)
/* B3FCC 800B33CC 35CF4000 */  ori        $t7, $t6, 0x4000
/* B3FD0 800B33D0 1000006A */  b          .L800B357C
/* B3FD4 800B33D4 A42F4294 */   sh        $t7, %lo(D_80144294)($at)
/* B3FD8 800B33D8 3C018014 */  lui        $at, %hi(D_80144294)
/* B3FDC 800B33DC A4204294 */  sh         $zero, %lo(D_80144294)($at)
/* B3FE0 800B33E0 3C018014 */  lui        $at, %hi(D_80144296)
/* B3FE4 800B33E4 24190001 */  addiu      $t9, $zero, 1
/* B3FE8 800B33E8 10000064 */  b          .L800B357C
/* B3FEC 800B33EC A4394296 */   sh        $t9, %lo(D_80144296)($at)
/* B3FF0 800B33F0 24180005 */  addiu      $t8, $zero, 5
/* B3FF4 800B33F4 3C018014 */  lui        $at, %hi(D_80144294)
/* B3FF8 800B33F8 A4384294 */  sh         $t8, %lo(D_80144294)($at)
/* B3FFC 800B33FC 3C018014 */  lui        $at, %hi(D_80144296)
/* B4000 800B3400 240B0001 */  addiu      $t3, $zero, 1
/* B4004 800B3404 1000005D */  b          .L800B357C
/* B4008 800B3408 A42B4296 */   sh        $t3, %lo(D_80144296)($at)
/* B400C 800B340C 3C018014 */  lui        $at, %hi(D_80144294)
/* B4010 800B3410 A4204294 */  sh         $zero, %lo(D_80144294)($at)
/* B4014 800B3414 3C018014 */  lui        $at, %hi(D_80144296)
/* B4018 800B3418 240D0001 */  addiu      $t5, $zero, 1
/* B401C 800B341C 10000057 */  b          .L800B357C
/* B4020 800B3420 A42D4296 */   sh        $t5, %lo(D_80144296)($at)
/* B4024 800B3424 3C098014 */  lui        $t1, %hi(D_80144296)
/* B4028 800B3428 85294296 */  lh         $t1, %lo(D_80144296)($t1)
/* B402C 800B342C 11200006 */  beqz       $t1, .L800B3448
/* B4030 800B3430 3C018014 */   lui       $at, %hi(D_80144294)
/* B4034 800B3434 A4204294 */  sh         $zero, %lo(D_80144294)($at)
/* B4038 800B3438 3C018014 */  lui        $at, %hi(D_80144296)
/* B403C 800B343C 240C0001 */  addiu      $t4, $zero, 1
/* B4040 800B3440 1000004E */  b          .L800B357C
/* B4044 800B3444 A42C4296 */   sh        $t4, %lo(D_80144296)($at)
.L800B3448:
/* B4048 800B3448 3C0A8014 */  lui        $t2, %hi(D_80144294)
/* B404C 800B344C 854A4294 */  lh         $t2, %lo(D_80144294)($t2)
/* B4050 800B3450 3C018014 */  lui        $at, %hi(D_80144294)
/* B4054 800B3454 35484000 */  ori        $t0, $t2, 0x4000
/* B4058 800B3458 10000048 */  b          .L800B357C
/* B405C 800B345C A4284294 */   sh        $t0, %lo(D_80144294)($at)
/* B4060 800B3460 3C018014 */  lui        $at, %hi(D_80144294)
/* B4064 800B3464 A4204294 */  sh         $zero, %lo(D_80144294)($at)
/* B4068 800B3468 3C018014 */  lui        $at, %hi(D_80144296)
/* B406C 800B346C 240E0001 */  addiu      $t6, $zero, 1
/* B4070 800B3470 10000042 */  b          .L800B357C
/* B4074 800B3474 A42E4296 */   sh        $t6, %lo(D_80144296)($at)
/* B4078 800B3478 3C0F8014 */  lui        $t7, %hi(D_80144296)
/* B407C 800B347C 85EF4296 */  lh         $t7, %lo(D_80144296)($t7)
/* B4080 800B3480 3C188014 */  lui        $t8, %hi(D_801442A0)
/* B4084 800B3484 000FC840 */  sll        $t9, $t7, 1
/* B4088 800B3488 0319C021 */  addu       $t8, $t8, $t9
/* B408C 800B348C 871842A0 */  lh         $t8, %lo(D_801442A0)($t8)
/* B4090 800B3490 13000009 */  beqz       $t8, .L800B34B8
/* B4094 800B3494 3C018014 */   lui       $at, %hi(D_80144274)
/* B4098 800B3498 AC2F4274 */  sw         $t7, %lo(D_80144274)($at)
/* B409C 800B349C 3C018014 */  lui        $at, %hi(D_80144294)
/* B40A0 800B34A0 240B0008 */  addiu      $t3, $zero, 8
/* B40A4 800B34A4 A42B4294 */  sh         $t3, %lo(D_80144294)($at)
/* B40A8 800B34A8 3C018014 */  lui        $at, %hi(D_80144296)
/* B40AC 800B34AC 240D0001 */  addiu      $t5, $zero, 1
/* B40B0 800B34B0 10000032 */  b          .L800B357C
/* B40B4 800B34B4 A42D4296 */   sh        $t5, %lo(D_80144296)($at)
.L800B34B8:
/* B40B8 800B34B8 3C09800E */  lui        $t1, %hi(D_800D9DBC)
/* B40BC 800B34BC 3C0E8014 */  lui        $t6, %hi(D_80144296)
/* B40C0 800B34C0 85CE4296 */  lh         $t6, %lo(D_80144296)($t6)
/* B40C4 800B34C4 8D299DBC */  lw         $t1, %lo(D_800D9DBC)($t1)
/* B40C8 800B34C8 3C0A800E */  lui        $t2, %hi(D_800D9DE0)
/* B40CC 800B34CC 8D4A9DE0 */  lw         $t2, %lo(D_800D9DE0)($t2)
/* B40D0 800B34D0 3C188014 */  lui        $t8, %hi(D_80144294)
/* B40D4 800B34D4 87184294 */  lh         $t8, %lo(D_80144294)($t8)
/* B40D8 800B34D8 3C018014 */  lui        $at, %hi(D_801442A0)
/* B40DC 800B34DC 000EC840 */  sll        $t9, $t6, 1
/* B40E0 800B34E0 00096180 */  sll        $t4, $t1, 6
/* B40E4 800B34E4 00390821 */  addu       $at, $at, $t9
/* B40E8 800B34E8 018A4025 */  or         $t0, $t4, $t2
/* B40EC 800B34EC A42842A0 */  sh         $t0, %lo(D_801442A0)($at)
/* B40F0 800B34F0 3C018014 */  lui        $at, %hi(D_80144294)
/* B40F4 800B34F4 370F4000 */  ori        $t7, $t8, 0x4000
/* B40F8 800B34F8 10000020 */  b          .L800B357C
/* B40FC 800B34FC A42F4294 */   sh        $t7, %lo(D_80144294)($at)
/* B4100 800B3500 3C0B8014 */  lui        $t3, %hi(D_80144296)
/* B4104 800B3504 856B4296 */  lh         $t3, %lo(D_80144296)($t3)
/* B4108 800B3508 11600007 */  beqz       $t3, .L800B3528
/* B410C 800B350C 00000000 */   nop
/* B4110 800B3510 240D0007 */  addiu      $t5, $zero, 7
/* B4114 800B3514 3C018014 */  lui        $at, %hi(D_80144294)
/* B4118 800B3518 A42D4294 */  sh         $t5, %lo(D_80144294)($at)
/* B411C 800B351C 3C018014 */  lui        $at, %hi(D_80144296)
/* B4120 800B3520 10000016 */  b          .L800B357C
/* B4124 800B3524 A4204296 */   sh        $zero, %lo(D_80144296)($at)
.L800B3528:
/* B4128 800B3528 3C09800E */  lui        $t1, %hi(D_800D9DBC)
/* B412C 800B352C 3C088014 */  lui        $t0, %hi(D_80144274)
/* B4130 800B3530 8D084274 */  lw         $t0, %lo(D_80144274)($t0)
/* B4134 800B3534 8D299DBC */  lw         $t1, %lo(D_800D9DBC)($t1)
/* B4138 800B3538 3C0A800E */  lui        $t2, %hi(D_800D9DE0)
/* B413C 800B353C 8D4A9DE0 */  lw         $t2, %lo(D_800D9DE0)($t2)
/* B4140 800B3540 3C018014 */  lui        $at, %hi(D_801442A0)
/* B4144 800B3544 0008C840 */  sll        $t9, $t0, 1
/* B4148 800B3548 00096180 */  sll        $t4, $t1, 6
/* B414C 800B354C 00390821 */  addu       $at, $at, $t9
/* B4150 800B3550 018A7025 */  or         $t6, $t4, $t2
/* B4154 800B3554 A42E42A0 */  sh         $t6, %lo(D_801442A0)($at)
/* B4158 800B3558 3C018014 */  lui        $at, %hi(D_80144294)
/* B415C 800B355C 24184007 */  addiu      $t8, $zero, 0x4007
/* B4160 800B3560 10000006 */  b          .L800B357C
/* B4164 800B3564 A4384294 */   sh        $t8, %lo(D_80144294)($at)
/* B4168 800B3568 3C0F8014 */  lui        $t7, %hi(D_80144294)
/* B416C 800B356C 85EF4294 */  lh         $t7, %lo(D_80144294)($t7)
/* B4170 800B3570 3C018014 */  lui        $at, %hi(D_80144294)
/* B4174 800B3574 35EB4000 */  ori        $t3, $t7, 0x4000
/* B4178 800B3578 A42B4294 */  sh         $t3, %lo(D_80144294)($at)
.L800B357C:
/* B417C 800B357C 3C018014 */  lui        $at, %hi(D_8014429A)
/* B4180 800B3580 1000000E */  b          .L800B35BC
/* B4184 800B3584 A420429A */   sh        $zero, %lo(D_8014429A)($at)
.L800B3588:
/* B4188 800B3588 3C018018 */  lui        $at, %hi(D_8017A308)
/* B418C 800B358C 1000000B */  b          .L800B35BC
/* B4190 800B3590 AC20A308 */   sw        $zero, %lo(D_8017A308)($at)
.L800B3594:
/* B4194 800B3594 3C0D800F */  lui        $t5, %hi(D_800EA0D8)
/* B4198 800B3598 25ADA0D8 */  addiu      $t5, $t5, %lo(D_800EA0D8)
/* B419C 800B359C 95A90000 */  lhu        $t1, ($t5)
/* B41A0 800B35A0 312C8000 */  andi       $t4, $t1, 0x8000
/* B41A4 800B35A4 15800005 */  bnez       $t4, .L800B35BC
/* B41A8 800B35A8 3C018018 */   lui       $at, %hi(D_8017A324)
/* B41AC 800B35AC A420A324 */  sh         $zero, %lo(D_8017A324)($at)
/* B41B0 800B35B0 3C01800D */  lui        $at, %hi(D_800D6300)
/* B41B4 800B35B4 240A07FD */  addiu      $t2, $zero, 0x7fd
/* B41B8 800B35B8 AC2A6300 */  sw         $t2, %lo(D_800D6300)($at)
.L800B35BC:
/* B41BC 800B35BC 8FBF003C */  lw         $ra, 0x3c($sp)
/* B41C0 800B35C0 8FB00038 */  lw         $s0, 0x38($sp)
/* B41C4 800B35C4 27BD01E8 */  addiu      $sp, $sp, 0x1e8
/* B41C8 800B35C8 03E00008 */  jr         $ra
/* B41CC 800B35CC 00000000 */   nop

glabel func_800B35D0
/* B41D0 800B35D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B41D4 800B35D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B41D8 800B35D8 AFA40018 */  sw         $a0, 0x18($sp)
/* B41DC 800B35DC AFA5001C */  sw         $a1, 0x1c($sp)
/* B41E0 800B35E0 3C018014 */  lui        $at, %hi(D_8014427E)
/* B41E4 800B35E4 A420427E */  sh         $zero, %lo(D_8014427E)($at)
/* B41E8 800B35E8 3C018014 */  lui        $at, %hi(D_80144278)
/* B41EC 800B35EC A4204278 */  sh         $zero, %lo(D_80144278)($at)
/* B41F0 800B35F0 3C018014 */  lui        $at, %hi(D_8014427A)
/* B41F4 800B35F4 A420427A */  sh         $zero, %lo(D_8014427A)($at)
/* B41F8 800B35F8 3C018014 */  lui        $at, %hi(D_80144290)
/* B41FC 800B35FC AC204290 */  sw         $zero, %lo(D_80144290)($at)
/* B4200 800B3600 0C000BA0 */  jal        func_80002E80
/* B4204 800B3604 24040001 */   addiu     $a0, $zero, 1
/* B4208 800B3608 3C018014 */  lui        $at, %hi(D_80144280)
/* B420C 800B360C AC224280 */  sw         $v0, %lo(D_80144280)($at)
/* B4210 800B3610 3C0F8018 */  lui        $t7, %hi(D_8017A2B8)
/* B4214 800B3614 85EFA2B8 */  lh         $t7, %lo(D_8017A2B8)($t7)
/* B4218 800B3618 3C018014 */  lui        $at, %hi(D_8014428C)
/* B421C 800B361C 240E0001 */  addiu      $t6, $zero, 1
/* B4220 800B3620 AC2E428C */  sw         $t6, %lo(D_8014428C)($at)
/* B4224 800B3624 2401FFFF */  addiu      $at, $zero, -1
/* B4228 800B3628 11E10003 */  beq        $t7, $at, .L800B3638
/* B422C 800B362C 3C01800E */   lui       $at, %hi(D_800D9FA0)
/* B4230 800B3630 10000004 */  b          .L800B3644
/* B4234 800B3634 AC2F9FA0 */   sw        $t7, %lo(D_800D9FA0)($at)
.L800B3638:
/* B4238 800B3638 24180001 */  addiu      $t8, $zero, 1
/* B423C 800B363C 3C01800E */  lui        $at, %hi(D_800D9FA0)
/* B4240 800B3640 AC389FA0 */  sw         $t8, %lo(D_800D9FA0)($at)
.L800B3644:
/* B4244 800B3644 24190018 */  addiu      $t9, $zero, 0x18
/* B4248 800B3648 3C01800D */  lui        $at, %hi(D_800D6300)
/* B424C 800B364C AC396300 */  sw         $t9, %lo(D_800D6300)($at)
/* B4250 800B3650 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4254 800B3654 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4258 800B3658 03E00008 */  jr         $ra
/* B425C 800B365C 00000000 */   nop

glabel func_800B3660
/* B4260 800B3660 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* B4264 800B3664 AFBF003C */  sw         $ra, 0x3c($sp)
/* B4268 800B3668 AFA400D8 */  sw         $a0, 0xd8($sp)
/* B426C 800B366C AFA500DC */  sw         $a1, 0xdc($sp)
/* B4270 800B3670 AFB00038 */  sw         $s0, 0x38($sp)
/* B4274 800B3674 3C0E8018 */  lui        $t6, %hi(D_8017A2B8)
/* B4278 800B3678 85CEA2B8 */  lh         $t6, %lo(D_8017A2B8)($t6)
/* B427C 800B367C 2401FFFF */  addiu      $at, $zero, -1
/* B4280 800B3680 11C10003 */  beq        $t6, $at, .L800B3690
/* B4284 800B3684 3C01800E */   lui       $at, %hi(D_800D9FA0)
/* B4288 800B3688 10000004 */  b          .L800B369C
/* B428C 800B368C AC2E9FA0 */   sw        $t6, %lo(D_800D9FA0)($at)
.L800B3690:
/* B4290 800B3690 240F0001 */  addiu      $t7, $zero, 1
/* B4294 800B3694 3C01800E */  lui        $at, %hi(D_800D9FA0)
/* B4298 800B3698 AC2F9FA0 */  sw         $t7, %lo(D_800D9FA0)($at)
.L800B369C:
/* B429C 800B369C 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* B42A0 800B36A0 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* B42A4 800B36A4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B42A8 800B36A8 3C08BA00 */  lui        $t0, 0xba00
/* B42AC 800B36AC AFB800A0 */  sw         $t8, 0xa0($sp)
/* B42B0 800B36B0 8FA900A0 */  lw         $t1, 0xa0($sp)
/* B42B4 800B36B4 27190008 */  addiu      $t9, $t8, 8
/* B42B8 800B36B8 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* B42BC 800B36BC 35081402 */  ori        $t0, $t0, 0x1402
/* B42C0 800B36C0 AD280000 */  sw         $t0, ($t1)
/* B42C4 800B36C4 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* B42C8 800B36C8 3C0A0030 */  lui        $t2, 0x30
/* B42CC 800B36CC AD6A0004 */  sw         $t2, 4($t3)
/* B42D0 800B36D0 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* B42D4 800B36D4 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* B42D8 800B36D8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B42DC 800B36DC 3C0EF700 */  lui        $t6, 0xf700
/* B42E0 800B36E0 AFAC009C */  sw         $t4, 0x9c($sp)
/* B42E4 800B36E4 8FAF009C */  lw         $t7, 0x9c($sp)
/* B42E8 800B36E8 258D0008 */  addiu      $t5, $t4, 8
/* B42EC 800B36EC AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* B42F0 800B36F0 ADEE0000 */  sw         $t6, ($t7)
/* B42F4 800B36F4 8FB9009C */  lw         $t9, 0x9c($sp)
/* B42F8 800B36F8 3C180001 */  lui        $t8, 1
/* B42FC 800B36FC 37180001 */  ori        $t8, $t8, 1
/* B4300 800B3700 AF380004 */  sw         $t8, 4($t9)
/* B4304 800B3704 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B4308 800B3708 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B430C 800B370C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4310 800B3710 3C0AF64F */  lui        $t2, 0xf64f
/* B4314 800B3714 AFA80098 */  sw         $t0, 0x98($sp)
/* B4318 800B3718 8FAB0098 */  lw         $t3, 0x98($sp)
/* B431C 800B371C 25090008 */  addiu      $t1, $t0, 8
/* B4320 800B3720 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B4324 800B3724 354AC3BC */  ori        $t2, $t2, 0xc3bc
/* B4328 800B3728 AD6A0000 */  sw         $t2, ($t3)
/* B432C 800B372C 8FAC0098 */  lw         $t4, 0x98($sp)
/* B4330 800B3730 AD800004 */  sw         $zero, 4($t4)
/* B4334 800B3734 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B4338 800B3738 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B433C 800B373C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4340 800B3740 3C0FE700 */  lui        $t7, 0xe700
/* B4344 800B3744 AFAD0094 */  sw         $t5, 0x94($sp)
/* B4348 800B3748 8FB80094 */  lw         $t8, 0x94($sp)
/* B434C 800B374C 25AE0008 */  addiu      $t6, $t5, 8
/* B4350 800B3750 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B4354 800B3754 AF0F0000 */  sw         $t7, ($t8)
/* B4358 800B3758 8FB90094 */  lw         $t9, 0x94($sp)
/* B435C 800B375C AF200004 */  sw         $zero, 4($t9)
/* B4360 800B3760 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B4364 800B3764 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B4368 800B3768 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B436C 800B376C 3C0ABA00 */  lui        $t2, 0xba00
/* B4370 800B3770 AFA80090 */  sw         $t0, 0x90($sp)
/* B4374 800B3774 8FAB0090 */  lw         $t3, 0x90($sp)
/* B4378 800B3778 25090008 */  addiu      $t1, $t0, 8
/* B437C 800B377C AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B4380 800B3780 354A1402 */  ori        $t2, $t2, 0x1402
/* B4384 800B3784 AD6A0000 */  sw         $t2, ($t3)
/* B4388 800B3788 8FAC0090 */  lw         $t4, 0x90($sp)
/* B438C 800B378C AD800004 */  sw         $zero, 4($t4)
/* B4390 800B3790 3C0D8014 */  lui        $t5, %hi(D_8014427E)
/* B4394 800B3794 85AD427E */  lh         $t5, %lo(D_8014427E)($t5)
/* B4398 800B3798 15A006E3 */  bnez       $t5, .L800B5328
/* B439C 800B379C 3C014120 */   lui       $at, 0x4120
/* B43A0 800B37A0 44812000 */  mtc1       $at, $f4
/* B43A4 800B37A4 3C0145FA */  lui        $at, 0x45fa
/* B43A8 800B37A8 44813000 */  mtc1       $at, $f6
/* B43AC 800B37AC 3C013F80 */  lui        $at, 0x3f80
/* B43B0 800B37B0 44814000 */  mtc1       $at, $f8
/* B43B4 800B37B4 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* B43B8 800B37B8 3C073FAA */  lui        $a3, 0x3faa
/* B43BC 800B37BC 34E7AAAB */  ori        $a3, $a3, 0xaaab
/* B43C0 800B37C0 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* B43C4 800B37C4 27A500D6 */  addiu      $a1, $sp, 0xd6
/* B43C8 800B37C8 3C064204 */  lui        $a2, 0x4204
/* B43CC 800B37CC E7A40010 */  swc1       $f4, 0x10($sp)
/* B43D0 800B37D0 E7A60014 */  swc1       $f6, 0x14($sp)
/* B43D4 800B37D4 0C030EC4 */  jal        func_800C3B10
/* B43D8 800B37D8 E7A80018 */   swc1      $f8, 0x18($sp)
/* B43DC 800B37DC 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B43E0 800B37E0 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B43E4 800B37E4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B43E8 800B37E8 3C18BC00 */  lui        $t8, 0xbc00
/* B43EC 800B37EC AFAE008C */  sw         $t6, 0x8c($sp)
/* B43F0 800B37F0 8FB9008C */  lw         $t9, 0x8c($sp)
/* B43F4 800B37F4 25CF0008 */  addiu      $t7, $t6, 8
/* B43F8 800B37F8 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* B43FC 800B37FC 3718000E */  ori        $t8, $t8, 0xe
/* B4400 800B3800 AF380000 */  sw         $t8, ($t9)
/* B4404 800B3804 8FA9008C */  lw         $t1, 0x8c($sp)
/* B4408 800B3808 97A800D6 */  lhu        $t0, 0xd6($sp)
/* B440C 800B380C AD280004 */  sw         $t0, 4($t1)
/* B4410 800B3810 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B4414 800B3814 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B4418 800B3818 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B441C 800B381C 3C0C0103 */  lui        $t4, 0x103
/* B4420 800B3820 AFAA0088 */  sw         $t2, 0x88($sp)
/* B4424 800B3824 8FAD0088 */  lw         $t5, 0x88($sp)
/* B4428 800B3828 254B0008 */  addiu      $t3, $t2, 8
/* B442C 800B382C AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B4430 800B3830 358C0040 */  ori        $t4, $t4, 0x40
/* B4434 800B3834 3C0E800F */  lui        $t6, %hi(D_800F2A68)
/* B4438 800B3838 ADAC0000 */  sw         $t4, ($t5)
/* B443C 800B383C 8DCE2A68 */  lw         $t6, %lo(D_800F2A68)($t6)
/* B4440 800B3840 8FB80088 */  lw         $t8, 0x88($sp)
/* B4444 800B3844 3C018000 */  lui        $at, 0x8000
/* B4448 800B3848 01C17821 */  addu       $t7, $t6, $at
/* B444C 800B384C 3C19800F */  lui        $t9, %hi(D_800F2A68)
/* B4450 800B3850 AF0F0004 */  sw         $t7, 4($t8)
/* B4454 800B3854 8F392A68 */  lw         $t9, %lo(D_800F2A68)($t9)
/* B4458 800B3858 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B445C 800B385C 27280040 */  addiu      $t0, $t9, 0x40
/* B4460 800B3860 AC282A68 */  sw         $t0, %lo(D_800F2A68)($at)
/* B4464 800B3864 3C013F80 */  lui        $at, 0x3f80
/* B4468 800B3868 44813000 */  mtc1       $at, $f6
/* B446C 800B386C 44805000 */  mtc1       $zero, $f10
/* B4470 800B3870 44808000 */  mtc1       $zero, $f16
/* B4474 800B3874 44809000 */  mtc1       $zero, $f18
/* B4478 800B3878 44802000 */  mtc1       $zero, $f4
/* B447C 800B387C 44804000 */  mtc1       $zero, $f8
/* B4480 800B3880 01002025 */  or         $a0, $t0, $zero
/* B4484 800B3884 24050000 */  addiu      $a1, $zero, 0
/* B4488 800B3888 24060000 */  addiu      $a2, $zero, 0
/* B448C 800B388C 3C07447A */  lui        $a3, 0x447a
/* B4490 800B3890 E7A60020 */  swc1       $f6, 0x20($sp)
/* B4494 800B3894 E7AA0010 */  swc1       $f10, 0x10($sp)
/* B4498 800B3898 E7B00014 */  swc1       $f16, 0x14($sp)
/* B449C 800B389C E7B20018 */  swc1       $f18, 0x18($sp)
/* B44A0 800B38A0 E7A4001C */  swc1       $f4, 0x1c($sp)
/* B44A4 800B38A4 0C03141A */  jal        func_800C5068
/* B44A8 800B38A8 E7A80024 */   swc1      $f8, 0x24($sp)
/* B44AC 800B38AC 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B44B0 800B38B0 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B44B4 800B38B4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B44B8 800B38B8 3C0B0101 */  lui        $t3, 0x101
/* B44BC 800B38BC AFA90084 */  sw         $t1, 0x84($sp)
/* B44C0 800B38C0 8FAC0084 */  lw         $t4, 0x84($sp)
/* B44C4 800B38C4 252A0008 */  addiu      $t2, $t1, 8
/* B44C8 800B38C8 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B44CC 800B38CC 356B0040 */  ori        $t3, $t3, 0x40
/* B44D0 800B38D0 3C0D800F */  lui        $t5, %hi(D_800F2A68)
/* B44D4 800B38D4 AD8B0000 */  sw         $t3, ($t4)
/* B44D8 800B38D8 8DAD2A68 */  lw         $t5, %lo(D_800F2A68)($t5)
/* B44DC 800B38DC 8FAF0084 */  lw         $t7, 0x84($sp)
/* B44E0 800B38E0 3C018000 */  lui        $at, 0x8000
/* B44E4 800B38E4 01A17021 */  addu       $t6, $t5, $at
/* B44E8 800B38E8 3C18800F */  lui        $t8, %hi(D_800F2A68)
/* B44EC 800B38EC ADEE0004 */  sw         $t6, 4($t7)
/* B44F0 800B38F0 8F182A68 */  lw         $t8, %lo(D_800F2A68)($t8)
/* B44F4 800B38F4 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B44F8 800B38F8 27190040 */  addiu      $t9, $t8, 0x40
/* B44FC 800B38FC AC392A68 */  sw         $t9, %lo(D_800F2A68)($at)
/* B4500 800B3900 3C01447A */  lui        $at, 0x447a
/* B4504 800B3904 44815000 */  mtc1       $at, $f10
/* B4508 800B3908 3C013F80 */  lui        $at, 0x3f80
/* B450C 800B390C 44814000 */  mtc1       $at, $f8
/* B4510 800B3910 E7AA0010 */  swc1       $f10, 0x10($sp)
/* B4514 800B3914 44805000 */  mtc1       $zero, $f10
/* B4518 800B3918 44808000 */  mtc1       $zero, $f16
/* B451C 800B391C 44809000 */  mtc1       $zero, $f18
/* B4520 800B3920 44802000 */  mtc1       $zero, $f4
/* B4524 800B3924 44803000 */  mtc1       $zero, $f6
/* B4528 800B3928 3C058014 */  lui        $a1, %hi(D_80142C50)
/* B452C 800B392C 24A52C50 */  addiu      $a1, $a1, %lo(D_80142C50)
/* B4530 800B3930 03202025 */  or         $a0, $t9, $zero
/* B4534 800B3934 24060000 */  addiu      $a2, $zero, 0
/* B4538 800B3938 24070000 */  addiu      $a3, $zero, 0
/* B453C 800B393C E7A80024 */  swc1       $f8, 0x24($sp)
/* B4540 800B3940 E7AA0028 */  swc1       $f10, 0x28($sp)
/* B4544 800B3944 E7B00014 */  swc1       $f16, 0x14($sp)
/* B4548 800B3948 E7B20018 */  swc1       $f18, 0x18($sp)
/* B454C 800B394C E7A4001C */  swc1       $f4, 0x1c($sp)
/* B4550 800B3950 0C031F8F */  jal        func_800C7E3C
/* B4554 800B3954 E7A60020 */   swc1      $f6, 0x20($sp)
/* B4558 800B3958 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B455C 800B395C 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B4560 800B3960 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4564 800B3964 3C0A0384 */  lui        $t2, 0x384
/* B4568 800B3968 AFA80080 */  sw         $t0, 0x80($sp)
/* B456C 800B396C 8FAB0080 */  lw         $t3, 0x80($sp)
/* B4570 800B3970 25090008 */  addiu      $t1, $t0, 8
/* B4574 800B3974 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B4578 800B3978 354A0010 */  ori        $t2, $t2, 0x10
/* B457C 800B397C AD6A0000 */  sw         $t2, ($t3)
/* B4580 800B3980 8FAD0080 */  lw         $t5, 0x80($sp)
/* B4584 800B3984 3C0C8014 */  lui        $t4, %hi(D_80142C50)
/* B4588 800B3988 258C2C50 */  addiu      $t4, $t4, %lo(D_80142C50)
/* B458C 800B398C ADAC0004 */  sw         $t4, 4($t5)
/* B4590 800B3990 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B4594 800B3994 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B4598 800B3998 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B459C 800B399C 3C180382 */  lui        $t8, 0x382
/* B45A0 800B39A0 AFAE007C */  sw         $t6, 0x7c($sp)
/* B45A4 800B39A4 8FB9007C */  lw         $t9, 0x7c($sp)
/* B45A8 800B39A8 25CF0008 */  addiu      $t7, $t6, 8
/* B45AC 800B39AC AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* B45B0 800B39B0 37180010 */  ori        $t8, $t8, 0x10
/* B45B4 800B39B4 AF380000 */  sw         $t8, ($t9)
/* B45B8 800B39B8 8FAA007C */  lw         $t2, 0x7c($sp)
/* B45BC 800B39BC 3C088014 */  lui        $t0, %hi(D_80142C50)
/* B45C0 800B39C0 25082C50 */  addiu      $t0, $t0, %lo(D_80142C50)
/* B45C4 800B39C4 25090010 */  addiu      $t1, $t0, 0x10
/* B45C8 800B39C8 AD490004 */  sw         $t1, 4($t2)
/* B45CC 800B39CC 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* B45D0 800B39D0 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* B45D4 800B39D4 3C053F80 */  lui        $a1, 0x3f80
/* B45D8 800B39D8 3C063F80 */  lui        $a2, 0x3f80
/* B45DC 800B39DC 0C02F8F1 */  jal        func_800BE3C4
/* B45E0 800B39E0 3C073F80 */   lui       $a3, 0x3f80
/* B45E4 800B39E4 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* B45E8 800B39E8 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* B45EC 800B39EC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B45F0 800B39F0 3C0D0102 */  lui        $t5, 0x102
/* B45F4 800B39F4 AFAB0078 */  sw         $t3, 0x78($sp)
/* B45F8 800B39F8 8FAE0078 */  lw         $t6, 0x78($sp)
/* B45FC 800B39FC 256C0008 */  addiu      $t4, $t3, 8
/* B4600 800B3A00 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* B4604 800B3A04 35AD0040 */  ori        $t5, $t5, 0x40
/* B4608 800B3A08 3C0F800F */  lui        $t7, %hi(D_800F2A68)
/* B460C 800B3A0C ADCD0000 */  sw         $t5, ($t6)
/* B4610 800B3A10 8DEF2A68 */  lw         $t7, %lo(D_800F2A68)($t7)
/* B4614 800B3A14 8FB90078 */  lw         $t9, 0x78($sp)
/* B4618 800B3A18 3C018000 */  lui        $at, 0x8000
/* B461C 800B3A1C 01E1C021 */  addu       $t8, $t7, $at
/* B4620 800B3A20 3C08800F */  lui        $t0, %hi(D_800F2A68)
/* B4624 800B3A24 AF380004 */  sw         $t8, 4($t9)
/* B4628 800B3A28 8D082A68 */  lw         $t0, %lo(D_800F2A68)($t0)
/* B462C 800B3A2C 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B4630 800B3A30 25090040 */  addiu      $t1, $t0, 0x40
/* B4634 800B3A34 AC292A68 */  sw         $t1, %lo(D_800F2A68)($at)
/* B4638 800B3A38 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B463C 800B3A3C 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B4640 800B3A40 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4644 800B3A44 3C0CE700 */  lui        $t4, 0xe700
/* B4648 800B3A48 AFAA0074 */  sw         $t2, 0x74($sp)
/* B464C 800B3A4C 8FAD0074 */  lw         $t5, 0x74($sp)
/* B4650 800B3A50 254B0008 */  addiu      $t3, $t2, 8
/* B4654 800B3A54 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B4658 800B3A58 ADAC0000 */  sw         $t4, ($t5)
/* B465C 800B3A5C 8FAE0074 */  lw         $t6, 0x74($sp)
/* B4660 800B3A60 ADC00004 */  sw         $zero, 4($t6)
/* B4664 800B3A64 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* B4668 800B3A68 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* B466C 800B3A6C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4670 800B3A70 3C19BA00 */  lui        $t9, 0xba00
/* B4674 800B3A74 AFAF0070 */  sw         $t7, 0x70($sp)
/* B4678 800B3A78 8FA80070 */  lw         $t0, 0x70($sp)
/* B467C 800B3A7C 25F80008 */  addiu      $t8, $t7, 8
/* B4680 800B3A80 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* B4684 800B3A84 37391402 */  ori        $t9, $t9, 0x1402
/* B4688 800B3A88 AD190000 */  sw         $t9, ($t0)
/* B468C 800B3A8C 8FA90070 */  lw         $t1, 0x70($sp)
/* B4690 800B3A90 AD200004 */  sw         $zero, 4($t1)
/* B4694 800B3A94 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B4698 800B3A98 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B469C 800B3A9C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B46A0 800B3AA0 3C0CBA00 */  lui        $t4, 0xba00
/* B46A4 800B3AA4 AFAA006C */  sw         $t2, 0x6c($sp)
/* B46A8 800B3AA8 8FAD006C */  lw         $t5, 0x6c($sp)
/* B46AC 800B3AAC 254B0008 */  addiu      $t3, $t2, 8
/* B46B0 800B3AB0 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B46B4 800B3AB4 358C1301 */  ori        $t4, $t4, 0x1301
/* B46B8 800B3AB8 ADAC0000 */  sw         $t4, ($t5)
/* B46BC 800B3ABC 8FAE006C */  lw         $t6, 0x6c($sp)
/* B46C0 800B3AC0 ADC00004 */  sw         $zero, 4($t6)
/* B46C4 800B3AC4 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* B46C8 800B3AC8 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* B46CC 800B3ACC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B46D0 800B3AD0 3C19BB00 */  lui        $t9, 0xbb00
/* B46D4 800B3AD4 AFAF0068 */  sw         $t7, 0x68($sp)
/* B46D8 800B3AD8 8FA80068 */  lw         $t0, 0x68($sp)
/* B46DC 800B3ADC 25F80008 */  addiu      $t8, $t7, 8
/* B46E0 800B3AE0 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* B46E4 800B3AE4 37390001 */  ori        $t9, $t9, 1
/* B46E8 800B3AE8 AD190000 */  sw         $t9, ($t0)
/* B46EC 800B3AEC 8FAA0068 */  lw         $t2, 0x68($sp)
/* B46F0 800B3AF0 2409FFFF */  addiu      $t1, $zero, -1
/* B46F4 800B3AF4 AD490004 */  sw         $t1, 4($t2)
/* B46F8 800B3AF8 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* B46FC 800B3AFC 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* B4700 800B3B00 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4704 800B3B04 3C0DE700 */  lui        $t5, 0xe700
/* B4708 800B3B08 AFAB0064 */  sw         $t3, 0x64($sp)
/* B470C 800B3B0C 8FAE0064 */  lw         $t6, 0x64($sp)
/* B4710 800B3B10 256C0008 */  addiu      $t4, $t3, 8
/* B4714 800B3B14 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* B4718 800B3B18 ADCD0000 */  sw         $t5, ($t6)
/* B471C 800B3B1C 8FAF0064 */  lw         $t7, 0x64($sp)
/* B4720 800B3B20 ADE00004 */  sw         $zero, 4($t7)
/* B4724 800B3B24 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* B4728 800B3B28 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* B472C 800B3B2C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4730 800B3B30 3C08EE00 */  lui        $t0, 0xee00
/* B4734 800B3B34 AFB80060 */  sw         $t8, 0x60($sp)
/* B4738 800B3B38 8FA90060 */  lw         $t1, 0x60($sp)
/* B473C 800B3B3C 27190008 */  addiu      $t9, $t8, 8
/* B4740 800B3B40 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* B4744 800B3B44 AD280000 */  sw         $t0, ($t1)
/* B4748 800B3B48 8FAA0060 */  lw         $t2, 0x60($sp)
/* B474C 800B3B4C AD400004 */  sw         $zero, 4($t2)
/* B4750 800B3B50 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* B4754 800B3B54 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* B4758 800B3B58 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B475C 800B3B5C 3C0DB900 */  lui        $t5, 0xb900
/* B4760 800B3B60 AFAB005C */  sw         $t3, 0x5c($sp)
/* B4764 800B3B64 8FAE005C */  lw         $t6, 0x5c($sp)
/* B4768 800B3B68 256C0008 */  addiu      $t4, $t3, 8
/* B476C 800B3B6C AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* B4770 800B3B70 35AD031D */  ori        $t5, $t5, 0x31d
/* B4774 800B3B74 ADCD0000 */  sw         $t5, ($t6)
/* B4778 800B3B78 8FB8005C */  lw         $t8, 0x5c($sp)
/* B477C 800B3B7C 3C0F0F0A */  lui        $t7, 0xf0a
/* B4780 800B3B80 35EF4000 */  ori        $t7, $t7, 0x4000
/* B4784 800B3B84 AF0F0004 */  sw         $t7, 4($t8)
/* B4788 800B3B88 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* B478C 800B3B8C 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* B4790 800B3B90 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4794 800B3B94 3C09FCFF */  lui        $t1, 0xfcff
/* B4798 800B3B98 AFB90058 */  sw         $t9, 0x58($sp)
/* B479C 800B3B9C 8FAA0058 */  lw         $t2, 0x58($sp)
/* B47A0 800B3BA0 27280008 */  addiu      $t0, $t9, 8
/* B47A4 800B3BA4 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* B47A8 800B3BA8 3529FFFF */  ori        $t1, $t1, 0xffff
/* B47AC 800B3BAC AD490000 */  sw         $t1, ($t2)
/* B47B0 800B3BB0 8FAC0058 */  lw         $t4, 0x58($sp)
/* B47B4 800B3BB4 3C0BFFFC */  lui        $t3, 0xfffc
/* B47B8 800B3BB8 356BF279 */  ori        $t3, $t3, 0xf279
/* B47BC 800B3BBC AD8B0004 */  sw         $t3, 4($t4)
/* B47C0 800B3BC0 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B47C4 800B3BC4 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B47C8 800B3BC8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B47CC 800B3BCC 3C0FBA00 */  lui        $t7, 0xba00
/* B47D0 800B3BD0 AFAD0054 */  sw         $t5, 0x54($sp)
/* B47D4 800B3BD4 8FB80054 */  lw         $t8, 0x54($sp)
/* B47D8 800B3BD8 25AE0008 */  addiu      $t6, $t5, 8
/* B47DC 800B3BDC AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B47E0 800B3BE0 35EF0C02 */  ori        $t7, $t7, 0xc02
/* B47E4 800B3BE4 AF0F0000 */  sw         $t7, ($t8)
/* B47E8 800B3BE8 8FA80054 */  lw         $t0, 0x54($sp)
/* B47EC 800B3BEC 24192000 */  addiu      $t9, $zero, 0x2000
/* B47F0 800B3BF0 AD190004 */  sw         $t9, 4($t0)
/* B47F4 800B3BF4 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B47F8 800B3BF8 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B47FC 800B3BFC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4800 800B3C00 3C0BE700 */  lui        $t3, 0xe700
/* B4804 800B3C04 AFA90050 */  sw         $t1, 0x50($sp)
/* B4808 800B3C08 8FAC0050 */  lw         $t4, 0x50($sp)
/* B480C 800B3C0C 252A0008 */  addiu      $t2, $t1, 8
/* B4810 800B3C10 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B4814 800B3C14 AD8B0000 */  sw         $t3, ($t4)
/* B4818 800B3C18 8FAD0050 */  lw         $t5, 0x50($sp)
/* B481C 800B3C1C ADA00004 */  sw         $zero, 4($t5)
/* B4820 800B3C20 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B4824 800B3C24 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B4828 800B3C28 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B482C 800B3C2C 3C180600 */  lui        $t8, 0x600
/* B4830 800B3C30 AFAE004C */  sw         $t6, 0x4c($sp)
/* B4834 800B3C34 8FB9004C */  lw         $t9, 0x4c($sp)
/* B4838 800B3C38 25CF0008 */  addiu      $t7, $t6, 8
/* B483C 800B3C3C AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* B4840 800B3C40 AF380000 */  sw         $t8, ($t9)
/* B4844 800B3C44 8FA9004C */  lw         $t1, 0x4c($sp)
/* B4848 800B3C48 3C088018 */  lui        $t0, %hi(D_8017A1F0)
/* B484C 800B3C4C 2508A1F0 */  addiu      $t0, $t0, %lo(D_8017A1F0)
/* B4850 800B3C50 AD280004 */  sw         $t0, 4($t1)
/* B4854 800B3C54 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B4858 800B3C58 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B485C 800B3C5C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4860 800B3C60 3C0CBC00 */  lui        $t4, 0xbc00
/* B4864 800B3C64 AFAA0048 */  sw         $t2, 0x48($sp)
/* B4868 800B3C68 8FAD0048 */  lw         $t5, 0x48($sp)
/* B486C 800B3C6C 254B0008 */  addiu      $t3, $t2, 8
/* B4870 800B3C70 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B4874 800B3C74 358C0008 */  ori        $t4, $t4, 8
/* B4878 800B3C78 ADAC0000 */  sw         $t4, ($t5)
/* B487C 800B3C7C 3C0E800D */  lui        $t6, %hi(D_800D6718)
/* B4880 800B3C80 3C0F800D */  lui        $t7, %hi(D_800D6714)
/* B4884 800B3C84 8DEF6714 */  lw         $t7, %lo(D_800D6714)($t7)
/* B4888 800B3C88 8DCE6718 */  lw         $t6, %lo(D_800D6718)($t6)
/* B488C 800B3C8C 3C190001 */  lui        $t9, 1
/* B4890 800B3C90 3739F400 */  ori        $t9, $t9, 0xf400
/* B4894 800B3C94 01CFC023 */  subu       $t8, $t6, $t7
/* B4898 800B3C98 0338001A */  div        $zero, $t9, $t8
/* B489C 800B3C9C 17000002 */  bnez       $t8, .L800B3CA8
/* B48A0 800B3CA0 00000000 */   nop
/* B48A4 800B3CA4 0007000D */  break      7
.L800B3CA8:
/* B48A8 800B3CA8 2401FFFF */   addiu     $at, $zero, -1
/* B48AC 800B3CAC 17010004 */  bne        $t8, $at, .L800B3CC0
/* B48B0 800B3CB0 3C018000 */   lui       $at, 0x8000
/* B48B4 800B3CB4 17210002 */  bne        $t9, $at, .L800B3CC0
/* B48B8 800B3CB8 00000000 */   nop
/* B48BC 800B3CBC 0006000D */  break      6
.L800B3CC0:
/* B48C0 800B3CC0 000F5823 */   negu      $t3, $t7
/* B48C4 800B3CC4 000B6200 */  sll        $t4, $t3, 8
/* B48C8 800B3CC8 03200821 */  addu       $at, $t9, $zero
/* B48CC 800B3CCC 01816821 */  addu       $t5, $t4, $at
/* B48D0 800B3CD0 00004012 */  mflo       $t0
/* B48D4 800B3CD4 3109FFFF */  andi       $t1, $t0, 0xffff
/* B48D8 800B3CD8 00095400 */  sll        $t2, $t1, 0x10
/* B48DC 800B3CDC 01B8001A */  div        $zero, $t5, $t8
/* B48E0 800B3CE0 8FA90048 */  lw         $t1, 0x48($sp)
/* B48E4 800B3CE4 00007012 */  mflo       $t6
/* B48E8 800B3CE8 31D9FFFF */  andi       $t9, $t6, 0xffff
/* B48EC 800B3CEC 01594025 */  or         $t0, $t2, $t9
/* B48F0 800B3CF0 17000002 */  bnez       $t8, .L800B3CFC
/* B48F4 800B3CF4 00000000 */   nop
/* B48F8 800B3CF8 0007000D */  break      7
.L800B3CFC:
/* B48FC 800B3CFC 2401FFFF */   addiu     $at, $zero, -1
/* B4900 800B3D00 17010004 */  bne        $t8, $at, .L800B3D14
/* B4904 800B3D04 3C018000 */   lui       $at, 0x8000
/* B4908 800B3D08 15A10002 */  bne        $t5, $at, .L800B3D14
/* B490C 800B3D0C 00000000 */   nop
/* B4910 800B3D10 0006000D */  break      6
.L800B3D14:
/* B4914 800B3D14 AD280004 */   sw        $t0, 4($t1)
/* B4918 800B3D18 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* B491C 800B3D1C 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* B4920 800B3D20 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B4924 800B3D24 3C0CF800 */  lui        $t4, 0xf800
/* B4928 800B3D28 AFAF0044 */  sw         $t7, 0x44($sp)
/* B492C 800B3D2C 8FAD0044 */  lw         $t5, 0x44($sp)
/* B4930 800B3D30 25EB0008 */  addiu      $t3, $t7, 8
/* B4934 800B3D34 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B4938 800B3D38 ADAC0000 */  sw         $t4, ($t5)
/* B493C 800B3D3C 8FAE0044 */  lw         $t6, 0x44($sp)
/* B4940 800B3D40 241800FF */  addiu      $t8, $zero, 0xff
/* B4944 800B3D44 ADD80004 */  sw         $t8, 4($t6)
/* B4948 800B3D48 3C0A800E */  lui        $t2, %hi(D_800D9FA0)
/* B494C 800B3D4C 8D4A9FA0 */  lw         $t2, %lo(D_800D9FA0)($t2)
/* B4950 800B3D50 3C058017 */  lui        $a1, 0x8017
/* B4954 800B3D54 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4958 800B3D58 000AC880 */  sll        $t9, $t2, 2
/* B495C 800B3D5C 032AC821 */  addu       $t9, $t9, $t2
/* B4960 800B3D60 0019C8C0 */  sll        $t9, $t9, 3
/* B4964 800B3D64 032AC821 */  addu       $t9, $t9, $t2
/* B4968 800B3D68 0019C880 */  sll        $t9, $t9, 2
/* B496C 800B3D6C 00B92821 */  addu       $a1, $a1, $t9
/* B4970 800B3D70 0C03313D */  jal        func_800CC4F4
/* B4974 800B3D74 8CA56E74 */   lw        $a1, 0x6e74($a1)
/* B4978 800B3D78 3C08800D */  lui        $t0, %hi(D_800D6248)
/* B497C 800B3D7C 8D086248 */  lw         $t0, %lo(D_800D6248)($t0)
/* B4980 800B3D80 3109000F */  andi       $t1, $t0, 0xf
/* B4984 800B3D84 2D210008 */  sltiu      $at, $t1, 8
/* B4988 800B3D88 10200013 */  beqz       $at, .L800B3DD8
/* B498C 800B3D8C 00000000 */   nop
/* B4990 800B3D90 0C033527 */  jal        func_800CD49C
/* B4994 800B3D94 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B4998 800B3D98 00408025 */  or         $s0, $v0, $zero
/* B499C 800B3D9C 3C013F80 */  lui        $at, 0x3f80
/* B49A0 800B3DA0 44818000 */  mtc1       $at, $f16
/* B49A4 800B3DA4 001078C0 */  sll        $t7, $s0, 3
/* B49A8 800B3DA8 240B0140 */  addiu      $t3, $zero, 0x140
/* B49AC 800B3DAC 016F2823 */  subu       $a1, $t3, $t7
/* B49B0 800B3DB0 00052842 */  srl        $a1, $a1, 1
/* B49B4 800B3DB4 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B49B8 800B3DB8 240600D0 */  addiu      $a2, $zero, 0xd0
/* B49BC 800B3DBC 3C073F80 */  lui        $a3, 0x3f80
/* B49C0 800B3DC0 AFA00014 */  sw         $zero, 0x14($sp)
/* B49C4 800B3DC4 AFA00018 */  sw         $zero, 0x18($sp)
/* B49C8 800B3DC8 0C003359 */  jal        func_8000CD64
/* B49CC 800B3DCC E7B00010 */   swc1      $f16, 0x10($sp)
/* B49D0 800B3DD0 10000012 */  b          .L800B3E1C
/* B49D4 800B3DD4 00000000 */   nop
.L800B3DD8:
/* B49D8 800B3DD8 0C033527 */  jal        func_800CD49C
/* B49DC 800B3DDC 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B49E0 800B3DE0 00408025 */  or         $s0, $v0, $zero
/* B49E4 800B3DE4 3C013F80 */  lui        $at, 0x3f80
/* B49E8 800B3DE8 44819000 */  mtc1       $at, $f18
/* B49EC 800B3DEC 001060C0 */  sll        $t4, $s0, 3
/* B49F0 800B3DF0 240D0140 */  addiu      $t5, $zero, 0x140
/* B49F4 800B3DF4 01AC2823 */  subu       $a1, $t5, $t4
/* B49F8 800B3DF8 24180001 */  addiu      $t8, $zero, 1
/* B49FC 800B3DFC AFB80018 */  sw         $t8, 0x18($sp)
/* B4A00 800B3E00 00052842 */  srl        $a1, $a1, 1
/* B4A04 800B3E04 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4A08 800B3E08 240600D0 */  addiu      $a2, $zero, 0xd0
/* B4A0C 800B3E0C 3C073F80 */  lui        $a3, 0x3f80
/* B4A10 800B3E10 AFA00014 */  sw         $zero, 0x14($sp)
/* B4A14 800B3E14 0C003359 */  jal        func_8000CD64
/* B4A18 800B3E18 E7B20010 */   swc1      $f18, 0x10($sp)
.L800B3E1C:
/* B4A1C 800B3E1C 3C0E8014 */  lui        $t6, %hi(D_80144280)
/* B4A20 800B3E20 8DCE4280 */  lw         $t6, %lo(D_80144280)($t6)
/* B4A24 800B3E24 11C00036 */  beqz       $t6, .L800B3F00
/* B4A28 800B3E28 00000000 */   nop
/* B4A2C 800B3E2C 3C0A800E */  lui        $t2, %hi(D_800D9FA0)
/* B4A30 800B3E30 8D4A9FA0 */  lw         $t2, %lo(D_800D9FA0)($t2)
/* B4A34 800B3E34 3C058017 */  lui        $a1, 0x8017
/* B4A38 800B3E38 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4A3C 800B3E3C 000AC880 */  sll        $t9, $t2, 2
/* B4A40 800B3E40 032AC821 */  addu       $t9, $t9, $t2
/* B4A44 800B3E44 0019C8C0 */  sll        $t9, $t9, 3
/* B4A48 800B3E48 032AC821 */  addu       $t9, $t9, $t2
/* B4A4C 800B3E4C 0019C880 */  sll        $t9, $t9, 2
/* B4A50 800B3E50 00B92821 */  addu       $a1, $a1, $t9
/* B4A54 800B3E54 0C03313D */  jal        func_800CC4F4
/* B4A58 800B3E58 8CA56E78 */   lw        $a1, 0x6e78($a1)
/* B4A5C 800B3E5C 3C08800D */  lui        $t0, %hi(D_800D6248)
/* B4A60 800B3E60 8D086248 */  lw         $t0, %lo(D_800D6248)($t0)
/* B4A64 800B3E64 3109000F */  andi       $t1, $t0, 0xf
/* B4A68 800B3E68 2D210008 */  sltiu      $at, $t1, 8
/* B4A6C 800B3E6C 10200013 */  beqz       $at, .L800B3EBC
/* B4A70 800B3E70 00000000 */   nop
/* B4A74 800B3E74 0C033527 */  jal        func_800CD49C
/* B4A78 800B3E78 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B4A7C 800B3E7C 00408025 */  or         $s0, $v0, $zero
/* B4A80 800B3E80 3C013F80 */  lui        $at, 0x3f80
/* B4A84 800B3E84 44812000 */  mtc1       $at, $f4
/* B4A88 800B3E88 001058C0 */  sll        $t3, $s0, 3
/* B4A8C 800B3E8C 240F0140 */  addiu      $t7, $zero, 0x140
/* B4A90 800B3E90 01EB2823 */  subu       $a1, $t7, $t3
/* B4A94 800B3E94 00052842 */  srl        $a1, $a1, 1
/* B4A98 800B3E98 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4A9C 800B3E9C 240600D8 */  addiu      $a2, $zero, 0xd8
/* B4AA0 800B3EA0 3C073F80 */  lui        $a3, 0x3f80
/* B4AA4 800B3EA4 AFA00014 */  sw         $zero, 0x14($sp)
/* B4AA8 800B3EA8 AFA00018 */  sw         $zero, 0x18($sp)
/* B4AAC 800B3EAC 0C003359 */  jal        func_8000CD64
/* B4AB0 800B3EB0 E7A40010 */   swc1      $f4, 0x10($sp)
/* B4AB4 800B3EB4 10000012 */  b          .L800B3F00
/* B4AB8 800B3EB8 00000000 */   nop
.L800B3EBC:
/* B4ABC 800B3EBC 0C033527 */  jal        func_800CD49C
/* B4AC0 800B3EC0 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B4AC4 800B3EC4 00408025 */  or         $s0, $v0, $zero
/* B4AC8 800B3EC8 3C013F80 */  lui        $at, 0x3f80
/* B4ACC 800B3ECC 44813000 */  mtc1       $at, $f6
/* B4AD0 800B3ED0 001068C0 */  sll        $t5, $s0, 3
/* B4AD4 800B3ED4 240C0140 */  addiu      $t4, $zero, 0x140
/* B4AD8 800B3ED8 018D2823 */  subu       $a1, $t4, $t5
/* B4ADC 800B3EDC 24180001 */  addiu      $t8, $zero, 1
/* B4AE0 800B3EE0 AFB80018 */  sw         $t8, 0x18($sp)
/* B4AE4 800B3EE4 00052842 */  srl        $a1, $a1, 1
/* B4AE8 800B3EE8 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4AEC 800B3EEC 240600D8 */  addiu      $a2, $zero, 0xd8
/* B4AF0 800B3EF0 3C073F80 */  lui        $a3, 0x3f80
/* B4AF4 800B3EF4 AFA00014 */  sw         $zero, 0x14($sp)
/* B4AF8 800B3EF8 0C003359 */  jal        func_8000CD64
/* B4AFC 800B3EFC E7A60010 */   swc1      $f6, 0x10($sp)
.L800B3F00:
/* B4B00 800B3F00 3C0E8014 */  lui        $t6, %hi(D_8014427A)
/* B4B04 800B3F04 85CE427A */  lh         $t6, %lo(D_8014427A)($t6)
/* B4B08 800B3F08 11C00039 */  beqz       $t6, .L800B3FF0
/* B4B0C 800B3F0C 00000000 */   nop
/* B4B10 800B3F10 05C1001A */  bgez       $t6, .L800B3F7C
/* B4B14 800B3F14 00000000 */   nop
/* B4B18 800B3F18 25CAFFFF */  addiu      $t2, $t6, -1
/* B4B1C 800B3F1C 3C018014 */  lui        $at, %hi(D_8014427A)
/* B4B20 800B3F20 000ACC00 */  sll        $t9, $t2, 0x10
/* B4B24 800B3F24 A42A427A */  sh         $t2, %lo(D_8014427A)($at)
/* B4B28 800B3F28 00194403 */  sra        $t0, $t9, 0x10
/* B4B2C 800B3F2C 2901FFF8 */  slti       $at, $t0, -8
/* B4B30 800B3F30 10200012 */  beqz       $at, .L800B3F7C
/* B4B34 800B3F34 00000000 */   nop
/* B4B38 800B3F38 3C098014 */  lui        $t1, %hi(D_80144290)
/* B4B3C 800B3F3C 8D294290 */  lw         $t1, %lo(D_80144290)($t1)
/* B4B40 800B3F40 3C018014 */  lui        $at, %hi(D_8014427A)
/* B4B44 800B3F44 A420427A */  sh         $zero, %lo(D_8014427A)($at)
/* B4B48 800B3F48 15200007 */  bnez       $t1, .L800B3F68
/* B4B4C 800B3F4C 00000000 */   nop
/* B4B50 800B3F50 3C0F8014 */  lui        $t7, %hi(D_80144278)
/* B4B54 800B3F54 85EF4278 */  lh         $t7, %lo(D_80144278)($t7)
/* B4B58 800B3F58 3C018014 */  lui        $at, %hi(D_80144278)
/* B4B5C 800B3F5C 25EBFFFF */  addiu      $t3, $t7, -1
/* B4B60 800B3F60 10000006 */  b          .L800B3F7C
/* B4B64 800B3F64 A42B4278 */   sh        $t3, %lo(D_80144278)($at)
.L800B3F68:
/* B4B68 800B3F68 3C0C8014 */  lui        $t4, %hi(D_8014427C)
/* B4B6C 800B3F6C 858C427C */  lh         $t4, %lo(D_8014427C)($t4)
/* B4B70 800B3F70 3C018014 */  lui        $at, %hi(D_8014427C)
/* B4B74 800B3F74 258DFFFF */  addiu      $t5, $t4, -1
/* B4B78 800B3F78 A42D427C */  sh         $t5, %lo(D_8014427C)($at)
.L800B3F7C:
/* B4B7C 800B3F7C 3C188014 */  lui        $t8, %hi(D_8014427A)
/* B4B80 800B3F80 8718427A */  lh         $t8, %lo(D_8014427A)($t8)
/* B4B84 800B3F84 1B00001A */  blez       $t8, .L800B3FF0
/* B4B88 800B3F88 00000000 */   nop
/* B4B8C 800B3F8C 270E0001 */  addiu      $t6, $t8, 1
/* B4B90 800B3F90 3C018014 */  lui        $at, %hi(D_8014427A)
/* B4B94 800B3F94 000E5400 */  sll        $t2, $t6, 0x10
/* B4B98 800B3F98 A42E427A */  sh         $t6, %lo(D_8014427A)($at)
/* B4B9C 800B3F9C 000ACC03 */  sra        $t9, $t2, 0x10
/* B4BA0 800B3FA0 2B210009 */  slti       $at, $t9, 9
/* B4BA4 800B3FA4 14200012 */  bnez       $at, .L800B3FF0
/* B4BA8 800B3FA8 00000000 */   nop
/* B4BAC 800B3FAC 3C088014 */  lui        $t0, %hi(D_80144290)
/* B4BB0 800B3FB0 8D084290 */  lw         $t0, %lo(D_80144290)($t0)
/* B4BB4 800B3FB4 3C018014 */  lui        $at, %hi(D_8014427A)
/* B4BB8 800B3FB8 A420427A */  sh         $zero, %lo(D_8014427A)($at)
/* B4BBC 800B3FBC 15000007 */  bnez       $t0, .L800B3FDC
/* B4BC0 800B3FC0 00000000 */   nop
/* B4BC4 800B3FC4 3C098014 */  lui        $t1, %hi(D_80144278)
/* B4BC8 800B3FC8 85294278 */  lh         $t1, %lo(D_80144278)($t1)
/* B4BCC 800B3FCC 3C018014 */  lui        $at, %hi(D_80144278)
/* B4BD0 800B3FD0 252F0001 */  addiu      $t7, $t1, 1
/* B4BD4 800B3FD4 10000006 */  b          .L800B3FF0
/* B4BD8 800B3FD8 A42F4278 */   sh        $t7, %lo(D_80144278)($at)
.L800B3FDC:
/* B4BDC 800B3FDC 3C0B8014 */  lui        $t3, %hi(D_8014427C)
/* B4BE0 800B3FE0 856B427C */  lh         $t3, %lo(D_8014427C)($t3)
/* B4BE4 800B3FE4 3C018014 */  lui        $at, %hi(D_8014427C)
/* B4BE8 800B3FE8 256C0001 */  addiu      $t4, $t3, 1
/* B4BEC 800B3FEC A42C427C */  sh         $t4, %lo(D_8014427C)($at)
.L800B3FF0:
/* B4BF0 800B3FF0 3C0D800F */  lui        $t5, %hi(D_800EA0D8)
/* B4BF4 800B3FF4 25ADA0D8 */  addiu      $t5, $t5, %lo(D_800EA0D8)
/* B4BF8 800B3FF8 95B80000 */  lhu        $t8, ($t5)
/* B4BFC 800B3FFC 330E1000 */  andi       $t6, $t8, 0x1000
/* B4C00 800B4000 11C00028 */  beqz       $t6, .L800B40A4
/* B4C04 800B4004 00000000 */   nop
/* B4C08 800B4008 3C0A8014 */  lui        $t2, %hi(D_8014428C)
/* B4C0C 800B400C 8D4A428C */  lw         $t2, %lo(D_8014428C)($t2)
/* B4C10 800B4010 15400026 */  bnez       $t2, .L800B40AC
/* B4C14 800B4014 00000000 */   nop
/* B4C18 800B4018 24190001 */  addiu      $t9, $zero, 1
/* B4C1C 800B401C 3C018014 */  lui        $at, %hi(D_8014428C)
/* B4C20 800B4020 AC39428C */  sw         $t9, %lo(D_8014428C)($at)
/* B4C24 800B4024 3C018014 */  lui        $at, %hi(D_8014427E)
/* B4C28 800B4028 24080001 */  addiu      $t0, $zero, 1
/* B4C2C 800B402C A428427E */  sh         $t0, %lo(D_8014427E)($at)
/* B4C30 800B4030 0C000BA0 */  jal        func_80002E80
/* B4C34 800B4034 24040001 */   addiu     $a0, $zero, 1
/* B4C38 800B4038 3C018014 */  lui        $at, %hi(D_80144280)
/* B4C3C 800B403C AC224280 */  sw         $v0, %lo(D_80144280)($at)
/* B4C40 800B4040 3C098014 */  lui        $t1, %hi(D_80144280)
/* B4C44 800B4044 8D294280 */  lw         $t1, %lo(D_80144280)($t1)
/* B4C48 800B4048 15200018 */  bnez       $t1, .L800B40AC
/* B4C4C 800B404C 00000000 */   nop
/* B4C50 800B4050 3C0F800F */  lui        $t7, %hi(D_800E8EA4)
/* B4C54 800B4054 8DEF8EA4 */  lw         $t7, %lo(D_800E8EA4)($t7)
/* B4C58 800B4058 05E10003 */  bgez       $t7, .L800B4068
/* B4C5C 800B405C 000F5A03 */   sra       $t3, $t7, 8
/* B4C60 800B4060 25E100FF */  addiu      $at, $t7, 0xff
/* B4C64 800B4064 00015A03 */  sra        $t3, $at, 8
.L800B4068:
/* B4C68 800B4068 19600006 */  blez       $t3, .L800B4084
/* B4C6C 800B406C 00000000 */   nop
/* B4C70 800B4070 3C0C800F */  lui        $t4, %hi(D_800E8EA0)
/* B4C74 800B4074 8D8C8EA0 */  lw         $t4, %lo(D_800E8EA0)($t4)
/* B4C78 800B4078 24010010 */  addiu      $at, $zero, 0x10
/* B4C7C 800B407C 1581000B */  bne        $t4, $at, .L800B40AC
/* B4C80 800B4080 00000000 */   nop
.L800B4084:
/* B4C84 800B4084 240D0001 */  addiu      $t5, $zero, 1
/* B4C88 800B4088 3C018018 */  lui        $at, %hi(D_801798FC)
/* B4C8C 800B408C A42D98FC */  sh         $t5, %lo(D_801798FC)($at)
/* B4C90 800B4090 3C018018 */  lui        $at, %hi(D_8017A2B4)
/* B4C94 800B4094 24180001 */  addiu      $t8, $zero, 1
/* B4C98 800B4098 A438A2B4 */  sh         $t8, %lo(D_8017A2B4)($at)
/* B4C9C 800B409C 10000003 */  b          .L800B40AC
/* B4CA0 800B40A0 00000000 */   nop
.L800B40A4:
/* B4CA4 800B40A4 3C018014 */  lui        $at, %hi(D_8014428C)
/* B4CA8 800B40A8 AC20428C */  sw         $zero, %lo(D_8014428C)($at)
.L800B40AC:
/* B4CAC 800B40AC 3C0E800F */  lui        $t6, %hi(D_800EA0D8)
/* B4CB0 800B40B0 25CEA0D8 */  addiu      $t6, $t6, %lo(D_800EA0D8)
/* B4CB4 800B40B4 95CA0000 */  lhu        $t2, ($t6)
/* B4CB8 800B40B8 31594000 */  andi       $t9, $t2, 0x4000
/* B4CBC 800B40BC 13200013 */  beqz       $t9, .L800B410C
/* B4CC0 800B40C0 00000000 */   nop
/* B4CC4 800B40C4 3C088014 */  lui        $t0, %hi(D_80144288)
/* B4CC8 800B40C8 8D084288 */  lw         $t0, %lo(D_80144288)($t0)
/* B4CCC 800B40CC 15000011 */  bnez       $t0, .L800B4114
/* B4CD0 800B40D0 00000000 */   nop
/* B4CD4 800B40D4 24090001 */  addiu      $t1, $zero, 1
/* B4CD8 800B40D8 3C018014 */  lui        $at, %hi(D_80144288)
/* B4CDC 800B40DC AC294288 */  sw         $t1, %lo(D_80144288)($at)
/* B4CE0 800B40E0 3C018014 */  lui        $at, %hi(D_80144278)
/* B4CE4 800B40E4 A4204278 */  sh         $zero, %lo(D_80144278)($at)
/* B4CE8 800B40E8 3C018014 */  lui        $at, %hi(D_8014427A)
/* B4CEC 800B40EC A420427A */  sh         $zero, %lo(D_8014427A)($at)
/* B4CF0 800B40F0 3C018014 */  lui        $at, %hi(D_80144290)
/* B4CF4 800B40F4 AC204290 */  sw         $zero, %lo(D_80144290)($at)
/* B4CF8 800B40F8 0C000BA0 */  jal        func_80002E80
/* B4CFC 800B40FC 24040001 */   addiu     $a0, $zero, 1
/* B4D00 800B4100 3C018014 */  lui        $at, %hi(D_80144280)
/* B4D04 800B4104 10000003 */  b          .L800B4114
/* B4D08 800B4108 AC224280 */   sw        $v0, %lo(D_80144280)($at)
.L800B410C:
/* B4D0C 800B410C 3C018014 */  lui        $at, %hi(D_80144288)
/* B4D10 800B4110 AC204288 */  sw         $zero, %lo(D_80144288)($at)
.L800B4114:
/* B4D14 800B4114 3C0F8014 */  lui        $t7, %hi(D_80144280)
/* B4D18 800B4118 8DEF4280 */  lw         $t7, %lo(D_80144280)($t7)
/* B4D1C 800B411C 11E000A7 */  beqz       $t7, .L800B43BC
/* B4D20 800B4120 2401FFFE */   addiu     $at, $zero, -2
/* B4D24 800B4124 11E100A5 */  beq        $t7, $at, .L800B43BC
/* B4D28 800B4128 00000000 */   nop
/* B4D2C 800B412C 01E08025 */  or         $s0, $t7, $zero
/* B4D30 800B4130 2401FFEC */  addiu      $at, $zero, -0x14
/* B4D34 800B4134 12010022 */  beq        $s0, $at, .L800B41C0
/* B4D38 800B4138 A7A000D4 */   sh        $zero, 0xd4($sp)
/* B4D3C 800B413C 2401FFFD */  addiu      $at, $zero, -3
/* B4D40 800B4140 12010011 */  beq        $s0, $at, .L800B4188
/* B4D44 800B4144 2401FFFF */   addiu     $at, $zero, -1
/* B4D48 800B4148 16010029 */  bne        $s0, $at, .L800B41F0
/* B4D4C 800B414C 00000000 */   nop
/* B4D50 800B4150 3C0B800E */  lui        $t3, %hi(D_800D9FA0)
/* B4D54 800B4154 8D6B9FA0 */  lw         $t3, %lo(D_800D9FA0)($t3)
/* B4D58 800B4158 3C058017 */  lui        $a1, 0x8017
/* B4D5C 800B415C 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4D60 800B4160 000B6080 */  sll        $t4, $t3, 2
/* B4D64 800B4164 018B6021 */  addu       $t4, $t4, $t3
/* B4D68 800B4168 000C60C0 */  sll        $t4, $t4, 3
/* B4D6C 800B416C 018B6021 */  addu       $t4, $t4, $t3
/* B4D70 800B4170 000C6080 */  sll        $t4, $t4, 2
/* B4D74 800B4174 00AC2821 */  addu       $a1, $a1, $t4
/* B4D78 800B4178 0C03313D */  jal        func_800CC4F4
/* B4D7C 800B417C 8CA56E20 */   lw        $a1, 0x6e20($a1)
/* B4D80 800B4180 1000001B */  b          .L800B41F0
/* B4D84 800B4184 00000000 */   nop
.L800B4188:
/* B4D88 800B4188 3C0D800E */  lui        $t5, %hi(D_800D9FA0)
/* B4D8C 800B418C 8DAD9FA0 */  lw         $t5, %lo(D_800D9FA0)($t5)
/* B4D90 800B4190 3C058017 */  lui        $a1, 0x8017
/* B4D94 800B4194 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4D98 800B4198 000DC080 */  sll        $t8, $t5, 2
/* B4D9C 800B419C 030DC021 */  addu       $t8, $t8, $t5
/* B4DA0 800B41A0 0018C0C0 */  sll        $t8, $t8, 3
/* B4DA4 800B41A4 030DC021 */  addu       $t8, $t8, $t5
/* B4DA8 800B41A8 0018C080 */  sll        $t8, $t8, 2
/* B4DAC 800B41AC 00B82821 */  addu       $a1, $a1, $t8
/* B4DB0 800B41B0 0C03313D */  jal        func_800CC4F4
/* B4DB4 800B41B4 8CA56E24 */   lw        $a1, 0x6e24($a1)
/* B4DB8 800B41B8 1000000D */  b          .L800B41F0
/* B4DBC 800B41BC 00000000 */   nop
.L800B41C0:
/* B4DC0 800B41C0 3C0E800E */  lui        $t6, %hi(D_800D9FA0)
/* B4DC4 800B41C4 8DCE9FA0 */  lw         $t6, %lo(D_800D9FA0)($t6)
/* B4DC8 800B41C8 3C058017 */  lui        $a1, 0x8017
/* B4DCC 800B41CC 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4DD0 800B41D0 000E5080 */  sll        $t2, $t6, 2
/* B4DD4 800B41D4 014E5021 */  addu       $t2, $t2, $t6
/* B4DD8 800B41D8 000A50C0 */  sll        $t2, $t2, 3
/* B4DDC 800B41DC 014E5021 */  addu       $t2, $t2, $t6
/* B4DE0 800B41E0 000A5080 */  sll        $t2, $t2, 2
/* B4DE4 800B41E4 00AA2821 */  addu       $a1, $a1, $t2
/* B4DE8 800B41E8 0C03313D */  jal        func_800CC4F4
/* B4DEC 800B41EC 8CA56E28 */   lw        $a1, 0x6e28($a1)
.L800B41F0:
/* B4DF0 800B41F0 0C033527 */  jal        func_800CD49C
/* B4DF4 800B41F4 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B4DF8 800B41F8 87A600D4 */  lh         $a2, 0xd4($sp)
/* B4DFC 800B41FC 00408025 */  or         $s0, $v0, $zero
/* B4E00 800B4200 0010C8C0 */  sll        $t9, $s0, 3
/* B4E04 800B4204 00C00821 */  addu       $at, $a2, $zero
/* B4E08 800B4208 000130C0 */  sll        $a2, $at, 3
/* B4E0C 800B420C 00C13021 */  addu       $a2, $a2, $at
/* B4E10 800B4210 3C013F80 */  lui        $at, 0x3f80
/* B4E14 800B4214 44814000 */  mtc1       $at, $f8
/* B4E18 800B4218 24080140 */  addiu      $t0, $zero, 0x140
/* B4E1C 800B421C 01192823 */  subu       $a1, $t0, $t9
/* B4E20 800B4220 00052842 */  srl        $a1, $a1, 1
/* B4E24 800B4224 24C60010 */  addiu      $a2, $a2, 0x10
/* B4E28 800B4228 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4E2C 800B422C 3C073F80 */  lui        $a3, 0x3f80
/* B4E30 800B4230 AFA00014 */  sw         $zero, 0x14($sp)
/* B4E34 800B4234 AFA00018 */  sw         $zero, 0x18($sp)
/* B4E38 800B4238 0C003359 */  jal        func_8000CD64
/* B4E3C 800B423C E7A80010 */   swc1      $f8, 0x10($sp)
/* B4E40 800B4240 87A900D4 */  lh         $t1, 0xd4($sp)
/* B4E44 800B4244 00002025 */  or         $a0, $zero, $zero
/* B4E48 800B4248 24060140 */  addiu      $a2, $zero, 0x140
/* B4E4C 800B424C 252F0001 */  addiu      $t7, $t1, 1
/* B4E50 800B4250 000F5C00 */  sll        $t3, $t7, 0x10
/* B4E54 800B4254 000B6403 */  sra        $t4, $t3, 0x10
/* B4E58 800B4258 258D0001 */  addiu      $t5, $t4, 1
/* B4E5C 800B425C A7AF00D4 */  sh         $t7, 0xd4($sp)
/* B4E60 800B4260 000DC400 */  sll        $t8, $t5, 0x10
/* B4E64 800B4264 00187403 */  sra        $t6, $t8, 0x10
/* B4E68 800B4268 3C0F8014 */  lui        $t7, %hi(D_80144278)
/* B4E6C 800B426C 85EF4278 */  lh         $t7, %lo(D_80144278)($t7)
/* B4E70 800B4270 25CA0001 */  addiu      $t2, $t6, 1
/* B4E74 800B4274 A7AD00D4 */  sh         $t5, 0xd4($sp)
/* B4E78 800B4278 000A4400 */  sll        $t0, $t2, 0x10
/* B4E7C 800B427C 0008CC03 */  sra        $t9, $t0, 0x10
/* B4E80 800B4280 3C0D8014 */  lui        $t5, %hi(D_8014427A)
/* B4E84 800B4284 85AD427A */  lh         $t5, %lo(D_8014427A)($t5)
/* B4E88 800B4288 001948C0 */  sll        $t1, $t9, 3
/* B4E8C 800B428C 000F58C0 */  sll        $t3, $t7, 3
/* B4E90 800B4290 01394821 */  addu       $t1, $t1, $t9
/* B4E94 800B4294 016F5821 */  addu       $t3, $t3, $t7
/* B4E98 800B4298 A7AA00D4 */  sh         $t2, 0xd4($sp)
/* B4E9C 800B429C 012B6021 */  addu       $t4, $t1, $t3
/* B4EA0 800B42A0 240A001F */  addiu      $t2, $zero, 0x1f
/* B4EA4 800B42A4 240800FF */  addiu      $t0, $zero, 0xff
/* B4EA8 800B42A8 240E003F */  addiu      $t6, $zero, 0x3f
/* B4EAC 800B42AC 2418007F */  addiu      $t8, $zero, 0x7f
/* B4EB0 800B42B0 018D2821 */  addu       $a1, $t4, $t5
/* B4EB4 800B42B4 24A5000F */  addiu      $a1, $a1, 0xf
/* B4EB8 800B42B8 AFB80010 */  sw         $t8, 0x10($sp)
/* B4EBC 800B42BC AFAE0014 */  sw         $t6, 0x14($sp)
/* B4EC0 800B42C0 AFA8001C */  sw         $t0, 0x1c($sp)
/* B4EC4 800B42C4 AFAA0018 */  sw         $t2, 0x18($sp)
/* B4EC8 800B42C8 0C003A0C */  jal        func_8000E830
/* B4ECC 800B42CC 24070009 */   addiu     $a3, $zero, 9
/* B4ED0 800B42D0 3C19800E */  lui        $t9, %hi(D_800D9FA0)
/* B4ED4 800B42D4 8F399FA0 */  lw         $t9, %lo(D_800D9FA0)($t9)
/* B4ED8 800B42D8 3C058017 */  lui        $a1, 0x8017
/* B4EDC 800B42DC 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4EE0 800B42E0 00197880 */  sll        $t7, $t9, 2
/* B4EE4 800B42E4 01F97821 */  addu       $t7, $t7, $t9
/* B4EE8 800B42E8 000F78C0 */  sll        $t7, $t7, 3
/* B4EEC 800B42EC 01F97821 */  addu       $t7, $t7, $t9
/* B4EF0 800B42F0 000F7880 */  sll        $t7, $t7, 2
/* B4EF4 800B42F4 00AF2821 */  addu       $a1, $a1, $t7
/* B4EF8 800B42F8 0C03313D */  jal        func_800CC4F4
/* B4EFC 800B42FC 8CA56DE8 */   lw        $a1, 0x6de8($a1)
/* B4F00 800B4300 0C033527 */  jal        func_800CD49C
/* B4F04 800B4304 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B4F08 800B4308 87A600D4 */  lh         $a2, 0xd4($sp)
/* B4F0C 800B430C 00408025 */  or         $s0, $v0, $zero
/* B4F10 800B4310 001048C0 */  sll        $t1, $s0, 3
/* B4F14 800B4314 00C00821 */  addu       $at, $a2, $zero
/* B4F18 800B4318 000130C0 */  sll        $a2, $at, 3
/* B4F1C 800B431C 00C13021 */  addu       $a2, $a2, $at
/* B4F20 800B4320 3C013F80 */  lui        $at, 0x3f80
/* B4F24 800B4324 44815000 */  mtc1       $at, $f10
/* B4F28 800B4328 240B0140 */  addiu      $t3, $zero, 0x140
/* B4F2C 800B432C 01692823 */  subu       $a1, $t3, $t1
/* B4F30 800B4330 00052842 */  srl        $a1, $a1, 1
/* B4F34 800B4334 24C60010 */  addiu      $a2, $a2, 0x10
/* B4F38 800B4338 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B4F3C 800B433C 3C073F80 */  lui        $a3, 0x3f80
/* B4F40 800B4340 AFA00014 */  sw         $zero, 0x14($sp)
/* B4F44 800B4344 AFA00018 */  sw         $zero, 0x18($sp)
/* B4F48 800B4348 0C003359 */  jal        func_8000CD64
/* B4F4C 800B434C E7AA0010 */   swc1      $f10, 0x10($sp)
/* B4F50 800B4350 3C018014 */  lui        $at, %hi(D_80144278)
/* B4F54 800B4354 A4204278 */  sh         $zero, %lo(D_80144278)($at)
/* B4F58 800B4358 3C018014 */  lui        $at, %hi(D_8014427A)
/* B4F5C 800B435C A420427A */  sh         $zero, %lo(D_8014427A)($at)
/* B4F60 800B4360 3C018014 */  lui        $at, %hi(D_80144290)
/* B4F64 800B4364 3C0C800F */  lui        $t4, %hi(D_800EA0D8)
/* B4F68 800B4368 AC204290 */  sw         $zero, %lo(D_80144290)($at)
/* B4F6C 800B436C 258CA0D8 */  addiu      $t4, $t4, %lo(D_800EA0D8)
/* B4F70 800B4370 958D0000 */  lhu        $t5, ($t4)
/* B4F74 800B4374 31B88000 */  andi       $t8, $t5, 0x8000
/* B4F78 800B4378 1300000D */  beqz       $t8, .L800B43B0
/* B4F7C 800B437C 00000000 */   nop
/* B4F80 800B4380 3C0E8014 */  lui        $t6, %hi(D_80144284)
/* B4F84 800B4384 8DCE4284 */  lw         $t6, %lo(D_80144284)($t6)
/* B4F88 800B4388 15C003ED */  bnez       $t6, .L800B5340
/* B4F8C 800B438C 00000000 */   nop
/* B4F90 800B4390 240A0001 */  addiu      $t2, $zero, 1
/* B4F94 800B4394 3C018014 */  lui        $at, %hi(D_80144284)
/* B4F98 800B4398 AC2A4284 */  sw         $t2, %lo(D_80144284)($at)
/* B4F9C 800B439C 0C000BA0 */  jal        func_80002E80
/* B4FA0 800B43A0 24040001 */   addiu     $a0, $zero, 1
/* B4FA4 800B43A4 3C018014 */  lui        $at, %hi(D_80144280)
/* B4FA8 800B43A8 100003E5 */  b          .L800B5340
/* B4FAC 800B43AC AC224280 */   sw        $v0, %lo(D_80144280)($at)
.L800B43B0:
/* B4FB0 800B43B0 3C018014 */  lui        $at, %hi(D_80144284)
/* B4FB4 800B43B4 100003E2 */  b          .L800B5340
/* B4FB8 800B43B8 AC204284 */   sw        $zero, %lo(D_80144284)($at)
.L800B43BC:
/* B4FBC 800B43BC 3C088014 */  lui        $t0, %hi(D_80144280)
/* B4FC0 800B43C0 8D084280 */  lw         $t0, %lo(D_80144280)($t0)
/* B4FC4 800B43C4 2401FFFE */  addiu      $at, $zero, -2
/* B4FC8 800B43C8 11010222 */  beq        $t0, $at, .L800B4C54
/* B4FCC 800B43CC 00000000 */   nop
/* B4FD0 800B43D0 3C0F8014 */  lui        $t7, %hi(D_80144290)
/* B4FD4 800B43D4 8DEF4290 */  lw         $t7, %lo(D_80144290)($t7)
/* B4FD8 800B43D8 24190001 */  addiu      $t9, $zero, 1
/* B4FDC 800B43DC 3C01800D */  lui        $at, %hi(D_800D6520)
/* B4FE0 800B43E0 15E00017 */  bnez       $t7, .L800B4440
/* B4FE4 800B43E4 A4396520 */   sh        $t9, %lo(D_800D6520)($at)
/* B4FE8 800B43E8 3C0B8014 */  lui        $t3, %hi(D_80144278)
/* B4FEC 800B43EC 856B4278 */  lh         $t3, %lo(D_80144278)($t3)
/* B4FF0 800B43F0 3C0C8014 */  lui        $t4, %hi(D_8014427A)
/* B4FF4 800B43F4 858C427A */  lh         $t4, %lo(D_8014427A)($t4)
/* B4FF8 800B43F8 000B48C0 */  sll        $t1, $t3, 3
/* B4FFC 800B43FC 012B4821 */  addu       $t1, $t1, $t3
/* B5000 800B4400 240D001F */  addiu      $t5, $zero, 0x1f
/* B5004 800B4404 2418003F */  addiu      $t8, $zero, 0x3f
/* B5008 800B4408 240E007F */  addiu      $t6, $zero, 0x7f
/* B500C 800B440C 240A00FF */  addiu      $t2, $zero, 0xff
/* B5010 800B4410 012C2821 */  addu       $a1, $t1, $t4
/* B5014 800B4414 24A5000F */  addiu      $a1, $a1, 0xf
/* B5018 800B4418 AFAA001C */  sw         $t2, 0x1c($sp)
/* B501C 800B441C AFAE0018 */  sw         $t6, 0x18($sp)
/* B5020 800B4420 AFB80014 */  sw         $t8, 0x14($sp)
/* B5024 800B4424 AFAD0010 */  sw         $t5, 0x10($sp)
/* B5028 800B4428 00002025 */  or         $a0, $zero, $zero
/* B502C 800B442C 24060140 */  addiu      $a2, $zero, 0x140
/* B5030 800B4430 0C003A0C */  jal        func_8000E830
/* B5034 800B4434 24070009 */   addiu     $a3, $zero, 9
/* B5038 800B4438 10000013 */  b          .L800B4488
/* B503C 800B443C 00000000 */   nop
.L800B4440:
/* B5040 800B4440 3C058014 */  lui        $a1, %hi(D_80144278)
/* B5044 800B4444 84A54278 */  lh         $a1, %lo(D_80144278)($a1)
/* B5048 800B4448 2408001F */  addiu      $t0, $zero, 0x1f
/* B504C 800B444C 2419003F */  addiu      $t9, $zero, 0x3f
/* B5050 800B4450 00A00821 */  addu       $at, $a1, $zero
/* B5054 800B4454 000128C0 */  sll        $a1, $at, 3
/* B5058 800B4458 00A12821 */  addu       $a1, $a1, $at
/* B505C 800B445C 240F007F */  addiu      $t7, $zero, 0x7f
/* B5060 800B4460 240B00FF */  addiu      $t3, $zero, 0xff
/* B5064 800B4464 AFAB001C */  sw         $t3, 0x1c($sp)
/* B5068 800B4468 AFAF0018 */  sw         $t7, 0x18($sp)
/* B506C 800B446C 24A5000F */  addiu      $a1, $a1, 0xf
/* B5070 800B4470 AFB90014 */  sw         $t9, 0x14($sp)
/* B5074 800B4474 AFA80010 */  sw         $t0, 0x10($sp)
/* B5078 800B4478 00002025 */  or         $a0, $zero, $zero
/* B507C 800B447C 24060140 */  addiu      $a2, $zero, 0x140
/* B5080 800B4480 0C003A0C */  jal        func_8000E830
/* B5084 800B4484 24070009 */   addiu     $a3, $zero, 9
.L800B4488:
/* B5088 800B4488 3C09800F */  lui        $t1, %hi(D_800E8EA0)
/* B508C 800B448C 8D298EA0 */  lw         $t1, %lo(D_800E8EA0)($t1)
/* B5090 800B4490 11200054 */  beqz       $t1, .L800B45E4
/* B5094 800B4494 00000000 */   nop
/* B5098 800B4498 A7A000D4 */  sh         $zero, 0xd4($sp)
.L800B449C:
/* B509C 800B449C 3C0D800F */  lui        $t5, %hi(D_800E8EA0)
/* B50A0 800B44A0 8DAD8EA0 */  lw         $t5, %lo(D_800E8EA0)($t5)
/* B50A4 800B44A4 87AC00D4 */  lh         $t4, 0xd4($sp)
/* B50A8 800B44A8 018D082A */  slt        $at, $t4, $t5
/* B50AC 800B44AC 10200044 */  beqz       $at, .L800B45C0
/* B50B0 800B44B0 00000000 */   nop
/* B50B4 800B44B4 000CC080 */  sll        $t8, $t4, 2
/* B50B8 800B44B8 3C013F80 */  lui        $at, 0x3f80
/* B50BC 800B44BC 44818000 */  mtc1       $at, $f16
/* B50C0 800B44C0 030CC021 */  addu       $t8, $t8, $t4
/* B50C4 800B44C4 3C0E800F */  lui        $t6, %hi(D_800E96A8)
/* B50C8 800B44C8 000C30C0 */  sll        $a2, $t4, 3
/* B50CC 800B44CC 00CC3021 */  addu       $a2, $a2, $t4
/* B50D0 800B44D0 25CE96A8 */  addiu      $t6, $t6, %lo(D_800E96A8)
/* B50D4 800B44D4 0018C0C0 */  sll        $t8, $t8, 3
/* B50D8 800B44D8 030E2021 */  addu       $a0, $t8, $t6
/* B50DC 800B44DC 24C60010 */  addiu      $a2, $a2, 0x10
/* B50E0 800B44E0 24050034 */  addiu      $a1, $zero, 0x34
/* B50E4 800B44E4 3C073F80 */  lui        $a3, 0x3f80
/* B50E8 800B44E8 AFA00014 */  sw         $zero, 0x14($sp)
/* B50EC 800B44EC AFA00018 */  sw         $zero, 0x18($sp)
/* B50F0 800B44F0 0C003359 */  jal        func_8000CD64
/* B50F4 800B44F4 E7B00010 */   swc1      $f16, 0x10($sp)
/* B50F8 800B44F8 87AA00D4 */  lh         $t2, 0xd4($sp)
/* B50FC 800B44FC 3C013F80 */  lui        $at, 0x3f80
/* B5100 800B4500 44819000 */  mtc1       $at, $f18
/* B5104 800B4504 000A4080 */  sll        $t0, $t2, 2
/* B5108 800B4508 010A4021 */  addu       $t0, $t0, $t2
/* B510C 800B450C 000840C0 */  sll        $t0, $t0, 3
/* B5110 800B4510 3C0F800F */  lui        $t7, %hi(D_800E96A8)
/* B5114 800B4514 000A30C0 */  sll        $a2, $t2, 3
/* B5118 800B4518 25EF96A8 */  addiu      $t7, $t7, %lo(D_800E96A8)
/* B511C 800B451C 25190014 */  addiu      $t9, $t0, 0x14
/* B5120 800B4520 00CA3021 */  addu       $a2, $a2, $t2
/* B5124 800B4524 24C60010 */  addiu      $a2, $a2, 0x10
/* B5128 800B4528 032F2021 */  addu       $a0, $t9, $t7
/* B512C 800B452C 240500B4 */  addiu      $a1, $zero, 0xb4
/* B5130 800B4530 3C073F80 */  lui        $a3, 0x3f80
/* B5134 800B4534 AFA00014 */  sw         $zero, 0x14($sp)
/* B5138 800B4538 AFA00018 */  sw         $zero, 0x18($sp)
/* B513C 800B453C 0C003359 */  jal        func_8000CD64
/* B5140 800B4540 E7B20010 */   swc1      $f18, 0x10($sp)
/* B5144 800B4544 87AB00D4 */  lh         $t3, 0xd4($sp)
/* B5148 800B4548 3C06800F */  lui        $a2, 0x800f
/* B514C 800B454C 3C05800E */  lui        $a1, 0x800e
/* B5150 800B4550 000B4880 */  sll        $t1, $t3, 2
/* B5154 800B4554 012B4821 */  addu       $t1, $t1, $t3
/* B5158 800B4558 000948C0 */  sll        $t1, $t1, 3
/* B515C 800B455C 00C93021 */  addu       $a2, $a2, $t1
/* B5160 800B4560 8CC696C4 */  lw         $a2, -0x693c($a2)
/* B5164 800B4564 24A5F220 */  addiu      $a1, $a1, -0xde0
/* B5168 800B4568 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B516C 800B456C 0C03313D */  jal        func_800CC4F4
/* B5170 800B4570 00063202 */   srl       $a2, $a2, 8
/* B5174 800B4574 0C033527 */  jal        func_800CD49C
/* B5178 800B4578 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B517C 800B457C 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5180 800B4580 00408025 */  or         $s0, $v0, $zero
/* B5184 800B4584 00102823 */  negu       $a1, $s0
/* B5188 800B4588 00C00821 */  addu       $at, $a2, $zero
/* B518C 800B458C 000130C0 */  sll        $a2, $at, 3
/* B5190 800B4590 00C13021 */  addu       $a2, $a2, $at
/* B5194 800B4594 3C013F80 */  lui        $at, 0x3f80
/* B5198 800B4598 44812000 */  mtc1       $at, $f4
/* B519C 800B459C 00052880 */  sll        $a1, $a1, 2
/* B51A0 800B45A0 24A50100 */  addiu      $a1, $a1, 0x100
/* B51A4 800B45A4 24C60010 */  addiu      $a2, $a2, 0x10
/* B51A8 800B45A8 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B51AC 800B45AC 3C073F80 */  lui        $a3, 0x3f80
/* B51B0 800B45B0 AFA00014 */  sw         $zero, 0x14($sp)
/* B51B4 800B45B4 AFA00018 */  sw         $zero, 0x18($sp)
/* B51B8 800B45B8 0C003359 */  jal        func_8000CD64
/* B51BC 800B45BC E7A40010 */   swc1      $f4, 0x10($sp)
.L800B45C0:
/* B51C0 800B45C0 87AD00D4 */  lh         $t5, 0xd4($sp)
/* B51C4 800B45C4 25B80001 */  addiu      $t8, $t5, 1
/* B51C8 800B45C8 00187400 */  sll        $t6, $t8, 0x10
/* B51CC 800B45CC 000E6403 */  sra        $t4, $t6, 0x10
/* B51D0 800B45D0 29810010 */  slti       $at, $t4, 0x10
/* B51D4 800B45D4 1420FFB1 */  bnez       $at, .L800B449C
/* B51D8 800B45D8 A7B800D4 */   sh        $t8, 0xd4($sp)
/* B51DC 800B45DC 10000025 */  b          .L800B4674
/* B51E0 800B45E0 00000000 */   nop
.L800B45E4:
/* B51E4 800B45E4 3C08800E */  lui        $t0, %hi(D_800D9FA0)
/* B51E8 800B45E8 8D089FA0 */  lw         $t0, %lo(D_800D9FA0)($t0)
/* B51EC 800B45EC 3C058017 */  lui        $a1, 0x8017
/* B51F0 800B45F0 A7A000D4 */  sh         $zero, 0xd4($sp)
/* B51F4 800B45F4 0008C880 */  sll        $t9, $t0, 2
/* B51F8 800B45F8 0328C821 */  addu       $t9, $t9, $t0
/* B51FC 800B45FC 0019C8C0 */  sll        $t9, $t9, 3
/* B5200 800B4600 0328C821 */  addu       $t9, $t9, $t0
/* B5204 800B4604 0019C880 */  sll        $t9, $t9, 2
/* B5208 800B4608 00B92821 */  addu       $a1, $a1, $t9
/* B520C 800B460C 8CA56E2C */  lw         $a1, 0x6e2c($a1)
/* B5210 800B4610 0C03313D */  jal        func_800CC4F4
/* B5214 800B4614 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5218 800B4618 0C033527 */  jal        func_800CD49C
/* B521C 800B461C 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5220 800B4620 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5224 800B4624 00408025 */  or         $s0, $v0, $zero
/* B5228 800B4628 001078C0 */  sll        $t7, $s0, 3
/* B522C 800B462C 00C00821 */  addu       $at, $a2, $zero
/* B5230 800B4630 000130C0 */  sll        $a2, $at, 3
/* B5234 800B4634 00C13021 */  addu       $a2, $a2, $at
/* B5238 800B4638 3C013F80 */  lui        $at, 0x3f80
/* B523C 800B463C 44813000 */  mtc1       $at, $f6
/* B5240 800B4640 240A0140 */  addiu      $t2, $zero, 0x140
/* B5244 800B4644 014F2823 */  subu       $a1, $t2, $t7
/* B5248 800B4648 00052842 */  srl        $a1, $a1, 1
/* B524C 800B464C 24C60010 */  addiu      $a2, $a2, 0x10
/* B5250 800B4650 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5254 800B4654 3C073F80 */  lui        $a3, 0x3f80
/* B5258 800B4658 AFA00014 */  sw         $zero, 0x14($sp)
/* B525C 800B465C AFA00018 */  sw         $zero, 0x18($sp)
/* B5260 800B4660 0C003359 */  jal        func_8000CD64
/* B5264 800B4664 E7A60010 */   swc1      $f6, 0x10($sp)
/* B5268 800B4668 87AB00D4 */  lh         $t3, 0xd4($sp)
/* B526C 800B466C 25690001 */  addiu      $t1, $t3, 1
/* B5270 800B4670 A7A900D4 */  sh         $t1, 0xd4($sp)
.L800B4674:
/* B5274 800B4674 3C0D8014 */  lui        $t5, %hi(D_80144290)
/* B5278 800B4678 8DAD4290 */  lw         $t5, %lo(D_80144290)($t5)
/* B527C 800B467C 3C01800D */  lui        $at, %hi(D_800D6520)
/* B5280 800B4680 A4206520 */  sh         $zero, %lo(D_800D6520)($at)
/* B5284 800B4684 15A0009E */  bnez       $t5, .L800B4900
/* B5288 800B4688 00000000 */   nop
/* B528C 800B468C 3C0C800E */  lui        $t4, %hi(D_800D9FA0)
/* B5290 800B4690 8D8C9FA0 */  lw         $t4, %lo(D_800D9FA0)($t4)
/* B5294 800B4694 87B800D4 */  lh         $t8, 0xd4($sp)
/* B5298 800B4698 3C058017 */  lui        $a1, 0x8017
/* B529C 800B469C 000C4080 */  sll        $t0, $t4, 2
/* B52A0 800B46A0 010C4021 */  addu       $t0, $t0, $t4
/* B52A4 800B46A4 000840C0 */  sll        $t0, $t0, 3
/* B52A8 800B46A8 010C4021 */  addu       $t0, $t0, $t4
/* B52AC 800B46AC 00084080 */  sll        $t0, $t0, 2
/* B52B0 800B46B0 00A82821 */  addu       $a1, $a1, $t0
/* B52B4 800B46B4 3C06800F */  lui        $a2, %hi(D_800E8EA0)
/* B52B8 800B46B8 3C07800F */  lui        $a3, %hi(D_800E8E9C)
/* B52BC 800B46BC 270E0001 */  addiu      $t6, $t8, 1
/* B52C0 800B46C0 A7AE00D4 */  sh         $t6, 0xd4($sp)
/* B52C4 800B46C4 8CE78E9C */  lw         $a3, %lo(D_800E8E9C)($a3)
/* B52C8 800B46C8 8CC68EA0 */  lw         $a2, %lo(D_800E8EA0)($a2)
/* B52CC 800B46CC 8CA56E30 */  lw         $a1, 0x6e30($a1)
/* B52D0 800B46D0 0C03313D */  jal        func_800CC4F4
/* B52D4 800B46D4 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B52D8 800B46D8 0C033527 */  jal        func_800CD49C
/* B52DC 800B46DC 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B52E0 800B46E0 87A600D4 */  lh         $a2, 0xd4($sp)
/* B52E4 800B46E4 00408025 */  or         $s0, $v0, $zero
/* B52E8 800B46E8 0010C8C0 */  sll        $t9, $s0, 3
/* B52EC 800B46EC 00C00821 */  addu       $at, $a2, $zero
/* B52F0 800B46F0 000130C0 */  sll        $a2, $at, 3
/* B52F4 800B46F4 00C13021 */  addu       $a2, $a2, $at
/* B52F8 800B46F8 3C013F80 */  lui        $at, 0x3f80
/* B52FC 800B46FC 44814000 */  mtc1       $at, $f8
/* B5300 800B4700 240A0140 */  addiu      $t2, $zero, 0x140
/* B5304 800B4704 01592823 */  subu       $a1, $t2, $t9
/* B5308 800B4708 00052842 */  srl        $a1, $a1, 1
/* B530C 800B470C 24C60010 */  addiu      $a2, $a2, 0x10
/* B5310 800B4710 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5314 800B4714 3C073F80 */  lui        $a3, 0x3f80
/* B5318 800B4718 AFA00014 */  sw         $zero, 0x14($sp)
/* B531C 800B471C AFA00018 */  sw         $zero, 0x18($sp)
/* B5320 800B4720 0C003359 */  jal        func_8000CD64
/* B5324 800B4724 E7A80010 */   swc1      $f8, 0x10($sp)
/* B5328 800B4728 3C09800E */  lui        $t1, %hi(D_800D9FA0)
/* B532C 800B472C 8D299FA0 */  lw         $t1, %lo(D_800D9FA0)($t1)
/* B5330 800B4730 3C06800F */  lui        $a2, %hi(D_800E8EA4)
/* B5334 800B4734 87AF00D4 */  lh         $t7, 0xd4($sp)
/* B5338 800B4738 00096880 */  sll        $t5, $t1, 2
/* B533C 800B473C 01A96821 */  addu       $t5, $t5, $t1
/* B5340 800B4740 8CC68EA4 */  lw         $a2, %lo(D_800E8EA4)($a2)
/* B5344 800B4744 000D68C0 */  sll        $t5, $t5, 3
/* B5348 800B4748 01A96821 */  addu       $t5, $t5, $t1
/* B534C 800B474C 000D6880 */  sll        $t5, $t5, 2
/* B5350 800B4750 3C058017 */  lui        $a1, %hi(D_80176E34)
/* B5354 800B4754 00AD2821 */  addu       $a1, $a1, $t5
/* B5358 800B4758 25EB0001 */  addiu      $t3, $t7, 1
/* B535C 800B475C A7AB00D4 */  sh         $t3, 0xd4($sp)
/* B5360 800B4760 8CA56E34 */  lw         $a1, %lo(D_80176E34)($a1)
/* B5364 800B4764 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5368 800B4768 04C10002 */  bgez       $a2, .L800B4774
/* B536C 800B476C 00C00821 */   addu      $at, $a2, $zero
/* B5370 800B4770 24C100FF */  addiu      $at, $a2, 0xff
.L800B4774:
/* B5374 800B4774 00013203 */  sra        $a2, $at, 8
/* B5378 800B4778 0C03313D */  jal        func_800CC4F4
/* B537C 800B477C 00000000 */   nop
/* B5380 800B4780 0C033527 */  jal        func_800CD49C
/* B5384 800B4784 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5388 800B4788 87A600D4 */  lh         $a2, 0xd4($sp)
/* B538C 800B478C 00408025 */  or         $s0, $v0, $zero
/* B5390 800B4790 0010C0C0 */  sll        $t8, $s0, 3
/* B5394 800B4794 00C00821 */  addu       $at, $a2, $zero
/* B5398 800B4798 000130C0 */  sll        $a2, $at, 3
/* B539C 800B479C 00C13021 */  addu       $a2, $a2, $at
/* B53A0 800B47A0 3C013F80 */  lui        $at, 0x3f80
/* B53A4 800B47A4 44815000 */  mtc1       $at, $f10
/* B53A8 800B47A8 240E0140 */  addiu      $t6, $zero, 0x140
/* B53AC 800B47AC 01D82823 */  subu       $a1, $t6, $t8
/* B53B0 800B47B0 00052842 */  srl        $a1, $a1, 1
/* B53B4 800B47B4 24C60010 */  addiu      $a2, $a2, 0x10
/* B53B8 800B47B8 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B53BC 800B47BC 3C073F80 */  lui        $a3, 0x3f80
/* B53C0 800B47C0 AFA00014 */  sw         $zero, 0x14($sp)
/* B53C4 800B47C4 AFA00018 */  sw         $zero, 0x18($sp)
/* B53C8 800B47C8 0C003359 */  jal        func_8000CD64
/* B53CC 800B47CC E7AA0010 */   swc1      $f10, 0x10($sp)
/* B53D0 800B47D0 3C0C800F */  lui        $t4, %hi(D_800EA0D4)
/* B53D4 800B47D4 258CA0D4 */  addiu      $t4, $t4, %lo(D_800EA0D4)
/* B53D8 800B47D8 81880000 */  lb         $t0, ($t4)
/* B53DC 800B47DC 24010030 */  addiu      $at, $zero, 0x30
/* B53E0 800B47E0 3C19800F */  lui        $t9, %hi(D_800E8EA0)
/* B53E4 800B47E4 0101001A */  div        $zero, $t0, $at
/* B53E8 800B47E8 8F398EA0 */  lw         $t9, %lo(D_800E8EA0)($t9)
/* B53EC 800B47EC 00005012 */  mflo       $t2
/* B53F0 800B47F0 A7AA00D4 */  sh         $t2, 0xd4($sp)
/* B53F4 800B47F4 17200002 */  bnez       $t9, .L800B4800
/* B53F8 800B47F8 00000000 */   nop
/* B53FC 800B47FC A7A000D4 */  sh         $zero, 0xd4($sp)
.L800B4800:
/* B5400 800B4800 87AF00D4 */  lh         $t7, 0xd4($sp)
/* B5404 800B4804 05E10010 */  bgez       $t7, .L800B4848
/* B5408 800B4808 00000000 */   nop
/* B540C 800B480C 3C0B8014 */  lui        $t3, %hi(D_8014427A)
/* B5410 800B4810 856B427A */  lh         $t3, %lo(D_8014427A)($t3)
/* B5414 800B4814 1560000C */  bnez       $t3, .L800B4848
/* B5418 800B4818 00000000 */   nop
/* B541C 800B481C 3C0D800F */  lui        $t5, %hi(D_800E8EA0)
/* B5420 800B4820 8DAD8EA0 */  lw         $t5, %lo(D_800E8EA0)($t5)
/* B5424 800B4824 3C098014 */  lui        $t1, %hi(D_80144278)
/* B5428 800B4828 85294278 */  lh         $t1, %lo(D_80144278)($t1)
/* B542C 800B482C 25AEFFFF */  addiu      $t6, $t5, -1
/* B5430 800B4830 012E082A */  slt        $at, $t1, $t6
/* B5434 800B4834 10200004 */  beqz       $at, .L800B4848
/* B5438 800B4838 00000000 */   nop
/* B543C 800B483C 24180001 */  addiu      $t8, $zero, 1
/* B5440 800B4840 3C018014 */  lui        $at, %hi(D_8014427A)
/* B5444 800B4844 A438427A */  sh         $t8, %lo(D_8014427A)($at)
.L800B4848:
/* B5448 800B4848 87AC00D4 */  lh         $t4, 0xd4($sp)
/* B544C 800B484C 1980000C */  blez       $t4, .L800B4880
/* B5450 800B4850 00000000 */   nop
/* B5454 800B4854 3C088014 */  lui        $t0, %hi(D_8014427A)
/* B5458 800B4858 8508427A */  lh         $t0, %lo(D_8014427A)($t0)
/* B545C 800B485C 15000008 */  bnez       $t0, .L800B4880
/* B5460 800B4860 00000000 */   nop
/* B5464 800B4864 3C0A8014 */  lui        $t2, %hi(D_80144278)
/* B5468 800B4868 854A4278 */  lh         $t2, %lo(D_80144278)($t2)
/* B546C 800B486C 19400004 */  blez       $t2, .L800B4880
/* B5470 800B4870 00000000 */   nop
/* B5474 800B4874 2419FFFF */  addiu      $t9, $zero, -1
/* B5478 800B4878 3C018014 */  lui        $at, %hi(D_8014427A)
/* B547C 800B487C A439427A */  sh         $t9, %lo(D_8014427A)($at)
.L800B4880:
/* B5480 800B4880 3C0F800F */  lui        $t7, %hi(D_800EA0D8)
/* B5484 800B4884 25EFA0D8 */  addiu      $t7, $t7, %lo(D_800EA0D8)
/* B5488 800B4888 95EB0000 */  lhu        $t3, ($t7)
/* B548C 800B488C 316D8000 */  andi       $t5, $t3, 0x8000
/* B5490 800B4890 11A00018 */  beqz       $t5, .L800B48F4
/* B5494 800B4894 00000000 */   nop
/* B5498 800B4898 3C098014 */  lui        $t1, %hi(D_8014427A)
/* B549C 800B489C 8529427A */  lh         $t1, %lo(D_8014427A)($t1)
/* B54A0 800B48A0 15200014 */  bnez       $t1, .L800B48F4
/* B54A4 800B48A4 00000000 */   nop
/* B54A8 800B48A8 3C0E800F */  lui        $t6, %hi(D_800E8EA0)
/* B54AC 800B48AC 8DCE8EA0 */  lw         $t6, %lo(D_800E8EA0)($t6)
/* B54B0 800B48B0 11C00010 */  beqz       $t6, .L800B48F4
/* B54B4 800B48B4 00000000 */   nop
/* B54B8 800B48B8 3C188014 */  lui        $t8, %hi(D_80144284)
/* B54BC 800B48BC 8F184284 */  lw         $t8, %lo(D_80144284)($t8)
/* B54C0 800B48C0 17000297 */  bnez       $t8, .L800B5320
/* B54C4 800B48C4 00000000 */   nop
/* B54C8 800B48C8 240C0001 */  addiu      $t4, $zero, 1
/* B54CC 800B48CC 3C018014 */  lui        $at, %hi(D_80144284)
/* B54D0 800B48D0 AC2C4284 */  sw         $t4, %lo(D_80144284)($at)
/* B54D4 800B48D4 3C018014 */  lui        $at, %hi(D_8014427C)
/* B54D8 800B48D8 A420427C */  sh         $zero, %lo(D_8014427C)($at)
/* B54DC 800B48DC 3C018014 */  lui        $at, %hi(D_8014427A)
/* B54E0 800B48E0 A420427A */  sh         $zero, %lo(D_8014427A)($at)
/* B54E4 800B48E4 3C018014 */  lui        $at, %hi(D_80144290)
/* B54E8 800B48E8 24080001 */  addiu      $t0, $zero, 1
/* B54EC 800B48EC 10000294 */  b          .L800B5340
/* B54F0 800B48F0 AC284290 */   sw        $t0, %lo(D_80144290)($at)
.L800B48F4:
/* B54F4 800B48F4 3C018014 */  lui        $at, %hi(D_80144284)
/* B54F8 800B48F8 10000291 */  b          .L800B5340
/* B54FC 800B48FC AC204284 */   sw        $zero, %lo(D_80144284)($at)
.L800B4900:
/* B5500 800B4900 3C0F800E */  lui        $t7, %hi(D_800D9FA0)
/* B5504 800B4904 8DEF9FA0 */  lw         $t7, %lo(D_800D9FA0)($t7)
/* B5508 800B4908 87AA00D4 */  lh         $t2, 0xd4($sp)
/* B550C 800B490C 3C058017 */  lui        $a1, 0x8017
/* B5510 800B4910 000F5880 */  sll        $t3, $t7, 2
/* B5514 800B4914 016F5821 */  addu       $t3, $t3, $t7
/* B5518 800B4918 000B58C0 */  sll        $t3, $t3, 3
/* B551C 800B491C 016F5821 */  addu       $t3, $t3, $t7
/* B5520 800B4920 000B5880 */  sll        $t3, $t3, 2
/* B5524 800B4924 00AB2821 */  addu       $a1, $a1, $t3
/* B5528 800B4928 25590001 */  addiu      $t9, $t2, 1
/* B552C 800B492C A7B900D4 */  sh         $t9, 0xd4($sp)
/* B5530 800B4930 8CA56E38 */  lw         $a1, 0x6e38($a1)
/* B5534 800B4934 0C03313D */  jal        func_800CC4F4
/* B5538 800B4938 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B553C 800B493C 0C033527 */  jal        func_800CD49C
/* B5540 800B4940 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5544 800B4944 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5548 800B4948 00408025 */  or         $s0, $v0, $zero
/* B554C 800B494C 001068C0 */  sll        $t5, $s0, 3
/* B5550 800B4950 00C00821 */  addu       $at, $a2, $zero
/* B5554 800B4954 000130C0 */  sll        $a2, $at, 3
/* B5558 800B4958 00C13021 */  addu       $a2, $a2, $at
/* B555C 800B495C 3C013F80 */  lui        $at, 0x3f80
/* B5560 800B4960 44818000 */  mtc1       $at, $f16
/* B5564 800B4964 24090140 */  addiu      $t1, $zero, 0x140
/* B5568 800B4968 012D2823 */  subu       $a1, $t1, $t5
/* B556C 800B496C 00052842 */  srl        $a1, $a1, 1
/* B5570 800B4970 24C60010 */  addiu      $a2, $a2, 0x10
/* B5574 800B4974 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5578 800B4978 3C073F80 */  lui        $a3, 0x3f80
/* B557C 800B497C AFA00014 */  sw         $zero, 0x14($sp)
/* B5580 800B4980 AFA00018 */  sw         $zero, 0x18($sp)
/* B5584 800B4984 0C003359 */  jal        func_8000CD64
/* B5588 800B4988 E7B00010 */   swc1      $f16, 0x10($sp)
/* B558C 800B498C 87AE00D4 */  lh         $t6, 0xd4($sp)
/* B5590 800B4990 3C198014 */  lui        $t9, %hi(D_8014427C)
/* B5594 800B4994 8739427C */  lh         $t9, %lo(D_8014427C)($t9)
/* B5598 800B4998 25D80001 */  addiu      $t8, $t6, 1
/* B559C 800B499C 00186400 */  sll        $t4, $t8, 0x10
/* B55A0 800B49A0 000C4403 */  sra        $t0, $t4, 0x10
/* B55A4 800B49A4 3C098014 */  lui        $t1, %hi(D_8014427A)
/* B55A8 800B49A8 8529427A */  lh         $t1, %lo(D_8014427A)($t1)
/* B55AC 800B49AC 000850C0 */  sll        $t2, $t0, 3
/* B55B0 800B49B0 001978C0 */  sll        $t7, $t9, 3
/* B55B4 800B49B4 01485021 */  addu       $t2, $t2, $t0
/* B55B8 800B49B8 01F97821 */  addu       $t7, $t7, $t9
/* B55BC 800B49BC A7B800D4 */  sh         $t8, 0xd4($sp)
/* B55C0 800B49C0 014F5821 */  addu       $t3, $t2, $t7
/* B55C4 800B49C4 2418001F */  addiu      $t8, $zero, 0x1f
/* B55C8 800B49C8 240C00FF */  addiu      $t4, $zero, 0xff
/* B55CC 800B49CC 240E003F */  addiu      $t6, $zero, 0x3f
/* B55D0 800B49D0 240D007F */  addiu      $t5, $zero, 0x7f
/* B55D4 800B49D4 01692821 */  addu       $a1, $t3, $t1
/* B55D8 800B49D8 24A5000F */  addiu      $a1, $a1, 0xf
/* B55DC 800B49DC AFAD0010 */  sw         $t5, 0x10($sp)
/* B55E0 800B49E0 AFAE0014 */  sw         $t6, 0x14($sp)
/* B55E4 800B49E4 AFAC001C */  sw         $t4, 0x1c($sp)
/* B55E8 800B49E8 AFB80018 */  sw         $t8, 0x18($sp)
/* B55EC 800B49EC 00002025 */  or         $a0, $zero, $zero
/* B55F0 800B49F0 24060140 */  addiu      $a2, $zero, 0x140
/* B55F4 800B49F4 0C003A0C */  jal        func_8000E830
/* B55F8 800B49F8 24070009 */   addiu     $a3, $zero, 9
/* B55FC 800B49FC 3C08800E */  lui        $t0, %hi(D_800D9FA0)
/* B5600 800B4A00 8D089FA0 */  lw         $t0, %lo(D_800D9FA0)($t0)
/* B5604 800B4A04 3C058017 */  lui        $a1, 0x8017
/* B5608 800B4A08 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B560C 800B4A0C 0008C880 */  sll        $t9, $t0, 2
/* B5610 800B4A10 0328C821 */  addu       $t9, $t9, $t0
/* B5614 800B4A14 0019C8C0 */  sll        $t9, $t9, 3
/* B5618 800B4A18 0328C821 */  addu       $t9, $t9, $t0
/* B561C 800B4A1C 0019C880 */  sll        $t9, $t9, 2
/* B5620 800B4A20 00B92821 */  addu       $a1, $a1, $t9
/* B5624 800B4A24 0C03313D */  jal        func_800CC4F4
/* B5628 800B4A28 8CA56E3C */   lw        $a1, 0x6e3c($a1)
/* B562C 800B4A2C 0C033527 */  jal        func_800CD49C
/* B5630 800B4A30 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5634 800B4A34 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5638 800B4A38 00408025 */  or         $s0, $v0, $zero
/* B563C 800B4A3C 001050C0 */  sll        $t2, $s0, 3
/* B5640 800B4A40 00C00821 */  addu       $at, $a2, $zero
/* B5644 800B4A44 000130C0 */  sll        $a2, $at, 3
/* B5648 800B4A48 00C13021 */  addu       $a2, $a2, $at
/* B564C 800B4A4C 3C013F80 */  lui        $at, 0x3f80
/* B5650 800B4A50 44819000 */  mtc1       $at, $f18
/* B5654 800B4A54 240F0140 */  addiu      $t7, $zero, 0x140
/* B5658 800B4A58 01EA2823 */  subu       $a1, $t7, $t2
/* B565C 800B4A5C 00052842 */  srl        $a1, $a1, 1
/* B5660 800B4A60 24C60010 */  addiu      $a2, $a2, 0x10
/* B5664 800B4A64 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5668 800B4A68 3C073F80 */  lui        $a3, 0x3f80
/* B566C 800B4A6C AFA00014 */  sw         $zero, 0x14($sp)
/* B5670 800B4A70 AFA00018 */  sw         $zero, 0x18($sp)
/* B5674 800B4A74 0C003359 */  jal        func_8000CD64
/* B5678 800B4A78 E7B20010 */   swc1      $f18, 0x10($sp)
/* B567C 800B4A7C 3C0D800E */  lui        $t5, %hi(D_800D9FA0)
/* B5680 800B4A80 8DAD9FA0 */  lw         $t5, %lo(D_800D9FA0)($t5)
/* B5684 800B4A84 87AB00D4 */  lh         $t3, 0xd4($sp)
/* B5688 800B4A88 3C058017 */  lui        $a1, 0x8017
/* B568C 800B4A8C 000D7080 */  sll        $t6, $t5, 2
/* B5690 800B4A90 01CD7021 */  addu       $t6, $t6, $t5
/* B5694 800B4A94 000E70C0 */  sll        $t6, $t6, 3
/* B5698 800B4A98 01CD7021 */  addu       $t6, $t6, $t5
/* B569C 800B4A9C 000E7080 */  sll        $t6, $t6, 2
/* B56A0 800B4AA0 00AE2821 */  addu       $a1, $a1, $t6
/* B56A4 800B4AA4 25690001 */  addiu      $t1, $t3, 1
/* B56A8 800B4AA8 A7A900D4 */  sh         $t1, 0xd4($sp)
/* B56AC 800B4AAC 8CA56E40 */  lw         $a1, 0x6e40($a1)
/* B56B0 800B4AB0 0C03313D */  jal        func_800CC4F4
/* B56B4 800B4AB4 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B56B8 800B4AB8 0C033527 */  jal        func_800CD49C
/* B56BC 800B4ABC 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B56C0 800B4AC0 87A600D4 */  lh         $a2, 0xd4($sp)
/* B56C4 800B4AC4 00408025 */  or         $s0, $v0, $zero
/* B56C8 800B4AC8 0010C0C0 */  sll        $t8, $s0, 3
/* B56CC 800B4ACC 00C00821 */  addu       $at, $a2, $zero
/* B56D0 800B4AD0 000130C0 */  sll        $a2, $at, 3
/* B56D4 800B4AD4 00C13021 */  addu       $a2, $a2, $at
/* B56D8 800B4AD8 3C013F80 */  lui        $at, 0x3f80
/* B56DC 800B4ADC 44812000 */  mtc1       $at, $f4
/* B56E0 800B4AE0 240C0140 */  addiu      $t4, $zero, 0x140
/* B56E4 800B4AE4 01982823 */  subu       $a1, $t4, $t8
/* B56E8 800B4AE8 00052842 */  srl        $a1, $a1, 1
/* B56EC 800B4AEC 24C60010 */  addiu      $a2, $a2, 0x10
/* B56F0 800B4AF0 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B56F4 800B4AF4 3C073F80 */  lui        $a3, 0x3f80
/* B56F8 800B4AF8 AFA00014 */  sw         $zero, 0x14($sp)
/* B56FC 800B4AFC AFA00018 */  sw         $zero, 0x18($sp)
/* B5700 800B4B00 0C003359 */  jal        func_8000CD64
/* B5704 800B4B04 E7A40010 */   swc1      $f4, 0x10($sp)
/* B5708 800B4B08 3C08800F */  lui        $t0, %hi(D_800EA0D4)
/* B570C 800B4B0C 2508A0D4 */  addiu      $t0, $t0, %lo(D_800EA0D4)
/* B5710 800B4B10 81190000 */  lb         $t9, ($t0)
/* B5714 800B4B14 24010030 */  addiu      $at, $zero, 0x30
/* B5718 800B4B18 0321001A */  div        $zero, $t9, $at
/* B571C 800B4B1C 00007812 */  mflo       $t7
/* B5720 800B4B20 000F5400 */  sll        $t2, $t7, 0x10
/* B5724 800B4B24 000A5C03 */  sra        $t3, $t2, 0x10
/* B5728 800B4B28 0561000C */  bgez       $t3, .L800B4B5C
/* B572C 800B4B2C A7AF00D4 */   sh        $t7, 0xd4($sp)
/* B5730 800B4B30 3C098014 */  lui        $t1, %hi(D_8014427A)
/* B5734 800B4B34 8529427A */  lh         $t1, %lo(D_8014427A)($t1)
/* B5738 800B4B38 15200008 */  bnez       $t1, .L800B4B5C
/* B573C 800B4B3C 00000000 */   nop
/* B5740 800B4B40 3C0D8014 */  lui        $t5, %hi(D_8014427C)
/* B5744 800B4B44 85AD427C */  lh         $t5, %lo(D_8014427C)($t5)
/* B5748 800B4B48 1DA00004 */  bgtz       $t5, .L800B4B5C
/* B574C 800B4B4C 00000000 */   nop
/* B5750 800B4B50 240E0001 */  addiu      $t6, $zero, 1
/* B5754 800B4B54 3C018014 */  lui        $at, %hi(D_8014427A)
/* B5758 800B4B58 A42E427A */  sh         $t6, %lo(D_8014427A)($at)
.L800B4B5C:
/* B575C 800B4B5C 87AC00D4 */  lh         $t4, 0xd4($sp)
/* B5760 800B4B60 1980000C */  blez       $t4, .L800B4B94
/* B5764 800B4B64 00000000 */   nop
/* B5768 800B4B68 3C188014 */  lui        $t8, %hi(D_8014427A)
/* B576C 800B4B6C 8718427A */  lh         $t8, %lo(D_8014427A)($t8)
/* B5770 800B4B70 17000008 */  bnez       $t8, .L800B4B94
/* B5774 800B4B74 00000000 */   nop
/* B5778 800B4B78 3C088014 */  lui        $t0, %hi(D_8014427C)
/* B577C 800B4B7C 8508427C */  lh         $t0, %lo(D_8014427C)($t0)
/* B5780 800B4B80 19000004 */  blez       $t0, .L800B4B94
/* B5784 800B4B84 00000000 */   nop
/* B5788 800B4B88 2419FFFF */  addiu      $t9, $zero, -1
/* B578C 800B4B8C 3C018014 */  lui        $at, %hi(D_8014427A)
/* B5790 800B4B90 A439427A */  sh         $t9, %lo(D_8014427A)($at)
.L800B4B94:
/* B5794 800B4B94 3C0F800F */  lui        $t7, %hi(D_800EA0D8)
/* B5798 800B4B98 25EFA0D8 */  addiu      $t7, $t7, %lo(D_800EA0D8)
/* B579C 800B4B9C 95EA0000 */  lhu        $t2, ($t7)
/* B57A0 800B4BA0 314B8000 */  andi       $t3, $t2, 0x8000
/* B57A4 800B4BA4 11600028 */  beqz       $t3, .L800B4C48
/* B57A8 800B4BA8 00000000 */   nop
/* B57AC 800B4BAC 3C098014 */  lui        $t1, %hi(D_8014427A)
/* B57B0 800B4BB0 8529427A */  lh         $t1, %lo(D_8014427A)($t1)
/* B57B4 800B4BB4 15200024 */  bnez       $t1, .L800B4C48
/* B57B8 800B4BB8 00000000 */   nop
/* B57BC 800B4BBC 3C0D8014 */  lui        $t5, %hi(D_80144284)
/* B57C0 800B4BC0 8DAD4284 */  lw         $t5, %lo(D_80144284)($t5)
/* B57C4 800B4BC4 15A001DE */  bnez       $t5, .L800B5340
/* B57C8 800B4BC8 00000000 */   nop
/* B57CC 800B4BCC 3C0C8014 */  lui        $t4, %hi(D_8014427C)
/* B57D0 800B4BD0 858C427C */  lh         $t4, %lo(D_8014427C)($t4)
/* B57D4 800B4BD4 240E0001 */  addiu      $t6, $zero, 1
/* B57D8 800B4BD8 3C018014 */  lui        $at, %hi(D_80144284)
/* B57DC 800B4BDC 15800017 */  bnez       $t4, .L800B4C3C
/* B57E0 800B4BE0 AC2E4284 */   sw        $t6, %lo(D_80144284)($at)
/* B57E4 800B4BE4 3C188014 */  lui        $t8, %hi(D_80144278)
/* B57E8 800B4BE8 87184278 */  lh         $t8, %lo(D_80144278)($t8)
/* B57EC 800B4BEC 3C19800F */  lui        $t9, %hi(D_800E96A8)
/* B57F0 800B4BF0 273996A8 */  addiu      $t9, $t9, %lo(D_800E96A8)
/* B57F4 800B4BF4 00184080 */  sll        $t0, $t8, 2
/* B57F8 800B4BF8 01184021 */  addu       $t0, $t0, $t8
/* B57FC 800B4BFC 000840C0 */  sll        $t0, $t0, 3
/* B5800 800B4C00 01197821 */  addu       $t7, $t0, $t9
/* B5804 800B4C04 01E02025 */  or         $a0, $t7, $zero
/* B5808 800B4C08 25E50014 */  addiu      $a1, $t7, 0x14
/* B580C 800B4C0C 95E60020 */  lhu        $a2, 0x20($t7)
/* B5810 800B4C10 0C000F21 */  jal        func_80003C84
/* B5814 800B4C14 8DE70024 */   lw        $a3, 0x24($t7)
/* B5818 800B4C18 3C018014 */  lui        $at, %hi(D_80144280)
/* B581C 800B4C1C AC224280 */  sw         $v0, %lo(D_80144280)($at)
/* B5820 800B4C20 3C018014 */  lui        $at, %hi(D_80144278)
/* B5824 800B4C24 A4204278 */  sh         $zero, %lo(D_80144278)($at)
/* B5828 800B4C28 3C018014 */  lui        $at, %hi(D_8014427A)
/* B582C 800B4C2C A420427A */  sh         $zero, %lo(D_8014427A)($at)
/* B5830 800B4C30 3C018014 */  lui        $at, %hi(D_80144290)
/* B5834 800B4C34 100001C2 */  b          .L800B5340
/* B5838 800B4C38 AC204290 */   sw        $zero, %lo(D_80144290)($at)
.L800B4C3C:
/* B583C 800B4C3C 3C018014 */  lui        $at, %hi(D_80144290)
/* B5840 800B4C40 100001BF */  b          .L800B5340
/* B5844 800B4C44 AC204290 */   sw        $zero, %lo(D_80144290)($at)
.L800B4C48:
/* B5848 800B4C48 3C018014 */  lui        $at, %hi(D_80144284)
/* B584C 800B4C4C 100001BC */  b          .L800B5340
/* B5850 800B4C50 AC204284 */   sw        $zero, %lo(D_80144284)($at)
.L800B4C54:
/* B5854 800B4C54 3C0A800E */  lui        $t2, %hi(D_800D9FA0)
/* B5858 800B4C58 8D4A9FA0 */  lw         $t2, %lo(D_800D9FA0)($t2)
/* B585C 800B4C5C 3C058017 */  lui        $a1, 0x8017
/* B5860 800B4C60 A7A000D4 */  sh         $zero, 0xd4($sp)
/* B5864 800B4C64 000A5880 */  sll        $t3, $t2, 2
/* B5868 800B4C68 016A5821 */  addu       $t3, $t3, $t2
/* B586C 800B4C6C 000B58C0 */  sll        $t3, $t3, 3
/* B5870 800B4C70 016A5821 */  addu       $t3, $t3, $t2
/* B5874 800B4C74 000B5880 */  sll        $t3, $t3, 2
/* B5878 800B4C78 00AB2821 */  addu       $a1, $a1, $t3
/* B587C 800B4C7C 8CA56E44 */  lw         $a1, 0x6e44($a1)
/* B5880 800B4C80 0C03313D */  jal        func_800CC4F4
/* B5884 800B4C84 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5888 800B4C88 0C033527 */  jal        func_800CD49C
/* B588C 800B4C8C 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5890 800B4C90 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5894 800B4C94 00408025 */  or         $s0, $v0, $zero
/* B5898 800B4C98 001048C0 */  sll        $t1, $s0, 3
/* B589C 800B4C9C 00C00821 */  addu       $at, $a2, $zero
/* B58A0 800B4CA0 000130C0 */  sll        $a2, $at, 3
/* B58A4 800B4CA4 00C13021 */  addu       $a2, $a2, $at
/* B58A8 800B4CA8 3C013F80 */  lui        $at, 0x3f80
/* B58AC 800B4CAC 44813000 */  mtc1       $at, $f6
/* B58B0 800B4CB0 240D0140 */  addiu      $t5, $zero, 0x140
/* B58B4 800B4CB4 01A92823 */  subu       $a1, $t5, $t1
/* B58B8 800B4CB8 00052842 */  srl        $a1, $a1, 1
/* B58BC 800B4CBC 24C60010 */  addiu      $a2, $a2, 0x10
/* B58C0 800B4CC0 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B58C4 800B4CC4 3C073F80 */  lui        $a3, 0x3f80
/* B58C8 800B4CC8 AFA00014 */  sw         $zero, 0x14($sp)
/* B58CC 800B4CCC AFA00018 */  sw         $zero, 0x18($sp)
/* B58D0 800B4CD0 0C003359 */  jal        func_8000CD64
/* B58D4 800B4CD4 E7A60010 */   swc1      $f6, 0x10($sp)
/* B58D8 800B4CD8 3C0F800E */  lui        $t7, %hi(D_800D9FA0)
/* B58DC 800B4CDC 8DEF9FA0 */  lw         $t7, %lo(D_800D9FA0)($t7)
/* B58E0 800B4CE0 87AE00D4 */  lh         $t6, 0xd4($sp)
/* B58E4 800B4CE4 3C058017 */  lui        $a1, 0x8017
/* B58E8 800B4CE8 000F5080 */  sll        $t2, $t7, 2
/* B58EC 800B4CEC 014F5021 */  addu       $t2, $t2, $t7
/* B58F0 800B4CF0 000A50C0 */  sll        $t2, $t2, 3
/* B58F4 800B4CF4 25CC0001 */  addiu      $t4, $t6, 1
/* B58F8 800B4CF8 000CC400 */  sll        $t8, $t4, 0x10
/* B58FC 800B4CFC 014F5021 */  addu       $t2, $t2, $t7
/* B5900 800B4D00 00184403 */  sra        $t0, $t8, 0x10
/* B5904 800B4D04 000A5080 */  sll        $t2, $t2, 2
/* B5908 800B4D08 A7AC00D4 */  sh         $t4, 0xd4($sp)
/* B590C 800B4D0C 25190001 */  addiu      $t9, $t0, 1
/* B5910 800B4D10 00AA2821 */  addu       $a1, $a1, $t2
/* B5914 800B4D14 A7B900D4 */  sh         $t9, 0xd4($sp)
/* B5918 800B4D18 8CA56E48 */  lw         $a1, 0x6e48($a1)
/* B591C 800B4D1C 0C03313D */  jal        func_800CC4F4
/* B5920 800B4D20 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5924 800B4D24 0C033527 */  jal        func_800CD49C
/* B5928 800B4D28 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B592C 800B4D2C 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5930 800B4D30 00408025 */  or         $s0, $v0, $zero
/* B5934 800B4D34 001058C0 */  sll        $t3, $s0, 3
/* B5938 800B4D38 00C00821 */  addu       $at, $a2, $zero
/* B593C 800B4D3C 000130C0 */  sll        $a2, $at, 3
/* B5940 800B4D40 00C13021 */  addu       $a2, $a2, $at
/* B5944 800B4D44 3C013F80 */  lui        $at, 0x3f80
/* B5948 800B4D48 44814000 */  mtc1       $at, $f8
/* B594C 800B4D4C 240D0140 */  addiu      $t5, $zero, 0x140
/* B5950 800B4D50 01AB2823 */  subu       $a1, $t5, $t3
/* B5954 800B4D54 00052842 */  srl        $a1, $a1, 1
/* B5958 800B4D58 24C60010 */  addiu      $a2, $a2, 0x10
/* B595C 800B4D5C 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5960 800B4D60 3C073F80 */  lui        $a3, 0x3f80
/* B5964 800B4D64 AFA00014 */  sw         $zero, 0x14($sp)
/* B5968 800B4D68 AFA00018 */  sw         $zero, 0x18($sp)
/* B596C 800B4D6C 0C003359 */  jal        func_8000CD64
/* B5970 800B4D70 E7A80010 */   swc1      $f8, 0x10($sp)
/* B5974 800B4D74 87A900D4 */  lh         $t1, 0xd4($sp)
/* B5978 800B4D78 00002025 */  or         $a0, $zero, $zero
/* B597C 800B4D7C 24060140 */  addiu      $a2, $zero, 0x140
/* B5980 800B4D80 252E0001 */  addiu      $t6, $t1, 1
/* B5984 800B4D84 000E6400 */  sll        $t4, $t6, 0x10
/* B5988 800B4D88 000CC403 */  sra        $t8, $t4, 0x10
/* B598C 800B4D8C 27080001 */  addiu      $t0, $t8, 1
/* B5990 800B4D90 A7AE00D4 */  sh         $t6, 0xd4($sp)
/* B5994 800B4D94 0008CC00 */  sll        $t9, $t0, 0x10
/* B5998 800B4D98 00197C03 */  sra        $t7, $t9, 0x10
/* B599C 800B4D9C 3C0E8014 */  lui        $t6, %hi(D_80144278)
/* B59A0 800B4DA0 85CE4278 */  lh         $t6, %lo(D_80144278)($t6)
/* B59A4 800B4DA4 25EA0001 */  addiu      $t2, $t7, 1
/* B59A8 800B4DA8 A7A800D4 */  sh         $t0, 0xd4($sp)
/* B59AC 800B4DAC 000A6C00 */  sll        $t5, $t2, 0x10
/* B59B0 800B4DB0 000D5C03 */  sra        $t3, $t5, 0x10
/* B59B4 800B4DB4 3C088014 */  lui        $t0, %hi(D_8014427A)
/* B59B8 800B4DB8 8508427A */  lh         $t0, %lo(D_8014427A)($t0)
/* B59BC 800B4DBC 000B48C0 */  sll        $t1, $t3, 3
/* B59C0 800B4DC0 000E60C0 */  sll        $t4, $t6, 3
/* B59C4 800B4DC4 012B4821 */  addu       $t1, $t1, $t3
/* B59C8 800B4DC8 018E6021 */  addu       $t4, $t4, $t6
/* B59CC 800B4DCC A7AA00D4 */  sh         $t2, 0xd4($sp)
/* B59D0 800B4DD0 012CC021 */  addu       $t8, $t1, $t4
/* B59D4 800B4DD4 240A001F */  addiu      $t2, $zero, 0x1f
/* B59D8 800B4DD8 240D00FF */  addiu      $t5, $zero, 0xff
/* B59DC 800B4DDC 240F003F */  addiu      $t7, $zero, 0x3f
/* B59E0 800B4DE0 2419007F */  addiu      $t9, $zero, 0x7f
/* B59E4 800B4DE4 03082821 */  addu       $a1, $t8, $t0
/* B59E8 800B4DE8 24A5000F */  addiu      $a1, $a1, 0xf
/* B59EC 800B4DEC AFB90010 */  sw         $t9, 0x10($sp)
/* B59F0 800B4DF0 AFAF0014 */  sw         $t7, 0x14($sp)
/* B59F4 800B4DF4 AFAD001C */  sw         $t5, 0x1c($sp)
/* B59F8 800B4DF8 AFAA0018 */  sw         $t2, 0x18($sp)
/* B59FC 800B4DFC 0C003A0C */  jal        func_8000E830
/* B5A00 800B4E00 24070009 */   addiu     $a3, $zero, 9
/* B5A04 800B4E04 3C0B800E */  lui        $t3, %hi(D_800D9FA0)
/* B5A08 800B4E08 8D6B9FA0 */  lw         $t3, %lo(D_800D9FA0)($t3)
/* B5A0C 800B4E0C 3C058017 */  lui        $a1, 0x8017
/* B5A10 800B4E10 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5A14 800B4E14 000B7080 */  sll        $t6, $t3, 2
/* B5A18 800B4E18 01CB7021 */  addu       $t6, $t6, $t3
/* B5A1C 800B4E1C 000E70C0 */  sll        $t6, $t6, 3
/* B5A20 800B4E20 01CB7021 */  addu       $t6, $t6, $t3
/* B5A24 800B4E24 000E7080 */  sll        $t6, $t6, 2
/* B5A28 800B4E28 00AE2821 */  addu       $a1, $a1, $t6
/* B5A2C 800B4E2C 0C03313D */  jal        func_800CC4F4
/* B5A30 800B4E30 8CA56E4C */   lw        $a1, 0x6e4c($a1)
/* B5A34 800B4E34 0C033527 */  jal        func_800CD49C
/* B5A38 800B4E38 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5A3C 800B4E3C 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5A40 800B4E40 00408025 */  or         $s0, $v0, $zero
/* B5A44 800B4E44 001048C0 */  sll        $t1, $s0, 3
/* B5A48 800B4E48 00C00821 */  addu       $at, $a2, $zero
/* B5A4C 800B4E4C 000130C0 */  sll        $a2, $at, 3
/* B5A50 800B4E50 00C13021 */  addu       $a2, $a2, $at
/* B5A54 800B4E54 3C013F80 */  lui        $at, 0x3f80
/* B5A58 800B4E58 44815000 */  mtc1       $at, $f10
/* B5A5C 800B4E5C 240C0140 */  addiu      $t4, $zero, 0x140
/* B5A60 800B4E60 01892823 */  subu       $a1, $t4, $t1
/* B5A64 800B4E64 00052842 */  srl        $a1, $a1, 1
/* B5A68 800B4E68 24C60010 */  addiu      $a2, $a2, 0x10
/* B5A6C 800B4E6C 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5A70 800B4E70 3C073F80 */  lui        $a3, 0x3f80
/* B5A74 800B4E74 AFA00014 */  sw         $zero, 0x14($sp)
/* B5A78 800B4E78 AFA00018 */  sw         $zero, 0x18($sp)
/* B5A7C 800B4E7C 0C003359 */  jal        func_8000CD64
/* B5A80 800B4E80 E7AA0010 */   swc1      $f10, 0x10($sp)
/* B5A84 800B4E84 3C19800E */  lui        $t9, %hi(D_800D9FA0)
/* B5A88 800B4E88 8F399FA0 */  lw         $t9, %lo(D_800D9FA0)($t9)
/* B5A8C 800B4E8C 87B800D4 */  lh         $t8, 0xd4($sp)
/* B5A90 800B4E90 3C058017 */  lui        $a1, 0x8017
/* B5A94 800B4E94 00197880 */  sll        $t7, $t9, 2
/* B5A98 800B4E98 01F97821 */  addu       $t7, $t7, $t9
/* B5A9C 800B4E9C 000F78C0 */  sll        $t7, $t7, 3
/* B5AA0 800B4EA0 01F97821 */  addu       $t7, $t7, $t9
/* B5AA4 800B4EA4 000F7880 */  sll        $t7, $t7, 2
/* B5AA8 800B4EA8 00AF2821 */  addu       $a1, $a1, $t7
/* B5AAC 800B4EAC 27080001 */  addiu      $t0, $t8, 1
/* B5AB0 800B4EB0 A7A800D4 */  sh         $t0, 0xd4($sp)
/* B5AB4 800B4EB4 8CA56E50 */  lw         $a1, 0x6e50($a1)
/* B5AB8 800B4EB8 0C03313D */  jal        func_800CC4F4
/* B5ABC 800B4EBC 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5AC0 800B4EC0 0C033527 */  jal        func_800CD49C
/* B5AC4 800B4EC4 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5AC8 800B4EC8 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5ACC 800B4ECC 00408025 */  or         $s0, $v0, $zero
/* B5AD0 800B4ED0 001050C0 */  sll        $t2, $s0, 3
/* B5AD4 800B4ED4 00C00821 */  addu       $at, $a2, $zero
/* B5AD8 800B4ED8 000130C0 */  sll        $a2, $at, 3
/* B5ADC 800B4EDC 00C13021 */  addu       $a2, $a2, $at
/* B5AE0 800B4EE0 3C013F80 */  lui        $at, 0x3f80
/* B5AE4 800B4EE4 44818000 */  mtc1       $at, $f16
/* B5AE8 800B4EE8 240D0140 */  addiu      $t5, $zero, 0x140
/* B5AEC 800B4EEC 01AA2823 */  subu       $a1, $t5, $t2
/* B5AF0 800B4EF0 00052842 */  srl        $a1, $a1, 1
/* B5AF4 800B4EF4 24C60010 */  addiu      $a2, $a2, 0x10
/* B5AF8 800B4EF8 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5AFC 800B4EFC 3C073F80 */  lui        $a3, 0x3f80
/* B5B00 800B4F00 AFA00014 */  sw         $zero, 0x14($sp)
/* B5B04 800B4F04 AFA00018 */  sw         $zero, 0x18($sp)
/* B5B08 800B4F08 0C003359 */  jal        func_8000CD64
/* B5B0C 800B4F0C E7B00010 */   swc1      $f16, 0x10($sp)
/* B5B10 800B4F10 87AB00D4 */  lh         $t3, 0xd4($sp)
/* B5B14 800B4F14 3C0D800E */  lui        $t5, %hi(D_800D9FA0)
/* B5B18 800B4F18 8DAD9FA0 */  lw         $t5, %lo(D_800D9FA0)($t5)
/* B5B1C 800B4F1C 256E0001 */  addiu      $t6, $t3, 1
/* B5B20 800B4F20 000E6400 */  sll        $t4, $t6, 0x10
/* B5B24 800B4F24 000D5080 */  sll        $t2, $t5, 2
/* B5B28 800B4F28 000C4C03 */  sra        $t1, $t4, 0x10
/* B5B2C 800B4F2C 014D5021 */  addu       $t2, $t2, $t5
/* B5B30 800B4F30 25380001 */  addiu      $t8, $t1, 1
/* B5B34 800B4F34 000A50C0 */  sll        $t2, $t2, 3
/* B5B38 800B4F38 00184400 */  sll        $t0, $t8, 0x10
/* B5B3C 800B4F3C 014D5021 */  addu       $t2, $t2, $t5
/* B5B40 800B4F40 A7AE00D4 */  sh         $t6, 0xd4($sp)
/* B5B44 800B4F44 0008CC03 */  sra        $t9, $t0, 0x10
/* B5B48 800B4F48 000A5080 */  sll        $t2, $t2, 2
/* B5B4C 800B4F4C 3C058017 */  lui        $a1, %hi(D_80176E54)
/* B5B50 800B4F50 A7B800D4 */  sh         $t8, 0xd4($sp)
/* B5B54 800B4F54 272F0001 */  addiu      $t7, $t9, 1
/* B5B58 800B4F58 00AA2821 */  addu       $a1, $a1, $t2
/* B5B5C 800B4F5C A7AF00D4 */  sh         $t7, 0xd4($sp)
/* B5B60 800B4F60 8CA56E54 */  lw         $a1, %lo(D_80176E54)($a1)
/* B5B64 800B4F64 0C03313D */  jal        func_800CC4F4
/* B5B68 800B4F68 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5B6C 800B4F6C 0C033527 */  jal        func_800CD49C
/* B5B70 800B4F70 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5B74 800B4F74 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5B78 800B4F78 00408025 */  or         $s0, $v0, $zero
/* B5B7C 800B4F7C 001058C0 */  sll        $t3, $s0, 3
/* B5B80 800B4F80 00C00821 */  addu       $at, $a2, $zero
/* B5B84 800B4F84 000130C0 */  sll        $a2, $at, 3
/* B5B88 800B4F88 00C13021 */  addu       $a2, $a2, $at
/* B5B8C 800B4F8C 3C013F80 */  lui        $at, 0x3f80
/* B5B90 800B4F90 44819000 */  mtc1       $at, $f18
/* B5B94 800B4F94 240E0140 */  addiu      $t6, $zero, 0x140
/* B5B98 800B4F98 01CB2823 */  subu       $a1, $t6, $t3
/* B5B9C 800B4F9C 00052842 */  srl        $a1, $a1, 1
/* B5BA0 800B4FA0 24C60010 */  addiu      $a2, $a2, 0x10
/* B5BA4 800B4FA4 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5BA8 800B4FA8 3C073F80 */  lui        $a3, 0x3f80
/* B5BAC 800B4FAC AFA00014 */  sw         $zero, 0x14($sp)
/* B5BB0 800B4FB0 AFA00018 */  sw         $zero, 0x18($sp)
/* B5BB4 800B4FB4 0C003359 */  jal        func_8000CD64
/* B5BB8 800B4FB8 E7B20010 */   swc1      $f18, 0x10($sp)
/* B5BBC 800B4FBC 3C0F800E */  lui        $t7, %hi(D_800D9FA0)
/* B5BC0 800B4FC0 8DEF9FA0 */  lw         $t7, %lo(D_800D9FA0)($t7)
/* B5BC4 800B4FC4 87AC00D4 */  lh         $t4, 0xd4($sp)
/* B5BC8 800B4FC8 3C058017 */  lui        $a1, 0x8017
/* B5BCC 800B4FCC 000F6880 */  sll        $t5, $t7, 2
/* B5BD0 800B4FD0 01AF6821 */  addu       $t5, $t5, $t7
/* B5BD4 800B4FD4 000D68C0 */  sll        $t5, $t5, 3
/* B5BD8 800B4FD8 25890001 */  addiu      $t1, $t4, 1
/* B5BDC 800B4FDC 0009C400 */  sll        $t8, $t1, 0x10
/* B5BE0 800B4FE0 01AF6821 */  addu       $t5, $t5, $t7
/* B5BE4 800B4FE4 00184403 */  sra        $t0, $t8, 0x10
/* B5BE8 800B4FE8 000D6880 */  sll        $t5, $t5, 2
/* B5BEC 800B4FEC A7A900D4 */  sh         $t1, 0xd4($sp)
/* B5BF0 800B4FF0 25190001 */  addiu      $t9, $t0, 1
/* B5BF4 800B4FF4 00AD2821 */  addu       $a1, $a1, $t5
/* B5BF8 800B4FF8 A7B900D4 */  sh         $t9, 0xd4($sp)
/* B5BFC 800B4FFC 8CA56E58 */  lw         $a1, 0x6e58($a1)
/* B5C00 800B5000 0C03313D */  jal        func_800CC4F4
/* B5C04 800B5004 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5C08 800B5008 0C033527 */  jal        func_800CD49C
/* B5C0C 800B500C 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5C10 800B5010 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5C14 800B5014 00408025 */  or         $s0, $v0, $zero
/* B5C18 800B5018 001050C0 */  sll        $t2, $s0, 3
/* B5C1C 800B501C 00C00821 */  addu       $at, $a2, $zero
/* B5C20 800B5020 000130C0 */  sll        $a2, $at, 3
/* B5C24 800B5024 00C13021 */  addu       $a2, $a2, $at
/* B5C28 800B5028 3C013F80 */  lui        $at, 0x3f80
/* B5C2C 800B502C 44812000 */  mtc1       $at, $f4
/* B5C30 800B5030 240E0140 */  addiu      $t6, $zero, 0x140
/* B5C34 800B5034 01CA2823 */  subu       $a1, $t6, $t2
/* B5C38 800B5038 00052842 */  srl        $a1, $a1, 1
/* B5C3C 800B503C 24C60010 */  addiu      $a2, $a2, 0x10
/* B5C40 800B5040 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5C44 800B5044 3C073F80 */  lui        $a3, 0x3f80
/* B5C48 800B5048 AFA00014 */  sw         $zero, 0x14($sp)
/* B5C4C 800B504C AFA00018 */  sw         $zero, 0x18($sp)
/* B5C50 800B5050 0C003359 */  jal        func_8000CD64
/* B5C54 800B5054 E7A40010 */   swc1      $f4, 0x10($sp)
/* B5C58 800B5058 3C09800E */  lui        $t1, %hi(D_800D9FA0)
/* B5C5C 800B505C 8D299FA0 */  lw         $t1, %lo(D_800D9FA0)($t1)
/* B5C60 800B5060 87AB00D4 */  lh         $t3, 0xd4($sp)
/* B5C64 800B5064 3C058017 */  lui        $a1, 0x8017
/* B5C68 800B5068 0009C080 */  sll        $t8, $t1, 2
/* B5C6C 800B506C 0309C021 */  addu       $t8, $t8, $t1
/* B5C70 800B5070 0018C0C0 */  sll        $t8, $t8, 3
/* B5C74 800B5074 0309C021 */  addu       $t8, $t8, $t1
/* B5C78 800B5078 0018C080 */  sll        $t8, $t8, 2
/* B5C7C 800B507C 00B82821 */  addu       $a1, $a1, $t8
/* B5C80 800B5080 256C0001 */  addiu      $t4, $t3, 1
/* B5C84 800B5084 A7AC00D4 */  sh         $t4, 0xd4($sp)
/* B5C88 800B5088 8CA56E5C */  lw         $a1, 0x6e5c($a1)
/* B5C8C 800B508C 0C03313D */  jal        func_800CC4F4
/* B5C90 800B5090 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5C94 800B5094 0C033527 */  jal        func_800CD49C
/* B5C98 800B5098 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5C9C 800B509C 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5CA0 800B50A0 00408025 */  or         $s0, $v0, $zero
/* B5CA4 800B50A4 001040C0 */  sll        $t0, $s0, 3
/* B5CA8 800B50A8 00C00821 */  addu       $at, $a2, $zero
/* B5CAC 800B50AC 000130C0 */  sll        $a2, $at, 3
/* B5CB0 800B50B0 00C13021 */  addu       $a2, $a2, $at
/* B5CB4 800B50B4 3C013F80 */  lui        $at, 0x3f80
/* B5CB8 800B50B8 44813000 */  mtc1       $at, $f6
/* B5CBC 800B50BC 24190140 */  addiu      $t9, $zero, 0x140
/* B5CC0 800B50C0 03282823 */  subu       $a1, $t9, $t0
/* B5CC4 800B50C4 00052842 */  srl        $a1, $a1, 1
/* B5CC8 800B50C8 24C60010 */  addiu      $a2, $a2, 0x10
/* B5CCC 800B50CC 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5CD0 800B50D0 3C073F80 */  lui        $a3, 0x3f80
/* B5CD4 800B50D4 AFA00014 */  sw         $zero, 0x14($sp)
/* B5CD8 800B50D8 AFA00018 */  sw         $zero, 0x18($sp)
/* B5CDC 800B50DC 0C003359 */  jal        func_8000CD64
/* B5CE0 800B50E0 E7A60010 */   swc1      $f6, 0x10($sp)
/* B5CE4 800B50E4 3C0E800E */  lui        $t6, %hi(D_800D9FA0)
/* B5CE8 800B50E8 8DCE9FA0 */  lw         $t6, %lo(D_800D9FA0)($t6)
/* B5CEC 800B50EC 87AF00D4 */  lh         $t7, 0xd4($sp)
/* B5CF0 800B50F0 3C058017 */  lui        $a1, 0x8017
/* B5CF4 800B50F4 000E5080 */  sll        $t2, $t6, 2
/* B5CF8 800B50F8 014E5021 */  addu       $t2, $t2, $t6
/* B5CFC 800B50FC 000A50C0 */  sll        $t2, $t2, 3
/* B5D00 800B5100 014E5021 */  addu       $t2, $t2, $t6
/* B5D04 800B5104 000A5080 */  sll        $t2, $t2, 2
/* B5D08 800B5108 00AA2821 */  addu       $a1, $a1, $t2
/* B5D0C 800B510C 25ED0001 */  addiu      $t5, $t7, 1
/* B5D10 800B5110 A7AD00D4 */  sh         $t5, 0xd4($sp)
/* B5D14 800B5114 8CA56E60 */  lw         $a1, 0x6e60($a1)
/* B5D18 800B5118 0C03313D */  jal        func_800CC4F4
/* B5D1C 800B511C 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5D20 800B5120 0C033527 */  jal        func_800CD49C
/* B5D24 800B5124 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5D28 800B5128 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5D2C 800B512C 00408025 */  or         $s0, $v0, $zero
/* B5D30 800B5130 001058C0 */  sll        $t3, $s0, 3
/* B5D34 800B5134 00C00821 */  addu       $at, $a2, $zero
/* B5D38 800B5138 000130C0 */  sll        $a2, $at, 3
/* B5D3C 800B513C 00C13021 */  addu       $a2, $a2, $at
/* B5D40 800B5140 3C013F80 */  lui        $at, 0x3f80
/* B5D44 800B5144 44814000 */  mtc1       $at, $f8
/* B5D48 800B5148 240C0140 */  addiu      $t4, $zero, 0x140
/* B5D4C 800B514C 018B2823 */  subu       $a1, $t4, $t3
/* B5D50 800B5150 00052842 */  srl        $a1, $a1, 1
/* B5D54 800B5154 24C60010 */  addiu      $a2, $a2, 0x10
/* B5D58 800B5158 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5D5C 800B515C 3C073F80 */  lui        $a3, 0x3f80
/* B5D60 800B5160 AFA00014 */  sw         $zero, 0x14($sp)
/* B5D64 800B5164 AFA00018 */  sw         $zero, 0x18($sp)
/* B5D68 800B5168 0C003359 */  jal        func_8000CD64
/* B5D6C 800B516C E7A80010 */   swc1      $f8, 0x10($sp)
/* B5D70 800B5170 3C19800E */  lui        $t9, %hi(D_800D9FA0)
/* B5D74 800B5174 8F399FA0 */  lw         $t9, %lo(D_800D9FA0)($t9)
/* B5D78 800B5178 87A900D4 */  lh         $t1, 0xd4($sp)
/* B5D7C 800B517C 3C058017 */  lui        $a1, 0x8017
/* B5D80 800B5180 00194080 */  sll        $t0, $t9, 2
/* B5D84 800B5184 01194021 */  addu       $t0, $t0, $t9
/* B5D88 800B5188 000840C0 */  sll        $t0, $t0, 3
/* B5D8C 800B518C 01194021 */  addu       $t0, $t0, $t9
/* B5D90 800B5190 00084080 */  sll        $t0, $t0, 2
/* B5D94 800B5194 00A82821 */  addu       $a1, $a1, $t0
/* B5D98 800B5198 25380001 */  addiu      $t8, $t1, 1
/* B5D9C 800B519C A7B800D4 */  sh         $t8, 0xd4($sp)
/* B5DA0 800B51A0 8CA56E64 */  lw         $a1, 0x6e64($a1)
/* B5DA4 800B51A4 0C03313D */  jal        func_800CC4F4
/* B5DA8 800B51A8 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5DAC 800B51AC 0C033527 */  jal        func_800CD49C
/* B5DB0 800B51B0 27A400A4 */   addiu     $a0, $sp, 0xa4
/* B5DB4 800B51B4 87A600D4 */  lh         $a2, 0xd4($sp)
/* B5DB8 800B51B8 00408025 */  or         $s0, $v0, $zero
/* B5DBC 800B51BC 001078C0 */  sll        $t7, $s0, 3
/* B5DC0 800B51C0 00C00821 */  addu       $at, $a2, $zero
/* B5DC4 800B51C4 000130C0 */  sll        $a2, $at, 3
/* B5DC8 800B51C8 00C13021 */  addu       $a2, $a2, $at
/* B5DCC 800B51CC 3C013F80 */  lui        $at, 0x3f80
/* B5DD0 800B51D0 44815000 */  mtc1       $at, $f10
/* B5DD4 800B51D4 240D0140 */  addiu      $t5, $zero, 0x140
/* B5DD8 800B51D8 01AF2823 */  subu       $a1, $t5, $t7
/* B5DDC 800B51DC 00052842 */  srl        $a1, $a1, 1
/* B5DE0 800B51E0 24C60010 */  addiu      $a2, $a2, 0x10
/* B5DE4 800B51E4 27A400A4 */  addiu      $a0, $sp, 0xa4
/* B5DE8 800B51E8 3C073F80 */  lui        $a3, 0x3f80
/* B5DEC 800B51EC AFA00014 */  sw         $zero, 0x14($sp)
/* B5DF0 800B51F0 AFA00018 */  sw         $zero, 0x18($sp)
/* B5DF4 800B51F4 0C003359 */  jal        func_8000CD64
/* B5DF8 800B51F8 E7AA0010 */   swc1      $f10, 0x10($sp)
/* B5DFC 800B51FC 3C0E800F */  lui        $t6, %hi(D_800EA0D4)
/* B5E00 800B5200 25CEA0D4 */  addiu      $t6, $t6, %lo(D_800EA0D4)
/* B5E04 800B5204 81CA0000 */  lb         $t2, ($t6)
/* B5E08 800B5208 24010030 */  addiu      $at, $zero, 0x30
/* B5E0C 800B520C 0141001A */  div        $zero, $t2, $at
/* B5E10 800B5210 00006012 */  mflo       $t4
/* B5E14 800B5214 000C5C00 */  sll        $t3, $t4, 0x10
/* B5E18 800B5218 000B4C03 */  sra        $t1, $t3, 0x10
/* B5E1C 800B521C 0521000C */  bgez       $t1, .L800B5250
/* B5E20 800B5220 A7AC00D4 */   sh        $t4, 0xd4($sp)
/* B5E24 800B5224 3C188014 */  lui        $t8, %hi(D_8014427A)
/* B5E28 800B5228 8718427A */  lh         $t8, %lo(D_8014427A)($t8)
/* B5E2C 800B522C 17000008 */  bnez       $t8, .L800B5250
/* B5E30 800B5230 00000000 */   nop
/* B5E34 800B5234 3C198014 */  lui        $t9, %hi(D_80144278)
/* B5E38 800B5238 87394278 */  lh         $t9, %lo(D_80144278)($t9)
/* B5E3C 800B523C 1F200004 */  bgtz       $t9, .L800B5250
/* B5E40 800B5240 00000000 */   nop
/* B5E44 800B5244 24080001 */  addiu      $t0, $zero, 1
/* B5E48 800B5248 3C018014 */  lui        $at, %hi(D_8014427A)
/* B5E4C 800B524C A428427A */  sh         $t0, %lo(D_8014427A)($at)
.L800B5250:
/* B5E50 800B5250 87AD00D4 */  lh         $t5, 0xd4($sp)
/* B5E54 800B5254 19A0000C */  blez       $t5, .L800B5288
/* B5E58 800B5258 00000000 */   nop
/* B5E5C 800B525C 3C0F8014 */  lui        $t7, %hi(D_8014427A)
/* B5E60 800B5260 85EF427A */  lh         $t7, %lo(D_8014427A)($t7)
/* B5E64 800B5264 15E00008 */  bnez       $t7, .L800B5288
/* B5E68 800B5268 00000000 */   nop
/* B5E6C 800B526C 3C0E8014 */  lui        $t6, %hi(D_80144278)
/* B5E70 800B5270 85CE4278 */  lh         $t6, %lo(D_80144278)($t6)
/* B5E74 800B5274 19C00004 */  blez       $t6, .L800B5288
/* B5E78 800B5278 00000000 */   nop
/* B5E7C 800B527C 240AFFFF */  addiu      $t2, $zero, -1
/* B5E80 800B5280 3C018014 */  lui        $at, %hi(D_8014427A)
/* B5E84 800B5284 A42A427A */  sh         $t2, %lo(D_8014427A)($at)
.L800B5288:
/* B5E88 800B5288 3C0C800F */  lui        $t4, %hi(D_800EA0D8)
/* B5E8C 800B528C 258CA0D8 */  addiu      $t4, $t4, %lo(D_800EA0D8)
/* B5E90 800B5290 958B0000 */  lhu        $t3, ($t4)
/* B5E94 800B5294 31698000 */  andi       $t1, $t3, 0x8000
/* B5E98 800B5298 1120001F */  beqz       $t1, .L800B5318
/* B5E9C 800B529C 00000000 */   nop
/* B5EA0 800B52A0 3C188014 */  lui        $t8, %hi(D_80144284)
/* B5EA4 800B52A4 8F184284 */  lw         $t8, %lo(D_80144284)($t8)
/* B5EA8 800B52A8 17000025 */  bnez       $t8, .L800B5340
/* B5EAC 800B52AC 00000000 */   nop
/* B5EB0 800B52B0 3C198014 */  lui        $t9, %hi(D_8014427A)
/* B5EB4 800B52B4 8739427A */  lh         $t9, %lo(D_8014427A)($t9)
/* B5EB8 800B52B8 17200021 */  bnez       $t9, .L800B5340
/* B5EBC 800B52BC 00000000 */   nop
/* B5EC0 800B52C0 3C0D8014 */  lui        $t5, %hi(D_80144278)
/* B5EC4 800B52C4 85AD4278 */  lh         $t5, %lo(D_80144278)($t5)
/* B5EC8 800B52C8 24080001 */  addiu      $t0, $zero, 1
/* B5ECC 800B52CC 3C018014 */  lui        $at, %hi(D_80144284)
/* B5ED0 800B52D0 15A00006 */  bnez       $t5, .L800B52EC
/* B5ED4 800B52D4 AC284284 */   sw        $t0, %lo(D_80144284)($at)
/* B5ED8 800B52D8 0C000D2E */  jal        func_800034B8
/* B5EDC 800B52DC 00000000 */   nop
/* B5EE0 800B52E0 3C018014 */  lui        $at, %hi(D_80144280)
/* B5EE4 800B52E4 10000016 */  b          .L800B5340
/* B5EE8 800B52E8 AC224280 */   sw        $v0, %lo(D_80144280)($at)
.L800B52EC:
/* B5EEC 800B52EC 3C018014 */  lui        $at, %hi(D_80144278)
/* B5EF0 800B52F0 A4204278 */  sh         $zero, %lo(D_80144278)($at)
/* B5EF4 800B52F4 3C018014 */  lui        $at, %hi(D_8014427A)
/* B5EF8 800B52F8 A420427A */  sh         $zero, %lo(D_8014427A)($at)
/* B5EFC 800B52FC 3C018014 */  lui        $at, %hi(D_80144290)
/* B5F00 800B5300 AC204290 */  sw         $zero, %lo(D_80144290)($at)
/* B5F04 800B5304 0C000BA0 */  jal        func_80002E80
/* B5F08 800B5308 24040001 */   addiu     $a0, $zero, 1
/* B5F0C 800B530C 3C018014 */  lui        $at, %hi(D_80144280)
/* B5F10 800B5310 1000000B */  b          .L800B5340
/* B5F14 800B5314 AC224280 */   sw        $v0, %lo(D_80144280)($at)
.L800B5318:
/* B5F18 800B5318 3C018014 */  lui        $at, %hi(D_80144284)
/* B5F1C 800B531C AC204284 */  sw         $zero, %lo(D_80144284)($at)
.L800B5320:
/* B5F20 800B5320 10000007 */  b          .L800B5340
/* B5F24 800B5324 00000000 */   nop
.L800B5328:
/* B5F28 800B5328 3C0F8014 */  lui        $t7, %hi(D_80144280)
/* B5F2C 800B532C 8DEF4280 */  lw         $t7, %lo(D_80144280)($t7)
/* B5F30 800B5330 3C01800F */  lui        $at, %hi(D_800F2A48)
/* B5F34 800B5334 AC2F2A48 */  sw         $t7, %lo(D_800F2A48)($at)
/* B5F38 800B5338 3C01800D */  lui        $at, %hi(D_800D6300)
/* B5F3C 800B533C AC206300 */  sw         $zero, %lo(D_800D6300)($at)
.L800B5340:
/* B5F40 800B5340 8FBF003C */  lw         $ra, 0x3c($sp)
/* B5F44 800B5344 8FB00038 */  lw         $s0, 0x38($sp)
/* B5F48 800B5348 27BD00D8 */  addiu      $sp, $sp, 0xd8
/* B5F4C 800B534C 03E00008 */  jr         $ra
/* B5F50 800B5350 00000000 */   nop

glabel func_800B5354
/* B5F54 800B5354 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B5F58 800B5358 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5F5C 800B535C AFA40030 */  sw         $a0, 0x30($sp)
/* B5F60 800B5360 AFA50034 */  sw         $a1, 0x34($sp)
/* B5F64 800B5364 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B5F68 800B5368 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B5F6C 800B536C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B5F70 800B5370 3C18BA00 */  lui        $t8, 0xba00
/* B5F74 800B5374 AFAE002C */  sw         $t6, 0x2c($sp)
/* B5F78 800B5378 8FB9002C */  lw         $t9, 0x2c($sp)
/* B5F7C 800B537C 25CF0008 */  addiu      $t7, $t6, 8
/* B5F80 800B5380 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* B5F84 800B5384 37181402 */  ori        $t8, $t8, 0x1402
/* B5F88 800B5388 AF380000 */  sw         $t8, ($t9)
/* B5F8C 800B538C 8FA9002C */  lw         $t1, 0x2c($sp)
/* B5F90 800B5390 3C080030 */  lui        $t0, 0x30
/* B5F94 800B5394 AD280004 */  sw         $t0, 4($t1)
/* B5F98 800B5398 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B5F9C 800B539C 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B5FA0 800B53A0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B5FA4 800B53A4 3C0CF700 */  lui        $t4, 0xf700
/* B5FA8 800B53A8 AFAA0028 */  sw         $t2, 0x28($sp)
/* B5FAC 800B53AC 8FAD0028 */  lw         $t5, 0x28($sp)
/* B5FB0 800B53B0 254B0008 */  addiu      $t3, $t2, 8
/* B5FB4 800B53B4 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B5FB8 800B53B8 ADAC0000 */  sw         $t4, ($t5)
/* B5FBC 800B53BC 8FAF0028 */  lw         $t7, 0x28($sp)
/* B5FC0 800B53C0 3C0E0001 */  lui        $t6, 1
/* B5FC4 800B53C4 35CE0001 */  ori        $t6, $t6, 1
/* B5FC8 800B53C8 ADEE0004 */  sw         $t6, 4($t7)
/* B5FCC 800B53CC 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* B5FD0 800B53D0 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* B5FD4 800B53D4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B5FD8 800B53D8 3C08F64F */  lui        $t0, 0xf64f
/* B5FDC 800B53DC AFB80024 */  sw         $t8, 0x24($sp)
/* B5FE0 800B53E0 8FA90024 */  lw         $t1, 0x24($sp)
/* B5FE4 800B53E4 27190008 */  addiu      $t9, $t8, 8
/* B5FE8 800B53E8 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* B5FEC 800B53EC 3508C3BC */  ori        $t0, $t0, 0xc3bc
/* B5FF0 800B53F0 AD280000 */  sw         $t0, ($t1)
/* B5FF4 800B53F4 8FAA0024 */  lw         $t2, 0x24($sp)
/* B5FF8 800B53F8 AD400004 */  sw         $zero, 4($t2)
/* B5FFC 800B53FC 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* B6000 800B5400 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* B6004 800B5404 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6008 800B5408 3C0DE700 */  lui        $t5, 0xe700
/* B600C 800B540C AFAB0020 */  sw         $t3, 0x20($sp)
/* B6010 800B5410 8FAE0020 */  lw         $t6, 0x20($sp)
/* B6014 800B5414 256C0008 */  addiu      $t4, $t3, 8
/* B6018 800B5418 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* B601C 800B541C ADCD0000 */  sw         $t5, ($t6)
/* B6020 800B5420 8FAF0020 */  lw         $t7, 0x20($sp)
/* B6024 800B5424 ADE00004 */  sw         $zero, 4($t7)
/* B6028 800B5428 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* B602C 800B542C 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* B6030 800B5430 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6034 800B5434 3C08BA00 */  lui        $t0, 0xba00
/* B6038 800B5438 AFB8001C */  sw         $t8, 0x1c($sp)
/* B603C 800B543C 8FA9001C */  lw         $t1, 0x1c($sp)
/* B6040 800B5440 27190008 */  addiu      $t9, $t8, 8
/* B6044 800B5444 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* B6048 800B5448 35081402 */  ori        $t0, $t0, 0x1402
/* B604C 800B544C AD280000 */  sw         $t0, ($t1)
/* B6050 800B5450 8FAA001C */  lw         $t2, 0x1c($sp)
/* B6054 800B5454 AD400004 */  sw         $zero, 4($t2)
/* B6058 800B5458 3C0B0049 */  lui        $t3, 0x49
/* B605C 800B545C 3C0C0049 */  lui        $t4, 0x49
/* B6060 800B5460 258C2460 */  addiu      $t4, $t4, 0x2460
/* B6064 800B5464 256BEF20 */  addiu      $t3, $t3, -0x10e0
/* B6068 800B5468 3C058033 */  lui        $a1, %hi(D_8032E000)
/* B606C 800B546C 24A5E000 */  addiu      $a1, $a1, %lo(D_8032E000)
/* B6070 800B5470 01602025 */  or         $a0, $t3, $zero
/* B6074 800B5474 0C0003F0 */  jal        func_80000FC0
/* B6078 800B5478 018B3023 */   subu      $a2, $t4, $t3
/* B607C 800B547C 3C0D004A */  lui        $t5, 0x4a
/* B6080 800B5480 3C0E004B */  lui        $t6, 0x4b
/* B6084 800B5484 25CE73A0 */  addiu      $t6, $t6, 0x73a0
/* B6088 800B5488 25AD45C0 */  addiu      $t5, $t5, 0x45c0
/* B608C 800B548C 3C058033 */  lui        $a1, %hi(D_80331540)
/* B6090 800B5490 24A51540 */  addiu      $a1, $a1, %lo(D_80331540)
/* B6094 800B5494 01A02025 */  or         $a0, $t5, $zero
/* B6098 800B5498 0C0003F0 */  jal        func_80000FC0
/* B609C 800B549C 01CD3023 */   subu      $a2, $t6, $t5
/* B60A0 800B54A0 3C0F0012 */  lui        $t7, 0x12
/* B60A4 800B54A4 3C180013 */  lui        $t8, 0x13
/* B60A8 800B54A8 2718D6D0 */  addiu      $t8, $t8, -0x2930
/* B60AC 800B54AC 25EF3CD0 */  addiu      $t7, $t7, 0x3cd0
/* B60B0 800B54B0 3C05801C */  lui        $a1, %hi(D_801C65F0)
/* B60B4 800B54B4 24A565F0 */  addiu      $a1, $a1, %lo(D_801C65F0)
/* B60B8 800B54B8 01E02025 */  or         $a0, $t7, $zero
/* B60BC 800B54BC 0C0003F0 */  jal        func_80000FC0
/* B60C0 800B54C0 030F3023 */   subu      $a2, $t8, $t7
/* B60C4 800B54C4 0C0070AE */  jal        func_8001C2B8
/* B60C8 800B54C8 00000000 */   nop
/* B60CC 800B54CC 3C018014 */  lui        $at, %hi(D_801442A8)
/* B60D0 800B54D0 AC2042A8 */  sw         $zero, %lo(D_801442A8)($at)
/* B60D4 800B54D4 3C018014 */  lui        $at, %hi(D_80144270)
/* B60D8 800B54D8 24190001 */  addiu      $t9, $zero, 1
/* B60DC 800B54DC AC394270 */  sw         $t9, %lo(D_80144270)($at)
/* B60E0 800B54E0 3C098018 */  lui        $t1, %hi(D_8017A2B8)
/* B60E4 800B54E4 8529A2B8 */  lh         $t1, %lo(D_8017A2B8)($t1)
/* B60E8 800B54E8 3C01800D */  lui        $at, %hi(D_800D6300)
/* B60EC 800B54EC 24080021 */  addiu      $t0, $zero, 0x21
/* B60F0 800B54F0 AC286300 */  sw         $t0, %lo(D_800D6300)($at)
/* B60F4 800B54F4 2401FFFF */  addiu      $at, $zero, -1
/* B60F8 800B54F8 11210003 */  beq        $t1, $at, .L800B5508
/* B60FC 800B54FC 3C01800E */   lui       $at, %hi(D_800D9FA0)
/* B6100 800B5500 10000004 */  b          .L800B5514
/* B6104 800B5504 AC299FA0 */   sw        $t1, %lo(D_800D9FA0)($at)
.L800B5508:
/* B6108 800B5508 240A0001 */  addiu      $t2, $zero, 1
/* B610C 800B550C 3C01800E */  lui        $at, %hi(D_800D9FA0)
/* B6110 800B5510 AC2A9FA0 */  sw         $t2, %lo(D_800D9FA0)($at)
.L800B5514:
/* B6114 800B5514 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6118 800B5518 27BD0030 */  addiu      $sp, $sp, 0x30
/* B611C 800B551C 03E00008 */  jr         $ra
/* B6120 800B5520 00000000 */   nop

glabel func_800B5524
/* B6124 800B5524 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* B6128 800B5528 AFBF0034 */  sw         $ra, 0x34($sp)
/* B612C 800B552C AFA400B0 */  sw         $a0, 0xb0($sp)
/* B6130 800B5530 AFA500B4 */  sw         $a1, 0xb4($sp)
/* B6134 800B5534 3C0E8018 */  lui        $t6, %hi(D_8017A2B8)
/* B6138 800B5538 85CEA2B8 */  lh         $t6, %lo(D_8017A2B8)($t6)
/* B613C 800B553C 2401FFFF */  addiu      $at, $zero, -1
/* B6140 800B5540 11C10003 */  beq        $t6, $at, .L800B5550
/* B6144 800B5544 3C01800E */   lui       $at, %hi(D_800D9FA0)
/* B6148 800B5548 10000004 */  b          .L800B555C
/* B614C 800B554C AC2E9FA0 */   sw        $t6, %lo(D_800D9FA0)($at)
.L800B5550:
/* B6150 800B5550 240F0001 */  addiu      $t7, $zero, 1
/* B6154 800B5554 3C01800E */  lui        $at, %hi(D_800D9FA0)
/* B6158 800B5558 AC2F9FA0 */  sw         $t7, %lo(D_800D9FA0)($at)
.L800B555C:
/* B615C 800B555C 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* B6160 800B5560 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* B6164 800B5564 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6168 800B5568 3C08BA00 */  lui        $t0, 0xba00
/* B616C 800B556C AFB800A8 */  sw         $t8, 0xa8($sp)
/* B6170 800B5570 8FA900A8 */  lw         $t1, 0xa8($sp)
/* B6174 800B5574 27190008 */  addiu      $t9, $t8, 8
/* B6178 800B5578 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* B617C 800B557C 35081402 */  ori        $t0, $t0, 0x1402
/* B6180 800B5580 AD280000 */  sw         $t0, ($t1)
/* B6184 800B5584 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* B6188 800B5588 3C0A0030 */  lui        $t2, 0x30
/* B618C 800B558C AD6A0004 */  sw         $t2, 4($t3)
/* B6190 800B5590 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* B6194 800B5594 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* B6198 800B5598 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B619C 800B559C 3C0EF700 */  lui        $t6, 0xf700
/* B61A0 800B55A0 AFAC00A4 */  sw         $t4, 0xa4($sp)
/* B61A4 800B55A4 8FAF00A4 */  lw         $t7, 0xa4($sp)
/* B61A8 800B55A8 258D0008 */  addiu      $t5, $t4, 8
/* B61AC 800B55AC AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* B61B0 800B55B0 ADEE0000 */  sw         $t6, ($t7)
/* B61B4 800B55B4 8FB900A4 */  lw         $t9, 0xa4($sp)
/* B61B8 800B55B8 3C180001 */  lui        $t8, 1
/* B61BC 800B55BC 37180001 */  ori        $t8, $t8, 1
/* B61C0 800B55C0 AF380004 */  sw         $t8, 4($t9)
/* B61C4 800B55C4 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B61C8 800B55C8 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B61CC 800B55CC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B61D0 800B55D0 3C0AF64F */  lui        $t2, 0xf64f
/* B61D4 800B55D4 AFA800A0 */  sw         $t0, 0xa0($sp)
/* B61D8 800B55D8 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* B61DC 800B55DC 25090008 */  addiu      $t1, $t0, 8
/* B61E0 800B55E0 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B61E4 800B55E4 354AC3BC */  ori        $t2, $t2, 0xc3bc
/* B61E8 800B55E8 AD6A0000 */  sw         $t2, ($t3)
/* B61EC 800B55EC 8FAC00A0 */  lw         $t4, 0xa0($sp)
/* B61F0 800B55F0 AD800004 */  sw         $zero, 4($t4)
/* B61F4 800B55F4 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B61F8 800B55F8 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B61FC 800B55FC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6200 800B5600 3C0FE700 */  lui        $t7, 0xe700
/* B6204 800B5604 AFAD009C */  sw         $t5, 0x9c($sp)
/* B6208 800B5608 8FB8009C */  lw         $t8, 0x9c($sp)
/* B620C 800B560C 25AE0008 */  addiu      $t6, $t5, 8
/* B6210 800B5610 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B6214 800B5614 AF0F0000 */  sw         $t7, ($t8)
/* B6218 800B5618 8FB9009C */  lw         $t9, 0x9c($sp)
/* B621C 800B561C AF200004 */  sw         $zero, 4($t9)
/* B6220 800B5620 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B6224 800B5624 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B6228 800B5628 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B622C 800B562C 3C0ABA00 */  lui        $t2, 0xba00
/* B6230 800B5630 AFA80098 */  sw         $t0, 0x98($sp)
/* B6234 800B5634 8FAB0098 */  lw         $t3, 0x98($sp)
/* B6238 800B5638 25090008 */  addiu      $t1, $t0, 8
/* B623C 800B563C AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B6240 800B5640 354A1402 */  ori        $t2, $t2, 0x1402
/* B6244 800B5644 AD6A0000 */  sw         $t2, ($t3)
/* B6248 800B5648 8FAC0098 */  lw         $t4, 0x98($sp)
/* B624C 800B564C AD800004 */  sw         $zero, 4($t4)
/* B6250 800B5650 3C014120 */  lui        $at, 0x4120
/* B6254 800B5654 44812000 */  mtc1       $at, $f4
/* B6258 800B5658 3C0145FA */  lui        $at, 0x45fa
/* B625C 800B565C 44813000 */  mtc1       $at, $f6
/* B6260 800B5660 3C013F80 */  lui        $at, 0x3f80
/* B6264 800B5664 44814000 */  mtc1       $at, $f8
/* B6268 800B5668 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* B626C 800B566C 3C073FAA */  lui        $a3, 0x3faa
/* B6270 800B5670 34E7AAAB */  ori        $a3, $a3, 0xaaab
/* B6274 800B5674 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* B6278 800B5678 27A500AE */  addiu      $a1, $sp, 0xae
/* B627C 800B567C 3C064204 */  lui        $a2, 0x4204
/* B6280 800B5680 E7A40010 */  swc1       $f4, 0x10($sp)
/* B6284 800B5684 E7A60014 */  swc1       $f6, 0x14($sp)
/* B6288 800B5688 0C030EC4 */  jal        func_800C3B10
/* B628C 800B568C E7A80018 */   swc1      $f8, 0x18($sp)
/* B6290 800B5690 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B6294 800B5694 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B6298 800B5698 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B629C 800B569C 3C0FBC00 */  lui        $t7, 0xbc00
/* B62A0 800B56A0 AFAD0094 */  sw         $t5, 0x94($sp)
/* B62A4 800B56A4 8FB80094 */  lw         $t8, 0x94($sp)
/* B62A8 800B56A8 25AE0008 */  addiu      $t6, $t5, 8
/* B62AC 800B56AC AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B62B0 800B56B0 35EF000E */  ori        $t7, $t7, 0xe
/* B62B4 800B56B4 AF0F0000 */  sw         $t7, ($t8)
/* B62B8 800B56B8 8FA80094 */  lw         $t0, 0x94($sp)
/* B62BC 800B56BC 97B900AE */  lhu        $t9, 0xae($sp)
/* B62C0 800B56C0 AD190004 */  sw         $t9, 4($t0)
/* B62C4 800B56C4 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B62C8 800B56C8 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B62CC 800B56CC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B62D0 800B56D0 3C0B0103 */  lui        $t3, 0x103
/* B62D4 800B56D4 AFA90090 */  sw         $t1, 0x90($sp)
/* B62D8 800B56D8 8FAC0090 */  lw         $t4, 0x90($sp)
/* B62DC 800B56DC 252A0008 */  addiu      $t2, $t1, 8
/* B62E0 800B56E0 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B62E4 800B56E4 356B0040 */  ori        $t3, $t3, 0x40
/* B62E8 800B56E8 3C0D800F */  lui        $t5, %hi(D_800F2A68)
/* B62EC 800B56EC AD8B0000 */  sw         $t3, ($t4)
/* B62F0 800B56F0 8DAD2A68 */  lw         $t5, %lo(D_800F2A68)($t5)
/* B62F4 800B56F4 8FAF0090 */  lw         $t7, 0x90($sp)
/* B62F8 800B56F8 3C018000 */  lui        $at, 0x8000
/* B62FC 800B56FC 01A17021 */  addu       $t6, $t5, $at
/* B6300 800B5700 3C18800F */  lui        $t8, %hi(D_800F2A68)
/* B6304 800B5704 ADEE0004 */  sw         $t6, 4($t7)
/* B6308 800B5708 8F182A68 */  lw         $t8, %lo(D_800F2A68)($t8)
/* B630C 800B570C 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B6310 800B5710 27190040 */  addiu      $t9, $t8, 0x40
/* B6314 800B5714 AC392A68 */  sw         $t9, %lo(D_800F2A68)($at)
/* B6318 800B5718 3C013F80 */  lui        $at, 0x3f80
/* B631C 800B571C 44813000 */  mtc1       $at, $f6
/* B6320 800B5720 44805000 */  mtc1       $zero, $f10
/* B6324 800B5724 44808000 */  mtc1       $zero, $f16
/* B6328 800B5728 44809000 */  mtc1       $zero, $f18
/* B632C 800B572C 44802000 */  mtc1       $zero, $f4
/* B6330 800B5730 44804000 */  mtc1       $zero, $f8
/* B6334 800B5734 03202025 */  or         $a0, $t9, $zero
/* B6338 800B5738 24050000 */  addiu      $a1, $zero, 0
/* B633C 800B573C 24060000 */  addiu      $a2, $zero, 0
/* B6340 800B5740 3C07447A */  lui        $a3, 0x447a
/* B6344 800B5744 E7A60020 */  swc1       $f6, 0x20($sp)
/* B6348 800B5748 E7AA0010 */  swc1       $f10, 0x10($sp)
/* B634C 800B574C E7B00014 */  swc1       $f16, 0x14($sp)
/* B6350 800B5750 E7B20018 */  swc1       $f18, 0x18($sp)
/* B6354 800B5754 E7A4001C */  swc1       $f4, 0x1c($sp)
/* B6358 800B5758 0C03141A */  jal        func_800C5068
/* B635C 800B575C E7A80024 */   swc1      $f8, 0x24($sp)
/* B6360 800B5760 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B6364 800B5764 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B6368 800B5768 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B636C 800B576C 3C0A0101 */  lui        $t2, 0x101
/* B6370 800B5770 AFA8008C */  sw         $t0, 0x8c($sp)
/* B6374 800B5774 8FAB008C */  lw         $t3, 0x8c($sp)
/* B6378 800B5778 25090008 */  addiu      $t1, $t0, 8
/* B637C 800B577C AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B6380 800B5780 354A0040 */  ori        $t2, $t2, 0x40
/* B6384 800B5784 3C0C800F */  lui        $t4, %hi(D_800F2A68)
/* B6388 800B5788 AD6A0000 */  sw         $t2, ($t3)
/* B638C 800B578C 8D8C2A68 */  lw         $t4, %lo(D_800F2A68)($t4)
/* B6390 800B5790 8FAE008C */  lw         $t6, 0x8c($sp)
/* B6394 800B5794 3C018000 */  lui        $at, 0x8000
/* B6398 800B5798 01816821 */  addu       $t5, $t4, $at
/* B639C 800B579C 3C0F800F */  lui        $t7, %hi(D_800F2A68)
/* B63A0 800B57A0 ADCD0004 */  sw         $t5, 4($t6)
/* B63A4 800B57A4 8DEF2A68 */  lw         $t7, %lo(D_800F2A68)($t7)
/* B63A8 800B57A8 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B63AC 800B57AC 25F80040 */  addiu      $t8, $t7, 0x40
/* B63B0 800B57B0 AC382A68 */  sw         $t8, %lo(D_800F2A68)($at)
/* B63B4 800B57B4 3C01447A */  lui        $at, 0x447a
/* B63B8 800B57B8 44815000 */  mtc1       $at, $f10
/* B63BC 800B57BC 3C013F80 */  lui        $at, 0x3f80
/* B63C0 800B57C0 44814000 */  mtc1       $at, $f8
/* B63C4 800B57C4 E7AA0010 */  swc1       $f10, 0x10($sp)
/* B63C8 800B57C8 44805000 */  mtc1       $zero, $f10
/* B63CC 800B57CC 44808000 */  mtc1       $zero, $f16
/* B63D0 800B57D0 44809000 */  mtc1       $zero, $f18
/* B63D4 800B57D4 44802000 */  mtc1       $zero, $f4
/* B63D8 800B57D8 44803000 */  mtc1       $zero, $f6
/* B63DC 800B57DC 3C058014 */  lui        $a1, %hi(D_80142C50)
/* B63E0 800B57E0 24A52C50 */  addiu      $a1, $a1, %lo(D_80142C50)
/* B63E4 800B57E4 03002025 */  or         $a0, $t8, $zero
/* B63E8 800B57E8 24060000 */  addiu      $a2, $zero, 0
/* B63EC 800B57EC 24070000 */  addiu      $a3, $zero, 0
/* B63F0 800B57F0 E7A80024 */  swc1       $f8, 0x24($sp)
/* B63F4 800B57F4 E7AA0028 */  swc1       $f10, 0x28($sp)
/* B63F8 800B57F8 E7B00014 */  swc1       $f16, 0x14($sp)
/* B63FC 800B57FC E7B20018 */  swc1       $f18, 0x18($sp)
/* B6400 800B5800 E7A4001C */  swc1       $f4, 0x1c($sp)
/* B6404 800B5804 0C031F8F */  jal        func_800C7E3C
/* B6408 800B5808 E7A60020 */   swc1      $f6, 0x20($sp)
/* B640C 800B580C 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* B6410 800B5810 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* B6414 800B5814 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6418 800B5818 3C090384 */  lui        $t1, 0x384
/* B641C 800B581C AFB90088 */  sw         $t9, 0x88($sp)
/* B6420 800B5820 8FAA0088 */  lw         $t2, 0x88($sp)
/* B6424 800B5824 27280008 */  addiu      $t0, $t9, 8
/* B6428 800B5828 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* B642C 800B582C 35290010 */  ori        $t1, $t1, 0x10
/* B6430 800B5830 AD490000 */  sw         $t1, ($t2)
/* B6434 800B5834 8FAC0088 */  lw         $t4, 0x88($sp)
/* B6438 800B5838 3C0B8014 */  lui        $t3, %hi(D_80142C50)
/* B643C 800B583C 256B2C50 */  addiu      $t3, $t3, %lo(D_80142C50)
/* B6440 800B5840 AD8B0004 */  sw         $t3, 4($t4)
/* B6444 800B5844 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B6448 800B5848 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B644C 800B584C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6450 800B5850 3C0F0382 */  lui        $t7, 0x382
/* B6454 800B5854 AFAD0084 */  sw         $t5, 0x84($sp)
/* B6458 800B5858 8FB80084 */  lw         $t8, 0x84($sp)
/* B645C 800B585C 25AE0008 */  addiu      $t6, $t5, 8
/* B6460 800B5860 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B6464 800B5864 35EF0010 */  ori        $t7, $t7, 0x10
/* B6468 800B5868 AF0F0000 */  sw         $t7, ($t8)
/* B646C 800B586C 8FA90084 */  lw         $t1, 0x84($sp)
/* B6470 800B5870 3C198014 */  lui        $t9, %hi(D_80142C50)
/* B6474 800B5874 27392C50 */  addiu      $t9, $t9, %lo(D_80142C50)
/* B6478 800B5878 27280010 */  addiu      $t0, $t9, 0x10
/* B647C 800B587C AD280004 */  sw         $t0, 4($t1)
/* B6480 800B5880 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* B6484 800B5884 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* B6488 800B5888 3C053F80 */  lui        $a1, 0x3f80
/* B648C 800B588C 3C063F80 */  lui        $a2, 0x3f80
/* B6490 800B5890 0C02F8F1 */  jal        func_800BE3C4
/* B6494 800B5894 3C073F80 */   lui       $a3, 0x3f80
/* B6498 800B5898 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B649C 800B589C 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B64A0 800B58A0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B64A4 800B58A4 3C0C0102 */  lui        $t4, 0x102
/* B64A8 800B58A8 AFAA0080 */  sw         $t2, 0x80($sp)
/* B64AC 800B58AC 8FAD0080 */  lw         $t5, 0x80($sp)
/* B64B0 800B58B0 254B0008 */  addiu      $t3, $t2, 8
/* B64B4 800B58B4 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B64B8 800B58B8 358C0040 */  ori        $t4, $t4, 0x40
/* B64BC 800B58BC 3C0E800F */  lui        $t6, %hi(D_800F2A68)
/* B64C0 800B58C0 ADAC0000 */  sw         $t4, ($t5)
/* B64C4 800B58C4 8DCE2A68 */  lw         $t6, %lo(D_800F2A68)($t6)
/* B64C8 800B58C8 8FB80080 */  lw         $t8, 0x80($sp)
/* B64CC 800B58CC 3C018000 */  lui        $at, 0x8000
/* B64D0 800B58D0 01C17821 */  addu       $t7, $t6, $at
/* B64D4 800B58D4 3C19800F */  lui        $t9, %hi(D_800F2A68)
/* B64D8 800B58D8 AF0F0004 */  sw         $t7, 4($t8)
/* B64DC 800B58DC 8F392A68 */  lw         $t9, %lo(D_800F2A68)($t9)
/* B64E0 800B58E0 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B64E4 800B58E4 27280040 */  addiu      $t0, $t9, 0x40
/* B64E8 800B58E8 AC282A68 */  sw         $t0, %lo(D_800F2A68)($at)
/* B64EC 800B58EC 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B64F0 800B58F0 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B64F4 800B58F4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B64F8 800B58F8 3C0BE700 */  lui        $t3, 0xe700
/* B64FC 800B58FC AFA9007C */  sw         $t1, 0x7c($sp)
/* B6500 800B5900 8FAC007C */  lw         $t4, 0x7c($sp)
/* B6504 800B5904 252A0008 */  addiu      $t2, $t1, 8
/* B6508 800B5908 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B650C 800B590C AD8B0000 */  sw         $t3, ($t4)
/* B6510 800B5910 8FAD007C */  lw         $t5, 0x7c($sp)
/* B6514 800B5914 ADA00004 */  sw         $zero, 4($t5)
/* B6518 800B5918 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B651C 800B591C 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B6520 800B5920 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6524 800B5924 3C18BA00 */  lui        $t8, 0xba00
/* B6528 800B5928 AFAE0078 */  sw         $t6, 0x78($sp)
/* B652C 800B592C 8FB90078 */  lw         $t9, 0x78($sp)
/* B6530 800B5930 25CF0008 */  addiu      $t7, $t6, 8
/* B6534 800B5934 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* B6538 800B5938 37181402 */  ori        $t8, $t8, 0x1402
/* B653C 800B593C AF380000 */  sw         $t8, ($t9)
/* B6540 800B5940 8FA80078 */  lw         $t0, 0x78($sp)
/* B6544 800B5944 AD000004 */  sw         $zero, 4($t0)
/* B6548 800B5948 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B654C 800B594C 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B6550 800B5950 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6554 800B5954 3C0BBA00 */  lui        $t3, 0xba00
/* B6558 800B5958 AFA90074 */  sw         $t1, 0x74($sp)
/* B655C 800B595C 8FAC0074 */  lw         $t4, 0x74($sp)
/* B6560 800B5960 252A0008 */  addiu      $t2, $t1, 8
/* B6564 800B5964 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B6568 800B5968 356B1301 */  ori        $t3, $t3, 0x1301
/* B656C 800B596C AD8B0000 */  sw         $t3, ($t4)
/* B6570 800B5970 8FAD0074 */  lw         $t5, 0x74($sp)
/* B6574 800B5974 ADA00004 */  sw         $zero, 4($t5)
/* B6578 800B5978 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B657C 800B597C 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B6580 800B5980 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6584 800B5984 3C18BB00 */  lui        $t8, 0xbb00
/* B6588 800B5988 AFAE0070 */  sw         $t6, 0x70($sp)
/* B658C 800B598C 8FB90070 */  lw         $t9, 0x70($sp)
/* B6590 800B5990 25CF0008 */  addiu      $t7, $t6, 8
/* B6594 800B5994 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* B6598 800B5998 37180001 */  ori        $t8, $t8, 1
/* B659C 800B599C AF380000 */  sw         $t8, ($t9)
/* B65A0 800B59A0 8FA90070 */  lw         $t1, 0x70($sp)
/* B65A4 800B59A4 2408FFFF */  addiu      $t0, $zero, -1
/* B65A8 800B59A8 AD280004 */  sw         $t0, 4($t1)
/* B65AC 800B59AC 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B65B0 800B59B0 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B65B4 800B59B4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B65B8 800B59B8 3C0CE700 */  lui        $t4, 0xe700
/* B65BC 800B59BC AFAA006C */  sw         $t2, 0x6c($sp)
/* B65C0 800B59C0 8FAD006C */  lw         $t5, 0x6c($sp)
/* B65C4 800B59C4 254B0008 */  addiu      $t3, $t2, 8
/* B65C8 800B59C8 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B65CC 800B59CC ADAC0000 */  sw         $t4, ($t5)
/* B65D0 800B59D0 8FAE006C */  lw         $t6, 0x6c($sp)
/* B65D4 800B59D4 ADC00004 */  sw         $zero, 4($t6)
/* B65D8 800B59D8 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* B65DC 800B59DC 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* B65E0 800B59E0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B65E4 800B59E4 3C19EE00 */  lui        $t9, 0xee00
/* B65E8 800B59E8 AFAF0068 */  sw         $t7, 0x68($sp)
/* B65EC 800B59EC 8FA80068 */  lw         $t0, 0x68($sp)
/* B65F0 800B59F0 25F80008 */  addiu      $t8, $t7, 8
/* B65F4 800B59F4 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* B65F8 800B59F8 AD190000 */  sw         $t9, ($t0)
/* B65FC 800B59FC 8FA90068 */  lw         $t1, 0x68($sp)
/* B6600 800B5A00 AD200004 */  sw         $zero, 4($t1)
/* B6604 800B5A04 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B6608 800B5A08 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B660C 800B5A0C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6610 800B5A10 3C0CB900 */  lui        $t4, 0xb900
/* B6614 800B5A14 AFAA0064 */  sw         $t2, 0x64($sp)
/* B6618 800B5A18 8FAD0064 */  lw         $t5, 0x64($sp)
/* B661C 800B5A1C 254B0008 */  addiu      $t3, $t2, 8
/* B6620 800B5A20 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B6624 800B5A24 358C031D */  ori        $t4, $t4, 0x31d
/* B6628 800B5A28 ADAC0000 */  sw         $t4, ($t5)
/* B662C 800B5A2C 8FAF0064 */  lw         $t7, 0x64($sp)
/* B6630 800B5A30 3C0E0F0A */  lui        $t6, 0xf0a
/* B6634 800B5A34 35CE4000 */  ori        $t6, $t6, 0x4000
/* B6638 800B5A38 ADEE0004 */  sw         $t6, 4($t7)
/* B663C 800B5A3C 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* B6640 800B5A40 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* B6644 800B5A44 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6648 800B5A48 3C08FCFF */  lui        $t0, 0xfcff
/* B664C 800B5A4C AFB80060 */  sw         $t8, 0x60($sp)
/* B6650 800B5A50 8FA90060 */  lw         $t1, 0x60($sp)
/* B6654 800B5A54 27190008 */  addiu      $t9, $t8, 8
/* B6658 800B5A58 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* B665C 800B5A5C 3508FFFF */  ori        $t0, $t0, 0xffff
/* B6660 800B5A60 AD280000 */  sw         $t0, ($t1)
/* B6664 800B5A64 8FAB0060 */  lw         $t3, 0x60($sp)
/* B6668 800B5A68 3C0AFFFC */  lui        $t2, 0xfffc
/* B666C 800B5A6C 354AF279 */  ori        $t2, $t2, 0xf279
/* B6670 800B5A70 AD6A0004 */  sw         $t2, 4($t3)
/* B6674 800B5A74 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* B6678 800B5A78 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* B667C 800B5A7C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6680 800B5A80 3C0EBA00 */  lui        $t6, 0xba00
/* B6684 800B5A84 AFAC005C */  sw         $t4, 0x5c($sp)
/* B6688 800B5A88 8FAF005C */  lw         $t7, 0x5c($sp)
/* B668C 800B5A8C 258D0008 */  addiu      $t5, $t4, 8
/* B6690 800B5A90 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* B6694 800B5A94 35CE0C02 */  ori        $t6, $t6, 0xc02
/* B6698 800B5A98 ADEE0000 */  sw         $t6, ($t7)
/* B669C 800B5A9C 8FB9005C */  lw         $t9, 0x5c($sp)
/* B66A0 800B5AA0 24182000 */  addiu      $t8, $zero, 0x2000
/* B66A4 800B5AA4 AF380004 */  sw         $t8, 4($t9)
/* B66A8 800B5AA8 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B66AC 800B5AAC 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B66B0 800B5AB0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B66B4 800B5AB4 3C0AE700 */  lui        $t2, 0xe700
/* B66B8 800B5AB8 AFA80058 */  sw         $t0, 0x58($sp)
/* B66BC 800B5ABC 8FAB0058 */  lw         $t3, 0x58($sp)
/* B66C0 800B5AC0 25090008 */  addiu      $t1, $t0, 8
/* B66C4 800B5AC4 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B66C8 800B5AC8 AD6A0000 */  sw         $t2, ($t3)
/* B66CC 800B5ACC 8FAC0058 */  lw         $t4, 0x58($sp)
/* B66D0 800B5AD0 AD800004 */  sw         $zero, 4($t4)
/* B66D4 800B5AD4 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B66D8 800B5AD8 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B66DC 800B5ADC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B66E0 800B5AE0 3C0F0600 */  lui        $t7, 0x600
/* B66E4 800B5AE4 AFAD0054 */  sw         $t5, 0x54($sp)
/* B66E8 800B5AE8 8FB80054 */  lw         $t8, 0x54($sp)
/* B66EC 800B5AEC 25AE0008 */  addiu      $t6, $t5, 8
/* B66F0 800B5AF0 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B66F4 800B5AF4 AF0F0000 */  sw         $t7, ($t8)
/* B66F8 800B5AF8 8FA80054 */  lw         $t0, 0x54($sp)
/* B66FC 800B5AFC 3C198018 */  lui        $t9, %hi(D_8017A1F0)
/* B6700 800B5B00 2739A1F0 */  addiu      $t9, $t9, %lo(D_8017A1F0)
/* B6704 800B5B04 AD190004 */  sw         $t9, 4($t0)
/* B6708 800B5B08 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B670C 800B5B0C 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B6710 800B5B10 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6714 800B5B14 3C0BBC00 */  lui        $t3, 0xbc00
/* B6718 800B5B18 AFA90050 */  sw         $t1, 0x50($sp)
/* B671C 800B5B1C 8FAC0050 */  lw         $t4, 0x50($sp)
/* B6720 800B5B20 252A0008 */  addiu      $t2, $t1, 8
/* B6724 800B5B24 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B6728 800B5B28 356B0008 */  ori        $t3, $t3, 8
/* B672C 800B5B2C AD8B0000 */  sw         $t3, ($t4)
/* B6730 800B5B30 3C0D800D */  lui        $t5, %hi(D_800D6718)
/* B6734 800B5B34 3C0E800D */  lui        $t6, %hi(D_800D6714)
/* B6738 800B5B38 8DCE6714 */  lw         $t6, %lo(D_800D6714)($t6)
/* B673C 800B5B3C 8DAD6718 */  lw         $t5, %lo(D_800D6718)($t5)
/* B6740 800B5B40 3C180001 */  lui        $t8, 1
/* B6744 800B5B44 3718F400 */  ori        $t8, $t8, 0xf400
/* B6748 800B5B48 01AE7823 */  subu       $t7, $t5, $t6
/* B674C 800B5B4C 030F001A */  div        $zero, $t8, $t7
/* B6750 800B5B50 15E00002 */  bnez       $t7, .L800B5B5C
/* B6754 800B5B54 00000000 */   nop
/* B6758 800B5B58 0007000D */  break      7
.L800B5B5C:
/* B675C 800B5B5C 2401FFFF */   addiu     $at, $zero, -1
/* B6760 800B5B60 15E10004 */  bne        $t7, $at, .L800B5B74
/* B6764 800B5B64 3C018000 */   lui       $at, 0x8000
/* B6768 800B5B68 17010002 */  bne        $t8, $at, .L800B5B74
/* B676C 800B5B6C 00000000 */   nop
/* B6770 800B5B70 0006000D */  break      6
.L800B5B74:
/* B6774 800B5B74 000E5023 */   negu      $t2, $t6
/* B6778 800B5B78 000A5A00 */  sll        $t3, $t2, 8
/* B677C 800B5B7C 03000821 */  addu       $at, $t8, $zero
/* B6780 800B5B80 01616021 */  addu       $t4, $t3, $at
/* B6784 800B5B84 0000C812 */  mflo       $t9
/* B6788 800B5B88 3328FFFF */  andi       $t0, $t9, 0xffff
/* B678C 800B5B8C 00084C00 */  sll        $t1, $t0, 0x10
/* B6790 800B5B90 018F001A */  div        $zero, $t4, $t7
/* B6794 800B5B94 8FA80050 */  lw         $t0, 0x50($sp)
/* B6798 800B5B98 00006812 */  mflo       $t5
/* B679C 800B5B9C 31B8FFFF */  andi       $t8, $t5, 0xffff
/* B67A0 800B5BA0 0138C825 */  or         $t9, $t1, $t8
/* B67A4 800B5BA4 15E00002 */  bnez       $t7, .L800B5BB0
/* B67A8 800B5BA8 00000000 */   nop
/* B67AC 800B5BAC 0007000D */  break      7
.L800B5BB0:
/* B67B0 800B5BB0 2401FFFF */   addiu     $at, $zero, -1
/* B67B4 800B5BB4 15E10004 */  bne        $t7, $at, .L800B5BC8
/* B67B8 800B5BB8 3C018000 */   lui       $at, 0x8000
/* B67BC 800B5BBC 15810002 */  bne        $t4, $at, .L800B5BC8
/* B67C0 800B5BC0 00000000 */   nop
/* B67C4 800B5BC4 0006000D */  break      6
.L800B5BC8:
/* B67C8 800B5BC8 AD190004 */   sw        $t9, 4($t0)
/* B67CC 800B5BCC 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B67D0 800B5BD0 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B67D4 800B5BD4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B67D8 800B5BD8 3C0BF800 */  lui        $t3, 0xf800
/* B67DC 800B5BDC AFAE004C */  sw         $t6, 0x4c($sp)
/* B67E0 800B5BE0 8FAC004C */  lw         $t4, 0x4c($sp)
/* B67E4 800B5BE4 25CA0008 */  addiu      $t2, $t6, 8
/* B67E8 800B5BE8 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* B67EC 800B5BEC AD8B0000 */  sw         $t3, ($t4)
/* B67F0 800B5BF0 8FAD004C */  lw         $t5, 0x4c($sp)
/* B67F4 800B5BF4 240F00FF */  addiu      $t7, $zero, 0xff
/* B67F8 800B5BF8 ADAF0004 */  sw         $t7, 4($t5)
/* B67FC 800B5BFC 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* B6800 800B5C00 3C06800E */  lui        $a2, %hi(D_800D9FA4)
/* B6804 800B5C04 3C07800E */  lui        $a3, %hi(D_800D9FA8)
/* B6808 800B5C08 8CE79FA8 */  lw         $a3, %lo(D_800D9FA8)($a3)
/* B680C 800B5C0C 8CC69FA4 */  lw         $a2, %lo(D_800D9FA4)($a2)
/* B6810 800B5C10 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* B6814 800B5C14 0C034602 */  jal        func_800D1808
/* B6818 800B5C18 24050000 */   addiu     $a1, $zero, 0
/* B681C 800B5C1C 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* B6820 800B5C20 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* B6824 800B5C24 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6828 800B5C28 3C190100 */  lui        $t9, 0x100
/* B682C 800B5C2C AFA90048 */  sw         $t1, 0x48($sp)
/* B6830 800B5C30 8FA80048 */  lw         $t0, 0x48($sp)
/* B6834 800B5C34 25380008 */  addiu      $t8, $t1, 8
/* B6838 800B5C38 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* B683C 800B5C3C 37390040 */  ori        $t9, $t9, 0x40
/* B6840 800B5C40 3C0E800F */  lui        $t6, %hi(D_800F2A68)
/* B6844 800B5C44 AD190000 */  sw         $t9, ($t0)
/* B6848 800B5C48 8DCE2A68 */  lw         $t6, %lo(D_800F2A68)($t6)
/* B684C 800B5C4C 8FAB0048 */  lw         $t3, 0x48($sp)
/* B6850 800B5C50 3C018000 */  lui        $at, 0x8000
/* B6854 800B5C54 01C15021 */  addu       $t2, $t6, $at
/* B6858 800B5C58 3C0C800F */  lui        $t4, %hi(D_800F2A68)
/* B685C 800B5C5C AD6A0004 */  sw         $t2, 4($t3)
/* B6860 800B5C60 8D8C2A68 */  lw         $t4, %lo(D_800F2A68)($t4)
/* B6864 800B5C64 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B6868 800B5C68 258F0040 */  addiu      $t7, $t4, 0x40
/* B686C 800B5C6C AC2F2A68 */  sw         $t7, %lo(D_800F2A68)($at)
/* B6870 800B5C70 3C053DCC */  lui        $a1, 0x3dcc
/* B6874 800B5C74 34A5CCCD */  ori        $a1, $a1, 0xcccd
/* B6878 800B5C78 00A03021 */  addu       $a2, $a1, $zero
/* B687C 800B5C7C 00A03821 */  addu       $a3, $a1, $zero
/* B6880 800B5C80 0C02F8F1 */  jal        func_800BE3C4
/* B6884 800B5C84 01E02025 */   or        $a0, $t7, $zero
/* B6888 800B5C88 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B688C 800B5C8C 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B6890 800B5C90 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6894 800B5C94 3C180100 */  lui        $t8, 0x100
/* B6898 800B5C98 AFAD0044 */  sw         $t5, 0x44($sp)
/* B689C 800B5C9C 8FB90044 */  lw         $t9, 0x44($sp)
/* B68A0 800B5CA0 25A90008 */  addiu      $t1, $t5, 8
/* B68A4 800B5CA4 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B68A8 800B5CA8 37180040 */  ori        $t8, $t8, 0x40
/* B68AC 800B5CAC 3C08800F */  lui        $t0, %hi(D_800F2A68)
/* B68B0 800B5CB0 AF380000 */  sw         $t8, ($t9)
/* B68B4 800B5CB4 8D082A68 */  lw         $t0, %lo(D_800F2A68)($t0)
/* B68B8 800B5CB8 8FAA0044 */  lw         $t2, 0x44($sp)
/* B68BC 800B5CBC 3C018000 */  lui        $at, 0x8000
/* B68C0 800B5CC0 01017021 */  addu       $t6, $t0, $at
/* B68C4 800B5CC4 3C0B800F */  lui        $t3, %hi(D_800F2A68)
/* B68C8 800B5CC8 AD4E0004 */  sw         $t6, 4($t2)
/* B68CC 800B5CCC 8D6B2A68 */  lw         $t3, %lo(D_800F2A68)($t3)
/* B68D0 800B5CD0 3C01800F */  lui        $at, %hi(D_800F2A68)
/* B68D4 800B5CD4 256C0040 */  addiu      $t4, $t3, 0x40
/* B68D8 800B5CD8 AC2C2A68 */  sw         $t4, %lo(D_800F2A68)($at)
/* B68DC 800B5CDC 3C04800E */  lui        $a0, %hi(D_800D9F6C)
/* B68E0 800B5CE0 0C022AC8 */  jal        func_8008AB20
/* B68E4 800B5CE4 24849F6C */   addiu     $a0, $a0, %lo(D_800D9F6C)
/* B68E8 800B5CE8 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* B68EC 800B5CEC 11E00010 */  beqz       $t7, .L800B5D30
/* B68F0 800B5CF0 00000000 */   nop
/* B68F4 800B5CF4 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* B68F8 800B5CF8 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* B68FC 800B5CFC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6900 800B5D00 3C180600 */  lui        $t8, 0x600
/* B6904 800B5D04 AFAD0040 */  sw         $t5, 0x40($sp)
/* B6908 800B5D08 8FB90040 */  lw         $t9, 0x40($sp)
/* B690C 800B5D0C 25A90008 */  addiu      $t1, $t5, 8
/* B6910 800B5D10 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B6914 800B5D14 AF380000 */  sw         $t8, ($t9)
/* B6918 800B5D18 8FAE0040 */  lw         $t6, 0x40($sp)
/* B691C 800B5D1C 3C08801D */  lui        $t0, %hi(D_801CC218)
/* B6920 800B5D20 2508C218 */  addiu      $t0, $t0, %lo(D_801CC218)
/* B6924 800B5D24 ADC80004 */  sw         $t0, 4($t6)
/* B6928 800B5D28 1000000E */  b          .L800B5D64
/* B692C 800B5D2C 00000000 */   nop
.L800B5D30:
/* B6930 800B5D30 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B6934 800B5D34 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B6938 800B5D38 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B693C 800B5D3C 3C0C0600 */  lui        $t4, 0x600
/* B6940 800B5D40 AFAA003C */  sw         $t2, 0x3c($sp)
/* B6944 800B5D44 8FAF003C */  lw         $t7, 0x3c($sp)
/* B6948 800B5D48 254B0008 */  addiu      $t3, $t2, 8
/* B694C 800B5D4C AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B6950 800B5D50 ADEC0000 */  sw         $t4, ($t7)
/* B6954 800B5D54 8FA9003C */  lw         $t1, 0x3c($sp)
/* B6958 800B5D58 3C0D801D */  lui        $t5, %hi(D_801CCF90)
/* B695C 800B5D5C 25ADCF90 */  addiu      $t5, $t5, %lo(D_801CCF90)
/* B6960 800B5D60 AD2D0004 */  sw         $t5, 4($t1)
.L800B5D64:
/* B6964 800B5D64 3C18800E */  lui        $t8, %hi(D_800D9FAC)
/* B6968 800B5D68 8F189FAC */  lw         $t8, %lo(D_800D9FAC)($t8)
/* B696C 800B5D6C 33190001 */  andi       $t9, $t8, 1
/* B6970 800B5D70 1320002B */  beqz       $t9, .L800B5E20
/* B6974 800B5D74 00000000 */   nop
/* B6978 800B5D78 3C08800E */  lui        $t0, %hi(D_800D9FA0)
/* B697C 800B5D7C 8D089FA0 */  lw         $t0, %lo(D_800D9FA0)($t0)
/* B6980 800B5D80 3C013F80 */  lui        $at, 0x3f80
/* B6984 800B5D84 44818000 */  mtc1       $at, $f16
/* B6988 800B5D88 00087080 */  sll        $t6, $t0, 2
/* B698C 800B5D8C 01C87021 */  addu       $t6, $t6, $t0
/* B6990 800B5D90 000E70C0 */  sll        $t6, $t6, 3
/* B6994 800B5D94 01C87021 */  addu       $t6, $t6, $t0
/* B6998 800B5D98 44819000 */  mtc1       $at, $f18
/* B699C 800B5D9C 000E7080 */  sll        $t6, $t6, 2
/* B69A0 800B5DA0 3C048017 */  lui        $a0, %hi(D_80176E68)
/* B69A4 800B5DA4 008E2021 */  addu       $a0, $a0, $t6
/* B69A8 800B5DA8 240A0001 */  addiu      $t2, $zero, 1
/* B69AC 800B5DAC AFAA0018 */  sw         $t2, 0x18($sp)
/* B69B0 800B5DB0 8C846E68 */  lw         $a0, %lo(D_80176E68)($a0)
/* B69B4 800B5DB4 240500A0 */  addiu      $a1, $zero, 0xa0
/* B69B8 800B5DB8 24060038 */  addiu      $a2, $zero, 0x38
/* B69BC 800B5DBC 240700FF */  addiu      $a3, $zero, 0xff
/* B69C0 800B5DC0 E7B00010 */  swc1       $f16, 0x10($sp)
/* B69C4 800B5DC4 0C02757E */  jal        func_8009D5F8
/* B69C8 800B5DC8 E7B20014 */   swc1      $f18, 0x14($sp)
/* B69CC 800B5DCC 3C0B800E */  lui        $t3, %hi(D_800D9FA0)
/* B69D0 800B5DD0 8D6B9FA0 */  lw         $t3, %lo(D_800D9FA0)($t3)
/* B69D4 800B5DD4 3C013F80 */  lui        $at, 0x3f80
/* B69D8 800B5DD8 44812000 */  mtc1       $at, $f4
/* B69DC 800B5DDC 000B6080 */  sll        $t4, $t3, 2
/* B69E0 800B5DE0 018B6021 */  addu       $t4, $t4, $t3
/* B69E4 800B5DE4 000C60C0 */  sll        $t4, $t4, 3
/* B69E8 800B5DE8 018B6021 */  addu       $t4, $t4, $t3
/* B69EC 800B5DEC 44813000 */  mtc1       $at, $f6
/* B69F0 800B5DF0 000C6080 */  sll        $t4, $t4, 2
/* B69F4 800B5DF4 3C048017 */  lui        $a0, %hi(D_80176E6C)
/* B69F8 800B5DF8 008C2021 */  addu       $a0, $a0, $t4
/* B69FC 800B5DFC 240F0001 */  addiu      $t7, $zero, 1
/* B6A00 800B5E00 AFAF0018 */  sw         $t7, 0x18($sp)
/* B6A04 800B5E04 8C846E6C */  lw         $a0, %lo(D_80176E6C)($a0)
/* B6A08 800B5E08 240500A0 */  addiu      $a1, $zero, 0xa0
/* B6A0C 800B5E0C 24060050 */  addiu      $a2, $zero, 0x50
/* B6A10 800B5E10 240700FF */  addiu      $a3, $zero, 0xff
/* B6A14 800B5E14 E7A40010 */  swc1       $f4, 0x10($sp)
/* B6A18 800B5E18 0C02757E */  jal        func_8009D5F8
/* B6A1C 800B5E1C E7A60014 */   swc1      $f6, 0x14($sp)
.L800B5E20:
/* B6A20 800B5E20 3C0D800E */  lui        $t5, %hi(D_800D9FAC)
/* B6A24 800B5E24 8DAD9FAC */  lw         $t5, %lo(D_800D9FAC)($t5)
/* B6A28 800B5E28 31A90002 */  andi       $t1, $t5, 2
/* B6A2C 800B5E2C 11200016 */  beqz       $t1, .L800B5E88
/* B6A30 800B5E30 00000000 */   nop
/* B6A34 800B5E34 3C18800E */  lui        $t8, %hi(D_800D9FA0)
/* B6A38 800B5E38 8F189FA0 */  lw         $t8, %lo(D_800D9FA0)($t8)
/* B6A3C 800B5E3C 3C013F80 */  lui        $at, 0x3f80
/* B6A40 800B5E40 44814000 */  mtc1       $at, $f8
/* B6A44 800B5E44 0018C880 */  sll        $t9, $t8, 2
/* B6A48 800B5E48 0338C821 */  addu       $t9, $t9, $t8
/* B6A4C 800B5E4C 0019C8C0 */  sll        $t9, $t9, 3
/* B6A50 800B5E50 0338C821 */  addu       $t9, $t9, $t8
/* B6A54 800B5E54 44815000 */  mtc1       $at, $f10
/* B6A58 800B5E58 0019C880 */  sll        $t9, $t9, 2
/* B6A5C 800B5E5C 3C048017 */  lui        $a0, %hi(D_80176E70)
/* B6A60 800B5E60 00992021 */  addu       $a0, $a0, $t9
/* B6A64 800B5E64 24080001 */  addiu      $t0, $zero, 1
/* B6A68 800B5E68 AFA80018 */  sw         $t0, 0x18($sp)
/* B6A6C 800B5E6C 8C846E70 */  lw         $a0, %lo(D_80176E70)($a0)
/* B6A70 800B5E70 240500A0 */  addiu      $a1, $zero, 0xa0
/* B6A74 800B5E74 24060080 */  addiu      $a2, $zero, 0x80
/* B6A78 800B5E78 240700FF */  addiu      $a3, $zero, 0xff
/* B6A7C 800B5E7C E7A80010 */  swc1       $f8, 0x10($sp)
/* B6A80 800B5E80 0C02757E */  jal        func_8009D5F8
/* B6A84 800B5E84 E7AA0014 */   swc1      $f10, 0x14($sp)
.L800B5E88:
/* B6A88 800B5E88 3C0E8014 */  lui        $t6, %hi(D_801442A8)
/* B6A8C 800B5E8C 8DCE42A8 */  lw         $t6, %lo(D_801442A8)($t6)
/* B6A90 800B5E90 3C018014 */  lui        $at, %hi(D_801442A8)
/* B6A94 800B5E94 3C0B800F */  lui        $t3, %hi(D_800EA0D8)
/* B6A98 800B5E98 25CA0001 */  addiu      $t2, $t6, 1
/* B6A9C 800B5E9C AC2A42A8 */  sw         $t2, %lo(D_801442A8)($at)
/* B6AA0 800B5EA0 256BA0D8 */  addiu      $t3, $t3, %lo(D_800EA0D8)
/* B6AA4 800B5EA4 956C0000 */  lhu        $t4, ($t3)
/* B6AA8 800B5EA8 11800009 */  beqz       $t4, .L800B5ED0
/* B6AAC 800B5EAC 00000000 */   nop
/* B6AB0 800B5EB0 3C0F8014 */  lui        $t7, %hi(D_80144270)
/* B6AB4 800B5EB4 8DEF4270 */  lw         $t7, %lo(D_80144270)($t7)
/* B6AB8 800B5EB8 15E00007 */  bnez       $t7, .L800B5ED8
/* B6ABC 800B5EBC 00000000 */   nop
/* B6AC0 800B5EC0 3C0D0001 */  lui        $t5, 1
/* B6AC4 800B5EC4 3C018014 */  lui        $at, %hi(D_801442A8)
/* B6AC8 800B5EC8 10000003 */  b          .L800B5ED8
/* B6ACC 800B5ECC AC2D42A8 */   sw        $t5, %lo(D_801442A8)($at)
.L800B5ED0:
/* B6AD0 800B5ED0 3C018014 */  lui        $at, %hi(D_80144270)
/* B6AD4 800B5ED4 AC204270 */  sw         $zero, %lo(D_80144270)($at)
.L800B5ED8:
/* B6AD8 800B5ED8 3C098014 */  lui        $t1, %hi(D_801442A8)
/* B6ADC 800B5EDC 8D2942A8 */  lw         $t1, %lo(D_801442A8)($t1)
/* B6AE0 800B5EE0 292100F1 */  slti       $at, $t1, 0xf1
/* B6AE4 800B5EE4 14200002 */  bnez       $at, .L800B5EF0
/* B6AE8 800B5EE8 3C01800D */   lui       $at, %hi(D_800D6300)
/* B6AEC 800B5EEC AC206300 */  sw         $zero, %lo(D_800D6300)($at)
.L800B5EF0:
/* B6AF0 800B5EF0 8FBF0034 */  lw         $ra, 0x34($sp)
/* B6AF4 800B5EF4 27BD00B0 */  addiu      $sp, $sp, 0xb0
/* B6AF8 800B5EF8 03E00008 */  jr         $ra
/* B6AFC 800B5EFC 00000000 */   nop

glabel func_800B5F00
/* B6B00 800B5F00 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B6B04 800B5F04 AFBF0024 */  sw         $ra, 0x24($sp)
/* B6B08 800B5F08 AFA40030 */  sw         $a0, 0x30($sp)
/* B6B0C 800B5F0C AFA50034 */  sw         $a1, 0x34($sp)
/* B6B10 800B5F10 AFA60038 */  sw         $a2, 0x38($sp)
/* B6B14 800B5F14 0C033527 */  jal        func_800CD49C
/* B6B18 800B5F18 8FA40030 */   lw        $a0, 0x30($sp)
/* B6B1C 800B5F1C 000270C0 */  sll        $t6, $v0, 3
/* B6B20 800B5F20 240F0140 */  addiu      $t7, $zero, 0x140
/* B6B24 800B5F24 01EEC023 */  subu       $t8, $t7, $t6
/* B6B28 800B5F28 3C013F80 */  lui        $at, 0x3f80
/* B6B2C 800B5F2C 44812000 */  mtc1       $at, $f4
/* B6B30 800B5F30 93A8003B */  lbu        $t0, 0x3b($sp)
/* B6B34 800B5F34 0018C842 */  srl        $t9, $t8, 1
/* B6B38 800B5F38 00192C00 */  sll        $a1, $t9, 0x10
/* B6B3C 800B5F3C A7B9002E */  sh         $t9, 0x2e($sp)
/* B6B40 800B5F40 00052C03 */  sra        $a1, $a1, 0x10
/* B6B44 800B5F44 8FA40030 */  lw         $a0, 0x30($sp)
/* B6B48 800B5F48 87A60036 */  lh         $a2, 0x36($sp)
/* B6B4C 800B5F4C 3C073F80 */  lui        $a3, 0x3f80
/* B6B50 800B5F50 AFA00014 */  sw         $zero, 0x14($sp)
/* B6B54 800B5F54 AFA80018 */  sw         $t0, 0x18($sp)
/* B6B58 800B5F58 0C003359 */  jal        func_8000CD64
/* B6B5C 800B5F5C E7A40010 */   swc1      $f4, 0x10($sp)
/* B6B60 800B5F60 8FBF0024 */  lw         $ra, 0x24($sp)
/* B6B64 800B5F64 27BD0030 */  addiu      $sp, $sp, 0x30
/* B6B68 800B5F68 03E00008 */  jr         $ra
/* B6B6C 800B5F6C 00000000 */   nop

glabel func_800B5F70
/* B6B70 800B5F70 27BDFEA8 */  addiu      $sp, $sp, -0x158
/* B6B74 800B5F74 AFBF002C */  sw         $ra, 0x2c($sp)
/* B6B78 800B5F78 AFB00028 */  sw         $s0, 0x28($sp)
/* B6B7C 800B5F7C 3C0E0045 */  lui        $t6, 0x45
/* B6B80 800B5F80 3C0F0048 */  lui        $t7, 0x48
/* B6B84 800B5F84 25EF2820 */  addiu      $t7, $t7, 0x2820
/* B6B88 800B5F88 25CE63D0 */  addiu      $t6, $t6, 0x63d0
/* B6B8C 800B5F8C 3C058026 */  lui        $a1, %hi(D_802614F0)
/* B6B90 800B5F90 24A514F0 */  addiu      $a1, $a1, %lo(D_802614F0)
/* B6B94 800B5F94 01C02025 */  or         $a0, $t6, $zero
/* B6B98 800B5F98 0C0003F0 */  jal        func_80000FC0
/* B6B9C 800B5F9C 01EE3023 */   subu      $a2, $t7, $t6
/* B6BA0 800B5FA0 3C180049 */  lui        $t8, 0x49
/* B6BA4 800B5FA4 3C190049 */  lui        $t9, 0x49
/* B6BA8 800B5FA8 27392460 */  addiu      $t9, $t9, 0x2460
/* B6BAC 800B5FAC 2718EF20 */  addiu      $t8, $t8, -0x10e0
/* B6BB0 800B5FB0 3C058033 */  lui        $a1, %hi(D_8032E000)
/* B6BB4 800B5FB4 24A5E000 */  addiu      $a1, $a1, %lo(D_8032E000)
/* B6BB8 800B5FB8 03002025 */  or         $a0, $t8, $zero
/* B6BBC 800B5FBC 0C0003F0 */  jal        func_80000FC0
/* B6BC0 800B5FC0 03383023 */   subu      $a2, $t9, $t8
/* B6BC4 800B5FC4 3C018018 */  lui        $at, %hi(D_8017A324)
/* B6BC8 800B5FC8 A420A324 */  sh         $zero, %lo(D_8017A324)($at)
/* B6BCC 800B5FCC 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* B6BD0 800B5FD0 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* B6BD4 800B5FD4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6BD8 800B5FD8 3C0ABA00 */  lui        $t2, 0xba00
/* B6BDC 800B5FDC AFA80050 */  sw         $t0, 0x50($sp)
/* B6BE0 800B5FE0 8FAB0050 */  lw         $t3, 0x50($sp)
/* B6BE4 800B5FE4 25090008 */  addiu      $t1, $t0, 8
/* B6BE8 800B5FE8 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* B6BEC 800B5FEC 354A1402 */  ori        $t2, $t2, 0x1402
/* B6BF0 800B5FF0 AD6A0000 */  sw         $t2, ($t3)
/* B6BF4 800B5FF4 8FAD0050 */  lw         $t5, 0x50($sp)
/* B6BF8 800B5FF8 3C0C0030 */  lui        $t4, 0x30
/* B6BFC 800B5FFC ADAC0004 */  sw         $t4, 4($t5)
/* B6C00 800B6000 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* B6C04 800B6004 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* B6C08 800B6008 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6C0C 800B600C 3C19F700 */  lui        $t9, 0xf700
/* B6C10 800B6010 AFAF004C */  sw         $t7, 0x4c($sp)
/* B6C14 800B6014 8FB8004C */  lw         $t8, 0x4c($sp)
/* B6C18 800B6018 25EE0008 */  addiu      $t6, $t7, 8
/* B6C1C 800B601C AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* B6C20 800B6020 AF190000 */  sw         $t9, ($t8)
/* B6C24 800B6024 8FA9004C */  lw         $t1, 0x4c($sp)
/* B6C28 800B6028 3C080001 */  lui        $t0, 1
/* B6C2C 800B602C 35080001 */  ori        $t0, $t0, 1
/* B6C30 800B6030 AD280004 */  sw         $t0, 4($t1)
/* B6C34 800B6034 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B6C38 800B6038 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B6C3C 800B603C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6C40 800B6040 3C0CF64F */  lui        $t4, 0xf64f
/* B6C44 800B6044 AFAA0048 */  sw         $t2, 0x48($sp)
/* B6C48 800B6048 8FAD0048 */  lw         $t5, 0x48($sp)
/* B6C4C 800B604C 254B0008 */  addiu      $t3, $t2, 8
/* B6C50 800B6050 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B6C54 800B6054 358CC3BC */  ori        $t4, $t4, 0xc3bc
/* B6C58 800B6058 ADAC0000 */  sw         $t4, ($t5)
/* B6C5C 800B605C 8FAF0048 */  lw         $t7, 0x48($sp)
/* B6C60 800B6060 ADE00004 */  sw         $zero, 4($t7)
/* B6C64 800B6064 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* B6C68 800B6068 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* B6C6C 800B606C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6C70 800B6070 3C18E700 */  lui        $t8, 0xe700
/* B6C74 800B6074 AFAE0044 */  sw         $t6, 0x44($sp)
/* B6C78 800B6078 8FA80044 */  lw         $t0, 0x44($sp)
/* B6C7C 800B607C 25D90008 */  addiu      $t9, $t6, 8
/* B6C80 800B6080 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* B6C84 800B6084 AD180000 */  sw         $t8, ($t0)
/* B6C88 800B6088 8FA90044 */  lw         $t1, 0x44($sp)
/* B6C8C 800B608C AD200004 */  sw         $zero, 4($t1)
/* B6C90 800B6090 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* B6C94 800B6094 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* B6C98 800B6098 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B6C9C 800B609C 3C0CBA00 */  lui        $t4, 0xba00
/* B6CA0 800B60A0 AFAA0040 */  sw         $t2, 0x40($sp)
/* B6CA4 800B60A4 8FAD0040 */  lw         $t5, 0x40($sp)
/* B6CA8 800B60A8 254B0008 */  addiu      $t3, $t2, 8
/* B6CAC 800B60AC AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* B6CB0 800B60B0 358C1402 */  ori        $t4, $t4, 0x1402
/* B6CB4 800B60B4 ADAC0000 */  sw         $t4, ($t5)
/* B6CB8 800B60B8 8FAF0040 */  lw         $t7, 0x40($sp)
/* B6CBC 800B60BC ADE00004 */  sw         $zero, 4($t7)
/* B6CC0 800B60C0 3C0E800E */  lui        $t6, %hi(D_800D9FB0)
/* B6CC4 800B60C4 8DCE9FB0 */  lw         $t6, %lo(D_800D9FB0)($t6)
/* B6CC8 800B60C8 11C00003 */  beqz       $t6, .L800B60D8
/* B6CCC 800B60CC 2DC10003 */   sltiu     $at, $t6, 3
/* B6CD0 800B60D0 14200063 */  bnez       $at, .L800B6260
/* B6CD4 800B60D4 00000000 */   nop
.L800B60D8:
/* B6CD8 800B60D8 3C19800E */  lui        $t9, %hi(D_800D9FB0)
/* B6CDC 800B60DC 8F399FB0 */  lw         $t9, %lo(D_800D9FB0)($t9)
/* B6CE0 800B60E0 17200045 */  bnez       $t9, .L800B61F8
/* B6CE4 800B60E4 00000000 */   nop
/* B6CE8 800B60E8 0C000BA0 */  jal        func_80002E80
/* B6CEC 800B60EC 24040001 */   addiu     $a0, $zero, 1
/* B6CF0 800B60F0 AFA20038 */  sw         $v0, 0x38($sp)
/* B6CF4 800B60F4 8FB80038 */  lw         $t8, 0x38($sp)
/* B6CF8 800B60F8 2401FFFF */  addiu      $at, $zero, -1
/* B6CFC 800B60FC 17010005 */  bne        $t8, $at, .L800B6114
/* B6D00 800B6100 00000000 */   nop
/* B6D04 800B6104 24080002 */  addiu      $t0, $zero, 2
/* B6D08 800B6108 3C01800E */  lui        $at, %hi(D_800D9FB0)
/* B6D0C 800B610C 1000003C */  b          .L800B6200
/* B6D10 800B6110 AC289FB0 */   sw        $t0, %lo(D_800D9FB0)($at)
.L800B6114:
/* B6D14 800B6114 8FA90038 */  lw         $t1, 0x38($sp)
/* B6D18 800B6118 15200039 */  bnez       $t1, .L800B6200
/* B6D1C 800B611C 00000000 */   nop
/* B6D20 800B6120 3C0A4E53 */  lui        $t2, 0x4e53
/* B6D24 800B6124 354A5045 */  ori        $t2, $t2, 0x5045
/* B6D28 800B6128 3C04800E */  lui        $a0, 0x800e
/* B6D2C 800B612C 3C05800E */  lui        $a1, 0x800e
/* B6D30 800B6130 27AB0058 */  addiu      $t3, $sp, 0x58
/* B6D34 800B6134 240C0020 */  addiu      $t4, $zero, 0x20
/* B6D38 800B6138 AFAA003C */  sw         $t2, 0x3c($sp)
/* B6D3C 800B613C AFAC0014 */  sw         $t4, 0x14($sp)
/* B6D40 800B6140 AFAB0010 */  sw         $t3, 0x10($sp)
/* B6D44 800B6144 24A5F30C */  addiu      $a1, $a1, -0xcf4
/* B6D48 800B6148 2484F300 */  addiu      $a0, $a0, -0xd00
/* B6D4C 800B614C 01403821 */  addu       $a3, $t2, $zero
/* B6D50 800B6150 0C000EB7 */  jal        func_80003ADC
/* B6D54 800B6154 24063630 */   addiu     $a2, $zero, 0x3630
/* B6D58 800B6158 AFA20038 */  sw         $v0, 0x38($sp)
/* B6D5C 800B615C 8FAD0038 */  lw         $t5, 0x38($sp)
/* B6D60 800B6160 11A00010 */  beqz       $t5, .L800B61A4
/* B6D64 800B6164 00000000 */   nop
/* B6D68 800B6168 3C0F4E53 */  lui        $t7, 0x4e53
/* B6D6C 800B616C 35EF5050 */  ori        $t7, $t7, 0x5050
/* B6D70 800B6170 3C04800E */  lui        $a0, 0x800e
/* B6D74 800B6174 3C05800E */  lui        $a1, 0x800e
/* B6D78 800B6178 27AE0058 */  addiu      $t6, $sp, 0x58
/* B6D7C 800B617C 24190020 */  addiu      $t9, $zero, 0x20
/* B6D80 800B6180 AFAF003C */  sw         $t7, 0x3c($sp)
/* B6D84 800B6184 AFB90014 */  sw         $t9, 0x14($sp)
/* B6D88 800B6188 AFAE0010 */  sw         $t6, 0x10($sp)
/* B6D8C 800B618C 24A5F31C */  addiu      $a1, $a1, -0xce4
/* B6D90 800B6190 2484F310 */  addiu      $a0, $a0, -0xcf0
/* B6D94 800B6194 01E03821 */  addu       $a3, $t7, $zero
/* B6D98 800B6198 0C000EB7 */  jal        func_80003ADC
/* B6D9C 800B619C 24063630 */   addiu     $a2, $zero, 0x3630
/* B6DA0 800B61A0 AFA20038 */  sw         $v0, 0x38($sp)
.L800B61A4:
/* B6DA4 800B61A4 8FB80038 */  lw         $t8, 0x38($sp)
/* B6DA8 800B61A8 2401FFF2 */  addiu      $at, $zero, -0xe
/* B6DAC 800B61AC 17010014 */  bne        $t8, $at, .L800B6200
/* B6DB0 800B61B0 00000000 */   nop
/* B6DB4 800B61B4 3C08800F */  lui        $t0, %hi(D_800E8EA4)
/* B6DB8 800B61B8 8D088EA4 */  lw         $t0, %lo(D_800E8EA4)($t0)
/* B6DBC 800B61BC 05010003 */  bgez       $t0, .L800B61CC
/* B6DC0 800B61C0 00084A03 */   sra       $t1, $t0, 8
/* B6DC4 800B61C4 250100FF */  addiu      $at, $t0, 0xff
/* B6DC8 800B61C8 00014A03 */  sra        $t1, $at, 8
.L800B61CC:
/* B6DCC 800B61CC 19200006 */  blez       $t1, .L800B61E8
/* B6DD0 800B61D0 00000000 */   nop
/* B6DD4 800B61D4 3C0A800F */  lui        $t2, %hi(D_800E8EA0)
/* B6DD8 800B61D8 8D4A8EA0 */  lw         $t2, %lo(D_800E8EA0)($t2)
/* B6DDC 800B61DC 24010010 */  addiu      $at, $zero, 0x10
/* B6DE0 800B61E0 15410007 */  bne        $t2, $at, .L800B6200
/* B6DE4 800B61E4 00000000 */   nop
.L800B61E8:
/* B6DE8 800B61E8 240B0001 */  addiu      $t3, $zero, 1
/* B6DEC 800B61EC 3C01800E */  lui        $at, %hi(D_800D9FB0)
/* B6DF0 800B61F0 10000003 */  b          .L800B6200
/* B6DF4 800B61F4 AC2B9FB0 */   sw        $t3, %lo(D_800D9FB0)($at)
.L800B61F8:
/* B6DF8 800B61F8 3C01800E */  lui        $at, %hi(D_800D9FB0)
/* B6DFC 800B61FC AC209FB0 */  sw         $zero, %lo(D_800D9FB0)($at)
.L800B6200:
/* B6E00 800B6200 3C0C800D */  lui        $t4, %hi(D_800D6220)
/* B6E04 800B6204 918C6220 */  lbu        $t4, %lo(D_800D6220)($t4)
/* B6E08 800B6208 15800002 */  bnez       $t4, .L800B6214
/* B6E0C 800B620C 3C01800E */   lui       $at, %hi(D_800D9FB0)
/* B6E10 800B6210 AC209FB0 */  sw         $zero, %lo(D_800D9FB0)($at)
.L800B6214:
/* B6E14 800B6214 3C0D800E */  lui        $t5, %hi(D_800D9FB0)
/* B6E18 800B6218 8DAD9FB0 */  lw         $t5, %lo(D_800D9FB0)($t5)
/* B6E1C 800B621C 15A00009 */  bnez       $t5, .L800B6244
/* B6E20 800B6220 00000000 */   nop
/* B6E24 800B6224 3C0F800D */  lui        $t7, %hi(D_800D6248)
/* B6E28 800B6228 8DEF6248 */  lw         $t7, %lo(D_800D6248)($t7)
/* B6E2C 800B622C 3C018014 */  lui        $at, %hi(D_801442B0)
/* B6E30 800B6230 240E000C */  addiu      $t6, $zero, 0xc
/* B6E34 800B6234 AC2F42B0 */  sw         $t7, %lo(D_801442B0)($at)
/* B6E38 800B6238 3C01800D */  lui        $at, %hi(D_800D6300)
/* B6E3C 800B623C 10000119 */  b          .L800B66A4
/* B6E40 800B6240 AC2E6300 */   sw        $t6, %lo(D_800D6300)($at)
.L800B6244:
/* B6E44 800B6244 3C01800E */  lui        $at, %hi(D_800D9FB8)
/* B6E48 800B6248 AC209FB8 */  sw         $zero, %lo(D_800D9FB8)($at)
/* B6E4C 800B624C 3C01800E */  lui        $at, %hi(D_800D9FBC)
/* B6E50 800B6250 24190001 */  addiu      $t9, $zero, 1
/* B6E54 800B6254 AC399FBC */  sw         $t9, %lo(D_800D9FBC)($at)
/* B6E58 800B6258 10000112 */  b          .L800B66A4
/* B6E5C 800B625C 00000000 */   nop
.L800B6260:
/* B6E60 800B6260 3C18800D */  lui        $t8, %hi(D_800D6248)
/* B6E64 800B6264 8F186248 */  lw         $t8, %lo(D_800D6248)($t8)
/* B6E68 800B6268 3308001F */  andi       $t0, $t8, 0x1f
/* B6E6C 800B626C 2D010010 */  sltiu      $at, $t0, 0x10
/* B6E70 800B6270 10200003 */  beqz       $at, .L800B6280
/* B6E74 800B6274 00000000 */   nop
/* B6E78 800B6278 10000003 */  b          .L800B6288
/* B6E7C 800B627C A3A00037 */   sb        $zero, 0x37($sp)
.L800B6280:
/* B6E80 800B6280 24090001 */  addiu      $t1, $zero, 1
/* B6E84 800B6284 A3A90037 */  sb         $t1, 0x37($sp)
.L800B6288:
/* B6E88 800B6288 3C04800E */  lui        $a0, %hi(D_800DF320)
/* B6E8C 800B628C 2484F320 */  addiu      $a0, $a0, %lo(D_800DF320)
/* B6E90 800B6290 24050048 */  addiu      $a1, $zero, 0x48
/* B6E94 800B6294 0C02D7C0 */  jal        func_800B5F00
/* B6E98 800B6298 93A60037 */   lbu       $a2, 0x37($sp)
/* B6E9C 800B629C 3C0A800E */  lui        $t2, %hi(D_800D9FB0)
/* B6EA0 800B62A0 8D4A9FB0 */  lw         $t2, %lo(D_800D9FB0)($t2)
/* B6EA4 800B62A4 24010001 */  addiu      $at, $zero, 1
/* B6EA8 800B62A8 15410012 */  bne        $t2, $at, .L800B62F4
/* B6EAC 800B62AC 00000000 */   nop
/* B6EB0 800B62B0 3C04800E */  lui        $a0, %hi(D_800DF328)
/* B6EB4 800B62B4 2484F328 */  addiu      $a0, $a0, %lo(D_800DF328)
/* B6EB8 800B62B8 24050068 */  addiu      $a1, $zero, 0x68
/* B6EBC 800B62BC 0C02D7C0 */  jal        func_800B5F00
/* B6EC0 800B62C0 00003025 */   or        $a2, $zero, $zero
/* B6EC4 800B62C4 3C04800E */  lui        $a0, %hi(D_800DF348)
/* B6EC8 800B62C8 2484F348 */  addiu      $a0, $a0, %lo(D_800DF348)
/* B6ECC 800B62CC 24050078 */  addiu      $a1, $zero, 0x78
/* B6ED0 800B62D0 0C02D7C0 */  jal        func_800B5F00
/* B6ED4 800B62D4 00003025 */   or        $a2, $zero, $zero
/* B6ED8 800B62D8 3C04800E */  lui        $a0, %hi(D_800DF360)
/* B6EDC 800B62DC 2484F360 */  addiu      $a0, $a0, %lo(D_800DF360)
/* B6EE0 800B62E0 24050088 */  addiu      $a1, $zero, 0x88
/* B6EE4 800B62E4 0C02D7C0 */  jal        func_800B5F00
/* B6EE8 800B62E8 00003025 */   or        $a2, $zero, $zero
/* B6EEC 800B62EC 1000000B */  b          .L800B631C
/* B6EF0 800B62F0 00000000 */   nop
.L800B62F4:
/* B6EF4 800B62F4 3C04800E */  lui        $a0, %hi(D_800DF370)
/* B6EF8 800B62F8 2484F370 */  addiu      $a0, $a0, %lo(D_800DF370)
/* B6EFC 800B62FC 24050070 */  addiu      $a1, $zero, 0x70
/* B6F00 800B6300 0C02D7C0 */  jal        func_800B5F00
/* B6F04 800B6304 00003025 */   or        $a2, $zero, $zero
/* B6F08 800B6308 3C04800E */  lui        $a0, %hi(D_800DF384)
/* B6F0C 800B630C 2484F384 */  addiu      $a0, $a0, %lo(D_800DF384)
/* B6F10 800B6310 24050080 */  addiu      $a1, $zero, 0x80
/* B6F14 800B6314 0C02D7C0 */  jal        func_800B5F00
/* B6F18 800B6318 00003025 */   or        $a2, $zero, $zero
.L800B631C:
/* B6F1C 800B631C 3C05800E */  lui        $a1, %hi(D_800D9FB8)
/* B6F20 800B6320 8CA59FB8 */  lw         $a1, %lo(D_800D9FB8)($a1)
/* B6F24 800B6324 240B007F */  addiu      $t3, $zero, 0x7f
/* B6F28 800B6328 240C003F */  addiu      $t4, $zero, 0x3f
/* B6F2C 800B632C 00A00821 */  addu       $at, $a1, $zero
/* B6F30 800B6330 00012880 */  sll        $a1, $at, 2
/* B6F34 800B6334 00A12823 */  subu       $a1, $a1, $at
/* B6F38 800B6338 00052880 */  sll        $a1, $a1, 2
/* B6F3C 800B633C 240D001F */  addiu      $t5, $zero, 0x1f
/* B6F40 800B6340 240F00FF */  addiu      $t7, $zero, 0xff
/* B6F44 800B6344 AFAF001C */  sw         $t7, 0x1c($sp)
/* B6F48 800B6348 AFAD0018 */  sw         $t5, 0x18($sp)
/* B6F4C 800B634C 24A500A7 */  addiu      $a1, $a1, 0xa7
/* B6F50 800B6350 AFAC0014 */  sw         $t4, 0x14($sp)
/* B6F54 800B6354 AFAB0010 */  sw         $t3, 0x10($sp)
/* B6F58 800B6358 00002025 */  or         $a0, $zero, $zero
/* B6F5C 800B635C 24060140 */  addiu      $a2, $zero, 0x140
/* B6F60 800B6360 0C003A0C */  jal        func_8000E830
/* B6F64 800B6364 24070009 */   addiu     $a3, $zero, 9
/* B6F68 800B6368 3C04800E */  lui        $a0, %hi(D_800DF39C)
/* B6F6C 800B636C 2484F39C */  addiu      $a0, $a0, %lo(D_800DF39C)
/* B6F70 800B6370 240500A8 */  addiu      $a1, $zero, 0xa8
/* B6F74 800B6374 0C02D7C0 */  jal        func_800B5F00
/* B6F78 800B6378 00003025 */   or        $a2, $zero, $zero
/* B6F7C 800B637C 3C04800E */  lui        $a0, %hi(D_800DF3A4)
/* B6F80 800B6380 2484F3A4 */  addiu      $a0, $a0, %lo(D_800DF3A4)
/* B6F84 800B6384 240500B4 */  addiu      $a1, $zero, 0xb4
/* B6F88 800B6388 0C02D7C0 */  jal        func_800B5F00
/* B6F8C 800B638C 00003025 */   or        $a2, $zero, $zero
/* B6F90 800B6390 3C0E800E */  lui        $t6, %hi(D_800D9FB0)
/* B6F94 800B6394 8DCE9FB0 */  lw         $t6, %lo(D_800D9FB0)($t6)
/* B6F98 800B6398 24010002 */  addiu      $at, $zero, 2
/* B6F9C 800B639C 11C10006 */  beq        $t6, $at, .L800B63B8
/* B6FA0 800B63A0 00000000 */   nop
/* B6FA4 800B63A4 3C04800E */  lui        $a0, %hi(D_800DF3BC)
/* B6FA8 800B63A8 2484F3BC */  addiu      $a0, $a0, %lo(D_800DF3BC)
/* B6FAC 800B63AC 240500C0 */  addiu      $a1, $zero, 0xc0
/* B6FB0 800B63B0 0C02D7C0 */  jal        func_800B5F00
/* B6FB4 800B63B4 00003025 */   or        $a2, $zero, $zero
.L800B63B8:
/* B6FB8 800B63B8 3C19800F */  lui        $t9, %hi(D_800EA0D8)
/* B6FBC 800B63BC 2739A0D8 */  addiu      $t9, $t9, %lo(D_800EA0D8)
/* B6FC0 800B63C0 97380000 */  lhu        $t8, ($t9)
/* B6FC4 800B63C4 17000002 */  bnez       $t8, .L800B63D0
/* B6FC8 800B63C8 3C01800E */   lui       $at, %hi(D_800D9FBC)
/* B6FCC 800B63CC AC209FBC */  sw         $zero, %lo(D_800D9FBC)($at)
.L800B63D0:
/* B6FD0 800B63D0 3C08800E */  lui        $t0, %hi(D_800D9FBC)
/* B6FD4 800B63D4 8D089FBC */  lw         $t0, %lo(D_800D9FBC)($t0)
/* B6FD8 800B63D8 1500003E */  bnez       $t0, .L800B64D4
/* B6FDC 800B63DC 00000000 */   nop
/* B6FE0 800B63E0 3C09800F */  lui        $t1, %hi(D_800EA0D8)
/* B6FE4 800B63E4 2529A0D8 */  addiu      $t1, $t1, %lo(D_800EA0D8)
/* B6FE8 800B63E8 952A0000 */  lhu        $t2, ($t1)
/* B6FEC 800B63EC 314B8000 */  andi       $t3, $t2, 0x8000
/* B6FF0 800B63F0 11600038 */  beqz       $t3, .L800B64D4
/* B6FF4 800B63F4 00000000 */   nop
/* B6FF8 800B63F8 3C10800E */  lui        $s0, %hi(D_800D9FB8)
/* B6FFC 800B63FC 8E109FB8 */  lw         $s0, %lo(D_800D9FB8)($s0)
/* B7000 800B6400 12000007 */  beqz       $s0, .L800B6420
/* B7004 800B6404 24010001 */   addiu     $at, $zero, 1
/* B7008 800B6408 12010023 */  beq        $s0, $at, .L800B6498
/* B700C 800B640C 24010002 */   addiu     $at, $zero, 2
/* B7010 800B6410 12010025 */  beq        $s0, $at, .L800B64A8
/* B7014 800B6414 00000000 */   nop
/* B7018 800B6418 1000002B */  b          .L800B64C8
/* B701C 800B641C 00000000 */   nop
.L800B6420:
/* B7020 800B6420 0C000BA0 */  jal        func_80002E80
/* B7024 800B6424 00002025 */   or        $a0, $zero, $zero
/* B7028 800B6428 3C01800F */  lui        $at, %hi(D_800F2A48)
/* B702C 800B642C AC222A48 */  sw         $v0, %lo(D_800F2A48)($at)
/* B7030 800B6430 3C0C800F */  lui        $t4, %hi(D_800F2A48)
/* B7034 800B6434 8D8C2A48 */  lw         $t4, %lo(D_800F2A48)($t4)
/* B7038 800B6438 2401FFFE */  addiu      $at, $zero, -2
/* B703C 800B643C 15810013 */  bne        $t4, $at, .L800B648C
/* B7040 800B6440 00000000 */   nop
/* B7044 800B6444 240D0017 */  addiu      $t5, $zero, 0x17
/* B7048 800B6448 3C01800D */  lui        $at, %hi(D_800D6300)
/* B704C 800B644C AC2D6300 */  sw         $t5, %lo(D_800D6300)($at)
/* B7050 800B6450 3C018018 */  lui        $at, %hi(D_801798FC)
/* B7054 800B6454 240F0001 */  addiu      $t7, $zero, 1
/* B7058 800B6458 A42F98FC */  sh         $t7, %lo(D_801798FC)($at)
/* B705C 800B645C 3C018018 */  lui        $at, %hi(D_8017A2B4)
/* B7060 800B6460 240E0001 */  addiu      $t6, $zero, 1
/* B7064 800B6464 A42EA2B4 */  sh         $t6, %lo(D_8017A2B4)($at)
/* B7068 800B6468 3C018014 */  lui        $at, %hi(D_80144284)
/* B706C 800B646C 24190001 */  addiu      $t9, $zero, 1
/* B7070 800B6470 AC394284 */  sw         $t9, %lo(D_80144284)($at)
/* B7074 800B6474 3C018014 */  lui        $at, %hi(D_80144288)
/* B7078 800B6478 24180001 */  addiu      $t8, $zero, 1
/* B707C 800B647C AC384288 */  sw         $t8, %lo(D_80144288)($at)
/* B7080 800B6480 3C018014 */  lui        $at, %hi(D_8014428C)
/* B7084 800B6484 24080001 */  addiu      $t0, $zero, 1
/* B7088 800B6488 AC28428C */  sw         $t0, %lo(D_8014428C)($at)
.L800B648C:
/* B708C 800B648C 3C01800E */  lui        $at, %hi(D_800D9FB0)
/* B7090 800B6490 1000000D */  b          .L800B64C8
/* B7094 800B6494 AC209FB0 */   sw        $zero, %lo(D_800D9FB0)($at)
.L800B6498:
/* B7098 800B6498 24090003 */  addiu      $t1, $zero, 3
/* B709C 800B649C 3C01800E */  lui        $at, %hi(D_800D9FB0)
/* B70A0 800B64A0 10000009 */  b          .L800B64C8
/* B70A4 800B64A4 AC299FB0 */   sw        $t1, %lo(D_800D9FB0)($at)
.L800B64A8:
/* B70A8 800B64A8 3C0A800E */  lui        $t2, %hi(D_800D9FB0)
/* B70AC 800B64AC 8D4A9FB0 */  lw         $t2, %lo(D_800D9FB0)($t2)
/* B70B0 800B64B0 24010002 */  addiu      $at, $zero, 2
/* B70B4 800B64B4 11410004 */  beq        $t2, $at, .L800B64C8
/* B70B8 800B64B8 00000000 */   nop
/* B70BC 800B64BC 240B0017 */  addiu      $t3, $zero, 0x17
/* B70C0 800B64C0 3C01800D */  lui        $at, %hi(D_800D6300)
/* B70C4 800B64C4 AC2B6300 */  sw         $t3, %lo(D_800D6300)($at)
.L800B64C8:
/* B70C8 800B64C8 240C0001 */  addiu      $t4, $zero, 1
/* B70CC 800B64CC 3C01800E */  lui        $at, %hi(D_800D9FBC)
/* B70D0 800B64D0 AC2C9FBC */  sw         $t4, %lo(D_800D9FBC)($at)
.L800B64D4:
/* B70D4 800B64D4 3C0D800F */  lui        $t5, %hi(D_800EA0D4)
/* B70D8 800B64D8 25ADA0D4 */  addiu      $t5, $t5, %lo(D_800EA0D4)
/* B70DC 800B64DC 81AF0000 */  lb         $t7, ($t5)
/* B70E0 800B64E0 24010030 */  addiu      $at, $zero, 0x30
/* B70E4 800B64E4 3C19800F */  lui        $t9, %hi(D_800EA0D8)
/* B70E8 800B64E8 01E1001A */  div        $zero, $t7, $at
/* B70EC 800B64EC 00007012 */  mflo       $t6
/* B70F0 800B64F0 A7AE0056 */  sh         $t6, 0x56($sp)
/* B70F4 800B64F4 2739A0D8 */  addiu      $t9, $t9, %lo(D_800EA0D8)
/* B70F8 800B64F8 97380000 */  lhu        $t8, ($t9)
/* B70FC 800B64FC 33080800 */  andi       $t0, $t8, 0x800
/* B7100 800B6500 11000003 */  beqz       $t0, .L800B6510
/* B7104 800B6504 00000000 */   nop
/* B7108 800B6508 24090001 */  addiu      $t1, $zero, 1
/* B710C 800B650C A7A90056 */  sh         $t1, 0x56($sp)
.L800B6510:
/* B7110 800B6510 3C0A800F */  lui        $t2, %hi(D_800EA0D8)
/* B7114 800B6514 254AA0D8 */  addiu      $t2, $t2, %lo(D_800EA0D8)
/* B7118 800B6518 954B0000 */  lhu        $t3, ($t2)
/* B711C 800B651C 316C0400 */  andi       $t4, $t3, 0x400
/* B7120 800B6520 11800003 */  beqz       $t4, .L800B6530
/* B7124 800B6524 00000000 */   nop
/* B7128 800B6528 240DFFFF */  addiu      $t5, $zero, -1
/* B712C 800B652C A7AD0056 */  sh         $t5, 0x56($sp)
.L800B6530:
/* B7130 800B6530 87AF0056 */  lh         $t7, 0x56($sp)
/* B7134 800B6534 15E00002 */  bnez       $t7, .L800B6540
/* B7138 800B6538 3C018018 */   lui       $at, %hi(D_8017A314)
/* B713C 800B653C AC20A314 */  sw         $zero, %lo(D_8017A314)($at)
.L800B6540:
/* B7140 800B6540 3C0E800E */  lui        $t6, %hi(D_800D9FB0)
/* B7144 800B6544 8DCE9FB0 */  lw         $t6, %lo(D_800D9FB0)($t6)
/* B7148 800B6548 24010001 */  addiu      $at, $zero, 1
/* B714C 800B654C 15C1002C */  bne        $t6, $at, .L800B6600
/* B7150 800B6550 00000000 */   nop
/* B7154 800B6554 87B90056 */  lh         $t9, 0x56($sp)
/* B7158 800B6558 1B200013 */  blez       $t9, .L800B65A8
/* B715C 800B655C 00000000 */   nop
/* B7160 800B6560 3C188018 */  lui        $t8, %hi(D_8017A314)
/* B7164 800B6564 8F18A314 */  lw         $t8, %lo(D_8017A314)($t8)
/* B7168 800B6568 1700000C */  bnez       $t8, .L800B659C
/* B716C 800B656C 00000000 */   nop
/* B7170 800B6570 3C08800E */  lui        $t0, %hi(D_800D9FB8)
/* B7174 800B6574 8D089FB8 */  lw         $t0, %lo(D_800D9FB8)($t0)
/* B7178 800B6578 11000005 */  beqz       $t0, .L800B6590
/* B717C 800B657C 00000000 */   nop
/* B7180 800B6580 2509FFFF */  addiu      $t1, $t0, -1
/* B7184 800B6584 3C01800E */  lui        $at, %hi(D_800D9FB8)
/* B7188 800B6588 10000004 */  b          .L800B659C
/* B718C 800B658C AC299FB8 */   sw        $t1, %lo(D_800D9FB8)($at)
.L800B6590:
/* B7190 800B6590 240A0002 */  addiu      $t2, $zero, 2
/* B7194 800B6594 3C01800E */  lui        $at, %hi(D_800D9FB8)
/* B7198 800B6598 AC2A9FB8 */  sw         $t2, %lo(D_800D9FB8)($at)
.L800B659C:
/* B719C 800B659C 240B0001 */  addiu      $t3, $zero, 1
/* B71A0 800B65A0 3C018018 */  lui        $at, %hi(D_8017A314)
/* B71A4 800B65A4 AC2BA314 */  sw         $t3, %lo(D_8017A314)($at)
.L800B65A8:
/* B71A8 800B65A8 87AC0056 */  lh         $t4, 0x56($sp)
/* B71AC 800B65AC 0581003D */  bgez       $t4, .L800B66A4
/* B71B0 800B65B0 00000000 */   nop
/* B71B4 800B65B4 3C0D8018 */  lui        $t5, %hi(D_8017A314)
/* B71B8 800B65B8 8DADA314 */  lw         $t5, %lo(D_8017A314)($t5)
/* B71BC 800B65BC 15A0000C */  bnez       $t5, .L800B65F0
/* B71C0 800B65C0 00000000 */   nop
/* B71C4 800B65C4 3C0F800E */  lui        $t7, %hi(D_800D9FB8)
/* B71C8 800B65C8 8DEF9FB8 */  lw         $t7, %lo(D_800D9FB8)($t7)
/* B71CC 800B65CC 2DE10002 */  sltiu      $at, $t7, 2
/* B71D0 800B65D0 10200005 */  beqz       $at, .L800B65E8
/* B71D4 800B65D4 00000000 */   nop
/* B71D8 800B65D8 25EE0001 */  addiu      $t6, $t7, 1
/* B71DC 800B65DC 3C01800E */  lui        $at, %hi(D_800D9FB8)
/* B71E0 800B65E0 10000003 */  b          .L800B65F0
/* B71E4 800B65E4 AC2E9FB8 */   sw        $t6, %lo(D_800D9FB8)($at)
.L800B65E8:
/* B71E8 800B65E8 3C01800E */  lui        $at, %hi(D_800D9FB8)
/* B71EC 800B65EC AC209FB8 */  sw         $zero, %lo(D_800D9FB8)($at)
.L800B65F0:
/* B71F0 800B65F0 24190001 */  addiu      $t9, $zero, 1
/* B71F4 800B65F4 3C018018 */  lui        $at, %hi(D_8017A314)
/* B71F8 800B65F8 1000002A */  b          .L800B66A4
/* B71FC 800B65FC AC39A314 */   sw        $t9, %lo(D_8017A314)($at)
.L800B6600:
/* B7200 800B6600 87B80056 */  lh         $t8, 0x56($sp)
/* B7204 800B6604 1B000013 */  blez       $t8, .L800B6654
/* B7208 800B6608 00000000 */   nop
/* B720C 800B660C 3C088018 */  lui        $t0, %hi(D_8017A314)
/* B7210 800B6610 8D08A314 */  lw         $t0, %lo(D_8017A314)($t0)
/* B7214 800B6614 1500000C */  bnez       $t0, .L800B6648
/* B7218 800B6618 00000000 */   nop
/* B721C 800B661C 3C09800E */  lui        $t1, %hi(D_800D9FB8)
/* B7220 800B6620 8D299FB8 */  lw         $t1, %lo(D_800D9FB8)($t1)
/* B7224 800B6624 11200005 */  beqz       $t1, .L800B663C
/* B7228 800B6628 00000000 */   nop
/* B722C 800B662C 252AFFFF */  addiu      $t2, $t1, -1
/* B7230 800B6630 3C01800E */  lui        $at, %hi(D_800D9FB8)
/* B7234 800B6634 10000004 */  b          .L800B6648
/* B7238 800B6638 AC2A9FB8 */   sw        $t2, %lo(D_800D9FB8)($at)
.L800B663C:
/* B723C 800B663C 240B0001 */  addiu      $t3, $zero, 1
/* B7240 800B6640 3C01800E */  lui        $at, %hi(D_800D9FB8)
/* B7244 800B6644 AC2B9FB8 */  sw         $t3, %lo(D_800D9FB8)($at)
.L800B6648:
/* B7248 800B6648 240C0001 */  addiu      $t4, $zero, 1
/* B724C 800B664C 3C018018 */  lui        $at, %hi(D_8017A314)
/* B7250 800B6650 AC2CA314 */  sw         $t4, %lo(D_8017A314)($at)
.L800B6654:
/* B7254 800B6654 87AD0056 */  lh         $t5, 0x56($sp)
/* B7258 800B6658 05A10012 */  bgez       $t5, .L800B66A4
/* B725C 800B665C 00000000 */   nop
/* B7260 800B6660 3C0F8018 */  lui        $t7, %hi(D_8017A314)
/* B7264 800B6664 8DEFA314 */  lw         $t7, %lo(D_8017A314)($t7)
/* B7268 800B6668 15E0000B */  bnez       $t7, .L800B6698
/* B726C 800B666C 00000000 */   nop
/* B7270 800B6670 3C0E800E */  lui        $t6, %hi(D_800D9FB8)
/* B7274 800B6674 8DCE9FB8 */  lw         $t6, %lo(D_800D9FB8)($t6)
/* B7278 800B6678 15C00005 */  bnez       $t6, .L800B6690
/* B727C 800B667C 00000000 */   nop
/* B7280 800B6680 25D90001 */  addiu      $t9, $t6, 1
/* B7284 800B6684 3C01800E */  lui        $at, %hi(D_800D9FB8)
/* B7288 800B6688 10000003 */  b          .L800B6698
/* B728C 800B668C AC399FB8 */   sw        $t9, %lo(D_800D9FB8)($at)
.L800B6690:
/* B7290 800B6690 3C01800E */  lui        $at, %hi(D_800D9FB8)
/* B7294 800B6694 AC209FB8 */  sw         $zero, %lo(D_800D9FB8)($at)
.L800B6698:
/* B7298 800B6698 24180001 */  addiu      $t8, $zero, 1
/* B729C 800B669C 3C018018 */  lui        $at, %hi(D_8017A314)
/* B72A0 800B66A0 AC38A314 */  sw         $t8, %lo(D_8017A314)($at)
.L800B66A4:
/* B72A4 800B66A4 8FBF002C */  lw         $ra, 0x2c($sp)
/* B72A8 800B66A8 8FB00028 */  lw         $s0, 0x28($sp)
/* B72AC 800B66AC 27BD0158 */  addiu      $sp, $sp, 0x158
/* B72B0 800B66B0 03E00008 */  jr         $ra
/* B72B4 800B66B4 00000000 */   nop

glabel func_800B66B8
/* B72B8 800B66B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B72BC 800B66BC AFBF0014 */  sw         $ra, 0x14($sp)
/* B72C0 800B66C0 AFA40018 */  sw         $a0, 0x18($sp)
/* B72C4 800B66C4 AFA5001C */  sw         $a1, 0x1c($sp)
/* B72C8 800B66C8 3C0E800E */  lui        $t6, %hi(D_800D9FB4)
/* B72CC 800B66CC 8DCE9FB4 */  lw         $t6, %lo(D_800D9FB4)($t6)
/* B72D0 800B66D0 15C00006 */  bnez       $t6, .L800B66EC
/* B72D4 800B66D4 00000000 */   nop
/* B72D8 800B66D8 8FA40018 */  lw         $a0, 0x18($sp)
/* B72DC 800B66DC 0C02D9C2 */  jal        func_800B6708
/* B72E0 800B66E0 8FA5001C */   lw        $a1, 0x1c($sp)
/* B72E4 800B66E4 10000004 */  b          .L800B66F8
/* B72E8 800B66E8 00000000 */   nop
.L800B66EC:
/* B72EC 800B66EC 8FA40018 */  lw         $a0, 0x18($sp)
/* B72F0 800B66F0 0C02DA37 */  jal        func_800B68DC
/* B72F4 800B66F4 8FA5001C */   lw        $a1, 0x1c($sp)
.L800B66F8:
/* B72F8 800B66F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B72FC 800B66FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7300 800B6700 03E00008 */  jr         $ra
/* B7304 800B6704 00000000 */   nop

glabel func_800B6708
/* B7308 800B6708 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B730C 800B670C AFBF0024 */  sw         $ra, 0x24($sp)
/* B7310 800B6710 AFA40048 */  sw         $a0, 0x48($sp)
/* B7314 800B6714 AFA5004C */  sw         $a1, 0x4c($sp)
/* B7318 800B6718 3C0E800E */  lui        $t6, %hi(D_800DF3D4)
/* B731C 800B671C 25CEF3D4 */  addiu      $t6, $t6, %lo(D_800DF3D4)
/* B7320 800B6720 AFAE0044 */  sw         $t6, 0x44($sp)
/* B7324 800B6724 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* B7328 800B6728 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* B732C 800B672C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B7330 800B6730 3C19BA00 */  lui        $t9, 0xba00
/* B7334 800B6734 AFAF003C */  sw         $t7, 0x3c($sp)
/* B7338 800B6738 8FA8003C */  lw         $t0, 0x3c($sp)
/* B733C 800B673C 25F80008 */  addiu      $t8, $t7, 8
/* B7340 800B6740 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* B7344 800B6744 37391402 */  ori        $t9, $t9, 0x1402
/* B7348 800B6748 AD190000 */  sw         $t9, ($t0)
/* B734C 800B674C 8FAA003C */  lw         $t2, 0x3c($sp)
/* B7350 800B6750 3C090030 */  lui        $t1, 0x30
/* B7354 800B6754 AD490004 */  sw         $t1, 4($t2)
/* B7358 800B6758 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* B735C 800B675C 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* B7360 800B6760 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B7364 800B6764 3C0DF700 */  lui        $t5, 0xf700
/* B7368 800B6768 AFAB0038 */  sw         $t3, 0x38($sp)
/* B736C 800B676C 8FAE0038 */  lw         $t6, 0x38($sp)
/* B7370 800B6770 256C0008 */  addiu      $t4, $t3, 8
/* B7374 800B6774 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* B7378 800B6778 ADCD0000 */  sw         $t5, ($t6)
/* B737C 800B677C 8FB80038 */  lw         $t8, 0x38($sp)
/* B7380 800B6780 3C0F0001 */  lui        $t7, 1
/* B7384 800B6784 35EF0001 */  ori        $t7, $t7, 1
/* B7388 800B6788 AF0F0004 */  sw         $t7, 4($t8)
/* B738C 800B678C 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* B7390 800B6790 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* B7394 800B6794 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B7398 800B6798 3C09F64F */  lui        $t1, 0xf64f
/* B739C 800B679C AFB90034 */  sw         $t9, 0x34($sp)
/* B73A0 800B67A0 8FAA0034 */  lw         $t2, 0x34($sp)
/* B73A4 800B67A4 27280008 */  addiu      $t0, $t9, 8
/* B73A8 800B67A8 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* B73AC 800B67AC 3529C3BC */  ori        $t1, $t1, 0xc3bc
/* B73B0 800B67B0 AD490000 */  sw         $t1, ($t2)
/* B73B4 800B67B4 8FAB0034 */  lw         $t3, 0x34($sp)
/* B73B8 800B67B8 AD600004 */  sw         $zero, 4($t3)
/* B73BC 800B67BC 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* B73C0 800B67C0 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* B73C4 800B67C4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B73C8 800B67C8 3C0EE700 */  lui        $t6, 0xe700
/* B73CC 800B67CC AFAC0030 */  sw         $t4, 0x30($sp)
/* B73D0 800B67D0 8FAF0030 */  lw         $t7, 0x30($sp)
/* B73D4 800B67D4 258D0008 */  addiu      $t5, $t4, 8
/* B73D8 800B67D8 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* B73DC 800B67DC ADEE0000 */  sw         $t6, ($t7)
/* B73E0 800B67E0 8FB80030 */  lw         $t8, 0x30($sp)
/* B73E4 800B67E4 AF000004 */  sw         $zero, 4($t8)
/* B73E8 800B67E8 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* B73EC 800B67EC 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* B73F0 800B67F0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* B73F4 800B67F4 3C09BA00 */  lui        $t1, 0xba00
/* B73F8 800B67F8 AFB9002C */  sw         $t9, 0x2c($sp)
/* B73FC 800B67FC 8FAA002C */  lw         $t2, 0x2c($sp)
/* B7400 800B6800 27280008 */  addiu      $t0, $t9, 8
/* B7404 800B6804 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* B7408 800B6808 35291402 */  ori        $t1, $t1, 0x1402
/* B740C 800B680C AD490000 */  sw         $t1, ($t2)
/* B7410 800B6810 8FAB002C */  lw         $t3, 0x2c($sp)
/* B7414 800B6814 AD600004 */  sw         $zero, 4($t3)
/* B7418 800B6818 3C013F80 */  lui        $at, 0x3f80
/* B741C 800B681C 44812000 */  mtc1       $at, $f4
/* B7420 800B6820 44813000 */  mtc1       $at, $f6
/* B7424 800B6824 240C0001 */  addiu      $t4, $zero, 1
/* B7428 800B6828 AFAC0018 */  sw         $t4, 0x18($sp)
/* B742C 800B682C 8FA40044 */  lw         $a0, 0x44($sp)
/* B7430 800B6830 240500A0 */  addiu      $a1, $zero, 0xa0
/* B7434 800B6834 24060078 */  addiu      $a2, $zero, 0x78
/* B7438 800B6838 240700FF */  addiu      $a3, $zero, 0xff
/* B743C 800B683C E7A40010 */  swc1       $f4, 0x10($sp)
/* B7440 800B6840 0C026F12 */  jal        func_8009BC48
/* B7444 800B6844 E7A60014 */   swc1      $f6, 0x14($sp)
/* B7448 800B6848 3C0D800D */  lui        $t5, %hi(D_800D6248)
/* B744C 800B684C 3C0E8014 */  lui        $t6, %hi(D_801442B0)
/* B7450 800B6850 8DCE42B0 */  lw         $t6, %lo(D_801442B0)($t6)
/* B7454 800B6854 8DAD6248 */  lw         $t5, %lo(D_800D6248)($t5)
/* B7458 800B6858 01AE7823 */  subu       $t7, $t5, $t6
/* B745C 800B685C 2DE1003D */  sltiu      $at, $t7, 0x3d
/* B7460 800B6860 1420001A */  bnez       $at, .L800B68CC
/* B7464 800B6864 00000000 */   nop
/* B7468 800B6868 3C18800F */  lui        $t8, %hi(D_800EA0D8)
/* B746C 800B686C 2718A0D8 */  addiu      $t8, $t8, %lo(D_800EA0D8)
/* B7470 800B6870 97190000 */  lhu        $t9, ($t8)
/* B7474 800B6874 33281000 */  andi       $t0, $t9, 0x1000
/* B7478 800B6878 15000003 */  bnez       $t0, .L800B6888
/* B747C 800B687C 2DE100F1 */   sltiu     $at, $t7, 0xf1
/* B7480 800B6880 14200010 */  bnez       $at, .L800B68C4
/* B7484 800B6884 00000000 */   nop
.L800B6888:
/* B7488 800B6888 3C098018 */  lui        $t1, %hi(D_8017A318)
/* B748C 800B688C 8D29A318 */  lw         $t1, %lo(D_8017A318)($t1)
/* B7490 800B6890 1520000E */  bnez       $t1, .L800B68CC
/* B7494 800B6894 00000000 */   nop
/* B7498 800B6898 3C0B800D */  lui        $t3, %hi(D_800D6248)
/* B749C 800B689C 8D6B6248 */  lw         $t3, %lo(D_800D6248)($t3)
/* B74A0 800B68A0 240A0001 */  addiu      $t2, $zero, 1
/* B74A4 800B68A4 3C018018 */  lui        $at, %hi(D_8017A318)
/* B74A8 800B68A8 AC2AA318 */  sw         $t2, %lo(D_8017A318)($at)
/* B74AC 800B68AC 3C018014 */  lui        $at, %hi(D_801442B0)
/* B74B0 800B68B0 AC2B42B0 */  sw         $t3, %lo(D_801442B0)($at)
/* B74B4 800B68B4 3C01800E */  lui        $at, %hi(D_800D9FB4)
/* B74B8 800B68B8 240C0001 */  addiu      $t4, $zero, 1
/* B74BC 800B68BC 10000003 */  b          .L800B68CC
/* B74C0 800B68C0 AC2C9FB4 */   sw        $t4, %lo(D_800D9FB4)($at)
.L800B68C4:
/* B74C4 800B68C4 3C018018 */  lui        $at, %hi(D_8017A318)
/* B74C8 800B68C8 AC20A318 */  sw         $zero, %lo(D_8017A318)($at)
.L800B68CC:
/* B74CC 800B68CC 8FBF0024 */  lw         $ra, 0x24($sp)
/* B74D0 800B68D0 27BD0048 */  addiu      $sp, $sp, 0x48
/* B74D4 800B68D4 03E00008 */  jr         $ra
/* B74D8 800B68D8 00000000 */   nop

glabel func_800B68DC
/* B74DC 800B68DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B74E0 800B68E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B74E4 800B68E4 AFA40018 */  sw         $a0, 0x18($sp)
/* B74E8 800B68E8 AFA5001C */  sw         $a1, 0x1c($sp)
/* B74EC 800B68EC 3C0E8018 */  lui        $t6, %hi(D_8017A324)
/* B74F0 800B68F0 85CEA324 */  lh         $t6, %lo(D_8017A324)($t6)
/* B74F4 800B68F4 29C10002 */  slti       $at, $t6, 2
/* B74F8 800B68F8 10200015 */  beqz       $at, .L800B6950
/* B74FC 800B68FC 00000000 */   nop
/* B7500 800B6900 8FB8001C */  lw         $t8, 0x1c($sp)
/* B7504 800B6904 3C058011 */  lui        $a1, 0x8011
/* B7508 800B6908 25CF0001 */  addiu      $t7, $t6, 1
/* B750C 800B690C 0018C8C0 */  sll        $t9, $t8, 3
/* B7510 800B6910 0338C821 */  addu       $t9, $t9, $t8
/* B7514 800B6914 0019C8C0 */  sll        $t9, $t9, 3
/* B7518 800B6918 0338C821 */  addu       $t9, $t9, $t8
/* B751C 800B691C 0019C880 */  sll        $t9, $t9, 2
/* B7520 800B6920 0338C823 */  subu       $t9, $t9, $t8
/* B7524 800B6924 0019C900 */  sll        $t9, $t9, 4
/* B7528 800B6928 0338C823 */  subu       $t9, $t9, $t8
/* B752C 800B692C 0019C940 */  sll        $t9, $t9, 5
/* B7530 800B6930 3C018018 */  lui        $at, %hi(D_8017A324)
/* B7534 800B6934 00B92821 */  addu       $a1, $a1, $t9
/* B7538 800B6938 3C04005E */  lui        $a0, 0x5e
/* B753C 800B693C A42FA324 */  sh         $t7, %lo(D_8017A324)($at)
/* B7540 800B6940 248462A0 */  addiu      $a0, $a0, 0x62a0
/* B7544 800B6944 8CA57048 */  lw         $a1, 0x7048($a1)
/* B7548 800B6948 0C000468 */  jal        func_800011A0
/* B754C 800B694C 00003025 */   or        $a2, $zero, $zero
.L800B6950:
/* B7550 800B6950 3C08800D */  lui        $t0, %hi(D_800D6248)
/* B7554 800B6954 3C098014 */  lui        $t1, %hi(D_801442B0)
/* B7558 800B6958 8D2942B0 */  lw         $t1, %lo(D_801442B0)($t1)
/* B755C 800B695C 8D086248 */  lw         $t0, %lo(D_800D6248)($t0)
/* B7560 800B6960 01095023 */  subu       $t2, $t0, $t1
/* B7564 800B6964 448A2000 */  mtc1       $t2, $f4
/* B7568 800B6968 05410006 */  bgez       $t2, .L800B6984
/* B756C 800B696C 468021A1 */   cvt.d.w   $f6, $f4
/* B7570 800B6970 3C0141F0 */  lui        $at, 0x41f0
/* B7574 800B6974 44814800 */  mtc1       $at, $f9
/* B7578 800B6978 44804000 */  mtc1       $zero, $f8
/* B757C 800B697C 00000000 */  nop
/* B7580 800B6980 46283180 */  add.d      $f6, $f6, $f8
.L800B6984:
/* B7584 800B6984 3C01800E */  lui        $at, %hi(D_800DF3F0)
/* B7588 800B6988 D42AF3F0 */  ldc1       $f10, %lo(D_800DF3F0)($at)
/* B758C 800B698C 4626503C */  c.lt.d     $f10, $f6
/* B7590 800B6990 00000000 */  nop
/* B7594 800B6994 45000005 */  bc1f       .L800B69AC
/* B7598 800B6998 3C018018 */   lui       $at, %hi(D_8017A324)
/* B759C 800B699C A420A324 */  sh         $zero, %lo(D_8017A324)($at)
/* B75A0 800B69A0 3C01800D */  lui        $at, %hi(D_800D6300)
/* B75A4 800B69A4 240B0802 */  addiu      $t3, $zero, 0x802
/* B75A8 800B69A8 AC2B6300 */  sw         $t3, %lo(D_800D6300)($at)
.L800B69AC:
/* B75AC 800B69AC 3C0C800F */  lui        $t4, %hi(D_800EA0D8)
/* B75B0 800B69B0 258CA0D8 */  addiu      $t4, $t4, %lo(D_800EA0D8)
/* B75B4 800B69B4 958D0000 */  lhu        $t5, ($t4)
/* B75B8 800B69B8 31AE1000 */  andi       $t6, $t5, 0x1000
/* B75BC 800B69BC 11C0000E */  beqz       $t6, .L800B69F8
/* B75C0 800B69C0 00000000 */   nop
/* B75C4 800B69C4 3C0F8018 */  lui        $t7, %hi(D_8017A318)
/* B75C8 800B69C8 8DEFA318 */  lw         $t7, %lo(D_8017A318)($t7)
/* B75CC 800B69CC 15E0000C */  bnez       $t7, .L800B6A00
/* B75D0 800B69D0 00000000 */   nop
/* B75D4 800B69D4 24180001 */  addiu      $t8, $zero, 1
/* B75D8 800B69D8 3C018018 */  lui        $at, %hi(D_8017A318)
/* B75DC 800B69DC AC38A318 */  sw         $t8, %lo(D_8017A318)($at)
/* B75E0 800B69E0 3C018018 */  lui        $at, %hi(D_8017A324)
/* B75E4 800B69E4 A420A324 */  sh         $zero, %lo(D_8017A324)($at)
/* B75E8 800B69E8 3C01800D */  lui        $at, %hi(D_800D6300)
/* B75EC 800B69EC 24190802 */  addiu      $t9, $zero, 0x802
/* B75F0 800B69F0 10000003 */  b          .L800B6A00
/* B75F4 800B69F4 AC396300 */   sw        $t9, %lo(D_800D6300)($at)
.L800B69F8:
/* B75F8 800B69F8 3C018018 */  lui        $at, %hi(D_8017A318)
/* B75FC 800B69FC AC20A318 */  sw         $zero, %lo(D_8017A318)($at)
.L800B6A00:
/* B7600 800B6A00 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7604 800B6A04 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7608 800B6A08 03E00008 */  jr         $ra
/* B760C 800B6A0C 00000000 */   nop

glabel func_800B6A10
/* B7610 800B6A10 27BDFFF8 */  addiu      $sp, $sp, -8
/* B7614 800B6A14 AFA00004 */  sw         $zero, 4($sp)
/* B7618 800B6A18 00002825 */  or         $a1, $zero, $zero
/* B761C 800B6A1C 240E0001 */  addiu      $t6, $zero, 1
/* B7620 800B6A20 10A00009 */  beqz       $a1, .L800B6A48
/* B7624 800B6A24 AFAE0004 */   sw        $t6, 4($sp)
.L800B6A28:
/* B7628 800B6A28 44802000 */  mtc1       $zero, $f4
/* B762C 800B6A2C 24840004 */  addiu      $a0, $a0, 4
/* B7630 800B6A30 E484FFFC */  swc1       $f4, -4($a0)
/* B7634 800B6A34 8FAF0004 */  lw         $t7, 4($sp)
/* B7638 800B6A38 01E02825 */  or         $a1, $t7, $zero
/* B763C 800B6A3C 25F80001 */  addiu      $t8, $t7, 1
/* B7640 800B6A40 14A0FFF9 */  bnez       $a1, .L800B6A28
/* B7644 800B6A44 AFB80004 */   sw        $t8, 4($sp)
.L800B6A48:
/* B7648 800B6A48 03E00008 */  jr         $ra
/* B764C 800B6A4C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B6A50
/* B7650 800B6A50 240EFFC0 */  addiu      $t6, $zero, -0x40
/* B7654 800B6A54 3C018016 */  lui        $at, %hi(D_8015ED70)
/* B7658 800B6A58 AC2EED70 */  sw         $t6, %lo(D_8015ED70)($at)
/* B765C 800B6A5C 03E00008 */  jr         $ra
/* B7660 800B6A60 00000000 */   nop

glabel func_800B6A64
/* B7664 800B6A64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7668 800B6A68 AFBF0014 */  sw         $ra, 0x14($sp)
/* B766C 800B6A6C AFA40018 */  sw         $a0, 0x18($sp)
/* B7670 800B6A70 8FAE0018 */  lw         $t6, 0x18($sp)
/* B7674 800B6A74 15C00005 */  bnez       $t6, .L800B6A8C
/* B7678 800B6A78 00000000 */   nop
/* B767C 800B6A7C 0C02DA94 */  jal        func_800B6A50
/* B7680 800B6A80 00000000 */   nop
/* B7684 800B6A84 10000015 */  b          .L800B6ADC
/* B7688 800B6A88 00000000 */   nop
.L800B6A8C:
/* B768C 800B6A8C 8FAF0018 */  lw         $t7, 0x18($sp)
/* B7690 800B6A90 2401003C */  addiu      $at, $zero, 0x3c
/* B7694 800B6A94 3C08800E */  lui        $t0, 0x800e
/* B7698 800B6A98 01E1001A */  div        $zero, $t7, $at
/* B769C 800B6A9C 0000C012 */  mflo       $t8
/* B76A0 800B6AA0 3C018016 */  lui        $at, %hi(D_8015ED7C)
/* B76A4 800B6AA4 AC38ED7C */  sw         $t8, %lo(D_8015ED7C)($at)
/* B76A8 800B6AA8 2401003C */  addiu      $at, $zero, 0x3c
/* B76AC 800B6AAC 01E1001A */  div        $zero, $t7, $at
/* B76B0 800B6AB0 0000C810 */  mfhi       $t9
/* B76B4 800B6AB4 8D089D90 */  lw         $t0, -0x6270($t0)
/* B76B8 800B6AB8 3C018016 */  lui        $at, %hi(D_8015ED78)
/* B76BC 800B6ABC AC39ED78 */  sw         $t9, %lo(D_8015ED78)($at)
/* B76C0 800B6AC0 010F0019 */  multu      $t0, $t7
/* B76C4 800B6AC4 3C018016 */  lui        $at, %hi(D_8015ED74)
/* B76C8 800B6AC8 AC20ED74 */  sw         $zero, %lo(D_8015ED74)($at)
/* B76CC 800B6ACC 3C018016 */  lui        $at, %hi(D_8015ED70)
/* B76D0 800B6AD0 00004812 */  mflo       $t1
/* B76D4 800B6AD4 AC29ED70 */  sw         $t1, %lo(D_8015ED70)($at)
/* B76D8 800B6AD8 00000000 */  nop
.L800B6ADC:
/* B76DC 800B6ADC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B76E0 800B6AE0 27BD0018 */  addiu      $sp, $sp, 0x18
/* B76E4 800B6AE4 03E00008 */  jr         $ra
/* B76E8 800B6AE8 00000000 */   nop

glabel func_800B6AEC
/* B76EC 800B6AEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B76F0 800B6AF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B76F4 800B6AF4 AFA40018 */  sw         $a0, 0x18($sp)
/* B76F8 800B6AF8 3C0F800E */  lui        $t7, %hi(D_800D9D90)
/* B76FC 800B6AFC 8DEF9D90 */  lw         $t7, %lo(D_800D9D90)($t7)
/* B7700 800B6B00 8FAE0018 */  lw         $t6, 0x18($sp)
/* B7704 800B6B04 3C198016 */  lui        $t9, %hi(D_8015ED70)
/* B7708 800B6B08 8F39ED70 */  lw         $t9, %lo(D_8015ED70)($t9)
/* B770C 800B6B0C 01CF0019 */  multu      $t6, $t7
/* B7710 800B6B10 0000C012 */  mflo       $t8
/* B7714 800B6B14 0338082A */  slt        $at, $t9, $t8
/* B7718 800B6B18 10200003 */  beqz       $at, .L800B6B28
/* B771C 800B6B1C 00000000 */   nop
/* B7720 800B6B20 0C02DA99 */  jal        func_800B6A64
/* B7724 800B6B24 01C02025 */   or        $a0, $t6, $zero
.L800B6B28:
/* B7728 800B6B28 8FBF0014 */  lw         $ra, 0x14($sp)
/* B772C 800B6B2C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7730 800B6B30 03E00008 */  jr         $ra
/* B7734 800B6B34 00000000 */   nop

glabel func_800B6B38
/* B7738 800B6B38 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B773C 800B6B3C AFBF001C */  sw         $ra, 0x1c($sp)
/* B7740 800B6B40 AFA40028 */  sw         $a0, 0x28($sp)
/* B7744 800B6B44 AFA5002C */  sw         $a1, 0x2c($sp)
/* B7748 800B6B48 F7B40010 */  sdc1       $f20, 0x10($sp)
/* B774C 800B6B4C 0C02F904 */  jal        func_800BE410
/* B7750 800B6B50 C7AC002C */   lwc1      $f12, 0x2c($sp)
/* B7754 800B6B54 3C01800E */  lui        $at, %hi(D_800DF400)
/* B7758 800B6B58 D426F400 */  ldc1       $f6, %lo(D_800DF400)($at)
/* B775C 800B6B5C 46000121 */  cvt.d.s    $f4, $f0
/* B7760 800B6B60 8FAE0028 */  lw         $t6, 0x28($sp)
/* B7764 800B6B64 46262202 */  mul.d      $f8, $f4, $f6
/* B7768 800B6B68 3C0F8016 */  lui        $t7, %hi(D_8015EB1C)
/* B776C 800B6B6C C5CA0000 */  lwc1       $f10, ($t6)
/* B7770 800B6B70 25EFEB1C */  addiu      $t7, $t7, %lo(D_8015EB1C)
/* B7774 800B6B74 3C188016 */  lui        $t8, %hi(D_8015EB1C)
/* B7778 800B6B78 46005421 */  cvt.d.s    $f16, $f10
/* B777C 800B6B7C 2718EB1C */  addiu      $t8, $t8, %lo(D_8015EB1C)
/* B7780 800B6B80 3C088016 */  lui        $t0, %hi(D_8015EB1C)
/* B7784 800B6B84 46288481 */  sub.d      $f18, $f16, $f8
/* B7788 800B6B88 2508EB1C */  addiu      $t0, $t0, %lo(D_8015EB1C)
/* B778C 800B6B8C 3C098016 */  lui        $t1, %hi(D_8015EB1C)
/* B7790 800B6B90 2529EB1C */  addiu      $t1, $t1, %lo(D_8015EB1C)
/* B7794 800B6B94 46209520 */  cvt.s.d    $f20, $f18
/* B7798 800B6B98 E5F40008 */  swc1       $f20, 8($t7)
/* B779C 800B6B9C E7140014 */  swc1       $f20, 0x14($t8)
/* B77A0 800B6BA0 8FB90028 */  lw         $t9, 0x28($sp)
/* B77A4 800B6BA4 C7340004 */  lwc1       $f20, 4($t9)
/* B77A8 800B6BA8 E5140010 */  swc1       $f20, 0x10($t0)
/* B77AC 800B6BAC E534001C */  swc1       $f20, 0x1c($t1)
/* B77B0 800B6BB0 0C033F18 */  jal        func_800CFC60
/* B77B4 800B6BB4 C7AC002C */   lwc1      $f12, 0x2c($sp)
/* B77B8 800B6BB8 3C01800E */  lui        $at, %hi(D_800DF408)
/* B77BC 800B6BBC D426F408 */  ldc1       $f6, %lo(D_800DF408)($at)
/* B77C0 800B6BC0 46000121 */  cvt.d.s    $f4, $f0
/* B77C4 800B6BC4 8FAA0028 */  lw         $t2, 0x28($sp)
/* B77C8 800B6BC8 46262282 */  mul.d      $f10, $f4, $f6
/* B77CC 800B6BCC 3C0B8016 */  lui        $t3, %hi(D_8015EB1C)
/* B77D0 800B6BD0 C5500008 */  lwc1       $f16, 8($t2)
/* B77D4 800B6BD4 256BEB1C */  addiu      $t3, $t3, %lo(D_8015EB1C)
/* B77D8 800B6BD8 3C0C8016 */  lui        $t4, %hi(D_8015EB1C)
/* B77DC 800B6BDC 46008221 */  cvt.d.s    $f8, $f16
/* B77E0 800B6BE0 258CEB1C */  addiu      $t4, $t4, %lo(D_8015EB1C)
/* B77E4 800B6BE4 462A4481 */  sub.d      $f18, $f8, $f10
/* B77E8 800B6BE8 46209520 */  cvt.s.d    $f20, $f18
/* B77EC 800B6BEC E574000C */  swc1       $f20, 0xc($t3)
/* B77F0 800B6BF0 E5940018 */  swc1       $f20, 0x18($t4)
/* B77F4 800B6BF4 8FBF001C */  lw         $ra, 0x1c($sp)
/* B77F8 800B6BF8 D7B40010 */  ldc1       $f20, 0x10($sp)
/* B77FC 800B6BFC 27BD0028 */  addiu      $sp, $sp, 0x28
/* B7800 800B6C00 03E00008 */  jr         $ra
/* B7804 800B6C04 00000000 */   nop

glabel func_800B6C08
/* B7808 800B6C08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B780C 800B6C0C AFBF0014 */  sw         $ra, 0x14($sp)
/* B7810 800B6C10 AFA40018 */  sw         $a0, 0x18($sp)
/* B7814 800B6C14 AFA5001C */  sw         $a1, 0x1c($sp)
/* B7818 800B6C18 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* B781C 800B6C1C 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* B7820 800B6C20 8FA90018 */  lw         $t1, 0x18($sp)
/* B7824 800B6C24 240E0064 */  addiu      $t6, $zero, 0x64
/* B7828 800B6C28 0018C880 */  sll        $t9, $t8, 2
/* B782C 800B6C2C 0338C823 */  subu       $t9, $t9, $t8
/* B7830 800B6C30 0019C880 */  sll        $t9, $t9, 2
/* B7834 800B6C34 0338C823 */  subu       $t9, $t9, $t8
/* B7838 800B6C38 0019C880 */  sll        $t9, $t9, 2
/* B783C 800B6C3C 3C018014 */  lui        $at, %hi(D_80144328)
/* B7840 800B6C40 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* B7844 800B6C44 0338C821 */  addu       $t9, $t9, $t8
/* B7848 800B6C48 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* B784C 800B6C4C A42E4328 */  sh         $t6, %lo(D_80144328)($at)
/* B7850 800B6C50 0019C880 */  sll        $t9, $t9, 2
/* B7854 800B6C54 8D2B0000 */  lw         $t3, ($t1)
/* B7858 800B6C58 0338C823 */  subu       $t9, $t9, $t8
/* B785C 800B6C5C 0019C880 */  sll        $t9, $t9, 2
/* B7860 800B6C60 01F94021 */  addu       $t0, $t7, $t9
/* B7864 800B6C64 AD0B00E0 */  sw         $t3, 0xe0($t0)
/* B7868 800B6C68 8D2A0004 */  lw         $t2, 4($t1)
/* B786C 800B6C6C 3C0D8016 */  lui        $t5, 0x8016
/* B7870 800B6C70 3C0C8016 */  lui        $t4, 0x8016
/* B7874 800B6C74 AD0A00E4 */  sw         $t2, 0xe4($t0)
/* B7878 800B6C78 8D2B0008 */  lw         $t3, 8($t1)
/* B787C 800B6C7C 3C198016 */  lui        $t9, 0x8016
/* B7880 800B6C80 3C0F8016 */  lui        $t7, 0x8016
/* B7884 800B6C84 AD0B00E8 */  sw         $t3, 0xe8($t0)
/* B7888 800B6C88 8DADFB88 */  lw         $t5, -0x478($t5)
/* B788C 800B6C8C 8D8CFB9C */  lw         $t4, -0x464($t4)
/* B7890 800B6C90 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* B7894 800B6C94 000D7080 */  sll        $t6, $t5, 2
/* B7898 800B6C98 01CD7023 */  subu       $t6, $t6, $t5
/* B789C 800B6C9C 000E7080 */  sll        $t6, $t6, 2
/* B78A0 800B6CA0 01CD7023 */  subu       $t6, $t6, $t5
/* B78A4 800B6CA4 000E7080 */  sll        $t6, $t6, 2
/* B78A8 800B6CA8 01CD7021 */  addu       $t6, $t6, $t5
/* B78AC 800B6CAC 000E7080 */  sll        $t6, $t6, 2
/* B78B0 800B6CB0 01CD7023 */  subu       $t6, $t6, $t5
/* B78B4 800B6CB4 000E7080 */  sll        $t6, $t6, 2
/* B78B8 800B6CB8 018EC021 */  addu       $t8, $t4, $t6
/* B78BC 800B6CBC E70400F0 */  swc1       $f4, 0xf0($t8)
/* B78C0 800B6CC0 8F39FB88 */  lw         $t9, -0x478($t9)
/* B78C4 800B6CC4 8DEFFB9C */  lw         $t7, -0x464($t7)
/* B78C8 800B6CC8 44803000 */  mtc1       $zero, $f6
/* B78CC 800B6CCC 00194080 */  sll        $t0, $t9, 2
/* B78D0 800B6CD0 01194023 */  subu       $t0, $t0, $t9
/* B78D4 800B6CD4 00084080 */  sll        $t0, $t0, 2
/* B78D8 800B6CD8 01194023 */  subu       $t0, $t0, $t9
/* B78DC 800B6CDC 00084080 */  sll        $t0, $t0, 2
/* B78E0 800B6CE0 01194021 */  addu       $t0, $t0, $t9
/* B78E4 800B6CE4 00084080 */  sll        $t0, $t0, 2
/* B78E8 800B6CE8 01194023 */  subu       $t0, $t0, $t9
/* B78EC 800B6CEC 00084080 */  sll        $t0, $t0, 2
/* B78F0 800B6CF0 01E84821 */  addu       $t1, $t7, $t0
/* B78F4 800B6CF4 E5260104 */  swc1       $f6, 0x104($t1)
/* B78F8 800B6CF8 8FA5001C */  lw         $a1, 0x1c($sp)
/* B78FC 800B6CFC 0C02DACE */  jal        func_800B6B38
/* B7900 800B6D00 8FA40018 */   lw        $a0, 0x18($sp)
/* B7904 800B6D04 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7908 800B6D08 27BD0018 */  addiu      $sp, $sp, 0x18
/* B790C 800B6D0C 03E00008 */  jr         $ra
/* B7910 800B6D10 00000000 */   nop

glabel func_800B6D14
/* B7914 800B6D14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7918 800B6D18 AFBF0014 */  sw         $ra, 0x14($sp)
/* B791C 800B6D1C 3C0E800D */  lui        $t6, %hi(D_800D6228)
/* B7920 800B6D20 8DCE6228 */  lw         $t6, %lo(D_800D6228)($t6)
/* B7924 800B6D24 3C018014 */  lui        $at, %hi(D_80144334)
/* B7928 800B6D28 A4204334 */  sh         $zero, %lo(D_80144334)($at)
/* B792C 800B6D2C 3C018014 */  lui        $at, %hi(D_8014435C)
/* B7930 800B6D30 11C00009 */  beqz       $t6, .L800B6D58
/* B7934 800B6D34 A420435C */   sh        $zero, %lo(D_8014435C)($at)
/* B7938 800B6D38 3C0F800D */  lui        $t7, %hi(D_800D622C)
/* B793C 800B6D3C 8DEF622C */  lw         $t7, %lo(D_800D622C)($t7)
/* B7940 800B6D40 24010002 */  addiu      $at, $zero, 2
/* B7944 800B6D44 15E10004 */  bne        $t7, $at, .L800B6D58
/* B7948 800B6D48 00000000 */   nop
/* B794C 800B6D4C 24180001 */  addiu      $t8, $zero, 1
/* B7950 800B6D50 3C018014 */  lui        $at, %hi(D_8014435C)
/* B7954 800B6D54 A438435C */  sh         $t8, %lo(D_8014435C)($at)
.L800B6D58:
/* B7958 800B6D58 0C02DF8D */  jal        func_800B7E34
/* B795C 800B6D5C 00000000 */   nop
/* B7960 800B6D60 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7964 800B6D64 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7968 800B6D68 03E00008 */  jr         $ra
/* B796C 800B6D6C 00000000 */   nop

glabel func_800B6D70
/* B7970 800B6D70 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B7974 800B6D74 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7978 800B6D78 AFA40028 */  sw         $a0, 0x28($sp)
/* B797C 800B6D7C F7B40010 */  sdc1       $f20, 0x10($sp)
/* B7980 800B6D80 8FAE0028 */  lw         $t6, 0x28($sp)
/* B7984 800B6D84 11C00039 */  beqz       $t6, .L800B6E6C
/* B7988 800B6D88 00000000 */   nop
/* B798C 800B6D8C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B7990 800B6D90 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7994 800B6D94 8DF80008 */  lw         $t8, 8($t7)
/* B7998 800B6D98 13010034 */  beq        $t8, $at, .L800B6E6C
/* B799C 800B6D9C 00000000 */   nop
.L800B6DA0:
/* B79A0 800B6DA0 8FB90028 */  lw         $t9, 0x28($sp)
/* B79A4 800B6DA4 24010006 */  addiu      $at, $zero, 6
/* B79A8 800B6DA8 8F280008 */  lw         $t0, 8($t9)
/* B79AC 800B6DAC 15010027 */  bne        $t0, $at, .L800B6E4C
/* B79B0 800B6DB0 00000000 */   nop
/* B79B4 800B6DB4 27290020 */  addiu      $t1, $t9, 0x20
/* B79B8 800B6DB8 AFA90028 */  sw         $t1, 0x28($sp)
/* B79BC 800B6DBC 8D2A000C */  lw         $t2, 0xc($t1)
/* B79C0 800B6DC0 3C014059 */  lui        $at, 0x4059
/* B79C4 800B6DC4 44815800 */  mtc1       $at, $f11
/* B79C8 800B6DC8 448A2000 */  mtc1       $t2, $f4
/* B79CC 800B6DCC 44805000 */  mtc1       $zero, $f10
/* B79D0 800B6DD0 468021A0 */  cvt.s.w    $f6, $f4
/* B79D4 800B6DD4 46003221 */  cvt.d.s    $f8, $f6
/* B79D8 800B6DD8 462A4403 */  div.d      $f16, $f8, $f10
/* B79DC 800B6DDC 462084A0 */  cvt.s.d    $f18, $f16
/* B79E0 800B6DE0 E7B20024 */  swc1       $f18, 0x24($sp)
/* B79E4 800B6DE4 0C02F904 */  jal        func_800BE410
/* B79E8 800B6DE8 46009306 */   mov.s     $f12, $f18
/* B79EC 800B6DEC 3C01800E */  lui        $at, %hi(D_800DF410)
/* B79F0 800B6DF0 D426F410 */  ldc1       $f6, %lo(D_800DF410)($at)
/* B79F4 800B6DF4 46000506 */  mov.s      $f20, $f0
/* B79F8 800B6DF8 4600A121 */  cvt.d.s    $f4, $f20
/* B79FC 800B6DFC 8FAB0028 */  lw         $t3, 0x28($sp)
/* B7A00 800B6E00 46262202 */  mul.d      $f8, $f4, $f6
/* B7A04 800B6E04 C56A0014 */  lwc1       $f10, 0x14($t3)
/* B7A08 800B6E08 46005421 */  cvt.d.s    $f16, $f10
/* B7A0C 800B6E0C 46288481 */  sub.d      $f18, $f16, $f8
/* B7A10 800B6E10 46209120 */  cvt.s.d    $f4, $f18
/* B7A14 800B6E14 E5640014 */  swc1       $f4, 0x14($t3)
/* B7A18 800B6E18 0C033F18 */  jal        func_800CFC60
/* B7A1C 800B6E1C C7AC0024 */   lwc1      $f12, 0x24($sp)
/* B7A20 800B6E20 3C01800E */  lui        $at, %hi(D_800DF418)
/* B7A24 800B6E24 D42AF418 */  ldc1       $f10, %lo(D_800DF418)($at)
/* B7A28 800B6E28 46000506 */  mov.s      $f20, $f0
/* B7A2C 800B6E2C 4600A1A1 */  cvt.d.s    $f6, $f20
/* B7A30 800B6E30 8FAC0028 */  lw         $t4, 0x28($sp)
/* B7A34 800B6E34 462A3402 */  mul.d      $f16, $f6, $f10
/* B7A38 800B6E38 C588001C */  lwc1       $f8, 0x1c($t4)
/* B7A3C 800B6E3C 460044A1 */  cvt.d.s    $f18, $f8
/* B7A40 800B6E40 46309101 */  sub.d      $f4, $f18, $f16
/* B7A44 800B6E44 462021A0 */  cvt.s.d    $f6, $f4
/* B7A48 800B6E48 E586001C */  swc1       $f6, 0x1c($t4)
.L800B6E4C:
/* B7A4C 800B6E4C 8FAD0028 */  lw         $t5, 0x28($sp)
/* B7A50 800B6E50 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7A54 800B6E54 25AE0020 */  addiu      $t6, $t5, 0x20
/* B7A58 800B6E58 AFAE0028 */  sw         $t6, 0x28($sp)
/* B7A5C 800B6E5C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B7A60 800B6E60 8DF80008 */  lw         $t8, 8($t7)
/* B7A64 800B6E64 1701FFCE */  bne        $t8, $at, .L800B6DA0
/* B7A68 800B6E68 00000000 */   nop
.L800B6E6C:
/* B7A6C 800B6E6C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B7A70 800B6E70 D7B40010 */  ldc1       $f20, 0x10($sp)
/* B7A74 800B6E74 27BD0028 */  addiu      $sp, $sp, 0x28
/* B7A78 800B6E78 03E00008 */  jr         $ra
/* B7A7C 800B6E7C 00000000 */   nop

glabel func_800B6E80
/* B7A80 800B6E80 27BDFFF8 */  addiu      $sp, $sp, -8
/* B7A84 800B6E84 3C0E800E */  lui        $t6, %hi(D_800D9DBC)
/* B7A88 800B6E88 8DCE9DBC */  lw         $t6, %lo(D_800D9DBC)($t6)
/* B7A8C 800B6E8C 24010003 */  addiu      $at, $zero, 3
/* B7A90 800B6E90 AFA00004 */  sw         $zero, 4($sp)
/* B7A94 800B6E94 11C10022 */  beq        $t6, $at, .L800B6F20
/* B7A98 800B6E98 3C018014 */   lui       $at, %hi(D_8014438C)
/* B7A9C 800B6E9C A420438C */  sh         $zero, %lo(D_8014438C)($at)
/* B7AA0 800B6EA0 8C8F0004 */  lw         $t7, 4($a0)
/* B7AA4 800B6EA4 24010206 */  addiu      $at, $zero, 0x206
/* B7AA8 800B6EA8 11E1001D */  beq        $t7, $at, .L800B6F20
/* B7AAC 800B6EAC 00000000 */   nop
.L800B6EB0:
/* B7AB0 800B6EB0 8C980000 */  lw         $t8, ($a0)
/* B7AB4 800B6EB4 13000012 */  beqz       $t8, .L800B6F00
/* B7AB8 800B6EB8 00000000 */   nop
/* B7ABC 800B6EBC 8C990004 */  lw         $t9, 4($a0)
/* B7AC0 800B6EC0 2401000F */  addiu      $at, $zero, 0xf
/* B7AC4 800B6EC4 1321000E */  beq        $t9, $at, .L800B6F00
/* B7AC8 800B6EC8 00000000 */   nop
/* B7ACC 800B6ECC 3C098014 */  lui        $t1, %hi(D_8014438C)
/* B7AD0 800B6ED0 8529438C */  lh         $t1, %lo(D_8014438C)($t1)
/* B7AD4 800B6ED4 8FA80004 */  lw         $t0, 4($sp)
/* B7AD8 800B6ED8 3C0B8014 */  lui        $t3, %hi(D_8014438C)
/* B7ADC 800B6EDC 856B438C */  lh         $t3, %lo(D_8014438C)($t3)
/* B7AE0 800B6EE0 3C018014 */  lui        $at, %hi(D_80144390)
/* B7AE4 800B6EE4 00095040 */  sll        $t2, $t1, 1
/* B7AE8 800B6EE8 002A0821 */  addu       $at, $at, $t2
/* B7AEC 800B6EEC A4284390 */  sh         $t0, %lo(D_80144390)($at)
/* B7AF0 800B6EF0 3C018014 */  lui        $at, %hi(D_8014438C)
/* B7AF4 800B6EF4 256C0001 */  addiu      $t4, $t3, 1
/* B7AF8 800B6EF8 A42C438C */  sh         $t4, %lo(D_8014438C)($at)
/* B7AFC 800B6EFC AC800000 */  sw         $zero, ($a0)
.L800B6F00:
/* B7B00 800B6F00 8FAD0004 */  lw         $t5, 4($sp)
/* B7B04 800B6F04 24010206 */  addiu      $at, $zero, 0x206
/* B7B08 800B6F08 24840028 */  addiu      $a0, $a0, 0x28
/* B7B0C 800B6F0C 25AE0001 */  addiu      $t6, $t5, 1
/* B7B10 800B6F10 AFAE0004 */  sw         $t6, 4($sp)
/* B7B14 800B6F14 8C8F0004 */  lw         $t7, 4($a0)
/* B7B18 800B6F18 15E1FFE5 */  bne        $t7, $at, .L800B6EB0
/* B7B1C 800B6F1C 00000000 */   nop
.L800B6F20:
/* B7B20 800B6F20 03E00008 */  jr         $ra
/* B7B24 800B6F24 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B6F28
/* B7B28 800B6F28 27BDFFF8 */  addiu      $sp, $sp, -8
/* B7B2C 800B6F2C 3C0E800E */  lui        $t6, %hi(D_800D9DBC)
/* B7B30 800B6F30 8DCE9DBC */  lw         $t6, %lo(D_800D9DBC)($t6)
/* B7B34 800B6F34 24010003 */  addiu      $at, $zero, 3
/* B7B38 800B6F38 11C10062 */  beq        $t6, $at, .L800B70C4
/* B7B3C 800B6F3C 00000000 */   nop
/* B7B40 800B6F40 3C188014 */  lui        $t8, %hi(D_8014438C)
/* B7B44 800B6F44 8718438C */  lh         $t8, %lo(D_8014438C)($t8)
/* B7B48 800B6F48 240F00FF */  addiu      $t7, $zero, 0xff
/* B7B4C 800B6F4C 3C01800D */  lui        $at, %hi(D_800D62FC)
/* B7B50 800B6F50 AC2F62FC */  sw         $t7, %lo(D_800D62FC)($at)
/* B7B54 800B6F54 1B000015 */  blez       $t8, .L800B6FAC
/* B7B58 800B6F58 A7A00006 */   sh        $zero, 6($sp)
.L800B6F5C:
/* B7B5C 800B6F5C 87A80006 */  lh         $t0, 6($sp)
/* B7B60 800B6F60 3C0A8014 */  lui        $t2, %hi(D_80144390)
/* B7B64 800B6F64 24190001 */  addiu      $t9, $zero, 1
/* B7B68 800B6F68 00084840 */  sll        $t1, $t0, 1
/* B7B6C 800B6F6C 01495021 */  addu       $t2, $t2, $t1
/* B7B70 800B6F70 854A4390 */  lh         $t2, %lo(D_80144390)($t2)
/* B7B74 800B6F74 3C088014 */  lui        $t0, 0x8014
/* B7B78 800B6F78 000A5880 */  sll        $t3, $t2, 2
/* B7B7C 800B6F7C 016A5821 */  addu       $t3, $t3, $t2
/* B7B80 800B6F80 000B58C0 */  sll        $t3, $t3, 3
/* B7B84 800B6F84 008B6021 */  addu       $t4, $a0, $t3
/* B7B88 800B6F88 AD990000 */  sw         $t9, ($t4)
/* B7B8C 800B6F8C 87AD0006 */  lh         $t5, 6($sp)
/* B7B90 800B6F90 8508438C */  lh         $t0, 0x438c($t0)
/* B7B94 800B6F94 25AE0001 */  addiu      $t6, $t5, 1
/* B7B98 800B6F98 000E7C00 */  sll        $t7, $t6, 0x10
/* B7B9C 800B6F9C 000FC403 */  sra        $t8, $t7, 0x10
/* B7BA0 800B6FA0 0308082A */  slt        $at, $t8, $t0
/* B7BA4 800B6FA4 1420FFED */  bnez       $at, .L800B6F5C
/* B7BA8 800B6FA8 A7AE0006 */   sh        $t6, 6($sp)
.L800B6FAC:
/* B7BAC 800B6FAC 3C098016 */  lui        $t1, %hi(D_8015F468)
/* B7BB0 800B6FB0 8D29F468 */  lw         $t1, %lo(D_8015F468)($t1)
/* B7BB4 800B6FB4 29210004 */  slti       $at, $t1, 4
/* B7BB8 800B6FB8 1020002C */  beqz       $at, .L800B706C
/* B7BBC 800B6FBC 00000000 */   nop
/* B7BC0 800B6FC0 3C0B8016 */  lui        $t3, %hi(D_8015FB88)
/* B7BC4 800B6FC4 8D6BFB88 */  lw         $t3, %lo(D_8015FB88)($t3)
/* B7BC8 800B6FC8 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* B7BCC 800B6FCC 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* B7BD0 800B6FD0 000BC880 */  sll        $t9, $t3, 2
/* B7BD4 800B6FD4 032BC823 */  subu       $t9, $t9, $t3
/* B7BD8 800B6FD8 0019C880 */  sll        $t9, $t9, 2
/* B7BDC 800B6FDC 032BC823 */  subu       $t9, $t9, $t3
/* B7BE0 800B6FE0 0019C880 */  sll        $t9, $t9, 2
/* B7BE4 800B6FE4 032BC821 */  addu       $t9, $t9, $t3
/* B7BE8 800B6FE8 0019C880 */  sll        $t9, $t9, 2
/* B7BEC 800B6FEC 3C018014 */  lui        $at, %hi(D_8014431C)
/* B7BF0 800B6FF0 C424431C */  lwc1       $f4, %lo(D_8014431C)($at)
/* B7BF4 800B6FF4 032BC823 */  subu       $t9, $t9, $t3
/* B7BF8 800B6FF8 0019C880 */  sll        $t9, $t9, 2
/* B7BFC 800B6FFC 01596021 */  addu       $t4, $t2, $t9
/* B7C00 800B7000 3C0E8016 */  lui        $t6, %hi(D_8015FB88)
/* B7C04 800B7004 E58400F0 */  swc1       $f4, 0xf0($t4)
/* B7C08 800B7008 8DCEFB88 */  lw         $t6, %lo(D_8015FB88)($t6)
/* B7C0C 800B700C 3C0D8016 */  lui        $t5, 0x8016
/* B7C10 800B7010 3C088014 */  lui        $t0, 0x8014
/* B7C14 800B7014 000E7880 */  sll        $t7, $t6, 2
/* B7C18 800B7018 01EE7823 */  subu       $t7, $t7, $t6
/* B7C1C 800B701C 000F7880 */  sll        $t7, $t7, 2
/* B7C20 800B7020 01EE7823 */  subu       $t7, $t7, $t6
/* B7C24 800B7024 000F7880 */  sll        $t7, $t7, 2
/* B7C28 800B7028 01EE7821 */  addu       $t7, $t7, $t6
/* B7C2C 800B702C 8DADFB9C */  lw         $t5, -0x464($t5)
/* B7C30 800B7030 000F7880 */  sll        $t7, $t7, 2
/* B7C34 800B7034 25084310 */  addiu      $t0, $t0, 0x4310
/* B7C38 800B7038 8D0B0000 */  lw         $t3, ($t0)
/* B7C3C 800B703C 01EE7823 */  subu       $t7, $t7, $t6
/* B7C40 800B7040 000F7880 */  sll        $t7, $t7, 2
/* B7C44 800B7044 01AFC021 */  addu       $t8, $t5, $t7
/* B7C48 800B7048 AF0B00E0 */  sw         $t3, 0xe0($t8)
/* B7C4C 800B704C 8D090004 */  lw         $t1, 4($t0)
/* B7C50 800B7050 240A0064 */  addiu      $t2, $zero, 0x64
/* B7C54 800B7054 3C018014 */  lui        $at, %hi(D_80144328)
/* B7C58 800B7058 AF0900E4 */  sw         $t1, 0xe4($t8)
/* B7C5C 800B705C 8D0B0008 */  lw         $t3, 8($t0)
/* B7C60 800B7060 AF0B00E8 */  sw         $t3, 0xe8($t8)
/* B7C64 800B7064 10000017 */  b          .L800B70C4
/* B7C68 800B7068 A42A4328 */   sh        $t2, %lo(D_80144328)($at)
.L800B706C:
/* B7C6C 800B706C 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* B7C70 800B7070 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* B7C74 800B7074 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* B7C78 800B7078 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* B7C7C 800B707C 000C7080 */  sll        $t6, $t4, 2
/* B7C80 800B7080 01CC7023 */  subu       $t6, $t6, $t4
/* B7C84 800B7084 000E7080 */  sll        $t6, $t6, 2
/* B7C88 800B7088 01CC7023 */  subu       $t6, $t6, $t4
/* B7C8C 800B708C 000E7080 */  sll        $t6, $t6, 2
/* B7C90 800B7090 01CC7021 */  addu       $t6, $t6, $t4
/* B7C94 800B7094 000E7080 */  sll        $t6, $t6, 2
/* B7C98 800B7098 01CC7023 */  subu       $t6, $t6, $t4
/* B7C9C 800B709C 000E7080 */  sll        $t6, $t6, 2
/* B7CA0 800B70A0 032E6821 */  addu       $t5, $t9, $t6
/* B7CA4 800B70A4 C5A600E4 */  lwc1       $f6, 0xe4($t5)
/* B7CA8 800B70A8 3C014059 */  lui        $at, 0x4059
/* B7CAC 800B70AC 44815800 */  mtc1       $at, $f11
/* B7CB0 800B70B0 44805000 */  mtc1       $zero, $f10
/* B7CB4 800B70B4 46003221 */  cvt.d.s    $f8, $f6
/* B7CB8 800B70B8 462A4400 */  add.d      $f16, $f8, $f10
/* B7CBC 800B70BC 462084A0 */  cvt.s.d    $f18, $f16
/* B7CC0 800B70C0 E5B200E4 */  swc1       $f18, 0xe4($t5)
.L800B70C4:
/* B7CC4 800B70C4 03E00008 */  jr         $ra
/* B7CC8 800B70C8 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B70CC
/* B7CCC 800B70CC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B7CD0 800B70D0 A7A0000E */  sh         $zero, 0xe($sp)
/* B7CD4 800B70D4 8C8E0004 */  lw         $t6, 4($a0)
/* B7CD8 800B70D8 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7CDC 800B70DC 11C1001D */  beq        $t6, $at, .L800B7154
/* B7CE0 800B70E0 00000000 */   nop
.L800B70E4:
/* B7CE4 800B70E4 8C8F0004 */  lw         $t7, 4($a0)
/* B7CE8 800B70E8 24010206 */  addiu      $at, $zero, 0x206
/* B7CEC 800B70EC 15E10014 */  bne        $t7, $at, .L800B7140
/* B7CF0 800B70F0 00000000 */   nop
/* B7CF4 800B70F4 8C850008 */  lw         $a1, 8($a0)
/* B7CF8 800B70F8 24010001 */  addiu      $at, $zero, 1
/* B7CFC 800B70FC 30A500FF */  andi       $a1, $a1, 0xff
/* B7D00 800B7100 10A10007 */  beq        $a1, $at, .L800B7120
/* B7D04 800B7104 24010003 */   addiu     $at, $zero, 3
/* B7D08 800B7108 10A10009 */  beq        $a1, $at, .L800B7130
/* B7D0C 800B710C 24010005 */   addiu     $at, $zero, 5
/* B7D10 800B7110 10A1003C */  beq        $a1, $at, .L800B7204
/* B7D14 800B7114 00000000 */   nop
/* B7D18 800B7118 10000009 */  b          .L800B7140
/* B7D1C 800B711C 00000000 */   nop
.L800B7120:
/* B7D20 800B7120 24180001 */  addiu      $t8, $zero, 1
/* B7D24 800B7124 A7B8000E */  sh         $t8, 0xe($sp)
/* B7D28 800B7128 10000005 */  b          .L800B7140
/* B7D2C 800B712C AFA40008 */   sw        $a0, 8($sp)
.L800B7130:
/* B7D30 800B7130 87B9000E */  lh         $t9, 0xe($sp)
/* B7D34 800B7134 AFA40004 */  sw         $a0, 4($sp)
/* B7D38 800B7138 37280002 */  ori        $t0, $t9, 2
/* B7D3C 800B713C A7A8000E */  sh         $t0, 0xe($sp)
.L800B7140:
/* B7D40 800B7140 8C89002C */  lw         $t1, 0x2c($a0)
/* B7D44 800B7144 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7D48 800B7148 24840028 */  addiu      $a0, $a0, 0x28
/* B7D4C 800B714C 1521FFE5 */  bne        $t1, $at, .L800B70E4
/* B7D50 800B7150 00000000 */   nop
.L800B7154:
/* B7D54 800B7154 87AA000E */  lh         $t2, 0xe($sp)
/* B7D58 800B7158 24010003 */  addiu      $at, $zero, 3
/* B7D5C 800B715C 15410029 */  bne        $t2, $at, .L800B7204
/* B7D60 800B7160 00000000 */   nop
/* B7D64 800B7164 8FAB0004 */  lw         $t3, 4($sp)
/* B7D68 800B7168 8FAC0008 */  lw         $t4, 8($sp)
/* B7D6C 800B716C 3C198016 */  lui        $t9, 0x8016
/* B7D70 800B7170 C5640018 */  lwc1       $f4, 0x18($t3)
/* B7D74 800B7174 24010004 */  addiu      $at, $zero, 4
/* B7D78 800B7178 E5840018 */  swc1       $f4, 0x18($t4)
/* B7D7C 800B717C 8FAE0004 */  lw         $t6, 4($sp)
/* B7D80 800B7180 8FAD0008 */  lw         $t5, 8($sp)
/* B7D84 800B7184 8DD8000C */  lw         $t8, 0xc($t6)
/* B7D88 800B7188 ADB8000C */  sw         $t8, 0xc($t5)
/* B7D8C 800B718C 8DCF0010 */  lw         $t7, 0x10($t6)
/* B7D90 800B7190 ADAF0010 */  sw         $t7, 0x10($t5)
/* B7D94 800B7194 8DD80014 */  lw         $t8, 0x14($t6)
/* B7D98 800B7198 ADB80014 */  sw         $t8, 0x14($t5)
/* B7D9C 800B719C 8F39F468 */  lw         $t9, -0xb98($t9)
/* B7DA0 800B71A0 17210009 */  bne        $t9, $at, .L800B71C8
/* B7DA4 800B71A4 00000000 */   nop
/* B7DA8 800B71A8 8FA80004 */  lw         $t0, 4($sp)
/* B7DAC 800B71AC 8FA90008 */  lw         $t1, 8($sp)
/* B7DB0 800B71B0 240A0003 */  addiu      $t2, $zero, 3
/* B7DB4 800B71B4 C506001C */  lwc1       $f6, 0x1c($t0)
/* B7DB8 800B71B8 E526001C */  swc1       $f6, 0x1c($t1)
/* B7DBC 800B71BC 8FAB0008 */  lw         $t3, 8($sp)
/* B7DC0 800B71C0 1000000B */  b          .L800B71F0
/* B7DC4 800B71C4 AD6A0008 */   sw        $t2, 8($t3)
.L800B71C8:
/* B7DC8 800B71C8 8FAD0008 */  lw         $t5, 8($sp)
/* B7DCC 800B71CC 3C0C0004 */  lui        $t4, 4
/* B7DD0 800B71D0 358C0205 */  ori        $t4, $t4, 0x205
/* B7DD4 800B71D4 ADAC0008 */  sw         $t4, 8($t5)
/* B7DD8 800B71D8 8FAE0008 */  lw         $t6, 8($sp)
/* B7DDC 800B71DC 3C01800E */  lui        $at, %hi(D_800DF420)
/* B7DE0 800B71E0 C42AF420 */  lwc1       $f10, %lo(D_800DF420)($at)
/* B7DE4 800B71E4 C5C80010 */  lwc1       $f8, 0x10($t6)
/* B7DE8 800B71E8 460A4400 */  add.s      $f16, $f8, $f10
/* B7DEC 800B71EC E5D00010 */  swc1       $f16, 0x10($t6)
.L800B71F0:
/* B7DF0 800B71F0 8FAF0008 */  lw         $t7, 8($sp)
/* B7DF4 800B71F4 2419FFC0 */  addiu      $t9, $zero, -0x40
/* B7DF8 800B71F8 25F80028 */  addiu      $t8, $t7, 0x28
/* B7DFC 800B71FC AFB80008 */  sw         $t8, 8($sp)
/* B7E00 800B7200 AF190004 */  sw         $t9, 4($t8)
.L800B7204:
/* B7E04 800B7204 03E00008 */  jr         $ra
/* B7E08 800B7208 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800B720C
/* B7E0C 800B720C 8C8E0004 */  lw         $t6, 4($a0)
/* B7E10 800B7210 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7E14 800B7214 11C10013 */  beq        $t6, $at, .L800B7264
/* B7E18 800B7218 00000000 */   nop
.L800B721C:
/* B7E1C 800B721C 8C8F0004 */  lw         $t7, 4($a0)
/* B7E20 800B7220 24010206 */  addiu      $at, $zero, 0x206
/* B7E24 800B7224 15E1000A */  bne        $t7, $at, .L800B7250
/* B7E28 800B7228 00000000 */   nop
/* B7E2C 800B722C 8C980008 */  lw         $t8, 8($a0)
/* B7E30 800B7230 24010003 */  addiu      $at, $zero, 3
/* B7E34 800B7234 331900FF */  andi       $t9, $t8, 0xff
/* B7E38 800B7238 17210005 */  bne        $t9, $at, .L800B7250
/* B7E3C 800B723C 00000000 */   nop
/* B7E40 800B7240 2408FFC0 */  addiu      $t0, $zero, -0x40
/* B7E44 800B7244 24840028 */  addiu      $a0, $a0, 0x28
/* B7E48 800B7248 03E00008 */  jr         $ra
/* B7E4C 800B724C AC880004 */   sw        $t0, 4($a0)
.L800B7250:
/* B7E50 800B7250 8C89002C */  lw         $t1, 0x2c($a0)
/* B7E54 800B7254 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7E58 800B7258 24840028 */  addiu      $a0, $a0, 0x28
/* B7E5C 800B725C 1521FFEF */  bne        $t1, $at, .L800B721C
/* B7E60 800B7260 00000000 */   nop
.L800B7264:
/* B7E64 800B7264 03E00008 */  jr         $ra
/* B7E68 800B7268 00000000 */   nop

glabel func_800B726C
/* B7E6C 800B726C 27BDFFF8 */  addiu      $sp, $sp, -8
/* B7E70 800B7270 8C8E0004 */  lw         $t6, 4($a0)
/* B7E74 800B7274 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7E78 800B7278 11C1001F */  beq        $t6, $at, .L800B72F8
/* B7E7C 800B727C 00000000 */   nop
.L800B7280:
/* B7E80 800B7280 8C850004 */  lw         $a1, 4($a0)
/* B7E84 800B7284 2401000F */  addiu      $at, $zero, 0xf
/* B7E88 800B7288 10A10015 */  beq        $a1, $at, .L800B72E0
/* B7E8C 800B728C 24010206 */   addiu     $at, $zero, 0x206
/* B7E90 800B7290 14A10014 */  bne        $a1, $at, .L800B72E4
/* B7E94 800B7294 00000000 */   nop
/* B7E98 800B7298 8C850008 */  lw         $a1, 8($a0)
/* B7E9C 800B729C 3C01FF00 */  lui        $at, 0xff00
/* B7EA0 800B72A0 00A12824 */  and        $a1, $a1, $at
/* B7EA4 800B72A4 3C010100 */  lui        $at, 0x100
/* B7EA8 800B72A8 10A10007 */  beq        $a1, $at, .L800B72C8
/* B7EAC 800B72AC 3C010200 */   lui       $at, 0x200
/* B7EB0 800B72B0 10A10005 */  beq        $a1, $at, .L800B72C8
/* B7EB4 800B72B4 3C010300 */   lui       $at, 0x300
/* B7EB8 800B72B8 14A1000A */  bne        $a1, $at, .L800B72E4
/* B7EBC 800B72BC 00000000 */   nop
/* B7EC0 800B72C0 10000008 */  b          .L800B72E4
/* B7EC4 800B72C4 AC800008 */   sw        $zero, 8($a0)
.L800B72C8:
/* B7EC8 800B72C8 8C8F0008 */  lw         $t7, 8($a0)
/* B7ECC 800B72CC 3C0100FF */  lui        $at, 0xff
/* B7ED0 800B72D0 3421FFFF */  ori        $at, $at, 0xffff
/* B7ED4 800B72D4 01E1C024 */  and        $t8, $t7, $at
/* B7ED8 800B72D8 10000002 */  b          .L800B72E4
/* B7EDC 800B72DC AC980008 */   sw        $t8, 8($a0)
.L800B72E0:
/* B7EE0 800B72E0 AC800000 */  sw         $zero, ($a0)
.L800B72E4:
/* B7EE4 800B72E4 8C99002C */  lw         $t9, 0x2c($a0)
/* B7EE8 800B72E8 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7EEC 800B72EC 24840028 */  addiu      $a0, $a0, 0x28
/* B7EF0 800B72F0 1721FFE3 */  bne        $t9, $at, .L800B7280
/* B7EF4 800B72F4 00000000 */   nop
.L800B72F8:
/* B7EF8 800B72F8 03E00008 */  jr         $ra
/* B7EFC 800B72FC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B7300
/* B7F00 800B7300 8C8E0004 */  lw         $t6, 4($a0)
/* B7F04 800B7304 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7F08 800B7308 11C10010 */  beq        $t6, $at, .L800B734C
/* B7F0C 800B730C 00000000 */   nop
.L800B7310:
/* B7F10 800B7310 8C8F0004 */  lw         $t7, 4($a0)
/* B7F14 800B7314 24010206 */  addiu      $at, $zero, 0x206
/* B7F18 800B7318 15E10007 */  bne        $t7, $at, .L800B7338
/* B7F1C 800B731C 00000000 */   nop
/* B7F20 800B7320 8C980008 */  lw         $t8, 8($a0)
/* B7F24 800B7324 0305C824 */  and        $t9, $t8, $a1
/* B7F28 800B7328 17260003 */  bne        $t9, $a2, .L800B7338
/* B7F2C 800B732C 00000000 */   nop
/* B7F30 800B7330 03E00008 */  jr         $ra
/* B7F34 800B7334 24020001 */   addiu     $v0, $zero, 1
.L800B7338:
/* B7F38 800B7338 8C88002C */  lw         $t0, 0x2c($a0)
/* B7F3C 800B733C 2401FFC0 */  addiu      $at, $zero, -0x40
/* B7F40 800B7340 24840028 */  addiu      $a0, $a0, 0x28
/* B7F44 800B7344 1501FFF2 */  bne        $t0, $at, .L800B7310
/* B7F48 800B7348 00000000 */   nop
.L800B734C:
/* B7F4C 800B734C 00001025 */  or         $v0, $zero, $zero
/* B7F50 800B7350 03E00008 */  jr         $ra
/* B7F54 800B7354 00000000 */   nop

glabel func_800B7358
/* B7F58 800B7358 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7F5C 800B735C AFBF0014 */  sw         $ra, 0x14($sp)
/* B7F60 800B7360 AFA40018 */  sw         $a0, 0x18($sp)
/* B7F64 800B7364 8FA40018 */  lw         $a0, 0x18($sp)
/* B7F68 800B7368 34058000 */  ori        $a1, $zero, 0x8000
/* B7F6C 800B736C 0C02DCC0 */  jal        func_800B7300
/* B7F70 800B7370 34068000 */   ori       $a2, $zero, 0x8000
/* B7F74 800B7374 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7F78 800B7378 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7F7C 800B737C 03E00008 */  jr         $ra
/* B7F80 800B7380 00000000 */   nop

glabel func_800B7384
/* B7F84 800B7384 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7F88 800B7388 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7F8C 800B738C AFA40018 */  sw         $a0, 0x18($sp)
/* B7F90 800B7390 8FA40018 */  lw         $a0, 0x18($sp)
/* B7F94 800B7394 3C05FF00 */  lui        $a1, 0xff00
/* B7F98 800B7398 0C02DCC0 */  jal        func_800B7300
/* B7F9C 800B739C 3C060100 */   lui       $a2, 0x100
/* B7FA0 800B73A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7FA4 800B73A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7FA8 800B73A8 03E00008 */  jr         $ra
/* B7FAC 800B73AC 00000000 */   nop

glabel func_800B73B0
/* B7FB0 800B73B0 27BDFED8 */  addiu      $sp, $sp, -0x128
/* B7FB4 800B73B4 AFBF0024 */  sw         $ra, 0x24($sp)
/* B7FB8 800B73B8 AFA40128 */  sw         $a0, 0x128($sp)
/* B7FBC 800B73BC AFA5012C */  sw         $a1, 0x12c($sp)
/* B7FC0 800B73C0 AFA60130 */  sw         $a2, 0x130($sp)
/* B7FC4 800B73C4 C7A4012C */  lwc1       $f4, 0x12c($sp)
/* B7FC8 800B73C8 3C01800E */  lui        $at, %hi(D_800DF428)
/* B7FCC 800B73CC D428F428 */  ldc1       $f8, %lo(D_800DF428)($at)
/* B7FD0 800B73D0 460021A1 */  cvt.d.s    $f6, $f4
/* B7FD4 800B73D4 44809000 */  mtc1       $zero, $f18
/* B7FD8 800B73D8 46283282 */  mul.d      $f10, $f6, $f8
/* B7FDC 800B73DC 27A400A8 */  addiu      $a0, $sp, 0xa8
/* B7FE0 800B73E0 24060000 */  addiu      $a2, $zero, 0
/* B7FE4 800B73E4 3C073F80 */  lui        $a3, 0x3f80
/* B7FE8 800B73E8 E7B20010 */  swc1       $f18, 0x10($sp)
/* B7FEC 800B73EC 46205420 */  cvt.s.d    $f16, $f10
/* B7FF0 800B73F0 44058000 */  mfc1       $a1, $f16
/* B7FF4 800B73F4 0C033A45 */  jal        func_800CE914
/* B7FF8 800B73F8 00000000 */   nop
/* B7FFC 800B73FC C7A40130 */  lwc1       $f4, 0x130($sp)
/* B8000 800B7400 3C01800E */  lui        $at, %hi(D_800DF430)
/* B8004 800B7404 D428F430 */  ldc1       $f8, %lo(D_800DF430)($at)
/* B8008 800B7408 460021A1 */  cvt.d.s    $f6, $f4
/* B800C 800B740C 44809000 */  mtc1       $zero, $f18
/* B8010 800B7410 46283282 */  mul.d      $f10, $f6, $f8
/* B8014 800B7414 27A40068 */  addiu      $a0, $sp, 0x68
/* B8018 800B7418 3C063F80 */  lui        $a2, 0x3f80
/* B801C 800B741C 24070000 */  addiu      $a3, $zero, 0
/* B8020 800B7420 E7B20010 */  swc1       $f18, 0x10($sp)
/* B8024 800B7424 46205420 */  cvt.s.d    $f16, $f10
/* B8028 800B7428 44058000 */  mfc1       $a1, $f16
/* B802C 800B742C 0C033A45 */  jal        func_800CE914
/* B8030 800B7430 00000000 */   nop
/* B8034 800B7434 27A400A8 */  addiu      $a0, $sp, 0xa8
/* B8038 800B7438 27A50068 */  addiu      $a1, $sp, 0x68
/* B803C 800B743C 0C033084 */  jal        func_800CC210
/* B8040 800B7440 27A600E8 */   addiu     $a2, $sp, 0xe8
/* B8044 800B7444 8FAE0128 */  lw         $t6, 0x128($sp)
/* B8048 800B7448 27A400E8 */  addiu      $a0, $sp, 0xe8
/* B804C 800B744C 24050000 */  addiu      $a1, $zero, 0
/* B8050 800B7450 25CF0004 */  addiu      $t7, $t6, 4
/* B8054 800B7454 25D80008 */  addiu      $t8, $t6, 8
/* B8058 800B7458 AFB80018 */  sw         $t8, 0x18($sp)
/* B805C 800B745C AFAF0014 */  sw         $t7, 0x14($sp)
/* B8060 800B7460 24060000 */  addiu      $a2, $zero, 0
/* B8064 800B7464 3C073F80 */  lui        $a3, 0x3f80
/* B8068 800B7468 0C03306C */  jal        func_800CC1B0
/* B806C 800B746C AFAE0010 */   sw        $t6, 0x10($sp)
/* B8070 800B7470 8FBF0024 */  lw         $ra, 0x24($sp)
/* B8074 800B7474 27BD0128 */  addiu      $sp, $sp, 0x128
/* B8078 800B7478 03E00008 */  jr         $ra
/* B807C 800B747C 00000000 */   nop

glabel func_800B7480
/* B8080 800B7480 3C0F8016 */  lui        $t7, %hi(D_8015FB8C)
/* B8084 800B7484 8DEFFB8C */  lw         $t7, %lo(D_8015FB8C)($t7)
/* B8088 800B7488 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* B808C 800B748C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* B8090 800B7490 000FC080 */  sll        $t8, $t7, 2
/* B8094 800B7494 030FC023 */  subu       $t8, $t8, $t7
/* B8098 800B7498 0018C080 */  sll        $t8, $t8, 2
/* B809C 800B749C 030FC023 */  subu       $t8, $t8, $t7
/* B80A0 800B74A0 0018C080 */  sll        $t8, $t8, 2
/* B80A4 800B74A4 030FC021 */  addu       $t8, $t8, $t7
/* B80A8 800B74A8 0018C080 */  sll        $t8, $t8, 2
/* B80AC 800B74AC 030FC023 */  subu       $t8, $t8, $t7
/* B80B0 800B74B0 0018C080 */  sll        $t8, $t8, 2
/* B80B4 800B74B4 01D8C821 */  addu       $t9, $t6, $t8
/* B80B8 800B74B8 8F280004 */  lw         $t0, 4($t9)
/* B80BC 800B74BC 150F0003 */  bne        $t0, $t7, .L800B74CC
/* B80C0 800B74C0 00000000 */   nop
/* B80C4 800B74C4 2409FFFF */  addiu      $t1, $zero, -1
/* B80C8 800B74C8 AF290004 */  sw         $t1, 4($t9)
.L800B74CC:
/* B80CC 800B74CC 03E00008 */  jr         $ra
/* B80D0 800B74D0 00000000 */   nop

glabel func_800B74D4
/* B80D4 800B74D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B80D8 800B74D8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B80DC 800B74DC 3C198016 */  lui        $t9, %hi(D_8015F468)
/* B80E0 800B74E0 8F39F468 */  lw         $t9, %lo(D_8015F468)($t9)
/* B80E4 800B74E4 240E0002 */  addiu      $t6, $zero, 2
/* B80E8 800B74E8 3C018014 */  lui        $at, %hi(D_80144334)
/* B80EC 800B74EC A42E4334 */  sh         $t6, %lo(D_80144334)($at)
/* B80F0 800B74F0 3C188014 */  lui        $t8, %hi(D_801442C8)
/* B80F4 800B74F4 8F1842C8 */  lw         $t8, %lo(D_801442C8)($t8)
/* B80F8 800B74F8 3C018014 */  lui        $at, %hi(D_80144358)
/* B80FC 800B74FC 240F0001 */  addiu      $t7, $zero, 1
/* B8100 800B7500 00194080 */  sll        $t0, $t9, 2
/* B8104 800B7504 A42F4358 */  sh         $t7, %lo(D_80144358)($at)
/* B8108 800B7508 01194023 */  subu       $t0, $t0, $t9
/* B810C 800B750C 3C018014 */  lui        $at, %hi(D_801442FC)
/* B8110 800B7510 00084080 */  sll        $t0, $t0, 2
/* B8114 800B7514 A42042FC */  sh         $zero, %lo(D_801442FC)($at)
/* B8118 800B7518 03084821 */  addu       $t1, $t8, $t0
/* B811C 800B751C 852A000C */  lh         $t2, 0xc($t1)
/* B8120 800B7520 3C048016 */  lui        $a0, %hi(D_8015FF80)
/* B8124 800B7524 8C84FF80 */  lw         $a0, %lo(D_8015FF80)($a0)
/* B8128 800B7528 0C02DBCA */  jal        func_800B6F28
/* B812C 800B752C AFAA0024 */   sw        $t2, 0x24($sp)
/* B8130 800B7530 8FAB0024 */  lw         $t3, 0x24($sp)
/* B8134 800B7534 11600003 */  beqz       $t3, .L800B7544
/* B8138 800B7538 00000000 */   nop
/* B813C 800B753C 256C0001 */  addiu      $t4, $t3, 1
/* B8140 800B7540 AFAC0024 */  sw         $t4, 0x24($sp)
.L800B7544:
/* B8144 800B7544 0C02DA99 */  jal        func_800B6A64
/* B8148 800B7548 8FA40024 */   lw        $a0, 0x24($sp)
/* B814C 800B754C 3C0D800E */  lui        $t5, %hi(D_800D9DBC)
/* B8150 800B7550 8DAD9DBC */  lw         $t5, %lo(D_800D9DBC)($t5)
/* B8154 800B7554 24010003 */  addiu      $at, $zero, 3
/* B8158 800B7558 11A10022 */  beq        $t5, $at, .L800B75E4
/* B815C 800B755C 00000000 */   nop
/* B8160 800B7560 3C0E800E */  lui        $t6, %hi(D_800D9FC0)
/* B8164 800B7564 3C0F8014 */  lui        $t7, %hi(D_801442D4)
/* B8168 800B7568 8DEF42D4 */  lw         $t7, %lo(D_801442D4)($t7)
/* B816C 800B756C 8DCE9FC0 */  lw         $t6, %lo(D_800D9FC0)($t6)
/* B8170 800B7570 11CF0006 */  beq        $t6, $t7, .L800B758C
/* B8174 800B7574 3C01800E */   lui       $at, %hi(D_800D9FC0)
/* B8178 800B7578 AC2F9FC0 */  sw         $t7, %lo(D_800D9FC0)($at)
/* B817C 800B757C 3C018014 */  lui        $at, %hi(D_801442E0)
/* B8180 800B7580 24190001 */  addiu      $t9, $zero, 1
/* B8184 800B7584 10000006 */  b          .L800B75A0
/* B8188 800B7588 AC3942E0 */   sw        $t9, %lo(D_801442E0)($at)
.L800B758C:
/* B818C 800B758C 3C188014 */  lui        $t8, %hi(D_801442E0)
/* B8190 800B7590 8F1842E0 */  lw         $t8, %lo(D_801442E0)($t8)
/* B8194 800B7594 3C018014 */  lui        $at, %hi(D_801442E0)
/* B8198 800B7598 27080001 */  addiu      $t0, $t8, 1
/* B819C 800B759C AC2842E0 */  sw         $t0, %lo(D_801442E0)($at)
.L800B75A0:
/* B81A0 800B75A0 0C024EF4 */  jal        func_80093BD0
/* B81A4 800B75A4 00000000 */   nop
/* B81A8 800B75A8 3C0A8016 */  lui        $t2, %hi(D_8015F468)
/* B81AC 800B75AC 8D4AF468 */  lw         $t2, %lo(D_8015F468)($t2)
/* B81B0 800B75B0 3C098014 */  lui        $t1, %hi(D_801442C8)
/* B81B4 800B75B4 8D2942C8 */  lw         $t1, %lo(D_801442C8)($t1)
/* B81B8 800B75B8 000A5880 */  sll        $t3, $t2, 2
/* B81BC 800B75BC 016A5823 */  subu       $t3, $t3, $t2
/* B81C0 800B75C0 000B5880 */  sll        $t3, $t3, 2
/* B81C4 800B75C4 012B6021 */  addu       $t4, $t1, $t3
/* B81C8 800B75C8 858D000E */  lh         $t5, 0xe($t4)
/* B81CC 800B75CC 3C018014 */  lui        $at, %hi(D_8014432C)
/* B81D0 800B75D0 240E0030 */  addiu      $t6, $zero, 0x30
/* B81D4 800B75D4 AC2D432C */  sw         $t5, %lo(D_8014432C)($at)
/* B81D8 800B75D8 3C018014 */  lui        $at, %hi(D_80144330)
/* B81DC 800B75DC 10000003 */  b          .L800B75EC
/* B81E0 800B75E0 AC2E4330 */   sw        $t6, %lo(D_80144330)($at)
.L800B75E4:
/* B81E4 800B75E4 0C02E3FC */  jal        func_800B8FF0
/* B81E8 800B75E8 00002025 */   or        $a0, $zero, $zero
.L800B75EC:
/* B81EC 800B75EC 0C02DD20 */  jal        func_800B7480
/* B81F0 800B75F0 00000000 */   nop
/* B81F4 800B75F4 3C0F8014 */  lui        $t7, %hi(D_801442D4)
/* B81F8 800B75F8 8DEF42D4 */  lw         $t7, %lo(D_801442D4)($t7)
/* B81FC 800B75FC 2DE10022 */  sltiu      $at, $t7, 0x22
/* B8200 800B7600 102001BB */  beqz       $at, .L800B7CF0
/* B8204 800B7604 00000000 */   nop
/* B8208 800B7608 000F7880 */  sll        $t7, $t7, 2
/* B820C 800B760C 3C01800E */  lui        $at, %hi(D_800DF438)
/* B8210 800B7610 002F0821 */  addu       $at, $at, $t7
/* B8214 800B7614 8C2FF438 */  lw         $t7, %lo(D_800DF438)($at)
/* B8218 800B7618 01E00008 */  jr         $t7
/* B821C 800B761C 00000000 */   nop
/* B8220 800B7620 3C19800E */  lui        $t9, %hi(D_800D9DBC)
/* B8224 800B7624 8F399DBC */  lw         $t9, %lo(D_800D9DBC)($t9)
/* B8228 800B7628 24010003 */  addiu      $at, $zero, 3
/* B822C 800B762C 132101C2 */  beq        $t9, $at, .L800B7D38
/* B8230 800B7630 00000000 */   nop
/* B8234 800B7634 100001C0 */  b          .L800B7D38
/* B8238 800B7638 00000000 */   nop
/* B823C 800B763C 3C188018 */  lui        $t8, %hi(D_8017A028)
/* B8240 800B7640 2718A028 */  addiu      $t8, $t8, %lo(D_8017A028)
/* B8244 800B7644 8F05009C */  lw         $a1, 0x9c($t8)
/* B8248 800B7648 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* B824C 800B764C 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* B8250 800B7650 AFA00010 */  sw         $zero, 0x10($sp)
/* B8254 800B7654 24040027 */  addiu      $a0, $zero, 0x27
/* B8258 800B7658 0C0009DF */  jal        func_8000277C
/* B825C 800B765C 24070040 */   addiu     $a3, $zero, 0x40
/* B8260 800B7660 3C088016 */  lui        $t0, %hi(D_8015FF80)
/* B8264 800B7664 8D08FF80 */  lw         $t0, %lo(D_8015FF80)($t0)
/* B8268 800B7668 24040087 */  addiu      $a0, $zero, 0x87
/* B826C 800B766C 00002825 */  or         $a1, $zero, $zero
/* B8270 800B7670 2406000C */  addiu      $a2, $zero, 0xc
/* B8274 800B7674 24070052 */  addiu      $a3, $zero, 0x52
/* B8278 800B7678 0C00B011 */  jal        func_8002C044
/* B827C 800B767C AFA80010 */   sw        $t0, 0x10($sp)
/* B8280 800B7680 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8284 800B7684 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8288 800B7688 24040003 */  addiu      $a0, $zero, 3
/* B828C 800B768C 00002825 */  or         $a1, $zero, $zero
/* B8290 800B7690 0C00AF12 */  jal        func_8002BC48
/* B8294 800B7694 24060025 */   addiu     $a2, $zero, 0x25
/* B8298 800B7698 100001A7 */  b          .L800B7D38
/* B829C 800B769C 00000000 */   nop
/* B82A0 800B76A0 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B82A4 800B76A4 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B82A8 800B76A8 24040002 */  addiu      $a0, $zero, 2
/* B82AC 800B76AC 00002825 */  or         $a1, $zero, $zero
/* B82B0 800B76B0 0C00AF12 */  jal        func_8002BC48
/* B82B4 800B76B4 24060006 */   addiu     $a2, $zero, 6
/* B82B8 800B76B8 1000019F */  b          .L800B7D38
/* B82BC 800B76BC 00000000 */   nop
/* B82C0 800B76C0 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B82C4 800B76C4 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B82C8 800B76C8 2404001A */  addiu      $a0, $zero, 0x1a
/* B82CC 800B76CC 24050054 */  addiu      $a1, $zero, 0x54
/* B82D0 800B76D0 0C00AF12 */  jal        func_8002BC48
/* B82D4 800B76D4 24060057 */   addiu     $a2, $zero, 0x57
/* B82D8 800B76D8 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B82DC 800B76DC 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B82E0 800B76E0 24040129 */  addiu      $a0, $zero, 0x129
/* B82E4 800B76E4 24050056 */  addiu      $a1, $zero, 0x56
/* B82E8 800B76E8 0C00AF12 */  jal        func_8002BC48
/* B82EC 800B76EC 24060055 */   addiu     $a2, $zero, 0x55
/* B82F0 800B76F0 10000191 */  b          .L800B7D38
/* B82F4 800B76F4 00000000 */   nop
/* B82F8 800B76F8 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B82FC 800B76FC 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8300 800B7700 2404003B */  addiu      $a0, $zero, 0x3b
/* B8304 800B7704 24050054 */  addiu      $a1, $zero, 0x54
/* B8308 800B7708 0C00AF12 */  jal        func_8002BC48
/* B830C 800B770C 2406005A */   addiu     $a2, $zero, 0x5a
/* B8310 800B7710 10000189 */  b          .L800B7D38
/* B8314 800B7714 00000000 */   nop
/* B8318 800B7718 3C0A8016 */  lui        $t2, %hi(D_8015FF80)
/* B831C 800B771C 8D4AFF80 */  lw         $t2, %lo(D_8015FF80)($t2)
/* B8320 800B7720 2404001B */  addiu      $a0, $zero, 0x1b
/* B8324 800B7724 2405FFFF */  addiu      $a1, $zero, -1
/* B8328 800B7728 24060054 */  addiu      $a2, $zero, 0x54
/* B832C 800B772C 2407004A */  addiu      $a3, $zero, 0x4a
/* B8330 800B7730 0C00B011 */  jal        func_8002C044
/* B8334 800B7734 AFAA0010 */   sw        $t2, 0x10($sp)
/* B8338 800B7738 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B833C 800B773C 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8340 800B7740 24040002 */  addiu      $a0, $zero, 2
/* B8344 800B7744 24050054 */  addiu      $a1, $zero, 0x54
/* B8348 800B7748 0C00AF12 */  jal        func_8002BC48
/* B834C 800B774C 24060006 */   addiu     $a2, $zero, 6
/* B8350 800B7750 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8354 800B7754 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8358 800B7758 24040003 */  addiu      $a0, $zero, 3
/* B835C 800B775C 24050054 */  addiu      $a1, $zero, 0x54
/* B8360 800B7760 0C00AF12 */  jal        func_8002BC48
/* B8364 800B7764 24060025 */   addiu     $a2, $zero, 0x25
/* B8368 800B7768 10000173 */  b          .L800B7D38
/* B836C 800B776C 00000000 */   nop
/* B8370 800B7770 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8374 800B7774 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8378 800B7778 2404003B */  addiu      $a0, $zero, 0x3b
/* B837C 800B777C 24050054 */  addiu      $a1, $zero, 0x54
/* B8380 800B7780 0C00AF12 */  jal        func_8002BC48
/* B8384 800B7784 2406005A */   addiu     $a2, $zero, 0x5a
/* B8388 800B7788 1000016B */  b          .L800B7D38
/* B838C 800B778C 00000000 */   nop
/* B8390 800B7790 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8394 800B7794 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8398 800B7798 2404001A */  addiu      $a0, $zero, 0x1a
/* B839C 800B779C 24050054 */  addiu      $a1, $zero, 0x54
/* B83A0 800B77A0 0C00AF12 */  jal        func_8002BC48
/* B83A4 800B77A4 24060004 */   addiu     $a2, $zero, 4
/* B83A8 800B77A8 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B83AC 800B77AC 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B83B0 800B77B0 24040039 */  addiu      $a0, $zero, 0x39
/* B83B4 800B77B4 24050054 */  addiu      $a1, $zero, 0x54
/* B83B8 800B77B8 0C00AF12 */  jal        func_8002BC48
/* B83BC 800B77BC 24060031 */   addiu     $a2, $zero, 0x31
/* B83C0 800B77C0 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B83C4 800B77C4 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B83C8 800B77C8 24040003 */  addiu      $a0, $zero, 3
/* B83CC 800B77CC 24050054 */  addiu      $a1, $zero, 0x54
/* B83D0 800B77D0 0C00AF12 */  jal        func_8002BC48
/* B83D4 800B77D4 24060025 */   addiu     $a2, $zero, 0x25
/* B83D8 800B77D8 10000157 */  b          .L800B7D38
/* B83DC 800B77DC 00000000 */   nop
/* B83E0 800B77E0 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B83E4 800B77E4 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B83E8 800B77E8 2404003B */  addiu      $a0, $zero, 0x3b
/* B83EC 800B77EC 24050054 */  addiu      $a1, $zero, 0x54
/* B83F0 800B77F0 0C00AF12 */  jal        func_8002BC48
/* B83F4 800B77F4 2406005A */   addiu     $a2, $zero, 0x5a
/* B83F8 800B77F8 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B83FC 800B77FC 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8400 800B7800 24040003 */  addiu      $a0, $zero, 3
/* B8404 800B7804 24050054 */  addiu      $a1, $zero, 0x54
/* B8408 800B7808 0C00AF12 */  jal        func_8002BC48
/* B840C 800B780C 24060025 */   addiu     $a2, $zero, 0x25
/* B8410 800B7810 10000149 */  b          .L800B7D38
/* B8414 800B7814 00000000 */   nop
/* B8418 800B7818 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B841C 800B781C 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8420 800B7820 2404001A */  addiu      $a0, $zero, 0x1a
/* B8424 800B7824 24050054 */  addiu      $a1, $zero, 0x54
/* B8428 800B7828 0C00AF12 */  jal        func_8002BC48
/* B842C 800B782C 2406005B */   addiu     $a2, $zero, 0x5b
/* B8430 800B7830 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8434 800B7834 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8438 800B7838 24040129 */  addiu      $a0, $zero, 0x129
/* B843C 800B783C 24050056 */  addiu      $a1, $zero, 0x56
/* B8440 800B7840 0C00AF12 */  jal        func_8002BC48
/* B8444 800B7844 24060055 */   addiu     $a2, $zero, 0x55
/* B8448 800B7848 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B844C 800B784C 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8450 800B7850 24040003 */  addiu      $a0, $zero, 3
/* B8454 800B7854 24050054 */  addiu      $a1, $zero, 0x54
/* B8458 800B7858 0C00AF12 */  jal        func_8002BC48
/* B845C 800B785C 24060025 */   addiu     $a2, $zero, 0x25
/* B8460 800B7860 10000135 */  b          .L800B7D38
/* B8464 800B7864 00000000 */   nop
/* B8468 800B7868 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B846C 800B786C 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8470 800B7870 24040002 */  addiu      $a0, $zero, 2
/* B8474 800B7874 00002825 */  or         $a1, $zero, $zero
/* B8478 800B7878 0C00AF12 */  jal        func_8002BC48
/* B847C 800B787C 24060006 */   addiu     $a2, $zero, 6
/* B8480 800B7880 3C098016 */  lui        $t1, %hi(D_8015FF80)
/* B8484 800B7884 8D29FF80 */  lw         $t1, %lo(D_8015FF80)($t1)
/* B8488 800B7888 2404001A */  addiu      $a0, $zero, 0x1a
/* B848C 800B788C 00002825 */  or         $a1, $zero, $zero
/* B8490 800B7890 00003025 */  or         $a2, $zero, $zero
/* B8494 800B7894 2407004A */  addiu      $a3, $zero, 0x4a
/* B8498 800B7898 0C00B011 */  jal        func_8002C044
/* B849C 800B789C AFA90010 */   sw        $t1, 0x10($sp)
/* B84A0 800B78A0 10000125 */  b          .L800B7D38
/* B84A4 800B78A4 00000000 */   nop
/* B84A8 800B78A8 3C0B8018 */  lui        $t3, %hi(D_8017A028)
/* B84AC 800B78AC 256BA028 */  addiu      $t3, $t3, %lo(D_8017A028)
/* B84B0 800B78B0 8D65009C */  lw         $a1, 0x9c($t3)
/* B84B4 800B78B4 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* B84B8 800B78B8 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* B84BC 800B78BC AFA00010 */  sw         $zero, 0x10($sp)
/* B84C0 800B78C0 24040027 */  addiu      $a0, $zero, 0x27
/* B84C4 800B78C4 0C0009DF */  jal        func_8000277C
/* B84C8 800B78C8 24070040 */   addiu     $a3, $zero, 0x40
/* B84CC 800B78CC 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B84D0 800B78D0 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B84D4 800B78D4 24040129 */  addiu      $a0, $zero, 0x129
/* B84D8 800B78D8 24050056 */  addiu      $a1, $zero, 0x56
/* B84DC 800B78DC 0C00AF12 */  jal        func_8002BC48
/* B84E0 800B78E0 24060055 */   addiu     $a2, $zero, 0x55
/* B84E4 800B78E4 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B84E8 800B78E8 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B84EC 800B78EC 24040086 */  addiu      $a0, $zero, 0x86
/* B84F0 800B78F0 24050054 */  addiu      $a1, $zero, 0x54
/* B84F4 800B78F4 0C00AF12 */  jal        func_8002BC48
/* B84F8 800B78F8 24060055 */   addiu     $a2, $zero, 0x55
/* B84FC 800B78FC 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8500 800B7900 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8504 800B7904 2404001B */  addiu      $a0, $zero, 0x1b
/* B8508 800B7908 00002825 */  or         $a1, $zero, $zero
/* B850C 800B790C 0C00AF12 */  jal        func_8002BC48
/* B8510 800B7910 2406004A */   addiu     $a2, $zero, 0x4a
/* B8514 800B7914 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8518 800B7918 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B851C 800B791C 2404003B */  addiu      $a0, $zero, 0x3b
/* B8520 800B7920 24050054 */  addiu      $a1, $zero, 0x54
/* B8524 800B7924 0C00AF12 */  jal        func_8002BC48
/* B8528 800B7928 2406005A */   addiu     $a2, $zero, 0x5a
/* B852C 800B792C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8530 800B7930 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8534 800B7934 24040039 */  addiu      $a0, $zero, 0x39
/* B8538 800B7938 24050054 */  addiu      $a1, $zero, 0x54
/* B853C 800B793C 0C00AF12 */  jal        func_8002BC48
/* B8540 800B7940 24060031 */   addiu     $a2, $zero, 0x31
/* B8544 800B7944 100000FC */  b          .L800B7D38
/* B8548 800B7948 00000000 */   nop
/* B854C 800B794C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8550 800B7950 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8554 800B7954 24040002 */  addiu      $a0, $zero, 2
/* B8558 800B7958 24050054 */  addiu      $a1, $zero, 0x54
/* B855C 800B795C 0C00AF12 */  jal        func_8002BC48
/* B8560 800B7960 24060025 */   addiu     $a2, $zero, 0x25
/* B8564 800B7964 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8568 800B7968 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B856C 800B796C 24040003 */  addiu      $a0, $zero, 3
/* B8570 800B7970 24050054 */  addiu      $a1, $zero, 0x54
/* B8574 800B7974 0C00AF12 */  jal        func_8002BC48
/* B8578 800B7978 24060025 */   addiu     $a2, $zero, 0x25
/* B857C 800B797C 100000EE */  b          .L800B7D38
/* B8580 800B7980 00000000 */   nop
/* B8584 800B7984 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8588 800B7988 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B858C 800B798C 2404003B */  addiu      $a0, $zero, 0x3b
/* B8590 800B7990 24050054 */  addiu      $a1, $zero, 0x54
/* B8594 800B7994 0C00AF12 */  jal        func_8002BC48
/* B8598 800B7998 2406005C */   addiu     $a2, $zero, 0x5c
/* B859C 800B799C 100000E6 */  b          .L800B7D38
/* B85A0 800B79A0 00000000 */   nop
/* B85A4 800B79A4 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B85A8 800B79A8 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B85AC 800B79AC 24040002 */  addiu      $a0, $zero, 2
/* B85B0 800B79B0 24050054 */  addiu      $a1, $zero, 0x54
/* B85B4 800B79B4 0C00AF12 */  jal        func_8002BC48
/* B85B8 800B79B8 24060025 */   addiu     $a2, $zero, 0x25
/* B85BC 800B79BC 100000DE */  b          .L800B7D38
/* B85C0 800B79C0 00000000 */   nop
/* B85C4 800B79C4 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B85C8 800B79C8 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B85CC 800B79CC 2404003B */  addiu      $a0, $zero, 0x3b
/* B85D0 800B79D0 24050054 */  addiu      $a1, $zero, 0x54
/* B85D4 800B79D4 0C00AF12 */  jal        func_8002BC48
/* B85D8 800B79D8 2406005A */   addiu     $a2, $zero, 0x5a
/* B85DC 800B79DC 100000D6 */  b          .L800B7D38
/* B85E0 800B79E0 00000000 */   nop
/* B85E4 800B79E4 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B85E8 800B79E8 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B85EC 800B79EC 2404001A */  addiu      $a0, $zero, 0x1a
/* B85F0 800B79F0 00002825 */  or         $a1, $zero, $zero
/* B85F4 800B79F4 0C00AF12 */  jal        func_8002BC48
/* B85F8 800B79F8 2406004A */   addiu     $a2, $zero, 0x4a
/* B85FC 800B79FC 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8600 800B7A00 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8604 800B7A04 24040129 */  addiu      $a0, $zero, 0x129
/* B8608 800B7A08 24050056 */  addiu      $a1, $zero, 0x56
/* B860C 800B7A0C 0C00AF12 */  jal        func_8002BC48
/* B8610 800B7A10 24060055 */   addiu     $a2, $zero, 0x55
/* B8614 800B7A14 100000C8 */  b          .L800B7D38
/* B8618 800B7A18 00000000 */   nop
/* B861C 800B7A1C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8620 800B7A20 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8624 800B7A24 2404001B */  addiu      $a0, $zero, 0x1b
/* B8628 800B7A28 00002825 */  or         $a1, $zero, $zero
/* B862C 800B7A2C 0C00AF12 */  jal        func_8002BC48
/* B8630 800B7A30 2406004A */   addiu     $a2, $zero, 0x4a
/* B8634 800B7A34 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8638 800B7A38 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B863C 800B7A3C 2404001A */  addiu      $a0, $zero, 0x1a
/* B8640 800B7A40 00002825 */  or         $a1, $zero, $zero
/* B8644 800B7A44 0C00AF12 */  jal        func_8002BC48
/* B8648 800B7A48 2406004A */   addiu     $a2, $zero, 0x4a
/* B864C 800B7A4C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8650 800B7A50 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8654 800B7A54 24040129 */  addiu      $a0, $zero, 0x129
/* B8658 800B7A58 24050056 */  addiu      $a1, $zero, 0x56
/* B865C 800B7A5C 0C00AF12 */  jal        func_8002BC48
/* B8660 800B7A60 24060055 */   addiu     $a2, $zero, 0x55
/* B8664 800B7A64 100000B4 */  b          .L800B7D38
/* B8668 800B7A68 00000000 */   nop
/* B866C 800B7A6C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8670 800B7A70 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8674 800B7A74 2404001A */  addiu      $a0, $zero, 0x1a
/* B8678 800B7A78 00002825 */  or         $a1, $zero, $zero
/* B867C 800B7A7C 0C00AF12 */  jal        func_8002BC48
/* B8680 800B7A80 2406004A */   addiu     $a2, $zero, 0x4a
/* B8684 800B7A84 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8688 800B7A88 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B868C 800B7A8C 2404001B */  addiu      $a0, $zero, 0x1b
/* B8690 800B7A90 00002825 */  or         $a1, $zero, $zero
/* B8694 800B7A94 0C00AF12 */  jal        func_8002BC48
/* B8698 800B7A98 2406004A */   addiu     $a2, $zero, 0x4a
/* B869C 800B7A9C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B86A0 800B7AA0 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B86A4 800B7AA4 24040129 */  addiu      $a0, $zero, 0x129
/* B86A8 800B7AA8 24050056 */  addiu      $a1, $zero, 0x56
/* B86AC 800B7AAC 0C00AF12 */  jal        func_8002BC48
/* B86B0 800B7AB0 24060055 */   addiu     $a2, $zero, 0x55
/* B86B4 800B7AB4 100000A0 */  b          .L800B7D38
/* B86B8 800B7AB8 00000000 */   nop
/* B86BC 800B7ABC 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B86C0 800B7AC0 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B86C4 800B7AC4 24040003 */  addiu      $a0, $zero, 3
/* B86C8 800B7AC8 24050054 */  addiu      $a1, $zero, 0x54
/* B86CC 800B7ACC 0C00AF12 */  jal        func_8002BC48
/* B86D0 800B7AD0 24060025 */   addiu     $a2, $zero, 0x25
/* B86D4 800B7AD4 10000098 */  b          .L800B7D38
/* B86D8 800B7AD8 00000000 */   nop
/* B86DC 800B7ADC 3C0C8018 */  lui        $t4, %hi(D_8017A028)
/* B86E0 800B7AE0 258CA028 */  addiu      $t4, $t4, %lo(D_8017A028)
/* B86E4 800B7AE4 8D85009C */  lw         $a1, 0x9c($t4)
/* B86E8 800B7AE8 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* B86EC 800B7AEC 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* B86F0 800B7AF0 AFA00010 */  sw         $zero, 0x10($sp)
/* B86F4 800B7AF4 24040027 */  addiu      $a0, $zero, 0x27
/* B86F8 800B7AF8 0C0009DF */  jal        func_8000277C
/* B86FC 800B7AFC 24070040 */   addiu     $a3, $zero, 0x40
/* B8700 800B7B00 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8704 800B7B04 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8708 800B7B08 24040086 */  addiu      $a0, $zero, 0x86
/* B870C 800B7B0C 2405000C */  addiu      $a1, $zero, 0xc
/* B8710 800B7B10 0C00AF12 */  jal        func_8002BC48
/* B8714 800B7B14 24060052 */   addiu     $a2, $zero, 0x52
/* B8718 800B7B18 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B871C 800B7B1C 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8720 800B7B20 24040087 */  addiu      $a0, $zero, 0x87
/* B8724 800B7B24 2405000C */  addiu      $a1, $zero, 0xc
/* B8728 800B7B28 0C00AF12 */  jal        func_8002BC48
/* B872C 800B7B2C 24060052 */   addiu     $a2, $zero, 0x52
/* B8730 800B7B30 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8734 800B7B34 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8738 800B7B38 2404008C */  addiu      $a0, $zero, 0x8c
/* B873C 800B7B3C 2405000C */  addiu      $a1, $zero, 0xc
/* B8740 800B7B40 0C00AF12 */  jal        func_8002BC48
/* B8744 800B7B44 24060052 */   addiu     $a2, $zero, 0x52
/* B8748 800B7B48 1000007B */  b          .L800B7D38
/* B874C 800B7B4C 00000000 */   nop
/* B8750 800B7B50 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8754 800B7B54 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8758 800B7B58 24040129 */  addiu      $a0, $zero, 0x129
/* B875C 800B7B5C 24050056 */  addiu      $a1, $zero, 0x56
/* B8760 800B7B60 0C00AF12 */  jal        func_8002BC48
/* B8764 800B7B64 24060055 */   addiu     $a2, $zero, 0x55
/* B8768 800B7B68 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B876C 800B7B6C 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8770 800B7B70 2404001B */  addiu      $a0, $zero, 0x1b
/* B8774 800B7B74 00002825 */  or         $a1, $zero, $zero
/* B8778 800B7B78 0C00AF12 */  jal        func_8002BC48
/* B877C 800B7B7C 2406004A */   addiu     $a2, $zero, 0x4a
/* B8780 800B7B80 1000006D */  b          .L800B7D38
/* B8784 800B7B84 00000000 */   nop
/* B8788 800B7B88 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B878C 800B7B8C 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8790 800B7B90 24040003 */  addiu      $a0, $zero, 3
/* B8794 800B7B94 24050054 */  addiu      $a1, $zero, 0x54
/* B8798 800B7B98 0C00AF12 */  jal        func_8002BC48
/* B879C 800B7B9C 24060025 */   addiu     $a2, $zero, 0x25
/* B87A0 800B7BA0 10000065 */  b          .L800B7D38
/* B87A4 800B7BA4 00000000 */   nop
/* B87A8 800B7BA8 3C0D8018 */  lui        $t5, %hi(D_8017A028)
/* B87AC 800B7BAC 25ADA028 */  addiu      $t5, $t5, %lo(D_8017A028)
/* B87B0 800B7BB0 8DA5009C */  lw         $a1, 0x9c($t5)
/* B87B4 800B7BB4 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* B87B8 800B7BB8 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* B87BC 800B7BBC AFA00010 */  sw         $zero, 0x10($sp)
/* B87C0 800B7BC0 24040027 */  addiu      $a0, $zero, 0x27
/* B87C4 800B7BC4 0C0009DF */  jal        func_8000277C
/* B87C8 800B7BC8 24070040 */   addiu     $a3, $zero, 0x40
/* B87CC 800B7BCC 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B87D0 800B7BD0 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B87D4 800B7BD4 24040086 */  addiu      $a0, $zero, 0x86
/* B87D8 800B7BD8 24050054 */  addiu      $a1, $zero, 0x54
/* B87DC 800B7BDC 0C00AF12 */  jal        func_8002BC48
/* B87E0 800B7BE0 2406005A */   addiu     $a2, $zero, 0x5a
/* B87E4 800B7BE4 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B87E8 800B7BE8 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B87EC 800B7BEC 2404001B */  addiu      $a0, $zero, 0x1b
/* B87F0 800B7BF0 00002825 */  or         $a1, $zero, $zero
/* B87F4 800B7BF4 0C00AF12 */  jal        func_8002BC48
/* B87F8 800B7BF8 2406004A */   addiu     $a2, $zero, 0x4a
/* B87FC 800B7BFC 1000004E */  b          .L800B7D38
/* B8800 800B7C00 00000000 */   nop
/* B8804 800B7C04 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8808 800B7C08 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B880C 800B7C0C 24040019 */  addiu      $a0, $zero, 0x19
/* B8810 800B7C10 00002825 */  or         $a1, $zero, $zero
/* B8814 800B7C14 0C00AF12 */  jal        func_8002BC48
/* B8818 800B7C18 2406004A */   addiu     $a2, $zero, 0x4a
/* B881C 800B7C1C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8820 800B7C20 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8824 800B7C24 24040002 */  addiu      $a0, $zero, 2
/* B8828 800B7C28 24050054 */  addiu      $a1, $zero, 0x54
/* B882C 800B7C2C 0C00AF12 */  jal        func_8002BC48
/* B8830 800B7C30 24060006 */   addiu     $a2, $zero, 6
/* B8834 800B7C34 10000040 */  b          .L800B7D38
/* B8838 800B7C38 00000000 */   nop
/* B883C 800B7C3C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8840 800B7C40 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8844 800B7C44 2404003B */  addiu      $a0, $zero, 0x3b
/* B8848 800B7C48 24050054 */  addiu      $a1, $zero, 0x54
/* B884C 800B7C4C 0C00AF12 */  jal        func_8002BC48
/* B8850 800B7C50 2406005A */   addiu     $a2, $zero, 0x5a
/* B8854 800B7C54 10000038 */  b          .L800B7D38
/* B8858 800B7C58 00000000 */   nop
/* B885C 800B7C5C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B8860 800B7C60 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B8864 800B7C64 24040002 */  addiu      $a0, $zero, 2
/* B8868 800B7C68 24050054 */  addiu      $a1, $zero, 0x54
/* B886C 800B7C6C 0C00AF12 */  jal        func_8002BC48
/* B8870 800B7C70 24060025 */   addiu     $a2, $zero, 0x25
/* B8874 800B7C74 10000030 */  b          .L800B7D38
/* B8878 800B7C78 00000000 */   nop
/* B887C 800B7C7C 3C0E8018 */  lui        $t6, %hi(D_8017A028)
/* B8880 800B7C80 25CEA028 */  addiu      $t6, $t6, %lo(D_8017A028)
/* B8884 800B7C84 8DC5009C */  lw         $a1, 0x9c($t6)
/* B8888 800B7C88 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* B888C 800B7C8C 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* B8890 800B7C90 AFA00010 */  sw         $zero, 0x10($sp)
/* B8894 800B7C94 24040027 */  addiu      $a0, $zero, 0x27
/* B8898 800B7C98 0C0009DF */  jal        func_8000277C
/* B889C 800B7C9C 24070040 */   addiu     $a3, $zero, 0x40
/* B88A0 800B7CA0 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B88A4 800B7CA4 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B88A8 800B7CA8 2404001A */  addiu      $a0, $zero, 0x1a
/* B88AC 800B7CAC 24050054 */  addiu      $a1, $zero, 0x54
/* B88B0 800B7CB0 0C00AF12 */  jal        func_8002BC48
/* B88B4 800B7CB4 24060053 */   addiu     $a2, $zero, 0x53
/* B88B8 800B7CB8 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B88BC 800B7CBC 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B88C0 800B7CC0 24040112 */  addiu      $a0, $zero, 0x112
/* B88C4 800B7CC4 2405005F */  addiu      $a1, $zero, 0x5f
/* B88C8 800B7CC8 0C00AF12 */  jal        func_8002BC48
/* B88CC 800B7CCC 24060060 */   addiu     $a2, $zero, 0x60
/* B88D0 800B7CD0 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B88D4 800B7CD4 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B88D8 800B7CD8 24040086 */  addiu      $a0, $zero, 0x86
/* B88DC 800B7CDC 24050054 */  addiu      $a1, $zero, 0x54
/* B88E0 800B7CE0 0C00AF12 */  jal        func_8002BC48
/* B88E4 800B7CE4 24060055 */   addiu     $a2, $zero, 0x55
/* B88E8 800B7CE8 10000013 */  b          .L800B7D38
/* B88EC 800B7CEC 00000000 */   nop
.L800B7CF0:
/* B88F0 800B7CF0 3C188016 */  lui        $t8, %hi(D_8015F464)
/* B88F4 800B7CF4 3C0A8016 */  lui        $t2, %hi(D_8015F468)
/* B88F8 800B7CF8 8D4AF468 */  lw         $t2, %lo(D_8015F468)($t2)
/* B88FC 800B7CFC 8F18F464 */  lw         $t8, %lo(D_8015F464)($t8)
/* B8900 800B7D00 240F0002 */  addiu      $t7, $zero, 2
/* B8904 800B7D04 000A4880 */  sll        $t1, $t2, 2
/* B8908 800B7D08 00184100 */  sll        $t0, $t8, 4
/* B890C 800B7D0C 3C018014 */  lui        $at, %hi(D_80144334)
/* B8910 800B7D10 012A4823 */  subu       $t1, $t1, $t2
/* B8914 800B7D14 01184023 */  subu       $t0, $t0, $t8
/* B8918 800B7D18 A42F4334 */  sh         $t7, %lo(D_80144334)($at)
/* B891C 800B7D1C 000840C0 */  sll        $t0, $t0, 3
/* B8920 800B7D20 000948C0 */  sll        $t1, $t1, 3
/* B8924 800B7D24 01095821 */  addu       $t3, $t0, $t1
/* B8928 800B7D28 3C018016 */  lui        $at, %hi(D_80160C8C)
/* B892C 800B7D2C 002B0821 */  addu       $at, $at, $t3
/* B8930 800B7D30 24190001 */  addiu      $t9, $zero, 1
/* B8934 800B7D34 AC390C8C */  sw         $t9, %lo(D_80160C8C)($at)
.L800B7D38:
/* B8938 800B7D38 240C0064 */  addiu      $t4, $zero, 0x64
/* B893C 800B7D3C 3C018014 */  lui        $at, %hi(D_80144328)
/* B8940 800B7D40 A42C4328 */  sh         $t4, %lo(D_80144328)($at)
/* B8944 800B7D44 8FBF001C */  lw         $ra, 0x1c($sp)
/* B8948 800B7D48 27BD0028 */  addiu      $sp, $sp, 0x28
/* B894C 800B7D4C 03E00008 */  jr         $ra
/* B8950 800B7D50 00000000 */   nop

glabel func_800B7D54
/* B8954 800B7D54 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B8958 800B7D58 AFBF001C */  sw         $ra, 0x1c($sp)
/* B895C 800B7D5C AFB00018 */  sw         $s0, 0x18($sp)
/* B8960 800B7D60 3C0F800E */  lui        $t7, %hi(D_800D9DBC)
/* B8964 800B7D64 8DEF9DBC */  lw         $t7, %lo(D_800D9DBC)($t7)
/* B8968 800B7D68 3C0E8016 */  lui        $t6, %hi(D_8015FF80)
/* B896C 800B7D6C 8DCEFF80 */  lw         $t6, %lo(D_8015FF80)($t6)
/* B8970 800B7D70 24010003 */  addiu      $at, $zero, 3
/* B8974 800B7D74 11E10006 */  beq        $t7, $at, .L800B7D90
/* B8978 800B7D78 AFAE002C */   sw        $t6, 0x2c($sp)
/* B897C 800B7D7C 3C188014 */  lui        $t8, %hi(D_801442E0)
/* B8980 800B7D80 8F1842E0 */  lw         $t8, %lo(D_801442E0)($t8)
/* B8984 800B7D84 2B010003 */  slti       $at, $t8, 3
/* B8988 800B7D88 10200005 */  beqz       $at, .L800B7DA0
/* B898C 800B7D8C 00000000 */   nop
.L800B7D90:
/* B8990 800B7D90 3C198014 */  lui        $t9, %hi(D_8014435C)
/* B8994 800B7D94 8739435C */  lh         $t9, %lo(D_8014435C)($t9)
/* B8998 800B7D98 13200021 */  beqz       $t9, .L800B7E20
/* B899C 800B7D9C 00000000 */   nop
.L800B7DA0:
/* B89A0 800B7DA0 8FA8002C */  lw         $t0, 0x2c($sp)
/* B89A4 800B7DA4 2401FFC0 */  addiu      $at, $zero, -0x40
/* B89A8 800B7DA8 8D090004 */  lw         $t1, 4($t0)
/* B89AC 800B7DAC 11210012 */  beq        $t1, $at, .L800B7DF8
/* B89B0 800B7DB0 00000000 */   nop
.L800B7DB4:
/* B89B4 800B7DB4 8FAA002C */  lw         $t2, 0x2c($sp)
/* B89B8 800B7DB8 2401000F */  addiu      $at, $zero, 0xf
/* B89BC 800B7DBC 8D500004 */  lw         $s0, 4($t2)
/* B89C0 800B7DC0 12010003 */  beq        $s0, $at, .L800B7DD0
/* B89C4 800B7DC4 24010206 */   addiu     $at, $zero, 0x206
/* B89C8 800B7DC8 16010003 */  bne        $s0, $at, .L800B7DD8
/* B89CC 800B7DCC 00000000 */   nop
.L800B7DD0:
/* B89D0 800B7DD0 8FAB002C */  lw         $t3, 0x2c($sp)
/* B89D4 800B7DD4 AD600000 */  sw         $zero, ($t3)
.L800B7DD8:
/* B89D8 800B7DD8 8FAC002C */  lw         $t4, 0x2c($sp)
/* B89DC 800B7DDC 2401FFC0 */  addiu      $at, $zero, -0x40
/* B89E0 800B7DE0 258D0028 */  addiu      $t5, $t4, 0x28
/* B89E4 800B7DE4 AFAD002C */  sw         $t5, 0x2c($sp)
/* B89E8 800B7DE8 8FAE002C */  lw         $t6, 0x2c($sp)
/* B89EC 800B7DEC 8DCF0004 */  lw         $t7, 4($t6)
/* B89F0 800B7DF0 15E1FFF0 */  bne        $t7, $at, .L800B7DB4
/* B89F4 800B7DF4 00000000 */   nop
.L800B7DF8:
/* B89F8 800B7DF8 24180001 */  addiu      $t8, $zero, 1
/* B89FC 800B7DFC 3C01800E */  lui        $at, %hi(D_800D9FC8)
/* B8A00 800B7E00 3C048014 */  lui        $a0, %hi(D_80144310)
/* B8A04 800B7E04 3C058014 */  lui        $a1, %hi(D_8014431C)
/* B8A08 800B7E08 A4389FC8 */  sh         $t8, %lo(D_800D9FC8)($at)
/* B8A0C 800B7E0C 8CA5431C */  lw         $a1, %lo(D_8014431C)($a1)
/* B8A10 800B7E10 0C02DB02 */  jal        func_800B6C08
/* B8A14 800B7E14 24844310 */   addiu     $a0, $a0, %lo(D_80144310)
/* B8A18 800B7E18 0C02DD35 */  jal        func_800B74D4
/* B8A1C 800B7E1C 00000000 */   nop
.L800B7E20:
/* B8A20 800B7E20 8FBF001C */  lw         $ra, 0x1c($sp)
/* B8A24 800B7E24 8FB00018 */  lw         $s0, 0x18($sp)
/* B8A28 800B7E28 27BD0030 */  addiu      $sp, $sp, 0x30
/* B8A2C 800B7E2C 03E00008 */  jr         $ra
/* B8A30 800B7E30 00000000 */   nop

glabel func_800B7E34
/* B8A34 800B7E34 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B8A38 800B7E38 AFBF0024 */  sw         $ra, 0x24($sp)
/* B8A3C 800B7E3C AFB00020 */  sw         $s0, 0x20($sp)
/* B8A40 800B7E40 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* B8A44 800B7E44 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* B8A48 800B7E48 24010005 */  addiu      $at, $zero, 5
/* B8A4C 800B7E4C AFA00038 */  sw         $zero, 0x38($sp)
/* B8A50 800B7E50 11C10230 */  beq        $t6, $at, .L800B8714
/* B8A54 800B7E54 00000000 */   nop
/* B8A58 800B7E58 0C0121A5 */  jal        func_80048694
/* B8A5C 800B7E5C 00000000 */   nop
/* B8A60 800B7E60 240F0001 */  addiu      $t7, $zero, 1
/* B8A64 800B7E64 3C018014 */  lui        $at, %hi(D_8014435A)
/* B8A68 800B7E68 A42F435A */  sh         $t7, %lo(D_8014435A)($at)
/* B8A6C 800B7E6C 3C018018 */  lui        $at, %hi(D_8017AD94)
/* B8A70 800B7E70 A420AD94 */  sh         $zero, %lo(D_8017AD94)($at)
/* B8A74 800B7E74 3C018014 */  lui        $at, %hi(D_80144348)
/* B8A78 800B7E78 A4204348 */  sh         $zero, %lo(D_80144348)($at)
/* B8A7C 800B7E7C 3C018014 */  lui        $at, %hi(D_801442FE)
/* B8A80 800B7E80 A42042FE */  sh         $zero, %lo(D_801442FE)($at)
/* B8A84 800B7E84 3C018014 */  lui        $at, %hi(D_80144350)
/* B8A88 800B7E88 24180001 */  addiu      $t8, $zero, 1
/* B8A8C 800B7E8C A4384350 */  sh         $t8, %lo(D_80144350)($at)
/* B8A90 800B7E90 3C018014 */  lui        $at, %hi(D_80144354)
/* B8A94 800B7E94 24190001 */  addiu      $t9, $zero, 1
/* B8A98 800B7E98 A4394354 */  sh         $t9, %lo(D_80144354)($at)
/* B8A9C 800B7E9C 3C018014 */  lui        $at, %hi(D_8014434A)
/* B8AA0 800B7EA0 24080001 */  addiu      $t0, $zero, 1
/* B8AA4 800B7EA4 A428434A */  sh         $t0, %lo(D_8014434A)($at)
/* B8AA8 800B7EA8 3C018014 */  lui        $at, %hi(D_8014434C)
/* B8AAC 800B7EAC A420434C */  sh         $zero, %lo(D_8014434C)($at)
/* B8AB0 800B7EB0 3C014248 */  lui        $at, 0x4248
/* B8AB4 800B7EB4 44812000 */  mtc1       $at, $f4
/* B8AB8 800B7EB8 3C018014 */  lui        $at, %hi(D_801442C0)
/* B8ABC 800B7EBC 3C10800E */  lui        $s0, %hi(D_800D9DBC)
/* B8AC0 800B7EC0 E42442C0 */  swc1       $f4, %lo(D_801442C0)($at)
/* B8AC4 800B7EC4 3C013F80 */  lui        $at, 0x3f80
/* B8AC8 800B7EC8 44813000 */  mtc1       $at, $f6
/* B8ACC 800B7ECC 8E109DBC */  lw         $s0, %lo(D_800D9DBC)($s0)
/* B8AD0 800B7ED0 3C018014 */  lui        $at, %hi(D_801442C4)
/* B8AD4 800B7ED4 E42642C4 */  swc1       $f6, %lo(D_801442C4)($at)
/* B8AD8 800B7ED8 3C018014 */  lui        $at, %hi(D_80144320)
/* B8ADC 800B7EDC 1200000A */  beqz       $s0, .L800B7F08
/* B8AE0 800B7EE0 AC204320 */   sw        $zero, %lo(D_80144320)($at)
/* B8AE4 800B7EE4 24010001 */  addiu      $at, $zero, 1
/* B8AE8 800B7EE8 1201001A */  beq        $s0, $at, .L800B7F54
/* B8AEC 800B7EEC 24010002 */   addiu     $at, $zero, 2
/* B8AF0 800B7EF0 12010034 */  beq        $s0, $at, .L800B7FC4
/* B8AF4 800B7EF4 24010003 */   addiu     $at, $zero, 3
/* B8AF8 800B7EF8 12010051 */  beq        $s0, $at, .L800B8040
/* B8AFC 800B7EFC 00000000 */   nop
/* B8B00 800B7F00 10000059 */  b          .L800B8068
/* B8B04 800B7F04 00000000 */   nop
.L800B7F08:
/* B8B08 800B7F08 3C098016 */  lui        $t1, %hi(D_8015F464)
/* B8B0C 800B7F0C 8D29F464 */  lw         $t1, %lo(D_8015F464)($t1)
/* B8B10 800B7F10 24010001 */  addiu      $at, $zero, 1
/* B8B14 800B7F14 15210004 */  bne        $t1, $at, .L800B7F28
/* B8B18 800B7F18 00000000 */   nop
/* B8B1C 800B7F1C 240A0090 */  addiu      $t2, $zero, 0x90
/* B8B20 800B7F20 3C018014 */  lui        $at, %hi(D_8014432C)
/* B8B24 800B7F24 AC2A432C */  sw         $t2, %lo(D_8014432C)($at)
.L800B7F28:
/* B8B28 800B7F28 3C018014 */  lui        $at, %hi(D_80144352)
/* B8B2C 800B7F2C A4204352 */  sh         $zero, %lo(D_80144352)($at)
/* B8B30 800B7F30 3C018014 */  lui        $at, %hi(D_80144356)
/* B8B34 800B7F34 240B0001 */  addiu      $t3, $zero, 1
/* B8B38 800B7F38 A42B4356 */  sh         $t3, %lo(D_80144356)($at)
/* B8B3C 800B7F3C 3C018014 */  lui        $at, %hi(D_801442FC)
/* B8B40 800B7F40 240C0001 */  addiu      $t4, $zero, 1
/* B8B44 800B7F44 A42C42FC */  sh         $t4, %lo(D_801442FC)($at)
/* B8B48 800B7F48 3C018014 */  lui        $at, %hi(D_8014434E)
/* B8B4C 800B7F4C 10000046 */  b          .L800B8068
/* B8B50 800B7F50 A420434E */   sh        $zero, %lo(D_8014434E)($at)
.L800B7F54:
/* B8B54 800B7F54 3C0D8016 */  lui        $t5, %hi(D_8015F464)
/* B8B58 800B7F58 8DADF464 */  lw         $t5, %lo(D_8015F464)($t5)
/* B8B5C 800B7F5C 24010001 */  addiu      $at, $zero, 1
/* B8B60 800B7F60 15A10004 */  bne        $t5, $at, .L800B7F74
/* B8B64 800B7F64 00000000 */   nop
/* B8B68 800B7F68 240E0092 */  addiu      $t6, $zero, 0x92
/* B8B6C 800B7F6C 3C018014 */  lui        $at, %hi(D_8014432C)
/* B8B70 800B7F70 AC2E432C */  sw         $t6, %lo(D_8014432C)($at)
.L800B7F74:
/* B8B74 800B7F74 3C0F8016 */  lui        $t7, %hi(D_8015F468)
/* B8B78 800B7F78 8DEFF468 */  lw         $t7, %lo(D_8015F468)($t7)
/* B8B7C 800B7F7C 31F80001 */  andi       $t8, $t7, 1
/* B8B80 800B7F80 13000005 */  beqz       $t8, .L800B7F98
/* B8B84 800B7F84 00000000 */   nop
/* B8B88 800B7F88 24190001 */  addiu      $t9, $zero, 1
/* B8B8C 800B7F8C 3C018014 */  lui        $at, %hi(D_80144352)
/* B8B90 800B7F90 10000003 */  b          .L800B7FA0
/* B8B94 800B7F94 A4394352 */   sh        $t9, %lo(D_80144352)($at)
.L800B7F98:
/* B8B98 800B7F98 3C018014 */  lui        $at, %hi(D_80144352)
/* B8B9C 800B7F9C A4204352 */  sh         $zero, %lo(D_80144352)($at)
.L800B7FA0:
/* B8BA0 800B7FA0 3C018014 */  lui        $at, %hi(D_80144356)
/* B8BA4 800B7FA4 A4204356 */  sh         $zero, %lo(D_80144356)($at)
/* B8BA8 800B7FA8 3C018014 */  lui        $at, %hi(D_801442FC)
/* B8BAC 800B7FAC 24080001 */  addiu      $t0, $zero, 1
/* B8BB0 800B7FB0 A42842FC */  sh         $t0, %lo(D_801442FC)($at)
/* B8BB4 800B7FB4 3C018014 */  lui        $at, %hi(D_8014434E)
/* B8BB8 800B7FB8 24090001 */  addiu      $t1, $zero, 1
/* B8BBC 800B7FBC 1000002A */  b          .L800B8068
/* B8BC0 800B7FC0 A429434E */   sh        $t1, %lo(D_8014434E)($at)
.L800B7FC4:
/* B8BC4 800B7FC4 3C0A8016 */  lui        $t2, %hi(D_8015F464)
/* B8BC8 800B7FC8 8D4AF464 */  lw         $t2, %lo(D_8015F464)($t2)
/* B8BCC 800B7FCC 24010001 */  addiu      $at, $zero, 1
/* B8BD0 800B7FD0 15410004 */  bne        $t2, $at, .L800B7FE4
/* B8BD4 800B7FD4 00000000 */   nop
/* B8BD8 800B7FD8 240B0092 */  addiu      $t3, $zero, 0x92
/* B8BDC 800B7FDC 3C018014 */  lui        $at, %hi(D_8014432C)
/* B8BE0 800B7FE0 AC2B432C */  sw         $t3, %lo(D_8014432C)($at)
.L800B7FE4:
/* B8BE4 800B7FE4 3C0C8016 */  lui        $t4, %hi(D_8015F468)
/* B8BE8 800B7FE8 8D8CF468 */  lw         $t4, %lo(D_8015F468)($t4)
/* B8BEC 800B7FEC 24010004 */  addiu      $at, $zero, 4
/* B8BF0 800B7FF0 15810008 */  bne        $t4, $at, .L800B8014
/* B8BF4 800B7FF4 3C01800E */   lui       $at, %hi(D_800DF4C0)
/* B8BF8 800B7FF8 C428F4C0 */  lwc1       $f8, %lo(D_800DF4C0)($at)
/* B8BFC 800B7FFC 3C018014 */  lui        $at, %hi(D_801442C0)
/* B8C00 800B8000 E42842C0 */  swc1       $f8, %lo(D_801442C0)($at)
/* B8C04 800B8004 3C0141A0 */  lui        $at, 0x41a0
/* B8C08 800B8008 44815000 */  mtc1       $at, $f10
/* B8C0C 800B800C 3C018014 */  lui        $at, %hi(D_801442C4)
/* B8C10 800B8010 E42A42C4 */  swc1       $f10, %lo(D_801442C4)($at)
.L800B8014:
/* B8C14 800B8014 240D0001 */  addiu      $t5, $zero, 1
/* B8C18 800B8018 3C018014 */  lui        $at, %hi(D_80144352)
/* B8C1C 800B801C A42D4352 */  sh         $t5, %lo(D_80144352)($at)
/* B8C20 800B8020 3C018014 */  lui        $at, %hi(D_80144356)
/* B8C24 800B8024 A4204356 */  sh         $zero, %lo(D_80144356)($at)
/* B8C28 800B8028 3C018014 */  lui        $at, %hi(D_801442FC)
/* B8C2C 800B802C A42042FC */  sh         $zero, %lo(D_801442FC)($at)
/* B8C30 800B8030 3C018014 */  lui        $at, %hi(D_8014434E)
/* B8C34 800B8034 240E0001 */  addiu      $t6, $zero, 1
/* B8C38 800B8038 1000000B */  b          .L800B8068
/* B8C3C 800B803C A42E434E */   sh        $t6, %lo(D_8014434E)($at)
.L800B8040:
/* B8C40 800B8040 3C018014 */  lui        $at, %hi(D_80144356)
/* B8C44 800B8044 A4204356 */  sh         $zero, %lo(D_80144356)($at)
/* B8C48 800B8048 3C018014 */  lui        $at, %hi(D_8014434C)
/* B8C4C 800B804C 240F0001 */  addiu      $t7, $zero, 1
/* B8C50 800B8050 A42F434C */  sh         $t7, %lo(D_8014434C)($at)
/* B8C54 800B8054 3C018014 */  lui        $at, %hi(D_8014434A)
/* B8C58 800B8058 A420434A */  sh         $zero, %lo(D_8014434A)($at)
/* B8C5C 800B805C 3C018014 */  lui        $at, %hi(D_801442FC)
/* B8C60 800B8060 24180001 */  addiu      $t8, $zero, 1
/* B8C64 800B8064 A43842FC */  sh         $t8, %lo(D_801442FC)($at)
.L800B8068:
/* B8C68 800B8068 24190090 */  addiu      $t9, $zero, 0x90
/* B8C6C 800B806C 3C018014 */  lui        $at, %hi(D_80144330)
/* B8C70 800B8070 0C02F77E */  jal        func_800BDDF8
/* B8C74 800B8074 AC394330 */   sw        $t9, %lo(D_80144330)($at)
/* B8C78 800B8078 AFA0003C */  sw         $zero, 0x3c($sp)
.L800B807C:
/* B8C7C 800B807C 8FA8003C */  lw         $t0, 0x3c($sp)
/* B8C80 800B8080 3C0A8018 */  lui        $t2, %hi(D_8017ABE8)
/* B8C84 800B8084 254AABE8 */  addiu      $t2, $t2, %lo(D_8017ABE8)
/* B8C88 800B8088 000848C0 */  sll        $t1, $t0, 3
/* B8C8C 800B808C 01284823 */  subu       $t1, $t1, $t0
/* B8C90 800B8090 000948C0 */  sll        $t1, $t1, 3
/* B8C94 800B8094 0C02F766 */  jal        func_800BDD98
/* B8C98 800B8098 012A2021 */   addu      $a0, $t1, $t2
/* B8C9C 800B809C 8FAB003C */  lw         $t3, 0x3c($sp)
/* B8CA0 800B80A0 256C0001 */  addiu      $t4, $t3, 1
/* B8CA4 800B80A4 29810004 */  slti       $at, $t4, 4
/* B8CA8 800B80A8 1420FFF4 */  bnez       $at, .L800B807C
/* B8CAC 800B80AC AFAC003C */   sw        $t4, 0x3c($sp)
/* B8CB0 800B80B0 3C018014 */  lui        $at, %hi(D_80144324)
/* B8CB4 800B80B4 AC204324 */  sw         $zero, %lo(D_80144324)($at)
/* B8CB8 800B80B8 3C018014 */  lui        $at, %hi(D_801442D8)
/* B8CBC 800B80BC 240D0003 */  addiu      $t5, $zero, 3
/* B8CC0 800B80C0 AC2D42D8 */  sw         $t5, %lo(D_801442D8)($at)
/* B8CC4 800B80C4 3C018014 */  lui        $at, %hi(D_801442DC)
/* B8CC8 800B80C8 AC2042DC */  sw         $zero, %lo(D_801442DC)($at)
/* B8CCC 800B80CC 3C018014 */  lui        $at, %hi(D_801442E8)
/* B8CD0 800B80D0 A42042E8 */  sh         $zero, %lo(D_801442E8)($at)
/* B8CD4 800B80D4 3C018014 */  lui        $at, %hi(D_801442F4)
/* B8CD8 800B80D8 A42042F4 */  sh         $zero, %lo(D_801442F4)($at)
/* B8CDC 800B80DC 44808000 */  mtc1       $zero, $f16
/* B8CE0 800B80E0 3C018014 */  lui        $at, %hi(D_801442EA)
/* B8CE4 800B80E4 240EFFFF */  addiu      $t6, $zero, -1
/* B8CE8 800B80E8 A42E42EA */  sh         $t6, %lo(D_801442EA)($at)
/* B8CEC 800B80EC 44809000 */  mtc1       $zero, $f18
/* B8CF0 800B80F0 3C018014 */  lui        $at, %hi(D_801442EC)
/* B8CF4 800B80F4 E43042EC */  swc1       $f16, %lo(D_801442EC)($at)
/* B8CF8 800B80F8 3C018014 */  lui        $at, %hi(D_801442F0)
/* B8CFC 800B80FC E43242F0 */  swc1       $f18, %lo(D_801442F0)($at)
/* B8D00 800B8100 3C018014 */  lui        $at, %hi(D_80144328)
/* B8D04 800B8104 AFA0003C */  sw         $zero, 0x3c($sp)
/* B8D08 800B8108 8FB8003C */  lw         $t8, 0x3c($sp)
/* B8D0C 800B810C A4204328 */  sh         $zero, %lo(D_80144328)($at)
/* B8D10 800B8110 3C018014 */  lui        $at, %hi(D_801442D0)
/* B8D14 800B8114 240FFFFF */  addiu      $t7, $zero, -1
/* B8D18 800B8118 AC2F42D0 */  sw         $t7, %lo(D_801442D0)($at)
/* B8D1C 800B811C 2B010007 */  slti       $at, $t8, 7
/* B8D20 800B8120 10200012 */  beqz       $at, .L800B816C
/* B8D24 800B8124 00000000 */   nop
.L800B8128:
/* B8D28 800B8128 8FB9003C */  lw         $t9, 0x3c($sp)
/* B8D2C 800B812C 3C098018 */  lui        $t1, 0x8018
/* B8D30 800B8130 3C0A8016 */  lui        $t2, 0x8016
/* B8D34 800B8134 00194100 */  sll        $t0, $t9, 4
/* B8D38 800B8138 01194021 */  addu       $t0, $t0, $t9
/* B8D3C 800B813C 00084080 */  sll        $t0, $t0, 2
/* B8D40 800B8140 01284821 */  addu       $t1, $t1, $t0
/* B8D44 800B8144 8529A81C */  lh         $t1, -0x57e4($t1)
/* B8D48 800B8148 8D4AF464 */  lw         $t2, -0xb9c($t2)
/* B8D4C 800B814C 152A0002 */  bne        $t1, $t2, .L800B8158
/* B8D50 800B8150 3C018014 */   lui       $at, %hi(D_801442D0)
/* B8D54 800B8154 AC3942D0 */  sw         $t9, %lo(D_801442D0)($at)
.L800B8158:
/* B8D58 800B8158 8FAB003C */  lw         $t3, 0x3c($sp)
/* B8D5C 800B815C 256C0001 */  addiu      $t4, $t3, 1
/* B8D60 800B8160 29810007 */  slti       $at, $t4, 7
/* B8D64 800B8164 1420FFF0 */  bnez       $at, .L800B8128
/* B8D68 800B8168 AFAC003C */   sw        $t4, 0x3c($sp)
.L800B816C:
/* B8D6C 800B816C 3C0D8018 */  lui        $t5, %hi(D_8017A81C)
/* B8D70 800B8170 3C0E8014 */  lui        $t6, %hi(D_801442D0)
/* B8D74 800B8174 8DCE42D0 */  lw         $t6, %lo(D_801442D0)($t6)
/* B8D78 800B8178 25ADA81C */  addiu      $t5, $t5, %lo(D_8017A81C)
/* B8D7C 800B817C 3C018014 */  lui        $at, %hi(D_801442C8)
/* B8D80 800B8180 AC2D42C8 */  sw         $t5, %lo(D_801442C8)($at)
/* B8D84 800B8184 2401FFFF */  addiu      $at, $zero, -1
/* B8D88 800B8188 11C1015E */  beq        $t6, $at, .L800B8704
/* B8D8C 800B818C 00000000 */   nop
/* B8D90 800B8190 3C048016 */  lui        $a0, %hi(D_8015FF84)
/* B8D94 800B8194 0C02DB5C */  jal        func_800B6D70
/* B8D98 800B8198 8C84FF84 */   lw        $a0, %lo(D_8015FF84)($a0)
/* B8D9C 800B819C 3C0F8014 */  lui        $t7, %hi(D_801442D0)
/* B8DA0 800B81A0 8DEF42D0 */  lw         $t7, %lo(D_801442D0)($t7)
/* B8DA4 800B81A4 3C088016 */  lui        $t0, %hi(D_8015F468)
/* B8DA8 800B81A8 8D08F468 */  lw         $t0, %lo(D_8015F468)($t0)
/* B8DAC 800B81AC 3C0A800E */  lui        $t2, %hi(D_800D9FC0)
/* B8DB0 800B81B0 8D4A9FC0 */  lw         $t2, %lo(D_800D9FC0)($t2)
/* B8DB4 800B81B4 000FC080 */  sll        $t8, $t7, 2
/* B8DB8 800B81B8 030FC021 */  addu       $t8, $t8, $t7
/* B8DBC 800B81BC 3C018014 */  lui        $at, %hi(D_801442D4)
/* B8DC0 800B81C0 03084821 */  addu       $t1, $t8, $t0
/* B8DC4 800B81C4 11490003 */  beq        $t2, $t1, .L800B81D4
/* B8DC8 800B81C8 AC2942D4 */   sw        $t1, %lo(D_801442D4)($at)
/* B8DCC 800B81CC 3C018014 */  lui        $at, %hi(D_801442E0)
/* B8DD0 800B81D0 AC2042E0 */  sw         $zero, %lo(D_801442E0)($at)
.L800B81D4:
/* B8DD4 800B81D4 3C198014 */  lui        $t9, %hi(D_801442D0)
/* B8DD8 800B81D8 8F3942D0 */  lw         $t9, %lo(D_801442D0)($t9)
/* B8DDC 800B81DC 3C0E8016 */  lui        $t6, %hi(D_8015F468)
/* B8DE0 800B81E0 8DCEF468 */  lw         $t6, %lo(D_8015F468)($t6)
/* B8DE4 800B81E4 00195900 */  sll        $t3, $t9, 4
/* B8DE8 800B81E8 3C0C8018 */  lui        $t4, %hi(D_8017A81C)
/* B8DEC 800B81EC 01795821 */  addu       $t3, $t3, $t9
/* B8DF0 800B81F0 000B5880 */  sll        $t3, $t3, 2
/* B8DF4 800B81F4 258CA81C */  addiu      $t4, $t4, %lo(D_8017A81C)
/* B8DF8 800B81F8 000E7880 */  sll        $t7, $t6, 2
/* B8DFC 800B81FC 016C6821 */  addu       $t5, $t3, $t4
/* B8E00 800B8200 01EE7823 */  subu       $t7, $t7, $t6
/* B8E04 800B8204 3C018014 */  lui        $at, %hi(D_801442C8)
/* B8E08 800B8208 000F7880 */  sll        $t7, $t7, 2
/* B8E0C 800B820C 3C0A8014 */  lui        $t2, %hi(D_8014434A)
/* B8E10 800B8210 854A434A */  lh         $t2, %lo(D_8014434A)($t2)
/* B8E14 800B8214 AC2D42C8 */  sw         $t5, %lo(D_801442C8)($at)
/* B8E18 800B8218 01AFC021 */  addu       $t8, $t5, $t7
/* B8E1C 800B821C 8F080010 */  lw         $t0, 0x10($t8)
/* B8E20 800B8220 3C018014 */  lui        $at, %hi(D_801442CC)
/* B8E24 800B8224 11400023 */  beqz       $t2, .L800B82B4
/* B8E28 800B8228 AC2842CC */   sw        $t0, %lo(D_801442CC)($at)
/* B8E2C 800B822C 3C098014 */  lui        $t1, %hi(D_80144352)
/* B8E30 800B8230 85294352 */  lh         $t1, %lo(D_80144352)($t1)
/* B8E34 800B8234 11200011 */  beqz       $t1, .L800B827C
/* B8E38 800B8238 00000000 */   nop
/* B8E3C 800B823C 3C048016 */  lui        $a0, %hi(D_8015FF80)
/* B8E40 800B8240 0C02DCD6 */  jal        func_800B7358
/* B8E44 800B8244 8C84FF80 */   lw        $a0, %lo(D_8015FF80)($a0)
/* B8E48 800B8248 1040000C */  beqz       $v0, .L800B827C
/* B8E4C 800B824C 00000000 */   nop
/* B8E50 800B8250 3C0B8016 */  lui        $t3, %hi(D_8015F468)
/* B8E54 800B8254 8D6BF468 */  lw         $t3, %lo(D_8015F468)($t3)
/* B8E58 800B8258 3C198014 */  lui        $t9, %hi(D_801442C8)
/* B8E5C 800B825C 8F3942C8 */  lw         $t9, %lo(D_801442C8)($t9)
/* B8E60 800B8260 000B6080 */  sll        $t4, $t3, 2
/* B8E64 800B8264 018B6023 */  subu       $t4, $t4, $t3
/* B8E68 800B8268 000C6080 */  sll        $t4, $t4, 2
/* B8E6C 800B826C 032C7021 */  addu       $t6, $t9, $t4
/* B8E70 800B8270 85CD000A */  lh         $t5, 0xa($t6)
/* B8E74 800B8274 1000000B */  b          .L800B82A4
/* B8E78 800B8278 AFAD0034 */   sw        $t5, 0x34($sp)
.L800B827C:
/* B8E7C 800B827C 3C188016 */  lui        $t8, %hi(D_8015F468)
/* B8E80 800B8280 8F18F468 */  lw         $t8, %lo(D_8015F468)($t8)
/* B8E84 800B8284 3C0F8014 */  lui        $t7, %hi(D_801442C8)
/* B8E88 800B8288 8DEF42C8 */  lw         $t7, %lo(D_801442C8)($t7)
/* B8E8C 800B828C 00184080 */  sll        $t0, $t8, 2
/* B8E90 800B8290 01184023 */  subu       $t0, $t0, $t8
/* B8E94 800B8294 00084080 */  sll        $t0, $t0, 2
/* B8E98 800B8298 01E85021 */  addu       $t2, $t7, $t0
/* B8E9C 800B829C 85490008 */  lh         $t1, 8($t2)
/* B8EA0 800B82A0 AFA90034 */  sw         $t1, 0x34($sp)
.L800B82A4:
/* B8EA4 800B82A4 0C02DA99 */  jal        func_800B6A64
/* B8EA8 800B82A8 8FA40034 */   lw        $a0, 0x34($sp)
/* B8EAC 800B82AC 10000003 */  b          .L800B82BC
/* B8EB0 800B82B0 00000000 */   nop
.L800B82B4:
/* B8EB4 800B82B4 0C02DA94 */  jal        func_800B6A50
/* B8EB8 800B82B8 00000000 */   nop
.L800B82BC:
/* B8EBC 800B82BC 3C0B8016 */  lui        $t3, %hi(D_8015FF80)
/* B8EC0 800B82C0 8D6BFF80 */  lw         $t3, %lo(D_8015FF80)($t3)
/* B8EC4 800B82C4 116000EE */  beqz       $t3, .L800B8680
/* B8EC8 800B82C8 00000000 */   nop
/* B8ECC 800B82CC 3C19800E */  lui        $t9, %hi(D_800D9DBC)
/* B8ED0 800B82D0 8F399DBC */  lw         $t9, %lo(D_800D9DBC)($t9)
/* B8ED4 800B82D4 17200008 */  bnez       $t9, .L800B82F8
/* B8ED8 800B82D8 3C01800E */   lui       $at, %hi(D_800DF4C4)
/* B8EDC 800B82DC C424F4C4 */  lwc1       $f4, %lo(D_800DF4C4)($at)
/* B8EE0 800B82E0 3C018016 */  lui        $at, %hi(D_8015ED44)
/* B8EE4 800B82E4 E424ED44 */  swc1       $f4, %lo(D_8015ED44)($at)
/* B8EE8 800B82E8 3C01800E */  lui        $at, %hi(D_800DF4C8)
/* B8EEC 800B82EC C426F4C8 */  lwc1       $f6, %lo(D_800DF4C8)($at)
/* B8EF0 800B82F0 3C018016 */  lui        $at, %hi(D_8015ED40)
/* B8EF4 800B82F4 E426ED40 */  swc1       $f6, %lo(D_8015ED40)($at)
.L800B82F8:
/* B8EF8 800B82F8 3C0C8014 */  lui        $t4, %hi(D_8014434E)
/* B8EFC 800B82FC 858C434E */  lh         $t4, %lo(D_8014434E)($t4)
/* B8F00 800B8300 15800007 */  bnez       $t4, .L800B8320
/* B8F04 800B8304 3C018014 */   lui       $at, %hi(D_80144354)
/* B8F08 800B8308 3C048016 */  lui        $a0, %hi(D_8015FF80)
/* B8F0C 800B830C A4204354 */  sh         $zero, %lo(D_80144354)($at)
/* B8F10 800B8310 0C02DC9B */  jal        func_800B726C
/* B8F14 800B8314 8C84FF80 */   lw        $a0, %lo(D_8015FF80)($a0)
/* B8F18 800B8318 10000006 */  b          .L800B8334
/* B8F1C 800B831C 00000000 */   nop
.L800B8320:
/* B8F20 800B8320 3C048016 */  lui        $a0, %hi(D_8015FF80)
/* B8F24 800B8324 0C02DCE1 */  jal        func_800B7384
/* B8F28 800B8328 8C84FF80 */   lw        $a0, %lo(D_8015FF80)($a0)
/* B8F2C 800B832C 3C018014 */  lui        $at, %hi(D_80144354)
/* B8F30 800B8330 A4224354 */  sh         $v0, %lo(D_80144354)($at)
.L800B8334:
/* B8F34 800B8334 3C0E8014 */  lui        $t6, %hi(D_80144350)
/* B8F38 800B8338 85CE4350 */  lh         $t6, %lo(D_80144350)($t6)
/* B8F3C 800B833C 15C00004 */  bnez       $t6, .L800B8350
/* B8F40 800B8340 00000000 */   nop
/* B8F44 800B8344 3C048016 */  lui        $a0, %hi(D_8015FF80)
/* B8F48 800B8348 0C02DC83 */  jal        func_800B720C
/* B8F4C 800B834C 8C84FF80 */   lw        $a0, %lo(D_8015FF80)($a0)
.L800B8350:
/* B8F50 800B8350 3C0D8014 */  lui        $t5, %hi(D_80144356)
/* B8F54 800B8354 85AD4356 */  lh         $t5, %lo(D_80144356)($t5)
/* B8F58 800B8358 11A00004 */  beqz       $t5, .L800B836C
/* B8F5C 800B835C 00000000 */   nop
/* B8F60 800B8360 3C048016 */  lui        $a0, %hi(D_8015FF80)
/* B8F64 800B8364 0C02DC33 */  jal        func_800B70CC
/* B8F68 800B8368 8C84FF80 */   lw        $a0, %lo(D_8015FF80)($a0)
.L800B836C:
/* B8F6C 800B836C 3C048016 */  lui        $a0, %hi(D_8015FF80)
/* B8F70 800B8370 0C02DBA0 */  jal        func_800B6E80
/* B8F74 800B8374 8C84FF80 */   lw        $a0, %lo(D_8015FF80)($a0)
/* B8F78 800B8378 3C188016 */  lui        $t8, %hi(D_8015FF80)
/* B8F7C 800B837C 8F18FF80 */  lw         $t8, %lo(D_8015FF80)($t8)
/* B8F80 800B8380 240FFFFF */  addiu      $t7, $zero, -1
/* B8F84 800B8384 3C018014 */  lui        $at, %hi(D_801442E4)
/* B8F88 800B8388 A42F42E4 */  sh         $t7, %lo(D_801442E4)($at)
/* B8F8C 800B838C 3C018014 */  lui        $at, %hi(D_801442E6)
/* B8F90 800B8390 2408FFFF */  addiu      $t0, $zero, -1
/* B8F94 800B8394 A42842E6 */  sh         $t0, %lo(D_801442E6)($at)
/* B8F98 800B8398 AFB80030 */  sw         $t8, 0x30($sp)
/* B8F9C 800B839C 8F0A0004 */  lw         $t2, 4($t8)
/* B8FA0 800B83A0 2401FFC0 */  addiu      $at, $zero, -0x40
/* B8FA4 800B83A4 114100B6 */  beq        $t2, $at, .L800B8680
/* B8FA8 800B83A8 00000000 */   nop
.L800B83AC:
/* B8FAC 800B83AC 8FA90030 */  lw         $t1, 0x30($sp)
/* B8FB0 800B83B0 2401000F */  addiu      $at, $zero, 0xf
/* B8FB4 800B83B4 8D300004 */  lw         $s0, 4($t1)
/* B8FB8 800B83B8 120100A6 */  beq        $s0, $at, .L800B8654
/* B8FBC 800B83BC 24010206 */   addiu     $at, $zero, 0x206
/* B8FC0 800B83C0 160100A7 */  bne        $s0, $at, .L800B8660
/* B8FC4 800B83C4 00000000 */   nop
/* B8FC8 800B83C8 8FB90030 */  lw         $t9, 0x30($sp)
/* B8FCC 800B83CC 240B0001 */  addiu      $t3, $zero, 1
/* B8FD0 800B83D0 AF2B0000 */  sw         $t3, ($t9)
/* B8FD4 800B83D4 8FAE0030 */  lw         $t6, 0x30($sp)
/* B8FD8 800B83D8 8FAC0038 */  lw         $t4, 0x38($sp)
/* B8FDC 800B83DC ADCC0020 */  sw         $t4, 0x20($t6)
/* B8FE0 800B83E0 8FAD0030 */  lw         $t5, 0x30($sp)
/* B8FE4 800B83E4 8DAF0008 */  lw         $t7, 8($t5)
/* B8FE8 800B83E8 31E800FF */  andi       $t0, $t7, 0xff
/* B8FEC 800B83EC 2D010008 */  sltiu      $at, $t0, 8
/* B8FF0 800B83F0 10200094 */  beqz       $at, .L800B8644
/* B8FF4 800B83F4 00000000 */   nop
/* B8FF8 800B83F8 00084080 */  sll        $t0, $t0, 2
/* B8FFC 800B83FC 3C01800E */  lui        $at, %hi(D_800DF4CC)
/* B9000 800B8400 00280821 */  addu       $at, $at, $t0
/* B9004 800B8404 8C28F4CC */  lw         $t0, %lo(D_800DF4CC)($at)
/* B9008 800B8408 01000008 */  jr         $t0
/* B900C 800B840C 00000000 */   nop
/* B9010 800B8410 3C188014 */  lui        $t8, %hi(D_801442E4)
/* B9014 800B8414 871842E4 */  lh         $t8, %lo(D_801442E4)($t8)
/* B9018 800B8418 2401FFFF */  addiu      $at, $zero, -1
/* B901C 800B841C 17010089 */  bne        $t8, $at, .L800B8644
/* B9020 800B8420 00000000 */   nop
/* B9024 800B8424 8FAA0038 */  lw         $t2, 0x38($sp)
/* B9028 800B8428 8FA90030 */  lw         $t1, 0x30($sp)
/* B902C 800B842C 3C018014 */  lui        $at, %hi(D_801442E4)
/* B9030 800B8430 A42A42E4 */  sh         $t2, %lo(D_801442E4)($at)
/* B9034 800B8434 8D2B0008 */  lw         $t3, 8($t1)
/* B9038 800B8438 3C010001 */  lui        $at, 1
/* B903C 800B843C 0161C825 */  or         $t9, $t3, $at
/* B9040 800B8440 10000080 */  b          .L800B8644
/* B9044 800B8444 AD390008 */   sw        $t9, 8($t1)
/* B9048 800B8448 8FAC0030 */  lw         $t4, 0x30($sp)
/* B904C 800B844C 3C010002 */  lui        $at, 2
/* B9050 800B8450 3C088018 */  lui        $t0, %hi(D_8017AA58)
/* B9054 800B8454 8D8E0008 */  lw         $t6, 8($t4)
/* B9058 800B8458 2508AA58 */  addiu      $t0, $t0, %lo(D_8017AA58)
/* B905C 800B845C 3C048018 */  lui        $a0, 0x8018
/* B9060 800B8460 01C16825 */  or         $t5, $t6, $at
/* B9064 800B8464 AD8D0008 */  sw         $t5, 8($t4)
/* B9068 800B8468 8FAF0038 */  lw         $t7, 0x38($sp)
/* B906C 800B846C 8FB80030 */  lw         $t8, 0x30($sp)
/* B9070 800B8470 3C018014 */  lui        $at, %hi(D_801442E6)
/* B9074 800B8474 A42F42E6 */  sh         $t7, %lo(D_801442E6)($at)
/* B9078 800B8478 8F0B000C */  lw         $t3, 0xc($t8)
/* B907C 800B847C 2484AB78 */  addiu      $a0, $a0, -0x5488
/* B9080 800B8480 AD0B0004 */  sw         $t3, 4($t0)
/* B9084 800B8484 8F0A0010 */  lw         $t2, 0x10($t8)
/* B9088 800B8488 AD0A0008 */  sw         $t2, 8($t0)
/* B908C 800B848C 8F0B0014 */  lw         $t3, 0x14($t8)
/* B9090 800B8490 0C02F766 */  jal        func_800BDD98
/* B9094 800B8494 AD0B000C */   sw        $t3, 0xc($t0)
/* B9098 800B8498 8FB90030 */  lw         $t9, 0x30($sp)
/* B909C 800B849C 3C01800E */  lui        $at, %hi(D_800DF4F0)
/* B90A0 800B84A0 D430F4F0 */  ldc1       $f16, %lo(D_800DF4F0)($at)
/* B90A4 800B84A4 C728001C */  lwc1       $f8, 0x1c($t9)
/* B90A8 800B84A8 3C048014 */  lui        $a0, %hi(D_80144380)
/* B90AC 800B84AC 24844380 */  addiu      $a0, $a0, %lo(D_80144380)
/* B90B0 800B84B0 460042A1 */  cvt.d.s    $f10, $f8
/* B90B4 800B84B4 8F250018 */  lw         $a1, 0x18($t9)
/* B90B8 800B84B8 46305480 */  add.d      $f18, $f10, $f16
/* B90BC 800B84BC 46209120 */  cvt.s.d    $f4, $f18
/* B90C0 800B84C0 44062000 */  mfc1       $a2, $f4
/* B90C4 800B84C4 0C02DCEC */  jal        func_800B73B0
/* B90C8 800B84C8 00000000 */   nop
/* B90CC 800B84CC 8FA90030 */  lw         $t1, 0x30($sp)
/* B90D0 800B84D0 3C0C8014 */  lui        $t4, %hi(D_80144380)
/* B90D4 800B84D4 258C4380 */  addiu      $t4, $t4, %lo(D_80144380)
/* B90D8 800B84D8 8D2D000C */  lw         $t5, 0xc($t1)
/* B90DC 800B84DC AFAD0000 */  sw         $t5, ($sp)
/* B90E0 800B84E0 8D2E0010 */  lw         $t6, 0x10($t1)
/* B90E4 800B84E4 8FA40000 */  lw         $a0, ($sp)
/* B90E8 800B84E8 AFAE0004 */  sw         $t6, 4($sp)
/* B90EC 800B84EC 8D2D0014 */  lw         $t5, 0x14($t1)
/* B90F0 800B84F0 8FA50004 */  lw         $a1, 4($sp)
/* B90F4 800B84F4 AFAD0008 */  sw         $t5, 8($sp)
/* B90F8 800B84F8 8D880000 */  lw         $t0, ($t4)
/* B90FC 800B84FC 8FA60008 */  lw         $a2, 8($sp)
/* B9100 800B8500 AFA8000C */  sw         $t0, 0xc($sp)
/* B9104 800B8504 8D8F0004 */  lw         $t7, 4($t4)
/* B9108 800B8508 8FA7000C */  lw         $a3, 0xc($sp)
/* B910C 800B850C AFAF0010 */  sw         $t7, 0x10($sp)
/* B9110 800B8510 8D880008 */  lw         $t0, 8($t4)
/* B9114 800B8514 0C01689C */  jal        func_8005A270
/* B9118 800B8518 AFA80014 */   sw        $t0, 0x14($sp)
/* B911C 800B851C 8FAA0030 */  lw         $t2, 0x30($sp)
/* B9120 800B8520 3C018014 */  lui        $at, %hi(D_80144378)
/* B9124 800B8524 E4204378 */  swc1       $f0, %lo(D_80144378)($at)
/* B9128 800B8528 8D59000C */  lw         $t9, 0xc($t2)
/* B912C 800B852C 3C188014 */  lui        $t8, %hi(D_80144300)
/* B9130 800B8530 27184300 */  addiu      $t8, $t8, %lo(D_80144300)
/* B9134 800B8534 AF190000 */  sw         $t9, ($t8)
/* B9138 800B8538 8D4B0010 */  lw         $t3, 0x10($t2)
/* B913C 800B853C 3C018014 */  lui        $at, 0x8014
/* B9140 800B8540 AF0B0004 */  sw         $t3, 4($t8)
/* B9144 800B8544 8D590014 */  lw         $t9, 0x14($t2)
/* B9148 800B8548 AF190008 */  sw         $t9, 8($t8)
/* B914C 800B854C 8FA90030 */  lw         $t1, 0x30($sp)
/* B9150 800B8550 C5260018 */  lwc1       $f6, 0x18($t1)
/* B9154 800B8554 1000003B */  b          .L800B8644
/* B9158 800B8558 E426431C */   swc1      $f6, 0x431c($at)
/* B915C 800B855C 8FAD0030 */  lw         $t5, 0x30($sp)
/* B9160 800B8560 3C0E8014 */  lui        $t6, %hi(D_80144360)
/* B9164 800B8564 25CE4360 */  addiu      $t6, $t6, %lo(D_80144360)
/* B9168 800B8568 8DAF000C */  lw         $t7, 0xc($t5)
/* B916C 800B856C 3C018014 */  lui        $at, 0x8014
/* B9170 800B8570 ADCF0000 */  sw         $t7, ($t6)
/* B9174 800B8574 8DAC0010 */  lw         $t4, 0x10($t5)
/* B9178 800B8578 ADCC0004 */  sw         $t4, 4($t6)
/* B917C 800B857C 8DAF0014 */  lw         $t7, 0x14($t5)
/* B9180 800B8580 ADCF0008 */  sw         $t7, 8($t6)
/* B9184 800B8584 8FA80030 */  lw         $t0, 0x30($sp)
/* B9188 800B8588 8FB80038 */  lw         $t8, 0x38($sp)
/* B918C 800B858C C5080018 */  lwc1       $f8, 0x18($t0)
/* B9190 800B8590 E428436C */  swc1       $f8, 0x436c($at)
/* B9194 800B8594 3C018014 */  lui        $at, %hi(D_80144370)
/* B9198 800B8598 1000002A */  b          .L800B8644
/* B919C 800B859C AC384370 */   sw        $t8, %lo(D_80144370)($at)
/* B91A0 800B85A0 8FAA0038 */  lw         $t2, 0x38($sp)
/* B91A4 800B85A4 8FB90030 */  lw         $t9, 0x30($sp)
/* B91A8 800B85A8 3C018014 */  lui        $at, %hi(D_80144338)
/* B91AC 800B85AC AC2A4338 */  sw         $t2, %lo(D_80144338)($at)
/* B91B0 800B85B0 8F2E000C */  lw         $t6, 0xc($t9)
/* B91B4 800B85B4 3C0B8018 */  lui        $t3, %hi(D_8017AA7C)
/* B91B8 800B85B8 256BAA7C */  addiu      $t3, $t3, %lo(D_8017AA7C)
/* B91BC 800B85BC AD6E0004 */  sw         $t6, 4($t3)
/* B91C0 800B85C0 8F290010 */  lw         $t1, 0x10($t9)
/* B91C4 800B85C4 3C048018 */  lui        $a0, %hi(D_8017ABB0)
/* B91C8 800B85C8 2484ABB0 */  addiu      $a0, $a0, %lo(D_8017ABB0)
/* B91CC 800B85CC AD690008 */  sw         $t1, 8($t3)
/* B91D0 800B85D0 8F2E0014 */  lw         $t6, 0x14($t9)
/* B91D4 800B85D4 0C02F766 */  jal        func_800BDD98
/* B91D8 800B85D8 AD6E000C */   sw        $t6, 0xc($t3)
/* B91DC 800B85DC 10000019 */  b          .L800B8644
/* B91E0 800B85E0 00000000 */   nop
/* B91E4 800B85E4 8FAD0038 */  lw         $t5, 0x38($sp)
/* B91E8 800B85E8 3C018014 */  lui        $at, %hi(D_801442E4)
/* B91EC 800B85EC 240C0001 */  addiu      $t4, $zero, 1
/* B91F0 800B85F0 A42D42E4 */  sh         $t5, %lo(D_801442E4)($at)
/* B91F4 800B85F4 3C018014 */  lui        $at, %hi(D_801442E6)
/* B91F8 800B85F8 A42D42E6 */  sh         $t5, %lo(D_801442E6)($at)
/* B91FC 800B85FC 3C018014 */  lui        $at, %hi(D_801442FE)
/* B9200 800B8600 8FB80030 */  lw         $t8, 0x30($sp)
/* B9204 800B8604 A42C42FE */  sh         $t4, %lo(D_801442FE)($at)
/* B9208 800B8608 3C018014 */  lui        $at, %hi(D_801442FC)
/* B920C 800B860C 240F0001 */  addiu      $t7, $zero, 1
/* B9210 800B8610 A42F42FC */  sh         $t7, %lo(D_801442FC)($at)
/* B9214 800B8614 8F0B000C */  lw         $t3, 0xc($t8)
/* B9218 800B8618 3C088014 */  lui        $t0, %hi(D_80144300)
/* B921C 800B861C 25084300 */  addiu      $t0, $t0, %lo(D_80144300)
/* B9220 800B8620 AD0B0000 */  sw         $t3, ($t0)
/* B9224 800B8624 8F0A0010 */  lw         $t2, 0x10($t8)
/* B9228 800B8628 3C018014 */  lui        $at, 0x8014
/* B922C 800B862C AD0A0004 */  sw         $t2, 4($t0)
/* B9230 800B8630 8F0B0014 */  lw         $t3, 0x14($t8)
/* B9234 800B8634 AD0B0008 */  sw         $t3, 8($t0)
/* B9238 800B8638 8FB90030 */  lw         $t9, 0x30($sp)
/* B923C 800B863C C72A0018 */  lwc1       $f10, 0x18($t9)
/* B9240 800B8640 E42A431C */  swc1       $f10, 0x431c($at)
.L800B8644:
/* B9244 800B8644 8FA90038 */  lw         $t1, 0x38($sp)
/* B9248 800B8648 252E0001 */  addiu      $t6, $t1, 1
/* B924C 800B864C 10000004 */  b          .L800B8660
/* B9250 800B8650 AFAE0038 */   sw        $t6, 0x38($sp)
.L800B8654:
/* B9254 800B8654 240D0001 */  addiu      $t5, $zero, 1
/* B9258 800B8658 3C018014 */  lui        $at, %hi(D_80144354)
/* B925C 800B865C A42D4354 */  sh         $t5, %lo(D_80144354)($at)
.L800B8660:
/* B9260 800B8660 8FAC0030 */  lw         $t4, 0x30($sp)
/* B9264 800B8664 2401FFC0 */  addiu      $at, $zero, -0x40
/* B9268 800B8668 258F0028 */  addiu      $t7, $t4, 0x28
/* B926C 800B866C AFAF0030 */  sw         $t7, 0x30($sp)
/* B9270 800B8670 8FA80030 */  lw         $t0, 0x30($sp)
/* B9274 800B8674 8D180004 */  lw         $t8, 4($t0)
/* B9278 800B8678 1701FF4C */  bne        $t8, $at, .L800B83AC
/* B927C 800B867C 00000000 */   nop
.L800B8680:
/* B9280 800B8680 3C0B8014 */  lui        $t3, %hi(D_80144300)
/* B9284 800B8684 256B4300 */  addiu      $t3, $t3, %lo(D_80144300)
/* B9288 800B8688 8D690000 */  lw         $t1, ($t3)
/* B928C 800B868C 3C0A8014 */  lui        $t2, %hi(D_80144310)
/* B9290 800B8690 254A4310 */  addiu      $t2, $t2, %lo(D_80144310)
/* B9294 800B8694 AD490000 */  sw         $t1, ($t2)
/* B9298 800B8698 8D690008 */  lw         $t1, 8($t3)
/* B929C 800B869C 8D790004 */  lw         $t9, 4($t3)
/* B92A0 800B86A0 3C0E8014 */  lui        $t6, %hi(D_80144356)
/* B92A4 800B86A4 AD490008 */  sw         $t1, 8($t2)
/* B92A8 800B86A8 AD590004 */  sw         $t9, 4($t2)
/* B92AC 800B86AC 85CE4356 */  lh         $t6, %lo(D_80144356)($t6)
/* B92B0 800B86B0 11C0000D */  beqz       $t6, .L800B86E8
/* B92B4 800B86B4 00000000 */   nop
/* B92B8 800B86B8 3C0D8016 */  lui        $t5, %hi(D_8015F468)
/* B92BC 800B86BC 8DADF468 */  lw         $t5, %lo(D_8015F468)($t5)
/* B92C0 800B86C0 29A10004 */  slti       $at, $t5, 4
/* B92C4 800B86C4 10200008 */  beqz       $at, .L800B86E8
/* B92C8 800B86C8 3C018014 */   lui       $at, %hi(D_80144314)
/* B92CC 800B86CC C4304314 */  lwc1       $f16, %lo(D_80144314)($at)
/* B92D0 800B86D0 3C0144FA */  lui        $at, 0x44fa
/* B92D4 800B86D4 44819000 */  mtc1       $at, $f18
/* B92D8 800B86D8 3C018014 */  lui        $at, %hi(D_80144314)
/* B92DC 800B86DC 46128101 */  sub.s      $f4, $f16, $f18
/* B92E0 800B86E0 10000008 */  b          .L800B8704
/* B92E4 800B86E4 E4244314 */   swc1      $f4, %lo(D_80144314)($at)
.L800B86E8:
/* B92E8 800B86E8 3C018014 */  lui        $at, %hi(D_80144314)
/* B92EC 800B86EC C4264314 */  lwc1       $f6, %lo(D_80144314)($at)
/* B92F0 800B86F0 3C014348 */  lui        $at, 0x4348
/* B92F4 800B86F4 44814000 */  mtc1       $at, $f8
/* B92F8 800B86F8 3C018014 */  lui        $at, %hi(D_80144314)
/* B92FC 800B86FC 46083280 */  add.s      $f10, $f6, $f8
/* B9300 800B8700 E42A4314 */  swc1       $f10, %lo(D_80144314)($at)
.L800B8704:
/* B9304 800B8704 240C0001 */  addiu      $t4, $zero, 1
/* B9308 800B8708 3C018014 */  lui        $at, %hi(D_80144334)
/* B930C 800B870C 0C02DF55 */  jal        func_800B7D54
/* B9310 800B8710 A42C4334 */   sh        $t4, %lo(D_80144334)($at)
.L800B8714:
/* B9314 800B8714 8FBF0024 */  lw         $ra, 0x24($sp)
/* B9318 800B8718 8FB00020 */  lw         $s0, 0x20($sp)
/* B931C 800B871C 27BD0040 */  addiu      $sp, $sp, 0x40
/* B9320 800B8720 03E00008 */  jr         $ra
/* B9324 800B8724 00000000 */   nop

glabel func_800B8728
/* B9328 800B8728 C4840004 */  lwc1       $f4, 4($a0)
/* B932C 800B872C 44803000 */  mtc1       $zero, $f6
/* B9330 800B8730 00000000 */  nop
/* B9334 800B8734 4604303C */  c.lt.s     $f6, $f4
/* B9338 800B8738 00000000 */  nop
/* B933C 800B873C 4500000F */  bc1f       .L800B877C
/* B9340 800B8740 00000000 */   nop
/* B9344 800B8744 C488000C */  lwc1       $f8, 0xc($a0)
/* B9348 800B8748 44805000 */  mtc1       $zero, $f10
/* B934C 800B874C 00000000 */  nop
/* B9350 800B8750 4608503E */  c.le.s     $f10, $f8
/* B9354 800B8754 00000000 */  nop
/* B9358 800B8758 45000016 */  bc1f       .L800B87B4
/* B935C 800B875C 00000000 */   nop
/* B9360 800B8760 C4900004 */  lwc1       $f16, 4($a0)
/* B9364 800B8764 3C018014 */  lui        $at, %hi(D_801442C0)
/* B9368 800B8768 46008487 */  neg.s      $f18, $f16
/* B936C 800B876C E4920004 */  swc1       $f18, 4($a0)
/* B9370 800B8770 C42442C0 */  lwc1       $f4, %lo(D_801442C0)($at)
/* B9374 800B8774 1000000F */  b          .L800B87B4
/* B9378 800B8778 E4840008 */   swc1      $f4, 8($a0)
.L800B877C:
/* B937C 800B877C C486000C */  lwc1       $f6, 0xc($a0)
/* B9380 800B8780 44804000 */  mtc1       $zero, $f8
/* B9384 800B8784 00000000 */  nop
/* B9388 800B8788 4608303E */  c.le.s     $f6, $f8
/* B938C 800B878C 00000000 */  nop
/* B9390 800B8790 45000008 */  bc1f       .L800B87B4
/* B9394 800B8794 00000000 */   nop
/* B9398 800B8798 C48A0004 */  lwc1       $f10, 4($a0)
/* B939C 800B879C 3C018014 */  lui        $at, %hi(D_801442C0)
/* B93A0 800B87A0 46005407 */  neg.s      $f16, $f10
/* B93A4 800B87A4 E4900004 */  swc1       $f16, 4($a0)
/* B93A8 800B87A8 C43242C0 */  lwc1       $f18, %lo(D_801442C0)($at)
/* B93AC 800B87AC 46009107 */  neg.s      $f4, $f18
/* B93B0 800B87B0 E4840008 */  swc1       $f4, 8($a0)
.L800B87B4:
/* B93B4 800B87B4 C4860008 */  lwc1       $f6, 8($a0)
/* B93B8 800B87B8 C4880004 */  lwc1       $f8, 4($a0)
/* B93BC 800B87BC C490000C */  lwc1       $f16, 0xc($a0)
/* B93C0 800B87C0 46083280 */  add.s      $f10, $f6, $f8
/* B93C4 800B87C4 E48A0008 */  swc1       $f10, 8($a0)
/* B93C8 800B87C8 C4920008 */  lwc1       $f18, 8($a0)
/* B93CC 800B87CC 46128100 */  add.s      $f4, $f16, $f18
/* B93D0 800B87D0 E484000C */  swc1       $f4, 0xc($a0)
/* B93D4 800B87D4 03E00008 */  jr         $ra
/* B93D8 800B87D8 00000000 */   nop

glabel func_800B87DC
/* B93DC 800B87DC 27BDFEC0 */  addiu      $sp, $sp, -0x140
/* B93E0 800B87E0 AFBF0024 */  sw         $ra, 0x24($sp)
/* B93E4 800B87E4 AFA40140 */  sw         $a0, 0x140($sp)
/* B93E8 800B87E8 AFA50144 */  sw         $a1, 0x144($sp)
/* B93EC 800B87EC AFA60148 */  sw         $a2, 0x148($sp)
/* B93F0 800B87F0 8FAE0140 */  lw         $t6, 0x140($sp)
/* B93F4 800B87F4 27A400F8 */  addiu      $a0, $sp, 0xf8
/* B93F8 800B87F8 8FA50144 */  lw         $a1, 0x144($sp)
/* B93FC 800B87FC 91D80008 */  lbu        $t8, 8($t6)
/* B9400 800B8800 8DCF0010 */  lw         $t7, 0x10($t6)
/* B9404 800B8804 8FA60148 */  lw         $a2, 0x148($sp)
/* B9408 800B8808 0018C880 */  sll        $t9, $t8, 2
/* B940C 800B880C 0338C821 */  addu       $t9, $t9, $t8
/* B9410 800B8810 0019C8C0 */  sll        $t9, $t9, 3
/* B9414 800B8814 01F94021 */  addu       $t0, $t7, $t9
/* B9418 800B8818 AFA8013C */  sw         $t0, 0x13c($sp)
/* B941C 800B881C 0C034602 */  jal        func_800D1808
/* B9420 800B8820 24070000 */   addiu     $a3, $zero, 0
/* B9424 800B8824 8FA9013C */  lw         $t1, 0x13c($sp)
/* B9428 800B8828 3C01800E */  lui        $at, %hi(D_800DF4F8)
/* B942C 800B882C D428F4F8 */  ldc1       $f8, %lo(D_800DF4F8)($at)
/* B9430 800B8830 C5240018 */  lwc1       $f4, 0x18($t1)
/* B9434 800B8834 44809000 */  mtc1       $zero, $f18
/* B9438 800B8838 27A40038 */  addiu      $a0, $sp, 0x38
/* B943C 800B883C 460021A1 */  cvt.d.s    $f6, $f4
/* B9440 800B8840 24060000 */  addiu      $a2, $zero, 0
/* B9444 800B8844 46283282 */  mul.d      $f10, $f6, $f8
/* B9448 800B8848 3C073F80 */  lui        $a3, 0x3f80
/* B944C 800B884C E7B20010 */  swc1       $f18, 0x10($sp)
/* B9450 800B8850 46205420 */  cvt.s.d    $f16, $f10
/* B9454 800B8854 44058000 */  mfc1       $a1, $f16
/* B9458 800B8858 0C033A45 */  jal        func_800CE914
/* B945C 800B885C 00000000 */   nop
/* B9460 800B8860 8FAA013C */  lw         $t2, 0x13c($sp)
/* B9464 800B8864 3C01800E */  lui        $at, %hi(D_800DF500)
/* B9468 800B8868 D428F500 */  ldc1       $f8, %lo(D_800DF500)($at)
/* B946C 800B886C C544001C */  lwc1       $f4, 0x1c($t2)
/* B9470 800B8870 3C01800E */  lui        $at, %hi(D_800DF508)
/* B9474 800B8874 D430F508 */  ldc1       $f16, %lo(D_800DF508)($at)
/* B9478 800B8878 460021A1 */  cvt.d.s    $f6, $f4
/* B947C 800B887C 27A40078 */  addiu      $a0, $sp, 0x78
/* B9480 800B8880 46283280 */  add.d      $f10, $f6, $f8
/* B9484 800B8884 44803000 */  mtc1       $zero, $f6
/* B9488 800B8888 3C063F80 */  lui        $a2, 0x3f80
/* B948C 800B888C 24070000 */  addiu      $a3, $zero, 0
/* B9490 800B8890 46305482 */  mul.d      $f18, $f10, $f16
/* B9494 800B8894 E7A60010 */  swc1       $f6, 0x10($sp)
/* B9498 800B8898 46209120 */  cvt.s.d    $f4, $f18
/* B949C 800B889C 44052000 */  mfc1       $a1, $f4
/* B94A0 800B88A0 0C033A45 */  jal        func_800CE914
/* B94A4 800B88A4 00000000 */   nop
/* B94A8 800B88A8 27A400F8 */  addiu      $a0, $sp, 0xf8
/* B94AC 800B88AC 27A50078 */  addiu      $a1, $sp, 0x78
/* B94B0 800B88B0 0C033084 */  jal        func_800CC210
/* B94B4 800B88B4 27A600B8 */   addiu     $a2, $sp, 0xb8
/* B94B8 800B88B8 27A400B8 */  addiu      $a0, $sp, 0xb8
/* B94BC 800B88BC 27A50038 */  addiu      $a1, $sp, 0x38
/* B94C0 800B88C0 0C033084 */  jal        func_800CC210
/* B94C4 800B88C4 27A600F8 */   addiu     $a2, $sp, 0xf8
/* B94C8 800B88C8 27AB002C */  addiu      $t3, $sp, 0x2c
/* B94CC 800B88CC 256C0004 */  addiu      $t4, $t3, 4
/* B94D0 800B88D0 256D0008 */  addiu      $t5, $t3, 8
/* B94D4 800B88D4 AFAD0018 */  sw         $t5, 0x18($sp)
/* B94D8 800B88D8 AFAC0014 */  sw         $t4, 0x14($sp)
/* B94DC 800B88DC AFAB0010 */  sw         $t3, 0x10($sp)
/* B94E0 800B88E0 27A400F8 */  addiu      $a0, $sp, 0xf8
/* B94E4 800B88E4 24050000 */  addiu      $a1, $zero, 0
/* B94E8 800B88E8 24060000 */  addiu      $a2, $zero, 0
/* B94EC 800B88EC 0C03306C */  jal        func_800CC1B0
/* B94F0 800B88F0 24070000 */   addiu     $a3, $zero, 0
/* B94F4 800B88F4 8FAE013C */  lw         $t6, 0x13c($sp)
/* B94F8 800B88F8 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* B94FC 800B88FC 8FB80140 */  lw         $t8, 0x140($sp)
/* B9500 800B8900 C5C8000C */  lwc1       $f8, 0xc($t6)
/* B9504 800B8904 460A4400 */  add.s      $f16, $f8, $f10
/* B9508 800B8908 E71000E0 */  swc1       $f16, 0xe0($t8)
/* B950C 800B890C 8FAF013C */  lw         $t7, 0x13c($sp)
/* B9510 800B8910 C7A40030 */  lwc1       $f4, 0x30($sp)
/* B9514 800B8914 8FB90140 */  lw         $t9, 0x140($sp)
/* B9518 800B8918 C5F20010 */  lwc1       $f18, 0x10($t7)
/* B951C 800B891C 46049180 */  add.s      $f6, $f18, $f4
/* B9520 800B8920 E72600E4 */  swc1       $f6, 0xe4($t9)
/* B9524 800B8924 8FA8013C */  lw         $t0, 0x13c($sp)
/* B9528 800B8928 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* B952C 800B892C 8FA90140 */  lw         $t1, 0x140($sp)
/* B9530 800B8930 C5080014 */  lwc1       $f8, 0x14($t0)
/* B9534 800B8934 460A4400 */  add.s      $f16, $f8, $f10
/* B9538 800B8938 E53000E8 */  swc1       $f16, 0xe8($t1)
/* B953C 800B893C 8FBF0024 */  lw         $ra, 0x24($sp)
/* B9540 800B8940 27BD0140 */  addiu      $sp, $sp, 0x140
/* B9544 800B8944 03E00008 */  jr         $ra
/* B9548 800B8948 00000000 */   nop

glabel func_800B894C
/* B954C 800B894C 27BDFFF8 */  addiu      $sp, $sp, -8
/* B9550 800B8950 3C0F8014 */  lui        $t7, %hi(D_801442E8)
/* B9554 800B8954 85EF42E8 */  lh         $t7, %lo(D_801442E8)($t7)
/* B9558 800B8958 8C8E0078 */  lw         $t6, 0x78($a0)
/* B955C 800B895C 01CF2823 */  subu       $a1, $t6, $t7
/* B9560 800B8960 10A00007 */  beqz       $a1, .L800B8980
/* B9564 800B8964 24010001 */   addiu     $at, $zero, 1
/* B9568 800B8968 10A1001C */  beq        $a1, $at, .L800B89DC
/* B956C 800B896C 24010002 */   addiu     $at, $zero, 2
/* B9570 800B8970 10A1001E */  beq        $a1, $at, .L800B89EC
/* B9574 800B8974 00000000 */   nop
/* B9578 800B8978 10000020 */  b          .L800B89FC
/* B957C 800B897C 00000000 */   nop
.L800B8980:
/* B9580 800B8980 C48400B4 */  lwc1       $f4, 0xb4($a0)
/* B9584 800B8984 3C01800E */  lui        $at, %hi(D_800DF510)
/* B9588 800B8988 D428F510 */  ldc1       $f8, %lo(D_800DF510)($at)
/* B958C 800B898C 460021A1 */  cvt.d.s    $f6, $f4
/* B9590 800B8990 4628303C */  c.lt.d     $f6, $f8
/* B9594 800B8994 00000000 */  nop
/* B9598 800B8998 4500000C */  bc1f       .L800B89CC
/* B959C 800B899C 00000000 */   nop
/* B95A0 800B89A0 C49000B4 */  lwc1       $f16, 0xb4($a0)
/* B95A4 800B89A4 3C01800E */  lui        $at, %hi(D_800DF518)
/* B95A8 800B89A8 D42AF518 */  ldc1       $f10, %lo(D_800DF518)($at)
/* B95AC 800B89AC 460084A1 */  cvt.d.s    $f18, $f16
/* B95B0 800B89B0 3C01800E */  lui        $at, %hi(D_800DF520)
/* B95B4 800B89B4 46325101 */  sub.d      $f4, $f10, $f18
/* B95B8 800B89B8 D426F520 */  ldc1       $f6, %lo(D_800DF520)($at)
/* B95BC 800B89BC 46262203 */  div.d      $f8, $f4, $f6
/* B95C0 800B89C0 46204420 */  cvt.s.d    $f16, $f8
/* B95C4 800B89C4 10000010 */  b          .L800B8A08
/* B95C8 800B89C8 E4900118 */   swc1      $f16, 0x118($a0)
.L800B89CC:
/* B95CC 800B89CC 3C01800E */  lui        $at, %hi(D_800DF528)
/* B95D0 800B89D0 C42AF528 */  lwc1       $f10, %lo(D_800DF528)($at)
/* B95D4 800B89D4 1000000C */  b          .L800B8A08
/* B95D8 800B89D8 E48A0118 */   swc1      $f10, 0x118($a0)
.L800B89DC:
/* B95DC 800B89DC 3C01800E */  lui        $at, %hi(D_800DF52C)
/* B95E0 800B89E0 C432F52C */  lwc1       $f18, %lo(D_800DF52C)($at)
/* B95E4 800B89E4 10000008 */  b          .L800B8A08
/* B95E8 800B89E8 E4920118 */   swc1      $f18, 0x118($a0)
.L800B89EC:
/* B95EC 800B89EC 3C01800E */  lui        $at, %hi(D_800DF530)
/* B95F0 800B89F0 C424F530 */  lwc1       $f4, %lo(D_800DF530)($at)
/* B95F4 800B89F4 10000004 */  b          .L800B8A08
/* B95F8 800B89F8 E4840118 */   swc1      $f4, 0x118($a0)
.L800B89FC:
/* B95FC 800B89FC 44803000 */  mtc1       $zero, $f6
/* B9600 800B8A00 00000000 */  nop
/* B9604 800B8A04 E4860118 */  swc1       $f6, 0x118($a0)
.L800B8A08:
/* B9608 800B8A08 03E00008 */  jr         $ra
/* B960C 800B8A0C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B8A10
/* B9610 800B8A10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9614 800B8A14 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9618 800B8A18 AFA40018 */  sw         $a0, 0x18($sp)
/* B961C 800B8A1C 0C02E253 */  jal        func_800B894C
/* B9620 800B8A20 8FA40018 */   lw        $a0, 0x18($sp)
/* B9624 800B8A24 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9628 800B8A28 27BD0018 */  addiu      $sp, $sp, 0x18
/* B962C 800B8A2C 03E00008 */  jr         $ra
/* B9630 800B8A30 00000000 */   nop

glabel func_800B8A34
/* B9634 800B8A34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9638 800B8A38 AFBF0014 */  sw         $ra, 0x14($sp)
/* B963C 800B8A3C AFA40018 */  sw         $a0, 0x18($sp)
/* B9640 800B8A40 0C02E253 */  jal        func_800B894C
/* B9644 800B8A44 8FA40018 */   lw        $a0, 0x18($sp)
/* B9648 800B8A48 3C0E8014 */  lui        $t6, %hi(D_80144352)
/* B964C 800B8A4C 85CE4352 */  lh         $t6, %lo(D_80144352)($t6)
/* B9650 800B8A50 11C00022 */  beqz       $t6, .L800B8ADC
/* B9654 800B8A54 00000000 */   nop
/* B9658 800B8A58 8FAF0018 */  lw         $t7, 0x18($sp)
/* B965C 800B8A5C 24010001 */  addiu      $at, $zero, 1
/* B9660 800B8A60 8DF8007C */  lw         $t8, 0x7c($t7)
/* B9664 800B8A64 1301000C */  beq        $t8, $at, .L800B8A98
/* B9668 800B8A68 00000000 */   nop
/* B966C 800B8A6C C5E400B4 */  lwc1       $f4, 0xb4($t7)
/* B9670 800B8A70 3C01800E */  lui        $at, %hi(D_800DF538)
/* B9674 800B8A74 D428F538 */  ldc1       $f8, %lo(D_800DF538)($at)
/* B9678 800B8A78 460021A1 */  cvt.d.s    $f6, $f4
/* B967C 800B8A7C 4628303C */  c.lt.d     $f6, $f8
/* B9680 800B8A80 00000000 */  nop
/* B9684 800B8A84 45000015 */  bc1f       .L800B8ADC
/* B9688 800B8A88 00000000 */   nop
/* B968C 800B8A8C 24190001 */  addiu      $t9, $zero, 1
/* B9690 800B8A90 10000012 */  b          .L800B8ADC
/* B9694 800B8A94 ADF9007C */   sw        $t9, 0x7c($t7)
.L800B8A98:
/* B9698 800B8A98 8FA80018 */  lw         $t0, 0x18($sp)
/* B969C 800B8A9C 3C013F80 */  lui        $at, 0x3f80
/* B96A0 800B8AA0 44818000 */  mtc1       $at, $f16
/* B96A4 800B8AA4 C50A00D8 */  lwc1       $f10, 0xd8($t0)
/* B96A8 800B8AA8 3C01C3C8 */  lui        $at, 0xc3c8
/* B96AC 800B8AAC 44813000 */  mtc1       $at, $f6
/* B96B0 800B8AB0 46105481 */  sub.s      $f18, $f10, $f16
/* B96B4 800B8AB4 E51200D8 */  swc1       $f18, 0xd8($t0)
/* B96B8 800B8AB8 8FA90018 */  lw         $t1, 0x18($sp)
/* B96BC 800B8ABC C52400D8 */  lwc1       $f4, 0xd8($t1)
/* B96C0 800B8AC0 4606203C */  c.lt.s     $f4, $f6
/* B96C4 800B8AC4 00000000 */  nop
/* B96C8 800B8AC8 45000004 */  bc1f       .L800B8ADC
/* B96CC 800B8ACC 3C01C3C8 */   lui       $at, 0xc3c8
/* B96D0 800B8AD0 44814000 */  mtc1       $at, $f8
/* B96D4 800B8AD4 00000000 */  nop
/* B96D8 800B8AD8 E52800D8 */  swc1       $f8, 0xd8($t1)
.L800B8ADC:
/* B96DC 800B8ADC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B96E0 800B8AE0 27BD0018 */  addiu      $sp, $sp, 0x18
/* B96E4 800B8AE4 03E00008 */  jr         $ra
/* B96E8 800B8AE8 00000000 */   nop

glabel func_800B8AEC
/* B96EC 800B8AEC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B96F0 800B8AF0 AFBF0024 */  sw         $ra, 0x24($sp)
/* B96F4 800B8AF4 AFA40038 */  sw         $a0, 0x38($sp)
/* B96F8 800B8AF8 F7B60018 */  sdc1       $f22, 0x18($sp)
/* B96FC 800B8AFC F7B40010 */  sdc1       $f20, 0x10($sp)
/* B9700 800B8B00 0C02E253 */  jal        func_800B894C
/* B9704 800B8B04 8FA40038 */   lw        $a0, 0x38($sp)
/* B9708 800B8B08 3C0E8014 */  lui        $t6, %hi(D_80144352)
/* B970C 800B8B0C 85CE4352 */  lh         $t6, %lo(D_80144352)($t6)
/* B9710 800B8B10 11C0003E */  beqz       $t6, .L800B8C0C
/* B9714 800B8B14 00000000 */   nop
/* B9718 800B8B18 8FAF0038 */  lw         $t7, 0x38($sp)
/* B971C 800B8B1C C5E40030 */  lwc1       $f4, 0x30($t7)
/* B9720 800B8B20 E7A40034 */  swc1       $f4, 0x34($sp)
/* B9724 800B8B24 8DF80078 */  lw         $t8, 0x78($t7)
/* B9728 800B8B28 33190001 */  andi       $t9, $t8, 1
/* B972C 800B8B2C 17200012 */  bnez       $t9, .L800B8B78
/* B9730 800B8B30 3C01800E */   lui       $at, %hi(D_800DF540)
/* B9734 800B8B34 D428F540 */  ldc1       $f8, %lo(D_800DF540)($at)
/* B9738 800B8B38 460021A1 */  cvt.d.s    $f6, $f4
/* B973C 800B8B3C 3C01800E */  lui        $at, %hi(D_800DF548)
/* B9740 800B8B40 46283280 */  add.d      $f10, $f6, $f8
/* B9744 800B8B44 D424F548 */  ldc1       $f4, %lo(D_800DF548)($at)
/* B9748 800B8B48 46205420 */  cvt.s.d    $f16, $f10
/* B974C 800B8B4C 460084A1 */  cvt.d.s    $f18, $f16
/* B9750 800B8B50 E7B00034 */  swc1       $f16, 0x34($sp)
/* B9754 800B8B54 4632203E */  c.le.d     $f4, $f18
/* B9758 800B8B58 00000000 */  nop
/* B975C 800B8B5C 45000018 */  bc1f       .L800B8BC0
/* B9760 800B8B60 3C01800E */   lui       $at, %hi(D_800DF550)
/* B9764 800B8B64 D426F550 */  ldc1       $f6, %lo(D_800DF550)($at)
/* B9768 800B8B68 46269201 */  sub.d      $f8, $f18, $f6
/* B976C 800B8B6C 462042A0 */  cvt.s.d    $f10, $f8
/* B9770 800B8B70 10000013 */  b          .L800B8BC0
/* B9774 800B8B74 E7AA0034 */   swc1      $f10, 0x34($sp)
.L800B8B78:
/* B9778 800B8B78 C7B00034 */  lwc1       $f16, 0x34($sp)
/* B977C 800B8B7C 3C01800E */  lui        $at, %hi(D_800DF558)
/* B9780 800B8B80 D432F558 */  ldc1       $f18, %lo(D_800DF558)($at)
/* B9784 800B8B84 46008121 */  cvt.d.s    $f4, $f16
/* B9788 800B8B88 44808000 */  mtc1       $zero, $f16
/* B978C 800B8B8C 46322181 */  sub.d      $f6, $f4, $f18
/* B9790 800B8B90 44808800 */  mtc1       $zero, $f17
/* B9794 800B8B94 46203220 */  cvt.s.d    $f8, $f6
/* B9798 800B8B98 460042A1 */  cvt.d.s    $f10, $f8
/* B979C 800B8B9C E7A80034 */  swc1       $f8, 0x34($sp)
/* B97A0 800B8BA0 4630503C */  c.lt.d     $f10, $f16
/* B97A4 800B8BA4 00000000 */  nop
/* B97A8 800B8BA8 45000005 */  bc1f       .L800B8BC0
/* B97AC 800B8BAC 3C01800E */   lui       $at, %hi(D_800DF560)
/* B97B0 800B8BB0 D424F560 */  ldc1       $f4, %lo(D_800DF560)($at)
/* B97B4 800B8BB4 46245480 */  add.d      $f18, $f10, $f4
/* B97B8 800B8BB8 462091A0 */  cvt.s.d    $f6, $f18
/* B97BC 800B8BBC E7A60034 */  swc1       $f6, 0x34($sp)
.L800B8BC0:
/* B97C0 800B8BC0 C7A80034 */  lwc1       $f8, 0x34($sp)
/* B97C4 800B8BC4 8FA80038 */  lw         $t0, 0x38($sp)
/* B97C8 800B8BC8 E5080030 */  swc1       $f8, 0x30($t0)
/* B97CC 800B8BCC 0C02F904 */  jal        func_800BE410
/* B97D0 800B8BD0 C7AC0034 */   lwc1      $f12, 0x34($sp)
/* B97D4 800B8BD4 46000586 */  mov.s      $f22, $f0
/* B97D8 800B8BD8 0C033F18 */  jal        func_800CFC60
/* B97DC 800B8BDC C7AC0034 */   lwc1      $f12, 0x34($sp)
/* B97E0 800B8BE0 3C01447A */  lui        $at, 0x447a
/* B97E4 800B8BE4 44818000 */  mtc1       $at, $f16
/* B97E8 800B8BE8 44812000 */  mtc1       $at, $f4
/* B97EC 800B8BEC 46000506 */  mov.s      $f20, $f0
/* B97F0 800B8BF0 4610B282 */  mul.s      $f10, $f22, $f16
/* B97F4 800B8BF4 8FA40038 */  lw         $a0, 0x38($sp)
/* B97F8 800B8BF8 4604A482 */  mul.s      $f18, $f20, $f4
/* B97FC 800B8BFC 44055000 */  mfc1       $a1, $f10
/* B9800 800B8C00 44069000 */  mfc1       $a2, $f18
/* B9804 800B8C04 0C02E1F7 */  jal        func_800B87DC
/* B9808 800B8C08 00000000 */   nop
.L800B8C0C:
/* B980C 800B8C0C 8FBF0024 */  lw         $ra, 0x24($sp)
/* B9810 800B8C10 D7B40010 */  ldc1       $f20, 0x10($sp)
/* B9814 800B8C14 D7B60018 */  ldc1       $f22, 0x18($sp)
/* B9818 800B8C18 03E00008 */  jr         $ra
/* B981C 800B8C1C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800B8C20
/* B9820 800B8C20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B9824 800B8C24 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9828 800B8C28 AFA40020 */  sw         $a0, 0x20($sp)
/* B982C 800B8C2C 8FAE0020 */  lw         $t6, 0x20($sp)
/* B9830 800B8C30 91D80008 */  lbu        $t8, 8($t6)
/* B9834 800B8C34 8DCF0010 */  lw         $t7, 0x10($t6)
/* B9838 800B8C38 01C02025 */  or         $a0, $t6, $zero
/* B983C 800B8C3C 0018C880 */  sll        $t9, $t8, 2
/* B9840 800B8C40 0338C821 */  addu       $t9, $t9, $t8
/* B9844 800B8C44 0019C8C0 */  sll        $t9, $t9, 3
/* B9848 800B8C48 01F94021 */  addu       $t0, $t7, $t9
/* B984C 800B8C4C 0C02E253 */  jal        func_800B894C
/* B9850 800B8C50 AFA8001C */   sw        $t0, 0x1c($sp)
/* B9854 800B8C54 3C098014 */  lui        $t1, %hi(D_80144352)
/* B9858 800B8C58 85294352 */  lh         $t1, %lo(D_80144352)($t1)
/* B985C 800B8C5C 1120000D */  beqz       $t1, .L800B8C94
/* B9860 800B8C60 00000000 */   nop
/* B9864 800B8C64 8FA40020 */  lw         $a0, 0x20($sp)
/* B9868 800B8C68 0C02E1CA */  jal        func_800B8728
/* B986C 800B8C6C 2484002C */   addiu     $a0, $a0, 0x2c
/* B9870 800B8C70 8FAA0020 */  lw         $t2, 0x20($sp)
/* B9874 800B8C74 3C018014 */  lui        $at, %hi(D_801442C4)
/* B9878 800B8C78 C42642C4 */  lwc1       $f6, %lo(D_801442C4)($at)
/* B987C 800B8C7C C5440038 */  lwc1       $f4, 0x38($t2)
/* B9880 800B8C80 8FAB001C */  lw         $t3, 0x1c($sp)
/* B9884 800B8C84 46062202 */  mul.s      $f8, $f4, $f6
/* B9888 800B8C88 C56A0010 */  lwc1       $f10, 0x10($t3)
/* B988C 800B8C8C 460A4400 */  add.s      $f16, $f8, $f10
/* B9890 800B8C90 E55000E4 */  swc1       $f16, 0xe4($t2)
.L800B8C94:
/* B9894 800B8C94 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9898 800B8C98 27BD0020 */  addiu      $sp, $sp, 0x20
/* B989C 800B8C9C 03E00008 */  jr         $ra
/* B98A0 800B8CA0 00000000 */   nop

glabel func_800B8CA4
/* B98A4 800B8CA4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B98A8 800B8CA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B98AC 800B8CAC AFA40020 */  sw         $a0, 0x20($sp)
/* B98B0 800B8CB0 0C02E253 */  jal        func_800B894C
/* B98B4 800B8CB4 8FA40020 */   lw        $a0, 0x20($sp)
/* B98B8 800B8CB8 3C0E8014 */  lui        $t6, %hi(D_80144352)
/* B98BC 800B8CBC 85CE4352 */  lh         $t6, %lo(D_80144352)($t6)
/* B98C0 800B8CC0 11C0001B */  beqz       $t6, .L800B8D30
/* B98C4 800B8CC4 00000000 */   nop
/* B98C8 800B8CC8 8FA40020 */  lw         $a0, 0x20($sp)
/* B98CC 800B8CCC 0C02E1CA */  jal        func_800B8728
/* B98D0 800B8CD0 2484002C */   addiu     $a0, $a0, 0x2c
/* B98D4 800B8CD4 8FAF0020 */  lw         $t7, 0x20($sp)
/* B98D8 800B8CD8 3C018014 */  lui        $at, %hi(D_801442C4)
/* B98DC 800B8CDC C42642C4 */  lwc1       $f6, %lo(D_801442C4)($at)
/* B98E0 800B8CE0 C5E40038 */  lwc1       $f4, 0x38($t7)
/* B98E4 800B8CE4 46062202 */  mul.s      $f8, $f4, $f6
/* B98E8 800B8CE8 E7A8001C */  swc1       $f8, 0x1c($sp)
/* B98EC 800B8CEC 8DF80078 */  lw         $t8, 0x78($t7)
/* B98F0 800B8CF0 33190001 */  andi       $t9, $t8, 1
/* B98F4 800B8CF4 17200007 */  bnez       $t9, .L800B8D14
/* B98F8 800B8CF8 00000000 */   nop
/* B98FC 800B8CFC 44054000 */  mfc1       $a1, $f8
/* B9900 800B8D00 01E02025 */  or         $a0, $t7, $zero
/* B9904 800B8D04 0C02E1F7 */  jal        func_800B87DC
/* B9908 800B8D08 24060000 */   addiu     $a2, $zero, 0
/* B990C 800B8D0C 10000008 */  b          .L800B8D30
/* B9910 800B8D10 00000000 */   nop
.L800B8D14:
/* B9914 800B8D14 C7AA001C */  lwc1       $f10, 0x1c($sp)
/* B9918 800B8D18 8FA40020 */  lw         $a0, 0x20($sp)
/* B991C 800B8D1C 24060000 */  addiu      $a2, $zero, 0
/* B9920 800B8D20 46005407 */  neg.s      $f16, $f10
/* B9924 800B8D24 44058000 */  mfc1       $a1, $f16
/* B9928 800B8D28 0C02E1F7 */  jal        func_800B87DC
/* B992C 800B8D2C 00000000 */   nop
.L800B8D30:
/* B9930 800B8D30 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9934 800B8D34 27BD0020 */  addiu      $sp, $sp, 0x20
/* B9938 800B8D38 03E00008 */  jr         $ra
/* B993C 800B8D3C 00000000 */   nop

glabel func_800B8D40
/* B9940 800B8D40 27BDFFF8 */  addiu      $sp, $sp, -8
/* B9944 800B8D44 3C0E8016 */  lui        $t6, %hi(D_8015FF80)
/* B9948 800B8D48 8DCEFF80 */  lw         $t6, %lo(D_8015FF80)($t6)
/* B994C 800B8D4C 2401FFC0 */  addiu      $at, $zero, -0x40
/* B9950 800B8D50 AFAE0004 */  sw         $t6, 4($sp)
/* B9954 800B8D54 8DCF0004 */  lw         $t7, 4($t6)
/* B9958 800B8D58 11E1000B */  beq        $t7, $at, .L800B8D88
/* B995C 800B8D5C 00000000 */   nop
.L800B8D60:
/* B9960 800B8D60 8FB80004 */  lw         $t8, 4($sp)
/* B9964 800B8D64 2401FFC0 */  addiu      $at, $zero, -0x40
/* B9968 800B8D68 AF000000 */  sw         $zero, ($t8)
/* B996C 800B8D6C 8FB90004 */  lw         $t9, 4($sp)
/* B9970 800B8D70 27280028 */  addiu      $t0, $t9, 0x28
/* B9974 800B8D74 AFA80004 */  sw         $t0, 4($sp)
/* B9978 800B8D78 8FA90004 */  lw         $t1, 4($sp)
/* B997C 800B8D7C 8D2A0004 */  lw         $t2, 4($t1)
/* B9980 800B8D80 1541FFF7 */  bne        $t2, $at, .L800B8D60
/* B9984 800B8D84 00000000 */   nop
.L800B8D88:
/* B9988 800B8D88 03E00008 */  jr         $ra
/* B998C 800B8D8C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B8D90
/* B9990 800B8D90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B9994 800B8D94 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9998 800B8D98 0C02E350 */  jal        func_800B8D40
/* B999C 800B8D9C 00000000 */   nop
/* B99A0 800B8DA0 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* B99A4 800B8DA4 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* B99A8 800B8DA8 8DCF0004 */  lw         $t7, 4($t6)
/* B99AC 800B8DAC 05E00046 */  bltz       $t7, .L800B8EC8
/* B99B0 800B8DB0 AFAF001C */   sw        $t7, 0x1c($sp)
.L800B8DB4:
/* B99B4 800B8DB4 8FB9001C */  lw         $t9, 0x1c($sp)
/* B99B8 800B8DB8 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* B99BC 800B8DBC 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* B99C0 800B8DC0 00194080 */  sll        $t0, $t9, 2
/* B99C4 800B8DC4 01194023 */  subu       $t0, $t0, $t9
/* B99C8 800B8DC8 00084080 */  sll        $t0, $t0, 2
/* B99CC 800B8DCC 01194023 */  subu       $t0, $t0, $t9
/* B99D0 800B8DD0 00084080 */  sll        $t0, $t0, 2
/* B99D4 800B8DD4 01194021 */  addu       $t0, $t0, $t9
/* B99D8 800B8DD8 00084080 */  sll        $t0, $t0, 2
/* B99DC 800B8DDC 01194023 */  subu       $t0, $t0, $t9
/* B99E0 800B8DE0 00084080 */  sll        $t0, $t0, 2
/* B99E4 800B8DE4 03084821 */  addu       $t1, $t8, $t0
/* B99E8 800B8DE8 8D2A006C */  lw         $t2, 0x6c($t1)
/* B99EC 800B8DEC 29410032 */  slti       $at, $t2, 0x32
/* B99F0 800B8DF0 10200005 */  beqz       $at, .L800B8E08
/* B99F4 800B8DF4 00000000 */   nop
/* B99F8 800B8DF8 0C012101 */  jal        func_80048404
/* B99FC 800B8DFC 03202025 */   or        $a0, $t9, $zero
/* B9A00 800B8E00 1000001F */  b          .L800B8E80
/* B9A04 800B8E04 00000000 */   nop
.L800B8E08:
/* B9A08 800B8E08 8FAC001C */  lw         $t4, 0x1c($sp)
/* B9A0C 800B8E0C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* B9A10 800B8E10 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* B9A14 800B8E14 000C6880 */  sll        $t5, $t4, 2
/* B9A18 800B8E18 01AC6823 */  subu       $t5, $t5, $t4
/* B9A1C 800B8E1C 000D6880 */  sll        $t5, $t5, 2
/* B9A20 800B8E20 01AC6823 */  subu       $t5, $t5, $t4
/* B9A24 800B8E24 000D6880 */  sll        $t5, $t5, 2
/* B9A28 800B8E28 01AC6821 */  addu       $t5, $t5, $t4
/* B9A2C 800B8E2C 000D6880 */  sll        $t5, $t5, 2
/* B9A30 800B8E30 01AC6823 */  subu       $t5, $t5, $t4
/* B9A34 800B8E34 000D6880 */  sll        $t5, $t5, 2
/* B9A38 800B8E38 016D7021 */  addu       $t6, $t3, $t5
/* B9A3C 800B8E3C 8DCF006C */  lw         $t7, 0x6c($t6)
/* B9A40 800B8E40 25F8FF02 */  addiu      $t8, $t7, -0xfe
/* B9A44 800B8E44 2F010017 */  sltiu      $at, $t8, 0x17
/* B9A48 800B8E48 1020000B */  beqz       $at, .L800B8E78
/* B9A4C 800B8E4C 00000000 */   nop
/* B9A50 800B8E50 0018C080 */  sll        $t8, $t8, 2
/* B9A54 800B8E54 3C01800E */  lui        $at, %hi(D_800DF568)
/* B9A58 800B8E58 00380821 */  addu       $at, $at, $t8
/* B9A5C 800B8E5C 8C38F568 */  lw         $t8, %lo(D_800DF568)($at)
/* B9A60 800B8E60 03000008 */  jr         $t8
/* B9A64 800B8E64 00000000 */   nop
/* B9A68 800B8E68 0C012101 */  jal        func_80048404
/* B9A6C 800B8E6C 8FA4001C */   lw        $a0, 0x1c($sp)
/* B9A70 800B8E70 10000003 */  b          .L800B8E80
/* B9A74 800B8E74 00000000 */   nop
.L800B8E78:
/* B9A78 800B8E78 0C012101 */  jal        func_80048404
/* B9A7C 800B8E7C 8FA4001C */   lw        $a0, 0x1c($sp)
.L800B8E80:
/* B9A80 800B8E80 8FA9001C */  lw         $t1, 0x1c($sp)
/* B9A84 800B8E84 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* B9A88 800B8E88 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* B9A8C 800B8E8C 00095080 */  sll        $t2, $t1, 2
/* B9A90 800B8E90 01495023 */  subu       $t2, $t2, $t1
/* B9A94 800B8E94 000A5080 */  sll        $t2, $t2, 2
/* B9A98 800B8E98 01495023 */  subu       $t2, $t2, $t1
/* B9A9C 800B8E9C 000A5080 */  sll        $t2, $t2, 2
/* B9AA0 800B8EA0 01495021 */  addu       $t2, $t2, $t1
/* B9AA4 800B8EA4 000A5080 */  sll        $t2, $t2, 2
/* B9AA8 800B8EA8 01495023 */  subu       $t2, $t2, $t1
/* B9AAC 800B8EAC 000A5080 */  sll        $t2, $t2, 2
/* B9AB0 800B8EB0 010AC821 */  addu       $t9, $t0, $t2
/* B9AB4 800B8EB4 8F2C0004 */  lw         $t4, 4($t9)
/* B9AB8 800B8EB8 AFAC001C */  sw         $t4, 0x1c($sp)
/* B9ABC 800B8EBC 8FAB001C */  lw         $t3, 0x1c($sp)
/* B9AC0 800B8EC0 0561FFBC */  bgez       $t3, .L800B8DB4
/* B9AC4 800B8EC4 00000000 */   nop
.L800B8EC8:
/* B9AC8 800B8EC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9ACC 800B8ECC 27BD0020 */  addiu      $sp, $sp, 0x20
/* B9AD0 800B8ED0 03E00008 */  jr         $ra
/* B9AD4 800B8ED4 00000000 */   nop

glabel func_800B8ED8
/* B9AD8 800B8ED8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9ADC 800B8EDC AFBF0014 */  sw         $ra, 0x14($sp)
/* B9AE0 800B8EE0 AFA40018 */  sw         $a0, 0x18($sp)
/* B9AE4 800B8EE4 3C018014 */  lui        $at, %hi(D_801442E0)
/* B9AE8 800B8EE8 0C02DA94 */  jal        func_800B6A50
/* B9AEC 800B8EEC AC2042E0 */   sw        $zero, %lo(D_801442E0)($at)
/* B9AF0 800B8EF0 8FAE0018 */  lw         $t6, 0x18($sp)
/* B9AF4 800B8EF4 11C00005 */  beqz       $t6, .L800B8F0C
/* B9AF8 800B8EF8 00000000 */   nop
/* B9AFC 800B8EFC 240F0003 */  addiu      $t7, $zero, 3
/* B9B00 800B8F00 3C018014 */  lui        $at, %hi(D_80144334)
/* B9B04 800B8F04 10000004 */  b          .L800B8F18
/* B9B08 800B8F08 A42F4334 */   sh        $t7, %lo(D_80144334)($at)
.L800B8F0C:
/* B9B0C 800B8F0C 24180004 */  addiu      $t8, $zero, 4
/* B9B10 800B8F10 3C018014 */  lui        $at, %hi(D_80144334)
/* B9B14 800B8F14 A4384334 */  sh         $t8, %lo(D_80144334)($at)
.L800B8F18:
/* B9B18 800B8F18 3C018018 */  lui        $at, %hi(D_8017A324)
/* B9B1C 800B8F1C A420A324 */  sh         $zero, %lo(D_8017A324)($at)
/* B9B20 800B8F20 3C098016 */  lui        $t1, %hi(D_8015F468)
/* B9B24 800B8F24 8D29F468 */  lw         $t1, %lo(D_8015F468)($t1)
/* B9B28 800B8F28 3C01800D */  lui        $at, %hi(D_800D62FC)
/* B9B2C 800B8F2C 241900FF */  addiu      $t9, $zero, 0xff
/* B9B30 800B8F30 AC3962FC */  sw         $t9, %lo(D_800D62FC)($at)
/* B9B34 800B8F34 3C01800D */  lui        $at, %hi(D_800D6300)
/* B9B38 800B8F38 2408001B */  addiu      $t0, $zero, 0x1b
/* B9B3C 800B8F3C AC286300 */  sw         $t0, %lo(D_800D6300)($at)
/* B9B40 800B8F40 00095040 */  sll        $t2, $t1, 1
/* B9B44 800B8F44 254B0001 */  addiu      $t3, $t2, 1
/* B9B48 800B8F48 3C018014 */  lui        $at, %hi(D_8013F5FC)
/* B9B4C 800B8F4C 0C02E364 */  jal        func_800B8D90
/* B9B50 800B8F50 AC2BF5FC */   sw        $t3, %lo(D_8013F5FC)($at)
/* B9B54 800B8F54 0C000ABC */  jal        func_80002AF0
/* B9B58 800B8F58 24040005 */   addiu     $a0, $zero, 5
/* B9B5C 800B8F5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9B60 800B8F60 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9B64 800B8F64 03E00008 */  jr         $ra
/* B9B68 800B8F68 00000000 */   nop

glabel func_800B8F6C
/* B9B6C 800B8F6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9B70 800B8F70 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9B74 800B8F74 0C02DA94 */  jal        func_800B6A50
/* B9B78 800B8F78 00000000 */   nop
/* B9B7C 800B8F7C 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* B9B80 800B8F80 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* B9B84 800B8F84 24010003 */  addiu      $at, $zero, 3
/* B9B88 800B8F88 15C10011 */  bne        $t6, $at, .L800B8FD0
/* B9B8C 800B8F8C 00000000 */   nop
/* B9B90 800B8F90 3C188016 */  lui        $t8, %hi(D_8015F464)
/* B9B94 800B8F94 3C088016 */  lui        $t0, %hi(D_8015F468)
/* B9B98 800B8F98 8D08F468 */  lw         $t0, %lo(D_8015F468)($t0)
/* B9B9C 800B8F9C 8F18F464 */  lw         $t8, %lo(D_8015F464)($t8)
/* B9BA0 800B8FA0 3C018016 */  lui        $at, 0x8016
/* B9BA4 800B8FA4 00084880 */  sll        $t1, $t0, 2
/* B9BA8 800B8FA8 0018C900 */  sll        $t9, $t8, 4
/* B9BAC 800B8FAC 01284823 */  subu       $t1, $t1, $t0
/* B9BB0 800B8FB0 0338C823 */  subu       $t9, $t9, $t8
/* B9BB4 800B8FB4 0019C8C0 */  sll        $t9, $t9, 3
/* B9BB8 800B8FB8 000948C0 */  sll        $t1, $t1, 3
/* B9BBC 800B8FBC 03295021 */  addu       $t2, $t9, $t1
/* B9BC0 800B8FC0 002A0821 */  addu       $at, $at, $t2
/* B9BC4 800B8FC4 240F0001 */  addiu      $t7, $zero, 1
/* B9BC8 800B8FC8 10000003 */  b          .L800B8FD8
/* B9BCC 800B8FCC AC2F0C8C */   sw        $t7, 0xc8c($at)
.L800B8FD0:
/* B9BD0 800B8FD0 0C02DF8D */  jal        func_800B7E34
/* B9BD4 800B8FD4 00000000 */   nop
.L800B8FD8:
/* B9BD8 800B8FD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9BDC 800B8FDC 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9BE0 800B8FE0 03E00008 */  jr         $ra
/* B9BE4 800B8FE4 00000000 */   nop

glabel func_800B8FE8
/* B9BE8 800B8FE8 03E00008 */  jr         $ra
/* B9BEC 800B8FEC 00000000 */   nop

glabel func_800B8FF0
/* B9BF0 800B8FF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B9BF4 800B8FF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B9BF8 800B8FF8 AFA40028 */  sw         $a0, 0x28($sp)
/* B9BFC 800B8FFC 8FAE0028 */  lw         $t6, 0x28($sp)
/* B9C00 800B9000 05C00015 */  bltz       $t6, .L800B9058
/* B9C04 800B9004 00000000 */   nop
/* B9C08 800B9008 3C088018 */  lui        $t0, %hi(D_8017A2C8)
/* B9C0C 800B900C 8508A2C8 */  lh         $t0, %lo(D_8017A2C8)($t0)
/* B9C10 800B9010 3C188018 */  lui        $t8, %hi(D_8017A9F8)
/* B9C14 800B9014 2718A9F8 */  addiu      $t8, $t8, %lo(D_8017A9F8)
/* B9C18 800B9018 44883000 */  mtc1       $t0, $f6
/* B9C1C 800B901C 000E7900 */  sll        $t7, $t6, 4
/* B9C20 800B9020 01F8C821 */  addu       $t9, $t7, $t8
/* B9C24 800B9024 46803220 */  cvt.s.w    $f8, $f6
/* B9C28 800B9028 AFB90024 */  sw         $t9, 0x24($sp)
/* B9C2C 800B902C C724000C */  lwc1       $f4, 0xc($t9)
/* B9C30 800B9030 932A0008 */  lbu        $t2, 8($t9)
/* B9C34 800B9034 8F250004 */  lw         $a1, 4($t9)
/* B9C38 800B9038 8F240000 */  lw         $a0, ($t9)
/* B9C3C 800B903C 46082282 */  mul.s      $f10, $f4, $f8
/* B9C40 800B9040 24070040 */  addiu      $a3, $zero, 0x40
/* B9C44 800B9044 AFAA0010 */  sw         $t2, 0x10($sp)
/* B9C48 800B9048 4600540D */  trunc.w.s  $f16, $f10
/* B9C4C 800B904C 44068000 */  mfc1       $a2, $f16
/* B9C50 800B9050 0C0009DF */  jal        func_8000277C
/* B9C54 800B9054 00000000 */   nop
.L800B9058:
/* B9C58 800B9058 8FBF001C */  lw         $ra, 0x1c($sp)
/* B9C5C 800B905C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B9C60 800B9060 03E00008 */  jr         $ra
/* B9C64 800B9064 00000000 */   nop

glabel func_800B9068
/* B9C68 800B9068 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B9C6C 800B906C AFBF001C */  sw         $ra, 0x1c($sp)
/* B9C70 800B9070 3C0E8014 */  lui        $t6, %hi(D_8014434C)
/* B9C74 800B9074 85CE434C */  lh         $t6, %lo(D_8014434C)($t6)
/* B9C78 800B9078 11C0000D */  beqz       $t6, .L800B90B0
/* B9C7C 800B907C 3C018014 */   lui       $at, %hi(D_8014434C)
/* B9C80 800B9080 3C0F801C */  lui        $t7, %hi(D_801C5D40)
/* B9C84 800B9084 A420434C */  sh         $zero, %lo(D_8014434C)($at)
/* B9C88 800B9088 25EF5D40 */  addiu      $t7, $t7, %lo(D_801C5D40)
/* B9C8C 800B908C 8DE40254 */  lw         $a0, 0x254($t7)
/* B9C90 800B9090 241800A0 */  addiu      $t8, $zero, 0xa0
/* B9C94 800B9094 24190050 */  addiu      $t9, $zero, 0x50
/* B9C98 800B9098 AFB90014 */  sw         $t9, 0x14($sp)
/* B9C9C 800B909C AFB80010 */  sw         $t8, 0x10($sp)
/* B9CA0 800B90A0 00002825 */  or         $a1, $zero, $zero
/* B9CA4 800B90A4 24060030 */  addiu      $a2, $zero, 0x30
/* B9CA8 800B90A8 0C0209BC */  jal        func_800826F0
/* B9CAC 800B90AC 2407FFFF */   addiu     $a3, $zero, -1
.L800B90B0:
/* B9CB0 800B90B0 3C088016 */  lui        $t0, %hi(D_8015FB8C)
/* B9CB4 800B90B4 8D08FB8C */  lw         $t0, %lo(D_8015FB8C)($t0)
/* B9CB8 800B90B8 0500004D */  bltz       $t0, .L800B91F0
/* B9CBC 800B90BC AFA80028 */   sw        $t0, 0x28($sp)
.L800B90C0:
/* B9CC0 800B90C0 8FA90028 */  lw         $t1, 0x28($sp)
/* B9CC4 800B90C4 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* B9CC8 800B90C8 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* B9CCC 800B90CC 00095080 */  sll        $t2, $t1, 2
/* B9CD0 800B90D0 01495023 */  subu       $t2, $t2, $t1
/* B9CD4 800B90D4 000A5080 */  sll        $t2, $t2, 2
/* B9CD8 800B90D8 01495023 */  subu       $t2, $t2, $t1
/* B9CDC 800B90DC 000A5080 */  sll        $t2, $t2, 2
/* B9CE0 800B90E0 01495021 */  addu       $t2, $t2, $t1
/* B9CE4 800B90E4 000A5080 */  sll        $t2, $t2, 2
/* B9CE8 800B90E8 01495023 */  subu       $t2, $t2, $t1
/* B9CEC 800B90EC 000A5080 */  sll        $t2, $t2, 2
/* B9CF0 800B90F0 014B6021 */  addu       $t4, $t2, $t3
/* B9CF4 800B90F4 AFAC002C */  sw         $t4, 0x2c($sp)
/* B9CF8 800B90F8 8D8D006C */  lw         $t5, 0x6c($t4)
/* B9CFC 800B90FC 24010206 */  addiu      $at, $zero, 0x206
/* B9D00 800B9100 15A10035 */  bne        $t5, $at, .L800B91D8
/* B9D04 800B9104 00000000 */   nop
/* B9D08 800B9108 3C0F8014 */  lui        $t7, %hi(D_801442E8)
/* B9D0C 800B910C 85EF42E8 */  lh         $t7, %lo(D_801442E8)($t7)
/* B9D10 800B9110 8D8E0078 */  lw         $t6, 0x78($t4)
/* B9D14 800B9114 01CF082A */  slt        $at, $t6, $t7
/* B9D18 800B9118 1020002F */  beqz       $at, .L800B91D8
/* B9D1C 800B911C 00000000 */   nop
/* B9D20 800B9120 8D980070 */  lw         $t8, 0x70($t4)
/* B9D24 800B9124 3C01FF00 */  lui        $at, 0xff00
/* B9D28 800B9128 0301C824 */  and        $t9, $t8, $at
/* B9D2C 800B912C 3C010100 */  lui        $at, 0x100
/* B9D30 800B9130 1721001E */  bne        $t9, $at, .L800B91AC
/* B9D34 800B9134 00000000 */   nop
/* B9D38 800B9138 24080001 */  addiu      $t0, $zero, 1
/* B9D3C 800B913C 3C018014 */  lui        $at, %hi(D_80144348)
/* B9D40 800B9140 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B9D44 800B9144 A4284348 */  sh         $t0, %lo(D_80144348)($at)
/* B9D48 800B9148 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B9D4C 800B914C 2404000F */  addiu      $a0, $zero, 0xf
/* B9D50 800B9150 00002825 */  or         $a1, $zero, $zero
/* B9D54 800B9154 0C00AF12 */  jal        func_8002BC48
/* B9D58 800B9158 2406005E */   addiu     $a2, $zero, 0x5e
/* B9D5C 800B915C 0C012058 */  jal        func_80048160
/* B9D60 800B9160 2404000F */   addiu     $a0, $zero, 0xf
/* B9D64 800B9164 AFA20024 */  sw         $v0, 0x24($sp)
/* B9D68 800B9168 8FA90024 */  lw         $t1, 0x24($sp)
/* B9D6C 800B916C 2401FFFF */  addiu      $at, $zero, -1
/* B9D70 800B9170 1121000E */  beq        $t1, $at, .L800B91AC
/* B9D74 800B9174 00000000 */   nop
/* B9D78 800B9178 00095880 */  sll        $t3, $t1, 2
/* B9D7C 800B917C 01695823 */  subu       $t3, $t3, $t1
/* B9D80 800B9180 000B5880 */  sll        $t3, $t3, 2
/* B9D84 800B9184 01695823 */  subu       $t3, $t3, $t1
/* B9D88 800B9188 000B5880 */  sll        $t3, $t3, 2
/* B9D8C 800B918C 01695821 */  addu       $t3, $t3, $t1
/* B9D90 800B9190 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* B9D94 800B9194 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* B9D98 800B9198 000B5880 */  sll        $t3, $t3, 2
/* B9D9C 800B919C 01695823 */  subu       $t3, $t3, $t1
/* B9DA0 800B91A0 000B5880 */  sll        $t3, $t3, 2
/* B9DA4 800B91A4 014B6821 */  addu       $t5, $t2, $t3
/* B9DA8 800B91A8 ADA0007C */  sw         $zero, 0x7c($t5)
.L800B91AC:
/* B9DAC 800B91AC 8FAE002C */  lw         $t6, 0x2c($sp)
/* B9DB0 800B91B0 ADC0000C */  sw         $zero, 0xc($t6)
/* B9DB4 800B91B4 0C012101 */  jal        func_80048404
/* B9DB8 800B91B8 8FA40028 */   lw        $a0, 0x28($sp)
/* B9DBC 800B91BC 8FAF002C */  lw         $t7, 0x2c($sp)
/* B9DC0 800B91C0 3C188014 */  lui        $t8, %hi(D_801442E6)
/* B9DC4 800B91C4 871842E6 */  lh         $t8, %lo(D_801442E6)($t8)
/* B9DC8 800B91C8 8DEC0078 */  lw         $t4, 0x78($t7)
/* B9DCC 800B91CC 15980002 */  bne        $t4, $t8, .L800B91D8
/* B9DD0 800B91D0 3C018018 */   lui       $at, %hi(D_8017AB9C)
/* B9DD4 800B91D4 A420AB9C */  sh         $zero, %lo(D_8017AB9C)($at)
.L800B91D8:
/* B9DD8 800B91D8 8FB9002C */  lw         $t9, 0x2c($sp)
/* B9DDC 800B91DC 8F280004 */  lw         $t0, 4($t9)
/* B9DE0 800B91E0 AFA80028 */  sw         $t0, 0x28($sp)
/* B9DE4 800B91E4 8FA90028 */  lw         $t1, 0x28($sp)
/* B9DE8 800B91E8 0521FFB5 */  bgez       $t1, .L800B90C0
/* B9DEC 800B91EC 00000000 */   nop
.L800B91F0:
/* B9DF0 800B91F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B9DF4 800B91F4 27BD0030 */  addiu      $sp, $sp, 0x30
/* B9DF8 800B91F8 03E00008 */  jr         $ra
/* B9DFC 800B91FC 00000000 */   nop

glabel func_800B9200
/* B9E00 800B9200 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9E04 800B9204 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9E08 800B9208 0C02E3FC */  jal        func_800B8FF0
/* B9E0C 800B920C 24040004 */   addiu     $a0, $zero, 4
/* B9E10 800B9210 0C02E41A */  jal        func_800B9068
/* B9E14 800B9214 00000000 */   nop
/* B9E18 800B9218 3C0E800E */  lui        $t6, %hi(D_800D9DBC)
/* B9E1C 800B921C 8DCE9DBC */  lw         $t6, %lo(D_800D9DBC)($t6)
/* B9E20 800B9220 24010003 */  addiu      $at, $zero, 3
/* B9E24 800B9224 11C10015 */  beq        $t6, $at, .L800B927C
/* B9E28 800B9228 00000000 */   nop
/* B9E2C 800B922C 0C02DA94 */  jal        func_800B6A50
/* B9E30 800B9230 00000000 */   nop
/* B9E34 800B9234 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* B9E38 800B9238 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* B9E3C 800B923C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* B9E40 800B9240 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* B9E44 800B9244 0018C880 */  sll        $t9, $t8, 2
/* B9E48 800B9248 0338C823 */  subu       $t9, $t9, $t8
/* B9E4C 800B924C 0019C880 */  sll        $t9, $t9, 2
/* B9E50 800B9250 0338C823 */  subu       $t9, $t9, $t8
/* B9E54 800B9254 0019C880 */  sll        $t9, $t9, 2
/* B9E58 800B9258 0338C821 */  addu       $t9, $t9, $t8
/* B9E5C 800B925C 0019C880 */  sll        $t9, $t9, 2
/* B9E60 800B9260 3C01C120 */  lui        $at, 0xc120
/* B9E64 800B9264 0338C823 */  subu       $t9, $t9, $t8
/* B9E68 800B9268 44812000 */  mtc1       $at, $f4
/* B9E6C 800B926C 0019C880 */  sll        $t9, $t9, 2
/* B9E70 800B9270 01F94021 */  addu       $t0, $t7, $t9
/* B9E74 800B9274 10000003 */  b          .L800B9284
/* B9E78 800B9278 E5040024 */   swc1      $f4, 0x24($t0)
.L800B927C:
/* B9E7C 800B927C 3C018014 */  lui        $at, %hi(D_801442DC)
/* B9E80 800B9280 AC2042DC */  sw         $zero, %lo(D_801442DC)($at)
.L800B9284:
/* B9E84 800B9284 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9E88 800B9288 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9E8C 800B928C 03E00008 */  jr         $ra
/* B9E90 800B9290 00000000 */   nop

glabel func_800B9294
/* B9E94 800B9294 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9E98 800B9298 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9E9C 800B929C AFA40018 */  sw         $a0, 0x18($sp)
/* B9EA0 800B92A0 0C02E3FC */  jal        func_800B8FF0
/* B9EA4 800B92A4 24040003 */   addiu     $a0, $zero, 3
/* B9EA8 800B92A8 0C02E41A */  jal        func_800B9068
/* B9EAC 800B92AC 00000000 */   nop
/* B9EB0 800B92B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9EB4 800B92B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9EB8 800B92B8 03E00008 */  jr         $ra
/* B9EBC 800B92BC 00000000 */   nop

glabel func_800B92C0
/* B9EC0 800B92C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9EC4 800B92C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9EC8 800B92C8 AFA40018 */  sw         $a0, 0x18($sp)
/* B9ECC 800B92CC 0C02E3FC */  jal        func_800B8FF0
/* B9ED0 800B92D0 24040001 */   addiu     $a0, $zero, 1
/* B9ED4 800B92D4 0C02E41A */  jal        func_800B9068
/* B9ED8 800B92D8 00000000 */   nop
/* B9EDC 800B92DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9EE0 800B92E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9EE4 800B92E4 03E00008 */  jr         $ra
/* B9EE8 800B92E8 00000000 */   nop

glabel func_800B92EC
/* B9EEC 800B92EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B9EF0 800B92F0 AFBF001C */  sw         $ra, 0x1c($sp)
/* B9EF4 800B92F4 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* B9EF8 800B92F8 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* B9EFC 800B92FC 24010002 */  addiu      $at, $zero, 2
/* B9F00 800B9300 15C10020 */  bne        $t6, $at, .L800B9384
/* B9F04 800B9304 00000000 */   nop
/* B9F08 800B9308 0C02DA99 */  jal        func_800B6A64
/* B9F0C 800B930C 24040007 */   addiu     $a0, $zero, 7
/* B9F10 800B9310 3C0F8018 */  lui        $t7, %hi(D_8017A028)
/* B9F14 800B9314 25EFA028 */  addiu      $t7, $t7, %lo(D_8017A028)
/* B9F18 800B9318 8DE5009C */  lw         $a1, 0x9c($t7)
/* B9F1C 800B931C 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* B9F20 800B9320 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* B9F24 800B9324 AFA00010 */  sw         $zero, 0x10($sp)
/* B9F28 800B9328 24040027 */  addiu      $a0, $zero, 0x27
/* B9F2C 800B932C 0C0009DF */  jal        func_8000277C
/* B9F30 800B9330 24070040 */   addiu     $a3, $zero, 0x40
/* B9F34 800B9334 3C188016 */  lui        $t8, %hi(D_8015FF80)
/* B9F38 800B9338 8F18FF80 */  lw         $t8, %lo(D_8015FF80)($t8)
/* B9F3C 800B933C 24040086 */  addiu      $a0, $zero, 0x86
/* B9F40 800B9340 00002825 */  or         $a1, $zero, $zero
/* B9F44 800B9344 2406000C */  addiu      $a2, $zero, 0xc
/* B9F48 800B9348 24070052 */  addiu      $a3, $zero, 0x52
/* B9F4C 800B934C 0C00B011 */  jal        func_8002C044
/* B9F50 800B9350 AFB80010 */   sw        $t8, 0x10($sp)
/* B9F54 800B9354 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B9F58 800B9358 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B9F5C 800B935C 2404001B */  addiu      $a0, $zero, 0x1b
/* B9F60 800B9360 24050054 */  addiu      $a1, $zero, 0x54
/* B9F64 800B9364 0C00AF12 */  jal        func_8002BC48
/* B9F68 800B9368 24060053 */   addiu     $a2, $zero, 0x53
/* B9F6C 800B936C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* B9F70 800B9370 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* B9F74 800B9374 2404001A */  addiu      $a0, $zero, 0x1a
/* B9F78 800B9378 24050054 */  addiu      $a1, $zero, 0x54
/* B9F7C 800B937C 0C00AF12 */  jal        func_8002BC48
/* B9F80 800B9380 24060053 */   addiu     $a2, $zero, 0x53
.L800B9384:
/* B9F84 800B9384 8FBF001C */  lw         $ra, 0x1c($sp)
/* B9F88 800B9388 27BD0020 */  addiu      $sp, $sp, 0x20
/* B9F8C 800B938C 03E00008 */  jr         $ra
/* B9F90 800B9390 00000000 */   nop

glabel func_800B9394
/* B9F94 800B9394 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9F98 800B9398 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9F9C 800B939C AFA40018 */  sw         $a0, 0x18($sp)
/* B9FA0 800B93A0 8FAE0018 */  lw         $t6, 0x18($sp)
/* B9FA4 800B93A4 3C018018 */  lui        $at, %hi(D_8017AB9C)
/* B9FA8 800B93A8 A420AB9C */  sh         $zero, %lo(D_8017AB9C)($at)
/* B9FAC 800B93AC 3C188014 */  lui        $t8, %hi(D_801442E6)
/* B9FB0 800B93B0 871842E6 */  lh         $t8, %lo(D_801442E6)($t8)
/* B9FB4 800B93B4 8DCF0078 */  lw         $t7, 0x78($t6)
/* B9FB8 800B93B8 11F80005 */  beq        $t7, $t8, .L800B93D0
/* B9FBC 800B93BC 00000000 */   nop
/* B9FC0 800B93C0 0C02E480 */  jal        func_800B9200
/* B9FC4 800B93C4 00000000 */   nop
/* B9FC8 800B93C8 10000009 */  b          .L800B93F0
/* B9FCC 800B93CC 00000000 */   nop
.L800B93D0:
/* B9FD0 800B93D0 8FB90018 */  lw         $t9, 0x18($sp)
/* B9FD4 800B93D4 3C018014 */  lui        $at, %hi(D_801442E8)
/* B9FD8 800B93D8 8F280078 */  lw         $t0, 0x78($t9)
/* B9FDC 800B93DC 25090001 */  addiu      $t1, $t0, 1
/* B9FE0 800B93E0 0C02E41A */  jal        func_800B9068
/* B9FE4 800B93E4 A42942E8 */   sh        $t1, %lo(D_801442E8)($at)
/* B9FE8 800B93E8 0C02DD35 */  jal        func_800B74D4
/* B9FEC 800B93EC 00000000 */   nop
.L800B93F0:
/* B9FF0 800B93F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9FF4 800B93F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9FF8 800B93F8 03E00008 */  jr         $ra
/* B9FFC 800B93FC 00000000 */   nop

glabel func_800B9400
/* BA000 800B9400 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BA004 800B9404 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA008 800B9408 AFA40018 */  sw         $a0, 0x18($sp)
/* BA00C 800B940C 0C02E4A5 */  jal        func_800B9294
/* BA010 800B9410 8FA40018 */   lw        $a0, 0x18($sp)
/* BA014 800B9414 3C0F8016 */  lui        $t7, %hi(D_8015F464)
/* BA018 800B9418 3C198016 */  lui        $t9, %hi(D_8015F468)
/* BA01C 800B941C 8F39F468 */  lw         $t9, %lo(D_8015F468)($t9)
/* BA020 800B9420 8DEFF464 */  lw         $t7, %lo(D_8015F464)($t7)
/* BA024 800B9424 3C018016 */  lui        $at, 0x8016
/* BA028 800B9428 00194080 */  sll        $t0, $t9, 2
/* BA02C 800B942C 000FC100 */  sll        $t8, $t7, 4
/* BA030 800B9430 01194023 */  subu       $t0, $t0, $t9
/* BA034 800B9434 030FC023 */  subu       $t8, $t8, $t7
/* BA038 800B9438 0018C0C0 */  sll        $t8, $t8, 3
/* BA03C 800B943C 000840C0 */  sll        $t0, $t0, 3
/* BA040 800B9440 03084821 */  addu       $t1, $t8, $t0
/* BA044 800B9444 00290821 */  addu       $at, $at, $t1
/* BA048 800B9448 240E0001 */  addiu      $t6, $zero, 1
/* BA04C 800B944C AC2E0C8C */  sw         $t6, 0xc8c($at)
/* BA050 800B9450 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA054 800B9454 27BD0018 */  addiu      $sp, $sp, 0x18
/* BA058 800B9458 03E00008 */  jr         $ra
/* BA05C 800B945C 00000000 */   nop

glabel func_800B9460
/* BA060 800B9460 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BA064 800B9464 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA068 800B9468 AFA40020 */  sw         $a0, 0x20($sp)
/* BA06C 800B946C AFA50024 */  sw         $a1, 0x24($sp)
/* BA070 800B9470 8FAE0020 */  lw         $t6, 0x20($sp)
/* BA074 800B9474 24090022 */  addiu      $t1, $zero, 0x22
/* BA078 800B9478 3C0A8016 */  lui        $t2, %hi(D_80161650)
/* BA07C 800B947C 91D80008 */  lbu        $t8, 8($t6)
/* BA080 800B9480 8DCF0010 */  lw         $t7, 0x10($t6)
/* BA084 800B9484 254A1650 */  addiu      $t2, $t2, %lo(D_80161650)
/* BA088 800B9488 0018C880 */  sll        $t9, $t8, 2
/* BA08C 800B948C 0338C821 */  addu       $t9, $t9, $t8
/* BA090 800B9490 0019C8C0 */  sll        $t9, $t9, 3
/* BA094 800B9494 01F94021 */  addu       $t0, $t7, $t9
/* BA098 800B9498 AFA8001C */  sw         $t0, 0x1c($sp)
/* BA09C 800B949C ADC90074 */  sw         $t1, 0x74($t6)
/* BA0A0 800B94A0 8FAC0020 */  lw         $t4, 0x20($sp)
/* BA0A4 800B94A4 254B0268 */  addiu      $t3, $t2, 0x268
/* BA0A8 800B94A8 240D0001 */  addiu      $t5, $zero, 1
/* BA0AC 800B94AC AD8B02C8 */  sw         $t3, 0x2c8($t4)
/* BA0B0 800B94B0 8FB80020 */  lw         $t8, 0x20($sp)
/* BA0B4 800B94B4 240FFFFF */  addiu      $t7, $zero, -1
/* BA0B8 800B94B8 2408FFFF */  addiu      $t0, $zero, -1
/* BA0BC 800B94BC AF0D0268 */  sw         $t5, 0x268($t8)
/* BA0C0 800B94C0 8FB90020 */  lw         $t9, 0x20($sp)
/* BA0C4 800B94C4 3C01800E */  lui        $at, 0x800e
/* BA0C8 800B94C8 AF2F0014 */  sw         $t7, 0x14($t9)
/* BA0CC 800B94CC 8FA90020 */  lw         $t1, 0x20($sp)
/* BA0D0 800B94D0 AD280018 */  sw         $t0, 0x18($t1)
/* BA0D4 800B94D4 8FAE001C */  lw         $t6, 0x1c($sp)
/* BA0D8 800B94D8 8FAB0020 */  lw         $t3, 0x20($sp)
/* BA0DC 800B94DC 8DCA0020 */  lw         $t2, 0x20($t6)
/* BA0E0 800B94E0 AD6A0078 */  sw         $t2, 0x78($t3)
/* BA0E4 800B94E4 8FAC001C */  lw         $t4, 0x1c($sp)
/* BA0E8 800B94E8 8FAD0020 */  lw         $t5, 0x20($sp)
/* BA0EC 800B94EC C5840018 */  lwc1       $f4, 0x18($t4)
/* BA0F0 800B94F0 E5A400F0 */  swc1       $f4, 0xf0($t5)
/* BA0F4 800B94F4 8FB8001C */  lw         $t8, 0x1c($sp)
/* BA0F8 800B94F8 D42AF5C8 */  ldc1       $f10, -0xa38($at)
/* BA0FC 800B94FC 8FAF0020 */  lw         $t7, 0x20($sp)
/* BA100 800B9500 C706001C */  lwc1       $f6, 0x1c($t8)
/* BA104 800B9504 46003221 */  cvt.d.s    $f8, $f6
/* BA108 800B9508 462A4400 */  add.d      $f16, $f8, $f10
/* BA10C 800B950C 462084A0 */  cvt.s.d    $f18, $f16
/* BA110 800B9510 E5F20104 */  swc1       $f18, 0x104($t7)
/* BA114 800B9514 8FA40020 */  lw         $a0, 0x20($sp)
/* BA118 800B9518 0C02DA84 */  jal        func_800B6A10
/* BA11C 800B951C 2484002C */   addiu     $a0, $a0, 0x2c
/* BA120 800B9520 3C01BF80 */  lui        $at, 0xbf80
/* BA124 800B9524 44812000 */  mtc1       $at, $f4
/* BA128 800B9528 8FB90020 */  lw         $t9, 0x20($sp)
/* BA12C 800B952C 3C018014 */  lui        $at, %hi(D_801442C0)
/* BA130 800B9530 3C0A8014 */  lui        $t2, 0x8014
/* BA134 800B9534 E7240030 */  swc1       $f4, 0x30($t9)
/* BA138 800B9538 8FA80020 */  lw         $t0, 0x20($sp)
/* BA13C 800B953C C42642C0 */  lwc1       $f6, %lo(D_801442C0)($at)
/* BA140 800B9540 2401FFFF */  addiu      $at, $zero, -1
/* BA144 800B9544 E5060034 */  swc1       $f6, 0x34($t0)
/* BA148 800B9548 8FA90020 */  lw         $t1, 0x20($sp)
/* BA14C 800B954C AD2002C0 */  sw         $zero, 0x2c0($t1)
/* BA150 800B9550 8FAE0020 */  lw         $t6, 0x20($sp)
/* BA154 800B9554 ADC002C4 */  sw         $zero, 0x2c4($t6)
/* BA158 800B9558 8D4A42D0 */  lw         $t2, 0x42d0($t2)
/* BA15C 800B955C 15410003 */  bne        $t2, $at, .L800B956C
/* BA160 800B9560 00000000 */   nop
/* BA164 800B9564 8FAB0020 */  lw         $t3, 0x20($sp)
/* BA168 800B9568 AD60000C */  sw         $zero, 0xc($t3)
.L800B956C:
/* BA16C 800B956C 8FAC0020 */  lw         $t4, 0x20($sp)
/* BA170 800B9570 8D8D0070 */  lw         $t5, 0x70($t4)
/* BA174 800B9574 31B800FF */  andi       $t8, $t5, 0xff
/* BA178 800B9578 270FFFFF */  addiu      $t7, $t8, -1
/* BA17C 800B957C 2DE10007 */  sltiu      $at, $t7, 7
/* BA180 800B9580 10200022 */  beqz       $at, .L800B960C
/* BA184 800B9584 00000000 */   nop
/* BA188 800B9588 000F7880 */  sll        $t7, $t7, 2
/* BA18C 800B958C 3C01800E */  lui        $at, %hi(D_800DF5D0)
/* BA190 800B9590 002F0821 */  addu       $at, $at, $t7
/* BA194 800B9594 8C2FF5D0 */  lw         $t7, %lo(D_800DF5D0)($at)
/* BA198 800B9598 01E00008 */  jr         $t7
/* BA19C 800B959C 00000000 */   nop
/* BA1A0 800B95A0 3C01800E */  lui        $at, %hi(D_800DF5EC)
/* BA1A4 800B95A4 C428F5EC */  lwc1       $f8, %lo(D_800DF5EC)($at)
/* BA1A8 800B95A8 8FB90020 */  lw         $t9, 0x20($sp)
/* BA1AC 800B95AC 3C014040 */  lui        $at, 0x4040
/* BA1B0 800B95B0 44815000 */  mtc1       $at, $f10
/* BA1B4 800B95B4 E7280118 */  swc1       $f8, 0x118($t9)
/* BA1B8 800B95B8 8FA80020 */  lw         $t0, 0x20($sp)
/* BA1BC 800B95BC 1000002F */  b          .L800B967C
/* BA1C0 800B95C0 E50A002C */   swc1      $f10, 0x2c($t0)
/* BA1C4 800B95C4 3C013F00 */  lui        $at, 0x3f00
/* BA1C8 800B95C8 44818000 */  mtc1       $at, $f16
/* BA1CC 800B95CC 8FA90020 */  lw         $t1, 0x20($sp)
/* BA1D0 800B95D0 1000002A */  b          .L800B967C
/* BA1D4 800B95D4 E53000F4 */   swc1      $f16, 0xf4($t1)
/* BA1D8 800B95D8 44809000 */  mtc1       $zero, $f18
/* BA1DC 800B95DC 8FAE0020 */  lw         $t6, 0x20($sp)
/* BA1E0 800B95E0 3C01800E */  lui        $at, %hi(D_800DF5F0)
/* BA1E4 800B95E4 E5D20104 */  swc1       $f18, 0x104($t6)
/* BA1E8 800B95E8 8FAA0020 */  lw         $t2, 0x20($sp)
/* BA1EC 800B95EC C424F5F0 */  lwc1       $f4, %lo(D_800DF5F0)($at)
/* BA1F0 800B95F0 10000022 */  b          .L800B967C
/* BA1F4 800B95F4 E54400F4 */   swc1      $f4, 0xf4($t2)
/* BA1F8 800B95F8 3C01800E */  lui        $at, %hi(D_800DF5F4)
/* BA1FC 800B95FC C426F5F4 */  lwc1       $f6, %lo(D_800DF5F4)($at)
/* BA200 800B9600 8FAB0020 */  lw         $t3, 0x20($sp)
/* BA204 800B9604 1000001D */  b          .L800B967C
/* BA208 800B9608 E5660118 */   swc1      $f6, 0x118($t3)
.L800B960C:
/* BA20C 800B960C 8FAC0020 */  lw         $t4, 0x20($sp)
/* BA210 800B9610 3C188014 */  lui        $t8, %hi(D_801442E8)
/* BA214 800B9614 871842E8 */  lh         $t8, %lo(D_801442E8)($t8)
/* BA218 800B9618 8D8D0078 */  lw         $t5, 0x78($t4)
/* BA21C 800B961C 01B8082A */  slt        $at, $t5, $t8
/* BA220 800B9620 10200006 */  beqz       $at, .L800B963C
/* BA224 800B9624 00000000 */   nop
/* BA228 800B9628 AD80000C */  sw         $zero, 0xc($t4)
/* BA22C 800B962C 0C012101 */  jal        func_80048404
/* BA230 800B9630 8FA40024 */   lw        $a0, 0x24($sp)
/* BA234 800B9634 10000011 */  b          .L800B967C
/* BA238 800B9638 00000000 */   nop
.L800B963C:
/* BA23C 800B963C 8FAF0020 */  lw         $t7, 0x20($sp)
/* BA240 800B9640 3C01FF00 */  lui        $at, 0xff00
/* BA244 800B9644 8DF90070 */  lw         $t9, 0x70($t7)
/* BA248 800B9648 03214024 */  and        $t0, $t9, $at
/* BA24C 800B964C 3C010200 */  lui        $at, 0x200
/* BA250 800B9650 1501000A */  bne        $t0, $at, .L800B967C
/* BA254 800B9654 00000000 */   nop
/* BA258 800B9658 8FA90024 */  lw         $t1, 0x24($sp)
/* BA25C 800B965C 8FAE0020 */  lw         $t6, 0x20($sp)
/* BA260 800B9660 3C018014 */  lui        $at, %hi(D_8014433C)
/* BA264 800B9664 AC29433C */  sw         $t1, %lo(D_8014433C)($at)
/* BA268 800B9668 8DCA0078 */  lw         $t2, 0x78($t6)
/* BA26C 800B966C 3C018014 */  lui        $at, %hi(D_80144340)
/* BA270 800B9670 AC2A4340 */  sw         $t2, %lo(D_80144340)($at)
/* BA274 800B9674 3C018014 */  lui        $at, %hi(D_80144344)
/* BA278 800B9678 AC2A4344 */  sw         $t2, %lo(D_80144344)($at)
.L800B967C:
/* BA27C 800B967C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA280 800B9680 27BD0020 */  addiu      $sp, $sp, 0x20
/* BA284 800B9684 03E00008 */  jr         $ra
/* BA288 800B9688 00000000 */   nop

glabel func_800B968C
/* BA28C 800B968C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BA290 800B9690 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA294 800B9694 AFA40018 */  sw         $a0, 0x18($sp)
/* BA298 800B9698 AFA5001C */  sw         $a1, 0x1c($sp)
/* BA29C 800B969C 8FAE0018 */  lw         $t6, 0x18($sp)
/* BA2A0 800B96A0 8FAF001C */  lw         $t7, 0x1c($sp)
/* BA2A4 800B96A4 C5C40000 */  lwc1       $f4, ($t6)
/* BA2A8 800B96A8 C5E60000 */  lwc1       $f6, ($t7)
/* BA2AC 800B96AC C5D00008 */  lwc1       $f16, 8($t6)
/* BA2B0 800B96B0 C5F20008 */  lwc1       $f18, 8($t7)
/* BA2B4 800B96B4 46062301 */  sub.s      $f12, $f4, $f6
/* BA2B8 800B96B8 C5C80004 */  lwc1       $f8, 4($t6)
/* BA2BC 800B96BC C5EA0004 */  lwc1       $f10, 4($t7)
/* BA2C0 800B96C0 46128101 */  sub.s      $f4, $f16, $f18
/* BA2C4 800B96C4 460A4381 */  sub.s      $f14, $f8, $f10
/* BA2C8 800B96C8 44062000 */  mfc1       $a2, $f4
/* BA2CC 800B96CC 0C016916 */  jal        func_8005A458
/* BA2D0 800B96D0 00000000 */   nop
/* BA2D4 800B96D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA2D8 800B96D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* BA2DC 800B96DC 03E00008 */  jr         $ra
/* BA2E0 800B96E0 00000000 */   nop

glabel func_800B96E4
/* BA2E4 800B96E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BA2E8 800B96E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA2EC 800B96EC AFA40018 */  sw         $a0, 0x18($sp)
/* BA2F0 800B96F0 AFA5001C */  sw         $a1, 0x1c($sp)
/* BA2F4 800B96F4 3C0E8014 */  lui        $t6, %hi(D_801442DC)
/* BA2F8 800B96F8 3C0F8014 */  lui        $t7, %hi(D_801442D8)
/* BA2FC 800B96FC 8DEF42D8 */  lw         $t7, %lo(D_801442D8)($t7)
/* BA300 800B9700 8DCE42DC */  lw         $t6, %lo(D_801442DC)($t6)
/* BA304 800B9704 01EE082A */  slt        $at, $t7, $t6
/* BA308 800B9708 10200005 */  beqz       $at, .L800B9720
/* BA30C 800B970C 00000000 */   nop
/* BA310 800B9710 0C02E480 */  jal        func_800B9200
/* BA314 800B9714 00000000 */   nop
/* BA318 800B9718 10000018 */  b          .L800B977C
/* BA31C 800B971C 00000000 */   nop
.L800B9720:
/* BA320 800B9720 8FB8001C */  lw         $t8, 0x1c($sp)
/* BA324 800B9724 2B010008 */  slti       $at, $t8, 8
/* BA328 800B9728 10200014 */  beqz       $at, .L800B977C
/* BA32C 800B972C 00000000 */   nop
/* BA330 800B9730 8FB90018 */  lw         $t9, 0x18($sp)
/* BA334 800B9734 24010003 */  addiu      $at, $zero, 3
/* BA338 800B9738 8F280070 */  lw         $t0, 0x70($t9)
/* BA33C 800B973C 310900FF */  andi       $t1, $t0, 0xff
/* BA340 800B9740 15210005 */  bne        $t1, $at, .L800B9758
/* BA344 800B9744 00000000 */   nop
/* BA348 800B9748 0C02E4E5 */  jal        func_800B9394
/* BA34C 800B974C 03202025 */   or        $a0, $t9, $zero
/* BA350 800B9750 1000000A */  b          .L800B977C
/* BA354 800B9754 00000000 */   nop
.L800B9758:
/* BA358 800B9758 8FAA001C */  lw         $t2, 0x1c($sp)
/* BA35C 800B975C 15400005 */  bnez       $t2, .L800B9774
/* BA360 800B9760 00000000 */   nop
/* BA364 800B9764 0C02E4A5 */  jal        func_800B9294
/* BA368 800B9768 8FA40018 */   lw        $a0, 0x18($sp)
/* BA36C 800B976C 10000003 */  b          .L800B977C
/* BA370 800B9770 00000000 */   nop
.L800B9774:
/* BA374 800B9774 0C02E4B0 */  jal        func_800B92C0
/* BA378 800B9778 8FA40018 */   lw        $a0, 0x18($sp)
.L800B977C:
/* BA37C 800B977C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA380 800B9780 27BD0018 */  addiu      $sp, $sp, 0x18
/* BA384 800B9784 03E00008 */  jr         $ra
/* BA388 800B9788 00000000 */   nop

glabel func_800B978C
/* BA38C 800B978C 3C0E8014 */  lui        $t6, %hi(D_801442FE)
/* BA390 800B9790 85CE42FE */  lh         $t6, %lo(D_801442FE)($t6)
/* BA394 800B9794 15C0000D */  bnez       $t6, .L800B97CC
/* BA398 800B9798 00000000 */   nop
/* BA39C 800B979C 3C0F8014 */  lui        $t7, %hi(D_801442FC)
/* BA3A0 800B97A0 85EF42FC */  lh         $t7, %lo(D_801442FC)($t7)
/* BA3A4 800B97A4 11E00009 */  beqz       $t7, .L800B97CC
/* BA3A8 800B97A8 00000000 */   nop
/* BA3AC 800B97AC 8C8800E0 */  lw         $t0, 0xe0($a0)
/* BA3B0 800B97B0 3C188014 */  lui        $t8, %hi(D_80144300)
/* BA3B4 800B97B4 27184300 */  addiu      $t8, $t8, %lo(D_80144300)
/* BA3B8 800B97B8 AF080000 */  sw         $t0, ($t8)
/* BA3BC 800B97BC 8C9900E4 */  lw         $t9, 0xe4($a0)
/* BA3C0 800B97C0 AF190004 */  sw         $t9, 4($t8)
/* BA3C4 800B97C4 8C8800E8 */  lw         $t0, 0xe8($a0)
/* BA3C8 800B97C8 AF080008 */  sw         $t0, 8($t8)
.L800B97CC:
/* BA3CC 800B97CC 3C098014 */  lui        $t1, %hi(D_80144354)
/* BA3D0 800B97D0 85294354 */  lh         $t1, %lo(D_80144354)($t1)
/* BA3D4 800B97D4 1120003D */  beqz       $t1, .L800B98CC
/* BA3D8 800B97D8 00000000 */   nop
/* BA3DC 800B97DC 3C0A8014 */  lui        $t2, %hi(D_801442E8)
/* BA3E0 800B97E0 3C0B8014 */  lui        $t3, %hi(D_801442F4)
/* BA3E4 800B97E4 856B42F4 */  lh         $t3, %lo(D_801442F4)($t3)
/* BA3E8 800B97E8 854A42E8 */  lh         $t2, %lo(D_801442E8)($t2)
/* BA3EC 800B97EC 016A082A */  slt        $at, $t3, $t2
/* BA3F0 800B97F0 10200002 */  beqz       $at, .L800B97FC
/* BA3F4 800B97F4 3C018014 */   lui       $at, %hi(D_801442F4)
/* BA3F8 800B97F8 A42A42F4 */  sh         $t2, %lo(D_801442F4)($at)
.L800B97FC:
/* BA3FC 800B97FC 3C0C8014 */  lui        $t4, %hi(D_801442F4)
/* BA400 800B9800 3C0D8014 */  lui        $t5, %hi(D_801442E4)
/* BA404 800B9804 85AD42E4 */  lh         $t5, %lo(D_801442E4)($t5)
/* BA408 800B9808 858C42F4 */  lh         $t4, %lo(D_801442F4)($t4)
/* BA40C 800B980C 118D002F */  beq        $t4, $t5, .L800B98CC
/* BA410 800B9810 00000000 */   nop
/* BA414 800B9814 3C0E8014 */  lui        $t6, %hi(D_801442E6)
/* BA418 800B9818 85CE42E6 */  lh         $t6, %lo(D_801442E6)($t6)
/* BA41C 800B981C 118E002B */  beq        $t4, $t6, .L800B98CC
/* BA420 800B9820 00000000 */   nop
/* BA424 800B9824 3C0F8014 */  lui        $t7, %hi(D_801442EA)
/* BA428 800B9828 85EF42EA */  lh         $t7, %lo(D_801442EA)($t7)
/* BA42C 800B982C 11EC0009 */  beq        $t7, $t4, .L800B9854
/* BA430 800B9830 3C018014 */   lui       $at, %hi(D_801442EA)
/* BA434 800B9834 A42C42EA */  sh         $t4, %lo(D_801442EA)($at)
/* BA438 800B9838 C48400B4 */  lwc1       $f4, 0xb4($a0)
/* BA43C 800B983C 3C018014 */  lui        $at, %hi(D_801442EC)
/* BA440 800B9840 44803000 */  mtc1       $zero, $f6
/* BA444 800B9844 E42442EC */  swc1       $f4, %lo(D_801442EC)($at)
/* BA448 800B9848 3C018014 */  lui        $at, %hi(D_801442F0)
/* BA44C 800B984C 10000011 */  b          .L800B9894
/* BA450 800B9850 E42642F0 */   swc1      $f6, %lo(D_801442F0)($at)
.L800B9854:
/* BA454 800B9854 3C018014 */  lui        $at, %hi(D_801442EC)
/* BA458 800B9858 C42842EC */  lwc1       $f8, %lo(D_801442EC)($at)
/* BA45C 800B985C C48A00B4 */  lwc1       $f10, 0xb4($a0)
/* BA460 800B9860 4608503C */  c.lt.s     $f10, $f8
/* BA464 800B9864 00000000 */  nop
/* BA468 800B9868 45000004 */  bc1f       .L800B987C
/* BA46C 800B986C 00000000 */   nop
/* BA470 800B9870 C49000B4 */  lwc1       $f16, 0xb4($a0)
/* BA474 800B9874 3C018014 */  lui        $at, %hi(D_801442EC)
/* BA478 800B9878 E43042EC */  swc1       $f16, %lo(D_801442EC)($at)
.L800B987C:
/* BA47C 800B987C 3C018014 */  lui        $at, %hi(D_801442EC)
/* BA480 800B9880 C42442EC */  lwc1       $f4, %lo(D_801442EC)($at)
/* BA484 800B9884 C49200B4 */  lwc1       $f18, 0xb4($a0)
/* BA488 800B9888 3C018014 */  lui        $at, %hi(D_801442F0)
/* BA48C 800B988C 46049181 */  sub.s      $f6, $f18, $f4
/* BA490 800B9890 E42642F0 */  swc1       $f6, %lo(D_801442F0)($at)
.L800B9894:
/* BA494 800B9894 3C018014 */  lui        $at, %hi(D_801442F0)
/* BA498 800B9898 C42842F0 */  lwc1       $f8, %lo(D_801442F0)($at)
/* BA49C 800B989C 3C014089 */  lui        $at, 0x4089
/* BA4A0 800B98A0 44818800 */  mtc1       $at, $f17
/* BA4A4 800B98A4 44808000 */  mtc1       $zero, $f16
/* BA4A8 800B98A8 460042A1 */  cvt.d.s    $f10, $f8
/* BA4AC 800B98AC 462A803C */  c.lt.d     $f16, $f10
/* BA4B0 800B98B0 00000000 */  nop
/* BA4B4 800B98B4 45000005 */  bc1f       .L800B98CC
/* BA4B8 800B98B8 00000000 */   nop
/* BA4BC 800B98BC 8C980078 */  lw         $t8, 0x78($a0)
/* BA4C0 800B98C0 3C018014 */  lui        $at, %hi(D_801442F4)
/* BA4C4 800B98C4 27190001 */  addiu      $t9, $t8, 1
/* BA4C8 800B98C8 A43942F4 */  sh         $t9, %lo(D_801442F4)($at)
.L800B98CC:
/* BA4CC 800B98CC 03E00008 */  jr         $ra
/* BA4D0 800B98D0 00000000 */   nop

glabel func_800B98D4
/* BA4D4 800B98D4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BA4D8 800B98D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA4DC 800B98DC AFA40030 */  sw         $a0, 0x30($sp)
/* BA4E0 800B98E0 8FAE0030 */  lw         $t6, 0x30($sp)
/* BA4E4 800B98E4 3C01800E */  lui        $at, %hi(D_800DF5F8)
/* BA4E8 800B98E8 C426F5F8 */  lwc1       $f6, %lo(D_800DF5F8)($at)
/* BA4EC 800B98EC C5C400B4 */  lwc1       $f4, 0xb4($t6)
/* BA4F0 800B98F0 4606203C */  c.lt.s     $f4, $f6
/* BA4F4 800B98F4 00000000 */  nop
/* BA4F8 800B98F8 45000015 */  bc1f       .L800B9950
/* BA4FC 800B98FC 00000000 */   nop
/* BA500 800B9900 3C188014 */  lui        $t8, %hi(D_801442E8)
/* BA504 800B9904 871842E8 */  lh         $t8, %lo(D_801442E8)($t8)
/* BA508 800B9908 8DCF0078 */  lw         $t7, 0x78($t6)
/* BA50C 800B990C 3C088014 */  lui        $t0, %hi(D_801442DC)
/* BA510 800B9910 8D0842DC */  lw         $t0, %lo(D_801442DC)($t0)
/* BA514 800B9914 3C0A8014 */  lui        $t2, %hi(D_801442D8)
/* BA518 800B9918 8D4A42D8 */  lw         $t2, %lo(D_801442D8)($t2)
/* BA51C 800B991C 01F8C823 */  subu       $t9, $t7, $t8
/* BA520 800B9920 3C018014 */  lui        $at, %hi(D_801442DC)
/* BA524 800B9924 01194821 */  addu       $t1, $t0, $t9
/* BA528 800B9928 AC2942DC */  sw         $t1, %lo(D_801442DC)($at)
/* BA52C 800B992C 0149082A */  slt        $at, $t2, $t1
/* BA530 800B9930 10200005 */  beqz       $at, .L800B9948
/* BA534 800B9934 00000000 */   nop
/* BA538 800B9938 0C02E480 */  jal        func_800B9200
/* BA53C 800B993C 00000000 */   nop
/* BA540 800B9940 10000003 */  b          .L800B9950
/* BA544 800B9944 00000000 */   nop
.L800B9948:
/* BA548 800B9948 0C02E4E5 */  jal        func_800B9394
/* BA54C 800B994C 8FA40030 */   lw        $a0, 0x30($sp)
.L800B9950:
/* BA550 800B9950 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA554 800B9954 27BD0030 */  addiu      $sp, $sp, 0x30
/* BA558 800B9958 03E00008 */  jr         $ra
/* BA55C 800B995C 00000000 */   nop

glabel func_800B9960
/* BA560 800B9960 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA564 800B9964 AFBF001C */  sw         $ra, 0x1c($sp)
/* BA568 800B9968 AFA40028 */  sw         $a0, 0x28($sp)
/* BA56C 800B996C 3C0E8016 */  lui        $t6, %hi(D_8015FB88)
/* BA570 800B9970 8DCEFB88 */  lw         $t6, %lo(D_8015FB88)($t6)
/* BA574 800B9974 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* BA578 800B9978 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* BA57C 800B997C 000E7880 */  sll        $t7, $t6, 2
/* BA580 800B9980 01EE7823 */  subu       $t7, $t7, $t6
/* BA584 800B9984 000F7880 */  sll        $t7, $t7, 2
/* BA588 800B9988 01EE7823 */  subu       $t7, $t7, $t6
/* BA58C 800B998C 000F7880 */  sll        $t7, $t7, 2
/* BA590 800B9990 01EE7821 */  addu       $t7, $t7, $t6
/* BA594 800B9994 000F7880 */  sll        $t7, $t7, 2
/* BA598 800B9998 01EE7823 */  subu       $t7, $t7, $t6
/* BA59C 800B999C 8FA40028 */  lw         $a0, 0x28($sp)
/* BA5A0 800B99A0 000F7880 */  sll        $t7, $t7, 2
/* BA5A4 800B99A4 01F82821 */  addu       $a1, $t7, $t8
/* BA5A8 800B99A8 AFA00024 */  sw         $zero, 0x24($sp)
/* BA5AC 800B99AC 24A500E0 */  addiu      $a1, $a1, 0xe0
/* BA5B0 800B99B0 0C02E5A3 */  jal        func_800B968C
/* BA5B4 800B99B4 248400E0 */   addiu     $a0, $a0, 0xe0
/* BA5B8 800B99B8 8FB90028 */  lw         $t9, 0x28($sp)
/* BA5BC 800B99BC E72000B4 */  swc1       $f0, 0xb4($t9)
/* BA5C0 800B99C0 8FA80028 */  lw         $t0, 0x28($sp)
/* BA5C4 800B99C4 8D090070 */  lw         $t1, 0x70($t0)
/* BA5C8 800B99C8 312A00FF */  andi       $t2, $t1, 0xff
/* BA5CC 800B99CC 254BFFFF */  addiu      $t3, $t2, -1
/* BA5D0 800B99D0 2D610007 */  sltiu      $at, $t3, 7
/* BA5D4 800B99D4 1020004E */  beqz       $at, .L800B9B10
/* BA5D8 800B99D8 00000000 */   nop
/* BA5DC 800B99DC 000B5880 */  sll        $t3, $t3, 2
/* BA5E0 800B99E0 3C01800E */  lui        $at, %hi(D_800DF5FC)
/* BA5E4 800B99E4 002B0821 */  addu       $at, $at, $t3
/* BA5E8 800B99E8 8C2BF5FC */  lw         $t3, %lo(D_800DF5FC)($at)
/* BA5EC 800B99EC 01600008 */  jr         $t3
/* BA5F0 800B99F0 00000000 */   nop
/* BA5F4 800B99F4 8FAC0028 */  lw         $t4, 0x28($sp)
/* BA5F8 800B99F8 3C01800E */  lui        $at, %hi(D_800DF618)
/* BA5FC 800B99FC C426F618 */  lwc1       $f6, %lo(D_800DF618)($at)
/* BA600 800B9A00 C58400B4 */  lwc1       $f4, 0xb4($t4)
/* BA604 800B9A04 4606203C */  c.lt.s     $f4, $f6
/* BA608 800B9A08 00000000 */  nop
/* BA60C 800B9A0C 4500005C */  bc1f       .L800B9B80
/* BA610 800B9A10 00000000 */   nop
/* BA614 800B9A14 0C02E500 */  jal        func_800B9400
/* BA618 800B9A18 01802025 */   or        $a0, $t4, $zero
/* BA61C 800B9A1C 10000058 */  b          .L800B9B80
/* BA620 800B9A20 00000000 */   nop
/* BA624 800B9A24 8FAD0028 */  lw         $t5, 0x28($sp)
/* BA628 800B9A28 3C01800E */  lui        $at, %hi(D_800DF61C)
/* BA62C 800B9A2C C42AF61C */  lwc1       $f10, %lo(D_800DF61C)($at)
/* BA630 800B9A30 C5A800B4 */  lwc1       $f8, 0xb4($t5)
/* BA634 800B9A34 460A403C */  c.lt.s     $f8, $f10
/* BA638 800B9A38 00000000 */  nop
/* BA63C 800B9A3C 45000050 */  bc1f       .L800B9B80
/* BA640 800B9A40 00000000 */   nop
/* BA644 800B9A44 0C02E4E5 */  jal        func_800B9394
/* BA648 800B9A48 01A02025 */   or        $a0, $t5, $zero
/* BA64C 800B9A4C 1000004C */  b          .L800B9B80
/* BA650 800B9A50 00000000 */   nop
/* BA654 800B9A54 0C02E635 */  jal        func_800B98D4
/* BA658 800B9A58 8FA40028 */   lw        $a0, 0x28($sp)
/* BA65C 800B9A5C 10000048 */  b          .L800B9B80
/* BA660 800B9A60 00000000 */   nop
/* BA664 800B9A64 8FAE0028 */  lw         $t6, 0x28($sp)
/* BA668 800B9A68 3C01800E */  lui        $at, %hi(D_800DF620)
/* BA66C 800B9A6C C432F620 */  lwc1       $f18, %lo(D_800DF620)($at)
/* BA670 800B9A70 C5D000B4 */  lwc1       $f16, 0xb4($t6)
/* BA674 800B9A74 4612803C */  c.lt.s     $f16, $f18
/* BA678 800B9A78 00000000 */  nop
/* BA67C 800B9A7C 45000040 */  bc1f       .L800B9B80
/* BA680 800B9A80 00000000 */   nop
/* BA684 800B9A84 8DCF0078 */  lw         $t7, 0x78($t6)
/* BA688 800B9A88 3C018014 */  lui        $at, %hi(D_801442E8)
/* BA68C 800B9A8C 01C02025 */  or         $a0, $t6, $zero
/* BA690 800B9A90 25F80001 */  addiu      $t8, $t7, 1
/* BA694 800B9A94 0C02E4A5 */  jal        func_800B9294
/* BA698 800B9A98 A43842E8 */   sh        $t8, %lo(D_801442E8)($at)
/* BA69C 800B9A9C 10000038 */  b          .L800B9B80
/* BA6A0 800B9AA0 00000000 */   nop
/* BA6A4 800B9AA4 8FB90028 */  lw         $t9, 0x28($sp)
/* BA6A8 800B9AA8 3C01800E */  lui        $at, %hi(D_800DF624)
/* BA6AC 800B9AAC C426F624 */  lwc1       $f6, %lo(D_800DF624)($at)
/* BA6B0 800B9AB0 C72400B4 */  lwc1       $f4, 0xb4($t9)
/* BA6B4 800B9AB4 4606203C */  c.lt.s     $f4, $f6
/* BA6B8 800B9AB8 00000000 */  nop
/* BA6BC 800B9ABC 45000014 */  bc1f       .L800B9B10
/* BA6C0 800B9AC0 00000000 */   nop
/* BA6C4 800B9AC4 3C08801C */  lui        $t0, %hi(D_801C5D40)
/* BA6C8 800B9AC8 25085D40 */  addiu      $t0, $t0, %lo(D_801C5D40)
/* BA6CC 800B9ACC 8D04026C */  lw         $a0, 0x26c($t0)
/* BA6D0 800B9AD0 240900A0 */  addiu      $t1, $zero, 0xa0
/* BA6D4 800B9AD4 240A0050 */  addiu      $t2, $zero, 0x50
/* BA6D8 800B9AD8 AFAA0014 */  sw         $t2, 0x14($sp)
/* BA6DC 800B9ADC AFA90010 */  sw         $t1, 0x10($sp)
/* BA6E0 800B9AE0 3C054000 */  lui        $a1, 0x4000
/* BA6E4 800B9AE4 24060030 */  addiu      $a2, $zero, 0x30
/* BA6E8 800B9AE8 0C0209BC */  jal        func_800826F0
/* BA6EC 800B9AEC 2407FFFF */   addiu     $a3, $zero, -1
/* BA6F0 800B9AF0 3C018018 */  lui        $at, %hi(D_8017ABD4)
/* BA6F4 800B9AF4 A420ABD4 */  sh         $zero, %lo(D_8017ABD4)($at)
/* BA6F8 800B9AF8 0C02E3FC */  jal        func_800B8FF0
/* BA6FC 800B9AFC 24040005 */   addiu     $a0, $zero, 5
/* BA700 800B9B00 8FAB0028 */  lw         $t3, 0x28($sp)
/* BA704 800B9B04 3C018014 */  lui        $at, %hi(D_8014434E)
/* BA708 800B9B08 A420434E */  sh         $zero, %lo(D_8014434E)($at)
/* BA70C 800B9B0C AD600070 */  sw         $zero, 0x70($t3)
.L800B9B10:
/* BA710 800B9B10 8FAC0028 */  lw         $t4, 0x28($sp)
/* BA714 800B9B14 3C01800E */  lui        $at, %hi(D_800DF628)
/* BA718 800B9B18 C42AF628 */  lwc1       $f10, %lo(D_800DF628)($at)
/* BA71C 800B9B1C C58800B4 */  lwc1       $f8, 0xb4($t4)
/* BA720 800B9B20 460A403C */  c.lt.s     $f8, $f10
/* BA724 800B9B24 00000000 */  nop
/* BA728 800B9B28 45000015 */  bc1f       .L800B9B80
/* BA72C 800B9B2C 00000000 */   nop
/* BA730 800B9B30 3C0F8014 */  lui        $t7, %hi(D_801442E8)
/* BA734 800B9B34 85EF42E8 */  lh         $t7, %lo(D_801442E8)($t7)
/* BA738 800B9B38 8D8D0078 */  lw         $t5, 0x78($t4)
/* BA73C 800B9B3C 01AF082A */  slt        $at, $t5, $t7
/* BA740 800B9B40 1420000C */  bnez       $at, .L800B9B74
/* BA744 800B9B44 00000000 */   nop
/* BA748 800B9B48 3C0E8014 */  lui        $t6, %hi(D_801442DC)
/* BA74C 800B9B4C 8DCE42DC */  lw         $t6, %lo(D_801442DC)($t6)
/* BA750 800B9B50 01AFC023 */  subu       $t8, $t5, $t7
/* BA754 800B9B54 3C018014 */  lui        $at, %hi(D_801442DC)
/* BA758 800B9B58 01D8C821 */  addu       $t9, $t6, $t8
/* BA75C 800B9B5C AFB80024 */  sw         $t8, 0x24($sp)
/* BA760 800B9B60 AC3942DC */  sw         $t9, %lo(D_801442DC)($at)
/* BA764 800B9B64 8D880078 */  lw         $t0, 0x78($t4)
/* BA768 800B9B68 3C018014 */  lui        $at, %hi(D_801442E8)
/* BA76C 800B9B6C 25090001 */  addiu      $t1, $t0, 1
/* BA770 800B9B70 A42942E8 */  sh         $t1, %lo(D_801442E8)($at)
.L800B9B74:
/* BA774 800B9B74 8FA40028 */  lw         $a0, 0x28($sp)
/* BA778 800B9B78 0C02E5B9 */  jal        func_800B96E4
/* BA77C 800B9B7C 8FA50024 */   lw        $a1, 0x24($sp)
.L800B9B80:
/* BA780 800B9B80 8FAA0028 */  lw         $t2, 0x28($sp)
/* BA784 800B9B84 3C0D8014 */  lui        $t5, %hi(D_801442E8)
/* BA788 800B9B88 85AD42E8 */  lh         $t5, %lo(D_801442E8)($t5)
/* BA78C 800B9B8C 8D4B0078 */  lw         $t3, 0x78($t2)
/* BA790 800B9B90 156D0011 */  bne        $t3, $t5, .L800B9BD8
/* BA794 800B9B94 00000000 */   nop
/* BA798 800B9B98 3C0F8014 */  lui        $t7, %hi(D_801442FE)
/* BA79C 800B9B9C 85EF42FE */  lh         $t7, %lo(D_801442FE)($t7)
/* BA7A0 800B9BA0 15E0000D */  bnez       $t7, .L800B9BD8
/* BA7A4 800B9BA4 00000000 */   nop
/* BA7A8 800B9BA8 3C0E8014 */  lui        $t6, %hi(D_801442FC)
/* BA7AC 800B9BAC 85CE42FC */  lh         $t6, %lo(D_801442FC)($t6)
/* BA7B0 800B9BB0 11C00009 */  beqz       $t6, .L800B9BD8
/* BA7B4 800B9BB4 00000000 */   nop
/* BA7B8 800B9BB8 8D4C00E0 */  lw         $t4, 0xe0($t2)
/* BA7BC 800B9BBC 3C188014 */  lui        $t8, %hi(D_80144300)
/* BA7C0 800B9BC0 27184300 */  addiu      $t8, $t8, %lo(D_80144300)
/* BA7C4 800B9BC4 AF0C0000 */  sw         $t4, ($t8)
/* BA7C8 800B9BC8 8D5900E4 */  lw         $t9, 0xe4($t2)
/* BA7CC 800B9BCC AF190004 */  sw         $t9, 4($t8)
/* BA7D0 800B9BD0 8D4C00E8 */  lw         $t4, 0xe8($t2)
/* BA7D4 800B9BD4 AF0C0008 */  sw         $t4, 8($t8)
.L800B9BD8:
/* BA7D8 800B9BD8 3C088014 */  lui        $t0, %hi(D_80144354)
/* BA7DC 800B9BDC 85084354 */  lh         $t0, %lo(D_80144354)($t0)
/* BA7E0 800B9BE0 11000009 */  beqz       $t0, .L800B9C08
/* BA7E4 800B9BE4 00000000 */   nop
/* BA7E8 800B9BE8 8FA90028 */  lw         $t1, 0x28($sp)
/* BA7EC 800B9BEC 3C0D8014 */  lui        $t5, %hi(D_801442F4)
/* BA7F0 800B9BF0 85AD42F4 */  lh         $t5, %lo(D_801442F4)($t5)
/* BA7F4 800B9BF4 8D2B0078 */  lw         $t3, 0x78($t1)
/* BA7F8 800B9BF8 156D0003 */  bne        $t3, $t5, .L800B9C08
/* BA7FC 800B9BFC 00000000 */   nop
/* BA800 800B9C00 0C02E5E3 */  jal        func_800B978C
/* BA804 800B9C04 01202025 */   or        $a0, $t1, $zero
.L800B9C08:
/* BA808 800B9C08 8FBF001C */  lw         $ra, 0x1c($sp)
/* BA80C 800B9C0C 27BD0028 */  addiu      $sp, $sp, 0x28
/* BA810 800B9C10 03E00008 */  jr         $ra
/* BA814 800B9C14 00000000 */   nop

glabel func_800B9C18
/* BA818 800B9C18 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA81C 800B9C1C AFBF001C */  sw         $ra, 0x1c($sp)
/* BA820 800B9C20 AFA40028 */  sw         $a0, 0x28($sp)
/* BA824 800B9C24 AFB00018 */  sw         $s0, 0x18($sp)
/* BA828 800B9C28 8FAE0028 */  lw         $t6, 0x28($sp)
/* BA82C 800B9C2C 3C01800E */  lui        $at, %hi(D_800DF630)
/* BA830 800B9C30 D428F630 */  ldc1       $f8, %lo(D_800DF630)($at)
/* BA834 800B9C34 C5C400B4 */  lwc1       $f4, 0xb4($t6)
/* BA838 800B9C38 460021A1 */  cvt.d.s    $f6, $f4
/* BA83C 800B9C3C 4628303C */  c.lt.d     $f6, $f8
/* BA840 800B9C40 00000000 */  nop
/* BA844 800B9C44 45000024 */  bc1f       .L800B9CD8
/* BA848 800B9C48 00000000 */   nop
/* BA84C 800B9C4C 8DD00070 */  lw         $s0, 0x70($t6)
/* BA850 800B9C50 24010200 */  addiu      $at, $zero, 0x200
/* BA854 800B9C54 3210FF00 */  andi       $s0, $s0, 0xff00
/* BA858 800B9C58 1201001F */  beq        $s0, $at, .L800B9CD8
/* BA85C 800B9C5C 24010300 */   addiu     $at, $zero, 0x300
/* BA860 800B9C60 1201001D */  beq        $s0, $at, .L800B9CD8
/* BA864 800B9C64 34018100 */   ori       $at, $zero, 0x8100
/* BA868 800B9C68 12010009 */  beq        $s0, $at, .L800B9C90
/* BA86C 800B9C6C 34018200 */   ori       $at, $zero, 0x8200
/* BA870 800B9C70 1201000B */  beq        $s0, $at, .L800B9CA0
/* BA874 800B9C74 34018300 */   ori       $at, $zero, 0x8300
/* BA878 800B9C78 1201000D */  beq        $s0, $at, .L800B9CB0
/* BA87C 800B9C7C 34018700 */   ori       $at, $zero, 0x8700
/* BA880 800B9C80 1201000F */  beq        $s0, $at, .L800B9CC0
/* BA884 800B9C84 00000000 */   nop
/* BA888 800B9C88 10000011 */  b          .L800B9CD0
/* BA88C 800B9C8C 00000000 */   nop
.L800B9C90:
/* BA890 800B9C90 0C02E28D */  jal        func_800B8A34
/* BA894 800B9C94 8FA40028 */   lw        $a0, 0x28($sp)
/* BA898 800B9C98 1000000F */  b          .L800B9CD8
/* BA89C 800B9C9C 00000000 */   nop
.L800B9CA0:
/* BA8A0 800B9CA0 0C02E2BB */  jal        func_800B8AEC
/* BA8A4 800B9CA4 8FA40028 */   lw        $a0, 0x28($sp)
/* BA8A8 800B9CA8 1000000B */  b          .L800B9CD8
/* BA8AC 800B9CAC 00000000 */   nop
.L800B9CB0:
/* BA8B0 800B9CB0 0C02E308 */  jal        func_800B8C20
/* BA8B4 800B9CB4 8FA40028 */   lw        $a0, 0x28($sp)
/* BA8B8 800B9CB8 10000007 */  b          .L800B9CD8
/* BA8BC 800B9CBC 00000000 */   nop
.L800B9CC0:
/* BA8C0 800B9CC0 0C02E329 */  jal        func_800B8CA4
/* BA8C4 800B9CC4 8FA40028 */   lw        $a0, 0x28($sp)
/* BA8C8 800B9CC8 10000003 */  b          .L800B9CD8
/* BA8CC 800B9CCC 00000000 */   nop
.L800B9CD0:
/* BA8D0 800B9CD0 0C02E284 */  jal        func_800B8A10
/* BA8D4 800B9CD4 8FA40028 */   lw        $a0, 0x28($sp)
.L800B9CD8:
/* BA8D8 800B9CD8 8FAF0028 */  lw         $t7, 0x28($sp)
/* BA8DC 800B9CDC C5EA00F0 */  lwc1       $f10, 0xf0($t7)
/* BA8E0 800B9CE0 C5F000F4 */  lwc1       $f16, 0xf4($t7)
/* BA8E4 800B9CE4 0C00444C */  jal        func_80011130
/* BA8E8 800B9CE8 46105300 */   add.s     $f12, $f10, $f16
/* BA8EC 800B9CEC 8FB80028 */  lw         $t8, 0x28($sp)
/* BA8F0 800B9CF0 E70000F0 */  swc1       $f0, 0xf0($t8)
/* BA8F4 800B9CF4 8FB90028 */  lw         $t9, 0x28($sp)
/* BA8F8 800B9CF8 C7320104 */  lwc1       $f18, 0x104($t9)
/* BA8FC 800B9CFC C7240108 */  lwc1       $f4, 0x108($t9)
/* BA900 800B9D00 0C00444C */  jal        func_80011130
/* BA904 800B9D04 46049300 */   add.s     $f12, $f18, $f4
/* BA908 800B9D08 8FA80028 */  lw         $t0, 0x28($sp)
/* BA90C 800B9D0C E5000104 */  swc1       $f0, 0x104($t0)
/* BA910 800B9D10 8FA90028 */  lw         $t1, 0x28($sp)
/* BA914 800B9D14 C5260114 */  lwc1       $f6, 0x114($t1)
/* BA918 800B9D18 C5280118 */  lwc1       $f8, 0x118($t1)
/* BA91C 800B9D1C 0C00444C */  jal        func_80011130
/* BA920 800B9D20 46083300 */   add.s     $f12, $f6, $f8
/* BA924 800B9D24 8FAA0028 */  lw         $t2, 0x28($sp)
/* BA928 800B9D28 E5400114 */  swc1       $f0, 0x114($t2)
/* BA92C 800B9D2C 8FBF001C */  lw         $ra, 0x1c($sp)
/* BA930 800B9D30 8FB00018 */  lw         $s0, 0x18($sp)
/* BA934 800B9D34 27BD0028 */  addiu      $sp, $sp, 0x28
/* BA938 800B9D38 03E00008 */  jr         $ra
/* BA93C 800B9D3C 00000000 */   nop

glabel func_800B9D40
/* BA940 800B9D40 27BDFFF8 */  addiu      $sp, $sp, -8
/* BA944 800B9D44 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* BA948 800B9D48 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* BA94C 800B9D4C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* BA950 800B9D50 3C180102 */  lui        $t8, 0x102
/* BA954 800B9D54 AFAE0004 */  sw         $t6, 4($sp)
/* BA958 800B9D58 8FB90004 */  lw         $t9, 4($sp)
/* BA95C 800B9D5C 25CF0008 */  addiu      $t7, $t6, 8
/* BA960 800B9D60 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* BA964 800B9D64 37180040 */  ori        $t8, $t8, 0x40
/* BA968 800B9D68 3C08800F */  lui        $t0, %hi(D_800F2A68)
/* BA96C 800B9D6C AF380000 */  sw         $t8, ($t9)
/* BA970 800B9D70 8D082A68 */  lw         $t0, %lo(D_800F2A68)($t0)
/* BA974 800B9D74 8FAA0004 */  lw         $t2, 4($sp)
/* BA978 800B9D78 3C018000 */  lui        $at, 0x8000
/* BA97C 800B9D7C 01014821 */  addu       $t1, $t0, $at
/* BA980 800B9D80 3C0B800F */  lui        $t3, %hi(D_800F2A68)
/* BA984 800B9D84 AD490004 */  sw         $t1, 4($t2)
/* BA988 800B9D88 8D6B2A68 */  lw         $t3, %lo(D_800F2A68)($t3)
/* BA98C 800B9D8C 3C01800F */  lui        $at, %hi(D_800F2A68)
/* BA990 800B9D90 256C0040 */  addiu      $t4, $t3, 0x40
/* BA994 800B9D94 AC2C2A68 */  sw         $t4, %lo(D_800F2A68)($at)
/* BA998 800B9D98 2484FFFF */  addiu      $a0, $a0, -1
/* BA99C 800B9D9C 10800019 */  beqz       $a0, .L800B9E04
/* BA9A0 800B9DA0 00000000 */   nop
.L800B9DA4:
/* BA9A4 800B9DA4 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* BA9A8 800B9DA8 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* BA9AC 800B9DAC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* BA9B0 800B9DB0 3C0F0100 */  lui        $t7, 0x100
/* BA9B4 800B9DB4 AFAD0000 */  sw         $t5, ($sp)
/* BA9B8 800B9DB8 8FB80000 */  lw         $t8, ($sp)
/* BA9BC 800B9DBC 25AE0008 */  addiu      $t6, $t5, 8
/* BA9C0 800B9DC0 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* BA9C4 800B9DC4 35EF0040 */  ori        $t7, $t7, 0x40
/* BA9C8 800B9DC8 3C19800F */  lui        $t9, %hi(D_800F2A68)
/* BA9CC 800B9DCC AF0F0000 */  sw         $t7, ($t8)
/* BA9D0 800B9DD0 8F392A68 */  lw         $t9, %lo(D_800F2A68)($t9)
/* BA9D4 800B9DD4 8FA90000 */  lw         $t1, ($sp)
/* BA9D8 800B9DD8 3C018000 */  lui        $at, 0x8000
/* BA9DC 800B9DDC 03214021 */  addu       $t0, $t9, $at
/* BA9E0 800B9DE0 3C0A800F */  lui        $t2, %hi(D_800F2A68)
/* BA9E4 800B9DE4 AD280004 */  sw         $t0, 4($t1)
/* BA9E8 800B9DE8 8D4A2A68 */  lw         $t2, %lo(D_800F2A68)($t2)
/* BA9EC 800B9DEC 3C01800F */  lui        $at, %hi(D_800F2A68)
/* BA9F0 800B9DF0 254B0040 */  addiu      $t3, $t2, 0x40
/* BA9F4 800B9DF4 AC2B2A68 */  sw         $t3, %lo(D_800F2A68)($at)
/* BA9F8 800B9DF8 2484FFFF */  addiu      $a0, $a0, -1
/* BA9FC 800B9DFC 1480FFE9 */  bnez       $a0, .L800B9DA4
/* BAA00 800B9E00 00000000 */   nop
.L800B9E04:
/* BAA04 800B9E04 03E00008 */  jr         $ra
/* BAA08 800B9E08 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B9E0C
/* BAA0C 800B9E0C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BAA10 800B9E10 AFBF001C */  sw         $ra, 0x1c($sp)
/* BAA14 800B9E14 AFA40030 */  sw         $a0, 0x30($sp)
/* BAA18 800B9E18 8FAE0030 */  lw         $t6, 0x30($sp)
/* BAA1C 800B9E1C 3C01800D */  lui        $at, %hi(D_800D7F84)
/* BAA20 800B9E20 C4267F84 */  lwc1       $f6, %lo(D_800D7F84)($at)
/* BAA24 800B9E24 C5C40000 */  lwc1       $f4, ($t6)
/* BAA28 800B9E28 C5CA0004 */  lwc1       $f10, 4($t6)
/* BAA2C 800B9E2C C5D20008 */  lwc1       $f18, 8($t6)
/* BAA30 800B9E30 46062202 */  mul.s      $f8, $f4, $f6
/* BAA34 800B9E34 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BAA38 800B9E38 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BAA3C 800B9E3C 46065402 */  mul.s      $f16, $f10, $f6
/* BAA40 800B9E40 00000000 */  nop
/* BAA44 800B9E44 46069102 */  mul.s      $f4, $f18, $f6
/* BAA48 800B9E48 44054000 */  mfc1       $a1, $f8
/* BAA4C 800B9E4C 44068000 */  mfc1       $a2, $f16
/* BAA50 800B9E50 44072000 */  mfc1       $a3, $f4
/* BAA54 800B9E54 0C034602 */  jal        func_800D1808
/* BAA58 800B9E58 00000000 */   nop
/* BAA5C 800B9E5C 3C01800D */  lui        $at, %hi(D_800D7F84)
/* BAA60 800B9E60 C4287F84 */  lwc1       $f8, %lo(D_800D7F84)($at)
/* BAA64 800B9E64 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BAA68 800B9E68 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BAA6C 800B9E6C 44054000 */  mfc1       $a1, $f8
/* BAA70 800B9E70 44064000 */  mfc1       $a2, $f8
/* BAA74 800B9E74 44074000 */  mfc1       $a3, $f8
/* BAA78 800B9E78 0C02F8F1 */  jal        func_800BE3C4
/* BAA7C 800B9E7C 24840040 */   addiu     $a0, $a0, 0x40
/* BAA80 800B9E80 8FAF0030 */  lw         $t7, 0x30($sp)
/* BAA84 800B9E84 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BAA88 800B9E88 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BAA8C 800B9E8C 44805000 */  mtc1       $zero, $f10
/* BAA90 800B9E90 8DE5000C */  lw         $a1, 0xc($t7)
/* BAA94 800B9E94 24060000 */  addiu      $a2, $zero, 0
/* BAA98 800B9E98 3C073F80 */  lui        $a3, 0x3f80
/* BAA9C 800B9E9C 24840080 */  addiu      $a0, $a0, 0x80
/* BAAA0 800B9EA0 0C033A45 */  jal        func_800CE914
/* BAAA4 800B9EA4 E7AA0010 */   swc1      $f10, 0x10($sp)
/* BAAA8 800B9EA8 8FB80030 */  lw         $t8, 0x30($sp)
/* BAAAC 800B9EAC 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BAAB0 800B9EB0 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BAAB4 800B9EB4 44808000 */  mtc1       $zero, $f16
/* BAAB8 800B9EB8 8F050010 */  lw         $a1, 0x10($t8)
/* BAABC 800B9EBC 3C063F80 */  lui        $a2, 0x3f80
/* BAAC0 800B9EC0 24070000 */  addiu      $a3, $zero, 0
/* BAAC4 800B9EC4 248400C0 */  addiu      $a0, $a0, 0xc0
/* BAAC8 800B9EC8 0C033A45 */  jal        func_800CE914
/* BAACC 800B9ECC E7B00010 */   swc1      $f16, 0x10($sp)
/* BAAD0 800B9ED0 8FB90030 */  lw         $t9, 0x30($sp)
/* BAAD4 800B9ED4 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BAAD8 800B9ED8 3C013F80 */  lui        $at, 0x3f80
/* BAADC 800B9EDC 44819000 */  mtc1       $at, $f18
/* BAAE0 800B9EE0 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BAAE4 800B9EE4 8F250014 */  lw         $a1, 0x14($t9)
/* BAAE8 800B9EE8 24060000 */  addiu      $a2, $zero, 0
/* BAAEC 800B9EEC 24070000 */  addiu      $a3, $zero, 0
/* BAAF0 800B9EF0 E7B20010 */  swc1       $f18, 0x10($sp)
/* BAAF4 800B9EF4 0C033A45 */  jal        func_800CE914
/* BAAF8 800B9EF8 24840100 */   addiu     $a0, $a0, 0x100
/* BAAFC 800B9EFC 8FA80030 */  lw         $t0, 0x30($sp)
/* BAB00 800B9F00 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BAB04 800B9F04 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BAB08 800B9F08 C5060024 */  lwc1       $f6, 0x24($t0)
/* BAB0C 800B9F0C 24840140 */  addiu      $a0, $a0, 0x140
/* BAB10 800B9F10 44053000 */  mfc1       $a1, $f6
/* BAB14 800B9F14 44063000 */  mfc1       $a2, $f6
/* BAB18 800B9F18 44073000 */  mfc1       $a3, $f6
/* BAB1C 800B9F1C 0C02F8F1 */  jal        func_800BE3C4
/* BAB20 800B9F20 00000000 */   nop
/* BAB24 800B9F24 8FA90030 */  lw         $t1, 0x30($sp)
/* BAB28 800B9F28 8D2A0018 */  lw         $t2, 0x18($t1)
/* BAB2C 800B9F2C 1140001B */  beqz       $t2, .L800B9F9C
/* BAB30 800B9F30 00000000 */   nop
/* BAB34 800B9F34 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* BAB38 800B9F38 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* BAB3C 800B9F3C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* BAB40 800B9F40 3C0DFB00 */  lui        $t5, 0xfb00
/* BAB44 800B9F44 AFAB002C */  sw         $t3, 0x2c($sp)
/* BAB48 800B9F48 8FAE002C */  lw         $t6, 0x2c($sp)
/* BAB4C 800B9F4C 256C0008 */  addiu      $t4, $t3, 8
/* BAB50 800B9F50 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* BAB54 800B9F54 ADCD0000 */  sw         $t5, ($t6)
/* BAB58 800B9F58 8FAF0030 */  lw         $t7, 0x30($sp)
/* BAB5C 800B9F5C 91E90021 */  lbu        $t1, 0x21($t7)
/* BAB60 800B9F60 91F80020 */  lbu        $t8, 0x20($t7)
/* BAB64 800B9F64 91ED0022 */  lbu        $t5, 0x22($t7)
/* BAB68 800B9F68 312A00FF */  andi       $t2, $t1, 0xff
/* BAB6C 800B9F6C 331900FF */  andi       $t9, $t8, 0xff
/* BAB70 800B9F70 91E90023 */  lbu        $t1, 0x23($t7)
/* BAB74 800B9F74 00194600 */  sll        $t0, $t9, 0x18
/* BAB78 800B9F78 000A5C00 */  sll        $t3, $t2, 0x10
/* BAB7C 800B9F7C 010B6025 */  or         $t4, $t0, $t3
/* BAB80 800B9F80 31AE00FF */  andi       $t6, $t5, 0xff
/* BAB84 800B9F84 8FAB002C */  lw         $t3, 0x2c($sp)
/* BAB88 800B9F88 000EC200 */  sll        $t8, $t6, 8
/* BAB8C 800B9F8C 0198C825 */  or         $t9, $t4, $t8
/* BAB90 800B9F90 312A00FF */  andi       $t2, $t1, 0xff
/* BAB94 800B9F94 032A4025 */  or         $t0, $t9, $t2
/* BAB98 800B9F98 AD680004 */  sw         $t0, 4($t3)
.L800B9F9C:
/* BAB9C 800B9F9C 0C02E750 */  jal        func_800B9D40
/* BABA0 800B9FA0 24040006 */   addiu     $a0, $zero, 6
/* BABA4 800B9FA4 8FAD0030 */  lw         $t5, 0x30($sp)
/* BABA8 800B9FA8 8DAE001C */  lw         $t6, 0x1c($t5)
/* BABAC 800B9FAC 11C0001C */  beqz       $t6, .L800BA020
/* BABB0 800B9FB0 00000000 */   nop
/* BABB4 800B9FB4 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* BABB8 800B9FB8 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* BABBC 800B9FBC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* BABC0 800B9FC0 3C0FFA00 */  lui        $t7, 0xfa00
/* BABC4 800B9FC4 AFAC0028 */  sw         $t4, 0x28($sp)
/* BABC8 800B9FC8 8FA90028 */  lw         $t1, 0x28($sp)
/* BABCC 800B9FCC 25980008 */  addiu      $t8, $t4, 8
/* BABD0 800B9FD0 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* BABD4 800B9FD4 35EFFFFF */  ori        $t7, $t7, 0xffff
/* BABD8 800B9FD8 AD2F0000 */  sw         $t7, ($t1)
/* BABDC 800B9FDC 8FB90030 */  lw         $t9, 0x30($sp)
/* BABE0 800B9FE0 932D0021 */  lbu        $t5, 0x21($t9)
/* BABE4 800B9FE4 932A0020 */  lbu        $t2, 0x20($t9)
/* BABE8 800B9FE8 932F0022 */  lbu        $t7, 0x22($t9)
/* BABEC 800B9FEC 31AE00FF */  andi       $t6, $t5, 0xff
/* BABF0 800B9FF0 314800FF */  andi       $t0, $t2, 0xff
/* BABF4 800B9FF4 932D0023 */  lbu        $t5, 0x23($t9)
/* BABF8 800B9FF8 00085E00 */  sll        $t3, $t0, 0x18
/* BABFC 800B9FFC 000E6400 */  sll        $t4, $t6, 0x10
/* BAC00 800BA000 016CC025 */  or         $t8, $t3, $t4
/* BAC04 800BA004 31E900FF */  andi       $t1, $t7, 0xff
/* BAC08 800BA008 8FAC0028 */  lw         $t4, 0x28($sp)
/* BAC0C 800BA00C 00095200 */  sll        $t2, $t1, 8
/* BAC10 800BA010 030A4025 */  or         $t0, $t8, $t2
/* BAC14 800BA014 31AE00FF */  andi       $t6, $t5, 0xff
/* BAC18 800BA018 010E5825 */  or         $t3, $t0, $t6
/* BAC1C 800BA01C AD8B0004 */  sw         $t3, 4($t4)
.L800BA020:
/* BAC20 800BA020 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* BAC24 800BA024 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* BAC28 800BA028 3C01800F */  lui        $at, %hi(D_800F2A64)
/* BAC2C 800BA02C 3C180600 */  lui        $t8, 0x600
/* BAC30 800BA030 AFAF0024 */  sw         $t7, 0x24($sp)
/* BAC34 800BA034 8FAA0024 */  lw         $t2, 0x24($sp)
/* BAC38 800BA038 25E90008 */  addiu      $t1, $t7, 8
/* BAC3C 800BA03C AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* BAC40 800BA040 AD580000 */  sw         $t8, ($t2)
/* BAC44 800BA044 8FB90030 */  lw         $t9, 0x30($sp)
/* BAC48 800BA048 8FA80024 */  lw         $t0, 0x24($sp)
/* BAC4C 800BA04C 8F2D0028 */  lw         $t5, 0x28($t9)
/* BAC50 800BA050 AD0D0004 */  sw         $t5, 4($t0)
/* BAC54 800BA054 8FBF001C */  lw         $ra, 0x1c($sp)
/* BAC58 800BA058 27BD0030 */  addiu      $sp, $sp, 0x30
/* BAC5C 800BA05C 03E00008 */  jr         $ra
/* BAC60 800BA060 00000000 */   nop

glabel func_800BA064
/* BAC64 800BA064 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BAC68 800BA068 AFBF0014 */  sw         $ra, 0x14($sp)
/* BAC6C 800BA06C AFA40020 */  sw         $a0, 0x20($sp)
/* BAC70 800BA070 AFA50024 */  sw         $a1, 0x24($sp)
/* BAC74 800BA074 0C02E783 */  jal        func_800B9E0C
/* BAC78 800BA078 8FA40020 */   lw        $a0, 0x20($sp)
/* BAC7C 800BA07C 3C0F8014 */  lui        $t7, %hi(D_801442E8)
/* BAC80 800BA080 85EF42E8 */  lh         $t7, %lo(D_801442E8)($t7)
/* BAC84 800BA084 8FAE0024 */  lw         $t6, 0x24($sp)
/* BAC88 800BA088 3C19800E */  lui        $t9, %hi(D_800D9FCC)
/* BAC8C 800BA08C 8F399FCC */  lw         $t9, %lo(D_800D9FCC)($t9)
/* BAC90 800BA090 01CFC023 */  subu       $t8, $t6, $t7
/* BAC94 800BA094 AFB8001C */  sw         $t8, 0x1c($sp)
/* BAC98 800BA098 03194026 */  xor        $t0, $t8, $t9
/* BAC9C 800BA09C 2D080001 */  sltiu      $t0, $t0, 1
/* BACA0 800BA0A0 31090007 */  andi       $t1, $t0, 7
/* BACA4 800BA0A4 1120003B */  beqz       $t1, .L800BA194
/* BACA8 800BA0A8 00000000 */   nop
/* BACAC 800BA0AC 8FAA0020 */  lw         $t2, 0x20($sp)
/* BACB0 800BA0B0 3C01800E */  lui        $at, %hi(D_800DF638)
/* BACB4 800BA0B4 D428F638 */  ldc1       $f8, %lo(D_800DF638)($at)
/* BACB8 800BA0B8 C5440004 */  lwc1       $f4, 4($t2)
/* BACBC 800BA0BC 3C0B8014 */  lui        $t3, 0x8014
/* BACC0 800BA0C0 3C014334 */  lui        $at, 0x4334
/* BACC4 800BA0C4 460021A1 */  cvt.d.s    $f6, $f4
/* BACC8 800BA0C8 44812000 */  mtc1       $at, $f4
/* BACCC 800BA0CC 46283280 */  add.d      $f10, $f6, $f8
/* BACD0 800BA0D0 3C0D8014 */  lui        $t5, 0x8014
/* BACD4 800BA0D4 3C014120 */  lui        $at, 0x4120
/* BACD8 800BA0D8 3C18801F */  lui        $t8, %hi(D_801EC638)
/* BACDC 800BA0DC 46205420 */  cvt.s.d    $f16, $f10
/* BACE0 800BA0E0 2718C638 */  addiu      $t8, $t8, %lo(D_801EC638)
/* BACE4 800BA0E4 24080001 */  addiu      $t0, $zero, 1
/* BACE8 800BA0E8 E5500004 */  swc1       $f16, 4($t2)
/* BACEC 800BA0EC 8D6B4374 */  lw         $t3, 0x4374($t3)
/* BACF0 800BA0F0 8FAC0020 */  lw         $t4, 0x20($sp)
/* BACF4 800BA0F4 44818000 */  mtc1       $at, $f16
/* BACF8 800BA0F8 C572004C */  lwc1       $f18, 0x4c($t3)
/* BACFC 800BA0FC 3C0B8014 */  lui        $t3, 0x8014
/* BAD00 800BA100 46049181 */  sub.s      $f6, $f18, $f4
/* BAD04 800BA104 E586000C */  swc1       $f6, 0xc($t4)
/* BAD08 800BA108 8DAD4374 */  lw         $t5, 0x4374($t5)
/* BAD0C 800BA10C 8FAE0020 */  lw         $t6, 0x20($sp)
/* BAD10 800BA110 C5A80058 */  lwc1       $f8, 0x58($t5)
/* BAD14 800BA114 240D0003 */  addiu      $t5, $zero, 3
/* BAD18 800BA118 46004287 */  neg.s      $f10, $f8
/* BAD1C 800BA11C E5CA0010 */  swc1       $f10, 0x10($t6)
/* BAD20 800BA120 8FAF0020 */  lw         $t7, 0x20($sp)
/* BAD24 800BA124 E5F00024 */  swc1       $f16, 0x24($t7)
/* BAD28 800BA128 8FB90020 */  lw         $t9, 0x20($sp)
/* BAD2C 800BA12C AF380028 */  sw         $t8, 0x28($t9)
/* BAD30 800BA130 8FA90020 */  lw         $t1, 0x20($sp)
/* BAD34 800BA134 AD280018 */  sw         $t0, 0x18($t1)
/* BAD38 800BA138 8FAA0020 */  lw         $t2, 0x20($sp)
/* BAD3C 800BA13C AD40001C */  sw         $zero, 0x1c($t2)
/* BAD40 800BA140 8FAC001C */  lw         $t4, 0x1c($sp)
/* BAD44 800BA144 8D6B42DC */  lw         $t3, 0x42dc($t3)
/* BAD48 800BA148 01AC7023 */  subu       $t6, $t5, $t4
/* BAD4C 800BA14C 01CB082A */  slt        $at, $t6, $t3
/* BAD50 800BA150 10200008 */  beqz       $at, .L800BA174
/* BAD54 800BA154 00000000 */   nop
/* BAD58 800BA158 3C188018 */  lui        $t8, %hi(D_8017AD74)
/* BAD5C 800BA15C 2718AD74 */  addiu      $t8, $t8, %lo(D_8017AD74)
/* BAD60 800BA160 8F080000 */  lw         $t0, ($t8)
/* BAD64 800BA164 8FAF0020 */  lw         $t7, 0x20($sp)
/* BAD68 800BA168 A9E80020 */  swl        $t0, 0x20($t7)
/* BAD6C 800BA16C 10000007 */  b          .L800BA18C
/* BAD70 800BA170 B9E80023 */   swr       $t0, 0x23($t7)
.L800BA174:
/* BAD74 800BA174 3C0A8018 */  lui        $t2, %hi(D_8017AD78)
/* BAD78 800BA178 254AAD78 */  addiu      $t2, $t2, %lo(D_8017AD78)
/* BAD7C 800BA17C 8D4C0000 */  lw         $t4, ($t2)
/* BAD80 800BA180 8FA90020 */  lw         $t1, 0x20($sp)
/* BAD84 800BA184 A92C0020 */  swl        $t4, 0x20($t1)
/* BAD88 800BA188 B92C0023 */  swr        $t4, 0x23($t1)
.L800BA18C:
/* BAD8C 800BA18C 0C02E783 */  jal        func_800B9E0C
/* BAD90 800BA190 8FA40020 */   lw        $a0, 0x20($sp)
.L800BA194:
/* BAD94 800BA194 8FBF0014 */  lw         $ra, 0x14($sp)
/* BAD98 800BA198 27BD0020 */  addiu      $sp, $sp, 0x20
/* BAD9C 800BA19C 03E00008 */  jr         $ra
/* BADA0 800BA1A0 00000000 */   nop

glabel func_800BA1A4
/* BADA4 800BA1A4 3C088014 */  lui        $t0, %hi(D_801442FC)
/* BADA8 800BA1A8 850842FC */  lh         $t0, %lo(D_801442FC)($t0)
/* BADAC 800BA1AC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* BADB0 800BA1B0 AFBF001C */  sw         $ra, 0x1c($sp)
/* BADB4 800BA1B4 11000118 */  beqz       $t0, .L800BA618
/* BADB8 800BA1B8 00000000 */   nop
/* BADBC 800BA1BC 3C098018 */  lui        $t1, %hi(D_8017A320)
/* BADC0 800BA1C0 8529A320 */  lh         $t1, %lo(D_8017A320)($t1)
/* BADC4 800BA1C4 15200114 */  bnez       $t1, .L800BA618
/* BADC8 800BA1C8 00000000 */   nop
/* BADCC 800BA1CC 3C0A801C */  lui        $t2, %hi(D_801C5FC0)
/* BADD0 800BA1D0 854A5FC0 */  lh         $t2, %lo(D_801C5FC0)($t2)
/* BADD4 800BA1D4 3C0C8016 */  lui        $t4, %hi(D_8015EB1C)
/* BADD8 800BA1D8 258CEB1C */  addiu      $t4, $t4, %lo(D_8015EB1C)
/* BADDC 800BA1DC 000A58C0 */  sll        $t3, $t2, 3
/* BADE0 800BA1E0 016A5823 */  subu       $t3, $t3, $t2
/* BADE4 800BA1E4 000B5880 */  sll        $t3, $t3, 2
/* BADE8 800BA1E8 016A5823 */  subu       $t3, $t3, $t2
/* BADEC 800BA1EC 000B5880 */  sll        $t3, $t3, 2
/* BADF0 800BA1F0 016C6821 */  addu       $t5, $t3, $t4
/* BADF4 800BA1F4 AFAD002C */  sw         $t5, 0x2c($sp)
/* BADF8 800BA1F8 3C0142B4 */  lui        $at, 0x42b4
/* BADFC 800BA1FC 44819000 */  mtc1       $at, $f18
/* BAE00 800BA200 C5AA0058 */  lwc1       $f10, 0x58($t5)
/* BAE04 800BA204 3C01800E */  lui        $at, %hi(D_800DF640)
/* BAE08 800BA208 D424F640 */  ldc1       $f4, %lo(D_800DF640)($at)
/* BAE0C 800BA20C 46125181 */  sub.s      $f6, $f10, $f18
/* BAE10 800BA210 3C01800E */  lui        $at, %hi(D_800DF648)
/* BAE14 800BA214 46003221 */  cvt.d.s    $f8, $f6
/* BAE18 800BA218 46244402 */  mul.d      $f16, $f8, $f4
/* BAE1C 800BA21C D428F648 */  ldc1       $f8, %lo(D_800DF648)($at)
/* BAE20 800BA220 462082A0 */  cvt.s.d    $f10, $f16
/* BAE24 800BA224 E7AA0050 */  swc1       $f10, 0x50($sp)
/* BAE28 800BA228 C5B2004C */  lwc1       $f18, 0x4c($t5)
/* BAE2C 800BA22C 460091A1 */  cvt.d.s    $f6, $f18
/* BAE30 800BA230 46283102 */  mul.d      $f4, $f6, $f8
/* BAE34 800BA234 46202420 */  cvt.s.d    $f16, $f4
/* BAE38 800BA238 E7B0004C */  swc1       $f16, 0x4c($sp)
/* BAE3C 800BA23C 0C033F18 */  jal        func_800CFC60
/* BAE40 800BA240 46008306 */   mov.s     $f12, $f16
/* BAE44 800BA244 E7A00048 */  swc1       $f0, 0x48($sp)
/* BAE48 800BA248 0C02F904 */  jal        func_800BE410
/* BAE4C 800BA24C C7AC004C */   lwc1      $f12, 0x4c($sp)
/* BAE50 800BA250 E7A00044 */  swc1       $f0, 0x44($sp)
/* BAE54 800BA254 0C033F18 */  jal        func_800CFC60
/* BAE58 800BA258 C7AC0050 */   lwc1      $f12, 0x50($sp)
/* BAE5C 800BA25C E7A00040 */  swc1       $f0, 0x40($sp)
/* BAE60 800BA260 0C02F904 */  jal        func_800BE410
/* BAE64 800BA264 C7AC0050 */   lwc1      $f12, 0x50($sp)
/* BAE68 800BA268 3C0E8018 */  lui        $t6, %hi(D_8017A328)
/* BAE6C 800BA26C 85CEA328 */  lh         $t6, %lo(D_8017A328)($t6)
/* BAE70 800BA270 24010001 */  addiu      $at, $zero, 1
/* BAE74 800BA274 E7A0003C */  swc1       $f0, 0x3c($sp)
/* BAE78 800BA278 15C10041 */  bne        $t6, $at, .L800BA380
/* BAE7C 800BA27C 00000000 */   nop
/* BAE80 800BA280 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* BAE84 800BA284 3C01C04E */  lui        $at, 0xc04e
/* BAE88 800BA288 44813800 */  mtc1       $at, $f7
/* BAE8C 800BA28C 44803000 */  mtc1       $zero, $f6
/* BAE90 800BA290 460054A1 */  cvt.d.s    $f18, $f10
/* BAE94 800BA294 C7A40044 */  lwc1       $f4, 0x44($sp)
/* BAE98 800BA298 46269202 */  mul.d      $f8, $f18, $f6
/* BAE9C 800BA29C C7B00040 */  lwc1       $f16, 0x40($sp)
/* BAEA0 800BA2A0 3C014049 */  lui        $at, 0x4049
/* BAEA4 800BA2A4 E7AA0020 */  swc1       $f10, 0x20($sp)
/* BAEA8 800BA2A8 46102482 */  mul.s      $f18, $f4, $f16
/* BAEAC 800BA2AC 44819800 */  mtc1       $at, $f19
/* BAEB0 800BA2B0 3C01C064 */  lui        $at, 0xc064
/* BAEB4 800BA2B4 44815800 */  mtc1       $at, $f11
/* BAEB8 800BA2B8 44805000 */  mtc1       $zero, $f10
/* BAEBC 800BA2BC 3C014049 */  lui        $at, 0x4049
/* BAEC0 800BA2C0 460091A1 */  cvt.d.s    $f6, $f18
/* BAEC4 800BA2C4 44809000 */  mtc1       $zero, $f18
/* BAEC8 800BA2C8 00000000 */  nop
/* BAECC 800BA2CC 46323182 */  mul.d      $f6, $f6, $f18
/* BAED0 800BA2D0 46264481 */  sub.d      $f18, $f8, $f6
/* BAED4 800BA2D4 C7A8003C */  lwc1       $f8, 0x3c($sp)
/* BAED8 800BA2D8 46082182 */  mul.s      $f6, $f4, $f8
/* BAEDC 800BA2DC 460031A1 */  cvt.d.s    $f6, $f6
/* BAEE0 800BA2E0 462A3182 */  mul.d      $f6, $f6, $f10
/* BAEE4 800BA2E4 46269280 */  add.d      $f10, $f18, $f6
/* BAEE8 800BA2E8 460041A1 */  cvt.d.s    $f6, $f8
/* BAEEC 800BA2EC 462054A0 */  cvt.s.d    $f18, $f10
/* BAEF0 800BA2F0 44805000 */  mtc1       $zero, $f10
/* BAEF4 800BA2F4 44815800 */  mtc1       $at, $f11
/* BAEF8 800BA2F8 3C01C064 */  lui        $at, 0xc064
/* BAEFC 800BA2FC E7B2005C */  swc1       $f18, 0x5c($sp)
/* BAF00 800BA300 462A3482 */  mul.d      $f18, $f6, $f10
/* BAF04 800BA304 44805000 */  mtc1       $zero, $f10
/* BAF08 800BA308 44815800 */  mtc1       $at, $f11
/* BAF0C 800BA30C 460081A1 */  cvt.d.s    $f6, $f16
/* BAF10 800BA310 3C014049 */  lui        $at, 0x4049
/* BAF14 800BA314 462A3182 */  mul.d      $f6, $f6, $f10
/* BAF18 800BA318 44818800 */  mtc1       $at, $f17
/* BAF1C 800BA31C 3C01C04E */  lui        $at, 0xc04e
/* BAF20 800BA320 46269280 */  add.d      $f10, $f18, $f6
/* BAF24 800BA324 C7A60020 */  lwc1       $f6, 0x20($sp)
/* BAF28 800BA328 462054A0 */  cvt.s.d    $f18, $f10
/* BAF2C 800BA32C 46003287 */  neg.s      $f10, $f6
/* BAF30 800BA330 E7B20058 */  swc1       $f18, 0x58($sp)
/* BAF34 800BA334 46105482 */  mul.s      $f18, $f10, $f16
/* BAF38 800BA338 44808000 */  mtc1       $zero, $f16
/* BAF3C 800BA33C 460092A1 */  cvt.d.s    $f10, $f18
/* BAF40 800BA340 46305482 */  mul.d      $f18, $f10, $f16
/* BAF44 800BA344 44808000 */  mtc1       $zero, $f16
/* BAF48 800BA348 44818800 */  mtc1       $at, $f17
/* BAF4C 800BA34C 460022A1 */  cvt.d.s    $f10, $f4
/* BAF50 800BA350 3C01C064 */  lui        $at, 0xc064
/* BAF54 800BA354 46305102 */  mul.d      $f4, $f10, $f16
/* BAF58 800BA358 46249281 */  sub.d      $f10, $f18, $f4
/* BAF5C 800BA35C 46083402 */  mul.s      $f16, $f6, $f8
/* BAF60 800BA360 44802000 */  mtc1       $zero, $f4
/* BAF64 800BA364 44812800 */  mtc1       $at, $f5
/* BAF68 800BA368 460084A1 */  cvt.d.s    $f18, $f16
/* BAF6C 800BA36C 46249182 */  mul.d      $f6, $f18, $f4
/* BAF70 800BA370 46265200 */  add.d      $f8, $f10, $f6
/* BAF74 800BA374 46204420 */  cvt.s.d    $f16, $f8
/* BAF78 800BA378 10000040 */  b          .L800BA47C
/* BAF7C 800BA37C E7B00054 */   swc1      $f16, 0x54($sp)
.L800BA380:
/* BAF80 800BA380 C7B20048 */  lwc1       $f18, 0x48($sp)
/* BAF84 800BA384 3C01C04E */  lui        $at, 0xc04e
/* BAF88 800BA388 44815800 */  mtc1       $at, $f11
/* BAF8C 800BA38C 44805000 */  mtc1       $zero, $f10
/* BAF90 800BA390 46009121 */  cvt.d.s    $f4, $f18
/* BAF94 800BA394 C7A80044 */  lwc1       $f8, 0x44($sp)
/* BAF98 800BA398 462A2182 */  mul.d      $f6, $f4, $f10
/* BAF9C 800BA39C C7B00040 */  lwc1       $f16, 0x40($sp)
/* BAFA0 800BA3A0 3C01403E */  lui        $at, 0x403e
/* BAFA4 800BA3A4 E7B20020 */  swc1       $f18, 0x20($sp)
/* BAFA8 800BA3A8 46104102 */  mul.s      $f4, $f8, $f16
/* BAFAC 800BA3AC 44812800 */  mtc1       $at, $f5
/* BAFB0 800BA3B0 3C01C05E */  lui        $at, 0xc05e
/* BAFB4 800BA3B4 44819800 */  mtc1       $at, $f19
/* BAFB8 800BA3B8 44809000 */  mtc1       $zero, $f18
/* BAFBC 800BA3BC 3C01403E */  lui        $at, 0x403e
/* BAFC0 800BA3C0 460022A1 */  cvt.d.s    $f10, $f4
/* BAFC4 800BA3C4 44802000 */  mtc1       $zero, $f4
/* BAFC8 800BA3C8 00000000 */  nop
/* BAFCC 800BA3CC 46245282 */  mul.d      $f10, $f10, $f4
/* BAFD0 800BA3D0 462A3101 */  sub.d      $f4, $f6, $f10
/* BAFD4 800BA3D4 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* BAFD8 800BA3D8 46064282 */  mul.s      $f10, $f8, $f6
/* BAFDC 800BA3DC 460052A1 */  cvt.d.s    $f10, $f10
/* BAFE0 800BA3E0 46325282 */  mul.d      $f10, $f10, $f18
/* BAFE4 800BA3E4 462A2480 */  add.d      $f18, $f4, $f10
/* BAFE8 800BA3E8 460032A1 */  cvt.d.s    $f10, $f6
/* BAFEC 800BA3EC 46209120 */  cvt.s.d    $f4, $f18
/* BAFF0 800BA3F0 44809000 */  mtc1       $zero, $f18
/* BAFF4 800BA3F4 44819800 */  mtc1       $at, $f19
/* BAFF8 800BA3F8 3C01C05E */  lui        $at, 0xc05e
/* BAFFC 800BA3FC E7A4005C */  swc1       $f4, 0x5c($sp)
/* BB000 800BA400 46325102 */  mul.d      $f4, $f10, $f18
/* BB004 800BA404 44809000 */  mtc1       $zero, $f18
/* BB008 800BA408 44819800 */  mtc1       $at, $f19
/* BB00C 800BA40C 460082A1 */  cvt.d.s    $f10, $f16
/* BB010 800BA410 3C01403E */  lui        $at, 0x403e
/* BB014 800BA414 46325282 */  mul.d      $f10, $f10, $f18
/* BB018 800BA418 44818800 */  mtc1       $at, $f17
/* BB01C 800BA41C 3C01C04E */  lui        $at, 0xc04e
/* BB020 800BA420 462A2480 */  add.d      $f18, $f4, $f10
/* BB024 800BA424 C7AA0020 */  lwc1       $f10, 0x20($sp)
/* BB028 800BA428 46209120 */  cvt.s.d    $f4, $f18
/* BB02C 800BA42C 46005487 */  neg.s      $f18, $f10
/* BB030 800BA430 E7A40058 */  swc1       $f4, 0x58($sp)
/* BB034 800BA434 46109102 */  mul.s      $f4, $f18, $f16
/* BB038 800BA438 44808000 */  mtc1       $zero, $f16
/* BB03C 800BA43C 460024A1 */  cvt.d.s    $f18, $f4
/* BB040 800BA440 46309102 */  mul.d      $f4, $f18, $f16
/* BB044 800BA444 44808000 */  mtc1       $zero, $f16
/* BB048 800BA448 44818800 */  mtc1       $at, $f17
/* BB04C 800BA44C 460044A1 */  cvt.d.s    $f18, $f8
/* BB050 800BA450 3C01C05E */  lui        $at, 0xc05e
/* BB054 800BA454 46309202 */  mul.d      $f8, $f18, $f16
/* BB058 800BA458 46282481 */  sub.d      $f18, $f4, $f8
/* BB05C 800BA45C 46065402 */  mul.s      $f16, $f10, $f6
/* BB060 800BA460 44804000 */  mtc1       $zero, $f8
/* BB064 800BA464 44814800 */  mtc1       $at, $f9
/* BB068 800BA468 46008121 */  cvt.d.s    $f4, $f16
/* BB06C 800BA46C 46282282 */  mul.d      $f10, $f4, $f8
/* BB070 800BA470 462A9180 */  add.d      $f6, $f18, $f10
/* BB074 800BA474 46203420 */  cvt.s.d    $f16, $f6
/* BB078 800BA478 E7B00054 */  swc1       $f16, 0x54($sp)
.L800BA47C:
/* BB07C 800BA47C 8FAF002C */  lw         $t7, 0x2c($sp)
/* BB080 800BA480 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* BB084 800BA484 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* BB088 800BA488 C5E80014 */  lwc1       $f8, 0x14($t7)
/* BB08C 800BA48C 3C018014 */  lui        $at, 0x8014
/* BB090 800BA490 27A50030 */  addiu      $a1, $sp, 0x30
/* BB094 800BA494 46082480 */  add.s      $f18, $f4, $f8
/* BB098 800BA498 C7A40054 */  lwc1       $f4, 0x54($sp)
/* BB09C 800BA49C 27A60030 */  addiu      $a2, $sp, 0x30
/* BB0A0 800BA4A0 24C60008 */  addiu      $a2, $a2, 8
/* BB0A4 800BA4A4 E7B2005C */  swc1       $f18, 0x5c($sp)
/* BB0A8 800BA4A8 C5E6001C */  lwc1       $f6, 0x1c($t7)
/* BB0AC 800BA4AC 24A50004 */  addiu      $a1, $a1, 4
/* BB0B0 800BA4B0 27A40030 */  addiu      $a0, $sp, 0x30
/* BB0B4 800BA4B4 46065400 */  add.s      $f16, $f10, $f6
/* BB0B8 800BA4B8 C4264300 */  lwc1       $f6, 0x4300($at)
/* BB0BC 800BA4BC E7B00058 */  swc1       $f16, 0x58($sp)
/* BB0C0 800BA4C0 C5E80018 */  lwc1       $f8, 0x18($t7)
/* BB0C4 800BA4C4 46082280 */  add.s      $f10, $f4, $f8
/* BB0C8 800BA4C8 C4284304 */  lwc1       $f8, 0x4304($at)
/* BB0CC 800BA4CC 3C018014 */  lui        $at, %hi(D_80144308)
/* BB0D0 800BA4D0 46123101 */  sub.s      $f4, $f6, $f18
/* BB0D4 800BA4D4 E7AA0054 */  swc1       $f10, 0x54($sp)
/* BB0D8 800BA4D8 46104181 */  sub.s      $f6, $f8, $f16
/* BB0DC 800BA4DC E7A40030 */  swc1       $f4, 0x30($sp)
/* BB0E0 800BA4E0 C4244308 */  lwc1       $f4, %lo(D_80144308)($at)
/* BB0E4 800BA4E4 E7A60034 */  swc1       $f6, 0x34($sp)
/* BB0E8 800BA4E8 460A2201 */  sub.s      $f8, $f4, $f10
/* BB0EC 800BA4EC E7A80038 */  swc1       $f8, 0x38($sp)
/* BB0F0 800BA4F0 C5F00020 */  lwc1       $f16, 0x20($t7)
/* BB0F4 800BA4F4 46109181 */  sub.s      $f6, $f18, $f16
/* BB0F8 800BA4F8 E7A6005C */  swc1       $f6, 0x5c($sp)
/* BB0FC 800BA4FC C5E40028 */  lwc1       $f4, 0x28($t7)
/* BB100 800BA500 46045201 */  sub.s      $f8, $f10, $f4
/* BB104 800BA504 0C033B28 */  jal        func_800CECA0
/* BB108 800BA508 E7A80054 */   swc1      $f8, 0x54($sp)
/* BB10C 800BA50C 3C01800D */  lui        $at, %hi(D_800D7F84)
/* BB110 800BA510 C4307F84 */  lwc1       $f16, %lo(D_800D7F84)($at)
/* BB114 800BA514 C7B2005C */  lwc1       $f18, 0x5c($sp)
/* BB118 800BA518 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* BB11C 800BA51C C7A80054 */  lwc1       $f8, 0x54($sp)
/* BB120 800BA520 46109182 */  mul.s      $f6, $f18, $f16
/* BB124 800BA524 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BB128 800BA528 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BB12C 800BA52C 46105102 */  mul.s      $f4, $f10, $f16
/* BB130 800BA530 00000000 */  nop
/* BB134 800BA534 46104482 */  mul.s      $f18, $f8, $f16
/* BB138 800BA538 44053000 */  mfc1       $a1, $f6
/* BB13C 800BA53C 44062000 */  mfc1       $a2, $f4
/* BB140 800BA540 44079000 */  mfc1       $a3, $f18
/* BB144 800BA544 0C034602 */  jal        func_800D1808
/* BB148 800BA548 00000000 */   nop
/* BB14C 800BA54C 3C01800D */  lui        $at, %hi(D_800D7F84)
/* BB150 800BA550 C4267F84 */  lwc1       $f6, %lo(D_800D7F84)($at)
/* BB154 800BA554 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BB158 800BA558 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BB15C 800BA55C 44053000 */  mfc1       $a1, $f6
/* BB160 800BA560 44063000 */  mfc1       $a2, $f6
/* BB164 800BA564 44073000 */  mfc1       $a3, $f6
/* BB168 800BA568 0C02F8F1 */  jal        func_800BE3C4
/* BB16C 800BA56C 24840040 */   addiu     $a0, $a0, 0x40
/* BB170 800BA570 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BB174 800BA574 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BB178 800BA578 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* BB17C 800BA57C 24050000 */  addiu      $a1, $zero, 0
/* BB180 800BA580 8FA60030 */  lw         $a2, 0x30($sp)
/* BB184 800BA584 8FA70034 */  lw         $a3, 0x34($sp)
/* BB188 800BA588 24840080 */  addiu      $a0, $a0, 0x80
/* BB18C 800BA58C 0C034F00 */  jal        func_800D3C00
/* BB190 800BA590 E7AA0010 */   swc1      $f10, 0x10($sp)
/* BB194 800BA594 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BB198 800BA598 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BB19C 800BA59C 44802000 */  mtc1       $zero, $f4
/* BB1A0 800BA5A0 3C053FC9 */  lui        $a1, 0x3fc9
/* BB1A4 800BA5A4 34A50FDB */  ori        $a1, $a1, 0xfdb
/* BB1A8 800BA5A8 24060000 */  addiu      $a2, $zero, 0
/* BB1AC 800BA5AC 3C073F80 */  lui        $a3, 0x3f80
/* BB1B0 800BA5B0 248400C0 */  addiu      $a0, $a0, 0xc0
/* BB1B4 800BA5B4 0C033A45 */  jal        func_800CE914
/* BB1B8 800BA5B8 E7A40010 */   swc1      $f4, 0x10($sp)
/* BB1BC 800BA5BC 3C04800F */  lui        $a0, %hi(D_800F2A68)
/* BB1C0 800BA5C0 8C842A68 */  lw         $a0, %lo(D_800F2A68)($a0)
/* BB1C4 800BA5C4 3C053E99 */  lui        $a1, 0x3e99
/* BB1C8 800BA5C8 34A5999A */  ori        $a1, $a1, 0x999a
/* BB1CC 800BA5CC 00A03021 */  addu       $a2, $a1, $zero
/* BB1D0 800BA5D0 00A03821 */  addu       $a3, $a1, $zero
/* BB1D4 800BA5D4 0C02F8F1 */  jal        func_800BE3C4
/* BB1D8 800BA5D8 24840100 */   addiu     $a0, $a0, 0x100
/* BB1DC 800BA5DC 0C02E750 */  jal        func_800B9D40
/* BB1E0 800BA5E0 24040005 */   addiu     $a0, $zero, 5
/* BB1E4 800BA5E4 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* BB1E8 800BA5E8 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* BB1EC 800BA5EC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* BB1F0 800BA5F0 3C080600 */  lui        $t0, 0x600
/* BB1F4 800BA5F4 AFB80028 */  sw         $t8, 0x28($sp)
/* BB1F8 800BA5F8 8FA90028 */  lw         $t1, 0x28($sp)
/* BB1FC 800BA5FC 27190008 */  addiu      $t9, $t8, 8
/* BB200 800BA600 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* BB204 800BA604 AD280000 */  sw         $t0, ($t1)
/* BB208 800BA608 8FAB0028 */  lw         $t3, 0x28($sp)
/* BB20C 800BA60C 3C0A8031 */  lui        $t2, 0x8031
/* BB210 800BA610 354A7C08 */  ori        $t2, $t2, 0x7c08
/* BB214 800BA614 AD6A0004 */  sw         $t2, 4($t3)
.L800BA618:
/* BB218 800BA618 8FBF001C */  lw         $ra, 0x1c($sp)
/* BB21C 800BA61C 27BD0060 */  addiu      $sp, $sp, 0x60
/* BB220 800BA620 03E00008 */  jr         $ra
/* BB224 800BA624 00000000 */   nop

glabel func_800BA628
/* BB228 800BA628 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* BB22C 800BA62C AFBF001C */  sw         $ra, 0x1c($sp)
/* BB230 800BA630 AFA40050 */  sw         $a0, 0x50($sp)
/* BB234 800BA634 AFB00018 */  sw         $s0, 0x18($sp)
/* BB238 800BA638 3C0E801C */  lui        $t6, %hi(D_801C5FC0)
/* BB23C 800BA63C 85CE5FC0 */  lh         $t6, %lo(D_801C5FC0)($t6)
/* BB240 800BA640 3C188016 */  lui        $t8, %hi(D_8015EB1C)
/* BB244 800BA644 2718EB1C */  addiu      $t8, $t8, %lo(D_8015EB1C)
/* BB248 800BA648 000E78C0 */  sll        $t7, $t6, 3
/* BB24C 800BA64C 01EE7823 */  subu       $t7, $t7, $t6
/* BB250 800BA650 000F7880 */  sll        $t7, $t7, 2
/* BB254 800BA654 01EE7823 */  subu       $t7, $t7, $t6
/* BB258 800BA658 000F7880 */  sll        $t7, $t7, 2
/* BB25C 800BA65C 01F8C821 */  addu       $t9, $t7, $t8
/* BB260 800BA660 3C018014 */  lui        $at, %hi(D_80144374)
/* BB264 800BA664 8FA80050 */  lw         $t0, 0x50($sp)
/* BB268 800BA668 AC394374 */  sw         $t9, %lo(D_80144374)($at)
/* BB26C 800BA66C C7260014 */  lwc1       $f6, 0x14($t9)
/* BB270 800BA670 C50400E0 */  lwc1       $f4, 0xe0($t0)
/* BB274 800BA674 C7320018 */  lwc1       $f18, 0x18($t9)
/* BB278 800BA678 C51000E8 */  lwc1       $f16, 0xe8($t0)
/* BB27C 800BA67C 46062301 */  sub.s      $f12, $f4, $f6
/* BB280 800BA680 C72A001C */  lwc1       $f10, 0x1c($t9)
/* BB284 800BA684 C50800E4 */  lwc1       $f8, 0xe4($t0)
/* BB288 800BA688 46128101 */  sub.s      $f4, $f16, $f18
/* BB28C 800BA68C 460A4381 */  sub.s      $f14, $f8, $f10
/* BB290 800BA690 44062000 */  mfc1       $a2, $f4
/* BB294 800BA694 0C016916 */  jal        func_8005A458
/* BB298 800BA698 00000000 */   nop
/* BB29C 800BA69C 3C098014 */  lui        $t1, %hi(D_8013B65C)
/* BB2A0 800BA6A0 8D29B65C */  lw         $t1, %lo(D_8013B65C)($t1)
/* BB2A4 800BA6A4 3C014029 */  lui        $at, 0x4029
/* BB2A8 800BA6A8 44819800 */  mtc1       $at, $f19
/* BB2AC 800BA6AC 44894000 */  mtc1       $t1, $f8
/* BB2B0 800BA6B0 44809000 */  mtc1       $zero, $f18
/* BB2B4 800BA6B4 460001A1 */  cvt.d.s    $f6, $f0
/* BB2B8 800BA6B8 468042A0 */  cvt.s.w    $f10, $f8
/* BB2BC 800BA6BC 46005421 */  cvt.d.s    $f16, $f10
/* BB2C0 800BA6C0 46328102 */  mul.d      $f4, $f16, $f18
/* BB2C4 800BA6C4 4626203C */  c.lt.d     $f4, $f6
/* BB2C8 800BA6C8 00000000 */  nop
/* BB2CC 800BA6CC 450100EC */  bc1t       .L800BAA80
/* BB2D0 800BA6D0 00000000 */   nop
/* BB2D4 800BA6D4 3C0B8014 */  lui        $t3, %hi(D_80144374)
/* BB2D8 800BA6D8 8D6B4374 */  lw         $t3, %lo(D_80144374)($t3)
/* BB2DC 800BA6DC 8FAA0050 */  lw         $t2, 0x50($sp)
/* BB2E0 800BA6E0 3C014334 */  lui        $at, 0x4334
/* BB2E4 800BA6E4 C56A0020 */  lwc1       $f10, 0x20($t3)
/* BB2E8 800BA6E8 C54800E0 */  lwc1       $f8, 0xe0($t2)
/* BB2EC 800BA6EC 3C0E8031 */  lui        $t6, 0x8031
/* BB2F0 800BA6F0 240C0001 */  addiu      $t4, $zero, 1
/* BB2F4 800BA6F4 460A4401 */  sub.s      $f16, $f8, $f10
/* BB2F8 800BA6F8 240D0080 */  addiu      $t5, $zero, 0x80
/* BB2FC 800BA6FC 35CE77F8 */  ori        $t6, $t6, 0x77f8
/* BB300 800BA700 E7B00024 */  swc1       $f16, 0x24($sp)
/* BB304 800BA704 C55200E4 */  lwc1       $f18, 0xe4($t2)
/* BB308 800BA708 44818000 */  mtc1       $at, $f16
/* BB30C 800BA70C 3C01800E */  lui        $at, %hi(D_800DF650)
/* BB310 800BA710 E7B20028 */  swc1       $f18, 0x28($sp)
/* BB314 800BA714 C5640028 */  lwc1       $f4, 0x28($t3)
/* BB318 800BA718 C54600E8 */  lwc1       $f6, 0xe8($t2)
/* BB31C 800BA71C 46043201 */  sub.s      $f8, $f6, $f4
/* BB320 800BA720 D424F650 */  ldc1       $f4, %lo(D_800DF650)($at)
/* BB324 800BA724 3C014334 */  lui        $at, 0x4334
/* BB328 800BA728 E7A8002C */  swc1       $f8, 0x2c($sp)
/* BB32C 800BA72C C54A00F0 */  lwc1       $f10, 0xf0($t2)
/* BB330 800BA730 46105482 */  mul.s      $f18, $f10, $f16
/* BB334 800BA734 460091A1 */  cvt.d.s    $f6, $f18
/* BB338 800BA738 44819000 */  mtc1       $at, $f18
/* BB33C 800BA73C 46243203 */  div.d      $f8, $f6, $f4
/* BB340 800BA740 3C01800E */  lui        $at, %hi(D_800DF658)
/* BB344 800BA744 462042A0 */  cvt.s.d    $f10, $f8
/* BB348 800BA748 D428F658 */  ldc1       $f8, %lo(D_800DF658)($at)
/* BB34C 800BA74C 3C014334 */  lui        $at, 0x4334
/* BB350 800BA750 E7AA0030 */  swc1       $f10, 0x30($sp)
/* BB354 800BA754 C5500104 */  lwc1       $f16, 0x104($t2)
/* BB358 800BA758 46128182 */  mul.s      $f6, $f16, $f18
/* BB35C 800BA75C 46003121 */  cvt.d.s    $f4, $f6
/* BB360 800BA760 44813000 */  mtc1       $at, $f6
/* BB364 800BA764 46282283 */  div.d      $f10, $f4, $f8
/* BB368 800BA768 3C01800E */  lui        $at, %hi(D_800DF660)
/* BB36C 800BA76C 46205420 */  cvt.s.d    $f16, $f10
/* BB370 800BA770 D42AF660 */  ldc1       $f10, %lo(D_800DF660)($at)
/* BB374 800BA774 3C013F80 */  lui        $at, 0x3f80
/* BB378 800BA778 E7B00034 */  swc1       $f16, 0x34($sp)
/* BB37C 800BA77C C5520114 */  lwc1       $f18, 0x114($t2)
/* BB380 800BA780 AFA0003C */  sw         $zero, 0x3c($sp)
/* BB384 800BA784 AFAC0040 */  sw         $t4, 0x40($sp)
/* BB388 800BA788 46069102 */  mul.s      $f4, $f18, $f6
/* BB38C 800BA78C 44813000 */  mtc1       $at, $f6
/* BB390 800BA790 A3AD0047 */  sb         $t5, 0x47($sp)
/* BB394 800BA794 AFAE004C */  sw         $t6, 0x4c($sp)
/* BB398 800BA798 E7A60048 */  swc1       $f6, 0x48($sp)
/* BB39C 800BA79C 3C0100FF */  lui        $at, 0xff
/* BB3A0 800BA7A0 46002221 */  cvt.d.s    $f8, $f4
/* BB3A4 800BA7A4 462A4403 */  div.d      $f16, $f8, $f10
/* BB3A8 800BA7A8 462084A0 */  cvt.s.d    $f18, $f16
/* BB3AC 800BA7AC E7B20038 */  swc1       $f18, 0x38($sp)
/* BB3B0 800BA7B0 8D500070 */  lw         $s0, 0x70($t2)
/* BB3B4 800BA7B4 02018024 */  and        $s0, $s0, $at
/* BB3B8 800BA7B8 3C010001 */  lui        $at, 1
/* BB3BC 800BA7BC 12010045 */  beq        $s0, $at, .L800BA8D4
/* BB3C0 800BA7C0 3C010002 */   lui       $at, 2
/* BB3C4 800BA7C4 1201001E */  beq        $s0, $at, .L800BA840
/* BB3C8 800BA7C8 3C010003 */   lui       $at, 3
/* BB3CC 800BA7CC 12010009 */  beq        $s0, $at, .L800BA7F4
/* BB3D0 800BA7D0 3C010004 */   lui       $at, 4
/* BB3D4 800BA7D4 1201000F */  beq        $s0, $at, .L800BA814
/* BB3D8 800BA7D8 3C010005 */   lui       $at, 5
/* BB3DC 800BA7DC 12010047 */  beq        $s0, $at, .L800BA8FC
/* BB3E0 800BA7E0 3C010006 */   lui       $at, 6
/* BB3E4 800BA7E4 12010050 */  beq        $s0, $at, .L800BA928
/* BB3E8 800BA7E8 00000000 */   nop
/* BB3EC 800BA7EC 10000071 */  b          .L800BA9B4
/* BB3F0 800BA7F0 00000000 */   nop
.L800BA7F4:
/* BB3F4 800BA7F4 3C0F802A */  lui        $t7, 0x802a
/* BB3F8 800BA7F8 35EF5BF8 */  ori        $t7, $t7, 0x5bf8
/* BB3FC 800BA7FC AFA00040 */  sw         $zero, 0x40($sp)
/* BB400 800BA800 AFAF004C */  sw         $t7, 0x4c($sp)
/* BB404 800BA804 0C02E783 */  jal        func_800B9E0C
/* BB408 800BA808 27A40024 */   addiu     $a0, $sp, 0x24
/* BB40C 800BA80C 1000009C */  b          .L800BAA80
/* BB410 800BA810 00000000 */   nop
.L800BA814:
/* BB414 800BA814 3C0142C8 */  lui        $at, 0x42c8
/* BB418 800BA818 44812000 */  mtc1       $at, $f4
/* BB41C 800BA81C 3C18801F */  lui        $t8, %hi(D_801F36A8)
/* BB420 800BA820 271836A8 */  addiu      $t8, $t8, %lo(D_801F36A8)
/* BB424 800BA824 AFA00040 */  sw         $zero, 0x40($sp)
/* BB428 800BA828 AFB8004C */  sw         $t8, 0x4c($sp)
/* BB42C 800BA82C 27A40024 */  addiu      $a0, $sp, 0x24
/* BB430 800BA830 0C02E783 */  jal        func_800B9E0C
/* BB434 800BA834 E7A40048 */   swc1      $f4, 0x48($sp)
/* BB438 800BA838 10000091 */  b          .L800BAA80
/* BB43C 800BA83C 00000000 */   nop
.L800BA840:
/* BB440 800BA840 8FB90050 */  lw         $t9, 0x50($sp)
/* BB444 800BA844 3C0B8014 */  lui        $t3, %hi(D_801442E8)
/* BB448 800BA848 856B42E8 */  lh         $t3, %lo(D_801442E8)($t3)
/* BB44C 800BA84C 8F290078 */  lw         $t1, 0x78($t9)
/* BB450 800BA850 3C088014 */  lui        $t0, %hi(D_801442DC)
/* BB454 800BA854 8D0842DC */  lw         $t0, %lo(D_801442DC)($t0)
/* BB458 800BA858 240D0003 */  addiu      $t5, $zero, 3
/* BB45C 800BA85C 012B6023 */  subu       $t4, $t1, $t3
/* BB460 800BA860 01AC7023 */  subu       $t6, $t5, $t4
/* BB464 800BA864 01C8082A */  slt        $at, $t6, $t0
/* BB468 800BA868 10200010 */  beqz       $at, .L800BA8AC
/* BB46C 800BA86C 00000000 */   nop
/* BB470 800BA870 3C0A800E */  lui        $t2, %hi(D_800D9FCC)
/* BB474 800BA874 8D4A9FCC */  lw         $t2, %lo(D_800D9FCC)($t2)
/* BB478 800BA878 314F0008 */  andi       $t7, $t2, 8
/* BB47C 800BA87C 11E00006 */  beqz       $t7, .L800BA898
/* BB480 800BA880 00000000 */   nop
/* BB484 800BA884 3C188018 */  lui        $t8, %hi(D_8017AD7C)
/* BB488 800BA888 8F18AD7C */  lw         $t8, %lo(D_8017AD7C)($t8)
/* BB48C 800BA88C ABB80044 */  swl        $t8, 0x44($sp)
/* BB490 800BA890 1000000A */  b          .L800BA8BC
/* BB494 800BA894 BBB80047 */   swr       $t8, 0x47($sp)
.L800BA898:
/* BB498 800BA898 3C198018 */  lui        $t9, %hi(D_8017AD80)
/* BB49C 800BA89C 8F39AD80 */  lw         $t9, %lo(D_8017AD80)($t9)
/* BB4A0 800BA8A0 ABB90044 */  swl        $t9, 0x44($sp)
/* BB4A4 800BA8A4 10000005 */  b          .L800BA8BC
/* BB4A8 800BA8A8 BBB90047 */   swr       $t9, 0x47($sp)
.L800BA8AC:
/* BB4AC 800BA8AC 3C098018 */  lui        $t1, %hi(D_8017AD80)
/* BB4B0 800BA8B0 8D29AD80 */  lw         $t1, %lo(D_8017AD80)($t1)
/* BB4B4 800BA8B4 ABA90044 */  swl        $t1, 0x44($sp)
/* BB4B8 800BA8B8 BBA90047 */  swr        $t1, 0x47($sp)
.L800BA8BC:
/* BB4BC 800BA8BC 8FAB0050 */  lw         $t3, 0x50($sp)
/* BB4C0 800BA8C0 27A40024 */  addiu      $a0, $sp, 0x24
/* BB4C4 800BA8C4 0C02E819 */  jal        func_800BA064
/* BB4C8 800BA8C8 8D650078 */   lw        $a1, 0x78($t3)
/* BB4CC 800BA8CC 1000006C */  b          .L800BAA80
/* BB4D0 800BA8D0 00000000 */   nop
.L800BA8D4:
/* BB4D4 800BA8D4 3C0D8018 */  lui        $t5, %hi(D_8017AD84)
/* BB4D8 800BA8D8 8DADAD84 */  lw         $t5, %lo(D_8017AD84)($t5)
/* BB4DC 800BA8DC 8FAC0050 */  lw         $t4, 0x50($sp)
/* BB4E0 800BA8E0 27A40024 */  addiu      $a0, $sp, 0x24
/* BB4E4 800BA8E4 ABAD0044 */  swl        $t5, 0x44($sp)
/* BB4E8 800BA8E8 BBAD0047 */  swr        $t5, 0x47($sp)
/* BB4EC 800BA8EC 0C02E819 */  jal        func_800BA064
/* BB4F0 800BA8F0 8D850078 */   lw        $a1, 0x78($t4)
/* BB4F4 800BA8F4 10000062 */  b          .L800BAA80
/* BB4F8 800BA8F8 00000000 */   nop
.L800BA8FC:
/* BB4FC 800BA8FC 8FAE0050 */  lw         $t6, 0x50($sp)
/* BB500 800BA900 3C08802A */  lui        $t0, %hi(D_8029AB10)
/* BB504 800BA904 2508AB10 */  addiu      $t0, $t0, %lo(D_8029AB10)
/* BB508 800BA908 AFA00040 */  sw         $zero, 0x40($sp)
/* BB50C 800BA90C AFA8004C */  sw         $t0, 0x4c($sp)
/* BB510 800BA910 C5C8002C */  lwc1       $f8, 0x2c($t6)
/* BB514 800BA914 27A40024 */  addiu      $a0, $sp, 0x24
/* BB518 800BA918 0C02E783 */  jal        func_800B9E0C
/* BB51C 800BA91C E7A80048 */   swc1      $f8, 0x48($sp)
/* BB520 800BA920 10000057 */  b          .L800BAA80
/* BB524 800BA924 00000000 */   nop
.L800BA928:
/* BB528 800BA928 3C013F80 */  lui        $at, 0x3f80
/* BB52C 800BA92C 44815000 */  mtc1       $at, $f10
/* BB530 800BA930 8FAA0050 */  lw         $t2, 0x50($sp)
/* BB534 800BA934 3C18801C */  lui        $t8, %hi(D_801C60E4)
/* BB538 800BA938 E7AA0048 */  swc1       $f10, 0x48($sp)
/* BB53C 800BA93C 8F1860E4 */  lw         $t8, %lo(D_801C60E4)($t8)
/* BB540 800BA940 8D4F0078 */  lw         $t7, 0x78($t2)
/* BB544 800BA944 01F8082A */  slt        $at, $t7, $t8
/* BB548 800BA948 10200006 */  beqz       $at, .L800BA964
/* BB54C 800BA94C 00000000 */   nop
/* BB550 800BA950 3C198018 */  lui        $t9, %hi(D_8017AD7C)
/* BB554 800BA954 8F39AD7C */  lw         $t9, %lo(D_8017AD7C)($t9)
/* BB558 800BA958 ABB90044 */  swl        $t9, 0x44($sp)
/* BB55C 800BA95C 10000011 */  b          .L800BA9A4
/* BB560 800BA960 BBB90047 */   swr       $t9, 0x47($sp)
.L800BA964:
/* BB564 800BA964 8FA90050 */  lw         $t1, 0x50($sp)
/* BB568 800BA968 3C0D801C */  lui        $t5, %hi(D_801C60E4)
/* BB56C 800BA96C 8DAD60E4 */  lw         $t5, %lo(D_801C60E4)($t5)
/* BB570 800BA970 8D2B0078 */  lw         $t3, 0x78($t1)
/* BB574 800BA974 01AB082A */  slt        $at, $t5, $t3
/* BB578 800BA978 10200006 */  beqz       $at, .L800BA994
/* BB57C 800BA97C 00000000 */   nop
/* BB580 800BA980 3C0C8018 */  lui        $t4, %hi(D_8017AD70)
/* BB584 800BA984 8D8CAD70 */  lw         $t4, %lo(D_8017AD70)($t4)
/* BB588 800BA988 ABAC0044 */  swl        $t4, 0x44($sp)
/* BB58C 800BA98C 10000005 */  b          .L800BA9A4
/* BB590 800BA990 BBAC0047 */   swr       $t4, 0x47($sp)
.L800BA994:
/* BB594 800BA994 3C088018 */  lui        $t0, %hi(D_8017AD74)
/* BB598 800BA998 8D08AD74 */  lw         $t0, %lo(D_8017AD74)($t0)
/* BB59C 800BA99C ABA80044 */  swl        $t0, 0x44($sp)
/* BB5A0 800BA9A0 BBA80047 */  swr        $t0, 0x47($sp)
.L800BA9A4:
/* BB5A4 800BA9A4 0C02E783 */  jal        func_800B9E0C
/* BB5A8 800BA9A8 27A40024 */   addiu     $a0, $sp, 0x24
/* BB5AC 800BA9AC 10000034 */  b          .L800BAA80
/* BB5B0 800BA9B0 00000000 */   nop
.L800BA9B4:
/* BB5B4 800BA9B4 3C013F80 */  lui        $at, 0x3f80
/* BB5B8 800BA9B8 44818000 */  mtc1       $at, $f16
/* BB5BC 800BA9BC 8FAE0050 */  lw         $t6, 0x50($sp)
/* BB5C0 800BA9C0 3C0F8014 */  lui        $t7, %hi(D_801442E8)
/* BB5C4 800BA9C4 E7B00048 */  swc1       $f16, 0x48($sp)
/* BB5C8 800BA9C8 85EF42E8 */  lh         $t7, %lo(D_801442E8)($t7)
/* BB5CC 800BA9CC 8DCA0078 */  lw         $t2, 0x78($t6)
/* BB5D0 800BA9D0 154F0006 */  bne        $t2, $t7, .L800BA9EC
/* BB5D4 800BA9D4 00000000 */   nop
/* BB5D8 800BA9D8 3C188018 */  lui        $t8, %hi(D_8017AD84)
/* BB5DC 800BA9DC 8F18AD84 */  lw         $t8, %lo(D_8017AD84)($t8)
/* BB5E0 800BA9E0 ABB80044 */  swl        $t8, 0x44($sp)
/* BB5E4 800BA9E4 10000022 */  b          .L800BAA70
/* BB5E8 800BA9E8 BBB80047 */   swr       $t8, 0x47($sp)
.L800BA9EC:
/* BB5EC 800BA9EC 8FB90050 */  lw         $t9, 0x50($sp)
/* BB5F0 800BA9F0 3C01800E */  lui        $at, %hi(D_800DF668)
/* BB5F4 800BA9F4 D424F668 */  ldc1       $f4, %lo(D_800DF668)($at)
/* BB5F8 800BA9F8 C73200B4 */  lwc1       $f18, 0xb4($t9)
/* BB5FC 800BA9FC 460091A1 */  cvt.d.s    $f6, $f18
/* BB600 800BAA00 4626203C */  c.lt.d     $f4, $f6
/* BB604 800BAA04 00000000 */  nop
/* BB608 800BAA08 45000004 */  bc1f       .L800BAA1C
/* BB60C 800BAA0C 00000000 */   nop
/* BB610 800BAA10 3C098031 */  lui        $t1, 0x8031
/* BB614 800BAA14 35297670 */  ori        $t1, $t1, 0x7670
/* BB618 800BAA18 AFA9004C */  sw         $t1, 0x4c($sp)
.L800BAA1C:
/* BB61C 800BAA1C 8FAD0050 */  lw         $t5, 0x50($sp)
/* BB620 800BAA20 3C088014 */  lui        $t0, %hi(D_801442E8)
/* BB624 800BAA24 850842E8 */  lh         $t0, %lo(D_801442E8)($t0)
/* BB628 800BAA28 8DAC0078 */  lw         $t4, 0x78($t5)
/* BB62C 800BAA2C 3C0B8014 */  lui        $t3, %hi(D_801442DC)
/* BB630 800BAA30 8D6B42DC */  lw         $t3, %lo(D_801442DC)($t3)
/* BB634 800BAA34 240A0003 */  addiu      $t2, $zero, 3
/* BB638 800BAA38 01887023 */  subu       $t6, $t4, $t0
/* BB63C 800BAA3C 014E7823 */  subu       $t7, $t2, $t6
/* BB640 800BAA40 01EB082A */  slt        $at, $t7, $t3
/* BB644 800BAA44 10200006 */  beqz       $at, .L800BAA60
/* BB648 800BAA48 00000000 */   nop
/* BB64C 800BAA4C 3C188018 */  lui        $t8, %hi(D_8017AD7C)
/* BB650 800BAA50 8F18AD7C */  lw         $t8, %lo(D_8017AD7C)($t8)
/* BB654 800BAA54 ABB80044 */  swl        $t8, 0x44($sp)
/* BB658 800BAA58 10000005 */  b          .L800BAA70
/* BB65C 800BAA5C BBB80047 */   swr       $t8, 0x47($sp)
.L800BAA60:
/* BB660 800BAA60 3C198018 */  lui        $t9, %hi(D_8017AD90)
/* BB664 800BAA64 8F39AD90 */  lw         $t9, %lo(D_8017AD90)($t9)
/* BB668 800BAA68 ABB90044 */  swl        $t9, 0x44($sp)
/* BB66C 800BAA6C BBB90047 */  swr        $t9, 0x47($sp)
.L800BAA70:
/* BB670 800BAA70 8FA90050 */  lw         $t1, 0x50($sp)
/* BB674 800BAA74 27A40024 */  addiu      $a0, $sp, 0x24
/* BB678 800BAA78 0C02E819 */  jal        func_800BA064
/* BB67C 800BAA7C 8D250078 */   lw        $a1, 0x78($t1)
.L800BAA80:
/* BB680 800BAA80 8FBF001C */  lw         $ra, 0x1c($sp)
/* BB684 800BAA84 8FB00018 */  lw         $s0, 0x18($sp)
/* BB688 800BAA88 27BD0050 */  addiu      $sp, $sp, 0x50
/* BB68C 800BAA8C 03E00008 */  jr         $ra
/* BB690 800BAA90 00000000 */   nop

glabel func_800BAA94
/* BB694 800BAA94 3C018018 */  lui        $at, %hi(D_8017A324)
/* BB698 800BAA98 A420A324 */  sh         $zero, %lo(D_8017A324)($at)
/* BB69C 800BAA9C 3C01800D */  lui        $at, %hi(D_800D6300)
/* BB6A0 800BAAA0 240E000F */  addiu      $t6, $zero, 0xf
/* BB6A4 800BAAA4 AC2E6300 */  sw         $t6, %lo(D_800D6300)($at)
/* BB6A8 800BAAA8 3C018016 */  lui        $at, %hi(D_8015ED70)
/* BB6AC 800BAAAC 240FFFC0 */  addiu      $t7, $zero, -0x40
/* BB6B0 800BAAB0 AC2FED70 */  sw         $t7, %lo(D_8015ED70)($at)
/* BB6B4 800BAAB4 03E00008 */  jr         $ra
/* BB6B8 800BAAB8 00000000 */   nop

glabel func_800BAABC
/* BB6BC 800BAABC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BB6C0 800BAAC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB6C4 800BAAC4 AFA40018 */  sw         $a0, 0x18($sp)
/* BB6C8 800BAAC8 3C0E8014 */  lui        $t6, %hi(D_801442D4)
/* BB6CC 800BAACC 8DCE42D4 */  lw         $t6, %lo(D_801442D4)($t6)
/* BB6D0 800BAAD0 25CFFFFE */  addiu      $t7, $t6, -2
/* BB6D4 800BAAD4 2DE1001F */  sltiu      $at, $t7, 0x1f
/* BB6D8 800BAAD8 1020010A */  beqz       $at, .L800BAF04
/* BB6DC 800BAADC 00000000 */   nop
/* BB6E0 800BAAE0 000F7880 */  sll        $t7, $t7, 2
/* BB6E4 800BAAE4 3C01800E */  lui        $at, %hi(D_800DF670)
/* BB6E8 800BAAE8 002F0821 */  addu       $at, $at, $t7
/* BB6EC 800BAAEC 8C2FF670 */  lw         $t7, %lo(D_800DF670)($at)
/* BB6F0 800BAAF0 01E00008 */  jr         $t7
/* BB6F4 800BAAF4 00000000 */   nop
/* BB6F8 800BAAF8 8FB80018 */  lw         $t8, 0x18($sp)
/* BB6FC 800BAAFC 24010002 */  addiu      $at, $zero, 2
/* BB700 800BAB00 8F19006C */  lw         $t9, 0x6c($t8)
/* BB704 800BAB04 172100FF */  bne        $t9, $at, .L800BAF04
/* BB708 800BAB08 00000000 */   nop
/* BB70C 800BAB0C C7040024 */  lwc1       $f4, 0x24($t8)
/* BB710 800BAB10 44803000 */  mtc1       $zero, $f6
/* BB714 800BAB14 00000000 */  nop
/* BB718 800BAB18 4606203E */  c.le.s     $f4, $f6
/* BB71C 800BAB1C 00000000 */  nop
/* BB720 800BAB20 450000F8 */  bc1f       .L800BAF04
/* BB724 800BAB24 00000000 */   nop
/* BB728 800BAB28 3C088016 */  lui        $t0, %hi(D_801631F4)
/* BB72C 800BAB2C 250831F4 */  addiu      $t0, $t0, %lo(D_801631F4)
/* BB730 800BAB30 8D090050 */  lw         $t1, 0x50($t0)
/* BB734 800BAB34 252A0001 */  addiu      $t2, $t1, 1
/* BB738 800BAB38 100000F2 */  b          .L800BAF04
/* BB73C 800BAB3C AD0A0050 */   sw        $t2, 0x50($t0)
/* BB740 800BAB40 8FAB0018 */  lw         $t3, 0x18($sp)
/* BB744 800BAB44 2401001B */  addiu      $at, $zero, 0x1b
/* BB748 800BAB48 8D6C006C */  lw         $t4, 0x6c($t3)
/* BB74C 800BAB4C 158100ED */  bne        $t4, $at, .L800BAF04
/* BB750 800BAB50 00000000 */   nop
/* BB754 800BAB54 C5680024 */  lwc1       $f8, 0x24($t3)
/* BB758 800BAB58 44805000 */  mtc1       $zero, $f10
/* BB75C 800BAB5C 00000000 */  nop
/* BB760 800BAB60 460A403E */  c.le.s     $f8, $f10
/* BB764 800BAB64 00000000 */  nop
/* BB768 800BAB68 450000E6 */  bc1f       .L800BAF04
/* BB76C 800BAB6C 00000000 */   nop
/* BB770 800BAB70 0C02EAA5 */  jal        func_800BAA94
/* BB774 800BAB74 00000000 */   nop
/* BB778 800BAB78 100000E2 */  b          .L800BAF04
/* BB77C 800BAB7C 00000000 */   nop
/* BB780 800BAB80 8FAD0018 */  lw         $t5, 0x18($sp)
/* BB784 800BAB84 2401001A */  addiu      $at, $zero, 0x1a
/* BB788 800BAB88 8DAE006C */  lw         $t6, 0x6c($t5)
/* BB78C 800BAB8C 15C100DD */  bne        $t6, $at, .L800BAF04
/* BB790 800BAB90 00000000 */   nop
/* BB794 800BAB94 C5B00024 */  lwc1       $f16, 0x24($t5)
/* BB798 800BAB98 44809000 */  mtc1       $zero, $f18
/* BB79C 800BAB9C 00000000 */  nop
/* BB7A0 800BABA0 4612803E */  c.le.s     $f16, $f18
/* BB7A4 800BABA4 00000000 */  nop
/* BB7A8 800BABA8 450000D6 */  bc1f       .L800BAF04
/* BB7AC 800BABAC 00000000 */   nop
/* BB7B0 800BABB0 0C02EAA5 */  jal        func_800BAA94
/* BB7B4 800BABB4 00000000 */   nop
/* BB7B8 800BABB8 100000D2 */  b          .L800BAF04
/* BB7BC 800BABBC 00000000 */   nop
/* BB7C0 800BABC0 8FAF0018 */  lw         $t7, 0x18($sp)
/* BB7C4 800BABC4 2401001A */  addiu      $at, $zero, 0x1a
/* BB7C8 800BABC8 8DF9006C */  lw         $t9, 0x6c($t7)
/* BB7CC 800BABCC 172100CD */  bne        $t9, $at, .L800BAF04
/* BB7D0 800BABD0 00000000 */   nop
/* BB7D4 800BABD4 C5E40024 */  lwc1       $f4, 0x24($t7)
/* BB7D8 800BABD8 44803000 */  mtc1       $zero, $f6
/* BB7DC 800BABDC 00000000 */  nop
/* BB7E0 800BABE0 4606203E */  c.le.s     $f4, $f6
/* BB7E4 800BABE4 00000000 */  nop
/* BB7E8 800BABE8 450000C6 */  bc1f       .L800BAF04
/* BB7EC 800BABEC 00000000 */   nop
/* BB7F0 800BABF0 0C02EAA5 */  jal        func_800BAA94
/* BB7F4 800BABF4 00000000 */   nop
/* BB7F8 800BABF8 100000C2 */  b          .L800BAF04
/* BB7FC 800BABFC 00000000 */   nop
/* BB800 800BAC00 8FB80018 */  lw         $t8, 0x18($sp)
/* BB804 800BAC04 24010003 */  addiu      $at, $zero, 3
/* BB808 800BAC08 8F09006C */  lw         $t1, 0x6c($t8)
/* BB80C 800BAC0C 152100BD */  bne        $t1, $at, .L800BAF04
/* BB810 800BAC10 00000000 */   nop
/* BB814 800BAC14 C7080024 */  lwc1       $f8, 0x24($t8)
/* BB818 800BAC18 44805000 */  mtc1       $zero, $f10
/* BB81C 800BAC1C 00000000 */  nop
/* BB820 800BAC20 460A403E */  c.le.s     $f8, $f10
/* BB824 800BAC24 00000000 */  nop
/* BB828 800BAC28 450000B6 */  bc1f       .L800BAF04
/* BB82C 800BAC2C 00000000 */   nop
/* BB830 800BAC30 3C0A8016 */  lui        $t2, %hi(D_801631F4)
/* BB834 800BAC34 254A31F4 */  addiu      $t2, $t2, %lo(D_801631F4)
/* BB838 800BAC38 8D480000 */  lw         $t0, ($t2)
/* BB83C 800BAC3C 250C0001 */  addiu      $t4, $t0, 1
/* BB840 800BAC40 100000B0 */  b          .L800BAF04
/* BB844 800BAC44 AD4C0000 */   sw        $t4, ($t2)
/* BB848 800BAC48 8FAB0018 */  lw         $t3, 0x18($sp)
/* BB84C 800BAC4C 2401001A */  addiu      $at, $zero, 0x1a
/* BB850 800BAC50 8D6E006C */  lw         $t6, 0x6c($t3)
/* BB854 800BAC54 15C100AB */  bne        $t6, $at, .L800BAF04
/* BB858 800BAC58 00000000 */   nop
/* BB85C 800BAC5C C5700024 */  lwc1       $f16, 0x24($t3)
/* BB860 800BAC60 44809000 */  mtc1       $zero, $f18
/* BB864 800BAC64 00000000 */  nop
/* BB868 800BAC68 4612803E */  c.le.s     $f16, $f18
/* BB86C 800BAC6C 00000000 */  nop
/* BB870 800BAC70 450000A4 */  bc1f       .L800BAF04
/* BB874 800BAC74 00000000 */   nop
/* BB878 800BAC78 0C02EAA5 */  jal        func_800BAA94
/* BB87C 800BAC7C 00000000 */   nop
/* BB880 800BAC80 100000A0 */  b          .L800BAF04
/* BB884 800BAC84 00000000 */   nop
/* BB888 800BAC88 8FAD0018 */  lw         $t5, 0x18($sp)
/* BB88C 800BAC8C 2401001B */  addiu      $at, $zero, 0x1b
/* BB890 800BAC90 8DB9006C */  lw         $t9, 0x6c($t5)
/* BB894 800BAC94 1721009B */  bne        $t9, $at, .L800BAF04
/* BB898 800BAC98 00000000 */   nop
/* BB89C 800BAC9C C5A40024 */  lwc1       $f4, 0x24($t5)
/* BB8A0 800BACA0 44803000 */  mtc1       $zero, $f6
/* BB8A4 800BACA4 00000000 */  nop
/* BB8A8 800BACA8 4606203E */  c.le.s     $f4, $f6
/* BB8AC 800BACAC 00000000 */  nop
/* BB8B0 800BACB0 45000094 */  bc1f       .L800BAF04
/* BB8B4 800BACB4 00000000 */   nop
/* BB8B8 800BACB8 240F000B */  addiu      $t7, $zero, 0xb
/* BB8BC 800BACBC 0C02EAA5 */  jal        func_800BAA94
/* BB8C0 800BACC0 ADAF0064 */   sw        $t7, 0x64($t5)
/* BB8C4 800BACC4 1000008F */  b          .L800BAF04
/* BB8C8 800BACC8 00000000 */   nop
/* BB8CC 800BACCC 8FA90018 */  lw         $t1, 0x18($sp)
/* BB8D0 800BACD0 24010003 */  addiu      $at, $zero, 3
/* BB8D4 800BACD4 8D38006C */  lw         $t8, 0x6c($t1)
/* BB8D8 800BACD8 13010003 */  beq        $t8, $at, .L800BACE8
/* BB8DC 800BACDC 24010002 */   addiu     $at, $zero, 2
/* BB8E0 800BACE0 17010088 */  bne        $t8, $at, .L800BAF04
/* BB8E4 800BACE4 00000000 */   nop
.L800BACE8:
/* BB8E8 800BACE8 8FA80018 */  lw         $t0, 0x18($sp)
/* BB8EC 800BACEC 44805000 */  mtc1       $zero, $f10
/* BB8F0 800BACF0 C5080024 */  lwc1       $f8, 0x24($t0)
/* BB8F4 800BACF4 460A403E */  c.le.s     $f8, $f10
/* BB8F8 800BACF8 00000000 */  nop
/* BB8FC 800BACFC 45000081 */  bc1f       .L800BAF04
/* BB900 800BAD00 00000000 */   nop
/* BB904 800BAD04 3C0C8016 */  lui        $t4, %hi(D_801631F4)
/* BB908 800BAD08 258C31F4 */  addiu      $t4, $t4, %lo(D_801631F4)
/* BB90C 800BAD0C 8D8A0000 */  lw         $t2, ($t4)
/* BB910 800BAD10 254E0001 */  addiu      $t6, $t2, 1
/* BB914 800BAD14 1000007B */  b          .L800BAF04
/* BB918 800BAD18 AD8E0000 */   sw        $t6, ($t4)
/* BB91C 800BAD1C 8FAB0018 */  lw         $t3, 0x18($sp)
/* BB920 800BAD20 24010019 */  addiu      $at, $zero, 0x19
/* BB924 800BAD24 8D79006C */  lw         $t9, 0x6c($t3)
/* BB928 800BAD28 17210076 */  bne        $t9, $at, .L800BAF04
/* BB92C 800BAD2C 00000000 */   nop
/* BB930 800BAD30 C5700024 */  lwc1       $f16, 0x24($t3)
/* BB934 800BAD34 44809000 */  mtc1       $zero, $f18
/* BB938 800BAD38 00000000 */  nop
/* BB93C 800BAD3C 4612803E */  c.le.s     $f16, $f18
/* BB940 800BAD40 00000000 */  nop
/* BB944 800BAD44 4500006F */  bc1f       .L800BAF04
/* BB948 800BAD48 00000000 */   nop
/* BB94C 800BAD4C 240F000B */  addiu      $t7, $zero, 0xb
/* BB950 800BAD50 0C02EAA5 */  jal        func_800BAA94
/* BB954 800BAD54 AD6F0064 */   sw        $t7, 0x64($t3)
/* BB958 800BAD58 1000006A */  b          .L800BAF04
/* BB95C 800BAD5C 00000000 */   nop
/* BB960 800BAD60 8FAD0018 */  lw         $t5, 0x18($sp)
/* BB964 800BAD64 24010019 */  addiu      $at, $zero, 0x19
/* BB968 800BAD68 8DA9006C */  lw         $t1, 0x6c($t5)
/* BB96C 800BAD6C 1521000B */  bne        $t1, $at, .L800BAD9C
/* BB970 800BAD70 00000000 */   nop
/* BB974 800BAD74 C5A40024 */  lwc1       $f4, 0x24($t5)
/* BB978 800BAD78 44803000 */  mtc1       $zero, $f6
/* BB97C 800BAD7C 00000000 */  nop
/* BB980 800BAD80 4606203E */  c.le.s     $f4, $f6
/* BB984 800BAD84 00000000 */  nop
/* BB988 800BAD88 45000004 */  bc1f       .L800BAD9C
/* BB98C 800BAD8C 00000000 */   nop
/* BB990 800BAD90 2418000B */  addiu      $t8, $zero, 0xb
/* BB994 800BAD94 0C02EAA5 */  jal        func_800BAA94
/* BB998 800BAD98 ADB80064 */   sw        $t8, 0x64($t5)
.L800BAD9C:
/* BB99C 800BAD9C 8FA80018 */  lw         $t0, 0x18($sp)
/* BB9A0 800BADA0 24010003 */  addiu      $at, $zero, 3
/* BB9A4 800BADA4 8D0A006C */  lw         $t2, 0x6c($t0)
/* BB9A8 800BADA8 11410003 */  beq        $t2, $at, .L800BADB8
/* BB9AC 800BADAC 24010002 */   addiu     $at, $zero, 2
/* BB9B0 800BADB0 15410054 */  bne        $t2, $at, .L800BAF04
/* BB9B4 800BADB4 00000000 */   nop
.L800BADB8:
/* BB9B8 800BADB8 8FAE0018 */  lw         $t6, 0x18($sp)
/* BB9BC 800BADBC 44805000 */  mtc1       $zero, $f10
/* BB9C0 800BADC0 C5C80024 */  lwc1       $f8, 0x24($t6)
/* BB9C4 800BADC4 460A403E */  c.le.s     $f8, $f10
/* BB9C8 800BADC8 00000000 */  nop
/* BB9CC 800BADCC 4500004D */  bc1f       .L800BAF04
/* BB9D0 800BADD0 00000000 */   nop
/* BB9D4 800BADD4 3C0C8016 */  lui        $t4, %hi(D_801631F4)
/* BB9D8 800BADD8 258C31F4 */  addiu      $t4, $t4, %lo(D_801631F4)
/* BB9DC 800BADDC 8D990050 */  lw         $t9, 0x50($t4)
/* BB9E0 800BADE0 272F0001 */  addiu      $t7, $t9, 1
/* BB9E4 800BADE4 10000047 */  b          .L800BAF04
/* BB9E8 800BADE8 AD8F0050 */   sw        $t7, 0x50($t4)
/* BB9EC 800BADEC 8FAB0018 */  lw         $t3, 0x18($sp)
/* BB9F0 800BADF0 24010003 */  addiu      $at, $zero, 3
/* BB9F4 800BADF4 8D69006C */  lw         $t1, 0x6c($t3)
/* BB9F8 800BADF8 15210042 */  bne        $t1, $at, .L800BAF04
/* BB9FC 800BADFC 00000000 */   nop
/* BBA00 800BAE00 C5700024 */  lwc1       $f16, 0x24($t3)
/* BBA04 800BAE04 44809000 */  mtc1       $zero, $f18
/* BBA08 800BAE08 00000000 */  nop
/* BBA0C 800BAE0C 4612803E */  c.le.s     $f16, $f18
/* BBA10 800BAE10 00000000 */  nop
/* BBA14 800BAE14 4500003B */  bc1f       .L800BAF04
/* BBA18 800BAE18 00000000 */   nop
/* BBA1C 800BAE1C 3C188016 */  lui        $t8, %hi(D_801631F4)
/* BBA20 800BAE20 271831F4 */  addiu      $t8, $t8, %lo(D_801631F4)
/* BBA24 800BAE24 8F0D0050 */  lw         $t5, 0x50($t8)
/* BBA28 800BAE28 25A80001 */  addiu      $t0, $t5, 1
/* BBA2C 800BAE2C 10000035 */  b          .L800BAF04
/* BBA30 800BAE30 AF080050 */   sw        $t0, 0x50($t8)
/* BBA34 800BAE34 8FAA0018 */  lw         $t2, 0x18($sp)
/* BBA38 800BAE38 24010003 */  addiu      $at, $zero, 3
/* BBA3C 800BAE3C 8D4E006C */  lw         $t6, 0x6c($t2)
/* BBA40 800BAE40 15C10030 */  bne        $t6, $at, .L800BAF04
/* BBA44 800BAE44 00000000 */   nop
/* BBA48 800BAE48 C5440024 */  lwc1       $f4, 0x24($t2)
/* BBA4C 800BAE4C 44803000 */  mtc1       $zero, $f6
/* BBA50 800BAE50 00000000 */  nop
/* BBA54 800BAE54 4606203E */  c.le.s     $f4, $f6
/* BBA58 800BAE58 00000000 */  nop
/* BBA5C 800BAE5C 45000029 */  bc1f       .L800BAF04
/* BBA60 800BAE60 00000000 */   nop
/* BBA64 800BAE64 3C198016 */  lui        $t9, %hi(D_801631F4)
/* BBA68 800BAE68 273931F4 */  addiu      $t9, $t9, %lo(D_801631F4)
/* BBA6C 800BAE6C 8F2F0050 */  lw         $t7, 0x50($t9)
/* BBA70 800BAE70 25EC0001 */  addiu      $t4, $t7, 1
/* BBA74 800BAE74 10000023 */  b          .L800BAF04
/* BBA78 800BAE78 AF2C0050 */   sw        $t4, 0x50($t9)
/* BBA7C 800BAE7C 8FA90018 */  lw         $t1, 0x18($sp)
/* BBA80 800BAE80 24010019 */  addiu      $at, $zero, 0x19
/* BBA84 800BAE84 8D2B006C */  lw         $t3, 0x6c($t1)
/* BBA88 800BAE88 1561001E */  bne        $t3, $at, .L800BAF04
/* BBA8C 800BAE8C 00000000 */   nop
/* BBA90 800BAE90 C5280024 */  lwc1       $f8, 0x24($t1)
/* BBA94 800BAE94 44805000 */  mtc1       $zero, $f10
/* BBA98 800BAE98 00000000 */  nop
/* BBA9C 800BAE9C 460A403E */  c.le.s     $f8, $f10
/* BBAA0 800BAEA0 00000000 */  nop
/* BBAA4 800BAEA4 45000017 */  bc1f       .L800BAF04
/* BBAA8 800BAEA8 00000000 */   nop
/* BBAAC 800BAEAC 240D000B */  addiu      $t5, $zero, 0xb
/* BBAB0 800BAEB0 0C02EAA5 */  jal        func_800BAA94
/* BBAB4 800BAEB4 AD2D0064 */   sw        $t5, 0x64($t1)
/* BBAB8 800BAEB8 10000012 */  b          .L800BAF04
/* BBABC 800BAEBC 00000000 */   nop
/* BBAC0 800BAEC0 8FA80018 */  lw         $t0, 0x18($sp)
/* BBAC4 800BAEC4 24010002 */  addiu      $at, $zero, 2
/* BBAC8 800BAEC8 8D18006C */  lw         $t8, 0x6c($t0)
/* BBACC 800BAECC 1701000D */  bne        $t8, $at, .L800BAF04
/* BBAD0 800BAED0 00000000 */   nop
/* BBAD4 800BAED4 C5100024 */  lwc1       $f16, 0x24($t0)
/* BBAD8 800BAED8 44809000 */  mtc1       $zero, $f18
/* BBADC 800BAEDC 00000000 */  nop
/* BBAE0 800BAEE0 4612803E */  c.le.s     $f16, $f18
/* BBAE4 800BAEE4 00000000 */  nop
/* BBAE8 800BAEE8 45000006 */  bc1f       .L800BAF04
/* BBAEC 800BAEEC 00000000 */   nop
/* BBAF0 800BAEF0 3C0E8016 */  lui        $t6, %hi(D_801631F4)
/* BBAF4 800BAEF4 25CE31F4 */  addiu      $t6, $t6, %lo(D_801631F4)
/* BBAF8 800BAEF8 8DCA0050 */  lw         $t2, 0x50($t6)
/* BBAFC 800BAEFC 254F0001 */  addiu      $t7, $t2, 1
/* BBB00 800BAF00 ADCF0050 */  sw         $t7, 0x50($t6)
.L800BAF04:
/* BBB04 800BAF04 8FBF0014 */  lw         $ra, 0x14($sp)
/* BBB08 800BAF08 27BD0018 */  addiu      $sp, $sp, 0x18
/* BBB0C 800BAF0C 03E00008 */  jr         $ra
/* BBB10 800BAF10 00000000 */   nop

glabel func_800BAF14
/* BBB14 800BAF14 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BBB18 800BAF18 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BBB1C 800BAF1C 24010001 */  addiu      $at, $zero, 1
/* BBB20 800BAF20 15C10011 */  bne        $t6, $at, .L800BAF68
/* BBB24 800BAF24 00000000 */   nop
/* BBB28 800BAF28 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* BBB2C 800BAF2C 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* BBB30 800BAF30 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* BBB34 800BAF34 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* BBB38 800BAF38 0018C880 */  sll        $t9, $t8, 2
/* BBB3C 800BAF3C 0338C823 */  subu       $t9, $t9, $t8
/* BBB40 800BAF40 0019C880 */  sll        $t9, $t9, 2
/* BBB44 800BAF44 0338C823 */  subu       $t9, $t9, $t8
/* BBB48 800BAF48 0019C880 */  sll        $t9, $t9, 2
/* BBB4C 800BAF4C 0338C821 */  addu       $t9, $t9, $t8
/* BBB50 800BAF50 0019C880 */  sll        $t9, $t9, 2
/* BBB54 800BAF54 44802000 */  mtc1       $zero, $f4
/* BBB58 800BAF58 0338C823 */  subu       $t9, $t9, $t8
/* BBB5C 800BAF5C 0019C880 */  sll        $t9, $t9, 2
/* BBB60 800BAF60 01F94021 */  addu       $t0, $t7, $t9
/* BBB64 800BAF64 E5040024 */  swc1       $f4, 0x24($t0)
.L800BAF68:
/* BBB68 800BAF68 03E00008 */  jr         $ra
/* BBB6C 800BAF6C 00000000 */   nop

glabel func_800BAF70
/* BBB70 800BAF70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BBB74 800BAF74 AFBF001C */  sw         $ra, 0x1c($sp)
/* BBB78 800BAF78 3C0E800E */  lui        $t6, %hi(D_800D9FD0)
/* BBB7C 800BAF7C 8DCE9FD0 */  lw         $t6, %lo(D_800D9FD0)($t6)
/* BBB80 800BAF80 15C00045 */  bnez       $t6, .L800BB098
/* BBB84 800BAF84 00000000 */   nop
/* BBB88 800BAF88 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* BBB8C 800BAF8C 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* BBB90 800BAF90 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* BBB94 800BAF94 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* BBB98 800BAF98 0018C880 */  sll        $t9, $t8, 2
/* BBB9C 800BAF9C 0338C823 */  subu       $t9, $t9, $t8
/* BBBA0 800BAFA0 0019C880 */  sll        $t9, $t9, 2
/* BBBA4 800BAFA4 0338C823 */  subu       $t9, $t9, $t8
/* BBBA8 800BAFA8 0019C880 */  sll        $t9, $t9, 2
/* BBBAC 800BAFAC 0338C821 */  addu       $t9, $t9, $t8
/* BBBB0 800BAFB0 0019C880 */  sll        $t9, $t9, 2
/* BBBB4 800BAFB4 0338C823 */  subu       $t9, $t9, $t8
/* BBBB8 800BAFB8 0019C880 */  sll        $t9, $t9, 2
/* BBBBC 800BAFBC 01F94021 */  addu       $t0, $t7, $t9
/* BBBC0 800BAFC0 C50400E4 */  lwc1       $f4, 0xe4($t0)
/* BBBC4 800BAFC4 3C01800E */  lui        $at, %hi(D_800DF6F0)
/* BBBC8 800BAFC8 D428F6F0 */  ldc1       $f8, %lo(D_800DF6F0)($at)
/* BBBCC 800BAFCC 460021A1 */  cvt.d.s    $f6, $f4
/* BBBD0 800BAFD0 4626403C */  c.lt.d     $f8, $f6
/* BBBD4 800BAFD4 00000000 */  nop
/* BBBD8 800BAFD8 45000034 */  bc1f       .L800BB0AC
/* BBBDC 800BAFDC 00000000 */   nop
/* BBBE0 800BAFE0 C50A0294 */  lwc1       $f10, 0x294($t0)
/* BBBE4 800BAFE4 3C014069 */  lui        $at, 0x4069
/* BBBE8 800BAFE8 44819800 */  mtc1       $at, $f19
/* BBBEC 800BAFEC 44809000 */  mtc1       $zero, $f18
/* BBBF0 800BAFF0 46005421 */  cvt.d.s    $f16, $f10
/* BBBF4 800BAFF4 4630903C */  c.lt.d     $f18, $f16
/* BBBF8 800BAFF8 00000000 */  nop
/* BBBFC 800BAFFC 4500002B */  bc1f       .L800BB0AC
/* BBC00 800BB000 3C01800D */   lui       $at, %hi(D_800D7D6C)
/* BBC04 800BB004 C4247D6C */  lwc1       $f4, %lo(D_800D7D6C)($at)
/* BBC08 800BB008 3C01800E */  lui        $at, %hi(D_800DF6F8)
/* BBC0C 800BB00C D428F6F8 */  ldc1       $f8, %lo(D_800DF6F8)($at)
/* BBC10 800BB010 460021A1 */  cvt.d.s    $f6, $f4
/* BBC14 800BB014 4628303C */  c.lt.d     $f6, $f8
/* BBC18 800BB018 00000000 */  nop
/* BBC1C 800BB01C 45000023 */  bc1f       .L800BB0AC
/* BBC20 800BB020 3C01800E */   lui       $at, %hi(D_800D9FD4)
/* BBC24 800BB024 C42A9FD4 */  lwc1       $f10, %lo(D_800D9FD4)($at)
/* BBC28 800BB028 3C01800E */  lui        $at, %hi(D_800DF700)
/* BBC2C 800BB02C D426F700 */  ldc1       $f6, %lo(D_800DF700)($at)
/* BBC30 800BB030 46045401 */  sub.s      $f16, $f10, $f4
/* BBC34 800BB034 460084A1 */  cvt.d.s    $f18, $f16
/* BBC38 800BB038 4632303C */  c.lt.d     $f6, $f18
/* BBC3C 800BB03C 00000000 */  nop
/* BBC40 800BB040 4500001A */  bc1f       .L800BB0AC
/* BBC44 800BB044 00000000 */   nop
/* BBC48 800BB048 0C000ADC */  jal        func_80002B70
/* BBC4C 800BB04C 24040002 */   addiu     $a0, $zero, 2
/* BBC50 800BB050 14400016 */  bnez       $v0, .L800BB0AC
/* BBC54 800BB054 00000000 */   nop
/* BBC58 800BB058 3C09800E */  lui        $t1, %hi(D_800D9FD0)
/* BBC5C 800BB05C 8D299FD0 */  lw         $t1, %lo(D_800D9FD0)($t1)
/* BBC60 800BB060 15200012 */  bnez       $t1, .L800BB0AC
/* BBC64 800BB064 00000000 */   nop
/* BBC68 800BB068 240A0003 */  addiu      $t2, $zero, 3
/* BBC6C 800BB06C 3C01800E */  lui        $at, %hi(D_800D9FD0)
/* BBC70 800BB070 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* BBC74 800BB074 AC2A9FD0 */  sw         $t2, %lo(D_800D9FD0)($at)
/* BBC78 800BB078 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* BBC7C 800BB07C 24040002 */  addiu      $a0, $zero, 2
/* BBC80 800BB080 3C053FC0 */  lui        $a1, 0x3fc0
/* BBC84 800BB084 24070040 */  addiu      $a3, $zero, 0x40
/* BBC88 800BB088 0C0009DF */  jal        func_8000277C
/* BBC8C 800BB08C AFA00010 */   sw        $zero, 0x10($sp)
/* BBC90 800BB090 10000006 */  b          .L800BB0AC
/* BBC94 800BB094 00000000 */   nop
.L800BB098:
/* BBC98 800BB098 3C0B800E */  lui        $t3, %hi(D_800D9FD0)
/* BBC9C 800BB09C 8D6B9FD0 */  lw         $t3, %lo(D_800D9FD0)($t3)
/* BBCA0 800BB0A0 3C01800E */  lui        $at, %hi(D_800D9FD0)
/* BBCA4 800BB0A4 256CFFFF */  addiu      $t4, $t3, -1
/* BBCA8 800BB0A8 AC2C9FD0 */  sw         $t4, %lo(D_800D9FD0)($at)
.L800BB0AC:
/* BBCAC 800BB0AC 3C01800D */  lui        $at, %hi(D_800D7D6C)
/* BBCB0 800BB0B0 C4287D6C */  lwc1       $f8, %lo(D_800D7D6C)($at)
/* BBCB4 800BB0B4 3C01800E */  lui        $at, %hi(D_800D9FD4)
/* BBCB8 800BB0B8 E4289FD4 */  swc1       $f8, %lo(D_800D9FD4)($at)
/* BBCBC 800BB0BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* BBCC0 800BB0C0 27BD0020 */  addiu      $sp, $sp, 0x20
/* BBCC4 800BB0C4 03E00008 */  jr         $ra
/* BBCC8 800BB0C8 00000000 */   nop

glabel func_800BB0CC
/* BBCCC 800BB0CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BBCD0 800BB0D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BBCD4 800BB0D4 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* BBCD8 800BB0D8 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* BBCDC 800BB0DC 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* BBCE0 800BB0E0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* BBCE4 800BB0E4 0018C880 */  sll        $t9, $t8, 2
/* BBCE8 800BB0E8 0338C823 */  subu       $t9, $t9, $t8
/* BBCEC 800BB0EC 0019C880 */  sll        $t9, $t9, 2
/* BBCF0 800BB0F0 0338C823 */  subu       $t9, $t9, $t8
/* BBCF4 800BB0F4 0019C880 */  sll        $t9, $t9, 2
/* BBCF8 800BB0F8 0338C821 */  addu       $t9, $t9, $t8
/* BBCFC 800BB0FC 0019C880 */  sll        $t9, $t9, 2
/* BBD00 800BB100 0338C823 */  subu       $t9, $t9, $t8
/* BBD04 800BB104 0019C880 */  sll        $t9, $t9, 2
/* BBD08 800BB108 240E001B */  addiu      $t6, $zero, 0x1b
/* BBD0C 800BB10C 01F94021 */  addu       $t0, $t7, $t9
/* BBD10 800BB110 AD0E0278 */  sw         $t6, 0x278($t0)
/* BBD14 800BB114 3C0B8016 */  lui        $t3, %hi(D_8015FB88)
/* BBD18 800BB118 8D6BFB88 */  lw         $t3, %lo(D_8015FB88)($t3)
/* BBD1C 800BB11C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* BBD20 800BB120 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* BBD24 800BB124 000B6080 */  sll        $t4, $t3, 2
/* BBD28 800BB128 018B6023 */  subu       $t4, $t4, $t3
/* BBD2C 800BB12C 000C6080 */  sll        $t4, $t4, 2
/* BBD30 800BB130 018B6023 */  subu       $t4, $t4, $t3
/* BBD34 800BB134 000C6080 */  sll        $t4, $t4, 2
/* BBD38 800BB138 018B6021 */  addu       $t4, $t4, $t3
/* BBD3C 800BB13C 000C6080 */  sll        $t4, $t4, 2
/* BBD40 800BB140 018B6023 */  subu       $t4, $t4, $t3
/* BBD44 800BB144 000C6080 */  sll        $t4, $t4, 2
/* BBD48 800BB148 24090035 */  addiu      $t1, $zero, 0x35
/* BBD4C 800BB14C 014C6821 */  addu       $t5, $t2, $t4
/* BBD50 800BB150 ADA90274 */  sw         $t1, 0x274($t5)
/* BBD54 800BB154 3C198016 */  lui        $t9, %hi(D_8015FB88)
/* BBD58 800BB158 8F39FB88 */  lw         $t9, %lo(D_8015FB88)($t9)
/* BBD5C 800BB15C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* BBD60 800BB160 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* BBD64 800BB164 00197080 */  sll        $t6, $t9, 2
/* BBD68 800BB168 01D97023 */  subu       $t6, $t6, $t9
/* BBD6C 800BB16C 000E7080 */  sll        $t6, $t6, 2
/* BBD70 800BB170 01D97023 */  subu       $t6, $t6, $t9
/* BBD74 800BB174 000E7080 */  sll        $t6, $t6, 2
/* BBD78 800BB178 01D97021 */  addu       $t6, $t6, $t9
/* BBD7C 800BB17C 000E7080 */  sll        $t6, $t6, 2
/* BBD80 800BB180 01D97023 */  subu       $t6, $t6, $t9
/* BBD84 800BB184 000E7080 */  sll        $t6, $t6, 2
/* BBD88 800BB188 24180005 */  addiu      $t8, $zero, 5
/* BBD8C 800BB18C 01EE4021 */  addu       $t0, $t7, $t6
/* BBD90 800BB190 AD180270 */  sw         $t8, 0x270($t0)
/* BBD94 800BB194 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* BBD98 800BB198 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* BBD9C 800BB19C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* BBDA0 800BB1A0 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* BBDA4 800BB1A4 000C4880 */  sll        $t1, $t4, 2
/* BBDA8 800BB1A8 012C4823 */  subu       $t1, $t1, $t4
/* BBDAC 800BB1AC 00094880 */  sll        $t1, $t1, 2
/* BBDB0 800BB1B0 012C4823 */  subu       $t1, $t1, $t4
/* BBDB4 800BB1B4 00094880 */  sll        $t1, $t1, 2
/* BBDB8 800BB1B8 012C4821 */  addu       $t1, $t1, $t4
/* BBDBC 800BB1BC 00094880 */  sll        $t1, $t1, 2
/* BBDC0 800BB1C0 012C4823 */  subu       $t1, $t1, $t4
/* BBDC4 800BB1C4 00094880 */  sll        $t1, $t1, 2
/* BBDC8 800BB1C8 240B0001 */  addiu      $t3, $zero, 1
/* BBDCC 800BB1CC 01496821 */  addu       $t5, $t2, $t1
/* BBDD0 800BB1D0 ADAB0268 */  sw         $t3, 0x268($t5)
/* BBDD4 800BB1D4 3C0F8016 */  lui        $t7, %hi(D_8015FB88)
/* BBDD8 800BB1D8 8DEFFB88 */  lw         $t7, %lo(D_8015FB88)($t7)
/* BBDDC 800BB1DC 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* BBDE0 800BB1E0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* BBDE4 800BB1E4 000F7080 */  sll        $t6, $t7, 2
/* BBDE8 800BB1E8 01CF7023 */  subu       $t6, $t6, $t7
/* BBDEC 800BB1EC 000E7080 */  sll        $t6, $t6, 2
/* BBDF0 800BB1F0 01CF7023 */  subu       $t6, $t6, $t7
/* BBDF4 800BB1F4 000E7080 */  sll        $t6, $t6, 2
/* BBDF8 800BB1F8 01CF7021 */  addu       $t6, $t6, $t7
/* BBDFC 800BB1FC 000E7080 */  sll        $t6, $t6, 2
/* BBE00 800BB200 44802000 */  mtc1       $zero, $f4
/* BBE04 800BB204 01CF7023 */  subu       $t6, $t6, $t7
/* BBE08 800BB208 000E7080 */  sll        $t6, $t6, 2
/* BBE0C 800BB20C 032EC021 */  addu       $t8, $t9, $t6
/* BBE10 800BB210 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* BBE14 800BB214 E7040290 */  swc1       $f4, 0x290($t8)
/* BBE18 800BB218 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* BBE1C 800BB21C 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* BBE20 800BB220 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* BBE24 800BB224 000C5080 */  sll        $t2, $t4, 2
/* BBE28 800BB228 014C5023 */  subu       $t2, $t2, $t4
/* BBE2C 800BB22C 000A5080 */  sll        $t2, $t2, 2
/* BBE30 800BB230 014C5023 */  subu       $t2, $t2, $t4
/* BBE34 800BB234 000A5080 */  sll        $t2, $t2, 2
/* BBE38 800BB238 014C5021 */  addu       $t2, $t2, $t4
/* BBE3C 800BB23C 000A5080 */  sll        $t2, $t2, 2
/* BBE40 800BB240 44803000 */  mtc1       $zero, $f6
/* BBE44 800BB244 014C5023 */  subu       $t2, $t2, $t4
/* BBE48 800BB248 000A5080 */  sll        $t2, $t2, 2
/* BBE4C 800BB24C 010A4821 */  addu       $t1, $t0, $t2
/* BBE50 800BB250 3C0D8016 */  lui        $t5, %hi(D_8015FB88)
/* BBE54 800BB254 E5260294 */  swc1       $f6, 0x294($t1)
/* BBE58 800BB258 8DADFB88 */  lw         $t5, %lo(D_8015FB88)($t5)
/* BBE5C 800BB25C 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* BBE60 800BB260 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* BBE64 800BB264 000D7880 */  sll        $t7, $t5, 2
/* BBE68 800BB268 01ED7823 */  subu       $t7, $t7, $t5
/* BBE6C 800BB26C 000F7880 */  sll        $t7, $t7, 2
/* BBE70 800BB270 01ED7823 */  subu       $t7, $t7, $t5
/* BBE74 800BB274 000F7880 */  sll        $t7, $t7, 2
/* BBE78 800BB278 01ED7821 */  addu       $t7, $t7, $t5
/* BBE7C 800BB27C 000F7880 */  sll        $t7, $t7, 2
/* BBE80 800BB280 01ED7823 */  subu       $t7, $t7, $t5
/* BBE84 800BB284 000F7880 */  sll        $t7, $t7, 2
/* BBE88 800BB288 016FC821 */  addu       $t9, $t3, $t7
/* BBE8C 800BB28C AF200058 */  sw         $zero, 0x58($t9)
/* BBE90 800BB290 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* BBE94 800BB294 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* BBE98 800BB298 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* BBE9C 800BB29C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* BBEA0 800BB2A0 00186080 */  sll        $t4, $t8, 2
/* BBEA4 800BB2A4 01986023 */  subu       $t4, $t4, $t8
/* BBEA8 800BB2A8 000C6080 */  sll        $t4, $t4, 2
/* BBEAC 800BB2AC 01986023 */  subu       $t4, $t4, $t8
/* BBEB0 800BB2B0 000C6080 */  sll        $t4, $t4, 2
/* BBEB4 800BB2B4 01986021 */  addu       $t4, $t4, $t8
/* BBEB8 800BB2B8 000C6080 */  sll        $t4, $t4, 2
/* BBEBC 800BB2BC 01986023 */  subu       $t4, $t4, $t8
/* BBEC0 800BB2C0 000C6080 */  sll        $t4, $t4, 2
/* BBEC4 800BB2C4 01CC4021 */  addu       $t0, $t6, $t4
/* BBEC8 800BB2C8 AD00005C */  sw         $zero, 0x5c($t0)
/* BBECC 800BB2CC 3C0D8016 */  lui        $t5, %hi(D_8015FB88)
/* BBED0 800BB2D0 8DADFB88 */  lw         $t5, %lo(D_8015FB88)($t5)
/* BBED4 800BB2D4 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* BBED8 800BB2D8 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* BBEDC 800BB2DC 000D5880 */  sll        $t3, $t5, 2
/* BBEE0 800BB2E0 016D5823 */  subu       $t3, $t3, $t5
/* BBEE4 800BB2E4 000B5880 */  sll        $t3, $t3, 2
/* BBEE8 800BB2E8 016D5823 */  subu       $t3, $t3, $t5
/* BBEEC 800BB2EC 000B5880 */  sll        $t3, $t3, 2
/* BBEF0 800BB2F0 016D5821 */  addu       $t3, $t3, $t5
/* BBEF4 800BB2F4 000B5880 */  sll        $t3, $t3, 2
/* BBEF8 800BB2F8 016D5823 */  subu       $t3, $t3, $t5
/* BBEFC 800BB2FC 000B5880 */  sll        $t3, $t3, 2
/* BBF00 800BB300 240A0001 */  addiu      $t2, $zero, 1
/* BBF04 800BB304 012B7821 */  addu       $t7, $t1, $t3
/* BBF08 800BB308 ADEA0280 */  sw         $t2, 0x280($t7)
/* BBF0C 800BB30C 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* BBF10 800BB310 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* BBF14 800BB314 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* BBF18 800BB318 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* BBF1C 800BB31C 00187080 */  sll        $t6, $t8, 2
/* BBF20 800BB320 01D87023 */  subu       $t6, $t6, $t8
/* BBF24 800BB324 000E7080 */  sll        $t6, $t6, 2
/* BBF28 800BB328 01D87023 */  subu       $t6, $t6, $t8
/* BBF2C 800BB32C 000E7080 */  sll        $t6, $t6, 2
/* BBF30 800BB330 01D87021 */  addu       $t6, $t6, $t8
/* BBF34 800BB334 000E7080 */  sll        $t6, $t6, 2
/* BBF38 800BB338 44804000 */  mtc1       $zero, $f8
/* BBF3C 800BB33C 01D87023 */  subu       $t6, $t6, $t8
/* BBF40 800BB340 000E7080 */  sll        $t6, $t6, 2
/* BBF44 800BB344 032E6021 */  addu       $t4, $t9, $t6
/* BBF48 800BB348 3C0D8016 */  lui        $t5, %hi(D_8015FB88)
/* BBF4C 800BB34C E58800D4 */  swc1       $f8, 0xd4($t4)
/* BBF50 800BB350 8DADFB88 */  lw         $t5, %lo(D_8015FB88)($t5)
/* BBF54 800BB354 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* BBF58 800BB358 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* BBF5C 800BB35C 000D4880 */  sll        $t1, $t5, 2
/* BBF60 800BB360 012D4823 */  subu       $t1, $t1, $t5
/* BBF64 800BB364 00094880 */  sll        $t1, $t1, 2
/* BBF68 800BB368 012D4823 */  subu       $t1, $t1, $t5
/* BBF6C 800BB36C 00094880 */  sll        $t1, $t1, 2
/* BBF70 800BB370 012D4821 */  addu       $t1, $t1, $t5
/* BBF74 800BB374 00094880 */  sll        $t1, $t1, 2
/* BBF78 800BB378 44805000 */  mtc1       $zero, $f10
/* BBF7C 800BB37C 012D4823 */  subu       $t1, $t1, $t5
/* BBF80 800BB380 00094880 */  sll        $t1, $t1, 2
/* BBF84 800BB384 01095821 */  addu       $t3, $t0, $t1
/* BBF88 800BB388 3C0F8016 */  lui        $t7, %hi(D_8015FB88)
/* BBF8C 800BB38C E56A00D8 */  swc1       $f10, 0xd8($t3)
/* BBF90 800BB390 8DEFFB88 */  lw         $t7, %lo(D_8015FB88)($t7)
/* BBF94 800BB394 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* BBF98 800BB398 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* BBF9C 800BB39C 000FC080 */  sll        $t8, $t7, 2
/* BBFA0 800BB3A0 030FC023 */  subu       $t8, $t8, $t7
/* BBFA4 800BB3A4 0018C080 */  sll        $t8, $t8, 2
/* BBFA8 800BB3A8 030FC023 */  subu       $t8, $t8, $t7
/* BBFAC 800BB3AC 0018C080 */  sll        $t8, $t8, 2
/* BBFB0 800BB3B0 030FC021 */  addu       $t8, $t8, $t7
/* BBFB4 800BB3B4 0018C080 */  sll        $t8, $t8, 2
/* BBFB8 800BB3B8 44808000 */  mtc1       $zero, $f16
/* BBFBC 800BB3BC 030FC023 */  subu       $t8, $t8, $t7
/* BBFC0 800BB3C0 0018C080 */  sll        $t8, $t8, 2
/* BBFC4 800BB3C4 0158C821 */  addu       $t9, $t2, $t8
/* BBFC8 800BB3C8 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* BBFCC 800BB3CC E73000DC */  swc1       $f16, 0xdc($t9)
/* BBFD0 800BB3D0 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* BBFD4 800BB3D4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* BBFD8 800BB3D8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* BBFDC 800BB3DC 000C6880 */  sll        $t5, $t4, 2
/* BBFE0 800BB3E0 01AC6823 */  subu       $t5, $t5, $t4
/* BBFE4 800BB3E4 000D6880 */  sll        $t5, $t5, 2
/* BBFE8 800BB3E8 01AC6823 */  subu       $t5, $t5, $t4
/* BBFEC 800BB3EC 000D6880 */  sll        $t5, $t5, 2
/* BBFF0 800BB3F0 01AC6821 */  addu       $t5, $t5, $t4
/* BBFF4 800BB3F4 000D6880 */  sll        $t5, $t5, 2
/* BBFF8 800BB3F8 44809000 */  mtc1       $zero, $f18
/* BBFFC 800BB3FC 01AC6823 */  subu       $t5, $t5, $t4
/* BC000 800BB400 000D6880 */  sll        $t5, $t5, 2
/* BC004 800BB404 01CD4021 */  addu       $t0, $t6, $t5
/* BC008 800BB408 3C0B8016 */  lui        $t3, %hi(D_8015FB88)
/* BC00C 800BB40C E51200F4 */  swc1       $f18, 0xf4($t0)
/* BC010 800BB410 8D6BFB88 */  lw         $t3, %lo(D_8015FB88)($t3)
/* BC014 800BB414 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* BC018 800BB418 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* BC01C 800BB41C 000B7880 */  sll        $t7, $t3, 2
/* BC020 800BB420 01EB7823 */  subu       $t7, $t7, $t3
/* BC024 800BB424 000F7880 */  sll        $t7, $t7, 2
/* BC028 800BB428 01EB7823 */  subu       $t7, $t7, $t3
/* BC02C 800BB42C 000F7880 */  sll        $t7, $t7, 2
/* BC030 800BB430 01EB7821 */  addu       $t7, $t7, $t3
/* BC034 800BB434 000F7880 */  sll        $t7, $t7, 2
/* BC038 800BB438 44802000 */  mtc1       $zero, $f4
/* BC03C 800BB43C 01EB7823 */  subu       $t7, $t7, $t3
/* BC040 800BB440 000F7880 */  sll        $t7, $t7, 2
/* BC044 800BB444 012F5021 */  addu       $t2, $t1, $t7
/* BC048 800BB448 3C198016 */  lui        $t9, %hi(D_8015FB88)
/* BC04C 800BB44C E5440104 */  swc1       $f4, 0x104($t2)
/* BC050 800BB450 8F39FB88 */  lw         $t9, %lo(D_8015FB88)($t9)
/* BC054 800BB454 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* BC058 800BB458 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* BC05C 800BB45C 00196080 */  sll        $t4, $t9, 2
/* BC060 800BB460 01996023 */  subu       $t4, $t4, $t9
/* BC064 800BB464 000C6080 */  sll        $t4, $t4, 2
/* BC068 800BB468 01996023 */  subu       $t4, $t4, $t9
/* BC06C 800BB46C 000C6080 */  sll        $t4, $t4, 2
/* BC070 800BB470 01996021 */  addu       $t4, $t4, $t9
/* BC074 800BB474 000C6080 */  sll        $t4, $t4, 2
/* BC078 800BB478 44803000 */  mtc1       $zero, $f6
/* BC07C 800BB47C 01996023 */  subu       $t4, $t4, $t9
/* BC080 800BB480 000C6080 */  sll        $t4, $t4, 2
/* BC084 800BB484 030C7021 */  addu       $t6, $t8, $t4
/* BC088 800BB488 3C088016 */  lui        $t0, %hi(D_8015FB88)
/* BC08C 800BB48C E5C6010C */  swc1       $f6, 0x10c($t6)
/* BC090 800BB490 8D08FB88 */  lw         $t0, %lo(D_8015FB88)($t0)
/* BC094 800BB494 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* BC098 800BB498 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* BC09C 800BB49C 00085880 */  sll        $t3, $t0, 2
/* BC0A0 800BB4A0 01685823 */  subu       $t3, $t3, $t0
/* BC0A4 800BB4A4 000B5880 */  sll        $t3, $t3, 2
/* BC0A8 800BB4A8 01685823 */  subu       $t3, $t3, $t0
/* BC0AC 800BB4AC 000B5880 */  sll        $t3, $t3, 2
/* BC0B0 800BB4B0 01685821 */  addu       $t3, $t3, $t0
/* BC0B4 800BB4B4 000B5880 */  sll        $t3, $t3, 2
/* BC0B8 800BB4B8 3C013F80 */  lui        $at, 0x3f80
/* BC0BC 800BB4BC 44814000 */  mtc1       $at, $f8
/* BC0C0 800BB4C0 01685823 */  subu       $t3, $t3, $t0
/* BC0C4 800BB4C4 000B5880 */  sll        $t3, $t3, 2
/* BC0C8 800BB4C8 01AB4821 */  addu       $t1, $t5, $t3
/* BC0CC 800BB4CC 3C0A8016 */  lui        $t2, %hi(D_8015FB88)
/* BC0D0 800BB4D0 E5280110 */  swc1       $f8, 0x110($t1)
/* BC0D4 800BB4D4 8D4AFB88 */  lw         $t2, %lo(D_8015FB88)($t2)
/* BC0D8 800BB4D8 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* BC0DC 800BB4DC 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* BC0E0 800BB4E0 000AC880 */  sll        $t9, $t2, 2
/* BC0E4 800BB4E4 032AC823 */  subu       $t9, $t9, $t2
/* BC0E8 800BB4E8 0019C880 */  sll        $t9, $t9, 2
/* BC0EC 800BB4EC 032AC823 */  subu       $t9, $t9, $t2
/* BC0F0 800BB4F0 0019C880 */  sll        $t9, $t9, 2
/* BC0F4 800BB4F4 032AC821 */  addu       $t9, $t9, $t2
/* BC0F8 800BB4F8 0019C880 */  sll        $t9, $t9, 2
/* BC0FC 800BB4FC 44805000 */  mtc1       $zero, $f10
/* BC100 800BB500 032AC823 */  subu       $t9, $t9, $t2
/* BC104 800BB504 0019C880 */  sll        $t9, $t9, 2
/* BC108 800BB508 01F9C021 */  addu       $t8, $t7, $t9
/* BC10C 800BB50C 3C0E8016 */  lui        $t6, %hi(D_8015FB88)
/* BC110 800BB510 E70A0114 */  swc1       $f10, 0x114($t8)
/* BC114 800BB514 8DCEFB88 */  lw         $t6, %lo(D_8015FB88)($t6)
/* BC118 800BB518 3C0C8016 */  lui        $t4, 0x8016
/* BC11C 800BB51C 44808000 */  mtc1       $zero, $f16
/* BC120 800BB520 000E4080 */  sll        $t0, $t6, 2
/* BC124 800BB524 010E4023 */  subu       $t0, $t0, $t6
/* BC128 800BB528 00084080 */  sll        $t0, $t0, 2
/* BC12C 800BB52C 010E4023 */  subu       $t0, $t0, $t6
/* BC130 800BB530 00084080 */  sll        $t0, $t0, 2
/* BC134 800BB534 010E4021 */  addu       $t0, $t0, $t6
/* BC138 800BB538 00084080 */  sll        $t0, $t0, 2
/* BC13C 800BB53C 010E4023 */  subu       $t0, $t0, $t6
/* BC140 800BB540 00084080 */  sll        $t0, $t0, 2
/* BC144 800BB544 8D8CFB9C */  lw         $t4, -0x464($t4)
/* BC148 800BB548 01886821 */  addu       $t5, $t4, $t0
/* BC14C 800BB54C E5B0011C */  swc1       $f16, 0x11c($t5)
/* BC150 800BB550 3C098016 */  lui        $t1, %hi(D_8015FB88)
/* BC154 800BB554 8D29FB88 */  lw         $t1, %lo(D_8015FB88)($t1)
/* BC158 800BB558 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* BC15C 800BB55C 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* BC160 800BB560 00095080 */  sll        $t2, $t1, 2
/* BC164 800BB564 01495023 */  subu       $t2, $t2, $t1
/* BC168 800BB568 000A5080 */  sll        $t2, $t2, 2
/* BC16C 800BB56C 01495023 */  subu       $t2, $t2, $t1
/* BC170 800BB570 000A5080 */  sll        $t2, $t2, 2
/* BC174 800BB574 01495021 */  addu       $t2, $t2, $t1
/* BC178 800BB578 000A5080 */  sll        $t2, $t2, 2
/* BC17C 800BB57C 3C013F80 */  lui        $at, 0x3f80
/* BC180 800BB580 44819000 */  mtc1       $at, $f18
/* BC184 800BB584 01495023 */  subu       $t2, $t2, $t1
/* BC188 800BB588 000A5080 */  sll        $t2, $t2, 2
/* BC18C 800BB58C 016A7821 */  addu       $t7, $t3, $t2
/* BC190 800BB590 3C188016 */  lui        $t8, %hi(D_8015FB88)
/* BC194 800BB594 E5F20120 */  swc1       $f18, 0x120($t7)
/* BC198 800BB598 8F18FB88 */  lw         $t8, %lo(D_8015FB88)($t8)
/* BC19C 800BB59C 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* BC1A0 800BB5A0 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* BC1A4 800BB5A4 00187080 */  sll        $t6, $t8, 2
/* BC1A8 800BB5A8 01D87023 */  subu       $t6, $t6, $t8
/* BC1AC 800BB5AC 000E7080 */  sll        $t6, $t6, 2
/* BC1B0 800BB5B0 01D87023 */  subu       $t6, $t6, $t8
/* BC1B4 800BB5B4 000E7080 */  sll        $t6, $t6, 2
/* BC1B8 800BB5B8 01D87021 */  addu       $t6, $t6, $t8
/* BC1BC 800BB5BC 000E7080 */  sll        $t6, $t6, 2
/* BC1C0 800BB5C0 01D87023 */  subu       $t6, $t6, $t8
/* BC1C4 800BB5C4 000E7080 */  sll        $t6, $t6, 2
/* BC1C8 800BB5C8 032E6021 */  addu       $t4, $t9, $t6
/* BC1CC 800BB5CC 0C02F904 */  jal        func_800BE410
/* BC1D0 800BB5D0 C58C00F0 */   lwc1      $f12, 0xf0($t4)
/* BC1D4 800BB5D4 3C0D8016 */  lui        $t5, %hi(D_8015FB88)
/* BC1D8 800BB5D8 8DADFB88 */  lw         $t5, %lo(D_8015FB88)($t5)
/* BC1DC 800BB5DC 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* BC1E0 800BB5E0 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* BC1E4 800BB5E4 000D4880 */  sll        $t1, $t5, 2
/* BC1E8 800BB5E8 012D4823 */  subu       $t1, $t1, $t5
/* BC1EC 800BB5EC 00094880 */  sll        $t1, $t1, 2
/* BC1F0 800BB5F0 012D4823 */  subu       $t1, $t1, $t5
/* BC1F4 800BB5F4 00094880 */  sll        $t1, $t1, 2
/* BC1F8 800BB5F8 012D4821 */  addu       $t1, $t1, $t5
/* BC1FC 800BB5FC 00094880 */  sll        $t1, $t1, 2
/* BC200 800BB600 012D4823 */  subu       $t1, $t1, $t5
/* BC204 800BB604 00094880 */  sll        $t1, $t1, 2
/* BC208 800BB608 01095821 */  addu       $t3, $t0, $t1
/* BC20C 800BB60C E56000FC */  swc1       $f0, 0xfc($t3)
/* BC210 800BB610 3C0F8016 */  lui        $t7, %hi(D_8015FB88)
/* BC214 800BB614 8DEFFB88 */  lw         $t7, %lo(D_8015FB88)($t7)
/* BC218 800BB618 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* BC21C 800BB61C 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* BC220 800BB620 000FC080 */  sll        $t8, $t7, 2
/* BC224 800BB624 030FC023 */  subu       $t8, $t8, $t7
/* BC228 800BB628 0018C080 */  sll        $t8, $t8, 2
/* BC22C 800BB62C 030FC023 */  subu       $t8, $t8, $t7
/* BC230 800BB630 0018C080 */  sll        $t8, $t8, 2
/* BC234 800BB634 030FC021 */  addu       $t8, $t8, $t7
/* BC238 800BB638 0018C080 */  sll        $t8, $t8, 2
/* BC23C 800BB63C 030FC023 */  subu       $t8, $t8, $t7
/* BC240 800BB640 0018C080 */  sll        $t8, $t8, 2
/* BC244 800BB644 0158C821 */  addu       $t9, $t2, $t8
/* BC248 800BB648 0C033F18 */  jal        func_800CFC60
/* BC24C 800BB64C C72C00F0 */   lwc1      $f12, 0xf0($t9)
/* BC250 800BB650 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* BC254 800BB654 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* BC258 800BB658 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* BC25C 800BB65C 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* BC260 800BB660 000C6880 */  sll        $t5, $t4, 2
/* BC264 800BB664 01AC6823 */  subu       $t5, $t5, $t4
/* BC268 800BB668 000D6880 */  sll        $t5, $t5, 2
/* BC26C 800BB66C 01AC6823 */  subu       $t5, $t5, $t4
/* BC270 800BB670 000D6880 */  sll        $t5, $t5, 2
/* BC274 800BB674 01AC6821 */  addu       $t5, $t5, $t4
/* BC278 800BB678 000D6880 */  sll        $t5, $t5, 2
/* BC27C 800BB67C 01AC6823 */  subu       $t5, $t5, $t4
/* BC280 800BB680 000D6880 */  sll        $t5, $t5, 2
/* BC284 800BB684 01CD4021 */  addu       $t0, $t6, $t5
/* BC288 800BB688 E5000100 */  swc1       $f0, 0x100($t0)
/* BC28C 800BB68C 3C098014 */  lui        $t1, %hi(D_80144328)
/* BC290 800BB690 85294328 */  lh         $t1, %lo(D_80144328)($t1)
/* BC294 800BB694 3C018014 */  lui        $at, %hi(D_80144328)
/* BC298 800BB698 3C0F800F */  lui        $t7, %hi(D_800EA0D8)
/* BC29C 800BB69C 252BFFFF */  addiu      $t3, $t1, -1
/* BC2A0 800BB6A0 A42B4328 */  sh         $t3, %lo(D_80144328)($at)
/* BC2A4 800BB6A4 25EFA0D8 */  addiu      $t7, $t7, %lo(D_800EA0D8)
/* BC2A8 800BB6A8 95EA0000 */  lhu        $t2, ($t7)
/* BC2AC 800BB6AC 15400002 */  bnez       $t2, .L800BB6B8
/* BC2B0 800BB6B0 3C018014 */   lui       $at, %hi(D_80144328)
/* BC2B4 800BB6B4 A4204328 */  sh         $zero, %lo(D_80144328)($at)
.L800BB6B8:
/* BC2B8 800BB6B8 3C18800F */  lui        $t8, %hi(D_800EA0D0)
/* BC2BC 800BB6BC 2718A0D0 */  addiu      $t8, $t8, %lo(D_800EA0D0)
/* BC2C0 800BB6C0 3C19800F */  lui        $t9, %hi(D_800EA0D4)
/* BC2C4 800BB6C4 A3000000 */  sb         $zero, ($t8)
/* BC2C8 800BB6C8 2739A0D4 */  addiu      $t9, $t9, %lo(D_800EA0D4)
/* BC2CC 800BB6CC A3200000 */  sb         $zero, ($t9)
/* BC2D0 800BB6D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* BC2D4 800BB6D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* BC2D8 800BB6D8 03E00008 */  jr         $ra
/* BC2DC 800BB6DC 00000000 */   nop

glabel func_800BB6E0
/* BC2E0 800BB6E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BC2E4 800BB6E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* BC2E8 800BB6E8 AFB00018 */  sw         $s0, 0x18($sp)
/* BC2EC 800BB6EC 3C0E8018 */  lui        $t6, %hi(D_801798F8)
/* BC2F0 800BB6F0 8DCE98F8 */  lw         $t6, %lo(D_801798F8)($t6)
/* BC2F4 800BB6F4 AFA0002C */  sw         $zero, 0x2c($sp)
/* BC2F8 800BB6F8 AFA00028 */  sw         $zero, 0x28($sp)
/* BC2FC 800BB6FC 11C00088 */  beqz       $t6, .L800BB920
/* BC300 800BB700 00000000 */   nop
/* BC304 800BB704 3C0F800E */  lui        $t7, %hi(D_800D9DBC)
/* BC308 800BB708 8DEF9DBC */  lw         $t7, %lo(D_800D9DBC)($t7)
/* BC30C 800BB70C 24010003 */  addiu      $at, $zero, 3
/* BC310 800BB710 11E10083 */  beq        $t7, $at, .L800BB920
/* BC314 800BB714 00000000 */   nop
/* BC318 800BB718 3C18800F */  lui        $t8, %hi(D_800EA0D8)
/* BC31C 800BB71C 2718A0D8 */  addiu      $t8, $t8, %lo(D_800EA0D8)
/* BC320 800BB720 97190000 */  lhu        $t9, ($t8)
/* BC324 800BB724 24012010 */  addiu      $at, $zero, 0x2010
/* BC328 800BB728 33282010 */  andi       $t0, $t9, 0x2010
/* BC32C 800BB72C 15010003 */  bne        $t0, $at, .L800BB73C
/* BC330 800BB730 00000000 */   nop
/* BC334 800BB734 24090001 */  addiu      $t1, $zero, 1
/* BC338 800BB738 AFA90028 */  sw         $t1, 0x28($sp)
.L800BB73C:
/* BC33C 800BB73C 3C108014 */  lui        $s0, %hi(D_80144334)
/* BC340 800BB740 86104334 */  lh         $s0, %lo(D_80144334)($s0)
/* BC344 800BB744 24010001 */  addiu      $at, $zero, 1
/* BC348 800BB748 12010005 */  beq        $s0, $at, .L800BB760
/* BC34C 800BB74C 24010002 */   addiu     $at, $zero, 2
/* BC350 800BB750 12010033 */  beq        $s0, $at, .L800BB820
/* BC354 800BB754 00000000 */   nop
/* BC358 800BB758 10000071 */  b          .L800BB920
/* BC35C 800BB75C 00000000 */   nop
.L800BB760:
/* BC360 800BB760 8FAA002C */  lw         $t2, 0x2c($sp)
/* BC364 800BB764 1140001A */  beqz       $t2, .L800BB7D0
/* BC368 800BB768 00000000 */   nop
/* BC36C 800BB76C 240B0001 */  addiu      $t3, $zero, 1
/* BC370 800BB770 3C018014 */  lui        $at, %hi(D_801442FC)
/* BC374 800BB774 A42B42FC */  sh         $t3, %lo(D_801442FC)($at)
/* BC378 800BB778 0C02DA99 */  jal        func_800B6A64
/* BC37C 800BB77C 2404012C */   addiu     $a0, $zero, 0x12c
/* BC380 800BB780 3C0E8016 */  lui        $t6, %hi(D_8015FB88)
/* BC384 800BB784 8DCEFB88 */  lw         $t6, %lo(D_8015FB88)($t6)
/* BC388 800BB788 240C00C8 */  addiu      $t4, $zero, 0xc8
/* BC38C 800BB78C 3C018014 */  lui        $at, 0x8014
/* BC390 800BB790 000E7880 */  sll        $t7, $t6, 2
/* BC394 800BB794 01EE7823 */  subu       $t7, $t7, $t6
/* BC398 800BB798 000F7880 */  sll        $t7, $t7, 2
/* BC39C 800BB79C 01EE7823 */  subu       $t7, $t7, $t6
/* BC3A0 800BB7A0 000F7880 */  sll        $t7, $t7, 2
/* BC3A4 800BB7A4 AC2C42D8 */  sw         $t4, 0x42d8($at)
/* BC3A8 800BB7A8 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* BC3AC 800BB7AC 01EE7821 */  addu       $t7, $t7, $t6
/* BC3B0 800BB7B0 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* BC3B4 800BB7B4 000F7880 */  sll        $t7, $t7, 2
/* BC3B8 800BB7B8 3C014396 */  lui        $at, 0x4396
/* BC3BC 800BB7BC 44812000 */  mtc1       $at, $f4
/* BC3C0 800BB7C0 01EE7823 */  subu       $t7, $t7, $t6
/* BC3C4 800BB7C4 000F7880 */  sll        $t7, $t7, 2
/* BC3C8 800BB7C8 01AFC021 */  addu       $t8, $t5, $t7
/* BC3CC 800BB7CC E7040024 */  swc1       $f4, 0x24($t8)
.L800BB7D0:
/* BC3D0 800BB7D0 3C198018 */  lui        $t9, %hi(D_8017AD94)
/* BC3D4 800BB7D4 8739AD94 */  lh         $t9, %lo(D_8017AD94)($t9)
/* BC3D8 800BB7D8 13200051 */  beqz       $t9, .L800BB920
/* BC3DC 800BB7DC 00000000 */   nop
/* BC3E0 800BB7E0 3C088014 */  lui        $t0, %hi(D_80144356)
/* BC3E4 800BB7E4 85084356 */  lh         $t0, %lo(D_80144356)($t0)
/* BC3E8 800BB7E8 3C018018 */  lui        $at, %hi(D_8017AD94)
/* BC3EC 800BB7EC A420AD94 */  sh         $zero, %lo(D_8017AD94)($at)
/* BC3F0 800BB7F0 1500004B */  bnez       $t0, .L800BB920
/* BC3F4 800BB7F4 00000000 */   nop
/* BC3F8 800BB7F8 3C048014 */  lui        $a0, %hi(D_80144360)
/* BC3FC 800BB7FC 3C058014 */  lui        $a1, %hi(D_8014436C)
/* BC400 800BB800 8CA5436C */  lw         $a1, %lo(D_8014436C)($a1)
/* BC404 800BB804 0C02DB02 */  jal        func_800B6C08
/* BC408 800BB808 24844360 */   addiu     $a0, $a0, %lo(D_80144360)
/* BC40C 800BB80C 3C098014 */  lui        $t1, %hi(D_80144370)
/* BC410 800BB810 8D294370 */  lw         $t1, %lo(D_80144370)($t1)
/* BC414 800BB814 3C018014 */  lui        $at, %hi(D_801442E8)
/* BC418 800BB818 10000041 */  b          .L800BB920
/* BC41C 800BB81C A42942E8 */   sh        $t1, %lo(D_801442E8)($at)
.L800BB820:
/* BC420 800BB820 8FAA002C */  lw         $t2, 0x2c($sp)
/* BC424 800BB824 11400012 */  beqz       $t2, .L800BB870
/* BC428 800BB828 00000000 */   nop
/* BC42C 800BB82C 3C0C8016 */  lui        $t4, %hi(D_8015FB88)
/* BC430 800BB830 8D8CFB88 */  lw         $t4, %lo(D_8015FB88)($t4)
/* BC434 800BB834 3C0B8016 */  lui        $t3, %hi(D_8015FB9C)
/* BC438 800BB838 8D6BFB9C */  lw         $t3, %lo(D_8015FB9C)($t3)
/* BC43C 800BB83C 000C7080 */  sll        $t6, $t4, 2
/* BC440 800BB840 01CC7023 */  subu       $t6, $t6, $t4
/* BC444 800BB844 000E7080 */  sll        $t6, $t6, 2
/* BC448 800BB848 01CC7023 */  subu       $t6, $t6, $t4
/* BC44C 800BB84C 000E7080 */  sll        $t6, $t6, 2
/* BC450 800BB850 01CC7021 */  addu       $t6, $t6, $t4
/* BC454 800BB854 000E7080 */  sll        $t6, $t6, 2
/* BC458 800BB858 3C014396 */  lui        $at, 0x4396
/* BC45C 800BB85C 44813000 */  mtc1       $at, $f6
/* BC460 800BB860 01CC7023 */  subu       $t6, $t6, $t4
/* BC464 800BB864 000E7080 */  sll        $t6, $t6, 2
/* BC468 800BB868 016E6821 */  addu       $t5, $t3, $t6
/* BC46C 800BB86C E5A60024 */  swc1       $f6, 0x24($t5)
.L800BB870:
/* BC470 800BB870 3C0F8018 */  lui        $t7, %hi(D_8017AD94)
/* BC474 800BB874 85EFAD94 */  lh         $t7, %lo(D_8017AD94)($t7)
/* BC478 800BB878 11E00029 */  beqz       $t7, .L800BB920
/* BC47C 800BB87C 00000000 */   nop
/* BC480 800BB880 3C198016 */  lui        $t9, %hi(D_8015FB88)
/* BC484 800BB884 8F39FB88 */  lw         $t9, %lo(D_8015FB88)($t9)
/* BC488 800BB888 3C018018 */  lui        $at, %hi(D_8017AD94)
/* BC48C 800BB88C A420AD94 */  sh         $zero, %lo(D_8017AD94)($at)
/* BC490 800BB890 00194080 */  sll        $t0, $t9, 2
/* BC494 800BB894 01194023 */  subu       $t0, $t0, $t9
/* BC498 800BB898 00084080 */  sll        $t0, $t0, 2
/* BC49C 800BB89C 01194023 */  subu       $t0, $t0, $t9
/* BC4A0 800BB8A0 00084080 */  sll        $t0, $t0, 2
/* BC4A4 800BB8A4 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* BC4A8 800BB8A8 01194021 */  addu       $t0, $t0, $t9
/* BC4AC 800BB8AC 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* BC4B0 800BB8B0 00084080 */  sll        $t0, $t0, 2
/* BC4B4 800BB8B4 3C014396 */  lui        $at, 0x4396
/* BC4B8 800BB8B8 44814000 */  mtc1       $at, $f8
/* BC4BC 800BB8BC 01194023 */  subu       $t0, $t0, $t9
/* BC4C0 800BB8C0 00084080 */  sll        $t0, $t0, 2
/* BC4C4 800BB8C4 03084821 */  addu       $t1, $t8, $t0
/* BC4C8 800BB8C8 3C0A8016 */  lui        $t2, %hi(D_8015F468)
/* BC4CC 800BB8CC E5280024 */  swc1       $f8, 0x24($t1)
/* BC4D0 800BB8D0 8D4AF468 */  lw         $t2, %lo(D_8015F468)($t2)
/* BC4D4 800BB8D4 24010004 */  addiu      $at, $zero, 4
/* BC4D8 800BB8D8 1541000F */  bne        $t2, $at, .L800BB918
/* BC4DC 800BB8DC 00000000 */   nop
/* BC4E0 800BB8E0 3C0B8016 */  lui        $t3, %hi(D_8015F464)
/* BC4E4 800BB8E4 8D6BF464 */  lw         $t3, %lo(D_8015F464)($t3)
/* BC4E8 800BB8E8 000A6880 */  sll        $t5, $t2, 2
/* BC4EC 800BB8EC 01AA6823 */  subu       $t5, $t5, $t2
/* BC4F0 800BB8F0 000B7100 */  sll        $t6, $t3, 4
/* BC4F4 800BB8F4 01CB7023 */  subu       $t6, $t6, $t3
/* BC4F8 800BB8F8 000E70C0 */  sll        $t6, $t6, 3
/* BC4FC 800BB8FC 000D68C0 */  sll        $t5, $t5, 3
/* BC500 800BB900 01CD7821 */  addu       $t7, $t6, $t5
/* BC504 800BB904 3C018016 */  lui        $at, %hi(D_80160C8C)
/* BC508 800BB908 002F0821 */  addu       $at, $at, $t7
/* BC50C 800BB90C 240C0001 */  addiu      $t4, $zero, 1
/* BC510 800BB910 10000003 */  b          .L800BB920
/* BC514 800BB914 AC2C0C8C */   sw        $t4, %lo(D_80160C8C)($at)
.L800BB918:
/* BC518 800BB918 0C02E3B6 */  jal        func_800B8ED8
/* BC51C 800BB91C 24040001 */   addiu     $a0, $zero, 1
.L800BB920:
/* BC520 800BB920 8FBF001C */  lw         $ra, 0x1c($sp)
/* BC524 800BB924 8FB00018 */  lw         $s0, 0x18($sp)
/* BC528 800BB928 27BD0030 */  addiu      $sp, $sp, 0x30
/* BC52C 800BB92C 03E00008 */  jr         $ra
/* BC530 800BB930 00000000 */   nop

glabel func_800BB934
/* BC534 800BB934 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BC538 800BB938 AFBF001C */  sw         $ra, 0x1c($sp)
/* BC53C 800BB93C AFB00018 */  sw         $s0, 0x18($sp)
/* BC540 800BB940 3C0E8016 */  lui        $t6, %hi(D_8015FB8C)
/* BC544 800BB944 8DCEFB8C */  lw         $t6, %lo(D_8015FB8C)($t6)
/* BC548 800BB948 2401FFFF */  addiu      $at, $zero, -1
/* BC54C 800BB94C 11C1002E */  beq        $t6, $at, .L800BBA08
/* BC550 800BB950 AFAE002C */   sw        $t6, 0x2c($sp)
.L800BB954:
/* BC554 800BB954 8FAF002C */  lw         $t7, 0x2c($sp)
/* BC558 800BB958 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* BC55C 800BB95C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* BC560 800BB960 000FC080 */  sll        $t8, $t7, 2
/* BC564 800BB964 030FC023 */  subu       $t8, $t8, $t7
/* BC568 800BB968 0018C080 */  sll        $t8, $t8, 2
/* BC56C 800BB96C 030FC023 */  subu       $t8, $t8, $t7
/* BC570 800BB970 0018C080 */  sll        $t8, $t8, 2
/* BC574 800BB974 030FC021 */  addu       $t8, $t8, $t7
/* BC578 800BB978 0018C080 */  sll        $t8, $t8, 2
/* BC57C 800BB97C 030FC023 */  subu       $t8, $t8, $t7
/* BC580 800BB980 0018C080 */  sll        $t8, $t8, 2
/* BC584 800BB984 03194021 */  addu       $t0, $t8, $t9
/* BC588 800BB988 AFA80028 */  sw         $t0, 0x28($sp)
/* BC58C 800BB98C 8D10006C */  lw         $s0, 0x6c($t0)
/* BC590 800BB990 24010002 */  addiu      $at, $zero, 2
/* BC594 800BB994 12010003 */  beq        $s0, $at, .L800BB9A4
/* BC598 800BB998 24010003 */   addiu     $at, $zero, 3
/* BC59C 800BB99C 16010013 */  bne        $s0, $at, .L800BB9EC
/* BC5A0 800BB9A0 00000000 */   nop
.L800BB9A4:
/* BC5A4 800BB9A4 8FA90028 */  lw         $t1, 0x28($sp)
/* BC5A8 800BB9A8 44804800 */  mtc1       $zero, $f9
/* BC5AC 800BB9AC 44804000 */  mtc1       $zero, $f8
/* BC5B0 800BB9B0 C5240024 */  lwc1       $f4, 0x24($t1)
/* BC5B4 800BB9B4 460021A1 */  cvt.d.s    $f6, $f4
/* BC5B8 800BB9B8 4626403C */  c.lt.d     $f8, $f6
/* BC5BC 800BB9BC 00000000 */  nop
/* BC5C0 800BB9C0 4500000A */  bc1f       .L800BB9EC
/* BC5C4 800BB9C4 00000000 */   nop
/* BC5C8 800BB9C8 3C058016 */  lui        $a1, %hi(D_8015F464)
/* BC5CC 800BB9CC 8CA5F464 */  lw         $a1, %lo(D_8015F464)($a1)
/* BC5D0 800BB9D0 0C024955 */  jal        func_80092554
/* BC5D4 800BB9D4 8FA4002C */   lw        $a0, 0x2c($sp)
/* BC5D8 800BB9D8 10400004 */  beqz       $v0, .L800BB9EC
/* BC5DC 800BB9DC 3C01C120 */   lui       $at, 0xc120
/* BC5E0 800BB9E0 44815000 */  mtc1       $at, $f10
/* BC5E4 800BB9E4 8FAA0028 */  lw         $t2, 0x28($sp)
/* BC5E8 800BB9E8 E54A0024 */  swc1       $f10, 0x24($t2)
.L800BB9EC:
/* BC5EC 800BB9EC 8FAB0028 */  lw         $t3, 0x28($sp)
/* BC5F0 800BB9F0 2401FFFF */  addiu      $at, $zero, -1
/* BC5F4 800BB9F4 8D6C0004 */  lw         $t4, 4($t3)
/* BC5F8 800BB9F8 AFAC002C */  sw         $t4, 0x2c($sp)
/* BC5FC 800BB9FC 8FAD002C */  lw         $t5, 0x2c($sp)
/* BC600 800BBA00 15A1FFD4 */  bne        $t5, $at, .L800BB954
/* BC604 800BBA04 00000000 */   nop
.L800BBA08:
/* BC608 800BBA08 8FBF001C */  lw         $ra, 0x1c($sp)
/* BC60C 800BBA0C 8FB00018 */  lw         $s0, 0x18($sp)
/* BC610 800BBA10 27BD0030 */  addiu      $sp, $sp, 0x30
/* BC614 800BBA14 03E00008 */  jr         $ra
/* BC618 800BBA18 00000000 */   nop

glabel func_800BBA1C
/* BC61C 800BBA1C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BC620 800BBA20 AFBF0024 */  sw         $ra, 0x24($sp)
/* BC624 800BBA24 AFB00020 */  sw         $s0, 0x20($sp)
/* BC628 800BBA28 3C0F8016 */  lui        $t7, %hi(D_8015F46C)
/* BC62C 800BBA2C 8DEFF46C */  lw         $t7, %lo(D_8015F46C)($t7)
/* BC630 800BBA30 3C0E8016 */  lui        $t6, %hi(D_8015F470)
/* BC634 800BBA34 25CEF470 */  addiu      $t6, $t6, %lo(D_8015F470)
/* BC638 800BBA38 AFAF002C */  sw         $t7, 0x2c($sp)
/* BC63C 800BBA3C 01E08025 */  or         $s0, $t7, $zero
/* BC640 800BBA40 25F8FFFF */  addiu      $t8, $t7, -1
/* BC644 800BBA44 AFAE0034 */  sw         $t6, 0x34($sp)
/* BC648 800BBA48 12000068 */  beqz       $s0, .L800BBBEC
/* BC64C 800BBA4C AFB8002C */   sw        $t8, 0x2c($sp)
.L800BBA50:
/* BC650 800BBA50 8FB90034 */  lw         $t9, 0x34($sp)
/* BC654 800BBA54 8F28000C */  lw         $t0, 0xc($t9)
/* BC658 800BBA58 11000004 */  beqz       $t0, .L800BBA6C
/* BC65C 800BBA5C 00000000 */   nop
/* BC660 800BBA60 8F290010 */  lw         $t1, 0x10($t9)
/* BC664 800BBA64 15200059 */  bnez       $t1, .L800BBBCC
/* BC668 800BBA68 00000000 */   nop
.L800BBA6C:
/* BC66C 800BBA6C 8FAA0034 */  lw         $t2, 0x34($sp)
/* BC670 800BBA70 8D4B000C */  lw         $t3, 0xc($t2)
/* BC674 800BBA74 15600010 */  bnez       $t3, .L800BBAB8
/* BC678 800BBA78 00000000 */   nop
/* BC67C 800BBA7C 8D4C0010 */  lw         $t4, 0x10($t2)
/* BC680 800BBA80 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* BC684 800BBA84 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* BC688 800BBA88 000C6880 */  sll        $t5, $t4, 2
/* BC68C 800BBA8C 01AC6823 */  subu       $t5, $t5, $t4
/* BC690 800BBA90 000D6880 */  sll        $t5, $t5, 2
/* BC694 800BBA94 01AC6823 */  subu       $t5, $t5, $t4
/* BC698 800BBA98 000D6880 */  sll        $t5, $t5, 2
/* BC69C 800BBA9C 01AC6821 */  addu       $t5, $t5, $t4
/* BC6A0 800BBAA0 000D6880 */  sll        $t5, $t5, 2
/* BC6A4 800BBAA4 01AC6823 */  subu       $t5, $t5, $t4
/* BC6A8 800BBAA8 000D6880 */  sll        $t5, $t5, 2
/* BC6AC 800BBAAC 01AE7821 */  addu       $t7, $t5, $t6
/* BC6B0 800BBAB0 10000010 */  b          .L800BBAF4
/* BC6B4 800BBAB4 AFAF0030 */   sw        $t7, 0x30($sp)
.L800BBAB8:
/* BC6B8 800BBAB8 8FB80034 */  lw         $t8, 0x34($sp)
/* BC6BC 800BBABC 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* BC6C0 800BBAC0 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* BC6C4 800BBAC4 8F08000C */  lw         $t0, 0xc($t8)
/* BC6C8 800BBAC8 0008C880 */  sll        $t9, $t0, 2
/* BC6CC 800BBACC 0328C823 */  subu       $t9, $t9, $t0
/* BC6D0 800BBAD0 0019C880 */  sll        $t9, $t9, 2
/* BC6D4 800BBAD4 0328C823 */  subu       $t9, $t9, $t0
/* BC6D8 800BBAD8 0019C880 */  sll        $t9, $t9, 2
/* BC6DC 800BBADC 0328C821 */  addu       $t9, $t9, $t0
/* BC6E0 800BBAE0 0019C880 */  sll        $t9, $t9, 2
/* BC6E4 800BBAE4 0328C823 */  subu       $t9, $t9, $t0
/* BC6E8 800BBAE8 0019C880 */  sll        $t9, $t9, 2
/* BC6EC 800BBAEC 03295821 */  addu       $t3, $t9, $t1
/* BC6F0 800BBAF0 AFAB0030 */  sw         $t3, 0x30($sp)
.L800BBAF4:
/* BC6F4 800BBAF4 8FAA0030 */  lw         $t2, 0x30($sp)
/* BC6F8 800BBAF8 24010019 */  addiu      $at, $zero, 0x19
/* BC6FC 800BBAFC 8D50006C */  lw         $s0, 0x6c($t2)
/* BC700 800BBB00 12010007 */  beq        $s0, $at, .L800BBB20
/* BC704 800BBB04 2401001A */   addiu     $at, $zero, 0x1a
/* BC708 800BBB08 12010005 */  beq        $s0, $at, .L800BBB20
/* BC70C 800BBB0C 2401001B */   addiu     $at, $zero, 0x1b
/* BC710 800BBB10 12010003 */  beq        $s0, $at, .L800BBB20
/* BC714 800BBB14 24010054 */   addiu     $at, $zero, 0x54
/* BC718 800BBB18 1601002C */  bne        $s0, $at, .L800BBBCC
/* BC71C 800BBB1C 00000000 */   nop
.L800BBB20:
/* BC720 800BBB20 8FAC0030 */  lw         $t4, 0x30($sp)
/* BC724 800BBB24 8D8D0058 */  lw         $t5, 0x58($t4)
/* BC728 800BBB28 31AE0004 */  andi       $t6, $t5, 4
/* BC72C 800BBB2C 11C00024 */  beqz       $t6, .L800BBBC0
/* BC730 800BBB30 00000000 */   nop
/* BC734 800BBB34 8FAF0034 */  lw         $t7, 0x34($sp)
/* BC738 800BBB38 3C014049 */  lui        $at, 0x4049
/* BC73C 800BBB3C 44814800 */  mtc1       $at, $f9
/* BC740 800BBB40 C5E40018 */  lwc1       $f4, 0x18($t7)
/* BC744 800BBB44 44804000 */  mtc1       $zero, $f8
/* BC748 800BBB48 460021A1 */  cvt.d.s    $f6, $f4
/* BC74C 800BBB4C 4626403C */  c.lt.d     $f8, $f6
/* BC750 800BBB50 00000000 */  nop
/* BC754 800BBB54 45010005 */  bc1t       .L800BBB6C
/* BC758 800BBB58 00000000 */   nop
/* BC75C 800BBB5C 3C18800E */  lui        $t8, %hi(D_800D9FD8)
/* BC760 800BBB60 8F189FD8 */  lw         $t8, %lo(D_800D9FD8)($t8)
/* BC764 800BBB64 2B010015 */  slti       $at, $t8, 0x15
/* BC768 800BBB68 1420000F */  bnez       $at, .L800BBBA8
.L800BBB6C:
/* BC76C 800BBB6C 3C01800E */   lui       $at, %hi(D_800D9FD8)
/* BC770 800BBB70 3C08801C */  lui        $t0, %hi(D_801C5D40)
/* BC774 800BBB74 AC209FD8 */  sw         $zero, %lo(D_800D9FD8)($at)
/* BC778 800BBB78 25085D40 */  addiu      $t0, $t0, %lo(D_801C5D40)
/* BC77C 800BBB7C 8D040128 */  lw         $a0, 0x128($t0)
/* BC780 800BBB80 AFA00014 */  sw         $zero, 0x14($sp)
/* BC784 800BBB84 AFA00010 */  sw         $zero, 0x10($sp)
/* BC788 800BBB88 00002825 */  or         $a1, $zero, $zero
/* BC78C 800BBB8C 24060060 */  addiu      $a2, $zero, 0x60
/* BC790 800BBB90 0C0209BC */  jal        func_800826F0
/* BC794 800BBB94 00003825 */   or        $a3, $zero, $zero
/* BC798 800BBB98 0C02EAA5 */  jal        func_800BAA94
/* BC79C 800BBB9C 00000000 */   nop
/* BC7A0 800BBBA0 10000014 */  b          .L800BBBF4
/* BC7A4 800BBBA4 00000000 */   nop
.L800BBBA8:
/* BC7A8 800BBBA8 3C19800E */  lui        $t9, %hi(D_800D9FD8)
/* BC7AC 800BBBAC 8F399FD8 */  lw         $t9, %lo(D_800D9FD8)($t9)
/* BC7B0 800BBBB0 3C01800E */  lui        $at, %hi(D_800D9FD8)
/* BC7B4 800BBBB4 27290001 */  addiu      $t1, $t9, 1
/* BC7B8 800BBBB8 1000000E */  b          .L800BBBF4
/* BC7BC 800BBBBC AC299FD8 */   sw        $t1, %lo(D_800D9FD8)($at)
.L800BBBC0:
/* BC7C0 800BBBC0 3C01800E */  lui        $at, %hi(D_800D9FD8)
/* BC7C4 800BBBC4 1000000B */  b          .L800BBBF4
/* BC7C8 800BBBC8 AC209FD8 */   sw        $zero, %lo(D_800D9FD8)($at)
.L800BBBCC:
/* BC7CC 800BBBCC 8FAC002C */  lw         $t4, 0x2c($sp)
/* BC7D0 800BBBD0 8FAB0034 */  lw         $t3, 0x34($sp)
/* BC7D4 800BBBD4 01808025 */  or         $s0, $t4, $zero
/* BC7D8 800BBBD8 258DFFFF */  addiu      $t5, $t4, -1
/* BC7DC 800BBBDC 256A0028 */  addiu      $t2, $t3, 0x28
/* BC7E0 800BBBE0 AFAD002C */  sw         $t5, 0x2c($sp)
/* BC7E4 800BBBE4 1600FF9A */  bnez       $s0, .L800BBA50
/* BC7E8 800BBBE8 AFAA0034 */   sw        $t2, 0x34($sp)
.L800BBBEC:
/* BC7EC 800BBBEC 3C01800E */  lui        $at, %hi(D_800D9FD8)
/* BC7F0 800BBBF0 AC209FD8 */  sw         $zero, %lo(D_800D9FD8)($at)
.L800BBBF4:
/* BC7F4 800BBBF4 8FBF0024 */  lw         $ra, 0x24($sp)
/* BC7F8 800BBBF8 8FB00020 */  lw         $s0, 0x20($sp)
/* BC7FC 800BBBFC 27BD0038 */  addiu      $sp, $sp, 0x38
/* BC800 800BBC00 03E00008 */  jr         $ra
/* BC804 800BBC04 00000000 */   nop

glabel func_800BBC08
/* BC808 800BBC08 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BC80C 800BBC0C AFBF001C */  sw         $ra, 0x1c($sp)
/* BC810 800BBC10 3C0E8014 */  lui        $t6, %hi(D_8014432C)
/* BC814 800BBC14 8DCE432C */  lw         $t6, %lo(D_8014432C)($t6)
/* BC818 800BBC18 19C00010 */  blez       $t6, .L800BBC5C
/* BC81C 800BBC1C 00000000 */   nop
/* BC820 800BBC20 000E7880 */  sll        $t7, $t6, 2
/* BC824 800BBC24 3C04801C */  lui        $a0, 0x801c
/* BC828 800BBC28 008F2021 */  addu       $a0, $a0, $t7
/* BC82C 800BBC2C 3C068014 */  lui        $a2, %hi(D_80144330)
/* BC830 800BBC30 241800A0 */  addiu      $t8, $zero, 0xa0
/* BC834 800BBC34 24190050 */  addiu      $t9, $zero, 0x50
/* BC838 800BBC38 AFB90014 */  sw         $t9, 0x14($sp)
/* BC83C 800BBC3C AFB80010 */  sw         $t8, 0x10($sp)
/* BC840 800BBC40 8CC64330 */  lw         $a2, %lo(D_80144330)($a2)
/* BC844 800BBC44 8C845D40 */  lw         $a0, 0x5d40($a0)
/* BC848 800BBC48 3C054000 */  lui        $a1, 0x4000
/* BC84C 800BBC4C 0C0209BC */  jal        func_800826F0
/* BC850 800BBC50 2407FFFF */   addiu     $a3, $zero, -1
/* BC854 800BBC54 3C018014 */  lui        $at, %hi(D_8014432C)
/* BC858 800BBC58 AC20432C */  sw         $zero, %lo(D_8014432C)($at)
.L800BBC5C:
/* BC85C 800BBC5C 3C088014 */  lui        $t0, %hi(D_8014435A)
/* BC860 800BBC60 8508435A */  lh         $t0, %lo(D_8014435A)($t0)
/* BC864 800BBC64 11000014 */  beqz       $t0, .L800BBCB8
/* BC868 800BBC68 00000000 */   nop
/* BC86C 800BBC6C 3C0A8016 */  lui        $t2, %hi(D_8015FB88)
/* BC870 800BBC70 8D4AFB88 */  lw         $t2, %lo(D_8015FB88)($t2)
/* BC874 800BBC74 3C018014 */  lui        $at, %hi(D_8014435A)
/* BC878 800BBC78 A420435A */  sh         $zero, %lo(D_8014435A)($at)
/* BC87C 800BBC7C 000A5880 */  sll        $t3, $t2, 2
/* BC880 800BBC80 016A5823 */  subu       $t3, $t3, $t2
/* BC884 800BBC84 000B5880 */  sll        $t3, $t3, 2
/* BC888 800BBC88 016A5823 */  subu       $t3, $t3, $t2
/* BC88C 800BBC8C 000B5880 */  sll        $t3, $t3, 2
/* BC890 800BBC90 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* BC894 800BBC94 016A5821 */  addu       $t3, $t3, $t2
/* BC898 800BBC98 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* BC89C 800BBC9C 000B5880 */  sll        $t3, $t3, 2
/* BC8A0 800BBCA0 3C0142C8 */  lui        $at, 0x42c8
/* BC8A4 800BBCA4 44812000 */  mtc1       $at, $f4
/* BC8A8 800BBCA8 016A5823 */  subu       $t3, $t3, $t2
/* BC8AC 800BBCAC 000B5880 */  sll        $t3, $t3, 2
/* BC8B0 800BBCB0 012B6021 */  addu       $t4, $t1, $t3
/* BC8B4 800BBCB4 E5840024 */  swc1       $f4, 0x24($t4)
.L800BBCB8:
/* BC8B8 800BBCB8 3C0D800E */  lui        $t5, %hi(D_800D9FCC)
/* BC8BC 800BBCBC 8DAD9FCC */  lw         $t5, %lo(D_800D9FCC)($t5)
/* BC8C0 800BBCC0 3C18800E */  lui        $t8, %hi(D_800D9FC8)
/* BC8C4 800BBCC4 87189FC8 */  lh         $t8, %lo(D_800D9FC8)($t8)
/* BC8C8 800BBCC8 25AE0001 */  addiu      $t6, $t5, 1
/* BC8CC 800BBCCC 3C01800E */  lui        $at, %hi(D_800D9FCC)
/* BC8D0 800BBCD0 AC2E9FCC */  sw         $t6, %lo(D_800D9FCC)($at)
/* BC8D4 800BBCD4 31CF000F */  andi       $t7, $t6, 0xf
/* BC8D8 800BBCD8 13000008 */  beqz       $t8, .L800BBCFC
/* BC8DC 800BBCDC AC2F9FCC */   sw        $t7, -0x6034($at)
/* BC8E0 800BBCE0 3C01800E */  lui        $at, %hi(D_800D9FC8)
/* BC8E4 800BBCE4 3C048014 */  lui        $a0, %hi(D_80144310)
/* BC8E8 800BBCE8 3C058014 */  lui        $a1, %hi(D_8014431C)
/* BC8EC 800BBCEC A4209FC8 */  sh         $zero, %lo(D_800D9FC8)($at)
/* BC8F0 800BBCF0 8CA5431C */  lw         $a1, %lo(D_8014431C)($a1)
/* BC8F4 800BBCF4 0C02DB02 */  jal        func_800B6C08
/* BC8F8 800BBCF8 24844310 */   addiu     $a0, $a0, %lo(D_80144310)
.L800BBCFC:
/* BC8FC 800BBCFC 3C198014 */  lui        $t9, %hi(D_80144328)
/* BC900 800BBD00 87394328 */  lh         $t9, %lo(D_80144328)($t9)
/* BC904 800BBD04 1B200003 */  blez       $t9, .L800BBD14
/* BC908 800BBD08 00000000 */   nop
/* BC90C 800BBD0C 0C02EC33 */  jal        func_800BB0CC
/* BC910 800BBD10 00000000 */   nop
.L800BBD14:
/* BC914 800BBD14 0C02EBDC */  jal        func_800BAF70
/* BC918 800BBD18 00000000 */   nop
/* BC91C 800BBD1C 0C02F784 */  jal        func_800BDE10
/* BC920 800BBD20 00000000 */   nop
/* BC924 800BBD24 3C088016 */  lui        $t0, %hi(D_8015ED70)
/* BC928 800BBD28 8D08ED70 */  lw         $t0, %lo(D_8015ED70)($t0)
/* BC92C 800BBD2C 2401FFC0 */  addiu      $at, $zero, -0x40
/* BC930 800BBD30 11010008 */  beq        $t0, $at, .L800BBD54
/* BC934 800BBD34 00000000 */   nop
/* BC938 800BBD38 3C0A800E */  lui        $t2, %hi(D_800D9D90)
/* BC93C 800BBD3C 8D4A9D90 */  lw         $t2, %lo(D_800D9D90)($t2)
/* BC940 800BBD40 0148082A */  slt        $at, $t2, $t0
/* BC944 800BBD44 14200003 */  bnez       $at, .L800BBD54
/* BC948 800BBD48 00000000 */   nop
/* BC94C 800BBD4C 0C02EBC5 */  jal        func_800BAF14
/* BC950 800BBD50 00000000 */   nop
.L800BBD54:
/* BC954 800BBD54 3C198014 */  lui        $t9, %hi(D_801442CC)
/* BC958 800BBD58 8F3942CC */  lw         $t9, %lo(D_801442CC)($t9)
/* BC95C 800BBD5C 0320F809 */  jalr       $t9
/* BC960 800BBD60 00000000 */   nop
/* BC964 800BBD64 3C098014 */  lui        $t1, %hi(D_80144334)
/* BC968 800BBD68 85294334 */  lh         $t1, %lo(D_80144334)($t1)
/* BC96C 800BBD6C 24010002 */  addiu      $at, $zero, 2
/* BC970 800BBD70 1521002A */  bne        $t1, $at, .L800BBE1C
/* BC974 800BBD74 00000000 */   nop
/* BC978 800BBD78 3C0B800D */  lui        $t3, %hi(D_800D6300)
/* BC97C 800BBD7C 8D6B6300 */  lw         $t3, %lo(D_800D6300)($t3)
/* BC980 800BBD80 2401000F */  addiu      $at, $zero, 0xf
/* BC984 800BBD84 1561001B */  bne        $t3, $at, .L800BBDF4
/* BC988 800BBD88 00000000 */   nop
/* BC98C 800BBD8C 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* BC990 800BBD90 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* BC994 800BBD94 2404001B */  addiu      $a0, $zero, 0x1b
/* BC998 800BBD98 24050053 */  addiu      $a1, $zero, 0x53
/* BC99C 800BBD9C 0C00AF12 */  jal        func_8002BC48
/* BC9A0 800BBDA0 24060054 */   addiu     $a2, $zero, 0x54
/* BC9A4 800BBDA4 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* BC9A8 800BBDA8 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* BC9AC 800BBDAC 2404001A */  addiu      $a0, $zero, 0x1a
/* BC9B0 800BBDB0 24050053 */  addiu      $a1, $zero, 0x53
/* BC9B4 800BBDB4 0C00AF12 */  jal        func_8002BC48
/* BC9B8 800BBDB8 24060054 */   addiu     $a2, $zero, 0x54
/* BC9BC 800BBDBC 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* BC9C0 800BBDC0 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* BC9C4 800BBDC4 2404001A */  addiu      $a0, $zero, 0x1a
/* BC9C8 800BBDC8 2405005B */  addiu      $a1, $zero, 0x5b
/* BC9CC 800BBDCC 0C00AF12 */  jal        func_8002BC48
/* BC9D0 800BBDD0 24060054 */   addiu     $a2, $zero, 0x54
/* BC9D4 800BBDD4 3C078016 */  lui        $a3, %hi(D_8015FF80)
/* BC9D8 800BBDD8 8CE7FF80 */  lw         $a3, %lo(D_8015FF80)($a3)
/* BC9DC 800BBDDC 24040086 */  addiu      $a0, $zero, 0x86
/* BC9E0 800BBDE0 24050055 */  addiu      $a1, $zero, 0x55
/* BC9E4 800BBDE4 0C00AF12 */  jal        func_8002BC48
/* BC9E8 800BBDE8 24060054 */   addiu     $a2, $zero, 0x54
/* BC9EC 800BBDEC 1000000B */  b          .L800BBE1C
/* BC9F0 800BBDF0 00000000 */   nop
.L800BBDF4:
/* BC9F4 800BBDF4 0C02EE4D */  jal        func_800BB934
/* BC9F8 800BBDF8 00000000 */   nop
/* BC9FC 800BBDFC 3C0C8018 */  lui        $t4, %hi(D_8017F718)
/* BCA00 800BBE00 858CF718 */  lh         $t4, %lo(D_8017F718)($t4)
/* BCA04 800BBE04 11800003 */  beqz       $t4, .L800BBE14
/* BCA08 800BBE08 00000000 */   nop
/* BCA0C 800BBE0C 0C02EAA5 */  jal        func_800BAA94
/* BCA10 800BBE10 00000000 */   nop
.L800BBE14:
/* BCA14 800BBE14 0C02EE87 */  jal        func_800BBA1C
/* BCA18 800BBE18 00000000 */   nop
.L800BBE1C:
/* BCA1C 800BBE1C 3C018018 */  lui        $at, %hi(D_8017F718)
/* BCA20 800BBE20 0C02EDB8 */  jal        func_800BB6E0
/* BCA24 800BBE24 A420F718 */   sh        $zero, %lo(D_8017F718)($at)
/* BCA28 800BBE28 8FBF001C */  lw         $ra, 0x1c($sp)
/* BCA2C 800BBE2C 27BD0028 */  addiu      $sp, $sp, 0x28
/* BCA30 800BBE30 03E00008 */  jr         $ra
/* BCA34 800BBE34 00000000 */   nop

glabel func_800BBE38
/* BCA38 800BBE38 27BDFFF8 */  addiu      $sp, $sp, -8
/* BCA3C 800BBE3C 3C0E8014 */  lui        $t6, %hi(D_80144344)
/* BCA40 800BBE40 8DCE4344 */  lw         $t6, %lo(D_80144344)($t6)
/* BCA44 800BBE44 3C188014 */  lui        $t8, %hi(D_80144338)
/* BCA48 800BBE48 8F184338 */  lw         $t8, %lo(D_80144338)($t8)
/* BCA4C 800BBE4C 3C018014 */  lui        $at, %hi(D_80144344)
/* BCA50 800BBE50 25CF0001 */  addiu      $t7, $t6, 1
/* BCA54 800BBE54 AC2F4344 */  sw         $t7, %lo(D_80144344)($at)
/* BCA58 800BBE58 030F082A */  slt        $at, $t8, $t7
/* BCA5C 800BBE5C 10200002 */  beqz       $at, .L800BBE68
/* BCA60 800BBE60 3C018014 */   lui       $at, %hi(D_80144344)
/* BCA64 800BBE64 AC384344 */  sw         $t8, %lo(D_80144344)($at)
.L800BBE68:
/* BCA68 800BBE68 3C198016 */  lui        $t9, %hi(D_8015FB8C)
/* BCA6C 800BBE6C 8F39FB8C */  lw         $t9, %lo(D_8015FB8C)($t9)
/* BCA70 800BBE70 07200020 */  bltz       $t9, .L800BBEF4
/* BCA74 800BBE74 AFB90004 */   sw        $t9, 4($sp)
.L800BBE78:
/* BCA78 800BBE78 8FA80004 */  lw         $t0, 4($sp)
/* BCA7C 800BBE7C 3C0A8016 */  lui        $t2, %hi(D_8015FB9C)
/* BCA80 800BBE80 8D4AFB9C */  lw         $t2, %lo(D_8015FB9C)($t2)
/* BCA84 800BBE84 00084880 */  sll        $t1, $t0, 2
/* BCA88 800BBE88 01284823 */  subu       $t1, $t1, $t0
/* BCA8C 800BBE8C 00094880 */  sll        $t1, $t1, 2
/* BCA90 800BBE90 01284823 */  subu       $t1, $t1, $t0
/* BCA94 800BBE94 00094880 */  sll        $t1, $t1, 2
/* BCA98 800BBE98 01284821 */  addu       $t1, $t1, $t0
/* BCA9C 800BBE9C 00094880 */  sll        $t1, $t1, 2
/* BCAA0 800BBEA0 01284823 */  subu       $t1, $t1, $t0
/* BCAA4 800BBEA4 00094880 */  sll        $t1, $t1, 2
/* BCAA8 800BBEA8 012A5821 */  addu       $t3, $t1, $t2
/* BCAAC 800BBEAC AFAB0000 */  sw         $t3, ($sp)
/* BCAB0 800BBEB0 8D6C006C */  lw         $t4, 0x6c($t3)
/* BCAB4 800BBEB4 24010206 */  addiu      $at, $zero, 0x206
/* BCAB8 800BBEB8 15810008 */  bne        $t4, $at, .L800BBEDC
/* BCABC 800BBEBC 00000000 */   nop
/* BCAC0 800BBEC0 3C0E8014 */  lui        $t6, %hi(D_80144344)
/* BCAC4 800BBEC4 8DCE4344 */  lw         $t6, %lo(D_80144344)($t6)
/* BCAC8 800BBEC8 8D6D0078 */  lw         $t5, 0x78($t3)
/* BCACC 800BBECC 15AE0003 */  bne        $t5, $t6, .L800BBEDC
/* BCAD0 800BBED0 00000000 */   nop
/* BCAD4 800BBED4 1000000E */  b          .L800BBF10
/* BCAD8 800BBED8 01001025 */   or        $v0, $t0, $zero
.L800BBEDC:
/* BCADC 800BBEDC 8FAF0000 */  lw         $t7, ($sp)
/* BCAE0 800BBEE0 8DF80004 */  lw         $t8, 4($t7)
/* BCAE4 800BBEE4 AFB80004 */  sw         $t8, 4($sp)
/* BCAE8 800BBEE8 8FB90004 */  lw         $t9, 4($sp)
/* BCAEC 800BBEEC 0721FFE2 */  bgez       $t9, .L800BBE78
/* BCAF0 800BBEF0 00000000 */   nop
.L800BBEF4:
/* BCAF4 800BBEF4 3C098014 */  lui        $t1, %hi(D_80144344)
/* BCAF8 800BBEF8 8D294344 */  lw         $t1, %lo(D_80144344)($t1)
/* BCAFC 800BBEFC 3C018014 */  lui        $at, %hi(D_80144344)
/* BCB00 800BBF00 3C028014 */  lui        $v0, %hi(D_8014433C)
/* BCB04 800BBF04 252AFFFF */  addiu      $t2, $t1, -1
/* BCB08 800BBF08 AC2A4344 */  sw         $t2, %lo(D_80144344)($at)
/* BCB0C 800BBF0C 8C42433C */  lw         $v0, %lo(D_8014433C)($v0)
.L800BBF10:
/* BCB10 800BBF10 03E00008 */  jr         $ra
/* BCB14 800BBF14 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800BBF18
/* BCB18 800BBF18 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BCB1C 800BBF1C AFBF001C */  sw         $ra, 0x1c($sp)
/* BCB20 800BBF20 AFB00018 */  sw         $s0, 0x18($sp)
/* BCB24 800BBF24 0C012058 */  jal        func_80048160
/* BCB28 800BBF28 2404000F */   addiu     $a0, $zero, 0xf
/* BCB2C 800BBF2C 3C0E8014 */  lui        $t6, %hi(D_8014434E)
/* BCB30 800BBF30 85CE434E */  lh         $t6, %lo(D_8014434E)($t6)
/* BCB34 800BBF34 AFA20034 */  sw         $v0, 0x34($sp)
/* BCB38 800BBF38 15C00009 */  bnez       $t6, .L800BBF60
/* BCB3C 800BBF3C 00000000 */   nop
/* BCB40 800BBF40 8FAF0034 */  lw         $t7, 0x34($sp)
/* BCB44 800BBF44 2401FFFF */  addiu      $at, $zero, -1
/* BCB48 800BBF48 11E10103 */  beq        $t7, $at, .L800BC358
/* BCB4C 800BBF4C 00000000 */   nop
/* BCB50 800BBF50 0C012101 */  jal        func_80048404
/* BCB54 800BBF54 01E02025 */   or        $a0, $t7, $zero
/* BCB58 800BBF58 100000FF */  b          .L800BC358
/* BCB5C 800BBF5C 00000000 */   nop
.L800BBF60:
/* BCB60 800BBF60 3C188014 */  lui        $t8, %hi(D_80144348)
/* BCB64 800BBF64 87184348 */  lh         $t8, %lo(D_80144348)($t8)
/* BCB68 800BBF68 130000FB */  beqz       $t8, .L800BC358
/* BCB6C 800BBF6C 00000000 */   nop
/* BCB70 800BBF70 8FB90034 */  lw         $t9, 0x34($sp)
/* BCB74 800BBF74 2401FFFF */  addiu      $at, $zero, -1
/* BCB78 800BBF78 132100F7 */  beq        $t9, $at, .L800BC358
/* BCB7C 800BBF7C 00000000 */   nop
/* BCB80 800BBF80 3C088014 */  lui        $t0, %hi(D_801442F4)
/* BCB84 800BBF84 3C098014 */  lui        $t1, %hi(D_80144344)
/* BCB88 800BBF88 8D294344 */  lw         $t1, %lo(D_80144344)($t1)
/* BCB8C 800BBF8C 850842F4 */  lh         $t0, %lo(D_801442F4)($t0)
/* BCB90 800BBF90 0128082A */  slt        $at, $t1, $t0
/* BCB94 800BBF94 10200007 */  beqz       $at, .L800BBFB4
/* BCB98 800BBF98 00000000 */   nop
/* BCB9C 800BBF9C 250AFFFF */  addiu      $t2, $t0, -1
/* BCBA0 800BBFA0 3C018014 */  lui        $at, %hi(D_80144344)
/* BCBA4 800BBFA4 0C02EF8E */  jal        func_800BBE38
/* BCBA8 800BBFA8 AC2A4344 */   sw        $t2, %lo(D_80144344)($at)
/* BCBAC 800BBFAC 3C018014 */  lui        $at, %hi(D_8014433C)
/* BCBB0 800BBFB0 AC22433C */  sw         $v0, %lo(D_8014433C)($at)
.L800BBFB4:
/* BCBB4 800BBFB4 3C0F8014 */  lui        $t7, %hi(D_8014433C)
/* BCBB8 800BBFB8 8FAB0034 */  lw         $t3, 0x34($sp)
/* BCBBC 800BBFBC 8DEF433C */  lw         $t7, %lo(D_8014433C)($t7)
/* BCBC0 800BBFC0 3C0D8016 */  lui        $t5, 0x8016
/* BCBC4 800BBFC4 000B6080 */  sll        $t4, $t3, 2
/* BCBC8 800BBFC8 000FC080 */  sll        $t8, $t7, 2
/* BCBCC 800BBFCC 018B6023 */  subu       $t4, $t4, $t3
/* BCBD0 800BBFD0 030FC023 */  subu       $t8, $t8, $t7
/* BCBD4 800BBFD4 000C6080 */  sll        $t4, $t4, 2
/* BCBD8 800BBFD8 0018C080 */  sll        $t8, $t8, 2
/* BCBDC 800BBFDC 018B6023 */  subu       $t4, $t4, $t3
/* BCBE0 800BBFE0 030FC023 */  subu       $t8, $t8, $t7
/* BCBE4 800BBFE4 000C6080 */  sll        $t4, $t4, 2
/* BCBE8 800BBFE8 0018C080 */  sll        $t8, $t8, 2
/* BCBEC 800BBFEC 8DADFB9C */  lw         $t5, -0x464($t5)
/* BCBF0 800BBFF0 018B6021 */  addu       $t4, $t4, $t3
/* BCBF4 800BBFF4 030FC021 */  addu       $t8, $t8, $t7
/* BCBF8 800BBFF8 000C6080 */  sll        $t4, $t4, 2
/* BCBFC 800BBFFC 0018C080 */  sll        $t8, $t8, 2
/* BCC00 800BC000 018B6023 */  subu       $t4, $t4, $t3
/* BCC04 800BC004 030FC023 */  subu       $t8, $t8, $t7
/* BCC08 800BC008 000C6080 */  sll        $t4, $t4, 2
/* BCC0C 800BC00C 0018C080 */  sll        $t8, $t8, 2
/* BCC10 800BC010 018D7021 */  addu       $t6, $t4, $t5
/* BCC14 800BC014 030DC821 */  addu       $t9, $t8, $t5
/* BCC18 800BC018 AFAE002C */  sw         $t6, 0x2c($sp)
/* BCC1C 800BC01C AFB90028 */  sw         $t9, 0x28($sp)
/* BCC20 800BC020 272500E0 */  addiu      $a1, $t9, 0xe0
/* BCC24 800BC024 0C02E5A3 */  jal        func_800B968C
/* BCC28 800BC028 25C400E0 */   addiu     $a0, $t6, 0xe0
/* BCC2C 800BC02C 3C088014 */  lui        $t0, %hi(D_80144344)
/* BCC30 800BC030 8D084344 */  lw         $t0, %lo(D_80144344)($t0)
/* BCC34 800BC034 3C098014 */  lui        $t1, %hi(D_80144340)
/* BCC38 800BC038 8D294340 */  lw         $t1, %lo(D_80144340)($t1)
/* BCC3C 800BC03C 250AFFFE */  addiu      $t2, $t0, -2
/* BCC40 800BC040 E7A00024 */  swc1       $f0, 0x24($sp)
/* BCC44 800BC044 0149082A */  slt        $at, $t2, $t1
/* BCC48 800BC048 14200074 */  bnez       $at, .L800BC21C
/* BCC4C 800BC04C 00000000 */   nop
/* BCC50 800BC050 3C0B8014 */  lui        $t3, %hi(D_801442F4)
/* BCC54 800BC054 856B42F4 */  lh         $t3, %lo(D_801442F4)($t3)
/* BCC58 800BC058 010B6023 */  subu       $t4, $t0, $t3
/* BCC5C 800BC05C 29810002 */  slti       $at, $t4, 2
/* BCC60 800BC060 14200056 */  bnez       $at, .L800BC1BC
/* BCC64 800BC064 AFAC0030 */   sw        $t4, 0x30($sp)
/* BCC68 800BC068 01808025 */  or         $s0, $t4, $zero
/* BCC6C 800BC06C 24010002 */  addiu      $at, $zero, 2
/* BCC70 800BC070 12010005 */  beq        $s0, $at, .L800BC088
/* BCC74 800BC074 24010003 */   addiu     $at, $zero, 3
/* BCC78 800BC078 1201001C */  beq        $s0, $at, .L800BC0EC
/* BCC7C 800BC07C 00000000 */   nop
/* BCC80 800BC080 10000033 */  b          .L800BC150
/* BCC84 800BC084 00000000 */   nop
.L800BC088:
/* BCC88 800BC088 8FAF002C */  lw         $t7, 0x2c($sp)
/* BCC8C 800BC08C 3C01800E */  lui        $at, %hi(D_800DF708)
/* BCC90 800BC090 D428F708 */  ldc1       $f8, %lo(D_800DF708)($at)
/* BCC94 800BC094 C5E400D4 */  lwc1       $f4, 0xd4($t7)
/* BCC98 800BC098 3C01800E */  lui        $at, 0x800e
/* BCC9C 800BC09C 460021A1 */  cvt.d.s    $f6, $f4
/* BCCA0 800BC0A0 46283282 */  mul.d      $f10, $f6, $f8
/* BCCA4 800BC0A4 46205420 */  cvt.s.d    $f16, $f10
/* BCCA8 800BC0A8 E5F000D4 */  swc1       $f16, 0xd4($t7)
/* BCCAC 800BC0AC 8FB8002C */  lw         $t8, 0x2c($sp)
/* BCCB0 800BC0B0 D426F710 */  ldc1       $f6, -0x8f0($at)
/* BCCB4 800BC0B4 3C01800E */  lui        $at, 0x800e
/* BCCB8 800BC0B8 C71200D8 */  lwc1       $f18, 0xd8($t8)
/* BCCBC 800BC0BC 46009121 */  cvt.d.s    $f4, $f18
/* BCCC0 800BC0C0 46262202 */  mul.d      $f8, $f4, $f6
/* BCCC4 800BC0C4 462042A0 */  cvt.s.d    $f10, $f8
/* BCCC8 800BC0C8 E70A00D8 */  swc1       $f10, 0xd8($t8)
/* BCCCC 800BC0CC 8FAD002C */  lw         $t5, 0x2c($sp)
/* BCCD0 800BC0D0 D424F718 */  ldc1       $f4, -0x8e8($at)
/* BCCD4 800BC0D4 C5B000DC */  lwc1       $f16, 0xdc($t5)
/* BCCD8 800BC0D8 460084A1 */  cvt.d.s    $f18, $f16
/* BCCDC 800BC0DC 46249182 */  mul.d      $f6, $f18, $f4
/* BCCE0 800BC0E0 46203220 */  cvt.s.d    $f8, $f6
/* BCCE4 800BC0E4 1000004D */  b          .L800BC21C
/* BCCE8 800BC0E8 E5A800DC */   swc1      $f8, 0xdc($t5)
.L800BC0EC:
/* BCCEC 800BC0EC 8FAE002C */  lw         $t6, 0x2c($sp)
/* BCCF0 800BC0F0 3C01800E */  lui        $at, %hi(D_800DF720)
/* BCCF4 800BC0F4 D432F720 */  ldc1       $f18, %lo(D_800DF720)($at)
/* BCCF8 800BC0F8 C5CA00D4 */  lwc1       $f10, 0xd4($t6)
/* BCCFC 800BC0FC 3C01800E */  lui        $at, 0x800e
/* BCD00 800BC100 46005421 */  cvt.d.s    $f16, $f10
/* BCD04 800BC104 46328102 */  mul.d      $f4, $f16, $f18
/* BCD08 800BC108 462021A0 */  cvt.s.d    $f6, $f4
/* BCD0C 800BC10C E5C600D4 */  swc1       $f6, 0xd4($t6)
/* BCD10 800BC110 8FB9002C */  lw         $t9, 0x2c($sp)
/* BCD14 800BC114 D430F728 */  ldc1       $f16, -0x8d8($at)
/* BCD18 800BC118 3C01800E */  lui        $at, 0x800e
/* BCD1C 800BC11C C72800D8 */  lwc1       $f8, 0xd8($t9)
/* BCD20 800BC120 460042A1 */  cvt.d.s    $f10, $f8
/* BCD24 800BC124 46305482 */  mul.d      $f18, $f10, $f16
/* BCD28 800BC128 46209120 */  cvt.s.d    $f4, $f18
/* BCD2C 800BC12C E72400D8 */  swc1       $f4, 0xd8($t9)
/* BCD30 800BC130 8FA9002C */  lw         $t1, 0x2c($sp)
/* BCD34 800BC134 D42AF730 */  ldc1       $f10, -0x8d0($at)
/* BCD38 800BC138 C52600DC */  lwc1       $f6, 0xdc($t1)
/* BCD3C 800BC13C 46003221 */  cvt.d.s    $f8, $f6
/* BCD40 800BC140 462A4402 */  mul.d      $f16, $f8, $f10
/* BCD44 800BC144 462084A0 */  cvt.s.d    $f18, $f16
/* BCD48 800BC148 10000034 */  b          .L800BC21C
/* BCD4C 800BC14C E53200DC */   swc1      $f18, 0xdc($t1)
.L800BC150:
/* BCD50 800BC150 8FAA002C */  lw         $t2, 0x2c($sp)
/* BCD54 800BC154 3C01800E */  lui        $at, %hi(D_800DF738)
/* BCD58 800BC158 AD400288 */  sw         $zero, 0x288($t2)
/* BCD5C 800BC15C 8FA8002C */  lw         $t0, 0x2c($sp)
/* BCD60 800BC160 D428F738 */  ldc1       $f8, %lo(D_800DF738)($at)
/* BCD64 800BC164 3C01800E */  lui        $at, 0x800e
/* BCD68 800BC168 C50400D4 */  lwc1       $f4, 0xd4($t0)
/* BCD6C 800BC16C 460021A1 */  cvt.d.s    $f6, $f4
/* BCD70 800BC170 46283282 */  mul.d      $f10, $f6, $f8
/* BCD74 800BC174 46205420 */  cvt.s.d    $f16, $f10
/* BCD78 800BC178 E51000D4 */  swc1       $f16, 0xd4($t0)
/* BCD7C 800BC17C 8FAB002C */  lw         $t3, 0x2c($sp)
/* BCD80 800BC180 D426F740 */  ldc1       $f6, -0x8c0($at)
/* BCD84 800BC184 3C01800E */  lui        $at, 0x800e
/* BCD88 800BC188 C57200D8 */  lwc1       $f18, 0xd8($t3)
/* BCD8C 800BC18C 46009121 */  cvt.d.s    $f4, $f18
/* BCD90 800BC190 46262202 */  mul.d      $f8, $f4, $f6
/* BCD94 800BC194 462042A0 */  cvt.s.d    $f10, $f8
/* BCD98 800BC198 E56A00D8 */  swc1       $f10, 0xd8($t3)
/* BCD9C 800BC19C 8FAC002C */  lw         $t4, 0x2c($sp)
/* BCDA0 800BC1A0 D424F748 */  ldc1       $f4, -0x8b8($at)
/* BCDA4 800BC1A4 C59000DC */  lwc1       $f16, 0xdc($t4)
/* BCDA8 800BC1A8 460084A1 */  cvt.d.s    $f18, $f16
/* BCDAC 800BC1AC 46249182 */  mul.d      $f6, $f18, $f4
/* BCDB0 800BC1B0 46203220 */  cvt.s.d    $f8, $f6
/* BCDB4 800BC1B4 10000019 */  b          .L800BC21C
/* BCDB8 800BC1B8 E58800DC */   swc1      $f8, 0xdc($t4)
.L800BC1BC:
/* BCDBC 800BC1BC 8FAF002C */  lw         $t7, 0x2c($sp)
/* BCDC0 800BC1C0 3C01800E */  lui        $at, %hi(D_800DF750)
/* BCDC4 800BC1C4 D432F750 */  ldc1       $f18, %lo(D_800DF750)($at)
/* BCDC8 800BC1C8 C5EA00D4 */  lwc1       $f10, 0xd4($t7)
/* BCDCC 800BC1CC 3C01800E */  lui        $at, 0x800e
/* BCDD0 800BC1D0 46005421 */  cvt.d.s    $f16, $f10
/* BCDD4 800BC1D4 46328102 */  mul.d      $f4, $f16, $f18
/* BCDD8 800BC1D8 462021A0 */  cvt.s.d    $f6, $f4
/* BCDDC 800BC1DC E5E600D4 */  swc1       $f6, 0xd4($t7)
/* BCDE0 800BC1E0 8FB8002C */  lw         $t8, 0x2c($sp)
/* BCDE4 800BC1E4 D430F758 */  ldc1       $f16, -0x8a8($at)
/* BCDE8 800BC1E8 3C01800E */  lui        $at, 0x800e
/* BCDEC 800BC1EC C70800D8 */  lwc1       $f8, 0xd8($t8)
/* BCDF0 800BC1F0 460042A1 */  cvt.d.s    $f10, $f8
/* BCDF4 800BC1F4 46305482 */  mul.d      $f18, $f10, $f16
/* BCDF8 800BC1F8 46209120 */  cvt.s.d    $f4, $f18
/* BCDFC 800BC1FC E70400D8 */  swc1       $f4, 0xd8($t8)
/* BCE00 800BC200 8FAD002C */  lw         $t5, 0x2c($sp)
/* BCE04 800BC204 D42AF760 */  ldc1       $f10, -0x8a0($at)
/* BCE08 800BC208 C5A600DC */  lwc1       $f6, 0xdc($t5)
/* BCE0C 800BC20C 46003221 */  cvt.d.s    $f8, $f6
/* BCE10 800BC210 462A4402 */  mul.d      $f16, $f8, $f10
/* BCE14 800BC214 462084A0 */  cvt.s.d    $f18, $f16
/* BCE18 800BC218 E5B200DC */  swc1       $f18, 0xdc($t5)
.L800BC21C:
/* BCE1C 800BC21C 8FAE0028 */  lw         $t6, 0x28($sp)
/* BCE20 800BC220 3C010305 */  lui        $at, 0x305
/* BCE24 800BC224 34210307 */  ori        $at, $at, 0x307
/* BCE28 800BC228 8DD90070 */  lw         $t9, 0x70($t6)
/* BCE2C 800BC22C 1721002F */  bne        $t9, $at, .L800BC2EC
/* BCE30 800BC230 00000000 */   nop
/* BCE34 800BC234 C7A40024 */  lwc1       $f4, 0x24($sp)
/* BCE38 800BC238 3C01800E */  lui        $at, %hi(D_800DF768)
/* BCE3C 800BC23C D428F768 */  ldc1       $f8, %lo(D_800DF768)($at)
/* BCE40 800BC240 460021A1 */  cvt.d.s    $f6, $f4
/* BCE44 800BC244 4628303C */  c.lt.d     $f6, $f8
/* BCE48 800BC248 00000000 */  nop
/* BCE4C 800BC24C 45000022 */  bc1f       .L800BC2D8
/* BCE50 800BC250 3C01800E */   lui       $at, %hi(D_800DF770)
/* BCE54 800BC254 D42AF770 */  ldc1       $f10, %lo(D_800DF770)($at)
/* BCE58 800BC258 3C01800E */  lui        $at, %hi(D_800DF778)
/* BCE5C 800BC25C D432F778 */  ldc1       $f18, %lo(D_800DF778)($at)
/* BCE60 800BC260 46265401 */  sub.d      $f16, $f10, $f6
/* BCE64 800BC264 3C014008 */  lui        $at, 0x4008
/* BCE68 800BC268 44815800 */  mtc1       $at, $f11
/* BCE6C 800BC26C 44805000 */  mtc1       $zero, $f10
/* BCE70 800BC270 46328103 */  div.d      $f4, $f16, $f18
/* BCE74 800BC274 3C01800E */  lui        $at, 0x800e
/* BCE78 800BC278 46202220 */  cvt.s.d    $f8, $f4
/* BCE7C 800BC27C E5C80118 */  swc1       $f8, 0x118($t6)
/* BCE80 800BC280 8FA90028 */  lw         $t1, 0x28($sp)
/* BCE84 800BC284 C5260118 */  lwc1       $f6, 0x118($t1)
/* BCE88 800BC288 46003421 */  cvt.d.s    $f16, $f6
/* BCE8C 800BC28C 46305481 */  sub.d      $f18, $f10, $f16
/* BCE90 800BC290 46209120 */  cvt.s.d    $f4, $f18
/* BCE94 800BC294 E524002C */  swc1       $f4, 0x2c($t1)
/* BCE98 800BC298 C426F780 */  lwc1       $f6, -0x880($at)
/* BCE9C 800BC29C C7A80024 */  lwc1       $f8, 0x24($sp)
/* BCEA0 800BC2A0 4606403C */  c.lt.s     $f8, $f6
/* BCEA4 800BC2A4 00000000 */  nop
/* BCEA8 800BC2A8 45000021 */  bc1f       .L800BC330
/* BCEAC 800BC2AC 3C018018 */   lui       $at, %hi(D_8017ABD4)
/* BCEB0 800BC2B0 A420ABD4 */  sh         $zero, %lo(D_8017ABD4)($at)
/* BCEB4 800BC2B4 0C02E3FC */  jal        func_800B8FF0
/* BCEB8 800BC2B8 24040005 */   addiu     $a0, $zero, 5
/* BCEBC 800BC2BC 0C012101 */  jal        func_80048404
/* BCEC0 800BC2C0 8FA40034 */   lw        $a0, 0x34($sp)
/* BCEC4 800BC2C4 8FAA0028 */  lw         $t2, 0x28($sp)
/* BCEC8 800BC2C8 3C018014 */  lui        $at, %hi(D_80144320)
/* BCECC 800BC2CC AD400070 */  sw         $zero, 0x70($t2)
/* BCED0 800BC2D0 10000017 */  b          .L800BC330
/* BCED4 800BC2D4 AC204320 */   sw        $zero, %lo(D_80144320)($at)
.L800BC2D8:
/* BCED8 800BC2D8 3C01800E */  lui        $at, %hi(D_800DF784)
/* BCEDC 800BC2DC C42AF784 */  lwc1       $f10, %lo(D_800DF784)($at)
/* BCEE0 800BC2E0 8FA80028 */  lw         $t0, 0x28($sp)
/* BCEE4 800BC2E4 10000012 */  b          .L800BC330
/* BCEE8 800BC2E8 E50A0118 */   swc1      $f10, 0x118($t0)
.L800BC2EC:
/* BCEEC 800BC2EC 3C01800E */  lui        $at, %hi(D_800DF788)
/* BCEF0 800BC2F0 C432F788 */  lwc1       $f18, %lo(D_800DF788)($at)
/* BCEF4 800BC2F4 C7B00024 */  lwc1       $f16, 0x24($sp)
/* BCEF8 800BC2F8 4612803C */  c.lt.s     $f16, $f18
/* BCEFC 800BC2FC 00000000 */  nop
/* BCF00 800BC300 45000007 */  bc1f       .L800BC320
/* BCF04 800BC304 00000000 */   nop
/* BCF08 800BC308 0C02EF8E */  jal        func_800BBE38
/* BCF0C 800BC30C 00000000 */   nop
/* BCF10 800BC310 3C018014 */  lui        $at, %hi(D_8014433C)
/* BCF14 800BC314 AC22433C */  sw         $v0, %lo(D_8014433C)($at)
/* BCF18 800BC318 3C018014 */  lui        $at, %hi(D_80144320)
/* BCF1C 800BC31C AC204320 */  sw         $zero, %lo(D_80144320)($at)
.L800BC320:
/* BCF20 800BC320 3C0B8014 */  lui        $t3, %hi(D_8014433C)
/* BCF24 800BC324 8D6B433C */  lw         $t3, %lo(D_8014433C)($t3)
/* BCF28 800BC328 3C018016 */  lui        $at, %hi(D_8015ED94)
/* BCF2C 800BC32C AC2BED94 */  sw         $t3, %lo(D_8015ED94)($at)
.L800BC330:
/* BCF30 800BC330 3C0C8014 */  lui        $t4, %hi(D_80144320)
/* BCF34 800BC334 8D8C4320 */  lw         $t4, %lo(D_80144320)($t4)
/* BCF38 800BC338 240100C8 */  addiu      $at, $zero, 0xc8
/* BCF3C 800BC33C 002C802A */  slt        $s0, $at, $t4
/* BCF40 800BC340 3C018014 */  lui        $at, %hi(D_80144320)
/* BCF44 800BC344 258F0001 */  addiu      $t7, $t4, 1
/* BCF48 800BC348 12000003 */  beqz       $s0, .L800BC358
/* BCF4C 800BC34C AC2F4320 */   sw        $t7, %lo(D_80144320)($at)
/* BCF50 800BC350 0C012101 */  jal        func_80048404
/* BCF54 800BC354 8FA40034 */   lw        $a0, 0x34($sp)
.L800BC358:
/* BCF58 800BC358 8FBF001C */  lw         $ra, 0x1c($sp)
/* BCF5C 800BC35C 8FB00018 */  lw         $s0, 0x18($sp)
/* BCF60 800BC360 27BD0038 */  addiu      $sp, $sp, 0x38
/* BCF64 800BC364 03E00008 */  jr         $ra
/* BCF68 800BC368 00000000 */   nop

glabel func_800BC36C
/* BCF6C 800BC36C 03E00008 */  jr         $ra
/* BCF70 800BC370 00000000 */   nop

glabel func_800BC374
/* BCF74 800BC374 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BCF78 800BC378 AFBF0014 */  sw         $ra, 0x14($sp)
/* BCF7C 800BC37C 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BCF80 800BC380 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BCF84 800BC384 24010002 */  addiu      $at, $zero, 2
/* BCF88 800BC388 15C1001B */  bne        $t6, $at, .L800BC3F8
/* BCF8C 800BC38C 00000000 */   nop
/* BCF90 800BC390 3C0F800E */  lui        $t7, %hi(D_800D9DBC)
/* BCF94 800BC394 8DEF9DBC */  lw         $t7, %lo(D_800D9DBC)($t7)
/* BCF98 800BC398 24010003 */  addiu      $at, $zero, 3
/* BCF9C 800BC39C 11E10016 */  beq        $t7, $at, .L800BC3F8
/* BCFA0 800BC3A0 00000000 */   nop
/* BCFA4 800BC3A4 3C188014 */  lui        $t8, %hi(D_80144358)
/* BCFA8 800BC3A8 87184358 */  lh         $t8, %lo(D_80144358)($t8)
/* BCFAC 800BC3AC 13000006 */  beqz       $t8, .L800BC3C8
/* BCFB0 800BC3B0 3C018014 */   lui       $at, %hi(D_80144358)
/* BCFB4 800BC3B4 3C088016 */  lui        $t0, %hi(D_801631F4)
/* BCFB8 800BC3B8 A4204358 */  sh         $zero, %lo(D_80144358)($at)
/* BCFBC 800BC3BC 250831F4 */  addiu      $t0, $t0, %lo(D_801631F4)
/* BCFC0 800BC3C0 24190001 */  addiu      $t9, $zero, 1
/* BCFC4 800BC3C4 AD1900B4 */  sw         $t9, 0xb4($t0)
.L800BC3C8:
/* BCFC8 800BC3C8 3C098016 */  lui        $t1, %hi(D_801631F4)
/* BCFCC 800BC3CC 252931F4 */  addiu      $t1, $t1, %lo(D_801631F4)
/* BCFD0 800BC3D0 8D2A0004 */  lw         $t2, 4($t1)
/* BCFD4 800BC3D4 11400008 */  beqz       $t2, .L800BC3F8
/* BCFD8 800BC3D8 00000000 */   nop
/* BCFDC 800BC3DC 8D2B0008 */  lw         $t3, 8($t1)
/* BCFE0 800BC3E0 15600005 */  bnez       $t3, .L800BC3F8
/* BCFE4 800BC3E4 00000000 */   nop
/* BCFE8 800BC3E8 240C0001 */  addiu      $t4, $zero, 1
/* BCFEC 800BC3EC AD2C0008 */  sw         $t4, 8($t1)
/* BCFF0 800BC3F0 0C02E3B6 */  jal        func_800B8ED8
/* BCFF4 800BC3F4 24040001 */   addiu     $a0, $zero, 1
.L800BC3F8:
/* BCFF8 800BC3F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BCFFC 800BC3FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD000 800BC400 03E00008 */  jr         $ra
/* BD004 800BC404 00000000 */   nop

glabel func_800BC408
/* BD008 800BC408 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD00C 800BC40C AFBF0014 */  sw         $ra, 0x14($sp)
/* BD010 800BC410 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD014 800BC414 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD018 800BC418 24010002 */  addiu      $at, $zero, 2
/* BD01C 800BC41C 15C1000D */  bne        $t6, $at, .L800BC454
/* BD020 800BC420 00000000 */   nop
/* BD024 800BC424 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD028 800BC428 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD02C 800BC42C 8DF80028 */  lw         $t8, 0x28($t7)
/* BD030 800BC430 13000008 */  beqz       $t8, .L800BC454
/* BD034 800BC434 00000000 */   nop
/* BD038 800BC438 8DF9002C */  lw         $t9, 0x2c($t7)
/* BD03C 800BC43C 17200005 */  bnez       $t9, .L800BC454
/* BD040 800BC440 00000000 */   nop
/* BD044 800BC444 24080001 */  addiu      $t0, $zero, 1
/* BD048 800BC448 ADE8002C */  sw         $t0, 0x2c($t7)
/* BD04C 800BC44C 0C02E3B6 */  jal        func_800B8ED8
/* BD050 800BC450 24040001 */   addiu     $a0, $zero, 1
.L800BC454:
/* BD054 800BC454 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD058 800BC458 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD05C 800BC45C 03E00008 */  jr         $ra
/* BD060 800BC460 00000000 */   nop

glabel func_800BC464
/* BD064 800BC464 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD068 800BC468 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD06C 800BC46C 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD070 800BC470 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD074 800BC474 24010002 */  addiu      $at, $zero, 2
/* BD078 800BC478 15C1000E */  bne        $t6, $at, .L800BC4B4
/* BD07C 800BC47C 00000000 */   nop
/* BD080 800BC480 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD084 800BC484 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD088 800BC488 8DF80050 */  lw         $t8, 0x50($t7)
/* BD08C 800BC48C 2F010004 */  sltiu      $at, $t8, 4
/* BD090 800BC490 14200008 */  bnez       $at, .L800BC4B4
/* BD094 800BC494 00000000 */   nop
/* BD098 800BC498 8DF90054 */  lw         $t9, 0x54($t7)
/* BD09C 800BC49C 17200005 */  bnez       $t9, .L800BC4B4
/* BD0A0 800BC4A0 00000000 */   nop
/* BD0A4 800BC4A4 24080001 */  addiu      $t0, $zero, 1
/* BD0A8 800BC4A8 ADE80054 */  sw         $t0, 0x54($t7)
/* BD0AC 800BC4AC 0C02E3B6 */  jal        func_800B8ED8
/* BD0B0 800BC4B0 24040001 */   addiu     $a0, $zero, 1
.L800BC4B4:
/* BD0B4 800BC4B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD0B8 800BC4B8 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD0BC 800BC4BC 03E00008 */  jr         $ra
/* BD0C0 800BC4C0 00000000 */   nop

glabel func_800BC4C4
/* BD0C4 800BC4C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD0C8 800BC4C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD0CC 800BC4CC 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD0D0 800BC4D0 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD0D4 800BC4D4 24010002 */  addiu      $at, $zero, 2
/* BD0D8 800BC4D8 15C1000E */  bne        $t6, $at, .L800BC514
/* BD0DC 800BC4DC 00000000 */   nop
/* BD0E0 800BC4E0 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD0E4 800BC4E4 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD0E8 800BC4E8 8DF80078 */  lw         $t8, 0x78($t7)
/* BD0EC 800BC4EC 2F010003 */  sltiu      $at, $t8, 3
/* BD0F0 800BC4F0 14200008 */  bnez       $at, .L800BC514
/* BD0F4 800BC4F4 00000000 */   nop
/* BD0F8 800BC4F8 8DF9007C */  lw         $t9, 0x7c($t7)
/* BD0FC 800BC4FC 17200005 */  bnez       $t9, .L800BC514
/* BD100 800BC500 00000000 */   nop
/* BD104 800BC504 24080001 */  addiu      $t0, $zero, 1
/* BD108 800BC508 ADE8007C */  sw         $t0, 0x7c($t7)
/* BD10C 800BC50C 0C02E3B6 */  jal        func_800B8ED8
/* BD110 800BC510 24040001 */   addiu     $a0, $zero, 1
.L800BC514:
/* BD114 800BC514 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD118 800BC518 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD11C 800BC51C 03E00008 */  jr         $ra
/* BD120 800BC520 00000000 */   nop

glabel func_800BC524
/* BD124 800BC524 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD128 800BC528 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD12C 800BC52C 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD130 800BC530 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD134 800BC534 24010002 */  addiu      $at, $zero, 2
/* BD138 800BC538 15C1000A */  bne        $t6, $at, .L800BC564
/* BD13C 800BC53C 00000000 */   nop
/* BD140 800BC540 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD144 800BC544 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD148 800BC548 8DF80000 */  lw         $t8, ($t7)
/* BD14C 800BC54C 2F010003 */  sltiu      $at, $t8, 3
/* BD150 800BC550 14200004 */  bnez       $at, .L800BC564
/* BD154 800BC554 00000000 */   nop
/* BD158 800BC558 ADE00000 */  sw         $zero, ($t7)
/* BD15C 800BC55C 0C02E3B6 */  jal        func_800B8ED8
/* BD160 800BC560 24040001 */   addiu     $a0, $zero, 1
.L800BC564:
/* BD164 800BC564 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD168 800BC568 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD16C 800BC56C 03E00008 */  jr         $ra
/* BD170 800BC570 00000000 */   nop

glabel func_800BC574
/* BD174 800BC574 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD178 800BC578 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD17C 800BC57C 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD180 800BC580 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD184 800BC584 24010002 */  addiu      $at, $zero, 2
/* BD188 800BC588 15C1000D */  bne        $t6, $at, .L800BC5C0
/* BD18C 800BC58C 00000000 */   nop
/* BD190 800BC590 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD194 800BC594 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD198 800BC598 8DF80028 */  lw         $t8, 0x28($t7)
/* BD19C 800BC59C 13000008 */  beqz       $t8, .L800BC5C0
/* BD1A0 800BC5A0 00000000 */   nop
/* BD1A4 800BC5A4 8DF9002C */  lw         $t9, 0x2c($t7)
/* BD1A8 800BC5A8 17200005 */  bnez       $t9, .L800BC5C0
/* BD1AC 800BC5AC 00000000 */   nop
/* BD1B0 800BC5B0 24080001 */  addiu      $t0, $zero, 1
/* BD1B4 800BC5B4 ADE8002C */  sw         $t0, 0x2c($t7)
/* BD1B8 800BC5B8 0C02E3B6 */  jal        func_800B8ED8
/* BD1BC 800BC5BC 24040001 */   addiu     $a0, $zero, 1
.L800BC5C0:
/* BD1C0 800BC5C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD1C4 800BC5C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD1C8 800BC5C8 03E00008 */  jr         $ra
/* BD1CC 800BC5CC 00000000 */   nop

glabel func_800BC5D0
/* BD1D0 800BC5D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD1D4 800BC5D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD1D8 800BC5D8 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD1DC 800BC5DC 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD1E0 800BC5E0 24010002 */  addiu      $at, $zero, 2
/* BD1E4 800BC5E4 15C1000A */  bne        $t6, $at, .L800BC610
/* BD1E8 800BC5E8 00000000 */   nop
/* BD1EC 800BC5EC 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD1F0 800BC5F0 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD1F4 800BC5F4 8DF80000 */  lw         $t8, ($t7)
/* BD1F8 800BC5F8 2F010002 */  sltiu      $at, $t8, 2
/* BD1FC 800BC5FC 14200004 */  bnez       $at, .L800BC610
/* BD200 800BC600 00000000 */   nop
/* BD204 800BC604 ADE00000 */  sw         $zero, ($t7)
/* BD208 800BC608 0C02E3B6 */  jal        func_800B8ED8
/* BD20C 800BC60C 24040001 */   addiu     $a0, $zero, 1
.L800BC610:
/* BD210 800BC610 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD214 800BC614 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD218 800BC618 03E00008 */  jr         $ra
/* BD21C 800BC61C 00000000 */   nop

glabel func_800BC620
/* BD220 800BC620 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD224 800BC624 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD228 800BC628 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD22C 800BC62C 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD230 800BC630 24010002 */  addiu      $at, $zero, 2
/* BD234 800BC634 15C1000E */  bne        $t6, $at, .L800BC670
/* BD238 800BC638 00000000 */   nop
/* BD23C 800BC63C 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD240 800BC640 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD244 800BC644 8DF80050 */  lw         $t8, 0x50($t7)
/* BD248 800BC648 2F010003 */  sltiu      $at, $t8, 3
/* BD24C 800BC64C 14200008 */  bnez       $at, .L800BC670
/* BD250 800BC650 00000000 */   nop
/* BD254 800BC654 8DF90054 */  lw         $t9, 0x54($t7)
/* BD258 800BC658 17200005 */  bnez       $t9, .L800BC670
/* BD25C 800BC65C 00000000 */   nop
/* BD260 800BC660 24080001 */  addiu      $t0, $zero, 1
/* BD264 800BC664 ADE80054 */  sw         $t0, 0x54($t7)
/* BD268 800BC668 0C02E3B6 */  jal        func_800B8ED8
/* BD26C 800BC66C 24040001 */   addiu     $a0, $zero, 1
.L800BC670:
/* BD270 800BC670 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD274 800BC674 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD278 800BC678 03E00008 */  jr         $ra
/* BD27C 800BC67C 00000000 */   nop

glabel func_800BC680
/* BD280 800BC680 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD284 800BC684 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD288 800BC688 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD28C 800BC68C 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD290 800BC690 24010002 */  addiu      $at, $zero, 2
/* BD294 800BC694 15C10012 */  bne        $t6, $at, .L800BC6E0
/* BD298 800BC698 00000000 */   nop
/* BD29C 800BC69C 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD2A0 800BC6A0 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD2A4 800BC6A4 8DF80000 */  lw         $t8, ($t7)
/* BD2A8 800BC6A8 2F010002 */  sltiu      $at, $t8, 2
/* BD2AC 800BC6AC 1420000C */  bnez       $at, .L800BC6E0
/* BD2B0 800BC6B0 00000000 */   nop
/* BD2B4 800BC6B4 8DF90004 */  lw         $t9, 4($t7)
/* BD2B8 800BC6B8 2F210003 */  sltiu      $at, $t9, 3
/* BD2BC 800BC6BC 14200008 */  bnez       $at, .L800BC6E0
/* BD2C0 800BC6C0 00000000 */   nop
/* BD2C4 800BC6C4 8DE80008 */  lw         $t0, 8($t7)
/* BD2C8 800BC6C8 15000005 */  bnez       $t0, .L800BC6E0
/* BD2CC 800BC6CC 00000000 */   nop
/* BD2D0 800BC6D0 24090001 */  addiu      $t1, $zero, 1
/* BD2D4 800BC6D4 ADE90008 */  sw         $t1, 8($t7)
/* BD2D8 800BC6D8 0C02E3B6 */  jal        func_800B8ED8
/* BD2DC 800BC6DC 24040001 */   addiu     $a0, $zero, 1
.L800BC6E0:
/* BD2E0 800BC6E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD2E4 800BC6E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD2E8 800BC6E8 03E00008 */  jr         $ra
/* BD2EC 800BC6EC 00000000 */   nop

glabel func_800BC6F0
/* BD2F0 800BC6F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD2F4 800BC6F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD2F8 800BC6F8 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD2FC 800BC6FC 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD300 800BC700 24010002 */  addiu      $at, $zero, 2
/* BD304 800BC704 15C10019 */  bne        $t6, $at, .L800BC76C
/* BD308 800BC708 00000000 */   nop
/* BD30C 800BC70C 3C0F8014 */  lui        $t7, %hi(D_80144358)
/* BD310 800BC710 85EF4358 */  lh         $t7, %lo(D_80144358)($t7)
/* BD314 800BC714 11E00008 */  beqz       $t7, .L800BC738
/* BD318 800BC718 3C018014 */   lui       $at, %hi(D_80144358)
/* BD31C 800BC71C A4204358 */  sh         $zero, %lo(D_80144358)($at)
/* BD320 800BC720 3C0142C8 */  lui        $at, 0x42c8
/* BD324 800BC724 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* BD328 800BC728 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* BD32C 800BC72C 44812000 */  mtc1       $at, $f4
/* BD330 800BC730 00000000 */  nop
/* BD334 800BC734 E7040038 */  swc1       $f4, 0x38($t8)
.L800BC738:
/* BD338 800BC738 3C198016 */  lui        $t9, %hi(D_801631F4)
/* BD33C 800BC73C 273931F4 */  addiu      $t9, $t9, %lo(D_801631F4)
/* BD340 800BC740 8F280078 */  lw         $t0, 0x78($t9)
/* BD344 800BC744 2D010002 */  sltiu      $at, $t0, 2
/* BD348 800BC748 14200008 */  bnez       $at, .L800BC76C
/* BD34C 800BC74C 00000000 */   nop
/* BD350 800BC750 8F29007C */  lw         $t1, 0x7c($t9)
/* BD354 800BC754 15200005 */  bnez       $t1, .L800BC76C
/* BD358 800BC758 00000000 */   nop
/* BD35C 800BC75C 240A0001 */  addiu      $t2, $zero, 1
/* BD360 800BC760 AF2A007C */  sw         $t2, 0x7c($t9)
/* BD364 800BC764 0C02E3B6 */  jal        func_800B8ED8
/* BD368 800BC768 24040001 */   addiu     $a0, $zero, 1
.L800BC76C:
/* BD36C 800BC76C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD370 800BC770 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD374 800BC774 03E00008 */  jr         $ra
/* BD378 800BC778 00000000 */   nop

glabel func_800BC77C
/* BD37C 800BC77C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD380 800BC780 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD384 800BC784 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD388 800BC788 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD38C 800BC78C 24010002 */  addiu      $at, $zero, 2
/* BD390 800BC790 15C10010 */  bne        $t6, $at, .L800BC7D4
/* BD394 800BC794 00000000 */   nop
/* BD398 800BC798 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD39C 800BC79C 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD3A0 800BC7A0 8DF80028 */  lw         $t8, 0x28($t7)
/* BD3A4 800BC7A4 1300000B */  beqz       $t8, .L800BC7D4
/* BD3A8 800BC7A8 00000000 */   nop
/* BD3AC 800BC7AC 8DF9002C */  lw         $t9, 0x2c($t7)
/* BD3B0 800BC7B0 17200008 */  bnez       $t9, .L800BC7D4
/* BD3B4 800BC7B4 00000000 */   nop
/* BD3B8 800BC7B8 3C098016 */  lui        $t1, %hi(D_801631F4)
/* BD3BC 800BC7BC ADE00028 */  sw         $zero, 0x28($t7)
/* BD3C0 800BC7C0 252931F4 */  addiu      $t1, $t1, %lo(D_801631F4)
/* BD3C4 800BC7C4 24080001 */  addiu      $t0, $zero, 1
/* BD3C8 800BC7C8 AD28002C */  sw         $t0, 0x2c($t1)
/* BD3CC 800BC7CC 0C02E3B6 */  jal        func_800B8ED8
/* BD3D0 800BC7D0 24040001 */   addiu     $a0, $zero, 1
.L800BC7D4:
/* BD3D4 800BC7D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD3D8 800BC7D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD3DC 800BC7DC 03E00008 */  jr         $ra
/* BD3E0 800BC7E0 00000000 */   nop

glabel func_800BC7E4
/* BD3E4 800BC7E4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BD3E8 800BC7E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD3EC 800BC7EC 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD3F0 800BC7F0 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD3F4 800BC7F4 24010002 */  addiu      $at, $zero, 2
/* BD3F8 800BC7F8 15C100DC */  bne        $t6, $at, .L800BCB6C
/* BD3FC 800BC7FC 00000000 */   nop
/* BD400 800BC800 3C0F8014 */  lui        $t7, %hi(D_80144358)
/* BD404 800BC804 85EF4358 */  lh         $t7, %lo(D_80144358)($t7)
/* BD408 800BC808 11E00008 */  beqz       $t7, .L800BC82C
/* BD40C 800BC80C 3C018014 */   lui       $at, %hi(D_80144358)
/* BD410 800BC810 A4204358 */  sh         $zero, %lo(D_80144358)($at)
/* BD414 800BC814 3C0142C8 */  lui        $at, 0x42c8
/* BD418 800BC818 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* BD41C 800BC81C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* BD420 800BC820 44812000 */  mtc1       $at, $f4
/* BD424 800BC824 00000000 */  nop
/* BD428 800BC828 E7040038 */  swc1       $f4, 0x38($t8)
.L800BC82C:
/* BD42C 800BC82C 3C198016 */  lui        $t9, %hi(D_801631F4)
/* BD430 800BC830 273931F4 */  addiu      $t9, $t9, %lo(D_801631F4)
/* BD434 800BC834 8F280028 */  lw         $t0, 0x28($t9)
/* BD438 800BC838 2D010002 */  sltiu      $at, $t0, 2
/* BD43C 800BC83C 1420000B */  bnez       $at, .L800BC86C
/* BD440 800BC840 00000000 */   nop
/* BD444 800BC844 8F290054 */  lw         $t1, 0x54($t9)
/* BD448 800BC848 15200008 */  bnez       $t1, .L800BC86C
/* BD44C 800BC84C 00000000 */   nop
/* BD450 800BC850 3C0B8016 */  lui        $t3, %hi(D_801631F4)
/* BD454 800BC854 AF200028 */  sw         $zero, 0x28($t9)
/* BD458 800BC858 256B31F4 */  addiu      $t3, $t3, %lo(D_801631F4)
/* BD45C 800BC85C 240A0001 */  addiu      $t2, $zero, 1
/* BD460 800BC860 AD6A0054 */  sw         $t2, 0x54($t3)
/* BD464 800BC864 0C02E3B6 */  jal        func_800B8ED8
/* BD468 800BC868 24040001 */   addiu     $a0, $zero, 1
.L800BC86C:
/* BD46C 800BC86C 3C0C800D */  lui        $t4, %hi(D_800D6300)
/* BD470 800BC870 8D8C6300 */  lw         $t4, %lo(D_800D6300)($t4)
/* BD474 800BC874 24010005 */  addiu      $at, $zero, 5
/* BD478 800BC878 158100BC */  bne        $t4, $at, .L800BCB6C
/* BD47C 800BC87C 00000000 */   nop
/* BD480 800BC880 3C0E8016 */  lui        $t6, %hi(D_8015FB8C)
/* BD484 800BC884 8DCEFB8C */  lw         $t6, %lo(D_8015FB8C)($t6)
/* BD488 800BC888 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* BD48C 800BC88C 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* BD490 800BC890 000E7880 */  sll        $t7, $t6, 2
/* BD494 800BC894 01EE7823 */  subu       $t7, $t7, $t6
/* BD498 800BC898 000F7880 */  sll        $t7, $t7, 2
/* BD49C 800BC89C 01EE7823 */  subu       $t7, $t7, $t6
/* BD4A0 800BC8A0 000F7880 */  sll        $t7, $t7, 2
/* BD4A4 800BC8A4 01EE7821 */  addu       $t7, $t7, $t6
/* BD4A8 800BC8A8 000F7880 */  sll        $t7, $t7, 2
/* BD4AC 800BC8AC 01EE7823 */  subu       $t7, $t7, $t6
/* BD4B0 800BC8B0 000F7880 */  sll        $t7, $t7, 2
/* BD4B4 800BC8B4 01AFC021 */  addu       $t8, $t5, $t7
/* BD4B8 800BC8B8 8F080004 */  lw         $t0, 4($t8)
/* BD4BC 800BC8BC 2401FFFF */  addiu      $at, $zero, -1
/* BD4C0 800BC8C0 110100AA */  beq        $t0, $at, .L800BCB6C
/* BD4C4 800BC8C4 AFA80024 */   sw        $t0, 0x24($sp)
.L800BC8C8:
/* BD4C8 800BC8C8 8FB90024 */  lw         $t9, 0x24($sp)
/* BD4CC 800BC8CC 3C098016 */  lui        $t1, %hi(D_8015FB9C)
/* BD4D0 800BC8D0 8D29FB9C */  lw         $t1, %lo(D_8015FB9C)($t1)
/* BD4D4 800BC8D4 00195080 */  sll        $t2, $t9, 2
/* BD4D8 800BC8D8 01595023 */  subu       $t2, $t2, $t9
/* BD4DC 800BC8DC 000A5080 */  sll        $t2, $t2, 2
/* BD4E0 800BC8E0 01595023 */  subu       $t2, $t2, $t9
/* BD4E4 800BC8E4 000A5080 */  sll        $t2, $t2, 2
/* BD4E8 800BC8E8 01595021 */  addu       $t2, $t2, $t9
/* BD4EC 800BC8EC 000A5080 */  sll        $t2, $t2, 2
/* BD4F0 800BC8F0 01595023 */  subu       $t2, $t2, $t9
/* BD4F4 800BC8F4 000A5080 */  sll        $t2, $t2, 2
/* BD4F8 800BC8F8 012A5821 */  addu       $t3, $t1, $t2
/* BD4FC 800BC8FC 8D6C006C */  lw         $t4, 0x6c($t3)
/* BD500 800BC900 2401001B */  addiu      $at, $zero, 0x1b
/* BD504 800BC904 15810086 */  bne        $t4, $at, .L800BCB20
/* BD508 800BC908 00000000 */   nop
/* BD50C 800BC90C 8D6E0058 */  lw         $t6, 0x58($t3)
/* BD510 800BC910 31CD0004 */  andi       $t5, $t6, 4
/* BD514 800BC914 11A0002D */  beqz       $t5, .L800BC9CC
/* BD518 800BC918 00000000 */   nop
/* BD51C 800BC91C 3C0F8016 */  lui        $t7, %hi(D_8015F46C)
/* BD520 800BC920 8DEFF46C */  lw         $t7, %lo(D_8015F46C)($t7)
/* BD524 800BC924 AFA00020 */  sw         $zero, 0x20($sp)
/* BD528 800BC928 11E00028 */  beqz       $t7, .L800BC9CC
/* BD52C 800BC92C 00000000 */   nop
.L800BC930:
/* BD530 800BC930 8FB80020 */  lw         $t8, 0x20($sp)
/* BD534 800BC934 3C198016 */  lui        $t9, %hi(D_8015F470)
/* BD538 800BC938 2739F470 */  addiu      $t9, $t9, %lo(D_8015F470)
/* BD53C 800BC93C 00184080 */  sll        $t0, $t8, 2
/* BD540 800BC940 01184021 */  addu       $t0, $t0, $t8
/* BD544 800BC944 000840C0 */  sll        $t0, $t0, 3
/* BD548 800BC948 01194821 */  addu       $t1, $t0, $t9
/* BD54C 800BC94C 8D2A000C */  lw         $t2, 0xc($t1)
/* BD550 800BC950 8FAC0024 */  lw         $t4, 0x24($sp)
/* BD554 800BC954 114C0004 */  beq        $t2, $t4, .L800BC968
/* BD558 800BC958 00000000 */   nop
/* BD55C 800BC95C 8D2B0010 */  lw         $t3, 0x10($t1)
/* BD560 800BC960 156C0012 */  bne        $t3, $t4, .L800BC9AC
/* BD564 800BC964 00000000 */   nop
.L800BC968:
/* BD568 800BC968 8FAE0020 */  lw         $t6, 0x20($sp)
/* BD56C 800BC96C 3C0F8016 */  lui        $t7, %hi(D_8015F470)
/* BD570 800BC970 25EFF470 */  addiu      $t7, $t7, %lo(D_8015F470)
/* BD574 800BC974 000E6880 */  sll        $t5, $t6, 2
/* BD578 800BC978 01AE6821 */  addu       $t5, $t5, $t6
/* BD57C 800BC97C 000D68C0 */  sll        $t5, $t5, 3
/* BD580 800BC980 01AFC021 */  addu       $t8, $t5, $t7
/* BD584 800BC984 8F08000C */  lw         $t0, 0xc($t8)
/* BD588 800BC988 11000008 */  beqz       $t0, .L800BC9AC
/* BD58C 800BC98C 00000000 */   nop
/* BD590 800BC990 8F190010 */  lw         $t9, 0x10($t8)
/* BD594 800BC994 13200005 */  beqz       $t9, .L800BC9AC
/* BD598 800BC998 00000000 */   nop
/* BD59C 800BC99C 3C0A8016 */  lui        $t2, %hi(D_8015F46C)
/* BD5A0 800BC9A0 8D4AF46C */  lw         $t2, %lo(D_8015F46C)($t2)
/* BD5A4 800BC9A4 0C02EAA5 */  jal        func_800BAA94
/* BD5A8 800BC9A8 AFAA0020 */   sw        $t2, 0x20($sp)
.L800BC9AC:
/* BD5AC 800BC9AC 8FA90020 */  lw         $t1, 0x20($sp)
/* BD5B0 800BC9B0 3C0C8016 */  lui        $t4, %hi(D_8015F46C)
/* BD5B4 800BC9B4 8D8CF46C */  lw         $t4, %lo(D_8015F46C)($t4)
/* BD5B8 800BC9B8 252B0001 */  addiu      $t3, $t1, 1
/* BD5BC 800BC9BC AFAB0020 */  sw         $t3, 0x20($sp)
/* BD5C0 800BC9C0 016C082B */  sltu       $at, $t3, $t4
/* BD5C4 800BC9C4 1420FFDA */  bnez       $at, .L800BC930
/* BD5C8 800BC9C8 00000000 */   nop
.L800BC9CC:
/* BD5CC 800BC9CC 3C0D8016 */  lui        $t5, %hi(D_8015FB8C)
/* BD5D0 800BC9D0 8DADFB8C */  lw         $t5, %lo(D_8015FB8C)($t5)
/* BD5D4 800BC9D4 3C0E8016 */  lui        $t6, %hi(D_8015FB9C)
/* BD5D8 800BC9D8 8DCEFB9C */  lw         $t6, %lo(D_8015FB9C)($t6)
/* BD5DC 800BC9DC 000D7880 */  sll        $t7, $t5, 2
/* BD5E0 800BC9E0 01ED7823 */  subu       $t7, $t7, $t5
/* BD5E4 800BC9E4 000F7880 */  sll        $t7, $t7, 2
/* BD5E8 800BC9E8 01ED7823 */  subu       $t7, $t7, $t5
/* BD5EC 800BC9EC 000F7880 */  sll        $t7, $t7, 2
/* BD5F0 800BC9F0 01ED7821 */  addu       $t7, $t7, $t5
/* BD5F4 800BC9F4 000F7880 */  sll        $t7, $t7, 2
/* BD5F8 800BC9F8 01ED7823 */  subu       $t7, $t7, $t5
/* BD5FC 800BC9FC 000F7880 */  sll        $t7, $t7, 2
/* BD600 800BCA00 01CF4021 */  addu       $t0, $t6, $t7
/* BD604 800BCA04 8D180004 */  lw         $t8, 4($t0)
/* BD608 800BCA08 2401FFFF */  addiu      $at, $zero, -1
/* BD60C 800BCA0C 13010044 */  beq        $t8, $at, .L800BCB20
/* BD610 800BCA10 AFB80020 */   sw        $t8, 0x20($sp)
.L800BCA14:
/* BD614 800BCA14 8FAA0020 */  lw         $t2, 0x20($sp)
/* BD618 800BCA18 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* BD61C 800BCA1C 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* BD620 800BCA20 000A4880 */  sll        $t1, $t2, 2
/* BD624 800BCA24 012A4823 */  subu       $t1, $t1, $t2
/* BD628 800BCA28 00094880 */  sll        $t1, $t1, 2
/* BD62C 800BCA2C 012A4823 */  subu       $t1, $t1, $t2
/* BD630 800BCA30 00094880 */  sll        $t1, $t1, 2
/* BD634 800BCA34 012A4821 */  addu       $t1, $t1, $t2
/* BD638 800BCA38 00094880 */  sll        $t1, $t1, 2
/* BD63C 800BCA3C 012A4823 */  subu       $t1, $t1, $t2
/* BD640 800BCA40 00094880 */  sll        $t1, $t1, 2
/* BD644 800BCA44 03295821 */  addu       $t3, $t9, $t1
/* BD648 800BCA48 8D6C006C */  lw         $t4, 0x6c($t3)
/* BD64C 800BCA4C 24010129 */  addiu      $at, $zero, 0x129
/* BD650 800BCA50 15810020 */  bne        $t4, $at, .L800BCAD4
/* BD654 800BCA54 00000000 */   nop
/* BD658 800BCA58 8FAD0024 */  lw         $t5, 0x24($sp)
/* BD65C 800BCA5C C57000E8 */  lwc1       $f16, 0xe8($t3)
/* BD660 800BCA60 C56800E0 */  lwc1       $f8, 0xe0($t3)
/* BD664 800BCA64 000D7080 */  sll        $t6, $t5, 2
/* BD668 800BCA68 01CD7023 */  subu       $t6, $t6, $t5
/* BD66C 800BCA6C 000E7080 */  sll        $t6, $t6, 2
/* BD670 800BCA70 01CD7023 */  subu       $t6, $t6, $t5
/* BD674 800BCA74 000E7080 */  sll        $t6, $t6, 2
/* BD678 800BCA78 01CD7021 */  addu       $t6, $t6, $t5
/* BD67C 800BCA7C 000E7080 */  sll        $t6, $t6, 2
/* BD680 800BCA80 01CD7023 */  subu       $t6, $t6, $t5
/* BD684 800BCA84 000E7080 */  sll        $t6, $t6, 2
/* BD688 800BCA88 032E7821 */  addu       $t7, $t9, $t6
/* BD68C 800BCA8C C5EA00E8 */  lwc1       $f10, 0xe8($t7)
/* BD690 800BCA90 C5E600E0 */  lwc1       $f6, 0xe0($t7)
/* BD694 800BCA94 44807000 */  mtc1       $zero, $f14
/* BD698 800BCA98 46105481 */  sub.s      $f18, $f10, $f16
/* BD69C 800BCA9C 46083301 */  sub.s      $f12, $f6, $f8
/* BD6A0 800BCAA0 44069000 */  mfc1       $a2, $f18
/* BD6A4 800BCAA4 0C016916 */  jal        func_8005A458
/* BD6A8 800BCAA8 00000000 */   nop
/* BD6AC 800BCAAC E7A00018 */  swc1       $f0, 0x18($sp)
/* BD6B0 800BCAB0 3C014348 */  lui        $at, 0x4348
/* BD6B4 800BCAB4 44813000 */  mtc1       $at, $f6
/* BD6B8 800BCAB8 C7A40018 */  lwc1       $f4, 0x18($sp)
/* BD6BC 800BCABC 4606203C */  c.lt.s     $f4, $f6
/* BD6C0 800BCAC0 00000000 */  nop
/* BD6C4 800BCAC4 45000003 */  bc1f       .L800BCAD4
/* BD6C8 800BCAC8 00000000 */   nop
/* BD6CC 800BCACC 0C02EAA5 */  jal        func_800BAA94
/* BD6D0 800BCAD0 00000000 */   nop
.L800BCAD4:
/* BD6D4 800BCAD4 8FB80020 */  lw         $t8, 0x20($sp)
/* BD6D8 800BCAD8 3C088016 */  lui        $t0, %hi(D_8015FB9C)
/* BD6DC 800BCADC 8D08FB9C */  lw         $t0, %lo(D_8015FB9C)($t0)
/* BD6E0 800BCAE0 00185080 */  sll        $t2, $t8, 2
/* BD6E4 800BCAE4 01585023 */  subu       $t2, $t2, $t8
/* BD6E8 800BCAE8 000A5080 */  sll        $t2, $t2, 2
/* BD6EC 800BCAEC 01585023 */  subu       $t2, $t2, $t8
/* BD6F0 800BCAF0 000A5080 */  sll        $t2, $t2, 2
/* BD6F4 800BCAF4 01585021 */  addu       $t2, $t2, $t8
/* BD6F8 800BCAF8 000A5080 */  sll        $t2, $t2, 2
/* BD6FC 800BCAFC 01585023 */  subu       $t2, $t2, $t8
/* BD700 800BCB00 000A5080 */  sll        $t2, $t2, 2
/* BD704 800BCB04 010A4821 */  addu       $t1, $t0, $t2
/* BD708 800BCB08 8D2C0004 */  lw         $t4, 4($t1)
/* BD70C 800BCB0C 2401FFFF */  addiu      $at, $zero, -1
/* BD710 800BCB10 AFAC0020 */  sw         $t4, 0x20($sp)
/* BD714 800BCB14 8FAD0020 */  lw         $t5, 0x20($sp)
/* BD718 800BCB18 15A1FFBE */  bne        $t5, $at, .L800BCA14
/* BD71C 800BCB1C 00000000 */   nop
.L800BCB20:
/* BD720 800BCB20 8FAE0024 */  lw         $t6, 0x24($sp)
/* BD724 800BCB24 3C198016 */  lui        $t9, %hi(D_8015FB9C)
/* BD728 800BCB28 8F39FB9C */  lw         $t9, %lo(D_8015FB9C)($t9)
/* BD72C 800BCB2C 000E7880 */  sll        $t7, $t6, 2
/* BD730 800BCB30 01EE7823 */  subu       $t7, $t7, $t6
/* BD734 800BCB34 000F7880 */  sll        $t7, $t7, 2
/* BD738 800BCB38 01EE7823 */  subu       $t7, $t7, $t6
/* BD73C 800BCB3C 000F7880 */  sll        $t7, $t7, 2
/* BD740 800BCB40 01EE7821 */  addu       $t7, $t7, $t6
/* BD744 800BCB44 000F7880 */  sll        $t7, $t7, 2
/* BD748 800BCB48 01EE7823 */  subu       $t7, $t7, $t6
/* BD74C 800BCB4C 000F7880 */  sll        $t7, $t7, 2
/* BD750 800BCB50 032F5821 */  addu       $t3, $t9, $t7
/* BD754 800BCB54 8D780004 */  lw         $t8, 4($t3)
/* BD758 800BCB58 2401FFFF */  addiu      $at, $zero, -1
/* BD75C 800BCB5C AFB80024 */  sw         $t8, 0x24($sp)
/* BD760 800BCB60 8FA80024 */  lw         $t0, 0x24($sp)
/* BD764 800BCB64 1501FF58 */  bne        $t0, $at, .L800BC8C8
/* BD768 800BCB68 00000000 */   nop
.L800BCB6C:
/* BD76C 800BCB6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD770 800BCB70 27BD0028 */  addiu      $sp, $sp, 0x28
/* BD774 800BCB74 03E00008 */  jr         $ra
/* BD778 800BCB78 00000000 */   nop

glabel func_800BCB7C
/* BD77C 800BCB7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD780 800BCB80 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD784 800BCB84 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD788 800BCB88 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD78C 800BCB8C 24010002 */  addiu      $at, $zero, 2
/* BD790 800BCB90 15C1000E */  bne        $t6, $at, .L800BCBCC
/* BD794 800BCB94 00000000 */   nop
/* BD798 800BCB98 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD79C 800BCB9C 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD7A0 800BCBA0 8DF80000 */  lw         $t8, ($t7)
/* BD7A4 800BCBA4 2F010004 */  sltiu      $at, $t8, 4
/* BD7A8 800BCBA8 14200008 */  bnez       $at, .L800BCBCC
/* BD7AC 800BCBAC 00000000 */   nop
/* BD7B0 800BCBB0 8DF90004 */  lw         $t9, 4($t7)
/* BD7B4 800BCBB4 17200005 */  bnez       $t9, .L800BCBCC
/* BD7B8 800BCBB8 00000000 */   nop
/* BD7BC 800BCBBC 24080001 */  addiu      $t0, $zero, 1
/* BD7C0 800BCBC0 ADE80004 */  sw         $t0, 4($t7)
/* BD7C4 800BCBC4 0C02E3B6 */  jal        func_800B8ED8
/* BD7C8 800BCBC8 24040001 */   addiu     $a0, $zero, 1
.L800BCBCC:
/* BD7CC 800BCBCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD7D0 800BCBD0 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD7D4 800BCBD4 03E00008 */  jr         $ra
/* BD7D8 800BCBD8 00000000 */   nop

glabel func_800BCBDC
/* BD7DC 800BCBDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD7E0 800BCBE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD7E4 800BCBE4 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD7E8 800BCBE8 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD7EC 800BCBEC 24010002 */  addiu      $at, $zero, 2
/* BD7F0 800BCBF0 15C10011 */  bne        $t6, $at, .L800BCC38
/* BD7F4 800BCBF4 00000000 */   nop
/* BD7F8 800BCBF8 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD7FC 800BCBFC 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD800 800BCC00 8DF80028 */  lw         $t8, 0x28($t7)
/* BD804 800BCC04 2F010003 */  sltiu      $at, $t8, 3
/* BD808 800BCC08 1420000B */  bnez       $at, .L800BCC38
/* BD80C 800BCC0C 00000000 */   nop
/* BD810 800BCC10 8DF9002C */  lw         $t9, 0x2c($t7)
/* BD814 800BCC14 17200008 */  bnez       $t9, .L800BCC38
/* BD818 800BCC18 00000000 */   nop
/* BD81C 800BCC1C 3C098016 */  lui        $t1, %hi(D_801631F4)
/* BD820 800BCC20 ADE00028 */  sw         $zero, 0x28($t7)
/* BD824 800BCC24 252931F4 */  addiu      $t1, $t1, %lo(D_801631F4)
/* BD828 800BCC28 24080001 */  addiu      $t0, $zero, 1
/* BD82C 800BCC2C AD28002C */  sw         $t0, 0x2c($t1)
/* BD830 800BCC30 0C02E3B6 */  jal        func_800B8ED8
/* BD834 800BCC34 24040001 */   addiu     $a0, $zero, 1
.L800BCC38:
/* BD838 800BCC38 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD83C 800BCC3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD840 800BCC40 03E00008 */  jr         $ra
/* BD844 800BCC44 00000000 */   nop

glabel func_800BCC48
/* BD848 800BCC48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD84C 800BCC4C AFBF0014 */  sw         $ra, 0x14($sp)
/* BD850 800BCC50 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD854 800BCC54 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD858 800BCC58 24010002 */  addiu      $at, $zero, 2
/* BD85C 800BCC5C 15C1000E */  bne        $t6, $at, .L800BCC98
/* BD860 800BCC60 00000000 */   nop
/* BD864 800BCC64 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD868 800BCC68 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD86C 800BCC6C 8DF80050 */  lw         $t8, 0x50($t7)
/* BD870 800BCC70 2F010003 */  sltiu      $at, $t8, 3
/* BD874 800BCC74 14200008 */  bnez       $at, .L800BCC98
/* BD878 800BCC78 00000000 */   nop
/* BD87C 800BCC7C 8DF90054 */  lw         $t9, 0x54($t7)
/* BD880 800BCC80 17200005 */  bnez       $t9, .L800BCC98
/* BD884 800BCC84 00000000 */   nop
/* BD888 800BCC88 24080001 */  addiu      $t0, $zero, 1
/* BD88C 800BCC8C ADE80054 */  sw         $t0, 0x54($t7)
/* BD890 800BCC90 0C02E3B6 */  jal        func_800B8ED8
/* BD894 800BCC94 24040001 */   addiu     $a0, $zero, 1
.L800BCC98:
/* BD898 800BCC98 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD89C 800BCC9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD8A0 800BCCA0 03E00008 */  jr         $ra
/* BD8A4 800BCCA4 00000000 */   nop

glabel func_800BCCA8
/* BD8A8 800BCCA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD8AC 800BCCAC AFBF0014 */  sw         $ra, 0x14($sp)
/* BD8B0 800BCCB0 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD8B4 800BCCB4 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD8B8 800BCCB8 24010002 */  addiu      $at, $zero, 2
/* BD8BC 800BCCBC 15C10011 */  bne        $t6, $at, .L800BCD04
/* BD8C0 800BCCC0 00000000 */   nop
/* BD8C4 800BCCC4 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BD8C8 800BCCC8 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BD8CC 800BCCCC 8DF80028 */  lw         $t8, 0x28($t7)
/* BD8D0 800BCCD0 2F010005 */  sltiu      $at, $t8, 5
/* BD8D4 800BCCD4 1420000B */  bnez       $at, .L800BCD04
/* BD8D8 800BCCD8 00000000 */   nop
/* BD8DC 800BCCDC 8DF90030 */  lw         $t9, 0x30($t7)
/* BD8E0 800BCCE0 17200008 */  bnez       $t9, .L800BCD04
/* BD8E4 800BCCE4 00000000 */   nop
/* BD8E8 800BCCE8 3C098016 */  lui        $t1, %hi(D_801631F4)
/* BD8EC 800BCCEC ADE00028 */  sw         $zero, 0x28($t7)
/* BD8F0 800BCCF0 252931F4 */  addiu      $t1, $t1, %lo(D_801631F4)
/* BD8F4 800BCCF4 24080001 */  addiu      $t0, $zero, 1
/* BD8F8 800BCCF8 AD280030 */  sw         $t0, 0x30($t1)
/* BD8FC 800BCCFC 0C02E3B6 */  jal        func_800B8ED8
/* BD900 800BCD00 24040001 */   addiu     $a0, $zero, 1
.L800BCD04:
/* BD904 800BCD04 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD908 800BCD08 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD90C 800BCD0C 03E00008 */  jr         $ra
/* BD910 800BCD10 00000000 */   nop

glabel func_800BCD14
/* BD914 800BCD14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD918 800BCD18 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD91C 800BCD1C 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD920 800BCD20 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD924 800BCD24 24010002 */  addiu      $at, $zero, 2
/* BD928 800BCD28 15C1001C */  bne        $t6, $at, .L800BCD9C
/* BD92C 800BCD2C 00000000 */   nop
/* BD930 800BCD30 3C0F8014 */  lui        $t7, %hi(D_80144358)
/* BD934 800BCD34 85EF4358 */  lh         $t7, %lo(D_80144358)($t7)
/* BD938 800BCD38 11E00008 */  beqz       $t7, .L800BCD5C
/* BD93C 800BCD3C 3C018014 */   lui       $at, %hi(D_80144358)
/* BD940 800BCD40 A4204358 */  sh         $zero, %lo(D_80144358)($at)
/* BD944 800BCD44 3C0142C8 */  lui        $at, 0x42c8
/* BD948 800BCD48 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* BD94C 800BCD4C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* BD950 800BCD50 44812000 */  mtc1       $at, $f4
/* BD954 800BCD54 00000000 */  nop
/* BD958 800BCD58 E7040038 */  swc1       $f4, 0x38($t8)
.L800BCD5C:
/* BD95C 800BCD5C 3C198016 */  lui        $t9, %hi(D_801631F4)
/* BD960 800BCD60 273931F4 */  addiu      $t9, $t9, %lo(D_801631F4)
/* BD964 800BCD64 8F280078 */  lw         $t0, 0x78($t9)
/* BD968 800BCD68 2D010002 */  sltiu      $at, $t0, 2
/* BD96C 800BCD6C 1420000B */  bnez       $at, .L800BCD9C
/* BD970 800BCD70 00000000 */   nop
/* BD974 800BCD74 8F290004 */  lw         $t1, 4($t9)
/* BD978 800BCD78 15200008 */  bnez       $t1, .L800BCD9C
/* BD97C 800BCD7C 00000000 */   nop
/* BD980 800BCD80 3C0B8016 */  lui        $t3, %hi(D_801631F4)
/* BD984 800BCD84 AF200078 */  sw         $zero, 0x78($t9)
/* BD988 800BCD88 256B31F4 */  addiu      $t3, $t3, %lo(D_801631F4)
/* BD98C 800BCD8C 240A0001 */  addiu      $t2, $zero, 1
/* BD990 800BCD90 AD6A0004 */  sw         $t2, 4($t3)
/* BD994 800BCD94 0C02E3B6 */  jal        func_800B8ED8
/* BD998 800BCD98 24040001 */   addiu     $a0, $zero, 1
.L800BCD9C:
/* BD99C 800BCD9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD9A0 800BCDA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD9A4 800BCDA4 03E00008 */  jr         $ra
/* BD9A8 800BCDA8 00000000 */   nop

glabel func_800BCDAC
/* BD9AC 800BCDAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD9B0 800BCDB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD9B4 800BCDB4 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BD9B8 800BCDB8 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BD9BC 800BCDBC 24010002 */  addiu      $at, $zero, 2
/* BD9C0 800BCDC0 15C10025 */  bne        $t6, $at, .L800BCE58
/* BD9C4 800BCDC4 00000000 */   nop
/* BD9C8 800BCDC8 3C0F8014 */  lui        $t7, %hi(D_80144358)
/* BD9CC 800BCDCC 85EF4358 */  lh         $t7, %lo(D_80144358)($t7)
/* BD9D0 800BCDD0 11E00008 */  beqz       $t7, .L800BCDF4
/* BD9D4 800BCDD4 3C018014 */   lui       $at, %hi(D_80144358)
/* BD9D8 800BCDD8 A4204358 */  sh         $zero, %lo(D_80144358)($at)
/* BD9DC 800BCDDC 3C0142C8 */  lui        $at, 0x42c8
/* BD9E0 800BCDE0 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* BD9E4 800BCDE4 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* BD9E8 800BCDE8 44812000 */  mtc1       $at, $f4
/* BD9EC 800BCDEC 00000000 */  nop
/* BD9F0 800BCDF0 E7040038 */  swc1       $f4, 0x38($t8)
.L800BCDF4:
/* BD9F4 800BCDF4 3C198016 */  lui        $t9, %hi(D_801631F4)
/* BD9F8 800BCDF8 273931F4 */  addiu      $t9, $t9, %lo(D_801631F4)
/* BD9FC 800BCDFC 8F280078 */  lw         $t0, 0x78($t9)
/* BDA00 800BCE00 2D010002 */  sltiu      $at, $t0, 2
/* BDA04 800BCE04 10200005 */  beqz       $at, .L800BCE1C
/* BDA08 800BCE08 00000000 */   nop
/* BDA0C 800BCE0C 8F290028 */  lw         $t1, 0x28($t9)
/* BDA10 800BCE10 2D210002 */  sltiu      $at, $t1, 2
/* BDA14 800BCE14 14200010 */  bnez       $at, .L800BCE58
/* BDA18 800BCE18 00000000 */   nop
.L800BCE1C:
/* BDA1C 800BCE1C 3C0A8016 */  lui        $t2, %hi(D_801631F4)
/* BDA20 800BCE20 254A31F4 */  addiu      $t2, $t2, %lo(D_801631F4)
/* BDA24 800BCE24 8D4B0030 */  lw         $t3, 0x30($t2)
/* BDA28 800BCE28 1560000B */  bnez       $t3, .L800BCE58
/* BDA2C 800BCE2C 00000000 */   nop
/* BDA30 800BCE30 3C0C8016 */  lui        $t4, %hi(D_801631F4)
/* BDA34 800BCE34 AD400078 */  sw         $zero, 0x78($t2)
/* BDA38 800BCE38 258C31F4 */  addiu      $t4, $t4, %lo(D_801631F4)
/* BDA3C 800BCE3C 3C0E8016 */  lui        $t6, %hi(D_801631F4)
/* BDA40 800BCE40 AD800028 */  sw         $zero, 0x28($t4)
/* BDA44 800BCE44 25CE31F4 */  addiu      $t6, $t6, %lo(D_801631F4)
/* BDA48 800BCE48 240D0001 */  addiu      $t5, $zero, 1
/* BDA4C 800BCE4C ADCD0030 */  sw         $t5, 0x30($t6)
/* BDA50 800BCE50 0C02E3B6 */  jal        func_800B8ED8
/* BDA54 800BCE54 24040001 */   addiu     $a0, $zero, 1
.L800BCE58:
/* BDA58 800BCE58 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDA5C 800BCE5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDA60 800BCE60 03E00008 */  jr         $ra
/* BDA64 800BCE64 00000000 */   nop

glabel func_800BCE68
/* BDA68 800BCE68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDA6C 800BCE6C AFBF0014 */  sw         $ra, 0x14($sp)
/* BDA70 800BCE70 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BDA74 800BCE74 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BDA78 800BCE78 24010002 */  addiu      $at, $zero, 2
/* BDA7C 800BCE7C 15C10025 */  bne        $t6, $at, .L800BCF14
/* BDA80 800BCE80 00000000 */   nop
/* BDA84 800BCE84 3C0F8014 */  lui        $t7, %hi(D_80144358)
/* BDA88 800BCE88 85EF4358 */  lh         $t7, %lo(D_80144358)($t7)
/* BDA8C 800BCE8C 11E00008 */  beqz       $t7, .L800BCEB0
/* BDA90 800BCE90 3C018014 */   lui       $at, %hi(D_80144358)
/* BDA94 800BCE94 A4204358 */  sh         $zero, %lo(D_80144358)($at)
/* BDA98 800BCE98 3C0142C8 */  lui        $at, 0x42c8
/* BDA9C 800BCE9C 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* BDAA0 800BCEA0 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* BDAA4 800BCEA4 44812000 */  mtc1       $at, $f4
/* BDAA8 800BCEA8 00000000 */  nop
/* BDAAC 800BCEAC E7040038 */  swc1       $f4, 0x38($t8)
.L800BCEB0:
/* BDAB0 800BCEB0 3C198016 */  lui        $t9, %hi(D_801631F4)
/* BDAB4 800BCEB4 273931F4 */  addiu      $t9, $t9, %lo(D_801631F4)
/* BDAB8 800BCEB8 8F280078 */  lw         $t0, 0x78($t9)
/* BDABC 800BCEBC 2D010003 */  sltiu      $at, $t0, 3
/* BDAC0 800BCEC0 10200005 */  beqz       $at, .L800BCED8
/* BDAC4 800BCEC4 00000000 */   nop
/* BDAC8 800BCEC8 8F290028 */  lw         $t1, 0x28($t9)
/* BDACC 800BCECC 2D210003 */  sltiu      $at, $t1, 3
/* BDAD0 800BCED0 14200010 */  bnez       $at, .L800BCF14
/* BDAD4 800BCED4 00000000 */   nop
.L800BCED8:
/* BDAD8 800BCED8 3C0A8016 */  lui        $t2, %hi(D_801631F4)
/* BDADC 800BCEDC 254A31F4 */  addiu      $t2, $t2, %lo(D_801631F4)
/* BDAE0 800BCEE0 8D4B002C */  lw         $t3, 0x2c($t2)
/* BDAE4 800BCEE4 1560000B */  bnez       $t3, .L800BCF14
/* BDAE8 800BCEE8 00000000 */   nop
/* BDAEC 800BCEEC 3C0C8016 */  lui        $t4, %hi(D_801631F4)
/* BDAF0 800BCEF0 AD400078 */  sw         $zero, 0x78($t2)
/* BDAF4 800BCEF4 258C31F4 */  addiu      $t4, $t4, %lo(D_801631F4)
/* BDAF8 800BCEF8 3C0E8016 */  lui        $t6, %hi(D_801631F4)
/* BDAFC 800BCEFC AD800028 */  sw         $zero, 0x28($t4)
/* BDB00 800BCF00 25CE31F4 */  addiu      $t6, $t6, %lo(D_801631F4)
/* BDB04 800BCF04 240D0001 */  addiu      $t5, $zero, 1
/* BDB08 800BCF08 ADCD002C */  sw         $t5, 0x2c($t6)
/* BDB0C 800BCF0C 0C02E3B6 */  jal        func_800B8ED8
/* BDB10 800BCF10 24040001 */   addiu     $a0, $zero, 1
.L800BCF14:
/* BDB14 800BCF14 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDB18 800BCF18 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDB1C 800BCF1C 03E00008 */  jr         $ra
/* BDB20 800BCF20 00000000 */   nop

glabel func_800BCF24
/* BDB24 800BCF24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDB28 800BCF28 AFBF0014 */  sw         $ra, 0x14($sp)
/* BDB2C 800BCF2C 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BDB30 800BCF30 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BDB34 800BCF34 24010002 */  addiu      $at, $zero, 2
/* BDB38 800BCF38 15C10009 */  bne        $t6, $at, .L800BCF60
/* BDB3C 800BCF3C 00000000 */   nop
/* BDB40 800BCF40 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BDB44 800BCF44 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BDB48 800BCF48 8DF80050 */  lw         $t8, 0x50($t7)
/* BDB4C 800BCF4C 2F010004 */  sltiu      $at, $t8, 4
/* BDB50 800BCF50 14200003 */  bnez       $at, .L800BCF60
/* BDB54 800BCF54 00000000 */   nop
/* BDB58 800BCF58 0C02E3B6 */  jal        func_800B8ED8
/* BDB5C 800BCF5C 24040001 */   addiu     $a0, $zero, 1
.L800BCF60:
/* BDB60 800BCF60 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDB64 800BCF64 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDB68 800BCF68 03E00008 */  jr         $ra
/* BDB6C 800BCF6C 00000000 */   nop

glabel func_800BCF70
/* BDB70 800BCF70 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BDB74 800BCF74 AFBF001C */  sw         $ra, 0x1c($sp)
/* BDB78 800BCF78 AFB00018 */  sw         $s0, 0x18($sp)
/* BDB7C 800BCF7C 3C108014 */  lui        $s0, %hi(D_80144334)
/* BDB80 800BCF80 86104334 */  lh         $s0, %lo(D_80144334)($s0)
/* BDB84 800BCF84 24010001 */  addiu      $at, $zero, 1
/* BDB88 800BCF88 12010005 */  beq        $s0, $at, .L800BCFA0
/* BDB8C 800BCF8C 24010002 */   addiu     $at, $zero, 2
/* BDB90 800BCF90 12010007 */  beq        $s0, $at, .L800BCFB0
/* BDB94 800BCF94 00000000 */   nop
/* BDB98 800BCF98 10000011 */  b          .L800BCFE0
/* BDB9C 800BCF9C 00000000 */   nop
.L800BCFA0:
/* BDBA0 800BCFA0 0C02EFC6 */  jal        func_800BBF18
/* BDBA4 800BCFA4 00000000 */   nop
/* BDBA8 800BCFA8 1000000D */  b          .L800BCFE0
/* BDBAC 800BCFAC 00000000 */   nop
.L800BCFB0:
/* BDBB0 800BCFB0 3C0E8016 */  lui        $t6, %hi(D_801631F4)
/* BDBB4 800BCFB4 25CE31F4 */  addiu      $t6, $t6, %lo(D_801631F4)
/* BDBB8 800BCFB8 8DCF0000 */  lw         $t7, ($t6)
/* BDBBC 800BCFBC 11E00008 */  beqz       $t7, .L800BCFE0
/* BDBC0 800BCFC0 00000000 */   nop
/* BDBC4 800BCFC4 8DD80004 */  lw         $t8, 4($t6)
/* BDBC8 800BCFC8 17000005 */  bnez       $t8, .L800BCFE0
/* BDBCC 800BCFCC 00000000 */   nop
/* BDBD0 800BCFD0 24190001 */  addiu      $t9, $zero, 1
/* BDBD4 800BCFD4 ADD90004 */  sw         $t9, 4($t6)
/* BDBD8 800BCFD8 0C02E3B6 */  jal        func_800B8ED8
/* BDBDC 800BCFDC 24040001 */   addiu     $a0, $zero, 1
.L800BCFE0:
/* BDBE0 800BCFE0 8FBF001C */  lw         $ra, 0x1c($sp)
/* BDBE4 800BCFE4 8FB00018 */  lw         $s0, 0x18($sp)
/* BDBE8 800BCFE8 27BD0028 */  addiu      $sp, $sp, 0x28
/* BDBEC 800BCFEC 03E00008 */  jr         $ra
/* BDBF0 800BCFF0 00000000 */   nop

glabel func_800BCFF4
/* BDBF4 800BCFF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDBF8 800BCFF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BDBFC 800BCFFC 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BDC00 800BD000 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BDC04 800BD004 24010002 */  addiu      $at, $zero, 2
/* BDC08 800BD008 15C1001C */  bne        $t6, $at, .L800BD07C
/* BDC0C 800BD00C 00000000 */   nop
/* BDC10 800BD010 3C0F8014 */  lui        $t7, %hi(D_80144358)
/* BDC14 800BD014 85EF4358 */  lh         $t7, %lo(D_80144358)($t7)
/* BDC18 800BD018 11E00008 */  beqz       $t7, .L800BD03C
/* BDC1C 800BD01C 3C018014 */   lui       $at, %hi(D_80144358)
/* BDC20 800BD020 A4204358 */  sh         $zero, %lo(D_80144358)($at)
/* BDC24 800BD024 3C0142C8 */  lui        $at, 0x42c8
/* BDC28 800BD028 3C188016 */  lui        $t8, %hi(D_8015FB9C)
/* BDC2C 800BD02C 8F18FB9C */  lw         $t8, %lo(D_8015FB9C)($t8)
/* BDC30 800BD030 44812000 */  mtc1       $at, $f4
/* BDC34 800BD034 00000000 */  nop
/* BDC38 800BD038 E7040038 */  swc1       $f4, 0x38($t8)
.L800BD03C:
/* BDC3C 800BD03C 3C198016 */  lui        $t9, %hi(D_801631F4)
/* BDC40 800BD040 273931F4 */  addiu      $t9, $t9, %lo(D_801631F4)
/* BDC44 800BD044 8F280078 */  lw         $t0, 0x78($t9)
/* BDC48 800BD048 2D010002 */  sltiu      $at, $t0, 2
/* BDC4C 800BD04C 1420000B */  bnez       $at, .L800BD07C
/* BDC50 800BD050 00000000 */   nop
/* BDC54 800BD054 8F290008 */  lw         $t1, 8($t9)
/* BDC58 800BD058 15200008 */  bnez       $t1, .L800BD07C
/* BDC5C 800BD05C 00000000 */   nop
/* BDC60 800BD060 3C0B8016 */  lui        $t3, %hi(D_801631F4)
/* BDC64 800BD064 AF200078 */  sw         $zero, 0x78($t9)
/* BDC68 800BD068 256B31F4 */  addiu      $t3, $t3, %lo(D_801631F4)
/* BDC6C 800BD06C 240A0001 */  addiu      $t2, $zero, 1
/* BDC70 800BD070 AD6A0008 */  sw         $t2, 8($t3)
/* BDC74 800BD074 0C02E3B6 */  jal        func_800B8ED8
/* BDC78 800BD078 24040001 */   addiu     $a0, $zero, 1
.L800BD07C:
/* BDC7C 800BD07C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDC80 800BD080 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDC84 800BD084 03E00008 */  jr         $ra
/* BDC88 800BD088 00000000 */   nop

glabel func_800BD08C
/* BDC8C 800BD08C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDC90 800BD090 AFBF0014 */  sw         $ra, 0x14($sp)
/* BDC94 800BD094 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BDC98 800BD098 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BDC9C 800BD09C 24010002 */  addiu      $at, $zero, 2
/* BDCA0 800BD0A0 15C10009 */  bne        $t6, $at, .L800BD0C8
/* BDCA4 800BD0A4 00000000 */   nop
/* BDCA8 800BD0A8 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BDCAC 800BD0AC 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BDCB0 800BD0B0 8DF80050 */  lw         $t8, 0x50($t7)
/* BDCB4 800BD0B4 2F010006 */  sltiu      $at, $t8, 6
/* BDCB8 800BD0B8 14200003 */  bnez       $at, .L800BD0C8
/* BDCBC 800BD0BC 00000000 */   nop
/* BDCC0 800BD0C0 0C02E3B6 */  jal        func_800B8ED8
/* BDCC4 800BD0C4 24040001 */   addiu     $a0, $zero, 1
.L800BD0C8:
/* BDCC8 800BD0C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDCCC 800BD0CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDCD0 800BD0D0 03E00008 */  jr         $ra
/* BDCD4 800BD0D4 00000000 */   nop

glabel func_800BD0D8
/* BDCD8 800BD0D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDCDC 800BD0DC AFBF0014 */  sw         $ra, 0x14($sp)
/* BDCE0 800BD0E0 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BDCE4 800BD0E4 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BDCE8 800BD0E8 24010002 */  addiu      $at, $zero, 2
/* BDCEC 800BD0EC 15C1000D */  bne        $t6, $at, .L800BD124
/* BDCF0 800BD0F0 00000000 */   nop
/* BDCF4 800BD0F4 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BDCF8 800BD0F8 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BDCFC 800BD0FC 8DF80028 */  lw         $t8, 0x28($t7)
/* BDD00 800BD100 13000008 */  beqz       $t8, .L800BD124
/* BDD04 800BD104 00000000 */   nop
/* BDD08 800BD108 8DF9002C */  lw         $t9, 0x2c($t7)
/* BDD0C 800BD10C 17200005 */  bnez       $t9, .L800BD124
/* BDD10 800BD110 00000000 */   nop
/* BDD14 800BD114 24080001 */  addiu      $t0, $zero, 1
/* BDD18 800BD118 ADE8002C */  sw         $t0, 0x2c($t7)
/* BDD1C 800BD11C 0C02E3B6 */  jal        func_800B8ED8
/* BDD20 800BD120 24040001 */   addiu     $a0, $zero, 1
.L800BD124:
/* BDD24 800BD124 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDD28 800BD128 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDD2C 800BD12C 03E00008 */  jr         $ra
/* BDD30 800BD130 00000000 */   nop

glabel func_800BD134
/* BDD34 800BD134 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDD38 800BD138 AFBF0014 */  sw         $ra, 0x14($sp)
/* BDD3C 800BD13C 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BDD40 800BD140 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BDD44 800BD144 24010002 */  addiu      $at, $zero, 2
/* BDD48 800BD148 15C10010 */  bne        $t6, $at, .L800BD18C
/* BDD4C 800BD14C 00000000 */   nop
/* BDD50 800BD150 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BDD54 800BD154 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BDD58 800BD158 8DF80028 */  lw         $t8, 0x28($t7)
/* BDD5C 800BD15C 1300000B */  beqz       $t8, .L800BD18C
/* BDD60 800BD160 00000000 */   nop
/* BDD64 800BD164 8DF90004 */  lw         $t9, 4($t7)
/* BDD68 800BD168 17200008 */  bnez       $t9, .L800BD18C
/* BDD6C 800BD16C 00000000 */   nop
/* BDD70 800BD170 3C098016 */  lui        $t1, %hi(D_801631F4)
/* BDD74 800BD174 ADE00028 */  sw         $zero, 0x28($t7)
/* BDD78 800BD178 252931F4 */  addiu      $t1, $t1, %lo(D_801631F4)
/* BDD7C 800BD17C 24080001 */  addiu      $t0, $zero, 1
/* BDD80 800BD180 AD280004 */  sw         $t0, 4($t1)
/* BDD84 800BD184 0C02E3B6 */  jal        func_800B8ED8
/* BDD88 800BD188 24040001 */   addiu     $a0, $zero, 1
.L800BD18C:
/* BDD8C 800BD18C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDD90 800BD190 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDD94 800BD194 03E00008 */  jr         $ra
/* BDD98 800BD198 00000000 */   nop

glabel func_800BD19C
/* BDD9C 800BD19C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDDA0 800BD1A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BDDA4 800BD1A4 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BDDA8 800BD1A8 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BDDAC 800BD1AC 24010002 */  addiu      $at, $zero, 2
/* BDDB0 800BD1B0 15C10011 */  bne        $t6, $at, .L800BD1F8
/* BDDB4 800BD1B4 00000000 */   nop
/* BDDB8 800BD1B8 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BDDBC 800BD1BC 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BDDC0 800BD1C0 8DF80094 */  lw         $t8, 0x94($t7)
/* BDDC4 800BD1C4 2F010002 */  sltiu      $at, $t8, 2
/* BDDC8 800BD1C8 1420000B */  bnez       $at, .L800BD1F8
/* BDDCC 800BD1CC 00000000 */   nop
/* BDDD0 800BD1D0 8DF9002C */  lw         $t9, 0x2c($t7)
/* BDDD4 800BD1D4 17200008 */  bnez       $t9, .L800BD1F8
/* BDDD8 800BD1D8 00000000 */   nop
/* BDDDC 800BD1DC 3C098016 */  lui        $t1, %hi(D_801631F4)
/* BDDE0 800BD1E0 ADE00094 */  sw         $zero, 0x94($t7)
/* BDDE4 800BD1E4 252931F4 */  addiu      $t1, $t1, %lo(D_801631F4)
/* BDDE8 800BD1E8 24080001 */  addiu      $t0, $zero, 1
/* BDDEC 800BD1EC AD28002C */  sw         $t0, 0x2c($t1)
/* BDDF0 800BD1F0 0C02E3B6 */  jal        func_800B8ED8
/* BDDF4 800BD1F4 24040001 */   addiu     $a0, $zero, 1
.L800BD1F8:
/* BDDF8 800BD1F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDDFC 800BD1FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDE00 800BD200 03E00008 */  jr         $ra
/* BDE04 800BD204 00000000 */   nop

glabel func_800BD208
/* BDE08 800BD208 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDE0C 800BD20C AFBF0014 */  sw         $ra, 0x14($sp)
/* BDE10 800BD210 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BDE14 800BD214 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BDE18 800BD218 24010002 */  addiu      $at, $zero, 2
/* BDE1C 800BD21C 15C10009 */  bne        $t6, $at, .L800BD244
/* BDE20 800BD220 00000000 */   nop
/* BDE24 800BD224 3C0F8016 */  lui        $t7, %hi(D_801631F4)
/* BDE28 800BD228 25EF31F4 */  addiu      $t7, $t7, %lo(D_801631F4)
/* BDE2C 800BD22C 8DF80050 */  lw         $t8, 0x50($t7)
/* BDE30 800BD230 2F010005 */  sltiu      $at, $t8, 5
/* BDE34 800BD234 14200003 */  bnez       $at, .L800BD244
/* BDE38 800BD238 00000000 */   nop
/* BDE3C 800BD23C 0C02E3B6 */  jal        func_800B8ED8
/* BDE40 800BD240 24040001 */   addiu     $a0, $zero, 1
.L800BD244:
/* BDE44 800BD244 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDE48 800BD248 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDE4C 800BD24C 03E00008 */  jr         $ra
/* BDE50 800BD250 00000000 */   nop

glabel func_800BD254
/* BDE54 800BD254 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDE58 800BD258 AFBF0014 */  sw         $ra, 0x14($sp)
/* BDE5C 800BD25C 3C0E8016 */  lui        $t6, %hi(D_801631F4)
/* BDE60 800BD260 25CE31F4 */  addiu      $t6, $t6, %lo(D_801631F4)
/* BDE64 800BD264 8DCF00A0 */  lw         $t7, 0xa0($t6)
/* BDE68 800BD268 11E00008 */  beqz       $t7, .L800BD28C
/* BDE6C 800BD26C 00000000 */   nop
/* BDE70 800BD270 8DD800A4 */  lw         $t8, 0xa4($t6)
/* BDE74 800BD274 17000005 */  bnez       $t8, .L800BD28C
/* BDE78 800BD278 00000000 */   nop
/* BDE7C 800BD27C 24190001 */  addiu      $t9, $zero, 1
/* BDE80 800BD280 ADD900A4 */  sw         $t9, 0xa4($t6)
/* BDE84 800BD284 0C02E3B6 */  jal        func_800B8ED8
/* BDE88 800BD288 24040001 */   addiu     $a0, $zero, 1
.L800BD28C:
/* BDE8C 800BD28C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDE90 800BD290 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDE94 800BD294 03E00008 */  jr         $ra
/* BDE98 800BD298 00000000 */   nop

glabel func_800BD29C
/* BDE9C 800BD29C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BDEA0 800BD2A0 AFBF001C */  sw         $ra, 0x1c($sp)
/* BDEA4 800BD2A4 3C0E8014 */  lui        $t6, %hi(D_80144334)
/* BDEA8 800BD2A8 85CE4334 */  lh         $t6, %lo(D_80144334)($t6)
/* BDEAC 800BD2AC 24010002 */  addiu      $at, $zero, 2
/* BDEB0 800BD2B0 15C10045 */  bne        $t6, $at, .L800BD3C8
/* BDEB4 800BD2B4 00000000 */   nop
/* BDEB8 800BD2B8 3C0F8014 */  lui        $t7, %hi(D_801442D4)
/* BDEBC 800BD2BC 8DEF42D4 */  lw         $t7, %lo(D_801442D4)($t7)
/* BDEC0 800BD2C0 2DE10022 */  sltiu      $at, $t7, 0x22
/* BDEC4 800BD2C4 1020003C */  beqz       $at, .L800BD3B8
/* BDEC8 800BD2C8 00000000 */   nop
/* BDECC 800BD2CC 000F7880 */  sll        $t7, $t7, 2
/* BDED0 800BD2D0 3C01800E */  lui        $at, %hi(D_800DF78C)
/* BDED4 800BD2D4 002F0821 */  addu       $at, $at, $t7
/* BDED8 800BD2D8 8C2FF78C */  lw         $t7, %lo(D_800DF78C)($at)
/* BDEDC 800BD2DC 01E00008 */  jr         $t7
/* BDEE0 800BD2E0 00000000 */   nop
/* BDEE4 800BD2E4 3C188016 */  lui        $t8, %hi(D_801631F4)
/* BDEE8 800BD2E8 271831F4 */  addiu      $t8, $t8, %lo(D_801631F4)
/* BDEEC 800BD2EC 8F190000 */  lw         $t9, ($t8)
/* BDEF0 800BD2F0 17200018 */  bnez       $t9, .L800BD354
/* BDEF4 800BD2F4 00000000 */   nop
/* BDEF8 800BD2F8 24080001 */  addiu      $t0, $zero, 1
/* BDEFC 800BD2FC 3C098018 */  lui        $t1, %hi(D_8017A028)
/* BDF00 800BD300 AF080000 */  sw         $t0, ($t8)
/* BDF04 800BD304 2529A028 */  addiu      $t1, $t1, %lo(D_8017A028)
/* BDF08 800BD308 8D25009C */  lw         $a1, 0x9c($t1)
/* BDF0C 800BD30C 3C068018 */  lui        $a2, %hi(D_8017A2C8)
/* BDF10 800BD310 84C6A2C8 */  lh         $a2, %lo(D_8017A2C8)($a2)
/* BDF14 800BD314 AFA00010 */  sw         $zero, 0x10($sp)
/* BDF18 800BD318 24040027 */  addiu      $a0, $zero, 0x27
/* BDF1C 800BD31C 0C0009DF */  jal        func_8000277C
/* BDF20 800BD320 24070040 */   addiu     $a3, $zero, 0x40
/* BDF24 800BD324 3C0A8016 */  lui        $t2, %hi(D_8015FF80)
/* BDF28 800BD328 8D4AFF80 */  lw         $t2, %lo(D_8015FF80)($t2)
/* BDF2C 800BD32C 24040086 */  addiu      $a0, $zero, 0x86
/* BDF30 800BD330 24050001 */  addiu      $a1, $zero, 1
/* BDF34 800BD334 2406000C */  addiu      $a2, $zero, 0xc
/* BDF38 800BD338 24070052 */  addiu      $a3, $zero, 0x52
/* BDF3C 800BD33C 0C00B011 */  jal        func_8002C044
/* BDF40 800BD340 AFAA0010 */   sw        $t2, 0x10($sp)
/* BDF44 800BD344 0C02DA99 */  jal        func_800B6A64
/* BDF48 800BD348 2404000C */   addiu     $a0, $zero, 0xc
/* BDF4C 800BD34C 10000021 */  b          .L800BD3D4
/* BDF50 800BD350 00000000 */   nop
.L800BD354:
/* BDF54 800BD354 3C0C8016 */  lui        $t4, %hi(D_801631F4)
/* BDF58 800BD358 258C31F4 */  addiu      $t4, $t4, %lo(D_801631F4)
/* BDF5C 800BD35C 240B0001 */  addiu      $t3, $zero, 1
/* BDF60 800BD360 AD8B0004 */  sw         $t3, 4($t4)
/* BDF64 800BD364 240DFFC0 */  addiu      $t5, $zero, -0x40
/* BDF68 800BD368 3C018016 */  lui        $at, %hi(D_8015ED70)
/* BDF6C 800BD36C 10000019 */  b          .L800BD3D4
/* BDF70 800BD370 AC2DED70 */   sw        $t5, %lo(D_8015ED70)($at)
/* BDF74 800BD374 3C0E8016 */  lui        $t6, %hi(D_801631F4)
/* BDF78 800BD378 25CE31F4 */  addiu      $t6, $t6, %lo(D_801631F4)
/* BDF7C 800BD37C 8DCF002C */  lw         $t7, 0x2c($t6)
/* BDF80 800BD380 15E00014 */  bnez       $t7, .L800BD3D4
/* BDF84 800BD384 00000000 */   nop
/* BDF88 800BD388 0C02EAA5 */  jal        func_800BAA94
/* BDF8C 800BD38C 00000000 */   nop
/* BDF90 800BD390 10000010 */  b          .L800BD3D4
/* BDF94 800BD394 00000000 */   nop
/* BDF98 800BD398 0C02E3B6 */  jal        func_800B8ED8
/* BDF9C 800BD39C 24040001 */   addiu     $a0, $zero, 1
/* BDFA0 800BD3A0 1000000C */  b          .L800BD3D4
/* BDFA4 800BD3A4 00000000 */   nop
/* BDFA8 800BD3A8 0C02EAA5 */  jal        func_800BAA94
/* BDFAC 800BD3AC 00000000 */   nop
/* BDFB0 800BD3B0 10000008 */  b          .L800BD3D4
/* BDFB4 800BD3B4 00000000 */   nop
.L800BD3B8:
/* BDFB8 800BD3B8 2419FFC0 */  addiu      $t9, $zero, -0x40
/* BDFBC 800BD3BC 3C018016 */  lui        $at, %hi(D_8015ED70)
/* BDFC0 800BD3C0 10000004 */  b          .L800BD3D4
/* BDFC4 800BD3C4 AC39ED70 */   sw        $t9, %lo(D_8015ED70)($at)
.L800BD3C8:
/* BDFC8 800BD3C8 2408FFC0 */  addiu      $t0, $zero, -0x40
/* BDFCC 800BD3CC 3C018016 */  lui        $at, %hi(D_8015ED70)
/* BDFD0 800BD3D0 AC28ED70 */  sw         $t0, %lo(D_8015ED70)($at)
.L800BD3D4:
/* BDFD4 800BD3D4 8FBF001C */  lw         $ra, 0x1c($sp)
/* BDFD8 800BD3D8 27BD0020 */  addiu      $sp, $sp, 0x20
/* BDFDC 800BD3DC 03E00008 */  jr         $ra
/* BDFE0 800BD3E0 00000000 */   nop

glabel func_800BD3E4
/* BDFE4 800BD3E4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* BDFE8 800BD3E8 AFBF001C */  sw         $ra, 0x1c($sp)
/* BDFEC 800BD3EC AFB00018 */  sw         $s0, 0x18($sp)
/* BDFF0 800BD3F0 3C0F800E */  lui        $t7, %hi(D_800D9FDC)
/* BDFF4 800BD3F4 25EF9FDC */  addiu      $t7, $t7, %lo(D_800D9FDC)
/* BDFF8 800BD3F8 25E80024 */  addiu      $t0, $t7, 0x24
/* BDFFC 800BD3FC 27AE004C */  addiu      $t6, $sp, 0x4c
.L800BD400:
/* BE000 800BD400 8DF90000 */  lw         $t9, ($t7)
/* BE004 800BD404 25EF000C */  addiu      $t7, $t7, 0xc
/* BE008 800BD408 25CE000C */  addiu      $t6, $t6, 0xc
/* BE00C 800BD40C ADD9FFF4 */  sw         $t9, -0xc($t6)
/* BE010 800BD410 8DF8FFF8 */  lw         $t8, -8($t7)
/* BE014 800BD414 ADD8FFF8 */  sw         $t8, -8($t6)
/* BE018 800BD418 8DF9FFFC */  lw         $t9, -4($t7)
/* BE01C 800BD41C 15E8FFF8 */  bne        $t7, $t0, .L800BD400
/* BE020 800BD420 ADD9FFFC */   sw        $t9, -4($t6)
/* BE024 800BD424 3C0A800E */  lui        $t2, %hi(D_800DA000)
/* BE028 800BD428 254AA000 */  addiu      $t2, $t2, %lo(D_800DA000)
/* BE02C 800BD42C 254D0024 */  addiu      $t5, $t2, 0x24
/* BE030 800BD430 27A90028 */  addiu      $t1, $sp, 0x28
.L800BD434:
/* BE034 800BD434 8D4C0000 */  lw         $t4, ($t2)
/* BE038 800BD438 254A000C */  addiu      $t2, $t2, 0xc
/* BE03C 800BD43C 2529000C */  addiu      $t1, $t1, 0xc
/* BE040 800BD440 AD2CFFF4 */  sw         $t4, -0xc($t1)
/* BE044 800BD444 8D4BFFF8 */  lw         $t3, -8($t2)
/* BE048 800BD448 AD2BFFF8 */  sw         $t3, -8($t1)
/* BE04C 800BD44C 8D4CFFFC */  lw         $t4, -4($t2)
/* BE050 800BD450 154DFFF8 */  bne        $t2, $t5, .L800BD434
/* BE054 800BD454 AD2CFFFC */   sw        $t4, -4($t1)
/* BE058 800BD458 3C108016 */  lui        $s0, %hi(D_8015F464)
/* BE05C 800BD45C 8E10F464 */  lw         $s0, %lo(D_8015F464)($s0)
/* BE060 800BD460 24010010 */  addiu      $at, $zero, 0x10
/* BE064 800BD464 12010005 */  beq        $s0, $at, .L800BD47C
/* BE068 800BD468 24010013 */   addiu     $at, $zero, 0x13
/* BE06C 800BD46C 1201001D */  beq        $s0, $at, .L800BD4E4
/* BE070 800BD470 00000000 */   nop
/* BE074 800BD474 10000033 */  b          .L800BD544
/* BE078 800BD478 00000000 */   nop
.L800BD47C:
/* BE07C 800BD47C 3C088014 */  lui        $t0, %hi(D_801442D4)
/* BE080 800BD480 8D0842D4 */  lw         $t0, %lo(D_801442D4)($t0)
/* BE084 800BD484 2401000C */  addiu      $at, $zero, 0xc
/* BE088 800BD488 15010009 */  bne        $t0, $at, .L800BD4B0
/* BE08C 800BD48C 00000000 */   nop
/* BE090 800BD490 0C007066 */  jal        func_8001C198
/* BE094 800BD494 27A4004C */   addiu     $a0, $sp, 0x4c
/* BE098 800BD498 3C0142C8 */  lui        $at, 0x42c8
/* BE09C 800BD49C 3C0F8016 */  lui        $t7, %hi(D_8015FB9C)
/* BE0A0 800BD4A0 8DEFFB9C */  lw         $t7, %lo(D_8015FB9C)($t7)
/* BE0A4 800BD4A4 44812000 */  mtc1       $at, $f4
/* BE0A8 800BD4A8 10000026 */  b          .L800BD544
/* BE0AC 800BD4AC E5E40038 */   swc1      $f4, 0x38($t7)
.L800BD4B0:
/* BE0B0 800BD4B0 3C0E800D */  lui        $t6, %hi(D_800D6A94)
/* BE0B4 800BD4B4 8DCE6A94 */  lw         $t6, %lo(D_800D6A94)($t6)
/* BE0B8 800BD4B8 11C00022 */  beqz       $t6, .L800BD544
/* BE0BC 800BD4BC 00000000 */   nop
/* BE0C0 800BD4C0 3C188014 */  lui        $t8, %hi(D_801442D4)
/* BE0C4 800BD4C4 8F1842D4 */  lw         $t8, %lo(D_801442D4)($t8)
/* BE0C8 800BD4C8 2B01000C */  slti       $at, $t8, 0xc
/* BE0CC 800BD4CC 1420001D */  bnez       $at, .L800BD544
/* BE0D0 800BD4D0 00000000 */   nop
/* BE0D4 800BD4D4 0C007066 */  jal        func_8001C198
/* BE0D8 800BD4D8 27A4004C */   addiu     $a0, $sp, 0x4c
/* BE0DC 800BD4DC 10000019 */  b          .L800BD544
/* BE0E0 800BD4E0 00000000 */   nop
.L800BD4E4:
/* BE0E4 800BD4E4 3C198014 */  lui        $t9, %hi(D_801442D4)
/* BE0E8 800BD4E8 8F3942D4 */  lw         $t9, %lo(D_801442D4)($t9)
/* BE0EC 800BD4EC 24010019 */  addiu      $at, $zero, 0x19
/* BE0F0 800BD4F0 17210009 */  bne        $t9, $at, .L800BD518
/* BE0F4 800BD4F4 00000000 */   nop
/* BE0F8 800BD4F8 0C007066 */  jal        func_8001C198
/* BE0FC 800BD4FC 27A40028 */   addiu     $a0, $sp, 0x28
/* BE100 800BD500 3C0142C8 */  lui        $at, 0x42c8
/* BE104 800BD504 3C0D8016 */  lui        $t5, %hi(D_8015FB9C)
/* BE108 800BD508 8DADFB9C */  lw         $t5, %lo(D_8015FB9C)($t5)
/* BE10C 800BD50C 44813000 */  mtc1       $at, $f6
/* BE110 800BD510 1000000C */  b          .L800BD544
/* BE114 800BD514 E5A60038 */   swc1      $f6, 0x38($t5)
.L800BD518:
/* BE118 800BD518 3C0A800D */  lui        $t2, %hi(D_800D6A94)
/* BE11C 800BD51C 8D4A6A94 */  lw         $t2, %lo(D_800D6A94)($t2)
/* BE120 800BD520 11400008 */  beqz       $t2, .L800BD544
/* BE124 800BD524 00000000 */   nop
/* BE128 800BD528 3C098014 */  lui        $t1, %hi(D_801442D4)
/* BE12C 800BD52C 8D2942D4 */  lw         $t1, %lo(D_801442D4)($t1)
/* BE130 800BD530 29210019 */  slti       $at, $t1, 0x19
/* BE134 800BD534 14200003 */  bnez       $at, .L800BD544
/* BE138 800BD538 00000000 */   nop
/* BE13C 800BD53C 0C007066 */  jal        func_8001C198
/* BE140 800BD540 27A40028 */   addiu     $a0, $sp, 0x28
.L800BD544:
/* BE144 800BD544 8FBF001C */  lw         $ra, 0x1c($sp)
/* BE148 800BD548 8FB00018 */  lw         $s0, 0x18($sp)
/* BE14C 800BD54C 27BD0070 */  addiu      $sp, $sp, 0x70
/* BE150 800BD550 03E00008 */  jr         $ra
/* BE154 800BD554 00000000 */   nop
/* BE158 800BD558 00000000 */  nop
/* BE15C 800BD55C 00000000 */  nop
