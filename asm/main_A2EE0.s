.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A22E0
/* A2EE0 800A22E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A2EE4 800A22E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A2EE8 800A22E8 AFA40020 */  sw         $a0, 0x20($sp)
/* A2EEC 800A22EC AFA50024 */  sw         $a1, 0x24($sp)
/* A2EF0 800A22F0 AFA60028 */  sw         $a2, 0x28($sp)
/* A2EF4 800A22F4 AFA7002C */  sw         $a3, 0x2c($sp)
/* A2EF8 800A22F8 8FAE0020 */  lw         $t6, 0x20($sp)
/* A2EFC 800A22FC ADC00274 */  sw         $zero, 0x274($t6)
/* A2F00 800A2300 8FAF0020 */  lw         $t7, 0x20($sp)
/* A2F04 800A2304 ADE00278 */  sw         $zero, 0x278($t7)
/* A2F08 800A2308 8FB80020 */  lw         $t8, 0x20($sp)
/* A2F0C 800A230C AF000260 */  sw         $zero, 0x260($t8)
/* A2F10 800A2310 8FB90020 */  lw         $t9, 0x20($sp)
/* A2F14 800A2314 AF20027C */  sw         $zero, 0x27c($t9)
/* A2F18 800A2318 8FA80020 */  lw         $t0, 0x20($sp)
/* A2F1C 800A231C AD000264 */  sw         $zero, 0x264($t0)
/* A2F20 800A2320 8FA90020 */  lw         $t1, 0x20($sp)
/* A2F24 800A2324 AD200268 */  sw         $zero, 0x268($t1)
/* A2F28 800A2328 8FAA0020 */  lw         $t2, 0x20($sp)
/* A2F2C 800A232C AD40026C */  sw         $zero, 0x26c($t2)
/* A2F30 800A2330 8FAB0020 */  lw         $t3, 0x20($sp)
/* A2F34 800A2334 AD600270 */  sw         $zero, 0x270($t3)
/* A2F38 800A2338 8FAD0020 */  lw         $t5, 0x20($sp)
/* A2F3C 800A233C 240C0001 */  addiu      $t4, $zero, 1
/* A2F40 800A2340 A5AC0000 */  sh         $t4, ($t5)
/* A2F44 800A2344 8FAF0020 */  lw         $t7, 0x20($sp)
/* A2F48 800A2348 240E0004 */  addiu      $t6, $zero, 4
/* A2F4C 800A234C A5EE0020 */  sh         $t6, 0x20($t7)
/* A2F50 800A2350 8FB80020 */  lw         $t8, 0x20($sp)
/* A2F54 800A2354 24060008 */  addiu      $a2, $zero, 8
/* A2F58 800A2358 27040040 */  addiu      $a0, $t8, 0x40
/* A2F5C 800A235C 0C02B42C */  jal        func_800AD0B0
/* A2F60 800A2360 27050058 */   addiu     $a1, $t8, 0x58
/* A2F64 800A2364 8FB90020 */  lw         $t9, 0x20($sp)
/* A2F68 800A2368 24060008 */  addiu      $a2, $zero, 8
/* A2F6C 800A236C 27240078 */  addiu      $a0, $t9, 0x78
/* A2F70 800A2370 0C02B42C */  jal        func_800AD0B0
/* A2F74 800A2374 27250090 */   addiu     $a1, $t9, 0x90
/* A2F78 800A2378 0C02DA14 */  jal        func_800B6850
/* A2F7C 800A237C 240400FE */   addiu     $a0, $zero, 0xfe
/* A2F80 800A2380 93A8002F */  lbu        $t0, 0x2f($sp)
/* A2F84 800A2384 3C0A800D */  lui        $t2, %hi(D_800CC2F0)
/* A2F88 800A2388 254AC2F0 */  addiu      $t2, $t2, %lo(D_800CC2F0)
/* A2F8C 800A238C 00084880 */  sll        $t1, $t0, 2
/* A2F90 800A2390 01284821 */  addu       $t1, $t1, $t0
/* A2F94 800A2394 00094900 */  sll        $t1, $t1, 4
/* A2F98 800A2398 0C028E38 */  jal        func_800A38E0
/* A2F9C 800A239C 012A2021 */   addu      $a0, $t1, $t2
/* A2FA0 800A23A0 0C027EB4 */  jal        func_8009FAD0
/* A2FA4 800A23A4 24040001 */   addiu     $a0, $zero, 1
/* A2FA8 800A23A8 8FA50020 */  lw         $a1, 0x20($sp)
/* A2FAC 800A23AC 24040004 */  addiu      $a0, $zero, 4
/* A2FB0 800A23B0 2406029B */  addiu      $a2, $zero, 0x29b
/* A2FB4 800A23B4 0C02AD08 */  jal        func_800AB420
/* A2FB8 800A23B8 24A50040 */   addiu     $a1, $a1, 0x40
/* A2FBC 800A23BC 8FA50020 */  lw         $a1, 0x20($sp)
/* A2FC0 800A23C0 24040009 */  addiu      $a0, $zero, 9
/* A2FC4 800A23C4 2406029C */  addiu      $a2, $zero, 0x29c
/* A2FC8 800A23C8 0C02AD08 */  jal        func_800AB420
/* A2FCC 800A23CC 24A50040 */   addiu     $a1, $a1, 0x40
/* A2FD0 800A23D0 8FA50020 */  lw         $a1, 0x20($sp)
/* A2FD4 800A23D4 2404000E */  addiu      $a0, $zero, 0xe
/* A2FD8 800A23D8 2406029D */  addiu      $a2, $zero, 0x29d
/* A2FDC 800A23DC 0C02AD08 */  jal        func_800AB420
/* A2FE0 800A23E0 24A50040 */   addiu     $a1, $a1, 0x40
/* A2FE4 800A23E4 8FA40020 */  lw         $a0, 0x20($sp)
/* A2FE8 800A23E8 2405029A */  addiu      $a1, $zero, 0x29a
/* A2FEC 800A23EC 93A60033 */  lbu        $a2, 0x33($sp)
/* A2FF0 800A23F0 0C02C494 */  jal        func_800B1250
/* A2FF4 800A23F4 24840040 */   addiu     $a0, $a0, 0x40
/* A2FF8 800A23F8 8FAB0020 */  lw         $t3, 0x20($sp)
/* A2FFC 800A23FC 8FAC0024 */  lw         $t4, 0x24($sp)
/* A3000 800A2400 8FAD0028 */  lw         $t5, 0x28($sp)
/* A3004 800A2404 3C06800A */  lui        $a2, %hi(func_800A2588)
/* A3008 800A2408 24C62588 */  addiu      $a2, $a2, %lo(func_800A2588)
/* A300C 800A240C 24050004 */  addiu      $a1, $zero, 4
/* A3010 800A2410 256400B0 */  addiu      $a0, $t3, 0xb0
/* A3014 800A2414 01603825 */  or         $a3, $t3, $zero
/* A3018 800A2418 AFAC0010 */  sw         $t4, 0x10($sp)
/* A301C 800A241C 0C0268D0 */  jal        func_8009A340
/* A3020 800A2420 AFAD0014 */   sw        $t5, 0x14($sp)
/* A3024 800A2424 8FA40020 */  lw         $a0, 0x20($sp)
/* A3028 800A2428 0C02E4BC */  jal        func_800B92F0
/* A302C 800A242C 248400B0 */   addiu     $a0, $a0, 0xb0
/* A3030 800A2430 10000001 */  b          .L800A2438
/* A3034 800A2434 00000000 */   nop
.L800A2438:
/* A3038 800A2438 8FBF001C */  lw         $ra, 0x1c($sp)
/* A303C 800A243C 27BD0020 */  addiu      $sp, $sp, 0x20
/* A3040 800A2440 03E00008 */  jr         $ra
/* A3044 800A2444 00000000 */   nop

glabel func_800A2448
/* A3048 800A2448 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A304C 800A244C AFBF0014 */  sw         $ra, 0x14($sp)
/* A3050 800A2450 AFA40020 */  sw         $a0, 0x20($sp)
/* A3054 800A2454 AFA50024 */  sw         $a1, 0x24($sp)
/* A3058 800A2458 AFA60028 */  sw         $a2, 0x28($sp)
/* A305C 800A245C 0C026DB4 */  jal        func_8009B6D0
/* A3060 800A2460 24040001 */   addiu     $a0, $zero, 1
/* A3064 800A2464 AFA2001C */  sw         $v0, 0x1c($sp)
/* A3068 800A2468 8FAE0028 */  lw         $t6, 0x28($sp)
/* A306C 800A246C 8FAF0024 */  lw         $t7, 0x24($sp)
/* A3070 800A2470 ADEE0004 */  sw         $t6, 4($t7)
/* A3074 800A2474 8FB80020 */  lw         $t8, 0x20($sp)
/* A3078 800A2478 8FA80024 */  lw         $t0, 0x24($sp)
/* A307C 800A247C 8F190260 */  lw         $t9, 0x260($t8)
/* A3080 800A2480 AD190000 */  sw         $t9, ($t0)
/* A3084 800A2484 8FA90024 */  lw         $t1, 0x24($sp)
/* A3088 800A2488 8FAA0020 */  lw         $t2, 0x20($sp)
/* A308C 800A248C AD490260 */  sw         $t1, 0x260($t2)
/* A3090 800A2490 0C026DB4 */  jal        func_8009B6D0
/* A3094 800A2494 8FA4001C */   lw        $a0, 0x1c($sp)
/* A3098 800A2498 10000001 */  b          .L800A24A0
/* A309C 800A249C 00000000 */   nop
.L800A24A0:
/* A30A0 800A24A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A30A4 800A24A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* A30A8 800A24A8 03E00008 */  jr         $ra
/* A30AC 800A24AC 00000000 */   nop

