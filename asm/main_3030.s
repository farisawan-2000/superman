.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80002430
/* 3030 80002430 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 3034 80002434 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3038 80002438 AFA40050 */  sw         $a0, 0x50($sp)
/* 303C 8000243C AFA50054 */  sw         $a1, 0x54($sp)
/* 3040 80002440 AFA60058 */  sw         $a2, 0x58($sp)
/* 3044 80002444 AFA7005C */  sw         $a3, 0x5c($sp)
/* 3048 80002448 3C048012 */  lui        $a0, 0x8012
/* 304C 8000244C 3C05800E */  lui        $a1, %hi(D_800DC450)
/* 3050 80002450 3C060004 */  lui        $a2, 4
/* 3054 80002454 34C693E0 */  ori        $a2, $a2, 0x93e0
/* 3058 80002458 24A5C450 */  addiu      $a1, $a1, %lo(D_800DC450)
/* 305C 8000245C 0C02B340 */  jal        func_800ACD00
/* 3060 80002460 24845830 */   addiu     $a0, $a0, 0x5830
/* 3064 80002464 8FAA005C */  lw         $t2, 0x5c($sp)
/* 3068 80002468 3C088012 */  lui        $t0, %hi(D_80125830)
/* 306C 8000246C 240E0040 */  addiu      $t6, $zero, 0x40
/* 3070 80002470 240F0040 */  addiu      $t7, $zero, 0x40
/* 3074 80002474 24180040 */  addiu      $t8, $zero, 0x40
/* 3078 80002478 24190002 */  addiu      $t9, $zero, 2
/* 307C 8000247C 25085830 */  addiu      $t0, $t0, %lo(D_80125830)
/* 3080 80002480 24095622 */  addiu      $t1, $zero, 0x5622
/* 3084 80002484 240B1000 */  addiu      $t3, $zero, 0x1000
/* 3088 80002488 27AC0020 */  addiu      $t4, $sp, 0x20
/* 308C 8000248C AFAE002C */  sw         $t6, 0x2c($sp)
/* 3090 80002490 AFAF0030 */  sw         $t7, 0x30($sp)
/* 3094 80002494 AFB80034 */  sw         $t8, 0x34($sp)
/* 3098 80002498 AFA0003C */  sw         $zero, 0x3c($sp)
/* 309C 8000249C A3B90048 */  sb         $t9, 0x48($sp)
/* 30A0 800024A0 AFA00044 */  sw         $zero, 0x44($sp)
/* 30A4 800024A4 AFA80040 */  sw         $t0, 0x40($sp)
/* 30A8 800024A8 AFA90020 */  sw         $t1, 0x20($sp)
/* 30AC 800024AC AFAB0028 */  sw         $t3, 0x28($sp)
/* 30B0 800024B0 AFAC0010 */  sw         $t4, 0x10($sp)
/* 30B4 800024B4 8FA40050 */  lw         $a0, 0x50($sp)
/* 30B8 800024B8 8FA50054 */  lw         $a1, 0x54($sp)
/* 30BC 800024BC 27A6002C */  addiu      $a2, $sp, 0x2c
/* 30C0 800024C0 8FA70058 */  lw         $a3, 0x58($sp)
/* 30C4 800024C4 0C000114 */  jal        func_80000450
/* 30C8 800024C8 AFAA0024 */   sw        $t2, 0x24($sp)
/* 30CC 800024CC 3C068012 */  lui        $a2, %hi(D_80125830)
/* 30D0 800024D0 240D3E80 */  addiu      $t5, $zero, 0x3e80
/* 30D4 800024D4 AFAD0010 */  sw         $t5, 0x10($sp)
/* 30D8 800024D8 24C65830 */  addiu      $a2, $a2, %lo(D_80125830)
/* 30DC 800024DC 00002025 */  or         $a0, $zero, $zero
/* 30E0 800024E0 00002825 */  or         $a1, $zero, $zero
/* 30E4 800024E4 0C02E384 */  jal        func_800B8E10
/* 30E8 800024E8 24070001 */   addiu     $a3, $zero, 1
/* 30EC 800024EC 3C018012 */  lui        $at, %hi(D_80125840)
/* 30F0 800024F0 3C068012 */  lui        $a2, %hi(D_80125830)
/* 30F4 800024F4 240E2328 */  addiu      $t6, $zero, 0x2328
/* 30F8 800024F8 AC225840 */  sw         $v0, %lo(D_80125840)($at)
/* 30FC 800024FC AFAE0010 */  sw         $t6, 0x10($sp)
/* 3100 80002500 24C65830 */  addiu      $a2, $a2, %lo(D_80125830)
/* 3104 80002504 00002025 */  or         $a0, $zero, $zero
/* 3108 80002508 00002825 */  or         $a1, $zero, $zero
/* 310C 8000250C 0C02E384 */  jal        func_800B8E10
/* 3110 80002510 24070001 */   addiu     $a3, $zero, 1
/* 3114 80002514 3C018012 */  lui        $at, %hi(D_80125848)
/* 3118 80002518 3C068012 */  lui        $a2, %hi(D_80125830)
/* 311C 8000251C 240F6590 */  addiu      $t7, $zero, 0x6590
/* 3120 80002520 AC225848 */  sw         $v0, %lo(D_80125848)($at)
/* 3124 80002524 AFAF0010 */  sw         $t7, 0x10($sp)
/* 3128 80002528 24C65830 */  addiu      $a2, $a2, %lo(D_80125830)
/* 312C 8000252C 00002025 */  or         $a0, $zero, $zero
/* 3130 80002530 00002825 */  or         $a1, $zero, $zero
/* 3134 80002534 0C02E384 */  jal        func_800B8E10
/* 3138 80002538 24070001 */   addiu     $a3, $zero, 1
/* 313C 8000253C 3C018012 */  lui        $at, %hi(D_80125844)
/* 3140 80002540 AC225844 */  sw         $v0, %lo(D_80125844)($at)
/* 3144 80002544 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3148 80002548 27BD0050 */  addiu      $sp, $sp, 0x50
/* 314C 8000254C 03E00008 */  jr         $ra
/* 3150 80002550 00000000 */   nop

