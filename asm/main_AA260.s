.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A9660
/* AA260 800A9660 27BDFF80 */  addiu      $sp, $sp, -0x80
/* AA264 800A9664 AFBF002C */  sw         $ra, 0x2c($sp)
/* AA268 800A9668 AFA40080 */  sw         $a0, 0x80($sp)
/* AA26C 800A966C AFA50084 */  sw         $a1, 0x84($sp)
/* AA270 800A9670 AFA60088 */  sw         $a2, 0x88($sp)
/* AA274 800A9674 AFA7008C */  sw         $a3, 0x8c($sp)
/* AA278 800A9678 AFB00028 */  sw         $s0, 0x28($sp)
/* AA27C 800A967C 8FAE0090 */  lw         $t6, 0x90($sp)
/* AA280 800A9680 AFAE007C */  sw         $t6, 0x7c($sp)
/* AA284 800A9684 AFA0004C */  sw         $zero, 0x4c($sp)
/* AA288 800A9688 AFA00048 */  sw         $zero, 0x48($sp)
/* AA28C 800A968C 8FAF0080 */  lw         $t7, 0x80($sp)
/* AA290 800A9690 AFAF0044 */  sw         $t7, 0x44($sp)
/* AA294 800A9694 8FB80088 */  lw         $t8, 0x88($sp)
/* AA298 800A9698 17000003 */  bnez       $t8, .L800A96A8
/* AA29C 800A969C 00000000 */   nop
/* AA2A0 800A96A0 10000194 */  b          .L800A9CF4
/* AA2A4 800A96A4 8FA2007C */   lw        $v0, 0x7c($sp)
.L800A96A8:
/* AA2A8 800A96A8 A7A0007A */  sh         $zero, 0x7a($sp)
/* AA2AC 800A96AC 8FB9007C */  lw         $t9, 0x7c($sp)
/* AA2B0 800A96B0 27280008 */  addiu      $t0, $t9, 8
/* AA2B4 800A96B4 AFA8007C */  sw         $t0, 0x7c($sp)
/* AA2B8 800A96B8 AFB90040 */  sw         $t9, 0x40($sp)
/* AA2BC 800A96BC 8FA90044 */  lw         $t1, 0x44($sp)
/* AA2C0 800A96C0 3C0100FF */  lui        $at, 0xff
/* AA2C4 800A96C4 3421FFFF */  ori        $at, $at, 0xffff
/* AA2C8 800A96C8 8D2A002C */  lw         $t2, 0x2c($t1)
/* AA2CC 800A96CC 8FAD0040 */  lw         $t5, 0x40($sp)
/* AA2D0 800A96D0 01415824 */  and        $t3, $t2, $at
/* AA2D4 800A96D4 3C010B00 */  lui        $at, 0xb00
/* AA2D8 800A96D8 01616025 */  or         $t4, $t3, $at
/* AA2DC 800A96DC ADAC0000 */  sw         $t4, ($t5)
/* AA2E0 800A96E0 8FAE0044 */  lw         $t6, 0x44($sp)
/* AA2E4 800A96E4 8FA90040 */  lw         $t1, 0x40($sp)
/* AA2E8 800A96E8 3C011FFF */  lui        $at, 0x1fff
/* AA2EC 800A96EC 8DCF0028 */  lw         $t7, 0x28($t6)
/* AA2F0 800A96F0 3421FFFF */  ori        $at, $at, 0xffff
/* AA2F4 800A96F4 8DF80010 */  lw         $t8, 0x10($t7)
/* AA2F8 800A96F8 27190008 */  addiu      $t9, $t8, 8
/* AA2FC 800A96FC 03214024 */  and        $t0, $t9, $at
/* AA300 800A9700 AD280004 */  sw         $t0, 4($t1)
/* AA304 800A9704 8FAA0044 */  lw         $t2, 0x44($sp)
/* AA308 800A9708 8FAC0088 */  lw         $t4, 0x88($sp)
/* AA30C 800A970C 8D4B0038 */  lw         $t3, 0x38($t2)
/* AA310 800A9710 8D4E0020 */  lw         $t6, 0x20($t2)
/* AA314 800A9714 016C6821 */  addu       $t5, $t3, $t4
/* AA318 800A9718 01CD802B */  sltu       $s0, $t6, $t5
/* AA31C 800A971C 12000004 */  beqz       $s0, .L800A9730
/* AA320 800A9720 00000000 */   nop
/* AA324 800A9724 8D500024 */  lw         $s0, 0x24($t2)
/* AA328 800A9728 0010782B */  sltu       $t7, $zero, $s0
/* AA32C 800A972C 01E08025 */  or         $s0, $t7, $zero
.L800A9730:
/* AA330 800A9730 AFB00048 */  sw         $s0, 0x48($sp)
/* AA334 800A9734 8FB80048 */  lw         $t8, 0x48($sp)
/* AA338 800A9738 13000007 */  beqz       $t8, .L800A9758
/* AA33C 800A973C 00000000 */   nop
/* AA340 800A9740 8FB90044 */  lw         $t9, 0x44($sp)
/* AA344 800A9744 8F280020 */  lw         $t0, 0x20($t9)
/* AA348 800A9748 8F290038 */  lw         $t1, 0x38($t9)
/* AA34C 800A974C 01095823 */  subu       $t3, $t0, $t1
/* AA350 800A9750 10000003 */  b          .L800A9760
/* AA354 800A9754 AFAB005C */   sw        $t3, 0x5c($sp)
.L800A9758:
/* AA358 800A9758 8FAC0088 */  lw         $t4, 0x88($sp)
/* AA35C 800A975C AFAC005C */  sw         $t4, 0x5c($sp)
.L800A9760:
/* AA360 800A9760 8FAD0044 */  lw         $t5, 0x44($sp)
/* AA364 800A9764 8DAE003C */  lw         $t6, 0x3c($t5)
/* AA368 800A9768 11C00007 */  beqz       $t6, .L800A9788
/* AA36C 800A976C 00000000 */   nop
/* AA370 800A9770 8FAA0044 */  lw         $t2, 0x44($sp)
/* AA374 800A9774 24180010 */  addiu      $t8, $zero, 0x10
/* AA378 800A9778 8D4F003C */  lw         $t7, 0x3c($t2)
/* AA37C 800A977C 030FC823 */  subu       $t9, $t8, $t7
/* AA380 800A9780 10000002 */  b          .L800A978C
/* AA384 800A9784 AFB90054 */   sw        $t9, 0x54($sp)
.L800A9788:
/* AA388 800A9788 AFA00054 */  sw         $zero, 0x54($sp)
.L800A978C:
/* AA38C 800A978C 8FA8005C */  lw         $t0, 0x5c($sp)
/* AA390 800A9790 8FA90054 */  lw         $t1, 0x54($sp)
/* AA394 800A9794 01095823 */  subu       $t3, $t0, $t1
/* AA398 800A9798 AFAB0074 */  sw         $t3, 0x74($sp)
/* AA39C 800A979C 8FAC0074 */  lw         $t4, 0x74($sp)
/* AA3A0 800A97A0 05810002 */  bgez       $t4, .L800A97AC
/* AA3A4 800A97A4 00000000 */   nop
/* AA3A8 800A97A8 AFA00074 */  sw         $zero, 0x74($sp)
.L800A97AC:
/* AA3AC 800A97AC 8FAD0074 */  lw         $t5, 0x74($sp)
/* AA3B0 800A97B0 25AE000F */  addiu      $t6, $t5, 0xf
/* AA3B4 800A97B4 000E5103 */  sra        $t2, $t6, 4
/* AA3B8 800A97B8 AFAA0070 */  sw         $t2, 0x70($sp)
/* AA3BC 800A97BC 8FB80070 */  lw         $t8, 0x70($sp)
/* AA3C0 800A97C0 001878C0 */  sll        $t7, $t8, 3
/* AA3C4 800A97C4 01F87821 */  addu       $t7, $t7, $t8
/* AA3C8 800A97C8 AFAF006C */  sw         $t7, 0x6c($sp)
/* AA3CC 800A97CC 8FB90048 */  lw         $t9, 0x48($sp)
/* AA3D0 800A97D0 132000B5 */  beqz       $t9, .L800A9AA8
/* AA3D4 800A97D4 00000000 */   nop
/* AA3D8 800A97D8 8FA90084 */  lw         $t1, 0x84($sp)
/* AA3DC 800A97DC 87AC007A */  lh         $t4, 0x7a($sp)
/* AA3E0 800A97E0 8FA80044 */  lw         $t0, 0x44($sp)
/* AA3E4 800A97E4 852B0000 */  lh         $t3, ($t1)
/* AA3E8 800A97E8 AFAC0014 */  sw         $t4, 0x14($sp)
/* AA3EC 800A97EC 8FA4007C */  lw         $a0, 0x7c($sp)
/* AA3F0 800A97F0 AFAB0010 */  sw         $t3, 0x10($sp)
/* AA3F4 800A97F4 8D0D0040 */  lw         $t5, 0x40($t0)
/* AA3F8 800A97F8 8FA60074 */  lw         $a2, 0x74($sp)
/* AA3FC 800A97FC 8FA7006C */  lw         $a3, 0x6c($sp)
/* AA400 800A9800 01002825 */  or         $a1, $t0, $zero
/* AA404 800A9804 0C02A995 */  jal        func_800AA654
/* AA408 800A9808 AFAD0018 */   sw        $t5, 0x18($sp)
/* AA40C 800A980C AFA2007C */  sw         $v0, 0x7c($sp)
/* AA410 800A9810 8FAE0044 */  lw         $t6, 0x44($sp)
/* AA414 800A9814 8DCA003C */  lw         $t2, 0x3c($t6)
/* AA418 800A9818 11400009 */  beqz       $t2, .L800A9840
/* AA41C 800A981C 00000000 */   nop
/* AA420 800A9820 8FB90044 */  lw         $t9, 0x44($sp)
/* AA424 800A9824 8FB80084 */  lw         $t8, 0x84($sp)
/* AA428 800A9828 8F29003C */  lw         $t1, 0x3c($t9)
/* AA42C 800A982C 870F0000 */  lh         $t7, ($t8)
/* AA430 800A9830 00095840 */  sll        $t3, $t1, 1
/* AA434 800A9834 01EB6021 */  addu       $t4, $t7, $t3
/* AA438 800A9838 10000005 */  b          .L800A9850
/* AA43C 800A983C A70C0000 */   sh        $t4, ($t8)
.L800A9840:
/* AA440 800A9840 8FA80084 */  lw         $t0, 0x84($sp)
/* AA444 800A9844 850D0000 */  lh         $t5, ($t0)
/* AA448 800A9848 25AE0020 */  addiu      $t6, $t5, 0x20
/* AA44C 800A984C A50E0000 */  sh         $t6, ($t0)
.L800A9850:
/* AA450 800A9850 8FAA0044 */  lw         $t2, 0x44($sp)
/* AA454 800A9854 8D59001C */  lw         $t9, 0x1c($t2)
/* AA458 800A9858 3329000F */  andi       $t1, $t9, 0xf
/* AA45C 800A985C AD49003C */  sw         $t1, 0x3c($t2)
/* AA460 800A9860 8FAF0044 */  lw         $t7, 0x44($sp)
/* AA464 800A9864 8DEB0028 */  lw         $t3, 0x28($t7)
/* AA468 800A9868 8DF8001C */  lw         $t8, 0x1c($t7)
/* AA46C 800A986C 8D6C0000 */  lw         $t4, ($t3)
/* AA470 800A9870 00186902 */  srl        $t5, $t8, 4
/* AA474 800A9874 000D70C0 */  sll        $t6, $t5, 3
/* AA478 800A9878 01CD7021 */  addu       $t6, $t6, $t5
/* AA47C 800A987C 018E4021 */  addu       $t0, $t4, $t6
/* AA480 800A9880 25190009 */  addiu      $t9, $t0, 9
/* AA484 800A9884 ADF90044 */  sw         $t9, 0x44($t7)
/* AA488 800A9888 8FA90044 */  lw         $t1, 0x44($sp)
/* AA48C 800A988C 8D2A001C */  lw         $t2, 0x1c($t1)
/* AA490 800A9890 AD2A0038 */  sw         $t2, 0x38($t1)
/* AA494 800A9894 8FAB0084 */  lw         $t3, 0x84($sp)
/* AA498 800A9898 85780000 */  lh         $t8, ($t3)
/* AA49C 800A989C AFB80050 */  sw         $t8, 0x50($sp)
/* AA4A0 800A98A0 8FAD0088 */  lw         $t5, 0x88($sp)
/* AA4A4 800A98A4 8FAC005C */  lw         $t4, 0x5c($sp)
/* AA4A8 800A98A8 018D082A */  slt        $at, $t4, $t5
/* AA4AC 800A98AC 1020006A */  beqz       $at, .L800A9A58
/* AA4B0 800A98B0 00000000 */   nop
.L800A98B4:
/* AA4B4 800A98B4 8FAE0088 */  lw         $t6, 0x88($sp)
/* AA4B8 800A98B8 8FA8005C */  lw         $t0, 0x5c($sp)
/* AA4BC 800A98BC 01C8C823 */  subu       $t9, $t6, $t0
/* AA4C0 800A98C0 AFB90088 */  sw         $t9, 0x88($sp)
/* AA4C4 800A98C4 8FAF0070 */  lw         $t7, 0x70($sp)
/* AA4C8 800A98C8 8FAB0050 */  lw         $t3, 0x50($sp)
/* AA4CC 800A98CC 2401FFE0 */  addiu      $at, $zero, -0x20
/* AA4D0 800A98D0 25EA0001 */  addiu      $t2, $t7, 1
/* AA4D4 800A98D4 000A4940 */  sll        $t1, $t2, 5
/* AA4D8 800A98D8 012BC021 */  addu       $t8, $t1, $t3
/* AA4DC 800A98DC 03016824 */  and        $t5, $t8, $at
/* AA4E0 800A98E0 AFAD0058 */  sw         $t5, 0x58($sp)
/* AA4E4 800A98E4 8FAE005C */  lw         $t6, 0x5c($sp)
/* AA4E8 800A98E8 8FAC0050 */  lw         $t4, 0x50($sp)
/* AA4EC 800A98EC 000E4040 */  sll        $t0, $t6, 1
/* AA4F0 800A98F0 0188C821 */  addu       $t9, $t4, $t0
/* AA4F4 800A98F4 AFB90050 */  sw         $t9, 0x50($sp)
/* AA4F8 800A98F8 8FAF0044 */  lw         $t7, 0x44($sp)
/* AA4FC 800A98FC 2401FFFF */  addiu      $at, $zero, -1
/* AA500 800A9900 8DEA0024 */  lw         $t2, 0x24($t7)
/* AA504 800A9904 11410007 */  beq        $t2, $at, .L800A9924
/* AA508 800A9908 00000000 */   nop
/* AA50C 800A990C 11400005 */  beqz       $t2, .L800A9924
/* AA510 800A9910 00000000 */   nop
/* AA514 800A9914 8FA90044 */  lw         $t1, 0x44($sp)
/* AA518 800A9918 8D2B0024 */  lw         $t3, 0x24($t1)
/* AA51C 800A991C 2578FFFF */  addiu      $t8, $t3, -1
/* AA520 800A9920 AD380024 */  sw         $t8, 0x24($t1)
.L800A9924:
/* AA524 800A9924 8FAE0044 */  lw         $t6, 0x44($sp)
/* AA528 800A9928 8FAD0088 */  lw         $t5, 0x88($sp)
/* AA52C 800A992C 8DCC0020 */  lw         $t4, 0x20($t6)
/* AA530 800A9930 8DC8001C */  lw         $t0, 0x1c($t6)
/* AA534 800A9934 0188C823 */  subu       $t9, $t4, $t0
/* AA538 800A9938 01B9082B */  sltu       $at, $t5, $t9
/* AA53C 800A993C 10200003 */  beqz       $at, .L800A994C
/* AA540 800A9940 00000000 */   nop
/* AA544 800A9944 10000006 */  b          .L800A9960
/* AA548 800A9948 AFAD005C */   sw        $t5, 0x5c($sp)
.L800A994C:
/* AA54C 800A994C 8FAF0044 */  lw         $t7, 0x44($sp)
/* AA550 800A9950 8DEA0020 */  lw         $t2, 0x20($t7)
/* AA554 800A9954 8DEB001C */  lw         $t3, 0x1c($t7)
/* AA558 800A9958 014BC023 */  subu       $t8, $t2, $t3
/* AA55C 800A995C AFB8005C */  sw         $t8, 0x5c($sp)
.L800A9960:
/* AA560 800A9960 8FAE0044 */  lw         $t6, 0x44($sp)
/* AA564 800A9964 8FA9005C */  lw         $t1, 0x5c($sp)
/* AA568 800A9968 8DCC003C */  lw         $t4, 0x3c($t6)
/* AA56C 800A996C 012C4021 */  addu       $t0, $t1, $t4
/* AA570 800A9970 2519FFF0 */  addiu      $t9, $t0, -0x10
/* AA574 800A9974 AFB90074 */  sw         $t9, 0x74($sp)
/* AA578 800A9978 8FAD0074 */  lw         $t5, 0x74($sp)
/* AA57C 800A997C 05A10002 */  bgez       $t5, .L800A9988
/* AA580 800A9980 00000000 */   nop
/* AA584 800A9984 AFA00074 */  sw         $zero, 0x74($sp)
.L800A9988:
/* AA588 800A9988 8FAF0074 */  lw         $t7, 0x74($sp)
/* AA58C 800A998C 25EA000F */  addiu      $t2, $t7, 0xf
/* AA590 800A9990 000A5903 */  sra        $t3, $t2, 4
/* AA594 800A9994 AFAB0070 */  sw         $t3, 0x70($sp)
/* AA598 800A9998 8FB80070 */  lw         $t8, 0x70($sp)
/* AA59C 800A999C 001870C0 */  sll        $t6, $t8, 3
/* AA5A0 800A99A0 01D87021 */  addu       $t6, $t6, $t8
/* AA5A4 800A99A4 AFAE006C */  sw         $t6, 0x6c($sp)
/* AA5A8 800A99A8 8FAC0058 */  lw         $t4, 0x58($sp)
/* AA5AC 800A99AC 87A8007A */  lh         $t0, 0x7a($sp)
/* AA5B0 800A99B0 8FA90044 */  lw         $t1, 0x44($sp)
/* AA5B4 800A99B4 AFAC0010 */  sw         $t4, 0x10($sp)
/* AA5B8 800A99B8 AFA80014 */  sw         $t0, 0x14($sp)
/* AA5BC 800A99BC 8D390040 */  lw         $t9, 0x40($t1)
/* AA5C0 800A99C0 8FA4007C */  lw         $a0, 0x7c($sp)
/* AA5C4 800A99C4 8FA60074 */  lw         $a2, 0x74($sp)
/* AA5C8 800A99C8 372D0002 */  ori        $t5, $t9, 2
/* AA5CC 800A99CC AFAD0018 */  sw         $t5, 0x18($sp)
/* AA5D0 800A99D0 8FA7006C */  lw         $a3, 0x6c($sp)
/* AA5D4 800A99D4 0C02A995 */  jal        func_800AA654
/* AA5D8 800A99D8 01202825 */   or        $a1, $t1, $zero
/* AA5DC 800A99DC AFA2007C */  sw         $v0, 0x7c($sp)
/* AA5E0 800A99E0 8FAF007C */  lw         $t7, 0x7c($sp)
/* AA5E4 800A99E4 25EA0008 */  addiu      $t2, $t7, 8
/* AA5E8 800A99E8 AFAA007C */  sw         $t2, 0x7c($sp)
/* AA5EC 800A99EC AFAF003C */  sw         $t7, 0x3c($sp)
/* AA5F0 800A99F0 8FAB0044 */  lw         $t3, 0x44($sp)
/* AA5F4 800A99F4 8FAC0058 */  lw         $t4, 0x58($sp)
/* AA5F8 800A99F8 3C0100FF */  lui        $at, 0xff
/* AA5FC 800A99FC 8D78003C */  lw         $t8, 0x3c($t3)
/* AA600 800A9A00 3421FFFF */  ori        $at, $at, 0xffff
/* AA604 800A9A04 8FAD003C */  lw         $t5, 0x3c($sp)
/* AA608 800A9A08 00187040 */  sll        $t6, $t8, 1
/* AA60C 800A9A0C 01CC4021 */  addu       $t0, $t6, $t4
/* AA610 800A9A10 01014824 */  and        $t1, $t0, $at
/* AA614 800A9A14 3C010A00 */  lui        $at, 0xa00
/* AA618 800A9A18 0121C825 */  or         $t9, $t1, $at
/* AA61C 800A9A1C ADB90000 */  sw         $t9, ($t5)
/* AA620 800A9A20 8FAF0050 */  lw         $t7, 0x50($sp)
/* AA624 800A9A24 8FB8005C */  lw         $t8, 0x5c($sp)
/* AA628 800A9A28 8FA9003C */  lw         $t1, 0x3c($sp)
/* AA62C 800A9A2C 31EAFFFF */  andi       $t2, $t7, 0xffff
/* AA630 800A9A30 00187040 */  sll        $t6, $t8, 1
/* AA634 800A9A34 31CCFFFF */  andi       $t4, $t6, 0xffff
/* AA638 800A9A38 000A5C00 */  sll        $t3, $t2, 0x10
/* AA63C 800A9A3C 016C4025 */  or         $t0, $t3, $t4
/* AA640 800A9A40 AD280004 */  sw         $t0, 4($t1)
/* AA644 800A9A44 8FB90088 */  lw         $t9, 0x88($sp)
/* AA648 800A9A48 8FAD005C */  lw         $t5, 0x5c($sp)
/* AA64C 800A9A4C 01B9082A */  slt        $at, $t5, $t9
/* AA650 800A9A50 1420FF98 */  bnez       $at, .L800A98B4
/* AA654 800A9A54 00000000 */   nop
.L800A9A58:
/* AA658 800A9A58 8FAF0044 */  lw         $t7, 0x44($sp)
/* AA65C 800A9A5C 8FB80088 */  lw         $t8, 0x88($sp)
/* AA660 800A9A60 8DEA003C */  lw         $t2, 0x3c($t7)
/* AA664 800A9A64 01587021 */  addu       $t6, $t2, $t8
/* AA668 800A9A68 31CB000F */  andi       $t3, $t6, 0xf
/* AA66C 800A9A6C ADEB003C */  sw         $t3, 0x3c($t7)
/* AA670 800A9A70 8FAC0044 */  lw         $t4, 0x44($sp)
/* AA674 800A9A74 8FA90088 */  lw         $t1, 0x88($sp)
/* AA678 800A9A78 8D880038 */  lw         $t0, 0x38($t4)
/* AA67C 800A9A7C 0109C821 */  addu       $t9, $t0, $t1
/* AA680 800A9A80 AD990038 */  sw         $t9, 0x38($t4)
/* AA684 800A9A84 8FAD0044 */  lw         $t5, 0x44($sp)
/* AA688 800A9A88 8FB80070 */  lw         $t8, 0x70($sp)
/* AA68C 800A9A8C 8DAA0044 */  lw         $t2, 0x44($t5)
/* AA690 800A9A90 001870C0 */  sll        $t6, $t8, 3
/* AA694 800A9A94 01D87021 */  addu       $t6, $t6, $t8
/* AA698 800A9A98 014E5821 */  addu       $t3, $t2, $t6
/* AA69C 800A9A9C ADAB0044 */  sw         $t3, 0x44($t5)
/* AA6A0 800A9AA0 10000094 */  b          .L800A9CF4
/* AA6A4 800A9AA4 8FA2007C */   lw        $v0, 0x7c($sp)
.L800A9AA8:
/* AA6A8 800A9AA8 8FAF0070 */  lw         $t7, 0x70($sp)
/* AA6AC 800A9AAC 000F4100 */  sll        $t0, $t7, 4
/* AA6B0 800A9AB0 AFA8005C */  sw         $t0, 0x5c($sp)
/* AA6B4 800A9AB4 8FA90044 */  lw         $t1, 0x44($sp)
/* AA6B8 800A9AB8 8FAC006C */  lw         $t4, 0x6c($sp)
/* AA6BC 800A9ABC 8D2A0028 */  lw         $t2, 0x28($t1)
/* AA6C0 800A9AC0 8D390044 */  lw         $t9, 0x44($t1)
/* AA6C4 800A9AC4 8D4E0000 */  lw         $t6, ($t2)
/* AA6C8 800A9AC8 8D4B0004 */  lw         $t3, 4($t2)
/* AA6CC 800A9ACC 032CC021 */  addu       $t8, $t9, $t4
/* AA6D0 800A9AD0 01CB6821 */  addu       $t5, $t6, $t3
/* AA6D4 800A9AD4 030D7823 */  subu       $t7, $t8, $t5
/* AA6D8 800A9AD8 AFAF0068 */  sw         $t7, 0x68($sp)
/* AA6DC 800A9ADC 8FA80068 */  lw         $t0, 0x68($sp)
/* AA6E0 800A9AE0 05010002 */  bgez       $t0, .L800A9AEC
/* AA6E4 800A9AE4 00000000 */   nop
/* AA6E8 800A9AE8 AFA00068 */  sw         $zero, 0x68($sp)
.L800A9AEC:
/* AA6EC 800A9AEC 8FB90068 */  lw         $t9, 0x68($sp)
/* AA6F0 800A9AF0 24010009 */  addiu      $at, $zero, 9
/* AA6F4 800A9AF4 0321001A */  div        $zero, $t9, $at
/* AA6F8 800A9AF8 00006012 */  mflo       $t4
/* AA6FC 800A9AFC 000C4900 */  sll        $t1, $t4, 4
/* AA700 800A9B00 AFA90060 */  sw         $t1, 0x60($sp)
/* AA704 800A9B04 8FAE005C */  lw         $t6, 0x5c($sp)
/* AA708 800A9B08 8FAB0054 */  lw         $t3, 0x54($sp)
/* AA70C 800A9B0C 8FAA0060 */  lw         $t2, 0x60($sp)
/* AA710 800A9B10 01CBC021 */  addu       $t8, $t6, $t3
/* AA714 800A9B14 030A082A */  slt        $at, $t8, $t2
/* AA718 800A9B18 10200005 */  beqz       $at, .L800A9B30
/* AA71C 800A9B1C 00000000 */   nop
/* AA720 800A9B20 8FAD005C */  lw         $t5, 0x5c($sp)
/* AA724 800A9B24 8FAF0054 */  lw         $t7, 0x54($sp)
/* AA728 800A9B28 01AF4021 */  addu       $t0, $t5, $t7
/* AA72C 800A9B2C AFA80060 */  sw         $t0, 0x60($sp)
.L800A9B30:
/* AA730 800A9B30 8FB9006C */  lw         $t9, 0x6c($sp)
/* AA734 800A9B34 8FAC0068 */  lw         $t4, 0x68($sp)
/* AA738 800A9B38 032C4823 */  subu       $t1, $t9, $t4
/* AA73C 800A9B3C AFA9006C */  sw         $t1, 0x6c($sp)
/* AA740 800A9B40 8FAE0060 */  lw         $t6, 0x60($sp)
/* AA744 800A9B44 8FB80088 */  lw         $t8, 0x88($sp)
/* AA748 800A9B48 31CB000F */  andi       $t3, $t6, 0xf
/* AA74C 800A9B4C 01CB5023 */  subu       $t2, $t6, $t3
/* AA750 800A9B50 0158082A */  slt        $at, $t2, $t8
/* AA754 800A9B54 10200036 */  beqz       $at, .L800A9C30
/* AA758 800A9B58 00000000 */   nop
/* AA75C 800A9B5C 240D0001 */  addiu      $t5, $zero, 1
/* AA760 800A9B60 AFAD004C */  sw         $t5, 0x4c($sp)
/* AA764 800A9B64 8FAC0084 */  lw         $t4, 0x84($sp)
/* AA768 800A9B68 87AE007A */  lh         $t6, 0x7a($sp)
/* AA76C 800A9B6C 8FAF0044 */  lw         $t7, 0x44($sp)
/* AA770 800A9B70 85890000 */  lh         $t1, ($t4)
/* AA774 800A9B74 AFAE0014 */  sw         $t6, 0x14($sp)
/* AA778 800A9B78 8FA8005C */  lw         $t0, 0x5c($sp)
/* AA77C 800A9B7C AFA90010 */  sw         $t1, 0x10($sp)
/* AA780 800A9B80 8FB90060 */  lw         $t9, 0x60($sp)
/* AA784 800A9B84 8DEB0040 */  lw         $t3, 0x40($t7)
/* AA788 800A9B88 8FA4007C */  lw         $a0, 0x7c($sp)
/* AA78C 800A9B8C 8FA7006C */  lw         $a3, 0x6c($sp)
/* AA790 800A9B90 01E02825 */  or         $a1, $t7, $zero
/* AA794 800A9B94 01193023 */  subu       $a2, $t0, $t9
/* AA798 800A9B98 0C02A995 */  jal        func_800AA654
/* AA79C 800A9B9C AFAB0018 */   sw        $t3, 0x18($sp)
/* AA7A0 800A9BA0 AFA2007C */  sw         $v0, 0x7c($sp)
/* AA7A4 800A9BA4 8FAA0044 */  lw         $t2, 0x44($sp)
/* AA7A8 800A9BA8 8D58003C */  lw         $t8, 0x3c($t2)
/* AA7AC 800A9BAC 13000009 */  beqz       $t8, .L800A9BD4
/* AA7B0 800A9BB0 00000000 */   nop
/* AA7B4 800A9BB4 8FB90044 */  lw         $t9, 0x44($sp)
/* AA7B8 800A9BB8 8FAD0084 */  lw         $t5, 0x84($sp)
/* AA7BC 800A9BBC 8F2C003C */  lw         $t4, 0x3c($t9)
/* AA7C0 800A9BC0 85A80000 */  lh         $t0, ($t5)
/* AA7C4 800A9BC4 000C4840 */  sll        $t1, $t4, 1
/* AA7C8 800A9BC8 01097021 */  addu       $t6, $t0, $t1
/* AA7CC 800A9BCC 10000005 */  b          .L800A9BE4
/* AA7D0 800A9BD0 A5AE0000 */   sh        $t6, ($t5)
.L800A9BD4:
/* AA7D4 800A9BD4 8FAF0084 */  lw         $t7, 0x84($sp)
/* AA7D8 800A9BD8 85EB0000 */  lh         $t3, ($t7)
/* AA7DC 800A9BDC 256A0020 */  addiu      $t2, $t3, 0x20
/* AA7E0 800A9BE0 A5EA0000 */  sh         $t2, ($t7)
.L800A9BE4:
/* AA7E4 800A9BE4 8FB80044 */  lw         $t8, 0x44($sp)
/* AA7E8 800A9BE8 8FAC0088 */  lw         $t4, 0x88($sp)
/* AA7EC 800A9BEC 8F19003C */  lw         $t9, 0x3c($t8)
/* AA7F0 800A9BF0 032C4021 */  addu       $t0, $t9, $t4
/* AA7F4 800A9BF4 3109000F */  andi       $t1, $t0, 0xf
/* AA7F8 800A9BF8 AF09003C */  sw         $t1, 0x3c($t8)
/* AA7FC 800A9BFC 8FAE0044 */  lw         $t6, 0x44($sp)
/* AA800 800A9C00 8FAB0088 */  lw         $t3, 0x88($sp)
/* AA804 800A9C04 8DCD0038 */  lw         $t5, 0x38($t6)
/* AA808 800A9C08 01AB5021 */  addu       $t2, $t5, $t3
/* AA80C 800A9C0C ADCA0038 */  sw         $t2, 0x38($t6)
/* AA810 800A9C10 8FAF0044 */  lw         $t7, 0x44($sp)
/* AA814 800A9C14 8FAC0070 */  lw         $t4, 0x70($sp)
/* AA818 800A9C18 8DF90044 */  lw         $t9, 0x44($t7)
/* AA81C 800A9C1C 000C40C0 */  sll        $t0, $t4, 3
/* AA820 800A9C20 010C4021 */  addu       $t0, $t0, $t4
/* AA824 800A9C24 03284821 */  addu       $t1, $t9, $t0
/* AA828 800A9C28 1000000A */  b          .L800A9C54
/* AA82C 800A9C2C ADE90044 */   sw        $t1, 0x44($t7)
.L800A9C30:
/* AA830 800A9C30 8FB80044 */  lw         $t8, 0x44($sp)
/* AA834 800A9C34 AF00003C */  sw         $zero, 0x3c($t8)
/* AA838 800A9C38 8FAD0044 */  lw         $t5, 0x44($sp)
/* AA83C 800A9C3C 8FAA0070 */  lw         $t2, 0x70($sp)
/* AA840 800A9C40 8DAB0044 */  lw         $t3, 0x44($t5)
/* AA844 800A9C44 000A70C0 */  sll        $t6, $t2, 3
/* AA848 800A9C48 01CA7021 */  addu       $t6, $t6, $t2
/* AA84C 800A9C4C 016E6021 */  addu       $t4, $t3, $t6
/* AA850 800A9C50 ADAC0044 */  sw         $t4, 0x44($t5)
.L800A9C54:
/* AA854 800A9C54 8FB90060 */  lw         $t9, 0x60($sp)
/* AA858 800A9C58 13200022 */  beqz       $t9, .L800A9CE4
/* AA85C 800A9C5C 00000000 */   nop
/* AA860 800A9C60 8FA80044 */  lw         $t0, 0x44($sp)
/* AA864 800A9C64 AD00003C */  sw         $zero, 0x3c($t0)
/* AA868 800A9C68 8FA9004C */  lw         $t1, 0x4c($sp)
/* AA86C 800A9C6C 11200009 */  beqz       $t1, .L800A9C94
/* AA870 800A9C70 00000000 */   nop
/* AA874 800A9C74 8FAF0054 */  lw         $t7, 0x54($sp)
/* AA878 800A9C78 8FB8005C */  lw         $t8, 0x5c($sp)
/* AA87C 800A9C7C 8FAB0060 */  lw         $t3, 0x60($sp)
/* AA880 800A9C80 01F85021 */  addu       $t2, $t7, $t8
/* AA884 800A9C84 014B7023 */  subu       $t6, $t2, $t3
/* AA888 800A9C88 000E6040 */  sll        $t4, $t6, 1
/* AA88C 800A9C8C 10000002 */  b          .L800A9C98
/* AA890 800A9C90 AFAC0064 */   sw        $t4, 0x64($sp)
.L800A9C94:
/* AA894 800A9C94 AFA00064 */  sw         $zero, 0x64($sp)
.L800A9C98:
/* AA898 800A9C98 8FAD007C */  lw         $t5, 0x7c($sp)
/* AA89C 800A9C9C 25B90008 */  addiu      $t9, $t5, 8
/* AA8A0 800A9CA0 AFB9007C */  sw         $t9, 0x7c($sp)
/* AA8A4 800A9CA4 AFAD0038 */  sw         $t5, 0x38($sp)
/* AA8A8 800A9CA8 8FA80084 */  lw         $t0, 0x84($sp)
/* AA8AC 800A9CAC 8FAF0064 */  lw         $t7, 0x64($sp)
/* AA8B0 800A9CB0 3C0100FF */  lui        $at, 0xff
/* AA8B4 800A9CB4 85090000 */  lh         $t1, ($t0)
/* AA8B8 800A9CB8 3421FFFF */  ori        $at, $at, 0xffff
/* AA8BC 800A9CBC 8FAE0038 */  lw         $t6, 0x38($sp)
/* AA8C0 800A9CC0 012FC021 */  addu       $t8, $t1, $t7
/* AA8C4 800A9CC4 03015024 */  and        $t2, $t8, $at
/* AA8C8 800A9CC8 3C010200 */  lui        $at, 0x200
/* AA8CC 800A9CCC 01415825 */  or         $t3, $t2, $at
/* AA8D0 800A9CD0 ADCB0000 */  sw         $t3, ($t6)
/* AA8D4 800A9CD4 8FAC0060 */  lw         $t4, 0x60($sp)
/* AA8D8 800A9CD8 8FB90038 */  lw         $t9, 0x38($sp)
/* AA8DC 800A9CDC 000C6840 */  sll        $t5, $t4, 1
/* AA8E0 800A9CE0 AF2D0004 */  sw         $t5, 4($t9)
.L800A9CE4:
/* AA8E4 800A9CE4 10000003 */  b          .L800A9CF4
/* AA8E8 800A9CE8 8FA2007C */   lw        $v0, 0x7c($sp)
/* AA8EC 800A9CEC 10000001 */  b          .L800A9CF4
/* AA8F0 800A9CF0 00000000 */   nop
.L800A9CF4:
/* AA8F4 800A9CF4 8FBF002C */  lw         $ra, 0x2c($sp)
/* AA8F8 800A9CF8 8FB00028 */  lw         $s0, 0x28($sp)
/* AA8FC 800A9CFC 27BD0080 */  addiu      $sp, $sp, 0x80
/* AA900 800A9D00 03E00008 */  jr         $ra
/* AA904 800A9D04 00000000 */   nop