glabel func_800A24B0
/* A30B0 800A24B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A30B4 800A24B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A30B8 800A24B8 AFA40028 */  sw         $a0, 0x28($sp)
/* A30BC 800A24BC AFA5002C */  sw         $a1, 0x2c($sp)
/* A30C0 800A24C0 8FAE0028 */  lw         $t6, 0x28($sp)
/* A30C4 800A24C4 8DCF0260 */  lw         $t7, 0x260($t6)
/* A30C8 800A24C8 AFAF0024 */  sw         $t7, 0x24($sp)
/* A30CC 800A24CC AFA00020 */  sw         $zero, 0x20($sp)
/* A30D0 800A24D0 0C026DB4 */  jal        func_8009B6D0
/* A30D4 800A24D4 24040001 */   addiu     $a0, $zero, 1
/* A30D8 800A24D8 AFA2001C */  sw         $v0, 0x1c($sp)
/* A30DC 800A24DC 8FB80024 */  lw         $t8, 0x24($sp)
/* A30E0 800A24E0 1300001B */  beqz       $t8, .L800A2550
/* A30E4 800A24E4 00000000 */   nop
.L800A24E8:
/* A30E8 800A24E8 8FB90024 */  lw         $t9, 0x24($sp)
/* A30EC 800A24EC 8FA8002C */  lw         $t0, 0x2c($sp)
/* A30F0 800A24F0 1728000F */  bne        $t9, $t0, .L800A2530
/* A30F4 800A24F4 00000000 */   nop
/* A30F8 800A24F8 8FA90020 */  lw         $t1, 0x20($sp)
/* A30FC 800A24FC 11200006 */  beqz       $t1, .L800A2518
/* A3100 800A2500 00000000 */   nop
/* A3104 800A2504 8FAA002C */  lw         $t2, 0x2c($sp)
/* A3108 800A2508 8FAC0020 */  lw         $t4, 0x20($sp)
/* A310C 800A250C 8D4B0000 */  lw         $t3, ($t2)
/* A3110 800A2510 10000005 */  b          .L800A2528
/* A3114 800A2514 AD8B0000 */   sw        $t3, ($t4)
.L800A2518:
/* A3118 800A2518 8FAD002C */  lw         $t5, 0x2c($sp)
/* A311C 800A251C 8FAF0028 */  lw         $t7, 0x28($sp)
/* A3120 800A2520 8DAE0000 */  lw         $t6, ($t5)
/* A3124 800A2524 ADEE0260 */  sw         $t6, 0x260($t7)
.L800A2528:
/* A3128 800A2528 10000009 */  b          .L800A2550
/* A312C 800A252C 00000000 */   nop
.L800A2530:
/* A3130 800A2530 8FB80024 */  lw         $t8, 0x24($sp)
/* A3134 800A2534 AFB80020 */  sw         $t8, 0x20($sp)
/* A3138 800A2538 8FB90024 */  lw         $t9, 0x24($sp)
/* A313C 800A253C 8F280000 */  lw         $t0, ($t9)
/* A3140 800A2540 AFA80024 */  sw         $t0, 0x24($sp)
/* A3144 800A2544 8FA90024 */  lw         $t1, 0x24($sp)
/* A3148 800A2548 1520FFE7 */  bnez       $t1, .L800A24E8
/* A314C 800A254C 00000000 */   nop
.L800A2550:
/* A3150 800A2550 0C026DB4 */  jal        func_8009B6D0
/* A3154 800A2554 8FA4001C */   lw        $a0, 0x1c($sp)
/* A3158 800A2558 10000001 */  b          .L800A2560
/* A315C 800A255C 00000000 */   nop
.L800A2560:
/* A3160 800A2560 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3164 800A2564 27BD0028 */  addiu      $sp, $sp, 0x28
/* A3168 800A2568 03E00008 */  jr         $ra
/* A316C 800A256C 00000000 */   nop

glabel func_800A2570
/* A3170 800A2570 03E00008 */  jr         $ra
/* A3174 800A2574 24820078 */   addiu     $v0, $a0, 0x78

glabel func_800A2578
/* A3178 800A2578 03E00008 */  jr         $ra
/* A317C 800A257C 00000000 */   nop

glabel func_800A2580
/* A3180 800A2580 03E00008 */  jr         $ra
/* A3184 800A2584 00000000 */   nop

glabel func_800A2588
/* A3188 800A2588 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A318C 800A258C AFBF001C */  sw         $ra, 0x1c($sp)
/* A3190 800A2590 AFA40030 */  sw         $a0, 0x30($sp)
/* A3194 800A2594 AFB00018 */  sw         $s0, 0x18($sp)
/* A3198 800A2598 8FAE0030 */  lw         $t6, 0x30($sp)
/* A319C 800A259C AFAE0028 */  sw         $t6, 0x28($sp)
.L800A25A0:
/* A31A0 800A25A0 8FA40028 */  lw         $a0, 0x28($sp)
/* A31A4 800A25A4 27A5002C */  addiu      $a1, $sp, 0x2c
/* A31A8 800A25A8 24060001 */  addiu      $a2, $zero, 1
/* A31AC 800A25AC 0C025D30 */  jal        func_800974C0
/* A31B0 800A25B0 24840040 */   addiu     $a0, $a0, 0x40
/* A31B4 800A25B4 8FB0002C */  lw         $s0, 0x2c($sp)
/* A31B8 800A25B8 2401029A */  addiu      $at, $zero, 0x29a
/* A31BC 800A25BC 1201000C */  beq        $s0, $at, .L800A25F0
/* A31C0 800A25C0 00000000 */   nop
/* A31C4 800A25C4 2401029B */  addiu      $at, $zero, 0x29b
/* A31C8 800A25C8 1201000D */  beq        $s0, $at, .L800A2600
/* A31CC 800A25CC 00000000 */   nop
/* A31D0 800A25D0 2401029C */  addiu      $at, $zero, 0x29c
/* A31D4 800A25D4 1201000E */  beq        $s0, $at, .L800A2610
/* A31D8 800A25D8 00000000 */   nop
/* A31DC 800A25DC 2401029D */  addiu      $at, $zero, 0x29d
/* A31E0 800A25E0 1201000F */  beq        $s0, $at, .L800A2620
/* A31E4 800A25E4 00000000 */   nop
/* A31E8 800A25E8 1000001D */  b          .L800A2660
/* A31EC 800A25EC 00000000 */   nop
.L800A25F0:
/* A31F0 800A25F0 0C0289A1 */  jal        func_800A2684
/* A31F4 800A25F4 8FA40028 */   lw        $a0, 0x28($sp)
/* A31F8 800A25F8 10000019 */  b          .L800A2660
/* A31FC 800A25FC 00000000 */   nop
.L800A2600:
/* A3200 800A2600 0C0289EF */  jal        func_800A27BC
/* A3204 800A2604 8FA40028 */   lw        $a0, 0x28($sp)
/* A3208 800A2608 10000015 */  b          .L800A2660
/* A320C 800A260C 00000000 */   nop
.L800A2610:
/* A3210 800A2610 0C028A5F */  jal        func_800A297C
/* A3214 800A2614 8FA40028 */   lw        $a0, 0x28($sp)
/* A3218 800A2618 10000011 */  b          .L800A2660
/* A321C 800A261C 00000000 */   nop
.L800A2620:
/* A3220 800A2620 8FAF0028 */  lw         $t7, 0x28($sp)
/* A3224 800A2624 8DF80260 */  lw         $t8, 0x260($t7)
/* A3228 800A2628 1300000B */  beqz       $t8, .L800A2658
/* A322C 800A262C AFB80024 */   sw        $t8, 0x24($sp)
.L800A2630:
/* A3230 800A2630 8FB90024 */  lw         $t9, 0x24($sp)
/* A3234 800A2634 8FA50028 */  lw         $a1, 0x28($sp)
/* A3238 800A2638 00003025 */  or         $a2, $zero, $zero
/* A323C 800A263C 8F240004 */  lw         $a0, 4($t9)
/* A3240 800A2640 0C025C40 */  jal        func_80097100
/* A3244 800A2644 24A50020 */   addiu     $a1, $a1, 0x20
/* A3248 800A2648 8FA80024 */  lw         $t0, 0x24($sp)
/* A324C 800A264C 8D090000 */  lw         $t1, ($t0)
/* A3250 800A2650 1520FFF7 */  bnez       $t1, .L800A2630
/* A3254 800A2654 AFA90024 */   sw        $t1, 0x24($sp)
.L800A2658:
/* A3258 800A2658 10000001 */  b          .L800A2660
/* A325C 800A265C 00000000 */   nop
.L800A2660:
/* A3260 800A2660 1000FFCF */  b          .L800A25A0
/* A3264 800A2664 00000000 */   nop
/* A3268 800A2668 10000001 */  b          .L800A2670
/* A326C 800A266C 00000000 */   nop
.L800A2670:
/* A3270 800A2670 8FBF001C */  lw         $ra, 0x1c($sp)
/* A3274 800A2674 8FB00018 */  lw         $s0, 0x18($sp)
/* A3278 800A2678 27BD0030 */  addiu      $sp, $sp, 0x30
/* A327C 800A267C 03E00008 */  jr         $ra
/* A3280 800A2680 00000000 */   nop