glabel func_80002554
/* 3154 80002554 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3158 80002558 AFBF001C */  sw         $ra, 0x1c($sp)
/* 315C 8000255C AFA40038 */  sw         $a0, 0x38($sp)
/* 3160 80002560 AFA5003C */  sw         $a1, 0x3c($sp)
/* 3164 80002564 AFB00018 */  sw         $s0, 0x18($sp)
/* 3168 80002568 3C0E800C */  lui        $t6, %hi(D_800BBF68)
/* 316C 8000256C 8DCEBF68 */  lw         $t6, %lo(D_800BBF68)($t6)
/* 3170 80002570 11C00003 */  beqz       $t6, .L80002580
/* 3174 80002574 00000000 */   nop
/* 3178 80002578 0C0009A9 */  jal        func_800026A4
/* 317C 8000257C 00000000 */   nop
.L80002580:
/* 3180 80002580 3C058012 */  lui        $a1, %hi(D_80125840)
/* 3184 80002584 8CA55840 */  lw         $a1, %lo(D_80125840)($a1)
/* 3188 80002588 8FA40038 */  lw         $a0, 0x38($sp)
/* 318C 8000258C 0C000460 */  jal        func_80001180
/* 3190 80002590 00003025 */   or        $a2, $zero, $zero
/* 3194 80002594 3C018012 */  lui        $at, %hi(D_80125850)
/* 3198 80002598 240F0050 */  addiu      $t7, $zero, 0x50
/* 319C 8000259C 24180040 */  addiu      $t8, $zero, 0x40
/* 31A0 800025A0 AC2F5850 */  sw         $t7, %lo(D_80125850)($at)
/* 31A4 800025A4 AC385854 */  sw         $t8, 0x5854($at)
/* 31A8 800025A8 3C198012 */  lui        $t9, %hi(D_80125830)
/* 31AC 800025AC 27395830 */  addiu      $t9, $t9, %lo(D_80125830)
/* 31B0 800025B0 3C018012 */  lui        $at, %hi(D_80125858)
/* 31B4 800025B4 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 31B8 800025B8 3C058012 */  lui        $a1, %hi(D_80125850)
/* 31BC 800025BC AC395858 */  sw         $t9, %lo(D_80125858)($at)
/* 31C0 800025C0 24A55850 */  addiu      $a1, $a1, %lo(D_80125850)
/* 31C4 800025C4 0C026B38 */  jal        func_8009ACE0
/* 31C8 800025C8 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
/* 31CC 800025CC 3C048012 */  lui        $a0, %hi(D_80125840)
/* 31D0 800025D0 8C845840 */  lw         $a0, %lo(D_80125840)($a0)
/* 31D4 800025D4 0C026A35 */  jal        func_8009A8D4
/* 31D8 800025D8 8FA5003C */   lw        $a1, 0x3c($sp)
/* 31DC 800025DC 3C088012 */  lui        $t0, %hi(D_80125840)
/* 31E0 800025E0 8D085840 */  lw         $t0, %lo(D_80125840)($t0)
/* 31E4 800025E4 8D090004 */  lw         $t1, 4($t0)
/* 31E8 800025E8 AFA90034 */  sw         $t1, 0x34($sp)
/* 31EC 800025EC 8D2A000C */  lw         $t2, 0xc($t1)
/* 31F0 800025F0 AFA00028 */  sw         $zero, 0x28($sp)
/* 31F4 800025F4 AFAA002C */  sw         $t2, 0x2c($sp)
/* 31F8 800025F8 854B000E */  lh         $t3, 0xe($t2)
/* 31FC 800025FC 11600022 */  beqz       $t3, .L80002688
/* 3200 80002600 00000000 */   nop
.L80002604:
/* 3204 80002604 8FAD0028 */  lw         $t5, 0x28($sp)
/* 3208 80002608 8FAC002C */  lw         $t4, 0x2c($sp)
/* 320C 8000260C 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3210 80002610 000D7080 */  sll        $t6, $t5, 2
/* 3214 80002614 018E7821 */  addu       $t7, $t4, $t6
/* 3218 80002618 8DF80010 */  lw         $t8, 0x10($t7)
/* 321C 8000261C 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3220 80002620 AFB80030 */  sw         $t8, 0x30($sp)
/* 3224 80002624 0C02E564 */  jal        func_800B9590
/* 3228 80002628 03002825 */   or        $a1, $t8, $zero
/* 322C 8000262C 8FB90028 */  lw         $t9, 0x28($sp)
/* 3230 80002630 00028400 */  sll        $s0, $v0, 0x10
/* 3234 80002634 3C018012 */  lui        $at, %hi(D_80125860)
/* 3238 80002638 00194040 */  sll        $t0, $t9, 1
/* 323C 8000263C 00280821 */  addu       $at, $at, $t0
/* 3240 80002640 00108403 */  sra        $s0, $s0, 0x10
/* 3244 80002644 A4305860 */  sh         $s0, %lo(D_80125860)($at)
/* 3248 80002648 2401FFFF */  addiu      $at, $zero, -1
/* 324C 8000264C 12010006 */  beq        $s0, $at, .L80002668
/* 3250 80002650 00000000 */   nop
/* 3254 80002654 3C09800C */  lui        $t1, %hi(D_800BBF68)
/* 3258 80002658 8D29BF68 */  lw         $t1, %lo(D_800BBF68)($t1)
/* 325C 8000265C 3C01800C */  lui        $at, %hi(D_800BBF68)
/* 3260 80002660 252A0001 */  addiu      $t2, $t1, 1
/* 3264 80002664 AC2ABF68 */  sw         $t2, %lo(D_800BBF68)($at)
.L80002668:
/* 3268 80002668 8FAB0028 */  lw         $t3, 0x28($sp)
/* 326C 8000266C 8FAC002C */  lw         $t4, 0x2c($sp)
/* 3270 80002670 256D0001 */  addiu      $t5, $t3, 1
/* 3274 80002674 AFAD0028 */  sw         $t5, 0x28($sp)
/* 3278 80002678 858E000E */  lh         $t6, 0xe($t4)
/* 327C 8000267C 01AE082B */  sltu       $at, $t5, $t6
/* 3280 80002680 1420FFE0 */  bnez       $at, .L80002604
/* 3284 80002684 00000000 */   nop
.L80002688:
/* 3288 80002688 3C02800C */  lui        $v0, %hi(D_800BBF68)
/* 328C 8000268C 8C42BF68 */  lw         $v0, %lo(D_800BBF68)($v0)
/* 3290 80002690 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3294 80002694 8FB00018 */  lw         $s0, 0x18($sp)
/* 3298 80002698 27BD0038 */  addiu      $sp, $sp, 0x38
/* 329C 8000269C 03E00008 */  jr         $ra
/* 32A0 800026A0 00000000 */   nop

