.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C3E20
/* C4A20 800C3E20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C4A24 800C3E24 AFA50024 */  sw         $a1, 0x24($sp)
/* C4A28 800C3E28 AFA7002C */  sw         $a3, 0x2c($sp)
/* C4A2C 800C3E2C 8FB8002C */  lw         $t8, 0x2c($sp)
/* C4A30 800C3E30 8FAE0024 */  lw         $t6, 0x24($sp)
/* C4A34 800C3E34 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4A38 800C3E38 AFA40020 */  sw         $a0, 0x20($sp)
/* C4A3C 800C3E3C AFA60028 */  sw         $a2, 0x28($sp)
/* C4A40 800C3E40 93190000 */  lbu        $t9, ($t8)
/* C4A44 800C3E44 91CF0000 */  lbu        $t7, ($t6)
/* C4A48 800C3E48 11F9000E */  beq        $t7, $t9, .L800C3E84
/* C4A4C 800C3E4C 00000000 */   nop
/* C4A50 800C3E50 A1D90000 */  sb         $t9, ($t6)
/* C4A54 800C3E54 8FA80024 */  lw         $t0, 0x24($sp)
/* C4A58 800C3E58 8FA50028 */  lw         $a1, 0x28($sp)
/* C4A5C 800C3E5C 8FA40020 */  lw         $a0, 0x20($sp)
/* C4A60 800C3E60 00003025 */  or         $a2, $zero, $zero
/* C4A64 800C3E64 0C031D47 */  jal        func_800C751C
/* C4A68 800C3E68 91070000 */   lbu       $a3, ($t0)
/* C4A6C 800C3E6C AFA2001C */  sw         $v0, 0x1c($sp)
/* C4A70 800C3E70 8FA9001C */  lw         $t1, 0x1c($sp)
/* C4A74 800C3E74 11200003 */  beqz       $t1, .L800C3E84
/* C4A78 800C3E78 00000000 */   nop
/* C4A7C 800C3E7C 10000023 */  b          .L800C3F0C
/* C4A80 800C3E80 01201025 */   or        $v0, $t1, $zero
.L800C3E84:
/* C4A84 800C3E84 8FAA002C */  lw         $t2, 0x2c($sp)
/* C4A88 800C3E88 8FAB0028 */  lw         $t3, 0x28($sp)
/* C4A8C 800C3E8C 914C0001 */  lbu        $t4, 1($t2)
/* C4A90 800C3E90 000C6840 */  sll        $t5, $t4, 1
/* C4A94 800C3E94 016DC021 */  addu       $t8, $t3, $t5
/* C4A98 800C3E98 97010000 */  lhu        $at, ($t8)
/* C4A9C 800C3E9C A5410000 */  sh         $at, ($t2)
/* C4AA0 800C3EA0 8FA90020 */  lw         $t1, 0x20($sp)
/* C4AA4 800C3EA4 8FAE002C */  lw         $t6, 0x2c($sp)
/* C4AA8 800C3EA8 8D2C0060 */  lw         $t4, 0x60($t1)
/* C4AAC 800C3EAC 95C80000 */  lhu        $t0, ($t6)
/* C4AB0 800C3EB0 010C082A */  slt        $at, $t0, $t4
/* C4AB4 800C3EB4 1420000B */  bnez       $at, .L800C3EE4
/* C4AB8 800C3EB8 00000000 */   nop
/* C4ABC 800C3EBC 91CB0000 */  lbu        $t3, ($t6)
/* C4AC0 800C3EC0 912D0064 */  lbu        $t5, 0x64($t1)
/* C4AC4 800C3EC4 016D082A */  slt        $at, $t3, $t5
/* C4AC8 800C3EC8 10200006 */  beqz       $at, .L800C3EE4
/* C4ACC 800C3ECC 00000000 */   nop
/* C4AD0 800C3ED0 91CF0001 */  lbu        $t7, 1($t6)
/* C4AD4 800C3ED4 19E00003 */  blez       $t7, .L800C3EE4
/* C4AD8 800C3ED8 29E10080 */   slti      $at, $t7, 0x80
/* C4ADC 800C3EDC 1420000A */  bnez       $at, .L800C3F08
/* C4AE0 800C3EE0 00000000 */   nop
.L800C3EE4:
/* C4AE4 800C3EE4 8FAA002C */  lw         $t2, 0x2c($sp)
/* C4AE8 800C3EE8 24010001 */  addiu      $at, $zero, 1
/* C4AEC 800C3EEC 95580000 */  lhu        $t8, ($t2)
/* C4AF0 800C3EF0 17010003 */  bne        $t8, $at, .L800C3F00
/* C4AF4 800C3EF4 00000000 */   nop
/* C4AF8 800C3EF8 10000004 */  b          .L800C3F0C
/* C4AFC 800C3EFC 24020005 */   addiu     $v0, $zero, 5
.L800C3F00:
/* C4B00 800C3F00 10000002 */  b          .L800C3F0C
/* C4B04 800C3F04 24020003 */   addiu     $v0, $zero, 3
.L800C3F08:
/* C4B08 800C3F08 00001025 */  or         $v0, $zero, $zero
.L800C3F0C:
/* C4B0C 800C3F0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C4B10 800C3F10 27BD0020 */  addiu      $sp, $sp, 0x20
/* C4B14 800C3F14 03E00008 */  jr         $ra
/* C4B18 800C3F18 00000000 */   nop

