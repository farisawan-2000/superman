.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D33A0
/* D3FA0 800D33A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D3FA4 800D33A4 AFBF001C */  sw         $ra, 0x1c($sp)
/* D3FA8 800D33A8 AFA40028 */  sw         $a0, 0x28($sp)
/* D3FAC 800D33AC AFB10018 */  sw         $s1, 0x18($sp)
/* D3FB0 800D33B0 0C033DD4 */  jal        func_800CF750
/* D3FB4 800D33B4 AFB00014 */   sw        $s0, 0x14($sp)
/* D3FB8 800D33B8 8FAE0028 */  lw         $t6, 0x28($sp)
/* D3FBC 800D33BC 24010001 */  addiu      $at, $zero, 1
/* D3FC0 800D33C0 00408025 */  or         $s0, $v0, $zero
/* D3FC4 800D33C4 95D10010 */  lhu        $s1, 0x10($t6)
/* D3FC8 800D33C8 1221000C */  beq        $s1, $at, .L800D33FC
/* D3FCC 800D33CC 24010008 */   addiu     $at, $zero, 8
/* D3FD0 800D33D0 1621002A */  bne        $s1, $at, .L800D347C
/* D3FD4 800D33D4 00000000 */   nop
/* D3FD8 800D33D8 8FB80028 */  lw         $t8, 0x28($sp)
/* D3FDC 800D33DC 240F0002 */  addiu      $t7, $zero, 2
/* D3FE0 800D33E0 3C04800E */  lui        $a0, %hi(D_800DA078)
/* D3FE4 800D33E4 A70F0010 */  sh         $t7, 0x10($t8)
/* D3FE8 800D33E8 8FA50028 */  lw         $a1, 0x28($sp)
/* D3FEC 800D33EC 0C02FB3F */  jal        func_800BECFC
/* D3FF0 800D33F0 2484A078 */   addiu     $a0, $a0, %lo(D_800DA078)
/* D3FF4 800D33F4 10000021 */  b          .L800D347C
/* D3FF8 800D33F8 00000000 */   nop
.L800D33FC:
/* D3FFC 800D33FC 8FB90028 */  lw         $t9, 0x28($sp)
/* D4000 800D3400 8F280008 */  lw         $t0, 8($t9)
/* D4004 800D3404 11000005 */  beqz       $t0, .L800D341C
/* D4008 800D3408 00000000 */   nop
/* D400C 800D340C 3C09800E */  lui        $t1, %hi(D_800DA078)
/* D4010 800D3410 2529A078 */  addiu      $t1, $t1, %lo(D_800DA078)
/* D4014 800D3414 1509000A */  bne        $t0, $t1, .L800D3440
/* D4018 800D3418 00000000 */   nop
.L800D341C:
/* D401C 800D341C 8FAB0028 */  lw         $t3, 0x28($sp)
/* D4020 800D3420 240A0002 */  addiu      $t2, $zero, 2
/* D4024 800D3424 3C04800E */  lui        $a0, %hi(D_800DA078)
/* D4028 800D3428 A56A0010 */  sh         $t2, 0x10($t3)
/* D402C 800D342C 8FA50028 */  lw         $a1, 0x28($sp)
/* D4030 800D3430 0C02FB3F */  jal        func_800BECFC
/* D4034 800D3434 2484A078 */   addiu     $a0, $a0, %lo(D_800DA078)
/* D4038 800D3438 10000010 */  b          .L800D347C
/* D403C 800D343C 00000000 */   nop
.L800D3440:
/* D4040 800D3440 8FAD0028 */  lw         $t5, 0x28($sp)
/* D4044 800D3444 240C0008 */  addiu      $t4, $zero, 8
/* D4048 800D3448 A5AC0010 */  sh         $t4, 0x10($t5)
/* D404C 800D344C 8FAE0028 */  lw         $t6, 0x28($sp)
/* D4050 800D3450 8DC40008 */  lw         $a0, 8($t6)
/* D4054 800D3454 0C02FB3F */  jal        func_800BECFC
/* D4058 800D3458 01C02825 */   or        $a1, $t6, $zero
/* D405C 800D345C 8FAF0028 */  lw         $t7, 0x28($sp)
/* D4060 800D3460 0C02FB51 */  jal        func_800BED44
/* D4064 800D3464 8DE40008 */   lw        $a0, 8($t7)
/* D4068 800D3468 00408825 */  or         $s1, $v0, $zero
/* D406C 800D346C 3C04800E */  lui        $a0, %hi(D_800DA078)
/* D4070 800D3470 2484A078 */  addiu      $a0, $a0, %lo(D_800DA078)
/* D4074 800D3474 0C02FB3F */  jal        func_800BECFC
/* D4078 800D3478 02202825 */   or        $a1, $s1, $zero
.L800D347C:
/* D407C 800D347C 3C18800E */  lui        $t8, %hi(D_800DA080)
/* D4080 800D3480 8F18A080 */  lw         $t8, %lo(D_800DA080)($t8)
/* D4084 800D3484 17000005 */  bnez       $t8, .L800D349C
/* D4088 800D3488 00000000 */   nop
/* D408C 800D348C 0C02FB55 */  jal        func_800BED54
/* D4090 800D3490 00000000 */   nop
/* D4094 800D3494 1000000F */  b          .L800D34D4
/* D4098 800D3498 00000000 */   nop
.L800D349C:
/* D409C 800D349C 3C19800E */  lui        $t9, %hi(D_800DA080)
/* D40A0 800D34A0 3C09800E */  lui        $t1, %hi(D_800DA078)
/* D40A4 800D34A4 8D29A078 */  lw         $t1, %lo(D_800DA078)($t1)
/* D40A8 800D34A8 8F39A080 */  lw         $t9, %lo(D_800DA080)($t9)
/* D40AC 800D34AC 8D2A0004 */  lw         $t2, 4($t1)
/* D40B0 800D34B0 8F280004 */  lw         $t0, 4($t9)
/* D40B4 800D34B4 010A082A */  slt        $at, $t0, $t2
/* D40B8 800D34B8 10200006 */  beqz       $at, .L800D34D4
/* D40BC 800D34BC 00000000 */   nop
/* D40C0 800D34C0 240B0002 */  addiu      $t3, $zero, 2
/* D40C4 800D34C4 3C04800E */  lui        $a0, %hi(D_800DA078)
/* D40C8 800D34C8 A72B0010 */  sh         $t3, 0x10($t9)
/* D40CC 800D34CC 0C02FAFF */  jal        func_800BEBFC
/* D40D0 800D34D0 2484A078 */   addiu     $a0, $a0, %lo(D_800DA078)
.L800D34D4:
/* D40D4 800D34D4 0C033DDC */  jal        func_800CF770
/* D40D8 800D34D8 02002025 */   or        $a0, $s0, $zero
/* D40DC 800D34DC 8FBF001C */  lw         $ra, 0x1c($sp)
/* D40E0 800D34E0 8FB00014 */  lw         $s0, 0x14($sp)
/* D40E4 800D34E4 8FB10018 */  lw         $s1, 0x18($sp)
/* D40E8 800D34E8 03E00008 */  jr         $ra
/* D40EC 800D34EC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800D34F0
/* D40F0 800D34F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D40F4 800D34F4 00054400 */  sll        $t0, $a1, 0x10
/* D40F8 800D34F8 00087403 */  sra        $t6, $t0, 0x10
/* D40FC 800D34FC AFB10018 */  sw         $s1, 0x18($sp)
/* D4100 800D3500 000E8880 */  sll        $s1, $t6, 2
/* D4104 800D3504 AFBF001C */  sw         $ra, 0x1c($sp)
/* D4108 800D3508 AFB00014 */  sw         $s0, 0x14($sp)
/* D410C 800D350C AFA50024 */  sw         $a1, 0x24($sp)
/* D4110 800D3510 022E8821 */  addu       $s1, $s1, $t6
/* D4114 800D3514 8C8F0034 */  lw         $t7, 0x34($a0)
/* D4118 800D3518 00118880 */  sll        $s1, $s1, 2
/* D411C 800D351C 022E8823 */  subu       $s1, $s1, $t6
/* D4120 800D3520 00808025 */  or         $s0, $a0, $zero
/* D4124 800D3524 00118880 */  sll        $s1, $s1, 2
/* D4128 800D3528 00C02825 */  or         $a1, $a2, $zero
/* D412C 800D352C 01F12021 */  addu       $a0, $t7, $s1
/* D4130 800D3530 24840020 */  addiu      $a0, $a0, 0x20
/* D4134 800D3534 0C032240 */  jal        func_800C8900
/* D4138 800D3538 00E03025 */   or        $a2, $a3, $zero
/* D413C 800D353C 8E180034 */  lw         $t8, 0x34($s0)
/* D4140 800D3540 24050001 */  addiu      $a1, $zero, 1
/* D4144 800D3544 03113021 */  addu       $a2, $t8, $s1
/* D4148 800D3548 0C0325E1 */  jal        func_800C9784
/* D414C 800D354C 24C40020 */   addiu     $a0, $a2, 0x20
/* D4150 800D3550 8E190034 */  lw         $t9, 0x34($s0)
/* D4154 800D3554 8E040030 */  lw         $a0, 0x30($s0)
/* D4158 800D3558 24050002 */  addiu      $a1, $zero, 2
/* D415C 800D355C 03313021 */  addu       $a2, $t9, $s1
/* D4160 800D3560 0C032350 */  jal        func_800C8D40
/* D4164 800D3564 24C60020 */   addiu     $a2, $a2, 0x20
/* D4168 800D3568 8E0A0034 */  lw         $t2, 0x34($s0)
/* D416C 800D356C 8FBF001C */  lw         $ra, 0x1c($sp)
/* D4170 800D3570 8FB00014 */  lw         $s0, 0x14($sp)
/* D4174 800D3574 01511021 */  addu       $v0, $t2, $s1
/* D4178 800D3578 8FB10018 */  lw         $s1, 0x18($sp)
/* D417C 800D357C 27BD0020 */  addiu      $sp, $sp, 0x20
/* D4180 800D3580 03E00008 */  jr         $ra
/* D4184 800D3584 24420020 */   addiu     $v0, $v0, 0x20
/* D4188 800D3588 00000000 */  nop
/* D418C 800D358C 00000000 */  nop
/* D4190 800D3590 00000000 */  nop
/* D4194 800D3594 00000000 */  nop
/* D4198 800D3598 00000000 */  nop
/* D419C 800D359C 00000000 */  nop