glabel func_800026A4
/* 32A4 800026A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 32A8 800026A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32AC 800026AC 3C0E800C */  lui        $t6, %hi(D_800BBF68)
/* 32B0 800026B0 8DCEBF68 */  lw         $t6, %lo(D_800BBF68)($t6)
/* 32B4 800026B4 11C00025 */  beqz       $t6, .L8000274C
/* 32B8 800026B8 00000000 */   nop
/* 32BC 800026BC 11C0000F */  beqz       $t6, .L800026FC
/* 32C0 800026C0 AFA0001C */   sw        $zero, 0x1c($sp)
.L800026C4:
/* 32C4 800026C4 0C000AC2 */  jal        func_80002B08
/* 32C8 800026C8 8FA4001C */   lw        $a0, 0x1c($sp)
/* 32CC 800026CC 10400003 */  beqz       $v0, .L800026DC
/* 32D0 800026D0 00000000 */   nop
/* 32D4 800026D4 0C000AA2 */  jal        func_80002A88
/* 32D8 800026D8 8FA4001C */   lw        $a0, 0x1c($sp)
.L800026DC:
/* 32DC 800026DC 8FAF001C */  lw         $t7, 0x1c($sp)
/* 32E0 800026E0 3C19800C */  lui        $t9, %hi(D_800BBF68)
/* 32E4 800026E4 8F39BF68 */  lw         $t9, %lo(D_800BBF68)($t9)
/* 32E8 800026E8 25F80001 */  addiu      $t8, $t7, 1
/* 32EC 800026EC AFB8001C */  sw         $t8, 0x1c($sp)
/* 32F0 800026F0 0319082B */  sltu       $at, $t8, $t9
/* 32F4 800026F4 1420FFF3 */  bnez       $at, .L800026C4
/* 32F8 800026F8 00000000 */   nop
.L800026FC:
/* 32FC 800026FC 3C08800C */  lui        $t0, %hi(D_800BBF68)
/* 3300 80002700 8D08BF68 */  lw         $t0, %lo(D_800BBF68)($t0)
/* 3304 80002704 1100000E */  beqz       $t0, .L80002740
/* 3308 80002708 00000000 */   nop
.L8000270C:
/* 330C 8000270C 3C09800C */  lui        $t1, %hi(D_800BBF68)
/* 3310 80002710 8D29BF68 */  lw         $t1, %lo(D_800BBF68)($t1)
/* 3314 80002714 3C01800C */  lui        $at, %hi(D_800BBF68)
/* 3318 80002718 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 331C 8000271C 252AFFFF */  addiu      $t2, $t1, -1
/* 3320 80002720 AC2ABF68 */  sw         $t2, %lo(D_800BBF68)($at)
/* 3324 80002724 01402825 */  or         $a1, $t2, $zero
/* 3328 80002728 0C02BA58 */  jal        func_800AE960
/* 332C 8000272C 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
/* 3330 80002730 3C0B800C */  lui        $t3, %hi(D_800BBF68)
/* 3334 80002734 8D6BBF68 */  lw         $t3, %lo(D_800BBF68)($t3)
/* 3338 80002738 1560FFF4 */  bnez       $t3, .L8000270C
/* 333C 8000273C 00000000 */   nop
.L80002740:
/* 3340 80002740 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3344 80002744 0C025CFC */  jal        func_800973F0
/* 3348 80002748 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
.L8000274C:
/* 334C 8000274C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3350 80002750 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3354 80002754 03E00008 */  jr         $ra
/* 3358 80002758 00000000 */   nop

