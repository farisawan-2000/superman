.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AF890
/* B0490 800AF890 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B0494 800AF894 AFA40008 */  sw         $a0, 8($sp)
/* B0498 800AF898 AFA50004 */  sw         $a1, 4($sp)
/* B049C 800AF89C 18C00010 */  blez       $a2, .L800AF8E0
/* B04A0 800AF8A0 AFA0000C */   sw        $zero, 0xc($sp)
.L800AF8A4:
/* B04A4 800AF8A4 8FAE0008 */  lw         $t6, 8($sp)
/* B04A8 800AF8A8 8FB80004 */  lw         $t8, 4($sp)
/* B04AC 800AF8AC 91CF0000 */  lbu        $t7, ($t6)
/* B04B0 800AF8B0 A30F0000 */  sb         $t7, ($t8)
/* B04B4 800AF8B4 8FA90008 */  lw         $t1, 8($sp)
/* B04B8 800AF8B8 8FB90004 */  lw         $t9, 4($sp)
/* B04BC 800AF8BC 252A0001 */  addiu      $t2, $t1, 1
/* B04C0 800AF8C0 27280001 */  addiu      $t0, $t9, 1
/* B04C4 800AF8C4 AFA80004 */  sw         $t0, 4($sp)
/* B04C8 800AF8C8 AFAA0008 */  sw         $t2, 8($sp)
/* B04CC 800AF8CC 8FAB000C */  lw         $t3, 0xc($sp)
/* B04D0 800AF8D0 256C0001 */  addiu      $t4, $t3, 1
/* B04D4 800AF8D4 0186082A */  slt        $at, $t4, $a2
/* B04D8 800AF8D8 1420FFF2 */  bnez       $at, .L800AF8A4
/* B04DC 800AF8DC AFAC000C */   sw        $t4, 0xc($sp)
.L800AF8E0:
/* B04E0 800AF8E0 10000001 */  b          .L800AF8E8
/* B04E4 800AF8E4 00000000 */   nop
.L800AF8E8:
/* B04E8 800AF8E8 03E00008 */  jr         $ra
/* B04EC 800AF8EC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800AF8F0
/* B04F0 800AF8F0 00A03825 */  or         $a3, $a1, $zero
/* B04F4 800AF8F4 10C0001C */  beqz       $a2, .L800AF968
/* B04F8 800AF8F8 00000000 */   nop
/* B04FC 800AF8FC 1085001A */  beq        $a0, $a1, .L800AF968
/* B0500 800AF900 00000000 */   nop
/* B0504 800AF904 00A4082A */  slt        $at, $a1, $a0
/* B0508 800AF908 14200007 */  bnez       $at, .L800AF928
/* B050C 800AF90C 00000000 */   nop
/* B0510 800AF910 00861020 */  add        $v0, $a0, $a2
/* B0514 800AF914 00A2082A */  slt        $at, $a1, $v0
/* B0518 800AF918 10200003 */  beqz       $at, .L800AF928
/* B051C 800AF91C 00000000 */   nop
/* B0520 800AF920 10000063 */  b          .L800AFAB0
/* B0524 800AF924 00000000 */   nop
.L800AF928:
/* B0528 800AF928 28C10010 */  slti       $at, $a2, 0x10
/* B052C 800AF92C 14200005 */  bnez       $at, .L800AF944
/* B0530 800AF930 00000000 */   nop
/* B0534 800AF934 30820003 */  andi       $v0, $a0, 3
/* B0538 800AF938 30A30003 */  andi       $v1, $a1, 3
/* B053C 800AF93C 1043000D */  beq        $v0, $v1, .L800AF974
/* B0540 800AF940 00000000 */   nop
.L800AF944:
/* B0544 800AF944 10C00008 */  beqz       $a2, .L800AF968
/* B0548 800AF948 00000000 */   nop
/* B054C 800AF94C 00861821 */  addu       $v1, $a0, $a2
.L800AF950:
/* B0550 800AF950 80820000 */  lb         $v0, ($a0)
/* B0554 800AF954 24840001 */  addiu      $a0, $a0, 1
/* B0558 800AF958 A0A20000 */  sb         $v0, ($a1)
/* B055C 800AF95C 24A50001 */  addiu      $a1, $a1, 1
/* B0560 800AF960 1483FFFB */  bne        $a0, $v1, .L800AF950
/* B0564 800AF964 00000000 */   nop
.L800AF968:
/* B0568 800AF968 00E01025 */  or         $v0, $a3, $zero
/* B056C 800AF96C 03E00008 */  jr         $ra
/* B0570 800AF970 00000000 */   nop
.L800AF974:
/* B0574 800AF974 1040001C */  beqz       $v0, .L800AF9E8
/* B0578 800AF978 00000000 */   nop
/* B057C 800AF97C 24010001 */  addiu      $at, $zero, 1
/* B0580 800AF980 10410012 */  beq        $v0, $at, .L800AF9CC
/* B0584 800AF984 00000000 */   nop
/* B0588 800AF988 24010002 */  addiu      $at, $zero, 2
/* B058C 800AF98C 10410008 */  beq        $v0, $at, .L800AF9B0
/* B0590 800AF990 00000000 */   nop
/* B0594 800AF994 80820000 */  lb         $v0, ($a0)
/* B0598 800AF998 24840001 */  addiu      $a0, $a0, 1
/* B059C 800AF99C A0A20000 */  sb         $v0, ($a1)
/* B05A0 800AF9A0 24A50001 */  addiu      $a1, $a1, 1
/* B05A4 800AF9A4 24C6FFFF */  addiu      $a2, $a2, -1
/* B05A8 800AF9A8 1000000F */  b          .L800AF9E8
/* B05AC 800AF9AC 00000000 */   nop
.L800AF9B0:
/* B05B0 800AF9B0 84820000 */  lh         $v0, ($a0)
/* B05B4 800AF9B4 24840002 */  addiu      $a0, $a0, 2
/* B05B8 800AF9B8 A4A20000 */  sh         $v0, ($a1)
/* B05BC 800AF9BC 24A50002 */  addiu      $a1, $a1, 2
/* B05C0 800AF9C0 24C6FFFE */  addiu      $a2, $a2, -2
/* B05C4 800AF9C4 10000008 */  b          .L800AF9E8
/* B05C8 800AF9C8 00000000 */   nop
.L800AF9CC:
/* B05CC 800AF9CC 80820000 */  lb         $v0, ($a0)
/* B05D0 800AF9D0 84830001 */  lh         $v1, 1($a0)
/* B05D4 800AF9D4 24840003 */  addiu      $a0, $a0, 3
/* B05D8 800AF9D8 A0A20000 */  sb         $v0, ($a1)
/* B05DC 800AF9DC A4A30001 */  sh         $v1, 1($a1)
/* B05E0 800AF9E0 24A50003 */  addiu      $a1, $a1, 3
/* B05E4 800AF9E4 24C6FFFD */  addiu      $a2, $a2, -3
.L800AF9E8:
/* B05E8 800AF9E8 28C10020 */  slti       $at, $a2, 0x20
/* B05EC 800AF9EC 14200016 */  bnez       $at, .L800AFA48
/* B05F0 800AF9F0 00000000 */   nop
/* B05F4 800AF9F4 8C820000 */  lw         $v0, ($a0)
/* B05F8 800AF9F8 8C830004 */  lw         $v1, 4($a0)
/* B05FC 800AF9FC 8C880008 */  lw         $t0, 8($a0)
/* B0600 800AFA00 8C89000C */  lw         $t1, 0xc($a0)
/* B0604 800AFA04 8C8A0010 */  lw         $t2, 0x10($a0)
/* B0608 800AFA08 8C8B0014 */  lw         $t3, 0x14($a0)
/* B060C 800AFA0C 8C8C0018 */  lw         $t4, 0x18($a0)
/* B0610 800AFA10 8C8D001C */  lw         $t5, 0x1c($a0)
/* B0614 800AFA14 24840020 */  addiu      $a0, $a0, 0x20
/* B0618 800AFA18 ACA20000 */  sw         $v0, ($a1)
/* B061C 800AFA1C ACA30004 */  sw         $v1, 4($a1)
/* B0620 800AFA20 ACA80008 */  sw         $t0, 8($a1)
/* B0624 800AFA24 ACA9000C */  sw         $t1, 0xc($a1)
/* B0628 800AFA28 ACAA0010 */  sw         $t2, 0x10($a1)
/* B062C 800AFA2C ACAB0014 */  sw         $t3, 0x14($a1)
/* B0630 800AFA30 ACAC0018 */  sw         $t4, 0x18($a1)
/* B0634 800AFA34 ACAD001C */  sw         $t5, 0x1c($a1)
/* B0638 800AFA38 24A50020 */  addiu      $a1, $a1, 0x20
/* B063C 800AFA3C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* B0640 800AFA40 1000FFE9 */  b          .L800AF9E8
/* B0644 800AFA44 00000000 */   nop
.L800AFA48:
/* B0648 800AFA48 28C10010 */  slti       $at, $a2, 0x10
/* B064C 800AFA4C 1420000E */  bnez       $at, .L800AFA88
/* B0650 800AFA50 00000000 */   nop
/* B0654 800AFA54 8C820000 */  lw         $v0, ($a0)
/* B0658 800AFA58 8C830004 */  lw         $v1, 4($a0)
/* B065C 800AFA5C 8C880008 */  lw         $t0, 8($a0)
/* B0660 800AFA60 8C89000C */  lw         $t1, 0xc($a0)
/* B0664 800AFA64 24840010 */  addiu      $a0, $a0, 0x10
/* B0668 800AFA68 ACA20000 */  sw         $v0, ($a1)
/* B066C 800AFA6C ACA30004 */  sw         $v1, 4($a1)
/* B0670 800AFA70 ACA80008 */  sw         $t0, 8($a1)
/* B0674 800AFA74 ACA9000C */  sw         $t1, 0xc($a1)
/* B0678 800AFA78 24A50010 */  addiu      $a1, $a1, 0x10
/* B067C 800AFA7C 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* B0680 800AFA80 1000FFF1 */  b          .L800AFA48
/* B0684 800AFA84 00000000 */   nop
.L800AFA88:
/* B0688 800AFA88 28C10004 */  slti       $at, $a2, 4
/* B068C 800AFA8C 1420FFAD */  bnez       $at, .L800AF944
/* B0690 800AFA90 00000000 */   nop
/* B0694 800AFA94 8C820000 */  lw         $v0, ($a0)
/* B0698 800AFA98 24840004 */  addiu      $a0, $a0, 4
/* B069C 800AFA9C ACA20000 */  sw         $v0, ($a1)
/* B06A0 800AFAA0 24A50004 */  addiu      $a1, $a1, 4
/* B06A4 800AFAA4 24C6FFFC */  addiu      $a2, $a2, -4
/* B06A8 800AFAA8 1000FFF7 */  b          .L800AFA88
/* B06AC 800AFAAC 00000000 */   nop
.L800AFAB0:
/* B06B0 800AFAB0 00862020 */  add        $a0, $a0, $a2
/* B06B4 800AFAB4 00A62820 */  add        $a1, $a1, $a2
/* B06B8 800AFAB8 28C10010 */  slti       $at, $a2, 0x10
/* B06BC 800AFABC 14200005 */  bnez       $at, .L800AFAD4
/* B06C0 800AFAC0 00000000 */   nop
/* B06C4 800AFAC4 30820003 */  andi       $v0, $a0, 3
/* B06C8 800AFAC8 30A30003 */  andi       $v1, $a1, 3
/* B06CC 800AFACC 1043000F */  beq        $v0, $v1, .L800AFB0C
/* B06D0 800AFAD0 00000000 */   nop
.L800AFAD4:
/* B06D4 800AFAD4 10C0FFA4 */  beqz       $a2, .L800AF968
/* B06D8 800AFAD8 00000000 */   nop
/* B06DC 800AFADC 2484FFFF */  addiu      $a0, $a0, -1
/* B06E0 800AFAE0 24A5FFFF */  addiu      $a1, $a1, -1
/* B06E4 800AFAE4 00861823 */  subu       $v1, $a0, $a2
.L800AFAE8:
/* B06E8 800AFAE8 80820000 */  lb         $v0, ($a0)
/* B06EC 800AFAEC 2484FFFF */  addiu      $a0, $a0, -1
/* B06F0 800AFAF0 A0A20000 */  sb         $v0, ($a1)
/* B06F4 800AFAF4 24A5FFFF */  addiu      $a1, $a1, -1
/* B06F8 800AFAF8 1483FFFB */  bne        $a0, $v1, .L800AFAE8
/* B06FC 800AFAFC 00000000 */   nop
/* B0700 800AFB00 00E01025 */  or         $v0, $a3, $zero
/* B0704 800AFB04 03E00008 */  jr         $ra
/* B0708 800AFB08 00000000 */   nop
.L800AFB0C:
/* B070C 800AFB0C 1040001C */  beqz       $v0, .L800AFB80
/* B0710 800AFB10 00000000 */   nop
/* B0714 800AFB14 24010003 */  addiu      $at, $zero, 3
/* B0718 800AFB18 10410012 */  beq        $v0, $at, .L800AFB64
/* B071C 800AFB1C 00000000 */   nop
/* B0720 800AFB20 24010002 */  addiu      $at, $zero, 2
/* B0724 800AFB24 10410008 */  beq        $v0, $at, .L800AFB48
/* B0728 800AFB28 00000000 */   nop
/* B072C 800AFB2C 8082FFFF */  lb         $v0, -1($a0)
/* B0730 800AFB30 2484FFFF */  addiu      $a0, $a0, -1
/* B0734 800AFB34 A0A2FFFF */  sb         $v0, -1($a1)
/* B0738 800AFB38 24A5FFFF */  addiu      $a1, $a1, -1
/* B073C 800AFB3C 24C6FFFF */  addiu      $a2, $a2, -1
/* B0740 800AFB40 1000000F */  b          .L800AFB80
/* B0744 800AFB44 00000000 */   nop
.L800AFB48:
/* B0748 800AFB48 8482FFFE */  lh         $v0, -2($a0)
/* B074C 800AFB4C 2484FFFE */  addiu      $a0, $a0, -2
/* B0750 800AFB50 A4A2FFFE */  sh         $v0, -2($a1)
/* B0754 800AFB54 24A5FFFE */  addiu      $a1, $a1, -2
/* B0758 800AFB58 24C6FFFE */  addiu      $a2, $a2, -2
/* B075C 800AFB5C 10000008 */  b          .L800AFB80
/* B0760 800AFB60 00000000 */   nop
.L800AFB64:
/* B0764 800AFB64 8082FFFF */  lb         $v0, -1($a0)
/* B0768 800AFB68 8483FFFD */  lh         $v1, -3($a0)
/* B076C 800AFB6C 2484FFFD */  addiu      $a0, $a0, -3
/* B0770 800AFB70 A0A2FFFF */  sb         $v0, -1($a1)
/* B0774 800AFB74 A4A3FFFD */  sh         $v1, -3($a1)
/* B0778 800AFB78 24A5FFFD */  addiu      $a1, $a1, -3
/* B077C 800AFB7C 24C6FFFD */  addiu      $a2, $a2, -3
.L800AFB80:
/* B0780 800AFB80 28C10020 */  slti       $at, $a2, 0x20
/* B0784 800AFB84 14200016 */  bnez       $at, .L800AFBE0
/* B0788 800AFB88 00000000 */   nop
/* B078C 800AFB8C 8C82FFFC */  lw         $v0, -4($a0)
/* B0790 800AFB90 8C83FFF8 */  lw         $v1, -8($a0)
/* B0794 800AFB94 8C88FFF4 */  lw         $t0, -0xc($a0)
/* B0798 800AFB98 8C89FFF0 */  lw         $t1, -0x10($a0)
/* B079C 800AFB9C 8C8AFFEC */  lw         $t2, -0x14($a0)
/* B07A0 800AFBA0 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* B07A4 800AFBA4 8C8CFFE4 */  lw         $t4, -0x1c($a0)
/* B07A8 800AFBA8 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* B07AC 800AFBAC 2484FFE0 */  addiu      $a0, $a0, -0x20
/* B07B0 800AFBB0 ACA2FFFC */  sw         $v0, -4($a1)
/* B07B4 800AFBB4 ACA3FFF8 */  sw         $v1, -8($a1)
/* B07B8 800AFBB8 ACA8FFF4 */  sw         $t0, -0xc($a1)
/* B07BC 800AFBBC ACA9FFF0 */  sw         $t1, -0x10($a1)
/* B07C0 800AFBC0 ACAAFFEC */  sw         $t2, -0x14($a1)
/* B07C4 800AFBC4 ACABFFE8 */  sw         $t3, -0x18($a1)
/* B07C8 800AFBC8 ACACFFE4 */  sw         $t4, -0x1c($a1)
/* B07CC 800AFBCC ACADFFE0 */  sw         $t5, -0x20($a1)
/* B07D0 800AFBD0 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* B07D4 800AFBD4 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* B07D8 800AFBD8 1000FFE9 */  b          .L800AFB80
/* B07DC 800AFBDC 00000000 */   nop
.L800AFBE0:
/* B07E0 800AFBE0 28C10010 */  slti       $at, $a2, 0x10
/* B07E4 800AFBE4 1420000E */  bnez       $at, .L800AFC20
/* B07E8 800AFBE8 00000000 */   nop
/* B07EC 800AFBEC 8C82FFFC */  lw         $v0, -4($a0)
/* B07F0 800AFBF0 8C83FFF8 */  lw         $v1, -8($a0)
/* B07F4 800AFBF4 8C88FFF4 */  lw         $t0, -0xc($a0)
/* B07F8 800AFBF8 8C89FFF0 */  lw         $t1, -0x10($a0)
/* B07FC 800AFBFC 2484FFF0 */  addiu      $a0, $a0, -0x10
/* B0800 800AFC00 ACA2FFFC */  sw         $v0, -4($a1)
/* B0804 800AFC04 ACA3FFF8 */  sw         $v1, -8($a1)
/* B0808 800AFC08 ACA8FFF4 */  sw         $t0, -0xc($a1)
/* B080C 800AFC0C ACA9FFF0 */  sw         $t1, -0x10($a1)
/* B0810 800AFC10 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* B0814 800AFC14 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* B0818 800AFC18 1000FFF1 */  b          .L800AFBE0
/* B081C 800AFC1C 00000000 */   nop
.L800AFC20:
/* B0820 800AFC20 28C10004 */  slti       $at, $a2, 4
/* B0824 800AFC24 1420FFAB */  bnez       $at, .L800AFAD4
/* B0828 800AFC28 00000000 */   nop
/* B082C 800AFC2C 8C82FFFC */  lw         $v0, -4($a0)
/* B0830 800AFC30 2484FFFC */  addiu      $a0, $a0, -4
/* B0834 800AFC34 ACA2FFFC */  sw         $v0, -4($a1)
/* B0838 800AFC38 24A5FFFC */  addiu      $a1, $a1, -4
/* B083C 800AFC3C 24C6FFFC */  addiu      $a2, $a2, -4
/* B0840 800AFC40 1000FFF7 */  b          .L800AFC20
/* B0844 800AFC44 00000000 */   nop
/* B0848 800AFC48 00000000 */  nop
/* B084C 800AFC4C 00000000 */  nop

