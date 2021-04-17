.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BF8F0
/* C04F0 800BF8F0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* C04F4 800BF8F4 3C0E800E */  lui        $t6, %hi(D_800DA090)
/* C04F8 800BF8F8 8DCEA090 */  lw         $t6, %lo(D_800DA090)($t6)
/* C04FC 800BF8FC AFBF0024 */  sw         $ra, 0x24($sp)
/* C0500 800BF900 AFA40070 */  sw         $a0, 0x70($sp)
/* C0504 800BF904 AFA50074 */  sw         $a1, 0x74($sp)
/* C0508 800BF908 AFA60078 */  sw         $a2, 0x78($sp)
/* C050C 800BF90C 11C00003 */  beqz       $t6, .L800BF91C
/* C0510 800BF910 AFA00068 */   sw        $zero, 0x68($sp)
/* C0514 800BF914 1000004E */  b          .L800BFA50
/* C0518 800BF918 00001025 */   or        $v0, $zero, $zero
.L800BF91C:
/* C051C 800BF91C 240F0001 */  addiu      $t7, $zero, 1
/* C0520 800BF920 3C01800E */  lui        $at, %hi(D_800DA090)
/* C0524 800BF924 0C0338BC */  jal        func_800CE2F0
/* C0528 800BF928 AC2FA090 */   sw        $t7, %lo(D_800DA090)($at)
/* C052C 800BF92C AFA20060 */  sw         $v0, 0x60($sp)
/* C0530 800BF930 8FB80060 */  lw         $t8, 0x60($sp)
/* C0534 800BF934 AFA30064 */  sw         $v1, 0x64($sp)
/* C0538 800BF938 8FB90064 */  lw         $t9, 0x64($sp)
/* C053C 800BF93C 17000020 */  bnez       $t8, .L800BF9C0
/* C0540 800BF940 3C010165 */   lui       $at, 0x165
/* C0544 800BF944 3421A0BC */  ori        $at, $at, 0xa0bc
/* C0548 800BF948 0321082B */  sltu       $at, $t9, $at
/* C054C 800BF94C 1020001C */  beqz       $at, .L800BF9C0
/* C0550 800BF950 00000000 */   nop
/* C0554 800BF954 27A40028 */  addiu      $a0, $sp, 0x28
/* C0558 800BF958 27A5006C */  addiu      $a1, $sp, 0x6c
/* C055C 800BF95C 0C033544 */  jal        func_800CD510
/* C0560 800BF960 24060001 */   addiu     $a2, $zero, 1
/* C0564 800BF964 8FA80060 */  lw         $t0, 0x60($sp)
/* C0568 800BF968 8FA90064 */  lw         $t1, 0x64($sp)
/* C056C 800BF96C 3C0B0165 */  lui        $t3, 0x165
/* C0570 800BF970 356BA0BC */  ori        $t3, $t3, 0xa0bc
/* C0574 800BF974 240A0000 */  addiu      $t2, $zero, 0
/* C0578 800BF978 240C0000 */  addiu      $t4, $zero, 0
/* C057C 800BF97C 240D0000 */  addiu      $t5, $zero, 0
/* C0580 800BF980 27AE0028 */  addiu      $t6, $sp, 0x28
/* C0584 800BF984 27AF006C */  addiu      $t7, $sp, 0x6c
/* C0588 800BF988 01483023 */  subu       $a2, $t2, $t0
/* C058C 800BF98C 0169082B */  sltu       $at, $t3, $t1
/* C0590 800BF990 00C13023 */  subu       $a2, $a2, $at
/* C0594 800BF994 AFAF001C */  sw         $t7, 0x1c($sp)
/* C0598 800BF998 AFAE0018 */  sw         $t6, 0x18($sp)
/* C059C 800BF99C AFAD0014 */  sw         $t5, 0x14($sp)
/* C05A0 800BF9A0 AFAC0010 */  sw         $t4, 0x10($sp)
/* C05A4 800BF9A4 27A40040 */  addiu      $a0, $sp, 0x40
/* C05A8 800BF9A8 0C0347A4 */  jal        func_800D1E90
/* C05AC 800BF9AC 01693823 */   subu      $a3, $t3, $t1
/* C05B0 800BF9B0 27A40028 */  addiu      $a0, $sp, 0x28
/* C05B4 800BF9B4 27A5006C */  addiu      $a1, $sp, 0x6c
/* C05B8 800BF9B8 0C02F85C */  jal        func_800BE170
/* C05BC 800BF9BC 24060001 */   addiu     $a2, $zero, 1
.L800BF9C0:
/* C05C0 800BF9C0 24180004 */  addiu      $t8, $zero, 4
/* C05C4 800BF9C4 3C018014 */  lui        $at, %hi(D_80145421)
/* C05C8 800BF9C8 A0385421 */  sb         $t8, %lo(D_80145421)($at)
/* C05CC 800BF9CC 0C02FECC */  jal        func_800BFB30
/* C05D0 800BF9D0 00002025 */   or        $a0, $zero, $zero
/* C05D4 800BF9D4 3C058014 */  lui        $a1, %hi(D_801453E0)
/* C05D8 800BF9D8 24A553E0 */  addiu      $a1, $a1, %lo(D_801453E0)
/* C05DC 800BF9DC 0C030F00 */  jal        func_800C3C00
/* C05E0 800BF9E0 24040001 */   addiu     $a0, $zero, 1
/* C05E4 800BF9E4 AFA20068 */  sw         $v0, 0x68($sp)
/* C05E8 800BF9E8 8FA40070 */  lw         $a0, 0x70($sp)
/* C05EC 800BF9EC 27A5006C */  addiu      $a1, $sp, 0x6c
/* C05F0 800BF9F0 0C02F85C */  jal        func_800BE170
/* C05F4 800BF9F4 24060001 */   addiu     $a2, $zero, 1
/* C05F8 800BF9F8 3C058014 */  lui        $a1, %hi(D_801453E0)
/* C05FC 800BF9FC 24A553E0 */  addiu      $a1, $a1, %lo(D_801453E0)
/* C0600 800BFA00 0C030F00 */  jal        func_800C3C00
/* C0604 800BFA04 00002025 */   or        $a0, $zero, $zero
/* C0608 800BFA08 AFA20068 */  sw         $v0, 0x68($sp)
/* C060C 800BFA0C 8FA40070 */  lw         $a0, 0x70($sp)
/* C0610 800BFA10 27A5006C */  addiu      $a1, $sp, 0x6c
/* C0614 800BFA14 0C02F85C */  jal        func_800BE170
/* C0618 800BFA18 24060001 */   addiu     $a2, $zero, 1
/* C061C 800BFA1C 8FA40074 */  lw         $a0, 0x74($sp)
/* C0620 800BFA20 0C02FE98 */  jal        func_800BFA60
/* C0624 800BFA24 8FA50078 */   lw        $a1, 0x78($sp)
/* C0628 800BFA28 3C018014 */  lui        $at, %hi(D_80145420)
/* C062C 800BFA2C 0C02FF0C */  jal        func_800BFC30
/* C0630 800BFA30 A0205420 */   sb        $zero, %lo(D_80145420)($at)
/* C0634 800BFA34 3C048014 */  lui        $a0, %hi(D_80145448)
/* C0638 800BFA38 3C058014 */  lui        $a1, %hi(D_80145460)
/* C063C 800BFA3C 24A55460 */  addiu      $a1, $a1, %lo(D_80145460)
/* C0640 800BFA40 24845448 */  addiu      $a0, $a0, %lo(D_80145448)
/* C0644 800BFA44 0C033544 */  jal        func_800CD510
/* C0648 800BFA48 24060001 */   addiu     $a2, $zero, 1
/* C064C 800BFA4C 8FA20068 */  lw         $v0, 0x68($sp)
.L800BFA50:
/* C0650 800BFA50 8FBF0024 */  lw         $ra, 0x24($sp)
/* C0654 800BFA54 27BD0070 */  addiu      $sp, $sp, 0x70
/* C0658 800BFA58 03E00008 */  jr         $ra
/* C065C 800BFA5C 00000000 */   nop

