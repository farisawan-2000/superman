.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A1350
/* A1F50 800A1350 27BDFD88 */  addiu      $sp, $sp, -0x278
/* A1F54 800A1354 AFBF0024 */  sw         $ra, 0x24($sp)
/* A1F58 800A1358 AFA40278 */  sw         $a0, 0x278($sp)
/* A1F5C 800A135C AFA5027C */  sw         $a1, 0x27c($sp)
/* A1F60 800A1360 AFA60280 */  sw         $a2, 0x280($sp)
/* A1F64 800A1364 AFA70284 */  sw         $a3, 0x284($sp)
/* A1F68 800A1368 AFA00268 */  sw         $zero, 0x268($sp)
/* A1F6C 800A136C AFA00260 */  sw         $zero, 0x260($sp)
/* A1F70 800A1370 A3A0003A */  sb         $zero, 0x3a($sp)
/* A1F74 800A1374 AFA00034 */  sw         $zero, 0x34($sp)
/* A1F78 800A1378 97AE027E */  lhu        $t6, 0x27e($sp)
/* A1F7C 800A137C 11C00004 */  beqz       $t6, .L800A1390
/* A1F80 800A1380 00000000 */   nop
/* A1F84 800A1384 8FAF0280 */  lw         $t7, 0x280($sp)
/* A1F88 800A1388 15E00003 */  bnez       $t7, .L800A1398
/* A1F8C 800A138C 00000000 */   nop
.L800A1390:
/* A1F90 800A1390 10000119 */  b          .L800A17F8
/* A1F94 800A1394 24020005 */   addiu     $v0, $zero, 5
.L800A1398:
/* A1F98 800A1398 8FB8028C */  lw         $t8, 0x28c($sp)
/* A1F9C 800A139C 271900FF */  addiu      $t9, $t8, 0xff
/* A1FA0 800A13A0 07210003 */  bgez       $t9, .L800A13B0
/* A1FA4 800A13A4 00194203 */   sra       $t0, $t9, 8
/* A1FA8 800A13A8 272100FF */  addiu      $at, $t9, 0xff
/* A1FAC 800A13AC 00014203 */  sra        $t0, $at, 8
.L800A13B0:
/* A1FB0 800A13B0 AFA8025C */  sw         $t0, 0x25c($sp)
/* A1FB4 800A13B4 8FA90278 */  lw         $t1, 0x278($sp)
/* A1FB8 800A13B8 8D2A0000 */  lw         $t2, ($t1)
/* A1FBC 800A13BC 314B0001 */  andi       $t3, $t2, 1
/* A1FC0 800A13C0 15600003 */  bnez       $t3, .L800A13D0
/* A1FC4 800A13C4 00000000 */   nop
/* A1FC8 800A13C8 1000010B */  b          .L800A17F8
/* A1FCC 800A13CC 24020005 */   addiu     $v0, $zero, 5
.L800A13D0:
/* A1FD0 800A13D0 0C0290BF */  jal        func_800A42FC
/* A1FD4 800A13D4 8FA40278 */   lw        $a0, 0x278($sp)
/* A1FD8 800A13D8 24010002 */  addiu      $at, $zero, 2
/* A1FDC 800A13DC 14410003 */  bne        $v0, $at, .L800A13EC
/* A1FE0 800A13E0 00000000 */   nop
/* A1FE4 800A13E4 10000104 */  b          .L800A17F8
/* A1FE8 800A13E8 24020002 */   addiu     $v0, $zero, 2
.L800A13EC:
/* A1FEC 800A13EC 8FAC0288 */  lw         $t4, 0x288($sp)
/* A1FF0 800A13F0 8FAD0290 */  lw         $t5, 0x290($sp)
/* A1FF4 800A13F4 8FA40278 */  lw         $a0, 0x278($sp)
/* A1FF8 800A13F8 97A5027E */  lhu        $a1, 0x27e($sp)
/* A1FFC 800A13FC 8FA60280 */  lw         $a2, 0x280($sp)
/* A2000 800A1400 8FA70284 */  lw         $a3, 0x284($sp)
/* A2004 800A1404 AFAC0010 */  sw         $t4, 0x10($sp)
/* A2008 800A1408 0C02A524 */  jal        func_800A9490
/* A200C 800A140C AFAD0014 */   sw        $t5, 0x14($sp)
/* A2010 800A1410 AFA20260 */  sw         $v0, 0x260($sp)
/* A2014 800A1414 8FAE0260 */  lw         $t6, 0x260($sp)
/* A2018 800A1418 11C00006 */  beqz       $t6, .L800A1434
/* A201C 800A141C 00000000 */   nop
/* A2020 800A1420 24010005 */  addiu      $at, $zero, 5
/* A2024 800A1424 11C10003 */  beq        $t6, $at, .L800A1434
/* A2028 800A1428 00000000 */   nop
/* A202C 800A142C 100000F2 */  b          .L800A17F8
/* A2030 800A1430 8FA20260 */   lw        $v0, 0x260($sp)
.L800A1434:
/* A2034 800A1434 8FAF0290 */  lw         $t7, 0x290($sp)
/* A2038 800A1438 2401FFFF */  addiu      $at, $zero, -1
/* A203C 800A143C 8DF80000 */  lw         $t8, ($t7)
/* A2040 800A1440 13010003 */  beq        $t8, $at, .L800A1450
/* A2044 800A1444 00000000 */   nop
/* A2048 800A1448 100000EB */  b          .L800A17F8
/* A204C 800A144C 24020009 */   addiu     $v0, $zero, 9
.L800A1450:
/* A2050 800A1450 8FA40278 */  lw         $a0, 0x278($sp)
/* A2054 800A1454 0C025CA4 */  jal        func_80097290
/* A2058 800A1458 27A50030 */   addiu     $a1, $sp, 0x30
/* A205C 800A145C AFA20260 */  sw         $v0, 0x260($sp)
/* A2060 800A1460 8FB9028C */  lw         $t9, 0x28c($sp)
/* A2064 800A1464 8FA80030 */  lw         $t0, 0x30($sp)
/* A2068 800A1468 0119082A */  slt        $at, $t0, $t9
/* A206C 800A146C 10200003 */  beqz       $at, .L800A147C
/* A2070 800A1470 00000000 */   nop
/* A2074 800A1474 100000E0 */  b          .L800A17F8
/* A2078 800A1478 24020007 */   addiu     $v0, $zero, 7
.L800A147C:
/* A207C 800A147C 8FA9025C */  lw         $t1, 0x25c($sp)
/* A2080 800A1480 112000D9 */  beqz       $t1, .L800A17E8
/* A2084 800A1484 00000000 */   nop
/* A2088 800A1488 8FAA0290 */  lw         $t2, 0x290($sp)
/* A208C 800A148C 8FA40278 */  lw         $a0, 0x278($sp)
/* A2090 800A1490 00002825 */  or         $a1, $zero, $zero
/* A2094 800A1494 00003025 */  or         $a2, $zero, $zero
/* A2098 800A1498 00003825 */  or         $a3, $zero, $zero
/* A209C 800A149C AFA00010 */  sw         $zero, 0x10($sp)
/* A20A0 800A14A0 0C02A524 */  jal        func_800A9490
/* A20A4 800A14A4 AFAA0014 */   sw        $t2, 0x14($sp)
/* A20A8 800A14A8 AFA20260 */  sw         $v0, 0x260($sp)
/* A20AC 800A14AC 8FAB0260 */  lw         $t3, 0x260($sp)
/* A20B0 800A14B0 11600006 */  beqz       $t3, .L800A14CC
/* A20B4 800A14B4 00000000 */   nop
/* A20B8 800A14B8 24010005 */  addiu      $at, $zero, 5
/* A20BC 800A14BC 11610003 */  beq        $t3, $at, .L800A14CC
/* A20C0 800A14C0 00000000 */   nop
/* A20C4 800A14C4 100000CC */  b          .L800A17F8
/* A20C8 800A14C8 8FA20260 */   lw        $v0, 0x260($sp)
.L800A14CC:
/* A20CC 800A14CC 8FAC0290 */  lw         $t4, 0x290($sp)
/* A20D0 800A14D0 2401FFFF */  addiu      $at, $zero, -1
/* A20D4 800A14D4 8D8D0000 */  lw         $t5, ($t4)
/* A20D8 800A14D8 15A10003 */  bne        $t5, $at, .L800A14E8
/* A20DC 800A14DC 00000000 */   nop
/* A20E0 800A14E0 100000C5 */  b          .L800A17F8
/* A20E4 800A14E4 24020008 */   addiu     $v0, $zero, 8
.L800A14E8:
/* A20E8 800A14E8 8FAE0278 */  lw         $t6, 0x278($sp)
/* A20EC 800A14EC A3A0003B */  sb         $zero, 0x3b($sp)
/* A20F0 800A14F0 91CF0064 */  lbu        $t7, 0x64($t6)
/* A20F4 800A14F4 19E00067 */  blez       $t7, .L800A1694
/* A20F8 800A14F8 00000000 */   nop
.L800A14FC:
/* A20FC 800A14FC 8FA40278 */  lw         $a0, 0x278($sp)
/* A2100 800A1500 27A5015C */  addiu      $a1, $sp, 0x15c
/* A2104 800A1504 00003025 */  or         $a2, $zero, $zero
/* A2108 800A1508 0C029104 */  jal        func_800A4410
/* A210C 800A150C 93A7003B */   lbu       $a3, 0x3b($sp)
/* A2110 800A1510 AFA20260 */  sw         $v0, 0x260($sp)
/* A2114 800A1514 8FB80260 */  lw         $t8, 0x260($sp)
/* A2118 800A1518 13000003 */  beqz       $t8, .L800A1528
/* A211C 800A151C 00000000 */   nop
/* A2120 800A1520 100000B5 */  b          .L800A17F8
/* A2124 800A1524 8FA20260 */   lw        $v0, 0x260($sp)
.L800A1528:
/* A2128 800A1528 93B9003B */  lbu        $t9, 0x3b($sp)
/* A212C 800A152C 27A80270 */  addiu      $t0, $sp, 0x270
/* A2130 800A1530 27A9026C */  addiu      $t1, $sp, 0x26c
/* A2134 800A1534 AFA90018 */  sw         $t1, 0x18($sp)
/* A2138 800A1538 AFA80014 */  sw         $t0, 0x14($sp)
/* A213C 800A153C 8FA40278 */  lw         $a0, 0x278($sp)
/* A2140 800A1540 27A5015C */  addiu      $a1, $sp, 0x15c
/* A2144 800A1544 8FA6025C */  lw         $a2, 0x25c($sp)
/* A2148 800A1548 27A70274 */  addiu      $a3, $sp, 0x274
/* A214C 800A154C 0C028602 */  jal        func_800A1808
/* A2150 800A1550 AFB90010 */   sw        $t9, 0x10($sp)
/* A2154 800A1554 AFA20260 */  sw         $v0, 0x260($sp)
/* A2158 800A1558 8FAA0260 */  lw         $t2, 0x260($sp)
/* A215C 800A155C 11400003 */  beqz       $t2, .L800A156C
/* A2160 800A1560 00000000 */   nop
/* A2164 800A1564 100000A4 */  b          .L800A17F8
/* A2168 800A1568 8FA20260 */   lw        $v0, 0x260($sp)
.L800A156C:
/* A216C 800A156C 8FAB0274 */  lw         $t3, 0x274($sp)
/* A2170 800A1570 2401FFFF */  addiu      $at, $zero, -1
/* A2174 800A1574 1161003E */  beq        $t3, $at, .L800A1670
/* A2178 800A1578 00000000 */   nop
/* A217C 800A157C 8FAC0034 */  lw         $t4, 0x34($sp)
/* A2180 800A1580 15800006 */  bnez       $t4, .L800A159C
/* A2184 800A1584 00000000 */   nop
/* A2188 800A1588 8FAD0274 */  lw         $t5, 0x274($sp)
/* A218C 800A158C A3AD002D */  sb         $t5, 0x2d($sp)
/* A2190 800A1590 93AE003B */  lbu        $t6, 0x3b($sp)
/* A2194 800A1594 10000016 */  b          .L800A15F0
/* A2198 800A1598 A3AE002C */   sb        $t6, 0x2c($sp)
.L800A159C:
/* A219C 800A159C 8FB80268 */  lw         $t8, 0x268($sp)
/* A21A0 800A15A0 93AF003B */  lbu        $t7, 0x3b($sp)
/* A21A4 800A15A4 0018C840 */  sll        $t9, $t8, 1
/* A21A8 800A15A8 03B94021 */  addu       $t0, $sp, $t9
/* A21AC 800A15AC A10F005C */  sb         $t7, 0x5c($t0)
/* A21B0 800A15B0 8FAA0268 */  lw         $t2, 0x268($sp)
/* A21B4 800A15B4 8FA90274 */  lw         $t1, 0x274($sp)
/* A21B8 800A15B8 000A5840 */  sll        $t3, $t2, 1
/* A21BC 800A15BC 03AB6021 */  addu       $t4, $sp, $t3
/* A21C0 800A15C0 A189005D */  sb         $t1, 0x5d($t4)
/* A21C4 800A15C4 8FA40278 */  lw         $a0, 0x278($sp)
/* A21C8 800A15C8 27A5005C */  addiu      $a1, $sp, 0x5c
/* A21CC 800A15CC 24060001 */  addiu      $a2, $zero, 1
/* A21D0 800A15D0 0C029104 */  jal        func_800A4410
/* A21D4 800A15D4 93A7003A */   lbu       $a3, 0x3a($sp)
/* A21D8 800A15D8 AFA20260 */  sw         $v0, 0x260($sp)
/* A21DC 800A15DC 8FAD0260 */  lw         $t5, 0x260($sp)
/* A21E0 800A15E0 11A00003 */  beqz       $t5, .L800A15F0
/* A21E4 800A15E4 00000000 */   nop
/* A21E8 800A15E8 10000083 */  b          .L800A17F8
/* A21EC 800A15EC 8FA20260 */   lw        $v0, 0x260($sp)
.L800A15F0:
/* A21F0 800A15F0 AFA00264 */  sw         $zero, 0x264($sp)
.L800A15F4:
/* A21F4 800A15F4 8FAE0264 */  lw         $t6, 0x264($sp)
/* A21F8 800A15F8 000EC040 */  sll        $t8, $t6, 1
/* A21FC 800A15FC 03B87821 */  addu       $t7, $sp, $t8
/* A2200 800A1600 95EF015C */  lhu        $t7, 0x15c($t7)
/* A2204 800A1604 03B8C821 */  addu       $t9, $sp, $t8
/* A2208 800A1608 A72F005C */  sh         $t7, 0x5c($t9)
/* A220C 800A160C 8FA80264 */  lw         $t0, 0x264($sp)
/* A2210 800A1610 250A0001 */  addiu      $t2, $t0, 1
/* A2214 800A1614 29410080 */  slti       $at, $t2, 0x80
/* A2218 800A1618 1420FFF6 */  bnez       $at, .L800A15F4
/* A221C 800A161C AFAA0264 */   sw        $t2, 0x264($sp)
/* A2220 800A1620 8FA9026C */  lw         $t1, 0x26c($sp)
/* A2224 800A1624 AFA90268 */  sw         $t1, 0x268($sp)
/* A2228 800A1628 93AB003B */  lbu        $t3, 0x3b($sp)
/* A222C 800A162C A3AB003A */  sb         $t3, 0x3a($sp)
/* A2230 800A1630 8FAC0034 */  lw         $t4, 0x34($sp)
/* A2234 800A1634 258D0001 */  addiu      $t5, $t4, 1
/* A2238 800A1638 AFAD0034 */  sw         $t5, 0x34($sp)
/* A223C 800A163C 8FAE025C */  lw         $t6, 0x25c($sp)
/* A2240 800A1640 8FAF0270 */  lw         $t7, 0x270($sp)
/* A2244 800A1644 01EE082A */  slt        $at, $t7, $t6
/* A2248 800A1648 10200006 */  beqz       $at, .L800A1664
/* A224C 800A164C 00000000 */   nop
/* A2250 800A1650 8FB8025C */  lw         $t8, 0x25c($sp)
/* A2254 800A1654 8FB90270 */  lw         $t9, 0x270($sp)
/* A2258 800A1658 03194023 */  subu       $t0, $t8, $t9
/* A225C 800A165C 10000004 */  b          .L800A1670
/* A2260 800A1660 AFA8025C */   sw        $t0, 0x25c($sp)
.L800A1664:
/* A2264 800A1664 AFA0025C */  sw         $zero, 0x25c($sp)
/* A2268 800A1668 1000000A */  b          .L800A1694
/* A226C 800A166C 00000000 */   nop
.L800A1670:
/* A2270 800A1670 93AA003B */  lbu        $t2, 0x3b($sp)
/* A2274 800A1674 8FAC0278 */  lw         $t4, 0x278($sp)
/* A2278 800A1678 25490001 */  addiu      $t1, $t2, 1
/* A227C 800A167C A3A9003B */  sb         $t1, 0x3b($sp)
/* A2280 800A1680 918D0064 */  lbu        $t5, 0x64($t4)
/* A2284 800A1684 312B00FF */  andi       $t3, $t1, 0xff
/* A2288 800A1688 016D082A */  slt        $at, $t3, $t5
/* A228C 800A168C 1420FF9B */  bnez       $at, .L800A14FC
/* A2290 800A1690 00000000 */   nop
.L800A1694:
/* A2294 800A1694 8FAE025C */  lw         $t6, 0x25c($sp)
/* A2298 800A1698 1DC00005 */  bgtz       $t6, .L800A16B0
/* A229C 800A169C 00000000 */   nop
/* A22A0 800A16A0 8FAF0274 */  lw         $t7, 0x274($sp)
/* A22A4 800A16A4 2401FFFF */  addiu      $at, $zero, -1
/* A22A8 800A16A8 15E10003 */  bne        $t7, $at, .L800A16B8
/* A22AC 800A16AC 00000000 */   nop
.L800A16B0:
/* A22B0 800A16B0 10000051 */  b          .L800A17F8
/* A22B4 800A16B4 24020003 */   addiu     $v0, $zero, 3
.L800A16B8:
/* A22B8 800A16B8 8FB90268 */  lw         $t9, 0x268($sp)
/* A22BC 800A16BC 93B8003B */  lbu        $t8, 0x3b($sp)
/* A22C0 800A16C0 00194040 */  sll        $t0, $t9, 1
/* A22C4 800A16C4 03A85021 */  addu       $t2, $sp, $t0
/* A22C8 800A16C8 A158005C */  sb         $t8, 0x5c($t2)
/* A22CC 800A16CC 8FAC0268 */  lw         $t4, 0x268($sp)
/* A22D0 800A16D0 8FA90274 */  lw         $t1, 0x274($sp)
/* A22D4 800A16D4 000C5840 */  sll        $t3, $t4, 1
/* A22D8 800A16D8 03AB6821 */  addu       $t5, $sp, $t3
/* A22DC 800A16DC A1A9005D */  sb         $t1, 0x5d($t5)
/* A22E0 800A16E0 8FA40278 */  lw         $a0, 0x278($sp)
/* A22E4 800A16E4 27A5005C */  addiu      $a1, $sp, 0x5c
/* A22E8 800A16E8 24060001 */  addiu      $a2, $zero, 1
/* A22EC 800A16EC 0C029104 */  jal        func_800A4410
/* A22F0 800A16F0 93A7003A */   lbu       $a3, 0x3a($sp)
/* A22F4 800A16F4 AFA20260 */  sw         $v0, 0x260($sp)
/* A22F8 800A16F8 8FAE0260 */  lw         $t6, 0x260($sp)
/* A22FC 800A16FC 11C00003 */  beqz       $t6, .L800A170C
/* A2300 800A1700 00000000 */   nop
/* A2304 800A1704 1000003C */  b          .L800A17F8
/* A2308 800A1708 8FA20260 */   lw        $v0, 0x260($sp)
.L800A170C:
/* A230C 800A170C 97AF002C */  lhu        $t7, 0x2c($sp)
/* A2310 800A1710 A7AF0042 */  sh         $t7, 0x42($sp)
/* A2314 800A1714 97B9027E */  lhu        $t9, 0x27e($sp)
/* A2318 800A1718 A7B90040 */  sh         $t9, 0x40($sp)
/* A231C 800A171C 8FB80280 */  lw         $t8, 0x280($sp)
/* A2320 800A1720 AFB8003C */  sw         $t8, 0x3c($sp)
/* A2324 800A1724 A7A00046 */  sh         $zero, 0x46($sp)
/* A2328 800A1728 AFA00264 */  sw         $zero, 0x264($sp)
.L800A172C:
/* A232C 800A172C 8FA80284 */  lw         $t0, 0x284($sp)
/* A2330 800A1730 8FAC0264 */  lw         $t4, 0x264($sp)
/* A2334 800A1734 910A0000 */  lbu        $t2, ($t0)
/* A2338 800A1738 03AC4821 */  addu       $t1, $sp, $t4
/* A233C 800A173C A12A004C */  sb         $t2, 0x4c($t1)
/* A2340 800A1740 8FAB0284 */  lw         $t3, 0x284($sp)
/* A2344 800A1744 256D0001 */  addiu      $t5, $t3, 1
/* A2348 800A1748 AFAD0284 */  sw         $t5, 0x284($sp)
/* A234C 800A174C 8FAE0264 */  lw         $t6, 0x264($sp)
/* A2350 800A1750 25CF0001 */  addiu      $t7, $t6, 1
/* A2354 800A1754 29E10010 */  slti       $at, $t7, 0x10
/* A2358 800A1758 1420FFF4 */  bnez       $at, .L800A172C
/* A235C 800A175C AFAF0264 */   sw        $t7, 0x264($sp)
/* A2360 800A1760 AFA00264 */  sw         $zero, 0x264($sp)
.L800A1764:
/* A2364 800A1764 8FB90288 */  lw         $t9, 0x288($sp)
/* A2368 800A1768 8FA80264 */  lw         $t0, 0x264($sp)
/* A236C 800A176C 93380000 */  lbu        $t8, ($t9)
/* A2370 800A1770 03A85021 */  addu       $t2, $sp, $t0
/* A2374 800A1774 A1580048 */  sb         $t8, 0x48($t2)
/* A2378 800A1778 8FAC0288 */  lw         $t4, 0x288($sp)
/* A237C 800A177C 25890001 */  addiu      $t1, $t4, 1
/* A2380 800A1780 AFA90288 */  sw         $t1, 0x288($sp)
/* A2384 800A1784 8FAB0264 */  lw         $t3, 0x264($sp)
/* A2388 800A1788 256D0001 */  addiu      $t5, $t3, 1
/* A238C 800A178C 29A10004 */  slti       $at, $t5, 4
/* A2390 800A1790 1420FFF4 */  bnez       $at, .L800A1764
/* A2394 800A1794 AFAD0264 */   sw        $t5, 0x264($sp)
/* A2398 800A1798 8FAE0278 */  lw         $t6, 0x278($sp)
/* A239C 800A179C 8FAF0290 */  lw         $t7, 0x290($sp)
/* A23A0 800A17A0 27A7003C */  addiu      $a3, $sp, 0x3c
/* A23A4 800A17A4 8DD8005C */  lw         $t8, 0x5c($t6)
/* A23A8 800A17A8 8DF90000 */  lw         $t9, ($t7)
/* A23AC 800A17AC 8DC40004 */  lw         $a0, 4($t6)
/* A23B0 800A17B0 8DC50008 */  lw         $a1, 8($t6)
/* A23B4 800A17B4 AFA00010 */  sw         $zero, 0x10($sp)
/* A23B8 800A17B8 0C02DC04 */  jal        func_800B7010
/* A23BC 800A17BC 03383021 */   addu      $a2, $t9, $t8
/* A23C0 800A17C0 AFA20260 */  sw         $v0, 0x260($sp)
/* A23C4 800A17C4 8FA80260 */  lw         $t0, 0x260($sp)
/* A23C8 800A17C8 11000003 */  beqz       $t0, .L800A17D8
/* A23CC 800A17CC 00000000 */   nop
/* A23D0 800A17D0 10000009 */  b          .L800A17F8
/* A23D4 800A17D4 8FA20260 */   lw        $v0, 0x260($sp)
.L800A17D8:
/* A23D8 800A17D8 10000007 */  b          .L800A17F8
/* A23DC 800A17DC 8FA20260 */   lw        $v0, 0x260($sp)
/* A23E0 800A17E0 10000003 */  b          .L800A17F0
/* A23E4 800A17E4 00000000 */   nop
.L800A17E8:
/* A23E8 800A17E8 10000003 */  b          .L800A17F8
/* A23EC 800A17EC 24020005 */   addiu     $v0, $zero, 5
.L800A17F0:
/* A23F0 800A17F0 10000001 */  b          .L800A17F8
/* A23F4 800A17F4 00000000 */   nop
.L800A17F8:
/* A23F8 800A17F8 8FBF0024 */  lw         $ra, 0x24($sp)
/* A23FC 800A17FC 27BD0278 */  addiu      $sp, $sp, 0x278
/* A2400 800A1800 03E00008 */  jr         $ra
/* A2404 800A1804 00000000 */   nop

