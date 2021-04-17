.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D3040
/* D3C40 800D3040 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* D3C44 800D3044 3C0E8014 */  lui        $t6, %hi(D_80145890)
/* D3C48 800D3048 AFBF001C */  sw         $ra, 0x1c($sp)
/* D3C4C 800D304C 25CE5890 */  addiu      $t6, $t6, %lo(D_80145890)
/* D3C50 800D3050 240F0002 */  addiu      $t7, $zero, 2
/* D3C54 800D3054 AFA40060 */  sw         $a0, 0x60($sp)
/* D3C58 800D3058 AFA50064 */  sw         $a1, 0x64($sp)
/* D3C5C 800D305C AFA60068 */  sw         $a2, 0x68($sp)
/* D3C60 800D3060 AFA7006C */  sw         $a3, 0x6c($sp)
/* D3C64 800D3064 AFB00018 */  sw         $s0, 0x18($sp)
/* D3C68 800D3068 AFA0005C */  sw         $zero, 0x5c($sp)
/* D3C6C 800D306C AFAE0054 */  sw         $t6, 0x54($sp)
/* D3C70 800D3070 0C02FF20 */  jal        func_800BFC80
/* D3C74 800D3074 AFAF0028 */   sw        $t7, 0x28($sp)
/* D3C78 800D3078 24180002 */  addiu      $t8, $zero, 2
/* D3C7C 800D307C 3C018014 */  lui        $at, %hi(D_80145420)
/* D3C80 800D3080 A0385420 */  sb         $t8, %lo(D_80145420)($at)
/* D3C84 800D3084 8FA40064 */  lw         $a0, 0x64($sp)
/* D3C88 800D3088 0C034C97 */  jal        func_800D325C
/* D3C8C 800D308C 97A5006A */   lhu       $a1, 0x6a($sp)
/* D3C90 800D3090 3C058014 */  lui        $a1, %hi(D_80145890)
/* D3C94 800D3094 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* D3C98 800D3098 0C030F00 */  jal        func_800C3C00
/* D3C9C 800D309C 24040001 */   addiu     $a0, $zero, 1
/* D3CA0 800D30A0 AFA2005C */  sw         $v0, 0x5c($sp)
/* D3CA4 800D30A4 8FA40060 */  lw         $a0, 0x60($sp)
/* D3CA8 800D30A8 00002825 */  or         $a1, $zero, $zero
/* D3CAC 800D30AC 0C02F85C */  jal        func_800BE170
/* D3CB0 800D30B0 24060001 */   addiu     $a2, $zero, 1
.L800D30B4:
/* D3CB4 800D30B4 3C058014 */  lui        $a1, %hi(D_80145890)
/* D3CB8 800D30B8 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* D3CBC 800D30BC 0C030F00 */  jal        func_800C3C00
/* D3CC0 800D30C0 00002025 */   or        $a0, $zero, $zero
/* D3CC4 800D30C4 AFA2005C */  sw         $v0, 0x5c($sp)
/* D3CC8 800D30C8 8FA40060 */  lw         $a0, 0x60($sp)
/* D3CCC 800D30CC 00002825 */  or         $a1, $zero, $zero
/* D3CD0 800D30D0 0C02F85C */  jal        func_800BE170
/* D3CD4 800D30D4 24060001 */   addiu     $a2, $zero, 1
/* D3CD8 800D30D8 8FA80064 */  lw         $t0, 0x64($sp)
/* D3CDC 800D30DC 3C198014 */  lui        $t9, %hi(D_80145890)
/* D3CE0 800D30E0 27395890 */  addiu      $t9, $t9, %lo(D_80145890)
/* D3CE4 800D30E4 1100000C */  beqz       $t0, .L800D3118
/* D3CE8 800D30E8 AFB90054 */   sw        $t9, 0x54($sp)
/* D3CEC 800D30EC 1900000A */  blez       $t0, .L800D3118
/* D3CF0 800D30F0 AFA00058 */   sw        $zero, 0x58($sp)
.L800D30F4:
/* D3CF4 800D30F4 8FAB0058 */  lw         $t3, 0x58($sp)
/* D3CF8 800D30F8 8FAD0064 */  lw         $t5, 0x64($sp)
/* D3CFC 800D30FC 8FA90054 */  lw         $t1, 0x54($sp)
/* D3D00 800D3100 256C0001 */  addiu      $t4, $t3, 1
/* D3D04 800D3104 018D082A */  slt        $at, $t4, $t5
/* D3D08 800D3108 252A0001 */  addiu      $t2, $t1, 1
/* D3D0C 800D310C AFAC0058 */  sw         $t4, 0x58($sp)
/* D3D10 800D3110 1420FFF8 */  bnez       $at, .L800D30F4
/* D3D14 800D3114 AFAA0054 */   sw        $t2, 0x54($sp)
.L800D3118:
/* D3D18 800D3118 8FAF0054 */  lw         $t7, 0x54($sp)
/* D3D1C 800D311C 27AE002C */  addiu      $t6, $sp, 0x2c
/* D3D20 800D3120 25F90024 */  addiu      $t9, $t7, 0x24
.L800D3124:
/* D3D24 800D3124 89E10000 */  lwl        $at, ($t7)
/* D3D28 800D3128 99E10003 */  lwr        $at, 3($t7)
/* D3D2C 800D312C 25EF000C */  addiu      $t7, $t7, 0xc
/* D3D30 800D3130 25CE000C */  addiu      $t6, $t6, 0xc
/* D3D34 800D3134 ADC1FFF4 */  sw         $at, -0xc($t6)
/* D3D38 800D3138 89E1FFF8 */  lwl        $at, -8($t7)
/* D3D3C 800D313C 99E1FFFB */  lwr        $at, -5($t7)
/* D3D40 800D3140 ADC1FFF8 */  sw         $at, -8($t6)
/* D3D44 800D3144 89E1FFFC */  lwl        $at, -4($t7)
/* D3D48 800D3148 99E1FFFF */  lwr        $at, -1($t7)
/* D3D4C 800D314C 15F9FFF5 */  bne        $t7, $t9, .L800D3124
/* D3D50 800D3150 ADC1FFFC */   sw        $at, -4($t6)
/* D3D54 800D3154 89E10000 */  lwl        $at, ($t7)
/* D3D58 800D3158 99E10003 */  lwr        $at, 3($t7)
/* D3D5C 800D315C ADC10000 */  sw         $at, ($t6)
/* D3D60 800D3160 93A8002E */  lbu        $t0, 0x2e($sp)
/* D3D64 800D3164 310900C0 */  andi       $t1, $t0, 0xc0
/* D3D68 800D3168 00095103 */  sra        $t2, $t1, 4
/* D3D6C 800D316C 15400027 */  bnez       $t2, .L800D320C
/* D3D70 800D3170 AFAA005C */   sw        $t2, 0x5c($sp)
/* D3D74 800D3174 27A4002C */  addiu      $a0, $sp, 0x2c
/* D3D78 800D3178 0C033AF4 */  jal        func_800CEBD0
/* D3D7C 800D317C 24840006 */   addiu     $a0, $a0, 6
/* D3D80 800D3180 A3A20027 */  sb         $v0, 0x27($sp)
/* D3D84 800D3184 93AB0027 */  lbu        $t3, 0x27($sp)
/* D3D88 800D3188 93AC0052 */  lbu        $t4, 0x52($sp)
/* D3D8C 800D318C 116C000F */  beq        $t3, $t4, .L800D31CC
/* D3D90 800D3190 00000000 */   nop
/* D3D94 800D3194 8FA40060 */  lw         $a0, 0x60($sp)
/* D3D98 800D3198 0C0341F4 */  jal        func_800D07D0
/* D3D9C 800D319C 8FA50064 */   lw        $a1, 0x64($sp)
/* D3DA0 800D31A0 AFA2005C */  sw         $v0, 0x5c($sp)
/* D3DA4 800D31A4 8FAD005C */  lw         $t5, 0x5c($sp)
/* D3DA8 800D31A8 11A00005 */  beqz       $t5, .L800D31C0
/* D3DAC 800D31AC 00000000 */   nop
/* D3DB0 800D31B0 0C02FF31 */  jal        func_800BFCC4
/* D3DB4 800D31B4 00000000 */   nop
/* D3DB8 800D31B8 10000023 */  b          .L800D3248
/* D3DBC 800D31BC 8FA2005C */   lw        $v0, 0x5c($sp)
.L800D31C0:
/* D3DC0 800D31C0 24180004 */  addiu      $t8, $zero, 4
/* D3DC4 800D31C4 10000013 */  b          .L800D3214
/* D3DC8 800D31C8 AFB8005C */   sw        $t8, 0x5c($sp)
.L800D31CC:
/* D3DCC 800D31CC AFA00058 */  sw         $zero, 0x58($sp)
.L800D31D0:
/* D3DD0 800D31D0 8FB90058 */  lw         $t9, 0x58($sp)
/* D3DD4 800D31D4 8FAE006C */  lw         $t6, 0x6c($sp)
/* D3DD8 800D31D8 03B97821 */  addu       $t7, $sp, $t9
/* D3DDC 800D31DC 91EF0032 */  lbu        $t7, 0x32($t7)
/* D3DE0 800D31E0 A1CF0000 */  sb         $t7, ($t6)
/* D3DE4 800D31E4 8FAA0058 */  lw         $t2, 0x58($sp)
/* D3DE8 800D31E8 8FA8006C */  lw         $t0, 0x6c($sp)
/* D3DEC 800D31EC 254B0001 */  addiu      $t3, $t2, 1
/* D3DF0 800D31F0 29610020 */  slti       $at, $t3, 0x20
/* D3DF4 800D31F4 25090001 */  addiu      $t1, $t0, 1
/* D3DF8 800D31F8 AFAB0058 */  sw         $t3, 0x58($sp)
/* D3DFC 800D31FC 1420FFF4 */  bnez       $at, .L800D31D0
/* D3E00 800D3200 AFA9006C */   sw        $t1, 0x6c($sp)
/* D3E04 800D3204 10000003 */  b          .L800D3214
/* D3E08 800D3208 00000000 */   nop
.L800D320C:
/* D3E0C 800D320C 240C0001 */  addiu      $t4, $zero, 1
/* D3E10 800D3210 AFAC005C */  sw         $t4, 0x5c($sp)
.L800D3214:
/* D3E14 800D3214 8FAD005C */  lw         $t5, 0x5c($sp)
/* D3E18 800D3218 24010004 */  addiu      $at, $zero, 4
/* D3E1C 800D321C 15A10007 */  bne        $t5, $at, .L800D323C
/* D3E20 800D3220 00000000 */   nop
/* D3E24 800D3224 8FB80028 */  lw         $t8, 0x28($sp)
/* D3E28 800D3228 2B100000 */  slti       $s0, $t8, 0
/* D3E2C 800D322C 3A100001 */  xori       $s0, $s0, 1
/* D3E30 800D3230 2719FFFF */  addiu      $t9, $t8, -1
/* D3E34 800D3234 1600FF9F */  bnez       $s0, .L800D30B4
/* D3E38 800D3238 AFB90028 */   sw        $t9, 0x28($sp)
.L800D323C:
/* D3E3C 800D323C 0C02FF31 */  jal        func_800BFCC4
/* D3E40 800D3240 00000000 */   nop
/* D3E44 800D3244 8FA2005C */  lw         $v0, 0x5c($sp)
.L800D3248:
/* D3E48 800D3248 8FBF001C */  lw         $ra, 0x1c($sp)
/* D3E4C 800D324C 8FB00018 */  lw         $s0, 0x18($sp)
/* D3E50 800D3250 27BD0060 */  addiu      $sp, $sp, 0x60
/* D3E54 800D3254 03E00008 */  jr         $ra
/* D3E58 800D3258 00000000 */   nop