glabel func_800A9D08
/* AA908 800A9D08 27BDFF98 */  addiu      $sp, $sp, -0x68
/* AA90C 800A9D0C AFBF0014 */  sw         $ra, 0x14($sp)
/* AA910 800A9D10 AFA40068 */  sw         $a0, 0x68($sp)
/* AA914 800A9D14 AFA5006C */  sw         $a1, 0x6c($sp)
/* AA918 800A9D18 AFA60070 */  sw         $a2, 0x70($sp)
/* AA91C 800A9D1C AFA70074 */  sw         $a3, 0x74($sp)
/* AA920 800A9D20 8FAE0078 */  lw         $t6, 0x78($sp)
/* AA924 800A9D24 AFAE0064 */  sw         $t6, 0x64($sp)
/* AA928 800A9D28 8FAF0068 */  lw         $t7, 0x68($sp)
/* AA92C 800A9D2C AFAF0040 */  sw         $t7, 0x40($sp)
/* AA930 800A9D30 8FB80068 */  lw         $t8, 0x68($sp)
/* AA934 800A9D34 AFB8003C */  sw         $t8, 0x3c($sp)
/* AA938 800A9D38 8FB90070 */  lw         $t9, 0x70($sp)
/* AA93C 800A9D3C 17200003 */  bnez       $t9, .L800A9D4C
/* AA940 800A9D40 00000000 */   nop
/* AA944 800A9D44 1000017B */  b          .L800AA334
/* AA948 800A9D48 8FA20064 */   lw        $v0, 0x64($sp)
.L800A9D4C:
/* AA94C 800A9D4C 8FA80040 */  lw         $t0, 0x40($sp)
/* AA950 800A9D50 8FAA0070 */  lw         $t2, 0x70($sp)
/* AA954 800A9D54 8D090038 */  lw         $t1, 0x38($t0)
/* AA958 800A9D58 8D0C0020 */  lw         $t4, 0x20($t0)
/* AA95C 800A9D5C 012A5821 */  addu       $t3, $t1, $t2
/* AA960 800A9D60 018B082B */  sltu       $at, $t4, $t3
/* AA964 800A9D64 102000E6 */  beqz       $at, .L800AA100
/* AA968 800A9D68 00000000 */   nop
/* AA96C 800A9D6C 8D0D0024 */  lw         $t5, 0x24($t0)
/* AA970 800A9D70 11A000E3 */  beqz       $t5, .L800AA100
/* AA974 800A9D74 00000000 */   nop
/* AA978 800A9D78 8FAE0040 */  lw         $t6, 0x40($sp)
/* AA97C 800A9D7C 8DCF0020 */  lw         $t7, 0x20($t6)
/* AA980 800A9D80 8DD80038 */  lw         $t8, 0x38($t6)
/* AA984 800A9D84 01F8C823 */  subu       $t9, $t7, $t8
/* AA988 800A9D88 AFB90048 */  sw         $t9, 0x48($sp)
/* AA98C 800A9D8C 8FA90048 */  lw         $t1, 0x48($sp)
/* AA990 800A9D90 00095040 */  sll        $t2, $t1, 1
/* AA994 800A9D94 AFAA0060 */  sw         $t2, 0x60($sp)
/* AA998 800A9D98 8FAB0048 */  lw         $t3, 0x48($sp)
/* AA99C 800A9D9C 19600030 */  blez       $t3, .L800A9E60
/* AA9A0 800A9DA0 00000000 */   nop
/* AA9A4 800A9DA4 8FAC0040 */  lw         $t4, 0x40($sp)
/* AA9A8 800A9DA8 8FA50060 */  lw         $a1, 0x60($sp)
/* AA9AC 800A9DAC 8D990030 */  lw         $t9, 0x30($t4)
/* AA9B0 800A9DB0 8D840044 */  lw         $a0, 0x44($t4)
/* AA9B4 800A9DB4 8D860034 */  lw         $a2, 0x34($t4)
/* AA9B8 800A9DB8 0320F809 */  jalr       $t9
/* AA9BC 800A9DBC 00000000 */   nop
/* AA9C0 800A9DC0 AFA2005C */  sw         $v0, 0x5c($sp)
/* AA9C4 800A9DC4 8FA8005C */  lw         $t0, 0x5c($sp)
/* AA9C8 800A9DC8 310D0007 */  andi       $t5, $t0, 7
/* AA9CC 800A9DCC AFAD0058 */  sw         $t5, 0x58($sp)
/* AA9D0 800A9DD0 8FAE0060 */  lw         $t6, 0x60($sp)
/* AA9D4 800A9DD4 8FAF0058 */  lw         $t7, 0x58($sp)
/* AA9D8 800A9DD8 01CFC021 */  addu       $t8, $t6, $t7
/* AA9DC 800A9DDC AFB80060 */  sw         $t8, 0x60($sp)
/* AA9E0 800A9DE0 8FA90064 */  lw         $t1, 0x64($sp)
/* AA9E4 800A9DE4 252A0008 */  addiu      $t2, $t1, 8
/* AA9E8 800A9DE8 AFAA0064 */  sw         $t2, 0x64($sp)
/* AA9EC 800A9DEC AFA90038 */  sw         $t1, 0x38($sp)
/* AA9F0 800A9DF0 8FAB006C */  lw         $t3, 0x6c($sp)
/* AA9F4 800A9DF4 8FAD0038 */  lw         $t5, 0x38($sp)
/* AA9F8 800A9DF8 3C010800 */  lui        $at, 0x800
/* AA9FC 800A9DFC 856C0000 */  lh         $t4, ($t3)
/* AAA00 800A9E00 3199FFFF */  andi       $t9, $t4, 0xffff
/* AAA04 800A9E04 03214025 */  or         $t0, $t9, $at
/* AAA08 800A9E08 ADA80000 */  sw         $t0, ($t5)
/* AAA0C 800A9E0C 8FAE0060 */  lw         $t6, 0x60($sp)
/* AAA10 800A9E10 8FAB0038 */  lw         $t3, 0x38($sp)
/* AAA14 800A9E14 31CF0007 */  andi       $t7, $t6, 7
/* AAA18 800A9E18 01CFC023 */  subu       $t8, $t6, $t7
/* AAA1C 800A9E1C 27090008 */  addiu      $t1, $t8, 8
/* AAA20 800A9E20 312AFFFF */  andi       $t2, $t1, 0xffff
/* AAA24 800A9E24 AD6A0004 */  sw         $t2, 4($t3)
/* AAA28 800A9E28 8FAC0064 */  lw         $t4, 0x64($sp)
/* AAA2C 800A9E2C 25990008 */  addiu      $t9, $t4, 8
/* AAA30 800A9E30 AFB90064 */  sw         $t9, 0x64($sp)
/* AAA34 800A9E34 AFAC0034 */  sw         $t4, 0x34($sp)
/* AAA38 800A9E38 8FAD0034 */  lw         $t5, 0x34($sp)
/* AAA3C 800A9E3C 3C080400 */  lui        $t0, 0x400
/* AAA40 800A9E40 ADA80000 */  sw         $t0, ($t5)
/* AAA44 800A9E44 8FAE005C */  lw         $t6, 0x5c($sp)
/* AAA48 800A9E48 8FAF0058 */  lw         $t7, 0x58($sp)
/* AAA4C 800A9E4C 8FA90034 */  lw         $t1, 0x34($sp)
/* AAA50 800A9E50 01CFC023 */  subu       $t8, $t6, $t7
/* AAA54 800A9E54 AD380004 */  sw         $t8, 4($t1)
/* AAA58 800A9E58 10000002 */  b          .L800A9E64
/* AAA5C 800A9E5C 00000000 */   nop
.L800A9E60:
/* AAA60 800A9E60 AFA00058 */  sw         $zero, 0x58($sp)
.L800A9E64:
/* AAA64 800A9E64 8FAA006C */  lw         $t2, 0x6c($sp)
/* AAA68 800A9E68 8FAC0058 */  lw         $t4, 0x58($sp)
/* AAA6C 800A9E6C 854B0000 */  lh         $t3, ($t2)
/* AAA70 800A9E70 016CC821 */  addu       $t9, $t3, $t4
/* AAA74 800A9E74 A5590000 */  sh         $t9, ($t2)
/* AAA78 800A9E78 8FA80040 */  lw         $t0, 0x40($sp)
/* AAA7C 800A9E7C 8D0D0028 */  lw         $t5, 0x28($t0)
/* AAA80 800A9E80 8D0F001C */  lw         $t7, 0x1c($t0)
/* AAA84 800A9E84 8DAE0000 */  lw         $t6, ($t5)
/* AAA88 800A9E88 000FC040 */  sll        $t8, $t7, 1
/* AAA8C 800A9E8C 01D84821 */  addu       $t1, $t6, $t8
/* AAA90 800A9E90 AD090044 */  sw         $t1, 0x44($t0)
/* AAA94 800A9E94 8FAB0040 */  lw         $t3, 0x40($sp)
/* AAA98 800A9E98 8D6C001C */  lw         $t4, 0x1c($t3)
/* AAA9C 800A9E9C AD6C0038 */  sw         $t4, 0x38($t3)
/* AAAA0 800A9EA0 8FB9006C */  lw         $t9, 0x6c($sp)
/* AAAA4 800A9EA4 872A0000 */  lh         $t2, ($t9)
/* AAAA8 800A9EA8 AFAA0044 */  sw         $t2, 0x44($sp)
/* AAAAC 800A9EAC 8FAD0070 */  lw         $t5, 0x70($sp)
/* AAAB0 800A9EB0 8FAF0048 */  lw         $t7, 0x48($sp)
/* AAAB4 800A9EB4 01ED082A */  slt        $at, $t7, $t5
/* AAAB8 800A9EB8 10200084 */  beqz       $at, .L800AA0CC
/* AAABC 800A9EBC 00000000 */   nop
.L800A9EC0:
/* AAAC0 800A9EC0 8FB80048 */  lw         $t8, 0x48($sp)
/* AAAC4 800A9EC4 8FAE0044 */  lw         $t6, 0x44($sp)
/* AAAC8 800A9EC8 00184840 */  sll        $t1, $t8, 1
/* AAACC 800A9ECC 01C94021 */  addu       $t0, $t6, $t1
/* AAAD0 800A9ED0 AFA80044 */  sw         $t0, 0x44($sp)
/* AAAD4 800A9ED4 8FAC0070 */  lw         $t4, 0x70($sp)
/* AAAD8 800A9ED8 8FAB0048 */  lw         $t3, 0x48($sp)
/* AAADC 800A9EDC 018BC823 */  subu       $t9, $t4, $t3
/* AAAE0 800A9EE0 AFB90070 */  sw         $t9, 0x70($sp)
/* AAAE4 800A9EE4 8FAA0040 */  lw         $t2, 0x40($sp)
/* AAAE8 800A9EE8 2401FFFF */  addiu      $at, $zero, -1
/* AAAEC 800A9EEC 8D4D0024 */  lw         $t5, 0x24($t2)
/* AAAF0 800A9EF0 11A10007 */  beq        $t5, $at, .L800A9F10
/* AAAF4 800A9EF4 00000000 */   nop
/* AAAF8 800A9EF8 11A00005 */  beqz       $t5, .L800A9F10
/* AAAFC 800A9EFC 00000000 */   nop
/* AAB00 800A9F00 8FAF0040 */  lw         $t7, 0x40($sp)
/* AAB04 800A9F04 8DF80024 */  lw         $t8, 0x24($t7)
/* AAB08 800A9F08 270EFFFF */  addiu      $t6, $t8, -1
/* AAB0C 800A9F0C ADEE0024 */  sw         $t6, 0x24($t7)
.L800A9F10:
/* AAB10 800A9F10 8FA80040 */  lw         $t0, 0x40($sp)
/* AAB14 800A9F14 8FA90070 */  lw         $t1, 0x70($sp)
/* AAB18 800A9F18 8D0C0020 */  lw         $t4, 0x20($t0)
/* AAB1C 800A9F1C 8D0B001C */  lw         $t3, 0x1c($t0)
/* AAB20 800A9F20 018BC823 */  subu       $t9, $t4, $t3
/* AAB24 800A9F24 0139082B */  sltu       $at, $t1, $t9
/* AAB28 800A9F28 10200003 */  beqz       $at, .L800A9F38
/* AAB2C 800A9F2C 00000000 */   nop
/* AAB30 800A9F30 10000006 */  b          .L800A9F4C
/* AAB34 800A9F34 AFA90048 */   sw        $t1, 0x48($sp)
.L800A9F38:
/* AAB38 800A9F38 8FAA0040 */  lw         $t2, 0x40($sp)
/* AAB3C 800A9F3C 8D4D0020 */  lw         $t5, 0x20($t2)
/* AAB40 800A9F40 8D58001C */  lw         $t8, 0x1c($t2)
/* AAB44 800A9F44 01B87023 */  subu       $t6, $t5, $t8
/* AAB48 800A9F48 AFAE0048 */  sw         $t6, 0x48($sp)
.L800A9F4C:
/* AAB4C 800A9F4C 8FAF0048 */  lw         $t7, 0x48($sp)
/* AAB50 800A9F50 000F4040 */  sll        $t0, $t7, 1
/* AAB54 800A9F54 AFA80060 */  sw         $t0, 0x60($sp)
/* AAB58 800A9F58 8FAC0040 */  lw         $t4, 0x40($sp)
/* AAB5C 800A9F5C 8FA50060 */  lw         $a1, 0x60($sp)
/* AAB60 800A9F60 8D990030 */  lw         $t9, 0x30($t4)
/* AAB64 800A9F64 8D840044 */  lw         $a0, 0x44($t4)
/* AAB68 800A9F68 8D860034 */  lw         $a2, 0x34($t4)
/* AAB6C 800A9F6C 0320F809 */  jalr       $t9
/* AAB70 800A9F70 00000000 */   nop
/* AAB74 800A9F74 AFA2005C */  sw         $v0, 0x5c($sp)
/* AAB78 800A9F78 8FAB005C */  lw         $t3, 0x5c($sp)
/* AAB7C 800A9F7C 31690007 */  andi       $t1, $t3, 7
/* AAB80 800A9F80 AFA90058 */  sw         $t1, 0x58($sp)
/* AAB84 800A9F84 8FAA0060 */  lw         $t2, 0x60($sp)
/* AAB88 800A9F88 8FAD0058 */  lw         $t5, 0x58($sp)
/* AAB8C 800A9F8C 014DC021 */  addu       $t8, $t2, $t5
/* AAB90 800A9F90 AFB80060 */  sw         $t8, 0x60($sp)
/* AAB94 800A9F94 8FAE0044 */  lw         $t6, 0x44($sp)
/* AAB98 800A9F98 31CF0007 */  andi       $t7, $t6, 7
/* AAB9C 800A9F9C 11E00007 */  beqz       $t7, .L800A9FBC
/* AABA0 800A9FA0 00000000 */   nop
/* AABA4 800A9FA4 8FA80044 */  lw         $t0, 0x44($sp)
/* AABA8 800A9FA8 24190008 */  addiu      $t9, $zero, 8
/* AABAC 800A9FAC 310C0007 */  andi       $t4, $t0, 7
/* AABB0 800A9FB0 032C5823 */  subu       $t3, $t9, $t4
/* AABB4 800A9FB4 10000002 */  b          .L800A9FC0
/* AABB8 800A9FB8 AFAB0054 */   sw        $t3, 0x54($sp)
.L800A9FBC:
/* AABBC 800A9FBC AFA00054 */  sw         $zero, 0x54($sp)
.L800A9FC0:
/* AABC0 800A9FC0 8FA90064 */  lw         $t1, 0x64($sp)
/* AABC4 800A9FC4 252A0008 */  addiu      $t2, $t1, 8
/* AABC8 800A9FC8 AFAA0064 */  sw         $t2, 0x64($sp)
/* AABCC 800A9FCC AFA90030 */  sw         $t1, 0x30($sp)
/* AABD0 800A9FD0 8FAD0044 */  lw         $t5, 0x44($sp)
/* AABD4 800A9FD4 8FB80054 */  lw         $t8, 0x54($sp)
/* AABD8 800A9FD8 8FB90030 */  lw         $t9, 0x30($sp)
/* AABDC 800A9FDC 3C010800 */  lui        $at, 0x800
/* AABE0 800A9FE0 01B87021 */  addu       $t6, $t5, $t8
/* AABE4 800A9FE4 31CFFFFF */  andi       $t7, $t6, 0xffff
/* AABE8 800A9FE8 01E14025 */  or         $t0, $t7, $at
/* AABEC 800A9FEC AF280000 */  sw         $t0, ($t9)
/* AABF0 800A9FF0 8FAC0060 */  lw         $t4, 0x60($sp)
/* AABF4 800A9FF4 8FB80030 */  lw         $t8, 0x30($sp)
/* AABF8 800A9FF8 318B0007 */  andi       $t3, $t4, 7
/* AABFC 800A9FFC 018B4823 */  subu       $t1, $t4, $t3
/* AAC00 800AA000 252A0008 */  addiu      $t2, $t1, 8
/* AAC04 800AA004 314DFFFF */  andi       $t5, $t2, 0xffff
/* AAC08 800AA008 AF0D0004 */  sw         $t5, 4($t8)
/* AAC0C 800AA00C 8FAE0064 */  lw         $t6, 0x64($sp)
/* AAC10 800AA010 25CF0008 */  addiu      $t7, $t6, 8
/* AAC14 800AA014 AFAF0064 */  sw         $t7, 0x64($sp)
/* AAC18 800AA018 AFAE002C */  sw         $t6, 0x2c($sp)
/* AAC1C 800AA01C 8FB9002C */  lw         $t9, 0x2c($sp)
/* AAC20 800AA020 3C080400 */  lui        $t0, 0x400
/* AAC24 800AA024 AF280000 */  sw         $t0, ($t9)
/* AAC28 800AA028 8FAC005C */  lw         $t4, 0x5c($sp)
/* AAC2C 800AA02C 8FAB0058 */  lw         $t3, 0x58($sp)
/* AAC30 800AA030 8FAA002C */  lw         $t2, 0x2c($sp)
/* AAC34 800AA034 018B4823 */  subu       $t1, $t4, $t3
/* AAC38 800AA038 AD490004 */  sw         $t1, 4($t2)
/* AAC3C 800AA03C 8FAD0058 */  lw         $t5, 0x58($sp)
/* AAC40 800AA040 15A00004 */  bnez       $t5, .L800AA054
/* AAC44 800AA044 00000000 */   nop
/* AAC48 800AA048 8FB80054 */  lw         $t8, 0x54($sp)
/* AAC4C 800AA04C 1300001A */  beqz       $t8, .L800AA0B8
/* AAC50 800AA050 00000000 */   nop
.L800AA054:
/* AAC54 800AA054 8FAE0064 */  lw         $t6, 0x64($sp)
/* AAC58 800AA058 25CF0008 */  addiu      $t7, $t6, 8
/* AAC5C 800AA05C AFAF0064 */  sw         $t7, 0x64($sp)
/* AAC60 800AA060 AFAE0028 */  sw         $t6, 0x28($sp)
/* AAC64 800AA064 8FA80044 */  lw         $t0, 0x44($sp)
/* AAC68 800AA068 8FB90058 */  lw         $t9, 0x58($sp)
/* AAC6C 800AA06C 8FAB0054 */  lw         $t3, 0x54($sp)
/* AAC70 800AA070 3C0100FF */  lui        $at, 0xff
/* AAC74 800AA074 01196021 */  addu       $t4, $t0, $t9
/* AAC78 800AA078 3421FFFF */  ori        $at, $at, 0xffff
/* AAC7C 800AA07C 018B4821 */  addu       $t1, $t4, $t3
/* AAC80 800AA080 8FB80028 */  lw         $t8, 0x28($sp)
/* AAC84 800AA084 01215024 */  and        $t2, $t1, $at
/* AAC88 800AA088 3C010A00 */  lui        $at, 0xa00
/* AAC8C 800AA08C 01416825 */  or         $t5, $t2, $at
/* AAC90 800AA090 AF0D0000 */  sw         $t5, ($t8)
/* AAC94 800AA094 8FAE0044 */  lw         $t6, 0x44($sp)
/* AAC98 800AA098 8FB90048 */  lw         $t9, 0x48($sp)
/* AAC9C 800AA09C 8FAA0028 */  lw         $t2, 0x28($sp)
/* AACA0 800AA0A0 31CFFFFF */  andi       $t7, $t6, 0xffff
/* AACA4 800AA0A4 00196040 */  sll        $t4, $t9, 1
/* AACA8 800AA0A8 318BFFFF */  andi       $t3, $t4, 0xffff
/* AACAC 800AA0AC 000F4400 */  sll        $t0, $t7, 0x10
/* AACB0 800AA0B0 010B4825 */  or         $t1, $t0, $t3
/* AACB4 800AA0B4 AD490004 */  sw         $t1, 4($t2)
.L800AA0B8:
/* AACB8 800AA0B8 8FAD0070 */  lw         $t5, 0x70($sp)
/* AACBC 800AA0BC 8FB80048 */  lw         $t8, 0x48($sp)
/* AACC0 800AA0C0 030D082A */  slt        $at, $t8, $t5
/* AACC4 800AA0C4 1420FF7E */  bnez       $at, .L800A9EC0
/* AACC8 800AA0C8 00000000 */   nop
.L800AA0CC:
/* AACCC 800AA0CC 8FAE0040 */  lw         $t6, 0x40($sp)
/* AACD0 800AA0D0 8FB90070 */  lw         $t9, 0x70($sp)
/* AACD4 800AA0D4 8DCF0038 */  lw         $t7, 0x38($t6)
/* AACD8 800AA0D8 01F96021 */  addu       $t4, $t7, $t9
/* AACDC 800AA0DC ADCC0038 */  sw         $t4, 0x38($t6)
/* AACE0 800AA0E0 8FA80040 */  lw         $t0, 0x40($sp)
/* AACE4 800AA0E4 8FA90070 */  lw         $t1, 0x70($sp)
/* AACE8 800AA0E8 8D0B0044 */  lw         $t3, 0x44($t0)
/* AACEC 800AA0EC 00095040 */  sll        $t2, $t1, 1
/* AACF0 800AA0F0 016A6821 */  addu       $t5, $t3, $t2
/* AACF4 800AA0F4 AD0D0044 */  sw         $t5, 0x44($t0)
/* AACF8 800AA0F8 1000008E */  b          .L800AA334
/* AACFC 800AA0FC 8FA20064 */   lw        $v0, 0x64($sp)
.L800AA100:
/* AAD00 800AA100 8FB80070 */  lw         $t8, 0x70($sp)
/* AAD04 800AA104 00187840 */  sll        $t7, $t8, 1
/* AAD08 800AA108 AFAF0060 */  sw         $t7, 0x60($sp)
/* AAD0C 800AA10C 8FB90040 */  lw         $t9, 0x40($sp)
/* AAD10 800AA110 8FAE0060 */  lw         $t6, 0x60($sp)
/* AAD14 800AA114 8F2B0028 */  lw         $t3, 0x28($t9)
/* AAD18 800AA118 8F2C0044 */  lw         $t4, 0x44($t9)
/* AAD1C 800AA11C 8D6A0000 */  lw         $t2, ($t3)
/* AAD20 800AA120 8D6D0004 */  lw         $t5, 4($t3)
/* AAD24 800AA124 018E4821 */  addu       $t1, $t4, $t6
/* AAD28 800AA128 014D4021 */  addu       $t0, $t2, $t5
/* AAD2C 800AA12C 0128C023 */  subu       $t8, $t1, $t0
/* AAD30 800AA130 AFB80050 */  sw         $t8, 0x50($sp)
/* AAD34 800AA134 8FAF0050 */  lw         $t7, 0x50($sp)
/* AAD38 800AA138 05E10002 */  bgez       $t7, .L800AA144
/* AAD3C 800AA13C 00000000 */   nop
/* AAD40 800AA140 AFA00050 */  sw         $zero, 0x50($sp)
.L800AA144:
/* AAD44 800AA144 8FAC0050 */  lw         $t4, 0x50($sp)
/* AAD48 800AA148 8FAE0060 */  lw         $t6, 0x60($sp)
/* AAD4C 800AA14C 01CC082A */  slt        $at, $t6, $t4
/* AAD50 800AA150 10200003 */  beqz       $at, .L800AA160
/* AAD54 800AA154 00000000 */   nop
/* AAD58 800AA158 8FB90060 */  lw         $t9, 0x60($sp)
/* AAD5C 800AA15C AFB90050 */  sw         $t9, 0x50($sp)
.L800AA160:
/* AAD60 800AA160 8FAB0050 */  lw         $t3, 0x50($sp)
/* AAD64 800AA164 8FAA0060 */  lw         $t2, 0x60($sp)
/* AAD68 800AA168 016A082A */  slt        $at, $t3, $t2
/* AAD6C 800AA16C 10200049 */  beqz       $at, .L800AA294
/* AAD70 800AA170 00000000 */   nop
/* AAD74 800AA174 8FAD0070 */  lw         $t5, 0x70($sp)
/* AAD78 800AA178 19A00034 */  blez       $t5, .L800AA24C
/* AAD7C 800AA17C 00000000 */   nop
/* AAD80 800AA180 8FA90060 */  lw         $t1, 0x60($sp)
/* AAD84 800AA184 8FA80050 */  lw         $t0, 0x50($sp)
/* AAD88 800AA188 0128C023 */  subu       $t8, $t1, $t0
/* AAD8C 800AA18C AFB80060 */  sw         $t8, 0x60($sp)
/* AAD90 800AA190 8FAF0040 */  lw         $t7, 0x40($sp)
/* AAD94 800AA194 8FA50060 */  lw         $a1, 0x60($sp)
/* AAD98 800AA198 8DF90030 */  lw         $t9, 0x30($t7)
/* AAD9C 800AA19C 8DE40044 */  lw         $a0, 0x44($t7)
/* AADA0 800AA1A0 8DE60034 */  lw         $a2, 0x34($t7)
/* AADA4 800AA1A4 0320F809 */  jalr       $t9
/* AADA8 800AA1A8 00000000 */   nop
/* AADAC 800AA1AC AFA2005C */  sw         $v0, 0x5c($sp)
/* AADB0 800AA1B0 8FAC005C */  lw         $t4, 0x5c($sp)
/* AADB4 800AA1B4 318E0007 */  andi       $t6, $t4, 7
/* AADB8 800AA1B8 AFAE0058 */  sw         $t6, 0x58($sp)
/* AADBC 800AA1BC 8FAB0060 */  lw         $t3, 0x60($sp)
/* AADC0 800AA1C0 8FAA0058 */  lw         $t2, 0x58($sp)
/* AADC4 800AA1C4 016A6821 */  addu       $t5, $t3, $t2
/* AADC8 800AA1C8 AFAD0060 */  sw         $t5, 0x60($sp)
/* AADCC 800AA1CC 8FA90064 */  lw         $t1, 0x64($sp)
/* AADD0 800AA1D0 25280008 */  addiu      $t0, $t1, 8
/* AADD4 800AA1D4 AFA80064 */  sw         $t0, 0x64($sp)
/* AADD8 800AA1D8 AFA90024 */  sw         $t1, 0x24($sp)
/* AADDC 800AA1DC 8FB8006C */  lw         $t8, 0x6c($sp)
/* AADE0 800AA1E0 8FAE0024 */  lw         $t6, 0x24($sp)
/* AADE4 800AA1E4 3C010800 */  lui        $at, 0x800
/* AADE8 800AA1E8 870F0000 */  lh         $t7, ($t8)
/* AADEC 800AA1EC 31F9FFFF */  andi       $t9, $t7, 0xffff
/* AADF0 800AA1F0 03216025 */  or         $t4, $t9, $at
/* AADF4 800AA1F4 ADCC0000 */  sw         $t4, ($t6)
/* AADF8 800AA1F8 8FAB0060 */  lw         $t3, 0x60($sp)
/* AADFC 800AA1FC 8FB80024 */  lw         $t8, 0x24($sp)
/* AAE00 800AA200 316A0007 */  andi       $t2, $t3, 7
/* AAE04 800AA204 016A6823 */  subu       $t5, $t3, $t2
/* AAE08 800AA208 25A90008 */  addiu      $t1, $t5, 8
/* AAE0C 800AA20C 3128FFFF */  andi       $t0, $t1, 0xffff
/* AAE10 800AA210 AF080004 */  sw         $t0, 4($t8)
/* AAE14 800AA214 8FAF0064 */  lw         $t7, 0x64($sp)
/* AAE18 800AA218 25F90008 */  addiu      $t9, $t7, 8
/* AAE1C 800AA21C AFB90064 */  sw         $t9, 0x64($sp)
/* AAE20 800AA220 AFAF0020 */  sw         $t7, 0x20($sp)
/* AAE24 800AA224 8FAE0020 */  lw         $t6, 0x20($sp)
/* AAE28 800AA228 3C0C0400 */  lui        $t4, 0x400
/* AAE2C 800AA22C ADCC0000 */  sw         $t4, ($t6)
/* AAE30 800AA230 8FAB005C */  lw         $t3, 0x5c($sp)
/* AAE34 800AA234 8FAA0058 */  lw         $t2, 0x58($sp)
/* AAE38 800AA238 8FA90020 */  lw         $t1, 0x20($sp)
/* AAE3C 800AA23C 016A6823 */  subu       $t5, $t3, $t2
/* AAE40 800AA240 AD2D0004 */  sw         $t5, 4($t1)
/* AAE44 800AA244 10000002 */  b          .L800AA250
/* AAE48 800AA248 00000000 */   nop
.L800AA24C:
/* AAE4C 800AA24C AFA00058 */  sw         $zero, 0x58($sp)
.L800AA250:
/* AAE50 800AA250 8FA8006C */  lw         $t0, 0x6c($sp)
/* AAE54 800AA254 8FAF0058 */  lw         $t7, 0x58($sp)
/* AAE58 800AA258 85180000 */  lh         $t8, ($t0)
/* AAE5C 800AA25C 030FC821 */  addu       $t9, $t8, $t7
/* AAE60 800AA260 A5190000 */  sh         $t9, ($t0)
/* AAE64 800AA264 8FAC0040 */  lw         $t4, 0x40($sp)
/* AAE68 800AA268 8FAB0070 */  lw         $t3, 0x70($sp)
/* AAE6C 800AA26C 8D8E0038 */  lw         $t6, 0x38($t4)
/* AAE70 800AA270 01CB5021 */  addu       $t2, $t6, $t3
/* AAE74 800AA274 AD8A0038 */  sw         $t2, 0x38($t4)
/* AAE78 800AA278 8FAD0040 */  lw         $t5, 0x40($sp)
/* AAE7C 800AA27C 8FB80070 */  lw         $t8, 0x70($sp)
/* AAE80 800AA280 8DA90044 */  lw         $t1, 0x44($t5)
/* AAE84 800AA284 00187840 */  sll        $t7, $t8, 1
/* AAE88 800AA288 012FC821 */  addu       $t9, $t1, $t7
/* AAE8C 800AA28C 10000007 */  b          .L800AA2AC
/* AAE90 800AA290 ADB90044 */   sw        $t9, 0x44($t5)
.L800AA294:
/* AAE94 800AA294 8FA80040 */  lw         $t0, 0x40($sp)
/* AAE98 800AA298 8FAB0070 */  lw         $t3, 0x70($sp)
/* AAE9C 800AA29C 8D0E0044 */  lw         $t6, 0x44($t0)
/* AAEA0 800AA2A0 000B5040 */  sll        $t2, $t3, 1
/* AAEA4 800AA2A4 01CA6021 */  addu       $t4, $t6, $t2
/* AAEA8 800AA2A8 AD0C0044 */  sw         $t4, 0x44($t0)
.L800AA2AC:
/* AAEAC 800AA2AC 8FB80050 */  lw         $t8, 0x50($sp)
/* AAEB0 800AA2B0 1300001C */  beqz       $t8, .L800AA324
/* AAEB4 800AA2B4 00000000 */   nop
/* AAEB8 800AA2B8 8FA90070 */  lw         $t1, 0x70($sp)
/* AAEBC 800AA2BC 8FB90050 */  lw         $t9, 0x50($sp)
/* AAEC0 800AA2C0 00097840 */  sll        $t7, $t1, 1
/* AAEC4 800AA2C4 01F96823 */  subu       $t5, $t7, $t9
/* AAEC8 800AA2C8 AFAD004C */  sw         $t5, 0x4c($sp)
/* AAECC 800AA2CC 8FAB004C */  lw         $t3, 0x4c($sp)
/* AAED0 800AA2D0 05610002 */  bgez       $t3, .L800AA2DC
/* AAED4 800AA2D4 00000000 */   nop
/* AAED8 800AA2D8 AFA0004C */  sw         $zero, 0x4c($sp)
.L800AA2DC:
/* AAEDC 800AA2DC 8FAE0064 */  lw         $t6, 0x64($sp)
/* AAEE0 800AA2E0 25CA0008 */  addiu      $t2, $t6, 8
/* AAEE4 800AA2E4 AFAA0064 */  sw         $t2, 0x64($sp)
/* AAEE8 800AA2E8 AFAE001C */  sw         $t6, 0x1c($sp)
/* AAEEC 800AA2EC 8FAC006C */  lw         $t4, 0x6c($sp)
/* AAEF0 800AA2F0 8FB8004C */  lw         $t8, 0x4c($sp)
/* AAEF4 800AA2F4 3C0100FF */  lui        $at, 0xff
/* AAEF8 800AA2F8 85880000 */  lh         $t0, ($t4)
/* AAEFC 800AA2FC 3421FFFF */  ori        $at, $at, 0xffff
/* AAF00 800AA300 8FAD001C */  lw         $t5, 0x1c($sp)
/* AAF04 800AA304 01184821 */  addu       $t1, $t0, $t8
/* AAF08 800AA308 01217824 */  and        $t7, $t1, $at
/* AAF0C 800AA30C 3C010200 */  lui        $at, 0x200
/* AAF10 800AA310 01E1C825 */  or         $t9, $t7, $at
/* AAF14 800AA314 ADB90000 */  sw         $t9, ($t5)
/* AAF18 800AA318 8FAB0050 */  lw         $t3, 0x50($sp)
/* AAF1C 800AA31C 8FAE001C */  lw         $t6, 0x1c($sp)
/* AAF20 800AA320 ADCB0004 */  sw         $t3, 4($t6)
.L800AA324:
/* AAF24 800AA324 10000003 */  b          .L800AA334
/* AAF28 800AA328 8FA20064 */   lw        $v0, 0x64($sp)
/* AAF2C 800AA32C 10000001 */  b          .L800AA334
/* AAF30 800AA330 00000000 */   nop
.L800AA334:
/* AAF34 800AA334 8FBF0014 */  lw         $ra, 0x14($sp)
/* AAF38 800AA338 27BD0068 */  addiu      $sp, $sp, 0x68
/* AAF3C 800AA33C 03E00008 */  jr         $ra
/* AAF40 800AA340 00000000 */   nop

