.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009A870
/* 9B470 8009A870 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9B474 8009A874 AFA50004 */  sw         $a1, 4($sp)
/* 9B478 8009A878 AFA00000 */  sw         $zero, ($sp)
/* 9B47C 8009A87C 848E0002 */  lh         $t6, 2($a0)
/* 9B480 8009A880 19C00010 */  blez       $t6, .L8009A8C4
/* 9B484 8009A884 00000000 */   nop
.L8009A888:
/* 9B488 8009A888 8FAF0000 */  lw         $t7, ($sp)
/* 9B48C 8009A88C 8FA90004 */  lw         $t1, 4($sp)
/* 9B490 8009A890 000FC0C0 */  sll        $t8, $t7, 3
/* 9B494 8009A894 0098C821 */  addu       $t9, $a0, $t8
/* 9B498 8009A898 8F280004 */  lw         $t0, 4($t9)
/* 9B49C 8009A89C 00985821 */  addu       $t3, $a0, $t8
/* 9B4A0 8009A8A0 01095021 */  addu       $t2, $t0, $t1
/* 9B4A4 8009A8A4 AD6A0004 */  sw         $t2, 4($t3)
/* 9B4A8 8009A8A8 8FAC0000 */  lw         $t4, ($sp)
/* 9B4AC 8009A8AC 258D0001 */  addiu      $t5, $t4, 1
/* 9B4B0 8009A8B0 AFAD0000 */  sw         $t5, ($sp)
/* 9B4B4 8009A8B4 848E0002 */  lh         $t6, 2($a0)
/* 9B4B8 8009A8B8 01AE082A */  slt        $at, $t5, $t6
/* 9B4BC 8009A8BC 1420FFF2 */  bnez       $at, .L8009A888
/* 9B4C0 8009A8C0 00000000 */   nop
.L8009A8C4:
/* 9B4C4 8009A8C4 10000001 */  b          .L8009A8CC
/* 9B4C8 8009A8C8 00000000 */   nop
.L8009A8CC:
/* 9B4CC 8009A8CC 03E00008 */  jr         $ra
/* 9B4D0 8009A8D0 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009A8D4
/* 9B4D4 8009A8D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9B4D8 8009A8D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B4DC 8009A8DC AFA40028 */  sw         $a0, 0x28($sp)
/* 9B4E0 8009A8E0 AFA5002C */  sw         $a1, 0x2c($sp)
/* 9B4E4 8009A8E4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9B4E8 8009A8E8 AFAE0024 */  sw         $t6, 0x24($sp)
/* 9B4EC 8009A8EC 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9B4F0 8009A8F0 AFAF0020 */  sw         $t7, 0x20($sp)
/* 9B4F4 8009A8F4 8FB80028 */  lw         $t8, 0x28($sp)
/* 9B4F8 8009A8F8 24014231 */  addiu      $at, $zero, 0x4231
/* 9B4FC 8009A8FC 87190000 */  lh         $t9, ($t8)
/* 9B500 8009A900 13210006 */  beq        $t9, $at, .L8009A91C
/* 9B504 8009A904 00000000 */   nop
/* 9B508 8009A908 24040071 */  addiu      $a0, $zero, 0x71
/* 9B50C 8009A90C 0C02B5EC */  jal        func_800AD7B0
/* 9B510 8009A910 00002825 */   or        $a1, $zero, $zero
/* 9B514 8009A914 10000027 */  b          .L8009A9B4
/* 9B518 8009A918 00000000 */   nop
.L8009A91C:
/* 9B51C 8009A91C 8FA80028 */  lw         $t0, 0x28($sp)
/* 9B520 8009A920 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9B524 8009A924 85090002 */  lh         $t1, 2($t0)
/* 9B528 8009A928 19200020 */  blez       $t1, .L8009A9AC
/* 9B52C 8009A92C 00000000 */   nop
.L8009A930:
/* 9B530 8009A930 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9B534 8009A934 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9B538 8009A938 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9B53C 8009A93C 000B6080 */  sll        $t4, $t3, 2
/* 9B540 8009A940 014C6821 */  addu       $t5, $t2, $t4
/* 9B544 8009A944 8DAE0004 */  lw         $t6, 4($t5)
/* 9B548 8009A948 01CFC021 */  addu       $t8, $t6, $t7
/* 9B54C 8009A94C ADB80004 */  sw         $t8, 4($t5)
/* 9B550 8009A950 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9B554 8009A954 8FB90028 */  lw         $t9, 0x28($sp)
/* 9B558 8009A958 00084880 */  sll        $t1, $t0, 2
/* 9B55C 8009A95C 03295821 */  addu       $t3, $t9, $t1
/* 9B560 8009A960 8D6A0004 */  lw         $t2, 4($t3)
/* 9B564 8009A964 11400009 */  beqz       $t2, .L8009A98C
/* 9B568 8009A968 00000000 */   nop
/* 9B56C 8009A96C 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9B570 8009A970 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9B574 8009A974 8FA50024 */  lw         $a1, 0x24($sp)
/* 9B578 8009A978 000E7880 */  sll        $t7, $t6, 2
/* 9B57C 8009A97C 018FC021 */  addu       $t8, $t4, $t7
/* 9B580 8009A980 8F040004 */  lw         $a0, 4($t8)
/* 9B584 8009A984 0C026A71 */  jal        func_8009A9C4
/* 9B588 8009A988 8FA60020 */   lw        $a2, 0x20($sp)
.L8009A98C:
/* 9B58C 8009A98C 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9B590 8009A990 8FB90028 */  lw         $t9, 0x28($sp)
/* 9B594 8009A994 25A80001 */  addiu      $t0, $t5, 1
/* 9B598 8009A998 AFA8001C */  sw         $t0, 0x1c($sp)
/* 9B59C 8009A99C 87290002 */  lh         $t1, 2($t9)
/* 9B5A0 8009A9A0 0109082A */  slt        $at, $t0, $t1
/* 9B5A4 8009A9A4 1420FFE2 */  bnez       $at, .L8009A930
/* 9B5A8 8009A9A8 00000000 */   nop
.L8009A9AC:
/* 9B5AC 8009A9AC 10000001 */  b          .L8009A9B4
/* 9B5B0 8009A9B0 00000000 */   nop
.L8009A9B4:
/* 9B5B4 8009A9B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B5B8 8009A9B8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9B5BC 8009A9BC 03E00008 */  jr         $ra
/* 9B5C0 8009A9C0 00000000 */   nop

