.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B3400
/* B4000 800B3400 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B4004 800B3404 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4008 800B3408 AFA40030 */  sw         $a0, 0x30($sp)
/* B400C 800B340C 8FAE0030 */  lw         $t6, 0x30($sp)
/* B4010 800B3410 AFAE002C */  sw         $t6, 0x2c($sp)
/* B4014 800B3414 8FAF002C */  lw         $t7, 0x2c($sp)
/* B4018 800B3418 91F80004 */  lbu        $t8, 4($t7)
/* B401C 800B341C A3B80020 */  sb         $t8, 0x20($sp)
/* B4020 800B3420 A7A00022 */  sh         $zero, 0x22($sp)
/* B4024 800B3424 8FB9002C */  lw         $t9, 0x2c($sp)
/* B4028 800B3428 8F28000C */  lw         $t0, 0xc($t9)
/* B402C 800B342C AFA80028 */  sw         $t0, 0x28($sp)
/* B4030 800B3430 27A4001C */  addiu      $a0, $sp, 0x1c
/* B4034 800B3434 24050010 */  addiu      $a1, $zero, 0x10
/* B4038 800B3438 0C02C907 */  jal        func_800B241C
/* B403C 800B343C 24060001 */   addiu     $a2, $zero, 1
/* B4040 800B3440 10000003 */  b          .L800B3450
/* B4044 800B3444 00001025 */   or        $v0, $zero, $zero
/* B4048 800B3448 10000001 */  b          .L800B3450
/* B404C 800B344C 00000000 */   nop
.L800B3450:
/* B4050 800B3450 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4054 800B3454 27BD0030 */  addiu      $sp, $sp, 0x30
/* B4058 800B3458 03E00008 */  jr         $ra
/* B405C 800B345C 00000000 */   nop

glabel func_800B3460
/* B4060 800B3460 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B4064 800B3464 AFBF001C */  sw         $ra, 0x1c($sp)
/* B4068 800B3468 3C04801B */  lui        $a0, %hi(D_801A8AB8)
/* B406C 800B346C 3C05801A */  lui        $a1, %hi(D_801A4A60)
/* B4070 800B3470 24A54A60 */  addiu      $a1, $a1, %lo(D_801A4A60)
/* B4074 800B3474 24848AB8 */  addiu      $a0, $a0, %lo(D_801A8AB8)
/* B4078 800B3478 0C02B42C */  jal        func_800AD0B0
/* B407C 800B347C 24060008 */   addiu     $a2, $zero, 8
/* B4080 800B3480 3C05801B */  lui        $a1, %hi(D_801A8AB8)
/* B4084 800B3484 24A58AB8 */  addiu      $a1, $a1, %lo(D_801A8AB8)
/* B4088 800B3488 2404000A */  addiu      $a0, $zero, 0xa
/* B408C 800B348C 0C02AD08 */  jal        func_800AB420
/* B4090 800B3490 24060002 */   addiu     $a2, $zero, 2
/* B4094 800B3494 3C05801B */  lui        $a1, %hi(D_801A8AB8)
/* B4098 800B3498 24A58AB8 */  addiu      $a1, $a1, %lo(D_801A8AB8)
/* B409C 800B349C 2404000B */  addiu      $a0, $zero, 0xb
/* B40A0 800B34A0 0C02AD08 */  jal        func_800AB420
/* B40A4 800B34A4 24060004 */   addiu     $a2, $zero, 4
/* B40A8 800B34A8 3C05801B */  lui        $a1, %hi(D_801A8AB8)
/* B40AC 800B34AC 24A58AB8 */  addiu      $a1, $a1, %lo(D_801A8AB8)
/* B40B0 800B34B0 2404000C */  addiu      $a0, $zero, 0xc
/* B40B4 800B34B4 0C02AD08 */  jal        func_800AB420
/* B40B8 800B34B8 24060008 */   addiu     $a2, $zero, 8
/* B40BC 800B34BC 3C05801B */  lui        $a1, %hi(D_801A8AB8)
/* B40C0 800B34C0 24A58AB8 */  addiu      $a1, $a1, %lo(D_801A8AB8)
/* B40C4 800B34C4 2404000D */  addiu      $a0, $zero, 0xd
/* B40C8 800B34C8 0C02AD08 */  jal        func_800AB420
/* B40CC 800B34CC 00003025 */   or        $a2, $zero, $zero
/* B40D0 800B34D0 3C0E801A */  lui        $t6, %hi(D_801A4A80)
/* B40D4 800B34D4 25CE4A80 */  addiu      $t6, $t6, %lo(D_801A4A80)
/* B40D8 800B34D8 25CF4000 */  addiu      $t7, $t6, 0x4000
/* B40DC 800B34DC 3C04801A */  lui        $a0, %hi(D_801A48B0)
/* B40E0 800B34E0 3C06800B */  lui        $a2, %hi(func_800AD3F8)
/* B40E4 800B34E4 241800FF */  addiu      $t8, $zero, 0xff
/* B40E8 800B34E8 AFB80014 */  sw         $t8, 0x14($sp)
/* B40EC 800B34EC 24C6D3F8 */  addiu      $a2, $a2, %lo(func_800AD3F8)
/* B40F0 800B34F0 248448B0 */  addiu      $a0, $a0, %lo(D_801A48B0)
/* B40F4 800B34F4 AFAF0010 */  sw         $t7, 0x10($sp)
/* B40F8 800B34F8 00002825 */  or         $a1, $zero, $zero
/* B40FC 800B34FC 0C0268D0 */  jal        func_8009A340
/* B4100 800B3500 00003825 */   or        $a3, $zero, $zero
/* B4104 800B3504 3C05801B */  lui        $a1, %hi(D_801A8AA0)
/* B4108 800B3508 3C06801B */  lui        $a2, %hi(D_801A8A80)
/* B410C 800B350C 24C68A80 */  addiu      $a2, $a2, %lo(D_801A8A80)
/* B4110 800B3510 24A58AA0 */  addiu      $a1, $a1, %lo(D_801A8AA0)
/* B4114 800B3514 24040096 */  addiu      $a0, $zero, 0x96
/* B4118 800B3518 0C02AA10 */  jal        func_800AA840
/* B411C 800B351C 24070008 */   addiu     $a3, $zero, 8
/* B4120 800B3520 3C04801A */  lui        $a0, %hi(D_801A48B0)
/* B4124 800B3524 0C02E4BC */  jal        func_800B92F0
/* B4128 800B3528 248448B0 */   addiu     $a0, $a0, %lo(D_801A48B0)
/* B412C 800B352C 10000001 */  b          .L800B3534
/* B4130 800B3530 00000000 */   nop
.L800B3534:
/* B4134 800B3534 8FBF001C */  lw         $ra, 0x1c($sp)
/* B4138 800B3538 27BD0020 */  addiu      $sp, $sp, 0x20
/* B413C 800B353C 03E00008 */  jr         $ra
/* B4140 800B3540 00000000 */   nop

