.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C0B50
/* C1750 800C0B50 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C1754 800C0B54 AFB30020 */  sw         $s3, 0x20($sp)
/* C1758 800C0B58 00059C00 */  sll        $s3, $a1, 0x10
/* C175C 800C0B5C AFB2001C */  sw         $s2, 0x1c($sp)
/* C1760 800C0B60 00809025 */  or         $s2, $a0, $zero
/* C1764 800C0B64 00137403 */  sra        $t6, $s3, 0x10
/* C1768 800C0B68 AFBF0024 */  sw         $ra, 0x24($sp)
/* C176C 800C0B6C 01C09825 */  or         $s3, $t6, $zero
/* C1770 800C0B70 AFB10018 */  sw         $s1, 0x18($sp)
/* C1774 800C0B74 AFB00014 */  sw         $s0, 0x14($sp)
/* C1778 800C0B78 AFA50044 */  sw         $a1, 0x44($sp)
/* C177C 800C0B7C 0C030284 */  jal        func_800C0A10
/* C1780 800C0B80 24040001 */   addiu     $a0, $zero, 1
/* C1784 800C0B84 AFA2002C */  sw         $v0, 0x2c($sp)
/* C1788 800C0B88 8E500008 */  lw         $s0, 8($s2)
/* C178C 800C0B8C 12000012 */  beqz       $s0, .L800C0BD8
/* C1790 800C0B90 00000000 */   nop
.L800C0B94:
/* C1794 800C0B94 860F000C */  lh         $t7, 0xc($s0)
/* C1798 800C0B98 8E110000 */  lw         $s1, ($s0)
/* C179C 800C0B9C 166F000C */  bne        $s3, $t7, .L800C0BD0
/* C17A0 800C0BA0 00000000 */   nop
/* C17A4 800C0BA4 12200005 */  beqz       $s1, .L800C0BBC
/* C17A8 800C0BA8 00000000 */   nop
/* C17AC 800C0BAC 8E380008 */  lw         $t8, 8($s1)
/* C17B0 800C0BB0 8E190008 */  lw         $t9, 8($s0)
/* C17B4 800C0BB4 03194021 */  addu       $t0, $t8, $t9
/* C17B8 800C0BB8 AE280008 */  sw         $t0, 8($s1)
.L800C0BBC:
/* C17BC 800C0BBC 0C02F8AC */  jal        func_800BE2B0
/* C17C0 800C0BC0 02002025 */   or        $a0, $s0, $zero
/* C17C4 800C0BC4 02002025 */  or         $a0, $s0, $zero
/* C17C8 800C0BC8 0C02F8B8 */  jal        func_800BE2E0
/* C17CC 800C0BCC 02402825 */   or        $a1, $s2, $zero
.L800C0BD0:
/* C17D0 800C0BD0 1620FFF0 */  bnez       $s1, .L800C0B94
/* C17D4 800C0BD4 02208025 */   or        $s0, $s1, $zero
.L800C0BD8:
/* C17D8 800C0BD8 0C030284 */  jal        func_800C0A10
/* C17DC 800C0BDC 8FA4002C */   lw        $a0, 0x2c($sp)
/* C17E0 800C0BE0 8FBF0024 */  lw         $ra, 0x24($sp)
/* C17E4 800C0BE4 8FB00014 */  lw         $s0, 0x14($sp)
/* C17E8 800C0BE8 8FB10018 */  lw         $s1, 0x18($sp)
/* C17EC 800C0BEC 8FB2001C */  lw         $s2, 0x1c($sp)
/* C17F0 800C0BF0 8FB30020 */  lw         $s3, 0x20($sp)
/* C17F4 800C0BF4 03E00008 */  jr         $ra
/* C17F8 800C0BF8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800C0BFC
/* C17FC 800C0BFC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C1800 800C0C00 AFB20020 */  sw         $s2, 0x20($sp)
/* C1804 800C0C04 00809025 */  or         $s2, $a0, $zero
/* C1808 800C0C08 AFBF0024 */  sw         $ra, 0x24($sp)
/* C180C 800C0C0C AFB1001C */  sw         $s1, 0x1c($sp)
/* C1810 800C0C10 AFB00018 */  sw         $s0, 0x18($sp)
/* C1814 800C0C14 0C030284 */  jal        func_800C0A10
/* C1818 800C0C18 24040001 */   addiu     $a0, $zero, 1
/* C181C 800C0C1C AFA2002C */  sw         $v0, 0x2c($sp)
/* C1820 800C0C20 8E500008 */  lw         $s0, 8($s2)
/* C1824 800C0C24 12000009 */  beqz       $s0, .L800C0C4C
/* C1828 800C0C28 00000000 */   nop
.L800C0C2C:
/* C182C 800C0C2C 8E110000 */  lw         $s1, ($s0)
/* C1830 800C0C30 0C02F8AC */  jal        func_800BE2B0
/* C1834 800C0C34 02002025 */   or        $a0, $s0, $zero
/* C1838 800C0C38 02002025 */  or         $a0, $s0, $zero
/* C183C 800C0C3C 0C02F8B8 */  jal        func_800BE2E0
/* C1840 800C0C40 02402825 */   or        $a1, $s2, $zero
/* C1844 800C0C44 1620FFF9 */  bnez       $s1, .L800C0C2C
/* C1848 800C0C48 02208025 */   or        $s0, $s1, $zero
.L800C0C4C:
/* C184C 800C0C4C 0C030284 */  jal        func_800C0A10
/* C1850 800C0C50 8FA4002C */   lw        $a0, 0x2c($sp)
/* C1854 800C0C54 8FBF0024 */  lw         $ra, 0x24($sp)
/* C1858 800C0C58 8FB00018 */  lw         $s0, 0x18($sp)
/* C185C 800C0C5C 8FB1001C */  lw         $s1, 0x1c($sp)
/* C1860 800C0C60 8FB20020 */  lw         $s2, 0x20($sp)
/* C1864 800C0C64 03E00008 */  jr         $ra
/* C1868 800C0C68 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800C0C6C
/* C186C 800C0C6C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C1870 800C0C70 AFBF0014 */  sw         $ra, 0x14($sp)
/* C1874 800C0C74 AFA40030 */  sw         $a0, 0x30($sp)
/* C1878 800C0C78 AFA50034 */  sw         $a1, 0x34($sp)
/* C187C 800C0C7C AFA00020 */  sw         $zero, 0x20($sp)
/* C1880 800C0C80 24040001 */  addiu      $a0, $zero, 1
/* C1884 800C0C84 0C030284 */  jal        func_800C0A10
/* C1888 800C0C88 AFA60038 */   sw        $a2, 0x38($sp)
/* C188C 800C0C8C 8FAE0030 */  lw         $t6, 0x30($sp)
/* C1890 800C0C90 8FA70038 */  lw         $a3, 0x38($sp)
/* C1894 800C0C94 00402825 */  or         $a1, $v0, $zero
/* C1898 800C0C98 8DC80000 */  lw         $t0, ($t6)
/* C189C 800C0C9C 15000005 */  bnez       $t0, .L800C0CB4
/* C18A0 800C0CA0 01002025 */   or        $a0, $t0, $zero
/* C18A4 800C0CA4 0C030284 */  jal        func_800C0A10
/* C18A8 800C0CA8 00402025 */   or        $a0, $v0, $zero
/* C18AC 800C0CAC 10000035 */  b          .L800C0D84
/* C18B0 800C0CB0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C0CB4:
/* C18B4 800C0CB4 AFA5001C */  sw         $a1, 0x1c($sp)
/* C18B8 800C0CB8 AFA70038 */  sw         $a3, 0x38($sp)
/* C18BC 800C0CBC 0C02F8AC */  jal        func_800BE2B0
/* C18C0 800C0CC0 AFA8002C */   sw        $t0, 0x2c($sp)
/* C18C4 800C0CC4 8FA8002C */  lw         $t0, 0x2c($sp)
/* C18C8 800C0CC8 8FA40034 */  lw         $a0, 0x34($sp)
/* C18CC 800C0CCC 24060010 */  addiu      $a2, $zero, 0x10
/* C18D0 800C0CD0 0C033B50 */  jal        func_800CED40
/* C18D4 800C0CD4 2505000C */   addiu     $a1, $t0, 0xc
/* C18D8 800C0CD8 8FA70038 */  lw         $a3, 0x38($sp)
/* C18DC 800C0CDC 3C017FFF */  lui        $at, 0x7fff
/* C18E0 800C0CE0 3421FFFF */  ori        $at, $at, 0xffff
/* C18E4 800C0CE4 14E10003 */  bne        $a3, $at, .L800C0CF4
/* C18E8 800C0CE8 8FA8002C */   lw        $t0, 0x2c($sp)
/* C18EC 800C0CEC 240FFFFF */  addiu      $t7, $zero, -1
/* C18F0 800C0CF0 AFAF0020 */  sw         $t7, 0x20($sp)
.L800C0CF4:
/* C18F4 800C0CF4 8FA20030 */  lw         $v0, 0x30($sp)
/* C18F8 800C0CF8 2401FFF8 */  addiu      $at, $zero, -8
/* C18FC 800C0CFC 8FB80020 */  lw         $t8, 0x20($sp)
/* C1900 800C0D00 1041001D */  beq        $v0, $at, .L800C0D78
/* C1904 800C0D04 24450008 */   addiu     $a1, $v0, 8
.L800C0D08:
/* C1908 800C0D08 8CA20000 */  lw         $v0, ($a1)
/* C190C 800C0D0C 5440000B */  bnezl      $v0, .L800C0D3C
/* C1910 800C0D10 8C430008 */   lw        $v1, 8($v0)
/* C1914 800C0D14 53000004 */  beql       $t8, $zero, .L800C0D28
/* C1918 800C0D18 AD070008 */   sw        $a3, 8($t0)
/* C191C 800C0D1C 10000002 */  b          .L800C0D28
/* C1920 800C0D20 AD000008 */   sw        $zero, 8($t0)
/* C1924 800C0D24 AD070008 */  sw         $a3, 8($t0)
.L800C0D28:
/* C1928 800C0D28 0C02F8B8 */  jal        func_800BE2E0
/* C192C 800C0D2C 01002025 */   or        $a0, $t0, $zero
/* C1930 800C0D30 10000011 */  b          .L800C0D78
/* C1934 800C0D34 00000000 */   nop
/* C1938 800C0D38 8C430008 */  lw         $v1, 8($v0)
.L800C0D3C:
/* C193C 800C0D3C 00403025 */  or         $a2, $v0, $zero
/* C1940 800C0D40 00E3082A */  slt        $at, $a3, $v1
/* C1944 800C0D44 5020000A */  beql       $at, $zero, .L800C0D70
/* C1948 800C0D48 00402825 */   or        $a1, $v0, $zero
/* C194C 800C0D4C AD070008 */  sw         $a3, 8($t0)
/* C1950 800C0D50 8CD90008 */  lw         $t9, 8($a2)
/* C1954 800C0D54 01002025 */  or         $a0, $t0, $zero
/* C1958 800C0D58 03274823 */  subu       $t1, $t9, $a3
/* C195C 800C0D5C 0C02F8B8 */  jal        func_800BE2E0
/* C1960 800C0D60 ACC90008 */   sw        $t1, 8($a2)
/* C1964 800C0D64 10000004 */  b          .L800C0D78
/* C1968 800C0D68 00000000 */   nop
/* C196C 800C0D6C 00402825 */  or         $a1, $v0, $zero
.L800C0D70:
/* C1970 800C0D70 1440FFE5 */  bnez       $v0, .L800C0D08
/* C1974 800C0D74 00E33823 */   subu      $a3, $a3, $v1
.L800C0D78:
/* C1978 800C0D78 0C030284 */  jal        func_800C0A10
/* C197C 800C0D7C 8FA4001C */   lw        $a0, 0x1c($sp)
/* C1980 800C0D80 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C0D84:
/* C1984 800C0D84 27BD0030 */  addiu      $sp, $sp, 0x30
/* C1988 800C0D88 03E00008 */  jr         $ra
/* C198C 800C0D8C 00000000 */   nop

