.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B3660
/* B4260 800B3660 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4264 800B3664 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4268 800B3668 AFA40018 */  sw         $a0, 0x18($sp)
/* B426C 800B366C AFA5001C */  sw         $a1, 0x1c($sp)
/* B4270 800B3670 8FAE001C */  lw         $t6, 0x1c($sp)
/* B4274 800B3674 11C00001 */  beqz       $t6, .L800B367C
/* B4278 800B3678 00000000 */   nop
.L800B367C:
/* B427C 800B367C 8FAF0018 */  lw         $t7, 0x18($sp)
/* B4280 800B3680 3C19801B */  lui        $t9, %hi(D_801A8AD8)
/* B4284 800B3684 27398AD8 */  addiu      $t9, $t9, %lo(D_801A8AD8)
/* B4288 800B3688 8DF80000 */  lw         $t8, ($t7)
/* B428C 800B368C AF380004 */  sw         $t8, 4($t9)
/* B4290 800B3690 8FA90018 */  lw         $t1, 0x18($sp)
/* B4294 800B3694 2408040D */  addiu      $t0, $zero, 0x40d
/* B4298 800B3698 AD280000 */  sw         $t0, ($t1)
/* B429C 800B369C 8FA40018 */  lw         $a0, 0x18($sp)
/* B42A0 800B36A0 0C027C44 */  jal        func_8009F110
/* B42A4 800B36A4 24050004 */   addiu     $a1, $zero, 4
/* B42A8 800B36A8 8FA40018 */  lw         $a0, 0x18($sp)
/* B42AC 800B36AC 0C02B454 */  jal        func_800AD150
/* B42B0 800B36B0 24050004 */   addiu     $a1, $zero, 4
/* B42B4 800B36B4 8FAA0018 */  lw         $t2, 0x18($sp)
/* B42B8 800B36B8 3C0B801B */  lui        $t3, %hi(D_801A8AD8)
/* B42BC 800B36BC 256B8AD8 */  addiu      $t3, $t3, %lo(D_801A8AD8)
/* B42C0 800B36C0 AD6A0000 */  sw         $t2, ($t3)
/* B42C4 800B36C4 8FAC001C */  lw         $t4, 0x1c($sp)
/* B42C8 800B36C8 11800011 */  beqz       $t4, .L800B3710
/* B42CC 800B36CC 00000000 */   nop
/* B42D0 800B36D0 8FAD001C */  lw         $t5, 0x1c($sp)
/* B42D4 800B36D4 3C01801B */  lui        $at, %hi(D_801A8B5C)
/* B42D8 800B36D8 8DAE0000 */  lw         $t6, ($t5)
/* B42DC 800B36DC AC2E8B5C */  sw         $t6, %lo(D_801A8B5C)($at)
/* B42E0 800B36E0 8FB8001C */  lw         $t8, 0x1c($sp)
/* B42E4 800B36E4 240F040D */  addiu      $t7, $zero, 0x40d
/* B42E8 800B36E8 AF0F0000 */  sw         $t7, ($t8)
/* B42EC 800B36EC 8FA4001C */  lw         $a0, 0x1c($sp)
/* B42F0 800B36F0 0C027C44 */  jal        func_8009F110
/* B42F4 800B36F4 24050004 */   addiu     $a1, $zero, 4
/* B42F8 800B36F8 8FA4001C */  lw         $a0, 0x1c($sp)
/* B42FC 800B36FC 0C02B454 */  jal        func_800AD150
/* B4300 800B3700 24050004 */   addiu     $a1, $zero, 4
/* B4304 800B3704 8FB9001C */  lw         $t9, 0x1c($sp)
/* B4308 800B3708 3C01801B */  lui        $at, %hi(D_801A8B58)
/* B430C 800B370C AC398B58 */  sw         $t9, %lo(D_801A8B58)($at)
.L800B3710:
/* B4310 800B3710 10000001 */  b          .L800B3718
/* B4314 800B3714 00000000 */   nop
.L800B3718:
/* B4318 800B3718 8FBF0014 */  lw         $ra, 0x14($sp)
/* B431C 800B371C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4320 800B3720 03E00008 */  jr         $ra
/* B4324 800B3724 00000000 */   nop

glabel func_800B3728
/* B4328 800B3728 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B432C 800B372C AFBF0014 */  sw         $ra, 0x14($sp)
/* B4330 800B3730 3C0E801B */  lui        $t6, %hi(D_801A8AD8)
/* B4334 800B3734 25CE8AD8 */  addiu      $t6, $t6, %lo(D_801A8AD8)
/* B4338 800B3738 8DCF0000 */  lw         $t7, ($t6)
/* B433C 800B373C 11E0001F */  beqz       $t7, .L800B37BC
/* B4340 800B3740 00000000 */   nop
/* B4344 800B3744 3C18801B */  lui        $t8, %hi(D_801A8AD8)
/* B4348 800B3748 27188AD8 */  addiu      $t8, $t8, %lo(D_801A8AD8)
/* B434C 800B374C 8F190000 */  lw         $t9, ($t8)
/* B4350 800B3750 8F280000 */  lw         $t0, ($t9)
/* B4354 800B3754 AFA8001C */  sw         $t0, 0x1c($sp)
/* B4358 800B3758 8FA9001C */  lw         $t1, 0x1c($sp)
/* B435C 800B375C 3C01FC00 */  lui        $at, 0xfc00
/* B4360 800B3760 3421003F */  ori        $at, $at, 0x3f
/* B4364 800B3764 01215024 */  and        $t2, $t1, $at
/* B4368 800B3768 2401000D */  addiu      $at, $zero, 0xd
/* B436C 800B376C 15410010 */  bne        $t2, $at, .L800B37B0
/* B4370 800B3770 00000000 */   nop
/* B4374 800B3774 3C0B801B */  lui        $t3, %hi(D_801A8AD8)
/* B4378 800B3778 256B8AD8 */  addiu      $t3, $t3, %lo(D_801A8AD8)
/* B437C 800B377C 8D6C0004 */  lw         $t4, 4($t3)
/* B4380 800B3780 8D6D0000 */  lw         $t5, ($t3)
/* B4384 800B3784 ADAC0000 */  sw         $t4, ($t5)
/* B4388 800B3788 3C0E801B */  lui        $t6, %hi(D_801A8AD8)
/* B438C 800B378C 25CE8AD8 */  addiu      $t6, $t6, %lo(D_801A8AD8)
/* B4390 800B3790 8DC40000 */  lw         $a0, ($t6)
/* B4394 800B3794 0C027C44 */  jal        func_8009F110
/* B4398 800B3798 24050004 */   addiu     $a1, $zero, 4
/* B439C 800B379C 3C0F801B */  lui        $t7, %hi(D_801A8AD8)
/* B43A0 800B37A0 25EF8AD8 */  addiu      $t7, $t7, %lo(D_801A8AD8)
/* B43A4 800B37A4 8DE40000 */  lw         $a0, ($t7)
/* B43A8 800B37A8 0C02B454 */  jal        func_800AD150
/* B43AC 800B37AC 24050004 */   addiu     $a1, $zero, 4
.L800B37B0:
/* B43B0 800B37B0 3C18801B */  lui        $t8, %hi(D_801A8AD8)
/* B43B4 800B37B4 27188AD8 */  addiu      $t8, $t8, %lo(D_801A8AD8)
/* B43B8 800B37B8 AF000000 */  sw         $zero, ($t8)
.L800B37BC:
/* B43BC 800B37BC 3C19801B */  lui        $t9, %hi(D_801A8B58)
/* B43C0 800B37C0 8F398B58 */  lw         $t9, %lo(D_801A8B58)($t9)
/* B43C4 800B37C4 1320001B */  beqz       $t9, .L800B3834
/* B43C8 800B37C8 00000000 */   nop
/* B43CC 800B37CC 3C08801B */  lui        $t0, %hi(D_801A8B58)
/* B43D0 800B37D0 8D088B58 */  lw         $t0, %lo(D_801A8B58)($t0)
/* B43D4 800B37D4 8D090000 */  lw         $t1, ($t0)
/* B43D8 800B37D8 AFA9001C */  sw         $t1, 0x1c($sp)
/* B43DC 800B37DC 8FAA001C */  lw         $t2, 0x1c($sp)
/* B43E0 800B37E0 3C01FC00 */  lui        $at, 0xfc00
/* B43E4 800B37E4 3421003F */  ori        $at, $at, 0x3f
/* B43E8 800B37E8 01415824 */  and        $t3, $t2, $at
/* B43EC 800B37EC 2401000D */  addiu      $at, $zero, 0xd
/* B43F0 800B37F0 1561000E */  bne        $t3, $at, .L800B382C
/* B43F4 800B37F4 00000000 */   nop
/* B43F8 800B37F8 3C0C801B */  lui        $t4, %hi(D_801A8B5C)
/* B43FC 800B37FC 3C0D801B */  lui        $t5, %hi(D_801A8B58)
/* B4400 800B3800 8DAD8B58 */  lw         $t5, %lo(D_801A8B58)($t5)
/* B4404 800B3804 8D8C8B5C */  lw         $t4, %lo(D_801A8B5C)($t4)
/* B4408 800B3808 ADAC0000 */  sw         $t4, ($t5)
/* B440C 800B380C 3C04801B */  lui        $a0, %hi(D_801A8B58)
/* B4410 800B3810 8C848B58 */  lw         $a0, %lo(D_801A8B58)($a0)
/* B4414 800B3814 0C027C44 */  jal        func_8009F110
/* B4418 800B3818 24050004 */   addiu     $a1, $zero, 4
/* B441C 800B381C 3C04801B */  lui        $a0, %hi(D_801A8B58)
/* B4420 800B3820 8C848B58 */  lw         $a0, %lo(D_801A8B58)($a0)
/* B4424 800B3824 0C02B454 */  jal        func_800AD150
/* B4428 800B3828 24050004 */   addiu     $a1, $zero, 4
.L800B382C:
/* B442C 800B382C 3C01801B */  lui        $at, %hi(D_801A8B58)
/* B4430 800B3830 AC208B58 */  sw         $zero, %lo(D_801A8B58)($at)
.L800B3834:
/* B4434 800B3834 10000001 */  b          .L800B383C
/* B4438 800B3838 00000000 */   nop
.L800B383C:
/* B443C 800B383C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4440 800B3840 27BD0020 */  addiu      $sp, $sp, 0x20
/* B4444 800B3844 03E00008 */  jr         $ra
/* B4448 800B3848 00000000 */   nop

