.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A06F0
/* A12F0 800A06F0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* A12F4 800A06F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A12F8 800A06F8 AFA40050 */  sw         $a0, 0x50($sp)
/* A12FC 800A06FC 3C0E801A */  lui        $t6, %hi(D_801A2020)
/* A1300 800A0700 25CE2020 */  addiu      $t6, $t6, %lo(D_801A2020)
/* A1304 800A0704 AFAE0044 */  sw         $t6, 0x44($sp)
/* A1308 800A0708 8FAF0050 */  lw         $t7, 0x50($sp)
/* A130C 800A070C 3C08800D */  lui        $t0, %hi(D_800CC2D0)
/* A1310 800A0710 8DF80008 */  lw         $t8, 8($t7)
/* A1314 800A0714 0018C880 */  sll        $t9, $t8, 2
/* A1318 800A0718 01194021 */  addu       $t0, $t0, $t9
/* A131C 800A071C 8D08C2D0 */  lw         $t0, %lo(D_800CC2D0)($t0)
/* A1320 800A0720 15000003 */  bnez       $t0, .L800A0730
/* A1324 800A0724 00000000 */   nop
/* A1328 800A0728 1000005B */  b          .L800A0898
/* A132C 800A072C 24020005 */   addiu     $v0, $zero, 5
.L800A0730:
/* A1330 800A0730 0C026612 */  jal        func_80099848
/* A1334 800A0734 00000000 */   nop
/* A1338 800A0738 24090003 */  addiu      $t1, $zero, 3
/* A133C 800A073C 3C01801A */  lui        $at, %hi(D_801A1B50)
/* A1340 800A0740 A0291B50 */  sb         $t1, %lo(D_801A1B50)($at)
/* A1344 800A0744 8FAA0050 */  lw         $t2, 0x50($sp)
/* A1348 800A0748 3C0D801A */  lui        $t5, %hi(D_801A1DE0)
/* A134C 800A074C 25AD1DE0 */  addiu      $t5, $t5, %lo(D_801A1DE0)
/* A1350 800A0750 8D4B0008 */  lw         $t3, 8($t2)
/* A1354 800A0754 24040001 */  addiu      $a0, $zero, 1
/* A1358 800A0758 000B6180 */  sll        $t4, $t3, 6
/* A135C 800A075C 0C027D70 */  jal        func_8009F5C0
/* A1360 800A0760 018D2821 */   addu      $a1, $t4, $t5
/* A1364 800A0764 8FAE0050 */  lw         $t6, 0x50($sp)
/* A1368 800A0768 00002825 */  or         $a1, $zero, $zero
/* A136C 800A076C 24060001 */  addiu      $a2, $zero, 1
/* A1370 800A0770 0C025D30 */  jal        func_800974C0
/* A1374 800A0774 8DC40004 */   lw        $a0, 4($t6)
/* A1378 800A0778 3C05801A */  lui        $a1, %hi(D_801A2020)
/* A137C 800A077C 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* A1380 800A0780 0C027D70 */  jal        func_8009F5C0
/* A1384 800A0784 00002025 */   or        $a0, $zero, $zero
/* A1388 800A0788 AFA20048 */  sw         $v0, 0x48($sp)
/* A138C 800A078C 8FAF0050 */  lw         $t7, 0x50($sp)
/* A1390 800A0790 00002825 */  or         $a1, $zero, $zero
/* A1394 800A0794 24060001 */  addiu      $a2, $zero, 1
/* A1398 800A0798 0C025D30 */  jal        func_800974C0
/* A139C 800A079C 8DE40004 */   lw        $a0, 4($t7)
/* A13A0 800A07A0 3C18801A */  lui        $t8, %hi(D_801A2020)
/* A13A4 800A07A4 27182020 */  addiu      $t8, $t8, %lo(D_801A2020)
/* A13A8 800A07A8 AFB80044 */  sw         $t8, 0x44($sp)
/* A13AC 800A07AC 8FB90050 */  lw         $t9, 0x50($sp)
/* A13B0 800A07B0 8F280008 */  lw         $t0, 8($t9)
/* A13B4 800A07B4 11000011 */  beqz       $t0, .L800A07FC
/* A13B8 800A07B8 00000000 */   nop
/* A13BC 800A07BC 8FA90050 */  lw         $t1, 0x50($sp)
/* A13C0 800A07C0 AFA0004C */  sw         $zero, 0x4c($sp)
/* A13C4 800A07C4 8D2A0008 */  lw         $t2, 8($t1)
/* A13C8 800A07C8 1940000C */  blez       $t2, .L800A07FC
/* A13CC 800A07CC 00000000 */   nop
.L800A07D0:
/* A13D0 800A07D0 8FAB0044 */  lw         $t3, 0x44($sp)
/* A13D4 800A07D4 256C0001 */  addiu      $t4, $t3, 1
/* A13D8 800A07D8 AFAC0044 */  sw         $t4, 0x44($sp)
/* A13DC 800A07DC 8FAD004C */  lw         $t5, 0x4c($sp)
/* A13E0 800A07E0 8FAF0050 */  lw         $t7, 0x50($sp)
/* A13E4 800A07E4 25AE0001 */  addiu      $t6, $t5, 1
/* A13E8 800A07E8 AFAE004C */  sw         $t6, 0x4c($sp)
/* A13EC 800A07EC 8DF80008 */  lw         $t8, 8($t7)
/* A13F0 800A07F0 01D8082A */  slt        $at, $t6, $t8
/* A13F4 800A07F4 1420FFF6 */  bnez       $at, .L800A07D0
/* A13F8 800A07F8 00000000 */   nop
.L800A07FC:
/* A13FC 800A07FC 8FA80044 */  lw         $t0, 0x44($sp)
/* A1400 800A0800 27B9001C */  addiu      $t9, $sp, 0x1c
/* A1404 800A0804 250A0024 */  addiu      $t2, $t0, 0x24
.L800A0808:
/* A1408 800A0808 89010000 */  lwl        $at, ($t0)
/* A140C 800A080C 99010003 */  lwr        $at, 3($t0)
/* A1410 800A0810 2508000C */  addiu      $t0, $t0, 0xc
/* A1414 800A0814 2739000C */  addiu      $t9, $t9, 0xc
/* A1418 800A0818 AF21FFF4 */  sw         $at, -0xc($t9)
/* A141C 800A081C 8901FFF8 */  lwl        $at, -8($t0)
/* A1420 800A0820 9901FFFB */  lwr        $at, -5($t0)
/* A1424 800A0824 AF21FFF8 */  sw         $at, -8($t9)
/* A1428 800A0828 8901FFFC */  lwl        $at, -4($t0)
/* A142C 800A082C 9901FFFF */  lwr        $at, -1($t0)
/* A1430 800A0830 150AFFF5 */  bne        $t0, $t2, .L800A0808
/* A1434 800A0834 AF21FFFC */   sw        $at, -4($t9)
/* A1438 800A0838 89010000 */  lwl        $at, ($t0)
/* A143C 800A083C 99010003 */  lwr        $at, 3($t0)
/* A1440 800A0840 AF210000 */  sw         $at, ($t9)
/* A1444 800A0844 93AB001E */  lbu        $t3, 0x1e($sp)
/* A1448 800A0848 316C00C0 */  andi       $t4, $t3, 0xc0
/* A144C 800A084C 000C6903 */  sra        $t5, $t4, 4
/* A1450 800A0850 AFAD0048 */  sw         $t5, 0x48($sp)
/* A1454 800A0854 8FAF0048 */  lw         $t7, 0x48($sp)
/* A1458 800A0858 15E00009 */  bnez       $t7, .L800A0880
/* A145C 800A085C 00000000 */   nop
/* A1460 800A0860 3C04801A */  lui        $a0, %hi(D_801A1FE0)
/* A1464 800A0864 0C02BDBC */  jal        func_800AF6F0
/* A1468 800A0868 24841FE0 */   addiu     $a0, $a0, %lo(D_801A1FE0)
/* A146C 800A086C 93AE0042 */  lbu        $t6, 0x42($sp)
/* A1470 800A0870 104E0003 */  beq        $v0, $t6, .L800A0880
/* A1474 800A0874 00000000 */   nop
/* A1478 800A0878 24180004 */  addiu      $t8, $zero, 4
/* A147C 800A087C AFB80048 */  sw         $t8, 0x48($sp)
.L800A0880:
/* A1480 800A0880 0C026625 */  jal        func_80099894
/* A1484 800A0884 00000000 */   nop
/* A1488 800A0888 10000003 */  b          .L800A0898
/* A148C 800A088C 8FA20048 */   lw        $v0, 0x48($sp)
/* A1490 800A0890 10000001 */  b          .L800A0898
/* A1494 800A0894 00000000 */   nop
.L800A0898:
/* A1498 800A0898 8FBF0014 */  lw         $ra, 0x14($sp)
/* A149C 800A089C 27BD0050 */  addiu      $sp, $sp, 0x50
/* A14A0 800A08A0 03E00008 */  jr         $ra
/* A14A4 800A08A4 00000000 */   nop

