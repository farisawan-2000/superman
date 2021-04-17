.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B97F0
/* BA3F0 800B97F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA3F4 800B97F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA3F8 800B97F8 AFA40028 */  sw         $a0, 0x28($sp)
/* BA3FC 800B97FC AFA5002C */  sw         $a1, 0x2c($sp)
/* BA400 800B9800 AFA60030 */  sw         $a2, 0x30($sp)
/* BA404 800B9804 AFA70034 */  sw         $a3, 0x34($sp)
/* BA408 800B9808 27A40030 */  addiu      $a0, $sp, 0x30
/* BA40C 800B980C 27A50034 */  addiu      $a1, $sp, 0x34
/* BA410 800B9810 0C02BDF4 */  jal        func_800AF7D0
/* BA414 800B9814 27A60038 */   addiu     $a2, $sp, 0x38
/* BA418 800B9818 3C01800D */  lui        $at, %hi(D_800CD6C0)
/* BA41C 800B981C C426D6C0 */  lwc1       $f6, %lo(D_800CD6C0)($at)
/* BA420 800B9820 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* BA424 800B9824 46062202 */  mul.s      $f8, $f4, $f6
/* BA428 800B9828 E7A8002C */  swc1       $f8, 0x2c($sp)
/* BA42C 800B982C 0C025E08 */  jal        func_80097820
/* BA430 800B9830 C7AC002C */   lwc1      $f12, 0x2c($sp)
/* BA434 800B9834 E7A00024 */  swc1       $f0, 0x24($sp)
/* BA438 800B9838 0C02C220 */  jal        func_800B0880
/* BA43C 800B983C C7AC002C */   lwc1      $f12, 0x2c($sp)
/* BA440 800B9840 E7A00020 */  swc1       $f0, 0x20($sp)
/* BA444 800B9844 C7AA0030 */  lwc1       $f10, 0x30($sp)
/* BA448 800B9848 C7B20038 */  lwc1       $f18, 0x38($sp)
/* BA44C 800B984C 460A5402 */  mul.s      $f16, $f10, $f10
/* BA450 800B9850 00000000 */  nop
/* BA454 800B9854 46129102 */  mul.s      $f4, $f18, $f18
/* BA458 800B9858 0C02AD30 */  jal        func_800AB4C0
/* BA45C 800B985C 46048300 */   add.s     $f12, $f16, $f4
/* BA460 800B9860 E7A0001C */  swc1       $f0, 0x1c($sp)
/* BA464 800B9864 0C028116 */  jal        func_800A0458
/* BA468 800B9868 8FA40028 */   lw        $a0, 0x28($sp)
/* BA46C 800B986C C7A6001C */  lwc1       $f6, 0x1c($sp)
/* BA470 800B9870 44804000 */  mtc1       $zero, $f8
/* BA474 800B9874 00000000 */  nop
/* BA478 800B9878 46083032 */  c.eq.s     $f6, $f8
/* BA47C 800B987C 00000000 */  nop
/* BA480 800B9880 45010069 */  bc1t       .L800B9A28
/* BA484 800B9884 00000000 */   nop
/* BA488 800B9888 3C013F80 */  lui        $at, 0x3f80
/* BA48C 800B988C 44815000 */  mtc1       $at, $f10
/* BA490 800B9890 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* BA494 800B9894 46125403 */  div.s      $f16, $f10, $f18
/* BA498 800B9898 E7B00018 */  swc1       $f16, 0x18($sp)
/* BA49C 800B989C C7A40038 */  lwc1       $f4, 0x38($sp)
/* BA4A0 800B98A0 C7A80020 */  lwc1       $f8, 0x20($sp)
/* BA4A4 800B98A4 C7B20024 */  lwc1       $f18, 0x24($sp)
/* BA4A8 800B98A8 46002187 */  neg.s      $f6, $f4
/* BA4AC 800B98AC C7B00034 */  lwc1       $f16, 0x34($sp)
/* BA4B0 800B98B0 46083282 */  mul.s      $f10, $f6, $f8
/* BA4B4 800B98B4 C7A60030 */  lwc1       $f6, 0x30($sp)
/* BA4B8 800B98B8 8FAE0028 */  lw         $t6, 0x28($sp)
/* BA4BC 800B98BC 46109102 */  mul.s      $f4, $f18, $f16
/* BA4C0 800B98C0 C7B00018 */  lwc1       $f16, 0x18($sp)
/* BA4C4 800B98C4 46062202 */  mul.s      $f8, $f4, $f6
/* BA4C8 800B98C8 46085481 */  sub.s      $f18, $f10, $f8
/* BA4CC 800B98CC 46109102 */  mul.s      $f4, $f18, $f16
/* BA4D0 800B98D0 E5C40000 */  swc1       $f4, ($t6)
/* BA4D4 800B98D4 C7A60038 */  lwc1       $f6, 0x38($sp)
/* BA4D8 800B98D8 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* BA4DC 800B98DC C7B20020 */  lwc1       $f18, 0x20($sp)
/* BA4E0 800B98E0 C7B00034 */  lwc1       $f16, 0x34($sp)
/* BA4E4 800B98E4 460A3202 */  mul.s      $f8, $f6, $f10
/* BA4E8 800B98E8 C7A60030 */  lwc1       $f6, 0x30($sp)
/* BA4EC 800B98EC 8FAF0028 */  lw         $t7, 0x28($sp)
/* BA4F0 800B98F0 46109102 */  mul.s      $f4, $f18, $f16
/* BA4F4 800B98F4 C7B00018 */  lwc1       $f16, 0x18($sp)
/* BA4F8 800B98F8 46062282 */  mul.s      $f10, $f4, $f6
/* BA4FC 800B98FC 460A4481 */  sub.s      $f18, $f8, $f10
/* BA500 800B9900 46109102 */  mul.s      $f4, $f18, $f16
/* BA504 800B9904 E5E40010 */  swc1       $f4, 0x10($t7)
/* BA508 800B9908 C7A60030 */  lwc1       $f6, 0x30($sp)
/* BA50C 800B990C 8FB80028 */  lw         $t8, 0x28($sp)
/* BA510 800B9910 46003207 */  neg.s      $f8, $f6
/* BA514 800B9914 E7080020 */  swc1       $f8, 0x20($t8)
/* BA518 800B9918 44805000 */  mtc1       $zero, $f10
/* BA51C 800B991C 8FB90028 */  lw         $t9, 0x28($sp)
/* BA520 800B9920 E72A0030 */  swc1       $f10, 0x30($t9)
/* BA524 800B9924 C7B20024 */  lwc1       $f18, 0x24($sp)
/* BA528 800B9928 C7B0001C */  lwc1       $f16, 0x1c($sp)
/* BA52C 800B992C 8FA80028 */  lw         $t0, 0x28($sp)
/* BA530 800B9930 46109102 */  mul.s      $f4, $f18, $f16
/* BA534 800B9934 E5040004 */  swc1       $f4, 4($t0)
/* BA538 800B9938 C7A60020 */  lwc1       $f6, 0x20($sp)
/* BA53C 800B993C C7A8001C */  lwc1       $f8, 0x1c($sp)
/* BA540 800B9940 8FA90028 */  lw         $t1, 0x28($sp)
/* BA544 800B9944 46083282 */  mul.s      $f10, $f6, $f8
/* BA548 800B9948 E52A0014 */  swc1       $f10, 0x14($t1)
/* BA54C 800B994C C7B20034 */  lwc1       $f18, 0x34($sp)
/* BA550 800B9950 8FAA0028 */  lw         $t2, 0x28($sp)
/* BA554 800B9954 46009407 */  neg.s      $f16, $f18
/* BA558 800B9958 E5500024 */  swc1       $f16, 0x24($t2)
/* BA55C 800B995C 44802000 */  mtc1       $zero, $f4
/* BA560 800B9960 8FAB0028 */  lw         $t3, 0x28($sp)
/* BA564 800B9964 E5640034 */  swc1       $f4, 0x34($t3)
/* BA568 800B9968 C7A60020 */  lwc1       $f6, 0x20($sp)
/* BA56C 800B996C C7A80030 */  lwc1       $f8, 0x30($sp)
/* BA570 800B9970 C7B20024 */  lwc1       $f18, 0x24($sp)
/* BA574 800B9974 C7B00034 */  lwc1       $f16, 0x34($sp)
/* BA578 800B9978 46083282 */  mul.s      $f10, $f6, $f8
/* BA57C 800B997C C7A60038 */  lwc1       $f6, 0x38($sp)
/* BA580 800B9980 8FAC0028 */  lw         $t4, 0x28($sp)
/* BA584 800B9984 46109102 */  mul.s      $f4, $f18, $f16
/* BA588 800B9988 C7B00018 */  lwc1       $f16, 0x18($sp)
/* BA58C 800B998C 46062202 */  mul.s      $f8, $f4, $f6
/* BA590 800B9990 46085481 */  sub.s      $f18, $f10, $f8
/* BA594 800B9994 46109102 */  mul.s      $f4, $f18, $f16
/* BA598 800B9998 E5840008 */  swc1       $f4, 8($t4)
/* BA59C 800B999C C7A60024 */  lwc1       $f6, 0x24($sp)
/* BA5A0 800B99A0 C7A80030 */  lwc1       $f8, 0x30($sp)
/* BA5A4 800B99A4 C7B00020 */  lwc1       $f16, 0x20($sp)
/* BA5A8 800B99A8 46003287 */  neg.s      $f10, $f6
/* BA5AC 800B99AC C7A40034 */  lwc1       $f4, 0x34($sp)
/* BA5B0 800B99B0 46085482 */  mul.s      $f18, $f10, $f8
/* BA5B4 800B99B4 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* BA5B8 800B99B8 8FAD0028 */  lw         $t5, 0x28($sp)
/* BA5BC 800B99BC 46048182 */  mul.s      $f6, $f16, $f4
/* BA5C0 800B99C0 C7A40018 */  lwc1       $f4, 0x18($sp)
/* BA5C4 800B99C4 460A3202 */  mul.s      $f8, $f6, $f10
/* BA5C8 800B99C8 46089401 */  sub.s      $f16, $f18, $f8
/* BA5CC 800B99CC 46048182 */  mul.s      $f6, $f16, $f4
/* BA5D0 800B99D0 E5A60018 */  swc1       $f6, 0x18($t5)
/* BA5D4 800B99D4 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* BA5D8 800B99D8 8FAE0028 */  lw         $t6, 0x28($sp)
/* BA5DC 800B99DC 46005487 */  neg.s      $f18, $f10
/* BA5E0 800B99E0 E5D20028 */  swc1       $f18, 0x28($t6)
/* BA5E4 800B99E4 44804000 */  mtc1       $zero, $f8
/* BA5E8 800B99E8 8FAF0028 */  lw         $t7, 0x28($sp)
/* BA5EC 800B99EC E5E80038 */  swc1       $f8, 0x38($t7)
/* BA5F0 800B99F0 44808000 */  mtc1       $zero, $f16
/* BA5F4 800B99F4 8FB80028 */  lw         $t8, 0x28($sp)
/* BA5F8 800B99F8 E710000C */  swc1       $f16, 0xc($t8)
/* BA5FC 800B99FC 44802000 */  mtc1       $zero, $f4
/* BA600 800B9A00 8FB90028 */  lw         $t9, 0x28($sp)
/* BA604 800B9A04 E724001C */  swc1       $f4, 0x1c($t9)
/* BA608 800B9A08 44803000 */  mtc1       $zero, $f6
/* BA60C 800B9A0C 8FA80028 */  lw         $t0, 0x28($sp)
/* BA610 800B9A10 E506002C */  swc1       $f6, 0x2c($t0)
/* BA614 800B9A14 3C013F80 */  lui        $at, 0x3f80
/* BA618 800B9A18 44815000 */  mtc1       $at, $f10
/* BA61C 800B9A1C 8FA90028 */  lw         $t1, 0x28($sp)
/* BA620 800B9A20 10000001 */  b          .L800B9A28
/* BA624 800B9A24 E52A003C */   swc1      $f10, 0x3c($t1)
.L800B9A28:
/* BA628 800B9A28 10000001 */  b          .L800B9A30
/* BA62C 800B9A2C 00000000 */   nop
.L800B9A30:
/* BA630 800B9A30 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA634 800B9A34 27BD0028 */  addiu      $sp, $sp, 0x28
/* BA638 800B9A38 03E00008 */  jr         $ra
/* BA63C 800B9A3C 00000000 */   nop