glabel func_800AFC50
/* B0850 800AFC50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B0854 800AFC54 AFBF001C */  sw         $ra, 0x1c($sp)
/* B0858 800AFC58 AFA40028 */  sw         $a0, 0x28($sp)
/* B085C 800AFC5C AFB00018 */  sw         $s0, 0x18($sp)
/* B0860 800AFC60 0C02C0C8 */  jal        func_800B0320
/* B0864 800AFC64 00000000 */   nop
/* B0868 800AFC68 00408025 */  or         $s0, $v0, $zero
/* B086C 800AFC6C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B0870 800AFC70 3C0E800D */  lui        $t6, %hi(D_800CC2A0)
/* B0874 800AFC74 8DCEC2A0 */  lw         $t6, %lo(D_800CC2A0)($t6)
/* B0878 800AFC78 2401FBFE */  addiu      $at, $zero, -0x402
/* B087C 800AFC7C 01E1C024 */  and        $t8, $t7, $at
/* B0880 800AFC80 0300C827 */  not        $t9, $t8
/* B0884 800AFC84 3C01800D */  lui        $at, %hi(D_800CC2A0)
/* B0888 800AFC88 01D94024 */  and        $t0, $t6, $t9
/* B088C 800AFC8C AC28C2A0 */  sw         $t0, %lo(D_800CC2A0)($at)
/* B0890 800AFC90 0C02C0D0 */  jal        func_800B0340
/* B0894 800AFC94 02002025 */   or        $a0, $s0, $zero
/* B0898 800AFC98 10000001 */  b          .L800AFCA0
/* B089C 800AFC9C 00000000 */   nop
.L800AFCA0:
/* B08A0 800AFCA0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B08A4 800AFCA4 8FB00018 */  lw         $s0, 0x18($sp)
/* B08A8 800AFCA8 27BD0028 */  addiu      $sp, $sp, 0x28
/* B08AC 800AFCAC 03E00008 */  jr         $ra
/* B08B0 800AFCB0 00000000 */   nop
/* B08B4 800AFCB4 00000000 */  nop
/* B08B8 800AFCB8 00000000 */  nop
/* B08BC 800AFCBC 00000000 */  nop