glabel func_8009A9C4
/* 9B5C4 8009A9C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9B5C8 8009A9C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B5CC 8009A9CC AFA40020 */  sw         $a0, 0x20($sp)
/* 9B5D0 8009A9D0 AFA50024 */  sw         $a1, 0x24($sp)
/* 9B5D4 8009A9D4 AFA60028 */  sw         $a2, 0x28($sp)
/* 9B5D8 8009A9D8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9B5DC 8009A9DC 91CF0002 */  lbu        $t7, 2($t6)
/* 9B5E0 8009A9E0 11E00003 */  beqz       $t7, .L8009A9F0
/* 9B5E4 8009A9E4 00000000 */   nop
/* 9B5E8 8009A9E8 10000038 */  b          .L8009AACC
/* 9B5EC 8009A9EC 00000000 */   nop
.L8009A9F0:
/* 9B5F0 8009A9F0 8FB90020 */  lw         $t9, 0x20($sp)
/* 9B5F4 8009A9F4 24180001 */  addiu      $t8, $zero, 1
/* 9B5F8 8009A9F8 A3380002 */  sb         $t8, 2($t9)
/* 9B5FC 8009A9FC 8FA80020 */  lw         $t0, 0x20($sp)
/* 9B600 8009AA00 8D090008 */  lw         $t1, 8($t0)
/* 9B604 8009AA04 1120000B */  beqz       $t1, .L8009AA34
/* 9B608 8009AA08 00000000 */   nop
/* 9B60C 8009AA0C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9B610 8009AA10 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9B614 8009AA14 8D4B0008 */  lw         $t3, 8($t2)
/* 9B618 8009AA18 016C6821 */  addu       $t5, $t3, $t4
/* 9B61C 8009AA1C AD4D0008 */  sw         $t5, 8($t2)
/* 9B620 8009AA20 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9B624 8009AA24 8FA50024 */  lw         $a1, 0x24($sp)
/* 9B628 8009AA28 8FA60028 */  lw         $a2, 0x28($sp)
/* 9B62C 8009AA2C 0C026AB7 */  jal        func_8009AADC
/* 9B630 8009AA30 8DC40008 */   lw        $a0, 8($t6)
.L8009AA34:
/* 9B634 8009AA34 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9B638 8009AA38 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9B63C 8009AA3C 85F80000 */  lh         $t8, ($t7)
/* 9B640 8009AA40 1B000020 */  blez       $t8, .L8009AAC4
/* 9B644 8009AA44 00000000 */   nop
.L8009AA48:
/* 9B648 8009AA48 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9B64C 8009AA4C 8FB90020 */  lw         $t9, 0x20($sp)
/* 9B650 8009AA50 8FAD0024 */  lw         $t5, 0x24($sp)
/* 9B654 8009AA54 00084880 */  sll        $t1, $t0, 2
/* 9B658 8009AA58 03295821 */  addu       $t3, $t9, $t1
/* 9B65C 8009AA5C 8D6C000C */  lw         $t4, 0xc($t3)
/* 9B660 8009AA60 018D5021 */  addu       $t2, $t4, $t5
/* 9B664 8009AA64 AD6A000C */  sw         $t2, 0xc($t3)
/* 9B668 8009AA68 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9B66C 8009AA6C 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9B670 8009AA70 000FC080 */  sll        $t8, $t7, 2
/* 9B674 8009AA74 01D84021 */  addu       $t0, $t6, $t8
/* 9B678 8009AA78 8D19000C */  lw         $t9, 0xc($t0)
/* 9B67C 8009AA7C 13200009 */  beqz       $t9, .L8009AAA4
/* 9B680 8009AA80 00000000 */   nop
/* 9B684 8009AA84 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9B688 8009AA88 8FA90020 */  lw         $t1, 0x20($sp)
/* 9B68C 8009AA8C 8FA50024 */  lw         $a1, 0x24($sp)
/* 9B690 8009AA90 000C6880 */  sll        $t5, $t4, 2
/* 9B694 8009AA94 012D5021 */  addu       $t2, $t1, $t5
/* 9B698 8009AA98 8D44000C */  lw         $a0, 0xc($t2)
/* 9B69C 8009AA9C 0C026AB7 */  jal        func_8009AADC
/* 9B6A0 8009AAA0 8FA60028 */   lw        $a2, 0x28($sp)
.L8009AAA4:
/* 9B6A4 8009AAA4 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9B6A8 8009AAA8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9B6AC 8009AAAC 256F0001 */  addiu      $t7, $t3, 1
/* 9B6B0 8009AAB0 AFAF001C */  sw         $t7, 0x1c($sp)
/* 9B6B4 8009AAB4 85D80000 */  lh         $t8, ($t6)
/* 9B6B8 8009AAB8 01F8082A */  slt        $at, $t7, $t8
/* 9B6BC 8009AABC 1420FFE2 */  bnez       $at, .L8009AA48
/* 9B6C0 8009AAC0 00000000 */   nop
.L8009AAC4:
/* 9B6C4 8009AAC4 10000001 */  b          .L8009AACC
/* 9B6C8 8009AAC8 00000000 */   nop
.L8009AACC:
/* 9B6CC 8009AACC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B6D0 8009AAD0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9B6D4 8009AAD4 03E00008 */  jr         $ra
/* 9B6D8 8009AAD8 00000000 */   nop