glabel func_800B384C
/* B444C 800B384C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B4450 800B3850 AFBF0024 */  sw         $ra, 0x24($sp)
/* B4454 800B3854 AFA40050 */  sw         $a0, 0x50($sp)
/* B4458 800B3858 AFB30020 */  sw         $s3, 0x20($sp)
/* B445C 800B385C AFB2001C */  sw         $s2, 0x1c($sp)
/* B4460 800B3860 AFB10018 */  sw         $s1, 0x18($sp)
/* B4464 800B3864 AFB00014 */  sw         $s0, 0x14($sp)
/* B4468 800B3868 8FB00050 */  lw         $s0, 0x50($sp)
/* B446C 800B386C 8FAE0050 */  lw         $t6, 0x50($sp)
/* B4470 800B3870 24010001 */  addiu      $at, $zero, 1
/* B4474 800B3874 91CF0009 */  lbu        $t7, 9($t6)
/* B4478 800B3878 15E1000A */  bne        $t7, $at, .L800B38A4
/* B447C 800B387C 00000000 */   nop
/* B4480 800B3880 3C11801B */  lui        $s1, %hi(D_801A8B60)
/* B4484 800B3884 26318B60 */  addiu      $s1, $s1, %lo(D_801A8B60)
/* B4488 800B3888 3C12801B */  lui        $s2, %hi(D_801A8B60)
/* B448C 800B388C 26528B60 */  addiu      $s2, $s2, %lo(D_801A8B60)
/* B4490 800B3890 26520008 */  addiu      $s2, $s2, 8
/* B4494 800B3894 3C13801B */  lui        $s3, %hi(D_801A8B60)
/* B4498 800B3898 26738B60 */  addiu      $s3, $s3, %lo(D_801A8B60)
/* B449C 800B389C 10000009 */  b          .L800B38C4
/* B44A0 800B38A0 26730080 */   addiu     $s3, $s3, 0x80
.L800B38A4:
/* B44A4 800B38A4 3C11801B */  lui        $s1, %hi(D_801A8AD8)
/* B44A8 800B38A8 26318AD8 */  addiu      $s1, $s1, %lo(D_801A8AD8)
/* B44AC 800B38AC 3C12801B */  lui        $s2, %hi(D_801A8AD8)
/* B44B0 800B38B0 26528AD8 */  addiu      $s2, $s2, %lo(D_801A8AD8)
/* B44B4 800B38B4 26520008 */  addiu      $s2, $s2, 8
/* B44B8 800B38B8 3C13801B */  lui        $s3, %hi(D_801A8AD8)
/* B44BC 800B38BC 26738AD8 */  addiu      $s3, $s3, %lo(D_801A8AD8)
/* B44C0 800B38C0 26730080 */  addiu      $s3, $s3, 0x80
.L800B38C4:
/* B44C4 800B38C4 0253082B */  sltu       $at, $s2, $s3
/* B44C8 800B38C8 10200014 */  beqz       $at, .L800B391C
/* B44CC 800B38CC 00000000 */   nop
.L800B38D0:
/* B44D0 800B38D0 8E580000 */  lw         $t8, ($s2)
/* B44D4 800B38D4 1300000B */  beqz       $t8, .L800B3904
/* B44D8 800B38D8 00000000 */   nop
/* B44DC 800B38DC 8E590000 */  lw         $t9, ($s2)
/* B44E0 800B38E0 8E080010 */  lw         $t0, 0x10($s0)
/* B44E4 800B38E4 17280003 */  bne        $t9, $t0, .L800B38F4
/* B44E8 800B38E8 00000000 */   nop
/* B44EC 800B38EC 1000000B */  b          .L800B391C
/* B44F0 800B38F0 00000000 */   nop
.L800B38F4:
/* B44F4 800B38F4 10000005 */  b          .L800B390C
/* B44F8 800B38F8 00000000 */   nop
/* B44FC 800B38FC 10000003 */  b          .L800B390C
/* B4500 800B3900 00000000 */   nop
.L800B3904:
/* B4504 800B3904 10000005 */  b          .L800B391C
/* B4508 800B3908 00000000 */   nop
.L800B390C:
/* B450C 800B390C 26520008 */  addiu      $s2, $s2, 8
/* B4510 800B3910 0253082B */  sltu       $at, $s2, $s3
/* B4514 800B3914 1420FFEE */  bnez       $at, .L800B38D0
/* B4518 800B3918 00000000 */   nop
.L800B391C:
/* B451C 800B391C 16530003 */  bne        $s2, $s3, .L800B392C
/* B4520 800B3920 00000000 */   nop
/* B4524 800B3924 10000043 */  b          .L800B3A34
/* B4528 800B3928 2402FFF6 */   addiu     $v0, $zero, -0xa
.L800B392C:
/* B452C 800B392C 8E490000 */  lw         $t1, ($s2)
/* B4530 800B3930 1520002E */  bnez       $t1, .L800B39EC
/* B4534 800B3934 00000000 */   nop
/* B4538 800B3938 8FAA0050 */  lw         $t2, 0x50($sp)
/* B453C 800B393C 24010001 */  addiu      $at, $zero, 1
/* B4540 800B3940 914B0009 */  lbu        $t3, 9($t2)
/* B4544 800B3944 15610014 */  bne        $t3, $at, .L800B3998
/* B4548 800B3948 00000000 */   nop
/* B454C 800B394C 0C02C678 */  jal        func_800B19E0
/* B4550 800B3950 8E040010 */   lw        $a0, 0x10($s0)
/* B4554 800B3954 AE420004 */  sw         $v0, 4($s2)
/* B4558 800B3958 02512823 */  subu       $a1, $s2, $s1
/* B455C 800B395C 000560C3 */  sra        $t4, $a1, 3
/* B4560 800B3960 01802825 */  or         $a1, $t4, $zero
/* B4564 800B3964 3C01000F */  lui        $at, 0xf
/* B4568 800B3968 3421FFFF */  ori        $at, $at, 0xffff
/* B456C 800B396C 24A50010 */  addiu      $a1, $a1, 0x10
/* B4570 800B3970 00A16824 */  and        $t5, $a1, $at
/* B4574 800B3974 01A02825 */  or         $a1, $t5, $zero
/* B4578 800B3978 00057180 */  sll        $t6, $a1, 6
/* B457C 800B397C 01C02825 */  or         $a1, $t6, $zero
/* B4580 800B3980 34AF000D */  ori        $t7, $a1, 0xd
/* B4584 800B3984 01E02825 */  or         $a1, $t7, $zero
/* B4588 800B3988 0C02C664 */  jal        func_800B1990
/* B458C 800B398C 8E040010 */   lw        $a0, 0x10($s0)
/* B4590 800B3990 10000014 */  b          .L800B39E4
/* B4594 800B3994 00000000 */   nop
.L800B3998:
/* B4598 800B3998 8E180010 */  lw         $t8, 0x10($s0)
/* B459C 800B399C 8F190000 */  lw         $t9, ($t8)
/* B45A0 800B39A0 AE590004 */  sw         $t9, 4($s2)
/* B45A4 800B39A4 02514023 */  subu       $t0, $s2, $s1
/* B45A8 800B39A8 000848C3 */  sra        $t1, $t0, 3
/* B45AC 800B39AC 3C01000F */  lui        $at, 0xf
/* B45B0 800B39B0 3421FFFF */  ori        $at, $at, 0xffff
/* B45B4 800B39B4 252A0010 */  addiu      $t2, $t1, 0x10
/* B45B8 800B39B8 8E0E0010 */  lw         $t6, 0x10($s0)
/* B45BC 800B39BC 01415824 */  and        $t3, $t2, $at
/* B45C0 800B39C0 000B6180 */  sll        $t4, $t3, 6
/* B45C4 800B39C4 358D000D */  ori        $t5, $t4, 0xd
/* B45C8 800B39C8 ADCD0000 */  sw         $t5, ($t6)
/* B45CC 800B39CC 8E040010 */  lw         $a0, 0x10($s0)
/* B45D0 800B39D0 0C027C44 */  jal        func_8009F110
/* B45D4 800B39D4 24050004 */   addiu     $a1, $zero, 4
/* B45D8 800B39D8 8E040010 */  lw         $a0, 0x10($s0)
/* B45DC 800B39DC 0C02B454 */  jal        func_800AD150
/* B45E0 800B39E0 24050004 */   addiu     $a1, $zero, 4
.L800B39E4:
/* B45E4 800B39E4 8E0F0010 */  lw         $t7, 0x10($s0)
/* B45E8 800B39E8 AE4F0000 */  sw         $t7, ($s2)
.L800B39EC:
/* B45EC 800B39EC 92180004 */  lbu        $t8, 4($s0)
/* B45F0 800B39F0 A3B8002C */  sb         $t8, 0x2c($sp)
/* B45F4 800B39F4 A7A0002E */  sh         $zero, 0x2e($sp)
/* B45F8 800B39F8 8E19000C */  lw         $t9, 0xc($s0)
/* B45FC 800B39FC AFB90034 */  sw         $t9, 0x34($sp)
/* B4600 800B3A00 02514023 */  subu       $t0, $s2, $s1
/* B4604 800B3A04 000848C3 */  sra        $t1, $t0, 3
/* B4608 800B3A08 AFA90038 */  sw         $t1, 0x38($sp)
/* B460C 800B3A0C 8E4A0004 */  lw         $t2, 4($s2)
/* B4610 800B3A10 AFAA003C */  sw         $t2, 0x3c($sp)
/* B4614 800B3A14 27A40028 */  addiu      $a0, $sp, 0x28
/* B4618 800B3A18 24050018 */  addiu      $a1, $zero, 0x18
/* B461C 800B3A1C 0C02C907 */  jal        func_800B241C
/* B4620 800B3A20 24060001 */   addiu     $a2, $zero, 1
/* B4624 800B3A24 10000003 */  b          .L800B3A34
/* B4628 800B3A28 00001025 */   or        $v0, $zero, $zero
/* B462C 800B3A2C 10000001 */  b          .L800B3A34
/* B4630 800B3A30 00000000 */   nop
.L800B3A34:
/* B4634 800B3A34 8FBF0024 */  lw         $ra, 0x24($sp)
/* B4638 800B3A38 8FB00014 */  lw         $s0, 0x14($sp)
/* B463C 800B3A3C 8FB10018 */  lw         $s1, 0x18($sp)
/* B4640 800B3A40 8FB2001C */  lw         $s2, 0x1c($sp)
/* B4644 800B3A44 8FB30020 */  lw         $s3, 0x20($sp)
/* B4648 800B3A48 03E00008 */  jr         $ra
/* B464C 800B3A4C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800B3A50
/* B4650 800B3A50 AFA40000 */  sw         $a0, ($sp)
/* B4654 800B3A54 10000003 */  b          .L800B3A64
/* B4658 800B3A58 2402FFFF */   addiu     $v0, $zero, -1
/* B465C 800B3A5C 10000001 */  b          .L800B3A64
/* B4660 800B3A60 00000000 */   nop
.L800B3A64:
/* B4664 800B3A64 03E00008 */  jr         $ra
/* B4668 800B3A68 00000000 */   nop

