.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009C0E0
/* 9CCE0 8009C0E0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9CCE4 8009C0E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9CCE8 8009C0E8 AFA40038 */  sw         $a0, 0x38($sp)
/* 9CCEC 8009C0EC AFA5003C */  sw         $a1, 0x3c($sp)
/* 9CCF0 8009C0F0 8FAE003C */  lw         $t6, 0x3c($sp)
/* 9CCF4 8009C0F4 8DCF000C */  lw         $t7, 0xc($t6)
/* 9CCF8 8009C0F8 AFAF0024 */  sw         $t7, 0x24($sp)
/* 9CCFC 8009C0FC 8FB80038 */  lw         $t8, 0x38($sp)
/* 9CD00 8009C100 AF000020 */  sw         $zero, 0x20($t8)
/* 9CD04 8009C104 8FB90038 */  lw         $t9, 0x38($sp)
/* 9CD08 8009C108 AF200018 */  sw         $zero, 0x18($t9)
/* 9CD0C 8009C10C 3C08800D */  lui        $t0, %hi(D_800CC220)
/* 9CD10 8009C110 8D08C220 */  lw         $t0, %lo(D_800CC220)($t0)
/* 9CD14 8009C114 8FA90038 */  lw         $t1, 0x38($sp)
/* 9CD18 8009C118 AD280014 */  sw         $t0, 0x14($t1)
/* 9CD1C 8009C11C 8FAB0038 */  lw         $t3, 0x38($sp)
/* 9CD20 8009C120 240A00FF */  addiu      $t2, $zero, 0xff
/* 9CD24 8009C124 A56A0030 */  sh         $t2, 0x30($t3)
/* 9CD28 8009C128 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9CD2C 8009C12C 240C01E8 */  addiu      $t4, $zero, 0x1e8
/* 9CD30 8009C130 ADAC0024 */  sw         $t4, 0x24($t5)
/* 9CD34 8009C134 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9CD38 8009C138 ADC00028 */  sw         $zero, 0x28($t6)
/* 9CD3C 8009C13C 8FAF0038 */  lw         $t7, 0x38($sp)
/* 9CD40 8009C140 ADE0002C */  sw         $zero, 0x2c($t7)
/* 9CD44 8009C144 8FB90038 */  lw         $t9, 0x38($sp)
/* 9CD48 8009C148 24187FFF */  addiu      $t8, $zero, 0x7fff
/* 9CD4C 8009C14C A7380032 */  sh         $t8, 0x32($t9)
/* 9CD50 8009C150 8FA8003C */  lw         $t0, 0x3c($sp)
/* 9CD54 8009C154 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9CD58 8009C158 91090009 */  lbu        $t1, 9($t0)
/* 9CD5C 8009C15C A1490035 */  sb         $t1, 0x35($t2)
/* 9CD60 8009C160 8FAC0038 */  lw         $t4, 0x38($sp)
/* 9CD64 8009C164 240B3E80 */  addiu      $t3, $zero, 0x3e80
/* 9CD68 8009C168 AD8B005C */  sw         $t3, 0x5c($t4)
/* 9CD6C 8009C16C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9CD70 8009C170 ADA0001C */  sw         $zero, 0x1c($t5)
/* 9CD74 8009C174 8FAE003C */  lw         $t6, 0x3c($sp)
/* 9CD78 8009C178 8FB80038 */  lw         $t8, 0x38($sp)
/* 9CD7C 8009C17C 8DCF0010 */  lw         $t7, 0x10($t6)
/* 9CD80 8009C180 AF0F0070 */  sw         $t7, 0x70($t8)
/* 9CD84 8009C184 8FB9003C */  lw         $t9, 0x3c($sp)
/* 9CD88 8009C188 8FA90038 */  lw         $t1, 0x38($sp)
/* 9CD8C 8009C18C 8F280014 */  lw         $t0, 0x14($t9)
/* 9CD90 8009C190 AD280074 */  sw         $t0, 0x74($t1)
/* 9CD94 8009C194 8FAA003C */  lw         $t2, 0x3c($sp)
/* 9CD98 8009C198 8FAC0038 */  lw         $t4, 0x38($sp)
/* 9CD9C 8009C19C 8D4B0018 */  lw         $t3, 0x18($t2)
/* 9CDA0 8009C1A0 AD8B0078 */  sw         $t3, 0x78($t4)
/* 9CDA4 8009C1A4 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9CDA8 8009C1A8 ADA0007C */  sw         $zero, 0x7c($t5)
/* 9CDAC 8009C1AC 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9CDB0 8009C1B0 ADC00080 */  sw         $zero, 0x80($t6)
/* 9CDB4 8009C1B4 8FAF0038 */  lw         $t7, 0x38($sp)
/* 9CDB8 8009C1B8 ADE00084 */  sw         $zero, 0x84($t7)
/* 9CDBC 8009C1BC 8FB90038 */  lw         $t9, 0x38($sp)
/* 9CDC0 8009C1C0 24180009 */  addiu      $t8, $zero, 9
/* 9CDC4 8009C1C4 A7380038 */  sh         $t8, 0x38($t9)
/* 9CDC8 8009C1C8 8FA8003C */  lw         $t0, 0x3c($sp)
/* 9CDCC 8009C1CC 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9CDD0 8009C1D0 91090008 */  lbu        $t1, 8($t0)
/* 9CDD4 8009C1D4 A1490034 */  sb         $t1, 0x34($t2)
/* 9CDD8 8009C1D8 8FAB003C */  lw         $t3, 0x3c($sp)
/* 9CDDC 8009C1DC 3C04800D */  lui        $a0, %hi(D_800D29C0)
/* 9CDE0 8009C1E0 240C0010 */  addiu      $t4, $zero, 0x10
/* 9CDE4 8009C1E4 91670008 */  lbu        $a3, 8($t3)
/* 9CDE8 8009C1E8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 9CDEC 8009C1EC 248429C0 */  addiu      $a0, $a0, %lo(D_800D29C0)
/* 9CDF0 8009C1F0 2405005B */  addiu      $a1, $zero, 0x5b
/* 9CDF4 8009C1F4 0C02E384 */  jal        func_800B8E10
/* 9CDF8 8009C1F8 8FA60024 */   lw        $a2, 0x24($sp)
/* 9CDFC 8009C1FC 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9CE00 8009C200 ADA20060 */  sw         $v0, 0x60($t5)
/* 9CE04 8009C204 0C0278F3 */  jal        func_8009E3CC
/* 9CE08 8009C208 8FA40038 */   lw        $a0, 0x38($sp)
/* 9CE0C 8009C20C 8FAE003C */  lw         $t6, 0x3c($sp)
/* 9CE10 8009C210 3C04800D */  lui        $a0, %hi(D_800D29D8)
/* 9CE14 8009C214 240F0038 */  addiu      $t7, $zero, 0x38
/* 9CE18 8009C218 8DC70000 */  lw         $a3, ($t6)
/* 9CE1C 8009C21C AFAF0010 */  sw         $t7, 0x10($sp)
/* 9CE20 8009C220 248429D8 */  addiu      $a0, $a0, %lo(D_800D29D8)
/* 9CE24 8009C224 24050061 */  addiu      $a1, $zero, 0x61
/* 9CE28 8009C228 0C02E384 */  jal        func_800B8E10
/* 9CE2C 8009C22C 8FA60024 */   lw        $a2, 0x24($sp)
/* 9CE30 8009C230 AFA20028 */  sw         $v0, 0x28($sp)
/* 9CE34 8009C234 8FB80038 */  lw         $t8, 0x38($sp)
/* 9CE38 8009C238 AF00006C */  sw         $zero, 0x6c($t8)
/* 9CE3C 8009C23C 8FB9003C */  lw         $t9, 0x3c($sp)
/* 9CE40 8009C240 AFA00034 */  sw         $zero, 0x34($sp)
/* 9CE44 8009C244 8F280000 */  lw         $t0, ($t9)
/* 9CE48 8009C248 19000017 */  blez       $t0, .L8009C2A8
/* 9CE4C 8009C24C 00000000 */   nop
.L8009C250:
/* 9CE50 8009C250 8FA90034 */  lw         $t1, 0x34($sp)
/* 9CE54 8009C254 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9CE58 8009C258 000950C0 */  sll        $t2, $t1, 3
/* 9CE5C 8009C25C 01495023 */  subu       $t2, $t2, $t1
/* 9CE60 8009C260 000A50C0 */  sll        $t2, $t2, 3
/* 9CE64 8009C264 014B6021 */  addu       $t4, $t2, $t3
/* 9CE68 8009C268 AFAC002C */  sw         $t4, 0x2c($sp)
/* 9CE6C 8009C26C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9CE70 8009C270 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9CE74 8009C274 8DAE006C */  lw         $t6, 0x6c($t5)
/* 9CE78 8009C278 ADEE0000 */  sw         $t6, ($t7)
/* 9CE7C 8009C27C 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9CE80 8009C280 8FB90038 */  lw         $t9, 0x38($sp)
/* 9CE84 8009C284 AF38006C */  sw         $t8, 0x6c($t9)
/* 9CE88 8009C288 8FA80034 */  lw         $t0, 0x34($sp)
/* 9CE8C 8009C28C 8FAA003C */  lw         $t2, 0x3c($sp)
/* 9CE90 8009C290 25090001 */  addiu      $t1, $t0, 1
/* 9CE94 8009C294 AFA90034 */  sw         $t1, 0x34($sp)
/* 9CE98 8009C298 8D4B0000 */  lw         $t3, ($t2)
/* 9CE9C 8009C29C 012B082A */  slt        $at, $t1, $t3
/* 9CEA0 8009C2A0 1420FFEB */  bnez       $at, .L8009C250
/* 9CEA4 8009C2A4 00000000 */   nop
.L8009C2A8:
/* 9CEA8 8009C2A8 8FAC0038 */  lw         $t4, 0x38($sp)
/* 9CEAC 8009C2AC AD800064 */  sw         $zero, 0x64($t4)
/* 9CEB0 8009C2B0 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9CEB4 8009C2B4 ADA00068 */  sw         $zero, 0x68($t5)
/* 9CEB8 8009C2B8 8FAE003C */  lw         $t6, 0x3c($sp)
/* 9CEBC 8009C2BC 3C04800D */  lui        $a0, %hi(D_800D29F0)
/* 9CEC0 8009C2C0 240F001C */  addiu      $t7, $zero, 0x1c
/* 9CEC4 8009C2C4 8DC70004 */  lw         $a3, 4($t6)
/* 9CEC8 8009C2C8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 9CECC 8009C2CC 248429F0 */  addiu      $a0, $a0, %lo(D_800D29F0)
/* 9CED0 8009C2D0 2405006F */  addiu      $a1, $zero, 0x6f
/* 9CED4 8009C2D4 0C02E384 */  jal        func_800B8E10
/* 9CED8 8009C2D8 8FA60024 */   lw        $a2, 0x24($sp)
/* 9CEDC 8009C2DC AFA20030 */  sw         $v0, 0x30($sp)
/* 9CEE0 8009C2E0 8FA40038 */  lw         $a0, 0x38($sp)
/* 9CEE4 8009C2E4 8FB8003C */  lw         $t8, 0x3c($sp)
/* 9CEE8 8009C2E8 8FA50030 */  lw         $a1, 0x30($sp)
/* 9CEEC 8009C2EC 24840048 */  addiu      $a0, $a0, 0x48
/* 9CEF0 8009C2F0 0C026E18 */  jal        func_8009B860
/* 9CEF4 8009C2F4 8F060004 */   lw        $a2, 4($t8)
/* 9CEF8 8009C2F8 8FB90038 */  lw         $t9, 0x38($sp)
/* 9CEFC 8009C2FC AF200000 */  sw         $zero, ($t9)
/* 9CF00 8009C300 8FAA0038 */  lw         $t2, 0x38($sp)
/* 9CF04 8009C304 3C08800A */  lui        $t0, %hi(func_8009C340)
/* 9CF08 8009C308 2508C340 */  addiu      $t0, $t0, %lo(func_8009C340)
/* 9CF0C 8009C30C AD480008 */  sw         $t0, 8($t2)
/* 9CF10 8009C310 8FA90038 */  lw         $t1, 0x38($sp)
/* 9CF14 8009C314 AD290004 */  sw         $t1, 4($t1)
/* 9CF18 8009C318 3C04800D */  lui        $a0, %hi(D_800CC220)
/* 9CF1C 8009C31C 8C84C220 */  lw         $a0, %lo(D_800CC220)($a0)
/* 9CF20 8009C320 0C02C5C0 */  jal        func_800B1700
/* 9CF24 8009C324 8FA50038 */   lw        $a1, 0x38($sp)
/* 9CF28 8009C328 10000001 */  b          .L8009C330
/* 9CF2C 8009C32C 00000000 */   nop
.L8009C330:
/* 9CF30 8009C330 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9CF34 8009C334 27BD0038 */  addiu      $sp, $sp, 0x38
/* 9CF38 8009C338 03E00008 */  jr         $ra
/* 9CF3C 8009C33C 00000000 */   nop