glabel func_800B9A40
/* BA640 800B9A40 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* BA644 800B9A44 AFBF001C */  sw         $ra, 0x1c($sp)
/* BA648 800B9A48 AFA40060 */  sw         $a0, 0x60($sp)
/* BA64C 800B9A4C AFA50064 */  sw         $a1, 0x64($sp)
/* BA650 800B9A50 AFA60068 */  sw         $a2, 0x68($sp)
/* BA654 800B9A54 AFA7006C */  sw         $a3, 0x6c($sp)
/* BA658 800B9A58 C7A40070 */  lwc1       $f4, 0x70($sp)
/* BA65C 800B9A5C 27A40020 */  addiu      $a0, $sp, 0x20
/* BA660 800B9A60 8FA50064 */  lw         $a1, 0x64($sp)
/* BA664 800B9A64 8FA60068 */  lw         $a2, 0x68($sp)
/* BA668 800B9A68 8FA7006C */  lw         $a3, 0x6c($sp)
/* BA66C 800B9A6C 0C02E5FC */  jal        func_800B97F0
/* BA670 800B9A70 E7A40010 */   swc1      $f4, 0x10($sp)
/* BA674 800B9A74 27A40020 */  addiu      $a0, $sp, 0x20
/* BA678 800B9A78 0C02807C */  jal        func_800A01F0
/* BA67C 800B9A7C 8FA50060 */   lw        $a1, 0x60($sp)
/* BA680 800B9A80 10000001 */  b          .L800B9A88
/* BA684 800B9A84 00000000 */   nop
.L800B9A88:
/* BA688 800B9A88 8FBF001C */  lw         $ra, 0x1c($sp)
/* BA68C 800B9A8C 27BD0060 */  addiu      $sp, $sp, 0x60
/* BA690 800B9A90 03E00008 */  jr         $ra
/* BA694 800B9A94 00000000 */   nop
/* BA698 800B9A98 00000000 */  nop
/* BA69C 800B9A9C 00000000 */  nop