glabel func_800B3A6C
/* B466C 800B3A6C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B4670 800B3A70 AFBF001C */  sw         $ra, 0x1c($sp)
/* B4674 800B3A74 AFA40048 */  sw         $a0, 0x48($sp)
/* B4678 800B3A78 AFB10018 */  sw         $s1, 0x18($sp)
/* B467C 800B3A7C AFB00014 */  sw         $s0, 0x14($sp)
/* B4680 800B3A80 8FB00048 */  lw         $s0, 0x48($sp)
/* B4684 800B3A84 8E0E0010 */  lw         $t6, 0x10($s0)
/* B4688 800B3A88 29C10010 */  slti       $at, $t6, 0x10
/* B468C 800B3A8C 14200003 */  bnez       $at, .L800B3A9C
/* B4690 800B3A90 00000000 */   nop
/* B4694 800B3A94 1000004C */  b          .L800B3BC8
/* B4698 800B3A98 2402FFFE */   addiu     $v0, $zero, -2
.L800B3A9C:
/* B469C 800B3A9C 8FAF0048 */  lw         $t7, 0x48($sp)
/* B46A0 800B3AA0 24010001 */  addiu      $at, $zero, 1
/* B46A4 800B3AA4 91F80009 */  lbu        $t8, 9($t7)
/* B46A8 800B3AA8 1701001A */  bne        $t8, $at, .L800B3B14
/* B46AC 800B3AAC 00000000 */   nop
/* B46B0 800B3AB0 8E190010 */  lw         $t9, 0x10($s0)
/* B46B4 800B3AB4 3C09801B */  lui        $t1, %hi(D_801A8B60)
/* B46B8 800B3AB8 25298B60 */  addiu      $t1, $t1, %lo(D_801A8B60)
/* B46BC 800B3ABC 001940C0 */  sll        $t0, $t9, 3
/* B46C0 800B3AC0 01098821 */  addu       $s1, $t0, $t1
/* B46C4 800B3AC4 8E2A0000 */  lw         $t2, ($s1)
/* B46C8 800B3AC8 15400003 */  bnez       $t2, .L800B3AD8
/* B46CC 800B3ACC 00000000 */   nop
/* B46D0 800B3AD0 1000003D */  b          .L800B3BC8
/* B46D4 800B3AD4 2402FFFE */   addiu     $v0, $zero, -2
.L800B3AD8:
/* B46D8 800B3AD8 0C02C678 */  jal        func_800B19E0
/* B46DC 800B3ADC 8E240000 */   lw        $a0, ($s1)
/* B46E0 800B3AE0 AFA20024 */  sw         $v0, 0x24($sp)
/* B46E4 800B3AE4 8FAB0024 */  lw         $t3, 0x24($sp)
/* B46E8 800B3AE8 3C01FC00 */  lui        $at, 0xfc00
/* B46EC 800B3AEC 3421003F */  ori        $at, $at, 0x3f
/* B46F0 800B3AF0 01616024 */  and        $t4, $t3, $at
/* B46F4 800B3AF4 2401000D */  addiu      $at, $zero, 0xd
/* B46F8 800B3AF8 15810004 */  bne        $t4, $at, .L800B3B0C
/* B46FC 800B3AFC 00000000 */   nop
/* B4700 800B3B00 8E240000 */  lw         $a0, ($s1)
/* B4704 800B3B04 0C02C664 */  jal        func_800B1990
/* B4708 800B3B08 8E250004 */   lw        $a1, 4($s1)
.L800B3B0C:
/* B470C 800B3B0C 1000001E */  b          .L800B3B88
/* B4710 800B3B10 00000000 */   nop
.L800B3B14:
/* B4714 800B3B14 8E0D0010 */  lw         $t5, 0x10($s0)
/* B4718 800B3B18 3C0F801B */  lui        $t7, %hi(D_801A8AD8)
/* B471C 800B3B1C 25EF8AD8 */  addiu      $t7, $t7, %lo(D_801A8AD8)
/* B4720 800B3B20 000D70C0 */  sll        $t6, $t5, 3
/* B4724 800B3B24 01CF8821 */  addu       $s1, $t6, $t7
/* B4728 800B3B28 8E380000 */  lw         $t8, ($s1)
/* B472C 800B3B2C 17000003 */  bnez       $t8, .L800B3B3C
/* B4730 800B3B30 00000000 */   nop
/* B4734 800B3B34 10000024 */  b          .L800B3BC8
/* B4738 800B3B38 2402FFFE */   addiu     $v0, $zero, -2
.L800B3B3C:
/* B473C 800B3B3C 8E390000 */  lw         $t9, ($s1)
/* B4740 800B3B40 8F280000 */  lw         $t0, ($t9)
/* B4744 800B3B44 AFA80024 */  sw         $t0, 0x24($sp)
/* B4748 800B3B48 8FA90024 */  lw         $t1, 0x24($sp)
/* B474C 800B3B4C 3C01FC00 */  lui        $at, 0xfc00
/* B4750 800B3B50 3421003F */  ori        $at, $at, 0x3f
/* B4754 800B3B54 01215024 */  and        $t2, $t1, $at
/* B4758 800B3B58 2401000D */  addiu      $at, $zero, 0xd
/* B475C 800B3B5C 1541000A */  bne        $t2, $at, .L800B3B88
/* B4760 800B3B60 00000000 */   nop
/* B4764 800B3B64 8E2B0004 */  lw         $t3, 4($s1)
/* B4768 800B3B68 8E2C0000 */  lw         $t4, ($s1)
/* B476C 800B3B6C AD8B0000 */  sw         $t3, ($t4)
/* B4770 800B3B70 8E240000 */  lw         $a0, ($s1)
/* B4774 800B3B74 0C027C44 */  jal        func_8009F110
/* B4778 800B3B78 24050004 */   addiu     $a1, $zero, 4
/* B477C 800B3B7C 8E240000 */  lw         $a0, ($s1)
/* B4780 800B3B80 0C02B454 */  jal        func_800AD150
/* B4784 800B3B84 24050004 */   addiu     $a1, $zero, 4
.L800B3B88:
/* B4788 800B3B88 AE200000 */  sw         $zero, ($s1)
/* B478C 800B3B8C 920D0004 */  lbu        $t5, 4($s0)
/* B4790 800B3B90 A3AD002C */  sb         $t5, 0x2c($sp)
/* B4794 800B3B94 A7A0002E */  sh         $zero, 0x2e($sp)
/* B4798 800B3B98 8E0E000C */  lw         $t6, 0xc($s0)
/* B479C 800B3B9C AFAE0034 */  sw         $t6, 0x34($sp)
/* B47A0 800B3BA0 8E0F0010 */  lw         $t7, 0x10($s0)
/* B47A4 800B3BA4 AFAF0038 */  sw         $t7, 0x38($sp)
/* B47A8 800B3BA8 27A40028 */  addiu      $a0, $sp, 0x28
/* B47AC 800B3BAC 24050018 */  addiu      $a1, $zero, 0x18
/* B47B0 800B3BB0 0C02C907 */  jal        func_800B241C
/* B47B4 800B3BB4 24060001 */   addiu     $a2, $zero, 1
/* B47B8 800B3BB8 10000003 */  b          .L800B3BC8
/* B47BC 800B3BBC 00001025 */   or        $v0, $zero, $zero
/* B47C0 800B3BC0 10000001 */  b          .L800B3BC8
/* B47C4 800B3BC4 00000000 */   nop
.L800B3BC8:
/* B47C8 800B3BC8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B47CC 800B3BCC 8FB00014 */  lw         $s0, 0x14($sp)
/* B47D0 800B3BD0 8FB10018 */  lw         $s1, 0x18($sp)
/* B47D4 800B3BD4 03E00008 */  jr         $ra
/* B47D8 800B3BD8 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800B3BDC
/* B47DC 800B3BDC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B47E0 800B3BE0 AFBF001C */  sw         $ra, 0x1c($sp)
/* B47E4 800B3BE4 AFA40028 */  sw         $a0, 0x28($sp)
/* B47E8 800B3BE8 AFA5002C */  sw         $a1, 0x2c($sp)
/* B47EC 800B3BEC AFA60030 */  sw         $a2, 0x30($sp)
/* B47F0 800B3BF0 AFB00018 */  sw         $s0, 0x18($sp)
/* B47F4 800B3BF4 8FAE0028 */  lw         $t6, 0x28($sp)
/* B47F8 800B3BF8 24010001 */  addiu      $at, $zero, 1
/* B47FC 800B3BFC 15C10005 */  bne        $t6, $at, .L800B3C14
/* B4800 800B3C00 00000000 */   nop
/* B4804 800B3C04 0C02C678 */  jal        func_800B19E0
/* B4808 800B3C08 8FA40030 */   lw        $a0, 0x30($sp)
/* B480C 800B3C0C 10000004 */  b          .L800B3C20
/* B4810 800B3C10 AFA20024 */   sw        $v0, 0x24($sp)
.L800B3C14:
/* B4814 800B3C14 8FAF0030 */  lw         $t7, 0x30($sp)
/* B4818 800B3C18 8DF80000 */  lw         $t8, ($t7)
/* B481C 800B3C1C AFB80024 */  sw         $t8, 0x24($sp)
.L800B3C20:
/* B4820 800B3C20 8FB90024 */  lw         $t9, 0x24($sp)
/* B4824 800B3C24 00194683 */  sra        $t0, $t9, 0x1a
/* B4828 800B3C28 3109003F */  andi       $t1, $t0, 0x3f
/* B482C 800B3C2C 2D210018 */  sltiu      $at, $t1, 0x18
/* B4830 800B3C30 10200083 */  beqz       $at, .L800B3E40
/* B4834 800B3C34 00000000 */   nop
/* B4838 800B3C38 00094880 */  sll        $t1, $t1, 2
/* B483C 800B3C3C 3C01800D */  lui        $at, %hi(D_800D39D0)
/* B4840 800B3C40 00290821 */  addu       $at, $at, $t1
/* B4844 800B3C44 8C2939D0 */  lw         $t1, %lo(D_800D39D0)($at)
/* B4848 800B3C48 01200008 */  jr         $t1
/* B484C 800B3C4C 00000000 */   nop
/* B4850 800B3C50 8FAA0024 */  lw         $t2, 0x24($sp)
/* B4854 800B3C54 000A5943 */  sra        $t3, $t2, 5
/* B4858 800B3C58 316C7FFF */  andi       $t4, $t3, 0x7fff
/* B485C 800B3C5C 1580000F */  bnez       $t4, .L800B3C9C
/* B4860 800B3C60 00000000 */   nop
/* B4864 800B3C64 314D003F */  andi       $t5, $t2, 0x3f
/* B4868 800B3C68 24010008 */  addiu      $at, $zero, 8
/* B486C 800B3C6C 15A1000B */  bne        $t5, $at, .L800B3C9C
/* B4870 800B3C70 00000000 */   nop
/* B4874 800B3C74 8FA60024 */  lw         $a2, 0x24($sp)
/* B4878 800B3C78 8FA40028 */  lw         $a0, 0x28($sp)
/* B487C 800B3C7C 8FA5002C */  lw         $a1, 0x2c($sp)
/* B4880 800B3C80 00067543 */  sra        $t6, $a2, 0x15
/* B4884 800B3C84 01C03025 */  or         $a2, $t6, $zero
/* B4888 800B3C88 30CF001F */  andi       $t7, $a2, 0x1f
/* B488C 800B3C8C 0C02D3E3 */  jal        func_800B4F8C
/* B4890 800B3C90 01E03025 */   or        $a2, $t7, $zero
/* B4894 800B3C94 1000006E */  b          .L800B3E50
/* B4898 800B3C98 00000000 */   nop
.L800B3C9C:
/* B489C 800B3C9C 8FB80024 */  lw         $t8, 0x24($sp)
/* B48A0 800B3CA0 0018CC03 */  sra        $t9, $t8, 0x10
/* B48A4 800B3CA4 3328001F */  andi       $t0, $t9, 0x1f
/* B48A8 800B3CA8 1500000F */  bnez       $t0, .L800B3CE8
/* B48AC 800B3CAC 00000000 */   nop
/* B48B0 800B3CB0 330907FF */  andi       $t1, $t8, 0x7ff
/* B48B4 800B3CB4 24010009 */  addiu      $at, $zero, 9
/* B48B8 800B3CB8 1521000B */  bne        $t1, $at, .L800B3CE8
/* B48BC 800B3CBC 00000000 */   nop
/* B48C0 800B3CC0 8FA60024 */  lw         $a2, 0x24($sp)
/* B48C4 800B3CC4 8FA40028 */  lw         $a0, 0x28($sp)
/* B48C8 800B3CC8 8FA5002C */  lw         $a1, 0x2c($sp)
/* B48CC 800B3CCC 00065D43 */  sra        $t3, $a2, 0x15
/* B48D0 800B3CD0 01603025 */  or         $a2, $t3, $zero
/* B48D4 800B3CD4 30CC001F */  andi       $t4, $a2, 0x1f
/* B48D8 800B3CD8 0C02D3E3 */  jal        func_800B4F8C
/* B48DC 800B3CDC 01803025 */   or        $a2, $t4, $zero
/* B48E0 800B3CE0 1000005B */  b          .L800B3E50
/* B48E4 800B3CE4 00000000 */   nop
.L800B3CE8:
/* B48E8 800B3CE8 10000055 */  b          .L800B3E40
/* B48EC 800B3CEC 00000000 */   nop
/* B48F0 800B3CF0 8FAA0024 */  lw         $t2, 0x24($sp)
/* B48F4 800B3CF4 000A6C03 */  sra        $t5, $t2, 0x10
/* B48F8 800B3CF8 31AE001F */  andi       $t6, $t5, 0x1f
/* B48FC 800B3CFC 2DC10014 */  sltiu      $at, $t6, 0x14
/* B4900 800B3D00 1020000E */  beqz       $at, .L800B3D3C
/* B4904 800B3D04 00000000 */   nop
/* B4908 800B3D08 000E7080 */  sll        $t6, $t6, 2
/* B490C 800B3D0C 3C01800D */  lui        $at, %hi(D_800D3A30)
/* B4910 800B3D10 002E0821 */  addu       $at, $at, $t6
/* B4914 800B3D14 8C2E3A30 */  lw         $t6, %lo(D_800D3A30)($at)
/* B4918 800B3D18 01C00008 */  jr         $t6
/* B491C 800B3D1C 00000000 */   nop
/* B4920 800B3D20 8FAF0024 */  lw         $t7, 0x24($sp)
/* B4924 800B3D24 8FB80030 */  lw         $t8, 0x30($sp)
/* B4928 800B3D28 000FCC00 */  sll        $t9, $t7, 0x10
/* B492C 800B3D2C 00194383 */  sra        $t0, $t9, 0xe
/* B4930 800B3D30 01181021 */  addu       $v0, $t0, $t8
/* B4934 800B3D34 10000046 */  b          .L800B3E50
/* B4938 800B3D38 24420004 */   addiu     $v0, $v0, 4
.L800B3D3C:
/* B493C 800B3D3C 10000040 */  b          .L800B3E40
/* B4940 800B3D40 00000000 */   nop
/* B4944 800B3D44 8FAA0030 */  lw         $t2, 0x30($sp)
/* B4948 800B3D48 8FA90024 */  lw         $t1, 0x24($sp)
/* B494C 800B3D4C 254D0004 */  addiu      $t5, $t2, 4
/* B4950 800B3D50 000D7703 */  sra        $t6, $t5, 0x1c
/* B4954 800B3D54 00095980 */  sll        $t3, $t1, 6
/* B4958 800B3D58 000B6102 */  srl        $t4, $t3, 4
/* B495C 800B3D5C 000E7F00 */  sll        $t7, $t6, 0x1c
/* B4960 800B3D60 1000003B */  b          .L800B3E50
/* B4964 800B3D64 018F1021 */   addu      $v0, $t4, $t7
/* B4968 800B3D68 8FB90024 */  lw         $t9, 0x24($sp)
/* B496C 800B3D6C 8FA90030 */  lw         $t1, 0x30($sp)
/* B4970 800B3D70 00194400 */  sll        $t0, $t9, 0x10
/* B4974 800B3D74 0008C383 */  sra        $t8, $t0, 0xe
/* B4978 800B3D78 03091021 */  addu       $v0, $t8, $t1
/* B497C 800B3D7C 10000034 */  b          .L800B3E50
/* B4980 800B3D80 24420004 */   addiu     $v0, $v0, 4
/* B4984 800B3D84 8FAB0024 */  lw         $t3, 0x24($sp)
/* B4988 800B3D88 000B5403 */  sra        $t2, $t3, 0x10
/* B498C 800B3D8C 314D001F */  andi       $t5, $t2, 0x1f
/* B4990 800B3D90 15A00008 */  bnez       $t5, .L800B3DB4
/* B4994 800B3D94 00000000 */   nop
/* B4998 800B3D98 8FAE0024 */  lw         $t6, 0x24($sp)
/* B499C 800B3D9C 8FB90030 */  lw         $t9, 0x30($sp)
/* B49A0 800B3DA0 000E6400 */  sll        $t4, $t6, 0x10
/* B49A4 800B3DA4 000C7B83 */  sra        $t7, $t4, 0xe
/* B49A8 800B3DA8 01F91021 */  addu       $v0, $t7, $t9
/* B49AC 800B3DAC 10000028 */  b          .L800B3E50
/* B49B0 800B3DB0 24420004 */   addiu     $v0, $v0, 4
.L800B3DB4:
/* B49B4 800B3DB4 10000022 */  b          .L800B3E40
/* B49B8 800B3DB8 00000000 */   nop
/* B49BC 800B3DBC 8FA80024 */  lw         $t0, 0x24($sp)
/* B49C0 800B3DC0 24010008 */  addiu      $at, $zero, 8
/* B49C4 800B3DC4 0008C543 */  sra        $t8, $t0, 0x15
/* B49C8 800B3DC8 3309001F */  andi       $t1, $t8, 0x1f
/* B49CC 800B3DCC 1521001A */  bne        $t1, $at, .L800B3E38
/* B49D0 800B3DD0 00000000 */   nop
/* B49D4 800B3DD4 8FB00024 */  lw         $s0, 0x24($sp)
/* B49D8 800B3DD8 00105C03 */  sra        $t3, $s0, 0x10
/* B49DC 800B3DDC 01608025 */  or         $s0, $t3, $zero
/* B49E0 800B3DE0 320A001F */  andi       $t2, $s0, 0x1f
/* B49E4 800B3DE4 01408025 */  or         $s0, $t2, $zero
/* B49E8 800B3DE8 1200000C */  beqz       $s0, .L800B3E1C
/* B49EC 800B3DEC 00000000 */   nop
/* B49F0 800B3DF0 24010001 */  addiu      $at, $zero, 1
/* B49F4 800B3DF4 12010009 */  beq        $s0, $at, .L800B3E1C
/* B49F8 800B3DF8 00000000 */   nop
/* B49FC 800B3DFC 24010002 */  addiu      $at, $zero, 2
/* B4A00 800B3E00 12010006 */  beq        $s0, $at, .L800B3E1C
/* B4A04 800B3E04 00000000 */   nop
/* B4A08 800B3E08 24010003 */  addiu      $at, $zero, 3
/* B4A0C 800B3E0C 12010003 */  beq        $s0, $at, .L800B3E1C
/* B4A10 800B3E10 00000000 */   nop
/* B4A14 800B3E14 10000008 */  b          .L800B3E38
/* B4A18 800B3E18 00000000 */   nop
.L800B3E1C:
/* B4A1C 800B3E1C 8FAD0024 */  lw         $t5, 0x24($sp)
/* B4A20 800B3E20 8FAF0030 */  lw         $t7, 0x30($sp)
/* B4A24 800B3E24 000D7400 */  sll        $t6, $t5, 0x10
/* B4A28 800B3E28 000E6383 */  sra        $t4, $t6, 0xe
/* B4A2C 800B3E2C 018F1021 */  addu       $v0, $t4, $t7
/* B4A30 800B3E30 10000007 */  b          .L800B3E50
/* B4A34 800B3E34 24420004 */   addiu     $v0, $v0, 4
.L800B3E38:
/* B4A38 800B3E38 10000001 */  b          .L800B3E40
/* B4A3C 800B3E3C 00000000 */   nop
.L800B3E40:
/* B4A40 800B3E40 10000003 */  b          .L800B3E50
/* B4A44 800B3E44 2402FFFF */   addiu     $v0, $zero, -1
/* B4A48 800B3E48 10000001 */  b          .L800B3E50
/* B4A4C 800B3E4C 00000000 */   nop
.L800B3E50:
/* B4A50 800B3E50 8FBF001C */  lw         $ra, 0x1c($sp)
/* B4A54 800B3E54 8FB00018 */  lw         $s0, 0x18($sp)
/* B4A58 800B3E58 27BD0028 */  addiu      $sp, $sp, 0x28
/* B4A5C 800B3E5C 03E00008 */  jr         $ra
/* B4A60 800B3E60 00000000 */   nop

