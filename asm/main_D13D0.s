.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D07D0
/* D13D0 800D07D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D13D4 800D07D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* D13D8 800D07D8 AFA40028 */  sw         $a0, 0x28($sp)
/* D13DC 800D07DC AFA5002C */  sw         $a1, 0x2c($sp)
/* D13E0 800D07E0 AFA00024 */  sw         $zero, 0x24($sp)
/* D13E4 800D07E4 0C03422D */  jal        func_800D08B4
/* D13E8 800D07E8 8FA4002C */   lw        $a0, 0x2c($sp)
/* D13EC 800D07EC 3C058014 */  lui        $a1, %hi(D_80145890)
/* D13F0 800D07F0 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* D13F4 800D07F4 0C030F00 */  jal        func_800C3C00
/* D13F8 800D07F8 24040001 */   addiu     $a0, $zero, 1
/* D13FC 800D07FC AFA20024 */  sw         $v0, 0x24($sp)
/* D1400 800D0800 8FA40028 */  lw         $a0, 0x28($sp)
/* D1404 800D0804 27A50020 */  addiu      $a1, $sp, 0x20
/* D1408 800D0808 0C02F85C */  jal        func_800BE170
/* D140C 800D080C 24060001 */   addiu     $a2, $zero, 1
/* D1410 800D0810 3C058014 */  lui        $a1, %hi(D_80145890)
/* D1414 800D0814 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* D1418 800D0818 0C030F00 */  jal        func_800C3C00
/* D141C 800D081C 00002025 */   or        $a0, $zero, $zero
/* D1420 800D0820 AFA20024 */  sw         $v0, 0x24($sp)
/* D1424 800D0824 8FA40028 */  lw         $a0, 0x28($sp)
/* D1428 800D0828 27A50020 */  addiu      $a1, $sp, 0x20
/* D142C 800D082C 0C02F85C */  jal        func_800BE170
/* D1430 800D0830 24060001 */   addiu     $a2, $zero, 1
/* D1434 800D0834 8FA4002C */  lw         $a0, 0x2c($sp)
/* D1438 800D0838 0C03425D */  jal        func_800D0974
/* D143C 800D083C 27A5001C */   addiu     $a1, $sp, 0x1c
/* D1440 800D0840 93AE001E */  lbu        $t6, 0x1e($sp)
/* D1444 800D0844 31CF0001 */  andi       $t7, $t6, 1
/* D1448 800D0848 11E00006 */  beqz       $t7, .L800D0864
/* D144C 800D084C 00000000 */   nop
/* D1450 800D0850 31D80002 */  andi       $t8, $t6, 2
/* D1454 800D0854 13000003 */  beqz       $t8, .L800D0864
/* D1458 800D0858 00000000 */   nop
/* D145C 800D085C 10000011 */  b          .L800D08A4
/* D1460 800D0860 24020002 */   addiu     $v0, $zero, 2
.L800D0864:
/* D1464 800D0864 93B9001F */  lbu        $t9, 0x1f($sp)
/* D1468 800D0868 17200005 */  bnez       $t9, .L800D0880
/* D146C 800D086C 00000000 */   nop
/* D1470 800D0870 93A8001E */  lbu        $t0, 0x1e($sp)
/* D1474 800D0874 31090001 */  andi       $t1, $t0, 1
/* D1478 800D0878 15200003 */  bnez       $t1, .L800D0888
/* D147C 800D087C 00000000 */   nop
.L800D0880:
/* D1480 800D0880 10000008 */  b          .L800D08A4
/* D1484 800D0884 24020001 */   addiu     $v0, $zero, 1
.L800D0888:
/* D1488 800D0888 93AA001E */  lbu        $t2, 0x1e($sp)
/* D148C 800D088C 314B0004 */  andi       $t3, $t2, 4
/* D1490 800D0890 11600003 */  beqz       $t3, .L800D08A0
/* D1494 800D0894 00000000 */   nop
/* D1498 800D0898 10000002 */  b          .L800D08A4
/* D149C 800D089C 24020004 */   addiu     $v0, $zero, 4
.L800D08A0:
/* D14A0 800D08A0 8FA20024 */  lw         $v0, 0x24($sp)
.L800D08A4:
/* D14A4 800D08A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D14A8 800D08A8 27BD0028 */  addiu      $sp, $sp, 0x28
/* D14AC 800D08AC 03E00008 */  jr         $ra
/* D14B0 800D08B0 00000000 */   nop

