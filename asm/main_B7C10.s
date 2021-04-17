.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B7010
/* B7C10 800B7010 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* B7C14 800B7014 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7C18 800B7018 AFA40060 */  sw         $a0, 0x60($sp)
/* B7C1C 800B701C AFA50064 */  sw         $a1, 0x64($sp)
/* B7C20 800B7020 AFA60068 */  sw         $a2, 0x68($sp)
/* B7C24 800B7024 AFA7006C */  sw         $a3, 0x6c($sp)
/* B7C28 800B7028 AFB00018 */  sw         $s0, 0x18($sp)
/* B7C2C 800B702C AFA0005C */  sw         $zero, 0x5c($sp)
/* B7C30 800B7030 3C0E801A */  lui        $t6, %hi(D_801A2020)
/* B7C34 800B7034 25CE2020 */  addiu      $t6, $t6, %lo(D_801A2020)
/* B7C38 800B7038 AFAE0054 */  sw         $t6, 0x54($sp)
/* B7C3C 800B703C 240F0002 */  addiu      $t7, $zero, 2
/* B7C40 800B7040 AFAF0028 */  sw         $t7, 0x28($sp)
/* B7C44 800B7044 8FB80070 */  lw         $t8, 0x70($sp)
/* B7C48 800B7048 24010001 */  addiu      $at, $zero, 1
/* B7C4C 800B704C 13010009 */  beq        $t8, $at, .L800B7074
/* B7C50 800B7050 00000000 */   nop
/* B7C54 800B7054 97B9006A */  lhu        $t9, 0x6a($sp)
/* B7C58 800B7058 2B210007 */  slti       $at, $t9, 7
/* B7C5C 800B705C 10200005 */  beqz       $at, .L800B7074
/* B7C60 800B7060 00000000 */   nop
/* B7C64 800B7064 13200003 */  beqz       $t9, .L800B7074
/* B7C68 800B7068 00000000 */   nop
/* B7C6C 800B706C 1000006E */  b          .L800B7228
/* B7C70 800B7070 00001025 */   or        $v0, $zero, $zero
.L800B7074:
/* B7C74 800B7074 0C026612 */  jal        func_80099848
/* B7C78 800B7078 00000000 */   nop
/* B7C7C 800B707C 24080003 */  addiu      $t0, $zero, 3
/* B7C80 800B7080 3C01801A */  lui        $at, %hi(D_801A1B50)
/* B7C84 800B7084 A0281B50 */  sb         $t0, %lo(D_801A1B50)($at)
/* B7C88 800B7088 8FA40064 */  lw         $a0, 0x64($sp)
/* B7C8C 800B708C 97A5006A */  lhu        $a1, 0x6a($sp)
/* B7C90 800B7090 0C02DC8F */  jal        func_800B723C
/* B7C94 800B7094 8FA6006C */   lw        $a2, 0x6c($sp)
/* B7C98 800B7098 3C05801A */  lui        $a1, %hi(D_801A2020)
/* B7C9C 800B709C 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* B7CA0 800B70A0 0C027D70 */  jal        func_8009F5C0
/* B7CA4 800B70A4 24040001 */   addiu     $a0, $zero, 1
/* B7CA8 800B70A8 AFA2005C */  sw         $v0, 0x5c($sp)
/* B7CAC 800B70AC 8FA40060 */  lw         $a0, 0x60($sp)
/* B7CB0 800B70B0 00002825 */  or         $a1, $zero, $zero
/* B7CB4 800B70B4 0C025D30 */  jal        func_800974C0
/* B7CB8 800B70B8 24060001 */   addiu     $a2, $zero, 1
.L800B70BC:
/* B7CBC 800B70BC 3C05801A */  lui        $a1, %hi(D_801A2020)
/* B7CC0 800B70C0 24A52020 */  addiu      $a1, $a1, %lo(D_801A2020)
/* B7CC4 800B70C4 0C027D70 */  jal        func_8009F5C0
/* B7CC8 800B70C8 00002025 */   or        $a0, $zero, $zero
/* B7CCC 800B70CC AFA2005C */  sw         $v0, 0x5c($sp)
/* B7CD0 800B70D0 8FA40060 */  lw         $a0, 0x60($sp)
/* B7CD4 800B70D4 00002825 */  or         $a1, $zero, $zero
/* B7CD8 800B70D8 0C025D30 */  jal        func_800974C0
/* B7CDC 800B70DC 24060001 */   addiu     $a2, $zero, 1
/* B7CE0 800B70E0 3C09801A */  lui        $t1, %hi(D_801A2020)
/* B7CE4 800B70E4 25292020 */  addiu      $t1, $t1, %lo(D_801A2020)
/* B7CE8 800B70E8 AFA90054 */  sw         $t1, 0x54($sp)
/* B7CEC 800B70EC 8FAA0064 */  lw         $t2, 0x64($sp)
/* B7CF0 800B70F0 1140000E */  beqz       $t2, .L800B712C
/* B7CF4 800B70F4 00000000 */   nop
/* B7CF8 800B70F8 8FAB0064 */  lw         $t3, 0x64($sp)
/* B7CFC 800B70FC AFA00058 */  sw         $zero, 0x58($sp)
/* B7D00 800B7100 1960000A */  blez       $t3, .L800B712C
/* B7D04 800B7104 00000000 */   nop
.L800B7108:
/* B7D08 800B7108 8FAC0054 */  lw         $t4, 0x54($sp)
/* B7D0C 800B710C 258D0001 */  addiu      $t5, $t4, 1
/* B7D10 800B7110 AFAD0054 */  sw         $t5, 0x54($sp)
/* B7D14 800B7114 8FAE0058 */  lw         $t6, 0x58($sp)
/* B7D18 800B7118 8FB80064 */  lw         $t8, 0x64($sp)
/* B7D1C 800B711C 25CF0001 */  addiu      $t7, $t6, 1
/* B7D20 800B7120 01F8082A */  slt        $at, $t7, $t8
/* B7D24 800B7124 1420FFF8 */  bnez       $at, .L800B7108
/* B7D28 800B7128 AFAF0058 */   sw        $t7, 0x58($sp)
.L800B712C:
/* B7D2C 800B712C 8FA80054 */  lw         $t0, 0x54($sp)
/* B7D30 800B7130 27B9002C */  addiu      $t9, $sp, 0x2c
/* B7D34 800B7134 250A0024 */  addiu      $t2, $t0, 0x24
.L800B7138:
/* B7D38 800B7138 89010000 */  lwl        $at, ($t0)
/* B7D3C 800B713C 99010003 */  lwr        $at, 3($t0)
/* B7D40 800B7140 2508000C */  addiu      $t0, $t0, 0xc
/* B7D44 800B7144 2739000C */  addiu      $t9, $t9, 0xc
/* B7D48 800B7148 AF21FFF4 */  sw         $at, -0xc($t9)
/* B7D4C 800B714C 8901FFF8 */  lwl        $at, -8($t0)
/* B7D50 800B7150 9901FFFB */  lwr        $at, -5($t0)
/* B7D54 800B7154 AF21FFF8 */  sw         $at, -8($t9)
/* B7D58 800B7158 8901FFFC */  lwl        $at, -4($t0)
/* B7D5C 800B715C 9901FFFF */  lwr        $at, -1($t0)
/* B7D60 800B7160 150AFFF5 */  bne        $t0, $t2, .L800B7138
/* B7D64 800B7164 AF21FFFC */   sw        $at, -4($t9)
/* B7D68 800B7168 89010000 */  lwl        $at, ($t0)
/* B7D6C 800B716C 99010003 */  lwr        $at, 3($t0)
/* B7D70 800B7170 AF210000 */  sw         $at, ($t9)
/* B7D74 800B7174 93AB002E */  lbu        $t3, 0x2e($sp)
/* B7D78 800B7178 316C00C0 */  andi       $t4, $t3, 0xc0
/* B7D7C 800B717C 000C6903 */  sra        $t5, $t4, 4
/* B7D80 800B7180 AFAD005C */  sw         $t5, 0x5c($sp)
/* B7D84 800B7184 8FAE005C */  lw         $t6, 0x5c($sp)
/* B7D88 800B7188 15C00015 */  bnez       $t6, .L800B71E0
/* B7D8C 800B718C 00000000 */   nop
/* B7D90 800B7190 0C02BDBC */  jal        func_800AF6F0
/* B7D94 800B7194 8FA4006C */   lw        $a0, 0x6c($sp)
/* B7D98 800B7198 93AF0052 */  lbu        $t7, 0x52($sp)
/* B7D9C 800B719C 104F000E */  beq        $v0, $t7, .L800B71D8
/* B7DA0 800B71A0 00000000 */   nop
/* B7DA4 800B71A4 8FA40060 */  lw         $a0, 0x60($sp)
/* B7DA8 800B71A8 0C02D5BC */  jal        func_800B56F0
/* B7DAC 800B71AC 8FA50064 */   lw        $a1, 0x64($sp)
/* B7DB0 800B71B0 AFA2005C */  sw         $v0, 0x5c($sp)
/* B7DB4 800B71B4 8FB8005C */  lw         $t8, 0x5c($sp)
/* B7DB8 800B71B8 13000005 */  beqz       $t8, .L800B71D0
/* B7DBC 800B71BC 00000000 */   nop
/* B7DC0 800B71C0 0C026625 */  jal        func_80099894
/* B7DC4 800B71C4 00000000 */   nop
/* B7DC8 800B71C8 10000017 */  b          .L800B7228
/* B7DCC 800B71CC 8FA2005C */   lw        $v0, 0x5c($sp)
.L800B71D0:
/* B7DD0 800B71D0 24090004 */  addiu      $t1, $zero, 4
/* B7DD4 800B71D4 AFA9005C */  sw         $t1, 0x5c($sp)
.L800B71D8:
/* B7DD8 800B71D8 10000003 */  b          .L800B71E8
/* B7DDC 800B71DC 00000000 */   nop
.L800B71E0:
/* B7DE0 800B71E0 240A0001 */  addiu      $t2, $zero, 1
/* B7DE4 800B71E4 AFAA005C */  sw         $t2, 0x5c($sp)
.L800B71E8:
/* B7DE8 800B71E8 8FA8005C */  lw         $t0, 0x5c($sp)
/* B7DEC 800B71EC 24010004 */  addiu      $at, $zero, 4
/* B7DF0 800B71F0 15010007 */  bne        $t0, $at, .L800B7210
/* B7DF4 800B71F4 00000000 */   nop
/* B7DF8 800B71F8 8FB90028 */  lw         $t9, 0x28($sp)
/* B7DFC 800B71FC 2B300000 */  slti       $s0, $t9, 0
/* B7E00 800B7200 3A100001 */  xori       $s0, $s0, 1
/* B7E04 800B7204 272BFFFF */  addiu      $t3, $t9, -1
/* B7E08 800B7208 1600FFAC */  bnez       $s0, .L800B70BC
/* B7E0C 800B720C AFAB0028 */   sw        $t3, 0x28($sp)
.L800B7210:
/* B7E10 800B7210 0C026625 */  jal        func_80099894
/* B7E14 800B7214 00000000 */   nop
/* B7E18 800B7218 10000003 */  b          .L800B7228
/* B7E1C 800B721C 8FA2005C */   lw        $v0, 0x5c($sp)
/* B7E20 800B7220 10000001 */  b          .L800B7228
/* B7E24 800B7224 00000000 */   nop
.L800B7228:
/* B7E28 800B7228 8FBF001C */  lw         $ra, 0x1c($sp)
/* B7E2C 800B722C 8FB00018 */  lw         $s0, 0x18($sp)
/* B7E30 800B7230 27BD0060 */  addiu      $sp, $sp, 0x60
/* B7E34 800B7234 03E00008 */  jr         $ra
/* B7E38 800B7238 00000000 */   nop