glabel func_8009AADC
/* 9B6DC 8009AADC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9B6E0 8009AAE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B6E4 8009AAE4 AFA40020 */  sw         $a0, 0x20($sp)
/* 9B6E8 8009AAE8 AFA50024 */  sw         $a1, 0x24($sp)
/* 9B6EC 8009AAEC AFA60028 */  sw         $a2, 0x28($sp)
/* 9B6F0 8009AAF0 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9B6F4 8009AAF4 91CF0003 */  lbu        $t7, 3($t6)
/* 9B6F8 8009AAF8 11E00003 */  beqz       $t7, .L8009AB08
/* 9B6FC 8009AAFC 00000000 */   nop
/* 9B700 8009AB00 10000023 */  b          .L8009AB90
/* 9B704 8009AB04 00000000 */   nop
.L8009AB08:
/* 9B708 8009AB08 8FB90020 */  lw         $t9, 0x20($sp)
/* 9B70C 8009AB0C 24180001 */  addiu      $t8, $zero, 1
/* 9B710 8009AB10 A3380003 */  sb         $t8, 3($t9)
/* 9B714 8009AB14 8FA80020 */  lw         $t0, 0x20($sp)
/* 9B718 8009AB18 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9B71C 8009AB1C 8509000E */  lh         $t1, 0xe($t0)
/* 9B720 8009AB20 19200019 */  blez       $t1, .L8009AB88
/* 9B724 8009AB24 00000000 */   nop
.L8009AB28:
/* 9B728 8009AB28 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9B72C 8009AB2C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9B730 8009AB30 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9B734 8009AB34 000B6080 */  sll        $t4, $t3, 2
/* 9B738 8009AB38 014C6821 */  addu       $t5, $t2, $t4
/* 9B73C 8009AB3C 8DAE0010 */  lw         $t6, 0x10($t5)
/* 9B740 8009AB40 01CFC021 */  addu       $t8, $t6, $t7
/* 9B744 8009AB44 ADB80010 */  sw         $t8, 0x10($t5)
/* 9B748 8009AB48 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9B74C 8009AB4C 8FB90020 */  lw         $t9, 0x20($sp)
/* 9B750 8009AB50 8FA50024 */  lw         $a1, 0x24($sp)
/* 9B754 8009AB54 00084880 */  sll        $t1, $t0, 2
/* 9B758 8009AB58 03295821 */  addu       $t3, $t9, $t1
/* 9B75C 8009AB5C 8D640010 */  lw         $a0, 0x10($t3)
/* 9B760 8009AB60 0C026AE8 */  jal        func_8009ABA0
/* 9B764 8009AB64 8FA60028 */   lw        $a2, 0x28($sp)
/* 9B768 8009AB68 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9B76C 8009AB6C 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9B770 8009AB70 254C0001 */  addiu      $t4, $t2, 1
/* 9B774 8009AB74 AFAC001C */  sw         $t4, 0x1c($sp)
/* 9B778 8009AB78 85CF000E */  lh         $t7, 0xe($t6)
/* 9B77C 8009AB7C 018F082A */  slt        $at, $t4, $t7
/* 9B780 8009AB80 1420FFE9 */  bnez       $at, .L8009AB28
/* 9B784 8009AB84 00000000 */   nop
.L8009AB88:
/* 9B788 8009AB88 10000001 */  b          .L8009AB90
/* 9B78C 8009AB8C 00000000 */   nop
.L8009AB90:
/* 9B790 8009AB90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B794 8009AB94 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9B798 8009AB98 03E00008 */  jr         $ra
/* 9B79C 8009AB9C 00000000 */   nop

