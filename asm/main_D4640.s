.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D3A40
/* D4640 800D3A40 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D4644 800D3A44 3C01800E */  lui        $at, %hi(D_800DFF20)
/* D4648 800D3A48 C424FF20 */  lwc1       $f4, %lo(D_800DFF20)($at)
/* D464C 800D3A4C AFB00018 */  sw         $s0, 0x18($sp)
/* D4650 800D3A50 00808025 */  or         $s0, $a0, $zero
/* D4654 800D3A54 3C018014 */  lui        $at, 0x8014
/* D4658 800D3A58 AFBF001C */  sw         $ra, 0x1c($sp)
/* D465C 800D3A5C AFA50034 */  sw         $a1, 0x34($sp)
/* D4660 800D3A60 AFA60038 */  sw         $a2, 0x38($sp)
/* D4664 800D3A64 AFA7003C */  sw         $a3, 0x3c($sp)
/* D4668 800D3A68 27A60040 */  addiu      $a2, $sp, 0x40
/* D466C 800D3A6C 27A5003C */  addiu      $a1, $sp, 0x3c
/* D4670 800D3A70 27A40038 */  addiu      $a0, $sp, 0x38
/* D4674 800D3A74 0C033B28 */  jal        func_800CECA0
/* D4678 800D3A78 E4247F00 */   swc1      $f4, 0x7f00($at)
/* D467C 800D3A7C 3C018014 */  lui        $at, %hi(D_80147F00)
/* D4680 800D3A80 C7AC0034 */  lwc1       $f12, 0x34($sp)
/* D4684 800D3A84 C4267F00 */  lwc1       $f6, %lo(D_80147F00)($at)
/* D4688 800D3A88 46066302 */  mul.s      $f12, $f12, $f6
/* D468C 800D3A8C 0C02F904 */  jal        func_800BE410
/* D4690 800D3A90 E7AC0034 */   swc1      $f12, 0x34($sp)
/* D4694 800D3A94 C7AC0034 */  lwc1       $f12, 0x34($sp)
/* D4698 800D3A98 0C033F18 */  jal        func_800CFC60
/* D469C 800D3A9C E7A0002C */   swc1      $f0, 0x2c($sp)
/* D46A0 800D3AA0 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* D46A4 800D3AA4 C7B20040 */  lwc1       $f18, 0x40($sp)
/* D46A8 800D3AA8 E7A00028 */  swc1       $f0, 0x28($sp)
/* D46AC 800D3AAC 460E7202 */  mul.s      $f8, $f14, $f14
/* D46B0 800D3AB0 00000000 */  nop
/* D46B4 800D3AB4 46129282 */  mul.s      $f10, $f18, $f18
/* D46B8 800D3AB8 0C033068 */  jal        func_800CC1A0
/* D46BC 800D3ABC 460A4300 */   add.s     $f12, $f8, $f10
/* D46C0 800D3AC0 02002025 */  or         $a0, $s0, $zero
/* D46C4 800D3AC4 0C031110 */  jal        func_800C4440
/* D46C8 800D3AC8 E7A00024 */   swc1      $f0, 0x24($sp)
/* D46CC 800D3ACC 44806000 */  mtc1       $zero, $f12
/* D46D0 800D3AD0 C7AE0024 */  lwc1       $f14, 0x24($sp)
/* D46D4 800D3AD4 C7A20028 */  lwc1       $f2, 0x28($sp)
/* D46D8 800D3AD8 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* D46DC 800D3ADC 460C7032 */  c.eq.s     $f14, $f12
/* D46E0 800D3AE0 3C013F80 */  lui        $at, 0x3f80
/* D46E4 800D3AE4 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* D46E8 800D3AE8 45030041 */  bc1tl      .L800D3BF0
/* D46EC 800D3AEC 8FBF001C */   lw        $ra, 0x1c($sp)
/* D46F0 800D3AF0 44812000 */  mtc1       $at, $f4
/* D46F4 800D3AF4 46068202 */  mul.s      $f8, $f16, $f6
/* D46F8 800D3AF8 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* D46FC 800D3AFC C7A60040 */  lwc1       $f6, 0x40($sp)
/* D4700 800D3B00 460E2003 */  div.s      $f0, $f4, $f14
/* D4704 800D3B04 460A4102 */  mul.s      $f4, $f8, $f10
/* D4708 800D3B08 46003207 */  neg.s      $f8, $f6
/* D470C 800D3B0C 46024282 */  mul.s      $f10, $f8, $f2
/* D4710 800D3B10 46045181 */  sub.s      $f6, $f10, $f4
/* D4714 800D3B14 46003202 */  mul.s      $f8, $f6, $f0
/* D4718 800D3B18 E6080000 */  swc1       $f8, ($s0)
/* D471C 800D3B1C C7AA003C */  lwc1       $f10, 0x3c($sp)
/* D4720 800D3B20 C7A60038 */  lwc1       $f6, 0x38($sp)
/* D4724 800D3B24 460A1102 */  mul.s      $f4, $f2, $f10
/* D4728 800D3B28 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* D472C 800D3B2C 46062202 */  mul.s      $f8, $f4, $f6
/* D4730 800D3B30 00000000 */  nop
/* D4734 800D3B34 46105102 */  mul.s      $f4, $f10, $f16
/* D4738 800D3B38 46082181 */  sub.s      $f6, $f4, $f8
/* D473C 800D3B3C 46003282 */  mul.s      $f10, $f6, $f0
/* D4740 800D3B40 E60A0010 */  swc1       $f10, 0x10($s0)
/* D4744 800D3B44 460E8182 */  mul.s      $f6, $f16, $f14
/* D4748 800D3B48 C7A40038 */  lwc1       $f4, 0x38($sp)
/* D474C 800D3B4C E60C0030 */  swc1       $f12, 0x30($s0)
/* D4750 800D3B50 460E1282 */  mul.s      $f10, $f2, $f14
/* D4754 800D3B54 46002207 */  neg.s      $f8, $f4
/* D4758 800D3B58 E6080020 */  swc1       $f8, 0x20($s0)
/* D475C 800D3B5C E6060004 */  swc1       $f6, 4($s0)
/* D4760 800D3B60 E60A0014 */  swc1       $f10, 0x14($s0)
/* D4764 800D3B64 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* D4768 800D3B68 E60C0034 */  swc1       $f12, 0x34($s0)
/* D476C 800D3B6C 46002207 */  neg.s      $f8, $f4
/* D4770 800D3B70 E6080024 */  swc1       $f8, 0x24($s0)
/* D4774 800D3B74 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* D4778 800D3B78 C7A40040 */  lwc1       $f4, 0x40($sp)
/* D477C 800D3B7C 46068282 */  mul.s      $f10, $f16, $f6
/* D4780 800D3B80 C7A60038 */  lwc1       $f6, 0x38($sp)
/* D4784 800D3B84 46045202 */  mul.s      $f8, $f10, $f4
/* D4788 800D3B88 00000000 */  nop
/* D478C 800D3B8C 46061282 */  mul.s      $f10, $f2, $f6
/* D4790 800D3B90 46085101 */  sub.s      $f4, $f10, $f8
/* D4794 800D3B94 46008287 */  neg.s      $f10, $f16
/* D4798 800D3B98 46002182 */  mul.s      $f6, $f4, $f0
/* D479C 800D3B9C E6060008 */  swc1       $f6, 8($s0)
/* D47A0 800D3BA0 C7A80038 */  lwc1       $f8, 0x38($sp)
/* D47A4 800D3BA4 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* D47A8 800D3BA8 46085102 */  mul.s      $f4, $f10, $f8
/* D47AC 800D3BAC C7A80040 */  lwc1       $f8, 0x40($sp)
/* D47B0 800D3BB0 46061282 */  mul.s      $f10, $f2, $f6
/* D47B4 800D3BB4 00000000 */  nop
/* D47B8 800D3BB8 46085182 */  mul.s      $f6, $f10, $f8
/* D47BC 800D3BBC 46062281 */  sub.s      $f10, $f4, $f6
/* D47C0 800D3BC0 46005202 */  mul.s      $f8, $f10, $f0
/* D47C4 800D3BC4 44815000 */  mtc1       $at, $f10
/* D47C8 800D3BC8 E6080018 */  swc1       $f8, 0x18($s0)
/* D47CC 800D3BCC C7A40040 */  lwc1       $f4, 0x40($sp)
/* D47D0 800D3BD0 E60C0038 */  swc1       $f12, 0x38($s0)
/* D47D4 800D3BD4 E60C000C */  swc1       $f12, 0xc($s0)
/* D47D8 800D3BD8 46002187 */  neg.s      $f6, $f4
/* D47DC 800D3BDC E60C001C */  swc1       $f12, 0x1c($s0)
/* D47E0 800D3BE0 E6060028 */  swc1       $f6, 0x28($s0)
/* D47E4 800D3BE4 E60C002C */  swc1       $f12, 0x2c($s0)
/* D47E8 800D3BE8 E60A003C */  swc1       $f10, 0x3c($s0)
/* D47EC 800D3BEC 8FBF001C */  lw         $ra, 0x1c($sp)
.L800D3BF0:
/* D47F0 800D3BF0 8FB00018 */  lw         $s0, 0x18($sp)
/* D47F4 800D3BF4 27BD0030 */  addiu      $sp, $sp, 0x30
/* D47F8 800D3BF8 03E00008 */  jr         $ra
/* D47FC 800D3BFC 00000000 */   nop

