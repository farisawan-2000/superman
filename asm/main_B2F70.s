.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B2370
/* B2F70 800B2370 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B2F74 800B2374 AFBF001C */  sw         $ra, 0x1c($sp)
/* B2F78 800B2378 AFA40030 */  sw         $a0, 0x30($sp)
/* B2F7C 800B237C AFA50034 */  sw         $a1, 0x34($sp)
/* B2F80 800B2380 AFA60038 */  sw         $a2, 0x38($sp)
/* B2F84 800B2384 AFB00018 */  sw         $s0, 0x18($sp)
/* B2F88 800B2388 8FAE0030 */  lw         $t6, 0x30($sp)
/* B2F8C 800B238C AFAE0028 */  sw         $t6, 0x28($sp)
/* B2F90 800B2390 8FB80030 */  lw         $t8, 0x30($sp)
/* B2F94 800B2394 240F0002 */  addiu      $t7, $zero, 2
/* B2F98 800B2398 A30F0008 */  sb         $t7, 8($t8)
/* B2F9C 800B239C 8FB90038 */  lw         $t9, 0x38($sp)
/* B2FA0 800B23A0 8FA80030 */  lw         $t0, 0x30($sp)
/* B2FA4 800B23A4 A1190005 */  sb         $t9, 5($t0)
/* B2FA8 800B23A8 AFA0002C */  sw         $zero, 0x2c($sp)
/* B2FAC 800B23AC 8FA9002C */  lw         $t1, 0x2c($sp)
/* B2FB0 800B23B0 8FAA0034 */  lw         $t2, 0x34($sp)
/* B2FB4 800B23B4 012A082B */  sltu       $at, $t1, $t2
/* B2FB8 800B23B8 10200011 */  beqz       $at, .L800B2400
/* B2FBC 800B23BC 00000000 */   nop
.L800B23C0:
/* B2FC0 800B23C0 8FAC002C */  lw         $t4, 0x2c($sp)
/* B2FC4 800B23C4 8FAB0028 */  lw         $t3, 0x28($sp)
/* B2FC8 800B23C8 8FAD0034 */  lw         $t5, 0x34($sp)
/* B2FCC 800B23CC 24060008 */  addiu      $a2, $zero, 8
/* B2FD0 800B23D0 016C2021 */  addu       $a0, $t3, $t4
/* B2FD4 800B23D4 0C02C4C8 */  jal        func_800B1320
/* B2FD8 800B23D8 01AC2823 */   subu      $a1, $t5, $t4
/* B2FDC 800B23DC 8FAE002C */  lw         $t6, 0x2c($sp)
/* B2FE0 800B23E0 00408025 */  or         $s0, $v0, $zero
/* B2FE4 800B23E4 01D07821 */  addu       $t7, $t6, $s0
/* B2FE8 800B23E8 AFAF002C */  sw         $t7, 0x2c($sp)
/* B2FEC 800B23EC 8FB8002C */  lw         $t8, 0x2c($sp)
/* B2FF0 800B23F0 8FB90034 */  lw         $t9, 0x34($sp)
/* B2FF4 800B23F4 0319082B */  sltu       $at, $t8, $t9
/* B2FF8 800B23F8 1420FFF1 */  bnez       $at, .L800B23C0
/* B2FFC 800B23FC 00000000 */   nop
.L800B2400:
/* B3000 800B2400 10000001 */  b          .L800B2408
/* B3004 800B2404 00000000 */   nop
.L800B2408:
/* B3008 800B2408 8FBF001C */  lw         $ra, 0x1c($sp)
/* B300C 800B240C 8FB00018 */  lw         $s0, 0x18($sp)
/* B3010 800B2410 27BD0030 */  addiu      $sp, $sp, 0x30
/* B3014 800B2414 03E00008 */  jr         $ra
/* B3018 800B2418 00000000 */   nop