glabel func_800A1808
/* A2408 800A1808 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* A240C 800A180C AFBF0014 */  sw         $ra, 0x14($sp)
/* A2410 800A1810 AFA40050 */  sw         $a0, 0x50($sp)
/* A2414 800A1814 AFA50054 */  sw         $a1, 0x54($sp)
/* A2418 800A1818 AFA60058 */  sw         $a2, 0x58($sp)
/* A241C 800A181C AFA7005C */  sw         $a3, 0x5c($sp)
/* A2420 800A1820 AFA0001C */  sw         $zero, 0x1c($sp)
/* A2424 800A1824 93AE0063 */  lbu        $t6, 0x63($sp)
/* A2428 800A1828 19C00004 */  blez       $t6, .L800A183C
/* A242C 800A182C 00000000 */   nop
/* A2430 800A1830 240F0001 */  addiu      $t7, $zero, 1
/* A2434 800A1834 10000004 */  b          .L800A1848
/* A2438 800A1838 AFAF0018 */   sw        $t7, 0x18($sp)
.L800A183C:
/* A243C 800A183C 8FB80050 */  lw         $t8, 0x50($sp)
/* A2440 800A1840 8F190060 */  lw         $t9, 0x60($t8)
/* A2444 800A1844 AFB90018 */  sw         $t9, 0x18($sp)
.L800A1848:
/* A2448 800A1848 8FA80018 */  lw         $t0, 0x18($sp)
/* A244C 800A184C 29010080 */  slti       $at, $t0, 0x80
/* A2450 800A1850 10200010 */  beqz       $at, .L800A1894
/* A2454 800A1854 AFA8004C */   sw        $t0, 0x4c($sp)
.L800A1858:
/* A2458 800A1858 8FAA004C */  lw         $t2, 0x4c($sp)
/* A245C 800A185C 8FA90054 */  lw         $t1, 0x54($sp)
/* A2460 800A1860 24010003 */  addiu      $at, $zero, 3
/* A2464 800A1864 000A5840 */  sll        $t3, $t2, 1
/* A2468 800A1868 012B6021 */  addu       $t4, $t1, $t3
/* A246C 800A186C 958D0000 */  lhu        $t5, ($t4)
/* A2470 800A1870 15A10003 */  bne        $t5, $at, .L800A1880
/* A2474 800A1874 00000000 */   nop
/* A2478 800A1878 10000006 */  b          .L800A1894
/* A247C 800A187C 00000000 */   nop
.L800A1880:
/* A2480 800A1880 8FAE004C */  lw         $t6, 0x4c($sp)
/* A2484 800A1884 25CF0001 */  addiu      $t7, $t6, 1
/* A2488 800A1888 29E10080 */  slti       $at, $t7, 0x80
/* A248C 800A188C 1420FFF2 */  bnez       $at, .L800A1858
/* A2490 800A1890 AFAF004C */   sw        $t7, 0x4c($sp)
.L800A1894:
/* A2494 800A1894 8FB8004C */  lw         $t8, 0x4c($sp)
/* A2498 800A1898 24010080 */  addiu      $at, $zero, 0x80
/* A249C 800A189C 17010006 */  bne        $t8, $at, .L800A18B8
/* A24A0 800A18A0 00000000 */   nop
/* A24A4 800A18A4 8FA8005C */  lw         $t0, 0x5c($sp)
/* A24A8 800A18A8 2419FFFF */  addiu      $t9, $zero, -1
/* A24AC 800A18AC AD190000 */  sw         $t9, ($t0)
/* A24B0 800A18B0 10000076 */  b          .L800A1A8C
/* A24B4 800A18B4 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A18B8:
/* A24B8 800A18B8 AFA00020 */  sw         $zero, 0x20($sp)
.L800A18BC:
/* A24BC 800A18BC 8FAA0020 */  lw         $t2, 0x20($sp)
/* A24C0 800A18C0 03AA4821 */  addu       $t1, $sp, $t2
/* A24C4 800A18C4 A1200024 */  sb         $zero, 0x24($t1)
/* A24C8 800A18C8 8FAB0020 */  lw         $t3, 0x20($sp)
/* A24CC 800A18CC 256C0001 */  addiu      $t4, $t3, 1
/* A24D0 800A18D0 29810020 */  slti       $at, $t4, 0x20
/* A24D4 800A18D4 1420FFF9 */  bnez       $at, .L800A18BC
/* A24D8 800A18D8 AFAC0020 */   sw        $t4, 0x20($sp)
/* A24DC 800A18DC 8FAD004C */  lw         $t5, 0x4c($sp)
/* A24E0 800A18E0 AFAD0048 */  sw         $t5, 0x48($sp)
/* A24E4 800A18E4 8FAF0064 */  lw         $t7, 0x64($sp)
/* A24E8 800A18E8 240E0001 */  addiu      $t6, $zero, 1
/* A24EC 800A18EC ADEE0000 */  sw         $t6, ($t7)
/* A24F0 800A18F0 8FB8004C */  lw         $t8, 0x4c($sp)
/* A24F4 800A18F4 AFB80044 */  sw         $t8, 0x44($sp)
/* A24F8 800A18F8 8FB9004C */  lw         $t9, 0x4c($sp)
/* A24FC 800A18FC 27280001 */  addiu      $t0, $t9, 1
/* A2500 800A1900 AFA8004C */  sw         $t0, 0x4c($sp)
/* A2504 800A1904 8FA90064 */  lw         $t1, 0x64($sp)
/* A2508 800A1908 8FAA0058 */  lw         $t2, 0x58($sp)
/* A250C 800A190C 8D2B0000 */  lw         $t3, ($t1)
/* A2510 800A1910 016A082A */  slt        $at, $t3, $t2
/* A2514 800A1914 10200037 */  beqz       $at, .L800A19F4
/* A2518 800A1918 00000000 */   nop
/* A251C 800A191C 8FAC004C */  lw         $t4, 0x4c($sp)
/* A2520 800A1920 29810080 */  slti       $at, $t4, 0x80
/* A2524 800A1924 10200033 */  beqz       $at, .L800A19F4
/* A2528 800A1928 00000000 */   nop
.L800A192C:
/* A252C 800A192C 8FAE004C */  lw         $t6, 0x4c($sp)
/* A2530 800A1930 8FAD0054 */  lw         $t5, 0x54($sp)
/* A2534 800A1934 24010003 */  addiu      $at, $zero, 3
/* A2538 800A1938 000E7840 */  sll        $t7, $t6, 1
/* A253C 800A193C 01AFC021 */  addu       $t8, $t5, $t7
/* A2540 800A1940 97190000 */  lhu        $t9, ($t8)
/* A2544 800A1944 1721001E */  bne        $t9, $at, .L800A19C0
/* A2548 800A1948 00000000 */   nop
/* A254C 800A194C 8FAA0044 */  lw         $t2, 0x44($sp)
/* A2550 800A1950 8FA90054 */  lw         $t1, 0x54($sp)
/* A2554 800A1954 93A80063 */  lbu        $t0, 0x63($sp)
/* A2558 800A1958 000A5840 */  sll        $t3, $t2, 1
/* A255C 800A195C 012B6021 */  addu       $t4, $t1, $t3
/* A2560 800A1960 A1880000 */  sb         $t0, ($t4)
/* A2564 800A1964 8FAF0044 */  lw         $t7, 0x44($sp)
/* A2568 800A1968 8FAD0054 */  lw         $t5, 0x54($sp)
/* A256C 800A196C 8FAE004C */  lw         $t6, 0x4c($sp)
/* A2570 800A1970 000FC040 */  sll        $t8, $t7, 1
/* A2574 800A1974 01B8C821 */  addu       $t9, $t5, $t8
/* A2578 800A1978 A32E0001 */  sb         $t6, 1($t9)
/* A257C 800A197C 8FA40050 */  lw         $a0, 0x50($sp)
/* A2580 800A1980 8FA50044 */  lw         $a1, 0x44($sp)
/* A2584 800A1984 27A60024 */  addiu      $a2, $sp, 0x24
/* A2588 800A1988 0C0286A7 */  jal        func_800A1A9C
/* A258C 800A198C 93A70063 */   lbu       $a3, 0x63($sp)
/* A2590 800A1990 AFA2001C */  sw         $v0, 0x1c($sp)
/* A2594 800A1994 8FAA001C */  lw         $t2, 0x1c($sp)
/* A2598 800A1998 11400003 */  beqz       $t2, .L800A19A8
/* A259C 800A199C 00000000 */   nop
/* A25A0 800A19A0 1000003A */  b          .L800A1A8C
/* A25A4 800A19A4 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A19A8:
/* A25A8 800A19A8 8FA9004C */  lw         $t1, 0x4c($sp)
/* A25AC 800A19AC AFA90044 */  sw         $t1, 0x44($sp)
/* A25B0 800A19B0 8FAB0064 */  lw         $t3, 0x64($sp)
/* A25B4 800A19B4 8D680000 */  lw         $t0, ($t3)
/* A25B8 800A19B8 250C0001 */  addiu      $t4, $t0, 1
/* A25BC 800A19BC AD6C0000 */  sw         $t4, ($t3)
.L800A19C0:
/* A25C0 800A19C0 8FAF004C */  lw         $t7, 0x4c($sp)
/* A25C4 800A19C4 25ED0001 */  addiu      $t5, $t7, 1
/* A25C8 800A19C8 AFAD004C */  sw         $t5, 0x4c($sp)
/* A25CC 800A19CC 8FAE0064 */  lw         $t6, 0x64($sp)
/* A25D0 800A19D0 8FB80058 */  lw         $t8, 0x58($sp)
/* A25D4 800A19D4 8DD90000 */  lw         $t9, ($t6)
/* A25D8 800A19D8 0338082A */  slt        $at, $t9, $t8
/* A25DC 800A19DC 10200005 */  beqz       $at, .L800A19F4
/* A25E0 800A19E0 00000000 */   nop
/* A25E4 800A19E4 8FAA004C */  lw         $t2, 0x4c($sp)
/* A25E8 800A19E8 29410080 */  slti       $at, $t2, 0x80
/* A25EC 800A19EC 1420FFCF */  bnez       $at, .L800A192C
/* A25F0 800A19F0 00000000 */   nop
.L800A19F4:
/* A25F4 800A19F4 8FA90048 */  lw         $t1, 0x48($sp)
/* A25F8 800A19F8 8FA8005C */  lw         $t0, 0x5c($sp)
/* A25FC 800A19FC AD090000 */  sw         $t1, ($t0)
/* A2600 800A1A00 8FAC004C */  lw         $t4, 0x4c($sp)
/* A2604 800A1A04 24010080 */  addiu      $at, $zero, 0x80
/* A2608 800A1A08 1581000E */  bne        $t4, $at, .L800A1A44
/* A260C 800A1A0C 00000000 */   nop
/* A2610 800A1A10 8FAF0064 */  lw         $t7, 0x64($sp)
/* A2614 800A1A14 8FAB0058 */  lw         $t3, 0x58($sp)
/* A2618 800A1A18 8DED0000 */  lw         $t5, ($t7)
/* A261C 800A1A1C 01AB082A */  slt        $at, $t5, $t3
/* A2620 800A1A20 10200008 */  beqz       $at, .L800A1A44
/* A2624 800A1A24 00000000 */   nop
/* A2628 800A1A28 8FAE0044 */  lw         $t6, 0x44($sp)
/* A262C 800A1A2C 8FB80068 */  lw         $t8, 0x68($sp)
/* A2630 800A1A30 AF0E0000 */  sw         $t6, ($t8)
/* A2634 800A1A34 10000015 */  b          .L800A1A8C
/* A2638 800A1A38 8FA2001C */   lw        $v0, 0x1c($sp)
/* A263C 800A1A3C 10000011 */  b          .L800A1A84
/* A2640 800A1A40 00000000 */   nop
.L800A1A44:
/* A2644 800A1A44 8FA90044 */  lw         $t1, 0x44($sp)
/* A2648 800A1A48 8FAA0054 */  lw         $t2, 0x54($sp)
/* A264C 800A1A4C 24190001 */  addiu      $t9, $zero, 1
/* A2650 800A1A50 00094040 */  sll        $t0, $t1, 1
/* A2654 800A1A54 01486021 */  addu       $t4, $t2, $t0
/* A2658 800A1A58 A5990000 */  sh         $t9, ($t4)
/* A265C 800A1A5C 8FA40050 */  lw         $a0, 0x50($sp)
/* A2660 800A1A60 8FA50044 */  lw         $a1, 0x44($sp)
/* A2664 800A1A64 27A60024 */  addiu      $a2, $sp, 0x24
/* A2668 800A1A68 0C0286A7 */  jal        func_800A1A9C
/* A266C 800A1A6C 93A70063 */   lbu       $a3, 0x63($sp)
/* A2670 800A1A70 AFA2001C */  sw         $v0, 0x1c($sp)
/* A2674 800A1A74 8FAF0068 */  lw         $t7, 0x68($sp)
/* A2678 800A1A78 ADE00000 */  sw         $zero, ($t7)
/* A267C 800A1A7C 10000003 */  b          .L800A1A8C
/* A2680 800A1A80 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A1A84:
/* A2684 800A1A84 10000001 */  b          .L800A1A8C
/* A2688 800A1A88 00000000 */   nop
.L800A1A8C:
/* A268C 800A1A8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A2690 800A1A90 27BD0050 */  addiu      $sp, $sp, 0x50
/* A2694 800A1A94 03E00008 */  jr         $ra
/* A2698 800A1A98 00000000 */   nop