glabel func_800A2684
/* A3284 800A2684 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A3288 800A2688 AFBF0014 */  sw         $ra, 0x14($sp)
/* A328C 800A268C AFA40030 */  sw         $a0, 0x30($sp)
/* A3290 800A2690 AFA0001C */  sw         $zero, 0x1c($sp)
/* A3294 800A2694 AFA00018 */  sw         $zero, 0x18($sp)
/* A3298 800A2698 8FAE0030 */  lw         $t6, 0x30($sp)
/* A329C 800A269C 8DCF027C */  lw         $t7, 0x27c($t6)
/* A32A0 800A26A0 25F80001 */  addiu      $t8, $t7, 1
/* A32A4 800A26A4 ADD8027C */  sw         $t8, 0x27c($t6)
/* A32A8 800A26A8 8FA40030 */  lw         $a0, 0x30($sp)
/* A32AC 800A26AC 27A5002C */  addiu      $a1, $sp, 0x2c
/* A32B0 800A26B0 00003025 */  or         $a2, $zero, $zero
/* A32B4 800A26B4 0C025D30 */  jal        func_800974C0
/* A32B8 800A26B8 24840078 */   addiu     $a0, $a0, 0x78
/* A32BC 800A26BC 2401FFFF */  addiu      $at, $zero, -1
/* A32C0 800A26C0 1041000C */  beq        $v0, $at, .L800A26F4
/* A32C4 800A26C4 00000000 */   nop
.L800A26C8:
/* A32C8 800A26C8 8FA40030 */  lw         $a0, 0x30($sp)
/* A32CC 800A26CC 0C028B14 */  jal        func_800A2C50
/* A32D0 800A26D0 8FA5002C */   lw        $a1, 0x2c($sp)
/* A32D4 800A26D4 8FA40030 */  lw         $a0, 0x30($sp)
/* A32D8 800A26D8 27A5002C */  addiu      $a1, $sp, 0x2c
/* A32DC 800A26DC 00003025 */  or         $a2, $zero, $zero
/* A32E0 800A26E0 0C025D30 */  jal        func_800974C0
/* A32E4 800A26E4 24840078 */   addiu     $a0, $a0, 0x78
/* A32E8 800A26E8 2401FFFF */  addiu      $at, $zero, -1
/* A32EC 800A26EC 1441FFF6 */  bne        $v0, $at, .L800A26C8
/* A32F0 800A26F0 00000000 */   nop
.L800A26F4:
/* A32F4 800A26F4 8FB90030 */  lw         $t9, 0x30($sp)
/* A32F8 800A26F8 8F280280 */  lw         $t0, 0x280($t9)
/* A32FC 800A26FC 11000008 */  beqz       $t0, .L800A2720
/* A3300 800A2700 00000000 */   nop
/* A3304 800A2704 8F290274 */  lw         $t1, 0x274($t9)
/* A3308 800A2708 11200005 */  beqz       $t1, .L800A2720
/* A330C 800A270C 00000000 */   nop
/* A3310 800A2710 0C028BC3 */  jal        func_800A2F0C
/* A3314 800A2714 8FA40030 */   lw        $a0, 0x30($sp)
/* A3318 800A2718 10000015 */  b          .L800A2770
/* A331C 800A271C 00000000 */   nop
.L800A2720:
/* A3320 800A2720 8FAA0030 */  lw         $t2, 0x30($sp)
/* A3324 800A2724 8D4B0274 */  lw         $t3, 0x274($t2)
/* A3328 800A2728 8D4F0278 */  lw         $t7, 0x278($t2)
/* A332C 800A272C 2D6C0001 */  sltiu      $t4, $t3, 1
/* A3330 800A2730 000C6840 */  sll        $t5, $t4, 1
/* A3334 800A2734 2DF80001 */  sltiu      $t8, $t7, 1
/* A3338 800A2738 01B87025 */  or         $t6, $t5, $t8
/* A333C 800A273C AFAE0020 */  sw         $t6, 0x20($sp)
/* A3340 800A2740 8FA40030 */  lw         $a0, 0x30($sp)
/* A3344 800A2744 27A5001C */  addiu      $a1, $sp, 0x1c
/* A3348 800A2748 27A60018 */  addiu      $a2, $sp, 0x18
/* A334C 800A274C 0C028BDB */  jal        func_800A2F6C
/* A3350 800A2750 8FA70020 */   lw        $a3, 0x20($sp)
/* A3354 800A2754 8FA80020 */  lw         $t0, 0x20($sp)
/* A3358 800A2758 10480005 */  beq        $v0, $t0, .L800A2770
/* A335C 800A275C 00000000 */   nop
/* A3360 800A2760 8FA40030 */  lw         $a0, 0x30($sp)
/* A3364 800A2764 8FA5001C */  lw         $a1, 0x1c($sp)
/* A3368 800A2768 0C028B5C */  jal        func_800A2D70
/* A336C 800A276C 8FA60018 */   lw        $a2, 0x18($sp)
.L800A2770:
/* A3370 800A2770 8FB90030 */  lw         $t9, 0x30($sp)
/* A3374 800A2774 8F290260 */  lw         $t1, 0x260($t9)
/* A3378 800A2778 1120000A */  beqz       $t1, .L800A27A4
/* A337C 800A277C AFA90028 */   sw        $t1, 0x28($sp)
.L800A2780:
/* A3380 800A2780 8FAB0028 */  lw         $t3, 0x28($sp)
/* A3384 800A2784 8FA50030 */  lw         $a1, 0x30($sp)
/* A3388 800A2788 00003025 */  or         $a2, $zero, $zero
/* A338C 800A278C 0C025C40 */  jal        func_80097100
/* A3390 800A2790 8D640004 */   lw        $a0, 4($t3)
/* A3394 800A2794 8FAC0028 */  lw         $t4, 0x28($sp)
/* A3398 800A2798 8D8A0000 */  lw         $t2, ($t4)
/* A339C 800A279C 1540FFF8 */  bnez       $t2, .L800A2780
/* A33A0 800A27A0 AFAA0028 */   sw        $t2, 0x28($sp)
.L800A27A4:
/* A33A4 800A27A4 10000001 */  b          .L800A27AC
/* A33A8 800A27A8 00000000 */   nop
.L800A27AC:
/* A33AC 800A27AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A33B0 800A27B0 27BD0030 */  addiu      $sp, $sp, 0x30
/* A33B4 800A27B4 03E00008 */  jr         $ra
/* A33B8 800A27B8 00000000 */   nop

glabel func_800A27BC
/* A33BC 800A27BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A33C0 800A27C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A33C4 800A27C4 AFA40030 */  sw         $a0, 0x30($sp)
/* A33C8 800A27C8 AFA00028 */  sw         $zero, 0x28($sp)
/* A33CC 800A27CC AFA00024 */  sw         $zero, 0x24($sp)
/* A33D0 800A27D0 8FAE0030 */  lw         $t6, 0x30($sp)
/* A33D4 800A27D4 8DCF0274 */  lw         $t7, 0x274($t6)
/* A33D8 800A27D8 11E00003 */  beqz       $t7, .L800A27E8
/* A33DC 800A27DC 00000000 */   nop
/* A33E0 800A27E0 10000007 */  b          .L800A2800
/* A33E4 800A27E4 00000000 */   nop
.L800A27E8:
/* A33E8 800A27E8 3C04800D */  lui        $a0, %hi(D_800D2EB0)
/* A33EC 800A27EC 3C05800D */  lui        $a1, %hi(D_800D2EC0)
/* A33F0 800A27F0 24A52EC0 */  addiu      $a1, $a1, %lo(D_800D2EC0)
/* A33F4 800A27F4 24842EB0 */  addiu      $a0, $a0, %lo(D_800D2EB0)
/* A33F8 800A27F8 0C02C480 */  jal        func_800B1200
/* A33FC 800A27FC 24060110 */   addiu     $a2, $zero, 0x110
.L800A2800:
/* A3400 800A2800 8FB80030 */  lw         $t8, 0x30($sp)
/* A3404 800A2804 8F190274 */  lw         $t9, 0x274($t8)
/* A3408 800A2808 AFB9002C */  sw         $t9, 0x2c($sp)
/* A340C 800A280C 8FA80030 */  lw         $t0, 0x30($sp)
/* A3410 800A2810 AD000274 */  sw         $zero, 0x274($t0)
/* A3414 800A2814 8FA9002C */  lw         $t1, 0x2c($sp)
/* A3418 800A2818 8D2A0004 */  lw         $t2, 4($t1)
/* A341C 800A281C 314B0010 */  andi       $t3, $t2, 0x10
/* A3420 800A2820 11600034 */  beqz       $t3, .L800A28F4
/* A3424 800A2824 00000000 */   nop
/* A3428 800A2828 0C02BA34 */  jal        func_800AE8D0
/* A342C 800A282C 25240010 */   addiu     $a0, $t1, 0x10
/* A3430 800A2830 10400030 */  beqz       $v0, .L800A28F4
/* A3434 800A2834 00000000 */   nop
/* A3438 800A2838 8FAC002C */  lw         $t4, 0x2c($sp)
/* A343C 800A283C 8D8D0004 */  lw         $t5, 4($t4)
/* A3440 800A2840 35AE0020 */  ori        $t6, $t5, 0x20
/* A3444 800A2844 AD8E0004 */  sw         $t6, 4($t4)
/* A3448 800A2848 8FAF002C */  lw         $t7, 0x2c($sp)
/* A344C 800A284C 25F80060 */  addiu      $t8, $t7, 0x60
/* A3450 800A2850 0C02BA84 */  jal        func_800AEA10
/* A3454 800A2854 AFB8001C */   sw        $t8, 0x1c($sp)
/* A3458 800A2858 8FB9002C */  lw         $t9, 0x2c($sp)
/* A345C 800A285C 8FAD001C */  lw         $t5, 0x1c($sp)
/* A3460 800A2860 8F29005C */  lw         $t1, 0x5c($t9)
/* A3464 800A2864 8F280058 */  lw         $t0, 0x58($t9)
/* A3468 800A2868 8DAF0004 */  lw         $t7, 4($t5)
/* A346C 800A286C 8DAE0000 */  lw         $t6, ($t5)
/* A3470 800A2870 01A0C025 */  or         $t8, $t5, $zero
/* A3474 800A2874 0069082B */  sltu       $at, $v1, $t1
/* A3478 800A2878 00695823 */  subu       $t3, $v1, $t1
/* A347C 800A287C 00485023 */  subu       $t2, $v0, $t0
/* A3480 800A2880 01415023 */  subu       $t2, $t2, $at
/* A3484 800A2884 016F6821 */  addu       $t5, $t3, $t7
/* A3488 800A2888 01AF082B */  sltu       $at, $t5, $t7
/* A348C 800A288C 002A6021 */  addu       $t4, $at, $t2
/* A3490 800A2890 018E6021 */  addu       $t4, $t4, $t6
/* A3494 800A2894 AF0C0000 */  sw         $t4, ($t8)
/* A3498 800A2898 AF0D0004 */  sw         $t5, 4($t8)
/* A349C 800A289C 8FB9002C */  lw         $t9, 0x2c($sp)
/* A34A0 800A28A0 24010003 */  addiu      $at, $zero, 3
/* A34A4 800A28A4 8F280008 */  lw         $t0, 8($t9)
/* A34A8 800A28A8 31090007 */  andi       $t1, $t0, 7
/* A34AC 800A28AC 1521000F */  bne        $t1, $at, .L800A28EC
/* A34B0 800A28B0 00000000 */   nop
/* A34B4 800A28B4 8FAA0030 */  lw         $t2, 0x30($sp)
/* A34B8 800A28B8 8FAE002C */  lw         $t6, 0x2c($sp)
/* A34BC 800A28BC 8D4B0268 */  lw         $t3, 0x268($t2)
/* A34C0 800A28C0 ADCB0000 */  sw         $t3, ($t6)
/* A34C4 800A28C4 8FAF002C */  lw         $t7, 0x2c($sp)
/* A34C8 800A28C8 8FAC0030 */  lw         $t4, 0x30($sp)
/* A34CC 800A28CC AD8F0268 */  sw         $t7, 0x268($t4)
/* A34D0 800A28D0 8FAD0030 */  lw         $t5, 0x30($sp)
/* A34D4 800A28D4 8DB80270 */  lw         $t8, 0x270($t5)
/* A34D8 800A28D8 17000004 */  bnez       $t8, .L800A28EC
/* A34DC 800A28DC 00000000 */   nop
/* A34E0 800A28E0 8FB9002C */  lw         $t9, 0x2c($sp)
/* A34E4 800A28E4 8FA80030 */  lw         $t0, 0x30($sp)
/* A34E8 800A28E8 AD190270 */  sw         $t9, 0x270($t0)
.L800A28EC:
/* A34EC 800A28EC 10000009 */  b          .L800A2914
/* A34F0 800A28F0 00000000 */   nop
.L800A28F4:
/* A34F4 800A28F4 8FA9002C */  lw         $t1, 0x2c($sp)
/* A34F8 800A28F8 2401FFFD */  addiu      $at, $zero, -3
/* A34FC 800A28FC 8D2A0004 */  lw         $t2, 4($t1)
/* A3500 800A2900 01415824 */  and        $t3, $t2, $at
/* A3504 800A2904 AD2B0004 */  sw         $t3, 4($t1)
/* A3508 800A2908 8FA40030 */  lw         $a0, 0x30($sp)
/* A350C 800A290C 0C028AC3 */  jal        func_800A2B0C
/* A3510 800A2910 8FA5002C */   lw        $a1, 0x2c($sp)
.L800A2914:
/* A3514 800A2914 8FAE0030 */  lw         $t6, 0x30($sp)
/* A3518 800A2918 8DCF0274 */  lw         $t7, 0x274($t6)
/* A351C 800A291C 8DD80278 */  lw         $t8, 0x278($t6)
/* A3520 800A2920 2DEC0001 */  sltiu      $t4, $t7, 1
/* A3524 800A2924 000C6840 */  sll        $t5, $t4, 1
/* A3528 800A2928 2F190001 */  sltiu      $t9, $t8, 1
/* A352C 800A292C 01B94025 */  or         $t0, $t5, $t9
/* A3530 800A2930 AFA80020 */  sw         $t0, 0x20($sp)
/* A3534 800A2934 8FA40030 */  lw         $a0, 0x30($sp)
/* A3538 800A2938 27A50028 */  addiu      $a1, $sp, 0x28
/* A353C 800A293C 27A60024 */  addiu      $a2, $sp, 0x24
/* A3540 800A2940 0C028BDB */  jal        func_800A2F6C
/* A3544 800A2944 8FA70020 */   lw        $a3, 0x20($sp)
/* A3548 800A2948 8FAA0020 */  lw         $t2, 0x20($sp)
/* A354C 800A294C 104A0005 */  beq        $v0, $t2, .L800A2964
/* A3550 800A2950 00000000 */   nop
/* A3554 800A2954 8FA40030 */  lw         $a0, 0x30($sp)
/* A3558 800A2958 8FA50028 */  lw         $a1, 0x28($sp)
/* A355C 800A295C 0C028B5C */  jal        func_800A2D70
/* A3560 800A2960 8FA60024 */   lw        $a2, 0x24($sp)
.L800A2964:
/* A3564 800A2964 10000001 */  b          .L800A296C
/* A3568 800A2968 00000000 */   nop
.L800A296C:
/* A356C 800A296C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3570 800A2970 27BD0030 */  addiu      $sp, $sp, 0x30
/* A3574 800A2974 03E00008 */  jr         $ra
/* A3578 800A2978 00000000 */   nop

