.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A0EE0
/* A1AE0 800A0EE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A1AE4 800A0EE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1AE8 800A0EE8 AFA40038 */  sw         $a0, 0x38($sp)
/* A1AEC 800A0EEC AFA5003C */  sw         $a1, 0x3c($sp)
/* A1AF0 800A0EF0 AFA60040 */  sw         $a2, 0x40($sp)
/* A1AF4 800A0EF4 AFA70044 */  sw         $a3, 0x44($sp)
/* A1AF8 800A0EF8 0C028116 */  jal        func_800A0458
/* A1AFC 800A0EFC 8FA40038 */   lw        $a0, 0x38($sp)
/* A1B00 800A0F00 C7A40048 */  lwc1       $f4, 0x48($sp)
/* A1B04 800A0F04 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* A1B08 800A0F08 46062201 */  sub.s      $f8, $f4, $f6
/* A1B0C 800A0F0C E7A80030 */  swc1       $f8, 0x30($sp)
/* A1B10 800A0F10 C7AA004C */  lwc1       $f10, 0x4c($sp)
/* A1B14 800A0F14 C7B00040 */  lwc1       $f16, 0x40($sp)
/* A1B18 800A0F18 46105481 */  sub.s      $f18, $f10, $f16
/* A1B1C 800A0F1C E7B2002C */  swc1       $f18, 0x2c($sp)
/* A1B20 800A0F20 C7A40050 */  lwc1       $f4, 0x50($sp)
/* A1B24 800A0F24 C7A60044 */  lwc1       $f6, 0x44($sp)
/* A1B28 800A0F28 46062201 */  sub.s      $f8, $f4, $f6
/* A1B2C 800A0F2C E7A80028 */  swc1       $f8, 0x28($sp)
/* A1B30 800A0F30 C7AA0030 */  lwc1       $f10, 0x30($sp)
/* A1B34 800A0F34 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* A1B38 800A0F38 C7A80028 */  lwc1       $f8, 0x28($sp)
/* A1B3C 800A0F3C 460A5402 */  mul.s      $f16, $f10, $f10
/* A1B40 800A0F40 00000000 */  nop
/* A1B44 800A0F44 46129102 */  mul.s      $f4, $f18, $f18
/* A1B48 800A0F48 46048180 */  add.s      $f6, $f16, $f4
/* A1B4C 800A0F4C 46084282 */  mul.s      $f10, $f8, $f8
/* A1B50 800A0F50 0C02AD30 */  jal        func_800AB4C0
/* A1B54 800A0F54 460A3300 */   add.s     $f12, $f6, $f10
/* A1B58 800A0F58 3C01BFF0 */  lui        $at, 0xbff0
/* A1B5C 800A0F5C 44819800 */  mtc1       $at, $f19
/* A1B60 800A0F60 44809000 */  mtc1       $zero, $f18
/* A1B64 800A0F64 46000421 */  cvt.d.s    $f16, $f0
/* A1B68 800A0F68 46309103 */  div.d      $f4, $f18, $f16
/* A1B6C 800A0F6C 46202220 */  cvt.s.d    $f8, $f4
/* A1B70 800A0F70 E7A80034 */  swc1       $f8, 0x34($sp)
/* A1B74 800A0F74 C7A60030 */  lwc1       $f6, 0x30($sp)
/* A1B78 800A0F78 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* A1B7C 800A0F7C 460A3482 */  mul.s      $f18, $f6, $f10
/* A1B80 800A0F80 E7B20030 */  swc1       $f18, 0x30($sp)
/* A1B84 800A0F84 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* A1B88 800A0F88 C7A40034 */  lwc1       $f4, 0x34($sp)
/* A1B8C 800A0F8C 46048202 */  mul.s      $f8, $f16, $f4
/* A1B90 800A0F90 E7A8002C */  swc1       $f8, 0x2c($sp)
/* A1B94 800A0F94 C7A60028 */  lwc1       $f6, 0x28($sp)
/* A1B98 800A0F98 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* A1B9C 800A0F9C 460A3482 */  mul.s      $f18, $f6, $f10
/* A1BA0 800A0FA0 E7B20028 */  swc1       $f18, 0x28($sp)
/* A1BA4 800A0FA4 C7B00058 */  lwc1       $f16, 0x58($sp)
/* A1BA8 800A0FA8 C7A40028 */  lwc1       $f4, 0x28($sp)
/* A1BAC 800A0FAC C7A6005C */  lwc1       $f6, 0x5c($sp)
/* A1BB0 800A0FB0 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* A1BB4 800A0FB4 46048202 */  mul.s      $f8, $f16, $f4
/* A1BB8 800A0FB8 00000000 */  nop
/* A1BBC 800A0FBC 460A3482 */  mul.s      $f18, $f6, $f10
/* A1BC0 800A0FC0 46124401 */  sub.s      $f16, $f8, $f18
/* A1BC4 800A0FC4 E7B00024 */  swc1       $f16, 0x24($sp)
/* A1BC8 800A0FC8 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* A1BCC 800A0FCC C7A60030 */  lwc1       $f6, 0x30($sp)
/* A1BD0 800A0FD0 C7A80054 */  lwc1       $f8, 0x54($sp)
/* A1BD4 800A0FD4 C7B20028 */  lwc1       $f18, 0x28($sp)
/* A1BD8 800A0FD8 46062282 */  mul.s      $f10, $f4, $f6
/* A1BDC 800A0FDC 00000000 */  nop
/* A1BE0 800A0FE0 46124402 */  mul.s      $f16, $f8, $f18
/* A1BE4 800A0FE4 46105101 */  sub.s      $f4, $f10, $f16
/* A1BE8 800A0FE8 E7A40020 */  swc1       $f4, 0x20($sp)
/* A1BEC 800A0FEC C7A60054 */  lwc1       $f6, 0x54($sp)
/* A1BF0 800A0FF0 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* A1BF4 800A0FF4 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* A1BF8 800A0FF8 C7B00030 */  lwc1       $f16, 0x30($sp)
/* A1BFC 800A0FFC 46083482 */  mul.s      $f18, $f6, $f8
/* A1C00 800A1000 00000000 */  nop
/* A1C04 800A1004 46105102 */  mul.s      $f4, $f10, $f16
/* A1C08 800A1008 46049181 */  sub.s      $f6, $f18, $f4
/* A1C0C 800A100C E7A6001C */  swc1       $f6, 0x1c($sp)
/* A1C10 800A1010 C7A80024 */  lwc1       $f8, 0x24($sp)
/* A1C14 800A1014 C7B00020 */  lwc1       $f16, 0x20($sp)
/* A1C18 800A1018 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* A1C1C 800A101C 46084282 */  mul.s      $f10, $f8, $f8
/* A1C20 800A1020 00000000 */  nop
/* A1C24 800A1024 46108482 */  mul.s      $f18, $f16, $f16
/* A1C28 800A1028 46125100 */  add.s      $f4, $f10, $f18
/* A1C2C 800A102C 46063202 */  mul.s      $f8, $f6, $f6
/* A1C30 800A1030 0C02AD30 */  jal        func_800AB4C0
/* A1C34 800A1034 46082300 */   add.s     $f12, $f4, $f8
/* A1C38 800A1038 3C013FF0 */  lui        $at, 0x3ff0
/* A1C3C 800A103C 44818800 */  mtc1       $at, $f17
/* A1C40 800A1040 44808000 */  mtc1       $zero, $f16
/* A1C44 800A1044 460002A1 */  cvt.d.s    $f10, $f0
/* A1C48 800A1048 462A8483 */  div.d      $f18, $f16, $f10
/* A1C4C 800A104C 462091A0 */  cvt.s.d    $f6, $f18
/* A1C50 800A1050 E7A60034 */  swc1       $f6, 0x34($sp)
/* A1C54 800A1054 C7A40024 */  lwc1       $f4, 0x24($sp)
/* A1C58 800A1058 C7A80034 */  lwc1       $f8, 0x34($sp)
/* A1C5C 800A105C 46082402 */  mul.s      $f16, $f4, $f8
/* A1C60 800A1060 E7B00024 */  swc1       $f16, 0x24($sp)
/* A1C64 800A1064 C7AA0020 */  lwc1       $f10, 0x20($sp)
/* A1C68 800A1068 C7B20034 */  lwc1       $f18, 0x34($sp)
/* A1C6C 800A106C 46125182 */  mul.s      $f6, $f10, $f18
/* A1C70 800A1070 E7A60020 */  swc1       $f6, 0x20($sp)
/* A1C74 800A1074 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A1C78 800A1078 C7A80034 */  lwc1       $f8, 0x34($sp)
/* A1C7C 800A107C 46082402 */  mul.s      $f16, $f4, $f8
/* A1C80 800A1080 E7B0001C */  swc1       $f16, 0x1c($sp)
/* A1C84 800A1084 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* A1C88 800A1088 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* A1C8C 800A108C C7A40028 */  lwc1       $f4, 0x28($sp)
/* A1C90 800A1090 C7A80020 */  lwc1       $f8, 0x20($sp)
/* A1C94 800A1094 46125182 */  mul.s      $f6, $f10, $f18
/* A1C98 800A1098 00000000 */  nop
/* A1C9C 800A109C 46082402 */  mul.s      $f16, $f4, $f8
/* A1CA0 800A10A0 46103281 */  sub.s      $f10, $f6, $f16
/* A1CA4 800A10A4 E7AA0054 */  swc1       $f10, 0x54($sp)
/* A1CA8 800A10A8 C7B20028 */  lwc1       $f18, 0x28($sp)
/* A1CAC 800A10AC C7A40024 */  lwc1       $f4, 0x24($sp)
/* A1CB0 800A10B0 C7A60030 */  lwc1       $f6, 0x30($sp)
/* A1CB4 800A10B4 C7B0001C */  lwc1       $f16, 0x1c($sp)
/* A1CB8 800A10B8 46049202 */  mul.s      $f8, $f18, $f4
/* A1CBC 800A10BC 00000000 */  nop
/* A1CC0 800A10C0 46103282 */  mul.s      $f10, $f6, $f16
/* A1CC4 800A10C4 460A4481 */  sub.s      $f18, $f8, $f10
/* A1CC8 800A10C8 E7B20058 */  swc1       $f18, 0x58($sp)
/* A1CCC 800A10CC C7A40030 */  lwc1       $f4, 0x30($sp)
/* A1CD0 800A10D0 C7A60020 */  lwc1       $f6, 0x20($sp)
/* A1CD4 800A10D4 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* A1CD8 800A10D8 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* A1CDC 800A10DC 46062402 */  mul.s      $f16, $f4, $f6
/* A1CE0 800A10E0 00000000 */  nop
/* A1CE4 800A10E4 460A4482 */  mul.s      $f18, $f8, $f10
/* A1CE8 800A10E8 46128101 */  sub.s      $f4, $f16, $f18
/* A1CEC 800A10EC E7A4005C */  swc1       $f4, 0x5c($sp)
/* A1CF0 800A10F0 C7A60054 */  lwc1       $f6, 0x54($sp)
/* A1CF4 800A10F4 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* A1CF8 800A10F8 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* A1CFC 800A10FC 46063202 */  mul.s      $f8, $f6, $f6
/* A1D00 800A1100 00000000 */  nop
/* A1D04 800A1104 460A5402 */  mul.s      $f16, $f10, $f10
/* A1D08 800A1108 46104480 */  add.s      $f18, $f8, $f16
/* A1D0C 800A110C 46042182 */  mul.s      $f6, $f4, $f4
/* A1D10 800A1110 0C02AD30 */  jal        func_800AB4C0
/* A1D14 800A1114 46069300 */   add.s     $f12, $f18, $f6
/* A1D18 800A1118 3C013FF0 */  lui        $at, 0x3ff0
/* A1D1C 800A111C 44815800 */  mtc1       $at, $f11
/* A1D20 800A1120 44805000 */  mtc1       $zero, $f10
/* A1D24 800A1124 46000221 */  cvt.d.s    $f8, $f0
/* A1D28 800A1128 46285403 */  div.d      $f16, $f10, $f8
/* A1D2C 800A112C 46208120 */  cvt.s.d    $f4, $f16
/* A1D30 800A1130 E7A40034 */  swc1       $f4, 0x34($sp)
/* A1D34 800A1134 C7B20054 */  lwc1       $f18, 0x54($sp)
/* A1D38 800A1138 C7A60034 */  lwc1       $f6, 0x34($sp)
/* A1D3C 800A113C 46069282 */  mul.s      $f10, $f18, $f6
/* A1D40 800A1140 E7AA0054 */  swc1       $f10, 0x54($sp)
/* A1D44 800A1144 C7A80058 */  lwc1       $f8, 0x58($sp)
/* A1D48 800A1148 C7B00034 */  lwc1       $f16, 0x34($sp)
/* A1D4C 800A114C 46104102 */  mul.s      $f4, $f8, $f16
/* A1D50 800A1150 E7A40058 */  swc1       $f4, 0x58($sp)
/* A1D54 800A1154 C7B2005C */  lwc1       $f18, 0x5c($sp)
/* A1D58 800A1158 C7A60034 */  lwc1       $f6, 0x34($sp)
/* A1D5C 800A115C 46069282 */  mul.s      $f10, $f18, $f6
/* A1D60 800A1160 E7AA005C */  swc1       $f10, 0x5c($sp)
/* A1D64 800A1164 C7A80024 */  lwc1       $f8, 0x24($sp)
/* A1D68 800A1168 8FAE0038 */  lw         $t6, 0x38($sp)
/* A1D6C 800A116C E5C80000 */  swc1       $f8, ($t6)
/* A1D70 800A1170 C7B00020 */  lwc1       $f16, 0x20($sp)
/* A1D74 800A1174 8FAF0038 */  lw         $t7, 0x38($sp)
/* A1D78 800A1178 E5F00010 */  swc1       $f16, 0x10($t7)
/* A1D7C 800A117C C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A1D80 800A1180 8FB80038 */  lw         $t8, 0x38($sp)
/* A1D84 800A1184 E7040020 */  swc1       $f4, 0x20($t8)
/* A1D88 800A1188 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* A1D8C 800A118C C7A60024 */  lwc1       $f6, 0x24($sp)
/* A1D90 800A1190 C7A80040 */  lwc1       $f8, 0x40($sp)
/* A1D94 800A1194 C7B00020 */  lwc1       $f16, 0x20($sp)
/* A1D98 800A1198 46069282 */  mul.s      $f10, $f18, $f6
/* A1D9C 800A119C C7A60044 */  lwc1       $f6, 0x44($sp)
/* A1DA0 800A11A0 8FB90038 */  lw         $t9, 0x38($sp)
/* A1DA4 800A11A4 46104102 */  mul.s      $f4, $f8, $f16
/* A1DA8 800A11A8 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* A1DAC 800A11AC 46083402 */  mul.s      $f16, $f6, $f8
/* A1DB0 800A11B0 46045480 */  add.s      $f18, $f10, $f4
/* A1DB4 800A11B4 46109280 */  add.s      $f10, $f18, $f16
/* A1DB8 800A11B8 46005107 */  neg.s      $f4, $f10
/* A1DBC 800A11BC E7240030 */  swc1       $f4, 0x30($t9)
/* A1DC0 800A11C0 C7A60054 */  lwc1       $f6, 0x54($sp)
/* A1DC4 800A11C4 8FA80038 */  lw         $t0, 0x38($sp)
/* A1DC8 800A11C8 E5060004 */  swc1       $f6, 4($t0)
/* A1DCC 800A11CC C7A80058 */  lwc1       $f8, 0x58($sp)
/* A1DD0 800A11D0 8FA90038 */  lw         $t1, 0x38($sp)
/* A1DD4 800A11D4 E5280014 */  swc1       $f8, 0x14($t1)
/* A1DD8 800A11D8 C7B2005C */  lwc1       $f18, 0x5c($sp)
/* A1DDC 800A11DC 8FAA0038 */  lw         $t2, 0x38($sp)
/* A1DE0 800A11E0 E5520024 */  swc1       $f18, 0x24($t2)
/* A1DE4 800A11E4 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* A1DE8 800A11E8 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* A1DEC 800A11EC C7A60040 */  lwc1       $f6, 0x40($sp)
/* A1DF0 800A11F0 C7A80058 */  lwc1       $f8, 0x58($sp)
/* A1DF4 800A11F4 460A8102 */  mul.s      $f4, $f16, $f10
/* A1DF8 800A11F8 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* A1DFC 800A11FC 8FAB0038 */  lw         $t3, 0x38($sp)
/* A1E00 800A1200 46083482 */  mul.s      $f18, $f6, $f8
/* A1E04 800A1204 C7A6005C */  lwc1       $f6, 0x5c($sp)
/* A1E08 800A1208 46065202 */  mul.s      $f8, $f10, $f6
/* A1E0C 800A120C 46122400 */  add.s      $f16, $f4, $f18
/* A1E10 800A1210 46088100 */  add.s      $f4, $f16, $f8
/* A1E14 800A1214 46002487 */  neg.s      $f18, $f4
/* A1E18 800A1218 E5720034 */  swc1       $f18, 0x34($t3)
/* A1E1C 800A121C C7AA0030 */  lwc1       $f10, 0x30($sp)
/* A1E20 800A1220 8FAC0038 */  lw         $t4, 0x38($sp)
/* A1E24 800A1224 E58A0008 */  swc1       $f10, 8($t4)
/* A1E28 800A1228 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* A1E2C 800A122C 8FAD0038 */  lw         $t5, 0x38($sp)
/* A1E30 800A1230 E5A60018 */  swc1       $f6, 0x18($t5)
/* A1E34 800A1234 C7B00028 */  lwc1       $f16, 0x28($sp)
/* A1E38 800A1238 8FAE0038 */  lw         $t6, 0x38($sp)
/* A1E3C 800A123C E5D00028 */  swc1       $f16, 0x28($t6)
/* A1E40 800A1240 C7A8003C */  lwc1       $f8, 0x3c($sp)
/* A1E44 800A1244 C7A40030 */  lwc1       $f4, 0x30($sp)
/* A1E48 800A1248 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* A1E4C 800A124C C7A6002C */  lwc1       $f6, 0x2c($sp)
/* A1E50 800A1250 46044482 */  mul.s      $f18, $f8, $f4
/* A1E54 800A1254 C7A40044 */  lwc1       $f4, 0x44($sp)
/* A1E58 800A1258 8FAF0038 */  lw         $t7, 0x38($sp)
/* A1E5C 800A125C 46065402 */  mul.s      $f16, $f10, $f6
/* A1E60 800A1260 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* A1E64 800A1264 460A2182 */  mul.s      $f6, $f4, $f10
/* A1E68 800A1268 46109200 */  add.s      $f8, $f18, $f16
/* A1E6C 800A126C 46064480 */  add.s      $f18, $f8, $f6
/* A1E70 800A1270 46009407 */  neg.s      $f16, $f18
/* A1E74 800A1274 E5F00038 */  swc1       $f16, 0x38($t7)
/* A1E78 800A1278 44802000 */  mtc1       $zero, $f4
/* A1E7C 800A127C 8FB80038 */  lw         $t8, 0x38($sp)
/* A1E80 800A1280 E704000C */  swc1       $f4, 0xc($t8)
/* A1E84 800A1284 44805000 */  mtc1       $zero, $f10
/* A1E88 800A1288 8FB90038 */  lw         $t9, 0x38($sp)
/* A1E8C 800A128C E72A001C */  swc1       $f10, 0x1c($t9)
/* A1E90 800A1290 44804000 */  mtc1       $zero, $f8
/* A1E94 800A1294 8FA80038 */  lw         $t0, 0x38($sp)
/* A1E98 800A1298 E508002C */  swc1       $f8, 0x2c($t0)
/* A1E9C 800A129C 3C013F80 */  lui        $at, 0x3f80
/* A1EA0 800A12A0 44813000 */  mtc1       $at, $f6
/* A1EA4 800A12A4 8FA90038 */  lw         $t1, 0x38($sp)
/* A1EA8 800A12A8 E526003C */  swc1       $f6, 0x3c($t1)
/* A1EAC 800A12AC 10000001 */  b          .L800A12B4
/* A1EB0 800A12B0 00000000 */   nop
.L800A12B4:
/* A1EB4 800A12B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1EB8 800A12B8 27BD0038 */  addiu      $sp, $sp, 0x38
/* A1EBC 800A12BC 03E00008 */  jr         $ra
/* A1EC0 800A12C0 00000000 */   nop