glabel func_8009C340
/* 9CF40 8009C340 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 9CF44 8009C344 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9CF48 8009C348 AFA40050 */  sw         $a0, 0x50($sp)
/* 9CF4C 8009C34C AFB10018 */  sw         $s1, 0x18($sp)
/* 9CF50 8009C350 AFB00014 */  sw         $s0, 0x14($sp)
/* 9CF54 8009C354 8FAE0050 */  lw         $t6, 0x50($sp)
/* 9CF58 8009C358 AFAE004C */  sw         $t6, 0x4c($sp)
.L8009C35C:
/* 9CF5C 8009C35C 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9CF60 8009C360 95F80038 */  lhu        $t8, 0x38($t7)
/* 9CF64 8009C364 2F010018 */  sltiu      $at, $t8, 0x18
/* 9CF68 8009C368 102001B9 */  beqz       $at, .L8009CA50
/* 9CF6C 8009C36C 00000000 */   nop
/* 9CF70 8009C370 0018C080 */  sll        $t8, $t8, 2
/* 9CF74 8009C374 3C01800D */  lui        $at, %hi(D_800D2B60)
/* 9CF78 8009C378 00380821 */  addu       $at, $at, $t8
/* 9CF7C 8009C37C 8C382B60 */  lw         $t8, %lo(D_800D2B60)($at)
/* 9CF80 8009C380 03000008 */  jr         $t8
/* 9CF84 8009C384 00000000 */   nop
/* 9CF88 8009C388 0C0272EF */  jal        func_8009CBBC
/* 9CF8C 8009C38C 8FA4004C */   lw        $a0, 0x4c($sp)
/* 9CF90 8009C390 100001AF */  b          .L8009CA50
/* 9CF94 8009C394 00000000 */   nop
/* 9CF98 8009C398 24190009 */  addiu      $t9, $zero, 9
/* 9CF9C 8009C39C A7B9003C */  sh         $t9, 0x3c($sp)
/* 9CFA0 8009C3A0 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9CFA4 8009C3A4 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9CFA8 8009C3A8 25040048 */  addiu      $a0, $t0, 0x48
/* 9CFAC 8009C3AC 0C026E68 */  jal        func_8009B9A0
/* 9CFB0 8009C3B0 8D06005C */   lw        $a2, 0x5c($t0)
/* 9CFB4 8009C3B4 100001A6 */  b          .L8009CA50
/* 9CFB8 8009C3B8 00000000 */   nop
/* 9CFBC 8009C3BC 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9CFC0 8009C3C0 8D2A003C */  lw         $t2, 0x3c($t1)
/* 9CFC4 8009C3C4 AFAA0038 */  sw         $t2, 0x38($sp)
/* 9CFC8 8009C3C8 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9CFCC 8009C3CC 8FA50038 */  lw         $a1, 0x38($sp)
/* 9CFD0 8009C3D0 0C02E5C0 */  jal        func_800B9700
/* 9CFD4 8009C3D4 8D640014 */   lw        $a0, 0x14($t3)
/* 9CFD8 8009C3D8 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9CFDC 8009C3DC 8FA50038 */  lw         $a1, 0x38($sp)
/* 9CFE0 8009C3E0 0C026F20 */  jal        func_8009BC80
/* 9CFE4 8009C3E4 8D840014 */   lw        $a0, 0x14($t4)
/* 9CFE8 8009C3E8 8FAD0038 */  lw         $t5, 0x38($sp)
/* 9CFEC 8009C3EC 8DAE0010 */  lw         $t6, 0x10($t5)
/* 9CFF0 8009C3F0 AFAE0030 */  sw         $t6, 0x30($sp)
/* 9CFF4 8009C3F4 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9CFF8 8009C3F8 91F80037 */  lbu        $t8, 0x37($t7)
/* 9CFFC 8009C3FC 13000004 */  beqz       $t8, .L8009C410
/* 9D000 8009C400 00000000 */   nop
/* 9D004 8009C404 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D008 8009C408 0C027912 */  jal        func_8009E448
/* 9D00C 8009C40C 8FA50030 */   lw        $a1, 0x30($sp)
.L8009C410:
/* 9D010 8009C410 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D014 8009C414 0C0276A6 */  jal        func_8009DA98
/* 9D018 8009C418 8FA50038 */   lw        $a1, 0x38($sp)
/* 9D01C 8009C41C 1000018C */  b          .L8009CA50
/* 9D020 8009C420 00000000 */   nop
/* 9D024 8009C424 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D028 8009C428 8F28003C */  lw         $t0, 0x3c($t9)
/* 9D02C 8009C42C AFA80038 */  sw         $t0, 0x38($sp)
/* 9D030 8009C430 8FA90038 */  lw         $t1, 0x38($sp)
/* 9D034 8009C434 8D2A0010 */  lw         $t2, 0x10($t1)
/* 9D038 8009C438 AFAA0030 */  sw         $t2, 0x30($sp)
/* 9D03C 8009C43C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9D040 8009C440 916C0034 */  lbu        $t4, 0x34($t3)
/* 9D044 8009C444 15800004 */  bnez       $t4, .L8009C458
/* 9D048 8009C448 00000000 */   nop
/* 9D04C 8009C44C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D050 8009C450 240D0001 */  addiu      $t5, $zero, 1
/* 9D054 8009C454 A1CD0034 */  sb         $t5, 0x34($t6)
.L8009C458:
/* 9D058 8009C458 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D05C 8009C45C 8DF80040 */  lw         $t8, 0x40($t7)
/* 9D060 8009C460 AFB80034 */  sw         $t8, 0x34($sp)
/* 9D064 8009C464 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D068 8009C468 8FA90030 */  lw         $t1, 0x30($sp)
/* 9D06C 8009C46C 93280044 */  lbu        $t0, 0x44($t9)
/* 9D070 8009C470 A1280030 */  sb         $t0, 0x30($t1)
/* 9D074 8009C474 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D078 8009C478 8FAC0034 */  lw         $t4, 0x34($sp)
/* 9D07C 8009C47C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D080 8009C480 8D4B001C */  lw         $t3, 0x1c($t2)
/* 9D084 8009C484 016C6821 */  addu       $t5, $t3, $t4
/* 9D088 8009C488 ADCD0024 */  sw         $t5, 0x24($t6)
/* 9D08C 8009C48C 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D090 8009C490 0C027772 */  jal        func_8009DDC8
/* 9D094 8009C494 8FA5004C */   lw        $a1, 0x4c($sp)
/* 9D098 8009C498 00028400 */  sll        $s0, $v0, 0x10
/* 9D09C 8009C49C 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D0A0 8009C4A0 00107C03 */  sra        $t7, $s0, 0x10
/* 9D0A4 8009C4A4 01E08025 */  or         $s0, $t7, $zero
/* 9D0A8 8009C4A8 02003025 */  or         $a2, $s0, $zero
/* 9D0AC 8009C4AC 8FA50038 */  lw         $a1, 0x38($sp)
/* 9D0B0 8009C4B0 8FA70034 */  lw         $a3, 0x34($sp)
/* 9D0B4 8009C4B4 0C026DDC */  jal        func_8009B770
/* 9D0B8 8009C4B8 8F040014 */   lw        $a0, 0x14($t8)
/* 9D0BC 8009C4BC 10000164 */  b          .L8009CA50
/* 9D0C0 8009C4C0 00000000 */   nop
/* 9D0C4 8009C4C4 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D0C8 8009C4C8 8F28003C */  lw         $t0, 0x3c($t9)
/* 9D0CC 8009C4CC AFA80030 */  sw         $t0, 0x30($sp)
/* 9D0D0 8009C4D0 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9D0D4 8009C4D4 8D2A0040 */  lw         $t2, 0x40($t1)
/* 9D0D8 8009C4D8 AFAA002C */  sw         $t2, 0x2c($sp)
/* 9D0DC 8009C4DC 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D0E0 8009C4E0 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9D0E4 8009C4E4 27A50028 */  addiu      $a1, $sp, 0x28
/* 9D0E8 8009C4E8 8D790074 */  lw         $t9, 0x74($t3)
/* 9D0EC 8009C4EC 0320F809 */  jalr       $t9
/* 9D0F0 8009C4F0 00000000 */   nop
/* 9D0F4 8009C4F4 AFA20034 */  sw         $v0, 0x34($sp)
/* 9D0F8 8009C4F8 444CF800 */  cfc1       $t4, $31
/* 9D0FC 8009C4FC 240D0001 */  addiu      $t5, $zero, 1
/* 9D100 8009C500 44CDF800 */  ctc1       $t5, $31
/* 9D104 8009C504 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 9D108 8009C508 460021A4 */  cvt.w.s    $f6, $f4
/* 9D10C 8009C50C 444DF800 */  cfc1       $t5, $31
/* 9D110 8009C510 00000000 */  nop
/* 9D114 8009C514 31A10004 */  andi       $at, $t5, 4
/* 9D118 8009C518 31AD0078 */  andi       $t5, $t5, 0x78
/* 9D11C 8009C51C 11A00014 */  beqz       $t5, .L8009C570
/* 9D120 8009C520 00000000 */   nop
/* 9D124 8009C524 3C014F00 */  lui        $at, 0x4f00
/* 9D128 8009C528 44813000 */  mtc1       $at, $f6
/* 9D12C 8009C52C 240D0001 */  addiu      $t5, $zero, 1
/* 9D130 8009C530 46062181 */  sub.s      $f6, $f4, $f6
/* 9D134 8009C534 44CDF800 */  ctc1       $t5, $31
/* 9D138 8009C538 00000000 */  nop
/* 9D13C 8009C53C 460031A4 */  cvt.w.s    $f6, $f6
/* 9D140 8009C540 444DF800 */  cfc1       $t5, $31
/* 9D144 8009C544 00000000 */  nop
/* 9D148 8009C548 31A10004 */  andi       $at, $t5, 4
/* 9D14C 8009C54C 31AD0078 */  andi       $t5, $t5, 0x78
/* 9D150 8009C550 15A00005 */  bnez       $t5, .L8009C568
/* 9D154 8009C554 00000000 */   nop
/* 9D158 8009C558 440D3000 */  mfc1       $t5, $f6
/* 9D15C 8009C55C 3C018000 */  lui        $at, 0x8000
/* 9D160 8009C560 10000007 */  b          .L8009C580
/* 9D164 8009C564 01A16825 */   or        $t5, $t5, $at
.L8009C568:
/* 9D168 8009C568 10000005 */  b          .L8009C580
/* 9D16C 8009C56C 240DFFFF */   addiu     $t5, $zero, -1
.L8009C570:
/* 9D170 8009C570 440D3000 */  mfc1       $t5, $f6
/* 9D174 8009C574 00000000 */  nop
/* 9D178 8009C578 05A0FFFB */  bltz       $t5, .L8009C568
/* 9D17C 8009C57C 00000000 */   nop
.L8009C580:
/* 9D180 8009C580 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D184 8009C584 44CCF800 */  ctc1       $t4, $31
/* 9D188 8009C588 A1CD0036 */  sb         $t5, 0x36($t6)
/* 9D18C 8009C58C 00000000 */  nop
/* 9D190 8009C590 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D194 8009C594 0C027772 */  jal        func_8009DDC8
/* 9D198 8009C598 8FA5004C */   lw        $a1, 0x4c($sp)
/* 9D19C 8009C59C 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D1A0 8009C5A0 00028400 */  sll        $s0, $v0, 0x10
/* 9D1A4 8009C5A4 00107C03 */  sra        $t7, $s0, 0x10
/* 9D1A8 8009C5A8 01E08025 */  or         $s0, $t7, $zero
/* 9D1AC 8009C5AC 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D1B0 8009C5B0 0C02779D */  jal        func_8009DE74
/* 9D1B4 8009C5B4 8F05001C */   lw        $a1, 0x1c($t8)
/* 9D1B8 8009C5B8 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D1BC 8009C5BC 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D1C0 8009C5C0 00408825 */  or         $s1, $v0, $zero
/* 9D1C4 8009C5C4 02203825 */  or         $a3, $s1, $zero
/* 9D1C8 8009C5C8 02003025 */  or         $a2, $s0, $zero
/* 9D1CC 8009C5CC 8D040014 */  lw         $a0, 0x14($t0)
/* 9D1D0 8009C5D0 0C026DDC */  jal        func_8009B770
/* 9D1D4 8009C5D4 24A50004 */   addiu     $a1, $a1, 4
/* 9D1D8 8009C5D8 24090016 */  addiu      $t1, $zero, 0x16
/* 9D1DC 8009C5DC A7A9003C */  sh         $t1, 0x3c($sp)
/* 9D1E0 8009C5E0 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9D1E4 8009C5E4 AFAA0040 */  sw         $t2, 0x40($sp)
/* 9D1E8 8009C5E8 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9D1EC 8009C5EC AFAB0044 */  sw         $t3, 0x44($sp)
/* 9D1F0 8009C5F0 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D1F4 8009C5F4 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D1F8 8009C5F8 8FA60034 */  lw         $a2, 0x34($sp)
/* 9D1FC 8009C5FC 0C026E68 */  jal        func_8009B9A0
/* 9D200 8009C600 24840048 */   addiu     $a0, $a0, 0x48
/* 9D204 8009C604 10000112 */  b          .L8009CA50
/* 9D208 8009C608 00000000 */   nop
/* 9D20C 8009C60C 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D210 8009C610 8F2C003C */  lw         $t4, 0x3c($t9)
/* 9D214 8009C614 AFAC0030 */  sw         $t4, 0x30($sp)
/* 9D218 8009C618 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D21C 8009C61C 8DAE0040 */  lw         $t6, 0x40($t5)
/* 9D220 8009C620 AFAE002C */  sw         $t6, 0x2c($sp)
/* 9D224 8009C624 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D228 8009C628 91F80044 */  lbu        $t8, 0x44($t7)
/* 9D22C 8009C62C A3B80027 */  sb         $t8, 0x27($sp)
/* 9D230 8009C630 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D234 8009C634 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9D238 8009C638 27A50028 */  addiu      $a1, $sp, 0x28
/* 9D23C 8009C63C 8D190074 */  lw         $t9, 0x74($t0)
/* 9D240 8009C640 0320F809 */  jalr       $t9
/* 9D244 8009C644 00000000 */   nop
/* 9D248 8009C648 AFA20034 */  sw         $v0, 0x34($sp)
/* 9D24C 8009C64C C7A80028 */  lwc1       $f8, 0x28($sp)
/* 9D250 8009C650 8FA90030 */  lw         $t1, 0x30($sp)
/* 9D254 8009C654 E528002C */  swc1       $f8, 0x2c($t1)
/* 9D258 8009C658 8FAB0030 */  lw         $t3, 0x30($sp)
/* 9D25C 8009C65C 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D260 8009C660 93AD0027 */  lbu        $t5, 0x27($sp)
/* 9D264 8009C664 C5700028 */  lwc1       $f16, 0x28($t3)
/* 9D268 8009C668 C572002C */  lwc1       $f18, 0x2c($t3)
/* 9D26C 8009C66C 8D4C0060 */  lw         $t4, 0x60($t2)
/* 9D270 8009C670 000D7100 */  sll        $t6, $t5, 4
/* 9D274 8009C674 46128102 */  mul.s      $f4, $f16, $f18
/* 9D278 8009C678 018E7821 */  addu       $t7, $t4, $t6
/* 9D27C 8009C67C C5EA000C */  lwc1       $f10, 0xc($t7)
/* 9D280 8009C680 25650004 */  addiu      $a1, $t3, 4
/* 9D284 8009C684 8D440014 */  lw         $a0, 0x14($t2)
/* 9D288 8009C688 46045182 */  mul.s      $f6, $f10, $f4
/* 9D28C 8009C68C 44063000 */  mfc1       $a2, $f6
/* 9D290 8009C690 0C028818 */  jal        func_800A2060
/* 9D294 8009C694 00000000 */   nop
/* 9D298 8009C698 24180017 */  addiu      $t8, $zero, 0x17
/* 9D29C 8009C69C A7B8003C */  sh         $t8, 0x3c($sp)
/* 9D2A0 8009C6A0 8FA80030 */  lw         $t0, 0x30($sp)
/* 9D2A4 8009C6A4 AFA80040 */  sw         $t0, 0x40($sp)
/* 9D2A8 8009C6A8 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9D2AC 8009C6AC AFB90044 */  sw         $t9, 0x44($sp)
/* 9D2B0 8009C6B0 93A90027 */  lbu        $t1, 0x27($sp)
/* 9D2B4 8009C6B4 A3A90048 */  sb         $t1, 0x48($sp)
/* 9D2B8 8009C6B8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D2BC 8009C6BC 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D2C0 8009C6C0 8FA60034 */  lw         $a2, 0x34($sp)
/* 9D2C4 8009C6C4 0C026E68 */  jal        func_8009B9A0
/* 9D2C8 8009C6C8 24840048 */   addiu     $a0, $a0, 0x48
/* 9D2CC 8009C6CC 100000E0 */  b          .L8009CA50
/* 9D2D0 8009C6D0 00000000 */   nop
/* 9D2D4 8009C6D4 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D2D8 8009C6D8 01402025 */  or         $a0, $t2, $zero
/* 9D2DC 8009C6DC 0C027331 */  jal        func_8009CCC4
/* 9D2E0 8009C6E0 25450038 */   addiu     $a1, $t2, 0x38
/* 9D2E4 8009C6E4 100000DA */  b          .L8009CA50
/* 9D2E8 8009C6E8 00000000 */   nop
/* 9D2EC 8009C6EC 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D2F0 8009C6F0 01A02025 */  or         $a0, $t5, $zero
/* 9D2F4 8009C6F4 0C027657 */  jal        func_8009D95C
/* 9D2F8 8009C6F8 25A50038 */   addiu     $a1, $t5, 0x38
/* 9D2FC 8009C6FC 100000D4 */  b          .L8009CA50
/* 9D300 8009C700 00000000 */   nop
/* 9D304 8009C704 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D308 8009C708 24010001 */  addiu      $at, $zero, 1
/* 9D30C 8009C70C 8D8E002C */  lw         $t6, 0x2c($t4)
/* 9D310 8009C710 11C10006 */  beq        $t6, $at, .L8009C72C
/* 9D314 8009C714 00000000 */   nop
/* 9D318 8009C718 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D31C 8009C71C 240F0001 */  addiu      $t7, $zero, 1
/* 9D320 8009C720 AD6F002C */  sw         $t7, 0x2c($t3)
/* 9D324 8009C724 0C0272AD */  jal        func_8009CAB4
/* 9D328 8009C728 8FA4004C */   lw        $a0, 0x4c($sp)
.L8009C72C:
/* 9D32C 8009C72C 100000C8 */  b          .L8009CA50
/* 9D330 8009C730 00000000 */   nop
/* 9D334 8009C734 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D338 8009C738 24010002 */  addiu      $at, $zero, 2
/* 9D33C 8009C73C 8F08002C */  lw         $t0, 0x2c($t8)
/* 9D340 8009C740 15010022 */  bne        $t0, $at, .L8009C7CC
/* 9D344 8009C744 00000000 */   nop
/* 9D348 8009C748 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D34C 8009C74C 8F290064 */  lw         $t1, 0x64($t9)
/* 9D350 8009C750 1120001A */  beqz       $t1, .L8009C7BC
/* 9D354 8009C754 AFA90030 */   sw        $t1, 0x30($sp)
.L8009C758:
/* 9D358 8009C758 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D35C 8009C75C 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D360 8009C760 8D440014 */  lw         $a0, 0x14($t2)
/* 9D364 8009C764 0C02E5C0 */  jal        func_800B9700
/* 9D368 8009C768 24A50004 */   addiu     $a1, $a1, 4
/* 9D36C 8009C76C 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D370 8009C770 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D374 8009C774 8DA40014 */  lw         $a0, 0x14($t5)
/* 9D378 8009C778 0C026F20 */  jal        func_8009BC80
/* 9D37C 8009C77C 24A50004 */   addiu     $a1, $a1, 4
/* 9D380 8009C780 8FAC0030 */  lw         $t4, 0x30($sp)
/* 9D384 8009C784 918E0037 */  lbu        $t6, 0x37($t4)
/* 9D388 8009C788 11C00004 */  beqz       $t6, .L8009C79C
/* 9D38C 8009C78C 00000000 */   nop
/* 9D390 8009C790 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D394 8009C794 0C027912 */  jal        func_8009E448
/* 9D398 8009C798 8FA50030 */   lw        $a1, 0x30($sp)
.L8009C79C:
/* 9D39C 8009C79C 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D3A0 8009C7A0 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D3A4 8009C7A4 0C0276A6 */  jal        func_8009DA98
/* 9D3A8 8009C7A8 24A50004 */   addiu     $a1, $a1, 4
/* 9D3AC 8009C7AC 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D3B0 8009C7B0 8DEB0064 */  lw         $t3, 0x64($t7)
/* 9D3B4 8009C7B4 1560FFE8 */  bnez       $t3, .L8009C758
/* 9D3B8 8009C7B8 AFAB0030 */   sw        $t3, 0x30($sp)
.L8009C7BC:
/* 9D3BC 8009C7BC 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D3C0 8009C7C0 AF00001C */  sw         $zero, 0x1c($t8)
/* 9D3C4 8009C7C4 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D3C8 8009C7C8 AD00002C */  sw         $zero, 0x2c($t0)
.L8009C7CC:
/* 9D3CC 8009C7CC 100000A0 */  b          .L8009CA50
/* 9D3D0 8009C7D0 00000000 */   nop
/* 9D3D4 8009C7D4 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D3D8 8009C7D8 24010001 */  addiu      $at, $zero, 1
/* 9D3DC 8009C7DC 8F29002C */  lw         $t1, 0x2c($t9)
/* 9D3E0 8009C7E0 15210028 */  bne        $t1, $at, .L8009C884
/* 9D3E4 8009C7E4 00000000 */   nop
/* 9D3E8 8009C7E8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D3EC 8009C7EC 00002825 */  or         $a1, $zero, $zero
/* 9D3F0 8009C7F0 0C026EEC */  jal        func_8009BBB0
/* 9D3F4 8009C7F4 24840048 */   addiu     $a0, $a0, 0x48
/* 9D3F8 8009C7F8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D3FC 8009C7FC 24050002 */  addiu      $a1, $zero, 2
/* 9D400 8009C800 0C026EEC */  jal        func_8009BBB0
/* 9D404 8009C804 24840048 */   addiu     $a0, $a0, 0x48
/* 9D408 8009C808 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D40C 8009C80C 8D4D0064 */  lw         $t5, 0x64($t2)
/* 9D410 8009C810 11A00011 */  beqz       $t5, .L8009C858
/* 9D414 8009C814 AFAD0030 */   sw        $t5, 0x30($sp)
.L8009C818:
/* 9D418 8009C818 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D41C 8009C81C 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D420 8009C820 3406C350 */  ori        $a2, $zero, 0xc350
/* 9D424 8009C824 0C02782B */  jal        func_8009E0AC
/* 9D428 8009C828 24A50004 */   addiu     $a1, $a1, 4
/* 9D42C 8009C82C 10400006 */  beqz       $v0, .L8009C848
/* 9D430 8009C830 00000000 */   nop
/* 9D434 8009C834 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D438 8009C838 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D43C 8009C83C 3406C350 */  ori        $a2, $zero, 0xc350
/* 9D440 8009C840 0C0277CD */  jal        func_8009DF34
/* 9D444 8009C844 24A50004 */   addiu     $a1, $a1, 4
.L8009C848:
/* 9D448 8009C848 8FAC0030 */  lw         $t4, 0x30($sp)
/* 9D44C 8009C84C 8D8E0000 */  lw         $t6, ($t4)
/* 9D450 8009C850 15C0FFF1 */  bnez       $t6, .L8009C818
/* 9D454 8009C854 AFAE0030 */   sw        $t6, 0x30($sp)
.L8009C858:
/* 9D458 8009C858 8FAB004C */  lw         $t3, 0x4c($sp)
/* 9D45C 8009C85C 240F0002 */  addiu      $t7, $zero, 2
/* 9D460 8009C860 AD6F002C */  sw         $t7, 0x2c($t3)
/* 9D464 8009C864 24180010 */  addiu      $t8, $zero, 0x10
/* 9D468 8009C868 A7B8003C */  sh         $t8, 0x3c($sp)
/* 9D46C 8009C86C 8FA4004C */  lw         $a0, 0x4c($sp)
/* 9D470 8009C870 3C067FFF */  lui        $a2, 0x7fff
/* 9D474 8009C874 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 9D478 8009C878 27A5003C */  addiu      $a1, $sp, 0x3c
/* 9D47C 8009C87C 0C026E68 */  jal        func_8009B9A0
/* 9D480 8009C880 24840048 */   addiu     $a0, $a0, 0x48
.L8009C884:
/* 9D484 8009C884 10000072 */  b          .L8009CA50
/* 9D488 8009C888 00000000 */   nop
/* 9D48C 8009C88C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D490 8009C890 8519003C */  lh         $t9, 0x3c($t0)
/* 9D494 8009C894 A5190032 */  sh         $t9, 0x32($t0)
/* 9D498 8009C898 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9D49C 8009C89C 8D2A0064 */  lw         $t2, 0x64($t1)
/* 9D4A0 8009C8A0 11400017 */  beqz       $t2, .L8009C900
/* 9D4A4 8009C8A4 AFAA0030 */   sw        $t2, 0x30($sp)
.L8009C8A8:
/* 9D4A8 8009C8A8 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D4AC 8009C8AC 0C027772 */  jal        func_8009DDC8
/* 9D4B0 8009C8B0 8FA5004C */   lw        $a1, 0x4c($sp)
/* 9D4B4 8009C8B4 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D4B8 8009C8B8 00028400 */  sll        $s0, $v0, 0x10
/* 9D4BC 8009C8BC 00106C03 */  sra        $t5, $s0, 0x10
/* 9D4C0 8009C8C0 01A08025 */  or         $s0, $t5, $zero
/* 9D4C4 8009C8C4 8FA40030 */  lw         $a0, 0x30($sp)
/* 9D4C8 8009C8C8 0C02779D */  jal        func_8009DE74
/* 9D4CC 8009C8CC 8D85001C */   lw        $a1, 0x1c($t4)
/* 9D4D0 8009C8D0 8FAE004C */  lw         $t6, 0x4c($sp)
/* 9D4D4 8009C8D4 8FA50030 */  lw         $a1, 0x30($sp)
/* 9D4D8 8009C8D8 00408825 */  or         $s1, $v0, $zero
/* 9D4DC 8009C8DC 02203825 */  or         $a3, $s1, $zero
/* 9D4E0 8009C8E0 02003025 */  or         $a2, $s0, $zero
/* 9D4E4 8009C8E4 8DC40014 */  lw         $a0, 0x14($t6)
/* 9D4E8 8009C8E8 0C026DDC */  jal        func_8009B770
/* 9D4EC 8009C8EC 24A50004 */   addiu     $a1, $a1, 4
/* 9D4F0 8009C8F0 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9D4F4 8009C8F4 8DEB0000 */  lw         $t3, ($t7)
/* 9D4F8 8009C8F8 1560FFEB */  bnez       $t3, .L8009C8A8
/* 9D4FC 8009C8FC AFAB0030 */   sw        $t3, 0x30($sp)
.L8009C900:
/* 9D500 8009C900 10000053 */  b          .L8009CA50
/* 9D504 8009C904 00000000 */   nop
/* 9D508 8009C908 8FB8004C */  lw         $t8, 0x4c($sp)
/* 9D50C 8009C90C 8F19003C */  lw         $t9, 0x3c($t8)
/* 9D510 8009C910 AF19007C */  sw         $t9, 0x7c($t8)
/* 9D514 8009C914 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D518 8009C918 8D090040 */  lw         $t1, 0x40($t0)
/* 9D51C 8009C91C AD090080 */  sw         $t1, 0x80($t0)
/* 9D520 8009C920 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D524 8009C924 8D4D0044 */  lw         $t5, 0x44($t2)
/* 9D528 8009C928 AD4D0084 */  sw         $t5, 0x84($t2)
/* 9D52C 8009C92C 10000048 */  b          .L8009CA50
/* 9D530 8009C930 00000000 */   nop
/* 9D534 8009C934 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D538 8009C938 918E003C */  lbu        $t6, 0x3c($t4)
/* 9D53C 8009C93C A3AE0027 */  sb         $t6, 0x27($sp)
/* 9D540 8009C940 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D544 8009C944 93B80027 */  lbu        $t8, 0x27($sp)
/* 9D548 8009C948 8DF90060 */  lw         $t9, 0x60($t7)
/* 9D54C 8009C94C 91EB003D */  lbu        $t3, 0x3d($t7)
/* 9D550 8009C950 00184900 */  sll        $t1, $t8, 4
/* 9D554 8009C954 03294021 */  addu       $t0, $t9, $t1
/* 9D558 8009C958 A10B0008 */  sb         $t3, 8($t0)
/* 9D55C 8009C95C 1000003C */  b          .L8009CA50
/* 9D560 8009C960 00000000 */   nop
/* 9D564 8009C964 8FAD004C */  lw         $t5, 0x4c($sp)
/* 9D568 8009C968 24010001 */  addiu      $at, $zero, 1
/* 9D56C 8009C96C 8DAA002C */  lw         $t2, 0x2c($t5)
/* 9D570 8009C970 11410003 */  beq        $t2, $at, .L8009C980
/* 9D574 8009C974 00000000 */   nop
/* 9D578 8009C978 10000007 */  b          .L8009C998
/* 9D57C 8009C97C 00000000 */   nop
.L8009C980:
/* 9D580 8009C980 3C04800D */  lui        $a0, %hi(D_800D2A08)
/* 9D584 8009C984 3C05800D */  lui        $a1, %hi(D_800D2A24)
/* 9D588 8009C988 24A52A24 */  addiu      $a1, $a1, %lo(D_800D2A24)
/* 9D58C 8009C98C 24842A08 */  addiu      $a0, $a0, %lo(D_800D2A08)
/* 9D590 8009C990 0C02C480 */  jal        func_800B1200
/* 9D594 8009C994 24060128 */   addiu     $a2, $zero, 0x128
.L8009C998:
/* 9D598 8009C998 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D59C 8009C99C 8D8E003C */  lw         $t6, 0x3c($t4)
/* 9D5A0 8009C9A0 AD8E0018 */  sw         $t6, 0x18($t4)
/* 9D5A4 8009C9A4 3C0548F4 */  lui        $a1, 0x48f4
/* 9D5A8 8009C9A8 34A52400 */  ori        $a1, $a1, 0x2400
/* 9D5AC 8009C9AC 0C027961 */  jal        func_8009E584
/* 9D5B0 8009C9B0 8FA4004C */   lw        $a0, 0x4c($sp)
/* 9D5B4 8009C9B4 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D5B8 8009C9B8 8DF80020 */  lw         $t8, 0x20($t7)
/* 9D5BC 8009C9BC 13000005 */  beqz       $t8, .L8009C9D4
/* 9D5C0 8009C9C0 00000000 */   nop
/* 9D5C4 8009C9C4 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D5C8 8009C9C8 03202025 */  or         $a0, $t9, $zero
/* 9D5CC 8009C9CC 0C027873 */  jal        func_8009E1CC
/* 9D5D0 8009C9D0 8F250020 */   lw        $a1, 0x20($t9)
.L8009C9D4:
/* 9D5D4 8009C9D4 1000001E */  b          .L8009CA50
/* 9D5D8 8009C9D8 00000000 */   nop
/* 9D5DC 8009C9DC 8FA9004C */  lw         $t1, 0x4c($sp)
/* 9D5E0 8009C9E0 8D2B002C */  lw         $t3, 0x2c($t1)
/* 9D5E4 8009C9E4 15600003 */  bnez       $t3, .L8009C9F4
/* 9D5E8 8009C9E8 00000000 */   nop
/* 9D5EC 8009C9EC 10000007 */  b          .L8009CA0C
/* 9D5F0 8009C9F0 00000000 */   nop
.L8009C9F4:
/* 9D5F4 8009C9F4 3C04800D */  lui        $a0, %hi(D_800D2A3C)
/* 9D5F8 8009C9F8 3C05800D */  lui        $a1, %hi(D_800D2A58)
/* 9D5FC 8009C9FC 24A52A58 */  addiu      $a1, $a1, %lo(D_800D2A58)
/* 9D600 8009CA00 24842A3C */  addiu      $a0, $a0, %lo(D_800D2A3C)
/* 9D604 8009CA04 0C02C480 */  jal        func_800B1200
/* 9D608 8009CA08 24060131 */   addiu     $a2, $zero, 0x131
.L8009CA0C:
/* 9D60C 8009CA0C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D610 8009CA10 8D0D003C */  lw         $t5, 0x3c($t0)
/* 9D614 8009CA14 AD0D0020 */  sw         $t5, 0x20($t0)
/* 9D618 8009CA18 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9D61C 8009CA1C 01402025 */  or         $a0, $t2, $zero
/* 9D620 8009CA20 0C027873 */  jal        func_8009E1CC
/* 9D624 8009CA24 8D450020 */   lw        $a1, 0x20($t2)
/* 9D628 8009CA28 10000009 */  b          .L8009CA50
/* 9D62C 8009CA2C 00000000 */   nop
/* 9D630 8009CA30 3C04800D */  lui        $a0, %hi(D_800D2A70)
/* 9D634 8009CA34 3C05800D */  lui        $a1, %hi(D_800D2A78)
/* 9D638 8009CA38 24A52A78 */  addiu      $a1, $a1, %lo(D_800D2A78)
/* 9D63C 8009CA3C 24842A70 */  addiu      $a0, $a0, %lo(D_800D2A70)
/* 9D640 8009CA40 0C02C480 */  jal        func_800B1200
/* 9D644 8009CA44 2406013B */   addiu     $a2, $zero, 0x13b
/* 9D648 8009CA48 10000001 */  b          .L8009CA50
/* 9D64C 8009CA4C 00000000 */   nop
.L8009CA50:
/* 9D650 8009CA50 8FAE004C */  lw         $t6, 0x4c($sp)
/* 9D654 8009CA54 25C40048 */  addiu      $a0, $t6, 0x48
/* 9D658 8009CA58 0C026E3F */  jal        func_8009B8FC
/* 9D65C 8009CA5C 25C50038 */   addiu     $a1, $t6, 0x38
/* 9D660 8009CA60 8FAC004C */  lw         $t4, 0x4c($sp)
/* 9D664 8009CA64 AD820028 */  sw         $v0, 0x28($t4)
/* 9D668 8009CA68 8FAF004C */  lw         $t7, 0x4c($sp)
/* 9D66C 8009CA6C 8DF80028 */  lw         $t8, 0x28($t7)
/* 9D670 8009CA70 1300FE3A */  beqz       $t8, .L8009C35C
/* 9D674 8009CA74 00000000 */   nop
/* 9D678 8009CA78 8FB9004C */  lw         $t9, 0x4c($sp)
/* 9D67C 8009CA7C 8F29001C */  lw         $t1, 0x1c($t9)
/* 9D680 8009CA80 8F2B0028 */  lw         $t3, 0x28($t9)
/* 9D684 8009CA84 012B6821 */  addu       $t5, $t1, $t3
/* 9D688 8009CA88 AF2D001C */  sw         $t5, 0x1c($t9)
/* 9D68C 8009CA8C 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9D690 8009CA90 10000003 */  b          .L8009CAA0
/* 9D694 8009CA94 8D020028 */   lw        $v0, 0x28($t0)
/* 9D698 8009CA98 10000001 */  b          .L8009CAA0
/* 9D69C 8009CA9C 00000000 */   nop
.L8009CAA0:
/* 9D6A0 8009CAA0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9D6A4 8009CAA4 8FB00014 */  lw         $s0, 0x14($sp)
/* 9D6A8 8009CAA8 8FB10018 */  lw         $s1, 0x18($sp)
/* 9D6AC 8009CAAC 03E00008 */  jr         $ra
/* 9D6B0 8009CAB0 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8009CAB4
/* 9D6B4 8009CAB4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9D6B8 8009CAB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9D6BC 8009CABC AFA40030 */  sw         $a0, 0x30($sp)
/* 9D6C0 8009CAC0 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9D6C4 8009CAC4 8DCF0018 */  lw         $t7, 0x18($t6)
/* 9D6C8 8009CAC8 AFAF0018 */  sw         $t7, 0x18($sp)
/* 9D6CC 8009CACC 8FB80030 */  lw         $t8, 0x30($sp)
/* 9D6D0 8009CAD0 24010001 */  addiu      $at, $zero, 1
/* 9D6D4 8009CAD4 8F19002C */  lw         $t9, 0x2c($t8)
/* 9D6D8 8009CAD8 17210004 */  bne        $t9, $at, .L8009CAEC
/* 9D6DC 8009CADC 00000000 */   nop
/* 9D6E0 8009CAE0 8FA80018 */  lw         $t0, 0x18($sp)
/* 9D6E4 8009CAE4 15000003 */  bnez       $t0, .L8009CAF4
/* 9D6E8 8009CAE8 00000000 */   nop
.L8009CAEC:
/* 9D6EC 8009CAEC 1000002F */  b          .L8009CBAC
/* 9D6F0 8009CAF0 00000000 */   nop
.L8009CAF4:
/* 9D6F4 8009CAF4 8FA40018 */  lw         $a0, 0x18($sp)
/* 9D6F8 8009CAF8 0C027AA6 */  jal        func_8009EA98
/* 9D6FC 8009CAFC 27A5001C */   addiu     $a1, $sp, 0x1c
/* 9D700 8009CB00 14400003 */  bnez       $v0, .L8009CB10
/* 9D704 8009CB04 00000000 */   nop
/* 9D708 8009CB08 10000028 */  b          .L8009CBAC
/* 9D70C 8009CB0C 00000000 */   nop
.L8009CB10:
/* 9D710 8009CB10 8FA90030 */  lw         $t1, 0x30($sp)
/* 9D714 8009CB14 8D2A0084 */  lw         $t2, 0x84($t1)
/* 9D718 8009CB18 11400018 */  beqz       $t2, .L8009CB7C
/* 9D71C 8009CB1C 00000000 */   nop
/* 9D720 8009CB20 0C027B80 */  jal        func_8009EE00
/* 9D724 8009CB24 8FA40018 */   lw        $a0, 0x18($sp)
/* 9D728 8009CB28 8FAD0030 */  lw         $t5, 0x30($sp)
/* 9D72C 8009CB2C 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9D730 8009CB30 8DAE0080 */  lw         $t6, 0x80($t5)
/* 9D734 8009CB34 004B6021 */  addu       $t4, $v0, $t3
/* 9D738 8009CB38 8DCF0008 */  lw         $t7, 8($t6)
/* 9D73C 8009CB3C 018F082A */  slt        $at, $t4, $t7
/* 9D740 8009CB40 1420000E */  bnez       $at, .L8009CB7C
/* 9D744 8009CB44 00000000 */   nop
/* 9D748 8009CB48 8FB80030 */  lw         $t8, 0x30($sp)
/* 9D74C 8009CB4C 8FA40018 */  lw         $a0, 0x18($sp)
/* 9D750 8009CB50 0C027B86 */  jal        func_8009EE18
/* 9D754 8009CB54 8F05007C */   lw        $a1, 0x7c($t8)
/* 9D758 8009CB58 8FB90030 */  lw         $t9, 0x30($sp)
/* 9D75C 8009CB5C 2401FFFF */  addiu      $at, $zero, -1
/* 9D760 8009CB60 8F280084 */  lw         $t0, 0x84($t9)
/* 9D764 8009CB64 11010005 */  beq        $t0, $at, .L8009CB7C
/* 9D768 8009CB68 00000000 */   nop
/* 9D76C 8009CB6C 8FA90030 */  lw         $t1, 0x30($sp)
/* 9D770 8009CB70 8D2A0084 */  lw         $t2, 0x84($t1)
/* 9D774 8009CB74 254BFFFF */  addiu      $t3, $t2, -1
/* 9D778 8009CB78 AD2B0084 */  sw         $t3, 0x84($t1)
.L8009CB7C:
/* 9D77C 8009CB7C A7A00020 */  sh         $zero, 0x20($sp)
/* 9D780 8009CB80 8FAD0030 */  lw         $t5, 0x30($sp)
/* 9D784 8009CB84 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9D788 8009CB88 27A50020 */  addiu      $a1, $sp, 0x20
/* 9D78C 8009CB8C 8DAE0024 */  lw         $t6, 0x24($t5)
/* 9D790 8009CB90 25A40048 */  addiu      $a0, $t5, 0x48
/* 9D794 8009CB94 01CC0019 */  multu      $t6, $t4
/* 9D798 8009CB98 00003012 */  mflo       $a2
/* 9D79C 8009CB9C 0C026E68 */  jal        func_8009B9A0
/* 9D7A0 8009CBA0 00000000 */   nop
/* 9D7A4 8009CBA4 10000001 */  b          .L8009CBAC
/* 9D7A8 8009CBA8 00000000 */   nop
.L8009CBAC:
/* 9D7AC 8009CBAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9D7B0 8009CBB0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9D7B4 8009CBB4 03E00008 */  jr         $ra
/* 9D7B8 8009CBB8 00000000 */   nop