glabel func_8009ABA0
/* 9B7A0 8009ABA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B7A4 8009ABA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B7A8 8009ABA8 AFA40018 */  sw         $a0, 0x18($sp)
/* 9B7AC 8009ABAC AFA5001C */  sw         $a1, 0x1c($sp)
/* 9B7B0 8009ABB0 AFA60020 */  sw         $a2, 0x20($sp)
/* 9B7B4 8009ABB4 8FAE0018 */  lw         $t6, 0x18($sp)
/* 9B7B8 8009ABB8 91CF000E */  lbu        $t7, 0xe($t6)
/* 9B7BC 8009ABBC 11E00003 */  beqz       $t7, .L8009ABCC
/* 9B7C0 8009ABC0 00000000 */   nop
/* 9B7C4 8009ABC4 1000001A */  b          .L8009AC30
/* 9B7C8 8009ABC8 00000000 */   nop
.L8009ABCC:
/* 9B7CC 8009ABCC 8FB90018 */  lw         $t9, 0x18($sp)
/* 9B7D0 8009ABD0 24180001 */  addiu      $t8, $zero, 1
/* 9B7D4 8009ABD4 A338000E */  sb         $t8, 0xe($t9)
/* 9B7D8 8009ABD8 8FA80018 */  lw         $t0, 0x18($sp)
/* 9B7DC 8009ABDC 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9B7E0 8009ABE0 8D090000 */  lw         $t1, ($t0)
/* 9B7E4 8009ABE4 012A5821 */  addu       $t3, $t1, $t2
/* 9B7E8 8009ABE8 AD0B0000 */  sw         $t3, ($t0)
/* 9B7EC 8009ABEC 8FAC0018 */  lw         $t4, 0x18($sp)
/* 9B7F0 8009ABF0 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9B7F4 8009ABF4 8D8D0004 */  lw         $t5, 4($t4)
/* 9B7F8 8009ABF8 01AE7821 */  addu       $t7, $t5, $t6
/* 9B7FC 8009ABFC AD8F0004 */  sw         $t7, 4($t4)
/* 9B800 8009AC00 8FB80018 */  lw         $t8, 0x18($sp)
/* 9B804 8009AC04 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9B808 8009AC08 8F190008 */  lw         $t9, 8($t8)
/* 9B80C 8009AC0C 03295021 */  addu       $t2, $t9, $t1
/* 9B810 8009AC10 AF0A0008 */  sw         $t2, 8($t8)
/* 9B814 8009AC14 8FAB0018 */  lw         $t3, 0x18($sp)
/* 9B818 8009AC18 8FA5001C */  lw         $a1, 0x1c($sp)
/* 9B81C 8009AC1C 8FA60020 */  lw         $a2, 0x20($sp)
/* 9B820 8009AC20 0C026B10 */  jal        func_8009AC40
/* 9B824 8009AC24 8D640008 */   lw        $a0, 8($t3)
/* 9B828 8009AC28 10000001 */  b          .L8009AC30
/* 9B82C 8009AC2C 00000000 */   nop
.L8009AC30:
/* 9B830 8009AC30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B834 8009AC34 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9B838 8009AC38 03E00008 */  jr         $ra
/* 9B83C 8009AC3C 00000000 */   nop