glabel func_800A1A9C
/* A269C 800A1A9C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A26A0 800A1AA0 AFBF001C */  sw         $ra, 0x1c($sp)
/* A26A4 800A1AA4 AFA40028 */  sw         $a0, 0x28($sp)
/* A26A8 800A1AA8 AFA5002C */  sw         $a1, 0x2c($sp)
/* A26AC 800A1AAC AFA60030 */  sw         $a2, 0x30($sp)
/* A26B0 800A1AB0 AFA70034 */  sw         $a3, 0x34($sp)
/* A26B4 800A1AB4 AFA00020 */  sw         $zero, 0x20($sp)
/* A26B8 800A1AB8 93AE0037 */  lbu        $t6, 0x37($sp)
/* A26BC 800A1ABC 8FAF0028 */  lw         $t7, 0x28($sp)
/* A26C0 800A1AC0 A1EE0065 */  sb         $t6, 0x65($t7)
/* A26C4 800A1AC4 0C0291D5 */  jal        func_800A4754
/* A26C8 800A1AC8 8FA40028 */   lw        $a0, 0x28($sp)
/* A26CC 800A1ACC AFA20020 */  sw         $v0, 0x20($sp)
/* A26D0 800A1AD0 8FB80020 */  lw         $t8, 0x20($sp)
/* A26D4 800A1AD4 13000003 */  beqz       $t8, .L800A1AE4
/* A26D8 800A1AD8 00000000 */   nop
/* A26DC 800A1ADC 10000020 */  b          .L800A1B60
/* A26E0 800A1AE0 8FA20020 */   lw        $v0, 0x20($sp)
.L800A1AE4:
/* A26E4 800A1AE4 AFA00024 */  sw         $zero, 0x24($sp)
.L800A1AE8:
/* A26E8 800A1AE8 8FB90028 */  lw         $t9, 0x28($sp)
/* A26EC 800A1AEC 8FA8002C */  lw         $t0, 0x2c($sp)
/* A26F0 800A1AF0 8FAA0024 */  lw         $t2, 0x24($sp)
/* A26F4 800A1AF4 8F240004 */  lw         $a0, 4($t9)
/* A26F8 800A1AF8 8F250008 */  lw         $a1, 8($t9)
/* A26FC 800A1AFC 000848C0 */  sll        $t1, $t0, 3
/* A2700 800A1B00 AFA00010 */  sw         $zero, 0x10($sp)
/* A2704 800A1B04 8FA70030 */  lw         $a3, 0x30($sp)
/* A2708 800A1B08 0C02DC04 */  jal        func_800B7010
/* A270C 800A1B0C 012A3021 */   addu      $a2, $t1, $t2
/* A2710 800A1B10 AFA20020 */  sw         $v0, 0x20($sp)
/* A2714 800A1B14 8FAB0020 */  lw         $t3, 0x20($sp)
/* A2718 800A1B18 11600003 */  beqz       $t3, .L800A1B28
/* A271C 800A1B1C 00000000 */   nop
/* A2720 800A1B20 10000006 */  b          .L800A1B3C
/* A2724 800A1B24 00000000 */   nop
.L800A1B28:
/* A2728 800A1B28 8FAC0024 */  lw         $t4, 0x24($sp)
/* A272C 800A1B2C 258D0001 */  addiu      $t5, $t4, 1
/* A2730 800A1B30 29A10008 */  slti       $at, $t5, 8
/* A2734 800A1B34 1420FFEC */  bnez       $at, .L800A1AE8
/* A2738 800A1B38 AFAD0024 */   sw        $t5, 0x24($sp)
.L800A1B3C:
/* A273C 800A1B3C 8FAE0028 */  lw         $t6, 0x28($sp)
/* A2740 800A1B40 A1C00065 */  sb         $zero, 0x65($t6)
/* A2744 800A1B44 0C0291D5 */  jal        func_800A4754
/* A2748 800A1B48 8FA40028 */   lw        $a0, 0x28($sp)
/* A274C 800A1B4C AFA20020 */  sw         $v0, 0x20($sp)
/* A2750 800A1B50 10000003 */  b          .L800A1B60
/* A2754 800A1B54 8FA20020 */   lw        $v0, 0x20($sp)
/* A2758 800A1B58 10000001 */  b          .L800A1B60
/* A275C 800A1B5C 00000000 */   nop
.L800A1B60:
/* A2760 800A1B60 8FBF001C */  lw         $ra, 0x1c($sp)
/* A2764 800A1B64 27BD0028 */  addiu      $sp, $sp, 0x28
/* A2768 800A1B68 03E00008 */  jr         $ra
/* A276C 800A1B6C 00000000 */   nop