glabel func_800B241C
/* B301C 800B241C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B3020 800B2420 AFBF001C */  sw         $ra, 0x1c($sp)
/* B3024 800B2424 AFA40030 */  sw         $a0, 0x30($sp)
/* B3028 800B2428 AFA50034 */  sw         $a1, 0x34($sp)
/* B302C 800B242C AFA60038 */  sw         $a2, 0x38($sp)
/* B3030 800B2430 AFB00018 */  sw         $s0, 0x18($sp)
/* B3034 800B2434 AFA00028 */  sw         $zero, 0x28($sp)
/* B3038 800B2438 8FAE0034 */  lw         $t6, 0x34($sp)
/* B303C 800B243C 8FAF0030 */  lw         $t7, 0x30($sp)
/* B3040 800B2440 ADEE0000 */  sw         $t6, ($t7)
/* B3044 800B2444 27B80034 */  addiu      $t8, $sp, 0x34
/* B3048 800B2448 AFB8002C */  sw         $t8, 0x2c($sp)
/* B304C 800B244C 8FB90028 */  lw         $t9, 0x28($sp)
/* B3050 800B2450 2B210004 */  slti       $at, $t9, 4
/* B3054 800B2454 10200010 */  beqz       $at, .L800B2498
/* B3058 800B2458 00000000 */   nop
.L800B245C:
/* B305C 800B245C 8FA90028 */  lw         $t1, 0x28($sp)
/* B3060 800B2460 8FA8002C */  lw         $t0, 0x2c($sp)
/* B3064 800B2464 240A0004 */  addiu      $t2, $zero, 4
/* B3068 800B2468 24060008 */  addiu      $a2, $zero, 8
/* B306C 800B246C 01492823 */  subu       $a1, $t2, $t1
/* B3070 800B2470 0C02C4C8 */  jal        func_800B1320
/* B3074 800B2474 01092021 */   addu      $a0, $t0, $t1
/* B3078 800B2478 8FAB0028 */  lw         $t3, 0x28($sp)
/* B307C 800B247C 00408025 */  or         $s0, $v0, $zero
/* B3080 800B2480 01706021 */  addu       $t4, $t3, $s0
/* B3084 800B2484 AFAC0028 */  sw         $t4, 0x28($sp)
/* B3088 800B2488 8FAD0028 */  lw         $t5, 0x28($sp)
/* B308C 800B248C 29A10004 */  slti       $at, $t5, 4
/* B3090 800B2490 1420FFF2 */  bnez       $at, .L800B245C
/* B3094 800B2494 00000000 */   nop
.L800B2498:
/* B3098 800B2498 8FA40030 */  lw         $a0, 0x30($sp)
/* B309C 800B249C 8FA50034 */  lw         $a1, 0x34($sp)
/* B30A0 800B24A0 0C02C8DC */  jal        func_800B2370
/* B30A4 800B24A4 8FA60038 */   lw        $a2, 0x38($sp)
/* B30A8 800B24A8 0C02B4C4 */  jal        func_800AD310
/* B30AC 800B24AC 00000000 */   nop
/* B30B0 800B24B0 10000001 */  b          .L800B24B8
/* B30B4 800B24B4 00000000 */   nop
.L800B24B8:
/* B30B8 800B24B8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B30BC 800B24BC 8FB00018 */  lw         $s0, 0x18($sp)
/* B30C0 800B24C0 27BD0030 */  addiu      $sp, $sp, 0x30
/* B30C4 800B24C4 03E00008 */  jr         $ra
/* B30C8 800B24C8 00000000 */   nop