glabel func_800A297C
/* A357C 800A297C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A3580 800A2980 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3584 800A2984 AFA40028 */  sw         $a0, 0x28($sp)
/* A3588 800A2988 AFA00020 */  sw         $zero, 0x20($sp)
/* A358C 800A298C AFA0001C */  sw         $zero, 0x1c($sp)
/* A3590 800A2990 8FAE0028 */  lw         $t6, 0x28($sp)
/* A3594 800A2994 8DCF0278 */  lw         $t7, 0x278($t6)
/* A3598 800A2998 11E00003 */  beqz       $t7, .L800A29A8
/* A359C 800A299C 00000000 */   nop
/* A35A0 800A29A0 10000007 */  b          .L800A29C0
/* A35A4 800A29A4 00000000 */   nop
.L800A29A8:
/* A35A8 800A29A8 3C04800D */  lui        $a0, %hi(D_800D2ED4)
/* A35AC 800A29AC 3C05800D */  lui        $a1, %hi(D_800D2EE4)
/* A35B0 800A29B0 24A52EE4 */  addiu      $a1, $a1, %lo(D_800D2EE4)
/* A35B4 800A29B4 24842ED4 */  addiu      $a0, $a0, %lo(D_800D2ED4)
/* A35B8 800A29B8 0C02C480 */  jal        func_800B1200
/* A35BC 800A29BC 2406013D */   addiu     $a2, $zero, 0x13d
.L800A29C0:
/* A35C0 800A29C0 8FB80028 */  lw         $t8, 0x28($sp)
/* A35C4 800A29C4 24010001 */  addiu      $at, $zero, 1
/* A35C8 800A29C8 8F190278 */  lw         $t9, 0x278($t8)
/* A35CC 800A29CC 8F280010 */  lw         $t0, 0x10($t9)
/* A35D0 800A29D0 15010003 */  bne        $t0, $at, .L800A29E0
/* A35D4 800A29D4 00000000 */   nop
/* A35D8 800A29D8 10000007 */  b          .L800A29F8
/* A35DC 800A29DC 00000000 */   nop
.L800A29E0:
/* A35E0 800A29E0 3C04800D */  lui        $a0, %hi(D_800D2EF8)
/* A35E4 800A29E4 3C05800D */  lui        $a1, %hi(D_800D2F24)
/* A35E8 800A29E8 24A52F24 */  addiu      $a1, $a1, %lo(D_800D2F24)
/* A35EC 800A29EC 24842EF8 */  addiu      $a0, $a0, %lo(D_800D2EF8)
/* A35F0 800A29F0 0C02C480 */  jal        func_800B1200
/* A35F4 800A29F4 2406013E */   addiu     $a2, $zero, 0x13e
.L800A29F8:
/* A35F8 800A29F8 8FA90028 */  lw         $t1, 0x28($sp)
/* A35FC 800A29FC 8D2A0278 */  lw         $t2, 0x278($t1)
/* A3600 800A2A00 AFAA0024 */  sw         $t2, 0x24($sp)
/* A3604 800A2A04 8FAB0028 */  lw         $t3, 0x28($sp)
/* A3608 800A2A08 AD600278 */  sw         $zero, 0x278($t3)
/* A360C 800A2A0C 8FAC0024 */  lw         $t4, 0x24($sp)
/* A3610 800A2A10 2401FFFE */  addiu      $at, $zero, -2
/* A3614 800A2A14 8D8D0004 */  lw         $t5, 4($t4)
/* A3618 800A2A18 01A17024 */  and        $t6, $t5, $at
/* A361C 800A2A1C AD8E0004 */  sw         $t6, 4($t4)
/* A3620 800A2A20 8FA40028 */  lw         $a0, 0x28($sp)
/* A3624 800A2A24 0C028AC3 */  jal        func_800A2B0C
/* A3628 800A2A28 8FA50024 */   lw        $a1, 0x24($sp)
/* A362C 800A2A2C 8FAF0028 */  lw         $t7, 0x28($sp)
/* A3630 800A2A30 8DF80274 */  lw         $t8, 0x274($t7)
/* A3634 800A2A34 8DE90278 */  lw         $t1, 0x278($t7)
/* A3638 800A2A38 2F190001 */  sltiu      $t9, $t8, 1
/* A363C 800A2A3C 00194040 */  sll        $t0, $t9, 1
/* A3640 800A2A40 2D2A0001 */  sltiu      $t2, $t1, 1
/* A3644 800A2A44 010A5825 */  or         $t3, $t0, $t2
/* A3648 800A2A48 AFAB0018 */  sw         $t3, 0x18($sp)
/* A364C 800A2A4C 8FA40028 */  lw         $a0, 0x28($sp)
/* A3650 800A2A50 27A50020 */  addiu      $a1, $sp, 0x20
/* A3654 800A2A54 27A6001C */  addiu      $a2, $sp, 0x1c
/* A3658 800A2A58 0C028BDB */  jal        func_800A2F6C
/* A365C 800A2A5C 8FA70018 */   lw        $a3, 0x18($sp)
/* A3660 800A2A60 8FAD0018 */  lw         $t5, 0x18($sp)
/* A3664 800A2A64 104D0005 */  beq        $v0, $t5, .L800A2A7C
/* A3668 800A2A68 00000000 */   nop
/* A366C 800A2A6C 8FA40028 */  lw         $a0, 0x28($sp)
/* A3670 800A2A70 8FA50020 */  lw         $a1, 0x20($sp)
/* A3674 800A2A74 0C028B5C */  jal        func_800A2D70
/* A3678 800A2A78 8FA6001C */   lw        $a2, 0x1c($sp)
.L800A2A7C:
/* A367C 800A2A7C 10000001 */  b          .L800A2A84
/* A3680 800A2A80 00000000 */   nop
.L800A2A84:
/* A3684 800A2A84 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3688 800A2A88 27BD0028 */  addiu      $sp, $sp, 0x28
/* A368C 800A2A8C 03E00008 */  jr         $ra
/* A3690 800A2A90 00000000 */   nop

glabel func_800A2A94
/* A3694 800A2A94 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A3698 800A2A98 AFBF001C */  sw         $ra, 0x1c($sp)
/* A369C 800A2A9C AFA40030 */  sw         $a0, 0x30($sp)
/* A36A0 800A2AA0 AFB00018 */  sw         $s0, 0x18($sp)
/* A36A4 800A2AA4 AFA0002C */  sw         $zero, 0x2c($sp)
/* A36A8 800A2AA8 8FAE0030 */  lw         $t6, 0x30($sp)
/* A36AC 800A2AAC 11C0000E */  beqz       $t6, .L800A2AE8
/* A36B0 800A2AB0 00000000 */   nop
/* A36B4 800A2AB4 0C02E700 */  jal        func_800B9C00
/* A36B8 800A2AB8 00000000 */   nop
/* A36BC 800A2ABC 00408025 */  or         $s0, $v0, $zero
/* A36C0 800A2AC0 0C028DC0 */  jal        func_800A3700
/* A36C4 800A2AC4 AFB00028 */   sw        $s0, 0x28($sp)
/* A36C8 800A2AC8 AFA20024 */  sw         $v0, 0x24($sp)
/* A36CC 800A2ACC 8FAF0024 */  lw         $t7, 0x24($sp)
/* A36D0 800A2AD0 11F00003 */  beq        $t7, $s0, .L800A2AE0
/* A36D4 800A2AD4 00000000 */   nop
/* A36D8 800A2AD8 10000007 */  b          .L800A2AF8
/* A36DC 800A2ADC 00001025 */   or        $v0, $zero, $zero
.L800A2AE0:
/* A36E0 800A2AE0 10000005 */  b          .L800A2AF8
/* A36E4 800A2AE4 8FA20030 */   lw        $v0, 0x30($sp)
.L800A2AE8:
/* A36E8 800A2AE8 10000003 */  b          .L800A2AF8
/* A36EC 800A2AEC 00001025 */   or        $v0, $zero, $zero
/* A36F0 800A2AF0 10000001 */  b          .L800A2AF8
/* A36F4 800A2AF4 00000000 */   nop
.L800A2AF8:
/* A36F8 800A2AF8 8FBF001C */  lw         $ra, 0x1c($sp)
/* A36FC 800A2AFC 8FB00018 */  lw         $s0, 0x18($sp)
/* A3700 800A2B00 27BD0030 */  addiu      $sp, $sp, 0x30
/* A3704 800A2B04 03E00008 */  jr         $ra
/* A3708 800A2B08 00000000 */   nop