glabel func_8000275C
/* 335C 8000275C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3360 80002760 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3364 80002764 AFA40018 */  sw         $a0, 0x18($sp)
/* 3368 80002768 AFA5001C */  sw         $a1, 0x1c($sp)
/* 336C 8000276C AFA60020 */  sw         $a2, 0x20($sp)
/* 3370 80002770 AFA70024 */  sw         $a3, 0x24($sp)
/* 3374 80002774 3C0E800D */  lui        $t6, %hi(D_800CB8EC)
/* 3378 80002778 85CEB8EC */  lh         $t6, %lo(D_800CB8EC)($t6)
/* 337C 8000277C 15C00033 */  bnez       $t6, .L8000284C
/* 3380 80002780 00000000 */   nop
/* 3384 80002784 8FAF0018 */  lw         $t7, 0x18($sp)
/* 3388 80002788 3C198012 */  lui        $t9, %hi(D_80125860)
/* 338C 8000278C 2401FFFF */  addiu      $at, $zero, -1
/* 3390 80002790 000FC040 */  sll        $t8, $t7, 1
/* 3394 80002794 0338C821 */  addu       $t9, $t9, $t8
/* 3398 80002798 87395860 */  lh         $t9, %lo(D_80125860)($t9)
/* 339C 8000279C 1321002B */  beq        $t9, $at, .L8000284C
/* 33A0 800027A0 00000000 */   nop
/* 33A4 800027A4 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 33A8 800027A8 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 33AC 800027AC 0C02819C */  jal        func_800A0670
/* 33B0 800027B0 03202825 */   or        $a1, $t9, $zero
/* 33B4 800027B4 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 33B8 800027B8 0C026968 */  jal        func_8009A5A0
/* 33BC 800027BC 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
/* 33C0 800027C0 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 33C4 800027C4 0C02D42C */  jal        func_800B50B0
/* 33C8 800027C8 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
/* 33CC 800027CC 24010001 */  addiu      $at, $zero, 1
/* 33D0 800027D0 14410007 */  bne        $v0, $at, .L800027F0
/* 33D4 800027D4 00000000 */   nop
.L800027D8:
/* 33D8 800027D8 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 33DC 800027DC 0C02D42C */  jal        func_800B50B0
/* 33E0 800027E0 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
/* 33E4 800027E4 24010001 */  addiu      $at, $zero, 1
/* 33E8 800027E8 1041FFFB */  beq        $v0, $at, .L800027D8
/* 33EC 800027EC 00000000 */   nop
.L800027F0:
/* 33F0 800027F0 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 33F4 800027F4 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 33F8 800027F8 0C029240 */  jal        func_800A4900
/* 33FC 800027FC 8FA5001C */   lw        $a1, 0x1c($sp)
/* 3400 80002800 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3404 80002804 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3408 80002808 0C027E84 */  jal        func_8009FA10
/* 340C 8000280C 00002825 */   or        $a1, $zero, $zero
/* 3410 80002810 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3414 80002814 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3418 80002818 0C02C58C */  jal        func_800B1630
/* 341C 8000281C 93A50027 */   lbu       $a1, 0x27($sp)
/* 3420 80002820 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3424 80002824 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3428 80002828 0C02B3A0 */  jal        func_800ACE80
/* 342C 8000282C 87A50022 */   lh        $a1, 0x22($sp)
/* 3430 80002830 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3434 80002834 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3438 80002838 0C027E84 */  jal        func_8009FA10
/* 343C 8000283C 93A5002B */   lbu       $a1, 0x2b($sp)
/* 3440 80002840 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3444 80002844 0C02DB58 */  jal        func_800B6D60
/* 3448 80002848 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
.L8000284C:
/* 344C 8000284C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3450 80002850 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3454 80002854 03E00008 */  jr         $ra
/* 3458 80002858 00000000 */   nop

glabel func_8000285C
/* 345C 8000285C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3460 80002860 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3464 80002864 AFA40018 */  sw         $a0, 0x18($sp)
/* 3468 80002868 AFA5001C */  sw         $a1, 0x1c($sp)
/* 346C 8000286C AFA60020 */  sw         $a2, 0x20($sp)
/* 3470 80002870 AFA70024 */  sw         $a3, 0x24($sp)
/* 3474 80002874 3C0E800D */  lui        $t6, %hi(D_800CB8EC)
/* 3478 80002878 85CEB8EC */  lh         $t6, %lo(D_800CB8EC)($t6)
/* 347C 8000287C 15C0002A */  bnez       $t6, .L80002928
/* 3480 80002880 00000000 */   nop
/* 3484 80002884 8FAF0018 */  lw         $t7, 0x18($sp)
/* 3488 80002888 3C198012 */  lui        $t9, %hi(D_80125860)
/* 348C 8000288C 2401FFFF */  addiu      $at, $zero, -1
/* 3490 80002890 000FC040 */  sll        $t8, $t7, 1
/* 3494 80002894 0338C821 */  addu       $t9, $t9, $t8
/* 3498 80002898 87395860 */  lh         $t9, %lo(D_80125860)($t9)
/* 349C 8000289C 13210022 */  beq        $t9, $at, .L80002928
/* 34A0 800028A0 00000000 */   nop
/* 34A4 800028A4 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 34A8 800028A8 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 34AC 800028AC 0C02819C */  jal        func_800A0670
/* 34B0 800028B0 03202825 */   or        $a1, $t9, $zero
/* 34B4 800028B4 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 34B8 800028B8 0C02D42C */  jal        func_800B50B0
/* 34BC 800028BC 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
/* 34C0 800028C0 14400019 */  bnez       $v0, .L80002928
/* 34C4 800028C4 00000000 */   nop
/* 34C8 800028C8 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 34CC 800028CC 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 34D0 800028D0 0C029240 */  jal        func_800A4900
/* 34D4 800028D4 8FA5001C */   lw        $a1, 0x1c($sp)
/* 34D8 800028D8 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 34DC 800028DC 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 34E0 800028E0 0C027E84 */  jal        func_8009FA10
/* 34E4 800028E4 00002825 */   or        $a1, $zero, $zero
/* 34E8 800028E8 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 34EC 800028EC 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 34F0 800028F0 0C02C58C */  jal        func_800B1630
/* 34F4 800028F4 93A50027 */   lbu       $a1, 0x27($sp)
/* 34F8 800028F8 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 34FC 800028FC 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3500 80002900 0C02B3A0 */  jal        func_800ACE80
/* 3504 80002904 87A50022 */   lh        $a1, 0x22($sp)
/* 3508 80002908 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 350C 8000290C 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3510 80002910 0C027E84 */  jal        func_8009FA10
/* 3514 80002914 93A5002B */   lbu       $a1, 0x2b($sp)
/* 3518 80002918 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 351C 8000291C 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3520 80002920 0C027F04 */  jal        func_8009FC10
/* 3524 80002924 8FA5002C */   lw        $a1, 0x2c($sp)
.L80002928:
/* 3528 80002928 8FBF0014 */  lw         $ra, 0x14($sp)
/* 352C 8000292C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3530 80002930 03E00008 */  jr         $ra
/* 3534 80002934 00000000 */   nop

