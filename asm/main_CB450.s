.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CA850
/* CB450 800CA850 24AEFFFF */  addiu      $t6, $a1, -1
/* CB454 800CA854 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CB458 800CA858 2DC10009 */  sltiu      $at, $t6, 9
/* CB45C 800CA85C AFBF0014 */  sw         $ra, 0x14($sp)
/* CB460 800CA860 1020002B */  beqz       $at, .L800CA910
/* CB464 800CA864 00803825 */   or        $a3, $a0, $zero
/* CB468 800CA868 000E7080 */  sll        $t6, $t6, 2
/* CB46C 800CA86C 3C01800E */  lui        $at, %hi(D_800DFCD0)
/* CB470 800CA870 002E0821 */  addu       $at, $at, $t6
/* CB474 800CA874 8C2EFCD0 */  lw         $t6, %lo(D_800DFCD0)($at)
/* CB478 800CA878 01C00008 */  jr         $t6
/* CB47C 800CA87C 00000000 */   nop
/* CB480 800CA880 10000029 */  b          .L800CA928
/* CB484 800CA884 ACE60000 */   sw        $a2, ($a3)
/* CB488 800CA888 8CE40000 */  lw         $a0, ($a3)
/* CB48C 800CA88C 44802000 */  mtc1       $zero, $f4
/* CB490 800CA890 240F0001 */  addiu      $t7, $zero, 1
/* CB494 800CA894 ACEF0024 */  sw         $t7, 0x24($a3)
/* CB498 800CA898 ACE00030 */  sw         $zero, 0x30($a3)
/* CB49C 800CA89C ACE0001C */  sw         $zero, 0x1c($a3)
/* CB4A0 800CA8A0 10800021 */  beqz       $a0, .L800CA928
/* CB4A4 800CA8A4 E4E40020 */   swc1      $f4, 0x20($a3)
/* CB4A8 800CA8A8 8C990008 */  lw         $t9, 8($a0)
/* CB4AC 800CA8AC 24050004 */  addiu      $a1, $zero, 4
/* CB4B0 800CA8B0 00003025 */  or         $a2, $zero, $zero
/* CB4B4 800CA8B4 0320F809 */  jalr       $t9
/* CB4B8 800CA8B8 00000000 */   nop
/* CB4BC 800CA8BC 1000001B */  b          .L800CA92C
/* CB4C0 800CA8C0 8FBF0014 */   lw        $ra, 0x14($sp)
/* CB4C4 800CA8C4 8CE40000 */  lw         $a0, ($a3)
/* CB4C8 800CA8C8 24180001 */  addiu      $t8, $zero, 1
/* CB4CC 800CA8CC ACF80030 */  sw         $t8, 0x30($a3)
/* CB4D0 800CA8D0 50800016 */  beql       $a0, $zero, .L800CA92C
/* CB4D4 800CA8D4 8FBF0014 */   lw        $ra, 0x14($sp)
/* CB4D8 800CA8D8 8C990008 */  lw         $t9, 8($a0)
/* CB4DC 800CA8DC 24050009 */  addiu      $a1, $zero, 9
/* CB4E0 800CA8E0 00003025 */  or         $a2, $zero, $zero
/* CB4E4 800CA8E4 0320F809 */  jalr       $t9
/* CB4E8 800CA8E8 00000000 */   nop
/* CB4EC 800CA8EC 1000000F */  b          .L800CA92C
/* CB4F0 800CA8F0 8FBF0014 */   lw        $ra, 0x14($sp)
/* CB4F4 800CA8F4 AFA6001C */  sw         $a2, 0x1c($sp)
/* CB4F8 800CA8F8 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* CB4FC 800CA8FC 1000000A */  b          .L800CA928
/* CB500 800CA900 E4E60018 */   swc1      $f6, 0x18($a3)
/* CB504 800CA904 24080001 */  addiu      $t0, $zero, 1
/* CB508 800CA908 10000007 */  b          .L800CA928
/* CB50C 800CA90C ACE8001C */   sw        $t0, 0x1c($a3)
.L800CA910:
/* CB510 800CA910 8CE40000 */  lw         $a0, ($a3)
/* CB514 800CA914 50800005 */  beql       $a0, $zero, .L800CA92C
/* CB518 800CA918 8FBF0014 */   lw        $ra, 0x14($sp)
/* CB51C 800CA91C 8C990008 */  lw         $t9, 8($a0)
/* CB520 800CA920 0320F809 */  jalr       $t9
/* CB524 800CA924 00000000 */   nop
.L800CA928:
/* CB528 800CA928 8FBF0014 */  lw         $ra, 0x14($sp)
.L800CA92C:
/* CB52C 800CA92C 27BD0028 */  addiu      $sp, $sp, 0x28
/* CB530 800CA930 00001025 */  or         $v0, $zero, $zero
/* CB534 800CA934 03E00008 */  jr         $ra
/* CB538 800CA938 00000000 */   nop