glabel func_800BFA60
/* C0660 800BFA60 3C0F8014 */  lui        $t7, %hi(D_80145421)
/* C0664 800BFA64 91EF5421 */  lbu        $t7, %lo(D_80145421)($t7)
/* C0668 800BFA68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C066C 800BFA6C 3C0E8014 */  lui        $t6, %hi(D_801453E0)
/* C0670 800BFA70 25CE53E0 */  addiu      $t6, $t6, %lo(D_801453E0)
/* C0674 800BFA74 A3A00007 */  sb         $zero, 7($sp)
/* C0678 800BFA78 AFAE0014 */  sw         $t6, 0x14($sp)
/* C067C 800BFA7C 19E00028 */  blez       $t7, .L800BFB20
/* C0680 800BFA80 AFA00008 */   sw        $zero, 8($sp)
.L800BFA84:
/* C0684 800BFA84 8FB90014 */  lw         $t9, 0x14($sp)
/* C0688 800BFA88 27B8000C */  addiu      $t8, $sp, 0xc
/* C068C 800BFA8C 8B210000 */  lwl        $at, ($t9)
/* C0690 800BFA90 9B210003 */  lwr        $at, 3($t9)
/* C0694 800BFA94 AF010000 */  sw         $at, ($t8)
/* C0698 800BFA98 8B290004 */  lwl        $t1, 4($t9)
/* C069C 800BFA9C 9B290007 */  lwr        $t1, 7($t9)
/* C06A0 800BFAA0 AF090004 */  sw         $t1, 4($t8)
/* C06A4 800BFAA4 93AA000E */  lbu        $t2, 0xe($sp)
/* C06A8 800BFAA8 314B00C0 */  andi       $t3, $t2, 0xc0
/* C06AC 800BFAAC 000B6103 */  sra        $t4, $t3, 4
/* C06B0 800BFAB0 A0AC0003 */  sb         $t4, 3($a1)
/* C06B4 800BFAB4 90AD0003 */  lbu        $t5, 3($a1)
/* C06B8 800BFAB8 15A0000E */  bnez       $t5, .L800BFAF4
/* C06BC 800BFABC 00000000 */   nop
/* C06C0 800BFAC0 93AE0011 */  lbu        $t6, 0x11($sp)
/* C06C4 800BFAC4 93A80010 */  lbu        $t0, 0x10($sp)
/* C06C8 800BFAC8 240B0001 */  addiu      $t3, $zero, 1
/* C06CC 800BFACC 000E7A00 */  sll        $t7, $t6, 8
/* C06D0 800BFAD0 01E8C025 */  or         $t8, $t7, $t0
/* C06D4 800BFAD4 A4B80000 */  sh         $t8, ($a1)
/* C06D8 800BFAD8 93B90012 */  lbu        $t9, 0x12($sp)
/* C06DC 800BFADC A0B90002 */  sb         $t9, 2($a1)
/* C06E0 800BFAE0 8FAA0008 */  lw         $t2, 8($sp)
/* C06E4 800BFAE4 93A90007 */  lbu        $t1, 7($sp)
/* C06E8 800BFAE8 014B6004 */  sllv       $t4, $t3, $t2
/* C06EC 800BFAEC 012C6825 */  or         $t5, $t1, $t4
/* C06F0 800BFAF0 A3AD0007 */  sb         $t5, 7($sp)
.L800BFAF4:
/* C06F4 800BFAF4 8FAE0008 */  lw         $t6, 8($sp)
/* C06F8 800BFAF8 3C198014 */  lui        $t9, %hi(D_80145421)
/* C06FC 800BFAFC 93395421 */  lbu        $t9, %lo(D_80145421)($t9)
/* C0700 800BFB00 8FA80014 */  lw         $t0, 0x14($sp)
/* C0704 800BFB04 25CF0001 */  addiu      $t7, $t6, 1
/* C0708 800BFB08 01F9082A */  slt        $at, $t7, $t9
/* C070C 800BFB0C 25180008 */  addiu      $t8, $t0, 8
/* C0710 800BFB10 AFB80014 */  sw         $t8, 0x14($sp)
/* C0714 800BFB14 AFAF0008 */  sw         $t7, 8($sp)
/* C0718 800BFB18 1420FFDA */  bnez       $at, .L800BFA84
/* C071C 800BFB1C 24A50004 */   addiu     $a1, $a1, 4
.L800BFB20:
/* C0720 800BFB20 93AB0007 */  lbu        $t3, 7($sp)
/* C0724 800BFB24 27BD0018 */  addiu      $sp, $sp, 0x18
/* C0728 800BFB28 03E00008 */  jr         $ra
/* C072C 800BFB2C A08B0000 */   sb        $t3, ($a0)