glabel func_80002938
/* 3538 80002938 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 353C 8000293C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3540 80002940 AFA40018 */  sw         $a0, 0x18($sp)
/* 3544 80002944 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3548 80002948 AFA60020 */  sw         $a2, 0x20($sp)
/* 354C 8000294C AFA70024 */  sw         $a3, 0x24($sp)
/* 3550 80002950 3C0E800D */  lui        $t6, %hi(D_800CB8EC)
/* 3554 80002954 85CEB8EC */  lh         $t6, %lo(D_800CB8EC)($t6)
/* 3558 80002958 15C0002B */  bnez       $t6, .L80002A08
/* 355C 8000295C 00000000 */   nop
/* 3560 80002960 8FAF0018 */  lw         $t7, 0x18($sp)
/* 3564 80002964 3C198012 */  lui        $t9, %hi(D_80125860)
/* 3568 80002968 2401FFFF */  addiu      $at, $zero, -1
/* 356C 8000296C 000FC040 */  sll        $t8, $t7, 1
/* 3570 80002970 0338C821 */  addu       $t9, $t9, $t8
/* 3574 80002974 87395860 */  lh         $t9, %lo(D_80125860)($t9)
/* 3578 80002978 13210023 */  beq        $t9, $at, .L80002A08
/* 357C 8000297C 00000000 */   nop
/* 3580 80002980 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3584 80002984 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3588 80002988 0C02819C */  jal        func_800A0670
/* 358C 8000298C 03202825 */   or        $a1, $t9, $zero
/* 3590 80002990 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3594 80002994 0C02D42C */  jal        func_800B50B0
/* 3598 80002998 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
/* 359C 8000299C 24010001 */  addiu      $at, $zero, 1
/* 35A0 800029A0 14410019 */  bne        $v0, $at, .L80002A08
/* 35A4 800029A4 00000000 */   nop
/* 35A8 800029A8 93A8001F */  lbu        $t0, 0x1f($sp)
/* 35AC 800029AC 31090001 */  andi       $t1, $t0, 1
/* 35B0 800029B0 11200005 */  beqz       $t1, .L800029C8
/* 35B4 800029B4 00000000 */   nop
/* 35B8 800029B8 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 35BC 800029BC 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 35C0 800029C0 0C029240 */  jal        func_800A4900
/* 35C4 800029C4 8FA50020 */   lw        $a1, 0x20($sp)
.L800029C8:
/* 35C8 800029C8 93AA001F */  lbu        $t2, 0x1f($sp)
/* 35CC 800029CC 314B0004 */  andi       $t3, $t2, 4
/* 35D0 800029D0 11600005 */  beqz       $t3, .L800029E8
/* 35D4 800029D4 00000000 */   nop
/* 35D8 800029D8 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 35DC 800029DC 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 35E0 800029E0 0C02C58C */  jal        func_800B1630
/* 35E4 800029E4 93A5002B */   lbu       $a1, 0x2b($sp)
.L800029E8:
/* 35E8 800029E8 93AC001F */  lbu        $t4, 0x1f($sp)
/* 35EC 800029EC 318D0002 */  andi       $t5, $t4, 2
/* 35F0 800029F0 11A00005 */  beqz       $t5, .L80002A08
/* 35F4 800029F4 00000000 */   nop
/* 35F8 800029F8 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 35FC 800029FC 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3600 80002A00 0C02B3A0 */  jal        func_800ACE80
/* 3604 80002A04 87A50026 */   lh        $a1, 0x26($sp)
.L80002A08:
/* 3608 80002A08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 360C 80002A0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3610 80002A10 03E00008 */  jr         $ra
/* 3614 80002A14 00000000 */   nop

glabel func_80002A18
/* 3618 80002A18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 361C 80002A1C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3620 80002A20 AFA40018 */  sw         $a0, 0x18($sp)
/* 3624 80002A24 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3628 80002A28 3C0E800D */  lui        $t6, %hi(D_800CB8EC)
/* 362C 80002A2C 85CEB8EC */  lh         $t6, %lo(D_800CB8EC)($t6)
/* 3630 80002A30 15C00011 */  bnez       $t6, .L80002A78
/* 3634 80002A34 00000000 */   nop
/* 3638 80002A38 8FAF0018 */  lw         $t7, 0x18($sp)
/* 363C 80002A3C 3C198012 */  lui        $t9, %hi(D_80125860)
/* 3640 80002A40 2401FFFF */  addiu      $at, $zero, -1
/* 3644 80002A44 000FC040 */  sll        $t8, $t7, 1
/* 3648 80002A48 0338C821 */  addu       $t9, $t9, $t8
/* 364C 80002A4C 87395860 */  lh         $t9, %lo(D_80125860)($t9)
/* 3650 80002A50 13210009 */  beq        $t9, $at, .L80002A78
/* 3654 80002A54 00000000 */   nop
/* 3658 80002A58 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 365C 80002A5C 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3660 80002A60 0C02819C */  jal        func_800A0670
/* 3664 80002A64 03202825 */   or        $a1, $t9, $zero
/* 3668 80002A68 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 366C 80002A6C 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3670 80002A70 0C027E84 */  jal        func_8009FA10
/* 3674 80002A74 93A5001F */   lbu       $a1, 0x1f($sp)
.L80002A78:
/* 3678 80002A78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 367C 80002A7C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3680 80002A80 03E00008 */  jr         $ra
/* 3684 80002A84 00000000 */   nop