glabel func_800C0D90
/* C1990 800C0D90 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C1994 800C0D94 AFBF001C */  sw         $ra, 0x1c($sp)
/* C1998 800C0D98 AFA40030 */  sw         $a0, 0x30($sp)
/* C199C 800C0D9C AFB00018 */  sw         $s0, 0x18($sp)
/* C19A0 800C0DA0 AFA50034 */  sw         $a1, 0x34($sp)
/* C19A4 800C0DA4 0C030284 */  jal        func_800C0A10
/* C19A8 800C0DA8 24040001 */   addiu     $a0, $zero, 1
/* C19AC 800C0DAC 8FAE0030 */  lw         $t6, 0x30($sp)
/* C19B0 800C0DB0 AFA20024 */  sw         $v0, 0x24($sp)
/* C19B4 800C0DB4 8FB80034 */  lw         $t8, 0x34($sp)
/* C19B8 800C0DB8 8DD00008 */  lw         $s0, 8($t6)
/* C19BC 800C0DBC 00001825 */  or         $v1, $zero, $zero
/* C19C0 800C0DC0 5200000D */  beql       $s0, $zero, .L800C0DF8
/* C19C4 800C0DC4 240FFFFF */   addiu     $t7, $zero, -1
/* C19C8 800C0DC8 0C02F8AC */  jal        func_800BE2B0
/* C19CC 800C0DCC 02002025 */   or        $a0, $s0, $zero
/* C19D0 800C0DD0 2604000C */  addiu      $a0, $s0, 0xc
/* C19D4 800C0DD4 8FA50034 */  lw         $a1, 0x34($sp)
/* C19D8 800C0DD8 0C033B50 */  jal        func_800CED40
/* C19DC 800C0DDC 24060010 */   addiu     $a2, $zero, 0x10
/* C19E0 800C0DE0 02002025 */  or         $a0, $s0, $zero
/* C19E4 800C0DE4 0C02F8B8 */  jal        func_800BE2E0
/* C19E8 800C0DE8 8FA50030 */   lw        $a1, 0x30($sp)
/* C19EC 800C0DEC 10000003 */  b          .L800C0DFC
/* C19F0 800C0DF0 8E030008 */   lw        $v1, 8($s0)
/* C19F4 800C0DF4 240FFFFF */  addiu      $t7, $zero, -1
.L800C0DF8:
/* C19F8 800C0DF8 A70F0000 */  sh         $t7, ($t8)
.L800C0DFC:
/* C19FC 800C0DFC 8FA40024 */  lw         $a0, 0x24($sp)
/* C1A00 800C0E00 0C030284 */  jal        func_800C0A10
/* C1A04 800C0E04 AFA30028 */   sw        $v1, 0x28($sp)
/* C1A08 800C0E08 8FBF001C */  lw         $ra, 0x1c($sp)
/* C1A0C 800C0E0C 8FA20028 */  lw         $v0, 0x28($sp)
/* C1A10 800C0E10 8FB00018 */  lw         $s0, 0x18($sp)
/* C1A14 800C0E14 03E00008 */  jr         $ra
/* C1A18 800C0E18 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800C0E1C
/* C1A1C 800C0E1C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C1A20 800C0E20 AFB30020 */  sw         $s3, 0x20($sp)
/* C1A24 800C0E24 AFB2001C */  sw         $s2, 0x1c($sp)
/* C1A28 800C0E28 AFB00014 */  sw         $s0, 0x14($sp)
/* C1A2C 800C0E2C AFBF0024 */  sw         $ra, 0x24($sp)
/* C1A30 800C0E30 AFB10018 */  sw         $s1, 0x18($sp)
/* C1A34 800C0E34 00809025 */  or         $s2, $a0, $zero
/* C1A38 800C0E38 00C09825 */  or         $s3, $a2, $zero
/* C1A3C 800C0E3C AC800010 */  sw         $zero, 0x10($a0)
/* C1A40 800C0E40 AC800008 */  sw         $zero, 8($a0)
/* C1A44 800C0E44 AC80000C */  sw         $zero, 0xc($a0)
/* C1A48 800C0E48 AC800000 */  sw         $zero, ($a0)
/* C1A4C 800C0E4C AC800004 */  sw         $zero, 4($a0)
/* C1A50 800C0E50 18C00008 */  blez       $a2, .L800C0E74
/* C1A54 800C0E54 00008025 */   or        $s0, $zero, $zero
/* C1A58 800C0E58 00A08825 */  or         $s1, $a1, $zero
.L800C0E5C:
/* C1A5C 800C0E5C 02202025 */  or         $a0, $s1, $zero
/* C1A60 800C0E60 0C02F8B8 */  jal        func_800BE2E0
/* C1A64 800C0E64 02402825 */   or        $a1, $s2, $zero
/* C1A68 800C0E68 26100001 */  addiu      $s0, $s0, 1
/* C1A6C 800C0E6C 1613FFFB */  bne        $s0, $s3, .L800C0E5C
/* C1A70 800C0E70 2631001C */   addiu     $s1, $s1, 0x1c
.L800C0E74:
/* C1A74 800C0E74 8FBF0024 */  lw         $ra, 0x24($sp)
/* C1A78 800C0E78 8FB00014 */  lw         $s0, 0x14($sp)
/* C1A7C 800C0E7C 8FB10018 */  lw         $s1, 0x18($sp)
/* C1A80 800C0E80 8FB2001C */  lw         $s2, 0x1c($sp)
/* C1A84 800C0E84 8FB30020 */  lw         $s3, 0x20($sp)
/* C1A88 800C0E88 03E00008 */  jr         $ra
/* C1A8C 800C0E8C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800C0E90
/* C1A90 800C0E90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C1A94 800C0E94 AFBF0014 */  sw         $ra, 0x14($sp)
/* C1A98 800C0E98 8CA60008 */  lw         $a2, 8($a1)
/* C1A9C 800C0E9C 00804025 */  or         $t0, $a0, $zero
/* C1AA0 800C0EA0 00A03825 */  or         $a3, $a1, $zero
/* C1AA4 800C0EA4 50C00023 */  beql       $a2, $zero, .L800C0F34
/* C1AA8 800C0EA8 8FBF0014 */   lw        $ra, 0x14($sp)
/* C1AAC 800C0EAC 8CCE00D8 */  lw         $t6, 0xd8($a2)
/* C1AB0 800C0EB0 51C0001A */  beql       $t6, $zero, .L800C0F1C
/* C1AB4 800C0EB4 01002025 */   or        $a0, $t0, $zero
/* C1AB8 800C0EB8 AFA5001C */  sw         $a1, 0x1c($sp)
/* C1ABC 800C0EBC 0C031FF4 */  jal        func_800C7FD0
/* C1AC0 800C0EC0 AFA40018 */   sw        $a0, 0x18($sp)
/* C1AC4 800C0EC4 8FA7001C */  lw         $a3, 0x1c($sp)
/* C1AC8 800C0EC8 8FA80018 */  lw         $t0, 0x18($sp)
/* C1ACC 800C0ECC 10400018 */  beqz       $v0, .L800C0F30
/* C1AD0 800C0ED0 00403025 */   or        $a2, $v0, $zero
/* C1AD4 800C0ED4 8CF80008 */  lw         $t8, 8($a3)
/* C1AD8 800C0ED8 8D0F001C */  lw         $t7, 0x1c($t0)
/* C1ADC 800C0EDC 24050003 */  addiu      $a1, $zero, 3
/* C1AE0 800C0EE0 8F1900D8 */  lw         $t9, 0xd8($t8)
/* C1AE4 800C0EE4 A4400008 */  sh         $zero, 8($v0)
/* C1AE8 800C0EE8 01F94821 */  addu       $t1, $t7, $t9
/* C1AEC 800C0EEC AC490004 */  sw         $t1, 4($v0)
/* C1AF0 800C0EF0 8CEA0008 */  lw         $t2, 8($a3)
/* C1AF4 800C0EF4 AC4A000C */  sw         $t2, 0xc($v0)
/* C1AF8 800C0EF8 8CEB0008 */  lw         $t3, 8($a3)
/* C1AFC 800C0EFC 8D64000C */  lw         $a0, 0xc($t3)
/* C1B00 800C0F00 AFA7001C */  sw         $a3, 0x1c($sp)
/* C1B04 800C0F04 8C990008 */  lw         $t9, 8($a0)
/* C1B08 800C0F08 0320F809 */  jalr       $t9
/* C1B0C 800C0F0C 00000000 */   nop
/* C1B10 800C0F10 10000006 */  b          .L800C0F2C
/* C1B14 800C0F14 8FA7001C */   lw        $a3, 0x1c($sp)
/* C1B18 800C0F18 01002025 */  or         $a0, $t0, $zero
.L800C0F1C:
/* C1B1C 800C0F1C 00C02825 */  or         $a1, $a2, $zero
/* C1B20 800C0F20 0C031FC8 */  jal        func_800C7F20
/* C1B24 800C0F24 AFA7001C */   sw        $a3, 0x1c($sp)
/* C1B28 800C0F28 8FA7001C */  lw         $a3, 0x1c($sp)
.L800C0F2C:
/* C1B2C 800C0F2C ACE00008 */  sw         $zero, 8($a3)
.L800C0F30:
/* C1B30 800C0F30 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C0F34:
/* C1B34 800C0F34 27BD0018 */  addiu      $sp, $sp, 0x18
/* C1B38 800C0F38 03E00008 */  jr         $ra
/* C1B3C 800C0F3C 00000000 */   nop

