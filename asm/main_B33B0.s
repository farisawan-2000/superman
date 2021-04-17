.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B27B0
/* B33B0 800B27B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B33B4 800B27B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B33B8 800B27B8 AFB00018 */  sw         $s0, 0x18($sp)
/* B33BC 800B27BC 0C02D424 */  jal        func_800B5090
/* B33C0 800B27C0 00000000 */   nop
/* B33C4 800B27C4 00408025 */  or         $s0, $v0, $zero
/* B33C8 800B27C8 8E0E0004 */  lw         $t6, 4($s0)
/* B33CC 800B27CC 2401FFFF */  addiu      $at, $zero, -1
/* B33D0 800B27D0 11C10013 */  beq        $t6, $at, .L800B2820
/* B33D4 800B27D4 00000000 */   nop
.L800B27D8:
/* B33D8 800B27D8 8E0F0004 */  lw         $t7, 4($s0)
/* B33DC 800B27DC 15E0000B */  bnez       $t7, .L800B280C
/* B33E0 800B27E0 00000000 */   nop
/* B33E4 800B27E4 8E180118 */  lw         $t8, 0x118($s0)
/* B33E8 800B27E8 3C01FFFF */  lui        $at, 0xffff
/* B33EC 800B27EC 342100FE */  ori        $at, $at, 0xfe
/* B33F0 800B27F0 0301C824 */  and        $t9, $t8, $at
/* B33F4 800B27F4 AE190118 */  sw         $t9, 0x118($s0)
/* B33F8 800B27F8 8E080118 */  lw         $t0, 0x118($s0)
/* B33FC 800B27FC 35096C01 */  ori        $t1, $t0, 0x6c01
/* B3400 800B2800 AE090118 */  sw         $t1, 0x118($s0)
/* B3404 800B2804 10000006 */  b          .L800B2820
/* B3408 800B2808 00000000 */   nop
.L800B280C:
/* B340C 800B280C 8E10000C */  lw         $s0, 0xc($s0)
/* B3410 800B2810 8E0A0004 */  lw         $t2, 4($s0)
/* B3414 800B2814 2401FFFF */  addiu      $at, $zero, -1
/* B3418 800B2818 1541FFEF */  bne        $t2, $at, .L800B27D8
/* B341C 800B281C 00000000 */   nop
.L800B2820:
/* B3420 800B2820 10000001 */  b          .L800B2828
/* B3424 800B2824 00000000 */   nop
.L800B2828:
/* B3428 800B2828 8FBF001C */  lw         $ra, 0x1c($sp)
/* B342C 800B282C 8FB00018 */  lw         $s0, 0x18($sp)
/* B3430 800B2830 27BD0028 */  addiu      $sp, $sp, 0x28
/* B3434 800B2834 03E00008 */  jr         $ra
/* B3438 800B2838 00000000 */   nop

glabel func_800B283C
/* B343C 800B283C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B3440 800B2840 AFBF001C */  sw         $ra, 0x1c($sp)
/* B3444 800B2844 AFA40028 */  sw         $a0, 0x28($sp)
/* B3448 800B2848 AFB00018 */  sw         $s0, 0x18($sp)
/* B344C 800B284C 0C02D424 */  jal        func_800B5090
/* B3450 800B2850 00000000 */   nop
/* B3454 800B2854 00408025 */  or         $s0, $v0, $zero
/* B3458 800B2858 8FAE0028 */  lw         $t6, 0x28($sp)
/* B345C 800B285C 1DC00003 */  bgtz       $t6, .L800B286C
/* B3460 800B2860 00000000 */   nop
/* B3464 800B2864 10000014 */  b          .L800B28B8
/* B3468 800B2868 00001025 */   or        $v0, $zero, $zero
.L800B286C:
/* B346C 800B286C 8E0F0004 */  lw         $t7, 4($s0)
/* B3470 800B2870 2401FFFF */  addiu      $at, $zero, -1
/* B3474 800B2874 11E1000C */  beq        $t7, $at, .L800B28A8
/* B3478 800B2878 00000000 */   nop
.L800B287C:
/* B347C 800B287C 8E180014 */  lw         $t8, 0x14($s0)
/* B3480 800B2880 8FB90028 */  lw         $t9, 0x28($sp)
/* B3484 800B2884 17190003 */  bne        $t8, $t9, .L800B2894
/* B3488 800B2888 00000000 */   nop
/* B348C 800B288C 1000000A */  b          .L800B28B8
/* B3490 800B2890 02001025 */   or        $v0, $s0, $zero
.L800B2894:
/* B3494 800B2894 8E10000C */  lw         $s0, 0xc($s0)
/* B3498 800B2898 8E080004 */  lw         $t0, 4($s0)
/* B349C 800B289C 2401FFFF */  addiu      $at, $zero, -1
/* B34A0 800B28A0 1501FFF6 */  bne        $t0, $at, .L800B287C
/* B34A4 800B28A4 00000000 */   nop
.L800B28A8:
/* B34A8 800B28A8 10000003 */  b          .L800B28B8
/* B34AC 800B28AC 00001025 */   or        $v0, $zero, $zero
/* B34B0 800B28B0 10000001 */  b          .L800B28B8
/* B34B4 800B28B4 00000000 */   nop
.L800B28B8:
/* B34B8 800B28B8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B34BC 800B28BC 8FB00018 */  lw         $s0, 0x18($sp)
/* B34C0 800B28C0 27BD0028 */  addiu      $sp, $sp, 0x28
/* B34C4 800B28C4 03E00008 */  jr         $ra
/* B34C8 800B28C8 00000000 */   nop