glabel func_80002A88
/* 3688 80002A88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 368C 80002A8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3690 80002A90 AFA40018 */  sw         $a0, 0x18($sp)
/* 3694 80002A94 3C0E800D */  lui        $t6, %hi(D_800CB8EC)
/* 3698 80002A98 85CEB8EC */  lh         $t6, %lo(D_800CB8EC)($t6)
/* 369C 80002A9C 15C00016 */  bnez       $t6, .L80002AF8
/* 36A0 80002AA0 00000000 */   nop
/* 36A4 80002AA4 8FAF0018 */  lw         $t7, 0x18($sp)
/* 36A8 80002AA8 3C198012 */  lui        $t9, %hi(D_80125860)
/* 36AC 80002AAC 2401FFFF */  addiu      $at, $zero, -1
/* 36B0 80002AB0 000FC040 */  sll        $t8, $t7, 1
/* 36B4 80002AB4 0338C821 */  addu       $t9, $t9, $t8
/* 36B8 80002AB8 87395860 */  lh         $t9, %lo(D_80125860)($t9)
/* 36BC 80002ABC 1321000E */  beq        $t9, $at, .L80002AF8
/* 36C0 80002AC0 00000000 */   nop
/* 36C4 80002AC4 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 36C8 80002AC8 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 36CC 80002ACC 0C02819C */  jal        func_800A0670
/* 36D0 80002AD0 03202825 */   or        $a1, $t9, $zero
/* 36D4 80002AD4 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 36D8 80002AD8 0C02D42C */  jal        func_800B50B0
/* 36DC 80002ADC 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
/* 36E0 80002AE0 24010001 */  addiu      $at, $zero, 1
/* 36E4 80002AE4 14410004 */  bne        $v0, $at, .L80002AF8
/* 36E8 80002AE8 00000000 */   nop
/* 36EC 80002AEC 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 36F0 80002AF0 0C026968 */  jal        func_8009A5A0
/* 36F4 80002AF4 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
.L80002AF8:
/* 36F8 80002AF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36FC 80002AFC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3700 80002B00 03E00008 */  jr         $ra
/* 3704 80002B04 00000000 */   nop

glabel func_80002B08
/* 3708 80002B08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 370C 80002B0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3710 80002B10 AFA40018 */  sw         $a0, 0x18($sp)
/* 3714 80002B14 3C0E800D */  lui        $t6, %hi(D_800CB8EC)
/* 3718 80002B18 85CEB8EC */  lh         $t6, %lo(D_800CB8EC)($t6)
/* 371C 80002B1C 11C00003 */  beqz       $t6, .L80002B2C
/* 3720 80002B20 00000000 */   nop
/* 3724 80002B24 10000017 */  b          .L80002B84
/* 3728 80002B28 00001025 */   or        $v0, $zero, $zero
.L80002B2C:
/* 372C 80002B2C 8FAF0018 */  lw         $t7, 0x18($sp)
/* 3730 80002B30 3C198012 */  lui        $t9, %hi(D_80125860)
/* 3734 80002B34 2401FFFF */  addiu      $at, $zero, -1
/* 3738 80002B38 000FC040 */  sll        $t8, $t7, 1
/* 373C 80002B3C 0338C821 */  addu       $t9, $t9, $t8
/* 3740 80002B40 87395860 */  lh         $t9, %lo(D_80125860)($t9)
/* 3744 80002B44 1321000E */  beq        $t9, $at, .L80002B80
/* 3748 80002B48 00000000 */   nop
/* 374C 80002B4C 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3750 80002B50 8C84BF74 */  lw         $a0, %lo(D_800BBF74)($a0)
/* 3754 80002B54 0C02819C */  jal        func_800A0670
/* 3758 80002B58 03202825 */   or        $a1, $t9, $zero
/* 375C 80002B5C 3C04800C */  lui        $a0, %hi(D_800BBF74)
/* 3760 80002B60 0C02D42C */  jal        func_800B50B0
/* 3764 80002B64 8C84BF74 */   lw        $a0, %lo(D_800BBF74)($a0)
/* 3768 80002B68 14400003 */  bnez       $v0, .L80002B78
/* 376C 80002B6C 00000000 */   nop
/* 3770 80002B70 10000004 */  b          .L80002B84
/* 3774 80002B74 00001025 */   or        $v0, $zero, $zero
.L80002B78:
/* 3778 80002B78 10000002 */  b          .L80002B84
/* 377C 80002B7C 24020001 */   addiu     $v0, $zero, 1
.L80002B80:
/* 3780 80002B80 00001025 */  or         $v0, $zero, $zero
.L80002B84:
/* 3784 80002B84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3788 80002B88 27BD0018 */  addiu      $sp, $sp, 0x18
/* 378C 80002B8C 03E00008 */  jr         $ra
/* 3790 80002B90 00000000 */   nop