glabel func_800B3E64
/* B4A64 800B3E64 27BDFFF8 */  addiu      $sp, $sp, -8
/* B4A68 800B3E68 00042E82 */  srl        $a1, $a0, 0x1a
/* B4A6C 800B3E6C 30AE003F */  andi       $t6, $a1, 0x3f
/* B4A70 800B3E70 01C02825 */  or         $a1, $t6, $zero
/* B4A74 800B3E74 10A00009 */  beqz       $a1, .L800B3E9C
/* B4A78 800B3E78 00000000 */   nop
/* B4A7C 800B3E7C 24010002 */  addiu      $at, $zero, 2
/* B4A80 800B3E80 10A1001C */  beq        $a1, $at, .L800B3EF4
/* B4A84 800B3E84 00000000 */   nop
/* B4A88 800B3E88 24010003 */  addiu      $at, $zero, 3
/* B4A8C 800B3E8C 10A10019 */  beq        $a1, $at, .L800B3EF4
/* B4A90 800B3E90 00000000 */   nop
/* B4A94 800B3E94 10000019 */  b          .L800B3EFC
/* B4A98 800B3E98 00000000 */   nop
.L800B3E9C:
/* B4A9C 800B3E9C 00047942 */  srl        $t7, $a0, 5
/* B4AA0 800B3EA0 31F87FFF */  andi       $t8, $t7, 0x7fff
/* B4AA4 800B3EA4 17000007 */  bnez       $t8, .L800B3EC4
/* B4AA8 800B3EA8 00000000 */   nop
/* B4AAC 800B3EAC 3099003F */  andi       $t9, $a0, 0x3f
/* B4AB0 800B3EB0 24010008 */  addiu      $at, $zero, 8
/* B4AB4 800B3EB4 17210003 */  bne        $t9, $at, .L800B3EC4
/* B4AB8 800B3EB8 00000000 */   nop
/* B4ABC 800B3EBC 10000013 */  b          .L800B3F0C
/* B4AC0 800B3EC0 24020001 */   addiu     $v0, $zero, 1
.L800B3EC4:
/* B4AC4 800B3EC4 00044402 */  srl        $t0, $a0, 0x10
/* B4AC8 800B3EC8 3109001F */  andi       $t1, $t0, 0x1f
/* B4ACC 800B3ECC 15200007 */  bnez       $t1, .L800B3EEC
/* B4AD0 800B3ED0 00000000 */   nop
/* B4AD4 800B3ED4 308A07FF */  andi       $t2, $a0, 0x7ff
/* B4AD8 800B3ED8 24010009 */  addiu      $at, $zero, 9
/* B4ADC 800B3EDC 15410003 */  bne        $t2, $at, .L800B3EEC
/* B4AE0 800B3EE0 00000000 */   nop
/* B4AE4 800B3EE4 10000009 */  b          .L800B3F0C
/* B4AE8 800B3EE8 24020001 */   addiu     $v0, $zero, 1
.L800B3EEC:
/* B4AEC 800B3EEC 10000003 */  b          .L800B3EFC
/* B4AF0 800B3EF0 00000000 */   nop
.L800B3EF4:
/* B4AF4 800B3EF4 10000005 */  b          .L800B3F0C
/* B4AF8 800B3EF8 24020001 */   addiu     $v0, $zero, 1
.L800B3EFC:
/* B4AFC 800B3EFC 10000003 */  b          .L800B3F0C
/* B4B00 800B3F00 00001025 */   or        $v0, $zero, $zero
/* B4B04 800B3F04 10000001 */  b          .L800B3F0C
/* B4B08 800B3F08 00000000 */   nop
.L800B3F0C:
/* B4B0C 800B3F0C 03E00008 */  jr         $ra
/* B4B10 800B3F10 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B3F14
/* B4B14 800B3F14 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B4B18 800B3F18 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4B1C 800B3F1C AFA40020 */  sw         $a0, 0x20($sp)
/* B4B20 800B3F20 AFA50024 */  sw         $a1, 0x24($sp)
/* B4B24 800B3F24 00002025 */  or         $a0, $zero, $zero
/* B4B28 800B3F28 8FA50020 */  lw         $a1, 0x20($sp)
/* B4B2C 800B3F2C 0C02CEF7 */  jal        func_800B3BDC
/* B4B30 800B3F30 8FA60024 */   lw        $a2, 0x24($sp)
/* B4B34 800B3F34 AFA2001C */  sw         $v0, 0x1c($sp)
/* B4B38 800B3F38 8FAE001C */  lw         $t6, 0x1c($sp)
/* B4B3C 800B3F3C 31CF0003 */  andi       $t7, $t6, 3
/* B4B40 800B3F40 11E00007 */  beqz       $t7, .L800B3F60
/* B4B44 800B3F44 00000000 */   nop
/* B4B48 800B3F48 8FA40024 */  lw         $a0, 0x24($sp)
/* B4B4C 800B3F4C 00002825 */  or         $a1, $zero, $zero
/* B4B50 800B3F50 0C02CD98 */  jal        func_800B3660
/* B4B54 800B3F54 24840004 */   addiu     $a0, $a0, 4
/* B4B58 800B3F58 1000001C */  b          .L800B3FCC
/* B4B5C 800B3F5C 00000000 */   nop
.L800B3F60:
/* B4B60 800B3F60 8FB80024 */  lw         $t8, 0x24($sp)
/* B4B64 800B3F64 8FB9001C */  lw         $t9, 0x1c($sp)
/* B4B68 800B3F68 17190005 */  bne        $t8, $t9, .L800B3F80
/* B4B6C 800B3F6C 00000000 */   nop
/* B4B70 800B3F70 1000001A */  b          .L800B3FDC
/* B4B74 800B3F74 00001025 */   or        $v0, $zero, $zero
/* B4B78 800B3F78 10000014 */  b          .L800B3FCC
/* B4B7C 800B3F7C 00000000 */   nop
.L800B3F80:
/* B4B80 800B3F80 8FA80024 */  lw         $t0, 0x24($sp)
/* B4B84 800B3F84 0C02CF99 */  jal        func_800B3E64
/* B4B88 800B3F88 8D040000 */   lw        $a0, ($t0)
/* B4B8C 800B3F8C 14400006 */  bnez       $v0, .L800B3FA8
/* B4B90 800B3F90 00000000 */   nop
/* B4B94 800B3F94 8FA90024 */  lw         $t1, 0x24($sp)
/* B4B98 800B3F98 8FAB001C */  lw         $t3, 0x1c($sp)
/* B4B9C 800B3F9C 252A0008 */  addiu      $t2, $t1, 8
/* B4BA0 800B3FA0 154B0006 */  bne        $t2, $t3, .L800B3FBC
/* B4BA4 800B3FA4 00000000 */   nop
.L800B3FA8:
/* B4BA8 800B3FA8 8FA4001C */  lw         $a0, 0x1c($sp)
/* B4BAC 800B3FAC 0C02CD98 */  jal        func_800B3660
/* B4BB0 800B3FB0 00002825 */   or        $a1, $zero, $zero
/* B4BB4 800B3FB4 10000005 */  b          .L800B3FCC
/* B4BB8 800B3FB8 00000000 */   nop
.L800B3FBC:
/* B4BBC 800B3FBC 8FA50024 */  lw         $a1, 0x24($sp)
/* B4BC0 800B3FC0 8FA4001C */  lw         $a0, 0x1c($sp)
/* B4BC4 800B3FC4 0C02CD98 */  jal        func_800B3660
/* B4BC8 800B3FC8 24A50008 */   addiu     $a1, $a1, 8
.L800B3FCC:
/* B4BCC 800B3FCC 10000003 */  b          .L800B3FDC
/* B4BD0 800B3FD0 24020001 */   addiu     $v0, $zero, 1
/* B4BD4 800B3FD4 10000001 */  b          .L800B3FDC
/* B4BD8 800B3FD8 00000000 */   nop
.L800B3FDC:
/* B4BDC 800B3FDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4BE0 800B3FE0 27BD0020 */  addiu      $sp, $sp, 0x20
/* B4BE4 800B3FE4 03E00008 */  jr         $ra
/* B4BE8 800B3FE8 00000000 */   nop