glabel func_800B28CC
/* B34CC 800B28CC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B34D0 800B28D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* B34D4 800B28D4 AFA40028 */  sw         $a0, 0x28($sp)
/* B34D8 800B28D8 AFB10018 */  sw         $s1, 0x18($sp)
/* B34DC 800B28DC AFB00014 */  sw         $s0, 0x14($sp)
/* B34E0 800B28E0 00008025 */  or         $s0, $zero, $zero
/* B34E4 800B28E4 0C02D424 */  jal        func_800B5090
/* B34E8 800B28E8 00000000 */   nop
/* B34EC 800B28EC 00408825 */  or         $s1, $v0, $zero
/* B34F0 800B28F0 8FAE0028 */  lw         $t6, 0x28($sp)
/* B34F4 800B28F4 11C00026 */  beqz       $t6, .L800B2990
/* B34F8 800B28F8 00000000 */   nop
/* B34FC 800B28FC 8E2F0004 */  lw         $t7, 4($s1)
/* B3500 800B2900 2401FFFF */  addiu      $at, $zero, -1
/* B3504 800B2904 11E1000C */  beq        $t7, $at, .L800B2938
/* B3508 800B2908 00000000 */   nop
.L800B290C:
/* B350C 800B290C 8E380014 */  lw         $t8, 0x14($s1)
/* B3510 800B2910 8FB90028 */  lw         $t9, 0x28($sp)
/* B3514 800B2914 17190003 */  bne        $t8, $t9, .L800B2924
/* B3518 800B2918 00000000 */   nop
/* B351C 800B291C 10000006 */  b          .L800B2938
/* B3520 800B2920 00000000 */   nop
.L800B2924:
/* B3524 800B2924 8E31000C */  lw         $s1, 0xc($s1)
/* B3528 800B2928 8E280004 */  lw         $t0, 4($s1)
/* B352C 800B292C 2401FFFF */  addiu      $at, $zero, -1
/* B3530 800B2930 1501FFF6 */  bne        $t0, $at, .L800B290C
/* B3534 800B2934 00000000 */   nop
.L800B2938:
/* B3538 800B2938 8E290004 */  lw         $t1, 4($s1)
/* B353C 800B293C 2401FFFF */  addiu      $at, $zero, -1
/* B3540 800B2940 15210003 */  bne        $t1, $at, .L800B2950
/* B3544 800B2944 00000000 */   nop
/* B3548 800B2948 1000002C */  b          .L800B29FC
/* B354C 800B294C 00001025 */   or        $v0, $zero, $zero
.L800B2950:
/* B3550 800B2950 8E2A0004 */  lw         $t2, 4($s1)
/* B3554 800B2954 1940000C */  blez       $t2, .L800B2988
/* B3558 800B2958 00000000 */   nop
/* B355C 800B295C 8E2B0004 */  lw         $t3, 4($s1)
/* B3560 800B2960 29610080 */  slti       $at, $t3, 0x80
/* B3564 800B2964 10200008 */  beqz       $at, .L800B2988
/* B3568 800B2968 00000000 */   nop
/* B356C 800B296C 0C02CCC8 */  jal        func_800B3320
/* B3570 800B2970 02202025 */   or        $a0, $s1, $zero
/* B3574 800B2974 962C0010 */  lhu        $t4, 0x10($s1)
/* B3578 800B2978 24010001 */  addiu      $at, $zero, 1
/* B357C 800B297C 11810001 */  beq        $t4, $at, .L800B2984
/* B3580 800B2980 00000000 */   nop
.L800B2984:
/* B3584 800B2984 8FB00028 */  lw         $s0, 0x28($sp)
.L800B2988:
/* B3588 800B2988 10000018 */  b          .L800B29EC
/* B358C 800B298C 00000000 */   nop
.L800B2990:
/* B3590 800B2990 8E2D0004 */  lw         $t5, 4($s1)
/* B3594 800B2994 2401FFFF */  addiu      $at, $zero, -1
/* B3598 800B2998 11A10014 */  beq        $t5, $at, .L800B29EC
/* B359C 800B299C 00000000 */   nop
.L800B29A0:
/* B35A0 800B29A0 8E2E0004 */  lw         $t6, 4($s1)
/* B35A4 800B29A4 19C0000C */  blez       $t6, .L800B29D8
/* B35A8 800B29A8 00000000 */   nop
/* B35AC 800B29AC 8E2F0004 */  lw         $t7, 4($s1)
/* B35B0 800B29B0 29E10080 */  slti       $at, $t7, 0x80
/* B35B4 800B29B4 10200008 */  beqz       $at, .L800B29D8
/* B35B8 800B29B8 00000000 */   nop
/* B35BC 800B29BC 0C02CCC8 */  jal        func_800B3320
/* B35C0 800B29C0 02202025 */   or        $a0, $s1, $zero
/* B35C4 800B29C4 96380010 */  lhu        $t8, 0x10($s1)
/* B35C8 800B29C8 24010001 */  addiu      $at, $zero, 1
/* B35CC 800B29CC 13010001 */  beq        $t8, $at, .L800B29D4
/* B35D0 800B29D0 00000000 */   nop
.L800B29D4:
/* B35D4 800B29D4 2410FFFF */  addiu      $s0, $zero, -1
.L800B29D8:
/* B35D8 800B29D8 8E31000C */  lw         $s1, 0xc($s1)
/* B35DC 800B29DC 8E390004 */  lw         $t9, 4($s1)
/* B35E0 800B29E0 2401FFFF */  addiu      $at, $zero, -1
/* B35E4 800B29E4 1721FFEE */  bne        $t9, $at, .L800B29A0
/* B35E8 800B29E8 00000000 */   nop
.L800B29EC:
/* B35EC 800B29EC 10000003 */  b          .L800B29FC
/* B35F0 800B29F0 02001025 */   or        $v0, $s0, $zero
/* B35F4 800B29F4 10000001 */  b          .L800B29FC
/* B35F8 800B29F8 00000000 */   nop
.L800B29FC:
/* B35FC 800B29FC 8FBF001C */  lw         $ra, 0x1c($sp)
/* B3600 800B2A00 8FB00014 */  lw         $s0, 0x14($sp)
/* B3604 800B2A04 8FB10018 */  lw         $s1, 0x18($sp)
/* B3608 800B2A08 03E00008 */  jr         $ra
/* B360C 800B2A0C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800B2A10
/* B3610 800B2A10 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B3614 800B2A14 AFBF001C */  sw         $ra, 0x1c($sp)
/* B3618 800B2A18 AFA40030 */  sw         $a0, 0x30($sp)
/* B361C 800B2A1C AFB10018 */  sw         $s1, 0x18($sp)
/* B3620 800B2A20 AFB00014 */  sw         $s0, 0x14($sp)
/* B3624 800B2A24 8FB00030 */  lw         $s0, 0x30($sp)
/* B3628 800B2A28 3C0E801A */  lui        $t6, %hi(D_801A4330)
/* B362C 800B2A2C 25CE4330 */  addiu      $t6, $t6, %lo(D_801A4330)
/* B3630 800B2A30 AFAE0028 */  sw         $t6, 0x28($sp)
/* B3634 800B2A34 8E0F000C */  lw         $t7, 0xc($s0)
/* B3638 800B2A38 2401FFFF */  addiu      $at, $zero, -1
/* B363C 800B2A3C 15E10005 */  bne        $t7, $at, .L800B2A54
/* B3640 800B2A40 00000000 */   nop
/* B3644 800B2A44 8FB90028 */  lw         $t9, 0x28($sp)
/* B3648 800B2A48 241803EA */  addiu      $t8, $zero, 0x3ea
/* B364C 800B2A4C 10000004 */  b          .L800B2A60
/* B3650 800B2A50 AF38000C */   sw        $t8, 0xc($t9)
.L800B2A54:
/* B3654 800B2A54 8E08000C */  lw         $t0, 0xc($s0)
/* B3658 800B2A58 8FA90028 */  lw         $t1, 0x28($sp)
/* B365C 800B2A5C AD28000C */  sw         $t0, 0xc($t1)
.L800B2A60:
/* B3660 800B2A60 8FAA0030 */  lw         $t2, 0x30($sp)
/* B3664 800B2A64 24010001 */  addiu      $at, $zero, 1
/* B3668 800B2A68 914B0009 */  lbu        $t3, 9($t2)
/* B366C 800B2A6C 15610008 */  bne        $t3, $at, .L800B2A90
/* B3670 800B2A70 00000000 */   nop
/* B3674 800B2A74 8FAD0028 */  lw         $t5, 0x28($sp)
/* B3678 800B2A78 240C0001 */  addiu      $t4, $zero, 1
/* B367C 800B2A7C A5AC0010 */  sh         $t4, 0x10($t5)
/* B3680 800B2A80 8FAF0028 */  lw         $t7, 0x28($sp)
/* B3684 800B2A84 240E03E8 */  addiu      $t6, $zero, 0x3e8
/* B3688 800B2A88 1000001C */  b          .L800B2AFC
/* B368C 800B2A8C ADEE0014 */   sw        $t6, 0x14($t7)
.L800B2A90:
/* B3690 800B2A90 0C02D424 */  jal        func_800B5090
/* B3694 800B2A94 00000000 */   nop
/* B3698 800B2A98 00408825 */  or         $s1, $v0, $zero
/* B369C 800B2A9C 8FB80028 */  lw         $t8, 0x28($sp)
/* B36A0 800B2AA0 A7000010 */  sh         $zero, 0x10($t8)
/* B36A4 800B2AA4 8E390004 */  lw         $t9, 4($s1)
/* B36A8 800B2AA8 2401FFFF */  addiu      $at, $zero, -1
/* B36AC 800B2AAC 13210013 */  beq        $t9, $at, .L800B2AFC
/* B36B0 800B2AB0 00000000 */   nop
.L800B2AB4:
/* B36B4 800B2AB4 8E280014 */  lw         $t0, 0x14($s1)
/* B36B8 800B2AB8 1100000B */  beqz       $t0, .L800B2AE8
/* B36BC 800B2ABC 00000000 */   nop
/* B36C0 800B2AC0 8FAA0028 */  lw         $t2, 0x28($sp)
/* B36C4 800B2AC4 8E290014 */  lw         $t1, 0x14($s1)
/* B36C8 800B2AC8 954B0010 */  lhu        $t3, 0x10($t2)
/* B36CC 800B2ACC 000B6080 */  sll        $t4, $t3, 2
/* B36D0 800B2AD0 014C6821 */  addu       $t5, $t2, $t4
/* B36D4 800B2AD4 ADA90014 */  sw         $t1, 0x14($t5)
/* B36D8 800B2AD8 8FAE0028 */  lw         $t6, 0x28($sp)
/* B36DC 800B2ADC 95CF0010 */  lhu        $t7, 0x10($t6)
/* B36E0 800B2AE0 25F80001 */  addiu      $t8, $t7, 1
/* B36E4 800B2AE4 A5D80010 */  sh         $t8, 0x10($t6)
.L800B2AE8:
/* B36E8 800B2AE8 8E31000C */  lw         $s1, 0xc($s1)
/* B36EC 800B2AEC 8E390004 */  lw         $t9, 4($s1)
/* B36F0 800B2AF0 2401FFFF */  addiu      $at, $zero, -1
/* B36F4 800B2AF4 1721FFEF */  bne        $t9, $at, .L800B2AB4
/* B36F8 800B2AF8 00000000 */   nop
.L800B2AFC:
/* B36FC 800B2AFC 92080004 */  lbu        $t0, 4($s0)
/* B3700 800B2B00 8FAB0028 */  lw         $t3, 0x28($sp)
/* B3704 800B2B04 A1680004 */  sb         $t0, 4($t3)
/* B3708 800B2B08 8FAA0028 */  lw         $t2, 0x28($sp)
/* B370C 800B2B0C A5400006 */  sh         $zero, 6($t2)
/* B3710 800B2B10 8FAC0028 */  lw         $t4, 0x28($sp)
/* B3714 800B2B14 24060001 */  addiu      $a2, $zero, 1
/* B3718 800B2B18 95850010 */  lhu        $a1, 0x10($t4)
/* B371C 800B2B1C 01802025 */  or         $a0, $t4, $zero
/* B3720 800B2B20 00054880 */  sll        $t1, $a1, 2
/* B3724 800B2B24 01202825 */  or         $a1, $t1, $zero
/* B3728 800B2B28 0C02C907 */  jal        func_800B241C
/* B372C 800B2B2C 24A50014 */   addiu     $a1, $a1, 0x14
/* B3730 800B2B30 10000003 */  b          .L800B2B40
/* B3734 800B2B34 00001025 */   or        $v0, $zero, $zero
/* B3738 800B2B38 10000001 */  b          .L800B2B40
/* B373C 800B2B3C 00000000 */   nop
.L800B2B40:
/* B3740 800B2B40 8FBF001C */  lw         $ra, 0x1c($sp)
/* B3744 800B2B44 8FB00014 */  lw         $s0, 0x14($sp)
/* B3748 800B2B48 8FB10018 */  lw         $s1, 0x18($sp)
/* B374C 800B2B4C 03E00008 */  jr         $ra
/* B3750 800B2B50 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800B2B54
/* B3754 800B2B54 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3758 800B2B58 AFBF0014 */  sw         $ra, 0x14($sp)
/* B375C 800B2B5C AFA40020 */  sw         $a0, 0x20($sp)
/* B3760 800B2B60 AFA50024 */  sw         $a1, 0x24($sp)
/* B3764 800B2B64 AFA60028 */  sw         $a2, 0x28($sp)
/* B3768 800B2B68 8FAE0024 */  lw         $t6, 0x24($sp)
/* B376C 800B2B6C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B3770 800B2B70 ADEE0014 */  sw         $t6, 0x14($t7)
/* B3774 800B2B74 8FB80020 */  lw         $t8, 0x20($sp)
/* B3778 800B2B78 24010001 */  addiu      $at, $zero, 1
/* B377C 800B2B7C 17010005 */  bne        $t8, $at, .L800B2B94
/* B3780 800B2B80 00000000 */   nop
/* B3784 800B2B84 8FA80028 */  lw         $t0, 0x28($sp)
/* B3788 800B2B88 241903E9 */  addiu      $t9, $zero, 0x3e9
/* B378C 800B2B8C 10000004 */  b          .L800B2BA0
/* B3790 800B2B90 AD190018 */   sw        $t9, 0x18($t0)
.L800B2B94:
/* B3794 800B2B94 8FAA0028 */  lw         $t2, 0x28($sp)
/* B3798 800B2B98 240903EA */  addiu      $t1, $zero, 0x3ea
/* B379C 800B2B9C AD490018 */  sw         $t1, 0x18($t2)
.L800B2BA0:
/* B37A0 800B2BA0 8FAC0028 */  lw         $t4, 0x28($sp)
/* B37A4 800B2BA4 240B0001 */  addiu      $t3, $zero, 1
/* B37A8 800B2BA8 A58B0010 */  sh         $t3, 0x10($t4)
/* B37AC 800B2BAC 8FAD0028 */  lw         $t5, 0x28($sp)
/* B37B0 800B2BB0 A5A00012 */  sh         $zero, 0x12($t5)
/* B37B4 800B2BB4 8FAE0028 */  lw         $t6, 0x28($sp)
/* B37B8 800B2BB8 A5C00024 */  sh         $zero, 0x24($t6)
/* B37BC 800B2BBC 8FAF0028 */  lw         $t7, 0x28($sp)
/* B37C0 800B2BC0 A5E00026 */  sh         $zero, 0x26($t7)
/* B37C4 800B2BC4 8FB80028 */  lw         $t8, 0x28($sp)
/* B37C8 800B2BC8 AF000030 */  sw         $zero, 0x30($t8)
/* B37CC 800B2BCC 8FB90020 */  lw         $t9, 0x20($sp)
/* B37D0 800B2BD0 24010001 */  addiu      $at, $zero, 1
/* B37D4 800B2BD4 1721003D */  bne        $t9, $at, .L800B2CCC
/* B37D8 800B2BD8 00000000 */   nop
/* B37DC 800B2BDC 8FA90028 */  lw         $t1, 0x28($sp)
/* B37E0 800B2BE0 3C080400 */  lui        $t0, 0x400
/* B37E4 800B2BE4 35081000 */  ori        $t0, $t0, 0x1000
/* B37E8 800B2BE8 AD28002C */  sw         $t0, 0x2c($t1)
/* B37EC 800B2BEC 8FAB0028 */  lw         $t3, 0x28($sp)
/* B37F0 800B2BF0 240A002A */  addiu      $t2, $zero, 0x2a
/* B37F4 800B2BF4 AD6A0028 */  sw         $t2, 0x28($t3)
/* B37F8 800B2BF8 0C02CD6C */  jal        func_800B35B0
/* B37FC 800B2BFC 00000000 */   nop
/* B3800 800B2C00 10400009 */  beqz       $v0, .L800B2C28
/* B3804 800B2C04 00000000 */   nop
/* B3808 800B2C08 8FAD0028 */  lw         $t5, 0x28($sp)
/* B380C 800B2C0C 240C0004 */  addiu      $t4, $zero, 4
/* B3810 800B2C10 ADAC000C */  sw         $t4, 0xc($t5)
/* B3814 800B2C14 8FAE0028 */  lw         $t6, 0x28($sp)
/* B3818 800B2C18 ADC00020 */  sw         $zero, 0x20($t6)
/* B381C 800B2C1C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B3820 800B2C20 10000028 */  b          .L800B2CC4
/* B3824 800B2C24 ADE0001C */   sw        $zero, 0x1c($t7)
.L800B2C28:
/* B3828 800B2C28 8FB90028 */  lw         $t9, 0x28($sp)
/* B382C 800B2C2C 24180001 */  addiu      $t8, $zero, 1
/* B3830 800B2C30 AF38000C */  sw         $t8, 0xc($t9)
/* B3834 800B2C34 0C02C678 */  jal        func_800B19E0
/* B3838 800B2C38 3C040408 */   lui       $a0, 0x408
/* B383C 800B2C3C 8FA90028 */  lw         $t1, 0x28($sp)
/* B3840 800B2C40 3C010400 */  lui        $at, 0x400
/* B3844 800B2C44 34211000 */  ori        $at, $at, 0x1000
/* B3848 800B2C48 00414021 */  addu       $t0, $v0, $at
/* B384C 800B2C4C AD280020 */  sw         $t0, 0x20($t1)
/* B3850 800B2C50 8FAA0028 */  lw         $t2, 0x28($sp)
/* B3854 800B2C54 0C02C678 */  jal        func_800B19E0
/* B3858 800B2C58 8D440020 */   lw        $a0, 0x20($t2)
/* B385C 800B2C5C AFA2001C */  sw         $v0, 0x1c($sp)
/* B3860 800B2C60 8FAB001C */  lw         $t3, 0x1c($sp)
/* B3864 800B2C64 3C01FC00 */  lui        $at, 0xfc00
/* B3868 800B2C68 3421003F */  ori        $at, $at, 0x3f
/* B386C 800B2C6C 01616024 */  and        $t4, $t3, $at
/* B3870 800B2C70 2401000D */  addiu      $at, $zero, 0xd
/* B3874 800B2C74 15810003 */  bne        $t4, $at, .L800B2C84
/* B3878 800B2C78 00000000 */   nop
/* B387C 800B2C7C 240D000D */  addiu      $t5, $zero, 0xd
/* B3880 800B2C80 AFAD001C */  sw         $t5, 0x1c($sp)
.L800B2C84:
/* B3884 800B2C84 3C0E801B */  lui        $t6, %hi(D_801A8AD0)
/* B3888 800B2C88 91CE8AD0 */  lbu        $t6, %lo(D_801A8AD0)($t6)
/* B388C 800B2C8C 11C0000A */  beqz       $t6, .L800B2CB8
/* B3890 800B2C90 00000000 */   nop
/* B3894 800B2C94 8FB80028 */  lw         $t8, 0x28($sp)
/* B3898 800B2C98 240F0002 */  addiu      $t7, $zero, 2
/* B389C 800B2C9C A70F0010 */  sh         $t7, 0x10($t8)
/* B38A0 800B2CA0 8FA80028 */  lw         $t0, 0x28($sp)
/* B38A4 800B2CA4 24190002 */  addiu      $t9, $zero, 2
/* B38A8 800B2CA8 A5190024 */  sh         $t9, 0x24($t0)
/* B38AC 800B2CAC 8FAA0028 */  lw         $t2, 0x28($sp)
/* B38B0 800B2CB0 24090004 */  addiu      $t1, $zero, 4
/* B38B4 800B2CB4 A5490026 */  sh         $t1, 0x26($t2)
.L800B2CB8:
/* B38B8 800B2CB8 8FAB001C */  lw         $t3, 0x1c($sp)
/* B38BC 800B2CBC 8FAC0028 */  lw         $t4, 0x28($sp)
/* B38C0 800B2CC0 AD8B001C */  sw         $t3, 0x1c($t4)
.L800B2CC4:
/* B38C4 800B2CC4 10000061 */  b          .L800B2E4C
/* B38C8 800B2CC8 00000000 */   nop
.L800B2CCC:
/* B38CC 800B2CCC 0C02D424 */  jal        func_800B5090
/* B38D0 800B2CD0 00000000 */   nop
/* B38D4 800B2CD4 AFA20018 */  sw         $v0, 0x18($sp)
/* B38D8 800B2CD8 8FAD0018 */  lw         $t5, 0x18($sp)
/* B38DC 800B2CDC 2401FFFF */  addiu      $at, $zero, -1
/* B38E0 800B2CE0 8DAE0004 */  lw         $t6, 4($t5)
/* B38E4 800B2CE4 11C10010 */  beq        $t6, $at, .L800B2D28
/* B38E8 800B2CE8 00000000 */   nop
.L800B2CEC:
/* B38EC 800B2CEC 8FAF0018 */  lw         $t7, 0x18($sp)
/* B38F0 800B2CF0 8FB90024 */  lw         $t9, 0x24($sp)
/* B38F4 800B2CF4 8DF80014 */  lw         $t8, 0x14($t7)
/* B38F8 800B2CF8 17190003 */  bne        $t8, $t9, .L800B2D08
/* B38FC 800B2CFC 00000000 */   nop
/* B3900 800B2D00 10000009 */  b          .L800B2D28
/* B3904 800B2D04 00000000 */   nop
.L800B2D08:
/* B3908 800B2D08 8FA80018 */  lw         $t0, 0x18($sp)
/* B390C 800B2D0C 8D09000C */  lw         $t1, 0xc($t0)
/* B3910 800B2D10 AFA90018 */  sw         $t1, 0x18($sp)
/* B3914 800B2D14 8FAA0018 */  lw         $t2, 0x18($sp)
/* B3918 800B2D18 2401FFFF */  addiu      $at, $zero, -1
/* B391C 800B2D1C 8D4B0004 */  lw         $t3, 4($t2)
/* B3920 800B2D20 1561FFF2 */  bne        $t3, $at, .L800B2CEC
/* B3924 800B2D24 00000000 */   nop
.L800B2D28:
/* B3928 800B2D28 8FAC0018 */  lw         $t4, 0x18($sp)
/* B392C 800B2D2C 2401FFFF */  addiu      $at, $zero, -1
/* B3930 800B2D30 8D8D0004 */  lw         $t5, 4($t4)
/* B3934 800B2D34 15A10003 */  bne        $t5, $at, .L800B2D44
/* B3938 800B2D38 00000000 */   nop
/* B393C 800B2D3C 10000047 */  b          .L800B2E5C
/* B3940 800B2D40 2402FFFE */   addiu     $v0, $zero, -2
.L800B2D44:
/* B3944 800B2D44 8FAE0018 */  lw         $t6, 0x18($sp)
/* B3948 800B2D48 8FB80028 */  lw         $t8, 0x28($sp)
/* B394C 800B2D4C 8DCF0004 */  lw         $t7, 4($t6)
/* B3950 800B2D50 AF0F0028 */  sw         $t7, 0x28($t8)
/* B3954 800B2D54 8FB90018 */  lw         $t9, 0x18($sp)
/* B3958 800B2D58 97280010 */  lhu        $t0, 0x10($t9)
/* B395C 800B2D5C 11000004 */  beqz       $t0, .L800B2D70
/* B3960 800B2D60 00000000 */   nop
/* B3964 800B2D64 8FA90028 */  lw         $t1, 0x28($sp)
/* B3968 800B2D68 10000004 */  b          .L800B2D7C
/* B396C 800B2D6C AD28000C */   sw        $t0, 0xc($t1)
.L800B2D70:
/* B3970 800B2D70 8FAB0028 */  lw         $t3, 0x28($sp)
/* B3974 800B2D74 240A0001 */  addiu      $t2, $zero, 1
/* B3978 800B2D78 AD6A000C */  sw         $t2, 0xc($t3)
.L800B2D7C:
/* B397C 800B2D7C 8FAC0018 */  lw         $t4, 0x18($sp)
/* B3980 800B2D80 8FAE0028 */  lw         $t6, 0x28($sp)
/* B3984 800B2D84 8D8D011C */  lw         $t5, 0x11c($t4)
/* B3988 800B2D88 ADCD0020 */  sw         $t5, 0x20($t6)
/* B398C 800B2D8C 8FAF0018 */  lw         $t7, 0x18($sp)
/* B3990 800B2D90 8DF8011C */  lw         $t8, 0x11c($t7)
/* B3994 800B2D94 8F190000 */  lw         $t9, ($t8)
/* B3998 800B2D98 AFB9001C */  sw         $t9, 0x1c($sp)
/* B399C 800B2D9C 8FA8001C */  lw         $t0, 0x1c($sp)
/* B39A0 800B2DA0 3C01FC00 */  lui        $at, 0xfc00
/* B39A4 800B2DA4 3421003F */  ori        $at, $at, 0x3f
/* B39A8 800B2DA8 01014824 */  and        $t1, $t0, $at
/* B39AC 800B2DAC 2401000D */  addiu      $at, $zero, 0xd
/* B39B0 800B2DB0 15210003 */  bne        $t1, $at, .L800B2DC0
/* B39B4 800B2DB4 00000000 */   nop
/* B39B8 800B2DB8 240A000D */  addiu      $t2, $zero, 0xd
/* B39BC 800B2DBC AFAA001C */  sw         $t2, 0x1c($sp)
.L800B2DC0:
/* B39C0 800B2DC0 8FAB001C */  lw         $t3, 0x1c($sp)
/* B39C4 800B2DC4 8FAC0028 */  lw         $t4, 0x28($sp)
/* B39C8 800B2DC8 AD8B001C */  sw         $t3, 0x1c($t4)
/* B39CC 800B2DCC 8FAD0018 */  lw         $t5, 0x18($sp)
/* B39D0 800B2DD0 8FAE0028 */  lw         $t6, 0x28($sp)
/* B39D4 800B2DD4 ADCD002C */  sw         $t5, 0x2c($t6)
/* B39D8 800B2DD8 8FAF0018 */  lw         $t7, 0x18($sp)
/* B39DC 800B2DDC 95F80012 */  lhu        $t8, 0x12($t7)
/* B39E0 800B2DE0 33190001 */  andi       $t9, $t8, 1
/* B39E4 800B2DE4 1320000B */  beqz       $t9, .L800B2E14
/* B39E8 800B2DE8 00000000 */   nop
/* B39EC 800B2DEC 8FA90028 */  lw         $t1, 0x28($sp)
/* B39F0 800B2DF0 24080002 */  addiu      $t0, $zero, 2
/* B39F4 800B2DF4 A5280010 */  sh         $t0, 0x10($t1)
/* B39F8 800B2DF8 8FAB0028 */  lw         $t3, 0x28($sp)
/* B39FC 800B2DFC 240A0002 */  addiu      $t2, $zero, 2
/* B3A00 800B2E00 A56A0024 */  sh         $t2, 0x24($t3)
/* B3A04 800B2E04 8FAD0028 */  lw         $t5, 0x28($sp)
/* B3A08 800B2E08 240C0004 */  addiu      $t4, $zero, 4
/* B3A0C 800B2E0C 1000000F */  b          .L800B2E4C
/* B3A10 800B2E10 A5AC0026 */   sh        $t4, 0x26($t5)
.L800B2E14:
/* B3A14 800B2E14 8FAE0018 */  lw         $t6, 0x18($sp)
/* B3A18 800B2E18 95CF0012 */  lhu        $t7, 0x12($t6)
/* B3A1C 800B2E1C 31F80002 */  andi       $t8, $t7, 2
/* B3A20 800B2E20 1300000A */  beqz       $t8, .L800B2E4C
/* B3A24 800B2E24 00000000 */   nop
/* B3A28 800B2E28 8FA80028 */  lw         $t0, 0x28($sp)
/* B3A2C 800B2E2C 24190002 */  addiu      $t9, $zero, 2
/* B3A30 800B2E30 A5190010 */  sh         $t9, 0x10($t0)
/* B3A34 800B2E34 8FAA0028 */  lw         $t2, 0x28($sp)
/* B3A38 800B2E38 24090001 */  addiu      $t1, $zero, 1
/* B3A3C 800B2E3C A5490024 */  sh         $t1, 0x24($t2)
/* B3A40 800B2E40 8FAC0028 */  lw         $t4, 0x28($sp)
/* B3A44 800B2E44 240B0002 */  addiu      $t3, $zero, 2
/* B3A48 800B2E48 A58B0026 */  sh         $t3, 0x26($t4)
.L800B2E4C:
/* B3A4C 800B2E4C 10000003 */  b          .L800B2E5C
/* B3A50 800B2E50 00001025 */   or        $v0, $zero, $zero
/* B3A54 800B2E54 10000001 */  b          .L800B2E5C
/* B3A58 800B2E58 00000000 */   nop
.L800B2E5C:
/* B3A5C 800B2E5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3A60 800B2E60 27BD0020 */  addiu      $sp, $sp, 0x20
/* B3A64 800B2E64 03E00008 */  jr         $ra
/* B3A68 800B2E68 00000000 */   nop