glabel func_800B24CC
/* B30CC 800B24CC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B30D0 800B24D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* B30D4 800B24D4 AFA40038 */  sw         $a0, 0x38($sp)
/* B30D8 800B24D8 AFA5003C */  sw         $a1, 0x3c($sp)
/* B30DC 800B24DC AFB00018 */  sw         $s0, 0x18($sp)
/* B30E0 800B24E0 8FAE0038 */  lw         $t6, 0x38($sp)
/* B30E4 800B24E4 AFAE0034 */  sw         $t6, 0x34($sp)
/* B30E8 800B24E8 8FAF003C */  lw         $t7, 0x3c($sp)
/* B30EC 800B24EC 25F80003 */  addiu      $t8, $t7, 3
/* B30F0 800B24F0 0018C882 */  srl        $t9, $t8, 2
/* B30F4 800B24F4 AFB90030 */  sw         $t9, 0x30($sp)
/* B30F8 800B24F8 8FA80038 */  lw         $t0, 0x38($sp)
/* B30FC 800B24FC 31090003 */  andi       $t1, $t0, 3
/* B3100 800B2500 15200025 */  bnez       $t1, .L800B2598
/* B3104 800B2504 00000000 */   nop
/* B3108 800B2508 8FAA0030 */  lw         $t2, 0x30($sp)
/* B310C 800B250C 01408025 */  or         $s0, $t2, $zero
/* B3110 800B2510 254BFFFF */  addiu      $t3, $t2, -1
/* B3114 800B2514 1200001E */  beqz       $s0, .L800B2590
/* B3118 800B2518 AFAB0030 */   sw        $t3, 0x30($sp)
.L800B251C:
/* B311C 800B251C 8FAC0034 */  lw         $t4, 0x34($sp)
/* B3120 800B2520 3C010400 */  lui        $at, 0x400
/* B3124 800B2524 0181082B */  sltu       $at, $t4, $at
/* B3128 800B2528 1420000F */  bnez       $at, .L800B2568
/* B312C 800B252C 00000000 */   nop
/* B3130 800B2530 3C010500 */  lui        $at, 0x500
/* B3134 800B2534 0181082B */  sltu       $at, $t4, $at
/* B3138 800B2538 1020000B */  beqz       $at, .L800B2568
/* B313C 800B253C 00000000 */   nop
/* B3140 800B2540 8FAD0034 */  lw         $t5, 0x34($sp)
/* B3144 800B2544 27A5002C */  addiu      $a1, $sp, 0x2c
/* B3148 800B2548 25AE0004 */  addiu      $t6, $t5, 4
/* B314C 800B254C AFAE0034 */  sw         $t6, 0x34($sp)
/* B3150 800B2550 0C02D0B8 */  jal        func_800B42E0
/* B3154 800B2554 01A02025 */   or        $a0, $t5, $zero
/* B3158 800B2558 0C02B4DD */  jal        func_800AD374
/* B315C 800B255C 8FA4002C */   lw        $a0, 0x2c($sp)
/* B3160 800B2560 10000006 */  b          .L800B257C
/* B3164 800B2564 00000000 */   nop
.L800B2568:
/* B3168 800B2568 8FAF0034 */  lw         $t7, 0x34($sp)
/* B316C 800B256C 8DE40000 */  lw         $a0, ($t7)
/* B3170 800B2570 25F80004 */  addiu      $t8, $t7, 4
/* B3174 800B2574 0C02B4DD */  jal        func_800AD374
/* B3178 800B2578 AFB80034 */   sw        $t8, 0x34($sp)
.L800B257C:
/* B317C 800B257C 8FB90030 */  lw         $t9, 0x30($sp)
/* B3180 800B2580 03208025 */  or         $s0, $t9, $zero
/* B3184 800B2584 2728FFFF */  addiu      $t0, $t9, -1
/* B3188 800B2588 1600FFE4 */  bnez       $s0, .L800B251C
/* B318C 800B258C AFA80030 */   sw        $t0, 0x30($sp)
.L800B2590:
/* B3190 800B2590 10000014 */  b          .L800B25E4
/* B3194 800B2594 00000000 */   nop
.L800B2598:
/* B3198 800B2598 8FA90030 */  lw         $t1, 0x30($sp)
/* B319C 800B259C 01208025 */  or         $s0, $t1, $zero
/* B31A0 800B25A0 252AFFFF */  addiu      $t2, $t1, -1
/* B31A4 800B25A4 1200000F */  beqz       $s0, .L800B25E4
/* B31A8 800B25A8 AFAA0030 */   sw        $t2, 0x30($sp)
.L800B25AC:
/* B31AC 800B25AC 27A40028 */  addiu      $a0, $sp, 0x28
/* B31B0 800B25B0 8FA50034 */  lw         $a1, 0x34($sp)
/* B31B4 800B25B4 0C02C691 */  jal        func_800B1A44
/* B31B8 800B25B8 24060004 */   addiu     $a2, $zero, 4
/* B31BC 800B25BC 0C02B4DD */  jal        func_800AD374
/* B31C0 800B25C0 8FA40028 */   lw        $a0, 0x28($sp)
/* B31C4 800B25C4 8FAB0034 */  lw         $t3, 0x34($sp)
/* B31C8 800B25C8 256C0004 */  addiu      $t4, $t3, 4
/* B31CC 800B25CC AFAC0034 */  sw         $t4, 0x34($sp)
/* B31D0 800B25D0 8FAD0030 */  lw         $t5, 0x30($sp)
/* B31D4 800B25D4 01A08025 */  or         $s0, $t5, $zero
/* B31D8 800B25D8 25AEFFFF */  addiu      $t6, $t5, -1
/* B31DC 800B25DC 1600FFF3 */  bnez       $s0, .L800B25AC
/* B31E0 800B25E0 AFAE0030 */   sw        $t6, 0x30($sp)
.L800B25E4:
/* B31E4 800B25E4 0C02B4C4 */  jal        func_800AD310
/* B31E8 800B25E8 00000000 */   nop
/* B31EC 800B25EC 10000001 */  b          .L800B25F4
/* B31F0 800B25F0 00000000 */   nop
.L800B25F4:
/* B31F4 800B25F4 8FBF001C */  lw         $ra, 0x1c($sp)
/* B31F8 800B25F8 8FB00018 */  lw         $s0, 0x18($sp)
/* B31FC 800B25FC 27BD0038 */  addiu      $sp, $sp, 0x38
/* B3200 800B2600 03E00008 */  jr         $ra
/* B3204 800B2604 00000000 */   nop