glabel func_800AA344
/* AAF44 800AA344 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AAF48 800AA348 AFBF001C */  sw         $ra, 0x1c($sp)
/* AAF4C 800AA34C AFA40030 */  sw         $a0, 0x30($sp)
/* AAF50 800AA350 AFA50034 */  sw         $a1, 0x34($sp)
/* AAF54 800AA354 AFA60038 */  sw         $a2, 0x38($sp)
/* AAF58 800AA358 AFB00018 */  sw         $s0, 0x18($sp)
/* AAF5C 800AA35C 8FAE0030 */  lw         $t6, 0x30($sp)
/* AAF60 800AA360 AFAE002C */  sw         $t6, 0x2c($sp)
/* AAF64 800AA364 8FAF0030 */  lw         $t7, 0x30($sp)
/* AAF68 800AA368 AFAF0028 */  sw         $t7, 0x28($sp)
/* AAF6C 800AA36C 8FB00034 */  lw         $s0, 0x34($sp)
/* AAF70 800AA370 24010004 */  addiu      $at, $zero, 4
/* AAF74 800AA374 1201007C */  beq        $s0, $at, .L800AA568
/* AAF78 800AA378 00000000 */   nop
/* AAF7C 800AA37C 24010005 */  addiu      $at, $zero, 5
/* AAF80 800AA380 12010003 */  beq        $s0, $at, .L800AA390
/* AAF84 800AA384 00000000 */   nop
/* AAF88 800AA388 100000A9 */  b          .L800AA630
/* AAF8C 800AA38C 00000000 */   nop
.L800AA390:
/* AAF90 800AA390 8FB80038 */  lw         $t8, 0x38($sp)
/* AAF94 800AA394 8FB9002C */  lw         $t9, 0x2c($sp)
/* AAF98 800AA398 AF380028 */  sw         $t8, 0x28($t9)
/* AAF9C 800AA39C 8FA8002C */  lw         $t0, 0x2c($sp)
/* AAFA0 800AA3A0 8D090028 */  lw         $t1, 0x28($t0)
/* AAFA4 800AA3A4 8D2A0000 */  lw         $t2, ($t1)
/* AAFA8 800AA3A8 AD0A0044 */  sw         $t2, 0x44($t0)
/* AAFAC 800AA3AC 8FAB002C */  lw         $t3, 0x2c($sp)
/* AAFB0 800AA3B0 AD600038 */  sw         $zero, 0x38($t3)
/* AAFB4 800AA3B4 8FAC002C */  lw         $t4, 0x2c($sp)
/* AAFB8 800AA3B8 8D8D0028 */  lw         $t5, 0x28($t4)
/* AAFBC 800AA3BC 91B00008 */  lbu        $s0, 8($t5)
/* AAFC0 800AA3C0 12000006 */  beqz       $s0, .L800AA3DC
/* AAFC4 800AA3C4 00000000 */   nop
/* AAFC8 800AA3C8 24010001 */  addiu      $at, $zero, 1
/* AAFCC 800AA3CC 12010040 */  beq        $s0, $at, .L800AA4D0
/* AAFD0 800AA3D0 00000000 */   nop
/* AAFD4 800AA3D4 10000060 */  b          .L800AA558
/* AAFD8 800AA3D8 00000000 */   nop
.L800AA3DC:
/* AAFDC 800AA3DC 8FAF0028 */  lw         $t7, 0x28($sp)
/* AAFE0 800AA3E0 3C0E800B */  lui        $t6, %hi(D_800A9660)
/* AAFE4 800AA3E4 25CE9660 */  addiu      $t6, $t6, %lo(D_800A9660)
/* AAFE8 800AA3E8 ADEE0004 */  sw         $t6, 4($t7)
/* AAFEC 800AA3EC 8FB8002C */  lw         $t8, 0x2c($sp)
/* AAFF0 800AA3F0 24010009 */  addiu      $at, $zero, 9
/* AAFF4 800AA3F4 8F190028 */  lw         $t9, 0x28($t8)
/* AAFF8 800AA3F8 8F290004 */  lw         $t1, 4($t9)
/* AAFFC 800AA3FC 0121001A */  div        $zero, $t1, $at
/* AB000 800AA400 00005012 */  mflo       $t2
/* AB004 800AA404 000A40C0 */  sll        $t0, $t2, 3
/* AB008 800AA408 010A4021 */  addu       $t0, $t0, $t2
/* AB00C 800AA40C AF280004 */  sw         $t0, 4($t9)
/* AB010 800AA410 8FAB002C */  lw         $t3, 0x2c($sp)
/* AB014 800AA414 8D6C0028 */  lw         $t4, 0x28($t3)
/* AB018 800AA418 8D8D0010 */  lw         $t5, 0x10($t4)
/* AB01C 800AA41C 8DAE0000 */  lw         $t6, ($t5)
/* AB020 800AA420 8DB80004 */  lw         $t8, 4($t5)
/* AB024 800AA424 000E7840 */  sll        $t7, $t6, 1
/* AB028 800AA428 01F80019 */  multu      $t7, $t8
/* AB02C 800AA42C 00004812 */  mflo       $t1
/* AB030 800AA430 000950C0 */  sll        $t2, $t1, 3
/* AB034 800AA434 AD6A002C */  sw         $t2, 0x2c($t3)
/* AB038 800AA438 8FA8002C */  lw         $t0, 0x2c($sp)
/* AB03C 800AA43C 8D190028 */  lw         $t9, 0x28($t0)
/* AB040 800AA440 8F2C000C */  lw         $t4, 0xc($t9)
/* AB044 800AA444 11800019 */  beqz       $t4, .L800AA4AC
/* AB048 800AA448 00000000 */   nop
/* AB04C 800AA44C 8FAE002C */  lw         $t6, 0x2c($sp)
/* AB050 800AA450 8DCD0028 */  lw         $t5, 0x28($t6)
/* AB054 800AA454 8DAF000C */  lw         $t7, 0xc($t5)
/* AB058 800AA458 8DF80000 */  lw         $t8, ($t7)
/* AB05C 800AA45C ADD8001C */  sw         $t8, 0x1c($t6)
/* AB060 800AA460 8FA9002C */  lw         $t1, 0x2c($sp)
/* AB064 800AA464 8D2A0028 */  lw         $t2, 0x28($t1)
/* AB068 800AA468 8D4B000C */  lw         $t3, 0xc($t2)
/* AB06C 800AA46C 8D680004 */  lw         $t0, 4($t3)
/* AB070 800AA470 AD280020 */  sw         $t0, 0x20($t1)
/* AB074 800AA474 8FB9002C */  lw         $t9, 0x2c($sp)
/* AB078 800AA478 8F2C0028 */  lw         $t4, 0x28($t9)
/* AB07C 800AA47C 8D8D000C */  lw         $t5, 0xc($t4)
/* AB080 800AA480 8DAF0008 */  lw         $t7, 8($t5)
/* AB084 800AA484 AF2F0024 */  sw         $t7, 0x24($t9)
/* AB088 800AA488 8FB8002C */  lw         $t8, 0x2c($sp)
/* AB08C 800AA48C 24060020 */  addiu      $a2, $zero, 0x20
/* AB090 800AA490 8F0E0028 */  lw         $t6, 0x28($t8)
/* AB094 800AA494 8F050018 */  lw         $a1, 0x18($t8)
/* AB098 800AA498 8DC4000C */  lw         $a0, 0xc($t6)
/* AB09C 800AA49C 0C02BE24 */  jal        func_800AF890
/* AB0A0 800AA4A0 2484000C */   addiu     $a0, $a0, 0xc
/* AB0A4 800AA4A4 10000008 */  b          .L800AA4C8
/* AB0A8 800AA4A8 00000000 */   nop
.L800AA4AC:
/* AB0AC 800AA4AC 8FAA002C */  lw         $t2, 0x2c($sp)
/* AB0B0 800AA4B0 AD400024 */  sw         $zero, 0x24($t2)
/* AB0B4 800AA4B4 8FAB002C */  lw         $t3, 0x2c($sp)
/* AB0B8 800AA4B8 8D700024 */  lw         $s0, 0x24($t3)
/* AB0BC 800AA4BC AD700020 */  sw         $s0, 0x20($t3)
/* AB0C0 800AA4C0 8FA8002C */  lw         $t0, 0x2c($sp)
/* AB0C4 800AA4C4 AD10001C */  sw         $s0, 0x1c($t0)
.L800AA4C8:
/* AB0C8 800AA4C8 10000025 */  b          .L800AA560
/* AB0CC 800AA4CC 00000000 */   nop
.L800AA4D0:
/* AB0D0 800AA4D0 8FAC0028 */  lw         $t4, 0x28($sp)
/* AB0D4 800AA4D4 3C09800B */  lui        $t1, %hi(func_800A9D08)
/* AB0D8 800AA4D8 25299D08 */  addiu      $t1, $t1, %lo(func_800A9D08)
/* AB0DC 800AA4DC AD890004 */  sw         $t1, 4($t4)
/* AB0E0 800AA4E0 8FAD002C */  lw         $t5, 0x2c($sp)
/* AB0E4 800AA4E4 8DAF0028 */  lw         $t7, 0x28($t5)
/* AB0E8 800AA4E8 8DF9000C */  lw         $t9, 0xc($t7)
/* AB0EC 800AA4EC 13200011 */  beqz       $t9, .L800AA534
/* AB0F0 800AA4F0 00000000 */   nop
/* AB0F4 800AA4F4 8FAE002C */  lw         $t6, 0x2c($sp)
/* AB0F8 800AA4F8 8DD80028 */  lw         $t8, 0x28($t6)
/* AB0FC 800AA4FC 8F0A000C */  lw         $t2, 0xc($t8)
/* AB100 800AA500 8D4B0000 */  lw         $t3, ($t2)
/* AB104 800AA504 ADCB001C */  sw         $t3, 0x1c($t6)
/* AB108 800AA508 8FA8002C */  lw         $t0, 0x2c($sp)
/* AB10C 800AA50C 8D090028 */  lw         $t1, 0x28($t0)
/* AB110 800AA510 8D2C000C */  lw         $t4, 0xc($t1)
/* AB114 800AA514 8D8D0004 */  lw         $t5, 4($t4)
/* AB118 800AA518 AD0D0020 */  sw         $t5, 0x20($t0)
/* AB11C 800AA51C 8FAF002C */  lw         $t7, 0x2c($sp)
/* AB120 800AA520 8DF90028 */  lw         $t9, 0x28($t7)
/* AB124 800AA524 8F38000C */  lw         $t8, 0xc($t9)
/* AB128 800AA528 8F0A0008 */  lw         $t2, 8($t8)
/* AB12C 800AA52C 10000008 */  b          .L800AA550
/* AB130 800AA530 ADEA0024 */   sw        $t2, 0x24($t7)
.L800AA534:
/* AB134 800AA534 8FAB002C */  lw         $t3, 0x2c($sp)
/* AB138 800AA538 AD600024 */  sw         $zero, 0x24($t3)
/* AB13C 800AA53C 8FAE002C */  lw         $t6, 0x2c($sp)
/* AB140 800AA540 8DD00024 */  lw         $s0, 0x24($t6)
/* AB144 800AA544 ADD00020 */  sw         $s0, 0x20($t6)
/* AB148 800AA548 8FA9002C */  lw         $t1, 0x2c($sp)
/* AB14C 800AA54C AD30001C */  sw         $s0, 0x1c($t1)
.L800AA550:
/* AB150 800AA550 10000003 */  b          .L800AA560
/* AB154 800AA554 00000000 */   nop
.L800AA558:
/* AB158 800AA558 10000001 */  b          .L800AA560
/* AB15C 800AA55C 00000000 */   nop
.L800AA560:
/* AB160 800AA560 10000035 */  b          .L800AA638
/* AB164 800AA564 00000000 */   nop
.L800AA568:
/* AB168 800AA568 8FAC002C */  lw         $t4, 0x2c($sp)
/* AB16C 800AA56C AD80003C */  sw         $zero, 0x3c($t4)
/* AB170 800AA570 8FA8002C */  lw         $t0, 0x2c($sp)
/* AB174 800AA574 240D0001 */  addiu      $t5, $zero, 1
/* AB178 800AA578 AD0D0040 */  sw         $t5, 0x40($t0)
/* AB17C 800AA57C 8FB9002C */  lw         $t9, 0x2c($sp)
/* AB180 800AA580 AF200038 */  sw         $zero, 0x38($t9)
/* AB184 800AA584 8FB8002C */  lw         $t8, 0x2c($sp)
/* AB188 800AA588 8F0A0028 */  lw         $t2, 0x28($t8)
/* AB18C 800AA58C 11400026 */  beqz       $t2, .L800AA628
/* AB190 800AA590 00000000 */   nop
/* AB194 800AA594 8FAF002C */  lw         $t7, 0x2c($sp)
/* AB198 800AA598 8DEB0028 */  lw         $t3, 0x28($t7)
/* AB19C 800AA59C 8D6E0000 */  lw         $t6, ($t3)
/* AB1A0 800AA5A0 ADEE0044 */  sw         $t6, 0x44($t7)
/* AB1A4 800AA5A4 8FA9002C */  lw         $t1, 0x2c($sp)
/* AB1A8 800AA5A8 8D2C0028 */  lw         $t4, 0x28($t1)
/* AB1AC 800AA5AC 918D0008 */  lbu        $t5, 8($t4)
/* AB1B0 800AA5B0 15A0000D */  bnez       $t5, .L800AA5E8
/* AB1B4 800AA5B4 00000000 */   nop
/* AB1B8 800AA5B8 8FA8002C */  lw         $t0, 0x2c($sp)
/* AB1BC 800AA5BC 8D190028 */  lw         $t9, 0x28($t0)
/* AB1C0 800AA5C0 8F38000C */  lw         $t8, 0xc($t9)
/* AB1C4 800AA5C4 13000006 */  beqz       $t8, .L800AA5E0
/* AB1C8 800AA5C8 00000000 */   nop
/* AB1CC 800AA5CC 8FAA002C */  lw         $t2, 0x2c($sp)
/* AB1D0 800AA5D0 8D4B0028 */  lw         $t3, 0x28($t2)
/* AB1D4 800AA5D4 8D6E000C */  lw         $t6, 0xc($t3)
/* AB1D8 800AA5D8 8DCF0008 */  lw         $t7, 8($t6)
/* AB1DC 800AA5DC AD4F0024 */  sw         $t7, 0x24($t2)
.L800AA5E0:
/* AB1E0 800AA5E0 10000011 */  b          .L800AA628
/* AB1E4 800AA5E4 00000000 */   nop
.L800AA5E8:
/* AB1E8 800AA5E8 8FA9002C */  lw         $t1, 0x2c($sp)
/* AB1EC 800AA5EC 24010001 */  addiu      $at, $zero, 1
/* AB1F0 800AA5F0 8D2C0028 */  lw         $t4, 0x28($t1)
/* AB1F4 800AA5F4 918D0008 */  lbu        $t5, 8($t4)
/* AB1F8 800AA5F8 15A1000B */  bne        $t5, $at, .L800AA628
/* AB1FC 800AA5FC 00000000 */   nop
/* AB200 800AA600 8FA8002C */  lw         $t0, 0x2c($sp)
/* AB204 800AA604 8D190028 */  lw         $t9, 0x28($t0)
/* AB208 800AA608 8F38000C */  lw         $t8, 0xc($t9)
/* AB20C 800AA60C 13000006 */  beqz       $t8, .L800AA628
/* AB210 800AA610 00000000 */   nop
/* AB214 800AA614 8FAB002C */  lw         $t3, 0x2c($sp)
/* AB218 800AA618 8D6E0028 */  lw         $t6, 0x28($t3)
/* AB21C 800AA61C 8DCF000C */  lw         $t7, 0xc($t6)
/* AB220 800AA620 8DEA0008 */  lw         $t2, 8($t7)
/* AB224 800AA624 AD6A0024 */  sw         $t2, 0x24($t3)
.L800AA628:
/* AB228 800AA628 10000003 */  b          .L800AA638
/* AB22C 800AA62C 00000000 */   nop
.L800AA630:
/* AB230 800AA630 10000001 */  b          .L800AA638
/* AB234 800AA634 00000000 */   nop
.L800AA638:
/* AB238 800AA638 10000001 */  b          .L800AA640
/* AB23C 800AA63C 00000000 */   nop
.L800AA640:
/* AB240 800AA640 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB244 800AA644 8FB00018 */  lw         $s0, 0x18($sp)
/* AB248 800AA648 27BD0030 */  addiu      $sp, $sp, 0x30
/* AB24C 800AA64C 03E00008 */  jr         $ra
/* AB250 800AA650 00000000 */   nop