glabel func_8009CBBC
/* 9D7BC 8009CBBC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9D7C0 8009CBC0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9D7C4 8009CBC4 AFA40038 */  sw         $a0, 0x38($sp)
/* 9D7C8 8009CBC8 AFB00018 */  sw         $s0, 0x18($sp)
/* 9D7CC 8009CBCC 8FAE0038 */  lw         $t6, 0x38($sp)
/* 9D7D0 8009CBD0 8DCF0018 */  lw         $t7, 0x18($t6)
/* 9D7D4 8009CBD4 15E00003 */  bnez       $t7, .L8009CBE4
/* 9D7D8 8009CBD8 00000000 */   nop
/* 9D7DC 8009CBDC 10000034 */  b          .L8009CCB0
/* 9D7E0 8009CBE0 00000000 */   nop
.L8009CBE4:
/* 9D7E4 8009CBE4 8FB80038 */  lw         $t8, 0x38($sp)
/* 9D7E8 8009CBE8 27A50028 */  addiu      $a1, $sp, 0x28
/* 9D7EC 8009CBEC 0C0279E3 */  jal        func_8009E78C
/* 9D7F0 8009CBF0 8F040018 */   lw        $a0, 0x18($t8)
/* 9D7F4 8009CBF4 87B00028 */  lh         $s0, 0x28($sp)
/* 9D7F8 8009CBF8 24010001 */  addiu      $at, $zero, 1
/* 9D7FC 8009CBFC 12010009 */  beq        $s0, $at, .L8009CC24
/* 9D800 8009CC00 00000000 */   nop
/* 9D804 8009CC04 24010003 */  addiu      $at, $zero, 3
/* 9D808 8009CC08 1201000D */  beq        $s0, $at, .L8009CC40
/* 9D80C 8009CC0C 00000000 */   nop
/* 9D810 8009CC10 24010004 */  addiu      $at, $zero, 4
/* 9D814 8009CC14 12010011 */  beq        $s0, $at, .L8009CC5C
/* 9D818 8009CC18 00000000 */   nop
/* 9D81C 8009CC1C 1000001C */  b          .L8009CC90
/* 9D820 8009CC20 00000000 */   nop
.L8009CC24:
/* 9D824 8009CC24 8FA40038 */  lw         $a0, 0x38($sp)
/* 9D828 8009CC28 0C027331 */  jal        func_8009CCC4
/* 9D82C 8009CC2C 27A50028 */   addiu     $a1, $sp, 0x28
/* 9D830 8009CC30 0C0272AD */  jal        func_8009CAB4
/* 9D834 8009CC34 8FA40038 */   lw        $a0, 0x38($sp)
/* 9D838 8009CC38 1000001B */  b          .L8009CCA8
/* 9D83C 8009CC3C 00000000 */   nop
.L8009CC40:
/* 9D840 8009CC40 8FA40038 */  lw         $a0, 0x38($sp)
/* 9D844 8009CC44 0C027657 */  jal        func_8009D95C
/* 9D848 8009CC48 27A50028 */   addiu     $a1, $sp, 0x28
/* 9D84C 8009CC4C 0C0272AD */  jal        func_8009CAB4
/* 9D850 8009CC50 8FA40038 */   lw        $a0, 0x38($sp)
/* 9D854 8009CC54 10000014 */  b          .L8009CCA8
/* 9D858 8009CC58 00000000 */   nop
.L8009CC5C:
/* 9D85C 8009CC5C 8FA80038 */  lw         $t0, 0x38($sp)
/* 9D860 8009CC60 24190002 */  addiu      $t9, $zero, 2
/* 9D864 8009CC64 AD19002C */  sw         $t9, 0x2c($t0)
/* 9D868 8009CC68 24090010 */  addiu      $t1, $zero, 0x10
/* 9D86C 8009CC6C A7A90028 */  sh         $t1, 0x28($sp)
/* 9D870 8009CC70 8FA40038 */  lw         $a0, 0x38($sp)
/* 9D874 8009CC74 3C067FFF */  lui        $a2, 0x7fff
/* 9D878 8009CC78 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 9D87C 8009CC7C 27A50028 */  addiu      $a1, $sp, 0x28
/* 9D880 8009CC80 0C026E68 */  jal        func_8009B9A0
/* 9D884 8009CC84 24840048 */   addiu     $a0, $a0, 0x48
/* 9D888 8009CC88 10000007 */  b          .L8009CCA8
/* 9D88C 8009CC8C 00000000 */   nop
.L8009CC90:
/* 9D890 8009CC90 3C04800D */  lui        $a0, %hi(D_800D2A90)
/* 9D894 8009CC94 3C05800D */  lui        $a1, %hi(D_800D2A98)
/* 9D898 8009CC98 24A52A98 */  addiu      $a1, $a1, %lo(D_800D2A98)
/* 9D89C 8009CC9C 24842A90 */  addiu      $a0, $a0, %lo(D_800D2A90)
/* 9D8A0 8009CCA0 0C02C480 */  jal        func_800B1200
/* 9D8A4 8009CCA4 2406019C */   addiu     $a2, $zero, 0x19c
.L8009CCA8:
/* 9D8A8 8009CCA8 10000001 */  b          .L8009CCB0
/* 9D8AC 8009CCAC 00000000 */   nop
.L8009CCB0:
/* 9D8B0 8009CCB0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9D8B4 8009CCB4 8FB00018 */  lw         $s0, 0x18($sp)
/* 9D8B8 8009CCB8 27BD0038 */  addiu      $sp, $sp, 0x38
/* 9D8BC 8009CCBC 03E00008 */  jr         $ra
/* 9D8C0 8009CCC0 00000000 */   nop

