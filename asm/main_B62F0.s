.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B56F0
/* B62F0 800B56F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B62F4 800B56F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B62F8 800B56F8 AFA40028 */  sw         $a0, 0x28($sp)
/* B62FC 800B56FC AFA5002C */  sw         $a1, 0x2c($sp)
/* B6300 800B5700 AFA00024 */  sw         $zero, 0x24($sp)
/* B6304 800B5704 0C02D5FC */  jal        func_800B57F0
/* B6308 800B5708 8FA4002C */   lw        $a0, 0x2c($sp)
/* B630C 800B570C 3C05801A */  lui        $a1, %hi(D_801A2020)
/* B6310 800B5710 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* B6314 800B5714 0C027D70 */  jal        func_8009F5C0
/* B6318 800B5718 24040001 */   addiu     $a0, $zero, 1
/* B631C 800B571C AFA20024 */  sw         $v0, 0x24($sp)
/* B6320 800B5720 8FA40028 */  lw         $a0, 0x28($sp)
/* B6324 800B5724 27A50020 */  addiu      $a1, $sp, 0x20
/* B6328 800B5728 0C025D30 */  jal        func_800974C0
/* B632C 800B572C 24060001 */   addiu     $a2, $zero, 1
/* B6330 800B5730 3C05801A */  lui        $a1, %hi(D_801A2020)
/* B6334 800B5734 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* B6338 800B5738 0C027D70 */  jal        func_8009F5C0
/* B633C 800B573C 00002025 */   or        $a0, $zero, $zero
/* B6340 800B5740 AFA20024 */  sw         $v0, 0x24($sp)
/* B6344 800B5744 8FA40028 */  lw         $a0, 0x28($sp)
/* B6348 800B5748 27A50020 */  addiu      $a1, $sp, 0x20
/* B634C 800B574C 0C025D30 */  jal        func_800974C0
/* B6350 800B5750 24060001 */   addiu     $a2, $zero, 1
/* B6354 800B5754 8FA4002C */  lw         $a0, 0x2c($sp)
/* B6358 800B5758 0C02D62F */  jal        func_800B58BC
/* B635C 800B575C 27A5001C */   addiu     $a1, $sp, 0x1c
/* B6360 800B5760 93AE001E */  lbu        $t6, 0x1e($sp)
/* B6364 800B5764 31CF0001 */  andi       $t7, $t6, 1
/* B6368 800B5768 11E00008 */  beqz       $t7, .L800B578C
/* B636C 800B576C 00000000 */   nop
/* B6370 800B5770 31D80002 */  andi       $t8, $t6, 2
/* B6374 800B5774 13000005 */  beqz       $t8, .L800B578C
/* B6378 800B5778 00000000 */   nop
/* B637C 800B577C 10000018 */  b          .L800B57E0
/* B6380 800B5780 24020002 */   addiu     $v0, $zero, 2
/* B6384 800B5784 10000012 */  b          .L800B57D0
/* B6388 800B5788 00000000 */   nop
.L800B578C:
/* B638C 800B578C 93B9001F */  lbu        $t9, 0x1f($sp)
/* B6390 800B5790 17200005 */  bnez       $t9, .L800B57A8
/* B6394 800B5794 00000000 */   nop
/* B6398 800B5798 93A8001E */  lbu        $t0, 0x1e($sp)
/* B639C 800B579C 31090001 */  andi       $t1, $t0, 1
/* B63A0 800B57A0 15200005 */  bnez       $t1, .L800B57B8
/* B63A4 800B57A4 00000000 */   nop
.L800B57A8:
/* B63A8 800B57A8 1000000D */  b          .L800B57E0
/* B63AC 800B57AC 24020001 */   addiu     $v0, $zero, 1
/* B63B0 800B57B0 10000007 */  b          .L800B57D0
/* B63B4 800B57B4 00000000 */   nop
.L800B57B8:
/* B63B8 800B57B8 93AA001E */  lbu        $t2, 0x1e($sp)
/* B63BC 800B57BC 314B0004 */  andi       $t3, $t2, 4
/* B63C0 800B57C0 11600003 */  beqz       $t3, .L800B57D0
/* B63C4 800B57C4 00000000 */   nop
/* B63C8 800B57C8 10000005 */  b          .L800B57E0
/* B63CC 800B57CC 24020004 */   addiu     $v0, $zero, 4
.L800B57D0:
/* B63D0 800B57D0 10000003 */  b          .L800B57E0
/* B63D4 800B57D4 8FA20024 */   lw        $v0, 0x24($sp)
/* B63D8 800B57D8 10000001 */  b          .L800B57E0
/* B63DC 800B57DC 00000000 */   nop
.L800B57E0:
/* B63E0 800B57E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B63E4 800B57E4 27BD0028 */  addiu      $sp, $sp, 0x28
/* B63E8 800B57E8 03E00008 */  jr         $ra
/* B63EC 800B57EC 00000000 */   nop