glabel func_800CA93C
/* CB53C 800CA93C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* CB540 800CA940 AFBF001C */  sw         $ra, 0x1c($sp)
/* CB544 800CA944 AFA50054 */  sw         $a1, 0x54($sp)
/* CB548 800CA948 8C890000 */  lw         $t1, ($a0)
/* CB54C 800CA94C 240E0140 */  addiu      $t6, $zero, 0x140
/* CB550 800CA950 00804025 */  or         $t0, $a0, $zero
/* CB554 800CA954 00C05025 */  or         $t2, $a2, $zero
/* CB558 800CA958 14C00003 */  bnez       $a2, .L800CA968
/* CB55C 800CA95C A7AE0046 */   sh        $t6, 0x46($sp)
/* CB560 800CA960 10000074 */  b          .L800CAB34
/* CB564 800CA964 8FA20060 */   lw        $v0, 0x60($sp)
.L800CA968:
/* CB568 800CA968 8D0F001C */  lw         $t7, 0x1c($t0)
/* CB56C 800CA96C 8FB80060 */  lw         $t8, 0x60($sp)
/* CB570 800CA970 51E0001A */  beql       $t7, $zero, .L800CA9DC
/* CB574 800CA974 C5020018 */   lwc1      $f2, 0x18($t0)
/* CB578 800CA978 AFB80010 */  sw         $t8, 0x10($sp)
/* CB57C 800CA97C AFAA0058 */  sw         $t2, 0x58($sp)
/* CB580 800CA980 8D390004 */  lw         $t9, 4($t1)
/* CB584 800CA984 01202025 */  or         $a0, $t1, $zero
/* CB588 800CA988 27A50046 */  addiu      $a1, $sp, 0x46
/* CB58C 800CA98C 0320F809 */  jalr       $t9
/* CB590 800CA990 01403025 */   or        $a2, $t2, $zero
/* CB594 800CA994 87AB0046 */  lh         $t3, 0x46($sp)
/* CB598 800CA998 3C0100FF */  lui        $at, 0xff
/* CB59C 800CA99C 3421FFFF */  ori        $at, $at, 0xffff
/* CB5A0 800CA9A0 01616024 */  and        $t4, $t3, $at
/* CB5A4 800CA9A4 3C010A00 */  lui        $at, 0xa00
/* CB5A8 800CA9A8 8FAA0058 */  lw         $t2, 0x58($sp)
/* CB5AC 800CA9AC 01816825 */  or         $t5, $t4, $at
/* CB5B0 800CA9B0 AC4D0000 */  sw         $t5, ($v0)
/* CB5B4 800CA9B4 8FAE0054 */  lw         $t6, 0x54($sp)
/* CB5B8 800CA9B8 000A5840 */  sll        $t3, $t2, 1
/* CB5BC 800CA9BC 316CFFFF */  andi       $t4, $t3, 0xffff
/* CB5C0 800CA9C0 85D80000 */  lh         $t8, ($t6)
/* CB5C4 800CA9C4 24450008 */  addiu      $a1, $v0, 8
/* CB5C8 800CA9C8 0018CC00 */  sll        $t9, $t8, 0x10
/* CB5CC 800CA9CC 032C6825 */  or         $t5, $t9, $t4
/* CB5D0 800CA9D0 10000057 */  b          .L800CAB30
/* CB5D4 800CA9D4 AC4D0004 */   sw        $t5, 4($v0)
/* CB5D8 800CA9D8 C5020018 */  lwc1       $f2, 0x18($t0)
.L800CA9DC:
/* CB5DC 800CA9DC 3C01800E */  lui        $at, %hi(D_800DFCF8)
/* CB5E0 800CA9E0 D424FCF8 */  ldc1       $f4, %lo(D_800DFCF8)($at)
/* CB5E4 800CA9E4 460011A1 */  cvt.d.s    $f6, $f2
/* CB5E8 800CA9E8 3C01800E */  lui        $at, 0x800e
/* CB5EC 800CA9EC 4626203C */  c.lt.d     $f4, $f6
/* CB5F0 800CA9F0 00000000 */  nop
/* CB5F4 800CA9F4 45020005 */  bc1fl      .L800CAA0C
/* CB5F8 800CA9F8 3C014700 */   lui       $at, 0x4700
/* CB5FC 800CA9FC C428FD00 */  lwc1       $f8, -0x300($at)
/* CB600 800CAA00 E5080018 */  swc1       $f8, 0x18($t0)
/* CB604 800CAA04 C5020018 */  lwc1       $f2, 0x18($t0)
/* CB608 800CAA08 3C014700 */  lui        $at, 0x4700
.L800CAA0C:
/* CB60C 800CAA0C 44816000 */  mtc1       $at, $f12
/* CB610 800CAA10 01202025 */  or         $a0, $t1, $zero
/* CB614 800CAA14 27A50046 */  addiu      $a1, $sp, 0x46
/* CB618 800CAA18 460C1282 */  mul.s      $f10, $f2, $f12
/* CB61C 800CAA1C 4600540D */  trunc.w.s  $f16, $f10
/* CB620 800CAA20 440F8000 */  mfc1       $t7, $f16
/* CB624 800CAA24 448A8000 */  mtc1       $t2, $f16
/* CB628 800CAA28 448F9000 */  mtc1       $t7, $f18
/* CB62C 800CAA2C 00000000 */  nop
/* CB630 800CAA30 46809120 */  cvt.s.w    $f4, $f18
/* CB634 800CAA34 468084A0 */  cvt.s.w    $f18, $f16
/* CB638 800CAA38 E5040018 */  swc1       $f4, 0x18($t0)
/* CB63C 800CAA3C C5060018 */  lwc1       $f6, 0x18($t0)
/* CB640 800CAA40 460C3203 */  div.s      $f8, $f6, $f12
/* CB644 800CAA44 C5060020 */  lwc1       $f6, 0x20($t0)
/* CB648 800CAA48 E5080018 */  swc1       $f8, 0x18($t0)
/* CB64C 800CAA4C C50A0018 */  lwc1       $f10, 0x18($t0)
/* CB650 800CAA50 46125102 */  mul.s      $f4, $f10, $f18
/* CB654 800CAA54 46043000 */  add.s      $f0, $f6, $f4
/* CB658 800CAA58 4600020D */  trunc.w.s  $f8, $f0
/* CB65C 800CAA5C 44064000 */  mfc1       $a2, $f8
/* CB660 800CAA60 00000000 */  nop
/* CB664 800CAA64 44868000 */  mtc1       $a2, $f16
/* CB668 800CAA68 00000000 */  nop
/* CB66C 800CAA6C 468082A0 */  cvt.s.w    $f10, $f16
/* CB670 800CAA70 460A0481 */  sub.s      $f18, $f0, $f10
/* CB674 800CAA74 E5120020 */  swc1       $f18, 0x20($t0)
/* CB678 800CAA78 8FAB0060 */  lw         $t3, 0x60($sp)
/* CB67C 800CAA7C AFAA0058 */  sw         $t2, 0x58($sp)
/* CB680 800CAA80 AFA80050 */  sw         $t0, 0x50($sp)
/* CB684 800CAA84 AFAB0010 */  sw         $t3, 0x10($sp)
/* CB688 800CAA88 8D390004 */  lw         $t9, 4($t1)
/* CB68C 800CAA8C 0320F809 */  jalr       $t9
/* CB690 800CAA90 00000000 */   nop
/* CB694 800CAA94 8FA80050 */  lw         $t0, 0x50($sp)
/* CB698 800CAA98 87AD0046 */  lh         $t5, 0x46($sp)
/* CB69C 800CAA9C 3C014700 */  lui        $at, 0x4700
/* CB6A0 800CAAA0 44812000 */  mtc1       $at, $f4
/* CB6A4 800CAAA4 C5060018 */  lwc1       $f6, 0x18($t0)
/* CB6A8 800CAAA8 3C010800 */  lui        $at, 0x800
/* CB6AC 800CAAAC 31AEFFFF */  andi       $t6, $t5, 0xffff
/* CB6B0 800CAAB0 8FAA0058 */  lw         $t2, 0x58($sp)
/* CB6B4 800CAAB4 01C17825 */  or         $t7, $t6, $at
/* CB6B8 800CAAB8 AC4F0000 */  sw         $t7, ($v0)
/* CB6BC 800CAABC 8FB80054 */  lw         $t8, 0x54($sp)
/* CB6C0 800CAAC0 46043202 */  mul.s      $f8, $f6, $f4
/* CB6C4 800CAAC4 000A6840 */  sll        $t5, $t2, 1
/* CB6C8 800CAAC8 87190000 */  lh         $t9, ($t8)
/* CB6CC 800CAACC 31AEFFFF */  andi       $t6, $t5, 0xffff
/* CB6D0 800CAAD0 24580008 */  addiu      $t8, $v0, 8
/* CB6D4 800CAAD4 00196400 */  sll        $t4, $t9, 0x10
/* CB6D8 800CAAD8 018E7825 */  or         $t7, $t4, $t6
/* CB6DC 800CAADC 4600440D */  trunc.w.s  $f16, $f8
/* CB6E0 800CAAE0 AC4F0004 */  sw         $t7, 4($v0)
/* CB6E4 800CAAE4 AFB80028 */  sw         $t8, 0x28($sp)
/* CB6E8 800CAAE8 8D0B0024 */  lw         $t3, 0x24($t0)
/* CB6EC 800CAAEC 44038000 */  mfc1       $v1, $f16
/* CB6F0 800CAAF0 3C010500 */  lui        $at, 0x500
/* CB6F4 800CAAF4 317900FF */  andi       $t9, $t3, 0xff
/* CB6F8 800CAAF8 00196C00 */  sll        $t5, $t9, 0x10
/* CB6FC 800CAAFC 01A16025 */  or         $t4, $t5, $at
/* CB700 800CAB00 306EFFFF */  andi       $t6, $v1, 0xffff
/* CB704 800CAB04 018E7825 */  or         $t7, $t4, $t6
/* CB708 800CAB08 AC4F0008 */  sw         $t7, 8($v0)
/* CB70C 800CAB0C 24450010 */  addiu      $a1, $v0, 0x10
/* CB710 800CAB10 8D040014 */  lw         $a0, 0x14($t0)
/* CB714 800CAB14 0C030C38 */  jal        func_800C30E0
/* CB718 800CAB18 AFA50048 */   sw        $a1, 0x48($sp)
/* CB71C 800CAB1C 8FB80028 */  lw         $t8, 0x28($sp)
/* CB720 800CAB20 8FA80050 */  lw         $t0, 0x50($sp)
/* CB724 800CAB24 8FA50048 */  lw         $a1, 0x48($sp)
/* CB728 800CAB28 AF020004 */  sw         $v0, 4($t8)
/* CB72C 800CAB2C AD000024 */  sw         $zero, 0x24($t0)
.L800CAB30:
/* CB730 800CAB30 00A01025 */  or         $v0, $a1, $zero
.L800CAB34:
/* CB734 800CAB34 8FBF001C */  lw         $ra, 0x1c($sp)
/* CB738 800CAB38 27BD0050 */  addiu      $sp, $sp, 0x50
/* CB73C 800CAB3C 03E00008 */  jr         $ra
/* CB740 800CAB40 00000000 */   nop
/* CB744 800CAB44 00000000 */  nop
/* CB748 800CAB48 00000000 */  nop
/* CB74C 800CAB4C 00000000 */  nop
