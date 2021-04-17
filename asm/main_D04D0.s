.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CF8D0
/* D04D0 800CF8D0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D04D4 800CF8D4 AFB1001C */  sw         $s1, 0x1c($sp)
/* D04D8 800CF8D8 AFBF0024 */  sw         $ra, 0x24($sp)
/* D04DC 800CF8DC AFB20020 */  sw         $s2, 0x20($sp)
/* D04E0 800CF8E0 AFB00018 */  sw         $s0, 0x18($sp)
/* D04E4 800CF8E4 AFA00030 */  sw         $zero, 0x30($sp)
/* D04E8 800CF8E8 3C11800E */  lui        $s1, %hi(D_800DB1F4)
/* D04EC 800CF8EC 3C0EA440 */  lui        $t6, %hi(D_A4400010)
/* D04F0 800CF8F0 8E31B1F4 */  lw         $s1, %lo(D_800DB1F4)($s1)
/* D04F4 800CF8F4 8DCF0010 */  lw         $t7, %lo(D_A4400010)($t6)
/* D04F8 800CF8F8 8E300008 */  lw         $s0, 8($s1)
/* D04FC 800CF8FC 31F80001 */  andi       $t8, $t7, 1
/* D0500 800CF900 AFB80030 */  sw         $t8, 0x30($sp)
/* D0504 800CF904 0C030C38 */  jal        func_800C30E0
/* D0508 800CF908 8E240004 */   lw        $a0, 4($s1)
/* D050C 800CF90C 8FB90030 */  lw         $t9, 0x30($sp)
/* D0510 800CF910 00409025 */  or         $s2, $v0, $zero
/* D0514 800CF914 00194080 */  sll        $t0, $t9, 2
/* D0518 800CF918 01194021 */  addu       $t0, $t0, $t9
/* D051C 800CF91C 00084080 */  sll        $t0, $t0, 2
/* D0520 800CF920 02084821 */  addu       $t1, $s0, $t0
/* D0524 800CF924 8D2A0028 */  lw         $t2, 0x28($t1)
/* D0528 800CF928 01525821 */  addu       $t3, $t2, $s2
/* D052C 800CF92C AFAB003C */  sw         $t3, 0x3c($sp)
/* D0530 800CF930 962C0000 */  lhu        $t4, ($s1)
/* D0534 800CF934 318D0002 */  andi       $t5, $t4, 2
/* D0538 800CF938 11A00008 */  beqz       $t5, .L800CF95C
/* D053C 800CF93C 00000000 */   nop
/* D0540 800CF940 8E0F0020 */  lw         $t7, 0x20($s0)
/* D0544 800CF944 8E2E0020 */  lw         $t6, 0x20($s1)
/* D0548 800CF948 2401F000 */  addiu      $at, $zero, -0x1000
/* D054C 800CF94C 01E1C024 */  and        $t8, $t7, $at
/* D0550 800CF950 01D8C825 */  or         $t9, $t6, $t8
/* D0554 800CF954 10000003 */  b          .L800CF964
/* D0558 800CF958 AE390020 */   sw        $t9, 0x20($s1)
.L800CF95C:
/* D055C 800CF95C 8E080020 */  lw         $t0, 0x20($s0)
/* D0560 800CF960 AE280020 */  sw         $t0, 0x20($s1)
.L800CF964:
/* D0564 800CF964 96290000 */  lhu        $t1, ($s1)
/* D0568 800CF968 312A0004 */  andi       $t2, $t1, 4
/* D056C 800CF96C 11400041 */  beqz       $t2, .L800CFA74
/* D0570 800CF970 00000000 */   nop
/* D0574 800CF974 8FAB0030 */  lw         $t3, 0x30($sp)
/* D0578 800CF978 000B6080 */  sll        $t4, $t3, 2
/* D057C 800CF97C 018B6021 */  addu       $t4, $t4, $t3
/* D0580 800CF980 000C6080 */  sll        $t4, $t4, 2
/* D0584 800CF984 020C6821 */  addu       $t5, $s0, $t4
/* D0588 800CF988 8DAF002C */  lw         $t7, 0x2c($t5)
/* D058C 800CF98C 31EE0FFF */  andi       $t6, $t7, 0xfff
/* D0590 800CF990 448E3000 */  mtc1       $t6, $f6
/* D0594 800CF994 AFAE0034 */  sw         $t6, 0x34($sp)
/* D0598 800CF998 C6240024 */  lwc1       $f4, 0x24($s1)
/* D059C 800CF99C 05C10005 */  bgez       $t6, .L800CF9B4
/* D05A0 800CF9A0 46803220 */   cvt.s.w   $f8, $f6
/* D05A4 800CF9A4 3C014F80 */  lui        $at, 0x4f80
/* D05A8 800CF9A8 44815000 */  mtc1       $at, $f10
/* D05AC 800CF9AC 00000000 */  nop
/* D05B0 800CF9B0 460A4200 */  add.s      $f8, $f8, $f10
.L800CF9B4:
/* D05B4 800CF9B4 46082402 */  mul.s      $f16, $f4, $f8
/* D05B8 800CF9B8 24190001 */  addiu      $t9, $zero, 1
/* D05BC 800CF9BC 4458F800 */  cfc1       $t8, $31
/* D05C0 800CF9C0 44D9F800 */  ctc1       $t9, $31
/* D05C4 800CF9C4 00000000 */  nop
/* D05C8 800CF9C8 460084A4 */  cvt.w.s    $f18, $f16
/* D05CC 800CF9CC 4459F800 */  cfc1       $t9, $31
/* D05D0 800CF9D0 00000000 */  nop
/* D05D4 800CF9D4 33210004 */  andi       $at, $t9, 4
/* D05D8 800CF9D8 33390078 */  andi       $t9, $t9, 0x78
/* D05DC 800CF9DC 13200013 */  beqz       $t9, .L800CFA2C
/* D05E0 800CF9E0 3C014F00 */   lui       $at, 0x4f00
/* D05E4 800CF9E4 44819000 */  mtc1       $at, $f18
/* D05E8 800CF9E8 24190001 */  addiu      $t9, $zero, 1
/* D05EC 800CF9EC 46128481 */  sub.s      $f18, $f16, $f18
/* D05F0 800CF9F0 44D9F800 */  ctc1       $t9, $31
/* D05F4 800CF9F4 00000000 */  nop
/* D05F8 800CF9F8 460094A4 */  cvt.w.s    $f18, $f18
/* D05FC 800CF9FC 4459F800 */  cfc1       $t9, $31
/* D0600 800CFA00 00000000 */  nop
/* D0604 800CFA04 33210004 */  andi       $at, $t9, 4
/* D0608 800CFA08 33390078 */  andi       $t9, $t9, 0x78
/* D060C 800CFA0C 17200005 */  bnez       $t9, .L800CFA24
/* D0610 800CFA10 00000000 */   nop
/* D0614 800CFA14 44199000 */  mfc1       $t9, $f18
/* D0618 800CFA18 3C018000 */  lui        $at, 0x8000
/* D061C 800CFA1C 10000007 */  b          .L800CFA3C
/* D0620 800CFA20 0321C825 */   or        $t9, $t9, $at
.L800CFA24:
/* D0624 800CFA24 10000005 */  b          .L800CFA3C
/* D0628 800CFA28 2419FFFF */   addiu     $t9, $zero, -1
.L800CFA2C:
/* D062C 800CFA2C 44199000 */  mfc1       $t9, $f18
/* D0630 800CFA30 00000000 */  nop
/* D0634 800CFA34 0720FFFB */  bltz       $t9, .L800CFA24
/* D0638 800CFA38 00000000 */   nop
.L800CFA3C:
/* D063C 800CFA3C AE39002C */  sw         $t9, 0x2c($s1)
/* D0640 800CFA40 8FA90030 */  lw         $t1, 0x30($sp)
/* D0644 800CFA44 8E28002C */  lw         $t0, 0x2c($s1)
/* D0648 800CFA48 2401F000 */  addiu      $at, $zero, -0x1000
/* D064C 800CFA4C 00095080 */  sll        $t2, $t1, 2
/* D0650 800CFA50 01495021 */  addu       $t2, $t2, $t1
/* D0654 800CFA54 000A5080 */  sll        $t2, $t2, 2
/* D0658 800CFA58 020A5821 */  addu       $t3, $s0, $t2
/* D065C 800CFA5C 8D6C002C */  lw         $t4, 0x2c($t3)
/* D0660 800CFA60 44D8F800 */  ctc1       $t8, $31
/* D0664 800CFA64 01816824 */  and        $t5, $t4, $at
/* D0668 800CFA68 010D7825 */  or         $t7, $t0, $t5
/* D066C 800CFA6C 10000008 */  b          .L800CFA90
/* D0670 800CFA70 AE2F002C */   sw        $t7, 0x2c($s1)
.L800CFA74:
/* D0674 800CFA74 8FAE0030 */  lw         $t6, 0x30($sp)
/* D0678 800CFA78 000EC080 */  sll        $t8, $t6, 2
/* D067C 800CFA7C 030EC021 */  addu       $t8, $t8, $t6
/* D0680 800CFA80 0018C080 */  sll        $t8, $t8, 2
/* D0684 800CFA84 0218C821 */  addu       $t9, $s0, $t8
/* D0688 800CFA88 8F29002C */  lw         $t1, 0x2c($t9)
/* D068C 800CFA8C AE29002C */  sw         $t1, 0x2c($s1)
.L800CFA90:
/* D0690 800CFA90 8E0A001C */  lw         $t2, 0x1c($s0)
/* D0694 800CFA94 AFAA0038 */  sw         $t2, 0x38($sp)
/* D0698 800CFA98 962B0000 */  lhu        $t3, ($s1)
/* D069C 800CFA9C 316C0020 */  andi       $t4, $t3, 0x20
/* D06A0 800CFAA0 11800002 */  beqz       $t4, .L800CFAAC
/* D06A4 800CFAA4 00000000 */   nop
/* D06A8 800CFAA8 AFA00038 */  sw         $zero, 0x38($sp)
.L800CFAAC:
/* D06AC 800CFAAC 96280000 */  lhu        $t0, ($s1)
/* D06B0 800CFAB0 310D0040 */  andi       $t5, $t0, 0x40
/* D06B4 800CFAB4 11A00005 */  beqz       $t5, .L800CFACC
/* D06B8 800CFAB8 00000000 */   nop
/* D06BC 800CFABC AE20002C */  sw         $zero, 0x2c($s1)
/* D06C0 800CFAC0 0C030C38 */  jal        func_800C30E0
/* D06C4 800CFAC4 8E240004 */   lw        $a0, 4($s1)
/* D06C8 800CFAC8 AFA2003C */  sw         $v0, 0x3c($sp)
.L800CFACC:
/* D06CC 800CFACC 962F0000 */  lhu        $t7, ($s1)
/* D06D0 800CFAD0 31EE0080 */  andi       $t6, $t7, 0x80
/* D06D4 800CFAD4 11C00009 */  beqz       $t6, .L800CFAFC
/* D06D8 800CFAD8 00000000 */   nop
/* D06DC 800CFADC 96380028 */  lhu        $t8, 0x28($s1)
/* D06E0 800CFAE0 3C0103FF */  lui        $at, 0x3ff
/* D06E4 800CFAE4 8E240004 */  lw         $a0, 4($s1)
/* D06E8 800CFAE8 0018CC00 */  sll        $t9, $t8, 0x10
/* D06EC 800CFAEC 03214824 */  and        $t1, $t9, $at
/* D06F0 800CFAF0 0C030C38 */  jal        func_800C30E0
/* D06F4 800CFAF4 AE29002C */   sw        $t1, 0x2c($s1)
/* D06F8 800CFAF8 AFA2003C */  sw         $v0, 0x3c($sp)
.L800CFAFC:
/* D06FC 800CFAFC 8FAA003C */  lw         $t2, 0x3c($sp)
/* D0700 800CFB00 3C0BA440 */  lui        $t3, %hi(D_A4400004)
/* D0704 800CFB04 3C08A440 */  lui        $t0, %hi(D_A4400008)
/* D0708 800CFB08 AD6A0004 */  sw         $t2, %lo(D_A4400004)($t3)
/* D070C 800CFB0C 8E0C0008 */  lw         $t4, 8($s0)
/* D0710 800CFB10 3C0FA440 */  lui        $t7, 0xa440
/* D0714 800CFB14 3C18A440 */  lui        $t8, 0xa440
/* D0718 800CFB18 AD0C0008 */  sw         $t4, %lo(D_A4400008)($t0)
/* D071C 800CFB1C 8E0D000C */  lw         $t5, 0xc($s0)
/* D0720 800CFB20 3C09A440 */  lui        $t1, 0xa440
/* D0724 800CFB24 3C01800E */  lui        $at, 0x800e
/* D0728 800CFB28 ADED0014 */  sw         $t5, 0x14($t7)
/* D072C 800CFB2C 8E0E0010 */  lw         $t6, 0x10($s0)
/* D0730 800CFB30 AF0E0018 */  sw         $t6, 0x18($t8)
/* D0734 800CFB34 8E190014 */  lw         $t9, 0x14($s0)
/* D0738 800CFB38 AD39001C */  sw         $t9, 0x1c($t1)
/* D073C 800CFB3C 8E0A0018 */  lw         $t2, 0x18($s0)
/* D0740 800CFB40 3C19A440 */  lui        $t9, 0xa440
/* D0744 800CFB44 AD6A0020 */  sw         $t2, 0x20($t3)
/* D0748 800CFB48 8FAC0038 */  lw         $t4, 0x38($sp)
/* D074C 800CFB4C AD0C0024 */  sw         $t4, 0x24($t0)
/* D0750 800CFB50 8FAD0030 */  lw         $t5, 0x30($sp)
/* D0754 800CFB54 000D7880 */  sll        $t7, $t5, 2
/* D0758 800CFB58 01ED7821 */  addu       $t7, $t7, $t5
/* D075C 800CFB5C 000F7880 */  sll        $t7, $t7, 2
/* D0760 800CFB60 020F7021 */  addu       $t6, $s0, $t7
/* D0764 800CFB64 8DD80030 */  lw         $t8, 0x30($t6)
/* D0768 800CFB68 AF380028 */  sw         $t8, 0x28($t9)
/* D076C 800CFB6C 8FA90030 */  lw         $t1, 0x30($sp)
/* D0770 800CFB70 00095080 */  sll        $t2, $t1, 2
/* D0774 800CFB74 01495021 */  addu       $t2, $t2, $t1
/* D0778 800CFB78 000A5080 */  sll        $t2, $t2, 2
/* D077C 800CFB7C 020A5821 */  addu       $t3, $s0, $t2
/* D0780 800CFB80 8D6C0034 */  lw         $t4, 0x34($t3)
/* D0784 800CFB84 3C0AA440 */  lui        $t2, 0xa440
/* D0788 800CFB88 AD0C002C */  sw         $t4, 0x2c($t0)
/* D078C 800CFB8C 8FAD0030 */  lw         $t5, 0x30($sp)
/* D0790 800CFB90 3C0CA440 */  lui        $t4, 0xa440
/* D0794 800CFB94 000D7880 */  sll        $t7, $t5, 2
/* D0798 800CFB98 01ED7821 */  addu       $t7, $t7, $t5
/* D079C 800CFB9C 000F7880 */  sll        $t7, $t7, 2
/* D07A0 800CFBA0 020F7021 */  addu       $t6, $s0, $t7
/* D07A4 800CFBA4 8DD80038 */  lw         $t8, 0x38($t6)
/* D07A8 800CFBA8 3C0DA440 */  lui        $t5, 0xa440
/* D07AC 800CFBAC 3C0F800E */  lui        $t7, 0x800e
/* D07B0 800CFBB0 AF38000C */  sw         $t8, 0xc($t9)
/* D07B4 800CFBB4 8E290020 */  lw         $t1, 0x20($s1)
/* D07B8 800CFBB8 3C18800E */  lui        $t8, 0x800e
/* D07BC 800CFBBC 3C0E800E */  lui        $t6, 0x800e
/* D07C0 800CFBC0 AD490030 */  sw         $t1, 0x30($t2)
/* D07C4 800CFBC4 8E2B002C */  lw         $t3, 0x2c($s1)
/* D07C8 800CFBC8 AD8B0034 */  sw         $t3, 0x34($t4)
/* D07CC 800CFBCC 8E28000C */  lw         $t0, 0xc($s1)
/* D07D0 800CFBD0 ADA80000 */  sw         $t0, ($t5)
/* D07D4 800CFBD4 8DEFB1F0 */  lw         $t7, -0x4e10($t7)
/* D07D8 800CFBD8 AC2FB1F4 */  sw         $t7, -0x4e0c($at)
/* D07DC 800CFBDC 3C01800E */  lui        $at, %hi(D_800DB1F0)
/* D07E0 800CFBE0 AC31B1F0 */  sw         $s1, %lo(D_800DB1F0)($at)
/* D07E4 800CFBE4 8F18B1F0 */  lw         $t8, -0x4e10($t8)
/* D07E8 800CFBE8 8DCEB1F4 */  lw         $t6, -0x4e0c($t6)
/* D07EC 800CFBEC 270A0030 */  addiu      $t2, $t8, 0x30
.L800CFBF0:
/* D07F0 800CFBF0 8F010000 */  lw         $at, ($t8)
/* D07F4 800CFBF4 2718000C */  addiu      $t8, $t8, 0xc
/* D07F8 800CFBF8 25CE000C */  addiu      $t6, $t6, 0xc
/* D07FC 800CFBFC ADC1FFF4 */  sw         $at, -0xc($t6)
/* D0800 800CFC00 8F01FFF8 */  lw         $at, -8($t8)
/* D0804 800CFC04 ADC1FFF8 */  sw         $at, -8($t6)
/* D0808 800CFC08 8F01FFFC */  lw         $at, -4($t8)
/* D080C 800CFC0C 170AFFF8 */  bne        $t8, $t2, .L800CFBF0
/* D0810 800CFC10 ADC1FFFC */   sw        $at, -4($t6)
/* D0814 800CFC14 8FBF0024 */  lw         $ra, 0x24($sp)
/* D0818 800CFC18 8FB00018 */  lw         $s0, 0x18($sp)
/* D081C 800CFC1C 8FB1001C */  lw         $s1, 0x1c($sp)
/* D0820 800CFC20 8FB20020 */  lw         $s2, 0x20($sp)
/* D0824 800CFC24 03E00008 */  jr         $ra
/* D0828 800CFC28 27BD0048 */   addiu     $sp, $sp, 0x48
/* D082C 800CFC2C 00000000 */  nop