glabel func_800B2608
/* B3208 800B2608 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B320C 800B260C AFBF001C */  sw         $ra, 0x1c($sp)
/* B3210 800B2610 AFB00018 */  sw         $s0, 0x18($sp)
/* B3214 800B2614 3C01801A */  lui        $at, %hi(D_801A4430)
/* B3218 800B2618 AC204430 */  sw         $zero, %lo(D_801A4430)($at)
/* B321C 800B261C 3C01801A */  lui        $at, %hi(D_801A4899)
/* B3220 800B2620 A0204899 */  sb         $zero, %lo(D_801A4899)($at)
/* B3224 800B2624 3C01801A */  lui        $at, %hi(D_801A4898)
/* B3228 800B2628 A0204898 */  sb         $zero, %lo(D_801A4898)($at)
/* B322C 800B262C 0C02CD18 */  jal        func_800B3460
/* B3230 800B2630 00000000 */   nop
/* B3234 800B2634 240E0001 */  addiu      $t6, $zero, 1
/* B3238 800B2638 3C01800D */  lui        $at, %hi(D_800CD660)
/* B323C 800B263C AC2ED660 */  sw         $t6, %lo(D_800CD660)($at)
/* B3240 800B2640 3C01801A */  lui        $at, %hi(D_801A489C)
/* B3244 800B2644 AC20489C */  sw         $zero, %lo(D_801A489C)($at)
/* B3248 800B2648 3C0F801A */  lui        $t7, %hi(D_801A4438)
/* B324C 800B264C 25EF4438 */  addiu      $t7, $t7, %lo(D_801A4438)
/* B3250 800B2650 3C01801A */  lui        $at, %hi(D_801A48A0)
/* B3254 800B2654 AC2F48A0 */  sw         $t7, %lo(D_801A48A0)($at)
/* B3258 800B2658 00008025 */  or         $s0, $zero, $zero
.L800B265C:
/* B325C 800B265C 3C04801B */  lui        $a0, %hi(D_801A8AB8)
/* B3260 800B2660 24848AB8 */  addiu      $a0, $a0, %lo(D_801A8AB8)
/* B3264 800B2664 27A50020 */  addiu      $a1, $sp, 0x20
/* B3268 800B2668 0C025D30 */  jal        func_800974C0
/* B326C 800B266C 24060001 */   addiu     $a2, $zero, 1
/* B3270 800B2670 3C18801A */  lui        $t8, %hi(D_801A4430)
/* B3274 800B2674 8F184430 */  lw         $t8, %lo(D_801A4430)($t8)
/* B3278 800B2678 8FB90020 */  lw         $t9, 0x20($sp)
/* B327C 800B267C 3C01801A */  lui        $at, %hi(D_801A4430)
/* B3280 800B2680 03194025 */  or         $t0, $t8, $t9
/* B3284 800B2684 AC284430 */  sw         $t0, %lo(D_801A4430)($at)
/* B3288 800B2688 3C09801A */  lui        $t1, %hi(D_801A4430)
/* B328C 800B268C 8D294430 */  lw         $t1, %lo(D_801A4430)($t1)
/* B3290 800B2690 312A0002 */  andi       $t2, $t1, 2
/* B3294 800B2694 11400009 */  beqz       $t2, .L800B26BC
/* B3298 800B2698 00000000 */   nop
/* B329C 800B269C 3C0B801A */  lui        $t3, %hi(D_801A4430)
/* B32A0 800B26A0 8D6B4430 */  lw         $t3, %lo(D_801A4430)($t3)
/* B32A4 800B26A4 2401FFFD */  addiu      $at, $zero, -3
/* B32A8 800B26A8 01616024 */  and        $t4, $t3, $at
/* B32AC 800B26AC 3C01801A */  lui        $at, %hi(D_801A4430)
/* B32B0 800B26B0 AC2C4430 */  sw         $t4, %lo(D_801A4430)($at)
/* B32B4 800B26B4 0C02D040 */  jal        func_800B4100
/* B32B8 800B26B8 00000000 */   nop
.L800B26BC:
/* B32BC 800B26BC 3C0D801A */  lui        $t5, %hi(D_801A4430)
/* B32C0 800B26C0 8DAD4430 */  lw         $t5, %lo(D_801A4430)($t5)
/* B32C4 800B26C4 31AE0004 */  andi       $t6, $t5, 4
/* B32C8 800B26C8 11C00009 */  beqz       $t6, .L800B26F0
/* B32CC 800B26CC 00000000 */   nop
/* B32D0 800B26D0 3C0F801A */  lui        $t7, %hi(D_801A4430)
/* B32D4 800B26D4 8DEF4430 */  lw         $t7, %lo(D_801A4430)($t7)
/* B32D8 800B26D8 2401FFFB */  addiu      $at, $zero, -5
/* B32DC 800B26DC 01E1C024 */  and        $t8, $t7, $at
/* B32E0 800B26E0 3C01801A */  lui        $at, %hi(D_801A4430)
/* B32E4 800B26E4 AC384430 */  sw         $t8, %lo(D_801A4430)($at)
/* B32E8 800B26E8 0C02D04E */  jal        func_800B4138
/* B32EC 800B26EC 00000000 */   nop
.L800B26F0:
/* B32F0 800B26F0 3C19801A */  lui        $t9, %hi(D_801A4430)
/* B32F4 800B26F4 8F394430 */  lw         $t9, %lo(D_801A4430)($t9)
/* B32F8 800B26F8 33280008 */  andi       $t0, $t9, 8
/* B32FC 800B26FC 11000009 */  beqz       $t0, .L800B2724
/* B3300 800B2700 00000000 */   nop
/* B3304 800B2704 3C09801A */  lui        $t1, %hi(D_801A4430)
/* B3308 800B2708 8D294430 */  lw         $t1, %lo(D_801A4430)($t1)
/* B330C 800B270C 2401FFF7 */  addiu      $at, $zero, -9
/* B3310 800B2710 01215024 */  and        $t2, $t1, $at
/* B3314 800B2714 3C01801A */  lui        $at, %hi(D_801A4430)
/* B3318 800B2718 AC2A4430 */  sw         $t2, %lo(D_801A4430)($at)
/* B331C 800B271C 0C02D06B */  jal        func_800B41AC
/* B3320 800B2720 00000000 */   nop
.L800B2724:
/* B3324 800B2724 3C0B801A */  lui        $t3, %hi(D_801A4430)
/* B3328 800B2728 8D6B4430 */  lw         $t3, %lo(D_801A4430)($t3)
/* B332C 800B272C 316C0010 */  andi       $t4, $t3, 0x10
/* B3330 800B2730 11800008 */  beqz       $t4, .L800B2754
/* B3334 800B2734 00000000 */   nop
/* B3338 800B2738 3C01801A */  lui        $at, %hi(D_801A4430)
/* B333C 800B273C 8C204430 */  lw         $zero, %lo(D_801A4430)($at)
/* B3340 800B2740 3C0D801A */  lui        $t5, %hi(D_801A4430)
/* B3344 800B2744 8DAD4430 */  lw         $t5, %lo(D_801A4430)($t5)
/* B3348 800B2748 3C01801A */  lui        $at, %hi(D_801A4430)
/* B334C 800B274C 31AE00EF */  andi       $t6, $t5, 0xef
/* B3350 800B2750 AC2E4430 */  sw         $t6, %lo(D_801A4430)($at)
.L800B2754:
/* B3354 800B2754 3C0F801A */  lui        $t7, %hi(D_801A4430)
/* B3358 800B2758 8DEF4430 */  lw         $t7, %lo(D_801A4430)($t7)
/* B335C 800B275C 31F80020 */  andi       $t8, $t7, 0x20
/* B3360 800B2760 13000008 */  beqz       $t8, .L800B2784
/* B3364 800B2764 00000000 */   nop
/* B3368 800B2768 3C01801A */  lui        $at, %hi(D_801A4430)
/* B336C 800B276C 8C204430 */  lw         $zero, %lo(D_801A4430)($at)
/* B3370 800B2770 3C19801A */  lui        $t9, %hi(D_801A4430)
/* B3374 800B2774 8F394430 */  lw         $t9, %lo(D_801A4430)($t9)
/* B3378 800B2778 3C01801A */  lui        $at, %hi(D_801A4430)
/* B337C 800B277C 332800DF */  andi       $t0, $t9, 0xdf
/* B3380 800B2780 AC284430 */  sw         $t0, %lo(D_801A4430)($at)
.L800B2784:
/* B3384 800B2784 1000FFB5 */  b          .L800B265C
/* B3388 800B2788 00000000 */   nop
/* B338C 800B278C 10000001 */  b          .L800B2794
/* B3390 800B2790 00000000 */   nop
.L800B2794:
/* B3394 800B2794 8FBF001C */  lw         $ra, 0x1c($sp)
/* B3398 800B2798 8FB00018 */  lw         $s0, 0x18($sp)
/* B339C 800B279C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B33A0 800B27A0 03E00008 */  jr         $ra
/* B33A4 800B27A4 00000000 */   nop
/* B33A8 800B27A8 00000000 */  nop
/* B33AC 800B27AC 00000000 */  nop