glabel func_800A08A8
/* A14A8 800A08A8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* A14AC 800A08AC AFBF0014 */  sw         $ra, 0x14($sp)
/* A14B0 800A08B0 AFA40050 */  sw         $a0, 0x50($sp)
/* A14B4 800A08B4 3C0E801A */  lui        $t6, %hi(D_801A2020)
/* A14B8 800A08B8 25CE2020 */  addiu      $t6, $t6, %lo(D_801A2020)
/* A14BC 800A08BC AFAE0044 */  sw         $t6, 0x44($sp)
/* A14C0 800A08C0 8FAF0050 */  lw         $t7, 0x50($sp)
/* A14C4 800A08C4 3C08800D */  lui        $t0, %hi(D_800CC2D0)
/* A14C8 800A08C8 8DF80008 */  lw         $t8, 8($t7)
/* A14CC 800A08CC 0018C880 */  sll        $t9, $t8, 2
/* A14D0 800A08D0 01194021 */  addu       $t0, $t0, $t9
/* A14D4 800A08D4 8D08C2D0 */  lw         $t0, %lo(D_800CC2D0)($t0)
/* A14D8 800A08D8 15000003 */  bnez       $t0, .L800A08E8
/* A14DC 800A08DC 00000000 */   nop
/* A14E0 800A08E0 1000005B */  b          .L800A0A50
/* A14E4 800A08E4 24020005 */   addiu     $v0, $zero, 5
.L800A08E8:
/* A14E8 800A08E8 0C026612 */  jal        func_80099848
/* A14EC 800A08EC 00000000 */   nop
/* A14F0 800A08F0 24090003 */  addiu      $t1, $zero, 3
/* A14F4 800A08F4 3C01801A */  lui        $at, %hi(D_801A1B50)
/* A14F8 800A08F8 A0291B50 */  sb         $t1, %lo(D_801A1B50)($at)
/* A14FC 800A08FC 8FAA0050 */  lw         $t2, 0x50($sp)
/* A1500 800A0900 3C0D801A */  lui        $t5, %hi(D_801A1EE0)
/* A1504 800A0904 25AD1EE0 */  addiu      $t5, $t5, %lo(D_801A1EE0)
/* A1508 800A0908 8D4B0008 */  lw         $t3, 8($t2)
/* A150C 800A090C 24040001 */  addiu      $a0, $zero, 1
/* A1510 800A0910 000B6180 */  sll        $t4, $t3, 6
/* A1514 800A0914 0C027D70 */  jal        func_8009F5C0
/* A1518 800A0918 018D2821 */   addu      $a1, $t4, $t5
/* A151C 800A091C 8FAE0050 */  lw         $t6, 0x50($sp)
/* A1520 800A0920 00002825 */  or         $a1, $zero, $zero
/* A1524 800A0924 24060001 */  addiu      $a2, $zero, 1
/* A1528 800A0928 0C025D30 */  jal        func_800974C0
/* A152C 800A092C 8DC40004 */   lw        $a0, 4($t6)
/* A1530 800A0930 3C05801A */  lui        $a1, %hi(D_801A2020)
/* A1534 800A0934 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* A1538 800A0938 0C027D70 */  jal        func_8009F5C0
/* A153C 800A093C 00002025 */   or        $a0, $zero, $zero
/* A1540 800A0940 AFA20048 */  sw         $v0, 0x48($sp)
/* A1544 800A0944 8FAF0050 */  lw         $t7, 0x50($sp)
/* A1548 800A0948 00002825 */  or         $a1, $zero, $zero
/* A154C 800A094C 24060001 */  addiu      $a2, $zero, 1
/* A1550 800A0950 0C025D30 */  jal        func_800974C0
/* A1554 800A0954 8DE40004 */   lw        $a0, 4($t7)
/* A1558 800A0958 3C18801A */  lui        $t8, %hi(D_801A2020)
/* A155C 800A095C 27182020 */  addiu      $t8, $t8, %lo(D_801A2020)
/* A1560 800A0960 AFB80044 */  sw         $t8, 0x44($sp)
/* A1564 800A0964 8FB90050 */  lw         $t9, 0x50($sp)
/* A1568 800A0968 8F280008 */  lw         $t0, 8($t9)
/* A156C 800A096C 11000011 */  beqz       $t0, .L800A09B4
/* A1570 800A0970 00000000 */   nop
/* A1574 800A0974 8FA90050 */  lw         $t1, 0x50($sp)
/* A1578 800A0978 AFA0004C */  sw         $zero, 0x4c($sp)
/* A157C 800A097C 8D2A0008 */  lw         $t2, 8($t1)
/* A1580 800A0980 1940000C */  blez       $t2, .L800A09B4
/* A1584 800A0984 00000000 */   nop
.L800A0988:
/* A1588 800A0988 8FAB0044 */  lw         $t3, 0x44($sp)
/* A158C 800A098C 256C0001 */  addiu      $t4, $t3, 1
/* A1590 800A0990 AFAC0044 */  sw         $t4, 0x44($sp)
/* A1594 800A0994 8FAD004C */  lw         $t5, 0x4c($sp)
/* A1598 800A0998 8FAF0050 */  lw         $t7, 0x50($sp)
/* A159C 800A099C 25AE0001 */  addiu      $t6, $t5, 1
/* A15A0 800A09A0 AFAE004C */  sw         $t6, 0x4c($sp)
/* A15A4 800A09A4 8DF80008 */  lw         $t8, 8($t7)
/* A15A8 800A09A8 01D8082A */  slt        $at, $t6, $t8
/* A15AC 800A09AC 1420FFF6 */  bnez       $at, .L800A0988
/* A15B0 800A09B0 00000000 */   nop
.L800A09B4:
/* A15B4 800A09B4 8FA80044 */  lw         $t0, 0x44($sp)
/* A15B8 800A09B8 27B9001C */  addiu      $t9, $sp, 0x1c
/* A15BC 800A09BC 250A0024 */  addiu      $t2, $t0, 0x24
.L800A09C0:
/* A15C0 800A09C0 89010000 */  lwl        $at, ($t0)
/* A15C4 800A09C4 99010003 */  lwr        $at, 3($t0)
/* A15C8 800A09C8 2508000C */  addiu      $t0, $t0, 0xc
/* A15CC 800A09CC 2739000C */  addiu      $t9, $t9, 0xc
/* A15D0 800A09D0 AF21FFF4 */  sw         $at, -0xc($t9)
/* A15D4 800A09D4 8901FFF8 */  lwl        $at, -8($t0)
/* A15D8 800A09D8 9901FFFB */  lwr        $at, -5($t0)
/* A15DC 800A09DC AF21FFF8 */  sw         $at, -8($t9)
/* A15E0 800A09E0 8901FFFC */  lwl        $at, -4($t0)
/* A15E4 800A09E4 9901FFFF */  lwr        $at, -1($t0)
/* A15E8 800A09E8 150AFFF5 */  bne        $t0, $t2, .L800A09C0
/* A15EC 800A09EC AF21FFFC */   sw        $at, -4($t9)
/* A15F0 800A09F0 89010000 */  lwl        $at, ($t0)
/* A15F4 800A09F4 99010003 */  lwr        $at, 3($t0)
/* A15F8 800A09F8 AF210000 */  sw         $at, ($t9)
/* A15FC 800A09FC 93AB001E */  lbu        $t3, 0x1e($sp)
/* A1600 800A0A00 316C00C0 */  andi       $t4, $t3, 0xc0
/* A1604 800A0A04 000C6903 */  sra        $t5, $t4, 4
/* A1608 800A0A08 AFAD0048 */  sw         $t5, 0x48($sp)
/* A160C 800A0A0C 8FAF0048 */  lw         $t7, 0x48($sp)
/* A1610 800A0A10 15E00009 */  bnez       $t7, .L800A0A38
/* A1614 800A0A14 00000000 */   nop
/* A1618 800A0A18 3C04801A */  lui        $a0, %hi(D_801A2000)
/* A161C 800A0A1C 0C02BDBC */  jal        func_800AF6F0
/* A1620 800A0A20 24842000 */   addiu     $a0, $a0, %lo(D_801A2000)
/* A1624 800A0A24 93AE0042 */  lbu        $t6, 0x42($sp)
/* A1628 800A0A28 104E0003 */  beq        $v0, $t6, .L800A0A38
/* A162C 800A0A2C 00000000 */   nop
/* A1630 800A0A30 24180004 */  addiu      $t8, $zero, 4
/* A1634 800A0A34 AFB80048 */  sw         $t8, 0x48($sp)
.L800A0A38:
/* A1638 800A0A38 0C026625 */  jal        func_80099894
/* A163C 800A0A3C 00000000 */   nop
/* A1640 800A0A40 10000003 */  b          .L800A0A50
/* A1644 800A0A44 8FA20048 */   lw        $v0, 0x48($sp)
/* A1648 800A0A48 10000001 */  b          .L800A0A50
/* A164C 800A0A4C 00000000 */   nop
.L800A0A50:
/* A1650 800A0A50 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1654 800A0A54 27BD0050 */  addiu      $sp, $sp, 0x50
/* A1658 800A0A58 03E00008 */  jr         $ra
/* A165C 800A0A5C 00000000 */   nop