glabel func_800B3FEC
/* B4BEC 800B3FEC 240E0001 */  addiu      $t6, $zero, 1
/* B4BF0 800B3FF0 AC8E000C */  sw         $t6, 0xc($a0)
/* B4BF4 800B3FF4 240F0002 */  addiu      $t7, $zero, 2
/* B4BF8 800B3FF8 A48F0010 */  sh         $t7, 0x10($a0)
/* B4BFC 800B3FFC A4800012 */  sh         $zero, 0x12($a0)
/* B4C00 800B4000 AC800030 */  sw         $zero, 0x30($a0)
/* B4C04 800B4004 24180002 */  addiu      $t8, $zero, 2
/* B4C08 800B4008 A4980024 */  sh         $t8, 0x24($a0)
/* B4C0C 800B400C 24190004 */  addiu      $t9, $zero, 4
/* B4C10 800B4010 A4990026 */  sh         $t9, 0x26($a0)
/* B4C14 800B4014 24080004 */  addiu      $t0, $zero, 4
/* B4C18 800B4018 A0880004 */  sb         $t0, 4($a0)
/* B4C1C 800B401C A4800006 */  sh         $zero, 6($a0)
/* B4C20 800B4020 2409004C */  addiu      $t1, $zero, 0x4c
/* B4C24 800B4024 AC890000 */  sw         $t1, ($a0)
/* B4C28 800B4028 03E00008 */  jr         $ra
/* B4C2C 800B402C 00000000 */   nop