glabel func_800AA654
/* AB254 800AA654 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AB258 800AA658 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB25C 800AA65C AFA40038 */  sw         $a0, 0x38($sp)
/* AB260 800AA660 AFA5003C */  sw         $a1, 0x3c($sp)
/* AB264 800AA664 AFA60040 */  sw         $a2, 0x40($sp)
/* AB268 800AA668 AFA70044 */  sw         $a3, 0x44($sp)
/* AB26C 800AA66C 8FAE0044 */  lw         $t6, 0x44($sp)
/* AB270 800AA670 19C0002F */  blez       $t6, .L800AA730
/* AB274 800AA674 00000000 */   nop
/* AB278 800AA678 8FAF003C */  lw         $t7, 0x3c($sp)
/* AB27C 800AA67C 8FA50044 */  lw         $a1, 0x44($sp)
/* AB280 800AA680 8DF90030 */  lw         $t9, 0x30($t7)
/* AB284 800AA684 8DE40044 */  lw         $a0, 0x44($t7)
/* AB288 800AA688 8DE60034 */  lw         $a2, 0x34($t7)
/* AB28C 800AA68C 0320F809 */  jalr       $t9
/* AB290 800AA690 00000000 */   nop
/* AB294 800AA694 AFA20030 */  sw         $v0, 0x30($sp)
/* AB298 800AA698 8FB80030 */  lw         $t8, 0x30($sp)
/* AB29C 800AA69C 33080007 */  andi       $t0, $t8, 7
/* AB2A0 800AA6A0 AFA80034 */  sw         $t0, 0x34($sp)
/* AB2A4 800AA6A4 8FA90044 */  lw         $t1, 0x44($sp)
/* AB2A8 800AA6A8 8FAA0034 */  lw         $t2, 0x34($sp)
/* AB2AC 800AA6AC 012A5821 */  addu       $t3, $t1, $t2
/* AB2B0 800AA6B0 AFAB0044 */  sw         $t3, 0x44($sp)
/* AB2B4 800AA6B4 8FAC0038 */  lw         $t4, 0x38($sp)
/* AB2B8 800AA6B8 258D0008 */  addiu      $t5, $t4, 8
/* AB2BC 800AA6BC AFAD0038 */  sw         $t5, 0x38($sp)
/* AB2C0 800AA6C0 AFAC002C */  sw         $t4, 0x2c($sp)
/* AB2C4 800AA6C4 87AE004E */  lh         $t6, 0x4e($sp)
/* AB2C8 800AA6C8 8FB8002C */  lw         $t8, 0x2c($sp)
/* AB2CC 800AA6CC 3C010800 */  lui        $at, 0x800
/* AB2D0 800AA6D0 31CFFFFF */  andi       $t7, $t6, 0xffff
/* AB2D4 800AA6D4 01E1C825 */  or         $t9, $t7, $at
/* AB2D8 800AA6D8 AF190000 */  sw         $t9, ($t8)
/* AB2DC 800AA6DC 8FA80044 */  lw         $t0, 0x44($sp)
/* AB2E0 800AA6E0 8FAD002C */  lw         $t5, 0x2c($sp)
/* AB2E4 800AA6E4 31090007 */  andi       $t1, $t0, 7
/* AB2E8 800AA6E8 01095023 */  subu       $t2, $t0, $t1
/* AB2EC 800AA6EC 254B0008 */  addiu      $t3, $t2, 8
/* AB2F0 800AA6F0 316CFFFF */  andi       $t4, $t3, 0xffff
/* AB2F4 800AA6F4 ADAC0004 */  sw         $t4, 4($t5)
/* AB2F8 800AA6F8 8FAE0038 */  lw         $t6, 0x38($sp)
/* AB2FC 800AA6FC 25CF0008 */  addiu      $t7, $t6, 8
/* AB300 800AA700 AFAF0038 */  sw         $t7, 0x38($sp)
/* AB304 800AA704 AFAE0028 */  sw         $t6, 0x28($sp)
/* AB308 800AA708 8FB80028 */  lw         $t8, 0x28($sp)
/* AB30C 800AA70C 3C190400 */  lui        $t9, 0x400
/* AB310 800AA710 AF190000 */  sw         $t9, ($t8)
/* AB314 800AA714 8FA80030 */  lw         $t0, 0x30($sp)
/* AB318 800AA718 8FA90034 */  lw         $t1, 0x34($sp)
/* AB31C 800AA71C 8FAB0028 */  lw         $t3, 0x28($sp)
/* AB320 800AA720 01095023 */  subu       $t2, $t0, $t1
/* AB324 800AA724 AD6A0004 */  sw         $t2, 4($t3)
/* AB328 800AA728 10000002 */  b          .L800AA734
/* AB32C 800AA72C 00000000 */   nop
.L800AA730:
/* AB330 800AA730 AFA00034 */  sw         $zero, 0x34($sp)
.L800AA734:
/* AB334 800AA734 8FAC0050 */  lw         $t4, 0x50($sp)
/* AB338 800AA738 318D0002 */  andi       $t5, $t4, 2
/* AB33C 800AA73C 11A0000F */  beqz       $t5, .L800AA77C
/* AB340 800AA740 00000000 */   nop
/* AB344 800AA744 8FAE0038 */  lw         $t6, 0x38($sp)
/* AB348 800AA748 25CF0008 */  addiu      $t7, $t6, 8
/* AB34C 800AA74C AFAF0038 */  sw         $t7, 0x38($sp)
/* AB350 800AA750 AFAE0024 */  sw         $t6, 0x24($sp)
/* AB354 800AA754 8FB80024 */  lw         $t8, 0x24($sp)
/* AB358 800AA758 3C190F00 */  lui        $t9, 0xf00
/* AB35C 800AA75C AF190000 */  sw         $t9, ($t8)
/* AB360 800AA760 8FA8003C */  lw         $t0, 0x3c($sp)
/* AB364 800AA764 8FAB0024 */  lw         $t3, 0x24($sp)
/* AB368 800AA768 3C011FFF */  lui        $at, 0x1fff
/* AB36C 800AA76C 8D090018 */  lw         $t1, 0x18($t0)
/* AB370 800AA770 3421FFFF */  ori        $at, $at, 0xffff
/* AB374 800AA774 01215024 */  and        $t2, $t1, $at
/* AB378 800AA778 AD6A0004 */  sw         $t2, 4($t3)
.L800AA77C:
/* AB37C 800AA77C 8FAC0038 */  lw         $t4, 0x38($sp)
/* AB380 800AA780 258D0008 */  addiu      $t5, $t4, 8
/* AB384 800AA784 AFAD0038 */  sw         $t5, 0x38($sp)
/* AB388 800AA788 AFAC0020 */  sw         $t4, 0x20($sp)
/* AB38C 800AA78C 87AE004E */  lh         $t6, 0x4e($sp)
/* AB390 800AA790 8FAF0034 */  lw         $t7, 0x34($sp)
/* AB394 800AA794 8FA90020 */  lw         $t1, 0x20($sp)
/* AB398 800AA798 3C010800 */  lui        $at, 0x800
/* AB39C 800AA79C 01CFC821 */  addu       $t9, $t6, $t7
/* AB3A0 800AA7A0 3338FFFF */  andi       $t8, $t9, 0xffff
/* AB3A4 800AA7A4 03014025 */  or         $t0, $t8, $at
/* AB3A8 800AA7A8 AD280000 */  sw         $t0, ($t1)
/* AB3AC 800AA7AC 87AA004A */  lh         $t2, 0x4a($sp)
/* AB3B0 800AA7B0 8FAD0040 */  lw         $t5, 0x40($sp)
/* AB3B4 800AA7B4 8FB80020 */  lw         $t8, 0x20($sp)
/* AB3B8 800AA7B8 314BFFFF */  andi       $t3, $t2, 0xffff
/* AB3BC 800AA7BC 000D7040 */  sll        $t6, $t5, 1
/* AB3C0 800AA7C0 31CFFFFF */  andi       $t7, $t6, 0xffff
/* AB3C4 800AA7C4 000B6400 */  sll        $t4, $t3, 0x10
/* AB3C8 800AA7C8 018FC825 */  or         $t9, $t4, $t7
/* AB3CC 800AA7CC AF190004 */  sw         $t9, 4($t8)
/* AB3D0 800AA7D0 8FA80038 */  lw         $t0, 0x38($sp)
/* AB3D4 800AA7D4 25090008 */  addiu      $t1, $t0, 8
/* AB3D8 800AA7D8 AFA90038 */  sw         $t1, 0x38($sp)
/* AB3DC 800AA7DC AFA8001C */  sw         $t0, 0x1c($sp)
/* AB3E0 800AA7E0 8FAA0050 */  lw         $t2, 0x50($sp)
/* AB3E4 800AA7E4 8FAC001C */  lw         $t4, 0x1c($sp)
/* AB3E8 800AA7E8 3C010100 */  lui        $at, 0x100
/* AB3EC 800AA7EC 314B00FF */  andi       $t3, $t2, 0xff
/* AB3F0 800AA7F0 000B6C00 */  sll        $t5, $t3, 0x10
/* AB3F4 800AA7F4 01A17025 */  or         $t6, $t5, $at
/* AB3F8 800AA7F8 AD8E0000 */  sw         $t6, ($t4)
/* AB3FC 800AA7FC 8FAF003C */  lw         $t7, 0x3c($sp)
/* AB400 800AA800 8FA8001C */  lw         $t0, 0x1c($sp)
/* AB404 800AA804 3C011FFF */  lui        $at, 0x1fff
/* AB408 800AA808 8DF90014 */  lw         $t9, 0x14($t7)
/* AB40C 800AA80C 3421FFFF */  ori        $at, $at, 0xffff
/* AB410 800AA810 0321C024 */  and        $t8, $t9, $at
/* AB414 800AA814 AD180004 */  sw         $t8, 4($t0)
/* AB418 800AA818 8FA9003C */  lw         $t1, 0x3c($sp)
/* AB41C 800AA81C AD200040 */  sw         $zero, 0x40($t1)
/* AB420 800AA820 10000003 */  b          .L800AA830
/* AB424 800AA824 8FA20038 */   lw        $v0, 0x38($sp)
/* AB428 800AA828 10000001 */  b          .L800AA830
/* AB42C 800AA82C 00000000 */   nop
.L800AA830:
/* AB430 800AA830 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB434 800AA834 27BD0038 */  addiu      $sp, $sp, 0x38
/* AB438 800AA838 03E00008 */  jr         $ra
/* AB43C 800AA83C 00000000 */   nop

