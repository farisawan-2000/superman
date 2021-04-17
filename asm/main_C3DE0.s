.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C31E0
/* C3DE0 800C31E0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C3DE4 800C31E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C3DE8 800C31E8 240E0001 */  addiu      $t6, $zero, 1
/* C3DEC 800C31EC 3C018014 */  lui        $at, %hi(D_80145490)
/* C3DF0 800C31F0 AFB00018 */  sw         $s0, 0x18($sp)
/* C3DF4 800C31F4 AFA00030 */  sw         $zero, 0x30($sp)
/* C3DF8 800C31F8 0C030E28 */  jal        func_800C38A0
/* C3DFC 800C31FC AC2E5490 */   sw        $t6, %lo(D_80145490)($at)
/* C3E00 800C3200 00408025 */  or         $s0, $v0, $zero
/* C3E04 800C3204 3C012000 */  lui        $at, 0x2000
/* C3E08 800C3208 0C030E24 */  jal        func_800C3890
/* C3E0C 800C320C 02012025 */   or        $a0, $s0, $at
/* C3E10 800C3210 3C040100 */  lui        $a0, 0x100
/* C3E14 800C3214 0C03408C */  jal        func_800D0230
/* C3E18 800C3218 34840800 */   ori       $a0, $a0, 0x800
/* C3E1C 800C321C 3C041FC0 */  lui        $a0, 0x1fc0
/* C3E20 800C3220 348407FC */  ori        $a0, $a0, 0x7fc
/* C3E24 800C3224 0C030F60 */  jal        func_800C3D80
/* C3E28 800C3228 27A50034 */   addiu     $a1, $sp, 0x34
/* C3E2C 800C322C 10400007 */  beqz       $v0, .L800C324C
/* C3E30 800C3230 00000000 */   nop
.L800C3234:
/* C3E34 800C3234 3C041FC0 */  lui        $a0, 0x1fc0
/* C3E38 800C3238 348407FC */  ori        $a0, $a0, 0x7fc
/* C3E3C 800C323C 0C030F60 */  jal        func_800C3D80
/* C3E40 800C3240 27A50034 */   addiu     $a1, $sp, 0x34
/* C3E44 800C3244 1440FFFB */  bnez       $v0, .L800C3234
/* C3E48 800C3248 00000000 */   nop
.L800C324C:
/* C3E4C 800C324C 8FA50034 */  lw         $a1, 0x34($sp)
/* C3E50 800C3250 3C041FC0 */  lui        $a0, 0x1fc0
/* C3E54 800C3254 348407FC */  ori        $a0, $a0, 0x7fc
/* C3E58 800C3258 34AF0008 */  ori        $t7, $a1, 8
/* C3E5C 800C325C 0C034B98 */  jal        func_800D2E60
/* C3E60 800C3260 01E02825 */   or        $a1, $t7, $zero
/* C3E64 800C3264 10400009 */  beqz       $v0, .L800C328C
/* C3E68 800C3268 00000000 */   nop
.L800C326C:
/* C3E6C 800C326C 8FA50034 */  lw         $a1, 0x34($sp)
/* C3E70 800C3270 3C041FC0 */  lui        $a0, 0x1fc0
/* C3E74 800C3274 348407FC */  ori        $a0, $a0, 0x7fc
/* C3E78 800C3278 34B80008 */  ori        $t8, $a1, 8
/* C3E7C 800C327C 0C034B98 */  jal        func_800D2E60
/* C3E80 800C3280 03002825 */   or        $a1, $t8, $zero
/* C3E84 800C3284 1440FFF9 */  bnez       $v0, .L800C326C
/* C3E88 800C3288 00000000 */   nop
.L800C328C:
/* C3E8C 800C328C 3C08800C */  lui        $t0, %hi(func_800BE5D0)
/* C3E90 800C3290 2508E5D0 */  addiu      $t0, $t0, %lo(func_800BE5D0)
/* C3E94 800C3294 8D010000 */  lw         $at, ($t0)
/* C3E98 800C3298 3C198000 */  lui        $t9, 0x8000
/* C3E9C 800C329C 3C0D800C */  lui        $t5, %hi(func_800BE5D0)
/* C3EA0 800C32A0 AF210000 */  sw         $at, ($t9)
/* C3EA4 800C32A4 8D0B0004 */  lw         $t3, 4($t0)
/* C3EA8 800C32A8 25ADE5D0 */  addiu      $t5, $t5, %lo(func_800BE5D0)
/* C3EAC 800C32AC 3C0C8000 */  lui        $t4, 0x8000
/* C3EB0 800C32B0 AF2B0004 */  sw         $t3, 4($t9)
/* C3EB4 800C32B4 8D010008 */  lw         $at, 8($t0)
/* C3EB8 800C32B8 358C0080 */  ori        $t4, $t4, 0x80
/* C3EBC 800C32BC 3C09800C */  lui        $t1, %hi(func_800BE5D0)
/* C3EC0 800C32C0 AF210008 */  sw         $at, 8($t9)
/* C3EC4 800C32C4 8D0B000C */  lw         $t3, 0xc($t0)
/* C3EC8 800C32C8 2529E5D0 */  addiu      $t1, $t1, %lo(func_800BE5D0)
/* C3ECC 800C32CC 3C0A8000 */  lui        $t2, 0x8000
/* C3ED0 800C32D0 AF2B000C */  sw         $t3, 0xc($t9)
/* C3ED4 800C32D4 8DA10000 */  lw         $at, ($t5)
/* C3ED8 800C32D8 354A0100 */  ori        $t2, $t2, 0x100
/* C3EDC 800C32DC 3C0E800C */  lui        $t6, %hi(func_800BE5D0)
/* C3EE0 800C32E0 AD810000 */  sw         $at, ($t4)
/* C3EE4 800C32E4 8DB80004 */  lw         $t8, 4($t5)
/* C3EE8 800C32E8 25CEE5D0 */  addiu      $t6, $t6, %lo(func_800BE5D0)
/* C3EEC 800C32EC 3C0F8000 */  lui        $t7, 0x8000
/* C3EF0 800C32F0 AD980004 */  sw         $t8, 4($t4)
/* C3EF4 800C32F4 8DA10008 */  lw         $at, 8($t5)
/* C3EF8 800C32F8 35EF0180 */  ori        $t7, $t7, 0x180
/* C3EFC 800C32FC 3C048000 */  lui        $a0, 0x8000
/* C3F00 800C3300 AD810008 */  sw         $at, 8($t4)
/* C3F04 800C3304 8DB8000C */  lw         $t8, 0xc($t5)
/* C3F08 800C3308 24050190 */  addiu      $a1, $zero, 0x190
/* C3F0C 800C330C AD98000C */  sw         $t8, 0xc($t4)
/* C3F10 800C3310 8D210000 */  lw         $at, ($t1)
/* C3F14 800C3314 AD410000 */  sw         $at, ($t2)
/* C3F18 800C3318 8D2B0004 */  lw         $t3, 4($t1)
/* C3F1C 800C331C AD4B0004 */  sw         $t3, 4($t2)
/* C3F20 800C3320 8D210008 */  lw         $at, 8($t1)
/* C3F24 800C3324 AD410008 */  sw         $at, 8($t2)
/* C3F28 800C3328 8D2B000C */  lw         $t3, 0xc($t1)
/* C3F2C 800C332C AD4B000C */  sw         $t3, 0xc($t2)
/* C3F30 800C3330 8DC10000 */  lw         $at, ($t6)
/* C3F34 800C3334 ADE10000 */  sw         $at, ($t7)
/* C3F38 800C3338 8DD80004 */  lw         $t8, 4($t6)
/* C3F3C 800C333C ADF80004 */  sw         $t8, 4($t7)
/* C3F40 800C3340 8DC10008 */  lw         $at, 8($t6)
/* C3F44 800C3344 ADE10008 */  sw         $at, 8($t7)
/* C3F48 800C3348 8DD8000C */  lw         $t8, 0xc($t6)
/* C3F4C 800C334C 0C030C58 */  jal        func_800C3160
/* C3F50 800C3350 ADF8000C */   sw        $t8, 0xc($t7)
/* C3F54 800C3354 3C048000 */  lui        $a0, 0x8000
/* C3F58 800C3358 0C033550 */  jal        func_800CD540
/* C3F5C 800C335C 24050190 */   addiu     $a1, $zero, 0x190
/* C3F60 800C3360 0C0345C4 */  jal        func_800D1710
/* C3F64 800C3364 00000000 */   nop
/* C3F68 800C3368 24040004 */  addiu      $a0, $zero, 4
/* C3F6C 800C336C 0C030D1C */  jal        func_800C3470
/* C3F70 800C3370 27A50030 */   addiu     $a1, $sp, 0x30
/* C3F74 800C3374 8FA80030 */  lw         $t0, 0x30($sp)
/* C3F78 800C3378 2401FFF0 */  addiu      $at, $zero, -0x10
/* C3F7C 800C337C 0101C824 */  and        $t9, $t0, $at
/* C3F80 800C3380 13200006 */  beqz       $t9, .L800C339C
/* C3F84 800C3384 AFB90030 */   sw        $t9, 0x30($sp)
/* C3F88 800C3388 3C01800E */  lui        $at, %hi(D_800DA0B0)
/* C3F8C 800C338C 03205825 */  or         $t3, $t9, $zero
/* C3F90 800C3390 240A0000 */  addiu      $t2, $zero, 0
/* C3F94 800C3394 AC2AA0B0 */  sw         $t2, %lo(D_800DA0B0)($at)
/* C3F98 800C3398 AC2BA0B4 */  sw         $t3, -0x5f4c($at)
.L800C339C:
/* C3F9C 800C339C 3C04800E */  lui        $a0, %hi(D_800DA0B0)
/* C3FA0 800C33A0 3C05800E */  lui        $a1, %hi(D_800DA0B4)
/* C3FA4 800C33A4 8CA5A0B4 */  lw         $a1, %lo(D_800DA0B4)($a1)
/* C3FA8 800C33A8 8C84A0B0 */  lw         $a0, %lo(D_800DA0B0)($a0)
/* C3FAC 800C33AC 24060000 */  addiu      $a2, $zero, 0
/* C3FB0 800C33B0 0C030D8E */  jal        func_800C3638
/* C3FB4 800C33B4 24070003 */   addiu     $a3, $zero, 3
/* C3FB8 800C33B8 AFA20020 */  sw         $v0, 0x20($sp)
/* C3FBC 800C33BC AFA30024 */  sw         $v1, 0x24($sp)
/* C3FC0 800C33C0 8FA50024 */  lw         $a1, 0x24($sp)
/* C3FC4 800C33C4 8FA40020 */  lw         $a0, 0x20($sp)
/* C3FC8 800C33C8 24060000 */  addiu      $a2, $zero, 0
/* C3FCC 800C33CC 0C030D4E */  jal        func_800C3538
/* C3FD0 800C33D0 24070004 */   addiu     $a3, $zero, 4
/* C3FD4 800C33D4 3C098000 */  lui        $t1, %hi(D_8000030C)
/* C3FD8 800C33D8 8D29030C */  lw         $t1, %lo(D_8000030C)($t1)
/* C3FDC 800C33DC 3C01800E */  lui        $at, %hi(D_800DA0B0)
/* C3FE0 800C33E0 AC22A0B0 */  sw         $v0, %lo(D_800DA0B0)($at)
/* C3FE4 800C33E4 15200005 */  bnez       $t1, .L800C33FC
/* C3FE8 800C33E8 AC23A0B4 */   sw        $v1, -0x5f4c($at)
/* C3FEC 800C33EC 3C048000 */  lui        $a0, %hi(D_8000031C)
/* C3FF0 800C33F0 2484031C */  addiu      $a0, $a0, %lo(D_8000031C)
/* C3FF4 800C33F4 0C030DE4 */  jal        func_800C3790
/* C3FF8 800C33F8 24050040 */   addiu     $a1, $zero, 0x40
.L800C33FC:
/* C3FFC 800C33FC 3C0D8000 */  lui        $t5, %hi(D_80000300)
/* C4000 800C3400 8DAD0300 */  lw         $t5, %lo(D_80000300)($t5)
/* C4004 800C3404 15A00006 */  bnez       $t5, .L800C3420
/* C4008 800C3408 00000000 */   nop
/* C400C 800C340C 3C0C02F5 */  lui        $t4, 0x2f5
/* C4010 800C3410 358CB2D2 */  ori        $t4, $t4, 0xb2d2
/* C4014 800C3414 3C01800E */  lui        $at, %hi(D_800DA0B8)
/* C4018 800C3418 1000000F */  b          .L800C3458
/* C401C 800C341C AC2CA0B8 */   sw        $t4, %lo(D_800DA0B8)($at)
.L800C3420:
/* C4020 800C3420 3C0F8000 */  lui        $t7, %hi(D_80000300)
/* C4024 800C3424 8DEF0300 */  lw         $t7, %lo(D_80000300)($t7)
/* C4028 800C3428 24010002 */  addiu      $at, $zero, 2
/* C402C 800C342C 15E10006 */  bne        $t7, $at, .L800C3448
/* C4030 800C3430 00000000 */   nop
/* C4034 800C3434 3C0E02E6 */  lui        $t6, 0x2e6
/* C4038 800C3438 35CE025C */  ori        $t6, $t6, 0x25c
/* C403C 800C343C 3C01800E */  lui        $at, %hi(D_800DA0B8)
/* C4040 800C3440 10000005 */  b          .L800C3458
/* C4044 800C3444 AC2EA0B8 */   sw        $t6, %lo(D_800DA0B8)($at)
.L800C3448:
/* C4048 800C3448 3C1802E6 */  lui        $t8, 0x2e6
/* C404C 800C344C 3718D354 */  ori        $t8, $t8, 0xd354
/* C4050 800C3450 3C01800E */  lui        $at, %hi(D_800DA0B8)
/* C4054 800C3454 AC38A0B8 */  sw         $t8, %lo(D_800DA0B8)($at)
.L800C3458:
/* C4058 800C3458 8FBF001C */  lw         $ra, 0x1c($sp)
/* C405C 800C345C 8FB00018 */  lw         $s0, 0x18($sp)
/* C4060 800C3460 27BD0038 */  addiu      $sp, $sp, 0x38
/* C4064 800C3464 03E00008 */  jr         $ra
/* C4068 800C3468 00000000 */   nop
/* C406C 800C346C 00000000 */  nop