glabel func_8009CCC4
/* 9D8C4 8009CCC4 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* 9D8C8 8009CCC8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 9D8CC 8009CCCC AFA400A8 */  sw         $a0, 0xa8($sp)
/* 9D8D0 8009CCD0 AFA500AC */  sw         $a1, 0xac($sp)
/* 9D8D4 8009CCD4 AFB10028 */  sw         $s1, 0x28($sp)
/* 9D8D8 8009CCD8 AFB00024 */  sw         $s0, 0x24($sp)
/* 9D8DC 8009CCDC 8FAE00AC */  lw         $t6, 0xac($sp)
/* 9D8E0 8009CCE0 25CF0004 */  addiu      $t7, $t6, 4
/* 9D8E4 8009CCE4 AFAF0090 */  sw         $t7, 0x90($sp)
/* 9D8E8 8009CCE8 8FB800AC */  lw         $t8, 0xac($sp)
/* 9D8EC 8009CCEC 24010001 */  addiu      $at, $zero, 1
/* 9D8F0 8009CCF0 87190000 */  lh         $t9, ($t8)
/* 9D8F4 8009CCF4 13210004 */  beq        $t9, $at, .L8009CD08
/* 9D8F8 8009CCF8 00000000 */   nop
/* 9D8FC 8009CCFC 24010002 */  addiu      $at, $zero, 2
/* 9D900 8009CD00 17210003 */  bne        $t9, $at, .L8009CD10
/* 9D904 8009CD04 00000000 */   nop
.L8009CD08:
/* 9D908 8009CD08 10000007 */  b          .L8009CD28
/* 9D90C 8009CD0C 00000000 */   nop
.L8009CD10:
/* 9D910 8009CD10 3C04800D */  lui        $a0, %hi(D_800D2AB0)
/* 9D914 8009CD14 3C05800D */  lui        $a1, %hi(D_800D2AF4)
/* 9D918 8009CD18 24A52AF4 */  addiu      $a1, $a1, %lo(D_800D2AF4)
/* 9D91C 8009CD1C 24842AB0 */  addiu      $a0, $a0, %lo(D_800D2AB0)
/* 9D920 8009CD20 0C02C480 */  jal        func_800B1200
/* 9D924 8009CD24 240601B4 */   addiu     $a2, $zero, 0x1b4
.L8009CD28:
/* 9D928 8009CD28 8FA80090 */  lw         $t0, 0x90($sp)
/* 9D92C 8009CD2C 91090004 */  lbu        $t1, 4($t0)
/* 9D930 8009CD30 312A00F0 */  andi       $t2, $t1, 0xf0
/* 9D934 8009CD34 AFAA009C */  sw         $t2, 0x9c($sp)
/* 9D938 8009CD38 8FAB0090 */  lw         $t3, 0x90($sp)
/* 9D93C 8009CD3C 916C0004 */  lbu        $t4, 4($t3)
/* 9D940 8009CD40 318D000F */  andi       $t5, $t4, 0xf
/* 9D944 8009CD44 A3AD009B */  sb         $t5, 0x9b($sp)
/* 9D948 8009CD48 8FAE0090 */  lw         $t6, 0x90($sp)
/* 9D94C 8009CD4C 91CF0005 */  lbu        $t7, 5($t6)
/* 9D950 8009CD50 A3AF009A */  sb         $t7, 0x9a($sp)
/* 9D954 8009CD54 A3AF0098 */  sb         $t7, 0x98($sp)
/* 9D958 8009CD58 8FB80090 */  lw         $t8, 0x90($sp)
/* 9D95C 8009CD5C 93190006 */  lbu        $t9, 6($t8)
/* 9D960 8009CD60 A3B90099 */  sb         $t9, 0x99($sp)
/* 9D964 8009CD64 A3B90097 */  sb         $t9, 0x97($sp)
/* 9D968 8009CD68 8FA8009C */  lw         $t0, 0x9c($sp)
/* 9D96C 8009CD6C 2509FF80 */  addiu      $t1, $t0, -0x80
/* 9D970 8009CD70 2D210061 */  sltiu      $at, $t1, 0x61
/* 9D974 8009CD74 102002EC */  beqz       $at, .L8009D928
/* 9D978 8009CD78 00000000 */   nop
/* 9D97C 8009CD7C 00094880 */  sll        $t1, $t1, 2
/* 9D980 8009CD80 3C01800D */  lui        $at, %hi(D_800D2BC0)
/* 9D984 8009CD84 00290821 */  addu       $at, $at, $t1
/* 9D988 8009CD88 8C292BC0 */  lw         $t1, %lo(D_800D2BC0)($at)
/* 9D98C 8009CD8C 01200008 */  jr         $t1
/* 9D990 8009CD90 00000000 */   nop
/* 9D994 8009CD94 93AA0099 */  lbu        $t2, 0x99($sp)
/* 9D998 8009CD98 11400143 */  beqz       $t2, .L8009D2A8
/* 9D99C 8009CD9C 00000000 */   nop
/* 9D9A0 8009CDA0 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9D9A4 8009CDA4 24010001 */  addiu      $at, $zero, 1
/* 9D9A8 8009CDA8 8D6C002C */  lw         $t4, 0x2c($t3)
/* 9D9AC 8009CDAC 11810003 */  beq        $t4, $at, .L8009CDBC
/* 9D9B0 8009CDB0 00000000 */   nop
/* 9D9B4 8009CDB4 100002E2 */  b          .L8009D940
/* 9D9B8 8009CDB8 00000000 */   nop
.L8009CDBC:
/* 9D9BC 8009CDBC 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9D9C0 8009CDC0 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9D9C4 8009CDC4 93A60099 */  lbu        $a2, 0x99($sp)
/* 9D9C8 8009CDC8 0C027703 */  jal        func_8009DC0C
/* 9D9CC 8009CDCC 93A7009B */   lbu       $a3, 0x9b($sp)
/* 9D9D0 8009CDD0 AFA20060 */  sw         $v0, 0x60($sp)
/* 9D9D4 8009CDD4 8FAD0060 */  lw         $t5, 0x60($sp)
/* 9D9D8 8009CDD8 15A0000B */  bnez       $t5, .L8009CE08
/* 9D9DC 8009CDDC 00000000 */   nop
/* 9D9E0 8009CDE0 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9D9E4 8009CDE4 91CF0035 */  lbu        $t7, 0x35($t6)
/* 9D9E8 8009CDE8 31F80001 */  andi       $t8, $t7, 1
/* 9D9EC 8009CDEC 13000004 */  beqz       $t8, .L8009CE00
/* 9D9F0 8009CDF0 00000000 */   nop
/* 9D9F4 8009CDF4 24040064 */  addiu      $a0, $zero, 0x64
/* 9D9F8 8009CDF8 0C02B5EC */  jal        func_800AD7B0
/* 9D9FC 8009CDFC 00002825 */   or        $a1, $zero, $zero
.L8009CE00:
/* 9DA00 8009CE00 100002D1 */  b          .L8009D948
/* 9DA04 8009CE04 00000000 */   nop
.L8009CE08:
/* 9DA08 8009CE08 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9DA0C 8009CE0C 93A9009B */  lbu        $t1, 0x9b($sp)
/* 9DA10 8009CE10 8F280060 */  lw         $t0, 0x60($t9)
/* 9DA14 8009CE14 00095100 */  sll        $t2, $t1, 4
/* 9DA18 8009CE18 010A5821 */  addu       $t3, $t0, $t2
/* 9DA1C 8009CE1C 916C0008 */  lbu        $t4, 8($t3)
/* 9DA20 8009CE20 A7AC0064 */  sh         $t4, 0x64($sp)
/* 9DA24 8009CE24 A7A00066 */  sh         $zero, 0x66($sp)
/* 9DA28 8009CE28 A3A00068 */  sb         $zero, 0x68($sp)
/* 9DA2C 8009CE2C 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DA30 8009CE30 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9DA34 8009CE34 93A60099 */  lbu        $a2, 0x99($sp)
/* 9DA38 8009CE38 0C02767F */  jal        func_8009D9FC
/* 9DA3C 8009CE3C 93A7009B */   lbu       $a3, 0x9b($sp)
/* 9DA40 8009CE40 AFA20074 */  sw         $v0, 0x74($sp)
/* 9DA44 8009CE44 8FAD0074 */  lw         $t5, 0x74($sp)
/* 9DA48 8009CE48 15A0000B */  bnez       $t5, .L8009CE78
/* 9DA4C 8009CE4C 00000000 */   nop
/* 9DA50 8009CE50 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9DA54 8009CE54 91CF0035 */  lbu        $t7, 0x35($t6)
/* 9DA58 8009CE58 31F80004 */  andi       $t8, $t7, 4
/* 9DA5C 8009CE5C 13000004 */  beqz       $t8, .L8009CE70
/* 9DA60 8009CE60 00000000 */   nop
/* 9DA64 8009CE64 24040065 */  addiu      $a0, $zero, 0x65
/* 9DA68 8009CE68 0C02B5EC */  jal        func_800AD7B0
/* 9DA6C 8009CE6C 00002825 */   or        $a1, $zero, $zero
.L8009CE70:
/* 9DA70 8009CE70 100002B5 */  b          .L8009D948
/* 9DA74 8009CE74 00000000 */   nop
.L8009CE78:
/* 9DA78 8009CE78 8FB90074 */  lw         $t9, 0x74($sp)
/* 9DA7C 8009CE7C 27290004 */  addiu      $t1, $t9, 4
/* 9DA80 8009CE80 AFA900A4 */  sw         $t1, 0xa4($sp)
/* 9DA84 8009CE84 8FA800A8 */  lw         $t0, 0xa8($sp)
/* 9DA88 8009CE88 8FA500A4 */  lw         $a1, 0xa4($sp)
/* 9DA8C 8009CE8C 27A60064 */  addiu      $a2, $sp, 0x64
/* 9DA90 8009CE90 0C026F60 */  jal        func_8009BD80
/* 9DA94 8009CE94 8D040014 */   lw        $a0, 0x14($t0)
/* 9DA98 8009CE98 8FAA0060 */  lw         $t2, 0x60($sp)
/* 9DA9C 8009CE9C 8FAB0074 */  lw         $t3, 0x74($sp)
/* 9DAA0 8009CEA0 AD6A0020 */  sw         $t2, 0x20($t3)
/* 9DAA4 8009CEA4 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9DAA8 8009CEA8 A1800034 */  sb         $zero, 0x34($t4)
/* 9DAAC 8009CEAC 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9DAB0 8009CEB0 93AF009B */  lbu        $t7, 0x9b($sp)
/* 9DAB4 8009CEB4 8DAE0060 */  lw         $t6, 0x60($t5)
/* 9DAB8 8009CEB8 000FC100 */  sll        $t8, $t7, 4
/* 9DABC 8009CEBC 01D8C821 */  addu       $t9, $t6, $t8
/* 9DAC0 8009CEC0 9329000B */  lbu        $t1, 0xb($t9)
/* 9DAC4 8009CEC4 29210040 */  slti       $at, $t1, 0x40
/* 9DAC8 8009CEC8 14200005 */  bnez       $at, .L8009CEE0
/* 9DACC 8009CECC 00000000 */   nop
/* 9DAD0 8009CED0 8FAA0074 */  lw         $t2, 0x74($sp)
/* 9DAD4 8009CED4 24080002 */  addiu      $t0, $zero, 2
/* 9DAD8 8009CED8 10000003 */  b          .L8009CEE8
/* 9DADC 8009CEDC A1480035 */   sb        $t0, 0x35($t2)
.L8009CEE0:
/* 9DAE0 8009CEE0 8FAB0074 */  lw         $t3, 0x74($sp)
/* 9DAE4 8009CEE4 A1600035 */  sb         $zero, 0x35($t3)
.L8009CEE8:
/* 9DAE8 8009CEE8 8FAD0060 */  lw         $t5, 0x60($sp)
/* 9DAEC 8009CEEC 93AC009A */  lbu        $t4, 0x9a($sp)
/* 9DAF0 8009CEF0 8DAF0004 */  lw         $t7, 4($t5)
/* 9DAF4 8009CEF4 91EE0004 */  lbu        $t6, 4($t7)
/* 9DAF8 8009CEF8 81E90005 */  lb         $t1, 5($t7)
/* 9DAFC 8009CEFC 018EC023 */  subu       $t8, $t4, $t6
/* 9DB00 8009CF00 0018C880 */  sll        $t9, $t8, 2
/* 9DB04 8009CF04 0338C823 */  subu       $t9, $t9, $t8
/* 9DB08 8009CF08 0019C8C0 */  sll        $t9, $t9, 3
/* 9DB0C 8009CF0C 0338C821 */  addu       $t9, $t9, $t8
/* 9DB10 8009CF10 0019C880 */  sll        $t9, $t9, 2
/* 9DB14 8009CF14 03294021 */  addu       $t0, $t9, $t1
/* 9DB18 8009CF18 A7A8005E */  sh         $t0, 0x5e($sp)
/* 9DB1C 8009CF1C 0C02DB84 */  jal        func_800B6E10
/* 9DB20 8009CF20 87A4005E */   lh        $a0, 0x5e($sp)
/* 9DB24 8009CF24 8FAA0074 */  lw         $t2, 0x74($sp)
/* 9DB28 8009CF28 E5400028 */  swc1       $f0, 0x28($t2)
/* 9DB2C 8009CF2C 8FAB0060 */  lw         $t3, 0x60($sp)
/* 9DB30 8009CF30 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9DB34 8009CF34 8D6D0000 */  lw         $t5, ($t3)
/* 9DB38 8009CF38 91AC000C */  lbu        $t4, 0xc($t5)
/* 9DB3C 8009CF3C A1CC0030 */  sb         $t4, 0x30($t6)
/* 9DB40 8009CF40 8FB90060 */  lw         $t9, 0x60($sp)
/* 9DB44 8009CF44 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9DB48 8009CF48 8FAB0074 */  lw         $t3, 0x74($sp)
/* 9DB4C 8009CF4C 8F290000 */  lw         $t1, ($t9)
/* 9DB50 8009CF50 8F0F001C */  lw         $t7, 0x1c($t8)
/* 9DB54 8009CF54 8D280000 */  lw         $t0, ($t1)
/* 9DB58 8009CF58 01E85021 */  addu       $t2, $t7, $t0
/* 9DB5C 8009CF5C AD6A0024 */  sw         $t2, 0x24($t3)
/* 9DB60 8009CF60 8FAD0074 */  lw         $t5, 0x74($sp)
/* 9DB64 8009CF64 A1A00037 */  sb         $zero, 0x37($t5)
/* 9DB68 8009CF68 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9DB6C 8009CF6C 93B8009B */  lbu        $t8, 0x9b($sp)
/* 9DB70 8009CF70 8D8E0060 */  lw         $t6, 0x60($t4)
/* 9DB74 8009CF74 0018C900 */  sll        $t9, $t8, 4
/* 9DB78 8009CF78 01D94821 */  addu       $t1, $t6, $t9
/* 9DB7C 8009CF7C 8D2F0000 */  lw         $t7, ($t1)
/* 9DB80 8009CF80 AFAF0048 */  sw         $t7, 0x48($sp)
/* 9DB84 8009CF84 3C0142FE */  lui        $at, 0x42fe
/* 9DB88 8009CF88 44812000 */  mtc1       $at, $f4
/* 9DB8C 8009CF8C 00000000 */  nop
/* 9DB90 8009CF90 E7A40054 */  swc1       $f4, 0x54($sp)
/* 9DB94 8009CF94 8FA80048 */  lw         $t0, 0x48($sp)
/* 9DB98 8009CF98 910A0004 */  lbu        $t2, 4($t0)
/* 9DB9C 8009CF9C 11400025 */  beqz       $t2, .L8009D034
/* 9DBA0 8009CFA0 00000000 */   nop
/* 9DBA4 8009CFA4 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9DBA8 8009CFA8 8D6D0070 */  lw         $t5, 0x70($t3)
/* 9DBAC 8009CFAC 11A00021 */  beqz       $t5, .L8009D034
/* 9DBB0 8009CFB0 00000000 */   nop
/* 9DBB4 8009CFB4 8FAC0048 */  lw         $t4, 0x48($sp)
/* 9DBB8 8009CFB8 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9DBBC 8009CFBC 27A4004C */  addiu      $a0, $sp, 0x4c
/* 9DBC0 8009CFC0 91980006 */  lbu        $t8, 6($t4)
/* 9DBC4 8009CFC4 91860004 */  lbu        $a2, 4($t4)
/* 9DBC8 8009CFC8 91870005 */  lbu        $a3, 5($t4)
/* 9DBCC 8009CFCC AFB80010 */  sw         $t8, 0x10($sp)
/* 9DBD0 8009CFD0 918E0007 */  lbu        $t6, 7($t4)
/* 9DBD4 8009CFD4 27A50054 */  addiu      $a1, $sp, 0x54
/* 9DBD8 8009CFD8 AFAE0014 */  sw         $t6, 0x14($sp)
/* 9DBDC 8009CFDC 8F390070 */  lw         $t9, 0x70($t9)
/* 9DBE0 8009CFE0 0320F809 */  jalr       $t9
/* 9DBE4 8009CFE4 00000000 */   nop
/* 9DBE8 8009CFE8 AFA20078 */  sw         $v0, 0x78($sp)
/* 9DBEC 8009CFEC 8FA90078 */  lw         $t1, 0x78($sp)
/* 9DBF0 8009CFF0 11200010 */  beqz       $t1, .L8009D034
/* 9DBF4 8009CFF4 00000000 */   nop
/* 9DBF8 8009CFF8 240F0016 */  addiu      $t7, $zero, 0x16
/* 9DBFC 8009CFFC A7AF007C */  sh         $t7, 0x7c($sp)
/* 9DC00 8009D000 8FA80074 */  lw         $t0, 0x74($sp)
/* 9DC04 8009D004 AFA80080 */  sw         $t0, 0x80($sp)
/* 9DC08 8009D008 8FAA004C */  lw         $t2, 0x4c($sp)
/* 9DC0C 8009D00C AFAA0084 */  sw         $t2, 0x84($sp)
/* 9DC10 8009D010 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DC14 8009D014 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9DC18 8009D018 8FA60078 */  lw         $a2, 0x78($sp)
/* 9DC1C 8009D01C 0C026E68 */  jal        func_8009B9A0
/* 9DC20 8009D020 24840048 */   addiu     $a0, $a0, 0x48
/* 9DC24 8009D024 8FAB0074 */  lw         $t3, 0x74($sp)
/* 9DC28 8009D028 916D0037 */  lbu        $t5, 0x37($t3)
/* 9DC2C 8009D02C 35B80001 */  ori        $t8, $t5, 1
/* 9DC30 8009D030 A1780037 */  sb         $t8, 0x37($t3)
.L8009D034:
/* 9DC34 8009D034 444CF800 */  cfc1       $t4, $31
/* 9DC38 8009D038 240E0001 */  addiu      $t6, $zero, 1
/* 9DC3C 8009D03C 44CEF800 */  ctc1       $t6, $31
/* 9DC40 8009D040 C7A60054 */  lwc1       $f6, 0x54($sp)
/* 9DC44 8009D044 46003224 */  cvt.w.s    $f8, $f6
/* 9DC48 8009D048 444EF800 */  cfc1       $t6, $31
/* 9DC4C 8009D04C 00000000 */  nop
/* 9DC50 8009D050 31C10004 */  andi       $at, $t6, 4
/* 9DC54 8009D054 31CE0078 */  andi       $t6, $t6, 0x78
/* 9DC58 8009D058 11C00014 */  beqz       $t6, .L8009D0AC
/* 9DC5C 8009D05C 00000000 */   nop
/* 9DC60 8009D060 3C014F00 */  lui        $at, 0x4f00
/* 9DC64 8009D064 44814000 */  mtc1       $at, $f8
/* 9DC68 8009D068 240E0001 */  addiu      $t6, $zero, 1
/* 9DC6C 8009D06C 46083201 */  sub.s      $f8, $f6, $f8
/* 9DC70 8009D070 44CEF800 */  ctc1       $t6, $31
/* 9DC74 8009D074 00000000 */  nop
/* 9DC78 8009D078 46004224 */  cvt.w.s    $f8, $f8
/* 9DC7C 8009D07C 444EF800 */  cfc1       $t6, $31
/* 9DC80 8009D080 00000000 */  nop
/* 9DC84 8009D084 31C10004 */  andi       $at, $t6, 4
/* 9DC88 8009D088 31CE0078 */  andi       $t6, $t6, 0x78
/* 9DC8C 8009D08C 15C00005 */  bnez       $t6, .L8009D0A4
/* 9DC90 8009D090 00000000 */   nop
/* 9DC94 8009D094 440E4000 */  mfc1       $t6, $f8
/* 9DC98 8009D098 3C018000 */  lui        $at, 0x8000
/* 9DC9C 8009D09C 10000007 */  b          .L8009D0BC
/* 9DCA0 8009D0A0 01C17025 */   or        $t6, $t6, $at
.L8009D0A4:
/* 9DCA4 8009D0A4 10000005 */  b          .L8009D0BC
/* 9DCA8 8009D0A8 240EFFFF */   addiu     $t6, $zero, -1
.L8009D0AC:
/* 9DCAC 8009D0AC 440E4000 */  mfc1       $t6, $f8
/* 9DCB0 8009D0B0 00000000 */  nop
/* 9DCB4 8009D0B4 05C0FFFB */  bltz       $t6, .L8009D0A4
/* 9DCB8 8009D0B8 00000000 */   nop
.L8009D0BC:
/* 9DCBC 8009D0BC 8FB90074 */  lw         $t9, 0x74($sp)
/* 9DCC0 8009D0C0 44CCF800 */  ctc1       $t4, $31
/* 9DCC4 8009D0C4 A32E0036 */  sb         $t6, 0x36($t9)
/* 9DCC8 8009D0C8 00000000 */  nop
/* 9DCCC 8009D0CC 3C013F80 */  lui        $at, 0x3f80
/* 9DCD0 8009D0D0 44815000 */  mtc1       $at, $f10
/* 9DCD4 8009D0D4 00000000 */  nop
/* 9DCD8 8009D0D8 E7AA0054 */  swc1       $f10, 0x54($sp)
/* 9DCDC 8009D0DC 8FA90048 */  lw         $t1, 0x48($sp)
/* 9DCE0 8009D0E0 912F0008 */  lbu        $t7, 8($t1)
/* 9DCE4 8009D0E4 11E00027 */  beqz       $t7, .L8009D184
/* 9DCE8 8009D0E8 00000000 */   nop
/* 9DCEC 8009D0EC 8FA800A8 */  lw         $t0, 0xa8($sp)
/* 9DCF0 8009D0F0 8D0A0070 */  lw         $t2, 0x70($t0)
/* 9DCF4 8009D0F4 11400023 */  beqz       $t2, .L8009D184
/* 9DCF8 8009D0F8 00000000 */   nop
/* 9DCFC 8009D0FC 8FAD0048 */  lw         $t5, 0x48($sp)
/* 9DD00 8009D100 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9DD04 8009D104 27A4004C */  addiu      $a0, $sp, 0x4c
/* 9DD08 8009D108 91B8000A */  lbu        $t8, 0xa($t5)
/* 9DD0C 8009D10C 91A60008 */  lbu        $a2, 8($t5)
/* 9DD10 8009D110 91A70009 */  lbu        $a3, 9($t5)
/* 9DD14 8009D114 AFB80010 */  sw         $t8, 0x10($sp)
/* 9DD18 8009D118 91AB000B */  lbu        $t3, 0xb($t5)
/* 9DD1C 8009D11C 27A50054 */  addiu      $a1, $sp, 0x54
/* 9DD20 8009D120 AFAB0014 */  sw         $t3, 0x14($sp)
/* 9DD24 8009D124 8D990070 */  lw         $t9, 0x70($t4)
/* 9DD28 8009D128 0320F809 */  jalr       $t9
/* 9DD2C 8009D12C 00000000 */   nop
/* 9DD30 8009D130 AFA20078 */  sw         $v0, 0x78($sp)
/* 9DD34 8009D134 8FAE0078 */  lw         $t6, 0x78($sp)
/* 9DD38 8009D138 11C00012 */  beqz       $t6, .L8009D184
/* 9DD3C 8009D13C 00000000 */   nop
/* 9DD40 8009D140 24090017 */  addiu      $t1, $zero, 0x17
/* 9DD44 8009D144 A7A9007C */  sh         $t1, 0x7c($sp)
/* 9DD48 8009D148 8FAF0074 */  lw         $t7, 0x74($sp)
/* 9DD4C 8009D14C AFAF0080 */  sw         $t7, 0x80($sp)
/* 9DD50 8009D150 8FA8004C */  lw         $t0, 0x4c($sp)
/* 9DD54 8009D154 AFA80084 */  sw         $t0, 0x84($sp)
/* 9DD58 8009D158 93AA009B */  lbu        $t2, 0x9b($sp)
/* 9DD5C 8009D15C A3AA0088 */  sb         $t2, 0x88($sp)
/* 9DD60 8009D160 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DD64 8009D164 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9DD68 8009D168 8FA60078 */  lw         $a2, 0x78($sp)
/* 9DD6C 8009D16C 0C026E68 */  jal        func_8009B9A0
/* 9DD70 8009D170 24840048 */   addiu     $a0, $a0, 0x48
/* 9DD74 8009D174 8FB80074 */  lw         $t8, 0x74($sp)
/* 9DD78 8009D178 930D0037 */  lbu        $t5, 0x37($t8)
/* 9DD7C 8009D17C 35AB0002 */  ori        $t3, $t5, 2
/* 9DD80 8009D180 A30B0037 */  sb         $t3, 0x37($t8)
.L8009D184:
/* 9DD84 8009D184 C7B00054 */  lwc1       $f16, 0x54($sp)
/* 9DD88 8009D188 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9DD8C 8009D18C E590002C */  swc1       $f16, 0x2c($t4)
/* 9DD90 8009D190 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9DD94 8009D194 93A9009B */  lbu        $t1, 0x9b($sp)
/* 9DD98 8009D198 8FAA0074 */  lw         $t2, 0x74($sp)
/* 9DD9C 8009D19C 8F2E0060 */  lw         $t6, 0x60($t9)
/* 9DDA0 8009D1A0 00097900 */  sll        $t7, $t1, 4
/* 9DDA4 8009D1A4 C5440028 */  lwc1       $f4, 0x28($t2)
/* 9DDA8 8009D1A8 01CF4021 */  addu       $t0, $t6, $t7
/* 9DDAC 8009D1AC C512000C */  lwc1       $f18, 0xc($t0)
/* 9DDB0 8009D1B0 C548002C */  lwc1       $f8, 0x2c($t2)
/* 9DDB4 8009D1B4 46049182 */  mul.s      $f6, $f18, $f4
/* 9DDB8 8009D1B8 00000000 */  nop
/* 9DDBC 8009D1BC 46083282 */  mul.s      $f10, $f6, $f8
/* 9DDC0 8009D1C0 E7AA0058 */  swc1       $f10, 0x58($sp)
/* 9DDC4 8009D1C4 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9DDC8 8009D1C8 93B8009B */  lbu        $t8, 0x9b($sp)
/* 9DDCC 8009D1CC 8DAB0060 */  lw         $t3, 0x60($t5)
/* 9DDD0 8009D1D0 00186100 */  sll        $t4, $t8, 4
/* 9DDD4 8009D1D4 016CC821 */  addu       $t9, $t3, $t4
/* 9DDD8 8009D1D8 9329000A */  lbu        $t1, 0xa($t9)
/* 9DDDC 8009D1DC A3A90053 */  sb         $t1, 0x53($sp)
/* 9DDE0 8009D1E0 8FA40074 */  lw         $a0, 0x74($sp)
/* 9DDE4 8009D1E4 0C0277AE */  jal        func_8009DEB8
/* 9DDE8 8009D1E8 8FA500A8 */   lw        $a1, 0xa8($sp)
/* 9DDEC 8009D1EC A3A20073 */  sb         $v0, 0x73($sp)
/* 9DDF0 8009D1F0 8FA40074 */  lw         $a0, 0x74($sp)
/* 9DDF4 8009D1F4 0C027772 */  jal        func_8009DDC8
/* 9DDF8 8009D1F8 8FA500A8 */   lw        $a1, 0xa8($sp)
/* 9DDFC 8009D1FC A7A2008E */  sh         $v0, 0x8e($sp)
/* 9DE00 8009D200 8FAE0060 */  lw         $t6, 0x60($sp)
/* 9DE04 8009D204 8DCF0000 */  lw         $t7, ($t6)
/* 9DE08 8009D208 8DE80000 */  lw         $t0, ($t7)
/* 9DE0C 8009D20C AFA80078 */  sw         $t0, 0x78($sp)
/* 9DE10 8009D210 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9DE14 8009D214 8FAD0060 */  lw         $t5, 0x60($sp)
/* 9DE18 8009D218 87B8008E */  lh         $t8, 0x8e($sp)
/* 9DE1C 8009D21C 8D440014 */  lw         $a0, 0x14($t2)
/* 9DE20 8009D220 8DA60008 */  lw         $a2, 8($t5)
/* 9DE24 8009D224 93AB0073 */  lbu        $t3, 0x73($sp)
/* 9DE28 8009D228 93AC0053 */  lbu        $t4, 0x53($sp)
/* 9DE2C 8009D22C 8FB90078 */  lw         $t9, 0x78($sp)
/* 9DE30 8009D230 8FA500A4 */  lw         $a1, 0xa4($sp)
/* 9DE34 8009D234 8FA70058 */  lw         $a3, 0x58($sp)
/* 9DE38 8009D238 AFB80010 */  sw         $t8, 0x10($sp)
/* 9DE3C 8009D23C AFAB0014 */  sw         $t3, 0x14($sp)
/* 9DE40 8009D240 AFAC0018 */  sw         $t4, 0x18($sp)
/* 9DE44 8009D244 0C02DBAC */  jal        func_800B6EB0
/* 9DE48 8009D248 AFB9001C */   sw        $t9, 0x1c($sp)
/* 9DE4C 8009D24C 24090006 */  addiu      $t1, $zero, 6
/* 9DE50 8009D250 A7A9007C */  sh         $t1, 0x7c($sp)
/* 9DE54 8009D254 8FAE00A4 */  lw         $t6, 0xa4($sp)
/* 9DE58 8009D258 AFAE0080 */  sw         $t6, 0x80($sp)
/* 9DE5C 8009D25C 8FAF0060 */  lw         $t7, 0x60($sp)
/* 9DE60 8009D260 8DE80000 */  lw         $t0, ($t7)
/* 9DE64 8009D264 910A000D */  lbu        $t2, 0xd($t0)
/* 9DE68 8009D268 A3AA0088 */  sb         $t2, 0x88($sp)
/* 9DE6C 8009D26C 8FAD0060 */  lw         $t5, 0x60($sp)
/* 9DE70 8009D270 8DB80000 */  lw         $t8, ($t5)
/* 9DE74 8009D274 8F0B0004 */  lw         $t3, 4($t8)
/* 9DE78 8009D278 AFAB0084 */  sw         $t3, 0x84($sp)
/* 9DE7C 8009D27C 8FAC0060 */  lw         $t4, 0x60($sp)
/* 9DE80 8009D280 8D990000 */  lw         $t9, ($t4)
/* 9DE84 8009D284 8F290000 */  lw         $t1, ($t9)
/* 9DE88 8009D288 AFA90078 */  sw         $t1, 0x78($sp)
/* 9DE8C 8009D28C 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DE90 8009D290 27A5007C */  addiu      $a1, $sp, 0x7c
/* 9DE94 8009D294 8FA60078 */  lw         $a2, 0x78($sp)
/* 9DE98 8009D298 0C026E68 */  jal        func_8009B9A0
/* 9DE9C 8009D29C 24840048 */   addiu     $a0, $a0, 0x48
/* 9DEA0 8009D2A0 100001A7 */  b          .L8009D940
/* 9DEA4 8009D2A4 00000000 */   nop
.L8009D2A8:
/* 9DEA8 8009D2A8 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DEAC 8009D2AC 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9DEB0 8009D2B0 0C0276E1 */  jal        func_8009DB84
/* 9DEB4 8009D2B4 93A6009B */   lbu       $a2, 0x9b($sp)
/* 9DEB8 8009D2B8 AFA20074 */  sw         $v0, 0x74($sp)
/* 9DEBC 8009D2BC 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9DEC0 8009D2C0 15C0000B */  bnez       $t6, .L8009D2F0
/* 9DEC4 8009D2C4 00000000 */   nop
/* 9DEC8 8009D2C8 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* 9DECC 8009D2CC 91E80035 */  lbu        $t0, 0x35($t7)
/* 9DED0 8009D2D0 310A0002 */  andi       $t2, $t0, 2
/* 9DED4 8009D2D4 11400004 */  beqz       $t2, .L8009D2E8
/* 9DED8 8009D2D8 00000000 */   nop
/* 9DEDC 8009D2DC 24040067 */  addiu      $a0, $zero, 0x67
/* 9DEE0 8009D2E0 0C02B5EC */  jal        func_800AD7B0
/* 9DEE4 8009D2E4 00002825 */   or        $a1, $zero, $zero
.L8009D2E8:
/* 9DEE8 8009D2E8 10000197 */  b          .L8009D948
/* 9DEEC 8009D2EC 00000000 */   nop
.L8009D2F0:
/* 9DEF0 8009D2F0 8FAD0074 */  lw         $t5, 0x74($sp)
/* 9DEF4 8009D2F4 24010002 */  addiu      $at, $zero, 2
/* 9DEF8 8009D2F8 91B80035 */  lbu        $t8, 0x35($t5)
/* 9DEFC 8009D2FC 17010005 */  bne        $t8, $at, .L8009D314
/* 9DF00 8009D300 00000000 */   nop
/* 9DF04 8009D304 8FAC0074 */  lw         $t4, 0x74($sp)
/* 9DF08 8009D308 240B0004 */  addiu      $t3, $zero, 4
/* 9DF0C 8009D30C 1000000B */  b          .L8009D33C
/* 9DF10 8009D310 A18B0035 */   sb        $t3, 0x35($t4)
.L8009D314:
/* 9DF14 8009D314 8FA90074 */  lw         $t1, 0x74($sp)
/* 9DF18 8009D318 24190003 */  addiu      $t9, $zero, 3
/* 9DF1C 8009D31C A1390035 */  sb         $t9, 0x35($t1)
/* 9DF20 8009D320 8FAE0074 */  lw         $t6, 0x74($sp)
/* 9DF24 8009D324 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DF28 8009D328 8DCF0020 */  lw         $t7, 0x20($t6)
/* 9DF2C 8009D32C 25C50004 */  addiu      $a1, $t6, 4
/* 9DF30 8009D330 8DE80000 */  lw         $t0, ($t7)
/* 9DF34 8009D334 0C0277CD */  jal        func_8009DF34
/* 9DF38 8009D338 8D060008 */   lw        $a2, 8($t0)
.L8009D33C:
/* 9DF3C 8009D33C 10000180 */  b          .L8009D940
/* 9DF40 8009D340 00000000 */   nop
/* 9DF44 8009D344 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9DF48 8009D348 93A5009A */  lbu        $a1, 0x9a($sp)
/* 9DF4C 8009D34C 0C0276E1 */  jal        func_8009DB84
/* 9DF50 8009D350 93A6009B */   lbu       $a2, 0x9b($sp)
/* 9DF54 8009D354 AFA20074 */  sw         $v0, 0x74($sp)
/* 9DF58 8009D358 8FAA0074 */  lw         $t2, 0x74($sp)
/* 9DF5C 8009D35C 15400006 */  bnez       $t2, .L8009D378
/* 9DF60 8009D360 00000000 */   nop
/* 9DF64 8009D364 24040068 */  addiu      $a0, $zero, 0x68
/* 9DF68 8009D368 0C02B5EC */  jal        func_800AD7B0
/* 9DF6C 8009D36C 00002825 */   or        $a1, $zero, $zero
/* 9DF70 8009D370 10000175 */  b          .L8009D948
/* 9DF74 8009D374 00000000 */   nop
.L8009D378:
/* 9DF78 8009D378 93AD0097 */  lbu        $t5, 0x97($sp)
/* 9DF7C 8009D37C 8FB80074 */  lw         $t8, 0x74($sp)
/* 9DF80 8009D380 A30D0033 */  sb         $t5, 0x33($t8)
/* 9DF84 8009D384 8FA40074 */  lw         $a0, 0x74($sp)
/* 9DF88 8009D388 0C027772 */  jal        func_8009DDC8
/* 9DF8C 8009D38C 8FA500A8 */   lw        $a1, 0xa8($sp)
/* 9DF90 8009D390 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9DF94 8009D394 00028C00 */  sll        $s1, $v0, 0x10
/* 9DF98 8009D398 00115C03 */  sra        $t3, $s1, 0x10
/* 9DF9C 8009D39C 01608825 */  or         $s1, $t3, $zero
/* 9DFA0 8009D3A0 8FA40074 */  lw         $a0, 0x74($sp)
/* 9DFA4 8009D3A4 0C02779D */  jal        func_8009DE74
/* 9DFA8 8009D3A8 8D85001C */   lw        $a1, 0x1c($t4)
/* 9DFAC 8009D3AC 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9DFB0 8009D3B0 8FA50074 */  lw         $a1, 0x74($sp)
/* 9DFB4 8009D3B4 00408025 */  or         $s0, $v0, $zero
/* 9DFB8 8009D3B8 02003825 */  or         $a3, $s0, $zero
/* 9DFBC 8009D3BC 02203025 */  or         $a2, $s1, $zero
/* 9DFC0 8009D3C0 8F240014 */  lw         $a0, 0x14($t9)
/* 9DFC4 8009D3C4 0C026DDC */  jal        func_8009B770
/* 9DFC8 8009D3C8 24A50004 */   addiu     $a1, $a1, 4
/* 9DFCC 8009D3CC 1000015C */  b          .L8009D940
/* 9DFD0 8009D3D0 00000000 */   nop
/* 9DFD4 8009D3D4 8FA900A8 */  lw         $t1, 0xa8($sp)
/* 9DFD8 8009D3D8 8D2E0064 */  lw         $t6, 0x64($t1)
/* 9DFDC 8009D3DC 11C0001F */  beqz       $t6, .L8009D45C
/* 9DFE0 8009D3E0 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L8009D3E4:
/* 9DFE4 8009D3E4 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* 9DFE8 8009D3E8 93AA009B */  lbu        $t2, 0x9b($sp)
/* 9DFEC 8009D3EC 91E80031 */  lbu        $t0, 0x31($t7)
/* 9DFF0 8009D3F0 150A0016 */  bne        $t0, $t2, .L8009D44C
/* 9DFF4 8009D3F4 00000000 */   nop
/* 9DFF8 8009D3F8 93AD0098 */  lbu        $t5, 0x98($sp)
/* 9DFFC 8009D3FC 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9E000 8009D400 A30D0033 */  sb         $t5, 0x33($t8)
/* 9E004 8009D404 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E008 8009D408 0C027772 */  jal        func_8009DDC8
/* 9E00C 8009D40C 8FA500A8 */   lw        $a1, 0xa8($sp)
/* 9E010 8009D410 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E014 8009D414 00028C00 */  sll        $s1, $v0, 0x10
/* 9E018 8009D418 00115C03 */  sra        $t3, $s1, 0x10
/* 9E01C 8009D41C 01608825 */  or         $s1, $t3, $zero
/* 9E020 8009D420 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E024 8009D424 0C02779D */  jal        func_8009DE74
/* 9E028 8009D428 8D85001C */   lw        $a1, 0x1c($t4)
/* 9E02C 8009D42C 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E030 8009D430 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E034 8009D434 00408025 */  or         $s0, $v0, $zero
/* 9E038 8009D438 02003825 */  or         $a3, $s0, $zero
/* 9E03C 8009D43C 02203025 */  or         $a2, $s1, $zero
/* 9E040 8009D440 8F240014 */  lw         $a0, 0x14($t9)
/* 9E044 8009D444 0C026DDC */  jal        func_8009B770
/* 9E048 8009D448 24A50004 */   addiu     $a1, $a1, 4
.L8009D44C:
/* 9E04C 8009D44C 8FA900A0 */  lw         $t1, 0xa0($sp)
/* 9E050 8009D450 8D2E0000 */  lw         $t6, ($t1)
/* 9E054 8009D454 15C0FFE3 */  bnez       $t6, .L8009D3E4
/* 9E058 8009D458 AFAE00A0 */   sw        $t6, 0xa0($sp)
.L8009D45C:
/* 9E05C 8009D45C 10000138 */  b          .L8009D940
/* 9E060 8009D460 00000000 */   nop
/* 9E064 8009D464 93B00098 */  lbu        $s0, 0x98($sp)
/* 9E068 8009D468 2A010041 */  slti       $at, $s0, 0x41
/* 9E06C 8009D46C 14200009 */  bnez       $at, .L8009D494
/* 9E070 8009D470 00000000 */   nop
/* 9E074 8009D474 2401005B */  addiu      $at, $zero, 0x5b
/* 9E078 8009D478 120100A9 */  beq        $s0, $at, .L8009D720
/* 9E07C 8009D47C 00000000 */   nop
/* 9E080 8009D480 2401005D */  addiu      $at, $zero, 0x5d
/* 9E084 8009D484 120100C2 */  beq        $s0, $at, .L8009D790
/* 9E088 8009D488 00000000 */   nop
/* 9E08C 8009D48C 100000C0 */  b          .L8009D790
/* 9E090 8009D490 00000000 */   nop
.L8009D494:
/* 9E094 8009D494 2A01001C */  slti       $at, $s0, 0x1c
/* 9E098 8009D498 14200006 */  bnez       $at, .L8009D4B4
/* 9E09C 8009D49C 00000000 */   nop
/* 9E0A0 8009D4A0 24010040 */  addiu      $at, $zero, 0x40
/* 9E0A4 8009D4A4 12010060 */  beq        $s0, $at, .L8009D628
/* 9E0A8 8009D4A8 00000000 */   nop
/* 9E0AC 8009D4AC 100000B8 */  b          .L8009D790
/* 9E0B0 8009D4B0 00000000 */   nop
.L8009D4B4:
/* 9E0B4 8009D4B4 260FFFF9 */  addiu      $t7, $s0, -7
/* 9E0B8 8009D4B8 2DE10015 */  sltiu      $at, $t7, 0x15
/* 9E0BC 8009D4BC 102000B4 */  beqz       $at, .L8009D790
/* 9E0C0 8009D4C0 00000000 */   nop
/* 9E0C4 8009D4C4 000F7880 */  sll        $t7, $t7, 2
/* 9E0C8 8009D4C8 3C01800D */  lui        $at, %hi(D_800D2D44)
/* 9E0CC 8009D4CC 002F0821 */  addu       $at, $at, $t7
/* 9E0D0 8009D4D0 8C2F2D44 */  lw         $t7, %lo(D_800D2D44)($at)
/* 9E0D4 8009D4D4 01E00008 */  jr         $t7
/* 9E0D8 8009D4D8 00000000 */   nop
/* 9E0DC 8009D4DC 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E0E0 8009D4E0 93B8009B */  lbu        $t8, 0x9b($sp)
/* 9E0E4 8009D4E4 93A80097 */  lbu        $t0, 0x97($sp)
/* 9E0E8 8009D4E8 8D4D0060 */  lw         $t5, 0x60($t2)
/* 9E0EC 8009D4EC 00185900 */  sll        $t3, $t8, 4
/* 9E0F0 8009D4F0 01AB6021 */  addu       $t4, $t5, $t3
/* 9E0F4 8009D4F4 A1880007 */  sb         $t0, 7($t4)
/* 9E0F8 8009D4F8 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E0FC 8009D4FC 8F290064 */  lw         $t1, 0x64($t9)
/* 9E100 8009D500 11200014 */  beqz       $t1, .L8009D554
/* 9E104 8009D504 AFA900A0 */   sw        $t1, 0xa0($sp)
.L8009D508:
/* 9E108 8009D508 8FAE00A0 */  lw         $t6, 0xa0($sp)
/* 9E10C 8009D50C 93AA009B */  lbu        $t2, 0x9b($sp)
/* 9E110 8009D510 91CF0031 */  lbu        $t7, 0x31($t6)
/* 9E114 8009D514 15EA000B */  bne        $t7, $t2, .L8009D544
/* 9E118 8009D518 00000000 */   nop
/* 9E11C 8009D51C 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E120 8009D520 0C0277AE */  jal        func_8009DEB8
/* 9E124 8009D524 8FA500A8 */   lw        $a1, 0xa8($sp)
/* 9E128 8009D528 A3A20073 */  sb         $v0, 0x73($sp)
/* 9E12C 8009D52C 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E130 8009D530 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E134 8009D534 93A60073 */  lbu        $a2, 0x73($sp)
/* 9E138 8009D538 8F040014 */  lw         $a0, 0x14($t8)
/* 9E13C 8009D53C 0C028880 */  jal        func_800A2200
/* 9E140 8009D540 24A50004 */   addiu     $a1, $a1, 4
.L8009D544:
/* 9E144 8009D544 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E148 8009D548 8DAB0000 */  lw         $t3, ($t5)
/* 9E14C 8009D54C 1560FFEE */  bnez       $t3, .L8009D508
/* 9E150 8009D550 AFAB00A0 */   sw        $t3, 0xa0($sp)
.L8009D554:
/* 9E154 8009D554 10000090 */  b          .L8009D798
/* 9E158 8009D558 00000000 */   nop
/* 9E15C 8009D55C 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E160 8009D560 93A9009B */  lbu        $t1, 0x9b($sp)
/* 9E164 8009D564 93A80097 */  lbu        $t0, 0x97($sp)
/* 9E168 8009D568 8D990060 */  lw         $t9, 0x60($t4)
/* 9E16C 8009D56C 00097100 */  sll        $t6, $t1, 4
/* 9E170 8009D570 032E7821 */  addu       $t7, $t9, $t6
/* 9E174 8009D574 A1E80009 */  sb         $t0, 9($t7)
/* 9E178 8009D578 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E17C 8009D57C 8D580064 */  lw         $t8, 0x64($t2)
/* 9E180 8009D580 1300001E */  beqz       $t8, .L8009D5FC
/* 9E184 8009D584 AFB800A0 */   sw        $t8, 0xa0($sp)
.L8009D588:
/* 9E188 8009D588 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E18C 8009D58C 93AC009B */  lbu        $t4, 0x9b($sp)
/* 9E190 8009D590 91AB0031 */  lbu        $t3, 0x31($t5)
/* 9E194 8009D594 156C0015 */  bne        $t3, $t4, .L8009D5EC
/* 9E198 8009D598 00000000 */   nop
/* 9E19C 8009D59C 91A90034 */  lbu        $t1, 0x34($t5)
/* 9E1A0 8009D5A0 24010003 */  addiu      $at, $zero, 3
/* 9E1A4 8009D5A4 11210011 */  beq        $t1, $at, .L8009D5EC
/* 9E1A8 8009D5A8 00000000 */   nop
/* 9E1AC 8009D5AC 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E1B0 8009D5B0 0C027772 */  jal        func_8009DDC8
/* 9E1B4 8009D5B4 8FA500A8 */   lw        $a1, 0xa8($sp)
/* 9E1B8 8009D5B8 A7A2008E */  sh         $v0, 0x8e($sp)
/* 9E1BC 8009D5BC 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 9E1C0 8009D5C0 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 9E1C4 8009D5C4 0C02779D */  jal        func_8009DE74
/* 9E1C8 8009D5C8 8F25001C */   lw        $a1, 0x1c($t9)
/* 9E1CC 8009D5CC 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E1D0 8009D5D0 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E1D4 8009D5D4 00408025 */  or         $s0, $v0, $zero
/* 9E1D8 8009D5D8 02003825 */  or         $a3, $s0, $zero
/* 9E1DC 8009D5DC 87A6008E */  lh         $a2, 0x8e($sp)
/* 9E1E0 8009D5E0 8DC40014 */  lw         $a0, 0x14($t6)
/* 9E1E4 8009D5E4 0C026DDC */  jal        func_8009B770
/* 9E1E8 8009D5E8 24A50004 */   addiu     $a1, $a1, 4
.L8009D5EC:
/* 9E1EC 8009D5EC 8FA800A0 */  lw         $t0, 0xa0($sp)
/* 9E1F0 8009D5F0 8D0F0000 */  lw         $t7, ($t0)
/* 9E1F4 8009D5F4 15E0FFE4 */  bnez       $t7, .L8009D588
/* 9E1F8 8009D5F8 AFAF00A0 */   sw        $t7, 0xa0($sp)
.L8009D5FC:
/* 9E1FC 8009D5FC 10000066 */  b          .L8009D798
/* 9E200 8009D600 00000000 */   nop
/* 9E204 8009D604 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E208 8009D608 93AC009B */  lbu        $t4, 0x9b($sp)
/* 9E20C 8009D60C 93AA0097 */  lbu        $t2, 0x97($sp)
/* 9E210 8009D610 8F0B0060 */  lw         $t3, 0x60($t8)
/* 9E214 8009D614 000C6900 */  sll        $t5, $t4, 4
/* 9E218 8009D618 016D4821 */  addu       $t1, $t3, $t5
/* 9E21C 8009D61C A12A0008 */  sb         $t2, 8($t1)
/* 9E220 8009D620 1000005D */  b          .L8009D798
/* 9E224 8009D624 00000000 */   nop
.L8009D628:
/* 9E228 8009D628 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E22C 8009D62C 93AF009B */  lbu        $t7, 0x9b($sp)
/* 9E230 8009D630 93B90097 */  lbu        $t9, 0x97($sp)
/* 9E234 8009D634 8DC80060 */  lw         $t0, 0x60($t6)
/* 9E238 8009D638 000FC100 */  sll        $t8, $t7, 4
/* 9E23C 8009D63C 01186021 */  addu       $t4, $t0, $t8
/* 9E240 8009D640 A199000B */  sb         $t9, 0xb($t4)
/* 9E244 8009D644 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9E248 8009D648 8D6D0064 */  lw         $t5, 0x64($t3)
/* 9E24C 8009D64C 11A00032 */  beqz       $t5, .L8009D718
/* 9E250 8009D650 AFAD00A0 */   sw        $t5, 0xa0($sp)
.L8009D654:
/* 9E254 8009D654 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 9E258 8009D658 93AE009B */  lbu        $t6, 0x9b($sp)
/* 9E25C 8009D65C 91490031 */  lbu        $t1, 0x31($t2)
/* 9E260 8009D660 152E0029 */  bne        $t1, $t6, .L8009D708
/* 9E264 8009D664 00000000 */   nop
/* 9E268 8009D668 914F0035 */  lbu        $t7, 0x35($t2)
/* 9E26C 8009D66C 24010003 */  addiu      $at, $zero, 3
/* 9E270 8009D670 11E10025 */  beq        $t7, $at, .L8009D708
/* 9E274 8009D674 00000000 */   nop
/* 9E278 8009D678 93A80097 */  lbu        $t0, 0x97($sp)
/* 9E27C 8009D67C 29010040 */  slti       $at, $t0, 0x40
/* 9E280 8009D680 1420000A */  bnez       $at, .L8009D6AC
/* 9E284 8009D684 00000000 */   nop
/* 9E288 8009D688 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9E28C 8009D68C 93190035 */  lbu        $t9, 0x35($t8)
/* 9E290 8009D690 17200004 */  bnez       $t9, .L8009D6A4
/* 9E294 8009D694 00000000 */   nop
/* 9E298 8009D698 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* 9E29C 8009D69C 240C0002 */  addiu      $t4, $zero, 2
/* 9E2A0 8009D6A0 A16C0035 */  sb         $t4, 0x35($t3)
.L8009D6A4:
/* 9E2A4 8009D6A4 10000018 */  b          .L8009D708
/* 9E2A8 8009D6A8 00000000 */   nop
.L8009D6AC:
/* 9E2AC 8009D6AC 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E2B0 8009D6B0 24010002 */  addiu      $at, $zero, 2
/* 9E2B4 8009D6B4 91A90035 */  lbu        $t1, 0x35($t5)
/* 9E2B8 8009D6B8 15210004 */  bne        $t1, $at, .L8009D6CC
/* 9E2BC 8009D6BC 00000000 */   nop
/* 9E2C0 8009D6C0 8FAE00A0 */  lw         $t6, 0xa0($sp)
/* 9E2C4 8009D6C4 10000010 */  b          .L8009D708
/* 9E2C8 8009D6C8 A1C00035 */   sb        $zero, 0x35($t6)
.L8009D6CC:
/* 9E2CC 8009D6CC 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 9E2D0 8009D6D0 24010004 */  addiu      $at, $zero, 4
/* 9E2D4 8009D6D4 914F0035 */  lbu        $t7, 0x35($t2)
/* 9E2D8 8009D6D8 15E1000B */  bne        $t7, $at, .L8009D708
/* 9E2DC 8009D6DC 00000000 */   nop
/* 9E2E0 8009D6E0 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9E2E4 8009D6E4 24080003 */  addiu      $t0, $zero, 3
/* 9E2E8 8009D6E8 A3080035 */  sb         $t0, 0x35($t8)
/* 9E2EC 8009D6EC 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E2F0 8009D6F0 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E2F4 8009D6F4 8F2C0020 */  lw         $t4, 0x20($t9)
/* 9E2F8 8009D6F8 27250004 */  addiu      $a1, $t9, 4
/* 9E2FC 8009D6FC 8D8B0000 */  lw         $t3, ($t4)
/* 9E300 8009D700 0C0277CD */  jal        func_8009DF34
/* 9E304 8009D704 8D660008 */   lw        $a2, 8($t3)
.L8009D708:
/* 9E308 8009D708 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E30C 8009D70C 8DA90000 */  lw         $t1, ($t5)
/* 9E310 8009D710 1520FFD0 */  bnez       $t1, .L8009D654
/* 9E314 8009D714 AFA900A0 */   sw        $t1, 0xa0($sp)
.L8009D718:
/* 9E318 8009D718 1000001F */  b          .L8009D798
/* 9E31C 8009D71C 00000000 */   nop
.L8009D720:
/* 9E320 8009D720 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E324 8009D724 93A8009B */  lbu        $t0, 0x9b($sp)
/* 9E328 8009D728 93AE0097 */  lbu        $t6, 0x97($sp)
/* 9E32C 8009D72C 8D4F0060 */  lw         $t7, 0x60($t2)
/* 9E330 8009D730 0008C100 */  sll        $t8, $t0, 4
/* 9E334 8009D734 01F8C821 */  addu       $t9, $t7, $t8
/* 9E338 8009D738 A32E000A */  sb         $t6, 0xa($t9)
/* 9E33C 8009D73C 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 9E340 8009D740 8D8B0064 */  lw         $t3, 0x64($t4)
/* 9E344 8009D744 11600010 */  beqz       $t3, .L8009D788
/* 9E348 8009D748 AFAB00A0 */   sw        $t3, 0xa0($sp)
.L8009D74C:
/* 9E34C 8009D74C 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 9E350 8009D750 93AA009B */  lbu        $t2, 0x9b($sp)
/* 9E354 8009D754 91A90031 */  lbu        $t1, 0x31($t5)
/* 9E358 8009D758 152A0007 */  bne        $t1, $t2, .L8009D778
/* 9E35C 8009D75C 00000000 */   nop
/* 9E360 8009D760 8FA800A8 */  lw         $t0, 0xa8($sp)
/* 9E364 8009D764 8FA500A0 */  lw         $a1, 0xa0($sp)
/* 9E368 8009D768 93A60097 */  lbu        $a2, 0x97($sp)
/* 9E36C 8009D76C 8D040014 */  lw         $a0, 0x14($t0)
/* 9E370 8009D770 0C02B534 */  jal        func_800AD4D0
/* 9E374 8009D774 24A50004 */   addiu     $a1, $a1, 4
.L8009D778:
/* 9E378 8009D778 8FAF00A0 */  lw         $t7, 0xa0($sp)
/* 9E37C 8009D77C 8DF80000 */  lw         $t8, ($t7)
/* 9E380 8009D780 1700FFF2 */  bnez       $t8, .L8009D74C
/* 9E384 8009D784 AFB800A0 */   sw        $t8, 0xa0($sp)
.L8009D788:
/* 9E388 8009D788 10000003 */  b          .L8009D798
/* 9E38C 8009D78C 00000000 */   nop
.L8009D790:
/* 9E390 8009D790 10000001 */  b          .L8009D798
/* 9E394 8009D794 00000000 */   nop
.L8009D798:
/* 9E398 8009D798 10000069 */  b          .L8009D940
/* 9E39C 8009D79C 00000000 */   nop
/* 9E3A0 8009D7A0 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 9E3A4 8009D7A4 8DD90020 */  lw         $t9, 0x20($t6)
/* 9E3A8 8009D7A8 13200003 */  beqz       $t9, .L8009D7B8
/* 9E3AC 8009D7AC 00000000 */   nop
/* 9E3B0 8009D7B0 10000007 */  b          .L8009D7D0
/* 9E3B4 8009D7B4 00000000 */   nop
.L8009D7B8:
/* 9E3B8 8009D7B8 3C04800D */  lui        $a0, %hi(D_800D2B0C)
/* 9E3BC 8009D7BC 3C05800D */  lui        $a1, %hi(D_800D2B20)
/* 9E3C0 8009D7C0 24A52B20 */  addiu      $a1, $a1, %lo(D_800D2B20)
/* 9E3C4 8009D7C4 24842B0C */  addiu      $a0, $a0, %lo(D_800D2B0C)
/* 9E3C8 8009D7C8 0C02C480 */  jal        func_800B1200
/* 9E3CC 8009D7CC 240602CA */   addiu     $a2, $zero, 0x2ca
.L8009D7D0:
/* 9E3D0 8009D7D0 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9E3D4 8009D7D4 93AC009A */  lbu        $t4, 0x9a($sp)
/* 9E3D8 8009D7D8 8D6D0020 */  lw         $t5, 0x20($t3)
/* 9E3DC 8009D7DC 85A90000 */  lh         $t1, ($t5)
/* 9E3E0 8009D7E0 0189082A */  slt        $at, $t4, $t1
/* 9E3E4 8009D7E4 1020000E */  beqz       $at, .L8009D820
/* 9E3E8 8009D7E8 00000000 */   nop
/* 9E3EC 8009D7EC 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 9E3F0 8009D7F0 93AF009A */  lbu        $t7, 0x9a($sp)
/* 9E3F4 8009D7F4 8D480020 */  lw         $t0, 0x20($t2)
/* 9E3F8 8009D7F8 000FC080 */  sll        $t8, $t7, 2
/* 9E3FC 8009D7FC 01187021 */  addu       $t6, $t0, $t8
/* 9E400 8009D800 8DD9000C */  lw         $t9, 0xc($t6)
/* 9E404 8009D804 AFB90044 */  sw         $t9, 0x44($sp)
/* 9E408 8009D808 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 9E40C 8009D80C 8FA50044 */  lw         $a1, 0x44($sp)
/* 9E410 8009D810 0C0278AD */  jal        func_8009E2B4
/* 9E414 8009D814 93A6009B */   lbu       $a2, 0x9b($sp)
/* 9E418 8009D818 10000008 */  b          .L8009D83C
/* 9E41C 8009D81C 00000000 */   nop
.L8009D820:
/* 9E420 8009D820 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* 9E424 8009D824 24040079 */  addiu      $a0, $zero, 0x79
/* 9E428 8009D828 24050002 */  addiu      $a1, $zero, 2
/* 9E42C 8009D82C 8D6D0020 */  lw         $t5, 0x20($t3)
/* 9E430 8009D830 93A6009A */  lbu        $a2, 0x9a($sp)
/* 9E434 8009D834 0C02B5EC */  jal        func_800AD7B0
/* 9E438 8009D838 85A70000 */   lh        $a3, ($t5)
.L8009D83C:
/* 9E43C 8009D83C 10000040 */  b          .L8009D940
/* 9E440 8009D840 00000000 */   nop
/* 9E444 8009D844 93AC0097 */  lbu        $t4, 0x97($sp)
/* 9E448 8009D848 93AA0098 */  lbu        $t2, 0x98($sp)
/* 9E44C 8009D84C 000C49C0 */  sll        $t1, $t4, 7
/* 9E450 8009D850 012A7821 */  addu       $t7, $t1, $t2
/* 9E454 8009D854 25E8E000 */  addiu      $t0, $t7, -0x2000
/* 9E458 8009D858 AFA80040 */  sw         $t0, 0x40($sp)
/* 9E45C 8009D85C 8FB800A8 */  lw         $t8, 0xa8($sp)
/* 9E460 8009D860 93B9009B */  lbu        $t9, 0x9b($sp)
/* 9E464 8009D864 8FA90040 */  lw         $t1, 0x40($sp)
/* 9E468 8009D868 8F0E0060 */  lw         $t6, 0x60($t8)
/* 9E46C 8009D86C 00195900 */  sll        $t3, $t9, 4
/* 9E470 8009D870 01CB6821 */  addu       $t5, $t6, $t3
/* 9E474 8009D874 85AC0004 */  lh         $t4, 4($t5)
/* 9E478 8009D878 01890019 */  multu      $t4, $t1
/* 9E47C 8009D87C 00005012 */  mflo       $t2
/* 9E480 8009D880 05410003 */  bgez       $t2, .L8009D890
/* 9E484 8009D884 000A7B43 */   sra       $t7, $t2, 0xd
/* 9E488 8009D888 25411FFF */  addiu      $at, $t2, 0x1fff
/* 9E48C 8009D88C 00017B43 */  sra        $t7, $at, 0xd
.L8009D890:
/* 9E490 8009D890 AFAF0038 */  sw         $t7, 0x38($sp)
/* 9E494 8009D894 0C02DB84 */  jal        func_800B6E10
/* 9E498 8009D898 8FA40038 */   lw        $a0, 0x38($sp)
/* 9E49C 8009D89C E7A0003C */  swc1       $f0, 0x3c($sp)
/* 9E4A0 8009D8A0 8FA800A8 */  lw         $t0, 0xa8($sp)
/* 9E4A4 8009D8A4 93B9009B */  lbu        $t9, 0x9b($sp)
/* 9E4A8 8009D8A8 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* 9E4AC 8009D8AC 8D180060 */  lw         $t8, 0x60($t0)
/* 9E4B0 8009D8B0 00197100 */  sll        $t6, $t9, 4
/* 9E4B4 8009D8B4 030E5821 */  addu       $t3, $t8, $t6
/* 9E4B8 8009D8B8 E570000C */  swc1       $f16, 0xc($t3)
/* 9E4BC 8009D8BC 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 9E4C0 8009D8C0 8DAC0064 */  lw         $t4, 0x64($t5)
/* 9E4C4 8009D8C4 11800016 */  beqz       $t4, .L8009D920
/* 9E4C8 8009D8C8 AFAC00A0 */   sw        $t4, 0xa0($sp)
.L8009D8CC:
/* 9E4CC 8009D8CC 8FA900A0 */  lw         $t1, 0xa0($sp)
/* 9E4D0 8009D8D0 93AF009B */  lbu        $t7, 0x9b($sp)
/* 9E4D4 8009D8D4 912A0031 */  lbu        $t2, 0x31($t1)
/* 9E4D8 8009D8D8 154F000D */  bne        $t2, $t7, .L8009D910
/* 9E4DC 8009D8DC 00000000 */   nop
/* 9E4E0 8009D8E0 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 9E4E4 8009D8E4 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* 9E4E8 8009D8E8 8FA800A8 */  lw         $t0, 0xa8($sp)
/* 9E4EC 8009D8EC C7320028 */  lwc1       $f18, 0x28($t9)
/* 9E4F0 8009D8F0 C728002C */  lwc1       $f8, 0x2c($t9)
/* 9E4F4 8009D8F4 27250004 */  addiu      $a1, $t9, 4
/* 9E4F8 8009D8F8 46049182 */  mul.s      $f6, $f18, $f4
/* 9E4FC 8009D8FC 8D040014 */  lw         $a0, 0x14($t0)
/* 9E500 8009D900 46083282 */  mul.s      $f10, $f6, $f8
/* 9E504 8009D904 44065000 */  mfc1       $a2, $f10
/* 9E508 8009D908 0C028818 */  jal        func_800A2060
/* 9E50C 8009D90C 00000000 */   nop
.L8009D910:
/* 9E510 8009D910 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 9E514 8009D914 8F0E0000 */  lw         $t6, ($t8)
/* 9E518 8009D918 15C0FFEC */  bnez       $t6, .L8009D8CC
/* 9E51C 8009D91C AFAE00A0 */   sw        $t6, 0xa0($sp)
.L8009D920:
/* 9E520 8009D920 10000007 */  b          .L8009D940
/* 9E524 8009D924 00000000 */   nop
.L8009D928:
/* 9E528 8009D928 2404007A */  addiu      $a0, $zero, 0x7a
/* 9E52C 8009D92C 24050001 */  addiu      $a1, $zero, 1
/* 9E530 8009D930 0C02B5EC */  jal        func_800AD7B0
/* 9E534 8009D934 8FA6009C */   lw        $a2, 0x9c($sp)
/* 9E538 8009D938 10000001 */  b          .L8009D940
/* 9E53C 8009D93C 00000000 */   nop
.L8009D940:
/* 9E540 8009D940 10000001 */  b          .L8009D948
/* 9E544 8009D944 00000000 */   nop
.L8009D948:
/* 9E548 8009D948 8FBF002C */  lw         $ra, 0x2c($sp)
/* 9E54C 8009D94C 8FB00024 */  lw         $s0, 0x24($sp)
/* 9E550 8009D950 8FB10028 */  lw         $s1, 0x28($sp)
/* 9E554 8009D954 03E00008 */  jr         $ra
/* 9E558 8009D958 27BD00A8 */   addiu     $sp, $sp, 0xa8