glabel func_800AA840
/* AB440 800AA840 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AB444 800AA844 AFBF001C */  sw         $ra, 0x1c($sp)
/* AB448 800AA848 AFA40030 */  sw         $a0, 0x30($sp)
/* AB44C 800AA84C AFA50034 */  sw         $a1, 0x34($sp)
/* AB450 800AA850 AFA60038 */  sw         $a2, 0x38($sp)
/* AB454 800AA854 AFA7003C */  sw         $a3, 0x3c($sp)
/* AB458 800AA858 8FAE0030 */  lw         $t6, 0x30($sp)
/* AB45C 800AA85C 05C00004 */  bltz       $t6, .L800AA870
/* AB460 800AA860 00000000 */   nop
/* AB464 800AA864 29C10100 */  slti       $at, $t6, 0x100
/* AB468 800AA868 14200007 */  bnez       $at, .L800AA888
/* AB46C 800AA86C 00000000 */   nop
.L800AA870:
/* AB470 800AA870 24040023 */  addiu      $a0, $zero, 0x23
/* AB474 800AA874 24050001 */  addiu      $a1, $zero, 1
/* AB478 800AA878 0C02B5EC */  jal        func_800AD7B0
/* AB47C 800AA87C 8FA60030 */   lw        $a2, 0x30($sp)
/* AB480 800AA880 10000076 */  b          .L800AAA5C
/* AB484 800AA884 00000000 */   nop
.L800AA888:
/* AB488 800AA888 3C0F800D */  lui        $t7, %hi(D_800CD300)
/* AB48C 800AA88C 8DEFD300 */  lw         $t7, %lo(D_800CD300)($t7)
/* AB490 800AA890 11E00003 */  beqz       $t7, .L800AA8A0
/* AB494 800AA894 00000000 */   nop
/* AB498 800AA898 10000070 */  b          .L800AAA5C
/* AB49C 800AA89C 00000000 */   nop
.L800AA8A0:
/* AB4A0 800AA8A0 8FA40034 */  lw         $a0, 0x34($sp)
/* AB4A4 800AA8A4 8FA50038 */  lw         $a1, 0x38($sp)
/* AB4A8 800AA8A8 0C02B42C */  jal        func_800AD0B0
/* AB4AC 800AA8AC 8FA6003C */   lw        $a2, 0x3c($sp)
/* AB4B0 800AA8B0 3C04801A */  lui        $a0, %hi(D_801A3840)
/* AB4B4 800AA8B4 3C05801A */  lui        $a1, %hi(D_801A3858)
/* AB4B8 800AA8B8 24A53858 */  addiu      $a1, $a1, %lo(D_801A3858)
/* AB4BC 800AA8BC 24843840 */  addiu      $a0, $a0, %lo(D_801A3840)
/* AB4C0 800AA8C0 0C02B42C */  jal        func_800AD0B0
/* AB4C4 800AA8C4 24060001 */   addiu     $a2, $zero, 1
/* AB4C8 800AA8C8 3C18800D */  lui        $t8, %hi(D_800CD330)
/* AB4CC 800AA8CC 8F18D330 */  lw         $t8, %lo(D_800CD330)($t8)
/* AB4D0 800AA8D0 17000003 */  bnez       $t8, .L800AA8E0
/* AB4D4 800AA8D4 00000000 */   nop
/* AB4D8 800AA8D8 0C02AADC */  jal        func_800AAB70
/* AB4DC 800AA8DC 00000000 */   nop
.L800AA8E0:
/* AB4E0 800AA8E0 3C05801A */  lui        $a1, %hi(D_801A3840)
/* AB4E4 800AA8E4 3C062222 */  lui        $a2, 0x2222
/* AB4E8 800AA8E8 34C62222 */  ori        $a2, $a2, 0x2222
/* AB4EC 800AA8EC 24A53840 */  addiu      $a1, $a1, %lo(D_801A3840)
/* AB4F0 800AA8F0 0C02AD08 */  jal        func_800AB420
/* AB4F4 800AA8F4 24040008 */   addiu     $a0, $zero, 8
/* AB4F8 800AA8F8 2419FFFF */  addiu      $t9, $zero, -1
/* AB4FC 800AA8FC AFB90028 */  sw         $t9, 0x28($sp)
/* AB500 800AA900 0C02B798 */  jal        func_800ADE60
/* AB504 800AA904 00002025 */   or        $a0, $zero, $zero
/* AB508 800AA908 AFA20024 */  sw         $v0, 0x24($sp)
/* AB50C 800AA90C 8FA80024 */  lw         $t0, 0x24($sp)
/* AB510 800AA910 8FA90030 */  lw         $t1, 0x30($sp)
/* AB514 800AA914 0109082A */  slt        $at, $t0, $t1
/* AB518 800AA918 10200006 */  beqz       $at, .L800AA934
/* AB51C 800AA91C 00000000 */   nop
/* AB520 800AA920 8FAA0024 */  lw         $t2, 0x24($sp)
/* AB524 800AA924 AFAA0028 */  sw         $t2, 0x28($sp)
/* AB528 800AA928 00002025 */  or         $a0, $zero, $zero
/* AB52C 800AA92C 0C02B74C */  jal        func_800ADD30
/* AB530 800AA930 8FA50030 */   lw        $a1, 0x30($sp)
.L800AA934:
/* AB534 800AA934 0C02C0C8 */  jal        func_800B0320
/* AB538 800AA938 00000000 */   nop
/* AB53C 800AA93C AFA2002C */  sw         $v0, 0x2c($sp)
/* AB540 800AA940 240B0001 */  addiu      $t3, $zero, 1
/* AB544 800AA944 3C01800D */  lui        $at, %hi(D_800CD300)
/* AB548 800AA948 AC2BD300 */  sw         $t3, %lo(D_800CD300)($at)
/* AB54C 800AA94C 3C0C801A */  lui        $t4, %hi(D_801A20A0)
/* AB550 800AA950 258C20A0 */  addiu      $t4, $t4, %lo(D_801A20A0)
/* AB554 800AA954 3C01800D */  lui        $at, %hi(D_800CD304)
/* AB558 800AA958 AC2CD304 */  sw         $t4, %lo(D_800CD304)($at)
/* AB55C 800AA95C 8FAD0034 */  lw         $t5, 0x34($sp)
/* AB560 800AA960 3C01800D */  lui        $at, %hi(D_800CD308)
/* AB564 800AA964 AC2DD308 */  sw         $t5, %lo(D_800CD308)($at)
/* AB568 800AA968 3C0E801A */  lui        $t6, %hi(D_801A3840)
/* AB56C 800AA96C 25CE3840 */  addiu      $t6, $t6, %lo(D_801A3840)
/* AB570 800AA970 3C01800D */  lui        $at, %hi(D_800CD30C)
/* AB574 800AA974 AC2ED30C */  sw         $t6, %lo(D_800CD30C)($at)
/* AB578 800AA978 3C0F801A */  lui        $t7, %hi(D_801A3868)
/* AB57C 800AA97C 25EF3868 */  addiu      $t7, $t7, %lo(D_801A3868)
/* AB580 800AA980 3C01800D */  lui        $at, %hi(D_800CD310)
/* AB584 800AA984 AC2FD310 */  sw         $t7, %lo(D_800CD310)($at)
/* AB588 800AA988 3C18800B */  lui        $t8, %hi(D_800AB240)
/* AB58C 800AA98C 2718B240 */  addiu      $t8, $t8, %lo(D_800AB240)
/* AB590 800AA990 3C01800D */  lui        $at, %hi(D_800CD314)
/* AB594 800AA994 AC38D314 */  sw         $t8, %lo(D_800CD314)($at)
/* AB598 800AA998 3C19800B */  lui        $t9, %hi(func_800AE530)
/* AB59C 800AA99C 2739E530 */  addiu      $t9, $t9, %lo(func_800AE530)
/* AB5A0 800AA9A0 3C01800D */  lui        $at, %hi(D_800CD318)
/* AB5A4 800AA9A4 AC39D318 */  sw         $t9, %lo(D_800CD318)($at)
/* AB5A8 800AA9A8 3C08801A */  lui        $t0, %hi(D_801A2250)
/* AB5AC 800AA9AC 8FAA0030 */  lw         $t2, 0x30($sp)
/* AB5B0 800AA9B0 25082250 */  addiu      $t0, $t0, %lo(D_801A2250)
/* AB5B4 800AA9B4 25091000 */  addiu      $t1, $t0, 0x1000
/* AB5B8 800AA9B8 3C04801A */  lui        $a0, %hi(D_801A20A0)
/* AB5BC 800AA9BC 3C06800B */  lui        $a2, %hi(D_800AAD70)
/* AB5C0 800AA9C0 3C07800D */  lui        $a3, %hi(D_800CD300)
/* AB5C4 800AA9C4 24E7D300 */  addiu      $a3, $a3, %lo(D_800CD300)
/* AB5C8 800AA9C8 24C6AD70 */  addiu      $a2, $a2, %lo(D_800AAD70)
/* AB5CC 800AA9CC 248420A0 */  addiu      $a0, $a0, %lo(D_801A20A0)
/* AB5D0 800AA9D0 AFA90010 */  sw         $t1, 0x10($sp)
/* AB5D4 800AA9D4 00002825 */  or         $a1, $zero, $zero
/* AB5D8 800AA9D8 0C0268D0 */  jal        func_8009A340
/* AB5DC 800AA9DC AFAA0014 */   sw        $t2, 0x14($sp)
/* AB5E0 800AA9E0 3C04801A */  lui        $a0, %hi(D_801A20A0)
/* AB5E4 800AA9E4 0C02E4BC */  jal        func_800B92F0
/* AB5E8 800AA9E8 248420A0 */   addiu     $a0, $a0, %lo(D_801A20A0)
/* AB5EC 800AA9EC 8FAD0030 */  lw         $t5, 0x30($sp)
/* AB5F0 800AA9F0 3C0B801A */  lui        $t3, %hi(D_801A3400)
/* AB5F4 800AA9F4 256B3400 */  addiu      $t3, $t3, %lo(D_801A3400)
/* AB5F8 800AA9F8 256C0400 */  addiu      $t4, $t3, 0x400
/* AB5FC 800AA9FC 3C04801A */  lui        $a0, %hi(D_801A3250)
/* AB600 800AAA00 3C06800B */  lui        $a2, %hi(func_800AAA6C)
/* AB604 800AAA04 25AEFFFF */  addiu      $t6, $t5, -1
/* AB608 800AAA08 AFAE0014 */  sw         $t6, 0x14($sp)
/* AB60C 800AAA0C 24C6AA6C */  addiu      $a2, $a2, %lo(func_800AAA6C)
/* AB610 800AAA10 24843250 */  addiu      $a0, $a0, %lo(D_801A3250)
/* AB614 800AAA14 AFAC0010 */  sw         $t4, 0x10($sp)
/* AB618 800AAA18 00002825 */  or         $a1, $zero, $zero
/* AB61C 800AAA1C 0C0268D0 */  jal        func_8009A340
/* AB620 800AAA20 00003825 */   or        $a3, $zero, $zero
/* AB624 800AAA24 3C04801A */  lui        $a0, %hi(D_801A3250)
/* AB628 800AAA28 0C02E4BC */  jal        func_800B92F0
/* AB62C 800AAA2C 24843250 */   addiu     $a0, $a0, %lo(D_801A3250)
/* AB630 800AAA30 0C02C0D0 */  jal        func_800B0340
/* AB634 800AAA34 8FA4002C */   lw        $a0, 0x2c($sp)
/* AB638 800AAA38 8FAF0028 */  lw         $t7, 0x28($sp)
/* AB63C 800AAA3C 2401FFFF */  addiu      $at, $zero, -1
/* AB640 800AAA40 11E10004 */  beq        $t7, $at, .L800AAA54
/* AB644 800AAA44 00000000 */   nop
/* AB648 800AAA48 00002025 */  or         $a0, $zero, $zero
/* AB64C 800AAA4C 0C02B74C */  jal        func_800ADD30
/* AB650 800AAA50 8FA50028 */   lw        $a1, 0x28($sp)
.L800AAA54:
/* AB654 800AAA54 10000001 */  b          .L800AAA5C
/* AB658 800AAA58 00000000 */   nop
.L800AAA5C:
/* AB65C 800AAA5C 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB660 800AAA60 27BD0030 */  addiu      $sp, $sp, 0x30
/* AB664 800AAA64 03E00008 */  jr         $ra
/* AB668 800AAA68 00000000 */   nop