glabel func_800B57F0
/* B63F0 800B57F0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B63F4 800B57F4 3C01801A */  lui        $at, %hi(D_801A1B50)
/* B63F8 800B57F8 A0201B50 */  sb         $zero, %lo(D_801A1B50)($at)
/* B63FC 800B57FC 240E0001 */  addiu      $t6, $zero, 1
/* B6400 800B5800 3C01801A */  lui        $at, %hi(D_801A205C)
/* B6404 800B5804 AC2E205C */  sw         $t6, %lo(D_801A205C)($at)
/* B6408 800B5808 3C0F801A */  lui        $t7, %hi(D_801A2020)
/* B640C 800B580C 25EF2020 */  addiu      $t7, $t7, %lo(D_801A2020)
/* B6410 800B5810 AFAF000C */  sw         $t7, 0xc($sp)
/* B6414 800B5814 24180001 */  addiu      $t8, $zero, 1
/* B6418 800B5818 A3B80004 */  sb         $t8, 4($sp)
/* B641C 800B581C 24190003 */  addiu      $t9, $zero, 3
/* B6420 800B5820 A3B90005 */  sb         $t9, 5($sp)
/* B6424 800B5824 A3A00006 */  sb         $zero, 6($sp)
/* B6428 800B5828 240800FF */  addiu      $t0, $zero, 0xff
/* B642C 800B582C A3A80007 */  sb         $t0, 7($sp)
/* B6430 800B5830 240900FF */  addiu      $t1, $zero, 0xff
/* B6434 800B5834 A3A90008 */  sb         $t1, 8($sp)
/* B6438 800B5838 240A00FF */  addiu      $t2, $zero, 0xff
/* B643C 800B583C A3AA0009 */  sb         $t2, 9($sp)
/* B6440 800B5840 1880000B */  blez       $a0, .L800B5870
/* B6444 800B5844 AFA00000 */   sw        $zero, ($sp)
.L800B5848:
/* B6448 800B5848 8FAB000C */  lw         $t3, 0xc($sp)
/* B644C 800B584C A1600000 */  sb         $zero, ($t3)
/* B6450 800B5850 8FAC000C */  lw         $t4, 0xc($sp)
/* B6454 800B5854 258D0001 */  addiu      $t5, $t4, 1
/* B6458 800B5858 AFAD000C */  sw         $t5, 0xc($sp)
/* B645C 800B585C 8FAE0000 */  lw         $t6, ($sp)
/* B6460 800B5860 25CF0001 */  addiu      $t7, $t6, 1
/* B6464 800B5864 01E4082A */  slt        $at, $t7, $a0
/* B6468 800B5868 1420FFF7 */  bnez       $at, .L800B5848
/* B646C 800B586C AFAF0000 */   sw        $t7, ($sp)
.L800B5870:
/* B6470 800B5870 27B90004 */  addiu      $t9, $sp, 4
/* B6474 800B5874 8F210000 */  lw         $at, ($t9)
/* B6478 800B5878 8FB8000C */  lw         $t8, 0xc($sp)
/* B647C 800B587C AB010000 */  swl        $at, ($t8)
/* B6480 800B5880 BB010003 */  swr        $at, 3($t8)
/* B6484 800B5884 93210004 */  lbu        $at, 4($t9)
/* B6488 800B5888 A3010004 */  sb         $at, 4($t8)
/* B648C 800B588C 93290005 */  lbu        $t1, 5($t9)
/* B6490 800B5890 A3090005 */  sb         $t1, 5($t8)
/* B6494 800B5894 8FAA000C */  lw         $t2, 0xc($sp)
/* B6498 800B5898 254B0006 */  addiu      $t3, $t2, 6
/* B649C 800B589C AFAB000C */  sw         $t3, 0xc($sp)
/* B64A0 800B58A0 8FAD000C */  lw         $t5, 0xc($sp)
/* B64A4 800B58A4 240C00FE */  addiu      $t4, $zero, 0xfe
/* B64A8 800B58A8 A1AC0000 */  sb         $t4, ($t5)
/* B64AC 800B58AC 10000001 */  b          .L800B58B4
/* B64B0 800B58B0 00000000 */   nop
.L800B58B4:
/* B64B4 800B58B4 03E00008 */  jr         $ra
/* B64B8 800B58B8 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800B58BC
/* B64BC 800B58BC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B64C0 800B58C0 3C0E801A */  lui        $t6, %hi(D_801A2020)
/* B64C4 800B58C4 25CE2020 */  addiu      $t6, $t6, %lo(D_801A2020)
/* B64C8 800B58C8 AFAE000C */  sw         $t6, 0xc($sp)
/* B64CC 800B58CC 18800009 */  blez       $a0, .L800B58F4
/* B64D0 800B58D0 AFA00000 */   sw        $zero, ($sp)
.L800B58D4:
/* B64D4 800B58D4 8FAF000C */  lw         $t7, 0xc($sp)
/* B64D8 800B58D8 25F80001 */  addiu      $t8, $t7, 1
/* B64DC 800B58DC AFB8000C */  sw         $t8, 0xc($sp)
/* B64E0 800B58E0 8FB90000 */  lw         $t9, ($sp)
/* B64E4 800B58E4 27280001 */  addiu      $t0, $t9, 1
/* B64E8 800B58E8 0104082A */  slt        $at, $t0, $a0
/* B64EC 800B58EC 1420FFF9 */  bnez       $at, .L800B58D4
/* B64F0 800B58F0 AFA80000 */   sw        $t0, ($sp)
.L800B58F4:
/* B64F4 800B58F4 8FAA000C */  lw         $t2, 0xc($sp)
/* B64F8 800B58F8 27A90004 */  addiu      $t1, $sp, 4
/* B64FC 800B58FC 89410000 */  lwl        $at, ($t2)
/* B6500 800B5900 99410003 */  lwr        $at, 3($t2)
/* B6504 800B5904 AD210000 */  sw         $at, ($t1)
/* B6508 800B5908 91410004 */  lbu        $at, 4($t2)
/* B650C 800B590C A1210004 */  sb         $at, 4($t1)
/* B6510 800B5910 914C0005 */  lbu        $t4, 5($t2)
/* B6514 800B5914 A12C0005 */  sb         $t4, 5($t1)
/* B6518 800B5918 93AD0005 */  lbu        $t5, 5($sp)
/* B651C 800B591C 31AE00C0 */  andi       $t6, $t5, 0xc0
/* B6520 800B5920 000E7903 */  sra        $t7, $t6, 4
/* B6524 800B5924 A0AF0003 */  sb         $t7, 3($a1)
/* B6528 800B5928 90B80003 */  lbu        $t8, 3($a1)
/* B652C 800B592C 13000003 */  beqz       $t8, .L800B593C
/* B6530 800B5930 00000000 */   nop
/* B6534 800B5934 1000000A */  b          .L800B5960
/* B6538 800B5938 00000000 */   nop
.L800B593C:
/* B653C 800B593C 93B90008 */  lbu        $t9, 8($sp)
/* B6540 800B5940 93AB0007 */  lbu        $t3, 7($sp)
/* B6544 800B5944 00194200 */  sll        $t0, $t9, 8
/* B6548 800B5948 010B4825 */  or         $t1, $t0, $t3
/* B654C 800B594C A4A90000 */  sh         $t1, ($a1)
/* B6550 800B5950 93AA0009 */  lbu        $t2, 9($sp)
/* B6554 800B5954 A0AA0002 */  sb         $t2, 2($a1)
/* B6558 800B5958 10000001 */  b          .L800B5960
/* B655C 800B595C 00000000 */   nop
.L800B5960:
/* B6560 800B5960 03E00008 */  jr         $ra
/* B6564 800B5964 27BD0010 */   addiu     $sp, $sp, 0x10
/* B6568 800B5968 00000000 */  nop
/* B656C 800B596C 00000000 */  nop