glabel func_800D08B4
/* D14B4 800D08B4 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* D14B8 800D08B8 3C018014 */  lui        $at, %hi(D_80145420)
/* D14BC 800D08BC A0205420 */  sb         $zero, %lo(D_80145420)($at)
/* D14C0 800D08C0 3C0F8014 */  lui        $t7, %hi(D_80145890)
/* D14C4 800D08C4 3C018014 */  lui        $at, 0x8014
/* D14C8 800D08C8 240E0001 */  addiu      $t6, $zero, 1
/* D14CC 800D08CC 25EF5890 */  addiu      $t7, $t7, %lo(D_80145890)
/* D14D0 800D08D0 24180001 */  addiu      $t8, $zero, 1
/* D14D4 800D08D4 24190003 */  addiu      $t9, $zero, 3
/* D14D8 800D08D8 240800FF */  addiu      $t0, $zero, 0xff
/* D14DC 800D08DC 240900FF */  addiu      $t1, $zero, 0xff
/* D14E0 800D08E0 240A00FF */  addiu      $t2, $zero, 0xff
/* D14E4 800D08E4 AC2E58CC */  sw         $t6, 0x58cc($at)
/* D14E8 800D08E8 AFAF000C */  sw         $t7, 0xc($sp)
/* D14EC 800D08EC A3B80004 */  sb         $t8, 4($sp)
/* D14F0 800D08F0 A3B90005 */  sb         $t9, 5($sp)
/* D14F4 800D08F4 A3A00006 */  sb         $zero, 6($sp)
/* D14F8 800D08F8 A3A80007 */  sb         $t0, 7($sp)
/* D14FC 800D08FC A3A90008 */  sb         $t1, 8($sp)
/* D1500 800D0900 A3AA0009 */  sb         $t2, 9($sp)
/* D1504 800D0904 1880000B */  blez       $a0, .L800D0934
/* D1508 800D0908 AFA00000 */   sw        $zero, ($sp)
.L800D090C:
/* D150C 800D090C 8FAB000C */  lw         $t3, 0xc($sp)
/* D1510 800D0910 A1600000 */  sb         $zero, ($t3)
/* D1514 800D0914 8FAE0000 */  lw         $t6, ($sp)
/* D1518 800D0918 8FAC000C */  lw         $t4, 0xc($sp)
/* D151C 800D091C 25CF0001 */  addiu      $t7, $t6, 1
/* D1520 800D0920 01E4082A */  slt        $at, $t7, $a0
/* D1524 800D0924 258D0001 */  addiu      $t5, $t4, 1
/* D1528 800D0928 AFAF0000 */  sw         $t7, ($sp)
/* D152C 800D092C 1420FFF7 */  bnez       $at, .L800D090C
/* D1530 800D0930 AFAD000C */   sw        $t5, 0xc($sp)
.L800D0934:
/* D1534 800D0934 27B90004 */  addiu      $t9, $sp, 4
/* D1538 800D0938 8F210000 */  lw         $at, ($t9)
/* D153C 800D093C 8FB8000C */  lw         $t8, 0xc($sp)
/* D1540 800D0940 240C00FE */  addiu      $t4, $zero, 0xfe
/* D1544 800D0944 AB010000 */  swl        $at, ($t8)
/* D1548 800D0948 BB010003 */  swr        $at, 3($t8)
/* D154C 800D094C 93210004 */  lbu        $at, 4($t9)
/* D1550 800D0950 A3010004 */  sb         $at, 4($t8)
/* D1554 800D0954 93290005 */  lbu        $t1, 5($t9)
/* D1558 800D0958 A3090005 */  sb         $t1, 5($t8)
/* D155C 800D095C 8FAA000C */  lw         $t2, 0xc($sp)
/* D1560 800D0960 254B0006 */  addiu      $t3, $t2, 6
/* D1564 800D0964 AFAB000C */  sw         $t3, 0xc($sp)
/* D1568 800D0968 A16C0000 */  sb         $t4, ($t3)
/* D156C 800D096C 03E00008 */  jr         $ra
/* D1570 800D0970 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800D0974
/* D1574 800D0974 3C0E8014 */  lui        $t6, %hi(D_80145890)
/* D1578 800D0978 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* D157C 800D097C 25CE5890 */  addiu      $t6, $t6, %lo(D_80145890)
/* D1580 800D0980 AFAE000C */  sw         $t6, 0xc($sp)
/* D1584 800D0984 18800009 */  blez       $a0, .L800D09AC
/* D1588 800D0988 AFA00000 */   sw        $zero, ($sp)
.L800D098C:
/* D158C 800D098C 8FB90000 */  lw         $t9, ($sp)
/* D1590 800D0990 8FAF000C */  lw         $t7, 0xc($sp)
/* D1594 800D0994 27280001 */  addiu      $t0, $t9, 1
/* D1598 800D0998 0104082A */  slt        $at, $t0, $a0
/* D159C 800D099C 25F80001 */  addiu      $t8, $t7, 1
/* D15A0 800D09A0 AFA80000 */  sw         $t0, ($sp)
/* D15A4 800D09A4 1420FFF9 */  bnez       $at, .L800D098C
/* D15A8 800D09A8 AFB8000C */   sw        $t8, 0xc($sp)
.L800D09AC:
/* D15AC 800D09AC 8FAA000C */  lw         $t2, 0xc($sp)
/* D15B0 800D09B0 27A90004 */  addiu      $t1, $sp, 4
/* D15B4 800D09B4 89410000 */  lwl        $at, ($t2)
/* D15B8 800D09B8 99410003 */  lwr        $at, 3($t2)
/* D15BC 800D09BC AD210000 */  sw         $at, ($t1)
/* D15C0 800D09C0 91410004 */  lbu        $at, 4($t2)
/* D15C4 800D09C4 A1210004 */  sb         $at, 4($t1)
/* D15C8 800D09C8 914C0005 */  lbu        $t4, 5($t2)
/* D15CC 800D09CC A12C0005 */  sb         $t4, 5($t1)
/* D15D0 800D09D0 93AD0005 */  lbu        $t5, 5($sp)
/* D15D4 800D09D4 31AE00C0 */  andi       $t6, $t5, 0xc0
/* D15D8 800D09D8 000E7903 */  sra        $t7, $t6, 4
/* D15DC 800D09DC A0AF0003 */  sb         $t7, 3($a1)
/* D15E0 800D09E0 90B80003 */  lbu        $t8, 3($a1)
/* D15E4 800D09E4 17000008 */  bnez       $t8, .L800D0A08
/* D15E8 800D09E8 00000000 */   nop
/* D15EC 800D09EC 93B90008 */  lbu        $t9, 8($sp)
/* D15F0 800D09F0 93AB0007 */  lbu        $t3, 7($sp)
/* D15F4 800D09F4 00194200 */  sll        $t0, $t9, 8
/* D15F8 800D09F8 010B4825 */  or         $t1, $t0, $t3
/* D15FC 800D09FC A4A90000 */  sh         $t1, ($a1)
/* D1600 800D0A00 93AA0009 */  lbu        $t2, 9($sp)
/* D1604 800D0A04 A0AA0002 */  sb         $t2, 2($a1)
.L800D0A08:
/* D1608 800D0A08 03E00008 */  jr         $ra
/* D160C 800D0A0C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800D0A10
/* D1610 800D0A10 27BDFB78 */  addiu      $sp, $sp, -0x488
/* D1614 800D0A14 AFBF001C */  sw         $ra, 0x1c($sp)
/* D1618 800D0A18 AFA40488 */  sw         $a0, 0x488($sp)
/* D161C 800D0A1C AFA00034 */  sw         $zero, 0x34($sp)
/* D1620 800D0A20 0C031D08 */  jal        func_800C7420
/* D1624 800D0A24 8FA40488 */   lw        $a0, 0x488($sp)
/* D1628 800D0A28 AFA20480 */  sw         $v0, 0x480($sp)
/* D162C 800D0A2C 8FAE0480 */  lw         $t6, 0x480($sp)
/* D1630 800D0A30 24010002 */  addiu      $at, $zero, 2
/* D1634 800D0A34 15C10004 */  bne        $t6, $at, .L800D0A48
/* D1638 800D0A38 00000000 */   nop
/* D163C 800D0A3C 0C031C71 */  jal        func_800C71C4
/* D1640 800D0A40 8FA40488 */   lw        $a0, 0x488($sp)
/* D1644 800D0A44 AFA20480 */  sw         $v0, 0x480($sp)
.L800D0A48:
/* D1648 800D0A48 8FAF0480 */  lw         $t7, 0x480($sp)
/* D164C 800D0A4C 11E00003 */  beqz       $t7, .L800D0A5C
/* D1650 800D0A50 00000000 */   nop
/* D1654 800D0A54 1000019B */  b          .L800D10C4
/* D1658 800D0A58 01E01025 */   or        $v0, $t7, $zero
.L800D0A5C:
/* D165C 800D0A5C 8FA40488 */  lw         $a0, 0x488($sp)
/* D1660 800D0A60 0C034435 */  jal        func_800D10D4
/* D1664 800D0A64 27A50038 */   addiu     $a1, $sp, 0x38
/* D1668 800D0A68 AFA20480 */  sw         $v0, 0x480($sp)
/* D166C 800D0A6C 8FB80480 */  lw         $t8, 0x480($sp)
/* D1670 800D0A70 13000003 */  beqz       $t8, .L800D0A80
/* D1674 800D0A74 00000000 */   nop
/* D1678 800D0A78 10000192 */  b          .L800D10C4
/* D167C 800D0A7C 03001025 */   or        $v0, $t8, $zero
.L800D0A80:
/* D1680 800D0A80 8FB90488 */  lw         $t9, 0x488($sp)
/* D1684 800D0A84 AFA00484 */  sw         $zero, 0x484($sp)
/* D1688 800D0A88 8F280050 */  lw         $t0, 0x50($t9)
/* D168C 800D0A8C 190000C0 */  blez       $t0, .L800D0D90
/* D1690 800D0A90 00000000 */   nop
.L800D0A94:
/* D1694 800D0A94 8FA90488 */  lw         $t1, 0x488($sp)
/* D1698 800D0A98 8FAB0484 */  lw         $t3, 0x484($sp)
/* D169C 800D0A9C 27A7025C */  addiu      $a3, $sp, 0x25c
/* D16A0 800D0AA0 8D2A005C */  lw         $t2, 0x5c($t1)
/* D16A4 800D0AA4 8D240004 */  lw         $a0, 4($t1)
/* D16A8 800D0AA8 8D250008 */  lw         $a1, 8($t1)
/* D16AC 800D0AAC 0C034C10 */  jal        func_800D3040
/* D16B0 800D0AB0 014B3021 */   addu      $a2, $t2, $t3
/* D16B4 800D0AB4 AFA20480 */  sw         $v0, 0x480($sp)
/* D16B8 800D0AB8 8FAC0480 */  lw         $t4, 0x480($sp)
/* D16BC 800D0ABC 11800003 */  beqz       $t4, .L800D0ACC
/* D16C0 800D0AC0 00000000 */   nop
/* D16C4 800D0AC4 1000017F */  b          .L800D10C4
/* D16C8 800D0AC8 01801025 */   or        $v0, $t4, $zero
.L800D0ACC:
/* D16CC 800D0ACC 97AD0260 */  lhu        $t5, 0x260($sp)
/* D16D0 800D0AD0 11A0007D */  beqz       $t5, .L800D0CC8
/* D16D4 800D0AD4 00000000 */   nop
/* D16D8 800D0AD8 8FAE025C */  lw         $t6, 0x25c($sp)
/* D16DC 800D0ADC 11C0007A */  beqz       $t6, .L800D0CC8
/* D16E0 800D0AE0 00000000 */   nop
/* D16E4 800D0AE4 97AF0262 */  lhu        $t7, 0x262($sp)
/* D16E8 800D0AE8 8FA80488 */  lw         $t0, 0x488($sp)
/* D16EC 800D0AEC 241800FF */  addiu      $t8, $zero, 0xff
/* D16F0 800D0AF0 A7AF047C */  sh         $t7, 0x47c($sp)
/* D16F4 800D0AF4 AFA0002C */  sw         $zero, 0x2c($sp)
/* D16F8 800D0AF8 AFA00028 */  sw         $zero, 0x28($sp)
/* D16FC 800D0AFC A3B80033 */  sb         $t8, 0x33($sp)
/* D1700 800D0B00 97B9047C */  lhu        $t9, 0x47c($sp)
/* D1704 800D0B04 8D090060 */  lw         $t1, 0x60($t0)
/* D1708 800D0B08 0329082A */  slt        $at, $t9, $t1
/* D170C 800D0B0C 14200042 */  bnez       $at, .L800D0C18
/* D1710 800D0B10 00000000 */   nop
/* D1714 800D0B14 93AA047C */  lbu        $t2, 0x47c($sp)
/* D1718 800D0B18 910B0064 */  lbu        $t3, 0x64($t0)
/* D171C 800D0B1C 014B082A */  slt        $at, $t2, $t3
/* D1720 800D0B20 1020003D */  beqz       $at, .L800D0C18
/* D1724 800D0B24 00000000 */   nop
/* D1728 800D0B28 93AC047D */  lbu        $t4, 0x47d($sp)
/* D172C 800D0B2C 1980003A */  blez       $t4, .L800D0C18
/* D1730 800D0B30 29810080 */   slti      $at, $t4, 0x80
/* D1734 800D0B34 10200038 */  beqz       $at, .L800D0C18
/* D1738 800D0B38 00000000 */   nop
.L800D0B3C:
/* D173C 800D0B3C 93AD0033 */  lbu        $t5, 0x33($sp)
/* D1740 800D0B40 93AE047C */  lbu        $t6, 0x47c($sp)
/* D1744 800D0B44 11AE000F */  beq        $t5, $t6, .L800D0B84
/* D1748 800D0B48 00000000 */   nop
/* D174C 800D0B4C A3AE0033 */  sb         $t6, 0x33($sp)
/* D1750 800D0B50 8FA40488 */  lw         $a0, 0x488($sp)
/* D1754 800D0B54 27A5027C */  addiu      $a1, $sp, 0x27c
/* D1758 800D0B58 00003025 */  or         $a2, $zero, $zero
/* D175C 800D0B5C 0C031D47 */  jal        func_800C751C
/* D1760 800D0B60 01C03825 */   or        $a3, $t6, $zero
/* D1764 800D0B64 AFA20480 */  sw         $v0, 0x480($sp)
/* D1768 800D0B68 8FAF0480 */  lw         $t7, 0x480($sp)
/* D176C 800D0B6C 11E00005 */  beqz       $t7, .L800D0B84
/* D1770 800D0B70 24010003 */   addiu     $at, $zero, 3
/* D1774 800D0B74 11E10003 */  beq        $t7, $at, .L800D0B84
/* D1778 800D0B78 00000000 */   nop
/* D177C 800D0B7C 10000151 */  b          .L800D10C4
/* D1780 800D0B80 01E01025 */   or        $v0, $t7, $zero
.L800D0B84:
/* D1784 800D0B84 97B8047C */  lhu        $t8, 0x47c($sp)
/* D1788 800D0B88 8FA40488 */  lw         $a0, 0x488($sp)
/* D178C 800D0B8C 27A60038 */  addiu      $a2, $sp, 0x38
/* D1790 800D0B90 A7B80004 */  sh         $t8, 4($sp)
/* D1794 800D0B94 0C0344A2 */  jal        func_800D1288
/* D1798 800D0B98 8FA50004 */   lw        $a1, 4($sp)
/* D179C 800D0B9C 8FB90028 */  lw         $t9, 0x28($sp)
/* D17A0 800D0BA0 00594823 */  subu       $t1, $v0, $t9
/* D17A4 800D0BA4 AFA9002C */  sw         $t1, 0x2c($sp)
/* D17A8 800D0BA8 8FA8002C */  lw         $t0, 0x2c($sp)
/* D17AC 800D0BAC 1500001A */  bnez       $t0, .L800D0C18
/* D17B0 800D0BB0 00000000 */   nop
/* D17B4 800D0BB4 93AC047D */  lbu        $t4, 0x47d($sp)
/* D17B8 800D0BB8 240A0001 */  addiu      $t2, $zero, 1
/* D17BC 800D0BBC 27AE027C */  addiu      $t6, $sp, 0x27c
/* D17C0 800D0BC0 000C6840 */  sll        $t5, $t4, 1
/* D17C4 800D0BC4 AFAA0028 */  sw         $t2, 0x28($sp)
/* D17C8 800D0BC8 01AE7821 */  addu       $t7, $t5, $t6
/* D17CC 800D0BCC 95E10000 */  lhu        $at, ($t7)
/* D17D0 800D0BD0 27AB047C */  addiu      $t3, $sp, 0x47c
/* D17D4 800D0BD4 A5610000 */  sh         $at, ($t3)
/* D17D8 800D0BD8 8FAA0488 */  lw         $t2, 0x488($sp)
/* D17DC 800D0BDC 97A8047C */  lhu        $t0, 0x47c($sp)
/* D17E0 800D0BE0 8D4C0060 */  lw         $t4, 0x60($t2)
/* D17E4 800D0BE4 010C082A */  slt        $at, $t0, $t4
/* D17E8 800D0BE8 1420000B */  bnez       $at, .L800D0C18
/* D17EC 800D0BEC 00000000 */   nop
/* D17F0 800D0BF0 93AD047C */  lbu        $t5, 0x47c($sp)
/* D17F4 800D0BF4 914E0064 */  lbu        $t6, 0x64($t2)
/* D17F8 800D0BF8 01AE082A */  slt        $at, $t5, $t6
/* D17FC 800D0BFC 10200006 */  beqz       $at, .L800D0C18
/* D1800 800D0C00 00000000 */   nop
/* D1804 800D0C04 93B9047D */  lbu        $t9, 0x47d($sp)
/* D1808 800D0C08 1B200003 */  blez       $t9, .L800D0C18
/* D180C 800D0C0C 2B210080 */   slti      $at, $t9, 0x80
/* D1810 800D0C10 1420FFCA */  bnez       $at, .L800D0B3C
/* D1814 800D0C14 00000000 */   nop
.L800D0C18:
/* D1818 800D0C18 8FB8002C */  lw         $t8, 0x2c($sp)
/* D181C 800D0C1C 17000005 */  bnez       $t8, .L800D0C34
/* D1820 800D0C20 00000000 */   nop
/* D1824 800D0C24 97AB047C */  lhu        $t3, 0x47c($sp)
/* D1828 800D0C28 24010001 */  addiu      $at, $zero, 1
/* D182C 800D0C2C 11610050 */  beq        $t3, $at, .L800D0D70
/* D1830 800D0C30 00000000 */   nop
.L800D0C34:
/* D1834 800D0C34 8FAF0488 */  lw         $t7, 0x488($sp)
/* D1838 800D0C38 A7A00260 */  sh         $zero, 0x260($sp)
/* D183C 800D0C3C AFA0025C */  sw         $zero, 0x25c($sp)
/* D1840 800D0C40 A7A00262 */  sh         $zero, 0x262($sp)
/* D1844 800D0C44 A3A00264 */  sb         $zero, 0x264($sp)
/* D1848 800D0C48 A7A00266 */  sh         $zero, 0x266($sp)
/* D184C 800D0C4C 91E90065 */  lbu        $t1, 0x65($t7)
/* D1850 800D0C50 1120000A */  beqz       $t1, .L800D0C7C
/* D1854 800D0C54 00000000 */   nop
/* D1858 800D0C58 A1E00065 */  sb         $zero, 0x65($t7)
/* D185C 800D0C5C 0C031E0F */  jal        func_800C783C
/* D1860 800D0C60 8FA40488 */   lw        $a0, 0x488($sp)
/* D1864 800D0C64 AFA20480 */  sw         $v0, 0x480($sp)
/* D1868 800D0C68 8FA80480 */  lw         $t0, 0x480($sp)
/* D186C 800D0C6C 11000003 */  beqz       $t0, .L800D0C7C
/* D1870 800D0C70 00000000 */   nop
/* D1874 800D0C74 10000113 */  b          .L800D10C4
/* D1878 800D0C78 01001025 */   or        $v0, $t0, $zero
.L800D0C7C:
/* D187C 800D0C7C 8FAC0488 */  lw         $t4, 0x488($sp)
/* D1880 800D0C80 8FAD0484 */  lw         $t5, 0x484($sp)
/* D1884 800D0C84 27A7025C */  addiu      $a3, $sp, 0x25c
/* D1888 800D0C88 8D8A005C */  lw         $t2, 0x5c($t4)
/* D188C 800D0C8C 8D840004 */  lw         $a0, 4($t4)
/* D1890 800D0C90 8D850008 */  lw         $a1, 8($t4)
/* D1894 800D0C94 AFA00010 */  sw         $zero, 0x10($sp)
/* D1898 800D0C98 0C034668 */  jal        func_800D19A0
/* D189C 800D0C9C 014D3021 */   addu      $a2, $t2, $t5
/* D18A0 800D0CA0 AFA20480 */  sw         $v0, 0x480($sp)
/* D18A4 800D0CA4 8FAE0480 */  lw         $t6, 0x480($sp)
/* D18A8 800D0CA8 11C00003 */  beqz       $t6, .L800D0CB8
/* D18AC 800D0CAC 00000000 */   nop
/* D18B0 800D0CB0 10000104 */  b          .L800D10C4
/* D18B4 800D0CB4 01C01025 */   or        $v0, $t6, $zero
.L800D0CB8:
/* D18B8 800D0CB8 8FB90034 */  lw         $t9, 0x34($sp)
/* D18BC 800D0CBC 27380001 */  addiu      $t8, $t9, 1
/* D18C0 800D0CC0 1000002B */  b          .L800D0D70
/* D18C4 800D0CC4 AFB80034 */   sw        $t8, 0x34($sp)
.L800D0CC8:
/* D18C8 800D0CC8 97AB0260 */  lhu        $t3, 0x260($sp)
/* D18CC 800D0CCC 15600004 */  bnez       $t3, .L800D0CE0
/* D18D0 800D0CD0 00000000 */   nop
/* D18D4 800D0CD4 8FA9025C */  lw         $t1, 0x25c($sp)
/* D18D8 800D0CD8 11200025 */  beqz       $t1, .L800D0D70
/* D18DC 800D0CDC 00000000 */   nop
.L800D0CE0:
/* D18E0 800D0CE0 8FAF0488 */  lw         $t7, 0x488($sp)
/* D18E4 800D0CE4 A7A00260 */  sh         $zero, 0x260($sp)
/* D18E8 800D0CE8 AFA0025C */  sw         $zero, 0x25c($sp)
/* D18EC 800D0CEC A7A00262 */  sh         $zero, 0x262($sp)
/* D18F0 800D0CF0 A3A00264 */  sb         $zero, 0x264($sp)
/* D18F4 800D0CF4 A7A00266 */  sh         $zero, 0x266($sp)
/* D18F8 800D0CF8 91E80065 */  lbu        $t0, 0x65($t7)
/* D18FC 800D0CFC 1100000A */  beqz       $t0, .L800D0D28
/* D1900 800D0D00 00000000 */   nop
/* D1904 800D0D04 A1E00065 */  sb         $zero, 0x65($t7)
/* D1908 800D0D08 0C031E0F */  jal        func_800C783C
/* D190C 800D0D0C 8FA40488 */   lw        $a0, 0x488($sp)
/* D1910 800D0D10 AFA20480 */  sw         $v0, 0x480($sp)
/* D1914 800D0D14 8FAC0480 */  lw         $t4, 0x480($sp)
/* D1918 800D0D18 11800003 */  beqz       $t4, .L800D0D28
/* D191C 800D0D1C 00000000 */   nop
/* D1920 800D0D20 100000E8 */  b          .L800D10C4
/* D1924 800D0D24 01801025 */   or        $v0, $t4, $zero
.L800D0D28:
/* D1928 800D0D28 8FAA0488 */  lw         $t2, 0x488($sp)
/* D192C 800D0D2C 8FAE0484 */  lw         $t6, 0x484($sp)
/* D1930 800D0D30 27A7025C */  addiu      $a3, $sp, 0x25c
/* D1934 800D0D34 8D4D005C */  lw         $t5, 0x5c($t2)
/* D1938 800D0D38 8D440004 */  lw         $a0, 4($t2)
/* D193C 800D0D3C 8D450008 */  lw         $a1, 8($t2)
/* D1940 800D0D40 AFA00010 */  sw         $zero, 0x10($sp)
/* D1944 800D0D44 0C034668 */  jal        func_800D19A0
/* D1948 800D0D48 01AE3021 */   addu      $a2, $t5, $t6
/* D194C 800D0D4C AFA20480 */  sw         $v0, 0x480($sp)
/* D1950 800D0D50 8FB90480 */  lw         $t9, 0x480($sp)
/* D1954 800D0D54 13200003 */  beqz       $t9, .L800D0D64
/* D1958 800D0D58 00000000 */   nop
/* D195C 800D0D5C 100000D9 */  b          .L800D10C4
/* D1960 800D0D60 03201025 */   or        $v0, $t9, $zero
.L800D0D64:
/* D1964 800D0D64 8FB80034 */  lw         $t8, 0x34($sp)
/* D1968 800D0D68 270B0001 */  addiu      $t3, $t8, 1
/* D196C 800D0D6C AFAB0034 */  sw         $t3, 0x34($sp)
.L800D0D70:
/* D1970 800D0D70 8FA90484 */  lw         $t1, 0x484($sp)
/* D1974 800D0D74 8FAF0488 */  lw         $t7, 0x488($sp)
/* D1978 800D0D78 25280001 */  addiu      $t0, $t1, 1
/* D197C 800D0D7C AFA80484 */  sw         $t0, 0x484($sp)
/* D1980 800D0D80 8DEC0050 */  lw         $t4, 0x50($t7)
/* D1984 800D0D84 010C082A */  slt        $at, $t0, $t4
/* D1988 800D0D88 1420FF42 */  bnez       $at, .L800D0A94
/* D198C 800D0D8C 00000000 */   nop
.L800D0D90:
/* D1990 800D0D90 8FAA0488 */  lw         $t2, 0x488($sp)
/* D1994 800D0D94 AFA00484 */  sw         $zero, 0x484($sp)
/* D1998 800D0D98 8D4D0050 */  lw         $t5, 0x50($t2)
/* D199C 800D0D9C 19A0002C */  blez       $t5, .L800D0E50
/* D19A0 800D0DA0 00000000 */   nop
.L800D0DA4:
/* D19A4 800D0DA4 8FAE0488 */  lw         $t6, 0x488($sp)
/* D19A8 800D0DA8 8FB80484 */  lw         $t8, 0x484($sp)
/* D19AC 800D0DAC 27A7025C */  addiu      $a3, $sp, 0x25c
/* D19B0 800D0DB0 8DD9005C */  lw         $t9, 0x5c($t6)
/* D19B4 800D0DB4 8DC40004 */  lw         $a0, 4($t6)
/* D19B8 800D0DB8 8DC50008 */  lw         $a1, 8($t6)
/* D19BC 800D0DBC 0C034C10 */  jal        func_800D3040
/* D19C0 800D0DC0 03383021 */   addu      $a2, $t9, $t8
/* D19C4 800D0DC4 AFA20480 */  sw         $v0, 0x480($sp)
/* D19C8 800D0DC8 8FAB0480 */  lw         $t3, 0x480($sp)
/* D19CC 800D0DCC 11600003 */  beqz       $t3, .L800D0DDC
/* D19D0 800D0DD0 00000000 */   nop
/* D19D4 800D0DD4 100000BB */  b          .L800D10C4
/* D19D8 800D0DD8 01601025 */   or        $v0, $t3, $zero
.L800D0DDC:
/* D19DC 800D0DDC 97A90260 */  lhu        $t1, 0x260($sp)
/* D19E0 800D0DE0 1120000F */  beqz       $t1, .L800D0E20
/* D19E4 800D0DE4 00000000 */   nop
/* D19E8 800D0DE8 8FAF025C */  lw         $t7, 0x25c($sp)
/* D19EC 800D0DEC 11E0000C */  beqz       $t7, .L800D0E20
/* D19F0 800D0DF0 00000000 */   nop
/* D19F4 800D0DF4 8FAC0488 */  lw         $t4, 0x488($sp)
/* D19F8 800D0DF8 97A80262 */  lhu        $t0, 0x262($sp)
/* D19FC 800D0DFC 958A0062 */  lhu        $t2, 0x62($t4)
/* D1A00 800D0E00 010A082A */  slt        $at, $t0, $t2
/* D1A04 800D0E04 14200006 */  bnez       $at, .L800D0E20
/* D1A08 800D0E08 00000000 */   nop
/* D1A0C 800D0E0C 8FAD0484 */  lw         $t5, 0x484($sp)
/* D1A10 800D0E10 000D7040 */  sll        $t6, $t5, 1
/* D1A14 800D0E14 03AEC821 */  addu       $t9, $sp, $t6
/* D1A18 800D0E18 10000005 */  b          .L800D0E30
/* D1A1C 800D0E1C A728023C */   sh        $t0, 0x23c($t9)
.L800D0E20:
/* D1A20 800D0E20 8FB80484 */  lw         $t8, 0x484($sp)
/* D1A24 800D0E24 00185840 */  sll        $t3, $t8, 1
/* D1A28 800D0E28 03AB4821 */  addu       $t1, $sp, $t3
/* D1A2C 800D0E2C A520023C */  sh         $zero, 0x23c($t1)
.L800D0E30:
/* D1A30 800D0E30 8FAF0484 */  lw         $t7, 0x484($sp)
/* D1A34 800D0E34 8FAA0488 */  lw         $t2, 0x488($sp)
/* D1A38 800D0E38 25EC0001 */  addiu      $t4, $t7, 1
/* D1A3C 800D0E3C AFAC0484 */  sw         $t4, 0x484($sp)
/* D1A40 800D0E40 8D4D0050 */  lw         $t5, 0x50($t2)
/* D1A44 800D0E44 018D082A */  slt        $at, $t4, $t5
/* D1A48 800D0E48 1420FFD6 */  bnez       $at, .L800D0DA4
/* D1A4C 800D0E4C 00000000 */   nop
.L800D0E50:
/* D1A50 800D0E50 8FA80488 */  lw         $t0, 0x488($sp)
/* D1A54 800D0E54 A3A00033 */  sb         $zero, 0x33($sp)
/* D1A58 800D0E58 910E0064 */  lbu        $t6, 0x64($t0)
/* D1A5C 800D0E5C 19C0008B */  blez       $t6, .L800D108C
/* D1A60 800D0E60 00000000 */   nop
.L800D0E64:
/* D1A64 800D0E64 8FA40488 */  lw         $a0, 0x488($sp)
/* D1A68 800D0E68 27A5027C */  addiu      $a1, $sp, 0x27c
/* D1A6C 800D0E6C 00003025 */  or         $a2, $zero, $zero
/* D1A70 800D0E70 0C031D47 */  jal        func_800C751C
/* D1A74 800D0E74 93A70033 */   lbu       $a3, 0x33($sp)
/* D1A78 800D0E78 AFA20480 */  sw         $v0, 0x480($sp)
/* D1A7C 800D0E7C 8FB90480 */  lw         $t9, 0x480($sp)
/* D1A80 800D0E80 13200005 */  beqz       $t9, .L800D0E98
/* D1A84 800D0E84 24010003 */   addiu     $at, $zero, 3
/* D1A88 800D0E88 13210003 */  beq        $t9, $at, .L800D0E98
/* D1A8C 800D0E8C 00000000 */   nop
/* D1A90 800D0E90 1000008C */  b          .L800D10C4
/* D1A94 800D0E94 03201025 */   or        $v0, $t9, $zero
.L800D0E98:
/* D1A98 800D0E98 93B80033 */  lbu        $t8, 0x33($sp)
/* D1A9C 800D0E9C 1B000004 */  blez       $t8, .L800D0EB0
/* D1AA0 800D0EA0 00000000 */   nop
/* D1AA4 800D0EA4 240B0001 */  addiu      $t3, $zero, 1
/* D1AA8 800D0EA8 10000004 */  b          .L800D0EBC
/* D1AAC 800D0EAC AFAB0024 */   sw        $t3, 0x24($sp)
.L800D0EB0:
/* D1AB0 800D0EB0 8FA90488 */  lw         $t1, 0x488($sp)
/* D1AB4 800D0EB4 8D2F0060 */  lw         $t7, 0x60($t1)
/* D1AB8 800D0EB8 AFAF0024 */  sw         $t7, 0x24($sp)
.L800D0EBC:
/* D1ABC 800D0EBC 8FAA0024 */  lw         $t2, 0x24($sp)
/* D1AC0 800D0EC0 AFA00484 */  sw         $zero, 0x484($sp)
/* D1AC4 800D0EC4 1940000D */  blez       $t2, .L800D0EFC
/* D1AC8 800D0EC8 00000000 */   nop
.L800D0ECC:
/* D1ACC 800D0ECC 8FAC0484 */  lw         $t4, 0x484($sp)
/* D1AD0 800D0ED0 000C6840 */  sll        $t5, $t4, 1
/* D1AD4 800D0ED4 03AD4021 */  addu       $t0, $sp, $t5
/* D1AD8 800D0ED8 9508027C */  lhu        $t0, 0x27c($t0)
/* D1ADC 800D0EDC 03AD7021 */  addu       $t6, $sp, $t5
/* D1AE0 800D0EE0 A5C8037C */  sh         $t0, 0x37c($t6)
/* D1AE4 800D0EE4 8FB90484 */  lw         $t9, 0x484($sp)
/* D1AE8 800D0EE8 8FAB0024 */  lw         $t3, 0x24($sp)
/* D1AEC 800D0EEC 27380001 */  addiu      $t8, $t9, 1
/* D1AF0 800D0EF0 030B082A */  slt        $at, $t8, $t3
/* D1AF4 800D0EF4 1420FFF5 */  bnez       $at, .L800D0ECC
/* D1AF8 800D0EF8 AFB80484 */   sw        $t8, 0x484($sp)
.L800D0EFC:
/* D1AFC 800D0EFC 8FA90484 */  lw         $t1, 0x484($sp)
/* D1B00 800D0F00 29210080 */  slti       $at, $t1, 0x80
/* D1B04 800D0F04 1020000B */  beqz       $at, .L800D0F34
/* D1B08 800D0F08 00000000 */   nop
.L800D0F0C:
/* D1B0C 800D0F0C 8FAA0484 */  lw         $t2, 0x484($sp)
/* D1B10 800D0F10 240F0003 */  addiu      $t7, $zero, 3
/* D1B14 800D0F14 000A6040 */  sll        $t4, $t2, 1
/* D1B18 800D0F18 03AC4021 */  addu       $t0, $sp, $t4
/* D1B1C 800D0F1C A50F037C */  sh         $t7, 0x37c($t0)
/* D1B20 800D0F20 8FAD0484 */  lw         $t5, 0x484($sp)
/* D1B24 800D0F24 25AE0001 */  addiu      $t6, $t5, 1
/* D1B28 800D0F28 29C10080 */  slti       $at, $t6, 0x80
/* D1B2C 800D0F2C 1420FFF7 */  bnez       $at, .L800D0F0C
/* D1B30 800D0F30 AFAE0484 */   sw        $t6, 0x484($sp)
.L800D0F34:
/* D1B34 800D0F34 8FB90488 */  lw         $t9, 0x488($sp)
/* D1B38 800D0F38 AFA00484 */  sw         $zero, 0x484($sp)
/* D1B3C 800D0F3C 8F380050 */  lw         $t8, 0x50($t9)
/* D1B40 800D0F40 1B00003E */  blez       $t8, .L800D103C
/* D1B44 800D0F44 00000000 */   nop
.L800D0F48:
/* D1B48 800D0F48 8FAB0484 */  lw         $t3, 0x484($sp)
/* D1B4C 800D0F4C 27AA023C */  addiu      $t2, $sp, 0x23c
/* D1B50 800D0F50 93A80033 */  lbu        $t0, 0x33($sp)
/* D1B54 800D0F54 000B4840 */  sll        $t1, $t3, 1
/* D1B58 800D0F58 012A7821 */  addu       $t7, $t1, $t2
/* D1B5C 800D0F5C 91EC0000 */  lbu        $t4, ($t7)
/* D1B60 800D0F60 1588002E */  bne        $t4, $t0, .L800D101C
/* D1B64 800D0F64 00000000 */   nop
/* D1B68 800D0F68 8FAE0488 */  lw         $t6, 0x488($sp)
/* D1B6C 800D0F6C 95ED0000 */  lhu        $t5, ($t7)
/* D1B70 800D0F70 95D90062 */  lhu        $t9, 0x62($t6)
/* D1B74 800D0F74 01B9082A */  slt        $at, $t5, $t9
/* D1B78 800D0F78 14200028 */  bnez       $at, .L800D101C
/* D1B7C 800D0F7C 00000000 */   nop
.L800D0F80:
/* D1B80 800D0F80 8FB80484 */  lw         $t8, 0x484($sp)
/* D1B84 800D0F84 27A8027C */  addiu      $t0, $sp, 0x27c
/* D1B88 800D0F88 27AA0020 */  addiu      $t2, $sp, 0x20
/* D1B8C 800D0F8C 00185840 */  sll        $t3, $t8, 1
/* D1B90 800D0F90 03AB4821 */  addu       $t1, $sp, $t3
/* D1B94 800D0F94 9129023D */  lbu        $t1, 0x23d($t1)
/* D1B98 800D0F98 00096040 */  sll        $t4, $t1, 1
/* D1B9C 800D0F9C 01887821 */  addu       $t7, $t4, $t0
/* D1BA0 800D0FA0 A3A90023 */  sb         $t1, 0x23($sp)
/* D1BA4 800D0FA4 95E10000 */  lhu        $at, ($t7)
/* D1BA8 800D0FA8 27A80020 */  addiu      $t0, $sp, 0x20
/* D1BAC 800D0FAC 27A9037C */  addiu      $t1, $sp, 0x37c
/* D1BB0 800D0FB0 A5410000 */  sh         $at, ($t2)
/* D1BB4 800D0FB4 93B80023 */  lbu        $t8, 0x23($sp)
/* D1BB8 800D0FB8 95010000 */  lhu        $at, ($t0)
/* D1BBC 800D0FBC 00185840 */  sll        $t3, $t8, 1
/* D1BC0 800D0FC0 01696021 */  addu       $t4, $t3, $t1
/* D1BC4 800D0FC4 A5810000 */  sh         $at, ($t4)
/* D1BC8 800D0FC8 8FAF0484 */  lw         $t7, 0x484($sp)
/* D1BCC 800D0FCC 27A90020 */  addiu      $t1, $sp, 0x20
/* D1BD0 800D0FD0 95210000 */  lhu        $at, ($t1)
/* D1BD4 800D0FD4 27B8023C */  addiu      $t8, $sp, 0x23c
/* D1BD8 800D0FD8 000FC840 */  sll        $t9, $t7, 1
/* D1BDC 800D0FDC 03385821 */  addu       $t3, $t9, $t8
/* D1BE0 800D0FE0 A5610000 */  sh         $at, ($t3)
/* D1BE4 800D0FE4 8FA80484 */  lw         $t0, 0x484($sp)
/* D1BE8 800D0FE8 27AF023C */  addiu      $t7, $sp, 0x23c
/* D1BEC 800D0FEC 93AD0033 */  lbu        $t5, 0x33($sp)
/* D1BF0 800D0FF0 00085040 */  sll        $t2, $t0, 1
/* D1BF4 800D0FF4 014FC821 */  addu       $t9, $t2, $t7
/* D1BF8 800D0FF8 93380000 */  lbu        $t8, ($t9)
/* D1BFC 800D0FFC 170D0007 */  bne        $t8, $t5, .L800D101C
/* D1C00 800D1000 00000000 */   nop
/* D1C04 800D1004 8FAB0488 */  lw         $t3, 0x488($sp)
/* D1C08 800D1008 972E0000 */  lhu        $t6, ($t9)
/* D1C0C 800D100C 95690062 */  lhu        $t1, 0x62($t3)
/* D1C10 800D1010 01C9082A */  slt        $at, $t6, $t1
/* D1C14 800D1014 1020FFDA */  beqz       $at, .L800D0F80
/* D1C18 800D1018 00000000 */   nop
.L800D101C:
/* D1C1C 800D101C 8FAC0484 */  lw         $t4, 0x484($sp)
/* D1C20 800D1020 8FAA0488 */  lw         $t2, 0x488($sp)
/* D1C24 800D1024 25880001 */  addiu      $t0, $t4, 1
/* D1C28 800D1028 AFA80484 */  sw         $t0, 0x484($sp)
/* D1C2C 800D102C 8D4F0050 */  lw         $t7, 0x50($t2)
/* D1C30 800D1030 010F082A */  slt        $at, $t0, $t7
/* D1C34 800D1034 1420FFC4 */  bnez       $at, .L800D0F48
/* D1C38 800D1038 00000000 */   nop
.L800D103C:
/* D1C3C 800D103C 8FA40488 */  lw         $a0, 0x488($sp)
/* D1C40 800D1040 27A5037C */  addiu      $a1, $sp, 0x37c
/* D1C44 800D1044 24060001 */  addiu      $a2, $zero, 1
/* D1C48 800D1048 0C031D47 */  jal        func_800C751C
/* D1C4C 800D104C 93A70033 */   lbu       $a3, 0x33($sp)
/* D1C50 800D1050 AFA20480 */  sw         $v0, 0x480($sp)
/* D1C54 800D1054 8FB80480 */  lw         $t8, 0x480($sp)
/* D1C58 800D1058 13000003 */  beqz       $t8, .L800D1068
/* D1C5C 800D105C 00000000 */   nop
/* D1C60 800D1060 10000018 */  b          .L800D10C4
/* D1C64 800D1064 03001025 */   or        $v0, $t8, $zero
.L800D1068:
/* D1C68 800D1068 93AD0033 */  lbu        $t5, 0x33($sp)
/* D1C6C 800D106C 8FAE0488 */  lw         $t6, 0x488($sp)
/* D1C70 800D1070 25B90001 */  addiu      $t9, $t5, 1
/* D1C74 800D1074 A3B90033 */  sb         $t9, 0x33($sp)
/* D1C78 800D1078 91C90064 */  lbu        $t1, 0x64($t6)
/* D1C7C 800D107C 332B00FF */  andi       $t3, $t9, 0xff
/* D1C80 800D1080 0169082A */  slt        $at, $t3, $t1
/* D1C84 800D1084 1420FF77 */  bnez       $at, .L800D0E64
/* D1C88 800D1088 00000000 */   nop
.L800D108C:
/* D1C8C 800D108C 8FAC0034 */  lw         $t4, 0x34($sp)
/* D1C90 800D1090 11800006 */  beqz       $t4, .L800D10AC
/* D1C94 800D1094 00000000 */   nop
/* D1C98 800D1098 8FAA0488 */  lw         $t2, 0x488($sp)
/* D1C9C 800D109C 8D480000 */  lw         $t0, ($t2)
/* D1CA0 800D10A0 350F0002 */  ori        $t7, $t0, 2
/* D1CA4 800D10A4 10000006 */  b          .L800D10C0
/* D1CA8 800D10A8 AD4F0000 */   sw        $t7, ($t2)
.L800D10AC:
/* D1CAC 800D10AC 8FB80488 */  lw         $t8, 0x488($sp)
/* D1CB0 800D10B0 2401FFFD */  addiu      $at, $zero, -3
/* D1CB4 800D10B4 8F0D0000 */  lw         $t5, ($t8)
/* D1CB8 800D10B8 01A1C824 */  and        $t9, $t5, $at
/* D1CBC 800D10BC AF190000 */  sw         $t9, ($t8)
.L800D10C0:
/* D1CC0 800D10C0 00001025 */  or         $v0, $zero, $zero
.L800D10C4:
/* D1CC4 800D10C4 8FBF001C */  lw         $ra, 0x1c($sp)
/* D1CC8 800D10C8 27BD0488 */  addiu      $sp, $sp, 0x488
/* D1CCC 800D10CC 03E00008 */  jr         $ra
/* D1CD0 800D10D0 00000000 */   nop

