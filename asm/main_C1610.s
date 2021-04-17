.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C0A10
/* C1610 800C0A10 400C6000 */  mfc0       $t4, $12
/* C1614 800C0A14 3182FF01 */  andi       $v0, $t4, 0xff01
/* C1618 800C0A18 3C08800E */  lui        $t0, %hi(D_800DA0C0)
/* C161C 800C0A1C 2508A0C0 */  addiu      $t0, $t0, %lo(D_800DA0C0)
/* C1620 800C0A20 8D0B0000 */  lw         $t3, ($t0)
/* C1624 800C0A24 2401FFFF */  addiu      $at, $zero, -1
/* C1628 800C0A28 01614026 */  xor        $t0, $t3, $at
/* C162C 800C0A2C 3108FF00 */  andi       $t0, $t0, 0xff00
/* C1630 800C0A30 00481025 */  or         $v0, $v0, $t0
/* C1634 800C0A34 3C0AA430 */  lui        $t2, %hi(D_A430000C)
/* C1638 800C0A38 8D4A000C */  lw         $t2, %lo(D_A430000C)($t2)
/* C163C 800C0A3C 11400005 */  beqz       $t2, .L800C0A54
/* C1640 800C0A40 000B4C02 */   srl       $t1, $t3, 0x10
/* C1644 800C0A44 2401FFFF */  addiu      $at, $zero, -1
/* C1648 800C0A48 01214826 */  xor        $t1, $t1, $at
/* C164C 800C0A4C 3129003F */  andi       $t1, $t1, 0x3f
/* C1650 800C0A50 01495025 */  or         $t2, $t2, $t1
.L800C0A54:
/* C1654 800C0A54 000A5400 */  sll        $t2, $t2, 0x10
/* C1658 800C0A58 004A1025 */  or         $v0, $v0, $t2
/* C165C 800C0A5C 3C01003F */  lui        $at, 0x3f
/* C1660 800C0A60 00814024 */  and        $t0, $a0, $at
/* C1664 800C0A64 010B4024 */  and        $t0, $t0, $t3
/* C1668 800C0A68 000843C2 */  srl        $t0, $t0, 0xf
/* C166C 800C0A6C 3C0A800E */  lui        $t2, %hi(D_800DF910)
/* C1670 800C0A70 01485021 */  addu       $t2, $t2, $t0
/* C1674 800C0A74 954AF910 */  lhu        $t2, %lo(D_800DF910)($t2)
/* C1678 800C0A78 3C01A430 */  lui        $at, %hi(D_A430000C)
/* C167C 800C0A7C AC2A000C */  sw         $t2, %lo(D_A430000C)($at)
/* C1680 800C0A80 3088FF01 */  andi       $t0, $a0, 0xff01
/* C1684 800C0A84 3169FF00 */  andi       $t1, $t3, 0xff00
/* C1688 800C0A88 01094024 */  and        $t0, $t0, $t1
/* C168C 800C0A8C 3C01FFFF */  lui        $at, 0xffff
/* C1690 800C0A90 342100FF */  ori        $at, $at, 0xff
/* C1694 800C0A94 01816024 */  and        $t4, $t4, $at
/* C1698 800C0A98 01886025 */  or         $t4, $t4, $t0
/* C169C 800C0A9C 408C6000 */  mtc0       $t4, $12
/* C16A0 800C0AA0 00000000 */  nop
/* C16A4 800C0AA4 00000000 */  nop
/* C16A8 800C0AA8 03E00008 */  jr         $ra
/* C16AC 800C0AAC 00000000 */   nop

glabel func_800C0AB0
/* C16B0 800C0AB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C16B4 800C0AB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C16B8 800C0AB8 AFA50024 */  sw         $a1, 0x24($sp)
/* C16BC 800C0ABC AFA60028 */  sw         $a2, 0x28($sp)
/* C16C0 800C0AC0 AFA7002C */  sw         $a3, 0x2c($sp)
/* C16C4 800C0AC4 8CAF0008 */  lw         $t7, 8($a1)
/* C16C8 800C0AC8 51E0001D */  beql       $t7, $zero, .L800C0B40
/* C16CC 800C0ACC 8FBF0014 */   lw        $ra, 0x14($sp)
/* C16D0 800C0AD0 0C031FF4 */  jal        func_800C7FD0
/* C16D4 800C0AD4 AFA40020 */   sw        $a0, 0x20($sp)
/* C16D8 800C0AD8 10400018 */  beqz       $v0, .L800C0B3C
/* C16DC 800C0ADC 8FA40020 */   lw        $a0, 0x20($sp)
/* C16E0 800C0AE0 8FB90024 */  lw         $t9, 0x24($sp)
/* C16E4 800C0AE4 8C98001C */  lw         $t8, 0x1c($a0)
/* C16E8 800C0AE8 240B000B */  addiu      $t3, $zero, 0xb
/* C16EC 800C0AEC 8F280008 */  lw         $t0, 8($t9)
/* C16F0 800C0AF0 8D0900D8 */  lw         $t1, 0xd8($t0)
/* C16F4 800C0AF4 A44B0008 */  sh         $t3, 8($v0)
/* C16F8 800C0AF8 03095021 */  addu       $t2, $t8, $t1
/* C16FC 800C0AFC AC4A0004 */  sw         $t2, 4($v0)
/* C1700 800C0B00 87AC002A */  lh         $t4, 0x2a($sp)
/* C1704 800C0B04 AC4C000C */  sw         $t4, 0xc($v0)
/* C1708 800C0B08 AFA2001C */  sw         $v0, 0x1c($sp)
/* C170C 800C0B0C 0C031FB2 */  jal        func_800C7EC8
/* C1710 800C0B10 8FA5002C */   lw        $a1, 0x2c($sp)
/* C1714 800C0B14 8FA6001C */  lw         $a2, 0x1c($sp)
/* C1718 800C0B18 24050003 */  addiu      $a1, $zero, 3
/* C171C 800C0B1C ACC20010 */  sw         $v0, 0x10($a2)
/* C1720 800C0B20 ACC00000 */  sw         $zero, ($a2)
/* C1724 800C0B24 8FAD0024 */  lw         $t5, 0x24($sp)
/* C1728 800C0B28 8DAE0008 */  lw         $t6, 8($t5)
/* C172C 800C0B2C 8DC4000C */  lw         $a0, 0xc($t6)
/* C1730 800C0B30 8C990008 */  lw         $t9, 8($a0)
/* C1734 800C0B34 0320F809 */  jalr       $t9
/* C1738 800C0B38 00000000 */   nop
.L800C0B3C:
/* C173C 800C0B3C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C0B40:
/* C1740 800C0B40 27BD0020 */  addiu      $sp, $sp, 0x20
/* C1744 800C0B44 03E00008 */  jr         $ra
/* C1748 800C0B48 00000000 */   nop
/* C174C 800C0B4C 00000000 */  nop