glabel func_800A0A60
/* A1660 800A0A60 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A1664 800A0A64 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1668 800A0A68 AFA40048 */  sw         $a0, 0x48($sp)
/* A166C 800A0A6C AFA5004C */  sw         $a1, 0x4c($sp)
/* A1670 800A0A70 AFA60050 */  sw         $a2, 0x50($sp)
/* A1674 800A0A74 AFA70054 */  sw         $a3, 0x54($sp)
/* A1678 800A0A78 8FAE0054 */  lw         $t6, 0x54($sp)
/* A167C 800A0A7C AFAE0044 */  sw         $t6, 0x44($sp)
/* A1680 800A0A80 AFA00018 */  sw         $zero, 0x18($sp)
.L800A0A84:
/* A1684 800A0A84 8FB80018 */  lw         $t8, 0x18($sp)
/* A1688 800A0A88 8FAF0054 */  lw         $t7, 0x54($sp)
/* A168C 800A0A8C 0018C880 */  sll        $t9, $t8, 2
/* A1690 800A0A90 01F94021 */  addu       $t0, $t7, $t9
/* A1694 800A0A94 AD000000 */  sw         $zero, ($t0)
/* A1698 800A0A98 8FA90018 */  lw         $t1, 0x18($sp)
/* A169C 800A0A9C 252A0001 */  addiu      $t2, $t1, 1
/* A16A0 800A0AA0 2941000F */  slti       $at, $t2, 0xf
/* A16A4 800A0AA4 1420FFF7 */  bnez       $at, .L800A0A84
/* A16A8 800A0AA8 AFAA0018 */   sw        $t2, 0x18($sp)
/* A16AC 800A0AAC 8FAC0054 */  lw         $t4, 0x54($sp)
/* A16B0 800A0AB0 240B0001 */  addiu      $t3, $zero, 1
/* A16B4 800A0AB4 AD8B003C */  sw         $t3, 0x3c($t4)
/* A16B8 800A0AB8 240D00FF */  addiu      $t5, $zero, 0xff
/* A16BC 800A0ABC A3AD001C */  sb         $t5, 0x1c($sp)
/* A16C0 800A0AC0 240E0023 */  addiu      $t6, $zero, 0x23
/* A16C4 800A0AC4 A3AE001D */  sb         $t6, 0x1d($sp)
/* A16C8 800A0AC8 24180001 */  addiu      $t8, $zero, 1
/* A16CC 800A0ACC A3B8001E */  sb         $t8, 0x1e($sp)
/* A16D0 800A0AD0 240F0003 */  addiu      $t7, $zero, 3
/* A16D4 800A0AD4 A3AF001F */  sb         $t7, 0x1f($sp)
/* A16D8 800A0AD8 0C02BD8C */  jal        func_800AF630
/* A16DC 800A0ADC 97A4004E */   lhu       $a0, 0x4e($sp)
/* A16E0 800A0AE0 97B9004E */  lhu        $t9, 0x4e($sp)
/* A16E4 800A0AE4 00194140 */  sll        $t0, $t9, 5
/* A16E8 800A0AE8 00484825 */  or         $t1, $v0, $t0
/* A16EC 800A0AEC A7A90020 */  sh         $t1, 0x20($sp)
/* A16F0 800A0AF0 240A00FF */  addiu      $t2, $zero, 0xff
/* A16F4 800A0AF4 A3AA0042 */  sb         $t2, 0x42($sp)
/* A16F8 800A0AF8 AFA00018 */  sw         $zero, 0x18($sp)
.L800A0AFC:
/* A16FC 800A0AFC 8FAB0050 */  lw         $t3, 0x50($sp)
/* A1700 800A0B00 8FAD0018 */  lw         $t5, 0x18($sp)
/* A1704 800A0B04 916C0000 */  lbu        $t4, ($t3)
/* A1708 800A0B08 03AD7021 */  addu       $t6, $sp, $t5
/* A170C 800A0B0C A1CC0022 */  sb         $t4, 0x22($t6)
/* A1710 800A0B10 8FB80050 */  lw         $t8, 0x50($sp)
/* A1714 800A0B14 270F0001 */  addiu      $t7, $t8, 1
/* A1718 800A0B18 AFAF0050 */  sw         $t7, 0x50($sp)
/* A171C 800A0B1C 8FB90018 */  lw         $t9, 0x18($sp)
/* A1720 800A0B20 27280001 */  addiu      $t0, $t9, 1
/* A1724 800A0B24 29010020 */  slti       $at, $t0, 0x20
/* A1728 800A0B28 1420FFF4 */  bnez       $at, .L800A0AFC
/* A172C 800A0B2C AFA80018 */   sw        $t0, 0x18($sp)
/* A1730 800A0B30 8FA90048 */  lw         $t1, 0x48($sp)
/* A1734 800A0B34 11200010 */  beqz       $t1, .L800A0B78
/* A1738 800A0B38 00000000 */   nop
/* A173C 800A0B3C 8FAA0048 */  lw         $t2, 0x48($sp)
/* A1740 800A0B40 AFA00018 */  sw         $zero, 0x18($sp)
/* A1744 800A0B44 1940000C */  blez       $t2, .L800A0B78
/* A1748 800A0B48 00000000 */   nop
.L800A0B4C:
/* A174C 800A0B4C 8FAB0044 */  lw         $t3, 0x44($sp)
/* A1750 800A0B50 A1600000 */  sb         $zero, ($t3)
/* A1754 800A0B54 8FAC0044 */  lw         $t4, 0x44($sp)
/* A1758 800A0B58 258D0001 */  addiu      $t5, $t4, 1
/* A175C 800A0B5C AFAD0044 */  sw         $t5, 0x44($sp)
/* A1760 800A0B60 8FAE0018 */  lw         $t6, 0x18($sp)
/* A1764 800A0B64 8FAF0048 */  lw         $t7, 0x48($sp)
/* A1768 800A0B68 25D80001 */  addiu      $t8, $t6, 1
/* A176C 800A0B6C 030F082A */  slt        $at, $t8, $t7
/* A1770 800A0B70 1420FFF6 */  bnez       $at, .L800A0B4C
/* A1774 800A0B74 AFB80018 */   sw        $t8, 0x18($sp)
.L800A0B78:
/* A1778 800A0B78 27A8001C */  addiu      $t0, $sp, 0x1c
/* A177C 800A0B7C 250A0024 */  addiu      $t2, $t0, 0x24
/* A1780 800A0B80 8FB90044 */  lw         $t9, 0x44($sp)
.L800A0B84:
/* A1784 800A0B84 8D010000 */  lw         $at, ($t0)
/* A1788 800A0B88 2508000C */  addiu      $t0, $t0, 0xc
/* A178C 800A0B8C 2739000C */  addiu      $t9, $t9, 0xc
/* A1790 800A0B90 AB21FFF4 */  swl        $at, -0xc($t9)
/* A1794 800A0B94 BB21FFF7 */  swr        $at, -9($t9)
/* A1798 800A0B98 8D01FFF8 */  lw         $at, -8($t0)
/* A179C 800A0B9C AB21FFF8 */  swl        $at, -8($t9)
/* A17A0 800A0BA0 BB21FFFB */  swr        $at, -5($t9)
/* A17A4 800A0BA4 8D01FFFC */  lw         $at, -4($t0)
/* A17A8 800A0BA8 AB21FFFC */  swl        $at, -4($t9)
/* A17AC 800A0BAC 150AFFF5 */  bne        $t0, $t2, .L800A0B84
/* A17B0 800A0BB0 BB21FFFF */   swr       $at, -1($t9)
/* A17B4 800A0BB4 8D010000 */  lw         $at, ($t0)
/* A17B8 800A0BB8 AB210000 */  swl        $at, ($t9)
/* A17BC 800A0BBC BB210003 */  swr        $at, 3($t9)
/* A17C0 800A0BC0 8FAB0044 */  lw         $t3, 0x44($sp)
/* A17C4 800A0BC4 256C0028 */  addiu      $t4, $t3, 0x28
/* A17C8 800A0BC8 AFAC0044 */  sw         $t4, 0x44($sp)
/* A17CC 800A0BCC 8FAE0044 */  lw         $t6, 0x44($sp)
/* A17D0 800A0BD0 240D00FE */  addiu      $t5, $zero, 0xfe
/* A17D4 800A0BD4 A1CD0000 */  sb         $t5, ($t6)
/* A17D8 800A0BD8 10000001 */  b          .L800A0BE0
/* A17DC 800A0BDC 00000000 */   nop
.L800A0BE0:
/* A17E0 800A0BE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A17E4 800A0BE4 27BD0048 */  addiu      $sp, $sp, 0x48
/* A17E8 800A0BE8 03E00008 */  jr         $ra
/* A17EC 800A0BEC 00000000 */   nop