glabel func_800A1B70
/* A2770 800A1B70 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* A2774 800A1B74 AFBF001C */  sw         $ra, 0x1c($sp)
/* A2778 800A1B78 AFA40150 */  sw         $a0, 0x150($sp)
/* A277C 800A1B7C AFA00048 */  sw         $zero, 0x48($sp)
/* A2780 800A1B80 3C04800D */  lui        $a0, %hi(D_800D2E40)
/* A2784 800A1B84 0C02AE3F */  jal        func_800AB8FC
/* A2788 800A1B88 24842E40 */   addiu     $a0, $a0, %lo(D_800D2E40)
/* A278C 800A1B8C 8FAE0150 */  lw         $t6, 0x150($sp)
/* A2790 800A1B90 A3A00027 */  sb         $zero, 0x27($sp)
/* A2794 800A1B94 91CF0064 */  lbu        $t7, 0x64($t6)
/* A2798 800A1B98 19E00021 */  blez       $t7, .L800A1C20
/* A279C 800A1B9C 00000000 */   nop
.L800A1BA0:
/* A27A0 800A1BA0 3C04800D */  lui        $a0, %hi(D_800D2E48)
/* A27A4 800A1BA4 24842E48 */  addiu      $a0, $a0, %lo(D_800D2E48)
/* A27A8 800A1BA8 0C02AE3F */  jal        func_800AB8FC
/* A27AC 800A1BAC 93A50027 */   lbu       $a1, 0x27($sp)
/* A27B0 800A1BB0 8FA40150 */  lw         $a0, 0x150($sp)
/* A27B4 800A1BB4 27A5004C */  addiu      $a1, $sp, 0x4c
/* A27B8 800A1BB8 00003025 */  or         $a2, $zero, $zero
/* A27BC 800A1BBC 0C029104 */  jal        func_800A4410
/* A27C0 800A1BC0 93A70027 */   lbu       $a3, 0x27($sp)
/* A27C4 800A1BC4 AFA20048 */  sw         $v0, 0x48($sp)
/* A27C8 800A1BC8 AFA0014C */  sw         $zero, 0x14c($sp)
.L800A1BCC:
/* A27CC 800A1BCC 8FB8014C */  lw         $t8, 0x14c($sp)
/* A27D0 800A1BD0 3C04800D */  lui        $a0, %hi(D_800D2E54)
/* A27D4 800A1BD4 24842E54 */  addiu      $a0, $a0, %lo(D_800D2E54)
/* A27D8 800A1BD8 0018C840 */  sll        $t9, $t8, 1
/* A27DC 800A1BDC 03B92821 */  addu       $a1, $sp, $t9
/* A27E0 800A1BE0 0C02AE3F */  jal        func_800AB8FC
/* A27E4 800A1BE4 94A5004C */   lhu       $a1, 0x4c($a1)
/* A27E8 800A1BE8 8FA8014C */  lw         $t0, 0x14c($sp)
/* A27EC 800A1BEC 25090001 */  addiu      $t1, $t0, 1
/* A27F0 800A1BF0 29210080 */  slti       $at, $t1, 0x80
/* A27F4 800A1BF4 1420FFF5 */  bnez       $at, .L800A1BCC
/* A27F8 800A1BF8 AFA9014C */   sw        $t1, 0x14c($sp)
/* A27FC 800A1BFC 93AA0027 */  lbu        $t2, 0x27($sp)
/* A2800 800A1C00 8FAD0150 */  lw         $t5, 0x150($sp)
/* A2804 800A1C04 254B0001 */  addiu      $t3, $t2, 1
/* A2808 800A1C08 A3AB0027 */  sb         $t3, 0x27($sp)
/* A280C 800A1C0C 91AE0064 */  lbu        $t6, 0x64($t5)
/* A2810 800A1C10 316C00FF */  andi       $t4, $t3, 0xff
/* A2814 800A1C14 018E082A */  slt        $at, $t4, $t6
/* A2818 800A1C18 1420FFE1 */  bnez       $at, .L800A1BA0
/* A281C 800A1C1C 00000000 */   nop
.L800A1C20:
/* A2820 800A1C20 8FAF0150 */  lw         $t7, 0x150($sp)
/* A2824 800A1C24 3C04800D */  lui        $a0, %hi(D_800D2E58)
/* A2828 800A1C28 24842E58 */  addiu      $a0, $a0, %lo(D_800D2E58)
/* A282C 800A1C2C 8DE50050 */  lw         $a1, 0x50($t7)
/* A2830 800A1C30 0C02AE3F */  jal        func_800AB8FC
/* A2834 800A1C34 8DE60060 */   lw        $a2, 0x60($t7)
/* A2838 800A1C38 8FB80150 */  lw         $t8, 0x150($sp)
/* A283C 800A1C3C AFA0014C */  sw         $zero, 0x14c($sp)
/* A2840 800A1C40 8F190050 */  lw         $t9, 0x50($t8)
/* A2844 800A1C44 1B20001B */  blez       $t9, .L800A1CB4
/* A2848 800A1C48 00000000 */   nop
.L800A1C4C:
/* A284C 800A1C4C 8FA80150 */  lw         $t0, 0x150($sp)
/* A2850 800A1C50 8FAA014C */  lw         $t2, 0x14c($sp)
/* A2854 800A1C54 27A70028 */  addiu      $a3, $sp, 0x28
/* A2858 800A1C58 8D09005C */  lw         $t1, 0x5c($t0)
/* A285C 800A1C5C 8D040004 */  lw         $a0, 4($t0)
/* A2860 800A1C60 8D050008 */  lw         $a1, 8($t0)
/* A2864 800A1C64 0C02E3D8 */  jal        func_800B8F60
/* A2868 800A1C68 012A3021 */   addu      $a2, $t1, $t2
/* A286C 800A1C6C 97AB002C */  lhu        $t3, 0x2c($sp)
/* A2870 800A1C70 97AD0032 */  lhu        $t5, 0x32($sp)
/* A2874 800A1C74 3C04800D */  lui        $a0, %hi(D_800D2E68)
/* A2878 800A1C78 24842E68 */  addiu      $a0, $a0, %lo(D_800D2E68)
/* A287C 800A1C7C 8FA5014C */  lw         $a1, 0x14c($sp)
/* A2880 800A1C80 8FA60028 */  lw         $a2, 0x28($sp)
/* A2884 800A1C84 97A7002E */  lhu        $a3, 0x2e($sp)
/* A2888 800A1C88 AFAB0010 */  sw         $t3, 0x10($sp)
/* A288C 800A1C8C 0C02AE3F */  jal        func_800AB8FC
/* A2890 800A1C90 AFAD0014 */   sw        $t5, 0x14($sp)
/* A2894 800A1C94 8FAC014C */  lw         $t4, 0x14c($sp)
/* A2898 800A1C98 8FAF0150 */  lw         $t7, 0x150($sp)
/* A289C 800A1C9C 258E0001 */  addiu      $t6, $t4, 1
/* A28A0 800A1CA0 AFAE014C */  sw         $t6, 0x14c($sp)
/* A28A4 800A1CA4 8DF80050 */  lw         $t8, 0x50($t7)
/* A28A8 800A1CA8 01D8082A */  slt        $at, $t6, $t8
/* A28AC 800A1CAC 1420FFE7 */  bnez       $at, .L800A1C4C
/* A28B0 800A1CB0 00000000 */   nop
.L800A1CB4:
/* A28B4 800A1CB4 3C04800D */  lui        $a0, %hi(D_800D2E98)
/* A28B8 800A1CB8 0C02AE3F */  jal        func_800AB8FC
/* A28BC 800A1CBC 24842E98 */   addiu     $a0, $a0, %lo(D_800D2E98)
/* A28C0 800A1CC0 10000003 */  b          .L800A1CD0
/* A28C4 800A1CC4 8FA20048 */   lw        $v0, 0x48($sp)
/* A28C8 800A1CC8 10000001 */  b          .L800A1CD0
/* A28CC 800A1CCC 00000000 */   nop
.L800A1CD0:
/* A28D0 800A1CD0 8FBF001C */  lw         $ra, 0x1c($sp)
/* A28D4 800A1CD4 27BD0150 */  addiu      $sp, $sp, 0x150
/* A28D8 800A1CD8 03E00008 */  jr         $ra
/* A28DC 800A1CDC 00000000 */   nop