glabel func_800A12C4
/* A1EC4 800A12C4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* A1EC8 800A12C8 AFBF002C */  sw         $ra, 0x2c($sp)
/* A1ECC 800A12CC AFA40070 */  sw         $a0, 0x70($sp)
/* A1ED0 800A12D0 AFA50074 */  sw         $a1, 0x74($sp)
/* A1ED4 800A12D4 AFA60078 */  sw         $a2, 0x78($sp)
/* A1ED8 800A12D8 AFA7007C */  sw         $a3, 0x7c($sp)
/* A1EDC 800A12DC C7A40080 */  lwc1       $f4, 0x80($sp)
/* A1EE0 800A12E0 C7A60084 */  lwc1       $f6, 0x84($sp)
/* A1EE4 800A12E4 C7A80088 */  lwc1       $f8, 0x88($sp)
/* A1EE8 800A12E8 C7AA008C */  lwc1       $f10, 0x8c($sp)
/* A1EEC 800A12EC C7B00090 */  lwc1       $f16, 0x90($sp)
/* A1EF0 800A12F0 C7B20094 */  lwc1       $f18, 0x94($sp)
/* A1EF4 800A12F4 27A40030 */  addiu      $a0, $sp, 0x30
/* A1EF8 800A12F8 8FA50074 */  lw         $a1, 0x74($sp)
/* A1EFC 800A12FC 8FA60078 */  lw         $a2, 0x78($sp)
/* A1F00 800A1300 8FA7007C */  lw         $a3, 0x7c($sp)
/* A1F04 800A1304 E7A40010 */  swc1       $f4, 0x10($sp)
/* A1F08 800A1308 E7A60014 */  swc1       $f6, 0x14($sp)
/* A1F0C 800A130C E7A80018 */  swc1       $f8, 0x18($sp)
/* A1F10 800A1310 E7AA001C */  swc1       $f10, 0x1c($sp)
/* A1F14 800A1314 E7B00020 */  swc1       $f16, 0x20($sp)
/* A1F18 800A1318 0C0283B8 */  jal        func_800A0EE0
/* A1F1C 800A131C E7B20024 */   swc1      $f18, 0x24($sp)
/* A1F20 800A1320 27A40030 */  addiu      $a0, $sp, 0x30
/* A1F24 800A1324 0C02807C */  jal        func_800A01F0
/* A1F28 800A1328 8FA50070 */   lw        $a1, 0x70($sp)
/* A1F2C 800A132C 10000001 */  b          .L800A1334
/* A1F30 800A1330 00000000 */   nop
.L800A1334:
/* A1F34 800A1334 8FBF002C */  lw         $ra, 0x2c($sp)
/* A1F38 800A1338 27BD0070 */  addiu      $sp, $sp, 0x70
/* A1F3C 800A133C 03E00008 */  jr         $ra
/* A1F40 800A1340 00000000 */   nop
/* A1F44 800A1344 00000000 */  nop
/* A1F48 800A1348 00000000 */  nop
/* A1F4C 800A134C 00000000 */  nop