glabel func_800A2B0C
/* A370C 800A2B0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A3710 800A2B10 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3714 800A2B14 AFA40020 */  sw         $a0, 0x20($sp)
/* A3718 800A2B18 AFA50024 */  sw         $a1, 0x24($sp)
/* A371C 800A2B1C 8FAE0024 */  lw         $t6, 0x24($sp)
/* A3720 800A2B20 8DCF0004 */  lw         $t7, 4($t6)
/* A3724 800A2B24 31F80003 */  andi       $t8, $t7, 3
/* A3728 800A2B28 17000041 */  bnez       $t8, .L800A2C30
/* A372C 800A2B2C 00000000 */   nop
/* A3730 800A2B30 8FB90024 */  lw         $t9, 0x24($sp)
/* A3734 800A2B34 8F280050 */  lw         $t0, 0x50($t9)
/* A3738 800A2B38 11000003 */  beqz       $t0, .L800A2B48
/* A373C 800A2B3C 00000000 */   nop
/* A3740 800A2B40 10000007 */  b          .L800A2B60
/* A3744 800A2B44 00000000 */   nop
.L800A2B48:
/* A3748 800A2B48 3C04800D */  lui        $a0, %hi(D_800D2F38)
/* A374C 800A2B4C 3C05800D */  lui        $a1, %hi(D_800D2F40)
/* A3750 800A2B50 24A52F40 */  addiu      $a1, $a1, %lo(D_800D2F40)
/* A3754 800A2B54 24842F38 */  addiu      $a0, $a0, %lo(D_800D2F38)
/* A3758 800A2B58 0C02C480 */  jal        func_800B1200
/* A375C 800A2B5C 24060178 */   addiu     $a2, $zero, 0x178
.L800A2B60:
/* A3760 800A2B60 8FA90024 */  lw         $t1, 0x24($sp)
/* A3764 800A2B64 252A0060 */  addiu      $t2, $t1, 0x60
/* A3768 800A2B68 0C02BA84 */  jal        func_800AEA10
/* A376C 800A2B6C AFAA0018 */   sw        $t2, 0x18($sp)
/* A3770 800A2B70 8FAB0024 */  lw         $t3, 0x24($sp)
/* A3774 800A2B74 8FB80018 */  lw         $t8, 0x18($sp)
/* A3778 800A2B78 8D6D005C */  lw         $t5, 0x5c($t3)
/* A377C 800A2B7C 8D6C0058 */  lw         $t4, 0x58($t3)
/* A3780 800A2B80 8F090004 */  lw         $t1, 4($t8)
/* A3784 800A2B84 006D082B */  sltu       $at, $v1, $t5
/* A3788 800A2B88 006D7823 */  subu       $t7, $v1, $t5
/* A378C 800A2B8C 004C7023 */  subu       $t6, $v0, $t4
/* A3790 800A2B90 8F080000 */  lw         $t0, ($t8)
/* A3794 800A2B94 01C17023 */  subu       $t6, $t6, $at
/* A3798 800A2B98 01E95821 */  addu       $t3, $t7, $t1
/* A379C 800A2B9C 0169082B */  sltu       $at, $t3, $t1
/* A37A0 800A2BA0 002E5021 */  addu       $t2, $at, $t6
/* A37A4 800A2BA4 01485021 */  addu       $t2, $t2, $t0
/* A37A8 800A2BA8 AF0A0000 */  sw         $t2, ($t8)
/* A37AC 800A2BAC AF0B0004 */  sw         $t3, 4($t8)
/* A37B0 800A2BB0 8FB90024 */  lw         $t9, 0x24($sp)
/* A37B4 800A2BB4 24060001 */  addiu      $a2, $zero, 1
/* A37B8 800A2BB8 8F240050 */  lw         $a0, 0x50($t9)
/* A37BC 800A2BBC 0C025C40 */  jal        func_80097100
/* A37C0 800A2BC0 8F250054 */   lw        $a1, 0x54($t9)
/* A37C4 800A2BC4 AFA2001C */  sw         $v0, 0x1c($sp)
/* A37C8 800A2BC8 8FAC0024 */  lw         $t4, 0x24($sp)
/* A37CC 800A2BCC 24010001 */  addiu      $at, $zero, 1
/* A37D0 800A2BD0 8D8D0010 */  lw         $t5, 0x10($t4)
/* A37D4 800A2BD4 15A10014 */  bne        $t5, $at, .L800A2C28
/* A37D8 800A2BD8 00000000 */   nop
/* A37DC 800A2BDC 8FAE0024 */  lw         $t6, 0x24($sp)
/* A37E0 800A2BE0 8DCF0008 */  lw         $t7, 8($t6)
/* A37E4 800A2BE4 31E80040 */  andi       $t0, $t7, 0x40
/* A37E8 800A2BE8 1100000F */  beqz       $t0, .L800A2C28
/* A37EC 800A2BEC 00000000 */   nop
/* A37F0 800A2BF0 31E90020 */  andi       $t1, $t7, 0x20
/* A37F4 800A2BF4 1120000C */  beqz       $t1, .L800A2C28
/* A37F8 800A2BF8 00000000 */   nop
/* A37FC 800A2BFC 3C0A800D */  lui        $t2, %hi(D_800CC2EC)
/* A3800 800A2C00 8D4AC2EC */  lw         $t2, %lo(D_800CC2EC)($t2)
/* A3804 800A2C04 11400005 */  beqz       $t2, .L800A2C1C
/* A3808 800A2C08 00000000 */   nop
/* A380C 800A2C0C 0C027EB4 */  jal        func_8009FAD0
/* A3810 800A2C10 00002025 */   or        $a0, $zero, $zero
/* A3814 800A2C14 3C01800D */  lui        $at, %hi(D_800CC2EC)
/* A3818 800A2C18 AC20C2EC */  sw         $zero, %lo(D_800CC2EC)($at)
.L800A2C1C:
/* A381C 800A2C1C 8FAB0024 */  lw         $t3, 0x24($sp)
/* A3820 800A2C20 0C02B7A4 */  jal        func_800ADE90
/* A3824 800A2C24 8D64000C */   lw        $a0, 0xc($t3)
.L800A2C28:
/* A3828 800A2C28 10000005 */  b          .L800A2C40
/* A382C 800A2C2C 24020001 */   addiu     $v0, $zero, 1
.L800A2C30:
/* A3830 800A2C30 10000003 */  b          .L800A2C40
/* A3834 800A2C34 00001025 */   or        $v0, $zero, $zero
/* A3838 800A2C38 10000001 */  b          .L800A2C40
/* A383C 800A2C3C 00000000 */   nop
.L800A2C40:
/* A3840 800A2C40 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3844 800A2C44 27BD0020 */  addiu      $sp, $sp, 0x20
/* A3848 800A2C48 03E00008 */  jr         $ra
/* A384C 800A2C4C 00000000 */   nop

glabel func_800A2C50
/* A3850 800A2C50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A3854 800A2C54 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3858 800A2C58 AFA40020 */  sw         $a0, 0x20($sp)
/* A385C 800A2C5C AFA50024 */  sw         $a1, 0x24($sp)
/* A3860 800A2C60 8FAE0024 */  lw         $t6, 0x24($sp)
/* A3864 800A2C64 8DCF0010 */  lw         $t7, 0x10($t6)
/* A3868 800A2C68 AFAF001C */  sw         $t7, 0x1c($sp)
/* A386C 800A2C6C 8FB8001C */  lw         $t8, 0x1c($sp)
/* A3870 800A2C70 24010002 */  addiu      $at, $zero, 2
/* A3874 800A2C74 13010004 */  beq        $t8, $at, .L800A2C88
/* A3878 800A2C78 00000000 */   nop
/* A387C 800A2C7C 24010001 */  addiu      $at, $zero, 1
/* A3880 800A2C80 17010003 */  bne        $t8, $at, .L800A2C90
/* A3884 800A2C84 00000000 */   nop
.L800A2C88:
/* A3888 800A2C88 10000007 */  b          .L800A2CA8
/* A388C 800A2C8C 00000000 */   nop
.L800A2C90:
/* A3890 800A2C90 3C04800D */  lui        $a0, %hi(D_800D2F54)
/* A3894 800A2C94 3C05800D */  lui        $a1, %hi(D_800D2F80)
/* A3898 800A2C98 24A52F80 */  addiu      $a1, $a1, %lo(D_800D2F80)
/* A389C 800A2C9C 24842F54 */  addiu      $a0, $a0, %lo(D_800D2F54)
/* A38A0 800A2CA0 0C02C480 */  jal        func_800B1200
/* A38A4 800A2CA4 2406019C */   addiu     $a2, $zero, 0x19c
.L800A2CA8:
/* A38A8 800A2CA8 8FB9001C */  lw         $t9, 0x1c($sp)
/* A38AC 800A2CAC 24010002 */  addiu      $at, $zero, 2
/* A38B0 800A2CB0 17210014 */  bne        $t9, $at, .L800A2D04
/* A38B4 800A2CB4 00000000 */   nop
/* A38B8 800A2CB8 8FA80020 */  lw         $t0, 0x20($sp)
/* A38BC 800A2CBC 8D09026C */  lw         $t1, 0x26c($t0)
/* A38C0 800A2CC0 11200006 */  beqz       $t1, .L800A2CDC
/* A38C4 800A2CC4 00000000 */   nop
/* A38C8 800A2CC8 8FAB0020 */  lw         $t3, 0x20($sp)
/* A38CC 800A2CCC 8FAA0024 */  lw         $t2, 0x24($sp)
/* A38D0 800A2CD0 8D6C026C */  lw         $t4, 0x26c($t3)
/* A38D4 800A2CD4 10000004 */  b          .L800A2CE8
/* A38D8 800A2CD8 AD8A0000 */   sw        $t2, ($t4)
.L800A2CDC:
/* A38DC 800A2CDC 8FAD0024 */  lw         $t5, 0x24($sp)
/* A38E0 800A2CE0 8FAE0020 */  lw         $t6, 0x20($sp)
/* A38E4 800A2CE4 ADCD0264 */  sw         $t5, 0x264($t6)
.L800A2CE8:
/* A38E8 800A2CE8 8FAF0024 */  lw         $t7, 0x24($sp)
/* A38EC 800A2CEC 8FB80020 */  lw         $t8, 0x20($sp)
/* A38F0 800A2CF0 AF0F026C */  sw         $t7, 0x26c($t8)
/* A38F4 800A2CF4 8FA80020 */  lw         $t0, 0x20($sp)
/* A38F8 800A2CF8 24190001 */  addiu      $t9, $zero, 1
/* A38FC 800A2CFC 10000010 */  b          .L800A2D40
/* A3900 800A2D00 AD190280 */   sw        $t9, 0x280($t0)
.L800A2D04:
/* A3904 800A2D04 8FA90020 */  lw         $t1, 0x20($sp)
/* A3908 800A2D08 8D2B0270 */  lw         $t3, 0x270($t1)
/* A390C 800A2D0C 11600006 */  beqz       $t3, .L800A2D28
/* A3910 800A2D10 00000000 */   nop
/* A3914 800A2D14 8FAC0020 */  lw         $t4, 0x20($sp)
/* A3918 800A2D18 8FAA0024 */  lw         $t2, 0x24($sp)
/* A391C 800A2D1C 8D8D0270 */  lw         $t5, 0x270($t4)
/* A3920 800A2D20 10000004 */  b          .L800A2D34
/* A3924 800A2D24 ADAA0000 */   sw        $t2, ($t5)
.L800A2D28:
/* A3928 800A2D28 8FAE0024 */  lw         $t6, 0x24($sp)
/* A392C 800A2D2C 8FAF0020 */  lw         $t7, 0x20($sp)
/* A3930 800A2D30 ADEE0268 */  sw         $t6, 0x268($t7)
.L800A2D34:
/* A3934 800A2D34 8FB80024 */  lw         $t8, 0x24($sp)
/* A3938 800A2D38 8FB90020 */  lw         $t9, 0x20($sp)
/* A393C 800A2D3C AF380270 */  sw         $t8, 0x270($t9)
.L800A2D40:
/* A3940 800A2D40 8FA80024 */  lw         $t0, 0x24($sp)
/* A3944 800A2D44 AD000000 */  sw         $zero, ($t0)
/* A3948 800A2D48 8FA90024 */  lw         $t1, 0x24($sp)
/* A394C 800A2D4C 8D2B0008 */  lw         $t3, 8($t1)
/* A3950 800A2D50 316C0003 */  andi       $t4, $t3, 3
/* A3954 800A2D54 AD2C0004 */  sw         $t4, 4($t1)
/* A3958 800A2D58 10000001 */  b          .L800A2D60
/* A395C 800A2D5C 00000000 */   nop
.L800A2D60:
/* A3960 800A2D60 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3964 800A2D64 27BD0020 */  addiu      $sp, $sp, 0x20
/* A3968 800A2D68 03E00008 */  jr         $ra
/* A396C 800A2D6C 00000000 */   nop