glabel func_800D3C00
/* D4800 800D3C00 44856000 */  mtc1       $a1, $f12
/* D4804 800D3C04 44867000 */  mtc1       $a2, $f14
/* D4808 800D3C08 44878000 */  mtc1       $a3, $f16
/* D480C 800D3C0C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* D4810 800D3C10 C7A40070 */  lwc1       $f4, 0x70($sp)
/* D4814 800D3C14 AFBF001C */  sw         $ra, 0x1c($sp)
/* D4818 800D3C18 AFA40060 */  sw         $a0, 0x60($sp)
/* D481C 800D3C1C 44056000 */  mfc1       $a1, $f12
/* D4820 800D3C20 44067000 */  mfc1       $a2, $f14
/* D4824 800D3C24 44078000 */  mfc1       $a3, $f16
/* D4828 800D3C28 27A40020 */  addiu      $a0, $sp, 0x20
/* D482C 800D3C2C 0C034E90 */  jal        func_800D3A40
/* D4830 800D3C30 E7A40010 */   swc1      $f4, 0x10($sp)
/* D4834 800D3C34 27A40020 */  addiu      $a0, $sp, 0x20
/* D4838 800D3C38 0C0310D0 */  jal        func_800C4340
/* D483C 800D3C3C 8FA50060 */   lw        $a1, 0x60($sp)
/* D4840 800D3C40 8FBF001C */  lw         $ra, 0x1c($sp)
/* D4844 800D3C44 27BD0060 */  addiu      $sp, $sp, 0x60
/* D4848 800D3C48 03E00008 */  jr         $ra
/* D484C 800D3C4C 00000000 */   nop