glabel func_800C0F40
/* C1B40 800C0F40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C1B44 800C0F44 AFBF0014 */  sw         $ra, 0x14($sp)
/* C1B48 800C0F48 AFA60030 */  sw         $a2, 0x30($sp)
/* C1B4C 800C0F4C 8C870014 */  lw         $a3, 0x14($a0)
/* C1B50 800C0F50 00067400 */  sll        $t6, $a2, 0x10
/* C1B54 800C0F54 000E3403 */  sra        $a2, $t6, 0x10
/* C1B58 800C0F58 00804025 */  or         $t0, $a0, $zero
/* C1B5C 800C0F5C 10E0000D */  beqz       $a3, .L800C0F94
/* C1B60 800C0F60 00001825 */   or        $v1, $zero, $zero
/* C1B64 800C0F64 ACA70000 */  sw         $a3, ($a1)
/* C1B68 800C0F68 AFA80028 */  sw         $t0, 0x28($sp)
/* C1B6C 800C0F6C AFA70024 */  sw         $a3, 0x24($sp)
/* C1B70 800C0F70 AFA0001C */  sw         $zero, 0x1c($sp)
/* C1B74 800C0F74 0C02F8AC */  jal        func_800BE2B0
/* C1B78 800C0F78 00E02025 */   or        $a0, $a3, $zero
/* C1B7C 800C0F7C 8FA80028 */  lw         $t0, 0x28($sp)
/* C1B80 800C0F80 8FA40024 */  lw         $a0, 0x24($sp)
/* C1B84 800C0F84 0C02F8B8 */  jal        func_800BE2E0
/* C1B88 800C0F88 2505000C */   addiu     $a1, $t0, 0xc
/* C1B8C 800C0F8C 10000021 */  b          .L800C1014
/* C1B90 800C0F90 8FA3001C */   lw        $v1, 0x1c($sp)
.L800C0F94:
/* C1B94 800C0F94 8D070004 */  lw         $a3, 4($t0)
/* C1B98 800C0F98 10E0000C */  beqz       $a3, .L800C0FCC
/* C1B9C 800C0F9C 00E02025 */   or        $a0, $a3, $zero
/* C1BA0 800C0FA0 ACA70000 */  sw         $a3, ($a1)
/* C1BA4 800C0FA4 AFA80028 */  sw         $t0, 0x28($sp)
/* C1BA8 800C0FA8 AFA70024 */  sw         $a3, 0x24($sp)
/* C1BAC 800C0FAC 0C02F8AC */  jal        func_800BE2B0
/* C1BB0 800C0FB0 AFA3001C */   sw        $v1, 0x1c($sp)
/* C1BB4 800C0FB4 8FA80028 */  lw         $t0, 0x28($sp)
/* C1BB8 800C0FB8 8FA40024 */  lw         $a0, 0x24($sp)
/* C1BBC 800C0FBC 0C02F8B8 */  jal        func_800BE2E0
/* C1BC0 800C0FC0 2505000C */   addiu     $a1, $t0, 0xc
/* C1BC4 800C0FC4 10000013 */  b          .L800C1014
/* C1BC8 800C0FC8 8FA3001C */   lw        $v1, 0x1c($sp)
.L800C0FCC:
/* C1BCC 800C0FCC 8D07000C */  lw         $a3, 0xc($t0)
/* C1BD0 800C0FD0 50E00011 */  beql       $a3, $zero, .L800C1018
/* C1BD4 800C0FD4 8FBF0014 */   lw        $ra, 0x14($sp)
/* C1BD8 800C0FD8 8CF80008 */  lw         $t8, 8($a3)
.L800C0FDC:
/* C1BDC 800C0FDC 87190016 */  lh         $t9, 0x16($t8)
/* C1BE0 800C0FE0 00D9082A */  slt        $at, $a2, $t9
/* C1BE4 800C0FE4 54200009 */  bnezl      $at, .L800C100C
/* C1BE8 800C0FE8 8CE70000 */   lw        $a3, ($a3)
/* C1BEC 800C0FEC 8CE900D8 */  lw         $t1, 0xd8($a3)
/* C1BF0 800C0FF0 55200006 */  bnezl      $t1, .L800C100C
/* C1BF4 800C0FF4 8CE70000 */   lw        $a3, ($a3)
/* C1BF8 800C0FF8 ACA70000 */  sw         $a3, ($a1)
/* C1BFC 800C0FFC 8CEA0008 */  lw         $t2, 8($a3)
/* C1C00 800C1000 24030001 */  addiu      $v1, $zero, 1
/* C1C04 800C1004 85460016 */  lh         $a2, 0x16($t2)
/* C1C08 800C1008 8CE70000 */  lw         $a3, ($a3)
.L800C100C:
/* C1C0C 800C100C 54E0FFF3 */  bnezl      $a3, .L800C0FDC
/* C1C10 800C1010 8CF80008 */   lw        $t8, 8($a3)
.L800C1014:
/* C1C14 800C1014 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C1018:
/* C1C18 800C1018 27BD0028 */  addiu      $sp, $sp, 0x28
/* C1C1C 800C101C 00601025 */  or         $v0, $v1, $zero
/* C1C20 800C1020 03E00008 */  jr         $ra
/* C1C24 800C1024 00000000 */   nop