glabel func_800BFB30
/* C0730 800BFB30 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* C0734 800BFB34 308400FF */  andi       $a0, $a0, 0xff
/* C0738 800BFB38 AFA00000 */  sw         $zero, ($sp)
.L800BFB3C:
/* C073C 800BFB3C 8FAE0000 */  lw         $t6, ($sp)
/* C0740 800BFB40 8FB80000 */  lw         $t8, ($sp)
/* C0744 800BFB44 3C018014 */  lui        $at, %hi(D_801453E0)
/* C0748 800BFB48 000E7880 */  sll        $t7, $t6, 2
/* C074C 800BFB4C 002F0821 */  addu       $at, $at, $t7
/* C0750 800BFB50 AC2053E0 */  sw         $zero, %lo(D_801453E0)($at)
/* C0754 800BFB54 27190001 */  addiu      $t9, $t8, 1
/* C0758 800BFB58 2B21000F */  slti       $at, $t9, 0xf
/* C075C 800BFB5C 1420FFF7 */  bnez       $at, .L800BFB3C
/* C0760 800BFB60 AFB90000 */   sw        $t9, ($sp)
/* C0764 800BFB64 3C198014 */  lui        $t9, %hi(D_80145421)
/* C0768 800BFB68 93395421 */  lbu        $t9, %lo(D_80145421)($t9)
/* C076C 800BFB6C 3C098014 */  lui        $t1, %hi(D_801453E0)
/* C0770 800BFB70 24080001 */  addiu      $t0, $zero, 1
/* C0774 800BFB74 3C018014 */  lui        $at, 0x8014
/* C0778 800BFB78 252953E0 */  addiu      $t1, $t1, %lo(D_801453E0)
/* C077C 800BFB7C 240A00FF */  addiu      $t2, $zero, 0xff
/* C0780 800BFB80 240B0001 */  addiu      $t3, $zero, 1
/* C0784 800BFB84 240C0003 */  addiu      $t4, $zero, 3
/* C0788 800BFB88 240D00FF */  addiu      $t5, $zero, 0xff
/* C078C 800BFB8C 240E00FF */  addiu      $t6, $zero, 0xff
/* C0790 800BFB90 240F00FF */  addiu      $t7, $zero, 0xff
/* C0794 800BFB94 241800FF */  addiu      $t8, $zero, 0xff
/* C0798 800BFB98 AC28541C */  sw         $t0, 0x541c($at)
/* C079C 800BFB9C AFA9000C */  sw         $t1, 0xc($sp)
/* C07A0 800BFBA0 A3AA0004 */  sb         $t2, 4($sp)
/* C07A4 800BFBA4 A3AB0005 */  sb         $t3, 5($sp)
/* C07A8 800BFBA8 A3AC0006 */  sb         $t4, 6($sp)
/* C07AC 800BFBAC A3A40007 */  sb         $a0, 7($sp)
/* C07B0 800BFBB0 A3AD0008 */  sb         $t5, 8($sp)
/* C07B4 800BFBB4 A3AE0009 */  sb         $t6, 9($sp)
/* C07B8 800BFBB8 A3AF000A */  sb         $t7, 0xa($sp)
/* C07BC 800BFBBC A3B8000B */  sb         $t8, 0xb($sp)
/* C07C0 800BFBC0 1B200013 */  blez       $t9, .L800BFC10
/* C07C4 800BFBC4 AFA00000 */   sw        $zero, ($sp)
.L800BFBC8:
/* C07C8 800BFBC8 27A90004 */  addiu      $t1, $sp, 4
/* C07CC 800BFBCC 8D210000 */  lw         $at, ($t1)
/* C07D0 800BFBD0 8FA8000C */  lw         $t0, 0xc($sp)
/* C07D4 800BFBD4 3C188014 */  lui        $t8, 0x8014
/* C07D8 800BFBD8 A9010000 */  swl        $at, ($t0)
/* C07DC 800BFBDC B9010003 */  swr        $at, 3($t0)
/* C07E0 800BFBE0 8D2B0004 */  lw         $t3, 4($t1)
/* C07E4 800BFBE4 A90B0004 */  swl        $t3, 4($t0)
/* C07E8 800BFBE8 B90B0007 */  swr        $t3, 7($t0)
/* C07EC 800BFBEC 8FAE0000 */  lw         $t6, ($sp)
/* C07F0 800BFBF0 93185421 */  lbu        $t8, 0x5421($t8)
/* C07F4 800BFBF4 8FAC000C */  lw         $t4, 0xc($sp)
/* C07F8 800BFBF8 25CF0001 */  addiu      $t7, $t6, 1
/* C07FC 800BFBFC 01F8082A */  slt        $at, $t7, $t8
/* C0800 800BFC00 258D0008 */  addiu      $t5, $t4, 8
/* C0804 800BFC04 AFAF0000 */  sw         $t7, ($sp)
/* C0808 800BFC08 1420FFEF */  bnez       $at, .L800BFBC8
/* C080C 800BFC0C AFAD000C */   sw        $t5, 0xc($sp)
.L800BFC10:
/* C0810 800BFC10 8FAA000C */  lw         $t2, 0xc($sp)
/* C0814 800BFC14 241900FE */  addiu      $t9, $zero, 0xfe
/* C0818 800BFC18 27BD0010 */  addiu      $sp, $sp, 0x10
/* C081C 800BFC1C 03E00008 */  jr         $ra
/* C0820 800BFC20 A1590000 */   sb        $t9, ($t2)
/* C0824 800BFC24 00000000 */  nop
/* C0828 800BFC28 00000000 */  nop
/* C082C 800BFC2C 00000000 */  nop