glabel func_800C3F1C
/* C4B1C 800C3F1C 27BDFEA8 */  addiu      $sp, $sp, -0x158
/* C4B20 800C3F20 AFA40158 */  sw         $a0, 0x158($sp)
/* C4B24 800C3F24 8FAF0158 */  lw         $t7, 0x158($sp)
/* C4B28 800C3F28 AFA5015C */  sw         $a1, 0x15c($sp)
/* C4B2C 800C3F2C AFBF001C */  sw         $ra, 0x1c($sp)
/* C4B30 800C3F30 AFA60160 */  sw         $a2, 0x160($sp)
/* C4B34 800C3F34 AFA70164 */  sw         $a3, 0x164($sp)
/* C4B38 800C3F38 8FAE015C */  lw         $t6, 0x15c($sp)
/* C4B3C 800C3F3C 8DF80050 */  lw         $t8, 0x50($t7)
/* C4B40 800C3F40 01D8082A */  slt        $at, $t6, $t8
/* C4B44 800C3F44 10200003 */  beqz       $at, .L800C3F54
/* C4B48 800C3F48 00000000 */   nop
/* C4B4C 800C3F4C 05C10003 */  bgez       $t6, .L800C3F5C
/* C4B50 800C3F50 00000000 */   nop
.L800C3F54:
/* C4B54 800C3F54 100000F5 */  b          .L800C432C
/* C4B58 800C3F58 24020005 */   addiu     $v0, $zero, 5
.L800C3F5C:
/* C4B5C 800C3F5C 8FB90168 */  lw         $t9, 0x168($sp)
/* C4B60 800C3F60 1B200004 */  blez       $t9, .L800C3F74
/* C4B64 800C3F64 00000000 */   nop
/* C4B68 800C3F68 3328001F */  andi       $t0, $t9, 0x1f
/* C4B6C 800C3F6C 11000003 */  beqz       $t0, .L800C3F7C
/* C4B70 800C3F70 00000000 */   nop
.L800C3F74:
/* C4B74 800C3F74 100000ED */  b          .L800C432C
/* C4B78 800C3F78 24020005 */   addiu     $v0, $zero, 5
.L800C3F7C:
/* C4B7C 800C3F7C 8FA90164 */  lw         $t1, 0x164($sp)
/* C4B80 800C3F80 05200004 */  bltz       $t1, .L800C3F94
/* C4B84 800C3F84 00000000 */   nop
/* C4B88 800C3F88 312A001F */  andi       $t2, $t1, 0x1f
/* C4B8C 800C3F8C 11400003 */  beqz       $t2, .L800C3F9C
/* C4B90 800C3F90 00000000 */   nop
.L800C3F94:
/* C4B94 800C3F94 100000E5 */  b          .L800C432C
/* C4B98 800C3F98 24020005 */   addiu     $v0, $zero, 5
.L800C3F9C:
/* C4B9C 800C3F9C 8FAB0158 */  lw         $t3, 0x158($sp)
/* C4BA0 800C3FA0 8D6C0000 */  lw         $t4, ($t3)
/* C4BA4 800C3FA4 318D0001 */  andi       $t5, $t4, 1
/* C4BA8 800C3FA8 15A00003 */  bnez       $t5, .L800C3FB8
/* C4BAC 800C3FAC 00000000 */   nop
/* C4BB0 800C3FB0 100000DE */  b          .L800C432C
/* C4BB4 800C3FB4 24020005 */   addiu     $v0, $zero, 5
.L800C3FB8:
/* C4BB8 800C3FB8 0C031D08 */  jal        func_800C7420
/* C4BBC 800C3FBC 8FA40158 */   lw        $a0, 0x158($sp)
/* C4BC0 800C3FC0 24010002 */  addiu      $at, $zero, 2
/* C4BC4 800C3FC4 14410003 */  bne        $v0, $at, .L800C3FD4
/* C4BC8 800C3FC8 00000000 */   nop
/* C4BCC 800C3FCC 100000D7 */  b          .L800C432C
/* C4BD0 800C3FD0 24020002 */   addiu     $v0, $zero, 2
.L800C3FD4:
/* C4BD4 800C3FD4 8FAF0158 */  lw         $t7, 0x158($sp)
/* C4BD8 800C3FD8 91F80065 */  lbu        $t8, 0x65($t7)
/* C4BDC 800C3FDC 1300000A */  beqz       $t8, .L800C4008
/* C4BE0 800C3FE0 00000000 */   nop
/* C4BE4 800C3FE4 A1E00065 */  sb         $zero, 0x65($t7)
/* C4BE8 800C3FE8 0C031E0F */  jal        func_800C783C
/* C4BEC 800C3FEC 8FA40158 */   lw        $a0, 0x158($sp)
/* C4BF0 800C3FF0 AFA20154 */  sw         $v0, 0x154($sp)
/* C4BF4 800C3FF4 8FAE0154 */  lw         $t6, 0x154($sp)
/* C4BF8 800C3FF8 11C00003 */  beqz       $t6, .L800C4008
/* C4BFC 800C3FFC 00000000 */   nop
/* C4C00 800C4000 100000CA */  b          .L800C432C
/* C4C04 800C4004 01C01025 */   or        $v0, $t6, $zero
.L800C4008:
/* C4C08 800C4008 8FB90158 */  lw         $t9, 0x158($sp)
/* C4C0C 800C400C 8FA9015C */  lw         $t1, 0x15c($sp)
/* C4C10 800C4010 27A70134 */  addiu      $a3, $sp, 0x134
/* C4C14 800C4014 8F28005C */  lw         $t0, 0x5c($t9)
/* C4C18 800C4018 8F240004 */  lw         $a0, 4($t9)
/* C4C1C 800C401C 8F250008 */  lw         $a1, 8($t9)
/* C4C20 800C4020 0C034C10 */  jal        func_800D3040
/* C4C24 800C4024 01093021 */   addu      $a2, $t0, $t1
/* C4C28 800C4028 AFA20154 */  sw         $v0, 0x154($sp)
/* C4C2C 800C402C 8FAA0154 */  lw         $t2, 0x154($sp)
/* C4C30 800C4030 11400003 */  beqz       $t2, .L800C4040
/* C4C34 800C4034 00000000 */   nop
/* C4C38 800C4038 100000BC */  b          .L800C432C
/* C4C3C 800C403C 01401025 */   or        $v0, $t2, $zero
.L800C4040:
/* C4C40 800C4040 97AB0138 */  lhu        $t3, 0x138($sp)
/* C4C44 800C4044 11600004 */  beqz       $t3, .L800C4058
/* C4C48 800C4048 00000000 */   nop
/* C4C4C 800C404C 8FAC0134 */  lw         $t4, 0x134($sp)
/* C4C50 800C4050 15800003 */  bnez       $t4, .L800C4060
/* C4C54 800C4054 00000000 */   nop
.L800C4058:
/* C4C58 800C4058 100000B4 */  b          .L800C432C
/* C4C5C 800C405C 24020005 */   addiu     $v0, $zero, 5
.L800C4060:
/* C4C60 800C4060 8FB80158 */  lw         $t8, 0x158($sp)
/* C4C64 800C4064 97AD013A */  lhu        $t5, 0x13a($sp)
/* C4C68 800C4068 8F0F0060 */  lw         $t7, 0x60($t8)
/* C4C6C 800C406C 01AF082A */  slt        $at, $t5, $t7
/* C4C70 800C4070 1420000B */  bnez       $at, .L800C40A0
/* C4C74 800C4074 00000000 */   nop
/* C4C78 800C4078 93AE013A */  lbu        $t6, 0x13a($sp)
/* C4C7C 800C407C 93190064 */  lbu        $t9, 0x64($t8)
/* C4C80 800C4080 01D9082A */  slt        $at, $t6, $t9
/* C4C84 800C4084 10200006 */  beqz       $at, .L800C40A0
/* C4C88 800C4088 00000000 */   nop
/* C4C8C 800C408C 93A8013B */  lbu        $t0, 0x13b($sp)
/* C4C90 800C4090 19000003 */  blez       $t0, .L800C40A0
/* C4C94 800C4094 29010080 */   slti      $at, $t0, 0x80
/* C4C98 800C4098 14200009 */  bnez       $at, .L800C40C0
/* C4C9C 800C409C 00000000 */   nop
.L800C40A0:
/* C4CA0 800C40A0 97A9013A */  lhu        $t1, 0x13a($sp)
/* C4CA4 800C40A4 24010001 */  addiu      $at, $zero, 1
/* C4CA8 800C40A8 15210003 */  bne        $t1, $at, .L800C40B8
/* C4CAC 800C40AC 00000000 */   nop
/* C4CB0 800C40B0 1000009E */  b          .L800C432C
/* C4CB4 800C40B4 24020005 */   addiu     $v0, $zero, 5
.L800C40B8:
/* C4CB8 800C40B8 1000009C */  b          .L800C432C
/* C4CBC 800C40BC 24020003 */   addiu     $v0, $zero, 3
.L800C40C0:
/* C4CC0 800C40C0 93AA0163 */  lbu        $t2, 0x163($sp)
/* C4CC4 800C40C4 15400007 */  bnez       $t2, .L800C40E4
/* C4CC8 800C40C8 00000000 */   nop
/* C4CCC 800C40CC 93AB013C */  lbu        $t3, 0x13c($sp)
/* C4CD0 800C40D0 316C0002 */  andi       $t4, $t3, 2
/* C4CD4 800C40D4 15800003 */  bnez       $t4, .L800C40E4
/* C4CD8 800C40D8 00000000 */   nop
/* C4CDC 800C40DC 10000093 */  b          .L800C432C
/* C4CE0 800C40E0 24020006 */   addiu     $v0, $zero, 6
.L800C40E4:
/* C4CE4 800C40E4 8FAF0164 */  lw         $t7, 0x164($sp)
/* C4CE8 800C40E8 97AE013A */  lhu        $t6, 0x13a($sp)
/* C4CEC 800C40EC 240D00FF */  addiu      $t5, $zero, 0xff
/* C4CF0 800C40F0 A3AD0023 */  sb         $t5, 0x23($sp)
/* C4CF4 800C40F4 05E10003 */  bgez       $t7, .L800C4104
/* C4CF8 800C40F8 000FC143 */   sra       $t8, $t7, 5
/* C4CFC 800C40FC 25E1001F */  addiu      $at, $t7, 0x1f
/* C4D00 800C4100 0001C143 */  sra        $t8, $at, 5
.L800C4104:
/* C4D04 800C4104 AFB8002C */  sw         $t8, 0x2c($sp)
/* C4D08 800C4108 8FB9002C */  lw         $t9, 0x2c($sp)
/* C4D0C 800C410C A7AE0030 */  sh         $t6, 0x30($sp)
/* C4D10 800C4110 2B210008 */  slti       $at, $t9, 8
/* C4D14 800C4114 14200013 */  bnez       $at, .L800C4164
/* C4D18 800C4118 00000000 */   nop
.L800C411C:
/* C4D1C 800C411C 8FA40158 */  lw         $a0, 0x158($sp)
/* C4D20 800C4120 27A50023 */  addiu      $a1, $sp, 0x23
/* C4D24 800C4124 27A60034 */  addiu      $a2, $sp, 0x34
/* C4D28 800C4128 0C030F88 */  jal        func_800C3E20
/* C4D2C 800C412C 27A70030 */   addiu     $a3, $sp, 0x30
/* C4D30 800C4130 AFA20154 */  sw         $v0, 0x154($sp)
/* C4D34 800C4134 8FA80154 */  lw         $t0, 0x154($sp)
/* C4D38 800C4138 11000003 */  beqz       $t0, .L800C4148
/* C4D3C 800C413C 00000000 */   nop
/* C4D40 800C4140 1000007A */  b          .L800C432C
/* C4D44 800C4144 01001025 */   or        $v0, $t0, $zero
.L800C4148:
/* C4D48 800C4148 8FA9002C */  lw         $t1, 0x2c($sp)
/* C4D4C 800C414C 252AFFF8 */  addiu      $t2, $t1, -8
/* C4D50 800C4150 AFAA002C */  sw         $t2, 0x2c($sp)
/* C4D54 800C4154 8FAB002C */  lw         $t3, 0x2c($sp)
/* C4D58 800C4158 29610008 */  slti       $at, $t3, 8
/* C4D5C 800C415C 1020FFEF */  beqz       $at, .L800C411C
/* C4D60 800C4160 00000000 */   nop
.L800C4164:
/* C4D64 800C4164 8FAC0168 */  lw         $t4, 0x168($sp)
/* C4D68 800C4168 8FAF016C */  lw         $t7, 0x16c($sp)
/* C4D6C 800C416C 05810003 */  bgez       $t4, .L800C417C
/* C4D70 800C4170 000C6943 */   sra       $t5, $t4, 5
/* C4D74 800C4174 2581001F */  addiu      $at, $t4, 0x1f
/* C4D78 800C4178 00016943 */  sra        $t5, $at, 5
.L800C417C:
/* C4D7C 800C417C AFAD0028 */  sw         $t5, 0x28($sp)
/* C4D80 800C4180 19A00046 */  blez       $t5, .L800C429C
/* C4D84 800C4184 AFAF0024 */   sw        $t7, 0x24($sp)
.L800C4188:
/* C4D88 800C4188 8FB8002C */  lw         $t8, 0x2c($sp)
/* C4D8C 800C418C 24010008 */  addiu      $at, $zero, 8
/* C4D90 800C4190 1701000D */  bne        $t8, $at, .L800C41C8
/* C4D94 800C4194 00000000 */   nop
/* C4D98 800C4198 8FA40158 */  lw         $a0, 0x158($sp)
/* C4D9C 800C419C 27A50023 */  addiu      $a1, $sp, 0x23
/* C4DA0 800C41A0 27A60034 */  addiu      $a2, $sp, 0x34
/* C4DA4 800C41A4 0C030F88 */  jal        func_800C3E20
/* C4DA8 800C41A8 27A70030 */   addiu     $a3, $sp, 0x30
/* C4DAC 800C41AC AFA20154 */  sw         $v0, 0x154($sp)
/* C4DB0 800C41B0 8FAE0154 */  lw         $t6, 0x154($sp)
/* C4DB4 800C41B4 11C00003 */  beqz       $t6, .L800C41C4
/* C4DB8 800C41B8 00000000 */   nop
/* C4DBC 800C41BC 1000005B */  b          .L800C432C
/* C4DC0 800C41C0 01C01025 */   or        $v0, $t6, $zero
.L800C41C4:
/* C4DC4 800C41C4 AFA0002C */  sw         $zero, 0x2c($sp)
.L800C41C8:
/* C4DC8 800C41C8 8FB90158 */  lw         $t9, 0x158($sp)
/* C4DCC 800C41CC 93A90030 */  lbu        $t1, 0x30($sp)
/* C4DD0 800C41D0 93280065 */  lbu        $t0, 0x65($t9)
/* C4DD4 800C41D4 1109000A */  beq        $t0, $t1, .L800C4200
/* C4DD8 800C41D8 00000000 */   nop
/* C4DDC 800C41DC A3290065 */  sb         $t1, 0x65($t9)
/* C4DE0 800C41E0 0C031E0F */  jal        func_800C783C
/* C4DE4 800C41E4 8FA40158 */   lw        $a0, 0x158($sp)
/* C4DE8 800C41E8 AFA20154 */  sw         $v0, 0x154($sp)
/* C4DEC 800C41EC 8FAA0154 */  lw         $t2, 0x154($sp)
/* C4DF0 800C41F0 11400003 */  beqz       $t2, .L800C4200
/* C4DF4 800C41F4 00000000 */   nop
/* C4DF8 800C41F8 1000004C */  b          .L800C432C
/* C4DFC 800C41FC 01401025 */   or        $v0, $t2, $zero
.L800C4200:
/* C4E00 800C4200 93AB0031 */  lbu        $t3, 0x31($sp)
/* C4E04 800C4204 8FAF002C */  lw         $t7, 0x2c($sp)
/* C4E08 800C4208 93B80163 */  lbu        $t8, 0x163($sp)
/* C4E0C 800C420C 000B60C0 */  sll        $t4, $t3, 3
/* C4E10 800C4210 018F6821 */  addu       $t5, $t4, $t7
/* C4E14 800C4214 17000009 */  bnez       $t8, .L800C423C
/* C4E18 800C4218 A7AD0020 */   sh        $t5, 0x20($sp)
/* C4E1C 800C421C 8FAE0158 */  lw         $t6, 0x158($sp)
/* C4E20 800C4220 31A6FFFF */  andi       $a2, $t5, 0xffff
/* C4E24 800C4224 8FA70024 */  lw         $a3, 0x24($sp)
/* C4E28 800C4228 8DC40004 */  lw         $a0, 4($t6)
/* C4E2C 800C422C 0C034C10 */  jal        func_800D3040
/* C4E30 800C4230 8DC50008 */   lw        $a1, 8($t6)
/* C4E34 800C4234 10000009 */  b          .L800C425C
/* C4E38 800C4238 AFA20154 */   sw        $v0, 0x154($sp)
.L800C423C:
/* C4E3C 800C423C 8FA80158 */  lw         $t0, 0x158($sp)
/* C4E40 800C4240 97A60020 */  lhu        $a2, 0x20($sp)
/* C4E44 800C4244 8FA70024 */  lw         $a3, 0x24($sp)
/* C4E48 800C4248 8D040004 */  lw         $a0, 4($t0)
/* C4E4C 800C424C 8D050008 */  lw         $a1, 8($t0)
/* C4E50 800C4250 0C034668 */  jal        func_800D19A0
/* C4E54 800C4254 AFA00010 */   sw        $zero, 0x10($sp)
/* C4E58 800C4258 AFA20154 */  sw         $v0, 0x154($sp)
.L800C425C:
/* C4E5C 800C425C 8FA90154 */  lw         $t1, 0x154($sp)
/* C4E60 800C4260 11200003 */  beqz       $t1, .L800C4270
/* C4E64 800C4264 00000000 */   nop
/* C4E68 800C4268 10000030 */  b          .L800C432C
/* C4E6C 800C426C 01201025 */   or        $v0, $t1, $zero
.L800C4270:
/* C4E70 800C4270 8FAF0028 */  lw         $t7, 0x28($sp)
/* C4E74 800C4274 8FB90024 */  lw         $t9, 0x24($sp)
/* C4E78 800C4278 8FAB002C */  lw         $t3, 0x2c($sp)
/* C4E7C 800C427C 25F8FFFF */  addiu      $t8, $t7, -1
/* C4E80 800C4280 AFB80028 */  sw         $t8, 0x28($sp)
/* C4E84 800C4284 8FAE0028 */  lw         $t6, 0x28($sp)
/* C4E88 800C4288 272A0020 */  addiu      $t2, $t9, 0x20
/* C4E8C 800C428C 256C0001 */  addiu      $t4, $t3, 1
/* C4E90 800C4290 AFAA0024 */  sw         $t2, 0x24($sp)
/* C4E94 800C4294 1DC0FFBC */  bgtz       $t6, .L800C4188
/* C4E98 800C4298 AFAC002C */   sw        $t4, 0x2c($sp)
.L800C429C:
/* C4E9C 800C429C 93AD0163 */  lbu        $t5, 0x163($sp)
/* C4EA0 800C42A0 24010001 */  addiu      $at, $zero, 1
/* C4EA4 800C42A4 15A10020 */  bne        $t5, $at, .L800C4328
/* C4EA8 800C42A8 00000000 */   nop
/* C4EAC 800C42AC 93A8013C */  lbu        $t0, 0x13c($sp)
/* C4EB0 800C42B0 31090002 */  andi       $t1, $t0, 2
/* C4EB4 800C42B4 1520001C */  bnez       $t1, .L800C4328
/* C4EB8 800C42B8 00000000 */   nop
/* C4EBC 800C42BC 8FAA0158 */  lw         $t2, 0x158($sp)
/* C4EC0 800C42C0 35190002 */  ori        $t9, $t0, 2
/* C4EC4 800C42C4 A3B9013C */  sb         $t9, 0x13c($sp)
/* C4EC8 800C42C8 A1400065 */  sb         $zero, 0x65($t2)
/* C4ECC 800C42CC 0C031E0F */  jal        func_800C783C
/* C4ED0 800C42D0 8FA40158 */   lw        $a0, 0x158($sp)
/* C4ED4 800C42D4 AFA20154 */  sw         $v0, 0x154($sp)
/* C4ED8 800C42D8 8FAB0154 */  lw         $t3, 0x154($sp)
/* C4EDC 800C42DC 11600003 */  beqz       $t3, .L800C42EC
/* C4EE0 800C42E0 00000000 */   nop
/* C4EE4 800C42E4 10000011 */  b          .L800C432C
/* C4EE8 800C42E8 01601025 */   or        $v0, $t3, $zero
.L800C42EC:
/* C4EEC 800C42EC 8FAC0158 */  lw         $t4, 0x158($sp)
/* C4EF0 800C42F0 8FB8015C */  lw         $t8, 0x15c($sp)
/* C4EF4 800C42F4 27A70134 */  addiu      $a3, $sp, 0x134
/* C4EF8 800C42F8 8D8F005C */  lw         $t7, 0x5c($t4)
/* C4EFC 800C42FC 8D840004 */  lw         $a0, 4($t4)
/* C4F00 800C4300 8D850008 */  lw         $a1, 8($t4)
/* C4F04 800C4304 AFA00010 */  sw         $zero, 0x10($sp)
/* C4F08 800C4308 0C034668 */  jal        func_800D19A0
/* C4F0C 800C430C 01F83021 */   addu      $a2, $t7, $t8
/* C4F10 800C4310 AFA20154 */  sw         $v0, 0x154($sp)
/* C4F14 800C4314 8FAE0154 */  lw         $t6, 0x154($sp)
/* C4F18 800C4318 11C00003 */  beqz       $t6, .L800C4328
/* C4F1C 800C431C 00000000 */   nop
/* C4F20 800C4320 10000002 */  b          .L800C432C
/* C4F24 800C4324 01C01025 */   or        $v0, $t6, $zero
.L800C4328:
/* C4F28 800C4328 00001025 */  or         $v0, $zero, $zero
.L800C432C:
/* C4F2C 800C432C 8FBF001C */  lw         $ra, 0x1c($sp)
/* C4F30 800C4330 27BD0158 */  addiu      $sp, $sp, 0x158
/* C4F34 800C4334 03E00008 */  jr         $ra
/* C4F38 800C4338 00000000 */   nop
/* C4F3C 800C433C 00000000 */  nop