glabel func_80002B94
/* 3794 80002B94 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3798 80002B98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 379C 80002B9C AFA40038 */  sw         $a0, 0x38($sp)
/* 37A0 80002BA0 AFA5003C */  sw         $a1, 0x3c($sp)
/* 37A4 80002BA4 AFA60040 */  sw         $a2, 0x40($sp)
/* 37A8 80002BA8 3C0E800C */  lui        $t6, %hi(D_800BBF6C)
/* 37AC 80002BAC 8DCEBF6C */  lw         $t6, %lo(D_800BBF6C)($t6)
/* 37B0 80002BB0 11C00003 */  beqz       $t6, .L80002BC0
/* 37B4 80002BB4 00000000 */   nop
/* 37B8 80002BB8 0C000B3F */  jal        func_80002CFC
/* 37BC 80002BBC 00000000 */   nop
.L80002BC0:
/* 37C0 80002BC0 3C0F800C */  lui        $t7, %hi(D_800BBF6C)
/* 37C4 80002BC4 8DEFBF6C */  lw         $t7, %lo(D_800BBF6C)($t7)
/* 37C8 80002BC8 15E0001A */  bnez       $t7, .L80002C34
/* 37CC 80002BCC 00000000 */   nop
/* 37D0 80002BD0 3C098012 */  lui        $t1, %hi(D_80125830)
/* 37D4 80002BD4 24180040 */  addiu      $t8, $zero, 0x40
/* 37D8 80002BD8 24190040 */  addiu      $t9, $zero, 0x40
/* 37DC 80002BDC 24080010 */  addiu      $t0, $zero, 0x10
/* 37E0 80002BE0 25295830 */  addiu      $t1, $t1, %lo(D_80125830)
/* 37E4 80002BE4 3C04800C */  lui        $a0, 0x800c
/* 37E8 80002BE8 AFB8001C */  sw         $t8, 0x1c($sp)
/* 37EC 80002BEC AFB90020 */  sw         $t9, 0x20($sp)
/* 37F0 80002BF0 A3A80024 */  sb         $t0, 0x24($sp)
/* 37F4 80002BF4 AFA90028 */  sw         $t1, 0x28($sp)
/* 37F8 80002BF8 AFA0002C */  sw         $zero, 0x2c($sp)
/* 37FC 80002BFC AFA00030 */  sw         $zero, 0x30($sp)
/* 3800 80002C00 AFA00034 */  sw         $zero, 0x34($sp)
/* 3804 80002C04 8C84BF78 */  lw         $a0, -0x4088($a0)
/* 3808 80002C08 0C027038 */  jal        func_8009C0E0
/* 380C 80002C0C 27A5001C */   addiu     $a1, $sp, 0x1c
/* 3810 80002C10 3C058012 */  lui        $a1, %hi(D_80125848)
/* 3814 80002C14 8CA55848 */  lw         $a1, %lo(D_80125848)($a1)
/* 3818 80002C18 8FA4003C */  lw         $a0, 0x3c($sp)
/* 381C 80002C1C 0C000460 */  jal        func_80001180
/* 3820 80002C20 00003025 */   or        $a2, $zero, $zero
/* 3824 80002C24 3C048012 */  lui        $a0, %hi(D_80125848)
/* 3828 80002C28 8C845848 */  lw         $a0, %lo(D_80125848)($a0)
/* 382C 80002C2C 0C026A35 */  jal        func_8009A8D4
/* 3830 80002C30 8FA50040 */   lw        $a1, 0x40($sp)
.L80002C34:
/* 3834 80002C34 3C058012 */  lui        $a1, %hi(D_80125844)
/* 3838 80002C38 8CA55844 */  lw         $a1, %lo(D_80125844)($a1)
/* 383C 80002C3C 8FA40038 */  lw         $a0, 0x38($sp)
/* 3840 80002C40 0C000460 */  jal        func_80001180
/* 3844 80002C44 00003025 */   or        $a2, $zero, $zero
/* 3848 80002C48 AFA20018 */  sw         $v0, 0x18($sp)
/* 384C 80002C4C 3C04800C */  lui        $a0, %hi(D_800BBF7C)
/* 3850 80002C50 3C058012 */  lui        $a1, %hi(D_80125844)
/* 3854 80002C54 8CA55844 */  lw         $a1, %lo(D_80125844)($a1)
/* 3858 80002C58 8C84BF7C */  lw         $a0, %lo(D_800BBF7C)($a0)
/* 385C 80002C5C 0C02797C */  jal        func_8009E5F0
/* 3860 80002C60 8FA60018 */   lw        $a2, 0x18($sp)
/* 3864 80002C64 3C04800C */  lui        $a0, %hi(D_800BBF7C)
/* 3868 80002C68 3C058012 */  lui        $a1, %hi(D_80125900)
/* 386C 80002C6C 24A55900 */  addiu      $a1, $a1, %lo(D_80125900)
/* 3870 80002C70 8C84BF7C */  lw         $a0, %lo(D_800BBF7C)($a0)
/* 3874 80002C74 0C027B1D */  jal        func_8009EC74
/* 3878 80002C78 00003025 */   or        $a2, $zero, $zero
/* 387C 80002C7C 3C04800C */  lui        $a0, %hi(D_800BBF7C)
/* 3880 80002C80 3C058012 */  lui        $a1, %hi(D_80125910)
/* 3884 80002C84 24A55910 */  addiu      $a1, $a1, %lo(D_80125910)
/* 3888 80002C88 8C84BF7C */  lw         $a0, %lo(D_800BBF7C)($a0)
/* 388C 80002C8C 0C027B1D */  jal        func_8009EC74
/* 3890 80002C90 2406FFFF */   addiu     $a2, $zero, -1
/* 3894 80002C94 3C04800C */  lui        $a0, %hi(D_800BBF78)
/* 3898 80002C98 3C058012 */  lui        $a1, %hi(D_80125900)
/* 389C 80002C9C 3C068012 */  lui        $a2, %hi(D_80125910)
/* 38A0 80002CA0 24C65910 */  addiu      $a2, $a2, %lo(D_80125910)
/* 38A4 80002CA4 24A55900 */  addiu      $a1, $a1, %lo(D_80125900)
/* 38A8 80002CA8 8C84BF78 */  lw         $a0, %lo(D_800BBF78)($a0)
/* 38AC 80002CAC 0C02B3D0 */  jal        func_800ACF40
/* 38B0 80002CB0 2407FFFF */   addiu     $a3, $zero, -1
/* 38B4 80002CB4 3C04800C */  lui        $a0, %hi(D_800BBF78)
/* 38B8 80002CB8 3C05800C */  lui        $a1, %hi(D_800BBF7C)
/* 38BC 80002CBC 8CA5BF7C */  lw         $a1, %lo(D_800BBF7C)($a1)
/* 38C0 80002CC0 0C028188 */  jal        func_800A0620
/* 38C4 80002CC4 8C84BF78 */   lw        $a0, %lo(D_800BBF78)($a0)
/* 38C8 80002CC8 3C0A8012 */  lui        $t2, %hi(D_80125848)
/* 38CC 80002CCC 8D4A5848 */  lw         $t2, %lo(D_80125848)($t2)
/* 38D0 80002CD0 3C04800C */  lui        $a0, %hi(D_800BBF78)
/* 38D4 80002CD4 8C84BF78 */  lw         $a0, %lo(D_800BBF78)($a0)
/* 38D8 80002CD8 0C0262B0 */  jal        func_80098AC0
/* 38DC 80002CDC 8D450004 */   lw        $a1, 4($t2)
/* 38E0 80002CE0 240B0001 */  addiu      $t3, $zero, 1
/* 38E4 80002CE4 3C01800C */  lui        $at, %hi(D_800BBF6C)
/* 38E8 80002CE8 AC2BBF6C */  sw         $t3, %lo(D_800BBF6C)($at)
/* 38EC 80002CEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 38F0 80002CF0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 38F4 80002CF4 03E00008 */  jr         $ra
/* 38F8 80002CF8 00000000 */   nop

