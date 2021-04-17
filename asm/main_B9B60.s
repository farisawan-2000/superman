.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B8F60
/* B9B60 800B8F60 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* B9B64 800B8F64 AFBF001C */  sw         $ra, 0x1c($sp)
/* B9B68 800B8F68 AFA40060 */  sw         $a0, 0x60($sp)
/* B9B6C 800B8F6C AFA50064 */  sw         $a1, 0x64($sp)
/* B9B70 800B8F70 AFA60068 */  sw         $a2, 0x68($sp)
/* B9B74 800B8F74 AFA7006C */  sw         $a3, 0x6c($sp)
/* B9B78 800B8F78 AFB00018 */  sw         $s0, 0x18($sp)
/* B9B7C 800B8F7C AFA0005C */  sw         $zero, 0x5c($sp)
/* B9B80 800B8F80 3C0E801A */  lui        $t6, %hi(D_801A2020)
/* B9B84 800B8F84 25CE2020 */  addiu      $t6, $t6, %lo(D_801A2020)
/* B9B88 800B8F88 AFAE0054 */  sw         $t6, 0x54($sp)
/* B9B8C 800B8F8C 240F0002 */  addiu      $t7, $zero, 2
/* B9B90 800B8F90 AFAF0028 */  sw         $t7, 0x28($sp)
/* B9B94 800B8F94 0C026612 */  jal        func_80099848
/* B9B98 800B8F98 00000000 */   nop
/* B9B9C 800B8F9C 24180002 */  addiu      $t8, $zero, 2
/* B9BA0 800B8FA0 3C01801A */  lui        $at, %hi(D_801A1B50)
/* B9BA4 800B8FA4 A0381B50 */  sb         $t8, %lo(D_801A1B50)($at)
/* B9BA8 800B8FA8 8FA40064 */  lw         $a0, 0x64($sp)
/* B9BAC 800B8FAC 0C02E468 */  jal        func_800B91A0
/* B9BB0 800B8FB0 97A5006A */   lhu       $a1, 0x6a($sp)
/* B9BB4 800B8FB4 3C05801A */  lui        $a1, %hi(D_801A2020)
/* B9BB8 800B8FB8 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* B9BBC 800B8FBC 0C027D70 */  jal        func_8009F5C0
/* B9BC0 800B8FC0 24040001 */   addiu     $a0, $zero, 1
/* B9BC4 800B8FC4 AFA2005C */  sw         $v0, 0x5c($sp)
/* B9BC8 800B8FC8 8FA40060 */  lw         $a0, 0x60($sp)
/* B9BCC 800B8FCC 00002825 */  or         $a1, $zero, $zero
/* B9BD0 800B8FD0 0C025D30 */  jal        func_800974C0
/* B9BD4 800B8FD4 24060001 */   addiu     $a2, $zero, 1
.L800B8FD8:
/* B9BD8 800B8FD8 3C05801A */  lui        $a1, %hi(D_801A2020)
/* B9BDC 800B8FDC 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* B9BE0 800B8FE0 0C027D70 */  jal        func_8009F5C0
/* B9BE4 800B8FE4 00002025 */   or        $a0, $zero, $zero
/* B9BE8 800B8FE8 AFA2005C */  sw         $v0, 0x5c($sp)
/* B9BEC 800B8FEC 8FA40060 */  lw         $a0, 0x60($sp)
/* B9BF0 800B8FF0 00002825 */  or         $a1, $zero, $zero
/* B9BF4 800B8FF4 0C025D30 */  jal        func_800974C0
/* B9BF8 800B8FF8 24060001 */   addiu     $a2, $zero, 1
/* B9BFC 800B8FFC 3C19801A */  lui        $t9, %hi(D_801A2020)
/* B9C00 800B9000 27392020 */  addiu      $t9, $t9, %lo(D_801A2020)
/* B9C04 800B9004 AFB90054 */  sw         $t9, 0x54($sp)
/* B9C08 800B9008 8FA80064 */  lw         $t0, 0x64($sp)
/* B9C0C 800B900C 1100000E */  beqz       $t0, .L800B9048
/* B9C10 800B9010 00000000 */   nop
/* B9C14 800B9014 8FA90064 */  lw         $t1, 0x64($sp)
/* B9C18 800B9018 AFA00058 */  sw         $zero, 0x58($sp)
/* B9C1C 800B901C 1920000A */  blez       $t1, .L800B9048
/* B9C20 800B9020 00000000 */   nop
.L800B9024:
/* B9C24 800B9024 8FAA0054 */  lw         $t2, 0x54($sp)
/* B9C28 800B9028 254B0001 */  addiu      $t3, $t2, 1
/* B9C2C 800B902C AFAB0054 */  sw         $t3, 0x54($sp)
/* B9C30 800B9030 8FAC0058 */  lw         $t4, 0x58($sp)
/* B9C34 800B9034 8FAE0064 */  lw         $t6, 0x64($sp)
/* B9C38 800B9038 258D0001 */  addiu      $t5, $t4, 1
/* B9C3C 800B903C 01AE082A */  slt        $at, $t5, $t6
/* B9C40 800B9040 1420FFF8 */  bnez       $at, .L800B9024
/* B9C44 800B9044 AFAD0058 */   sw        $t5, 0x58($sp)
.L800B9048:
/* B9C48 800B9048 8FB80054 */  lw         $t8, 0x54($sp)
/* B9C4C 800B904C 27AF002C */  addiu      $t7, $sp, 0x2c
/* B9C50 800B9050 27080024 */  addiu      $t0, $t8, 0x24
.L800B9054:
/* B9C54 800B9054 8B010000 */  lwl        $at, ($t8)
/* B9C58 800B9058 9B010003 */  lwr        $at, 3($t8)
/* B9C5C 800B905C 2718000C */  addiu      $t8, $t8, 0xc
/* B9C60 800B9060 25EF000C */  addiu      $t7, $t7, 0xc
/* B9C64 800B9064 ADE1FFF4 */  sw         $at, -0xc($t7)
/* B9C68 800B9068 8B01FFF8 */  lwl        $at, -8($t8)
/* B9C6C 800B906C 9B01FFFB */  lwr        $at, -5($t8)
/* B9C70 800B9070 ADE1FFF8 */  sw         $at, -8($t7)
/* B9C74 800B9074 8B01FFFC */  lwl        $at, -4($t8)
/* B9C78 800B9078 9B01FFFF */  lwr        $at, -1($t8)
/* B9C7C 800B907C 1708FFF5 */  bne        $t8, $t0, .L800B9054
/* B9C80 800B9080 ADE1FFFC */   sw        $at, -4($t7)
/* B9C84 800B9084 8B010000 */  lwl        $at, ($t8)
/* B9C88 800B9088 9B010003 */  lwr        $at, 3($t8)
/* B9C8C 800B908C ADE10000 */  sw         $at, ($t7)
/* B9C90 800B9090 93A9002E */  lbu        $t1, 0x2e($sp)
/* B9C94 800B9094 312A00C0 */  andi       $t2, $t1, 0xc0
/* B9C98 800B9098 000A5903 */  sra        $t3, $t2, 4
/* B9C9C 800B909C AFAB005C */  sw         $t3, 0x5c($sp)
/* B9CA0 800B90A0 8FAC005C */  lw         $t4, 0x5c($sp)
/* B9CA4 800B90A4 15800027 */  bnez       $t4, .L800B9144
/* B9CA8 800B90A8 00000000 */   nop
/* B9CAC 800B90AC 27A4002C */  addiu      $a0, $sp, 0x2c
/* B9CB0 800B90B0 0C02BDBC */  jal        func_800AF6F0
/* B9CB4 800B90B4 24840006 */   addiu     $a0, $a0, 6
/* B9CB8 800B90B8 A3A20027 */  sb         $v0, 0x27($sp)
/* B9CBC 800B90BC 93AD0027 */  lbu        $t5, 0x27($sp)
/* B9CC0 800B90C0 93AE0052 */  lbu        $t6, 0x52($sp)
/* B9CC4 800B90C4 11AE000F */  beq        $t5, $t6, .L800B9104
/* B9CC8 800B90C8 00000000 */   nop
/* B9CCC 800B90CC 8FA40060 */  lw         $a0, 0x60($sp)
/* B9CD0 800B90D0 0C02D5BC */  jal        func_800B56F0
/* B9CD4 800B90D4 8FA50064 */   lw        $a1, 0x64($sp)
/* B9CD8 800B90D8 AFA2005C */  sw         $v0, 0x5c($sp)
/* B9CDC 800B90DC 8FB9005C */  lw         $t9, 0x5c($sp)
/* B9CE0 800B90E0 13200005 */  beqz       $t9, .L800B90F8
/* B9CE4 800B90E4 00000000 */   nop
/* B9CE8 800B90E8 0C026625 */  jal        func_80099894
/* B9CEC 800B90EC 00000000 */   nop
/* B9CF0 800B90F0 10000026 */  b          .L800B918C
/* B9CF4 800B90F4 8FA2005C */   lw        $v0, 0x5c($sp)
.L800B90F8:
/* B9CF8 800B90F8 24080004 */  addiu      $t0, $zero, 4
/* B9CFC 800B90FC 1000000F */  b          .L800B913C
/* B9D00 800B9100 AFA8005C */   sw        $t0, 0x5c($sp)
.L800B9104:
/* B9D04 800B9104 AFA00058 */  sw         $zero, 0x58($sp)
.L800B9108:
/* B9D08 800B9108 8FB80058 */  lw         $t8, 0x58($sp)
/* B9D0C 800B910C 8FA9006C */  lw         $t1, 0x6c($sp)
/* B9D10 800B9110 03B87821 */  addu       $t7, $sp, $t8
/* B9D14 800B9114 91EF0032 */  lbu        $t7, 0x32($t7)
/* B9D18 800B9118 A12F0000 */  sb         $t7, ($t1)
/* B9D1C 800B911C 8FAA006C */  lw         $t2, 0x6c($sp)
/* B9D20 800B9120 254B0001 */  addiu      $t3, $t2, 1
/* B9D24 800B9124 AFAB006C */  sw         $t3, 0x6c($sp)
/* B9D28 800B9128 8FAC0058 */  lw         $t4, 0x58($sp)
/* B9D2C 800B912C 258D0001 */  addiu      $t5, $t4, 1
/* B9D30 800B9130 29A10020 */  slti       $at, $t5, 0x20
/* B9D34 800B9134 1420FFF4 */  bnez       $at, .L800B9108
/* B9D38 800B9138 AFAD0058 */   sw        $t5, 0x58($sp)
.L800B913C:
/* B9D3C 800B913C 10000003 */  b          .L800B914C
/* B9D40 800B9140 00000000 */   nop
.L800B9144:
/* B9D44 800B9144 240E0001 */  addiu      $t6, $zero, 1
/* B9D48 800B9148 AFAE005C */  sw         $t6, 0x5c($sp)
.L800B914C:
/* B9D4C 800B914C 8FB9005C */  lw         $t9, 0x5c($sp)
/* B9D50 800B9150 24010004 */  addiu      $at, $zero, 4
/* B9D54 800B9154 17210007 */  bne        $t9, $at, .L800B9174
/* B9D58 800B9158 00000000 */   nop
/* B9D5C 800B915C 8FA80028 */  lw         $t0, 0x28($sp)
/* B9D60 800B9160 29100000 */  slti       $s0, $t0, 0
/* B9D64 800B9164 3A100001 */  xori       $s0, $s0, 1
/* B9D68 800B9168 2518FFFF */  addiu      $t8, $t0, -1
/* B9D6C 800B916C 1600FF9A */  bnez       $s0, .L800B8FD8
/* B9D70 800B9170 AFB80028 */   sw        $t8, 0x28($sp)
.L800B9174:
/* B9D74 800B9174 0C026625 */  jal        func_80099894
/* B9D78 800B9178 00000000 */   nop
/* B9D7C 800B917C 10000003 */  b          .L800B918C
/* B9D80 800B9180 8FA2005C */   lw        $v0, 0x5c($sp)
/* B9D84 800B9184 10000001 */  b          .L800B918C
/* B9D88 800B9188 00000000 */   nop
.L800B918C:
/* B9D8C 800B918C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B9D90 800B9190 8FB00018 */  lw         $s0, 0x18($sp)
/* B9D94 800B9194 27BD0060 */  addiu      $sp, $sp, 0x60
/* B9D98 800B9198 03E00008 */  jr         $ra
/* B9D9C 800B919C 00000000 */   nop