glabel func_800A1CE0
/* A28E0 800A1CE0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A28E4 800A1CE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A28E8 800A1CE8 AFA40040 */  sw         $a0, 0x40($sp)
/* A28EC 800A1CEC AFA50044 */  sw         $a1, 0x44($sp)
/* A28F0 800A1CF0 AFA0003C */  sw         $zero, 0x3c($sp)
/* A28F4 800A1CF4 A3A0001F */  sb         $zero, 0x1f($sp)
/* A28F8 800A1CF8 240E0003 */  addiu      $t6, $zero, 3
/* A28FC 800A1CFC AFAE0018 */  sw         $t6, 0x18($sp)
/* A2900 800A1D00 0C026612 */  jal        func_80099848
/* A2904 800A1D04 00000000 */   nop
.L800A1D08:
/* A2908 800A1D08 0C0287A6 */  jal        func_800A1E98
/* A290C 800A1D0C 00002025 */   or        $a0, $zero, $zero
/* A2910 800A1D10 3C05801A */  lui        $a1, %hi(D_801A2020)
/* A2914 800A1D14 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* A2918 800A1D18 0C027D70 */  jal        func_8009F5C0
/* A291C 800A1D1C 24040001 */   addiu     $a0, $zero, 1
/* A2920 800A1D20 AFA2003C */  sw         $v0, 0x3c($sp)
/* A2924 800A1D24 8FA40040 */  lw         $a0, 0x40($sp)
/* A2928 800A1D28 27A50038 */  addiu      $a1, $sp, 0x38
/* A292C 800A1D2C 0C025D30 */  jal        func_800974C0
/* A2930 800A1D30 24060001 */   addiu     $a2, $zero, 1
/* A2934 800A1D34 3C05801A */  lui        $a1, %hi(D_801A2020)
/* A2938 800A1D38 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* A293C 800A1D3C 0C027D70 */  jal        func_8009F5C0
/* A2940 800A1D40 00002025 */   or        $a0, $zero, $zero
/* A2944 800A1D44 AFA2003C */  sw         $v0, 0x3c($sp)
/* A2948 800A1D48 8FA40040 */  lw         $a0, 0x40($sp)
/* A294C 800A1D4C 27A50038 */  addiu      $a1, $sp, 0x38
/* A2950 800A1D50 0C025D30 */  jal        func_800974C0
/* A2954 800A1D54 24060001 */   addiu     $a2, $zero, 1
/* A2958 800A1D58 27A40037 */  addiu      $a0, $sp, 0x37
/* A295C 800A1D5C 0C0287DE */  jal        func_800A1F78
/* A2960 800A1D60 27A50024 */   addiu     $a1, $sp, 0x24
/* A2964 800A1D64 3C0F801A */  lui        $t7, %hi(D_801A1B51)
/* A2968 800A1D68 91EF1B51 */  lbu        $t7, %lo(D_801A1B51)($t7)
/* A296C 800A1D6C AFA00020 */  sw         $zero, 0x20($sp)
/* A2970 800A1D70 19E00015 */  blez       $t7, .L800A1DC8
/* A2974 800A1D74 00000000 */   nop
.L800A1D78:
/* A2978 800A1D78 8FB80020 */  lw         $t8, 0x20($sp)
/* A297C 800A1D7C 0018C880 */  sll        $t9, $t8, 2
/* A2980 800A1D80 03B94021 */  addu       $t0, $sp, $t9
/* A2984 800A1D84 91080026 */  lbu        $t0, 0x26($t0)
/* A2988 800A1D88 31090004 */  andi       $t1, $t0, 4
/* A298C 800A1D8C 15200006 */  bnez       $t1, .L800A1DA8
/* A2990 800A1D90 00000000 */   nop
/* A2994 800A1D94 8FAA0018 */  lw         $t2, 0x18($sp)
/* A2998 800A1D98 254BFFFF */  addiu      $t3, $t2, -1
/* A299C 800A1D9C AFAB0018 */  sw         $t3, 0x18($sp)
/* A29A0 800A1DA0 10000009 */  b          .L800A1DC8
/* A29A4 800A1DA4 00000000 */   nop
.L800A1DA8:
/* A29A8 800A1DA8 8FAC0020 */  lw         $t4, 0x20($sp)
/* A29AC 800A1DAC 3C0E801A */  lui        $t6, %hi(D_801A1B51)
/* A29B0 800A1DB0 91CE1B51 */  lbu        $t6, %lo(D_801A1B51)($t6)
/* A29B4 800A1DB4 258D0001 */  addiu      $t5, $t4, 1
/* A29B8 800A1DB8 AFAD0020 */  sw         $t5, 0x20($sp)
/* A29BC 800A1DBC 01AE082A */  slt        $at, $t5, $t6
/* A29C0 800A1DC0 1420FFED */  bnez       $at, .L800A1D78
/* A29C4 800A1DC4 00000000 */   nop
.L800A1DC8:
/* A29C8 800A1DC8 3C0F801A */  lui        $t7, %hi(D_801A1B51)
/* A29CC 800A1DCC 91EF1B51 */  lbu        $t7, %lo(D_801A1B51)($t7)
/* A29D0 800A1DD0 8FB80020 */  lw         $t8, 0x20($sp)
/* A29D4 800A1DD4 15F80002 */  bne        $t7, $t8, .L800A1DE0
/* A29D8 800A1DD8 00000000 */   nop
/* A29DC 800A1DDC AFA00018 */  sw         $zero, 0x18($sp)
.L800A1DE0:
/* A29E0 800A1DE0 8FB90018 */  lw         $t9, 0x18($sp)
/* A29E4 800A1DE4 1F20FFC8 */  bgtz       $t9, .L800A1D08
/* A29E8 800A1DE8 00000000 */   nop
/* A29EC 800A1DEC 3C08801A */  lui        $t0, %hi(D_801A1B51)
/* A29F0 800A1DF0 91081B51 */  lbu        $t0, %lo(D_801A1B51)($t0)
/* A29F4 800A1DF4 AFA00020 */  sw         $zero, 0x20($sp)
/* A29F8 800A1DF8 1900001A */  blez       $t0, .L800A1E64
/* A29FC 800A1DFC 00000000 */   nop
.L800A1E00:
/* A2A00 800A1E00 8FA90020 */  lw         $t1, 0x20($sp)
/* A2A04 800A1E04 27AB0024 */  addiu      $t3, $sp, 0x24
/* A2A08 800A1E08 00095080 */  sll        $t2, $t1, 2
/* A2A0C 800A1E0C 014B6021 */  addu       $t4, $t2, $t3
/* A2A10 800A1E10 918D0003 */  lbu        $t5, 3($t4)
/* A2A14 800A1E14 15A0000B */  bnez       $t5, .L800A1E44
/* A2A18 800A1E18 00000000 */   nop
/* A2A1C 800A1E1C 918E0002 */  lbu        $t6, 2($t4)
/* A2A20 800A1E20 31CF0001 */  andi       $t7, $t6, 1
/* A2A24 800A1E24 11E00007 */  beqz       $t7, .L800A1E44
/* A2A28 800A1E28 00000000 */   nop
/* A2A2C 800A1E2C 8FB90020 */  lw         $t9, 0x20($sp)
/* A2A30 800A1E30 93B8001F */  lbu        $t8, 0x1f($sp)
/* A2A34 800A1E34 24080001 */  addiu      $t0, $zero, 1
/* A2A38 800A1E38 03284804 */  sllv       $t1, $t0, $t9
/* A2A3C 800A1E3C 03095025 */  or         $t2, $t8, $t1
/* A2A40 800A1E40 A3AA001F */  sb         $t2, 0x1f($sp)
.L800A1E44:
/* A2A44 800A1E44 8FAB0020 */  lw         $t3, 0x20($sp)
/* A2A48 800A1E48 3C0C801A */  lui        $t4, %hi(D_801A1B51)
/* A2A4C 800A1E4C 918C1B51 */  lbu        $t4, %lo(D_801A1B51)($t4)
/* A2A50 800A1E50 256D0001 */  addiu      $t5, $t3, 1
/* A2A54 800A1E54 AFAD0020 */  sw         $t5, 0x20($sp)
/* A2A58 800A1E58 01AC082A */  slt        $at, $t5, $t4
/* A2A5C 800A1E5C 1420FFE8 */  bnez       $at, .L800A1E00
/* A2A60 800A1E60 00000000 */   nop
.L800A1E64:
/* A2A64 800A1E64 0C026625 */  jal        func_80099894
/* A2A68 800A1E68 00000000 */   nop
/* A2A6C 800A1E6C 93AE001F */  lbu        $t6, 0x1f($sp)
/* A2A70 800A1E70 8FAF0044 */  lw         $t7, 0x44($sp)
/* A2A74 800A1E74 A1EE0000 */  sb         $t6, ($t7)
/* A2A78 800A1E78 10000003 */  b          .L800A1E88
/* A2A7C 800A1E7C 8FA2003C */   lw        $v0, 0x3c($sp)
/* A2A80 800A1E80 10000001 */  b          .L800A1E88
/* A2A84 800A1E84 00000000 */   nop
.L800A1E88:
/* A2A88 800A1E88 8FBF0014 */  lw         $ra, 0x14($sp)
/* A2A8C 800A1E8C 27BD0040 */  addiu      $sp, $sp, 0x40
/* A2A90 800A1E90 03E00008 */  jr         $ra
/* A2A94 800A1E94 00000000 */   nop