glabel func_800B3544
.L800B3544:
/* B4144 800B3544 1000FFFF */  b          .L800B3544
/* B4148 800B3548 00000000 */   nop
/* B414C 800B354C 03E00008 */  jr         $ra
/* B4150 800B3550 00000000 */   nop

glabel func_800B3554
/* B4154 800B3554 03E00008 */  jr         $ra
/* B4158 800B3558 00000000 */   nop

glabel func_800B355C
/* B415C 800B355C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B4160 800B3560 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4164 800B3564 AFA40028 */  sw         $a0, 0x28($sp)
/* B4168 800B3568 8FAE0028 */  lw         $t6, 0x28($sp)
/* B416C 800B356C 91CF0004 */  lbu        $t7, 4($t6)
/* B4170 800B3570 A3AF001C */  sb         $t7, 0x1c($sp)
/* B4174 800B3574 AFA00024 */  sw         $zero, 0x24($sp)
/* B4178 800B3578 A7A0001E */  sh         $zero, 0x1e($sp)
/* B417C 800B357C 27A40018 */  addiu      $a0, $sp, 0x18
/* B4180 800B3580 24050010 */  addiu      $a1, $zero, 0x10
/* B4184 800B3584 0C02C907 */  jal        func_800B241C
/* B4188 800B3588 24060001 */   addiu     $a2, $zero, 1
/* B418C 800B358C 10000003 */  b          .L800B359C
/* B4190 800B3590 00001025 */   or        $v0, $zero, $zero
/* B4194 800B3594 10000001 */  b          .L800B359C
/* B4198 800B3598 00000000 */   nop
.L800B359C:
/* B419C 800B359C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B41A0 800B35A0 27BD0028 */  addiu      $sp, $sp, 0x28
/* B41A4 800B35A4 03E00008 */  jr         $ra
/* B41A8 800B35A8 00000000 */   nop
/* B41AC 800B35AC 00000000 */  nop