glabel func_800B4030
/* B4C30 800B4030 03E00008 */  jr         $ra
/* B4C34 800B4034 00000000 */   nop

glabel func_800B4038
/* B4C38 800B4038 27BDFF90 */  addiu      $sp, $sp, -0x70
/* B4C3C 800B403C AFBF001C */  sw         $ra, 0x1c($sp)
/* B4C40 800B4040 AFA40070 */  sw         $a0, 0x70($sp)
/* B4C44 800B4044 AFA50074 */  sw         $a1, 0x74($sp)
/* B4C48 800B4048 AFB00018 */  sw         $s0, 0x18($sp)
/* B4C4C 800B404C 8FAE0070 */  lw         $t6, 0x70($sp)
/* B4C50 800B4050 11C00003 */  beqz       $t6, .L800B4060
/* B4C54 800B4054 00000000 */   nop
/* B4C58 800B4058 10000002 */  b          .L800B4064
/* B4C5C 800B405C 01C08025 */   or        $s0, $t6, $zero
.L800B4060:
/* B4C60 800B4060 241003EB */  addiu      $s0, $zero, 0x3eb
.L800B4064:
/* B4C64 800B4064 00002025 */  or         $a0, $zero, $zero
/* B4C68 800B4068 02002825 */  or         $a1, $s0, $zero
/* B4C6C 800B406C 0C02CAD5 */  jal        func_800B2B54
/* B4C70 800B4070 27A60024 */   addiu     $a2, $sp, 0x24
/* B4C74 800B4074 0C02CFFB */  jal        func_800B3FEC
/* B4C78 800B4078 27A40024 */   addiu     $a0, $sp, 0x24
/* B4C7C 800B407C 8FAF0074 */  lw         $t7, 0x74($sp)
/* B4C80 800B4080 2401000F */  addiu      $at, $zero, 0xf
/* B4C84 800B4084 15E10005 */  bne        $t7, $at, .L800B409C
/* B4C88 800B4088 00000000 */   nop
/* B4C8C 800B408C 24180001 */  addiu      $t8, $zero, 1
/* B4C90 800B4090 A7B80048 */  sh         $t8, 0x48($sp)
/* B4C94 800B4094 24190002 */  addiu      $t9, $zero, 2
/* B4C98 800B4098 A7B9004A */  sh         $t9, 0x4a($sp)
.L800B409C:
/* B4C9C 800B409C 8FA80074 */  lw         $t0, 0x74($sp)
/* B4CA0 800B40A0 29010010 */  slti       $at, $t0, 0x10
/* B4CA4 800B40A4 10200003 */  beqz       $at, .L800B40B4
/* B4CA8 800B40A8 00000000 */   nop
/* B4CAC 800B40AC 10000004 */  b          .L800B40C0
/* B4CB0 800B40B0 AFA00074 */   sw        $zero, 0x74($sp)
.L800B40B4:
/* B4CB4 800B40B4 8FA90074 */  lw         $t1, 0x74($sp)
/* B4CB8 800B40B8 252AFFF0 */  addiu      $t2, $t1, -0x10
/* B4CBC 800B40BC AFAA0074 */  sw         $t2, 0x74($sp)
.L800B40C0:
/* B4CC0 800B40C0 8FAB0074 */  lw         $t3, 0x74($sp)
/* B4CC4 800B40C4 11600003 */  beqz       $t3, .L800B40D4
/* B4CC8 800B40C8 00000000 */   nop
/* B4CCC 800B40CC 240C000D */  addiu      $t4, $zero, 0xd
/* B4CD0 800B40D0 AFAC0040 */  sw         $t4, 0x40($sp)
.L800B40D4:
/* B4CD4 800B40D4 27A40024 */  addiu      $a0, $sp, 0x24
/* B4CD8 800B40D8 2405004C */  addiu      $a1, $zero, 0x4c
/* B4CDC 800B40DC 0C02C907 */  jal        func_800B241C
/* B4CE0 800B40E0 24060002 */   addiu     $a2, $zero, 2
/* B4CE4 800B40E4 10000001 */  b          .L800B40EC
/* B4CE8 800B40E8 00000000 */   nop
.L800B40EC:
/* B4CEC 800B40EC 8FBF001C */  lw         $ra, 0x1c($sp)
/* B4CF0 800B40F0 8FB00018 */  lw         $s0, 0x18($sp)
/* B4CF4 800B40F4 27BD0070 */  addiu      $sp, $sp, 0x70
/* B4CF8 800B40F8 03E00008 */  jr         $ra
/* B4CFC 800B40FC 00000000 */   nop