glabel func_8009D95C
/* 9E55C 8009D95C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9E560 8009D960 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9E564 8009D964 AFA40030 */  sw         $a0, 0x30($sp)
/* 9E568 8009D968 AFA50034 */  sw         $a1, 0x34($sp)
/* 9E56C 8009D96C 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9E570 8009D970 25CF0004 */  addiu      $t7, $t6, 4
/* 9E574 8009D974 AFAF002C */  sw         $t7, 0x2c($sp)
/* 9E578 8009D978 8FB80034 */  lw         $t8, 0x34($sp)
/* 9E57C 8009D97C 240100FF */  addiu      $at, $zero, 0xff
/* 9E580 8009D980 93190008 */  lbu        $t9, 8($t8)
/* 9E584 8009D984 17210017 */  bne        $t9, $at, .L8009D9E4
/* 9E588 8009D988 00000000 */   nop
/* 9E58C 8009D98C 8FA80034 */  lw         $t0, 0x34($sp)
/* 9E590 8009D990 24010051 */  addiu      $at, $zero, 0x51
/* 9E594 8009D994 91090009 */  lbu        $t1, 9($t0)
/* 9E598 8009D998 15210012 */  bne        $t1, $at, .L8009D9E4
/* 9E59C 8009D99C 00000000 */   nop
/* 9E5A0 8009D9A0 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9E5A4 8009D9A4 914B0007 */  lbu        $t3, 7($t2)
/* 9E5A8 8009D9A8 914D0008 */  lbu        $t5, 8($t2)
/* 9E5AC 8009D9AC 91580009 */  lbu        $t8, 9($t2)
/* 9E5B0 8009D9B0 000B6400 */  sll        $t4, $t3, 0x10
/* 9E5B4 8009D9B4 000D7200 */  sll        $t6, $t5, 8
/* 9E5B8 8009D9B8 018E7825 */  or         $t7, $t4, $t6
/* 9E5BC 8009D9BC 01F8C825 */  or         $t9, $t7, $t8
/* 9E5C0 8009D9C0 AFB90018 */  sw         $t9, 0x18($sp)
/* 9E5C4 8009D9C4 8FA80018 */  lw         $t0, 0x18($sp)
/* 9E5C8 8009D9C8 8FA40030 */  lw         $a0, 0x30($sp)
/* 9E5CC 8009D9CC 44882000 */  mtc1       $t0, $f4
/* 9E5D0 8009D9D0 00000000 */  nop
/* 9E5D4 8009D9D4 46802120 */  cvt.s.w    $f4, $f4
/* 9E5D8 8009D9D8 44052000 */  mfc1       $a1, $f4
/* 9E5DC 8009D9DC 0C027961 */  jal        func_8009E584
/* 9E5E0 8009D9E0 00000000 */   nop
.L8009D9E4:
/* 9E5E4 8009D9E4 10000001 */  b          .L8009D9EC
/* 9E5E8 8009D9E8 00000000 */   nop
.L8009D9EC:
/* 9E5EC 8009D9EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9E5F0 8009D9F0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9E5F4 8009D9F4 03E00008 */  jr         $ra
/* 9E5F8 8009D9F8 00000000 */   nop

