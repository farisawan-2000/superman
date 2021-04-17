.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A32F0
/* A3EF0 800A32F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A3EF4 800A32F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3EF8 800A32F8 AFA40020 */  sw         $a0, 0x20($sp)
/* A3EFC 800A32FC 3C0E801A */  lui        $t6, %hi(D_801A2060)
/* A3F00 800A3300 25CE2060 */  addiu      $t6, $t6, %lo(D_801A2060)
/* A3F04 800A3304 AFAE001C */  sw         $t6, 0x1c($sp)
/* A3F08 800A3308 8FA40020 */  lw         $a0, 0x20($sp)
/* A3F0C 800A330C 8FA5001C */  lw         $a1, 0x1c($sp)
/* A3F10 800A3310 0C02BE3C */  jal        func_800AF8F0
/* A3F14 800A3314 24060040 */   addiu     $a2, $zero, 0x40
/* A3F18 800A3318 8FAF001C */  lw         $t7, 0x1c($sp)
/* A3F1C 800A331C 8DF80010 */  lw         $t8, 0x10($t7)
/* A3F20 800A3320 13000006 */  beqz       $t8, .L800A333C
/* A3F24 800A3324 00000000 */   nop
/* A3F28 800A3328 8FB9001C */  lw         $t9, 0x1c($sp)
/* A3F2C 800A332C 0C027C0C */  jal        func_8009F030
/* A3F30 800A3330 8F240010 */   lw        $a0, 0x10($t9)
/* A3F34 800A3334 8FA8001C */  lw         $t0, 0x1c($sp)
/* A3F38 800A3338 AD020010 */  sw         $v0, 0x10($t0)
.L800A333C:
/* A3F3C 800A333C 8FA9001C */  lw         $t1, 0x1c($sp)
/* A3F40 800A3340 8D2A0018 */  lw         $t2, 0x18($t1)
/* A3F44 800A3344 11400006 */  beqz       $t2, .L800A3360
/* A3F48 800A3348 00000000 */   nop
/* A3F4C 800A334C 8FAB001C */  lw         $t3, 0x1c($sp)
/* A3F50 800A3350 0C027C0C */  jal        func_8009F030
/* A3F54 800A3354 8D640018 */   lw        $a0, 0x18($t3)
/* A3F58 800A3358 8FAC001C */  lw         $t4, 0x1c($sp)
/* A3F5C 800A335C AD820018 */  sw         $v0, 0x18($t4)
.L800A3360:
/* A3F60 800A3360 8FAD001C */  lw         $t5, 0x1c($sp)
/* A3F64 800A3364 8DAE0020 */  lw         $t6, 0x20($t5)
/* A3F68 800A3368 11C00006 */  beqz       $t6, .L800A3384
/* A3F6C 800A336C 00000000 */   nop
/* A3F70 800A3370 8FAF001C */  lw         $t7, 0x1c($sp)
/* A3F74 800A3374 0C027C0C */  jal        func_8009F030
/* A3F78 800A3378 8DE40020 */   lw        $a0, 0x20($t7)
/* A3F7C 800A337C 8FB8001C */  lw         $t8, 0x1c($sp)
/* A3F80 800A3380 AF020020 */  sw         $v0, 0x20($t8)
.L800A3384:
/* A3F84 800A3384 8FB9001C */  lw         $t9, 0x1c($sp)
/* A3F88 800A3388 8F280028 */  lw         $t0, 0x28($t9)
/* A3F8C 800A338C 11000006 */  beqz       $t0, .L800A33A8
/* A3F90 800A3390 00000000 */   nop
/* A3F94 800A3394 8FA9001C */  lw         $t1, 0x1c($sp)
/* A3F98 800A3398 0C027C0C */  jal        func_8009F030
/* A3F9C 800A339C 8D240028 */   lw        $a0, 0x28($t1)
/* A3FA0 800A33A0 8FAA001C */  lw         $t2, 0x1c($sp)
/* A3FA4 800A33A4 AD420028 */  sw         $v0, 0x28($t2)
.L800A33A8:
/* A3FA8 800A33A8 8FAB001C */  lw         $t3, 0x1c($sp)
/* A3FAC 800A33AC 8D6C002C */  lw         $t4, 0x2c($t3)
/* A3FB0 800A33B0 11800006 */  beqz       $t4, .L800A33CC
/* A3FB4 800A33B4 00000000 */   nop
/* A3FB8 800A33B8 8FAD001C */  lw         $t5, 0x1c($sp)
/* A3FBC 800A33BC 0C027C0C */  jal        func_8009F030
/* A3FC0 800A33C0 8DA4002C */   lw        $a0, 0x2c($t5)
/* A3FC4 800A33C4 8FAE001C */  lw         $t6, 0x1c($sp)
/* A3FC8 800A33C8 ADC2002C */  sw         $v0, 0x2c($t6)
.L800A33CC:
/* A3FCC 800A33CC 8FAF001C */  lw         $t7, 0x1c($sp)
/* A3FD0 800A33D0 8DF80030 */  lw         $t8, 0x30($t7)
/* A3FD4 800A33D4 13000006 */  beqz       $t8, .L800A33F0
/* A3FD8 800A33D8 00000000 */   nop
/* A3FDC 800A33DC 8FB9001C */  lw         $t9, 0x1c($sp)
/* A3FE0 800A33E0 0C027C0C */  jal        func_8009F030
/* A3FE4 800A33E4 8F240030 */   lw        $a0, 0x30($t9)
/* A3FE8 800A33E8 8FA8001C */  lw         $t0, 0x1c($sp)
/* A3FEC 800A33EC AD020030 */  sw         $v0, 0x30($t0)
.L800A33F0:
/* A3FF0 800A33F0 8FA9001C */  lw         $t1, 0x1c($sp)
/* A3FF4 800A33F4 8D2A0038 */  lw         $t2, 0x38($t1)
/* A3FF8 800A33F8 11400006 */  beqz       $t2, .L800A3414
/* A3FFC 800A33FC 00000000 */   nop
/* A4000 800A3400 8FAB001C */  lw         $t3, 0x1c($sp)
/* A4004 800A3404 0C027C0C */  jal        func_8009F030
/* A4008 800A3408 8D640038 */   lw        $a0, 0x38($t3)
/* A400C 800A340C 8FAC001C */  lw         $t4, 0x1c($sp)
/* A4010 800A3410 AD820038 */  sw         $v0, 0x38($t4)
.L800A3414:
/* A4014 800A3414 10000003 */  b          .L800A3424
/* A4018 800A3418 8FA2001C */   lw        $v0, 0x1c($sp)
/* A401C 800A341C 10000001 */  b          .L800A3424
/* A4020 800A3420 00000000 */   nop
.L800A3424:
/* A4024 800A3424 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4028 800A3428 27BD0020 */  addiu      $sp, $sp, 0x20
/* A402C 800A342C 03E00008 */  jr         $ra
/* A4030 800A3430 00000000 */   nop