glabel func_800A0BF0
/* A17F0 800A0BF0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A17F4 800A0BF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A17F8 800A0BF8 AFA40048 */  sw         $a0, 0x48($sp)
/* A17FC 800A0BFC AFA5004C */  sw         $a1, 0x4c($sp)
/* A1800 800A0C00 AFA60050 */  sw         $a2, 0x50($sp)
/* A1804 800A0C04 8FAE0048 */  lw         $t6, 0x48($sp)
/* A1808 800A0C08 8FAF004C */  lw         $t7, 0x4c($sp)
/* A180C 800A0C0C ADEE0004 */  sw         $t6, 4($t7)
/* A1810 800A0C10 8FB80050 */  lw         $t8, 0x50($sp)
/* A1814 800A0C14 8FB9004C */  lw         $t9, 0x4c($sp)
/* A1818 800A0C18 AF380008 */  sw         $t8, 8($t9)
/* A181C 800A0C1C 8FA8004C */  lw         $t0, 0x4c($sp)
/* A1820 800A0C20 AD000000 */  sw         $zero, ($t0)
/* A1824 800A0C24 8FAA004C */  lw         $t2, 0x4c($sp)
/* A1828 800A0C28 24090080 */  addiu      $t1, $zero, 0x80
/* A182C 800A0C2C A1490065 */  sb         $t1, 0x65($t2)
/* A1830 800A0C30 AFA00044 */  sw         $zero, 0x44($sp)
.L800A0C34:
/* A1834 800A0C34 8FAC0044 */  lw         $t4, 0x44($sp)
/* A1838 800A0C38 240B00FE */  addiu      $t3, $zero, 0xfe
/* A183C 800A0C3C 03AC6821 */  addu       $t5, $sp, $t4
/* A1840 800A0C40 A1AB0020 */  sb         $t3, 0x20($t5)
/* A1844 800A0C44 8FAE0044 */  lw         $t6, 0x44($sp)
/* A1848 800A0C48 25CF0001 */  addiu      $t7, $t6, 1
/* A184C 800A0C4C 29E10020 */  slti       $at, $t7, 0x20
/* A1850 800A0C50 1420FFF8 */  bnez       $at, .L800A0C34
/* A1854 800A0C54 AFAF0044 */   sw        $t7, 0x44($sp)
/* A1858 800A0C58 8FA40048 */  lw         $a0, 0x48($sp)
/* A185C 800A0C5C 8FA50050 */  lw         $a1, 0x50($sp)
/* A1860 800A0C60 24060400 */  addiu      $a2, $zero, 0x400
/* A1864 800A0C64 27A70020 */  addiu      $a3, $sp, 0x20
/* A1868 800A0C68 0C02DC04 */  jal        func_800B7010
/* A186C 800A0C6C AFA00010 */   sw        $zero, 0x10($sp)
/* A1870 800A0C70 AFA20040 */  sw         $v0, 0x40($sp)
/* A1874 800A0C74 8FB80040 */  lw         $t8, 0x40($sp)
/* A1878 800A0C78 24010002 */  addiu      $at, $zero, 2
/* A187C 800A0C7C 17010008 */  bne        $t8, $at, .L800A0CA0
/* A1880 800A0C80 00000000 */   nop
/* A1884 800A0C84 8FA40048 */  lw         $a0, 0x48($sp)
/* A1888 800A0C88 8FA50050 */  lw         $a1, 0x50($sp)
/* A188C 800A0C8C 24060400 */  addiu      $a2, $zero, 0x400
/* A1890 800A0C90 27A70020 */  addiu      $a3, $sp, 0x20
/* A1894 800A0C94 0C02DC04 */  jal        func_800B7010
/* A1898 800A0C98 AFA00010 */   sw        $zero, 0x10($sp)
/* A189C 800A0C9C AFA20040 */  sw         $v0, 0x40($sp)
.L800A0CA0:
/* A18A0 800A0CA0 8FB90040 */  lw         $t9, 0x40($sp)
/* A18A4 800A0CA4 13200003 */  beqz       $t9, .L800A0CB4
/* A18A8 800A0CA8 00000000 */   nop
/* A18AC 800A0CAC 10000086 */  b          .L800A0EC8
/* A18B0 800A0CB0 8FA20040 */   lw        $v0, 0x40($sp)
.L800A0CB4:
/* A18B4 800A0CB4 8FA40048 */  lw         $a0, 0x48($sp)
/* A18B8 800A0CB8 8FA50050 */  lw         $a1, 0x50($sp)
/* A18BC 800A0CBC 24060400 */  addiu      $a2, $zero, 0x400
/* A18C0 800A0CC0 0C02E3D8 */  jal        func_800B8F60
/* A18C4 800A0CC4 27A70020 */   addiu     $a3, $sp, 0x20
/* A18C8 800A0CC8 AFA20040 */  sw         $v0, 0x40($sp)
/* A18CC 800A0CCC 8FA80040 */  lw         $t0, 0x40($sp)
/* A18D0 800A0CD0 24010002 */  addiu      $at, $zero, 2
/* A18D4 800A0CD4 15010003 */  bne        $t0, $at, .L800A0CE4
/* A18D8 800A0CD8 00000000 */   nop
/* A18DC 800A0CDC 24090004 */  addiu      $t1, $zero, 4
/* A18E0 800A0CE0 AFA90040 */  sw         $t1, 0x40($sp)
.L800A0CE4:
/* A18E4 800A0CE4 8FAA0040 */  lw         $t2, 0x40($sp)
/* A18E8 800A0CE8 11400003 */  beqz       $t2, .L800A0CF8
/* A18EC 800A0CEC 00000000 */   nop
/* A18F0 800A0CF0 10000075 */  b          .L800A0EC8
/* A18F4 800A0CF4 8FA20040 */   lw        $v0, 0x40($sp)
.L800A0CF8:
/* A18F8 800A0CF8 27AB0020 */  addiu      $t3, $sp, 0x20
/* A18FC 800A0CFC 916C001F */  lbu        $t4, 0x1f($t3)
/* A1900 800A0D00 240100FE */  addiu      $at, $zero, 0xfe
/* A1904 800A0D04 15810003 */  bne        $t4, $at, .L800A0D14
/* A1908 800A0D08 00000000 */   nop
/* A190C 800A0D0C 1000006E */  b          .L800A0EC8
/* A1910 800A0D10 2402000B */   addiu     $v0, $zero, 0xb
.L800A0D14:
/* A1914 800A0D14 AFA00044 */  sw         $zero, 0x44($sp)
.L800A0D18:
/* A1918 800A0D18 8FAE0044 */  lw         $t6, 0x44($sp)
/* A191C 800A0D1C 240D0080 */  addiu      $t5, $zero, 0x80
/* A1920 800A0D20 03AE7821 */  addu       $t7, $sp, $t6
/* A1924 800A0D24 A1ED0020 */  sb         $t5, 0x20($t7)
/* A1928 800A0D28 8FB80044 */  lw         $t8, 0x44($sp)
/* A192C 800A0D2C 27190001 */  addiu      $t9, $t8, 1
/* A1930 800A0D30 2B210020 */  slti       $at, $t9, 0x20
/* A1934 800A0D34 1420FFF8 */  bnez       $at, .L800A0D18
/* A1938 800A0D38 AFB90044 */   sw        $t9, 0x44($sp)
/* A193C 800A0D3C 8FA40048 */  lw         $a0, 0x48($sp)
/* A1940 800A0D40 8FA50050 */  lw         $a1, 0x50($sp)
/* A1944 800A0D44 24060400 */  addiu      $a2, $zero, 0x400
/* A1948 800A0D48 27A70020 */  addiu      $a3, $sp, 0x20
/* A194C 800A0D4C 0C02DC04 */  jal        func_800B7010
/* A1950 800A0D50 AFA00010 */   sw        $zero, 0x10($sp)
/* A1954 800A0D54 AFA20040 */  sw         $v0, 0x40($sp)
/* A1958 800A0D58 8FA80040 */  lw         $t0, 0x40($sp)
/* A195C 800A0D5C 24010002 */  addiu      $at, $zero, 2
/* A1960 800A0D60 15010008 */  bne        $t0, $at, .L800A0D84
/* A1964 800A0D64 00000000 */   nop
/* A1968 800A0D68 8FA40048 */  lw         $a0, 0x48($sp)
/* A196C 800A0D6C 8FA50050 */  lw         $a1, 0x50($sp)
/* A1970 800A0D70 24060400 */  addiu      $a2, $zero, 0x400
/* A1974 800A0D74 27A70020 */  addiu      $a3, $sp, 0x20
/* A1978 800A0D78 0C02DC04 */  jal        func_800B7010
/* A197C 800A0D7C AFA00010 */   sw        $zero, 0x10($sp)
/* A1980 800A0D80 AFA20040 */  sw         $v0, 0x40($sp)
.L800A0D84:
/* A1984 800A0D84 8FA90040 */  lw         $t1, 0x40($sp)
/* A1988 800A0D88 11200003 */  beqz       $t1, .L800A0D98
/* A198C 800A0D8C 00000000 */   nop
/* A1990 800A0D90 1000004D */  b          .L800A0EC8
/* A1994 800A0D94 8FA20040 */   lw        $v0, 0x40($sp)
.L800A0D98:
/* A1998 800A0D98 8FA40048 */  lw         $a0, 0x48($sp)
/* A199C 800A0D9C 8FA50050 */  lw         $a1, 0x50($sp)
/* A19A0 800A0DA0 24060400 */  addiu      $a2, $zero, 0x400
/* A19A4 800A0DA4 0C02E3D8 */  jal        func_800B8F60
/* A19A8 800A0DA8 27A70020 */   addiu     $a3, $sp, 0x20
/* A19AC 800A0DAC AFA20040 */  sw         $v0, 0x40($sp)
/* A19B0 800A0DB0 8FAA0040 */  lw         $t2, 0x40($sp)
/* A19B4 800A0DB4 24010002 */  addiu      $at, $zero, 2
/* A19B8 800A0DB8 15410003 */  bne        $t2, $at, .L800A0DC8
/* A19BC 800A0DBC 00000000 */   nop
/* A19C0 800A0DC0 240B0004 */  addiu      $t3, $zero, 4
/* A19C4 800A0DC4 AFAB0040 */  sw         $t3, 0x40($sp)
.L800A0DC8:
/* A19C8 800A0DC8 8FAC0040 */  lw         $t4, 0x40($sp)
/* A19CC 800A0DCC 11800003 */  beqz       $t4, .L800A0DDC
/* A19D0 800A0DD0 00000000 */   nop
/* A19D4 800A0DD4 1000003C */  b          .L800A0EC8
/* A19D8 800A0DD8 8FA20040 */   lw        $v0, 0x40($sp)
.L800A0DDC:
/* A19DC 800A0DDC 27AD0020 */  addiu      $t5, $sp, 0x20
/* A19E0 800A0DE0 91AE001F */  lbu        $t6, 0x1f($t5)
/* A19E4 800A0DE4 24010080 */  addiu      $at, $zero, 0x80
/* A19E8 800A0DE8 11C10003 */  beq        $t6, $at, .L800A0DF8
/* A19EC 800A0DEC 00000000 */   nop
/* A19F0 800A0DF0 10000035 */  b          .L800A0EC8
/* A19F4 800A0DF4 2402000B */   addiu     $v0, $zero, 0xb
.L800A0DF8:
/* A19F8 800A0DF8 8FAF0050 */  lw         $t7, 0x50($sp)
/* A19FC 800A0DFC 3C19800D */  lui        $t9, %hi(D_800CC2D0)
/* A1A00 800A0E00 000FC080 */  sll        $t8, $t7, 2
/* A1A04 800A0E04 0338C821 */  addu       $t9, $t9, $t8
/* A1A08 800A0E08 8F39C2D0 */  lw         $t9, %lo(D_800CC2D0)($t9)
/* A1A0C 800A0E0C 1720002A */  bnez       $t9, .L800A0EB8
/* A1A10 800A0E10 00000000 */   nop
/* A1A14 800A0E14 AFA00044 */  sw         $zero, 0x44($sp)
.L800A0E18:
/* A1A18 800A0E18 8FA90044 */  lw         $t1, 0x44($sp)
/* A1A1C 800A0E1C 3C01801A */  lui        $at, %hi(D_801A2000)
/* A1A20 800A0E20 24080001 */  addiu      $t0, $zero, 1
/* A1A24 800A0E24 00290821 */  addu       $at, $at, $t1
/* A1A28 800A0E28 A0282000 */  sb         $t0, %lo(D_801A2000)($at)
/* A1A2C 800A0E2C 8FAA0044 */  lw         $t2, 0x44($sp)
/* A1A30 800A0E30 3C01801A */  lui        $at, %hi(D_801A1FE0)
/* A1A34 800A0E34 002A0821 */  addu       $at, $at, $t2
/* A1A38 800A0E38 A0201FE0 */  sb         $zero, %lo(D_801A1FE0)($at)
/* A1A3C 800A0E3C 8FAB0044 */  lw         $t3, 0x44($sp)
/* A1A40 800A0E40 256C0001 */  addiu      $t4, $t3, 1
/* A1A44 800A0E44 29810020 */  slti       $at, $t4, 0x20
/* A1A48 800A0E48 1420FFF3 */  bnez       $at, .L800A0E18
/* A1A4C 800A0E4C AFAC0044 */   sw        $t4, 0x44($sp)
/* A1A50 800A0E50 8FAD0050 */  lw         $t5, 0x50($sp)
/* A1A54 800A0E54 3C0F801A */  lui        $t7, %hi(D_801A1EE0)
/* A1A58 800A0E58 25EF1EE0 */  addiu      $t7, $t7, %lo(D_801A1EE0)
/* A1A5C 800A0E5C 3C06801A */  lui        $a2, %hi(D_801A2000)
/* A1A60 800A0E60 000D7180 */  sll        $t6, $t5, 6
/* A1A64 800A0E64 01CF3821 */  addu       $a3, $t6, $t7
/* A1A68 800A0E68 24C62000 */  addiu      $a2, $a2, %lo(D_801A2000)
/* A1A6C 800A0E6C 24050600 */  addiu      $a1, $zero, 0x600
/* A1A70 800A0E70 0C028298 */  jal        func_800A0A60
/* A1A74 800A0E74 01A02025 */   or        $a0, $t5, $zero
/* A1A78 800A0E78 8FB80050 */  lw         $t8, 0x50($sp)
/* A1A7C 800A0E7C 3C08801A */  lui        $t0, %hi(D_801A1DE0)
/* A1A80 800A0E80 25081DE0 */  addiu      $t0, $t0, %lo(D_801A1DE0)
/* A1A84 800A0E84 3C06801A */  lui        $a2, %hi(D_801A1FE0)
/* A1A88 800A0E88 0018C980 */  sll        $t9, $t8, 6
/* A1A8C 800A0E8C 03283821 */  addu       $a3, $t9, $t0
/* A1A90 800A0E90 24C61FE0 */  addiu      $a2, $a2, %lo(D_801A1FE0)
/* A1A94 800A0E94 24050600 */  addiu      $a1, $zero, 0x600
/* A1A98 800A0E98 0C028298 */  jal        func_800A0A60
/* A1A9C 800A0E9C 03002025 */   or        $a0, $t8, $zero
/* A1AA0 800A0EA0 8FAA0050 */  lw         $t2, 0x50($sp)
/* A1AA4 800A0EA4 3C01800D */  lui        $at, %hi(D_800CC2D0)
/* A1AA8 800A0EA8 24090001 */  addiu      $t1, $zero, 1
/* A1AAC 800A0EAC 000A5880 */  sll        $t3, $t2, 2
/* A1AB0 800A0EB0 002B0821 */  addu       $at, $at, $t3
/* A1AB4 800A0EB4 AC29C2D0 */  sw         $t1, %lo(D_800CC2D0)($at)
.L800A0EB8:
/* A1AB8 800A0EB8 10000003 */  b          .L800A0EC8
/* A1ABC 800A0EBC 00001025 */   or        $v0, $zero, $zero
/* A1AC0 800A0EC0 10000001 */  b          .L800A0EC8
/* A1AC4 800A0EC4 00000000 */   nop
.L800A0EC8:
/* A1AC8 800A0EC8 8FBF001C */  lw         $ra, 0x1c($sp)
/* A1ACC 800A0ECC 27BD0048 */  addiu      $sp, $sp, 0x48
/* A1AD0 800A0ED0 03E00008 */  jr         $ra
/* A1AD4 800A0ED4 00000000 */   nop
/* A1AD8 800A0ED8 00000000 */  nop
/* A1ADC 800A0EDC 00000000 */  nop