glabel func_800B4100
/* B4D00 800B4100 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4D04 800B4104 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4D08 800B4108 0C02CDCA */  jal        func_800B3728
/* B4D0C 800B410C 00000000 */   nop
/* B4D10 800B4110 0C02CA33 */  jal        func_800B28CC
/* B4D14 800B4114 00002025 */   or        $a0, $zero, $zero
/* B4D18 800B4118 0C02D079 */  jal        func_800B41E4
/* B4D1C 800B411C 00000000 */   nop
/* B4D20 800B4120 10000001 */  b          .L800B4128
/* B4D24 800B4124 00000000 */   nop
.L800B4128:
/* B4D28 800B4128 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4D2C 800B412C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4D30 800B4130 03E00008 */  jr         $ra
/* B4D34 800B4134 00000000 */   nop

glabel func_800B4138
/* B4D38 800B4138 27BDFF90 */  addiu      $sp, $sp, -0x70
/* B4D3C 800B413C AFBF001C */  sw         $ra, 0x1c($sp)
/* B4D40 800B4140 AFB00018 */  sw         $s0, 0x18($sp)
/* B4D44 800B4144 0C02C678 */  jal        func_800B19E0
/* B4D48 800B4148 3C040408 */   lui       $a0, 0x408
/* B4D4C 800B414C 00408025 */  or         $s0, $v0, $zero
/* B4D50 800B4150 2605FFFC */  addiu      $a1, $s0, -4
/* B4D54 800B4154 0C02C664 */  jal        func_800B1990
/* B4D58 800B4158 3C040408 */   lui       $a0, 0x408
/* B4D5C 800B415C 24040001 */  addiu      $a0, $zero, 1
/* B4D60 800B4160 240503E8 */  addiu      $a1, $zero, 0x3e8
/* B4D64 800B4164 0C02CAD5 */  jal        func_800B2B54
/* B4D68 800B4168 27A60024 */   addiu     $a2, $sp, 0x24
/* B4D6C 800B416C 0C02CFFB */  jal        func_800B3FEC
/* B4D70 800B4170 27A40024 */   addiu     $a0, $sp, 0x24
/* B4D74 800B4174 27A40024 */  addiu      $a0, $sp, 0x24
/* B4D78 800B4178 2405004C */  addiu      $a1, $zero, 0x4c
/* B4D7C 800B417C 0C02C907 */  jal        func_800B241C
/* B4D80 800B4180 24060002 */   addiu     $a2, $zero, 2
/* B4D84 800B4184 240E0001 */  addiu      $t6, $zero, 1
/* B4D88 800B4188 3C01801B */  lui        $at, %hi(D_801A8AD0)
/* B4D8C 800B418C A02E8AD0 */  sb         $t6, %lo(D_801A8AD0)($at)
/* B4D90 800B4190 10000001 */  b          .L800B4198
/* B4D94 800B4194 00000000 */   nop
.L800B4198:
/* B4D98 800B4198 8FBF001C */  lw         $ra, 0x1c($sp)
/* B4D9C 800B419C 8FB00018 */  lw         $s0, 0x18($sp)
/* B4DA0 800B41A0 27BD0070 */  addiu      $sp, $sp, 0x70
/* B4DA4 800B41A4 03E00008 */  jr         $ra
/* B4DA8 800B41A8 00000000 */   nop