glabel func_800A3434
/* A4034 800A3434 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A4038 800A3438 AFBF0014 */  sw         $ra, 0x14($sp)
/* A403C 800A343C AFA40020 */  sw         $a0, 0x20($sp)
/* A4040 800A3440 8FAE0020 */  lw         $t6, 0x20($sp)
/* A4044 800A3444 8DCF0020 */  lw         $t7, 0x20($t6)
/* A4048 800A3448 11E0000B */  beqz       $t7, .L800A3478
/* A404C 800A344C 00000000 */   nop
/* A4050 800A3450 31F8000F */  andi       $t8, $t7, 0xf
/* A4054 800A3454 13000008 */  beqz       $t8, .L800A3478
/* A4058 800A3458 00000000 */   nop
/* A405C 800A345C 8FB90020 */  lw         $t9, 0x20($sp)
/* A4060 800A3460 24040039 */  addiu      $a0, $zero, 0x39
/* A4064 800A3464 24050001 */  addiu      $a1, $zero, 1
/* A4068 800A3468 0C02B5EC */  jal        func_800AD7B0
/* A406C 800A346C 8F260020 */   lw        $a2, 0x20($t9)
/* A4070 800A3470 1000008C */  b          .L800A36A4
/* A4074 800A3474 00000000 */   nop
.L800A3478:
/* A4078 800A3478 8FA80020 */  lw         $t0, 0x20($sp)
/* A407C 800A347C 8D090028 */  lw         $t1, 0x28($t0)
/* A4080 800A3480 1120000B */  beqz       $t1, .L800A34B0
/* A4084 800A3484 00000000 */   nop
/* A4088 800A3488 312A000F */  andi       $t2, $t1, 0xf
/* A408C 800A348C 11400008 */  beqz       $t2, .L800A34B0
/* A4090 800A3490 00000000 */   nop
/* A4094 800A3494 8FAB0020 */  lw         $t3, 0x20($sp)
/* A4098 800A3498 2404003A */  addiu      $a0, $zero, 0x3a
/* A409C 800A349C 24050001 */  addiu      $a1, $zero, 1
/* A40A0 800A34A0 0C02B5EC */  jal        func_800AD7B0
/* A40A4 800A34A4 8D660028 */   lw        $a2, 0x28($t3)
/* A40A8 800A34A8 1000007E */  b          .L800A36A4
/* A40AC 800A34AC 00000000 */   nop
.L800A34B0:
/* A40B0 800A34B0 8FAC0020 */  lw         $t4, 0x20($sp)
/* A40B4 800A34B4 8D8D002C */  lw         $t5, 0x2c($t4)
/* A40B8 800A34B8 11A0000B */  beqz       $t5, .L800A34E8
/* A40BC 800A34BC 00000000 */   nop
/* A40C0 800A34C0 31AE000F */  andi       $t6, $t5, 0xf
/* A40C4 800A34C4 11C00008 */  beqz       $t6, .L800A34E8
/* A40C8 800A34C8 00000000 */   nop
/* A40CC 800A34CC 8FAF0020 */  lw         $t7, 0x20($sp)
/* A40D0 800A34D0 2404003B */  addiu      $a0, $zero, 0x3b
/* A40D4 800A34D4 24050001 */  addiu      $a1, $zero, 1
/* A40D8 800A34D8 0C02B5EC */  jal        func_800AD7B0
/* A40DC 800A34DC 8DE6002C */   lw        $a2, 0x2c($t7)
/* A40E0 800A34E0 10000070 */  b          .L800A36A4
/* A40E4 800A34E4 00000000 */   nop
.L800A34E8:
/* A40E8 800A34E8 8FB80020 */  lw         $t8, 0x20($sp)
/* A40EC 800A34EC 8F190038 */  lw         $t9, 0x38($t8)
/* A40F0 800A34F0 1320000B */  beqz       $t9, .L800A3520
/* A40F4 800A34F4 00000000 */   nop
/* A40F8 800A34F8 3328000F */  andi       $t0, $t9, 0xf
/* A40FC 800A34FC 11000008 */  beqz       $t0, .L800A3520
/* A4100 800A3500 00000000 */   nop
/* A4104 800A3504 8FA90020 */  lw         $t1, 0x20($sp)
/* A4108 800A3508 2404003C */  addiu      $a0, $zero, 0x3c
/* A410C 800A350C 24050001 */  addiu      $a1, $zero, 1
/* A4110 800A3510 0C02B5EC */  jal        func_800AD7B0
/* A4114 800A3514 8D260038 */   lw        $a2, 0x38($t1)
/* A4118 800A3518 10000062 */  b          .L800A36A4
/* A411C 800A351C 00000000 */   nop
.L800A3520:
/* A4120 800A3520 0C028CBC */  jal        func_800A32F0
/* A4124 800A3524 8FA40020 */   lw        $a0, 0x20($sp)
/* A4128 800A3528 AFA2001C */  sw         $v0, 0x1c($sp)
/* A412C 800A352C 8FAA001C */  lw         $t2, 0x1c($sp)
/* A4130 800A3530 8D4B0004 */  lw         $t3, 4($t2)
/* A4134 800A3534 316C0001 */  andi       $t4, $t3, 1
/* A4138 800A3538 11800019 */  beqz       $t4, .L800A35A0
/* A413C 800A353C 00000000 */   nop
/* A4140 800A3540 8FAD001C */  lw         $t5, 0x1c($sp)
/* A4144 800A3544 8DAE0038 */  lw         $t6, 0x38($t5)
/* A4148 800A3548 ADAE0018 */  sw         $t6, 0x18($t5)
/* A414C 800A354C 8FAF001C */  lw         $t7, 0x1c($sp)
/* A4150 800A3550 8DF8003C */  lw         $t8, 0x3c($t7)
/* A4154 800A3554 ADF8001C */  sw         $t8, 0x1c($t7)
/* A4158 800A3558 8FB90020 */  lw         $t9, 0x20($sp)
/* A415C 800A355C 2401FFFE */  addiu      $at, $zero, -2
/* A4160 800A3560 8F280004 */  lw         $t0, 4($t9)
/* A4164 800A3564 01014824 */  and        $t1, $t0, $at
/* A4168 800A3568 AF290004 */  sw         $t1, 4($t9)
/* A416C 800A356C 8FAA001C */  lw         $t2, 0x1c($sp)
/* A4170 800A3570 8D4B0004 */  lw         $t3, 4($t2)
/* A4174 800A3574 316C0004 */  andi       $t4, $t3, 4
/* A4178 800A3578 11800009 */  beqz       $t4, .L800A35A0
/* A417C 800A357C 00000000 */   nop
/* A4180 800A3580 8FAE0020 */  lw         $t6, 0x20($sp)
/* A4184 800A3584 3C01A000 */  lui        $at, 0xa000
/* A4188 800A3588 8FA9001C */  lw         $t1, 0x1c($sp)
/* A418C 800A358C 8DCD0038 */  lw         $t5, 0x38($t6)
/* A4190 800A3590 25B80BFC */  addiu      $t8, $t5, 0xbfc
/* A4194 800A3594 03017825 */  or         $t7, $t8, $at
/* A4198 800A3598 8DE80000 */  lw         $t0, ($t7)
/* A419C 800A359C AD280010 */  sw         $t0, 0x10($t1)
.L800A35A0:
/* A41A0 800A35A0 8FA4001C */  lw         $a0, 0x1c($sp)
/* A41A4 800A35A4 0C027C44 */  jal        func_8009F110
/* A41A8 800A35A8 24050040 */   addiu     $a1, $zero, 0x40
/* A41AC 800A35AC 0C02E368 */  jal        func_800B8DA0
/* A41B0 800A35B0 24042B00 */   addiu     $a0, $zero, 0x2b00
/* A41B4 800A35B4 3C040400 */  lui        $a0, 0x400
/* A41B8 800A35B8 0C02E720 */  jal        func_800B9C80
/* A41BC 800A35BC 34841000 */   ori       $a0, $a0, 0x1000
/* A41C0 800A35C0 2401FFFF */  addiu      $at, $zero, -1
/* A41C4 800A35C4 14410007 */  bne        $v0, $at, .L800A35E4
/* A41C8 800A35C8 00000000 */   nop
.L800A35CC:
/* A41CC 800A35CC 3C040400 */  lui        $a0, 0x400
/* A41D0 800A35D0 0C02E720 */  jal        func_800B9C80
/* A41D4 800A35D4 34841000 */   ori       $a0, $a0, 0x1000
/* A41D8 800A35D8 2401FFFF */  addiu      $at, $zero, -1
/* A41DC 800A35DC 1041FFFB */  beq        $v0, $at, .L800A35CC
/* A41E0 800A35E0 00000000 */   nop
.L800A35E4:
/* A41E4 800A35E4 3C050400 */  lui        $a1, 0x400
/* A41E8 800A35E8 34A50FC0 */  ori        $a1, $a1, 0xfc0
/* A41EC 800A35EC 24040001 */  addiu      $a0, $zero, 1
/* A41F0 800A35F0 8FA6001C */  lw         $a2, 0x1c($sp)
/* A41F4 800A35F4 0C028DE0 */  jal        func_800A3780
/* A41F8 800A35F8 24070040 */   addiu     $a3, $zero, 0x40
/* A41FC 800A35FC 2401FFFF */  addiu      $at, $zero, -1
/* A4200 800A3600 1441000A */  bne        $v0, $at, .L800A362C
/* A4204 800A3604 00000000 */   nop
.L800A3608:
/* A4208 800A3608 3C050400 */  lui        $a1, 0x400
/* A420C 800A360C 34A50FC0 */  ori        $a1, $a1, 0xfc0
/* A4210 800A3610 24040001 */  addiu      $a0, $zero, 1
/* A4214 800A3614 8FA6001C */  lw         $a2, 0x1c($sp)
/* A4218 800A3618 0C028DE0 */  jal        func_800A3780
/* A421C 800A361C 24070040 */   addiu     $a3, $zero, 0x40
/* A4220 800A3620 2401FFFF */  addiu      $at, $zero, -1
/* A4224 800A3624 1041FFF8 */  beq        $v0, $at, .L800A3608
/* A4228 800A3628 00000000 */   nop
.L800A362C:
/* A422C 800A362C 0C02B6D8 */  jal        func_800ADB60
/* A4230 800A3630 00000000 */   nop
/* A4234 800A3634 10400005 */  beqz       $v0, .L800A364C
/* A4238 800A3638 00000000 */   nop
.L800A363C:
/* A423C 800A363C 0C02B6D8 */  jal        func_800ADB60
/* A4240 800A3640 00000000 */   nop
/* A4244 800A3644 1440FFFD */  bnez       $v0, .L800A363C
/* A4248 800A3648 00000000 */   nop
.L800A364C:
/* A424C 800A364C 8FB9001C */  lw         $t9, 0x1c($sp)
/* A4250 800A3650 3C050400 */  lui        $a1, 0x400
/* A4254 800A3654 34A51000 */  ori        $a1, $a1, 0x1000
/* A4258 800A3658 24040001 */  addiu      $a0, $zero, 1
/* A425C 800A365C 8F260008 */  lw         $a2, 8($t9)
/* A4260 800A3660 0C028DE0 */  jal        func_800A3780
/* A4264 800A3664 8F27000C */   lw        $a3, 0xc($t9)
/* A4268 800A3668 2401FFFF */  addiu      $at, $zero, -1
/* A426C 800A366C 1441000B */  bne        $v0, $at, .L800A369C
/* A4270 800A3670 00000000 */   nop
.L800A3674:
/* A4274 800A3674 8FAA001C */  lw         $t2, 0x1c($sp)
/* A4278 800A3678 3C050400 */  lui        $a1, 0x400
/* A427C 800A367C 34A51000 */  ori        $a1, $a1, 0x1000
/* A4280 800A3680 24040001 */  addiu      $a0, $zero, 1
/* A4284 800A3684 8D460008 */  lw         $a2, 8($t2)
/* A4288 800A3688 0C028DE0 */  jal        func_800A3780
/* A428C 800A368C 8D47000C */   lw        $a3, 0xc($t2)
/* A4290 800A3690 2401FFFF */  addiu      $at, $zero, -1
/* A4294 800A3694 1041FFF7 */  beq        $v0, $at, .L800A3674
/* A4298 800A3698 00000000 */   nop
.L800A369C:
/* A429C 800A369C 10000001 */  b          .L800A36A4
/* A42A0 800A36A0 00000000 */   nop
.L800A36A4:
/* A42A4 800A36A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A42A8 800A36A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* A42AC 800A36AC 03E00008 */  jr         $ra
/* A42B0 800A36B0 00000000 */   nop