glabel func_800B2E6C
/* B3A6C 800B2E6C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B3A70 800B2E70 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3A74 800B2E74 AFA40068 */  sw         $a0, 0x68($sp)
/* B3A78 800B2E78 8FAE0068 */  lw         $t6, 0x68($sp)
/* B3A7C 800B2E7C AFAE0064 */  sw         $t6, 0x64($sp)
/* B3A80 800B2E80 8FAF0068 */  lw         $t7, 0x68($sp)
/* B3A84 800B2E84 8FB80064 */  lw         $t8, 0x64($sp)
/* B3A88 800B2E88 27A60018 */  addiu      $a2, $sp, 0x18
/* B3A8C 800B2E8C 91E40009 */  lbu        $a0, 9($t7)
/* B3A90 800B2E90 0C02CAD5 */  jal        func_800B2B54
/* B3A94 800B2E94 8F05000C */   lw        $a1, 0xc($t8)
/* B3A98 800B2E98 10400003 */  beqz       $v0, .L800B2EA8
/* B3A9C 800B2E9C 00000000 */   nop
/* B3AA0 800B2EA0 1000000D */  b          .L800B2ED8
/* B3AA4 800B2EA4 2402FFFE */   addiu     $v0, $zero, -2
.L800B2EA8:
/* B3AA8 800B2EA8 8FB90064 */  lw         $t9, 0x64($sp)
/* B3AAC 800B2EAC 93280004 */  lbu        $t0, 4($t9)
/* B3AB0 800B2EB0 A3A8001C */  sb         $t0, 0x1c($sp)
/* B3AB4 800B2EB4 A7A0001E */  sh         $zero, 0x1e($sp)
/* B3AB8 800B2EB8 27A40018 */  addiu      $a0, $sp, 0x18
/* B3ABC 800B2EBC 2405004C */  addiu      $a1, $zero, 0x4c
/* B3AC0 800B2EC0 0C02C907 */  jal        func_800B241C
/* B3AC4 800B2EC4 24060001 */   addiu     $a2, $zero, 1
/* B3AC8 800B2EC8 10000003 */  b          .L800B2ED8
/* B3ACC 800B2ECC 00001025 */   or        $v0, $zero, $zero
/* B3AD0 800B2ED0 10000001 */  b          .L800B2ED8
/* B3AD4 800B2ED4 00000000 */   nop
.L800B2ED8:
/* B3AD8 800B2ED8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3ADC 800B2EDC 27BD0068 */  addiu      $sp, $sp, 0x68
/* B3AE0 800B2EE0 03E00008 */  jr         $ra
/* B3AE4 800B2EE4 00000000 */   nop