glabel func_800A1E98
/* A2A98 800A1E98 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* A2A9C 800A1E9C 308400FF */  andi       $a0, $a0, 0xff
/* A2AA0 800A1EA0 3C0E801A */  lui        $t6, %hi(D_801A2020)
/* A2AA4 800A1EA4 25CE2020 */  addiu      $t6, $t6, %lo(D_801A2020)
/* A2AA8 800A1EA8 AFAE000C */  sw         $t6, 0xc($sp)
/* A2AAC 800A1EAC 3C01801A */  lui        $at, %hi(D_801A1B50)
/* A2AB0 800A1EB0 A0241B50 */  sb         $a0, %lo(D_801A1B50)($at)
/* A2AB4 800A1EB4 240F0001 */  addiu      $t7, $zero, 1
/* A2AB8 800A1EB8 3C01801A */  lui        $at, %hi(D_801A205C)
/* A2ABC 800A1EBC AC2F205C */  sw         $t7, %lo(D_801A205C)($at)
/* A2AC0 800A1EC0 241800FF */  addiu      $t8, $zero, 0xff
/* A2AC4 800A1EC4 A3B80004 */  sb         $t8, 4($sp)
/* A2AC8 800A1EC8 24190001 */  addiu      $t9, $zero, 1
/* A2ACC 800A1ECC A3B90005 */  sb         $t9, 5($sp)
/* A2AD0 800A1ED0 24080003 */  addiu      $t0, $zero, 3
/* A2AD4 800A1ED4 A3A80006 */  sb         $t0, 6($sp)
/* A2AD8 800A1ED8 A3A40007 */  sb         $a0, 7($sp)
/* A2ADC 800A1EDC 240900FF */  addiu      $t1, $zero, 0xff
/* A2AE0 800A1EE0 A3A90008 */  sb         $t1, 8($sp)
/* A2AE4 800A1EE4 240A00FF */  addiu      $t2, $zero, 0xff
/* A2AE8 800A1EE8 A3AA0009 */  sb         $t2, 9($sp)
/* A2AEC 800A1EEC 240B00FF */  addiu      $t3, $zero, 0xff
/* A2AF0 800A1EF0 A3AB000A */  sb         $t3, 0xa($sp)
/* A2AF4 800A1EF4 240C00FF */  addiu      $t4, $zero, 0xff
/* A2AF8 800A1EF8 A3AC000B */  sb         $t4, 0xb($sp)
/* A2AFC 800A1EFC 3C0D801A */  lui        $t5, %hi(D_801A1B51)
/* A2B00 800A1F00 91AD1B51 */  lbu        $t5, %lo(D_801A1B51)($t5)
/* A2B04 800A1F04 AFA00000 */  sw         $zero, ($sp)
/* A2B08 800A1F08 19A00014 */  blez       $t5, .L800A1F5C
/* A2B0C 800A1F0C 00000000 */   nop
.L800A1F10:
/* A2B10 800A1F10 27AF0004 */  addiu      $t7, $sp, 4
/* A2B14 800A1F14 8DE10000 */  lw         $at, ($t7)
/* A2B18 800A1F18 8FAE000C */  lw         $t6, 0xc($sp)
/* A2B1C 800A1F1C A9C10000 */  swl        $at, ($t6)
/* A2B20 800A1F20 B9C10003 */  swr        $at, 3($t6)
/* A2B24 800A1F24 8DF90004 */  lw         $t9, 4($t7)
/* A2B28 800A1F28 A9D90004 */  swl        $t9, 4($t6)
/* A2B2C 800A1F2C B9D90007 */  swr        $t9, 7($t6)
/* A2B30 800A1F30 8FA8000C */  lw         $t0, 0xc($sp)
/* A2B34 800A1F34 25090008 */  addiu      $t1, $t0, 8
/* A2B38 800A1F38 AFA9000C */  sw         $t1, 0xc($sp)
/* A2B3C 800A1F3C 8FAA0000 */  lw         $t2, ($sp)
/* A2B40 800A1F40 3C0C801A */  lui        $t4, %hi(D_801A1B51)
/* A2B44 800A1F44 918C1B51 */  lbu        $t4, %lo(D_801A1B51)($t4)
/* A2B48 800A1F48 254B0001 */  addiu      $t3, $t2, 1
/* A2B4C 800A1F4C AFAB0000 */  sw         $t3, ($sp)
/* A2B50 800A1F50 016C082A */  slt        $at, $t3, $t4
/* A2B54 800A1F54 1420FFEE */  bnez       $at, .L800A1F10
/* A2B58 800A1F58 00000000 */   nop
.L800A1F5C:
/* A2B5C 800A1F5C 8FB8000C */  lw         $t8, 0xc($sp)
/* A2B60 800A1F60 240D00FE */  addiu      $t5, $zero, 0xfe
/* A2B64 800A1F64 A30D0000 */  sb         $t5, ($t8)
/* A2B68 800A1F68 10000001 */  b          .L800A1F70
/* A2B6C 800A1F6C 00000000 */   nop
.L800A1F70:
/* A2B70 800A1F70 03E00008 */  jr         $ra
/* A2B74 800A1F74 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800A1F78
/* A2B78 800A1F78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A2B7C 800A1F7C A3A00007 */  sb         $zero, 7($sp)
/* A2B80 800A1F80 3C0E801A */  lui        $t6, %hi(D_801A2020)
/* A2B84 800A1F84 25CE2020 */  addiu      $t6, $t6, %lo(D_801A2020)
/* A2B88 800A1F88 AFAE0014 */  sw         $t6, 0x14($sp)
/* A2B8C 800A1F8C 3C0F801A */  lui        $t7, %hi(D_801A1B51)
/* A2B90 800A1F90 91EF1B51 */  lbu        $t7, %lo(D_801A1B51)($t7)
/* A2B94 800A1F94 AFA00008 */  sw         $zero, 8($sp)
/* A2B98 800A1F98 19E0002A */  blez       $t7, .L800A2044
/* A2B9C 800A1F9C 00000000 */   nop
.L800A1FA0:
/* A2BA0 800A1FA0 8FB90014 */  lw         $t9, 0x14($sp)
/* A2BA4 800A1FA4 27B8000C */  addiu      $t8, $sp, 0xc
/* A2BA8 800A1FA8 8B210000 */  lwl        $at, ($t9)
/* A2BAC 800A1FAC 9B210003 */  lwr        $at, 3($t9)
/* A2BB0 800A1FB0 AF010000 */  sw         $at, ($t8)
/* A2BB4 800A1FB4 8B290004 */  lwl        $t1, 4($t9)
/* A2BB8 800A1FB8 9B290007 */  lwr        $t1, 7($t9)
/* A2BBC 800A1FBC AF090004 */  sw         $t1, 4($t8)
/* A2BC0 800A1FC0 93AA000E */  lbu        $t2, 0xe($sp)
/* A2BC4 800A1FC4 314B00C0 */  andi       $t3, $t2, 0xc0
/* A2BC8 800A1FC8 000B6103 */  sra        $t4, $t3, 4
/* A2BCC 800A1FCC A0AC0003 */  sb         $t4, 3($a1)
/* A2BD0 800A1FD0 90AD0003 */  lbu        $t5, 3($a1)
/* A2BD4 800A1FD4 11A00003 */  beqz       $t5, .L800A1FE4
/* A2BD8 800A1FD8 00000000 */   nop
/* A2BDC 800A1FDC 1000000E */  b          .L800A2018
/* A2BE0 800A1FE0 00000000 */   nop
.L800A1FE4:
/* A2BE4 800A1FE4 93AE0011 */  lbu        $t6, 0x11($sp)
/* A2BE8 800A1FE8 93A80010 */  lbu        $t0, 0x10($sp)
/* A2BEC 800A1FEC 000E7A00 */  sll        $t7, $t6, 8
/* A2BF0 800A1FF0 01E8C025 */  or         $t8, $t7, $t0
/* A2BF4 800A1FF4 A4B80000 */  sh         $t8, ($a1)
/* A2BF8 800A1FF8 93B90012 */  lbu        $t9, 0x12($sp)
/* A2BFC 800A1FFC A0B90002 */  sb         $t9, 2($a1)
/* A2C00 800A2000 8FAA0008 */  lw         $t2, 8($sp)
/* A2C04 800A2004 93A90007 */  lbu        $t1, 7($sp)
/* A2C08 800A2008 240B0001 */  addiu      $t3, $zero, 1
/* A2C0C 800A200C 014B6004 */  sllv       $t4, $t3, $t2
/* A2C10 800A2010 012C6825 */  or         $t5, $t1, $t4
/* A2C14 800A2014 A3AD0007 */  sb         $t5, 7($sp)
.L800A2018:
/* A2C18 800A2018 8FAE0008 */  lw         $t6, 8($sp)
/* A2C1C 800A201C 3C19801A */  lui        $t9, %hi(D_801A1B51)
/* A2C20 800A2020 93391B51 */  lbu        $t9, %lo(D_801A1B51)($t9)
/* A2C24 800A2024 8FA80014 */  lw         $t0, 0x14($sp)
/* A2C28 800A2028 25CF0001 */  addiu      $t7, $t6, 1
/* A2C2C 800A202C 01F9082A */  slt        $at, $t7, $t9
/* A2C30 800A2030 25180008 */  addiu      $t8, $t0, 8
/* A2C34 800A2034 AFB80014 */  sw         $t8, 0x14($sp)
/* A2C38 800A2038 AFAF0008 */  sw         $t7, 8($sp)
/* A2C3C 800A203C 1420FFD8 */  bnez       $at, .L800A1FA0
/* A2C40 800A2040 24A50004 */   addiu     $a1, $a1, 4
.L800A2044:
/* A2C44 800A2044 93AB0007 */  lbu        $t3, 7($sp)
/* A2C48 800A2048 A08B0000 */  sb         $t3, ($a0)
/* A2C4C 800A204C 10000001 */  b          .L800A2054
/* A2C50 800A2050 00000000 */   nop
.L800A2054:
/* A2C54 800A2054 03E00008 */  jr         $ra
/* A2C58 800A2058 27BD0018 */   addiu     $sp, $sp, 0x18
/* A2C5C 800A205C 00000000 */  nop