glabel func_800A36B4
/* A42B4 800A36B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A42B8 800A36B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A42BC 800A36BC AFA40018 */  sw         $a0, 0x18($sp)
/* A42C0 800A36C0 0C02B6D8 */  jal        func_800ADB60
/* A42C4 800A36C4 00000000 */   nop
/* A42C8 800A36C8 10400005 */  beqz       $v0, .L800A36E0
/* A42CC 800A36CC 00000000 */   nop
.L800A36D0:
/* A42D0 800A36D0 0C02B6D8 */  jal        func_800ADB60
/* A42D4 800A36D4 00000000 */   nop
/* A42D8 800A36D8 1440FFFD */  bnez       $v0, .L800A36D0
/* A42DC 800A36DC 00000000 */   nop
.L800A36E0:
/* A42E0 800A36E0 0C02E368 */  jal        func_800B8DA0
/* A42E4 800A36E4 24040125 */   addiu     $a0, $zero, 0x125
/* A42E8 800A36E8 10000001 */  b          .L800A36F0
/* A42EC 800A36EC 00000000 */   nop
.L800A36F0:
/* A42F0 800A36F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A42F4 800A36F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* A42F8 800A36F8 03E00008 */  jr         $ra
/* A42FC 800A36FC 00000000 */   nop