glabel func_8009D9FC
/* 9E5FC 8009D9FC 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9E600 8009DA00 30A500FF */  andi       $a1, $a1, 0xff
/* 9E604 8009DA04 30C600FF */  andi       $a2, $a2, 0xff
/* 9E608 8009DA08 30E700FF */  andi       $a3, $a3, 0xff
/* 9E60C 8009DA0C 8C8E006C */  lw         $t6, 0x6c($a0)
/* 9E610 8009DA10 AFAE0004 */  sw         $t6, 4($sp)
/* 9E614 8009DA14 8FAF0004 */  lw         $t7, 4($sp)
/* 9E618 8009DA18 11E00019 */  beqz       $t7, .L8009DA80
/* 9E61C 8009DA1C 00000000 */   nop
/* 9E620 8009DA20 8FB80004 */  lw         $t8, 4($sp)
/* 9E624 8009DA24 8F190000 */  lw         $t9, ($t8)
/* 9E628 8009DA28 AC99006C */  sw         $t9, 0x6c($a0)
/* 9E62C 8009DA2C 8FA80004 */  lw         $t0, 4($sp)
/* 9E630 8009DA30 AD000000 */  sw         $zero, ($t0)
/* 9E634 8009DA34 8C890064 */  lw         $t1, 0x64($a0)
/* 9E638 8009DA38 15200004 */  bnez       $t1, .L8009DA4C
/* 9E63C 8009DA3C 00000000 */   nop
/* 9E640 8009DA40 8FAA0004 */  lw         $t2, 4($sp)
/* 9E644 8009DA44 10000004 */  b          .L8009DA58
/* 9E648 8009DA48 AC8A0064 */   sw        $t2, 0x64($a0)
.L8009DA4C:
/* 9E64C 8009DA4C 8FAB0004 */  lw         $t3, 4($sp)
/* 9E650 8009DA50 8C8C0068 */  lw         $t4, 0x68($a0)
/* 9E654 8009DA54 AD8B0000 */  sw         $t3, ($t4)
.L8009DA58:
/* 9E658 8009DA58 8FAD0004 */  lw         $t5, 4($sp)
/* 9E65C 8009DA5C AC8D0068 */  sw         $t5, 0x68($a0)
/* 9E660 8009DA60 8FAE0004 */  lw         $t6, 4($sp)
/* 9E664 8009DA64 A1C70031 */  sb         $a3, 0x31($t6)
/* 9E668 8009DA68 8FAF0004 */  lw         $t7, 4($sp)
/* 9E66C 8009DA6C A1E50032 */  sb         $a1, 0x32($t7)
/* 9E670 8009DA70 8FB80004 */  lw         $t8, 4($sp)
/* 9E674 8009DA74 A3060033 */  sb         $a2, 0x33($t8)
/* 9E678 8009DA78 8FB90004 */  lw         $t9, 4($sp)
/* 9E67C 8009DA7C AF390014 */  sw         $t9, 0x14($t9)
.L8009DA80:
/* 9E680 8009DA80 10000003 */  b          .L8009DA90
/* 9E684 8009DA84 8FA20004 */   lw        $v0, 4($sp)
/* 9E688 8009DA88 10000001 */  b          .L8009DA90
/* 9E68C 8009DA8C 00000000 */   nop
.L8009DA90:
/* 9E690 8009DA90 03E00008 */  jr         $ra
/* 9E694 8009DA94 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009DA98
/* 9E698 8009DA98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9E69C 8009DA9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9E6A0 8009DAA0 AFA40020 */  sw         $a0, 0x20($sp)
/* 9E6A4 8009DAA4 AFA50024 */  sw         $a1, 0x24($sp)
/* 9E6A8 8009DAA8 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9E6AC 8009DAAC 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9E6B0 8009DAB0 8DCF0064 */  lw         $t7, 0x64($t6)
/* 9E6B4 8009DAB4 11E00029 */  beqz       $t7, .L8009DB5C
/* 9E6B8 8009DAB8 AFAF0018 */   sw        $t7, 0x18($sp)
.L8009DABC:
/* 9E6BC 8009DABC 8FB80018 */  lw         $t8, 0x18($sp)
/* 9E6C0 8009DAC0 8FA80024 */  lw         $t0, 0x24($sp)
/* 9E6C4 8009DAC4 27190004 */  addiu      $t9, $t8, 4
/* 9E6C8 8009DAC8 1728001E */  bne        $t9, $t0, .L8009DB44
/* 9E6CC 8009DACC 00000000 */   nop
/* 9E6D0 8009DAD0 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9E6D4 8009DAD4 11200006 */  beqz       $t1, .L8009DAF0
/* 9E6D8 8009DAD8 00000000 */   nop
/* 9E6DC 8009DADC 8FAA0018 */  lw         $t2, 0x18($sp)
/* 9E6E0 8009DAE0 8FAC001C */  lw         $t4, 0x1c($sp)
/* 9E6E4 8009DAE4 8D4B0000 */  lw         $t3, ($t2)
/* 9E6E8 8009DAE8 10000005 */  b          .L8009DB00
/* 9E6EC 8009DAEC AD8B0000 */   sw        $t3, ($t4)
.L8009DAF0:
/* 9E6F0 8009DAF0 8FAD0018 */  lw         $t5, 0x18($sp)
/* 9E6F4 8009DAF4 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9E6F8 8009DAF8 8DAE0000 */  lw         $t6, ($t5)
/* 9E6FC 8009DAFC ADEE0064 */  sw         $t6, 0x64($t7)
.L8009DB00:
/* 9E700 8009DB00 8FB80020 */  lw         $t8, 0x20($sp)
/* 9E704 8009DB04 8FA80018 */  lw         $t0, 0x18($sp)
/* 9E708 8009DB08 8F190068 */  lw         $t9, 0x68($t8)
/* 9E70C 8009DB0C 17280004 */  bne        $t9, $t0, .L8009DB20
/* 9E710 8009DB10 00000000 */   nop
/* 9E714 8009DB14 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9E718 8009DB18 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9E71C 8009DB1C AD490068 */  sw         $t1, 0x68($t2)
.L8009DB20:
/* 9E720 8009DB20 8FAB0020 */  lw         $t3, 0x20($sp)
/* 9E724 8009DB24 8FAD0018 */  lw         $t5, 0x18($sp)
/* 9E728 8009DB28 8D6C006C */  lw         $t4, 0x6c($t3)
/* 9E72C 8009DB2C ADAC0000 */  sw         $t4, ($t5)
/* 9E730 8009DB30 8FAE0018 */  lw         $t6, 0x18($sp)
/* 9E734 8009DB34 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9E738 8009DB38 ADEE006C */  sw         $t6, 0x6c($t7)
/* 9E73C 8009DB3C 1000000D */  b          .L8009DB74
/* 9E740 8009DB40 00000000 */   nop
.L8009DB44:
/* 9E744 8009DB44 8FB80018 */  lw         $t8, 0x18($sp)
/* 9E748 8009DB48 AFB8001C */  sw         $t8, 0x1c($sp)
/* 9E74C 8009DB4C 8FB90018 */  lw         $t9, 0x18($sp)
/* 9E750 8009DB50 8F280000 */  lw         $t0, ($t9)
/* 9E754 8009DB54 1500FFD9 */  bnez       $t0, .L8009DABC
/* 9E758 8009DB58 AFA80018 */   sw        $t0, 0x18($sp)
.L8009DB5C:
/* 9E75C 8009DB5C 2404007B */  addiu      $a0, $zero, 0x7b
/* 9E760 8009DB60 24050001 */  addiu      $a1, $zero, 1
/* 9E764 8009DB64 0C02B5EC */  jal        func_800AD7B0
/* 9E768 8009DB68 8FA60024 */   lw        $a2, 0x24($sp)
/* 9E76C 8009DB6C 10000001 */  b          .L8009DB74
/* 9E770 8009DB70 00000000 */   nop
.L8009DB74:
/* 9E774 8009DB74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9E778 8009DB78 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9E77C 8009DB7C 03E00008 */  jr         $ra
/* 9E780 8009DB80 00000000 */   nop

