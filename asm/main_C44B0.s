.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C38B0
/* C44B0 800C38B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C44B4 800C38B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C44B8 800C38B8 240E0011 */  addiu      $t6, $zero, 0x11
/* C44BC 800C38BC A7AE0018 */  sh         $t6, 0x18($sp)
/* C44C0 800C38C0 27A50018 */  addiu      $a1, $sp, 0x18
/* C44C4 800C38C4 24840048 */  addiu      $a0, $a0, 0x48
/* C44C8 800C38C8 0C03031B */  jal        func_800C0C6C
/* C44CC 800C38CC 00003025 */   or        $a2, $zero, $zero
/* C44D0 800C38D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C44D4 800C38D4 27BD0028 */  addiu      $sp, $sp, 0x28
/* C44D8 800C38D8 03E00008 */  jr         $ra
/* C44DC 800C38DC 00000000 */   nop

glabel func_800C38E0
/* C44E0 800C38E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C44E4 800C38E4 44867000 */  mtc1       $a2, $f14
/* C44E8 800C38E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* C44EC 800C38EC AFA7003C */  sw         $a3, 0x3c($sp)
/* C44F0 800C38F0 AFA40030 */  sw         $a0, 0x30($sp)
/* C44F4 800C38F4 AFA50034 */  sw         $a1, 0x34($sp)
/* C44F8 800C38F8 0C031110 */  jal        func_800C4440
/* C44FC 800C38FC E7AE0038 */   swc1      $f14, 0x38($sp)
/* C4500 800C3900 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* C4504 800C3904 3C01800E */  lui        $at, %hi(D_800DFBE0)
/* C4508 800C3908 D426FBE0 */  ldc1       $f6, %lo(D_800DFBE0)($at)
/* C450C 800C390C 46007121 */  cvt.d.s    $f4, $f14
/* C4510 800C3910 3C014000 */  lui        $at, 0x4000
/* C4514 800C3914 46262202 */  mul.d      $f8, $f4, $f6
/* C4518 800C3918 44815000 */  mtc1       $at, $f10
/* C451C 800C391C 462043A0 */  cvt.s.d    $f14, $f8
/* C4520 800C3920 460A7303 */  div.s      $f12, $f14, $f10
/* C4524 800C3924 0C033F18 */  jal        func_800CFC60
/* C4528 800C3928 E7AC001C */   swc1      $f12, 0x1c($sp)
/* C452C 800C392C C7AC001C */  lwc1       $f12, 0x1c($sp)
/* C4530 800C3930 0C02F904 */  jal        func_800BE410
/* C4534 800C3934 E7A00020 */   swc1      $f0, 0x20($sp)
/* C4538 800C3938 C7A40020 */  lwc1       $f4, 0x20($sp)
/* C453C 800C393C C7A6003C */  lwc1       $f6, 0x3c($sp)
/* C4540 800C3940 C7AE0040 */  lwc1       $f14, 0x40($sp)
/* C4544 800C3944 46002083 */  div.s      $f2, $f4, $f0
/* C4548 800C3948 C7B00044 */  lwc1       $f16, 0x44($sp)
/* C454C 800C394C 3C01BF80 */  lui        $at, 0xbf80
/* C4550 800C3950 44812000 */  mtc1       $at, $f4
/* C4554 800C3954 46107480 */  add.s      $f18, $f14, $f16
/* C4558 800C3958 8FA20030 */  lw         $v0, 0x30($sp)
/* C455C 800C395C 3C014000 */  lui        $at, 0x4000
/* C4560 800C3960 46107301 */  sub.s      $f12, $f14, $f16
/* C4564 800C3964 8FA50034 */  lw         $a1, 0x34($sp)
/* C4568 800C3968 E444002C */  swc1       $f4, 0x2c($v0)
/* C456C 800C396C 00001825 */  or         $v1, $zero, $zero
/* C4570 800C3970 24040004 */  addiu      $a0, $zero, 4
/* C4574 800C3974 460C9283 */  div.s      $f10, $f18, $f12
/* C4578 800C3978 E4420014 */  swc1       $f2, 0x14($v0)
/* C457C 800C397C 46061203 */  div.s      $f8, $f2, $f6
/* C4580 800C3980 44813000 */  mtc1       $at, $f6
/* C4584 800C3984 E44A0028 */  swc1       $f10, 0x28($v0)
/* C4588 800C3988 E4480000 */  swc1       $f8, ($v0)
/* C458C 800C398C 460E3202 */  mul.s      $f8, $f6, $f14
/* C4590 800C3990 44803000 */  mtc1       $zero, $f6
/* C4594 800C3994 00000000 */  nop
/* C4598 800C3998 E446003C */  swc1       $f6, 0x3c($v0)
/* C459C 800C399C 46104282 */  mul.s      $f10, $f8, $f16
/* C45A0 800C39A0 460C5103 */  div.s      $f4, $f10, $f12
/* C45A4 800C39A4 E4440038 */  swc1       $f4, 0x38($v0)
/* C45A8 800C39A8 C7A00048 */  lwc1       $f0, 0x48($sp)
/* C45AC 800C39AC C4460000 */  lwc1       $f6, ($v0)
/* C45B0 800C39B0 24630001 */  addiu      $v1, $v1, 1
/* C45B4 800C39B4 C4500004 */  lwc1       $f16, 4($v0)
/* C45B8 800C39B8 46003282 */  mul.s      $f10, $f6, $f0
/* C45BC 800C39BC C44C0008 */  lwc1       $f12, 8($v0)
/* C45C0 800C39C0 10640010 */  beq        $v1, $a0, .L800C3A04
/* C45C4 800C39C4 C44E000C */   lwc1      $f14, 0xc($v0)
.L800C39C8:
/* C45C8 800C39C8 46008202 */  mul.s      $f8, $f16, $f0
/* C45CC 800C39CC C4460010 */  lwc1       $f6, 0x10($v0)
/* C45D0 800C39D0 C4500014 */  lwc1       $f16, 0x14($v0)
/* C45D4 800C39D4 46006102 */  mul.s      $f4, $f12, $f0
/* C45D8 800C39D8 C44C0018 */  lwc1       $f12, 0x18($v0)
/* C45DC 800C39DC 24630001 */  addiu      $v1, $v1, 1
/* C45E0 800C39E0 46007082 */  mul.s      $f2, $f14, $f0
/* C45E4 800C39E4 C44E001C */  lwc1       $f14, 0x1c($v0)
/* C45E8 800C39E8 E44A0000 */  swc1       $f10, ($v0)
/* C45EC 800C39EC 46003282 */  mul.s      $f10, $f6, $f0
/* C45F0 800C39F0 E4480004 */  swc1       $f8, 4($v0)
/* C45F4 800C39F4 E4440008 */  swc1       $f4, 8($v0)
/* C45F8 800C39F8 24420010 */  addiu      $v0, $v0, 0x10
/* C45FC 800C39FC 1464FFF2 */  bne        $v1, $a0, .L800C39C8
/* C4600 800C3A00 E442FFFC */   swc1      $f2, -4($v0)
.L800C3A04:
/* C4604 800C3A04 46008202 */  mul.s      $f8, $f16, $f0
/* C4608 800C3A08 24420010 */  addiu      $v0, $v0, 0x10
/* C460C 800C3A0C E44AFFF0 */  swc1       $f10, -0x10($v0)
/* C4610 800C3A10 46006102 */  mul.s      $f4, $f12, $f0
/* C4614 800C3A14 00000000 */  nop
/* C4618 800C3A18 46007082 */  mul.s      $f2, $f14, $f0
/* C461C 800C3A1C E448FFF4 */  swc1       $f8, -0xc($v0)
/* C4620 800C3A20 E444FFF8 */  swc1       $f4, -8($v0)
/* C4624 800C3A24 E442FFFC */  swc1       $f2, -4($v0)
/* C4628 800C3A28 10A00035 */  beqz       $a1, .L800C3B00
/* C462C 800C3A2C 3C014000 */   lui       $at, 0x4000
/* C4630 800C3A30 44814800 */  mtc1       $at, $f9
/* C4634 800C3A34 44804000 */  mtc1       $zero, $f8
/* C4638 800C3A38 46009021 */  cvt.d.s    $f0, $f18
/* C463C 800C3A3C 340EFFFF */  ori        $t6, $zero, 0xffff
/* C4640 800C3A40 4628003E */  c.le.d     $f0, $f8
/* C4644 800C3A44 3C014100 */  lui        $at, 0x4100
/* C4648 800C3A48 45020004 */  bc1fl      .L800C3A5C
/* C464C 800C3A4C 44815800 */   mtc1      $at, $f11
/* C4650 800C3A50 1000002B */  b          .L800C3B00
/* C4654 800C3A54 A4AE0000 */   sh        $t6, ($a1)
/* C4658 800C3A58 44815800 */  mtc1       $at, $f11
.L800C3A5C:
/* C465C 800C3A5C 44805000 */  mtc1       $zero, $f10
/* C4660 800C3A60 24180001 */  addiu      $t8, $zero, 1
/* C4664 800C3A64 3C0141E0 */  lui        $at, 0x41e0
/* C4668 800C3A68 46205103 */  div.d      $f4, $f10, $f0
/* C466C 800C3A6C 24080001 */  addiu      $t0, $zero, 1
/* C4670 800C3A70 444FF800 */  cfc1       $t7, $31
/* C4674 800C3A74 44D8F800 */  ctc1       $t8, $31
/* C4678 800C3A78 00000000 */  nop
/* C467C 800C3A7C 462021A4 */  cvt.w.d    $f6, $f4
/* C4680 800C3A80 4458F800 */  cfc1       $t8, $31
/* C4684 800C3A84 00000000 */  nop
/* C4688 800C3A88 33180078 */  andi       $t8, $t8, 0x78
/* C468C 800C3A8C 53000014 */  beql       $t8, $zero, .L800C3AE0
/* C4690 800C3A90 44183000 */   mfc1      $t8, $f6
/* C4694 800C3A94 44813800 */  mtc1       $at, $f7
/* C4698 800C3A98 44803000 */  mtc1       $zero, $f6
/* C469C 800C3A9C 24180001 */  addiu      $t8, $zero, 1
/* C46A0 800C3AA0 46262181 */  sub.d      $f6, $f4, $f6
/* C46A4 800C3AA4 44D8F800 */  ctc1       $t8, $31
/* C46A8 800C3AA8 00000000 */  nop
/* C46AC 800C3AAC 462031A4 */  cvt.w.d    $f6, $f6
/* C46B0 800C3AB0 4458F800 */  cfc1       $t8, $31
/* C46B4 800C3AB4 00000000 */  nop
/* C46B8 800C3AB8 33180078 */  andi       $t8, $t8, 0x78
/* C46BC 800C3ABC 17000005 */  bnez       $t8, .L800C3AD4
/* C46C0 800C3AC0 00000000 */   nop
/* C46C4 800C3AC4 44183000 */  mfc1       $t8, $f6
/* C46C8 800C3AC8 3C018000 */  lui        $at, 0x8000
/* C46CC 800C3ACC 10000007 */  b          .L800C3AEC
/* C46D0 800C3AD0 0301C025 */   or        $t8, $t8, $at
.L800C3AD4:
/* C46D4 800C3AD4 10000005 */  b          .L800C3AEC
/* C46D8 800C3AD8 2418FFFF */   addiu     $t8, $zero, -1
/* C46DC 800C3ADC 44183000 */  mfc1       $t8, $f6
.L800C3AE0:
/* C46E0 800C3AE0 00000000 */  nop
/* C46E4 800C3AE4 0700FFFB */  bltz       $t8, .L800C3AD4
/* C46E8 800C3AE8 00000000 */   nop
.L800C3AEC:
/* C46EC 800C3AEC 44CFF800 */  ctc1       $t7, $31
/* C46F0 800C3AF0 3319FFFF */  andi       $t9, $t8, 0xffff
/* C46F4 800C3AF4 1F200002 */  bgtz       $t9, .L800C3B00
/* C46F8 800C3AF8 A4B80000 */   sh        $t8, ($a1)
/* C46FC 800C3AFC A4A80000 */  sh         $t0, ($a1)
.L800C3B00:
/* C4700 800C3B00 8FBF0014 */  lw         $ra, 0x14($sp)
/* C4704 800C3B04 27BD0030 */  addiu      $sp, $sp, 0x30
/* C4708 800C3B08 03E00008 */  jr         $ra
/* C470C 800C3B0C 00000000 */   nop