glabel func_800B723C
/* B7E3C 800B723C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B7E40 800B7240 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7E44 800B7244 AFA40048 */  sw         $a0, 0x48($sp)
/* B7E48 800B7248 AFA5004C */  sw         $a1, 0x4c($sp)
/* B7E4C 800B724C AFA60050 */  sw         $a2, 0x50($sp)
/* B7E50 800B7250 3C0E801A */  lui        $t6, %hi(D_801A2020)
/* B7E54 800B7254 25CE2020 */  addiu      $t6, $t6, %lo(D_801A2020)
/* B7E58 800B7258 AFAE0044 */  sw         $t6, 0x44($sp)
/* B7E5C 800B725C 240F0001 */  addiu      $t7, $zero, 1
/* B7E60 800B7260 3C01801A */  lui        $at, %hi(D_801A205C)
/* B7E64 800B7264 AC2F205C */  sw         $t7, %lo(D_801A205C)($at)
/* B7E68 800B7268 241800FF */  addiu      $t8, $zero, 0xff
/* B7E6C 800B726C A3B8001C */  sb         $t8, 0x1c($sp)
/* B7E70 800B7270 24190023 */  addiu      $t9, $zero, 0x23
/* B7E74 800B7274 A3B9001D */  sb         $t9, 0x1d($sp)
/* B7E78 800B7278 24080001 */  addiu      $t0, $zero, 1
/* B7E7C 800B727C A3A8001E */  sb         $t0, 0x1e($sp)
/* B7E80 800B7280 24090003 */  addiu      $t1, $zero, 3
/* B7E84 800B7284 A3A9001F */  sb         $t1, 0x1f($sp)
/* B7E88 800B7288 0C02BD8C */  jal        func_800AF630
/* B7E8C 800B728C 97A4004E */   lhu       $a0, 0x4e($sp)
/* B7E90 800B7290 97AA004E */  lhu        $t2, 0x4e($sp)
/* B7E94 800B7294 000A5940 */  sll        $t3, $t2, 5
/* B7E98 800B7298 004B6025 */  or         $t4, $v0, $t3
/* B7E9C 800B729C A7AC0020 */  sh         $t4, 0x20($sp)
/* B7EA0 800B72A0 240D00FF */  addiu      $t5, $zero, 0xff
/* B7EA4 800B72A4 A3AD0042 */  sb         $t5, 0x42($sp)
/* B7EA8 800B72A8 AFA00018 */  sw         $zero, 0x18($sp)
.L800B72AC:
/* B7EAC 800B72AC 8FAE0050 */  lw         $t6, 0x50($sp)
/* B7EB0 800B72B0 8FB80018 */  lw         $t8, 0x18($sp)
/* B7EB4 800B72B4 91CF0000 */  lbu        $t7, ($t6)
/* B7EB8 800B72B8 03B8C821 */  addu       $t9, $sp, $t8
/* B7EBC 800B72BC A32F0022 */  sb         $t7, 0x22($t9)
/* B7EC0 800B72C0 8FA80050 */  lw         $t0, 0x50($sp)
/* B7EC4 800B72C4 25090001 */  addiu      $t1, $t0, 1
/* B7EC8 800B72C8 AFA90050 */  sw         $t1, 0x50($sp)
/* B7ECC 800B72CC 8FAA0018 */  lw         $t2, 0x18($sp)
/* B7ED0 800B72D0 254B0001 */  addiu      $t3, $t2, 1
/* B7ED4 800B72D4 29610020 */  slti       $at, $t3, 0x20
/* B7ED8 800B72D8 1420FFF4 */  bnez       $at, .L800B72AC
/* B7EDC 800B72DC AFAB0018 */   sw        $t3, 0x18($sp)
/* B7EE0 800B72E0 8FAC0048 */  lw         $t4, 0x48($sp)
/* B7EE4 800B72E4 11800010 */  beqz       $t4, .L800B7328
/* B7EE8 800B72E8 00000000 */   nop
/* B7EEC 800B72EC 8FAD0048 */  lw         $t5, 0x48($sp)
/* B7EF0 800B72F0 AFA00018 */  sw         $zero, 0x18($sp)
/* B7EF4 800B72F4 19A0000C */  blez       $t5, .L800B7328
/* B7EF8 800B72F8 00000000 */   nop
.L800B72FC:
/* B7EFC 800B72FC 8FAE0044 */  lw         $t6, 0x44($sp)
/* B7F00 800B7300 A1C00000 */  sb         $zero, ($t6)
/* B7F04 800B7304 8FAF0044 */  lw         $t7, 0x44($sp)
/* B7F08 800B7308 25F80001 */  addiu      $t8, $t7, 1
/* B7F0C 800B730C AFB80044 */  sw         $t8, 0x44($sp)
/* B7F10 800B7310 8FB90018 */  lw         $t9, 0x18($sp)
/* B7F14 800B7314 8FA90048 */  lw         $t1, 0x48($sp)
/* B7F18 800B7318 27280001 */  addiu      $t0, $t9, 1
/* B7F1C 800B731C 0109082A */  slt        $at, $t0, $t1
/* B7F20 800B7320 1420FFF6 */  bnez       $at, .L800B72FC
/* B7F24 800B7324 AFA80018 */   sw        $t0, 0x18($sp)
.L800B7328:
/* B7F28 800B7328 27AB001C */  addiu      $t3, $sp, 0x1c
/* B7F2C 800B732C 256D0024 */  addiu      $t5, $t3, 0x24
/* B7F30 800B7330 8FAA0044 */  lw         $t2, 0x44($sp)
.L800B7334:
/* B7F34 800B7334 8D610000 */  lw         $at, ($t3)
/* B7F38 800B7338 256B000C */  addiu      $t3, $t3, 0xc
/* B7F3C 800B733C 254A000C */  addiu      $t2, $t2, 0xc
/* B7F40 800B7340 A941FFF4 */  swl        $at, -0xc($t2)
/* B7F44 800B7344 B941FFF7 */  swr        $at, -9($t2)
/* B7F48 800B7348 8D61FFF8 */  lw         $at, -8($t3)
/* B7F4C 800B734C A941FFF8 */  swl        $at, -8($t2)
/* B7F50 800B7350 B941FFFB */  swr        $at, -5($t2)
/* B7F54 800B7354 8D61FFFC */  lw         $at, -4($t3)
/* B7F58 800B7358 A941FFFC */  swl        $at, -4($t2)
/* B7F5C 800B735C 156DFFF5 */  bne        $t3, $t5, .L800B7334
/* B7F60 800B7360 B941FFFF */   swr       $at, -1($t2)
/* B7F64 800B7364 8D610000 */  lw         $at, ($t3)
/* B7F68 800B7368 A9410000 */  swl        $at, ($t2)
/* B7F6C 800B736C B9410003 */  swr        $at, 3($t2)
/* B7F70 800B7370 8FAE0044 */  lw         $t6, 0x44($sp)
/* B7F74 800B7374 25CF0028 */  addiu      $t7, $t6, 0x28
/* B7F78 800B7378 AFAF0044 */  sw         $t7, 0x44($sp)
/* B7F7C 800B737C 8FB90044 */  lw         $t9, 0x44($sp)
/* B7F80 800B7380 241800FE */  addiu      $t8, $zero, 0xfe
/* B7F84 800B7384 A3380000 */  sb         $t8, ($t9)
/* B7F88 800B7388 10000001 */  b          .L800B7390
/* B7F8C 800B738C 00000000 */   nop
.L800B7390:
/* B7F90 800B7390 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7F94 800B7394 27BD0048 */  addiu      $sp, $sp, 0x48
/* B7F98 800B7398 03E00008 */  jr         $ra
/* B7F9C 800B739C 00000000 */   nop