glabel func_800AAA6C
/* AB66C 800AAA6C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AB670 800AAA70 AFBF001C */  sw         $ra, 0x1c($sp)
/* AB674 800AAA74 AFA40030 */  sw         $a0, 0x30($sp)
/* AB678 800AAA78 AFB00018 */  sw         $s0, 0x18($sp)
/* AB67C 800AAA7C 3C04801A */  lui        $a0, %hi(D_801A3800)
/* AB680 800AAA80 3C05801A */  lui        $a1, %hi(D_801A3818)
/* AB684 800AAA84 24A53818 */  addiu      $a1, $a1, %lo(D_801A3818)
/* AB688 800AAA88 24843800 */  addiu      $a0, $a0, %lo(D_801A3800)
/* AB68C 800AAA8C 0C02B42C */  jal        func_800AD0B0
/* AB690 800AAA90 24060001 */   addiu     $a2, $zero, 1
/* AB694 800AAA94 3C04801A */  lui        $a0, %hi(D_801A3820)
/* AB698 800AAA98 3C05801A */  lui        $a1, %hi(D_801A3838)
/* AB69C 800AAA9C 24A53838 */  addiu      $a1, $a1, %lo(D_801A3838)
/* AB6A0 800AAAA0 24843820 */  addiu      $a0, $a0, %lo(D_801A3820)
/* AB6A4 800AAAA4 0C02B42C */  jal        func_800AD0B0
/* AB6A8 800AAAA8 24060001 */   addiu     $a2, $zero, 1
/* AB6AC 800AAAAC 3C05801A */  lui        $a1, %hi(D_801A3800)
/* AB6B0 800AAAB0 24A53800 */  addiu      $a1, $a1, %lo(D_801A3800)
/* AB6B4 800AAAB4 24040012 */  addiu      $a0, $zero, 0x12
/* AB6B8 800AAAB8 0C02AD08 */  jal        func_800AB420
/* AB6BC 800AAABC 00003025 */   or        $a2, $zero, $zero
/* AB6C0 800AAAC0 3C05801A */  lui        $a1, %hi(D_801A3820)
/* AB6C4 800AAAC4 24A53820 */  addiu      $a1, $a1, %lo(D_801A3820)
/* AB6C8 800AAAC8 24040013 */  addiu      $a0, $zero, 0x13
/* AB6CC 800AAACC 0C02AD08 */  jal        func_800AB420
/* AB6D0 800AAAD0 00003025 */   or        $a2, $zero, $zero
.L800AAAD4:
/* AB6D4 800AAAD4 3C04801A */  lui        $a0, %hi(D_801A3800)
/* AB6D8 800AAAD8 24843800 */  addiu      $a0, $a0, %lo(D_801A3800)
/* AB6DC 800AAADC 00002825 */  or         $a1, $zero, $zero
/* AB6E0 800AAAE0 0C025D30 */  jal        func_800974C0
/* AB6E4 800AAAE4 24060001 */   addiu     $a2, $zero, 1
/* AB6E8 800AAAE8 0C02AAF2 */  jal        func_800AABC8
/* AB6EC 800AAAEC 00000000 */   nop
/* AB6F0 800AAAF0 AFA0002C */  sw         $zero, 0x2c($sp)
/* AB6F4 800AAAF4 8FAE002C */  lw         $t6, 0x2c($sp)
/* AB6F8 800AAAF8 15C0000C */  bnez       $t6, .L800AAB2C
/* AB6FC 800AAAFC 00000000 */   nop
.L800AAB00:
/* AB700 800AAB00 27A40028 */  addiu      $a0, $sp, 0x28
/* AB704 800AAB04 24050001 */  addiu      $a1, $zero, 1
/* AB708 800AAB08 0C02C4C8 */  jal        func_800B1320
/* AB70C 800AAB0C 24060009 */   addiu     $a2, $zero, 9
/* AB710 800AAB10 8FAF002C */  lw         $t7, 0x2c($sp)
/* AB714 800AAB14 00408025 */  or         $s0, $v0, $zero
/* AB718 800AAB18 01F0C021 */  addu       $t8, $t7, $s0
/* AB71C 800AAB1C AFB8002C */  sw         $t8, 0x2c($sp)
/* AB720 800AAB20 8FB9002C */  lw         $t9, 0x2c($sp)
/* AB724 800AAB24 1320FFF6 */  beqz       $t9, .L800AAB00
/* AB728 800AAB28 00000000 */   nop
.L800AAB2C:
/* AB72C 800AAB2C 3C04801A */  lui        $a0, %hi(D_801A3820)
/* AB730 800AAB30 24843820 */  addiu      $a0, $a0, %lo(D_801A3820)
/* AB734 800AAB34 00002825 */  or         $a1, $zero, $zero
/* AB738 800AAB38 0C025D30 */  jal        func_800974C0
/* AB73C 800AAB3C 24060001 */   addiu     $a2, $zero, 1
/* AB740 800AAB40 0C02AB05 */  jal        func_800AAC14
/* AB744 800AAB44 00000000 */   nop
/* AB748 800AAB48 1000FFE2 */  b          .L800AAAD4
/* AB74C 800AAB4C 00000000 */   nop
/* AB750 800AAB50 10000001 */  b          .L800AAB58
/* AB754 800AAB54 00000000 */   nop
.L800AAB58:
/* AB758 800AAB58 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB75C 800AAB5C 8FB00018 */  lw         $s0, 0x18($sp)
/* AB760 800AAB60 27BD0030 */  addiu      $sp, $sp, 0x30
/* AB764 800AAB64 03E00008 */  jr         $ra
/* AB768 800AAB68 00000000 */   nop
/* AB76C 800AAB6C 00000000 */  nop