glabel func_800C3B10
/* C4710 800C3B10 27BDFF98 */  addiu      $sp, $sp, -0x68
/* C4714 800C3B14 44866000 */  mtc1       $a2, $f12
/* C4718 800C3B18 44877000 */  mtc1       $a3, $f14
/* C471C 800C3B1C C7A40078 */  lwc1       $f4, 0x78($sp)
/* C4720 800C3B20 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* C4724 800C3B24 C7A80080 */  lwc1       $f8, 0x80($sp)
/* C4728 800C3B28 AFBF0024 */  sw         $ra, 0x24($sp)
/* C472C 800C3B2C AFA40068 */  sw         $a0, 0x68($sp)
/* C4730 800C3B30 44066000 */  mfc1       $a2, $f12
/* C4734 800C3B34 44077000 */  mfc1       $a3, $f14
/* C4738 800C3B38 27A40028 */  addiu      $a0, $sp, 0x28
/* C473C 800C3B3C E7A40010 */  swc1       $f4, 0x10($sp)
/* C4740 800C3B40 E7A60014 */  swc1       $f6, 0x14($sp)
/* C4744 800C3B44 0C030E38 */  jal        func_800C38E0
/* C4748 800C3B48 E7A80018 */   swc1      $f8, 0x18($sp)
/* C474C 800C3B4C 27A40028 */  addiu      $a0, $sp, 0x28
/* C4750 800C3B50 0C0310D0 */  jal        func_800C4340
/* C4754 800C3B54 8FA50068 */   lw        $a1, 0x68($sp)
/* C4758 800C3B58 8FBF0024 */  lw         $ra, 0x24($sp)
/* C475C 800C3B5C 27BD0068 */  addiu      $sp, $sp, 0x68
/* C4760 800C3B60 03E00008 */  jr         $ra
/* C4764 800C3B64 00000000 */   nop
/* C4768 800C3B68 00000000 */  nop
/* C476C 800C3B6C 00000000 */  nop