glabel func_800D3C50
/* D4850 800D3C50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D4854 800D3C54 3C0F800E */  lui        $t7, %hi(D_800DB340)
/* D4858 800D3C58 91EFB340 */  lbu        $t7, %lo(D_800DB340)($t7)
/* D485C 800D3C5C AFA40020 */  sw         $a0, 0x20($sp)
/* D4860 800D3C60 8FAE0020 */  lw         $t6, 0x20($sp)
/* D4864 800D3C64 AFBF0014 */  sw         $ra, 0x14($sp)
/* D4868 800D3C68 AFA50024 */  sw         $a1, 0x24($sp)
/* D486C 800D3C6C 11E00003 */  beqz       $t7, .L800D3C7C
/* D4870 800D3C70 AFAE001C */   sw        $t6, 0x1c($sp)
/* D4874 800D3C74 25D8E000 */  addiu      $t8, $t6, -0x2000
/* D4878 800D3C78 AFB8001C */  sw         $t8, 0x1c($sp)
.L800D3C7C:
/* D487C 800D3C7C 8FB90020 */  lw         $t9, 0x20($sp)
/* D4880 800D3C80 8FA80024 */  lw         $t0, 0x24($sp)
/* D4884 800D3C84 03284821 */  addu       $t1, $t9, $t0
/* D4888 800D3C88 312A1FFF */  andi       $t2, $t1, 0x1fff
/* D488C 800D3C8C 15400005 */  bnez       $t2, .L800D3CA4
/* D4890 800D3C90 00000000 */   nop
/* D4894 800D3C94 240B0001 */  addiu      $t3, $zero, 1
/* D4898 800D3C98 3C01800E */  lui        $at, %hi(D_800DB340)
/* D489C 800D3C9C 10000003 */  b          .L800D3CAC
/* D48A0 800D3CA0 A02BB340 */   sb        $t3, %lo(D_800DB340)($at)
.L800D3CA4:
/* D48A4 800D3CA4 3C01800E */  lui        $at, %hi(D_800DB340)
/* D48A8 800D3CA8 A020B340 */  sb         $zero, %lo(D_800DB340)($at)
.L800D3CAC:
/* D48AC 800D3CAC 0C034F40 */  jal        func_800D3D00
/* D48B0 800D3CB0 00000000 */   nop
/* D48B4 800D3CB4 10400003 */  beqz       $v0, .L800D3CC4
/* D48B8 800D3CB8 00000000 */   nop
/* D48BC 800D3CBC 10000009 */  b          .L800D3CE4
/* D48C0 800D3CC0 2402FFFF */   addiu     $v0, $zero, -1
.L800D3CC4:
/* D48C4 800D3CC4 0C030C38 */  jal        func_800C30E0
/* D48C8 800D3CC8 8FA4001C */   lw        $a0, 0x1c($sp)
/* D48CC 800D3CCC 3C0CA450 */  lui        $t4, 0xa450
/* D48D0 800D3CD0 AD820000 */  sw         $v0, ($t4)
/* D48D4 800D3CD4 8FAD0024 */  lw         $t5, 0x24($sp)
/* D48D8 800D3CD8 3C0FA450 */  lui        $t7, %hi(D_A4500004)
/* D48DC 800D3CDC 00001025 */  or         $v0, $zero, $zero
/* D48E0 800D3CE0 ADED0004 */  sw         $t5, %lo(D_A4500004)($t7)
.L800D3CE4:
/* D48E4 800D3CE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D48E8 800D3CE8 27BD0020 */  addiu      $sp, $sp, 0x20
/* D48EC 800D3CEC 03E00008 */  jr         $ra
/* D48F0 800D3CF0 00000000 */   nop
/* D48F4 800D3CF4 00000000 */  nop
/* D48F8 800D3CF8 00000000 */  nop
/* D48FC 800D3CFC 00000000 */  nop