glabel func_800B2EE8
/* B3AE8 800B2EE8 27BDFF88 */  addiu      $sp, $sp, -0x78
/* B3AEC 800B2EEC AFBF001C */  sw         $ra, 0x1c($sp)
/* B3AF0 800B2EF0 AFA40078 */  sw         $a0, 0x78($sp)
/* B3AF4 800B2EF4 AFB00018 */  sw         $s0, 0x18($sp)
/* B3AF8 800B2EF8 8FAE0078 */  lw         $t6, 0x78($sp)
/* B3AFC 800B2EFC AFAE0074 */  sw         $t6, 0x74($sp)
/* B3B00 800B2F00 8FAF0078 */  lw         $t7, 0x78($sp)
/* B3B04 800B2F04 91F00009 */  lbu        $s0, 9($t7)
/* B3B08 800B2F08 12000006 */  beqz       $s0, .L800B2F24
/* B3B0C 800B2F0C 00000000 */   nop
/* B3B10 800B2F10 24010001 */  addiu      $at, $zero, 1
/* B3B14 800B2F14 12010008 */  beq        $s0, $at, .L800B2F38
/* B3B18 800B2F18 00000000 */   nop
/* B3B1C 800B2F1C 10000025 */  b          .L800B2FB4
/* B3B20 800B2F20 00000000 */   nop
.L800B2F24:
/* B3B24 800B2F24 8FB80074 */  lw         $t8, 0x74($sp)
/* B3B28 800B2F28 0C02CA33 */  jal        func_800B28CC
/* B3B2C 800B2F2C 8F04000C */   lw        $a0, 0xc($t8)
/* B3B30 800B2F30 10000022 */  b          .L800B2FBC
/* B3B34 800B2F34 00000000 */   nop
.L800B2F38:
/* B3B38 800B2F38 0C02CD6C */  jal        func_800B35B0
/* B3B3C 800B2F3C 00000000 */   nop
/* B3B40 800B2F40 1040001A */  beqz       $v0, .L800B2FAC
/* B3B44 800B2F44 00000000 */   nop
/* B3B48 800B2F48 0C02CD75 */  jal        func_800B35D4
/* B3B4C 800B2F4C 00000000 */   nop
/* B3B50 800B2F50 0C02C678 */  jal        func_800B19E0
/* B3B54 800B2F54 3C040408 */   lui       $a0, 0x408
/* B3B58 800B2F58 AFA20024 */  sw         $v0, 0x24($sp)
/* B3B5C 800B2F5C 8FB90024 */  lw         $t9, 0x24($sp)
/* B3B60 800B2F60 17200003 */  bnez       $t9, .L800B2F70
/* B3B64 800B2F64 00000000 */   nop
/* B3B68 800B2F68 10000014 */  b          .L800B2FBC
/* B3B6C 800B2F6C 00000000 */   nop
.L800B2F70:
/* B3B70 800B2F70 8FA80024 */  lw         $t0, 0x24($sp)
/* B3B74 800B2F74 2509FFFC */  addiu      $t1, $t0, -4
/* B3B78 800B2F78 AFA90024 */  sw         $t1, 0x24($sp)
/* B3B7C 800B2F7C 8FA60024 */  lw         $a2, 0x24($sp)
/* B3B80 800B2F80 3C010400 */  lui        $at, 0x400
/* B3B84 800B2F84 34211000 */  ori        $at, $at, 0x1000
/* B3B88 800B2F88 24040001 */  addiu      $a0, $zero, 1
/* B3B8C 800B2F8C 240503E8 */  addiu      $a1, $zero, 0x3e8
/* B3B90 800B2F90 0C02CEF7 */  jal        func_800B3BDC
/* B3B94 800B2F94 00C13021 */   addu      $a2, $a2, $at
/* B3B98 800B2F98 304A0003 */  andi       $t2, $v0, 3
/* B3B9C 800B2F9C 15400003 */  bnez       $t2, .L800B2FAC
/* B3BA0 800B2FA0 00000000 */   nop
/* B3BA4 800B2FA4 0C02CD86 */  jal        func_800B3618
/* B3BA8 800B2FA8 00000000 */   nop
.L800B2FAC:
/* B3BAC 800B2FAC 10000003 */  b          .L800B2FBC
/* B3BB0 800B2FB0 00000000 */   nop
.L800B2FB4:
/* B3BB4 800B2FB4 10000021 */  b          .L800B303C
/* B3BB8 800B2FB8 2402FFFC */   addiu     $v0, $zero, -4
.L800B2FBC:
/* B3BBC 800B2FBC 8FAB0078 */  lw         $t3, 0x78($sp)
/* B3BC0 800B2FC0 8FAC0074 */  lw         $t4, 0x74($sp)
/* B3BC4 800B2FC4 27A60028 */  addiu      $a2, $sp, 0x28
/* B3BC8 800B2FC8 91640009 */  lbu        $a0, 9($t3)
/* B3BCC 800B2FCC 0C02CAD5 */  jal        func_800B2B54
/* B3BD0 800B2FD0 8D85000C */   lw        $a1, 0xc($t4)
/* B3BD4 800B2FD4 10400003 */  beqz       $v0, .L800B2FE4
/* B3BD8 800B2FD8 00000000 */   nop
/* B3BDC 800B2FDC 10000017 */  b          .L800B303C
/* B3BE0 800B2FE0 2402FFFE */   addiu     $v0, $zero, -2
.L800B2FE4:
/* B3BE4 800B2FE4 8FAD0074 */  lw         $t5, 0x74($sp)
/* B3BE8 800B2FE8 91AE0004 */  lbu        $t6, 4($t5)
/* B3BEC 800B2FEC A3AE002C */  sb         $t6, 0x2c($sp)
/* B3BF0 800B2FF0 A7A0002E */  sh         $zero, 0x2e($sp)
/* B3BF4 800B2FF4 27A40028 */  addiu      $a0, $sp, 0x28
/* B3BF8 800B2FF8 2405004C */  addiu      $a1, $zero, 0x4c
/* B3BFC 800B2FFC 0C02C907 */  jal        func_800B241C
/* B3C00 800B3000 24060001 */   addiu     $a2, $zero, 1
/* B3C04 800B3004 8FAF0034 */  lw         $t7, 0x34($sp)
/* B3C08 800B3008 24010001 */  addiu      $at, $zero, 1
/* B3C0C 800B300C 15E10007 */  bne        $t7, $at, .L800B302C
/* B3C10 800B3010 00000000 */   nop
/* B3C14 800B3014 24180004 */  addiu      $t8, $zero, 4
/* B3C18 800B3018 A3B8002C */  sb         $t8, 0x2c($sp)
/* B3C1C 800B301C 27A40028 */  addiu      $a0, $sp, 0x28
/* B3C20 800B3020 2405004C */  addiu      $a1, $zero, 0x4c
/* B3C24 800B3024 0C02C907 */  jal        func_800B241C
/* B3C28 800B3028 24060002 */   addiu     $a2, $zero, 2
.L800B302C:
/* B3C2C 800B302C 10000003 */  b          .L800B303C
/* B3C30 800B3030 00001025 */   or        $v0, $zero, $zero
/* B3C34 800B3034 10000001 */  b          .L800B303C
/* B3C38 800B3038 00000000 */   nop
.L800B303C:
/* B3C3C 800B303C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B3C40 800B3040 8FB00018 */  lw         $s0, 0x18($sp)
/* B3C44 800B3044 27BD0078 */  addiu      $sp, $sp, 0x78
/* B3C48 800B3048 03E00008 */  jr         $ra
/* B3C4C 800B304C 00000000 */   nop