glabel func_800D10D4
/* D1CD4 800D10D4 27BDFED0 */  addiu      $sp, $sp, -0x130
/* D1CD8 800D10D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D1CDC 800D10DC AFA40130 */  sw         $a0, 0x130($sp)
/* D1CE0 800D10E0 AFA50134 */  sw         $a1, 0x134($sp)
/* D1CE4 800D10E4 AFA0012C */  sw         $zero, 0x12c($sp)
.L800D10E8:
/* D1CE8 800D10E8 8FAE0134 */  lw         $t6, 0x134($sp)
/* D1CEC 800D10EC 8FAF012C */  lw         $t7, 0x12c($sp)
/* D1CF0 800D10F0 01CFC021 */  addu       $t8, $t6, $t7
/* D1CF4 800D10F4 A3000101 */  sb         $zero, 0x101($t8)
/* D1CF8 800D10F8 8FB9012C */  lw         $t9, 0x12c($sp)
/* D1CFC 800D10FC 27280001 */  addiu      $t0, $t9, 1
/* D1D00 800D1100 29010100 */  slti       $at, $t0, 0x100
/* D1D04 800D1104 1420FFF8 */  bnez       $at, .L800D10E8
/* D1D08 800D1108 AFA8012C */   sw        $t0, 0x12c($sp)
/* D1D0C 800D110C 8FAA0134 */  lw         $t2, 0x134($sp)
/* D1D10 800D1110 240900FF */  addiu      $t1, $zero, 0xff
/* D1D14 800D1114 A1490100 */  sb         $t1, 0x100($t2)
/* D1D18 800D1118 8FAB0130 */  lw         $t3, 0x130($sp)
/* D1D1C 800D111C A3A00123 */  sb         $zero, 0x123($sp)
/* D1D20 800D1120 916C0064 */  lbu        $t4, 0x64($t3)
/* D1D24 800D1124 19800053 */  blez       $t4, .L800D1274
/* D1D28 800D1128 00000000 */   nop
.L800D112C:
/* D1D2C 800D112C 93AD0123 */  lbu        $t5, 0x123($sp)
/* D1D30 800D1130 19A00004 */  blez       $t5, .L800D1144
/* D1D34 800D1134 00000000 */   nop
/* D1D38 800D1138 240E0001 */  addiu      $t6, $zero, 1
/* D1D3C 800D113C 10000004 */  b          .L800D1150
/* D1D40 800D1140 AFAE0124 */   sw        $t6, 0x124($sp)
.L800D1144:
/* D1D44 800D1144 8FAF0130 */  lw         $t7, 0x130($sp)
/* D1D48 800D1148 8DF80060 */  lw         $t8, 0x60($t7)
/* D1D4C 800D114C AFB80124 */  sw         $t8, 0x124($sp)
.L800D1150:
/* D1D50 800D1150 8FA40130 */  lw         $a0, 0x130($sp)
/* D1D54 800D1154 27A50020 */  addiu      $a1, $sp, 0x20
/* D1D58 800D1158 00003025 */  or         $a2, $zero, $zero
/* D1D5C 800D115C 0C031D47 */  jal        func_800C751C
/* D1D60 800D1160 93A70123 */   lbu       $a3, 0x123($sp)
/* D1D64 800D1164 AFA2001C */  sw         $v0, 0x1c($sp)
/* D1D68 800D1168 8FB9001C */  lw         $t9, 0x1c($sp)
/* D1D6C 800D116C 13200005 */  beqz       $t9, .L800D1184
/* D1D70 800D1170 24010003 */   addiu     $at, $zero, 3
/* D1D74 800D1174 13210003 */  beq        $t9, $at, .L800D1184
/* D1D78 800D1178 00000000 */   nop
/* D1D7C 800D117C 1000003E */  b          .L800D1278
/* D1D80 800D1180 03201025 */   or        $v0, $t9, $zero
.L800D1184:
/* D1D84 800D1184 8FA80124 */  lw         $t0, 0x124($sp)
/* D1D88 800D1188 29010080 */  slti       $at, $t0, 0x80
/* D1D8C 800D118C 10200030 */  beqz       $at, .L800D1250
/* D1D90 800D1190 AFA8012C */   sw        $t0, 0x12c($sp)
.L800D1194:
/* D1D94 800D1194 8FAA012C */  lw         $t2, 0x12c($sp)
/* D1D98 800D1198 27AC0020 */  addiu      $t4, $sp, 0x20
/* D1D9C 800D119C 27A90120 */  addiu      $t1, $sp, 0x120
/* D1DA0 800D11A0 000A5840 */  sll        $t3, $t2, 1
/* D1DA4 800D11A4 016C6821 */  addu       $t5, $t3, $t4
/* D1DA8 800D11A8 95A10000 */  lhu        $at, ($t5)
/* D1DAC 800D11AC A5210000 */  sh         $at, ($t1)
/* D1DB0 800D11B0 8FB90130 */  lw         $t9, 0x130($sp)
/* D1DB4 800D11B4 97B80120 */  lhu        $t8, 0x120($sp)
/* D1DB8 800D11B8 8F280060 */  lw         $t0, 0x60($t9)
/* D1DBC 800D11BC 0308082A */  slt        $at, $t8, $t0
/* D1DC0 800D11C0 1420001E */  bnez       $at, .L800D123C
/* D1DC4 800D11C4 00000000 */   nop
/* D1DC8 800D11C8 93AA0120 */  lbu        $t2, 0x120($sp)
/* D1DCC 800D11CC 93AB0123 */  lbu        $t3, 0x123($sp)
/* D1DD0 800D11D0 114B001A */  beq        $t2, $t3, .L800D123C
/* D1DD4 800D11D4 00000000 */   nop
/* D1DD8 800D11D8 93AC0121 */  lbu        $t4, 0x121($sp)
/* D1DDC 800D11DC 8FB90134 */  lw         $t9, 0x134($sp)
/* D1DE0 800D11E0 05810003 */  bgez       $t4, .L800D11F0
/* D1DE4 800D11E4 000C7083 */   sra       $t6, $t4, 2
/* D1DE8 800D11E8 25810003 */  addiu      $at, $t4, 3
/* D1DEC 800D11EC 00017083 */  sra        $t6, $at, 2
.L800D11F0:
/* D1DF0 800D11F0 05410004 */  bgez       $t2, .L800D1204
/* D1DF4 800D11F4 31490007 */   andi      $t1, $t2, 7
/* D1DF8 800D11F8 11200002 */  beqz       $t1, .L800D1204
/* D1DFC 800D11FC 00000000 */   nop
/* D1E00 800D1200 2529FFF8 */  addiu      $t1, $t1, -8
.L800D1204:
/* D1E04 800D1204 00096940 */  sll        $t5, $t1, 5
/* D1E08 800D1208 01CD7821 */  addu       $t7, $t6, $t5
/* D1E0C 800D120C AFAF0128 */  sw         $t7, 0x128($sp)
/* D1E10 800D1210 032FC021 */  addu       $t8, $t9, $t7
/* D1E14 800D1214 93080101 */  lbu        $t0, 0x101($t8)
/* D1E18 800D1218 05610004 */  bgez       $t3, .L800D122C
/* D1E1C 800D121C 316C0007 */   andi      $t4, $t3, 7
/* D1E20 800D1220 11800002 */  beqz       $t4, .L800D122C
/* D1E24 800D1224 00000000 */   nop
/* D1E28 800D1228 258CFFF8 */  addiu      $t4, $t4, -8
.L800D122C:
/* D1E2C 800D122C 240A0001 */  addiu      $t2, $zero, 1
/* D1E30 800D1230 018A4804 */  sllv       $t1, $t2, $t4
/* D1E34 800D1234 01097025 */  or         $t6, $t0, $t1
/* D1E38 800D1238 A30E0101 */  sb         $t6, 0x101($t8)
.L800D123C:
/* D1E3C 800D123C 8FAD012C */  lw         $t5, 0x12c($sp)
/* D1E40 800D1240 25B90001 */  addiu      $t9, $t5, 1
/* D1E44 800D1244 2B210080 */  slti       $at, $t9, 0x80
/* D1E48 800D1248 1420FFD2 */  bnez       $at, .L800D1194
/* D1E4C 800D124C AFB9012C */   sw        $t9, 0x12c($sp)
.L800D1250:
/* D1E50 800D1250 93AF0123 */  lbu        $t7, 0x123($sp)
/* D1E54 800D1254 8FAC0130 */  lw         $t4, 0x130($sp)
/* D1E58 800D1258 25EB0001 */  addiu      $t3, $t7, 1
/* D1E5C 800D125C A3AB0123 */  sb         $t3, 0x123($sp)
/* D1E60 800D1260 91880064 */  lbu        $t0, 0x64($t4)
/* D1E64 800D1264 316A00FF */  andi       $t2, $t3, 0xff
/* D1E68 800D1268 0148082A */  slt        $at, $t2, $t0
/* D1E6C 800D126C 1420FFAF */  bnez       $at, .L800D112C
/* D1E70 800D1270 00000000 */   nop
.L800D1274:
/* D1E74 800D1274 00001025 */  or         $v0, $zero, $zero
.L800D1278:
/* D1E78 800D1278 8FBF0014 */  lw         $ra, 0x14($sp)
/* D1E7C 800D127C 27BD0130 */  addiu      $sp, $sp, 0x130
/* D1E80 800D1280 03E00008 */  jr         $ra
/* D1E84 800D1284 00000000 */   nop