glabel func_800B91A0
/* B9DA0 800B91A0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B9DA4 800B91A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9DA8 800B91A8 AFA40048 */  sw         $a0, 0x48($sp)
/* B9DAC 800B91AC AFA5004C */  sw         $a1, 0x4c($sp)
/* B9DB0 800B91B0 3C0E801A */  lui        $t6, %hi(D_801A2020)
/* B9DB4 800B91B4 25CE2020 */  addiu      $t6, $t6, %lo(D_801A2020)
/* B9DB8 800B91B8 AFAE0044 */  sw         $t6, 0x44($sp)
/* B9DBC 800B91BC 240F0001 */  addiu      $t7, $zero, 1
/* B9DC0 800B91C0 3C01801A */  lui        $at, %hi(D_801A205C)
/* B9DC4 800B91C4 AC2F205C */  sw         $t7, %lo(D_801A205C)($at)
/* B9DC8 800B91C8 241800FF */  addiu      $t8, $zero, 0xff
/* B9DCC 800B91CC A3B8001C */  sb         $t8, 0x1c($sp)
/* B9DD0 800B91D0 24190003 */  addiu      $t9, $zero, 3
/* B9DD4 800B91D4 A3B9001D */  sb         $t9, 0x1d($sp)
/* B9DD8 800B91D8 24080021 */  addiu      $t0, $zero, 0x21
/* B9DDC 800B91DC A3A8001E */  sb         $t0, 0x1e($sp)
/* B9DE0 800B91E0 24090002 */  addiu      $t1, $zero, 2
/* B9DE4 800B91E4 A3A9001F */  sb         $t1, 0x1f($sp)
/* B9DE8 800B91E8 0C02BD8C */  jal        func_800AF630
/* B9DEC 800B91EC 97A4004E */   lhu       $a0, 0x4e($sp)
/* B9DF0 800B91F0 97AA004E */  lhu        $t2, 0x4e($sp)
/* B9DF4 800B91F4 000A5940 */  sll        $t3, $t2, 5
/* B9DF8 800B91F8 004B6025 */  or         $t4, $v0, $t3
/* B9DFC 800B91FC A7AC0020 */  sh         $t4, 0x20($sp)
/* B9E00 800B9200 240D00FF */  addiu      $t5, $zero, 0xff
/* B9E04 800B9204 A3AD0042 */  sb         $t5, 0x42($sp)
/* B9E08 800B9208 AFA00018 */  sw         $zero, 0x18($sp)
.L800B920C:
/* B9E0C 800B920C 8FAF0018 */  lw         $t7, 0x18($sp)
/* B9E10 800B9210 240E00FF */  addiu      $t6, $zero, 0xff
/* B9E14 800B9214 03AFC021 */  addu       $t8, $sp, $t7
/* B9E18 800B9218 A30E0022 */  sb         $t6, 0x22($t8)
/* B9E1C 800B921C 8FB90018 */  lw         $t9, 0x18($sp)
/* B9E20 800B9220 27280001 */  addiu      $t0, $t9, 1
/* B9E24 800B9224 29010020 */  slti       $at, $t0, 0x20
/* B9E28 800B9228 1420FFF8 */  bnez       $at, .L800B920C
/* B9E2C 800B922C AFA80018 */   sw        $t0, 0x18($sp)
/* B9E30 800B9230 8FA90048 */  lw         $t1, 0x48($sp)
/* B9E34 800B9234 11200010 */  beqz       $t1, .L800B9278
/* B9E38 800B9238 00000000 */   nop
/* B9E3C 800B923C 8FAA0048 */  lw         $t2, 0x48($sp)
/* B9E40 800B9240 AFA00018 */  sw         $zero, 0x18($sp)
/* B9E44 800B9244 1940000C */  blez       $t2, .L800B9278
/* B9E48 800B9248 00000000 */   nop
.L800B924C:
/* B9E4C 800B924C 8FAB0044 */  lw         $t3, 0x44($sp)
/* B9E50 800B9250 A1600000 */  sb         $zero, ($t3)
/* B9E54 800B9254 8FAC0044 */  lw         $t4, 0x44($sp)
/* B9E58 800B9258 258D0001 */  addiu      $t5, $t4, 1
/* B9E5C 800B925C AFAD0044 */  sw         $t5, 0x44($sp)
/* B9E60 800B9260 8FAE0018 */  lw         $t6, 0x18($sp)
/* B9E64 800B9264 8FB80048 */  lw         $t8, 0x48($sp)
/* B9E68 800B9268 25CF0001 */  addiu      $t7, $t6, 1
/* B9E6C 800B926C 01F8082A */  slt        $at, $t7, $t8
/* B9E70 800B9270 1420FFF6 */  bnez       $at, .L800B924C
/* B9E74 800B9274 AFAF0018 */   sw        $t7, 0x18($sp)
.L800B9278:
/* B9E78 800B9278 27A8001C */  addiu      $t0, $sp, 0x1c
/* B9E7C 800B927C 250A0024 */  addiu      $t2, $t0, 0x24
/* B9E80 800B9280 8FB90044 */  lw         $t9, 0x44($sp)
.L800B9284:
/* B9E84 800B9284 8D010000 */  lw         $at, ($t0)
/* B9E88 800B9288 2508000C */  addiu      $t0, $t0, 0xc
/* B9E8C 800B928C 2739000C */  addiu      $t9, $t9, 0xc
/* B9E90 800B9290 AB21FFF4 */  swl        $at, -0xc($t9)
/* B9E94 800B9294 BB21FFF7 */  swr        $at, -9($t9)
/* B9E98 800B9298 8D01FFF8 */  lw         $at, -8($t0)
/* B9E9C 800B929C AB21FFF8 */  swl        $at, -8($t9)
/* B9EA0 800B92A0 BB21FFFB */  swr        $at, -5($t9)
/* B9EA4 800B92A4 8D01FFFC */  lw         $at, -4($t0)
/* B9EA8 800B92A8 AB21FFFC */  swl        $at, -4($t9)
/* B9EAC 800B92AC 150AFFF5 */  bne        $t0, $t2, .L800B9284
/* B9EB0 800B92B0 BB21FFFF */   swr       $at, -1($t9)
/* B9EB4 800B92B4 8D010000 */  lw         $at, ($t0)
/* B9EB8 800B92B8 AB210000 */  swl        $at, ($t9)
/* B9EBC 800B92BC BB210003 */  swr        $at, 3($t9)
/* B9EC0 800B92C0 8FAB0044 */  lw         $t3, 0x44($sp)
/* B9EC4 800B92C4 256C0028 */  addiu      $t4, $t3, 0x28
/* B9EC8 800B92C8 AFAC0044 */  sw         $t4, 0x44($sp)
/* B9ECC 800B92CC 8FAE0044 */  lw         $t6, 0x44($sp)
/* B9ED0 800B92D0 240D00FE */  addiu      $t5, $zero, 0xfe
/* B9ED4 800B92D4 A1CD0000 */  sb         $t5, ($t6)
/* B9ED8 800B92D8 10000001 */  b          .L800B92E0
/* B9EDC 800B92DC 00000000 */   nop
.L800B92E0:
/* B9EE0 800B92E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9EE4 800B92E4 27BD0048 */  addiu      $sp, $sp, 0x48
/* B9EE8 800B92E8 03E00008 */  jr         $ra
/* B9EEC 800B92EC 00000000 */   nop

