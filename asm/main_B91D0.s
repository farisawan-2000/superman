.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B85D0
/* B91D0 800B85D0 27BDFFF8 */  addiu      $sp, $sp, -8
/* B91D4 800B85D4 00A6001A */  div        $zero, $a1, $a2
/* B91D8 800B85D8 00007012 */  mflo       $t6
/* B91DC 800B85DC AFAE0000 */  sw         $t6, ($sp)
/* B91E0 800B85E0 14C00002 */  bnez       $a2, .L800B85EC
/* B91E4 800B85E4 00000000 */   nop
/* B91E8 800B85E8 0007000D */  break      7
.L800B85EC:
/* B91EC 800B85EC 2401FFFF */   addiu     $at, $zero, -1
/* B91F0 800B85F0 14C10004 */  bne        $a2, $at, .L800B8604
/* B91F4 800B85F4 3C018000 */   lui       $at, 0x8000
/* B91F8 800B85F8 14A10002 */  bne        $a1, $at, .L800B8604
/* B91FC 800B85FC 00000000 */   nop
/* B9200 800B8600 0006000D */  break      6
.L800B8604:
/* B9204 800B8604 8FAF0000 */   lw        $t7, ($sp)
/* B9208 800B8608 00CF0019 */  multu      $a2, $t7
/* B920C 800B860C 0000C012 */  mflo       $t8
/* B9210 800B8610 00B8C823 */  subu       $t9, $a1, $t8
/* B9214 800B8614 AFB90004 */  sw         $t9, 4($sp)
/* B9218 800B8618 8FA80000 */  lw         $t0, ($sp)
/* B921C 800B861C 0501000A */  bgez       $t0, .L800B8648
/* B9220 800B8620 00000000 */   nop
/* B9224 800B8624 8FA90004 */  lw         $t1, 4($sp)
/* B9228 800B8628 19200007 */  blez       $t1, .L800B8648
/* B922C 800B862C 00000000 */   nop
/* B9230 800B8630 8FAA0000 */  lw         $t2, ($sp)
/* B9234 800B8634 254B0001 */  addiu      $t3, $t2, 1
/* B9238 800B8638 AFAB0000 */  sw         $t3, ($sp)
/* B923C 800B863C 8FAC0004 */  lw         $t4, 4($sp)
/* B9240 800B8640 01866823 */  subu       $t5, $t4, $a2
/* B9244 800B8644 AFAD0004 */  sw         $t5, 4($sp)
.L800B8648:
/* B9248 800B8648 27AE0000 */  addiu      $t6, $sp, 0
/* B924C 800B864C 8DC10000 */  lw         $at, ($t6)
/* B9250 800B8650 00801025 */  or         $v0, $a0, $zero
/* B9254 800B8654 AC810000 */  sw         $at, ($a0)
/* B9258 800B8658 8DD90004 */  lw         $t9, 4($t6)
/* B925C 800B865C 10000003 */  b          .L800B866C
/* B9260 800B8660 AC990004 */   sw        $t9, 4($a0)
/* B9264 800B8664 10000001 */  b          .L800B866C
/* B9268 800B8668 00000000 */   nop
.L800B866C:
/* B926C 800B866C 03E00008 */  jr         $ra
/* B9270 800B8670 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B8674
/* B9274 800B8674 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B9278 800B8678 AFBF0014 */  sw         $ra, 0x14($sp)
/* B927C 800B867C AFA40030 */  sw         $a0, 0x30($sp)
/* B9280 800B8680 AFA60038 */  sw         $a2, 0x38($sp)
/* B9284 800B8684 AFA7003C */  sw         $a3, 0x3c($sp)
/* B9288 800B8688 8FA40038 */  lw         $a0, 0x38($sp)
/* B928C 800B868C 8FA5003C */  lw         $a1, 0x3c($sp)
/* B9290 800B8690 8FA60040 */  lw         $a2, 0x40($sp)
/* B9294 800B8694 0C026803 */  jal        func_8009A00C
/* B9298 800B8698 8FA70044 */   lw        $a3, 0x44($sp)
/* B929C 800B869C AFA20020 */  sw         $v0, 0x20($sp)
/* B92A0 800B86A0 AFA30024 */  sw         $v1, 0x24($sp)
/* B92A4 800B86A4 8FA40040 */  lw         $a0, 0x40($sp)
/* B92A8 800B86A8 8FA50044 */  lw         $a1, 0x44($sp)
/* B92AC 800B86AC 8FA60020 */  lw         $a2, 0x20($sp)
/* B92B0 800B86B0 0C02681E */  jal        func_8009A078
/* B92B4 800B86B4 8FA70024 */   lw        $a3, 0x24($sp)
/* B92B8 800B86B8 8FAE0038 */  lw         $t6, 0x38($sp)
/* B92BC 800B86BC 8FAF003C */  lw         $t7, 0x3c($sp)
/* B92C0 800B86C0 01C2C023 */  subu       $t8, $t6, $v0
/* B92C4 800B86C4 01E3082B */  sltu       $at, $t7, $v1
/* B92C8 800B86C8 0301C023 */  subu       $t8, $t8, $at
/* B92CC 800B86CC 01E3C823 */  subu       $t9, $t7, $v1
/* B92D0 800B86D0 AFB9002C */  sw         $t9, 0x2c($sp)
/* B92D4 800B86D4 AFB80028 */  sw         $t8, 0x28($sp)
/* B92D8 800B86D8 8FA80020 */  lw         $t0, 0x20($sp)
/* B92DC 800B86DC 8FA90024 */  lw         $t1, 0x24($sp)
/* B92E0 800B86E0 1D000023 */  bgtz       $t0, .L800B8770
/* B92E4 800B86E4 00000000 */   nop
/* B92E8 800B86E8 05000003 */  bltz       $t0, .L800B86F8
/* B92EC 800B86EC 00000000 */   nop
/* B92F0 800B86F0 1000001F */  b          .L800B8770
/* B92F4 800B86F4 00000000 */   nop
.L800B86F8:
/* B92F8 800B86F8 8FAA0028 */  lw         $t2, 0x28($sp)
/* B92FC 800B86FC 8FAB002C */  lw         $t3, 0x2c($sp)
/* B9300 800B8700 0540001B */  bltz       $t2, .L800B8770
/* B9304 800B8704 00000000 */   nop
/* B9308 800B8708 1D400003 */  bgtz       $t2, .L800B8718
/* B930C 800B870C 00000000 */   nop
/* B9310 800B8710 11600017 */  beqz       $t3, .L800B8770
/* B9314 800B8714 00000000 */   nop
.L800B8718:
/* B9318 800B8718 27AC0020 */  addiu      $t4, $sp, 0x20
/* B931C 800B871C AFAC001C */  sw         $t4, 0x1c($sp)
/* B9320 800B8720 8D8F0004 */  lw         $t7, 4($t4)
/* B9324 800B8724 8D8E0000 */  lw         $t6, ($t4)
/* B9328 800B8728 25F90001 */  addiu      $t9, $t7, 1
/* B932C 800B872C 2F210001 */  sltiu      $at, $t9, 1
/* B9330 800B8730 01C1C021 */  addu       $t8, $t6, $at
/* B9334 800B8734 AD980000 */  sw         $t8, ($t4)
/* B9338 800B8738 AD990004 */  sw         $t9, 4($t4)
/* B933C 800B873C 27AD0020 */  addiu      $t5, $sp, 0x20
/* B9340 800B8740 25A80008 */  addiu      $t0, $t5, 8
/* B9344 800B8744 AFA80018 */  sw         $t0, 0x18($sp)
/* B9348 800B8748 8DAB000C */  lw         $t3, 0xc($t5)
/* B934C 800B874C 8DAA0008 */  lw         $t2, 8($t5)
/* B9350 800B8750 8FAE0040 */  lw         $t6, 0x40($sp)
/* B9354 800B8754 8FAF0044 */  lw         $t7, 0x44($sp)
/* B9358 800B8758 014EC023 */  subu       $t8, $t2, $t6
/* B935C 800B875C 016F082B */  sltu       $at, $t3, $t7
/* B9360 800B8760 0301C023 */  subu       $t8, $t8, $at
/* B9364 800B8764 016FC823 */  subu       $t9, $t3, $t7
/* B9368 800B8768 ADB9000C */  sw         $t9, 0xc($t5)
/* B936C 800B876C ADB80008 */  sw         $t8, 8($t5)
.L800B8770:
/* B9370 800B8770 27AC0020 */  addiu      $t4, $sp, 0x20
/* B9374 800B8774 8D810000 */  lw         $at, ($t4)
/* B9378 800B8778 8FA90030 */  lw         $t1, 0x30($sp)
/* B937C 800B877C AD210000 */  sw         $at, ($t1)
/* B9380 800B8780 8D8A0004 */  lw         $t2, 4($t4)
/* B9384 800B8784 AD2A0004 */  sw         $t2, 4($t1)
/* B9388 800B8788 8D810008 */  lw         $at, 8($t4)
/* B938C 800B878C AD210008 */  sw         $at, 8($t1)
/* B9390 800B8790 8D8A000C */  lw         $t2, 0xc($t4)
/* B9394 800B8794 AD2A000C */  sw         $t2, 0xc($t1)
/* B9398 800B8798 10000003 */  b          .L800B87A8
/* B939C 800B879C 8FA20030 */   lw        $v0, 0x30($sp)
/* B93A0 800B87A0 10000001 */  b          .L800B87A8
/* B93A4 800B87A4 00000000 */   nop
.L800B87A8:
/* B93A8 800B87A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B93AC 800B87AC 27BD0030 */  addiu      $sp, $sp, 0x30
/* B93B0 800B87B0 03E00008 */  jr         $ra
/* B93B4 800B87B4 00000000 */   nop
/* B93B8 800B87B8 00000000 */  nop
/* B93BC 800B87BC 00000000 */  nop