glabel func_800D1288
/* D1E88 800D1288 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D1E8C 800D128C AFA50034 */  sw         $a1, 0x34($sp)
/* D1E90 800D1290 93B80034 */  lbu        $t8, 0x34($sp)
/* D1E94 800D1294 93AE0035 */  lbu        $t6, 0x35($sp)
/* D1E98 800D1298 AFA40030 */  sw         $a0, 0x30($sp)
/* D1E9C 800D129C 8FAA0030 */  lw         $t2, 0x30($sp)
/* D1EA0 800D12A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* D1EA4 800D12A4 AFA60038 */  sw         $a2, 0x38($sp)
/* D1EA8 800D12A8 AFA00024 */  sw         $zero, 0x24($sp)
/* D1EAC 800D12AC AFA00018 */  sw         $zero, 0x18($sp)
/* D1EB0 800D12B0 05C10003 */  bgez       $t6, .L800D12C0
/* D1EB4 800D12B4 000E7883 */   sra       $t7, $t6, 2
/* D1EB8 800D12B8 25C10003 */  addiu      $at, $t6, 3
/* D1EBC 800D12BC 00017883 */  sra        $t7, $at, 2
.L800D12C0:
/* D1EC0 800D12C0 07010004 */  bgez       $t8, .L800D12D4
/* D1EC4 800D12C4 33190007 */   andi      $t9, $t8, 7
/* D1EC8 800D12C8 13200002 */  beqz       $t9, .L800D12D4
/* D1ECC 800D12CC 00000000 */   nop
/* D1ED0 800D12D0 2739FFF8 */  addiu      $t9, $t9, -8
.L800D12D4:
/* D1ED4 800D12D4 00194140 */  sll        $t0, $t9, 5
/* D1ED8 800D12D8 01E84821 */  addu       $t1, $t7, $t0
/* D1EDC 800D12DC AFA90028 */  sw         $t1, 0x28($sp)
/* D1EE0 800D12E0 A3A00023 */  sb         $zero, 0x23($sp)
/* D1EE4 800D12E4 914B0064 */  lbu        $t3, 0x64($t2)
/* D1EE8 800D12E8 1960005C */  blez       $t3, .L800D145C
/* D1EEC 800D12EC 00000000 */   nop
.L800D12F0:
/* D1EF0 800D12F0 93AC0023 */  lbu        $t4, 0x23($sp)
/* D1EF4 800D12F4 19800004 */  blez       $t4, .L800D1308
/* D1EF8 800D12F8 00000000 */   nop
/* D1EFC 800D12FC 240D0001 */  addiu      $t5, $zero, 1
/* D1F00 800D1300 10000004 */  b          .L800D1314
/* D1F04 800D1304 AFAD001C */   sw        $t5, 0x1c($sp)
.L800D1308:
/* D1F08 800D1308 8FAE0030 */  lw         $t6, 0x30($sp)
/* D1F0C 800D130C 8DD80060 */  lw         $t8, 0x60($t6)
/* D1F10 800D1310 AFB8001C */  sw         $t8, 0x1c($sp)
.L800D1314:
/* D1F14 800D1314 93B90023 */  lbu        $t9, 0x23($sp)
/* D1F18 800D1318 93AF0034 */  lbu        $t7, 0x34($sp)
/* D1F1C 800D131C 132F000F */  beq        $t9, $t7, .L800D135C
/* D1F20 800D1320 00000000 */   nop
/* D1F24 800D1324 8FA80038 */  lw         $t0, 0x38($sp)
/* D1F28 800D1328 8FA90028 */  lw         $t1, 0x28($sp)
/* D1F2C 800D132C 240D0001 */  addiu      $t5, $zero, 1
/* D1F30 800D1330 01095021 */  addu       $t2, $t0, $t1
/* D1F34 800D1334 914B0101 */  lbu        $t3, 0x101($t2)
/* D1F38 800D1338 07210004 */  bgez       $t9, .L800D134C
/* D1F3C 800D133C 332C0007 */   andi      $t4, $t9, 7
/* D1F40 800D1340 11800002 */  beqz       $t4, .L800D134C
/* D1F44 800D1344 00000000 */   nop
/* D1F48 800D1348 258CFFF8 */  addiu      $t4, $t4, -8
.L800D134C:
/* D1F4C 800D134C 018D7004 */  sllv       $t6, $t5, $t4
/* D1F50 800D1350 016EC024 */  and        $t8, $t3, $t6
/* D1F54 800D1354 13000038 */  beqz       $t8, .L800D1438
/* D1F58 800D1358 00000000 */   nop
.L800D135C:
/* D1F5C 800D135C 8FA80038 */  lw         $t0, 0x38($sp)
/* D1F60 800D1360 93AF0023 */  lbu        $t7, 0x23($sp)
/* D1F64 800D1364 91090100 */  lbu        $t1, 0x100($t0)
/* D1F68 800D1368 11E90011 */  beq        $t7, $t1, .L800D13B0
/* D1F6C 800D136C 00000000 */   nop
/* D1F70 800D1370 8FA40030 */  lw         $a0, 0x30($sp)
/* D1F74 800D1374 01002825 */  or         $a1, $t0, $zero
/* D1F78 800D1378 00003025 */  or         $a2, $zero, $zero
/* D1F7C 800D137C 0C031D47 */  jal        func_800C751C
/* D1F80 800D1380 01E03825 */   or        $a3, $t7, $zero
/* D1F84 800D1384 AFA20018 */  sw         $v0, 0x18($sp)
/* D1F88 800D1388 8FAA0018 */  lw         $t2, 0x18($sp)
/* D1F8C 800D138C 11400005 */  beqz       $t2, .L800D13A4
/* D1F90 800D1390 24010003 */   addiu     $at, $zero, 3
/* D1F94 800D1394 11410003 */  beq        $t2, $at, .L800D13A4
/* D1F98 800D1398 00000000 */   nop
/* D1F9C 800D139C 10000030 */  b          .L800D1460
/* D1FA0 800D13A0 01401025 */   or        $v0, $t2, $zero
.L800D13A4:
/* D1FA4 800D13A4 93B90023 */  lbu        $t9, 0x23($sp)
/* D1FA8 800D13A8 8FAD0038 */  lw         $t5, 0x38($sp)
/* D1FAC 800D13AC A1B90100 */  sb         $t9, 0x100($t5)
.L800D13B0:
/* D1FB0 800D13B0 8FAB0024 */  lw         $t3, 0x24($sp)
/* D1FB4 800D13B4 8FAC001C */  lw         $t4, 0x1c($sp)
/* D1FB8 800D13B8 29610002 */  slti       $at, $t3, 2
/* D1FBC 800D13BC 10200018 */  beqz       $at, .L800D1420
/* D1FC0 800D13C0 AFAC002C */   sw        $t4, 0x2c($sp)
/* D1FC4 800D13C4 29810080 */  slti       $at, $t4, 0x80
/* D1FC8 800D13C8 10200015 */  beqz       $at, .L800D1420
/* D1FCC 800D13CC 00000000 */   nop
.L800D13D0:
/* D1FD0 800D13D0 8FB8002C */  lw         $t8, 0x2c($sp)
/* D1FD4 800D13D4 8FAE0038 */  lw         $t6, 0x38($sp)
/* D1FD8 800D13D8 97AA0034 */  lhu        $t2, 0x34($sp)
/* D1FDC 800D13DC 00184840 */  sll        $t1, $t8, 1
/* D1FE0 800D13E0 01C94021 */  addu       $t0, $t6, $t1
/* D1FE4 800D13E4 950F0000 */  lhu        $t7, ($t0)
/* D1FE8 800D13E8 15EA0004 */  bne        $t7, $t2, .L800D13FC
/* D1FEC 800D13EC 00000000 */   nop
/* D1FF0 800D13F0 8FB90024 */  lw         $t9, 0x24($sp)
/* D1FF4 800D13F4 272D0001 */  addiu      $t5, $t9, 1
/* D1FF8 800D13F8 AFAD0024 */  sw         $t5, 0x24($sp)
.L800D13FC:
/* D1FFC 800D13FC 8FAB002C */  lw         $t3, 0x2c($sp)
/* D2000 800D1400 8FB80024 */  lw         $t8, 0x24($sp)
/* D2004 800D1404 256C0001 */  addiu      $t4, $t3, 1
/* D2008 800D1408 2B010002 */  slti       $at, $t8, 2
/* D200C 800D140C 10200004 */  beqz       $at, .L800D1420
/* D2010 800D1410 AFAC002C */   sw        $t4, 0x2c($sp)
/* D2014 800D1414 29810080 */  slti       $at, $t4, 0x80
/* D2018 800D1418 1420FFED */  bnez       $at, .L800D13D0
/* D201C 800D141C 00000000 */   nop
.L800D1420:
/* D2020 800D1420 8FAE0024 */  lw         $t6, 0x24($sp)
/* D2024 800D1424 29C10002 */  slti       $at, $t6, 2
/* D2028 800D1428 14200003 */  bnez       $at, .L800D1438
/* D202C 800D142C 00000000 */   nop
/* D2030 800D1430 1000000B */  b          .L800D1460
/* D2034 800D1434 24020002 */   addiu     $v0, $zero, 2
.L800D1438:
/* D2038 800D1438 93A90023 */  lbu        $t1, 0x23($sp)
/* D203C 800D143C 8FAA0030 */  lw         $t2, 0x30($sp)
/* D2040 800D1440 25280001 */  addiu      $t0, $t1, 1
/* D2044 800D1444 A3A80023 */  sb         $t0, 0x23($sp)
/* D2048 800D1448 91590064 */  lbu        $t9, 0x64($t2)
/* D204C 800D144C 310F00FF */  andi       $t7, $t0, 0xff
/* D2050 800D1450 01F9082A */  slt        $at, $t7, $t9
/* D2054 800D1454 1420FFA6 */  bnez       $at, .L800D12F0
/* D2058 800D1458 00000000 */   nop
.L800D145C:
/* D205C 800D145C 8FA20024 */  lw         $v0, 0x24($sp)
.L800D1460:
/* D2060 800D1460 8FBF0014 */  lw         $ra, 0x14($sp)
/* D2064 800D1464 27BD0030 */  addiu      $sp, $sp, 0x30
/* D2068 800D1468 03E00008 */  jr         $ra
/* D206C 800D146C 00000000 */   nop

glabel func_800D1470
/* D2070 800D1470 3C0EA450 */  lui        $t6, %hi(D_A4500004)
/* D2074 800D1474 03E00008 */  jr         $ra
/* D2078 800D1478 8DC20004 */   lw        $v0, %lo(D_A4500004)($t6)
/* D207C 800D147C 00000000 */  nop