glabel func_800A2D70
/* A3970 800A2D70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A3974 800A2D74 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3978 800A2D78 AFA40020 */  sw         $a0, 0x20($sp)
/* A397C 800A2D7C AFA50024 */  sw         $a1, 0x24($sp)
/* A3980 800A2D80 AFA60028 */  sw         $a2, 0x28($sp)
/* A3984 800A2D84 8FAE0020 */  lw         $t6, 0x20($sp)
/* A3988 800A2D88 8DCF0274 */  lw         $t7, 0x274($t6)
/* A398C 800A2D8C 15E00003 */  bnez       $t7, .L800A2D9C
/* A3990 800A2D90 00000000 */   nop
/* A3994 800A2D94 10000007 */  b          .L800A2DB4
/* A3998 800A2D98 00000000 */   nop
.L800A2D9C:
/* A399C 800A2D9C 3C04800D */  lui        $a0, %hi(D_800D2F94)
/* A39A0 800A2DA0 3C05800D */  lui        $a1, %hi(D_800D2FA8)
/* A39A4 800A2DA4 24A52FA8 */  addiu      $a1, $a1, %lo(D_800D2FA8)
/* A39A8 800A2DA8 24842F94 */  addiu      $a0, $a0, %lo(D_800D2F94)
/* A39AC 800A2DAC 0C02C480 */  jal        func_800B1200
/* A39B0 800A2DB0 240601C4 */   addiu     $a2, $zero, 0x1c4
.L800A2DB4:
/* A39B4 800A2DB4 8FB80024 */  lw         $t8, 0x24($sp)
/* A39B8 800A2DB8 13000022 */  beqz       $t8, .L800A2E44
/* A39BC 800A2DBC 00000000 */   nop
/* A39C0 800A2DC0 8FB90024 */  lw         $t9, 0x24($sp)
/* A39C4 800A2DC4 24010002 */  addiu      $at, $zero, 2
/* A39C8 800A2DC8 8F280010 */  lw         $t0, 0x10($t9)
/* A39CC 800A2DCC 15010003 */  bne        $t0, $at, .L800A2DDC
/* A39D0 800A2DD0 00000000 */   nop
/* A39D4 800A2DD4 0C02E378 */  jal        func_800B8DE0
/* A39D8 800A2DD8 00000000 */   nop
.L800A2DDC:
/* A39DC 800A2DDC 8FA90024 */  lw         $t1, 0x24($sp)
/* A39E0 800A2DE0 2401FFCF */  addiu      $at, $zero, -0x31
/* A39E4 800A2DE4 8D2A0004 */  lw         $t2, 4($t1)
/* A39E8 800A2DE8 01415824 */  and        $t3, $t2, $at
/* A39EC 800A2DEC AD2B0004 */  sw         $t3, 4($t1)
/* A39F0 800A2DF0 0C02BA84 */  jal        func_800AEA10
/* A39F4 800A2DF4 00000000 */   nop
/* A39F8 800A2DF8 8FAC0024 */  lw         $t4, 0x24($sp)
/* A39FC 800A2DFC AD820058 */  sw         $v0, 0x58($t4)
/* A3A00 800A2E00 AD83005C */  sw         $v1, 0x5c($t4)
/* A3A04 800A2E04 8FA40024 */  lw         $a0, 0x24($sp)
/* A3A08 800A2E08 0C028D0D */  jal        func_800A3434
/* A3A0C 800A2E0C 24840010 */   addiu     $a0, $a0, 0x10
/* A3A10 800A2E10 8FA40024 */  lw         $a0, 0x24($sp)
/* A3A14 800A2E14 0C028DAD */  jal        func_800A36B4
/* A3A18 800A2E18 24840010 */   addiu     $a0, $a0, 0x10
/* A3A1C 800A2E1C 8FAD0024 */  lw         $t5, 0x24($sp)
/* A3A20 800A2E20 8FAE0020 */  lw         $t6, 0x20($sp)
/* A3A24 800A2E24 ADCD0274 */  sw         $t5, 0x274($t6)
/* A3A28 800A2E28 8FAF0024 */  lw         $t7, 0x24($sp)
/* A3A2C 800A2E2C 8FB80028 */  lw         $t8, 0x28($sp)
/* A3A30 800A2E30 15F80004 */  bne        $t7, $t8, .L800A2E44
/* A3A34 800A2E34 00000000 */   nop
/* A3A38 800A2E38 8FB90028 */  lw         $t9, 0x28($sp)
/* A3A3C 800A2E3C 8FA80020 */  lw         $t0, 0x20($sp)
/* A3A40 800A2E40 AD190278 */  sw         $t9, 0x278($t0)
.L800A2E44:
/* A3A44 800A2E44 8FAA0028 */  lw         $t2, 0x28($sp)
/* A3A48 800A2E48 1140002A */  beqz       $t2, .L800A2EF4
/* A3A4C 800A2E4C 00000000 */   nop
/* A3A50 800A2E50 8FAB0024 */  lw         $t3, 0x24($sp)
/* A3A54 800A2E54 114B0027 */  beq        $t2, $t3, .L800A2EF4
/* A3A58 800A2E58 00000000 */   nop
/* A3A5C 800A2E5C 8FA90028 */  lw         $t1, 0x28($sp)
/* A3A60 800A2E60 8D2C0038 */  lw         $t4, 0x38($t1)
/* A3A64 800A2E64 11800003 */  beqz       $t4, .L800A2E74
/* A3A68 800A2E68 00000000 */   nop
/* A3A6C 800A2E6C 10000007 */  b          .L800A2E8C
/* A3A70 800A2E70 00000000 */   nop
.L800A2E74:
/* A3A74 800A2E74 3C04800D */  lui        $a0, %hi(D_800D2FBC)
/* A3A78 800A2E78 3C05800D */  lui        $a1, %hi(D_800D2FD4)
/* A3A7C 800A2E7C 24A52FD4 */  addiu      $a1, $a1, %lo(D_800D2FD4)
/* A3A80 800A2E80 24842FBC */  addiu      $a0, $a0, %lo(D_800D2FBC)
/* A3A84 800A2E84 0C02C480 */  jal        func_800B1200
/* A3A88 800A2E88 240601D7 */   addiu     $a2, $zero, 0x1d7
.L800A2E8C:
/* A3A8C 800A2E8C 8FAD0028 */  lw         $t5, 0x28($sp)
/* A3A90 800A2E90 8DAE003C */  lw         $t6, 0x3c($t5)
/* A3A94 800A2E94 8DA40038 */  lw         $a0, 0x38($t5)
/* A3A98 800A2E98 8DC60000 */  lw         $a2, ($t6)
/* A3A9C 800A2E9C 0C02E30C */  jal        func_800B8C30
/* A3AA0 800A2EA0 8DC70004 */   lw        $a3, 4($t6)
/* A3AA4 800A2EA4 AFA2001C */  sw         $v0, 0x1c($sp)
/* A3AA8 800A2EA8 240F0001 */  addiu      $t7, $zero, 1
/* A3AAC 800A2EAC 3C01800D */  lui        $at, %hi(D_800CC2E4)
/* A3AB0 800A2EB0 AC2FC2E4 */  sw         $t7, %lo(D_800CC2E4)($at)
/* A3AB4 800A2EB4 3C01800D */  lui        $at, %hi(D_800CC2E8)
/* A3AB8 800A2EB8 AC20C2E8 */  sw         $zero, %lo(D_800CC2E8)($at)
/* A3ABC 800A2EBC 8FB8001C */  lw         $t8, 0x1c($sp)
/* A3AC0 800A2EC0 17000003 */  bnez       $t8, .L800A2ED0
/* A3AC4 800A2EC4 00000000 */   nop
/* A3AC8 800A2EC8 10000007 */  b          .L800A2EE8
/* A3ACC 800A2ECC 00000000 */   nop
.L800A2ED0:
/* A3AD0 800A2ED0 3C04800D */  lui        $a0, %hi(D_800D2FE8)
/* A3AD4 800A2ED4 3C05800D */  lui        $a1, %hi(D_800D2FF0)
/* A3AD8 800A2ED8 24A52FF0 */  addiu      $a1, $a1, %lo(D_800D2FF0)
/* A3ADC 800A2EDC 24842FE8 */  addiu      $a0, $a0, %lo(D_800D2FE8)
/* A3AE0 800A2EE0 0C02C480 */  jal        func_800B1200
/* A3AE4 800A2EE4 240601E3 */   addiu     $a2, $zero, 0x1e3
.L800A2EE8:
/* A3AE8 800A2EE8 8FB90028 */  lw         $t9, 0x28($sp)
/* A3AEC 800A2EEC 8FA80020 */  lw         $t0, 0x20($sp)
/* A3AF0 800A2EF0 AD190278 */  sw         $t9, 0x278($t0)
.L800A2EF4:
/* A3AF4 800A2EF4 10000001 */  b          .L800A2EFC
/* A3AF8 800A2EF8 00000000 */   nop
.L800A2EFC:
/* A3AFC 800A2EFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3B00 800A2F00 27BD0020 */  addiu      $sp, $sp, 0x20
/* A3B04 800A2F04 03E00008 */  jr         $ra
/* A3B08 800A2F08 00000000 */   nop