glabel func_800B41AC
/* B4DAC 800B41AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4DB0 800B41B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4DB4 800B41B4 0C02C9EC */  jal        func_800B27B0
/* B4DB8 800B41B8 00000000 */   nop
/* B4DBC 800B41BC 0C02CA33 */  jal        func_800B28CC
/* B4DC0 800B41C0 00002025 */   or        $a0, $zero, $zero
/* B4DC4 800B41C4 0C02D079 */  jal        func_800B41E4
/* B4DC8 800B41C8 00000000 */   nop
/* B4DCC 800B41CC 10000001 */  b          .L800B41D4
/* B4DD0 800B41D0 00000000 */   nop
.L800B41D4:
/* B4DD4 800B41D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4DD8 800B41D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4DDC 800B41DC 03E00008 */  jr         $ra
/* B4DE0 800B41E0 00000000 */   nop

glabel func_800B41E4
/* B4DE4 800B41E4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B4DE8 800B41E8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B4DEC 800B41EC AFB00018 */  sw         $s0, 0x18($sp)
/* B4DF0 800B41F0 0C02D424 */  jal        func_800B5090
/* B4DF4 800B41F4 00000000 */   nop
/* B4DF8 800B41F8 00408025 */  or         $s0, $v0, $zero
/* B4DFC 800B41FC 8E0E0004 */  lw         $t6, 4($s0)
/* B4E00 800B4200 2401FFFF */  addiu      $at, $zero, -1
/* B4E04 800B4204 11C1002E */  beq        $t6, $at, .L800B42C0
/* B4E08 800B4208 00000000 */   nop
.L800B420C:
/* B4E0C 800B420C 8E0F0004 */  lw         $t7, 4($s0)
/* B4E10 800B4210 19E00026 */  blez       $t7, .L800B42AC
/* B4E14 800B4214 00000000 */   nop
/* B4E18 800B4218 8E180004 */  lw         $t8, 4($s0)
/* B4E1C 800B421C 2B010080 */  slti       $at, $t8, 0x80
/* B4E20 800B4220 10200022 */  beqz       $at, .L800B42AC
/* B4E24 800B4224 00000000 */   nop
/* B4E28 800B4228 96190012 */  lhu        $t9, 0x12($s0)
/* B4E2C 800B422C 33280001 */  andi       $t0, $t9, 1
/* B4E30 800B4230 11000015 */  beqz       $t0, .L800B4288
/* B4E34 800B4234 00000000 */   nop
/* B4E38 800B4238 8E09011C */  lw         $t1, 0x11c($s0)
/* B4E3C 800B423C 8D2A0000 */  lw         $t2, ($t1)
/* B4E40 800B4240 AFAA0020 */  sw         $t2, 0x20($sp)
/* B4E44 800B4244 8FAB0020 */  lw         $t3, 0x20($sp)
/* B4E48 800B4248 3C01FC00 */  lui        $at, 0xfc00
/* B4E4C 800B424C 3421003F */  ori        $at, $at, 0x3f
/* B4E50 800B4250 01616024 */  and        $t4, $t3, $at
/* B4E54 800B4254 2401000D */  addiu      $at, $zero, 0xd
/* B4E58 800B4258 15810008 */  bne        $t4, $at, .L800B427C
/* B4E5C 800B425C 00000000 */   nop
/* B4E60 800B4260 8FA50020 */  lw         $a1, 0x20($sp)
/* B4E64 800B4264 8E040014 */  lw         $a0, 0x14($s0)
/* B4E68 800B4268 00056983 */  sra        $t5, $a1, 6
/* B4E6C 800B426C 0C02D00E */  jal        func_800B4038
/* B4E70 800B4270 01A02825 */   or        $a1, $t5, $zero
/* B4E74 800B4274 10000004 */  b          .L800B4288
/* B4E78 800B4278 00000000 */   nop
.L800B427C:
/* B4E7C 800B427C 8E040014 */  lw         $a0, 0x14($s0)
/* B4E80 800B4280 0C02D00E */  jal        func_800B4038
/* B4E84 800B4284 00002825 */   or        $a1, $zero, $zero
.L800B4288:
/* B4E88 800B4288 960E0012 */  lhu        $t6, 0x12($s0)
/* B4E8C 800B428C 31CF0002 */  andi       $t7, $t6, 2
/* B4E90 800B4290 11E00006 */  beqz       $t7, .L800B42AC
/* B4E94 800B4294 00000000 */   nop
/* B4E98 800B4298 0C02B4A0 */  jal        func_800AD280
/* B4E9C 800B429C 02002025 */   or        $a0, $s0, $zero
/* B4EA0 800B42A0 8E040014 */  lw         $a0, 0x14($s0)
/* B4EA4 800B42A4 0C02D00E */  jal        func_800B4038
/* B4EA8 800B42A8 2405000F */   addiu     $a1, $zero, 0xf
.L800B42AC:
/* B4EAC 800B42AC 8E10000C */  lw         $s0, 0xc($s0)
/* B4EB0 800B42B0 8E180004 */  lw         $t8, 4($s0)
/* B4EB4 800B42B4 2401FFFF */  addiu      $at, $zero, -1
/* B4EB8 800B42B8 1701FFD4 */  bne        $t8, $at, .L800B420C
/* B4EBC 800B42BC 00000000 */   nop
.L800B42C0:
/* B4EC0 800B42C0 10000001 */  b          .L800B42C8
/* B4EC4 800B42C4 00000000 */   nop
.L800B42C8:
/* B4EC8 800B42C8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B4ECC 800B42CC 8FB00018 */  lw         $s0, 0x18($sp)
/* B4ED0 800B42D0 27BD0028 */  addiu      $sp, $sp, 0x28
/* B4ED4 800B42D4 03E00008 */  jr         $ra
/* B4ED8 800B42D8 00000000 */   nop
/* B4EDC 800B42DC 00000000 */  nop