glabel func_800B73A0
/* B7FA0 800B73A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B7FA4 800B73A4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7FA8 800B73A8 AFA40030 */  sw         $a0, 0x30($sp)
/* B7FAC 800B73AC AFA50034 */  sw         $a1, 0x34($sp)
/* B7FB0 800B73B0 AFA60038 */  sw         $a2, 0x38($sp)
/* B7FB4 800B73B4 AFB10018 */  sw         $s1, 0x18($sp)
/* B7FB8 800B73B8 AFB00014 */  sw         $s0, 0x14($sp)
/* B7FBC 800B73BC 8FAE0034 */  lw         $t6, 0x34($sp)
/* B7FC0 800B73C0 31CF0003 */  andi       $t7, $t6, 3
/* B7FC4 800B73C4 11E00007 */  beqz       $t7, .L800B73E4
/* B7FC8 800B73C8 00000000 */   nop
/* B7FCC 800B73CC 24040014 */  addiu      $a0, $zero, 0x14
/* B7FD0 800B73D0 24050001 */  addiu      $a1, $zero, 1
/* B7FD4 800B73D4 0C02B5EC */  jal        func_800AD7B0
/* B7FD8 800B73D8 8FA60034 */   lw        $a2, 0x34($sp)
/* B7FDC 800B73DC 1000007E */  b          .L800B75D8
/* B7FE0 800B73E0 2402FFFF */   addiu     $v0, $zero, -1
.L800B73E4:
/* B7FE4 800B73E4 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* B7FE8 800B73E8 8F100010 */  lw         $s0, %lo(D_A4600010)($t8)
/* B7FEC 800B73EC 32190003 */  andi       $t9, $s0, 3
/* B7FF0 800B73F0 13200006 */  beqz       $t9, .L800B740C
/* B7FF4 800B73F4 00000000 */   nop
.L800B73F8:
/* B7FF8 800B73F8 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* B7FFC 800B73FC 8D100010 */  lw         $s0, %lo(D_A4600010)($t0)
/* B8000 800B7400 32090003 */  andi       $t1, $s0, 3
/* B8004 800B7404 1520FFFC */  bnez       $t1, .L800B73F8
/* B8008 800B7408 00000000 */   nop
.L800B740C:
/* B800C 800B740C 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8010 800B7410 91510009 */  lbu        $s1, 9($t2)
/* B8014 800B7414 00115880 */  sll        $t3, $s1, 2
/* B8018 800B7418 3C0C800D */  lui        $t4, %hi(D_800CD320)
/* B801C 800B741C 018B6021 */  addu       $t4, $t4, $t3
/* B8020 800B7420 8D8CD320 */  lw         $t4, %lo(D_800CD320)($t4)
/* B8024 800B7424 8FAD0030 */  lw         $t5, 0x30($sp)
/* B8028 800B7428 118D005F */  beq        $t4, $t5, .L800B75A8
/* B802C 800B742C 00000000 */   nop
/* B8030 800B7430 00117080 */  sll        $t6, $s1, 2
/* B8034 800B7434 3C0F800D */  lui        $t7, %hi(D_800CD320)
/* B8038 800B7438 01EE7821 */  addu       $t7, $t7, $t6
/* B803C 800B743C 8DEFD320 */  lw         $t7, %lo(D_800CD320)($t7)
/* B8040 800B7440 AFAF0024 */  sw         $t7, 0x24($sp)
/* B8044 800B7444 1620002B */  bnez       $s1, .L800B74F4
/* B8048 800B7448 00000000 */   nop
/* B804C 800B744C 8FB80024 */  lw         $t8, 0x24($sp)
/* B8050 800B7450 8FA80030 */  lw         $t0, 0x30($sp)
/* B8054 800B7454 93190005 */  lbu        $t9, 5($t8)
/* B8058 800B7458 91090005 */  lbu        $t1, 5($t0)
/* B805C 800B745C 13290005 */  beq        $t9, $t1, .L800B7474
/* B8060 800B7460 00000000 */   nop
/* B8064 800B7464 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8068 800B7468 3C0CA460 */  lui        $t4, %hi(D_A4600014)
/* B806C 800B746C 914B0005 */  lbu        $t3, 5($t2)
/* B8070 800B7470 AD8B0014 */  sw         $t3, %lo(D_A4600014)($t4)
.L800B7474:
/* B8074 800B7474 8FAD0024 */  lw         $t5, 0x24($sp)
/* B8078 800B7478 8FAF0030 */  lw         $t7, 0x30($sp)
/* B807C 800B747C 91AE0006 */  lbu        $t6, 6($t5)
/* B8080 800B7480 91F80006 */  lbu        $t8, 6($t7)
/* B8084 800B7484 11D80005 */  beq        $t6, $t8, .L800B749C
/* B8088 800B7488 00000000 */   nop
/* B808C 800B748C 8FA80030 */  lw         $t0, 0x30($sp)
/* B8090 800B7490 3C09A460 */  lui        $t1, %hi(D_A460001C)
/* B8094 800B7494 91190006 */  lbu        $t9, 6($t0)
/* B8098 800B7498 AD39001C */  sw         $t9, %lo(D_A460001C)($t1)
.L800B749C:
/* B809C 800B749C 8FAA0024 */  lw         $t2, 0x24($sp)
/* B80A0 800B74A0 8FAC0030 */  lw         $t4, 0x30($sp)
/* B80A4 800B74A4 914B0007 */  lbu        $t3, 7($t2)
/* B80A8 800B74A8 918D0007 */  lbu        $t5, 7($t4)
/* B80AC 800B74AC 116D0005 */  beq        $t3, $t5, .L800B74C4
/* B80B0 800B74B0 00000000 */   nop
/* B80B4 800B74B4 8FAF0030 */  lw         $t7, 0x30($sp)
/* B80B8 800B74B8 3C18A460 */  lui        $t8, %hi(D_A4600020)
/* B80BC 800B74BC 91EE0007 */  lbu        $t6, 7($t7)
/* B80C0 800B74C0 AF0E0020 */  sw         $t6, %lo(D_A4600020)($t8)
.L800B74C4:
/* B80C4 800B74C4 8FA80024 */  lw         $t0, 0x24($sp)
/* B80C8 800B74C8 8FA90030 */  lw         $t1, 0x30($sp)
/* B80CC 800B74CC 91190008 */  lbu        $t9, 8($t0)
/* B80D0 800B74D0 912A0008 */  lbu        $t2, 8($t1)
/* B80D4 800B74D4 132A0005 */  beq        $t9, $t2, .L800B74EC
/* B80D8 800B74D8 00000000 */   nop
/* B80DC 800B74DC 8FAC0030 */  lw         $t4, 0x30($sp)
/* B80E0 800B74E0 3C0DA460 */  lui        $t5, %hi(D_A4600018)
/* B80E4 800B74E4 918B0008 */  lbu        $t3, 8($t4)
/* B80E8 800B74E8 ADAB0018 */  sw         $t3, %lo(D_A4600018)($t5)
.L800B74EC:
/* B80EC 800B74EC 10000029 */  b          .L800B7594
/* B80F0 800B74F0 00000000 */   nop
.L800B74F4:
/* B80F4 800B74F4 8FAF0024 */  lw         $t7, 0x24($sp)
/* B80F8 800B74F8 8FB80030 */  lw         $t8, 0x30($sp)
/* B80FC 800B74FC 91EE0005 */  lbu        $t6, 5($t7)
/* B8100 800B7500 93080005 */  lbu        $t0, 5($t8)
/* B8104 800B7504 11C80005 */  beq        $t6, $t0, .L800B751C
/* B8108 800B7508 00000000 */   nop
/* B810C 800B750C 8FA90030 */  lw         $t1, 0x30($sp)
/* B8110 800B7510 3C0AA460 */  lui        $t2, %hi(D_A4600024)
/* B8114 800B7514 91390005 */  lbu        $t9, 5($t1)
/* B8118 800B7518 AD590024 */  sw         $t9, %lo(D_A4600024)($t2)
.L800B751C:
/* B811C 800B751C 8FAC0024 */  lw         $t4, 0x24($sp)
/* B8120 800B7520 8FAD0030 */  lw         $t5, 0x30($sp)
/* B8124 800B7524 918B0006 */  lbu        $t3, 6($t4)
/* B8128 800B7528 91AF0006 */  lbu        $t7, 6($t5)
/* B812C 800B752C 116F0005 */  beq        $t3, $t7, .L800B7544
/* B8130 800B7530 00000000 */   nop
/* B8134 800B7534 8FB80030 */  lw         $t8, 0x30($sp)
/* B8138 800B7538 3C08A460 */  lui        $t0, %hi(D_A460002C)
/* B813C 800B753C 930E0006 */  lbu        $t6, 6($t8)
/* B8140 800B7540 AD0E002C */  sw         $t6, %lo(D_A460002C)($t0)
.L800B7544:
/* B8144 800B7544 8FA90024 */  lw         $t1, 0x24($sp)
/* B8148 800B7548 8FAA0030 */  lw         $t2, 0x30($sp)
/* B814C 800B754C 91390007 */  lbu        $t9, 7($t1)
/* B8150 800B7550 914C0007 */  lbu        $t4, 7($t2)
/* B8154 800B7554 132C0005 */  beq        $t9, $t4, .L800B756C
/* B8158 800B7558 00000000 */   nop
/* B815C 800B755C 8FAD0030 */  lw         $t5, 0x30($sp)
/* B8160 800B7560 3C0FA460 */  lui        $t7, %hi(D_A4600030)
/* B8164 800B7564 91AB0007 */  lbu        $t3, 7($t5)
/* B8168 800B7568 ADEB0030 */  sw         $t3, %lo(D_A4600030)($t7)
.L800B756C:
/* B816C 800B756C 8FB80024 */  lw         $t8, 0x24($sp)
/* B8170 800B7570 8FA80030 */  lw         $t0, 0x30($sp)
/* B8174 800B7574 930E0008 */  lbu        $t6, 8($t8)
/* B8178 800B7578 91090008 */  lbu        $t1, 8($t0)
/* B817C 800B757C 11C90005 */  beq        $t6, $t1, .L800B7594
/* B8180 800B7580 00000000 */   nop
/* B8184 800B7584 8FAA0030 */  lw         $t2, 0x30($sp)
/* B8188 800B7588 3C0CA460 */  lui        $t4, %hi(D_A4600028)
/* B818C 800B758C 91590008 */  lbu        $t9, 8($t2)
/* B8190 800B7590 AD990028 */  sw         $t9, %lo(D_A4600028)($t4)
.L800B7594:
/* B8194 800B7594 8FAD0030 */  lw         $t5, 0x30($sp)
/* B8198 800B7598 00115880 */  sll        $t3, $s1, 2
/* B819C 800B759C 3C01800D */  lui        $at, %hi(D_800CD320)
/* B81A0 800B75A0 002B0821 */  addu       $at, $at, $t3
/* B81A4 800B75A4 AC2DD320 */  sw         $t5, %lo(D_800CD320)($at)
.L800B75A8:
/* B81A8 800B75A8 8FB80030 */  lw         $t8, 0x30($sp)
/* B81AC 800B75AC 8FAE0034 */  lw         $t6, 0x34($sp)
/* B81B0 800B75B0 8FAF0038 */  lw         $t7, 0x38($sp)
/* B81B4 800B75B4 8F08000C */  lw         $t0, 0xc($t8)
/* B81B8 800B75B8 3C01A000 */  lui        $at, 0xa000
/* B81BC 800B75BC 010E4825 */  or         $t1, $t0, $t6
/* B81C0 800B75C0 01215025 */  or         $t2, $t1, $at
/* B81C4 800B75C4 AD4F0000 */  sw         $t7, ($t2)
/* B81C8 800B75C8 10000003 */  b          .L800B75D8
/* B81CC 800B75CC 00001025 */   or        $v0, $zero, $zero
/* B81D0 800B75D0 10000001 */  b          .L800B75D8
/* B81D4 800B75D4 00000000 */   nop
.L800B75D8:
/* B81D8 800B75D8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B81DC 800B75DC 8FB00014 */  lw         $s0, 0x14($sp)
/* B81E0 800B75E0 8FB10018 */  lw         $s1, 0x18($sp)
/* B81E4 800B75E4 03E00008 */  jr         $ra
/* B81E8 800B75E8 27BD0030 */   addiu     $sp, $sp, 0x30
/* B81EC 800B75EC 00000000 */  nop
