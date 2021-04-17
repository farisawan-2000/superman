.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D1570
/* D2170 800D1570 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* D2174 800D1574 8DC70010 */  lw         $a3, %lo(D_A4600010)($t6)
/* D2178 800D1578 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* D217C 800D157C 30EF0003 */  andi       $t7, $a3, 3
/* D2180 800D1580 11E00006 */  beqz       $t7, .L800D159C
/* D2184 800D1584 00000000 */   nop
.L800D1588:
/* D2188 800D1588 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* D218C 800D158C 8F070010 */  lw         $a3, %lo(D_A4600010)($t8)
/* D2190 800D1590 30F90003 */  andi       $t9, $a3, 3
/* D2194 800D1594 1720FFFC */  bnez       $t9, .L800D1588
/* D2198 800D1598 00000000 */   nop
.L800D159C:
/* D219C 800D159C 90880009 */  lbu        $t0, 9($a0)
/* D21A0 800D15A0 3C0A800E */  lui        $t2, %hi(D_800DB100)
/* D21A4 800D15A4 254AB100 */  addiu      $t2, $t2, %lo(D_800DB100)
/* D21A8 800D15A8 00084880 */  sll        $t1, $t0, 2
/* D21AC 800D15AC 012A5821 */  addu       $t3, $t1, $t2
/* D21B0 800D15B0 8D6C0000 */  lw         $t4, ($t3)
/* D21B4 800D15B4 1184004A */  beq        $t4, $a0, .L800D16E0
/* D21B8 800D15B8 00000000 */   nop
/* D21BC 800D15BC 00086880 */  sll        $t5, $t0, 2
/* D21C0 800D15C0 01AA7021 */  addu       $t6, $t5, $t2
/* D21C4 800D15C4 8DCF0000 */  lw         $t7, ($t6)
/* D21C8 800D15C8 15000021 */  bnez       $t0, .L800D1650
/* D21CC 800D15CC AFAF0004 */   sw        $t7, 4($sp)
/* D21D0 800D15D0 91F80005 */  lbu        $t8, 5($t7)
/* D21D4 800D15D4 90990005 */  lbu        $t9, 5($a0)
/* D21D8 800D15D8 13190004 */  beq        $t8, $t9, .L800D15EC
/* D21DC 800D15DC 00000000 */   nop
/* D21E0 800D15E0 90890005 */  lbu        $t1, 5($a0)
/* D21E4 800D15E4 3C0BA460 */  lui        $t3, %hi(D_A4600014)
/* D21E8 800D15E8 AD690014 */  sw         $t1, %lo(D_A4600014)($t3)
.L800D15EC:
/* D21EC 800D15EC 8FAC0004 */  lw         $t4, 4($sp)
/* D21F0 800D15F0 908A0006 */  lbu        $t2, 6($a0)
/* D21F4 800D15F4 918D0006 */  lbu        $t5, 6($t4)
/* D21F8 800D15F8 11AA0004 */  beq        $t5, $t2, .L800D160C
/* D21FC 800D15FC 00000000 */   nop
/* D2200 800D1600 908E0006 */  lbu        $t6, 6($a0)
/* D2204 800D1604 3C0FA460 */  lui        $t7, %hi(D_A460001C)
/* D2208 800D1608 ADEE001C */  sw         $t6, %lo(D_A460001C)($t7)
.L800D160C:
/* D220C 800D160C 8FB80004 */  lw         $t8, 4($sp)
/* D2210 800D1610 90890007 */  lbu        $t1, 7($a0)
/* D2214 800D1614 93190007 */  lbu        $t9, 7($t8)
/* D2218 800D1618 13290004 */  beq        $t9, $t1, .L800D162C
/* D221C 800D161C 00000000 */   nop
/* D2220 800D1620 908B0007 */  lbu        $t3, 7($a0)
/* D2224 800D1624 3C0CA460 */  lui        $t4, %hi(D_A4600020)
/* D2228 800D1628 AD8B0020 */  sw         $t3, %lo(D_A4600020)($t4)
.L800D162C:
/* D222C 800D162C 8FAD0004 */  lw         $t5, 4($sp)
/* D2230 800D1630 908E0008 */  lbu        $t6, 8($a0)
/* D2234 800D1634 91AA0008 */  lbu        $t2, 8($t5)
/* D2238 800D1638 114E0025 */  beq        $t2, $t6, .L800D16D0
/* D223C 800D163C 00000000 */   nop
/* D2240 800D1640 908F0008 */  lbu        $t7, 8($a0)
/* D2244 800D1644 3C18A460 */  lui        $t8, %hi(D_A4600018)
/* D2248 800D1648 10000021 */  b          .L800D16D0
/* D224C 800D164C AF0F0018 */   sw        $t7, %lo(D_A4600018)($t8)
.L800D1650:
/* D2250 800D1650 8FB90004 */  lw         $t9, 4($sp)
/* D2254 800D1654 908B0005 */  lbu        $t3, 5($a0)
/* D2258 800D1658 93290005 */  lbu        $t1, 5($t9)
/* D225C 800D165C 112B0004 */  beq        $t1, $t3, .L800D1670
/* D2260 800D1660 00000000 */   nop
/* D2264 800D1664 908C0005 */  lbu        $t4, 5($a0)
/* D2268 800D1668 3C0DA460 */  lui        $t5, %hi(D_A4600024)
/* D226C 800D166C ADAC0024 */  sw         $t4, %lo(D_A4600024)($t5)
.L800D1670:
/* D2270 800D1670 8FAA0004 */  lw         $t2, 4($sp)
/* D2274 800D1674 908F0006 */  lbu        $t7, 6($a0)
/* D2278 800D1678 914E0006 */  lbu        $t6, 6($t2)
/* D227C 800D167C 11CF0004 */  beq        $t6, $t7, .L800D1690
/* D2280 800D1680 00000000 */   nop
/* D2284 800D1684 90980006 */  lbu        $t8, 6($a0)
/* D2288 800D1688 3C19A460 */  lui        $t9, %hi(D_A460002C)
/* D228C 800D168C AF38002C */  sw         $t8, %lo(D_A460002C)($t9)
.L800D1690:
/* D2290 800D1690 8FA90004 */  lw         $t1, 4($sp)
/* D2294 800D1694 908C0007 */  lbu        $t4, 7($a0)
/* D2298 800D1698 912B0007 */  lbu        $t3, 7($t1)
/* D229C 800D169C 116C0004 */  beq        $t3, $t4, .L800D16B0
/* D22A0 800D16A0 00000000 */   nop
/* D22A4 800D16A4 908D0007 */  lbu        $t5, 7($a0)
/* D22A8 800D16A8 3C0AA460 */  lui        $t2, %hi(D_A4600030)
/* D22AC 800D16AC AD4D0030 */  sw         $t5, %lo(D_A4600030)($t2)
.L800D16B0:
/* D22B0 800D16B0 8FAE0004 */  lw         $t6, 4($sp)
/* D22B4 800D16B4 90980008 */  lbu        $t8, 8($a0)
/* D22B8 800D16B8 91CF0008 */  lbu        $t7, 8($t6)
/* D22BC 800D16BC 11F80004 */  beq        $t7, $t8, .L800D16D0
/* D22C0 800D16C0 00000000 */   nop
/* D22C4 800D16C4 90990008 */  lbu        $t9, 8($a0)
/* D22C8 800D16C8 3C09A460 */  lui        $t1, %hi(D_A4600028)
/* D22CC 800D16CC AD390028 */  sw         $t9, %lo(D_A4600028)($t1)
.L800D16D0:
/* D22D0 800D16D0 00085880 */  sll        $t3, $t0, 2
/* D22D4 800D16D4 3C01800E */  lui        $at, %hi(D_800DB100)
/* D22D8 800D16D8 002B0821 */  addu       $at, $at, $t3
/* D22DC 800D16DC AC24B100 */  sw         $a0, %lo(D_800DB100)($at)
.L800D16E0:
/* D22E0 800D16E0 8C8C000C */  lw         $t4, 0xc($a0)
/* D22E4 800D16E4 3C01A000 */  lui        $at, 0xa000
/* D22E8 800D16E8 00001025 */  or         $v0, $zero, $zero
/* D22EC 800D16EC 01856825 */  or         $t5, $t4, $a1
/* D22F0 800D16F0 01A15025 */  or         $t2, $t5, $at
/* D22F4 800D16F4 8D4E0000 */  lw         $t6, ($t2)
/* D22F8 800D16F8 27BD0010 */  addiu      $sp, $sp, 0x10
/* D22FC 800D16FC 03E00008 */  jr         $ra
/* D2300 800D1700 ACCE0000 */   sw        $t6, ($a2)
/* D2304 800D1704 00000000 */  nop
/* D2308 800D1708 00000000 */  nop
/* D230C 800D170C 00000000 */  nop