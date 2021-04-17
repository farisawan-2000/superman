.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B0AC0
/* B16C0 800B0AC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B16C4 800B0AC4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B16C8 800B0AC8 AFA40028 */  sw         $a0, 0x28($sp)
/* B16CC 800B0ACC AFB00018 */  sw         $s0, 0x18($sp)
/* B16D0 800B0AD0 3C0E800D */  lui        $t6, %hi(D_800CD670)
/* B16D4 800B0AD4 8DCED670 */  lw         $t6, %lo(D_800CD670)($t6)
/* B16D8 800B0AD8 15C00006 */  bnez       $t6, .L800B0AF4
/* B16DC 800B0ADC 00000000 */   nop
/* B16E0 800B0AE0 2404002C */  addiu      $a0, $zero, 0x2c
/* B16E4 800B0AE4 0C02B5EC */  jal        func_800AD7B0
/* B16E8 800B0AE8 00002825 */   or        $a1, $zero, $zero
/* B16EC 800B0AEC 10000075 */  b          .L800B0CC4
/* B16F0 800B0AF0 00000000 */   nop
.L800B0AF4:
/* B16F4 800B0AF4 8FAF0028 */  lw         $t7, 0x28($sp)
/* B16F8 800B0AF8 11E00004 */  beqz       $t7, .L800B0B0C
/* B16FC 800B0AFC 00000000 */   nop
/* B1700 800B0B00 2DE10081 */  sltiu      $at, $t7, 0x81
/* B1704 800B0B04 14200007 */  bnez       $at, .L800B0B24
/* B1708 800B0B08 00000000 */   nop
.L800B0B0C:
/* B170C 800B0B0C 2404002B */  addiu      $a0, $zero, 0x2b
/* B1710 800B0B10 24050001 */  addiu      $a1, $zero, 1
/* B1714 800B0B14 0C02B5EC */  jal        func_800AD7B0
/* B1718 800B0B18 8FA60028 */   lw        $a2, 0x28($sp)
/* B171C 800B0B1C 10000069 */  b          .L800B0CC4
/* B1720 800B0B20 00000000 */   nop
.L800B0B24:
/* B1724 800B0B24 0C02C0C8 */  jal        func_800B0320
/* B1728 800B0B28 00000000 */   nop
/* B172C 800B0B2C 00408025 */  or         $s0, $v0, $zero
/* B1730 800B0B30 8FB80028 */  lw         $t8, 0x28($sp)
/* B1734 800B0B34 33190001 */  andi       $t9, $t8, 1
/* B1738 800B0B38 13200006 */  beqz       $t9, .L800B0B54
/* B173C 800B0B3C 00000000 */   nop
/* B1740 800B0B40 3C08800D */  lui        $t0, %hi(D_800CD444)
/* B1744 800B0B44 8D08D444 */  lw         $t0, %lo(D_800CD444)($t0)
/* B1748 800B0B48 8D09000C */  lw         $t1, 0xc($t0)
/* B174C 800B0B4C 352A0008 */  ori        $t2, $t1, 8
/* B1750 800B0B50 AD0A000C */  sw         $t2, 0xc($t0)
.L800B0B54:
/* B1754 800B0B54 8FAB0028 */  lw         $t3, 0x28($sp)
/* B1758 800B0B58 316C0002 */  andi       $t4, $t3, 2
/* B175C 800B0B5C 11800007 */  beqz       $t4, .L800B0B7C
/* B1760 800B0B60 00000000 */   nop
/* B1764 800B0B64 3C0D800D */  lui        $t5, %hi(D_800CD444)
/* B1768 800B0B68 8DADD444 */  lw         $t5, %lo(D_800CD444)($t5)
/* B176C 800B0B6C 2401FFF7 */  addiu      $at, $zero, -9
/* B1770 800B0B70 8DAE000C */  lw         $t6, 0xc($t5)
/* B1774 800B0B74 01C17824 */  and        $t7, $t6, $at
/* B1778 800B0B78 ADAF000C */  sw         $t7, 0xc($t5)
.L800B0B7C:
/* B177C 800B0B7C 8FB80028 */  lw         $t8, 0x28($sp)
/* B1780 800B0B80 33190004 */  andi       $t9, $t8, 4
/* B1784 800B0B84 13200006 */  beqz       $t9, .L800B0BA0
/* B1788 800B0B88 00000000 */   nop
/* B178C 800B0B8C 3C09800D */  lui        $t1, %hi(D_800CD444)
/* B1790 800B0B90 8D29D444 */  lw         $t1, %lo(D_800CD444)($t1)
/* B1794 800B0B94 8D2A000C */  lw         $t2, 0xc($t1)
/* B1798 800B0B98 35480004 */  ori        $t0, $t2, 4
/* B179C 800B0B9C AD28000C */  sw         $t0, 0xc($t1)
.L800B0BA0:
/* B17A0 800B0BA0 8FAB0028 */  lw         $t3, 0x28($sp)
/* B17A4 800B0BA4 316C0008 */  andi       $t4, $t3, 8
/* B17A8 800B0BA8 11800007 */  beqz       $t4, .L800B0BC8
/* B17AC 800B0BAC 00000000 */   nop
/* B17B0 800B0BB0 3C0E800D */  lui        $t6, %hi(D_800CD444)
/* B17B4 800B0BB4 8DCED444 */  lw         $t6, %lo(D_800CD444)($t6)
/* B17B8 800B0BB8 2401FFFB */  addiu      $at, $zero, -5
/* B17BC 800B0BBC 8DCF000C */  lw         $t7, 0xc($t6)
/* B17C0 800B0BC0 01E16824 */  and        $t5, $t7, $at
/* B17C4 800B0BC4 ADCD000C */  sw         $t5, 0xc($t6)
.L800B0BC8:
/* B17C8 800B0BC8 8FB80028 */  lw         $t8, 0x28($sp)
/* B17CC 800B0BCC 33190010 */  andi       $t9, $t8, 0x10
/* B17D0 800B0BD0 13200006 */  beqz       $t9, .L800B0BEC
/* B17D4 800B0BD4 00000000 */   nop
/* B17D8 800B0BD8 3C0A800D */  lui        $t2, %hi(D_800CD444)
/* B17DC 800B0BDC 8D4AD444 */  lw         $t2, %lo(D_800CD444)($t2)
/* B17E0 800B0BE0 8D48000C */  lw         $t0, 0xc($t2)
/* B17E4 800B0BE4 35090010 */  ori        $t1, $t0, 0x10
/* B17E8 800B0BE8 AD49000C */  sw         $t1, 0xc($t2)
.L800B0BEC:
/* B17EC 800B0BEC 8FAB0028 */  lw         $t3, 0x28($sp)
/* B17F0 800B0BF0 316C0020 */  andi       $t4, $t3, 0x20
/* B17F4 800B0BF4 11800007 */  beqz       $t4, .L800B0C14
/* B17F8 800B0BF8 00000000 */   nop
/* B17FC 800B0BFC 3C0F800D */  lui        $t7, %hi(D_800CD444)
/* B1800 800B0C00 8DEFD444 */  lw         $t7, %lo(D_800CD444)($t7)
/* B1804 800B0C04 2401FFEF */  addiu      $at, $zero, -0x11
/* B1808 800B0C08 8DED000C */  lw         $t5, 0xc($t7)
/* B180C 800B0C0C 01A17024 */  and        $t6, $t5, $at
/* B1810 800B0C10 ADEE000C */  sw         $t6, 0xc($t7)
.L800B0C14:
/* B1814 800B0C14 8FB80028 */  lw         $t8, 0x28($sp)
/* B1818 800B0C18 33190040 */  andi       $t9, $t8, 0x40
/* B181C 800B0C1C 1320000D */  beqz       $t9, .L800B0C54
/* B1820 800B0C20 00000000 */   nop
/* B1824 800B0C24 3C08800D */  lui        $t0, %hi(D_800CD444)
/* B1828 800B0C28 8D08D444 */  lw         $t0, %lo(D_800CD444)($t0)
/* B182C 800B0C2C 3C010001 */  lui        $at, 1
/* B1830 800B0C30 8D09000C */  lw         $t1, 0xc($t0)
/* B1834 800B0C34 01215025 */  or         $t2, $t1, $at
/* B1838 800B0C38 AD0A000C */  sw         $t2, 0xc($t0)
/* B183C 800B0C3C 3C0B800D */  lui        $t3, %hi(D_800CD444)
/* B1840 800B0C40 8D6BD444 */  lw         $t3, %lo(D_800CD444)($t3)
/* B1844 800B0C44 2401FCFF */  addiu      $at, $zero, -0x301
/* B1848 800B0C48 8D6C000C */  lw         $t4, 0xc($t3)
/* B184C 800B0C4C 01816824 */  and        $t5, $t4, $at
/* B1850 800B0C50 AD6D000C */  sw         $t5, 0xc($t3)
.L800B0C54:
/* B1854 800B0C54 8FAE0028 */  lw         $t6, 0x28($sp)
/* B1858 800B0C58 31CF0080 */  andi       $t7, $t6, 0x80
/* B185C 800B0C5C 11E00010 */  beqz       $t7, .L800B0CA0
/* B1860 800B0C60 00000000 */   nop
/* B1864 800B0C64 3C18800D */  lui        $t8, %hi(D_800CD444)
/* B1868 800B0C68 8F18D444 */  lw         $t8, %lo(D_800CD444)($t8)
/* B186C 800B0C6C 3C01FFFE */  lui        $at, 0xfffe
/* B1870 800B0C70 3421FFFF */  ori        $at, $at, 0xffff
/* B1874 800B0C74 8F19000C */  lw         $t9, 0xc($t8)
/* B1878 800B0C78 03214824 */  and        $t1, $t9, $at
/* B187C 800B0C7C AF09000C */  sw         $t1, 0xc($t8)
/* B1880 800B0C80 3C0A800D */  lui        $t2, %hi(D_800CD444)
/* B1884 800B0C84 8D4AD444 */  lw         $t2, %lo(D_800CD444)($t2)
/* B1888 800B0C88 8D4C0008 */  lw         $t4, 8($t2)
/* B188C 800B0C8C 8D48000C */  lw         $t0, 0xc($t2)
/* B1890 800B0C90 8D8D0004 */  lw         $t5, 4($t4)
/* B1894 800B0C94 31AB0300 */  andi       $t3, $t5, 0x300
/* B1898 800B0C98 010B7025 */  or         $t6, $t0, $t3
/* B189C 800B0C9C AD4E000C */  sw         $t6, 0xc($t2)
.L800B0CA0:
/* B18A0 800B0CA0 3C0F800D */  lui        $t7, %hi(D_800CD444)
/* B18A4 800B0CA4 8DEFD444 */  lw         $t7, %lo(D_800CD444)($t7)
/* B18A8 800B0CA8 95F90000 */  lhu        $t9, ($t7)
/* B18AC 800B0CAC 37290008 */  ori        $t1, $t9, 8
/* B18B0 800B0CB0 A5E90000 */  sh         $t1, ($t7)
/* B18B4 800B0CB4 0C02C0D0 */  jal        func_800B0340
/* B18B8 800B0CB8 02002025 */   or        $a0, $s0, $zero
/* B18BC 800B0CBC 10000001 */  b          .L800B0CC4
/* B18C0 800B0CC0 00000000 */   nop
.L800B0CC4:
/* B18C4 800B0CC4 8FBF001C */  lw         $ra, 0x1c($sp)
/* B18C8 800B0CC8 8FB00018 */  lw         $s0, 0x18($sp)
/* B18CC 800B0CCC 27BD0028 */  addiu      $sp, $sp, 0x28
/* B18D0 800B0CD0 03E00008 */  jr         $ra
/* B18D4 800B0CD4 00000000 */   nop
/* B18D8 800B0CD8 00000000 */  nop
/* B18DC 800B0CDC 00000000 */  nop
