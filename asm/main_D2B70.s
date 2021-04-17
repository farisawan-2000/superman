.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D1F70
/* D2B70 800D1F70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D2B74 800D1F74 AFB20028 */  sw         $s2, 0x28($sp)
/* D2B78 800D1F78 00127400 */  sll        $t6, $s2, 0x10
/* D2B7C 800D1F7C 000E9403 */  sra        $s2, $t6, 0x10
/* D2B80 800D1F80 AFB30024 */  sw         $s3, 0x24($sp)
/* D2B84 800D1F84 0013C400 */  sll        $t8, $s3, 0x10
/* D2B88 800D1F88 00189C03 */  sra        $s3, $t8, 0x10
/* D2B8C 800D1F8C 328E00FF */  andi       $t6, $s4, 0xff
/* D2B90 800D1F90 AFB4001C */  sw         $s4, 0x1c($sp)
/* D2B94 800D1F94 01C0A025 */  or         $s4, $t6, $zero
/* D2B98 800D1F98 1E600004 */  bgtz       $s3, .L800D1FAC
/* D2B9C 800D1F9C AFBF0014 */   sw        $ra, 0x14($sp)
/* D2BA0 800D1FA0 3C11800E */  lui        $s1, %hi(D_800DFF10)
/* D2BA4 800D1FA4 2631FF10 */  addiu      $s1, $s1, %lo(D_800DFF10)
/* D2BA8 800D1FA8 24130001 */  addiu      $s3, $zero, 1
.L800D1FAC:
/* D2BAC 800D1FAC 24020066 */  addiu      $v0, $zero, 0x66
/* D2BB0 800D1FB0 1054000C */  beq        $v0, $s4, .L800D1FE4
/* D2BB4 800D1FB4 02801825 */   or        $v1, $s4, $zero
/* D2BB8 800D1FB8 24040067 */  addiu      $a0, $zero, 0x67
/* D2BBC 800D1FBC 10830002 */  beq        $a0, $v1, .L800D1FC8
/* D2BC0 800D1FC0 24010047 */   addiu     $at, $zero, 0x47
/* D2BC4 800D1FC4 14610096 */  bne        $v1, $at, .L800D2220
.L800D1FC8:
/* D2BC8 800D1FC8 2A41FFFC */   slti      $at, $s2, -4
/* D2BCC 800D1FCC 14200094 */  bnez       $at, .L800D2220
/* D2BD0 800D1FD0 00000000 */   nop
/* D2BD4 800D1FD4 8E0F0024 */  lw         $t7, 0x24($s0)
/* D2BD8 800D1FD8 024F082A */  slt        $at, $s2, $t7
/* D2BDC 800D1FDC 10200090 */  beqz       $at, .L800D2220
/* D2BE0 800D1FE0 00000000 */   nop
.L800D1FE4:
/* D2BE4 800D1FE4 26520001 */  addiu      $s2, $s2, 1
/* D2BE8 800D1FE8 0012C400 */  sll        $t8, $s2, 0x10
/* D2BEC 800D1FEC 1043000E */  beq        $v0, $v1, .L800D2028
/* D2BF0 800D1FF0 00189403 */   sra       $s2, $t8, 0x10
/* D2BF4 800D1FF4 8E0E0030 */  lw         $t6, 0x30($s0)
/* D2BF8 800D1FF8 8E020024 */  lw         $v0, 0x24($s0)
/* D2BFC 800D1FFC 31CF0008 */  andi       $t7, $t6, 8
/* D2C00 800D2000 15E00005 */  bnez       $t7, .L800D2018
/* D2C04 800D2004 0262082A */   slt       $at, $s3, $v0
/* D2C08 800D2008 50200004 */  beql       $at, $zero, .L800D201C
/* D2C0C 800D200C 0052C023 */   subu      $t8, $v0, $s2
/* D2C10 800D2010 AE130024 */  sw         $s3, 0x24($s0)
/* D2C14 800D2014 02601025 */  or         $v0, $s3, $zero
.L800D2018:
/* D2C18 800D2018 0052C023 */  subu       $t8, $v0, $s2
.L800D201C:
/* D2C1C 800D201C 07010002 */  bgez       $t8, .L800D2028
/* D2C20 800D2020 AE180024 */   sw        $t8, 0x24($s0)
/* D2C24 800D2024 AE000024 */  sw         $zero, 0x24($s0)
.L800D2028:
/* D2C28 800D2028 1E400033 */  bgtz       $s2, .L800D20F8
/* D2C2C 800D202C 0272082A */   slt       $at, $s3, $s2
/* D2C30 800D2030 8E0F0008 */  lw         $t7, 8($s0)
/* D2C34 800D2034 8E180014 */  lw         $t8, 0x14($s0)
/* D2C38 800D2038 240E0030 */  addiu      $t6, $zero, 0x30
/* D2C3C 800D203C 00121823 */  negu       $v1, $s2
/* D2C40 800D2040 01F8C821 */  addu       $t9, $t7, $t8
/* D2C44 800D2044 A32E0000 */  sb         $t6, ($t9)
/* D2C48 800D2048 8E0F0014 */  lw         $t7, 0x14($s0)
/* D2C4C 800D204C 8E020024 */  lw         $v0, 0x24($s0)
/* D2C50 800D2050 02202825 */  or         $a1, $s1, $zero
/* D2C54 800D2054 25F80001 */  addiu      $t8, $t7, 1
/* D2C58 800D2058 1C400005 */  bgtz       $v0, .L800D2070
/* D2C5C 800D205C AE180014 */   sw        $t8, 0x14($s0)
/* D2C60 800D2060 8E0E0030 */  lw         $t6, 0x30($s0)
/* D2C64 800D2064 31D90008 */  andi       $t9, $t6, 8
/* D2C68 800D2068 5320000B */  beql       $t9, $zero, .L800D2098
/* D2C6C 800D206C 0043082A */   slt       $at, $v0, $v1
.L800D2070:
/* D2C70 800D2070 8E180008 */  lw         $t8, 8($s0)
/* D2C74 800D2074 8E0E0014 */  lw         $t6, 0x14($s0)
/* D2C78 800D2078 240F002E */  addiu      $t7, $zero, 0x2e
/* D2C7C 800D207C 030EC821 */  addu       $t9, $t8, $t6
/* D2C80 800D2080 A32F0000 */  sb         $t7, ($t9)
/* D2C84 800D2084 8E180014 */  lw         $t8, 0x14($s0)
/* D2C88 800D2088 8E020024 */  lw         $v0, 0x24($s0)
/* D2C8C 800D208C 270E0001 */  addiu      $t6, $t8, 1
/* D2C90 800D2090 AE0E0014 */  sw         $t6, 0x14($s0)
/* D2C94 800D2094 0043082A */  slt        $at, $v0, $v1
.L800D2098:
/* D2C98 800D2098 50200006 */  beql       $at, $zero, .L800D20B4
/* D2C9C 800D209C 0052C021 */   addu      $t8, $v0, $s2
/* D2CA0 800D20A0 00029023 */  negu       $s2, $v0
/* D2CA4 800D20A4 00127C00 */  sll        $t7, $s2, 0x10
/* D2CA8 800D20A8 000F9403 */  sra        $s2, $t7, 0x10
/* D2CAC 800D20AC 00121823 */  negu       $v1, $s2
/* D2CB0 800D20B0 0052C021 */  addu       $t8, $v0, $s2
.L800D20B4:
/* D2CB4 800D20B4 0313082A */  slt        $at, $t8, $s3
/* D2CB8 800D20B8 AE030018 */  sw         $v1, 0x18($s0)
/* D2CBC 800D20BC 10200004 */  beqz       $at, .L800D20D0
/* D2CC0 800D20C0 AE180024 */   sw        $t8, 0x24($s0)
/* D2CC4 800D20C4 00189C00 */  sll        $s3, $t8, 0x10
/* D2CC8 800D20C8 00137403 */  sra        $t6, $s3, 0x10
/* D2CCC 800D20CC 01C09825 */  or         $s3, $t6, $zero
.L800D20D0:
/* D2CD0 800D20D0 8E0F0008 */  lw         $t7, 8($s0)
/* D2CD4 800D20D4 8E190014 */  lw         $t9, 0x14($s0)
/* D2CD8 800D20D8 AE13001C */  sw         $s3, 0x1c($s0)
/* D2CDC 800D20DC 02603025 */  or         $a2, $s3, $zero
/* D2CE0 800D20E0 0C03351C */  jal        func_800CD470
/* D2CE4 800D20E4 01F92021 */   addu      $a0, $t7, $t9
/* D2CE8 800D20E8 8E180024 */  lw         $t8, 0x24($s0)
/* D2CEC 800D20EC 03137023 */  subu       $t6, $t8, $s3
/* D2CF0 800D20F0 100000E2 */  b          .L800D247C
/* D2CF4 800D20F4 AE0E0020 */   sw        $t6, 0x20($s0)
.L800D20F8:
/* D2CF8 800D20F8 1020001D */  beqz       $at, .L800D2170
/* D2CFC 800D20FC 02202825 */   or        $a1, $s1, $zero
/* D2D00 800D2100 8E0F0008 */  lw         $t7, 8($s0)
/* D2D04 800D2104 8E190014 */  lw         $t9, 0x14($s0)
/* D2D08 800D2108 02202825 */  or         $a1, $s1, $zero
/* D2D0C 800D210C 02603025 */  or         $a2, $s3, $zero
/* D2D10 800D2110 0C03351C */  jal        func_800CD470
/* D2D14 800D2114 01F92021 */   addu      $a0, $t7, $t9
/* D2D18 800D2118 8E180014 */  lw         $t8, 0x14($s0)
/* D2D1C 800D211C 8E020024 */  lw         $v0, 0x24($s0)
/* D2D20 800D2120 02537823 */  subu       $t7, $s2, $s3
/* D2D24 800D2124 03137021 */  addu       $t6, $t8, $s3
/* D2D28 800D2128 AE0E0014 */  sw         $t6, 0x14($s0)
/* D2D2C 800D212C 1C400005 */  bgtz       $v0, .L800D2144
/* D2D30 800D2130 AE0F0018 */   sw        $t7, 0x18($s0)
/* D2D34 800D2134 8E190030 */  lw         $t9, 0x30($s0)
/* D2D38 800D2138 33380008 */  andi       $t8, $t9, 8
/* D2D3C 800D213C 1300000A */  beqz       $t8, .L800D2168
/* D2D40 800D2140 00000000 */   nop
.L800D2144:
/* D2D44 800D2144 8E0F0008 */  lw         $t7, 8($s0)
/* D2D48 800D2148 8E190014 */  lw         $t9, 0x14($s0)
/* D2D4C 800D214C 240E002E */  addiu      $t6, $zero, 0x2e
/* D2D50 800D2150 01F9C021 */  addu       $t8, $t7, $t9
/* D2D54 800D2154 A30E0000 */  sb         $t6, ($t8)
/* D2D58 800D2158 8E0F001C */  lw         $t7, 0x1c($s0)
/* D2D5C 800D215C 8E020024 */  lw         $v0, 0x24($s0)
/* D2D60 800D2160 25F90001 */  addiu      $t9, $t7, 1
/* D2D64 800D2164 AE19001C */  sw         $t9, 0x1c($s0)
.L800D2168:
/* D2D68 800D2168 100000C4 */  b          .L800D247C
/* D2D6C 800D216C AE020020 */   sw        $v0, 0x20($s0)
.L800D2170:
/* D2D70 800D2170 8E0E0008 */  lw         $t6, 8($s0)
/* D2D74 800D2174 8E180014 */  lw         $t8, 0x14($s0)
/* D2D78 800D2178 02403025 */  or         $a2, $s2, $zero
/* D2D7C 800D217C 0C03351C */  jal        func_800CD470
/* D2D80 800D2180 01D82021 */   addu      $a0, $t6, $t8
/* D2D84 800D2184 8E0F0014 */  lw         $t7, 0x14($s0)
/* D2D88 800D2188 8E020024 */  lw         $v0, 0x24($s0)
/* D2D8C 800D218C 02729823 */  subu       $s3, $s3, $s2
/* D2D90 800D2190 00137400 */  sll        $t6, $s3, 0x10
/* D2D94 800D2194 01F2C821 */  addu       $t9, $t7, $s2
/* D2D98 800D2198 AE190014 */  sw         $t9, 0x14($s0)
/* D2D9C 800D219C 1C400005 */  bgtz       $v0, .L800D21B4
/* D2DA0 800D21A0 000E9C03 */   sra       $s3, $t6, 0x10
/* D2DA4 800D21A4 8E0F0030 */  lw         $t7, 0x30($s0)
/* D2DA8 800D21A8 31F90008 */  andi       $t9, $t7, 8
/* D2DAC 800D21AC 5320000B */  beql       $t9, $zero, .L800D21DC
/* D2DB0 800D21B0 0053082A */   slt       $at, $v0, $s3
.L800D21B4:
/* D2DB4 800D21B4 8E180008 */  lw         $t8, 8($s0)
/* D2DB8 800D21B8 8E0F0014 */  lw         $t7, 0x14($s0)
/* D2DBC 800D21BC 240E002E */  addiu      $t6, $zero, 0x2e
/* D2DC0 800D21C0 030FC821 */  addu       $t9, $t8, $t7
/* D2DC4 800D21C4 A32E0000 */  sb         $t6, ($t9)
/* D2DC8 800D21C8 8E180014 */  lw         $t8, 0x14($s0)
/* D2DCC 800D21CC 8E020024 */  lw         $v0, 0x24($s0)
/* D2DD0 800D21D0 270F0001 */  addiu      $t7, $t8, 1
/* D2DD4 800D21D4 AE0F0014 */  sw         $t7, 0x14($s0)
/* D2DD8 800D21D8 0053082A */  slt        $at, $v0, $s3
.L800D21DC:
/* D2DDC 800D21DC 10200004 */  beqz       $at, .L800D21F0
/* D2DE0 800D21E0 02512821 */   addu      $a1, $s2, $s1
/* D2DE4 800D21E4 00029C00 */  sll        $s3, $v0, 0x10
/* D2DE8 800D21E8 00137403 */  sra        $t6, $s3, 0x10
/* D2DEC 800D21EC 01C09825 */  or         $s3, $t6, $zero
.L800D21F0:
/* D2DF0 800D21F0 8E190008 */  lw         $t9, 8($s0)
/* D2DF4 800D21F4 8E180014 */  lw         $t8, 0x14($s0)
/* D2DF8 800D21F8 02603025 */  or         $a2, $s3, $zero
/* D2DFC 800D21FC 0C03351C */  jal        func_800CD470
/* D2E00 800D2200 03382021 */   addu      $a0, $t9, $t8
/* D2E04 800D2204 8E0F0014 */  lw         $t7, 0x14($s0)
/* D2E08 800D2208 8E190024 */  lw         $t9, 0x24($s0)
/* D2E0C 800D220C 01F37021 */  addu       $t6, $t7, $s3
/* D2E10 800D2210 0333C023 */  subu       $t8, $t9, $s3
/* D2E14 800D2214 AE0E0014 */  sw         $t6, 0x14($s0)
/* D2E18 800D2218 10000098 */  b          .L800D247C
/* D2E1C 800D221C AE180018 */   sw        $t8, 0x18($s0)
.L800D2220:
/* D2E20 800D2220 10830003 */  beq        $a0, $v1, .L800D2230
/* D2E24 800D2224 24010047 */   addiu     $at, $zero, 0x47
/* D2E28 800D2228 54610011 */  bnel       $v1, $at, .L800D2270
/* D2E2C 800D222C 8E180008 */   lw        $t8, 8($s0)
.L800D2230:
/* D2E30 800D2230 8E020024 */  lw         $v0, 0x24($s0)
/* D2E34 800D2234 24140045 */  addiu      $s4, $zero, 0x45
/* D2E38 800D2238 0262082A */  slt        $at, $s3, $v0
/* D2E3C 800D223C 50200004 */  beql       $at, $zero, .L800D2250
/* D2E40 800D2240 244FFFFF */   addiu     $t7, $v0, -1
/* D2E44 800D2244 AE130024 */  sw         $s3, 0x24($s0)
/* D2E48 800D2248 02601025 */  or         $v0, $s3, $zero
/* D2E4C 800D224C 244FFFFF */  addiu      $t7, $v0, -1
.L800D2250:
/* D2E50 800D2250 05E10002 */  bgez       $t7, .L800D225C
/* D2E54 800D2254 AE0F0024 */   sw        $t7, 0x24($s0)
/* D2E58 800D2258 AE000024 */  sw         $zero, 0x24($s0)
.L800D225C:
/* D2E5C 800D225C 14830003 */  bne        $a0, $v1, .L800D226C
/* D2E60 800D2260 00000000 */   nop
/* D2E64 800D2264 10000001 */  b          .L800D226C
/* D2E68 800D2268 24140065 */   addiu     $s4, $zero, 0x65
.L800D226C:
/* D2E6C 800D226C 8E180008 */  lw         $t8, 8($s0)
.L800D2270:
/* D2E70 800D2270 8E0F0014 */  lw         $t7, 0x14($s0)
/* D2E74 800D2274 92390000 */  lbu        $t9, ($s1)
/* D2E78 800D2278 26310001 */  addiu      $s1, $s1, 1
/* D2E7C 800D227C 030F7021 */  addu       $t6, $t8, $t7
/* D2E80 800D2280 A1D90000 */  sb         $t9, ($t6)
/* D2E84 800D2284 8E180014 */  lw         $t8, 0x14($s0)
/* D2E88 800D2288 8E020024 */  lw         $v0, 0x24($s0)
/* D2E8C 800D228C 270F0001 */  addiu      $t7, $t8, 1
/* D2E90 800D2290 1C400005 */  bgtz       $v0, .L800D22A8
/* D2E94 800D2294 AE0F0014 */   sw        $t7, 0x14($s0)
/* D2E98 800D2298 8E190030 */  lw         $t9, 0x30($s0)
/* D2E9C 800D229C 332E0008 */  andi       $t6, $t9, 8
/* D2EA0 800D22A0 11C0000A */  beqz       $t6, .L800D22CC
/* D2EA4 800D22A4 00000000 */   nop
.L800D22A8:
/* D2EA8 800D22A8 8E0F0008 */  lw         $t7, 8($s0)
/* D2EAC 800D22AC 8E190014 */  lw         $t9, 0x14($s0)
/* D2EB0 800D22B0 2418002E */  addiu      $t8, $zero, 0x2e
/* D2EB4 800D22B4 01F97021 */  addu       $t6, $t7, $t9
/* D2EB8 800D22B8 A1D80000 */  sb         $t8, ($t6)
/* D2EBC 800D22BC 8E0F0014 */  lw         $t7, 0x14($s0)
/* D2EC0 800D22C0 8E020024 */  lw         $v0, 0x24($s0)
/* D2EC4 800D22C4 25F90001 */  addiu      $t9, $t7, 1
/* D2EC8 800D22C8 AE190014 */  sw         $t9, 0x14($s0)
.L800D22CC:
/* D2ECC 800D22CC 58400016 */  blezl      $v0, .L800D2328
/* D2ED0 800D22D0 8E0E0008 */   lw        $t6, 8($s0)
/* D2ED4 800D22D4 2673FFFF */  addiu      $s3, $s3, -1
/* D2ED8 800D22D8 0013C400 */  sll        $t8, $s3, 0x10
/* D2EDC 800D22DC 00189C03 */  sra        $s3, $t8, 0x10
/* D2EE0 800D22E0 0053082A */  slt        $at, $v0, $s3
/* D2EE4 800D22E4 10200004 */  beqz       $at, .L800D22F8
/* D2EE8 800D22E8 02202825 */   or        $a1, $s1, $zero
/* D2EEC 800D22EC 00029C00 */  sll        $s3, $v0, 0x10
/* D2EF0 800D22F0 00137C03 */  sra        $t7, $s3, 0x10
/* D2EF4 800D22F4 01E09825 */  or         $s3, $t7, $zero
.L800D22F8:
/* D2EF8 800D22F8 8E190008 */  lw         $t9, 8($s0)
/* D2EFC 800D22FC 8E180014 */  lw         $t8, 0x14($s0)
/* D2F00 800D2300 02603025 */  or         $a2, $s3, $zero
/* D2F04 800D2304 0C03351C */  jal        func_800CD470
/* D2F08 800D2308 03382021 */   addu      $a0, $t9, $t8
/* D2F0C 800D230C 8E0E0014 */  lw         $t6, 0x14($s0)
/* D2F10 800D2310 8E190024 */  lw         $t9, 0x24($s0)
/* D2F14 800D2314 01D37821 */  addu       $t7, $t6, $s3
/* D2F18 800D2318 0333C023 */  subu       $t8, $t9, $s3
/* D2F1C 800D231C AE0F0014 */  sw         $t7, 0x14($s0)
/* D2F20 800D2320 AE180018 */  sw         $t8, 0x18($s0)
/* D2F24 800D2324 8E0E0008 */  lw         $t6, 8($s0)
.L800D2328:
/* D2F28 800D2328 8E0F0014 */  lw         $t7, 0x14($s0)
/* D2F2C 800D232C 01CF8821 */  addu       $s1, $t6, $t7
/* D2F30 800D2330 26310001 */  addiu      $s1, $s1, 1
/* D2F34 800D2334 06400005 */  bltz       $s2, .L800D234C
/* D2F38 800D2338 A234FFFF */   sb        $s4, -1($s1)
/* D2F3C 800D233C 2419002B */  addiu      $t9, $zero, 0x2b
/* D2F40 800D2340 A2390000 */  sb         $t9, ($s1)
/* D2F44 800D2344 10000008 */  b          .L800D2368
/* D2F48 800D2348 26310001 */   addiu     $s1, $s1, 1
.L800D234C:
/* D2F4C 800D234C 00129023 */  negu       $s2, $s2
/* D2F50 800D2350 00127400 */  sll        $t6, $s2, 0x10
/* D2F54 800D2354 2418002D */  addiu      $t8, $zero, 0x2d
/* D2F58 800D2358 000E7C03 */  sra        $t7, $t6, 0x10
/* D2F5C 800D235C A2380000 */  sb         $t8, ($s1)
/* D2F60 800D2360 26310001 */  addiu      $s1, $s1, 1
/* D2F64 800D2364 01E09025 */  or         $s2, $t7, $zero
.L800D2368:
/* D2F68 800D2368 2A410064 */  slti       $at, $s2, 0x64
/* D2F6C 800D236C 5420002A */  bnezl      $at, .L800D2418
/* D2F70 800D2370 2402000A */   addiu     $v0, $zero, 0xa
/* D2F74 800D2374 2A4103E8 */  slti       $at, $s2, 0x3e8
/* D2F78 800D2378 14200013 */  bnez       $at, .L800D23C8
/* D2F7C 800D237C 240203E8 */   addiu     $v0, $zero, 0x3e8
/* D2F80 800D2380 0242001A */  div        $zero, $s2, $v0
/* D2F84 800D2384 14400002 */  bnez       $v0, .L800D2390
/* D2F88 800D2388 00000000 */   nop
/* D2F8C 800D238C 0007000D */  break      7
.L800D2390:
/* D2F90 800D2390 2401FFFF */   addiu     $at, $zero, -1
/* D2F94 800D2394 14410004 */  bne        $v0, $at, .L800D23A8
/* D2F98 800D2398 3C018000 */   lui       $at, 0x8000
/* D2F9C 800D239C 16410002 */  bne        $s2, $at, .L800D23A8
/* D2FA0 800D23A0 00000000 */   nop
/* D2FA4 800D23A4 0006000D */  break      6
.L800D23A8:
/* D2FA8 800D23A8 00009010 */   mfhi      $s2
/* D2FAC 800D23AC 00127400 */  sll        $t6, $s2, 0x10
/* D2FB0 800D23B0 0000C812 */  mflo       $t9
/* D2FB4 800D23B4 27380030 */  addiu      $t8, $t9, 0x30
/* D2FB8 800D23B8 000E7C03 */  sra        $t7, $t6, 0x10
/* D2FBC 800D23BC 01E09025 */  or         $s2, $t7, $zero
/* D2FC0 800D23C0 A2380000 */  sb         $t8, ($s1)
/* D2FC4 800D23C4 26310001 */  addiu      $s1, $s1, 1
.L800D23C8:
/* D2FC8 800D23C8 24020064 */  addiu      $v0, $zero, 0x64
/* D2FCC 800D23CC 0242001A */  div        $zero, $s2, $v0
/* D2FD0 800D23D0 14400002 */  bnez       $v0, .L800D23DC
/* D2FD4 800D23D4 00000000 */   nop
/* D2FD8 800D23D8 0007000D */  break      7
.L800D23DC:
/* D2FDC 800D23DC 2401FFFF */   addiu     $at, $zero, -1
/* D2FE0 800D23E0 14410004 */  bne        $v0, $at, .L800D23F4
/* D2FE4 800D23E4 3C018000 */   lui       $at, 0x8000
/* D2FE8 800D23E8 16410002 */  bne        $s2, $at, .L800D23F4
/* D2FEC 800D23EC 00000000 */   nop
/* D2FF0 800D23F0 0006000D */  break      6
.L800D23F4:
/* D2FF4 800D23F4 00009010 */   mfhi      $s2
/* D2FF8 800D23F8 00127400 */  sll        $t6, $s2, 0x10
/* D2FFC 800D23FC 0000C812 */  mflo       $t9
/* D3000 800D2400 27380030 */  addiu      $t8, $t9, 0x30
/* D3004 800D2404 000E7C03 */  sra        $t7, $t6, 0x10
/* D3008 800D2408 01E09025 */  or         $s2, $t7, $zero
/* D300C 800D240C A2380000 */  sb         $t8, ($s1)
/* D3010 800D2410 26310001 */  addiu      $s1, $s1, 1
/* D3014 800D2414 2402000A */  addiu      $v0, $zero, 0xa
.L800D2418:
/* D3018 800D2418 0242001A */  div        $zero, $s2, $v0
/* D301C 800D241C 14400002 */  bnez       $v0, .L800D2428
/* D3020 800D2420 00000000 */   nop
/* D3024 800D2424 0007000D */  break      7
.L800D2428:
/* D3028 800D2428 2401FFFF */   addiu     $at, $zero, -1
/* D302C 800D242C 14410004 */  bne        $v0, $at, .L800D2440
/* D3030 800D2430 3C018000 */   lui       $at, 0x8000
/* D3034 800D2434 16410002 */  bne        $s2, $at, .L800D2440
/* D3038 800D2438 00000000 */   nop
/* D303C 800D243C 0006000D */  break      6
.L800D2440:
/* D3040 800D2440 00009010 */   mfhi      $s2
/* D3044 800D2444 00127400 */  sll        $t6, $s2, 0x10
/* D3048 800D2448 0000C812 */  mflo       $t9
/* D304C 800D244C 27380030 */  addiu      $t8, $t9, 0x30
/* D3050 800D2450 000E7C03 */  sra        $t7, $t6, 0x10
/* D3054 800D2454 25F90030 */  addiu      $t9, $t7, 0x30
/* D3058 800D2458 A2380000 */  sb         $t8, ($s1)
/* D305C 800D245C A2390001 */  sb         $t9, 1($s1)
/* D3060 800D2460 8E180008 */  lw         $t8, 8($s0)
/* D3064 800D2464 01E09025 */  or         $s2, $t7, $zero
/* D3068 800D2468 8E0F0014 */  lw         $t7, 0x14($s0)
/* D306C 800D246C 26310002 */  addiu      $s1, $s1, 2
/* D3070 800D2470 02387023 */  subu       $t6, $s1, $t8
/* D3074 800D2474 01CFC823 */  subu       $t9, $t6, $t7
/* D3078 800D2478 AE19001C */  sw         $t9, 0x1c($s0)
.L800D247C:
/* D307C 800D247C 8E180030 */  lw         $t8, 0x30($s0)
/* D3080 800D2480 24010010 */  addiu      $at, $zero, 0x10
/* D3084 800D2484 330E0014 */  andi       $t6, $t8, 0x14
/* D3088 800D2488 55C10010 */  bnel       $t6, $at, .L800D24CC
/* D308C 800D248C 8FBF0014 */   lw        $ra, 0x14($sp)
/* D3090 800D2490 8E0F000C */  lw         $t7, 0xc($s0)
/* D3094 800D2494 8E190014 */  lw         $t9, 0x14($s0)
/* D3098 800D2498 8E0E0018 */  lw         $t6, 0x18($s0)
/* D309C 800D249C 8E030028 */  lw         $v1, 0x28($s0)
/* D30A0 800D24A0 01F9C021 */  addu       $t8, $t7, $t9
/* D30A4 800D24A4 8E19001C */  lw         $t9, 0x1c($s0)
/* D30A8 800D24A8 030E7821 */  addu       $t7, $t8, $t6
/* D30AC 800D24AC 8E0E0020 */  lw         $t6, 0x20($s0)
/* D30B0 800D24B0 01F9C021 */  addu       $t8, $t7, $t9
/* D30B4 800D24B4 030E1021 */  addu       $v0, $t8, $t6
/* D30B8 800D24B8 0043082A */  slt        $at, $v0, $v1
/* D30BC 800D24BC 10200002 */  beqz       $at, .L800D24C8
/* D30C0 800D24C0 00627823 */   subu      $t7, $v1, $v0
/* D30C4 800D24C4 AE0F0010 */  sw         $t7, 0x10($s0)
.L800D24C8:
/* D30C8 800D24C8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800D24CC:
/* D30CC 800D24CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* D30D0 800D24D0 03E00008 */  jr         $ra
/* D30D4 800D24D4 00000000 */   nop