glabel func_800A2F0C
/* A3B0C 800A2F0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3B10 800A2F10 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3B14 800A2F14 AFA40018 */  sw         $a0, 0x18($sp)
/* A3B18 800A2F18 8FAE0018 */  lw         $t6, 0x18($sp)
/* A3B1C 800A2F1C 24010001 */  addiu      $at, $zero, 1
/* A3B20 800A2F20 8DCF0274 */  lw         $t7, 0x274($t6)
/* A3B24 800A2F24 8DF80010 */  lw         $t8, 0x10($t7)
/* A3B28 800A2F28 1701000A */  bne        $t8, $at, .L800A2F54
/* A3B2C 800A2F2C 00000000 */   nop
/* A3B30 800A2F30 8FB90018 */  lw         $t9, 0x18($sp)
/* A3B34 800A2F34 8F280274 */  lw         $t0, 0x274($t9)
/* A3B38 800A2F38 8D090004 */  lw         $t1, 4($t0)
/* A3B3C 800A2F3C 352A0010 */  ori        $t2, $t1, 0x10
/* A3B40 800A2F40 AD0A0004 */  sw         $t2, 4($t0)
/* A3B44 800A2F44 0C028E2C */  jal        func_800A38B0
/* A3B48 800A2F48 00000000 */   nop
/* A3B4C 800A2F4C 10000001 */  b          .L800A2F54
/* A3B50 800A2F50 00000000 */   nop
.L800A2F54:
/* A3B54 800A2F54 10000001 */  b          .L800A2F5C
/* A3B58 800A2F58 00000000 */   nop
.L800A2F5C:
/* A3B5C 800A2F5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3B60 800A2F60 27BD0018 */  addiu      $sp, $sp, 0x18
/* A3B64 800A2F64 03E00008 */  jr         $ra
/* A3B68 800A2F68 00000000 */   nop