glabel func_800A3700
/* A4300 800A3700 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A4304 800A3704 AFBF001C */  sw         $ra, 0x1c($sp)
/* A4308 800A3708 AFB00018 */  sw         $s0, 0x18($sp)
/* A430C 800A370C 3C0E800D */  lui        $t6, %hi(D_800CD670)
/* A4310 800A3710 8DCED670 */  lw         $t6, %lo(D_800CD670)($t6)
/* A4314 800A3714 15C00006 */  bnez       $t6, .L800A3730
/* A4318 800A3718 00000000 */   nop
/* A431C 800A371C 24040026 */  addiu      $a0, $zero, 0x26
/* A4320 800A3720 0C02B5EC */  jal        func_800AD7B0
/* A4324 800A3724 00002825 */   or        $a1, $zero, $zero
/* A4328 800A3728 1000000E */  b          .L800A3764
/* A432C 800A372C 00001025 */   or        $v0, $zero, $zero
.L800A3730:
/* A4330 800A3730 0C02C0C8 */  jal        func_800B0320
/* A4334 800A3734 00000000 */   nop
/* A4338 800A3738 00408025 */  or         $s0, $v0, $zero
/* A433C 800A373C 3C0F800D */  lui        $t7, %hi(D_800CD444)
/* A4340 800A3740 8DEFD444 */  lw         $t7, %lo(D_800CD444)($t7)
/* A4344 800A3744 8DF80004 */  lw         $t8, 4($t7)
/* A4348 800A3748 AFB80020 */  sw         $t8, 0x20($sp)
/* A434C 800A374C 0C02C0D0 */  jal        func_800B0340
/* A4350 800A3750 02002025 */   or        $a0, $s0, $zero
/* A4354 800A3754 10000003 */  b          .L800A3764
/* A4358 800A3758 8FA20020 */   lw        $v0, 0x20($sp)
/* A435C 800A375C 10000001 */  b          .L800A3764
/* A4360 800A3760 00000000 */   nop
.L800A3764:
/* A4364 800A3764 8FBF001C */  lw         $ra, 0x1c($sp)
/* A4368 800A3768 8FB00018 */  lw         $s0, 0x18($sp)
/* A436C 800A376C 27BD0028 */  addiu      $sp, $sp, 0x28
/* A4370 800A3770 03E00008 */  jr         $ra
/* A4374 800A3774 00000000 */   nop
/* A4378 800A3778 00000000 */  nop
/* A437C 800A377C 00000000 */  nop