glabel func_8009DB84
/* 9E784 8009DB84 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9E788 8009DB88 30A500FF */  andi       $a1, $a1, 0xff
/* 9E78C 8009DB8C 30C600FF */  andi       $a2, $a2, 0xff
/* 9E790 8009DB90 8C8E0064 */  lw         $t6, 0x64($a0)
/* 9E794 8009DB94 AFAE0004 */  sw         $t6, 4($sp)
/* 9E798 8009DB98 8FAF0004 */  lw         $t7, 4($sp)
/* 9E79C 8009DB9C 11E00015 */  beqz       $t7, .L8009DBF4
/* 9E7A0 8009DBA0 00000000 */   nop
.L8009DBA4:
/* 9E7A4 8009DBA4 8FB80004 */  lw         $t8, 4($sp)
/* 9E7A8 8009DBA8 93190032 */  lbu        $t9, 0x32($t8)
/* 9E7AC 8009DBAC 1725000D */  bne        $t9, $a1, .L8009DBE4
/* 9E7B0 8009DBB0 00000000 */   nop
/* 9E7B4 8009DBB4 93080031 */  lbu        $t0, 0x31($t8)
/* 9E7B8 8009DBB8 1506000A */  bne        $t0, $a2, .L8009DBE4
/* 9E7BC 8009DBBC 00000000 */   nop
/* 9E7C0 8009DBC0 93090035 */  lbu        $t1, 0x35($t8)
/* 9E7C4 8009DBC4 24010003 */  addiu      $at, $zero, 3
/* 9E7C8 8009DBC8 11210006 */  beq        $t1, $at, .L8009DBE4
/* 9E7CC 8009DBCC 00000000 */   nop
/* 9E7D0 8009DBD0 24010004 */  addiu      $at, $zero, 4
/* 9E7D4 8009DBD4 11210003 */  beq        $t1, $at, .L8009DBE4
/* 9E7D8 8009DBD8 00000000 */   nop
/* 9E7DC 8009DBDC 10000009 */  b          .L8009DC04
/* 9E7E0 8009DBE0 8FA20004 */   lw        $v0, 4($sp)
.L8009DBE4:
/* 9E7E4 8009DBE4 8FAA0004 */  lw         $t2, 4($sp)
/* 9E7E8 8009DBE8 8D4B0000 */  lw         $t3, ($t2)
/* 9E7EC 8009DBEC 1560FFED */  bnez       $t3, .L8009DBA4
/* 9E7F0 8009DBF0 AFAB0004 */   sw        $t3, 4($sp)
.L8009DBF4:
/* 9E7F4 8009DBF4 10000003 */  b          .L8009DC04
/* 9E7F8 8009DBF8 00001025 */   or        $v0, $zero, $zero
/* 9E7FC 8009DBFC 10000001 */  b          .L8009DC04
/* 9E800 8009DC00 00000000 */   nop
.L8009DC04:
/* 9E804 8009DC04 03E00008 */  jr         $ra
/* 9E808 8009DC08 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009DC0C
/* 9E80C 8009DC0C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9E810 8009DC10 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9E814 8009DC14 AFA40030 */  sw         $a0, 0x30($sp)
/* 9E818 8009DC18 AFA50034 */  sw         $a1, 0x34($sp)
/* 9E81C 8009DC1C AFA60038 */  sw         $a2, 0x38($sp)
/* 9E820 8009DC20 AFA7003C */  sw         $a3, 0x3c($sp)
/* 9E824 8009DC24 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9E828 8009DC28 93B8003F */  lbu        $t8, 0x3f($sp)
/* 9E82C 8009DC2C 8DCF0060 */  lw         $t7, 0x60($t6)
/* 9E830 8009DC30 0018C900 */  sll        $t9, $t8, 4
/* 9E834 8009DC34 01F94021 */  addu       $t0, $t7, $t9
/* 9E838 8009DC38 8D090000 */  lw         $t1, ($t0)
/* 9E83C 8009DC3C AFA9002C */  sw         $t1, 0x2c($sp)
/* 9E840 8009DC40 240A0001 */  addiu      $t2, $zero, 1
/* 9E844 8009DC44 AFAA0028 */  sw         $t2, 0x28($sp)
/* 9E848 8009DC48 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9E84C 8009DC4C 856C000E */  lh         $t4, 0xe($t3)
/* 9E850 8009DC50 AFAC0024 */  sw         $t4, 0x24($sp)
/* 9E854 8009DC54 8FAD002C */  lw         $t5, 0x2c($sp)
/* 9E858 8009DC58 11A00003 */  beqz       $t5, .L8009DC68
/* 9E85C 8009DC5C 00000000 */   nop
/* 9E860 8009DC60 10000007 */  b          .L8009DC80
/* 9E864 8009DC64 00000000 */   nop
.L8009DC68:
/* 9E868 8009DC68 3C04800D */  lui        $a0, %hi(D_800D2B38)
/* 9E86C 8009DC6C 3C05800D */  lui        $a1, %hi(D_800D2B48)
/* 9E870 8009DC70 24A52B48 */  addiu      $a1, $a1, %lo(D_800D2B48)
/* 9E874 8009DC74 24842B38 */  addiu      $a0, $a0, %lo(D_800D2B38)
/* 9E878 8009DC78 0C02C480 */  jal        func_800B1200
/* 9E87C 8009DC7C 24060376 */   addiu     $a2, $zero, 0x376
.L8009DC80:
/* 9E880 8009DC80 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9E884 8009DC84 8FB80028 */  lw         $t8, 0x28($sp)
/* 9E888 8009DC88 01D8082A */  slt        $at, $t6, $t8
/* 9E88C 8009DC8C 14200046 */  bnez       $at, .L8009DDA8
/* 9E890 8009DC90 00000000 */   nop
.L8009DC94:
/* 9E894 8009DC94 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9E898 8009DC98 8FB90024 */  lw         $t9, 0x24($sp)
/* 9E89C 8009DC9C 01F94021 */  addu       $t0, $t7, $t9
/* 9E8A0 8009DCA0 05010003 */  bgez       $t0, .L8009DCB0
/* 9E8A4 8009DCA4 00084843 */   sra       $t1, $t0, 1
/* 9E8A8 8009DCA8 25010001 */  addiu      $at, $t0, 1
/* 9E8AC 8009DCAC 00014843 */  sra        $t1, $at, 1
.L8009DCB0:
/* 9E8B0 8009DCB0 AFA90020 */  sw         $t1, 0x20($sp)
/* 9E8B4 8009DCB4 8FAB0020 */  lw         $t3, 0x20($sp)
/* 9E8B8 8009DCB8 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9E8BC 8009DCBC 000B6080 */  sll        $t4, $t3, 2
/* 9E8C0 8009DCC0 014C6821 */  addu       $t5, $t2, $t4
/* 9E8C4 8009DCC4 8DAE000C */  lw         $t6, 0xc($t5)
/* 9E8C8 8009DCC8 8DD80004 */  lw         $t8, 4($t6)
/* 9E8CC 8009DCCC AFB8001C */  sw         $t8, 0x1c($sp)
/* 9E8D0 8009DCD0 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9E8D4 8009DCD4 93AF0037 */  lbu        $t7, 0x37($sp)
/* 9E8D8 8009DCD8 93280002 */  lbu        $t0, 2($t9)
/* 9E8DC 8009DCDC 01E8082A */  slt        $at, $t7, $t0
/* 9E8E0 8009DCE0 14200016 */  bnez       $at, .L8009DD3C
/* 9E8E4 8009DCE4 00000000 */   nop
/* 9E8E8 8009DCE8 93290003 */  lbu        $t1, 3($t9)
/* 9E8EC 8009DCEC 012F082A */  slt        $at, $t1, $t7
/* 9E8F0 8009DCF0 14200012 */  bnez       $at, .L8009DD3C
/* 9E8F4 8009DCF4 00000000 */   nop
/* 9E8F8 8009DCF8 93AB003B */  lbu        $t3, 0x3b($sp)
/* 9E8FC 8009DCFC 932A0000 */  lbu        $t2, ($t9)
/* 9E900 8009DD00 016A082A */  slt        $at, $t3, $t2
/* 9E904 8009DD04 1420000D */  bnez       $at, .L8009DD3C
/* 9E908 8009DD08 00000000 */   nop
/* 9E90C 8009DD0C 932C0001 */  lbu        $t4, 1($t9)
/* 9E910 8009DD10 018B082A */  slt        $at, $t4, $t3
/* 9E914 8009DD14 14200009 */  bnez       $at, .L8009DD3C
/* 9E918 8009DD18 00000000 */   nop
/* 9E91C 8009DD1C 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9E920 8009DD20 8FAD002C */  lw         $t5, 0x2c($sp)
/* 9E924 8009DD24 000EC080 */  sll        $t8, $t6, 2
/* 9E928 8009DD28 01B84021 */  addu       $t0, $t5, $t8
/* 9E92C 8009DD2C 10000022 */  b          .L8009DDB8
/* 9E930 8009DD30 8D02000C */   lw        $v0, 0xc($t0)
/* 9E934 8009DD34 10000017 */  b          .L8009DD94
/* 9E938 8009DD38 00000000 */   nop
.L8009DD3C:
/* 9E93C 8009DD3C 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9E940 8009DD40 93AF0037 */  lbu        $t7, 0x37($sp)
/* 9E944 8009DD44 912A0002 */  lbu        $t2, 2($t1)
/* 9E948 8009DD48 01EA082A */  slt        $at, $t7, $t2
/* 9E94C 8009DD4C 1420000A */  bnez       $at, .L8009DD78
/* 9E950 8009DD50 00000000 */   nop
/* 9E954 8009DD54 93B9003B */  lbu        $t9, 0x3b($sp)
/* 9E958 8009DD58 912B0000 */  lbu        $t3, ($t1)
/* 9E95C 8009DD5C 032B082A */  slt        $at, $t9, $t3
/* 9E960 8009DD60 10200009 */  beqz       $at, .L8009DD88
/* 9E964 8009DD64 00000000 */   nop
/* 9E968 8009DD68 912C0003 */  lbu        $t4, 3($t1)
/* 9E96C 8009DD6C 018F082A */  slt        $at, $t4, $t7
/* 9E970 8009DD70 14200005 */  bnez       $at, .L8009DD88
/* 9E974 8009DD74 00000000 */   nop
.L8009DD78:
/* 9E978 8009DD78 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9E97C 8009DD7C 25CDFFFF */  addiu      $t5, $t6, -1
/* 9E980 8009DD80 10000004 */  b          .L8009DD94
/* 9E984 8009DD84 AFAD0024 */   sw        $t5, 0x24($sp)
.L8009DD88:
/* 9E988 8009DD88 8FB80020 */  lw         $t8, 0x20($sp)
/* 9E98C 8009DD8C 27080001 */  addiu      $t0, $t8, 1
/* 9E990 8009DD90 AFA80028 */  sw         $t0, 0x28($sp)
.L8009DD94:
/* 9E994 8009DD94 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9E998 8009DD98 8FB90028 */  lw         $t9, 0x28($sp)
/* 9E99C 8009DD9C 0159082A */  slt        $at, $t2, $t9
/* 9E9A0 8009DDA0 1020FFBC */  beqz       $at, .L8009DC94
/* 9E9A4 8009DDA4 00000000 */   nop
.L8009DDA8:
/* 9E9A8 8009DDA8 10000003 */  b          .L8009DDB8
/* 9E9AC 8009DDAC 00001025 */   or        $v0, $zero, $zero
/* 9E9B0 8009DDB0 10000001 */  b          .L8009DDB8
/* 9E9B4 8009DDB4 00000000 */   nop
.L8009DDB8:
/* 9E9B8 8009DDB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9E9BC 8009DDBC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9E9C0 8009DDC0 03E00008 */  jr         $ra
/* 9E9C4 8009DDC4 00000000 */   nop

glabel func_8009DDC8
/* 9E9C8 8009DDC8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9E9CC 8009DDCC 908E0036 */  lbu        $t6, 0x36($a0)
/* 9E9D0 8009DDD0 908F0033 */  lbu        $t7, 0x33($a0)
/* 9E9D4 8009DDD4 90990030 */  lbu        $t9, 0x30($a0)
/* 9E9D8 8009DDD8 01CF0019 */  multu      $t6, $t7
/* 9E9DC 8009DDDC 0000C012 */  mflo       $t8
/* 9E9E0 8009DDE0 00000000 */  nop
/* 9E9E4 8009DDE4 00000000 */  nop
/* 9E9E8 8009DDE8 03190019 */  multu      $t8, $t9
/* 9E9EC 8009DDEC 00004012 */  mflo       $t0
/* 9E9F0 8009DDF0 00084983 */  sra        $t1, $t0, 6
/* 9E9F4 8009DDF4 AFA90004 */  sw         $t1, 4($sp)
/* 9E9F8 8009DDF8 8C8F0020 */  lw         $t7, 0x20($a0)
/* 9E9FC 8009DDFC 84B90032 */  lh         $t9, 0x32($a1)
/* 9EA00 8009DE00 908B0031 */  lbu        $t3, 0x31($a0)
/* 9EA04 8009DE04 91F8000D */  lbu        $t8, 0xd($t7)
/* 9EA08 8009DE08 8CAA0060 */  lw         $t2, 0x60($a1)
/* 9EA0C 8009DE0C 000B6100 */  sll        $t4, $t3, 4
/* 9EA10 8009DE10 03190019 */  multu      $t8, $t9
/* 9EA14 8009DE14 014C6821 */  addu       $t5, $t2, $t4
/* 9EA18 8009DE18 91AE0009 */  lbu        $t6, 9($t5)
/* 9EA1C 8009DE1C 00004012 */  mflo       $t0
/* 9EA20 8009DE20 00000000 */  nop
/* 9EA24 8009DE24 00000000 */  nop
/* 9EA28 8009DE28 01C80019 */  multu      $t6, $t0
/* 9EA2C 8009DE2C 00004812 */  mflo       $t1
/* 9EA30 8009DE30 00095B83 */  sra        $t3, $t1, 0xe
/* 9EA34 8009DE34 AFAB0000 */  sw         $t3, ($sp)
/* 9EA38 8009DE38 8FAA0004 */  lw         $t2, 4($sp)
/* 9EA3C 8009DE3C 8FAC0000 */  lw         $t4, ($sp)
/* 9EA40 8009DE40 014C0019 */  multu      $t2, $t4
/* 9EA44 8009DE44 00006812 */  mflo       $t5
/* 9EA48 8009DE48 AFAD0004 */  sw         $t5, 4($sp)
/* 9EA4C 8009DE4C 00000000 */  nop
/* 9EA50 8009DE50 8FAF0004 */  lw         $t7, 4($sp)
/* 9EA54 8009DE54 000FC3C2 */  srl        $t8, $t7, 0xf
/* 9EA58 8009DE58 AFB80004 */  sw         $t8, 4($sp)
/* 9EA5C 8009DE5C 10000003 */  b          .L8009DE6C
/* 9EA60 8009DE60 87A20006 */   lh        $v0, 6($sp)
/* 9EA64 8009DE64 10000001 */  b          .L8009DE6C
/* 9EA68 8009DE68 00000000 */   nop
.L8009DE6C:
/* 9EA6C 8009DE6C 03E00008 */  jr         $ra
/* 9EA70 8009DE70 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009DE74
/* 9EA74 8009DE74 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9EA78 8009DE78 8C8E0024 */  lw         $t6, 0x24($a0)
/* 9EA7C 8009DE7C 01C57823 */  subu       $t7, $t6, $a1
/* 9EA80 8009DE80 AFAF0004 */  sw         $t7, 4($sp)
/* 9EA84 8009DE84 8FB80004 */  lw         $t8, 4($sp)
/* 9EA88 8009DE88 07000005 */  bltz       $t8, .L8009DEA0
/* 9EA8C 8009DE8C 00000000 */   nop
/* 9EA90 8009DE90 10000007 */  b          .L8009DEB0
/* 9EA94 8009DE94 8FA20004 */   lw        $v0, 4($sp)
/* 9EA98 8009DE98 10000003 */  b          .L8009DEA8
/* 9EA9C 8009DE9C 00000000 */   nop
.L8009DEA0:
/* 9EAA0 8009DEA0 10000003 */  b          .L8009DEB0
/* 9EAA4 8009DEA4 240203E8 */   addiu     $v0, $zero, 0x3e8
.L8009DEA8:
/* 9EAA8 8009DEA8 10000001 */  b          .L8009DEB0
/* 9EAAC 8009DEAC 00000000 */   nop
.L8009DEB0:
/* 9EAB0 8009DEB0 03E00008 */  jr         $ra
/* 9EAB4 8009DEB4 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009DEB8
/* 9EAB8 8009DEB8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 9EABC 8009DEBC 908F0031 */  lbu        $t7, 0x31($a0)
/* 9EAC0 8009DEC0 8CAE0060 */  lw         $t6, 0x60($a1)
/* 9EAC4 8009DEC4 8C890020 */  lw         $t1, 0x20($a0)
/* 9EAC8 8009DEC8 000FC100 */  sll        $t8, $t7, 4
/* 9EACC 8009DECC 01D8C821 */  addu       $t9, $t6, $t8
/* 9EAD0 8009DED0 93280007 */  lbu        $t0, 7($t9)
/* 9EAD4 8009DED4 912A000C */  lbu        $t2, 0xc($t1)
/* 9EAD8 8009DED8 010A5821 */  addu       $t3, $t0, $t2
/* 9EADC 8009DEDC 256CFFC0 */  addiu      $t4, $t3, -0x40
/* 9EAE0 8009DEE0 AFAC0004 */  sw         $t4, 4($sp)
/* 9EAE4 8009DEE4 8FAD0004 */  lw         $t5, 4($sp)
/* 9EAE8 8009DEE8 19A00003 */  blez       $t5, .L8009DEF8
/* 9EAEC 8009DEEC 00000000 */   nop
/* 9EAF0 8009DEF0 10000002 */  b          .L8009DEFC
/* 9EAF4 8009DEF4 00000000 */   nop
.L8009DEF8:
/* 9EAF8 8009DEF8 AFA00004 */  sw         $zero, 4($sp)
.L8009DEFC:
/* 9EAFC 8009DEFC 8FAF0004 */  lw         $t7, 4($sp)
/* 9EB00 8009DF00 29E1007F */  slti       $at, $t7, 0x7f
/* 9EB04 8009DF04 10200003 */  beqz       $at, .L8009DF14
/* 9EB08 8009DF08 00000000 */   nop
/* 9EB0C 8009DF0C 10000003 */  b          .L8009DF1C
/* 9EB10 8009DF10 00000000 */   nop
.L8009DF14:
/* 9EB14 8009DF14 240E007F */  addiu      $t6, $zero, 0x7f
/* 9EB18 8009DF18 AFAE0004 */  sw         $t6, 4($sp)
.L8009DF1C:
/* 9EB1C 8009DF1C 10000003 */  b          .L8009DF2C
/* 9EB20 8009DF20 93A20007 */   lbu       $v0, 7($sp)
/* 9EB24 8009DF24 10000001 */  b          .L8009DF2C
/* 9EB28 8009DF28 00000000 */   nop
.L8009DF2C:
/* 9EB2C 8009DF2C 03E00008 */  jr         $ra
/* 9EB30 8009DF30 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8009DF34
/* 9EB34 8009DF34 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9EB38 8009DF38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9EB3C 8009DF3C AFA40040 */  sw         $a0, 0x40($sp)
/* 9EB40 8009DF40 AFA50044 */  sw         $a1, 0x44($sp)
/* 9EB44 8009DF44 AFA60048 */  sw         $a2, 0x48($sp)
/* 9EB48 8009DF48 8FAE0044 */  lw         $t6, 0x44($sp)
/* 9EB4C 8009DF4C 8DCF0010 */  lw         $t7, 0x10($t6)
/* 9EB50 8009DF50 AFAF002C */  sw         $t7, 0x2c($sp)
/* 9EB54 8009DF54 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9EB58 8009DF58 93190034 */  lbu        $t9, 0x34($t8)
/* 9EB5C 8009DF5C 1720002C */  bnez       $t9, .L8009E010
/* 9EB60 8009DF60 00000000 */   nop
/* 9EB64 8009DF64 8FA80040 */  lw         $t0, 0x40($sp)
/* 9EB68 8009DF68 8D090050 */  lw         $t1, 0x50($t0)
/* 9EB6C 8009DF6C AFA90028 */  sw         $t1, 0x28($sp)
/* 9EB70 8009DF70 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9EB74 8009DF74 11400026 */  beqz       $t2, .L8009E010
/* 9EB78 8009DF78 00000000 */   nop
.L8009DF7C:
/* 9EB7C 8009DF7C 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9EB80 8009DF80 8D6C0000 */  lw         $t4, ($t3)
/* 9EB84 8009DF84 AFAC0024 */  sw         $t4, 0x24($sp)
/* 9EB88 8009DF88 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9EB8C 8009DF8C AFAD0020 */  sw         $t5, 0x20($sp)
/* 9EB90 8009DF90 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9EB94 8009DF94 AFAE001C */  sw         $t6, 0x1c($sp)
/* 9EB98 8009DF98 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9EB9C 8009DF9C 24010006 */  addiu      $at, $zero, 6
/* 9EBA0 8009DFA0 85F8000C */  lh         $t8, 0xc($t7)
/* 9EBA4 8009DFA4 17010015 */  bne        $t8, $at, .L8009DFFC
/* 9EBA8 8009DFA8 00000000 */   nop
/* 9EBAC 8009DFAC 8FB90020 */  lw         $t9, 0x20($sp)
/* 9EBB0 8009DFB0 8FA90044 */  lw         $t1, 0x44($sp)
/* 9EBB4 8009DFB4 8F280010 */  lw         $t0, 0x10($t9)
/* 9EBB8 8009DFB8 15090010 */  bne        $t0, $t1, .L8009DFFC
/* 9EBBC 8009DFBC 00000000 */   nop
/* 9EBC0 8009DFC0 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9EBC4 8009DFC4 11400007 */  beqz       $t2, .L8009DFE4
/* 9EBC8 8009DFC8 00000000 */   nop
/* 9EBCC 8009DFCC 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9EBD0 8009DFD0 8FAD0020 */  lw         $t5, 0x20($sp)
/* 9EBD4 8009DFD4 8D6C0008 */  lw         $t4, 8($t3)
/* 9EBD8 8009DFD8 8DAE0008 */  lw         $t6, 8($t5)
/* 9EBDC 8009DFDC 018E7821 */  addu       $t7, $t4, $t6
/* 9EBE0 8009DFE0 AD6F0008 */  sw         $t7, 8($t3)
.L8009DFE4:
/* 9EBE4 8009DFE4 0C025DC7 */  jal        func_8009771C
/* 9EBE8 8009DFE8 8FA40028 */   lw        $a0, 0x28($sp)
/* 9EBEC 8009DFEC 8FA50040 */  lw         $a1, 0x40($sp)
/* 9EBF0 8009DFF0 8FA40028 */  lw         $a0, 0x28($sp)
/* 9EBF4 8009DFF4 0C025DBA */  jal        func_800976E8
/* 9EBF8 8009DFF8 24A50048 */   addiu     $a1, $a1, 0x48
.L8009DFFC:
/* 9EBFC 8009DFFC 8FB80024 */  lw         $t8, 0x24($sp)
/* 9EC00 8009E000 AFB80028 */  sw         $t8, 0x28($sp)
/* 9EC04 8009E004 8FB90028 */  lw         $t9, 0x28($sp)
/* 9EC08 8009E008 1720FFDC */  bnez       $t9, .L8009DF7C
/* 9EC0C 8009E00C 00000000 */   nop
.L8009E010:
/* 9EC10 8009E010 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9EC14 8009E014 A1000033 */  sb         $zero, 0x33($t0)
/* 9EC18 8009E018 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9EC1C 8009E01C 24090003 */  addiu      $t1, $zero, 3
/* 9EC20 8009E020 A1490034 */  sb         $t1, 0x34($t2)
/* 9EC24 8009E024 8FAD002C */  lw         $t5, 0x2c($sp)
/* 9EC28 8009E028 A1A00030 */  sb         $zero, 0x30($t5)
/* 9EC2C 8009E02C 8FAC0040 */  lw         $t4, 0x40($sp)
/* 9EC30 8009E030 8FAF0048 */  lw         $t7, 0x48($sp)
/* 9EC34 8009E034 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9EC38 8009E038 8D8E001C */  lw         $t6, 0x1c($t4)
/* 9EC3C 8009E03C 01CF5821 */  addu       $t3, $t6, $t7
/* 9EC40 8009E040 AF0B0024 */  sw         $t3, 0x24($t8)
/* 9EC44 8009E044 8FB90040 */  lw         $t9, 0x40($sp)
/* 9EC48 8009E048 8FA50044 */  lw         $a1, 0x44($sp)
/* 9EC4C 8009E04C 00003025 */  or         $a2, $zero, $zero
/* 9EC50 8009E050 0C027974 */  jal        func_8009E5D0
/* 9EC54 8009E054 8F240014 */   lw        $a0, 0x14($t9)
/* 9EC58 8009E058 8FA80040 */  lw         $t0, 0x40($sp)
/* 9EC5C 8009E05C 8FA50044 */  lw         $a1, 0x44($sp)
/* 9EC60 8009E060 00003025 */  or         $a2, $zero, $zero
/* 9EC64 8009E064 8FA70048 */  lw         $a3, 0x48($sp)
/* 9EC68 8009E068 0C026DDC */  jal        func_8009B770
/* 9EC6C 8009E06C 8D040014 */   lw        $a0, 0x14($t0)
/* 9EC70 8009E070 24090005 */  addiu      $t1, $zero, 5
/* 9EC74 8009E074 A7A90030 */  sh         $t1, 0x30($sp)
/* 9EC78 8009E078 8FAA0044 */  lw         $t2, 0x44($sp)
/* 9EC7C 8009E07C AFAA0034 */  sw         $t2, 0x34($sp)
/* 9EC80 8009E080 8FA40040 */  lw         $a0, 0x40($sp)
/* 9EC84 8009E084 27A50030 */  addiu      $a1, $sp, 0x30
/* 9EC88 8009E088 8FA60048 */  lw         $a2, 0x48($sp)
/* 9EC8C 8009E08C 0C026E68 */  jal        func_8009B9A0
/* 9EC90 8009E090 24840048 */   addiu     $a0, $a0, 0x48
/* 9EC94 8009E094 10000001 */  b          .L8009E09C
/* 9EC98 8009E098 00000000 */   nop
.L8009E09C:
/* 9EC9C 8009E09C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9ECA0 8009E0A0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 9ECA4 8009E0A4 03E00008 */  jr         $ra
/* 9ECA8 8009E0A8 00000000 */   nop