glabel func_800C1028
/* C1C28 800C1028 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C1C2C 800C102C AFBF001C */  sw         $ra, 0x1c($sp)
/* C1C30 800C1030 AFB00018 */  sw         $s0, 0x18($sp)
/* C1C34 800C1034 AFA40030 */  sw         $a0, 0x30($sp)
/* C1C38 800C1038 AFA0002C */  sw         $zero, 0x2c($sp)
/* C1C3C 800C103C 84CE0000 */  lh         $t6, ($a2)
/* C1C40 800C1040 00A08025 */  or         $s0, $a1, $zero
/* C1C44 800C1044 A4AE0016 */  sh         $t6, 0x16($a1)
/* C1C48 800C1048 90CF0004 */  lbu        $t7, 4($a2)
/* C1C4C 800C104C ACA0000C */  sw         $zero, 0xc($a1)
/* C1C50 800C1050 A4AF001A */  sh         $t7, 0x1a($a1)
/* C1C54 800C1054 84D80002 */  lh         $t8, 2($a2)
/* C1C58 800C1058 A4A00014 */  sh         $zero, 0x14($a1)
/* C1C5C 800C105C ACA00008 */  sw         $zero, 8($a1)
/* C1C60 800C1060 A4B80018 */  sh         $t8, 0x18($a1)
/* C1C64 800C1064 84C60000 */  lh         $a2, ($a2)
/* C1C68 800C1068 8FA40030 */  lw         $a0, 0x30($sp)
/* C1C6C 800C106C 0C0303D0 */  jal        func_800C0F40
/* C1C70 800C1070 27A5002C */   addiu     $a1, $sp, 0x2c
/* C1C74 800C1074 8FB9002C */  lw         $t9, 0x2c($sp)
/* C1C78 800C1078 53200035 */  beql       $t9, $zero, .L800C1150
/* C1C7C 800C107C 8FA2002C */   lw        $v0, 0x2c($sp)
/* C1C80 800C1080 1040002C */  beqz       $v0, .L800C1134
/* C1C84 800C1084 8F24000C */   lw        $a0, 0xc($t9)
/* C1C88 800C1088 24080200 */  addiu      $t0, $zero, 0x200
/* C1C8C 800C108C AF2800D8 */  sw         $t0, 0xd8($t9)
/* C1C90 800C1090 8FA9002C */  lw         $t1, 0x2c($sp)
/* C1C94 800C1094 8D2A0008 */  lw         $t2, 8($t1)
/* C1C98 800C1098 AD400008 */  sw         $zero, 8($t2)
/* C1C9C 800C109C 0C031FF4 */  jal        func_800C7FD0
/* C1CA0 800C10A0 AFA40028 */   sw        $a0, 0x28($sp)
/* C1CA4 800C10A4 8FAB0030 */  lw         $t3, 0x30($sp)
/* C1CA8 800C10A8 8FA40028 */  lw         $a0, 0x28($sp)
/* C1CAC 800C10AC 240D000B */  addiu      $t5, $zero, 0xb
/* C1CB0 800C10B0 8D6C001C */  lw         $t4, 0x1c($t3)
/* C1CB4 800C10B4 A44D0008 */  sh         $t5, 8($v0)
/* C1CB8 800C10B8 AC40000C */  sw         $zero, 0xc($v0)
/* C1CBC 800C10BC AC4C0004 */  sw         $t4, 4($v0)
/* C1CC0 800C10C0 8FAE002C */  lw         $t6, 0x2c($sp)
/* C1CC4 800C10C4 24050003 */  addiu      $a1, $zero, 3
/* C1CC8 800C10C8 00403025 */  or         $a2, $v0, $zero
/* C1CCC 800C10CC 8DCF00D8 */  lw         $t7, 0xd8($t6)
/* C1CD0 800C10D0 25F8FFC0 */  addiu      $t8, $t7, -0x40
/* C1CD4 800C10D4 AC580010 */  sw         $t8, 0x10($v0)
/* C1CD8 800C10D8 8C990008 */  lw         $t9, 8($a0)
/* C1CDC 800C10DC 0320F809 */  jalr       $t9
/* C1CE0 800C10E0 00000000 */   nop
/* C1CE4 800C10E4 0C031FF4 */  jal        func_800C7FD0
/* C1CE8 800C10E8 00000000 */   nop
/* C1CEC 800C10EC 8FA40028 */  lw         $a0, 0x28($sp)
/* C1CF0 800C10F0 10400012 */  beqz       $v0, .L800C113C
/* C1CF4 800C10F4 00403025 */   or        $a2, $v0, $zero
/* C1CF8 800C10F8 8FA80030 */  lw         $t0, 0x30($sp)
/* C1CFC 800C10FC 8FAA002C */  lw         $t2, 0x2c($sp)
/* C1D00 800C1100 240D000F */  addiu      $t5, $zero, 0xf
/* C1D04 800C1104 8D09001C */  lw         $t1, 0x1c($t0)
/* C1D08 800C1108 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* C1D0C 800C110C A44D0008 */  sh         $t5, 8($v0)
/* C1D10 800C1110 AC400000 */  sw         $zero, ($v0)
/* C1D14 800C1114 012B6021 */  addu       $t4, $t1, $t3
/* C1D18 800C1118 AC4C0004 */  sw         $t4, 4($v0)
/* C1D1C 800C111C 8C990008 */  lw         $t9, 8($a0)
/* C1D20 800C1120 24050003 */  addiu      $a1, $zero, 3
/* C1D24 800C1124 0320F809 */  jalr       $t9
/* C1D28 800C1128 00000000 */   nop
/* C1D2C 800C112C 10000004 */  b          .L800C1140
/* C1D30 800C1130 8FAF002C */   lw        $t7, 0x2c($sp)
.L800C1134:
/* C1D34 800C1134 8FAE002C */  lw         $t6, 0x2c($sp)
/* C1D38 800C1138 ADC000D8 */  sw         $zero, 0xd8($t6)
.L800C113C:
/* C1D3C 800C113C 8FAF002C */  lw         $t7, 0x2c($sp)
.L800C1140:
/* C1D40 800C1140 ADF00008 */  sw         $s0, 8($t7)
/* C1D44 800C1144 8FB8002C */  lw         $t8, 0x2c($sp)
/* C1D48 800C1148 AE180008 */  sw         $t8, 8($s0)
/* C1D4C 800C114C 8FA2002C */  lw         $v0, 0x2c($sp)
.L800C1150:
/* C1D50 800C1150 8FBF001C */  lw         $ra, 0x1c($sp)
/* C1D54 800C1154 8FB00018 */  lw         $s0, 0x18($sp)
/* C1D58 800C1158 0002402B */  sltu       $t0, $zero, $v0
/* C1D5C 800C115C 01001025 */  or         $v0, $t0, $zero
/* C1D60 800C1160 03E00008 */  jr         $ra
/* C1D64 800C1164 27BD0030 */   addiu     $sp, $sp, 0x30
/* C1D68 800C1168 00000000 */  nop
/* C1D6C 800C116C 00000000 */  nop