glabel func_80002CFC
/* 38FC 80002CFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3900 80002D00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3904 80002D04 0C000B5C */  jal        func_80002D70
/* 3908 80002D08 00000000 */   nop
/* 390C 80002D0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3910 80002D10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3914 80002D14 03E00008 */  jr         $ra
/* 3918 80002D18 00000000 */   nop

glabel func_80002D1C
/* 391C 80002D1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3920 80002D20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3924 80002D24 AFA40018 */  sw         $a0, 0x18($sp)
/* 3928 80002D28 3C0E800C */  lui        $t6, %hi(D_800BBF70)
/* 392C 80002D2C 8DCEBF70 */  lw         $t6, %lo(D_800BBF70)($t6)
/* 3930 80002D30 15C0000B */  bnez       $t6, .L80002D60
/* 3934 80002D34 00000000 */   nop
/* 3938 80002D38 240F0001 */  addiu      $t7, $zero, 1
/* 393C 80002D3C 3C01800C */  lui        $at, %hi(D_800BBF70)
/* 3940 80002D40 3C04800C */  lui        $a0, %hi(D_800BBF78)
/* 3944 80002D44 AC2FBF70 */  sw         $t7, %lo(D_800BBF70)($at)
/* 3948 80002D48 8C84BF78 */  lw         $a0, %lo(D_800BBF78)($a0)
/* 394C 80002D4C 0C02B32C */  jal        func_800ACCB0
/* 3950 80002D50 87A5001A */   lh        $a1, 0x1a($sp)
/* 3954 80002D54 3C04800C */  lui        $a0, %hi(D_800BBF78)
/* 3958 80002D58 0C02D918 */  jal        func_800B6460
/* 395C 80002D5C 8C84BF78 */   lw        $a0, %lo(D_800BBF78)($a0)
.L80002D60:
/* 3960 80002D60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3964 80002D64 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3968 80002D68 03E00008 */  jr         $ra
/* 396C 80002D6C 00000000 */   nop

glabel func_80002D70
/* 3970 80002D70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3974 80002D74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3978 80002D78 3C0E800C */  lui        $t6, %hi(D_800BBF70)
/* 397C 80002D7C 8DCEBF70 */  lw         $t6, %lo(D_800BBF70)($t6)
/* 3980 80002D80 11C0000F */  beqz       $t6, .L80002DC0
/* 3984 80002D84 3C01800C */   lui       $at, %hi(D_800BBF70)
/* 3988 80002D88 3C04800C */  lui        $a0, %hi(D_800BBF78)
/* 398C 80002D8C AC20BF70 */  sw         $zero, %lo(D_800BBF70)($at)
/* 3990 80002D90 0C027C64 */  jal        func_8009F190
/* 3994 80002D94 8C84BF78 */   lw        $a0, %lo(D_800BBF78)($a0)
/* 3998 80002D98 3C04800C */  lui        $a0, %hi(D_800BBF78)
/* 399C 80002D9C 0C02D43C */  jal        func_800B50F0
/* 39A0 80002DA0 8C84BF78 */   lw        $a0, %lo(D_800BBF78)($a0)
/* 39A4 80002DA4 10400006 */  beqz       $v0, .L80002DC0
/* 39A8 80002DA8 00000000 */   nop
.L80002DAC:
/* 39AC 80002DAC 3C04800C */  lui        $a0, %hi(D_800BBF78)
/* 39B0 80002DB0 0C02D43C */  jal        func_800B50F0
/* 39B4 80002DB4 8C84BF78 */   lw        $a0, %lo(D_800BBF78)($a0)
/* 39B8 80002DB8 1440FFFC */  bnez       $v0, .L80002DAC
/* 39BC 80002DBC 00000000 */   nop
.L80002DC0:
/* 39C0 80002DC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 39C4 80002DC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 39C8 80002DC8 03E00008 */  jr         $ra
/* 39CC 80002DCC 00000000 */   nop

glabel func_80002DD0
/* 39D0 80002DD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 39D4 80002DD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 39D8 80002DD8 AFA40018 */  sw         $a0, 0x18($sp)
/* 39DC 80002DDC 3C0E800C */  lui        $t6, %hi(D_800BBF70)
/* 39E0 80002DE0 8DCEBF70 */  lw         $t6, %lo(D_800BBF70)($t6)
/* 39E4 80002DE4 11C00005 */  beqz       $t6, .L80002DFC
/* 39E8 80002DE8 00000000 */   nop
/* 39EC 80002DEC 3C04800C */  lui        $a0, %hi(D_800BBF78)
/* 39F0 80002DF0 8C84BF78 */  lw         $a0, %lo(D_800BBF78)($a0)
/* 39F4 80002DF4 0C02B32C */  jal        func_800ACCB0
/* 39F8 80002DF8 87A5001A */   lh        $a1, 0x1a($sp)
.L80002DFC:
/* 39FC 80002DFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A00 80002E00 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3A04 80002E04 03E00008 */  jr         $ra
/* 3A08 80002E08 00000000 */   nop
/* 3A0C 80002E0C 00000000 */  nop