glabel func_800B92F0
/* B9EF0 800B92F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B9EF4 800B92F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B9EF8 800B92F8 AFA40028 */  sw         $a0, 0x28($sp)
/* B9EFC 800B92FC AFB10018 */  sw         $s1, 0x18($sp)
/* B9F00 800B9300 AFB00014 */  sw         $s0, 0x14($sp)
/* B9F04 800B9304 0C02C0C8 */  jal        func_800B0320
/* B9F08 800B9308 00000000 */   nop
/* B9F0C 800B930C 00408025 */  or         $s0, $v0, $zero
/* B9F10 800B9310 8FAE0028 */  lw         $t6, 0x28($sp)
/* B9F14 800B9314 24010001 */  addiu      $at, $zero, 1
/* B9F18 800B9318 95D10010 */  lhu        $s1, 0x10($t6)
/* B9F1C 800B931C 1221000F */  beq        $s1, $at, .L800B935C
/* B9F20 800B9320 00000000 */   nop
/* B9F24 800B9324 24010008 */  addiu      $at, $zero, 8
/* B9F28 800B9328 12210003 */  beq        $s1, $at, .L800B9338
/* B9F2C 800B932C 00000000 */   nop
/* B9F30 800B9330 1000002C */  b          .L800B93E4
/* B9F34 800B9334 00000000 */   nop
.L800B9338:
/* B9F38 800B9338 8FB80028 */  lw         $t8, 0x28($sp)
/* B9F3C 800B933C 240F0002 */  addiu      $t7, $zero, 2
/* B9F40 800B9340 A70F0010 */  sh         $t7, 0x10($t8)
/* B9F44 800B9344 3C04800D */  lui        $a0, %hi(D_800CC258)
/* B9F48 800B9348 2484C258 */  addiu      $a0, $a0, %lo(D_800CC258)
/* B9F4C 800B934C 0C0261D2 */  jal        func_80098748
/* B9F50 800B9350 8FA50028 */   lw        $a1, 0x28($sp)
/* B9F54 800B9354 1000002A */  b          .L800B9400
/* B9F58 800B9358 00000000 */   nop
.L800B935C:
/* B9F5C 800B935C 8FB90028 */  lw         $t9, 0x28($sp)
/* B9F60 800B9360 8F280008 */  lw         $t0, 8($t9)
/* B9F64 800B9364 11000005 */  beqz       $t0, .L800B937C
/* B9F68 800B9368 00000000 */   nop
/* B9F6C 800B936C 3C09800D */  lui        $t1, %hi(D_800CC258)
/* B9F70 800B9370 2529C258 */  addiu      $t1, $t1, %lo(D_800CC258)
/* B9F74 800B9374 1509000A */  bne        $t0, $t1, .L800B93A0
/* B9F78 800B9378 00000000 */   nop
.L800B937C:
/* B9F7C 800B937C 8FAB0028 */  lw         $t3, 0x28($sp)
/* B9F80 800B9380 240A0002 */  addiu      $t2, $zero, 2
/* B9F84 800B9384 A56A0010 */  sh         $t2, 0x10($t3)
/* B9F88 800B9388 3C04800D */  lui        $a0, %hi(D_800CC258)
/* B9F8C 800B938C 2484C258 */  addiu      $a0, $a0, %lo(D_800CC258)
/* B9F90 800B9390 0C0261D2 */  jal        func_80098748
/* B9F94 800B9394 8FA50028 */   lw        $a1, 0x28($sp)
/* B9F98 800B9398 10000010 */  b          .L800B93DC
/* B9F9C 800B939C 00000000 */   nop
.L800B93A0:
/* B9FA0 800B93A0 8FAD0028 */  lw         $t5, 0x28($sp)
/* B9FA4 800B93A4 240C0008 */  addiu      $t4, $zero, 8
/* B9FA8 800B93A8 A5AC0010 */  sh         $t4, 0x10($t5)
/* B9FAC 800B93AC 8FAE0028 */  lw         $t6, 0x28($sp)
/* B9FB0 800B93B0 8DC40008 */  lw         $a0, 8($t6)
/* B9FB4 800B93B4 0C0261D2 */  jal        func_80098748
/* B9FB8 800B93B8 01C02825 */   or        $a1, $t6, $zero
/* B9FBC 800B93BC 8FAF0028 */  lw         $t7, 0x28($sp)
/* B9FC0 800B93C0 0C0261E5 */  jal        func_80098794
/* B9FC4 800B93C4 8DE40008 */   lw        $a0, 8($t7)
/* B9FC8 800B93C8 00408825 */  or         $s1, $v0, $zero
/* B9FCC 800B93CC 3C04800D */  lui        $a0, %hi(D_800CC258)
/* B9FD0 800B93D0 2484C258 */  addiu      $a0, $a0, %lo(D_800CC258)
/* B9FD4 800B93D4 0C0261D2 */  jal        func_80098748
/* B9FD8 800B93D8 02202825 */   or        $a1, $s1, $zero
.L800B93DC:
/* B9FDC 800B93DC 10000008 */  b          .L800B9400
/* B9FE0 800B93E0 00000000 */   nop
.L800B93E4:
/* B9FE4 800B93E4 24040003 */  addiu      $a0, $zero, 3
/* B9FE8 800B93E8 0C02B5EC */  jal        func_800AD7B0
/* B9FEC 800B93EC 00002825 */   or        $a1, $zero, $zero
/* B9FF0 800B93F0 0C02C0D0 */  jal        func_800B0340
/* B9FF4 800B93F4 02002025 */   or        $a0, $s0, $zero
/* B9FF8 800B93F8 1000001D */  b          .L800B9470
/* B9FFC 800B93FC 00000000 */   nop
.L800B9400:
/* BA000 800B9400 3C18800D */  lui        $t8, %hi(D_800CC260)
/* BA004 800B9404 8F18C260 */  lw         $t8, %lo(D_800CC260)($t8)
/* BA008 800B9408 17000005 */  bnez       $t8, .L800B9420
/* BA00C 800B940C 00000000 */   nop
/* BA010 800B9410 0C0261EB */  jal        func_800987AC
/* BA014 800B9414 00000000 */   nop
/* BA018 800B9418 10000011 */  b          .L800B9460
/* BA01C 800B941C 00000000 */   nop
.L800B9420:
/* BA020 800B9420 3C19800D */  lui        $t9, %hi(D_800CC260)
/* BA024 800B9424 3C09800D */  lui        $t1, %hi(D_800CC258)
/* BA028 800B9428 8D29C258 */  lw         $t1, %lo(D_800CC258)($t1)
/* BA02C 800B942C 8F39C260 */  lw         $t9, %lo(D_800CC260)($t9)
/* BA030 800B9430 8D2A0004 */  lw         $t2, 4($t1)
/* BA034 800B9434 8F280004 */  lw         $t0, 4($t9)
/* BA038 800B9438 010A082A */  slt        $at, $t0, $t2
/* BA03C 800B943C 10200008 */  beqz       $at, .L800B9460
/* BA040 800B9440 00000000 */   nop
/* BA044 800B9444 3C0C800D */  lui        $t4, %hi(D_800CC260)
/* BA048 800B9448 8D8CC260 */  lw         $t4, %lo(D_800CC260)($t4)
/* BA04C 800B944C 240B0002 */  addiu      $t3, $zero, 2
/* BA050 800B9450 A58B0010 */  sh         $t3, 0x10($t4)
/* BA054 800B9454 3C04800D */  lui        $a0, %hi(D_800CC258)
/* BA058 800B9458 0C02618F */  jal        func_8009863C
/* BA05C 800B945C 2484C258 */   addiu     $a0, $a0, %lo(D_800CC258)
.L800B9460:
/* BA060 800B9460 0C02C0D0 */  jal        func_800B0340
/* BA064 800B9464 02002025 */   or        $a0, $s0, $zero
/* BA068 800B9468 10000001 */  b          .L800B9470
/* BA06C 800B946C 00000000 */   nop
.L800B9470:
/* BA070 800B9470 8FBF001C */  lw         $ra, 0x1c($sp)
/* BA074 800B9474 8FB00014 */  lw         $s0, 0x14($sp)
/* BA078 800B9478 8FB10018 */  lw         $s1, 0x18($sp)
/* BA07C 800B947C 03E00008 */  jr         $ra
/* BA080 800B9480 27BD0028 */   addiu     $sp, $sp, 0x28
/* BA084 800B9484 00000000 */  nop
/* BA088 800B9488 00000000 */  nop
/* BA08C 800B948C 00000000 */  nop