glabel func_800D325C
/* D3E5C 800D325C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D3E60 800D3260 3C0E8014 */  lui        $t6, %hi(D_80145890)
/* D3E64 800D3264 AFBF0014 */  sw         $ra, 0x14($sp)
/* D3E68 800D3268 AFA40048 */  sw         $a0, 0x48($sp)
/* D3E6C 800D326C AFA5004C */  sw         $a1, 0x4c($sp)
/* D3E70 800D3270 25CE5890 */  addiu      $t6, $t6, %lo(D_80145890)
/* D3E74 800D3274 240F0001 */  addiu      $t7, $zero, 1
/* D3E78 800D3278 3C018014 */  lui        $at, 0x8014
/* D3E7C 800D327C 241800FF */  addiu      $t8, $zero, 0xff
/* D3E80 800D3280 24190003 */  addiu      $t9, $zero, 3
/* D3E84 800D3284 24080021 */  addiu      $t0, $zero, 0x21
/* D3E88 800D3288 24090002 */  addiu      $t1, $zero, 2
/* D3E8C 800D328C AFAE0044 */  sw         $t6, 0x44($sp)
/* D3E90 800D3290 AC2F58CC */  sw         $t7, 0x58cc($at)
/* D3E94 800D3294 A3B8001C */  sb         $t8, 0x1c($sp)
/* D3E98 800D3298 A3B9001D */  sb         $t9, 0x1d($sp)
/* D3E9C 800D329C A3A8001E */  sb         $t0, 0x1e($sp)
/* D3EA0 800D32A0 A3A9001F */  sb         $t1, 0x1f($sp)
/* D3EA4 800D32A4 0C033AC8 */  jal        func_800CEB20
/* D3EA8 800D32A8 97A4004E */   lhu       $a0, 0x4e($sp)
/* D3EAC 800D32AC 97AA004E */  lhu        $t2, 0x4e($sp)
/* D3EB0 800D32B0 240D00FF */  addiu      $t5, $zero, 0xff
/* D3EB4 800D32B4 A3AD0042 */  sb         $t5, 0x42($sp)
/* D3EB8 800D32B8 000A5940 */  sll        $t3, $t2, 5
/* D3EBC 800D32BC 004B6025 */  or         $t4, $v0, $t3
/* D3EC0 800D32C0 A7AC0020 */  sh         $t4, 0x20($sp)
/* D3EC4 800D32C4 AFA00018 */  sw         $zero, 0x18($sp)
.L800D32C8:
/* D3EC8 800D32C8 8FAF0018 */  lw         $t7, 0x18($sp)
/* D3ECC 800D32CC 240E00FF */  addiu      $t6, $zero, 0xff
/* D3ED0 800D32D0 03AFC021 */  addu       $t8, $sp, $t7
/* D3ED4 800D32D4 A30E0022 */  sb         $t6, 0x22($t8)
/* D3ED8 800D32D8 8FB90018 */  lw         $t9, 0x18($sp)
/* D3EDC 800D32DC 27280001 */  addiu      $t0, $t9, 1
/* D3EE0 800D32E0 29010020 */  slti       $at, $t0, 0x20
/* D3EE4 800D32E4 1420FFF8 */  bnez       $at, .L800D32C8
/* D3EE8 800D32E8 AFA80018 */   sw        $t0, 0x18($sp)
/* D3EEC 800D32EC 8FA90048 */  lw         $t1, 0x48($sp)
/* D3EF0 800D32F0 1120000E */  beqz       $t1, .L800D332C
/* D3EF4 800D32F4 00000000 */   nop
/* D3EF8 800D32F8 1920000C */  blez       $t1, .L800D332C
/* D3EFC 800D32FC AFA00018 */   sw        $zero, 0x18($sp)
.L800D3300:
/* D3F00 800D3300 8FAA0044 */  lw         $t2, 0x44($sp)
/* D3F04 800D3304 A1400000 */  sb         $zero, ($t2)
/* D3F08 800D3308 8FAD0018 */  lw         $t5, 0x18($sp)
/* D3F0C 800D330C 8FAF0048 */  lw         $t7, 0x48($sp)
/* D3F10 800D3310 8FAB0044 */  lw         $t3, 0x44($sp)
/* D3F14 800D3314 25AE0001 */  addiu      $t6, $t5, 1
/* D3F18 800D3318 01CF082A */  slt        $at, $t6, $t7
/* D3F1C 800D331C 256C0001 */  addiu      $t4, $t3, 1
/* D3F20 800D3320 AFAE0018 */  sw         $t6, 0x18($sp)
/* D3F24 800D3324 1420FFF6 */  bnez       $at, .L800D3300
/* D3F28 800D3328 AFAC0044 */   sw        $t4, 0x44($sp)
.L800D332C:
/* D3F2C 800D332C 27B9001C */  addiu      $t9, $sp, 0x1c
/* D3F30 800D3330 27290024 */  addiu      $t1, $t9, 0x24
/* D3F34 800D3334 8FB80044 */  lw         $t8, 0x44($sp)
.L800D3338:
/* D3F38 800D3338 8F210000 */  lw         $at, ($t9)
/* D3F3C 800D333C 2739000C */  addiu      $t9, $t9, 0xc
/* D3F40 800D3340 2718000C */  addiu      $t8, $t8, 0xc
/* D3F44 800D3344 AB01FFF4 */  swl        $at, -0xc($t8)
/* D3F48 800D3348 BB01FFF7 */  swr        $at, -9($t8)
/* D3F4C 800D334C 8F21FFF8 */  lw         $at, -8($t9)
/* D3F50 800D3350 AB01FFF8 */  swl        $at, -8($t8)
/* D3F54 800D3354 BB01FFFB */  swr        $at, -5($t8)
/* D3F58 800D3358 8F21FFFC */  lw         $at, -4($t9)
/* D3F5C 800D335C AB01FFFC */  swl        $at, -4($t8)
/* D3F60 800D3360 1729FFF5 */  bne        $t9, $t1, .L800D3338
/* D3F64 800D3364 BB01FFFF */   swr       $at, -1($t8)
/* D3F68 800D3368 8F210000 */  lw         $at, ($t9)
/* D3F6C 800D336C 240C00FE */  addiu      $t4, $zero, 0xfe
/* D3F70 800D3370 AB010000 */  swl        $at, ($t8)
/* D3F74 800D3374 BB010003 */  swr        $at, 3($t8)
/* D3F78 800D3378 8FAA0044 */  lw         $t2, 0x44($sp)
/* D3F7C 800D337C 254B0028 */  addiu      $t3, $t2, 0x28
/* D3F80 800D3380 AFAB0044 */  sw         $t3, 0x44($sp)
/* D3F84 800D3384 A16C0000 */  sb         $t4, ($t3)
/* D3F88 800D3388 8FBF0014 */  lw         $ra, 0x14($sp)
/* D3F8C 800D338C 27BD0048 */  addiu      $sp, $sp, 0x48
/* D3F90 800D3390 03E00008 */  jr         $ra
/* D3F94 800D3394 00000000 */   nop
/* D3F98 800D3398 00000000 */  nop
/* D3F9C 800D339C 00000000 */  nop