glabel func_800B3050
/* B3C50 800B3050 27BDFF68 */  addiu      $sp, $sp, -0x98
/* B3C54 800B3054 AFBF0024 */  sw         $ra, 0x24($sp)
/* B3C58 800B3058 AFA40098 */  sw         $a0, 0x98($sp)
/* B3C5C 800B305C AFB20020 */  sw         $s2, 0x20($sp)
/* B3C60 800B3060 AFB1001C */  sw         $s1, 0x1c($sp)
/* B3C64 800B3064 AFB00018 */  sw         $s0, 0x18($sp)
/* B3C68 800B3068 8FAE0098 */  lw         $t6, 0x98($sp)
/* B3C6C 800B306C AFAE0094 */  sw         $t6, 0x94($sp)
/* B3C70 800B3070 00008825 */  or         $s1, $zero, $zero
/* B3C74 800B3074 8FAF0098 */  lw         $t7, 0x98($sp)
/* B3C78 800B3078 91F20009 */  lbu        $s2, 9($t7)
/* B3C7C 800B307C 12400006 */  beqz       $s2, .L800B3098
/* B3C80 800B3080 00000000 */   nop
/* B3C84 800B3084 24010001 */  addiu      $at, $zero, 1
/* B3C88 800B3088 1241003E */  beq        $s2, $at, .L800B3184
/* B3C8C 800B308C 00000000 */   nop
/* B3C90 800B3090 10000087 */  b          .L800B32B0
/* B3C94 800B3094 00000000 */   nop
.L800B3098:
/* B3C98 800B3098 0C02D424 */  jal        func_800B5090
/* B3C9C 800B309C 00000000 */   nop
/* B3CA0 800B30A0 00408025 */  or         $s0, $v0, $zero
/* B3CA4 800B30A4 8E180004 */  lw         $t8, 4($s0)
/* B3CA8 800B30A8 2401FFFF */  addiu      $at, $zero, -1
/* B3CAC 800B30AC 1301000D */  beq        $t8, $at, .L800B30E4
/* B3CB0 800B30B0 00000000 */   nop
.L800B30B4:
/* B3CB4 800B30B4 8FA80094 */  lw         $t0, 0x94($sp)
/* B3CB8 800B30B8 8E190014 */  lw         $t9, 0x14($s0)
/* B3CBC 800B30BC 8D09000C */  lw         $t1, 0xc($t0)
/* B3CC0 800B30C0 17290003 */  bne        $t9, $t1, .L800B30D0
/* B3CC4 800B30C4 00000000 */   nop
/* B3CC8 800B30C8 10000006 */  b          .L800B30E4
/* B3CCC 800B30CC 00000000 */   nop
.L800B30D0:
/* B3CD0 800B30D0 8E10000C */  lw         $s0, 0xc($s0)
/* B3CD4 800B30D4 8E0A0004 */  lw         $t2, 4($s0)
/* B3CD8 800B30D8 2401FFFF */  addiu      $at, $zero, -1
/* B3CDC 800B30DC 1541FFF5 */  bne        $t2, $at, .L800B30B4
/* B3CE0 800B30E0 00000000 */   nop
.L800B30E4:
/* B3CE4 800B30E4 8E0B0004 */  lw         $t3, 4($s0)
/* B3CE8 800B30E8 2401FFFF */  addiu      $at, $zero, -1
/* B3CEC 800B30EC 15610003 */  bne        $t3, $at, .L800B30FC
/* B3CF0 800B30F0 00000000 */   nop
/* B3CF4 800B30F4 10000083 */  b          .L800B3304
/* B3CF8 800B30F8 2402FFFE */   addiu     $v0, $zero, -2
.L800B30FC:
/* B3CFC 800B30FC 960C0010 */  lhu        $t4, 0x10($s0)
/* B3D00 800B3100 24010001 */  addiu      $at, $zero, 1
/* B3D04 800B3104 11810003 */  beq        $t4, $at, .L800B3114
/* B3D08 800B3108 00000000 */   nop
/* B3D0C 800B310C 1000007D */  b          .L800B3304
/* B3D10 800B3110 2402FFFC */   addiu     $v0, $zero, -4
.L800B3114:
/* B3D14 800B3114 960D0012 */  lhu        $t5, 0x12($s0)
/* B3D18 800B3118 2401FFFC */  addiu      $at, $zero, -4
/* B3D1C 800B311C 01A17024 */  and        $t6, $t5, $at
/* B3D20 800B3120 A60E0012 */  sh         $t6, 0x12($s0)
/* B3D24 800B3124 8FAF0094 */  lw         $t7, 0x94($sp)
/* B3D28 800B3128 8DF80010 */  lw         $t8, 0x10($t7)
/* B3D2C 800B312C 33080002 */  andi       $t0, $t8, 2
/* B3D30 800B3130 11000004 */  beqz       $t0, .L800B3144
/* B3D34 800B3134 00000000 */   nop
/* B3D38 800B3138 8FB90094 */  lw         $t9, 0x94($sp)
/* B3D3C 800B313C 8F290014 */  lw         $t1, 0x14($t9)
/* B3D40 800B3140 AE09011C */  sw         $t1, 0x11c($s0)
.L800B3144:
/* B3D44 800B3144 8FAA0094 */  lw         $t2, 0x94($sp)
/* B3D48 800B3148 8D4B0010 */  lw         $t3, 0x10($t2)
/* B3D4C 800B314C 316C0001 */  andi       $t4, $t3, 1
/* B3D50 800B3150 11800009 */  beqz       $t4, .L800B3178
/* B3D54 800B3154 00000000 */   nop
/* B3D58 800B3158 8FAD0094 */  lw         $t5, 0x94($sp)
/* B3D5C 800B315C 8E05011C */  lw         $a1, 0x11c($s0)
/* B3D60 800B3160 0C02CFC5 */  jal        func_800B3F14
/* B3D64 800B3164 8DA4000C */   lw        $a0, 0xc($t5)
/* B3D68 800B3168 14400003 */  bnez       $v0, .L800B3178
/* B3D6C 800B316C 00000000 */   nop
/* B3D70 800B3170 10000064 */  b          .L800B3304
/* B3D74 800B3174 2402FFFC */   addiu     $v0, $zero, -4
.L800B3178:
/* B3D78 800B3178 24110001 */  addiu      $s1, $zero, 1
/* B3D7C 800B317C 1000004E */  b          .L800B32B8
/* B3D80 800B3180 00000000 */   nop
.L800B3184:
/* B3D84 800B3184 0C02CD6C */  jal        func_800B35B0
/* B3D88 800B3188 00000000 */   nop
/* B3D8C 800B318C 10400003 */  beqz       $v0, .L800B319C
/* B3D90 800B3190 00000000 */   nop
/* B3D94 800B3194 1000005B */  b          .L800B3304
/* B3D98 800B3198 2402FFFC */   addiu     $v0, $zero, -4
.L800B319C:
/* B3D9C 800B319C 8FAE0094 */  lw         $t6, 0x94($sp)
/* B3DA0 800B31A0 8DCF0010 */  lw         $t7, 0x10($t6)
/* B3DA4 800B31A4 31F80002 */  andi       $t8, $t7, 2
/* B3DA8 800B31A8 13000008 */  beqz       $t8, .L800B31CC
/* B3DAC 800B31AC 00000000 */   nop
/* B3DB0 800B31B0 8FA80094 */  lw         $t0, 0x94($sp)
/* B3DB4 800B31B4 3C01FBFF */  lui        $at, 0xfbff
/* B3DB8 800B31B8 3421F000 */  ori        $at, $at, 0xf000
/* B3DBC 800B31BC 8D050014 */  lw         $a1, 0x14($t0)
/* B3DC0 800B31C0 3C040408 */  lui        $a0, 0x408
/* B3DC4 800B31C4 0C02C664 */  jal        func_800B1990
/* B3DC8 800B31C8 00A12821 */   addu      $a1, $a1, $at
.L800B31CC:
/* B3DCC 800B31CC 8FB90094 */  lw         $t9, 0x94($sp)
/* B3DD0 800B31D0 8F290010 */  lw         $t1, 0x10($t9)
/* B3DD4 800B31D4 312A0001 */  andi       $t2, $t1, 1
/* B3DD8 800B31D8 11400015 */  beqz       $t2, .L800B3230
/* B3DDC 800B31DC 00000000 */   nop
/* B3DE0 800B31E0 0C02C678 */  jal        func_800B19E0
/* B3DE4 800B31E4 3C040408 */   lui       $a0, 0x408
/* B3DE8 800B31E8 3C010400 */  lui        $at, 0x400
/* B3DEC 800B31EC 34211000 */  ori        $at, $at, 0x1000
/* B3DF0 800B31F0 00409025 */  or         $s2, $v0, $zero
/* B3DF4 800B31F4 02413021 */  addu       $a2, $s2, $at
/* B3DF8 800B31F8 24040001 */  addiu      $a0, $zero, 1
/* B3DFC 800B31FC 0C02CEF7 */  jal        func_800B3BDC
/* B3E00 800B3200 240503E8 */   addiu     $a1, $zero, 0x3e8
/* B3E04 800B3204 304B0003 */  andi       $t3, $v0, 3
/* B3E08 800B3208 15600003 */  bnez       $t3, .L800B3218
/* B3E0C 800B320C 00000000 */   nop
/* B3E10 800B3210 0C02CD86 */  jal        func_800B3618
/* B3E14 800B3214 00000000 */   nop
.L800B3218:
/* B3E18 800B3218 0C02CD86 */  jal        func_800B3618
/* B3E1C 800B321C 00000000 */   nop
/* B3E20 800B3220 240C0001 */  addiu      $t4, $zero, 1
/* B3E24 800B3224 3C01801B */  lui        $at, %hi(D_801A8AD0)
/* B3E28 800B3228 10000005 */  b          .L800B3240
/* B3E2C 800B322C A02C8AD0 */   sb        $t4, %lo(D_801A8AD0)($at)
.L800B3230:
/* B3E30 800B3230 3C01801B */  lui        $at, %hi(D_801A8AD0)
/* B3E34 800B3234 A0208AD0 */  sb         $zero, %lo(D_801A8AD0)($at)
/* B3E38 800B3238 0C02CD8C */  jal        func_800B3630
/* B3E3C 800B323C 00000000 */   nop
.L800B3240:
/* B3E40 800B3240 8FAD0094 */  lw         $t5, 0x94($sp)
/* B3E44 800B3244 91AE0004 */  lbu        $t6, 4($t5)
/* B3E48 800B3248 A3AE0088 */  sb         $t6, 0x88($sp)
/* B3E4C 800B324C A7A0008A */  sh         $zero, 0x8a($sp)
/* B3E50 800B3250 8FAF0094 */  lw         $t7, 0x94($sp)
/* B3E54 800B3254 8DF8000C */  lw         $t8, 0xc($t7)
/* B3E58 800B3258 AFB80090 */  sw         $t8, 0x90($sp)
/* B3E5C 800B325C 27A40084 */  addiu      $a0, $sp, 0x84
/* B3E60 800B3260 24050010 */  addiu      $a1, $zero, 0x10
/* B3E64 800B3264 0C02C907 */  jal        func_800B241C
/* B3E68 800B3268 24060001 */   addiu     $a2, $zero, 1
/* B3E6C 800B326C 8FA80094 */  lw         $t0, 0x94($sp)
/* B3E70 800B3270 8D190010 */  lw         $t9, 0x10($t0)
/* B3E74 800B3274 33290001 */  andi       $t1, $t9, 1
/* B3E78 800B3278 1120000B */  beqz       $t1, .L800B32A8
/* B3E7C 800B327C 00000000 */   nop
/* B3E80 800B3280 24040001 */  addiu      $a0, $zero, 1
/* B3E84 800B3284 240503E8 */  addiu      $a1, $zero, 0x3e8
/* B3E88 800B3288 0C02CAD5 */  jal        func_800B2B54
/* B3E8C 800B328C 27A60038 */   addiu     $a2, $sp, 0x38
/* B3E90 800B3290 0C02CFFB */  jal        func_800B3FEC
/* B3E94 800B3294 27A40038 */   addiu     $a0, $sp, 0x38
/* B3E98 800B3298 27A40038 */  addiu      $a0, $sp, 0x38
/* B3E9C 800B329C 2405004C */  addiu      $a1, $zero, 0x4c
/* B3EA0 800B32A0 0C02C907 */  jal        func_800B241C
/* B3EA4 800B32A4 24060002 */   addiu     $a2, $zero, 2
.L800B32A8:
/* B3EA8 800B32A8 10000016 */  b          .L800B3304
/* B3EAC 800B32AC 00001025 */   or        $v0, $zero, $zero
.L800B32B0:
/* B3EB0 800B32B0 10000014 */  b          .L800B3304
/* B3EB4 800B32B4 2402FFFC */   addiu     $v0, $zero, -4
.L800B32B8:
/* B3EB8 800B32B8 8FAA0094 */  lw         $t2, 0x94($sp)
/* B3EBC 800B32BC 914B0004 */  lbu        $t3, 4($t2)
/* B3EC0 800B32C0 A3AB0088 */  sb         $t3, 0x88($sp)
/* B3EC4 800B32C4 A7A0008A */  sh         $zero, 0x8a($sp)
/* B3EC8 800B32C8 8FAC0094 */  lw         $t4, 0x94($sp)
/* B3ECC 800B32CC 8D8D000C */  lw         $t5, 0xc($t4)
/* B3ED0 800B32D0 AFAD0090 */  sw         $t5, 0x90($sp)
/* B3ED4 800B32D4 27A40084 */  addiu      $a0, $sp, 0x84
/* B3ED8 800B32D8 24050010 */  addiu      $a1, $zero, 0x10
/* B3EDC 800B32DC 0C02C907 */  jal        func_800B241C
/* B3EE0 800B32E0 24060001 */   addiu     $a2, $zero, 1
/* B3EE4 800B32E4 12200003 */  beqz       $s1, .L800B32F4
/* B3EE8 800B32E8 00000000 */   nop
/* B3EEC 800B32EC 0C02E4BC */  jal        func_800B92F0
/* B3EF0 800B32F0 02002025 */   or        $a0, $s0, $zero
.L800B32F4:
/* B3EF4 800B32F4 10000003 */  b          .L800B3304
/* B3EF8 800B32F8 24020001 */   addiu     $v0, $zero, 1
/* B3EFC 800B32FC 10000001 */  b          .L800B3304
/* B3F00 800B3300 00000000 */   nop
.L800B3304:
/* B3F04 800B3304 8FBF0024 */  lw         $ra, 0x24($sp)
/* B3F08 800B3308 8FB00018 */  lw         $s0, 0x18($sp)
/* B3F0C 800B330C 8FB1001C */  lw         $s1, 0x1c($sp)
/* B3F10 800B3310 8FB20020 */  lw         $s2, 0x20($sp)
/* B3F14 800B3314 03E00008 */  jr         $ra
/* B3F18 800B3318 27BD0098 */   addiu     $sp, $sp, 0x98
/* B3F1C 800B331C 00000000 */  nop