glabel func_800D24D8
/* D30D8 800D24D8 03E00008 */  jr         $ra
/* D30DC 800D24DC 00000000 */   nop

glabel func_800D24E0
/* D30E0 800D24E0 27BDFF30 */  addiu      $sp, $sp, -0xd0
/* D30E4 800D24E4 AFBF003C */  sw         $ra, 0x3c($sp)
/* D30E8 800D24E8 AFB50038 */  sw         $s5, 0x38($sp)
/* D30EC 800D24EC AFB40034 */  sw         $s4, 0x34($sp)
/* D30F0 800D24F0 AFB30030 */  sw         $s3, 0x30($sp)
/* D30F4 800D24F4 AFB2002C */  sw         $s2, 0x2c($sp)
/* D30F8 800D24F8 AFB10028 */  sw         $s1, 0x28($sp)
/* D30FC 800D24FC AFB00024 */  sw         $s0, 0x24($sp)
/* D3100 800D2500 F7B40018 */  sdc1       $f20, 0x18($sp)
/* D3104 800D2504 AFA400D0 */  sw         $a0, 0xd0($sp)
/* D3108 800D2508 AFA500D4 */  sw         $a1, 0xd4($sp)
/* D310C 800D250C 8C820024 */  lw         $v0, 0x24($a0)
/* D3110 800D2510 27B500B0 */  addiu      $s5, $sp, 0xb0
/* D3114 800D2514 D4940000 */  ldc1       $f20, ($a0)
/* D3118 800D2518 04410003 */  bgez       $v0, .L800D2528
/* D311C 800D251C 240F0006 */   addiu     $t7, $zero, 6
/* D3120 800D2520 1000000C */  b          .L800D2554
/* D3124 800D2524 AC8F0024 */   sw        $t7, 0x24($a0)
.L800D2528:
/* D3128 800D2528 1440000A */  bnez       $v0, .L800D2554
/* D312C 800D252C 93B800D7 */   lbu       $t8, 0xd7($sp)
/* D3130 800D2530 24010067 */  addiu      $at, $zero, 0x67
/* D3134 800D2534 13010004 */  beq        $t8, $at, .L800D2548
/* D3138 800D2538 AFB80048 */   sw        $t8, 0x48($sp)
/* D313C 800D253C 24010047 */  addiu      $at, $zero, 0x47
/* D3140 800D2540 57010005 */  bnel       $t8, $at, .L800D2558
/* D3144 800D2544 8FAE00D0 */   lw        $t6, 0xd0($sp)
.L800D2548:
/* D3148 800D2548 8FAF00D0 */  lw         $t7, 0xd0($sp)
/* D314C 800D254C 24190001 */  addiu      $t9, $zero, 1
/* D3150 800D2550 ADF90024 */  sw         $t9, 0x24($t7)
.L800D2554:
/* D3154 800D2554 8FAE00D0 */  lw         $t6, 0xd0($sp)
.L800D2558:
/* D3158 800D2558 240107FF */  addiu      $at, $zero, 0x7ff
/* D315C 800D255C 95C40000 */  lhu        $a0, ($t6)
/* D3160 800D2560 30837FF0 */  andi       $v1, $a0, 0x7ff0
/* D3164 800D2564 0003C103 */  sra        $t8, $v1, 4
/* D3168 800D2568 0018CC00 */  sll        $t9, $t8, 0x10
/* D316C 800D256C 00191C03 */  sra        $v1, $t9, 0x10
/* D3170 800D2570 14610018 */  bne        $v1, $at, .L800D25D4
/* D3174 800D2574 00000000 */   nop
/* D3178 800D2578 A7A0009A */  sh         $zero, 0x9a($sp)
/* D317C 800D257C 95D80000 */  lhu        $t8, ($t6)
/* D3180 800D2580 24030002 */  addiu      $v1, $zero, 2
/* D3184 800D2584 00031400 */  sll        $v0, $v1, 0x10
/* D3188 800D2588 3319000F */  andi       $t9, $t8, 0xf
/* D318C 800D258C 5720000A */  bnezl      $t9, .L800D25B8
/* D3190 800D2590 00027C03 */   sra       $t7, $v0, 0x10
/* D3194 800D2594 95CF0002 */  lhu        $t7, 2($t6)
/* D3198 800D2598 55E00007 */  bnezl      $t7, .L800D25B8
/* D319C 800D259C 00027C03 */   sra       $t7, $v0, 0x10
/* D31A0 800D25A0 95D80004 */  lhu        $t8, 4($t6)
/* D31A4 800D25A4 57000004 */  bnezl      $t8, .L800D25B8
/* D31A8 800D25A8 00027C03 */   sra       $t7, $v0, 0x10
/* D31AC 800D25AC 95D90006 */  lhu        $t9, 6($t6)
/* D31B0 800D25B0 13200003 */  beqz       $t9, .L800D25C0
/* D31B4 800D25B4 00027C03 */   sra       $t7, $v0, 0x10
.L800D25B8:
/* D31B8 800D25B8 10000014 */  b          .L800D260C
/* D31BC 800D25BC 01E01025 */   or        $v0, $t7, $zero
.L800D25C0:
/* D31C0 800D25C0 24030001 */  addiu      $v1, $zero, 1
/* D31C4 800D25C4 00031400 */  sll        $v0, $v1, 0x10
/* D31C8 800D25C8 00027C03 */  sra        $t7, $v0, 0x10
/* D31CC 800D25CC 1000000F */  b          .L800D260C
/* D31D0 800D25D0 01E01025 */   or        $v0, $t7, $zero
.L800D25D4:
/* D31D4 800D25D4 18600008 */  blez       $v1, .L800D25F8
/* D31D8 800D25D8 3098800F */   andi      $t8, $a0, 0x800f
/* D31DC 800D25DC 8FB900D0 */  lw         $t9, 0xd0($sp)
/* D31E0 800D25E0 370E3FF0 */  ori        $t6, $t8, 0x3ff0
/* D31E4 800D25E4 246FFC02 */  addiu      $t7, $v1, -0x3fe
/* D31E8 800D25E8 A72E0000 */  sh         $t6, ($t9)
/* D31EC 800D25EC A7AF009A */  sh         $t7, 0x9a($sp)
/* D31F0 800D25F0 10000006 */  b          .L800D260C
/* D31F4 800D25F4 2402FFFF */   addiu     $v0, $zero, -1
.L800D25F8:
/* D31F8 800D25F8 04610003 */  bgez       $v1, .L800D2608
/* D31FC 800D25FC 00001025 */   or        $v0, $zero, $zero
/* D3200 800D2600 10000002 */  b          .L800D260C
/* D3204 800D2604 24020002 */   addiu     $v0, $zero, 2
.L800D2608:
/* D3208 800D2608 A7A0009A */  sh         $zero, 0x9a($sp)
.L800D260C:
/* D320C 800D260C 18400012 */  blez       $v0, .L800D2658
/* D3210 800D2610 0002C400 */   sll       $t8, $v0, 0x10
/* D3214 800D2614 0002C400 */  sll        $t8, $v0, 0x10
/* D3218 800D2618 00187403 */  sra        $t6, $t8, 0x10
/* D321C 800D261C 24010002 */  addiu      $at, $zero, 2
/* D3220 800D2620 15C10004 */  bne        $t6, $at, .L800D2634
/* D3224 800D2624 8FB900D0 */   lw        $t9, 0xd0($sp)
/* D3228 800D2628 3C05800E */  lui        $a1, %hi(D_800DFF08)
/* D322C 800D262C 10000003 */  b          .L800D263C
/* D3230 800D2630 24A5FF08 */   addiu     $a1, $a1, %lo(D_800DFF08)
.L800D2634:
/* D3234 800D2634 3C05800E */  lui        $a1, %hi(D_800DFF0C)
/* D3238 800D2638 24A5FF0C */  addiu      $a1, $a1, %lo(D_800DFF0C)
.L800D263C:
/* D323C 800D263C 240F0003 */  addiu      $t7, $zero, 3
/* D3240 800D2640 AF2F0014 */  sw         $t7, 0x14($t9)
/* D3244 800D2644 8F240008 */  lw         $a0, 8($t9)
/* D3248 800D2648 0C03351C */  jal        func_800CD470
/* D324C 800D264C 24060003 */   addiu     $a2, $zero, 3
/* D3250 800D2650 100000ED */  b          .L800D2A08
/* D3254 800D2654 8FBF003C */   lw        $ra, 0x3c($sp)
.L800D2658:
/* D3258 800D2658 00187403 */  sra        $t6, $t8, 0x10
/* D325C 800D265C 15C00003 */  bnez       $t6, .L800D266C
/* D3260 800D2660 00009825 */   or        $s3, $zero, $zero
/* D3264 800D2664 100000E2 */  b          .L800D29F0
/* D3268 800D2668 A7A0009A */   sh        $zero, 0x9a($sp)
.L800D266C:
/* D326C 800D266C 44801800 */  mtc1       $zero, $f3
/* D3270 800D2670 44801000 */  mtc1       $zero, $f2
/* D3274 800D2674 93AF00D7 */  lbu        $t7, 0xd7($sp)
/* D3278 800D2678 87B9009A */  lh         $t9, 0x9a($sp)
/* D327C 800D267C 4622A03C */  c.lt.d     $f20, $f2
/* D3280 800D2680 24017597 */  addiu      $at, $zero, 0x7597
/* D3284 800D2684 00001825 */  or         $v1, $zero, $zero
/* D3288 800D2688 27B500B1 */  addiu      $s5, $sp, 0xb1
/* D328C 800D268C 45000002 */  bc1f       .L800D2698
/* D3290 800D2690 AFAF0048 */   sw        $t7, 0x48($sp)
/* D3294 800D2694 4620A507 */  neg.d      $f20, $f20
.L800D2698:
/* D3298 800D2698 03210019 */  multu      $t9, $at
/* D329C 800D269C 3C010001 */  lui        $at, 1
/* D32A0 800D26A0 342186A0 */  ori        $at, $at, 0x86a0
/* D32A4 800D26A4 24050006 */  addiu      $a1, $zero, 6
/* D32A8 800D26A8 0000C012 */  mflo       $t8
/* D32AC 800D26AC 00000000 */  nop
/* D32B0 800D26B0 00000000 */  nop
/* D32B4 800D26B4 0301001A */  div        $zero, $t8, $at
/* D32B8 800D26B8 00007012 */  mflo       $t6
/* D32BC 800D26BC 25CFFFFC */  addiu      $t7, $t6, -4
/* D32C0 800D26C0 000FCC00 */  sll        $t9, $t7, 0x10
/* D32C4 800D26C4 0019C403 */  sra        $t8, $t9, 0x10
/* D32C8 800D26C8 07010019 */  bgez       $t8, .L800D2730
/* D32CC 800D26CC A7AF009A */   sh        $t7, 0x9a($sp)
/* D32D0 800D26D0 000FCC00 */  sll        $t9, $t7, 0x10
/* D32D4 800D26D4 0019C403 */  sra        $t8, $t9, 0x10
/* D32D8 800D26D8 240E0003 */  addiu      $t6, $zero, 3
/* D32DC 800D26DC 01D82023 */  subu       $a0, $t6, $t8
/* D32E0 800D26E0 2401FFFC */  addiu      $at, $zero, -4
/* D32E4 800D26E4 00811024 */  and        $v0, $a0, $at
/* D32E8 800D26E8 0002C823 */  negu       $t9, $v0
/* D32EC 800D26EC 1840002C */  blez       $v0, .L800D27A0
/* D32F0 800D26F0 A7B9009A */   sh        $t9, 0x9a($sp)
/* D32F4 800D26F4 3C04800E */  lui        $a0, %hi(D_800DFEC0)
/* D32F8 800D26F8 2484FEC0 */  addiu      $a0, $a0, %lo(D_800DFEC0)
.L800D26FC:
/* D32FC 800D26FC 304E0001 */  andi       $t6, $v0, 1
/* D3300 800D2700 11C00006 */  beqz       $t6, .L800D271C
/* D3304 800D2704 0002C843 */   sra       $t9, $v0, 1
/* D3308 800D2708 0003C0C0 */  sll        $t8, $v1, 3
/* D330C 800D270C 00987821 */  addu       $t7, $a0, $t8
/* D3310 800D2710 D5E40000 */  ldc1       $f4, ($t7)
/* D3314 800D2714 4624A502 */  mul.d      $f20, $f20, $f4
/* D3318 800D2718 00000000 */  nop
.L800D271C:
/* D331C 800D271C 03201025 */  or         $v0, $t9, $zero
/* D3320 800D2720 1F20FFF6 */  bgtz       $t9, .L800D26FC
/* D3324 800D2724 24630001 */   addiu     $v1, $v1, 1
/* D3328 800D2728 1000001E */  b          .L800D27A4
/* D332C 800D272C 8FAF0048 */   lw        $t7, 0x48($sp)
.L800D2730:
/* D3330 800D2730 87AE009A */  lh         $t6, 0x9a($sp)
/* D3334 800D2734 3C013FF0 */  lui        $at, 0x3ff0
/* D3338 800D2738 00001825 */  or         $v1, $zero, $zero
/* D333C 800D273C 19C00018 */  blez       $t6, .L800D27A0
/* D3340 800D2740 31D8FFFC */   andi      $t8, $t6, 0xfffc
/* D3344 800D2744 00181400 */  sll        $v0, $t8, 0x10
/* D3348 800D2748 0018CC00 */  sll        $t9, $t8, 0x10
/* D334C 800D274C 44810800 */  mtc1       $at, $f1
/* D3350 800D2750 44800000 */  mtc1       $zero, $f0
/* D3354 800D2754 00197403 */  sra        $t6, $t9, 0x10
/* D3358 800D2758 00027C03 */  sra        $t7, $v0, 0x10
/* D335C 800D275C A7B8009A */  sh         $t8, 0x9a($sp)
/* D3360 800D2760 19C0000E */  blez       $t6, .L800D279C
/* D3364 800D2764 01E01025 */   or        $v0, $t7, $zero
/* D3368 800D2768 3C04800E */  lui        $a0, %hi(D_800DFEC0)
/* D336C 800D276C 2484FEC0 */  addiu      $a0, $a0, %lo(D_800DFEC0)
.L800D2770:
/* D3370 800D2770 304F0001 */  andi       $t7, $v0, 1
/* D3374 800D2774 11E00006 */  beqz       $t7, .L800D2790
/* D3378 800D2778 00027043 */   sra       $t6, $v0, 1
/* D337C 800D277C 0003C0C0 */  sll        $t8, $v1, 3
/* D3380 800D2780 0098C821 */  addu       $t9, $a0, $t8
/* D3384 800D2784 D7260000 */  ldc1       $f6, ($t9)
/* D3388 800D2788 46260002 */  mul.d      $f0, $f0, $f6
/* D338C 800D278C 00000000 */  nop
.L800D2790:
/* D3390 800D2790 01C01025 */  or         $v0, $t6, $zero
/* D3394 800D2794 1DC0FFF6 */  bgtz       $t6, .L800D2770
/* D3398 800D2798 24630001 */   addiu     $v1, $v1, 1
.L800D279C:
/* D339C 800D279C 4620A503 */  div.d      $f20, $f20, $f0
.L800D27A0:
/* D33A0 800D27A0 8FAF0048 */  lw         $t7, 0x48($sp)
.L800D27A4:
/* D33A4 800D27A4 24010066 */  addiu      $at, $zero, 0x66
/* D33A8 800D27A8 8FB800D0 */  lw         $t8, 0xd0($sp)
/* D33AC 800D27AC 15E10004 */  bne        $t7, $at, .L800D27C0
/* D33B0 800D27B0 240E0030 */   addiu     $t6, $zero, 0x30
/* D33B4 800D27B4 87A5009A */  lh         $a1, 0x9a($sp)
/* D33B8 800D27B8 10000001 */  b          .L800D27C0
/* D33BC 800D27BC 24A5000A */   addiu     $a1, $a1, 0xa
.L800D27C0:
/* D33C0 800D27C0 8F190024 */  lw         $t9, 0x24($t8)
/* D33C4 800D27C4 00B9A021 */  addu       $s4, $a1, $t9
/* D33C8 800D27C8 2A810014 */  slti       $at, $s4, 0x14
/* D33CC 800D27CC 14200002 */  bnez       $at, .L800D27D8
/* D33D0 800D27D0 00000000 */   nop
/* D33D4 800D27D4 24140013 */  addiu      $s4, $zero, 0x13
.L800D27D8:
/* D33D8 800D27D8 1A800033 */  blez       $s4, .L800D28A8
/* D33DC 800D27DC A3AE00B0 */   sb        $t6, 0xb0($sp)
/* D33E0 800D27E0 4634103C */  c.lt.d     $f2, $f20
/* D33E4 800D27E4 24130030 */  addiu      $s3, $zero, 0x30
/* D33E8 800D27E8 27B20074 */  addiu      $s2, $sp, 0x74
/* D33EC 800D27EC 4502002F */  bc1fl      .L800D28AC
/* D33F0 800D27F0 87B8009A */   lh        $t8, 0x9a($sp)
/* D33F4 800D27F4 4620A20D */  trunc.w.d  $f8, $f20
.L800D27F8:
/* D33F8 800D27F8 2694FFF8 */  addiu      $s4, $s4, -8
/* D33FC 800D27FC 26B50008 */  addiu      $s5, $s5, 8
/* D3400 800D2800 44114000 */  mfc1       $s1, $f8
/* D3404 800D2804 1A800008 */  blez       $s4, .L800D2828
/* D3408 800D2808 00000000 */   nop
/* D340C 800D280C 44915000 */  mtc1       $s1, $f10
/* D3410 800D2810 3C01800E */  lui        $at, %hi(D_800DFF18)
/* D3414 800D2814 D428FF18 */  ldc1       $f8, %lo(D_800DFF18)($at)
/* D3418 800D2818 46805121 */  cvt.d.w    $f4, $f10
/* D341C 800D281C 4624A181 */  sub.d      $f6, $f20, $f4
/* D3420 800D2820 46283502 */  mul.d      $f20, $f6, $f8
/* D3424 800D2824 00000000 */  nop
.L800D2828:
/* D3428 800D2828 1A200011 */  blez       $s1, .L800D2870
/* D342C 800D282C 24100008 */   addiu     $s0, $zero, 8
/* D3430 800D2830 24100007 */  addiu      $s0, $zero, 7
/* D3434 800D2834 0600000E */  bltz       $s0, .L800D2870
/* D3438 800D2838 02402025 */   or        $a0, $s2, $zero
.L800D283C:
/* D343C 800D283C 02202825 */  or         $a1, $s1, $zero
/* D3440 800D2840 0C034ACC */  jal        func_800D2B30
/* D3444 800D2844 2406000A */   addiu     $a2, $zero, 0xa
/* D3448 800D2848 8FB80078 */  lw         $t8, 0x78($sp)
/* D344C 800D284C 26B5FFFF */  addiu      $s5, $s5, -1
/* D3450 800D2850 27190030 */  addiu      $t9, $t8, 0x30
/* D3454 800D2854 A2B90000 */  sb         $t9, ($s5)
/* D3458 800D2858 8FB10074 */  lw         $s1, 0x74($sp)
/* D345C 800D285C 5A200005 */  blezl      $s1, .L800D2874
/* D3460 800D2860 44801800 */   mtc1      $zero, $f3
/* D3464 800D2864 2610FFFF */  addiu      $s0, $s0, -1
/* D3468 800D2868 0603FFF4 */  bgezl      $s0, .L800D283C
/* D346C 800D286C 02402025 */   or        $a0, $s2, $zero
.L800D2870:
/* D3470 800D2870 44801800 */  mtc1       $zero, $f3
.L800D2874:
/* D3474 800D2874 44801000 */  mtc1       $zero, $f2
/* D3478 800D2878 2610FFFF */  addiu      $s0, $s0, -1
/* D347C 800D287C 06000004 */  bltz       $s0, .L800D2890
.L800D2880:
/* D3480 800D2880 2610FFFF */   addiu     $s0, $s0, -1
/* D3484 800D2884 26B5FFFF */  addiu      $s5, $s5, -1
/* D3488 800D2888 0601FFFD */  bgez       $s0, .L800D2880
/* D348C 800D288C A2B30000 */   sb        $s3, ($s5)
.L800D2890:
/* D3490 800D2890 1A800005 */  blez       $s4, .L800D28A8
/* D3494 800D2894 26B50008 */   addiu     $s5, $s5, 8
/* D3498 800D2898 4634103C */  c.lt.d     $f2, $f20
/* D349C 800D289C 00000000 */  nop
/* D34A0 800D28A0 4503FFD5 */  bc1tl      .L800D27F8
/* D34A4 800D28A4 4620A20D */   trunc.w.d $f8, $f20
.L800D28A8:
/* D34A8 800D28A8 87B8009A */  lh         $t8, 0x9a($sp)
.L800D28AC:
/* D34AC 800D28AC 93AE00B1 */  lbu        $t6, 0xb1($sp)
/* D34B0 800D28B0 27AF00B0 */  addiu      $t7, $sp, 0xb0
/* D34B4 800D28B4 24020030 */  addiu      $v0, $zero, 0x30
/* D34B8 800D28B8 02AFA023 */  subu       $s4, $s5, $t7
/* D34BC 800D28BC 27190007 */  addiu      $t9, $t8, 7
/* D34C0 800D28C0 2694FFFF */  addiu      $s4, $s4, -1
/* D34C4 800D28C4 A7B9009A */  sh         $t9, 0x9a($sp)
/* D34C8 800D28C8 144E0009 */  bne        $v0, $t6, .L800D28F0
/* D34CC 800D28CC 27B500B1 */   addiu     $s5, $sp, 0xb1
/* D34D0 800D28D0 87AF009A */  lh         $t7, 0x9a($sp)
.L800D28D4:
/* D34D4 800D28D4 26B50001 */  addiu      $s5, $s5, 1
/* D34D8 800D28D8 2694FFFF */  addiu      $s4, $s4, -1
/* D34DC 800D28DC 25F8FFFF */  addiu      $t8, $t7, -1
/* D34E0 800D28E0 A7B8009A */  sh         $t8, 0x9a($sp)
/* D34E4 800D28E4 92B90000 */  lbu        $t9, ($s5)
/* D34E8 800D28E8 5059FFFA */  beql       $v0, $t9, .L800D28D4
/* D34EC 800D28EC 87AF009A */   lh        $t7, 0x9a($sp)
.L800D28F0:
/* D34F0 800D28F0 8FAE0048 */  lw         $t6, 0x48($sp)
/* D34F4 800D28F4 24010066 */  addiu      $at, $zero, 0x66
/* D34F8 800D28F8 8FB800D0 */  lw         $t8, 0xd0($sp)
/* D34FC 800D28FC 15C10004 */  bne        $t6, $at, .L800D2910
/* D3500 800D2900 8FAF0048 */   lw        $t7, 0x48($sp)
/* D3504 800D2904 87A5009A */  lh         $a1, 0x9a($sp)
/* D3508 800D2908 10000009 */  b          .L800D2930
/* D350C 800D290C 24A50001 */   addiu     $a1, $a1, 1
.L800D2910:
/* D3510 800D2910 24010065 */  addiu      $at, $zero, 0x65
/* D3514 800D2914 11E10003 */  beq        $t7, $at, .L800D2924
/* D3518 800D2918 24010045 */   addiu     $at, $zero, 0x45
/* D351C 800D291C 15E10003 */  bne        $t7, $at, .L800D292C
/* D3520 800D2920 00001025 */   or        $v0, $zero, $zero
.L800D2924:
/* D3524 800D2924 10000001 */  b          .L800D292C
/* D3528 800D2928 24020001 */   addiu     $v0, $zero, 1
.L800D292C:
/* D352C 800D292C 00402825 */  or         $a1, $v0, $zero
.L800D2930:
/* D3530 800D2930 8F190024 */  lw         $t9, 0x24($t8)
/* D3534 800D2934 00B99821 */  addu       $s3, $a1, $t9
/* D3538 800D2938 00137400 */  sll        $t6, $s3, 0x10
/* D353C 800D293C 000E9C03 */  sra        $s3, $t6, 0x10
/* D3540 800D2940 0293082A */  slt        $at, $s4, $s3
/* D3544 800D2944 10200004 */  beqz       $at, .L800D2958
/* D3548 800D2948 00000000 */   nop
/* D354C 800D294C 00149C00 */  sll        $s3, $s4, 0x10
/* D3550 800D2950 0013C403 */  sra        $t8, $s3, 0x10
/* D3554 800D2954 03009825 */  or         $s3, $t8, $zero
.L800D2958:
/* D3558 800D2958 1A600025 */  blez       $s3, .L800D29F0
/* D355C 800D295C 0274082A */   slt       $at, $s3, $s4
/* D3560 800D2960 10200007 */  beqz       $at, .L800D2980
/* D3564 800D2964 02751021 */   addu      $v0, $s3, $s5
/* D3568 800D2968 90590000 */  lbu        $t9, ($v0)
/* D356C 800D296C 2B210035 */  slti       $at, $t9, 0x35
/* D3570 800D2970 54200004 */  bnezl      $at, .L800D2984
/* D3574 800D2974 24050030 */   addiu     $a1, $zero, 0x30
/* D3578 800D2978 10000003 */  b          .L800D2988
/* D357C 800D297C 24050039 */   addiu     $a1, $zero, 0x39
.L800D2980:
/* D3580 800D2980 24050030 */  addiu      $a1, $zero, 0x30
.L800D2984:
/* D3584 800D2984 02751021 */  addu       $v0, $s3, $s5
.L800D2988:
/* D3588 800D2988 904EFFFF */  lbu        $t6, -1($v0)
/* D358C 800D298C 2663FFFF */  addiu      $v1, $s3, -1
/* D3590 800D2990 00A02025 */  or         $a0, $a1, $zero
/* D3594 800D2994 14AE0009 */  bne        $a1, $t6, .L800D29BC
/* D3598 800D2998 24010039 */   addiu     $at, $zero, 0x39
/* D359C 800D299C 00751021 */  addu       $v0, $v1, $s5
.L800D29A0:
/* D35A0 800D29A0 9059FFFF */  lbu        $t9, -1($v0)
/* D35A4 800D29A4 2673FFFF */  addiu      $s3, $s3, -1
/* D35A8 800D29A8 00137C00 */  sll        $t7, $s3, 0x10
/* D35AC 800D29AC 2463FFFF */  addiu      $v1, $v1, -1
/* D35B0 800D29B0 2442FFFF */  addiu      $v0, $v0, -1
/* D35B4 800D29B4 1099FFFA */  beq        $a0, $t9, .L800D29A0
/* D35B8 800D29B8 000F9C03 */   sra       $s3, $t7, 0x10
.L800D29BC:
/* D35BC 800D29BC 14810004 */  bne        $a0, $at, .L800D29D0
/* D35C0 800D29C0 02A31021 */   addu      $v0, $s5, $v1
/* D35C4 800D29C4 904E0000 */  lbu        $t6, ($v0)
/* D35C8 800D29C8 25CF0001 */  addiu      $t7, $t6, 1
/* D35CC 800D29CC A04F0000 */  sb         $t7, ($v0)
.L800D29D0:
/* D35D0 800D29D0 04610007 */  bgez       $v1, .L800D29F0
/* D35D4 800D29D4 87AE009A */   lh        $t6, 0x9a($sp)
/* D35D8 800D29D8 26730001 */  addiu      $s3, $s3, 1
/* D35DC 800D29DC 0013C400 */  sll        $t8, $s3, 0x10
/* D35E0 800D29E0 25CF0001 */  addiu      $t7, $t6, 1
/* D35E4 800D29E4 A7AF009A */  sh         $t7, 0x9a($sp)
/* D35E8 800D29E8 00189C03 */  sra        $s3, $t8, 0x10
/* D35EC 800D29EC 26B5FFFF */  addiu      $s5, $s5, -1
.L800D29F0:
/* D35F0 800D29F0 8FB000D0 */  lw         $s0, 0xd0($sp)
/* D35F4 800D29F4 93B400D7 */  lbu        $s4, 0xd7($sp)
/* D35F8 800D29F8 02A08825 */  or         $s1, $s5, $zero
/* D35FC 800D29FC 0C0347DC */  jal        func_800D1F70
/* D3600 800D2A00 87B2009A */   lh        $s2, 0x9a($sp)
/* D3604 800D2A04 8FBF003C */  lw         $ra, 0x3c($sp)
.L800D2A08:
/* D3608 800D2A08 D7B40018 */  ldc1       $f20, 0x18($sp)
/* D360C 800D2A0C 8FB00024 */  lw         $s0, 0x24($sp)
/* D3610 800D2A10 8FB10028 */  lw         $s1, 0x28($sp)
/* D3614 800D2A14 8FB2002C */  lw         $s2, 0x2c($sp)
/* D3618 800D2A18 8FB30030 */  lw         $s3, 0x30($sp)
/* D361C 800D2A1C 8FB40034 */  lw         $s4, 0x34($sp)
/* D3620 800D2A20 8FB50038 */  lw         $s5, 0x38($sp)
/* D3624 800D2A24 03E00008 */  jr         $ra
/* D3628 800D2A28 27BD00D0 */   addiu     $sp, $sp, 0xd0
/* D362C 800D2A2C 00000000 */  nop