glabel func_800A2F6C
/* A3B6C 800A2F6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A3B70 800A2F70 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3B74 800A2F74 AFA40028 */  sw         $a0, 0x28($sp)
/* A3B78 800A2F78 AFA5002C */  sw         $a1, 0x2c($sp)
/* A3B7C 800A2F7C AFA60030 */  sw         $a2, 0x30($sp)
/* A3B80 800A2F80 AFA70034 */  sw         $a3, 0x34($sp)
/* A3B84 800A2F84 8FAE0034 */  lw         $t6, 0x34($sp)
/* A3B88 800A2F88 AFAE0024 */  sw         $t6, 0x24($sp)
/* A3B8C 800A2F8C 8FAF0028 */  lw         $t7, 0x28($sp)
/* A3B90 800A2F90 8DF80268 */  lw         $t8, 0x268($t7)
/* A3B94 800A2F94 AFB80020 */  sw         $t8, 0x20($sp)
/* A3B98 800A2F98 8FB90028 */  lw         $t9, 0x28($sp)
/* A3B9C 800A2F9C 8F280264 */  lw         $t0, 0x264($t9)
/* A3BA0 800A2FA0 AFA8001C */  sw         $t0, 0x1c($sp)
/* A3BA4 800A2FA4 8FA90028 */  lw         $t1, 0x28($sp)
/* A3BA8 800A2FA8 8D2A0280 */  lw         $t2, 0x280($t1)
/* A3BAC 800A2FAC 11400029 */  beqz       $t2, .L800A3054
/* A3BB0 800A2FB0 00000000 */   nop
/* A3BB4 800A2FB4 8FAB0024 */  lw         $t3, 0x24($sp)
/* A3BB8 800A2FB8 316C0002 */  andi       $t4, $t3, 2
/* A3BBC 800A2FBC 11800025 */  beqz       $t4, .L800A3054
/* A3BC0 800A2FC0 00000000 */   nop
/* A3BC4 800A2FC4 8FAD0020 */  lw         $t5, 0x20($sp)
/* A3BC8 800A2FC8 11A0000D */  beqz       $t5, .L800A3000
/* A3BCC 800A2FCC 00000000 */   nop
/* A3BD0 800A2FD0 8DAE0008 */  lw         $t6, 8($t5)
/* A3BD4 800A2FD4 31CF0010 */  andi       $t7, $t6, 0x10
/* A3BD8 800A2FD8 11E00009 */  beqz       $t7, .L800A3000
/* A3BDC 800A2FDC 00000000 */   nop
/* A3BE0 800A2FE0 8FB80020 */  lw         $t8, 0x20($sp)
/* A3BE4 800A2FE4 8FB9002C */  lw         $t9, 0x2c($sp)
/* A3BE8 800A2FE8 AF380000 */  sw         $t8, ($t9)
/* A3BEC 800A2FEC 8FA80024 */  lw         $t0, 0x24($sp)
/* A3BF0 800A2FF0 2401FFFD */  addiu      $at, $zero, -3
/* A3BF4 800A2FF4 01014824 */  and        $t1, $t0, $at
/* A3BF8 800A2FF8 10000014 */  b          .L800A304C
/* A3BFC 800A2FFC AFA90024 */   sw        $t1, 0x24($sp)
.L800A3000:
/* A3C00 800A3000 8FAA001C */  lw         $t2, 0x1c($sp)
/* A3C04 800A3004 8FAB002C */  lw         $t3, 0x2c($sp)
/* A3C08 800A3008 AD6A0000 */  sw         $t2, ($t3)
/* A3C0C 800A300C 8FAC0024 */  lw         $t4, 0x24($sp)
/* A3C10 800A3010 2401FFFD */  addiu      $at, $zero, -3
/* A3C14 800A3014 01816824 */  and        $t5, $t4, $at
/* A3C18 800A3018 AFAD0024 */  sw         $t5, 0x24($sp)
/* A3C1C 800A301C 8FAE0028 */  lw         $t6, 0x28($sp)
/* A3C20 800A3020 ADC00280 */  sw         $zero, 0x280($t6)
/* A3C24 800A3024 8FAF0028 */  lw         $t7, 0x28($sp)
/* A3C28 800A3028 8DF80264 */  lw         $t8, 0x264($t7)
/* A3C2C 800A302C 8F190000 */  lw         $t9, ($t8)
/* A3C30 800A3030 ADF90264 */  sw         $t9, 0x264($t7)
/* A3C34 800A3034 8FA80028 */  lw         $t0, 0x28($sp)
/* A3C38 800A3038 8D090264 */  lw         $t1, 0x264($t0)
/* A3C3C 800A303C 15200003 */  bnez       $t1, .L800A304C
/* A3C40 800A3040 00000000 */   nop
/* A3C44 800A3044 8FAA0028 */  lw         $t2, 0x28($sp)
/* A3C48 800A3048 AD40026C */  sw         $zero, 0x26c($t2)
.L800A304C:
/* A3C4C 800A304C 10000094 */  b          .L800A32A0
/* A3C50 800A3050 00000000 */   nop
.L800A3054:
/* A3C54 800A3054 0C028AA5 */  jal        func_800A2A94
/* A3C58 800A3058 8FA40020 */   lw        $a0, 0x20($sp)
/* A3C5C 800A305C 10400090 */  beqz       $v0, .L800A32A0
/* A3C60 800A3060 00000000 */   nop
/* A3C64 800A3064 8FAB0020 */  lw         $t3, 0x20($sp)
/* A3C68 800A3068 8D6C0008 */  lw         $t4, 8($t3)
/* A3C6C 800A306C 318D0007 */  andi       $t5, $t4, 7
/* A3C70 800A3070 25AEFFFF */  addiu      $t6, $t5, -1
/* A3C74 800A3074 2DC10007 */  sltiu      $at, $t6, 7
/* A3C78 800A3078 10200087 */  beqz       $at, .L800A3298
/* A3C7C 800A307C 00000000 */   nop
/* A3C80 800A3080 000E7080 */  sll        $t6, $t6, 2
/* A3C84 800A3084 3C01800D */  lui        $at, %hi(D_800D3030)
/* A3C88 800A3088 002E0821 */  addu       $at, $at, $t6
/* A3C8C 800A308C 8C2E3030 */  lw         $t6, %lo(D_800D3030)($at)
/* A3C90 800A3090 01C00008 */  jr         $t6
/* A3C94 800A3094 00000000 */   nop
/* A3C98 800A3098 8FB80020 */  lw         $t8, 0x20($sp)
/* A3C9C 800A309C 8F190004 */  lw         $t9, 4($t8)
/* A3CA0 800A30A0 332F0020 */  andi       $t7, $t9, 0x20
/* A3CA4 800A30A4 11E00033 */  beqz       $t7, .L800A3174
/* A3CA8 800A30A8 00000000 */   nop
/* A3CAC 800A30AC 8FA80024 */  lw         $t0, 0x24($sp)
/* A3CB0 800A30B0 31090002 */  andi       $t1, $t0, 2
/* A3CB4 800A30B4 1120002D */  beqz       $t1, .L800A316C
/* A3CB8 800A30B8 00000000 */   nop
/* A3CBC 800A30BC 8FAA0020 */  lw         $t2, 0x20($sp)
/* A3CC0 800A30C0 8FAB002C */  lw         $t3, 0x2c($sp)
/* A3CC4 800A30C4 AD6A0000 */  sw         $t2, ($t3)
/* A3CC8 800A30C8 8FAC0024 */  lw         $t4, 0x24($sp)
/* A3CCC 800A30CC 2401FFFD */  addiu      $at, $zero, -3
/* A3CD0 800A30D0 01816824 */  and        $t5, $t4, $at
/* A3CD4 800A30D4 AFAD0024 */  sw         $t5, 0x24($sp)
/* A3CD8 800A30D8 8FAE0020 */  lw         $t6, 0x20($sp)
/* A3CDC 800A30DC 8DD80004 */  lw         $t8, 4($t6)
/* A3CE0 800A30E0 33190001 */  andi       $t9, $t8, 1
/* A3CE4 800A30E4 13200017 */  beqz       $t9, .L800A3144
/* A3CE8 800A30E8 00000000 */   nop
/* A3CEC 800A30EC 8FAF0020 */  lw         $t7, 0x20($sp)
/* A3CF0 800A30F0 8FA80030 */  lw         $t0, 0x30($sp)
/* A3CF4 800A30F4 AD0F0000 */  sw         $t7, ($t0)
/* A3CF8 800A30F8 8FA90024 */  lw         $t1, 0x24($sp)
/* A3CFC 800A30FC 2401FFFE */  addiu      $at, $zero, -2
/* A3D00 800A3100 01215024 */  and        $t2, $t1, $at
/* A3D04 800A3104 AFAA0024 */  sw         $t2, 0x24($sp)
/* A3D08 800A3108 1000000E */  b          .L800A3144
/* A3D0C 800A310C 00000000 */   nop
/* A3D10 800A3110 8FAB0028 */  lw         $t3, 0x28($sp)
/* A3D14 800A3114 8FAD0020 */  lw         $t5, 0x20($sp)
/* A3D18 800A3118 8D6C0278 */  lw         $t4, 0x278($t3)
/* A3D1C 800A311C 158D0003 */  bne        $t4, $t5, .L800A312C
/* A3D20 800A3120 00000000 */   nop
/* A3D24 800A3124 10000007 */  b          .L800A3144
/* A3D28 800A3128 00000000 */   nop
.L800A312C:
/* A3D2C 800A312C 3C04800D */  lui        $a0, %hi(D_800D3004)
/* A3D30 800A3130 3C05800D */  lui        $a1, %hi(D_800D301C)
/* A3D34 800A3134 24A5301C */  addiu      $a1, $a1, %lo(D_800D301C)
/* A3D38 800A3138 24843004 */  addiu      $a0, $a0, %lo(D_800D3004)
/* A3D3C 800A313C 0C02C480 */  jal        func_800B1200
/* A3D40 800A3140 24060236 */   addiu     $a2, $zero, 0x236
.L800A3144:
/* A3D44 800A3144 8FAE0028 */  lw         $t6, 0x28($sp)
/* A3D48 800A3148 8DD80268 */  lw         $t8, 0x268($t6)
/* A3D4C 800A314C 8F190000 */  lw         $t9, ($t8)
/* A3D50 800A3150 ADD90268 */  sw         $t9, 0x268($t6)
/* A3D54 800A3154 8FAF0028 */  lw         $t7, 0x28($sp)
/* A3D58 800A3158 8DE80268 */  lw         $t0, 0x268($t7)
/* A3D5C 800A315C 15000003 */  bnez       $t0, .L800A316C
/* A3D60 800A3160 00000000 */   nop
/* A3D64 800A3164 8FA90028 */  lw         $t1, 0x28($sp)
/* A3D68 800A3168 AD200270 */  sw         $zero, 0x270($t1)
.L800A316C:
/* A3D6C 800A316C 1000001A */  b          .L800A31D8
/* A3D70 800A3170 00000000 */   nop
.L800A3174:
/* A3D74 800A3174 8FAA0024 */  lw         $t2, 0x24($sp)
/* A3D78 800A3178 24010003 */  addiu      $at, $zero, 3
/* A3D7C 800A317C 15410016 */  bne        $t2, $at, .L800A31D8
/* A3D80 800A3180 00000000 */   nop
/* A3D84 800A3184 8FAB0020 */  lw         $t3, 0x20($sp)
/* A3D88 800A3188 8FAC0030 */  lw         $t4, 0x30($sp)
/* A3D8C 800A318C AD8B0000 */  sw         $t3, ($t4)
/* A3D90 800A3190 8FAD0030 */  lw         $t5, 0x30($sp)
/* A3D94 800A3194 8FB9002C */  lw         $t9, 0x2c($sp)
/* A3D98 800A3198 8DB80000 */  lw         $t8, ($t5)
/* A3D9C 800A319C AF380000 */  sw         $t8, ($t9)
/* A3DA0 800A31A0 8FAE0024 */  lw         $t6, 0x24($sp)
/* A3DA4 800A31A4 2401FFFC */  addiu      $at, $zero, -4
/* A3DA8 800A31A8 01C17824 */  and        $t7, $t6, $at
/* A3DAC 800A31AC AFAF0024 */  sw         $t7, 0x24($sp)
/* A3DB0 800A31B0 8FA80028 */  lw         $t0, 0x28($sp)
/* A3DB4 800A31B4 8D090268 */  lw         $t1, 0x268($t0)
/* A3DB8 800A31B8 8D2A0000 */  lw         $t2, ($t1)
/* A3DBC 800A31BC AD0A0268 */  sw         $t2, 0x268($t0)
/* A3DC0 800A31C0 8FAB0028 */  lw         $t3, 0x28($sp)
/* A3DC4 800A31C4 8D6C0268 */  lw         $t4, 0x268($t3)
/* A3DC8 800A31C8 15800003 */  bnez       $t4, .L800A31D8
/* A3DCC 800A31CC 00000000 */   nop
/* A3DD0 800A31D0 8FAD0028 */  lw         $t5, 0x28($sp)
/* A3DD4 800A31D4 ADA00270 */  sw         $zero, 0x270($t5)
.L800A31D8:
/* A3DD8 800A31D8 10000031 */  b          .L800A32A0
/* A3DDC 800A31DC 00000000 */   nop
/* A3DE0 800A31E0 8FB80020 */  lw         $t8, 0x20($sp)
/* A3DE4 800A31E4 8F190004 */  lw         $t9, 4($t8)
/* A3DE8 800A31E8 332E0002 */  andi       $t6, $t9, 2
/* A3DEC 800A31EC 11C0000E */  beqz       $t6, .L800A3228
/* A3DF0 800A31F0 00000000 */   nop
/* A3DF4 800A31F4 8FAF0024 */  lw         $t7, 0x24($sp)
/* A3DF8 800A31F8 31E90002 */  andi       $t1, $t7, 2
/* A3DFC 800A31FC 11200008 */  beqz       $t1, .L800A3220
/* A3E00 800A3200 00000000 */   nop
/* A3E04 800A3204 8FAA0020 */  lw         $t2, 0x20($sp)
/* A3E08 800A3208 8FA8002C */  lw         $t0, 0x2c($sp)
/* A3E0C 800A320C AD0A0000 */  sw         $t2, ($t0)
/* A3E10 800A3210 8FAB0024 */  lw         $t3, 0x24($sp)
/* A3E14 800A3214 2401FFFD */  addiu      $at, $zero, -3
/* A3E18 800A3218 01616024 */  and        $t4, $t3, $at
/* A3E1C 800A321C AFAC0024 */  sw         $t4, 0x24($sp)
.L800A3220:
/* A3E20 800A3220 1000001B */  b          .L800A3290
/* A3E24 800A3224 00000000 */   nop
.L800A3228:
/* A3E28 800A3228 8FAD0020 */  lw         $t5, 0x20($sp)
/* A3E2C 800A322C 8DB80004 */  lw         $t8, 4($t5)
/* A3E30 800A3230 33190001 */  andi       $t9, $t8, 1
/* A3E34 800A3234 13200016 */  beqz       $t9, .L800A3290
/* A3E38 800A3238 00000000 */   nop
/* A3E3C 800A323C 8FAE0024 */  lw         $t6, 0x24($sp)
/* A3E40 800A3240 31CF0001 */  andi       $t7, $t6, 1
/* A3E44 800A3244 11E00012 */  beqz       $t7, .L800A3290
/* A3E48 800A3248 00000000 */   nop
/* A3E4C 800A324C 8FA90020 */  lw         $t1, 0x20($sp)
/* A3E50 800A3250 8FAA0030 */  lw         $t2, 0x30($sp)
/* A3E54 800A3254 AD490000 */  sw         $t1, ($t2)
/* A3E58 800A3258 8FA80024 */  lw         $t0, 0x24($sp)
/* A3E5C 800A325C 2401FFFE */  addiu      $at, $zero, -2
/* A3E60 800A3260 01015824 */  and        $t3, $t0, $at
/* A3E64 800A3264 AFAB0024 */  sw         $t3, 0x24($sp)
/* A3E68 800A3268 8FAC0028 */  lw         $t4, 0x28($sp)
/* A3E6C 800A326C 8D8D0268 */  lw         $t5, 0x268($t4)
/* A3E70 800A3270 8DB80000 */  lw         $t8, ($t5)
/* A3E74 800A3274 AD980268 */  sw         $t8, 0x268($t4)
/* A3E78 800A3278 8FB90028 */  lw         $t9, 0x28($sp)
/* A3E7C 800A327C 8F2E0268 */  lw         $t6, 0x268($t9)
/* A3E80 800A3280 15C00003 */  bnez       $t6, .L800A3290
/* A3E84 800A3284 00000000 */   nop
/* A3E88 800A3288 8FAF0028 */  lw         $t7, 0x28($sp)
/* A3E8C 800A328C ADE00270 */  sw         $zero, 0x270($t7)
.L800A3290:
/* A3E90 800A3290 10000003 */  b          .L800A32A0
/* A3E94 800A3294 00000000 */   nop
.L800A3298:
/* A3E98 800A3298 10000001 */  b          .L800A32A0
/* A3E9C 800A329C 00000000 */   nop
.L800A32A0:
/* A3EA0 800A32A0 8FA90024 */  lw         $t1, 0x24($sp)
/* A3EA4 800A32A4 8FAA0034 */  lw         $t2, 0x34($sp)
/* A3EA8 800A32A8 112A0007 */  beq        $t1, $t2, .L800A32C8
/* A3EAC 800A32AC 00000000 */   nop
/* A3EB0 800A32B0 8FA40028 */  lw         $a0, 0x28($sp)
/* A3EB4 800A32B4 8FA5002C */  lw         $a1, 0x2c($sp)
/* A3EB8 800A32B8 8FA60030 */  lw         $a2, 0x30($sp)
/* A3EBC 800A32BC 0C028BDB */  jal        func_800A2F6C
/* A3EC0 800A32C0 8FA70024 */   lw        $a3, 0x24($sp)
/* A3EC4 800A32C4 AFA20024 */  sw         $v0, 0x24($sp)
.L800A32C8:
/* A3EC8 800A32C8 10000003 */  b          .L800A32D8
/* A3ECC 800A32CC 8FA20024 */   lw        $v0, 0x24($sp)
/* A3ED0 800A32D0 10000001 */  b          .L800A32D8
/* A3ED4 800A32D4 00000000 */   nop
.L800A32D8:
/* A3ED8 800A32D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3EDC 800A32DC 27BD0028 */  addiu      $sp, $sp, 0x28
/* A3EE0 800A32E0 03E00008 */  jr         $ra
/* A3EE4 800A32E4 00000000 */   nop
/* A3EE8 800A32E8 00000000 */  nop
/* A3EEC 800A32EC 00000000 */  nop