glabel func_8009E0AC
/* 9ECAC 8009E0AC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9ECB0 8009E0B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9ECB4 8009E0B4 AFA40030 */  sw         $a0, 0x30($sp)
/* 9ECB8 8009E0B8 AFA50034 */  sw         $a1, 0x34($sp)
/* 9ECBC 8009E0BC AFA60038 */  sw         $a2, 0x38($sp)
/* 9ECC0 8009E0C0 AFA00020 */  sw         $zero, 0x20($sp)
/* 9ECC4 8009E0C4 240E0001 */  addiu      $t6, $zero, 1
/* 9ECC8 8009E0C8 A3AE001F */  sb         $t6, 0x1f($sp)
/* 9ECCC 8009E0CC 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9ECD0 8009E0D0 8DF80050 */  lw         $t8, 0x50($t7)
/* 9ECD4 8009E0D4 AFB8002C */  sw         $t8, 0x2c($sp)
/* 9ECD8 8009E0D8 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9ECDC 8009E0DC 13200033 */  beqz       $t9, .L8009E1AC
/* 9ECE0 8009E0E0 00000000 */   nop
.L8009E0E4:
/* 9ECE4 8009E0E4 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9ECE8 8009E0E8 8D090000 */  lw         $t1, ($t0)
/* 9ECEC 8009E0EC AFA90028 */  sw         $t1, 0x28($sp)
/* 9ECF0 8009E0F0 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9ECF4 8009E0F4 AFAA0024 */  sw         $t2, 0x24($sp)
/* 9ECF8 8009E0F8 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9ECFC 8009E0FC 8FAB0020 */  lw         $t3, 0x20($sp)
/* 9ED00 8009E100 8D8D0008 */  lw         $t5, 8($t4)
/* 9ED04 8009E104 016D7021 */  addu       $t6, $t3, $t5
/* 9ED08 8009E108 AFAE0020 */  sw         $t6, 0x20($sp)
/* 9ED0C 8009E10C 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9ED10 8009E110 24010005 */  addiu      $at, $zero, 5
/* 9ED14 8009E114 85F8000C */  lh         $t8, 0xc($t7)
/* 9ED18 8009E118 1701001F */  bne        $t8, $at, .L8009E198
/* 9ED1C 8009E11C 00000000 */   nop
/* 9ED20 8009E120 8FB90024 */  lw         $t9, 0x24($sp)
/* 9ED24 8009E124 8FA90034 */  lw         $t1, 0x34($sp)
/* 9ED28 8009E128 8F280010 */  lw         $t0, 0x10($t9)
/* 9ED2C 8009E12C 1509001A */  bne        $t0, $t1, .L8009E198
/* 9ED30 8009E130 00000000 */   nop
/* 9ED34 8009E134 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9ED38 8009E138 8FAC0038 */  lw         $t4, 0x38($sp)
/* 9ED3C 8009E13C 018A082A */  slt        $at, $t4, $t2
/* 9ED40 8009E140 10200012 */  beqz       $at, .L8009E18C
/* 9ED44 8009E144 00000000 */   nop
/* 9ED48 8009E148 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9ED4C 8009E14C 11600007 */  beqz       $t3, .L8009E16C
/* 9ED50 8009E150 00000000 */   nop
/* 9ED54 8009E154 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9ED58 8009E158 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9ED5C 8009E15C 8DAE0008 */  lw         $t6, 8($t5)
/* 9ED60 8009E160 8DF80008 */  lw         $t8, 8($t7)
/* 9ED64 8009E164 01D8C821 */  addu       $t9, $t6, $t8
/* 9ED68 8009E168 ADB90008 */  sw         $t9, 8($t5)
.L8009E16C:
/* 9ED6C 8009E16C 0C025DC7 */  jal        func_8009771C
/* 9ED70 8009E170 8FA4002C */   lw        $a0, 0x2c($sp)
/* 9ED74 8009E174 8FA50030 */  lw         $a1, 0x30($sp)
/* 9ED78 8009E178 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9ED7C 8009E17C 0C025DBA */  jal        func_800976E8
/* 9ED80 8009E180 24A50048 */   addiu     $a1, $a1, 0x48
/* 9ED84 8009E184 10000002 */  b          .L8009E190
/* 9ED88 8009E188 00000000 */   nop
.L8009E18C:
/* 9ED8C 8009E18C A3A0001F */  sb         $zero, 0x1f($sp)
.L8009E190:
/* 9ED90 8009E190 10000006 */  b          .L8009E1AC
/* 9ED94 8009E194 00000000 */   nop
.L8009E198:
/* 9ED98 8009E198 8FA80028 */  lw         $t0, 0x28($sp)
/* 9ED9C 8009E19C AFA8002C */  sw         $t0, 0x2c($sp)
/* 9EDA0 8009E1A0 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9EDA4 8009E1A4 1520FFCF */  bnez       $t1, .L8009E0E4
/* 9EDA8 8009E1A8 00000000 */   nop
.L8009E1AC:
/* 9EDAC 8009E1AC 10000003 */  b          .L8009E1BC
/* 9EDB0 8009E1B0 93A2001F */   lbu       $v0, 0x1f($sp)
/* 9EDB4 8009E1B4 10000001 */  b          .L8009E1BC
/* 9EDB8 8009E1B8 00000000 */   nop
.L8009E1BC:
/* 9EDBC 8009E1BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9EDC0 8009E1C0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9EDC4 8009E1C4 03E00008 */  jr         $ra
/* 9EDC8 8009E1C8 00000000 */   nop

glabel func_8009E1CC
/* 9EDCC 8009E1CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9EDD0 8009E1D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9EDD4 8009E1D4 AFA40020 */  sw         $a0, 0x20($sp)
/* 9EDD8 8009E1D8 AFA50024 */  sw         $a1, 0x24($sp)
/* 9EDDC 8009E1DC AFA00018 */  sw         $zero, 0x18($sp)
/* 9EDE0 8009E1E0 8FAE0018 */  lw         $t6, 0x18($sp)
/* 9EDE4 8009E1E4 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9EDE8 8009E1E8 15C0000C */  bnez       $t6, .L8009E21C
/* 9EDEC 8009E1EC 00000000 */   nop
.L8009E1F0:
/* 9EDF0 8009E1F0 8FB8001C */  lw         $t8, 0x1c($sp)
/* 9EDF4 8009E1F4 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9EDF8 8009E1F8 0018C880 */  sll        $t9, $t8, 2
/* 9EDFC 8009E1FC 01F94021 */  addu       $t0, $t7, $t9
/* 9EE00 8009E200 8D09000C */  lw         $t1, 0xc($t0)
/* 9EE04 8009E204 AFA90018 */  sw         $t1, 0x18($sp)
/* 9EE08 8009E208 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9EE0C 8009E20C 8FAC0018 */  lw         $t4, 0x18($sp)
/* 9EE10 8009E210 254B0001 */  addiu      $t3, $t2, 1
/* 9EE14 8009E214 1180FFF6 */  beqz       $t4, .L8009E1F0
/* 9EE18 8009E218 AFAB001C */   sw        $t3, 0x1c($sp)
.L8009E21C:
/* 9EE1C 8009E21C 8FAD0020 */  lw         $t5, 0x20($sp)
/* 9EE20 8009E220 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9EE24 8009E224 91AE0034 */  lbu        $t6, 0x34($t5)
/* 9EE28 8009E228 19C00010 */  blez       $t6, .L8009E26C
/* 9EE2C 8009E22C 00000000 */   nop
.L8009E230:
/* 9EE30 8009E230 8FA40020 */  lw         $a0, 0x20($sp)
/* 9EE34 8009E234 0C0278C9 */  jal        func_8009E324
/* 9EE38 8009E238 8FA5001C */   lw        $a1, 0x1c($sp)
/* 9EE3C 8009E23C 8FA40020 */  lw         $a0, 0x20($sp)
/* 9EE40 8009E240 8FA50018 */  lw         $a1, 0x18($sp)
/* 9EE44 8009E244 0C0278AD */  jal        func_8009E2B4
/* 9EE48 8009E248 8FA6001C */   lw        $a2, 0x1c($sp)
/* 9EE4C 8009E24C 8FB8001C */  lw         $t8, 0x1c($sp)
/* 9EE50 8009E250 8FB90020 */  lw         $t9, 0x20($sp)
/* 9EE54 8009E254 270F0001 */  addiu      $t7, $t8, 1
/* 9EE58 8009E258 AFAF001C */  sw         $t7, 0x1c($sp)
/* 9EE5C 8009E25C 93280034 */  lbu        $t0, 0x34($t9)
/* 9EE60 8009E260 01E8082A */  slt        $at, $t7, $t0
/* 9EE64 8009E264 1420FFF2 */  bnez       $at, .L8009E230
/* 9EE68 8009E268 00000000 */   nop
.L8009E26C:
/* 9EE6C 8009E26C 8FA90024 */  lw         $t1, 0x24($sp)
/* 9EE70 8009E270 8D2A0008 */  lw         $t2, 8($t1)
/* 9EE74 8009E274 11400009 */  beqz       $t2, .L8009E29C
/* 9EE78 8009E278 00000000 */   nop
/* 9EE7C 8009E27C 8FA40020 */  lw         $a0, 0x20($sp)
/* 9EE80 8009E280 0C0278C9 */  jal        func_8009E324
/* 9EE84 8009E284 8FA5001C */   lw        $a1, 0x1c($sp)
/* 9EE88 8009E288 8FAB0024 */  lw         $t3, 0x24($sp)
/* 9EE8C 8009E28C 8FA40020 */  lw         $a0, 0x20($sp)
/* 9EE90 8009E290 24060009 */  addiu      $a2, $zero, 9
/* 9EE94 8009E294 0C0278AD */  jal        func_8009E2B4
/* 9EE98 8009E298 8D650008 */   lw        $a1, 8($t3)
.L8009E29C:
/* 9EE9C 8009E29C 10000001 */  b          .L8009E2A4
/* 9EEA0 8009E2A0 00000000 */   nop
.L8009E2A4:
/* 9EEA4 8009E2A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9EEA8 8009E2A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9EEAC 8009E2AC 03E00008 */  jr         $ra
/* 9EEB0 8009E2B0 00000000 */   nop

glabel func_8009E2B4
/* 9EEB4 8009E2B4 8C8E0060 */  lw         $t6, 0x60($a0)
/* 9EEB8 8009E2B8 00067900 */  sll        $t7, $a2, 4
/* 9EEBC 8009E2BC 01CFC021 */  addu       $t8, $t6, $t7
/* 9EEC0 8009E2C0 AF050000 */  sw         $a1, ($t8)
/* 9EEC4 8009E2C4 8C880060 */  lw         $t0, 0x60($a0)
/* 9EEC8 8009E2C8 90B90001 */  lbu        $t9, 1($a1)
/* 9EECC 8009E2CC 00064900 */  sll        $t1, $a2, 4
/* 9EED0 8009E2D0 01095021 */  addu       $t2, $t0, $t1
/* 9EED4 8009E2D4 A1590007 */  sb         $t9, 7($t2)
/* 9EED8 8009E2D8 8C8C0060 */  lw         $t4, 0x60($a0)
/* 9EEDC 8009E2DC 90AB0000 */  lbu        $t3, ($a1)
/* 9EEE0 8009E2E0 00066900 */  sll        $t5, $a2, 4
/* 9EEE4 8009E2E4 018D7021 */  addu       $t6, $t4, $t5
/* 9EEE8 8009E2E8 A1CB0009 */  sb         $t3, 9($t6)
/* 9EEEC 8009E2EC 8C980060 */  lw         $t8, 0x60($a0)
/* 9EEF0 8009E2F0 90AF0002 */  lbu        $t7, 2($a1)
/* 9EEF4 8009E2F4 00064100 */  sll        $t0, $a2, 4
/* 9EEF8 8009E2F8 03084821 */  addu       $t1, $t8, $t0
/* 9EEFC 8009E2FC A12F0008 */  sb         $t7, 8($t1)
/* 9EF00 8009E300 8C8A0060 */  lw         $t2, 0x60($a0)
/* 9EF04 8009E304 84B9000C */  lh         $t9, 0xc($a1)
/* 9EF08 8009E308 00066100 */  sll        $t4, $a2, 4
/* 9EF0C 8009E30C 014C6821 */  addu       $t5, $t2, $t4
/* 9EF10 8009E310 A5B90004 */  sh         $t9, 4($t5)
/* 9EF14 8009E314 03E00008 */  jr         $ra
/* 9EF18 8009E318 00000000 */   nop

glabel func_8009E31C
/* 9EF1C 8009E31C 03E00008 */  jr         $ra
/* 9EF20 8009E320 00000000 */   nop

glabel func_8009E324
/* 9EF24 8009E324 8C8E0060 */  lw         $t6, 0x60($a0)
/* 9EF28 8009E328 00057900 */  sll        $t7, $a1, 4
/* 9EF2C 8009E32C 01CFC021 */  addu       $t8, $t6, $t7
/* 9EF30 8009E330 A3000006 */  sb         $zero, 6($t8)
/* 9EF34 8009E334 8C990060 */  lw         $t9, 0x60($a0)
/* 9EF38 8009E338 00054100 */  sll        $t0, $a1, 4
/* 9EF3C 8009E33C 03284821 */  addu       $t1, $t9, $t0
/* 9EF40 8009E340 A120000A */  sb         $zero, 0xa($t1)
/* 9EF44 8009E344 8C8B0060 */  lw         $t3, 0x60($a0)
/* 9EF48 8009E348 00056100 */  sll        $t4, $a1, 4
/* 9EF4C 8009E34C 240A0040 */  addiu      $t2, $zero, 0x40
/* 9EF50 8009E350 016C6821 */  addu       $t5, $t3, $t4
/* 9EF54 8009E354 A1AA0007 */  sb         $t2, 7($t5)
/* 9EF58 8009E358 8C8F0060 */  lw         $t7, 0x60($a0)
/* 9EF5C 8009E35C 0005C100 */  sll        $t8, $a1, 4
/* 9EF60 8009E360 240E007F */  addiu      $t6, $zero, 0x7f
/* 9EF64 8009E364 01F8C821 */  addu       $t9, $t7, $t8
/* 9EF68 8009E368 A32E0009 */  sb         $t6, 9($t9)
/* 9EF6C 8009E36C 8C890060 */  lw         $t1, 0x60($a0)
/* 9EF70 8009E370 00055900 */  sll        $t3, $a1, 4
/* 9EF74 8009E374 24080005 */  addiu      $t0, $zero, 5
/* 9EF78 8009E378 012B6021 */  addu       $t4, $t1, $t3
/* 9EF7C 8009E37C A1880008 */  sb         $t0, 8($t4)
/* 9EF80 8009E380 8C8A0060 */  lw         $t2, 0x60($a0)
/* 9EF84 8009E384 00056900 */  sll        $t5, $a1, 4
/* 9EF88 8009E388 014D7821 */  addu       $t7, $t2, $t5
/* 9EF8C 8009E38C A1E0000B */  sb         $zero, 0xb($t7)
/* 9EF90 8009E390 8C8E0060 */  lw         $t6, 0x60($a0)
/* 9EF94 8009E394 0005C900 */  sll        $t9, $a1, 4
/* 9EF98 8009E398 241800C8 */  addiu      $t8, $zero, 0xc8
/* 9EF9C 8009E39C 01D94821 */  addu       $t1, $t6, $t9
/* 9EFA0 8009E3A0 A5380004 */  sh         $t8, 4($t1)
/* 9EFA4 8009E3A4 8C8B0060 */  lw         $t3, 0x60($a0)
/* 9EFA8 8009E3A8 3C013F80 */  lui        $at, 0x3f80
/* 9EFAC 8009E3AC 44812000 */  mtc1       $at, $f4
/* 9EFB0 8009E3B0 00054100 */  sll        $t0, $a1, 4
/* 9EFB4 8009E3B4 01686021 */  addu       $t4, $t3, $t0
/* 9EFB8 8009E3B8 E584000C */  swc1       $f4, 0xc($t4)
/* 9EFBC 8009E3BC 03E00008 */  jr         $ra
/* 9EFC0 8009E3C0 00000000 */   nop

glabel func_8009E3C4
/* 9EFC4 8009E3C4 03E00008 */  jr         $ra
/* 9EFC8 8009E3C8 00000000 */   nop

glabel func_8009E3CC
/* 9EFCC 8009E3CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9EFD0 8009E3D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9EFD4 8009E3D4 AFA40020 */  sw         $a0, 0x20($sp)
/* 9EFD8 8009E3D8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9EFDC 8009E3DC AFA0001C */  sw         $zero, 0x1c($sp)
/* 9EFE0 8009E3E0 91CF0034 */  lbu        $t7, 0x34($t6)
/* 9EFE4 8009E3E4 19E00012 */  blez       $t7, .L8009E430
/* 9EFE8 8009E3E8 00000000 */   nop
.L8009E3EC:
/* 9EFEC 8009E3EC 8FB80020 */  lw         $t8, 0x20($sp)
/* 9EFF0 8009E3F0 8FA8001C */  lw         $t0, 0x1c($sp)
/* 9EFF4 8009E3F4 8F190060 */  lw         $t9, 0x60($t8)
/* 9EFF8 8009E3F8 00084900 */  sll        $t1, $t0, 4
/* 9EFFC 8009E3FC 03295021 */  addu       $t2, $t9, $t1
/* 9F000 8009E400 AD400000 */  sw         $zero, ($t2)
/* 9F004 8009E404 8FA40020 */  lw         $a0, 0x20($sp)
/* 9F008 8009E408 0C0278C9 */  jal        func_8009E324
/* 9F00C 8009E40C 8FA5001C */   lw        $a1, 0x1c($sp)
/* 9F010 8009E410 8FAB001C */  lw         $t3, 0x1c($sp)
/* 9F014 8009E414 8FAD0020 */  lw         $t5, 0x20($sp)
/* 9F018 8009E418 256C0001 */  addiu      $t4, $t3, 1
/* 9F01C 8009E41C AFAC001C */  sw         $t4, 0x1c($sp)
/* 9F020 8009E420 91AE0034 */  lbu        $t6, 0x34($t5)
/* 9F024 8009E424 018E082A */  slt        $at, $t4, $t6
/* 9F028 8009E428 1420FFF0 */  bnez       $at, .L8009E3EC
/* 9F02C 8009E42C 00000000 */   nop
.L8009E430:
/* 9F030 8009E430 10000001 */  b          .L8009E438
/* 9F034 8009E434 00000000 */   nop
.L8009E438:
/* 9F038 8009E438 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F03C 8009E43C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9F040 8009E440 03E00008 */  jr         $ra
/* 9F044 8009E444 00000000 */   nop

glabel func_8009E448
/* 9F048 8009E448 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9F04C 8009E44C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9F050 8009E450 AFA40028 */  sw         $a0, 0x28($sp)
/* 9F054 8009E454 AFA5002C */  sw         $a1, 0x2c($sp)
/* 9F058 8009E458 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9F05C 8009E45C 8DCF0050 */  lw         $t7, 0x50($t6)
/* 9F060 8009E460 AFAF0024 */  sw         $t7, 0x24($sp)
/* 9F064 8009E464 8FB80024 */  lw         $t8, 0x24($sp)
/* 9F068 8009E468 13000040 */  beqz       $t8, .L8009E56C
/* 9F06C 8009E46C 00000000 */   nop
.L8009E470:
/* 9F070 8009E470 8FB90024 */  lw         $t9, 0x24($sp)
/* 9F074 8009E474 8F280000 */  lw         $t0, ($t9)
/* 9F078 8009E478 AFA80020 */  sw         $t0, 0x20($sp)
/* 9F07C 8009E47C 8FA90024 */  lw         $t1, 0x24($sp)
/* 9F080 8009E480 852A000C */  lh         $t2, 0xc($t1)
/* 9F084 8009E484 A7AA001E */  sh         $t2, 0x1e($sp)
/* 9F088 8009E488 87AB001E */  lh         $t3, 0x1e($sp)
/* 9F08C 8009E48C 24010016 */  addiu      $at, $zero, 0x16
/* 9F090 8009E490 11610004 */  beq        $t3, $at, .L8009E4A4
/* 9F094 8009E494 00000000 */   nop
/* 9F098 8009E498 24010017 */  addiu      $at, $zero, 0x17
/* 9F09C 8009E49C 1561002E */  bne        $t3, $at, .L8009E558
/* 9F0A0 8009E4A0 00000000 */   nop
.L8009E4A4:
/* 9F0A4 8009E4A4 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9F0A8 8009E4A8 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9F0AC 8009E4AC 8D8D0010 */  lw         $t5, 0x10($t4)
/* 9F0B0 8009E4B0 15AE0029 */  bne        $t5, $t6, .L8009E558
/* 9F0B4 8009E4B4 00000000 */   nop
/* 9F0B8 8009E4B8 8FB80028 */  lw         $t8, 0x28($sp)
/* 9F0BC 8009E4BC 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9F0C0 8009E4C0 8F190078 */  lw         $t9, 0x78($t8)
/* 9F0C4 8009E4C4 8DE40014 */  lw         $a0, 0x14($t7)
/* 9F0C8 8009E4C8 0320F809 */  jalr       $t9
/* 9F0CC 8009E4CC 00000000 */   nop
/* 9F0D0 8009E4D0 0C025DC7 */  jal        func_8009771C
/* 9F0D4 8009E4D4 8FA40024 */   lw        $a0, 0x24($sp)
/* 9F0D8 8009E4D8 8FA80020 */  lw         $t0, 0x20($sp)
/* 9F0DC 8009E4DC 11000007 */  beqz       $t0, .L8009E4FC
/* 9F0E0 8009E4E0 00000000 */   nop
/* 9F0E4 8009E4E4 8FA90020 */  lw         $t1, 0x20($sp)
/* 9F0E8 8009E4E8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 9F0EC 8009E4EC 8D2A0008 */  lw         $t2, 8($t1)
/* 9F0F0 8009E4F0 8D6C0008 */  lw         $t4, 8($t3)
/* 9F0F4 8009E4F4 014C6821 */  addu       $t5, $t2, $t4
/* 9F0F8 8009E4F8 AD2D0008 */  sw         $t5, 8($t1)
.L8009E4FC:
/* 9F0FC 8009E4FC 8FA50028 */  lw         $a1, 0x28($sp)
/* 9F100 8009E500 8FA40024 */  lw         $a0, 0x24($sp)
/* 9F104 8009E504 0C025DBA */  jal        func_800976E8
/* 9F108 8009E508 24A50048 */   addiu     $a1, $a1, 0x48
/* 9F10C 8009E50C 87AE001E */  lh         $t6, 0x1e($sp)
/* 9F110 8009E510 24010016 */  addiu      $at, $zero, 0x16
/* 9F114 8009E514 15C10006 */  bne        $t6, $at, .L8009E530
/* 9F118 8009E518 00000000 */   nop
/* 9F11C 8009E51C 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9F120 8009E520 91F80037 */  lbu        $t8, 0x37($t7)
/* 9F124 8009E524 331900FE */  andi       $t9, $t8, 0xfe
/* 9F128 8009E528 10000005 */  b          .L8009E540
/* 9F12C 8009E52C A1F90037 */   sb        $t9, 0x37($t7)
.L8009E530:
/* 9F130 8009E530 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9F134 8009E534 910B0037 */  lbu        $t3, 0x37($t0)
/* 9F138 8009E538 316A00FD */  andi       $t2, $t3, 0xfd
/* 9F13C 8009E53C A10A0037 */  sb         $t2, 0x37($t0)
.L8009E540:
/* 9F140 8009E540 8FAC002C */  lw         $t4, 0x2c($sp)
/* 9F144 8009E544 918D0037 */  lbu        $t5, 0x37($t4)
/* 9F148 8009E548 15A00003 */  bnez       $t5, .L8009E558
/* 9F14C 8009E54C 00000000 */   nop
/* 9F150 8009E550 10000008 */  b          .L8009E574
/* 9F154 8009E554 00000000 */   nop
.L8009E558:
/* 9F158 8009E558 8FA90020 */  lw         $t1, 0x20($sp)
/* 9F15C 8009E55C AFA90024 */  sw         $t1, 0x24($sp)
/* 9F160 8009E560 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9F164 8009E564 15C0FFC2 */  bnez       $t6, .L8009E470
/* 9F168 8009E568 00000000 */   nop
.L8009E56C:
/* 9F16C 8009E56C 10000001 */  b          .L8009E574
/* 9F170 8009E570 00000000 */   nop
.L8009E574:
/* 9F174 8009E574 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9F178 8009E578 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9F17C 8009E57C 03E00008 */  jr         $ra
/* 9F180 8009E580 00000000 */   nop

glabel func_8009E584
/* 9F184 8009E584 AFA50004 */  sw         $a1, 4($sp)
/* 9F188 8009E588 8C8E0018 */  lw         $t6, 0x18($a0)
/* 9F18C 8009E58C 11C00009 */  beqz       $t6, .L8009E5B4
/* 9F190 8009E590 00000000 */   nop
/* 9F194 8009E594 8C8F0018 */  lw         $t7, 0x18($a0)
/* 9F198 8009E598 C7A40004 */  lwc1       $f4, 4($sp)
/* 9F19C 8009E59C C5E60014 */  lwc1       $f6, 0x14($t7)
/* 9F1A0 8009E5A0 46062202 */  mul.s      $f8, $f4, $f6
/* 9F1A4 8009E5A4 4600428D */  trunc.w.s  $f10, $f8
/* 9F1A8 8009E5A8 44195000 */  mfc1       $t9, $f10
/* 9F1AC 8009E5AC 10000003 */  b          .L8009E5BC
/* 9F1B0 8009E5B0 AC990024 */   sw        $t9, 0x24($a0)
.L8009E5B4:
/* 9F1B4 8009E5B4 240801E8 */  addiu      $t0, $zero, 0x1e8
/* 9F1B8 8009E5B8 AC880024 */  sw         $t0, 0x24($a0)
.L8009E5BC:
/* 9F1BC 8009E5BC 10000001 */  b          .L8009E5C4
/* 9F1C0 8009E5C0 00000000 */   nop
.L8009E5C4:
/* 9F1C4 8009E5C4 03E00008 */  jr         $ra
/* 9F1C8 8009E5C8 00000000 */   nop
/* 9F1CC 8009E5CC 00000000 */  nop