glabel func_8009AC40
/* 9B840 8009AC40 908E0009 */  lbu        $t6, 9($a0)
/* 9B844 8009AC44 11C00003 */  beqz       $t6, .L8009AC54
/* 9B848 8009AC48 00000000 */   nop
/* 9B84C 8009AC4C 03E00008 */  jr         $ra
/* 9B850 8009AC50 00000000 */   nop
.L8009AC54:
/* 9B854 8009AC54 240F0001 */  addiu      $t7, $zero, 1
/* 9B858 8009AC58 A08F0009 */  sb         $t7, 9($a0)
/* 9B85C 8009AC5C 8C980000 */  lw         $t8, ($a0)
/* 9B860 8009AC60 0306C821 */  addu       $t9, $t8, $a2
/* 9B864 8009AC64 AC990000 */  sw         $t9, ($a0)
/* 9B868 8009AC68 90880008 */  lbu        $t0, 8($a0)
/* 9B86C 8009AC6C 1500000C */  bnez       $t0, .L8009ACA0
/* 9B870 8009AC70 00000000 */   nop
/* 9B874 8009AC74 8C890010 */  lw         $t1, 0x10($a0)
/* 9B878 8009AC78 01255021 */  addu       $t2, $t1, $a1
/* 9B87C 8009AC7C AC8A0010 */  sw         $t2, 0x10($a0)
/* 9B880 8009AC80 8C8B000C */  lw         $t3, 0xc($a0)
/* 9B884 8009AC84 11600004 */  beqz       $t3, .L8009AC98
/* 9B888 8009AC88 00000000 */   nop
/* 9B88C 8009AC8C 8C8C000C */  lw         $t4, 0xc($a0)
/* 9B890 8009AC90 01856821 */  addu       $t5, $t4, $a1
/* 9B894 8009AC94 AC8D000C */  sw         $t5, 0xc($a0)
.L8009AC98:
/* 9B898 8009AC98 1000000B */  b          .L8009ACC8
/* 9B89C 8009AC9C 00000000 */   nop
.L8009ACA0:
/* 9B8A0 8009ACA0 908E0008 */  lbu        $t6, 8($a0)
/* 9B8A4 8009ACA4 24010001 */  addiu      $at, $zero, 1
/* 9B8A8 8009ACA8 15C10007 */  bne        $t6, $at, .L8009ACC8
/* 9B8AC 8009ACAC 00000000 */   nop
/* 9B8B0 8009ACB0 8C8F000C */  lw         $t7, 0xc($a0)
/* 9B8B4 8009ACB4 11E00004 */  beqz       $t7, .L8009ACC8
/* 9B8B8 8009ACB8 00000000 */   nop
/* 9B8BC 8009ACBC 8C98000C */  lw         $t8, 0xc($a0)
/* 9B8C0 8009ACC0 0305C821 */  addu       $t9, $t8, $a1
/* 9B8C4 8009ACC4 AC99000C */  sw         $t9, 0xc($a0)
.L8009ACC8:
/* 9B8C8 8009ACC8 03E00008 */  jr         $ra
/* 9B8CC 8009ACCC 00000000 */   nop

glabel func_8009ACD0
/* 9B8D0 8009ACD0 03E00008 */  jr         $ra
/* 9B8D4 8009ACD4 00000000 */   nop
/* 9B8D8 8009ACD8 00000000 */  nop
/* 9B8DC 8009ACDC 00000000 */  nop
