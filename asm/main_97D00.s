.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80097100
/* 97D00 80097100 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 97D04 80097104 AFBF0024 */  sw         $ra, 0x24($sp)
/* 97D08 80097108 AFA40038 */  sw         $a0, 0x38($sp)
/* 97D0C 8009710C AFA5003C */  sw         $a1, 0x3c($sp)
/* 97D10 80097110 AFA60040 */  sw         $a2, 0x40($sp)
/* 97D14 80097114 AFB20020 */  sw         $s2, 0x20($sp)
/* 97D18 80097118 AFB1001C */  sw         $s1, 0x1c($sp)
/* 97D1C 8009711C AFB00018 */  sw         $s0, 0x18($sp)
/* 97D20 80097120 8FAE0040 */  lw         $t6, 0x40($sp)
/* 97D24 80097124 11C0000A */  beqz       $t6, .L80097150
/* 97D28 80097128 00000000 */   nop
/* 97D2C 8009712C 24010001 */  addiu      $at, $zero, 1
/* 97D30 80097130 11C10007 */  beq        $t6, $at, .L80097150
/* 97D34 80097134 00000000 */   nop
/* 97D38 80097138 24040006 */  addiu      $a0, $zero, 6
/* 97D3C 8009713C 24050001 */  addiu      $a1, $zero, 1
/* 97D40 80097140 0C02B5EC */  jal        func_800AD7B0
/* 97D44 80097144 8FA60040 */   lw        $a2, 0x40($sp)
/* 97D48 80097148 1000004B */  b          .L80097278
/* 97D4C 8009714C 2402FFFF */   addiu     $v0, $zero, -1
.L80097150:
/* 97D50 80097150 0C02C0C8 */  jal        func_800B0320
/* 97D54 80097154 00000000 */   nop
/* 97D58 80097158 00408025 */  or         $s0, $v0, $zero
/* 97D5C 8009715C 8FAF0038 */  lw         $t7, 0x38($sp)
/* 97D60 80097160 8DF80008 */  lw         $t8, 8($t7)
/* 97D64 80097164 8DF90010 */  lw         $t9, 0x10($t7)
/* 97D68 80097168 0319082A */  slt        $at, $t8, $t9
/* 97D6C 8009716C 14200018 */  bnez       $at, .L800971D0
/* 97D70 80097170 00000000 */   nop
.L80097174:
/* 97D74 80097174 8FA80040 */  lw         $t0, 0x40($sp)
/* 97D78 80097178 24010001 */  addiu      $at, $zero, 1
/* 97D7C 8009717C 1501000A */  bne        $t0, $at, .L800971A8
/* 97D80 80097180 00000000 */   nop
/* 97D84 80097184 3C0A800D */  lui        $t2, %hi(D_800CC260)
/* 97D88 80097188 8D4AC260 */  lw         $t2, %lo(D_800CC260)($t2)
/* 97D8C 8009718C 24090008 */  addiu      $t1, $zero, 8
/* 97D90 80097190 A5490010 */  sh         $t1, 0x10($t2)
/* 97D94 80097194 8FA40038 */  lw         $a0, 0x38($sp)
/* 97D98 80097198 0C02618F */  jal        func_8009863C
/* 97D9C 8009719C 24840004 */   addiu     $a0, $a0, 4
/* 97DA0 800971A0 10000005 */  b          .L800971B8
/* 97DA4 800971A4 00000000 */   nop
.L800971A8:
/* 97DA8 800971A8 0C02C0D0 */  jal        func_800B0340
/* 97DAC 800971AC 02002025 */   or        $a0, $s0, $zero
/* 97DB0 800971B0 10000031 */  b          .L80097278
/* 97DB4 800971B4 2402FFFF */   addiu     $v0, $zero, -1
.L800971B8:
/* 97DB8 800971B8 8FAB0038 */  lw         $t3, 0x38($sp)
/* 97DBC 800971BC 8D6C0008 */  lw         $t4, 8($t3)
/* 97DC0 800971C0 8D6D0010 */  lw         $t5, 0x10($t3)
/* 97DC4 800971C4 018D082A */  slt        $at, $t4, $t5
/* 97DC8 800971C8 1020FFEA */  beqz       $at, .L80097174
/* 97DCC 800971CC 00000000 */   nop
.L800971D0:
/* 97DD0 800971D0 8FAE0038 */  lw         $t6, 0x38($sp)
/* 97DD4 800971D4 8DCF000C */  lw         $t7, 0xc($t6)
/* 97DD8 800971D8 8DD80008 */  lw         $t8, 8($t6)
/* 97DDC 800971DC 8DC80010 */  lw         $t0, 0x10($t6)
/* 97DE0 800971E0 01F8C821 */  addu       $t9, $t7, $t8
/* 97DE4 800971E4 0328001A */  div        $zero, $t9, $t0
/* 97DE8 800971E8 00008810 */  mfhi       $s1
/* 97DEC 800971EC 15000002 */  bnez       $t0, .L800971F8
/* 97DF0 800971F0 00000000 */   nop
/* 97DF4 800971F4 0007000D */  break      7
.L800971F8:
/* 97DF8 800971F8 2401FFFF */   addiu     $at, $zero, -1
/* 97DFC 800971FC 15010004 */  bne        $t0, $at, .L80097210
/* 97E00 80097200 3C018000 */   lui       $at, 0x8000
/* 97E04 80097204 17210002 */  bne        $t9, $at, .L80097210
/* 97E08 80097208 00000000 */   nop
/* 97E0C 8009720C 0006000D */  break      6
.L80097210:
/* 97E10 80097210 8FAA0038 */   lw        $t2, 0x38($sp)
/* 97E14 80097214 8FA9003C */  lw         $t1, 0x3c($sp)
/* 97E18 80097218 00116080 */  sll        $t4, $s1, 2
/* 97E1C 8009721C 8D4B0014 */  lw         $t3, 0x14($t2)
/* 97E20 80097220 016C6821 */  addu       $t5, $t3, $t4
/* 97E24 80097224 ADA90000 */  sw         $t1, ($t5)
/* 97E28 80097228 8FAF0038 */  lw         $t7, 0x38($sp)
/* 97E2C 8009722C 8DF80008 */  lw         $t8, 8($t7)
/* 97E30 80097230 270E0001 */  addiu      $t6, $t8, 1
/* 97E34 80097234 ADEE0008 */  sw         $t6, 8($t7)
/* 97E38 80097238 8FB90038 */  lw         $t9, 0x38($sp)
/* 97E3C 8009723C 8F280000 */  lw         $t0, ($t9)
/* 97E40 80097240 8D0A0000 */  lw         $t2, ($t0)
/* 97E44 80097244 11400006 */  beqz       $t2, .L80097260
/* 97E48 80097248 00000000 */   nop
/* 97E4C 8009724C 0C0261E5 */  jal        func_80098794
/* 97E50 80097250 8FA40038 */   lw        $a0, 0x38($sp)
/* 97E54 80097254 00409025 */  or         $s2, $v0, $zero
/* 97E58 80097258 0C02E4BC */  jal        func_800B92F0
/* 97E5C 8009725C 02402025 */   or        $a0, $s2, $zero
.L80097260:
/* 97E60 80097260 0C02C0D0 */  jal        func_800B0340
/* 97E64 80097264 02002025 */   or        $a0, $s0, $zero
/* 97E68 80097268 10000003 */  b          .L80097278
/* 97E6C 8009726C 00001025 */   or        $v0, $zero, $zero
/* 97E70 80097270 10000001 */  b          .L80097278
/* 97E74 80097274 00000000 */   nop
.L80097278:
/* 97E78 80097278 8FBF0024 */  lw         $ra, 0x24($sp)
/* 97E7C 8009727C 8FB00018 */  lw         $s0, 0x18($sp)
/* 97E80 80097280 8FB1001C */  lw         $s1, 0x1c($sp)
/* 97E84 80097284 8FB20020 */  lw         $s2, 0x20($sp)
/* 97E88 80097288 03E00008 */  jr         $ra
/* 97E8C 8009728C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80097290
/* 97E90 80097290 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 97E94 80097294 AFBF0014 */  sw         $ra, 0x14($sp)
/* 97E98 80097298 AFA40130 */  sw         $a0, 0x130($sp)
/* 97E9C 8009729C AFA50134 */  sw         $a1, 0x134($sp)
/* 97EA0 800972A0 AFA00128 */  sw         $zero, 0x128($sp)
/* 97EA4 800972A4 AFA00024 */  sw         $zero, 0x24($sp)
/* 97EA8 800972A8 8FAE0130 */  lw         $t6, 0x130($sp)
/* 97EAC 800972AC 8DCF0000 */  lw         $t7, ($t6)
/* 97EB0 800972B0 31F80001 */  andi       $t8, $t7, 1
/* 97EB4 800972B4 17000003 */  bnez       $t8, .L800972C4
/* 97EB8 800972B8 00000000 */   nop
/* 97EBC 800972BC 10000046 */  b          .L800973D8
/* 97EC0 800972C0 24020005 */   addiu     $v0, $zero, 5
.L800972C4:
/* 97EC4 800972C4 0C0290BF */  jal        func_800A42FC
/* 97EC8 800972C8 8FA40130 */   lw        $a0, 0x130($sp)
/* 97ECC 800972CC 24010002 */  addiu      $at, $zero, 2
/* 97ED0 800972D0 14410003 */  bne        $v0, $at, .L800972E0
/* 97ED4 800972D4 00000000 */   nop
/* 97ED8 800972D8 1000003F */  b          .L800973D8
/* 97EDC 800972DC 24020002 */   addiu     $v0, $zero, 2
.L800972E0:
/* 97EE0 800972E0 8FB90130 */  lw         $t9, 0x130($sp)
/* 97EE4 800972E4 A3A00023 */  sb         $zero, 0x23($sp)
/* 97EE8 800972E8 93280064 */  lbu        $t0, 0x64($t9)
/* 97EEC 800972EC 19000031 */  blez       $t0, .L800973B4
/* 97EF0 800972F0 00000000 */   nop
.L800972F4:
/* 97EF4 800972F4 8FA40130 */  lw         $a0, 0x130($sp)
/* 97EF8 800972F8 27A50028 */  addiu      $a1, $sp, 0x28
/* 97EFC 800972FC 00003025 */  or         $a2, $zero, $zero
/* 97F00 80097300 0C029104 */  jal        func_800A4410
/* 97F04 80097304 93A70023 */   lbu       $a3, 0x23($sp)
/* 97F08 80097308 AFA20024 */  sw         $v0, 0x24($sp)
/* 97F0C 8009730C 8FA90024 */  lw         $t1, 0x24($sp)
/* 97F10 80097310 11200003 */  beqz       $t1, .L80097320
/* 97F14 80097314 00000000 */   nop
/* 97F18 80097318 1000002F */  b          .L800973D8
/* 97F1C 8009731C 8FA20024 */   lw        $v0, 0x24($sp)
.L80097320:
/* 97F20 80097320 93AA0023 */  lbu        $t2, 0x23($sp)
/* 97F24 80097324 19400004 */  blez       $t2, .L80097338
/* 97F28 80097328 00000000 */   nop
/* 97F2C 8009732C 240B0001 */  addiu      $t3, $zero, 1
/* 97F30 80097330 10000004 */  b          .L80097344
/* 97F34 80097334 AFAB001C */   sw        $t3, 0x1c($sp)
.L80097338:
/* 97F38 80097338 8FAC0130 */  lw         $t4, 0x130($sp)
/* 97F3C 8009733C 8D8D0060 */  lw         $t5, 0x60($t4)
/* 97F40 80097340 AFAD001C */  sw         $t5, 0x1c($sp)
.L80097344:
/* 97F44 80097344 8FAE001C */  lw         $t6, 0x1c($sp)
/* 97F48 80097348 29C10080 */  slti       $at, $t6, 0x80
/* 97F4C 8009734C 10200010 */  beqz       $at, .L80097390
/* 97F50 80097350 AFAE012C */   sw        $t6, 0x12c($sp)
.L80097354:
/* 97F54 80097354 8FAF012C */  lw         $t7, 0x12c($sp)
/* 97F58 80097358 24010003 */  addiu      $at, $zero, 3
/* 97F5C 8009735C 000FC040 */  sll        $t8, $t7, 1
/* 97F60 80097360 03B8C821 */  addu       $t9, $sp, $t8
/* 97F64 80097364 97390028 */  lhu        $t9, 0x28($t9)
/* 97F68 80097368 17210004 */  bne        $t9, $at, .L8009737C
/* 97F6C 8009736C 00000000 */   nop
/* 97F70 80097370 8FA80128 */  lw         $t0, 0x128($sp)
/* 97F74 80097374 25090001 */  addiu      $t1, $t0, 1
/* 97F78 80097378 AFA90128 */  sw         $t1, 0x128($sp)
.L8009737C:
/* 97F7C 8009737C 8FAA012C */  lw         $t2, 0x12c($sp)
/* 97F80 80097380 254B0001 */  addiu      $t3, $t2, 1
/* 97F84 80097384 29610080 */  slti       $at, $t3, 0x80
/* 97F88 80097388 1420FFF2 */  bnez       $at, .L80097354
/* 97F8C 8009738C AFAB012C */   sw        $t3, 0x12c($sp)
.L80097390:
/* 97F90 80097390 93AC0023 */  lbu        $t4, 0x23($sp)
/* 97F94 80097394 8FAF0130 */  lw         $t7, 0x130($sp)
/* 97F98 80097398 258D0001 */  addiu      $t5, $t4, 1
/* 97F9C 8009739C A3AD0023 */  sb         $t5, 0x23($sp)
/* 97FA0 800973A0 91F80064 */  lbu        $t8, 0x64($t7)
/* 97FA4 800973A4 31AE00FF */  andi       $t6, $t5, 0xff
/* 97FA8 800973A8 01D8082A */  slt        $at, $t6, $t8
/* 97FAC 800973AC 1420FFD1 */  bnez       $at, .L800972F4
/* 97FB0 800973B0 00000000 */   nop
.L800973B4:
/* 97FB4 800973B4 8FB90128 */  lw         $t9, 0x128($sp)
/* 97FB8 800973B8 8FAA0134 */  lw         $t2, 0x134($sp)
/* 97FBC 800973BC 001940C0 */  sll        $t0, $t9, 3
/* 97FC0 800973C0 00084940 */  sll        $t1, $t0, 5
/* 97FC4 800973C4 AD490000 */  sw         $t1, ($t2)
/* 97FC8 800973C8 10000003 */  b          .L800973D8
/* 97FCC 800973CC 00001025 */   or        $v0, $zero, $zero
/* 97FD0 800973D0 10000001 */  b          .L800973D8
/* 97FD4 800973D4 00000000 */   nop
.L800973D8:
/* 97FD8 800973D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 97FDC 800973DC 27BD0130 */  addiu      $sp, $sp, 0x130
/* 97FE0 800973E0 03E00008 */  jr         $ra
/* 97FE4 800973E4 00000000 */   nop
/* 97FE8 800973E8 00000000 */  nop
/* 97FEC 800973EC 00000000 */  nop