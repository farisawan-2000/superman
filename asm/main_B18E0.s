.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B0CE0
/* B18E0 800B0CE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B18E4 800B0CE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B18E8 800B0CE8 AFA40020 */  sw         $a0, 0x20($sp)
/* B18EC 800B0CEC AFA50024 */  sw         $a1, 0x24($sp)
/* B18F0 800B0CF0 AFA60028 */  sw         $a2, 0x28($sp)
/* B18F4 800B0CF4 AFA7002C */  sw         $a3, 0x2c($sp)
/* B18F8 800B0CF8 27AE0026 */  addiu      $t6, $sp, 0x26
/* B18FC 800B0CFC 25CF0002 */  addiu      $t7, $t6, 2
/* B1900 800B0D00 AFAF001C */  sw         $t7, 0x1c($sp)
/* B1904 800B0D04 3C04800D */  lui        $a0, %hi(D_800CD540)
/* B1908 800B0D08 2484D540 */  addiu      $a0, $a0, %lo(D_800CD540)
/* B190C 800B0D0C 87A50022 */  lh         $a1, 0x22($sp)
/* B1910 800B0D10 87A60026 */  lh         $a2, 0x26($sp)
/* B1914 800B0D14 0C02C40F */  jal        func_800B103C
/* B1918 800B0D18 8FA7001C */   lw        $a3, 0x1c($sp)
/* B191C 800B0D1C 3C04800D */  lui        $a0, %hi(D_800CD540)
/* B1920 800B0D20 0C02C385 */  jal        func_800B0E14
/* B1924 800B0D24 2484D540 */   addiu     $a0, $a0, %lo(D_800CD540)
/* B1928 800B0D28 10000001 */  b          .L800B0D30
/* B192C 800B0D2C 00000000 */   nop
.L800B0D30:
/* B1930 800B0D30 8FBF0014 */  lw         $ra, 0x14($sp)
/* B1934 800B0D34 27BD0020 */  addiu      $sp, $sp, 0x20
/* B1938 800B0D38 03E00008 */  jr         $ra
/* B193C 800B0D3C 00000000 */   nop

glabel func_800B0D40
/* B1940 800B0D40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B1944 800B0D44 AFBF0014 */  sw         $ra, 0x14($sp)
/* B1948 800B0D48 AFA40018 */  sw         $a0, 0x18($sp)
/* B194C 800B0D4C AFA5001C */  sw         $a1, 0x1c($sp)
/* B1950 800B0D50 AFA60020 */  sw         $a2, 0x20($sp)
/* B1954 800B0D54 8FAF0018 */  lw         $t7, 0x18($sp)
/* B1958 800B0D58 3C0E2073 */  lui        $t6, 0x2073
/* B195C 800B0D5C 35CE6A73 */  ori        $t6, $t6, 0x6a73
/* B1960 800B0D60 ADEE0000 */  sw         $t6, ($t7)
/* B1964 800B0D64 8FB8001C */  lw         $t8, 0x1c($sp)
/* B1968 800B0D68 8FB90018 */  lw         $t9, 0x18($sp)
/* B196C 800B0D6C AF380008 */  sw         $t8, 8($t9)
/* B1970 800B0D70 8FA80020 */  lw         $t0, 0x20($sp)
/* B1974 800B0D74 8FA90018 */  lw         $t1, 0x18($sp)
/* B1978 800B0D78 AD280004 */  sw         $t0, 4($t1)
/* B197C 800B0D7C 0C02923C */  jal        func_800A48F0
/* B1980 800B0D80 00000000 */   nop
/* B1984 800B0D84 8FAA0018 */  lw         $t2, 0x18($sp)
/* B1988 800B0D88 AD42000C */  sw         $v0, 0xc($t2)
/* B198C 800B0D8C 8FAB0018 */  lw         $t3, 0x18($sp)
/* B1990 800B0D90 AD600010 */  sw         $zero, 0x10($t3)
/* B1994 800B0D94 10000001 */  b          .L800B0D9C
/* B1998 800B0D98 00000000 */   nop
.L800B0D9C:
/* B199C 800B0D9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B19A0 800B0DA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* B19A4 800B0DA4 03E00008 */  jr         $ra
/* B19A8 800B0DA8 00000000 */   nop

glabel func_800B0DAC
/* B19AC 800B0DAC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B19B0 800B0DB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B19B4 800B0DB4 AFA40020 */  sw         $a0, 0x20($sp)
/* B19B8 800B0DB8 AFA50024 */  sw         $a1, 0x24($sp)
/* B19BC 800B0DBC AFA60028 */  sw         $a2, 0x28($sp)
/* B19C0 800B0DC0 AFA7002C */  sw         $a3, 0x2c($sp)
/* B19C4 800B0DC4 87AE002A */  lh         $t6, 0x2a($sp)
/* B19C8 800B0DC8 29C10011 */  slti       $at, $t6, 0x11
/* B19CC 800B0DCC 14200003 */  bnez       $at, .L800B0DDC
/* B19D0 800B0DD0 00000000 */   nop
/* B19D4 800B0DD4 1000000B */  b          .L800B0E04
/* B19D8 800B0DD8 00000000 */   nop
.L800B0DDC:
/* B19DC 800B0DDC 27AF002A */  addiu      $t7, $sp, 0x2a
/* B19E0 800B0DE0 25F80002 */  addiu      $t8, $t7, 2
/* B19E4 800B0DE4 AFB8001C */  sw         $t8, 0x1c($sp)
/* B19E8 800B0DE8 8FA40020 */  lw         $a0, 0x20($sp)
/* B19EC 800B0DEC 87A50026 */  lh         $a1, 0x26($sp)
/* B19F0 800B0DF0 87A6002A */  lh         $a2, 0x2a($sp)
/* B19F4 800B0DF4 0C02C40F */  jal        func_800B103C
/* B19F8 800B0DF8 8FA7001C */   lw        $a3, 0x1c($sp)
/* B19FC 800B0DFC 10000001 */  b          .L800B0E04
/* B1A00 800B0E00 00000000 */   nop
.L800B0E04:
/* B1A04 800B0E04 8FBF0014 */  lw         $ra, 0x14($sp)
/* B1A08 800B0E08 27BD0020 */  addiu      $sp, $sp, 0x20
/* B1A0C 800B0E0C 03E00008 */  jr         $ra
/* B1A10 800B0E10 00000000 */   nop

glabel func_800B0E14
/* B1A14 800B0E14 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B1A18 800B0E18 AFBF001C */  sw         $ra, 0x1c($sp)
/* B1A1C 800B0E1C AFA40040 */  sw         $a0, 0x40($sp)
/* B1A20 800B0E20 AFB00018 */  sw         $s0, 0x18($sp)
/* B1A24 800B0E24 3C0E800D */  lui        $t6, %hi(D_800CD564)
/* B1A28 800B0E28 8DCED564 */  lw         $t6, %lo(D_800CD564)($t6)
/* B1A2C 800B0E2C 15C0000F */  bnez       $t6, .L800B0E6C
/* B1A30 800B0E30 00000000 */   nop
/* B1A34 800B0E34 3C04801A */  lui        $a0, %hi(D_801A4310)
/* B1A38 800B0E38 3C05801A */  lui        $a1, %hi(D_801A4328)
/* B1A3C 800B0E3C 24A54328 */  addiu      $a1, $a1, %lo(D_801A4328)
/* B1A40 800B0E40 24844310 */  addiu      $a0, $a0, %lo(D_801A4310)
/* B1A44 800B0E44 0C02B42C */  jal        func_800AD0B0
/* B1A48 800B0E48 24060001 */   addiu     $a2, $zero, 1
/* B1A4C 800B0E4C 3C05801A */  lui        $a1, %hi(D_801A4310)
/* B1A50 800B0E50 24A54310 */  addiu      $a1, $a1, %lo(D_801A4310)
/* B1A54 800B0E54 24040010 */  addiu      $a0, $zero, 0x10
/* B1A58 800B0E58 0C02AD08 */  jal        func_800AB420
/* B1A5C 800B0E5C 00003025 */   or        $a2, $zero, $zero
/* B1A60 800B0E60 240F0001 */  addiu      $t7, $zero, 1
/* B1A64 800B0E64 3C01800D */  lui        $at, %hi(D_800CD564)
/* B1A68 800B0E68 AC2FD564 */  sw         $t7, %lo(D_800CD564)($at)
.L800B0E6C:
/* B1A6C 800B0E6C 0C02C0C8 */  jal        func_800B0320
/* B1A70 800B0E70 00000000 */   nop
/* B1A74 800B0E74 AFA2003C */  sw         $v0, 0x3c($sp)
/* B1A78 800B0E78 3C01800D */  lui        $at, %hi(D_800CD560)
/* B1A7C 800B0E7C AC20D560 */  sw         $zero, %lo(D_800CD560)($at)
/* B1A80 800B0E80 8FB80040 */  lw         $t8, 0x40($sp)
/* B1A84 800B0E84 8F190008 */  lw         $t9, 8($t8)
/* B1A88 800B0E88 AFB9002C */  sw         $t9, 0x2c($sp)
/* B1A8C 800B0E8C 8FA80040 */  lw         $t0, 0x40($sp)
/* B1A90 800B0E90 8D090010 */  lw         $t1, 0x10($t0)
/* B1A94 800B0E94 00095080 */  sll        $t2, $t1, 2
/* B1A98 800B0E98 AFAA0034 */  sw         $t2, 0x34($sp)
/* B1A9C 800B0E9C 0C02C0D0 */  jal        func_800B0340
/* B1AA0 800B0EA0 8FA4003C */   lw        $a0, 0x3c($sp)
/* B1AA4 800B0EA4 8FAB0034 */  lw         $t3, 0x34($sp)
/* B1AA8 800B0EA8 11600053 */  beqz       $t3, .L800B0FF8
/* B1AAC 800B0EAC 00000000 */   nop
.L800B0EB0:
/* B1AB0 800B0EB0 8FAC0034 */  lw         $t4, 0x34($sp)
/* B1AB4 800B0EB4 34018000 */  ori        $at, $zero, 0x8000
/* B1AB8 800B0EB8 0181082B */  sltu       $at, $t4, $at
/* B1ABC 800B0EBC 10200003 */  beqz       $at, .L800B0ECC
/* B1AC0 800B0EC0 00000000 */   nop
/* B1AC4 800B0EC4 10000003 */  b          .L800B0ED4
/* B1AC8 800B0EC8 AFAC0030 */   sw        $t4, 0x30($sp)
.L800B0ECC:
/* B1ACC 800B0ECC 340D8000 */  ori        $t5, $zero, 0x8000
/* B1AD0 800B0ED0 AFAD0030 */  sw         $t5, 0x30($sp)
.L800B0ED4:
/* B1AD4 800B0ED4 8FAE0030 */  lw         $t6, 0x30($sp)
/* B1AD8 800B0ED8 3C0100FF */  lui        $at, 0xff
/* B1ADC 800B0EDC 27B90028 */  addiu      $t9, $sp, 0x28
/* B1AE0 800B0EE0 01C17824 */  and        $t7, $t6, $at
/* B1AE4 800B0EE4 000FC402 */  srl        $t8, $t7, 0x10
/* B1AE8 800B0EE8 A3380000 */  sb         $t8, ($t9)
/* B1AEC 800B0EEC 8FA80030 */  lw         $t0, 0x30($sp)
/* B1AF0 800B0EF0 27AB0028 */  addiu      $t3, $sp, 0x28
/* B1AF4 800B0EF4 3109FF00 */  andi       $t1, $t0, 0xff00
/* B1AF8 800B0EF8 00095202 */  srl        $t2, $t1, 8
/* B1AFC 800B0EFC A16A0001 */  sb         $t2, 1($t3)
/* B1B00 800B0F00 8FAC0030 */  lw         $t4, 0x30($sp)
/* B1B04 800B0F04 27AE0028 */  addiu      $t6, $sp, 0x28
/* B1B08 800B0F08 318D00FF */  andi       $t5, $t4, 0xff
/* B1B0C 800B0F0C A1CD0002 */  sb         $t5, 2($t6)
/* B1B10 800B0F10 AFA00038 */  sw         $zero, 0x38($sp)
/* B1B14 800B0F14 8FAF0038 */  lw         $t7, 0x38($sp)
/* B1B18 800B0F18 2DE10003 */  sltiu      $at, $t7, 3
/* B1B1C 800B0F1C 10200010 */  beqz       $at, .L800B0F60
/* B1B20 800B0F20 00000000 */   nop
.L800B0F24:
/* B1B24 800B0F24 8FB80038 */  lw         $t8, 0x38($sp)
/* B1B28 800B0F28 27B90028 */  addiu      $t9, $sp, 0x28
/* B1B2C 800B0F2C 24080003 */  addiu      $t0, $zero, 3
/* B1B30 800B0F30 24060003 */  addiu      $a2, $zero, 3
/* B1B34 800B0F34 01182823 */  subu       $a1, $t0, $t8
/* B1B38 800B0F38 0C02C4C8 */  jal        func_800B1320
/* B1B3C 800B0F3C 03192021 */   addu      $a0, $t8, $t9
/* B1B40 800B0F40 8FA90038 */  lw         $t1, 0x38($sp)
/* B1B44 800B0F44 00408025 */  or         $s0, $v0, $zero
/* B1B48 800B0F48 01305021 */  addu       $t2, $t1, $s0
/* B1B4C 800B0F4C AFAA0038 */  sw         $t2, 0x38($sp)
/* B1B50 800B0F50 8FAB0038 */  lw         $t3, 0x38($sp)
/* B1B54 800B0F54 2D610003 */  sltiu      $at, $t3, 3
/* B1B58 800B0F58 1420FFF2 */  bnez       $at, .L800B0F24
/* B1B5C 800B0F5C 00000000 */   nop
.L800B0F60:
/* B1B60 800B0F60 AFA00038 */  sw         $zero, 0x38($sp)
/* B1B64 800B0F64 8FAC0038 */  lw         $t4, 0x38($sp)
/* B1B68 800B0F68 8FAD0030 */  lw         $t5, 0x30($sp)
/* B1B6C 800B0F6C 018D082B */  sltu       $at, $t4, $t5
/* B1B70 800B0F70 10200011 */  beqz       $at, .L800B0FB8
/* B1B74 800B0F74 00000000 */   nop
.L800B0F78:
/* B1B78 800B0F78 8FAF0038 */  lw         $t7, 0x38($sp)
/* B1B7C 800B0F7C 8FAE002C */  lw         $t6, 0x2c($sp)
/* B1B80 800B0F80 8FB90030 */  lw         $t9, 0x30($sp)
/* B1B84 800B0F84 24060004 */  addiu      $a2, $zero, 4
/* B1B88 800B0F88 01CF2021 */  addu       $a0, $t6, $t7
/* B1B8C 800B0F8C 0C02C4C8 */  jal        func_800B1320
/* B1B90 800B0F90 032F2823 */   subu      $a1, $t9, $t7
/* B1B94 800B0F94 8FA80038 */  lw         $t0, 0x38($sp)
/* B1B98 800B0F98 00408025 */  or         $s0, $v0, $zero
/* B1B9C 800B0F9C 0110C021 */  addu       $t8, $t0, $s0
/* B1BA0 800B0FA0 AFB80038 */  sw         $t8, 0x38($sp)
/* B1BA4 800B0FA4 8FA90038 */  lw         $t1, 0x38($sp)
/* B1BA8 800B0FA8 8FAA0030 */  lw         $t2, 0x30($sp)
/* B1BAC 800B0FAC 012A082B */  sltu       $at, $t1, $t2
/* B1BB0 800B0FB0 1420FFF1 */  bnez       $at, .L800B0F78
/* B1BB4 800B0FB4 00000000 */   nop
.L800B0FB8:
/* B1BB8 800B0FB8 8FAB0034 */  lw         $t3, 0x34($sp)
/* B1BBC 800B0FBC 8FAC0030 */  lw         $t4, 0x30($sp)
/* B1BC0 800B0FC0 016C6823 */  subu       $t5, $t3, $t4
/* B1BC4 800B0FC4 AFAD0034 */  sw         $t5, 0x34($sp)
/* B1BC8 800B0FC8 8FAE002C */  lw         $t6, 0x2c($sp)
/* B1BCC 800B0FCC 8FB90030 */  lw         $t9, 0x30($sp)
/* B1BD0 800B0FD0 01D97821 */  addu       $t7, $t6, $t9
/* B1BD4 800B0FD4 AFAF002C */  sw         $t7, 0x2c($sp)
/* B1BD8 800B0FD8 3C04801A */  lui        $a0, %hi(D_801A4310)
/* B1BDC 800B0FDC 24844310 */  addiu      $a0, $a0, %lo(D_801A4310)
/* B1BE0 800B0FE0 00002825 */  or         $a1, $zero, $zero
/* B1BE4 800B0FE4 0C025D30 */  jal        func_800974C0
/* B1BE8 800B0FE8 24060001 */   addiu     $a2, $zero, 1
/* B1BEC 800B0FEC 8FA80034 */  lw         $t0, 0x34($sp)
/* B1BF0 800B0FF0 1500FFAF */  bnez       $t0, .L800B0EB0
/* B1BF4 800B0FF4 00000000 */   nop
.L800B0FF8:
/* B1BF8 800B0FF8 0C02C0C8 */  jal        func_800B0320
/* B1BFC 800B0FFC 00000000 */   nop
/* B1C00 800B1000 AFA2003C */  sw         $v0, 0x3c($sp)
/* B1C04 800B1004 8FB80040 */  lw         $t8, 0x40($sp)
/* B1C08 800B1008 AF000010 */  sw         $zero, 0x10($t8)
/* B1C0C 800B100C 24090001 */  addiu      $t1, $zero, 1
/* B1C10 800B1010 3C01800D */  lui        $at, %hi(D_800CD560)
/* B1C14 800B1014 AC29D560 */  sw         $t1, %lo(D_800CD560)($at)
/* B1C18 800B1018 0C02C0D0 */  jal        func_800B0340
/* B1C1C 800B101C 8FA4003C */   lw        $a0, 0x3c($sp)
/* B1C20 800B1020 10000001 */  b          .L800B1028
/* B1C24 800B1024 00000000 */   nop
.L800B1028:
/* B1C28 800B1028 8FBF001C */  lw         $ra, 0x1c($sp)
/* B1C2C 800B102C 8FB00018 */  lw         $s0, 0x18($sp)
/* B1C30 800B1030 27BD0040 */  addiu      $sp, $sp, 0x40
/* B1C34 800B1034 03E00008 */  jr         $ra
/* B1C38 800B1038 00000000 */   nop

glabel func_800B103C
/* B1C3C 800B103C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* B1C40 800B1040 AFBF0014 */  sw         $ra, 0x14($sp)
/* B1C44 800B1044 AFA40080 */  sw         $a0, 0x80($sp)
/* B1C48 800B1048 AFA50084 */  sw         $a1, 0x84($sp)
/* B1C4C 800B104C AFA60088 */  sw         $a2, 0x88($sp)
/* B1C50 800B1050 AFA7008C */  sw         $a3, 0x8c($sp)
/* B1C54 800B1054 27AE002C */  addiu      $t6, $sp, 0x2c
/* B1C58 800B1058 AFAE0028 */  sw         $t6, 0x28($sp)
/* B1C5C 800B105C 27AF002C */  addiu      $t7, $sp, 0x2c
/* B1C60 800B1060 AFAF0024 */  sw         $t7, 0x24($sp)
/* B1C64 800B1064 27B8002C */  addiu      $t8, $sp, 0x2c
/* B1C68 800B1068 2719000C */  addiu      $t9, $t8, 0xc
/* B1C6C 800B106C AFB90020 */  sw         $t9, 0x20($sp)
/* B1C70 800B1070 87A8008A */  lh         $t0, 0x8a($sp)
/* B1C74 800B1074 25090003 */  addiu      $t1, $t0, 3
/* B1C78 800B1078 AFA90018 */  sw         $t1, 0x18($sp)
/* B1C7C 800B107C 0C02C0C8 */  jal        func_800B0320
/* B1C80 800B1080 00000000 */   nop
/* B1C84 800B1084 AFA20078 */  sw         $v0, 0x78($sp)
/* B1C88 800B1088 8FAA0080 */  lw         $t2, 0x80($sp)
/* B1C8C 800B108C 8FAC0024 */  lw         $t4, 0x24($sp)
/* B1C90 800B1090 8D4B0000 */  lw         $t3, ($t2)
/* B1C94 800B1094 AD8B0000 */  sw         $t3, ($t4)
/* B1C98 800B1098 0C02923C */  jal        func_800A48F0
/* B1C9C 800B109C 00000000 */   nop
/* B1CA0 800B10A0 8FAD0080 */  lw         $t5, 0x80($sp)
/* B1CA4 800B10A4 8FB80024 */  lw         $t8, 0x24($sp)
/* B1CA8 800B10A8 8DAE000C */  lw         $t6, 0xc($t5)
/* B1CAC 800B10AC 004E7823 */  subu       $t7, $v0, $t6
/* B1CB0 800B10B0 AF0F0004 */  sw         $t7, 4($t8)
/* B1CB4 800B10B4 87B9008A */  lh         $t9, 0x8a($sp)
/* B1CB8 800B10B8 8FA80024 */  lw         $t0, 0x24($sp)
/* B1CBC 800B10BC A5190008 */  sh         $t9, 8($t0)
/* B1CC0 800B10C0 87A90086 */  lh         $t1, 0x86($sp)
/* B1CC4 800B10C4 8FAA0024 */  lw         $t2, 0x24($sp)
/* B1CC8 800B10C8 A549000A */  sh         $t1, 0xa($t2)
/* B1CCC 800B10CC 87AB008A */  lh         $t3, 0x8a($sp)
/* B1CD0 800B10D0 AFA0007C */  sw         $zero, 0x7c($sp)
/* B1CD4 800B10D4 19600013 */  blez       $t3, .L800B1124
/* B1CD8 800B10D8 00000000 */   nop
.L800B10DC:
/* B1CDC 800B10DC 8FAC008C */  lw         $t4, 0x8c($sp)
/* B1CE0 800B10E0 2401FFFC */  addiu      $at, $zero, -4
/* B1CE4 800B10E4 8FB90020 */  lw         $t9, 0x20($sp)
/* B1CE8 800B10E8 258D0003 */  addiu      $t5, $t4, 3
/* B1CEC 800B10EC 01A17024 */  and        $t6, $t5, $at
/* B1CF0 800B10F0 25CF0004 */  addiu      $t7, $t6, 4
/* B1CF4 800B10F4 AFAF008C */  sw         $t7, 0x8c($sp)
/* B1CF8 800B10F8 8DD80000 */  lw         $t8, ($t6)
/* B1CFC 800B10FC AF380000 */  sw         $t8, ($t9)
/* B1D00 800B1100 8FA80020 */  lw         $t0, 0x20($sp)
/* B1D04 800B1104 25090004 */  addiu      $t1, $t0, 4
/* B1D08 800B1108 AFA90020 */  sw         $t1, 0x20($sp)
/* B1D0C 800B110C 8FAA007C */  lw         $t2, 0x7c($sp)
/* B1D10 800B1110 87AC008A */  lh         $t4, 0x8a($sp)
/* B1D14 800B1114 254B0001 */  addiu      $t3, $t2, 1
/* B1D18 800B1118 016C082A */  slt        $at, $t3, $t4
/* B1D1C 800B111C 1420FFEF */  bnez       $at, .L800B10DC
/* B1D20 800B1120 AFAB007C */   sw        $t3, 0x7c($sp)
.L800B1124:
/* B1D24 800B1124 3C0D800D */  lui        $t5, %hi(D_800CD560)
/* B1D28 800B1128 8DADD560 */  lw         $t5, %lo(D_800CD560)($t5)
/* B1D2C 800B112C 11A0002C */  beqz       $t5, .L800B11E0
/* B1D30 800B1130 00000000 */   nop
/* B1D34 800B1134 8FAF0080 */  lw         $t7, 0x80($sp)
/* B1D38 800B1138 8FB80018 */  lw         $t8, 0x18($sp)
/* B1D3C 800B113C 8DEE0010 */  lw         $t6, 0x10($t7)
/* B1D40 800B1140 8DE80004 */  lw         $t0, 4($t7)
/* B1D44 800B1144 01D8C821 */  addu       $t9, $t6, $t8
/* B1D48 800B1148 00084882 */  srl        $t1, $t0, 2
/* B1D4C 800B114C 0329082B */  sltu       $at, $t9, $t1
/* B1D50 800B1150 10200021 */  beqz       $at, .L800B11D8
/* B1D54 800B1154 00000000 */   nop
/* B1D58 800B1158 8FAA0080 */  lw         $t2, 0x80($sp)
/* B1D5C 800B115C 8D4C0010 */  lw         $t4, 0x10($t2)
/* B1D60 800B1160 8D4B0008 */  lw         $t3, 8($t2)
/* B1D64 800B1164 000C6880 */  sll        $t5, $t4, 2
/* B1D68 800B1168 016D7021 */  addu       $t6, $t3, $t5
/* B1D6C 800B116C AFAE001C */  sw         $t6, 0x1c($sp)
/* B1D70 800B1170 8FB80018 */  lw         $t8, 0x18($sp)
/* B1D74 800B1174 AFA0007C */  sw         $zero, 0x7c($sp)
/* B1D78 800B1178 1B000011 */  blez       $t8, .L800B11C0
/* B1D7C 800B117C 00000000 */   nop
.L800B1180:
/* B1D80 800B1180 8FAF0028 */  lw         $t7, 0x28($sp)
/* B1D84 800B1184 8FB9001C */  lw         $t9, 0x1c($sp)
/* B1D88 800B1188 8DE80000 */  lw         $t0, ($t7)
/* B1D8C 800B118C AF280000 */  sw         $t0, ($t9)
/* B1D90 800B1190 8FAC0028 */  lw         $t4, 0x28($sp)
/* B1D94 800B1194 8FA9001C */  lw         $t1, 0x1c($sp)
/* B1D98 800B1198 258B0004 */  addiu      $t3, $t4, 4
/* B1D9C 800B119C 252A0004 */  addiu      $t2, $t1, 4
/* B1DA0 800B11A0 AFAA001C */  sw         $t2, 0x1c($sp)
/* B1DA4 800B11A4 AFAB0028 */  sw         $t3, 0x28($sp)
/* B1DA8 800B11A8 8FAD007C */  lw         $t5, 0x7c($sp)
/* B1DAC 800B11AC 8FB80018 */  lw         $t8, 0x18($sp)
/* B1DB0 800B11B0 25AE0001 */  addiu      $t6, $t5, 1
/* B1DB4 800B11B4 01D8082A */  slt        $at, $t6, $t8
/* B1DB8 800B11B8 1420FFF1 */  bnez       $at, .L800B1180
/* B1DBC 800B11BC AFAE007C */   sw        $t6, 0x7c($sp)
.L800B11C0:
/* B1DC0 800B11C0 8FAF0080 */  lw         $t7, 0x80($sp)
/* B1DC4 800B11C4 8FB90018 */  lw         $t9, 0x18($sp)
/* B1DC8 800B11C8 8DE80010 */  lw         $t0, 0x10($t7)
/* B1DCC 800B11CC 01194821 */  addu       $t1, $t0, $t9
/* B1DD0 800B11D0 10000003 */  b          .L800B11E0
/* B1DD4 800B11D4 ADE90010 */   sw        $t1, 0x10($t7)
.L800B11D8:
/* B1DD8 800B11D8 3C01800D */  lui        $at, %hi(D_800CD560)
/* B1DDC 800B11DC AC20D560 */  sw         $zero, %lo(D_800CD560)($at)
.L800B11E0:
/* B1DE0 800B11E0 0C02C0D0 */  jal        func_800B0340
/* B1DE4 800B11E4 8FA40078 */   lw        $a0, 0x78($sp)
/* B1DE8 800B11E8 10000001 */  b          .L800B11F0
/* B1DEC 800B11EC 00000000 */   nop
.L800B11F0:
/* B1DF0 800B11F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B1DF4 800B11F4 27BD0080 */  addiu      $sp, $sp, 0x80
/* B1DF8 800B11F8 03E00008 */  jr         $ra
/* B1DFC 800B11FC 00000000 */   nop

glabel func_800B1200
/* B1E00 800B1200 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B1E04 800B1204 AFBF0014 */  sw         $ra, 0x14($sp)
/* B1E08 800B1208 AFA40018 */  sw         $a0, 0x18($sp)
/* B1E0C 800B120C AFA5001C */  sw         $a1, 0x1c($sp)
/* B1E10 800B1210 AFA60020 */  sw         $a2, 0x20($sp)
/* B1E14 800B1214 3C04800D */  lui        $a0, %hi(D_800D3690)
/* B1E18 800B1218 24843690 */  addiu      $a0, $a0, %lo(D_800D3690)
/* B1E1C 800B121C 8FA5001C */  lw         $a1, 0x1c($sp)
/* B1E20 800B1220 8FA60020 */  lw         $a2, 0x20($sp)
/* B1E24 800B1224 0C02AE1D */  jal        func_800AB874
/* B1E28 800B1228 8FA70018 */   lw        $a3, 0x18($sp)
/* B1E2C 800B122C 10000001 */  b          .L800B1234
/* B1E30 800B1230 00000000 */   nop
.L800B1234:
/* B1E34 800B1234 8FBF0014 */  lw         $ra, 0x14($sp)
/* B1E38 800B1238 27BD0018 */  addiu      $sp, $sp, 0x18
/* B1E3C 800B123C 03E00008 */  jr         $ra
/* B1E40 800B1240 00000000 */   nop
/* B1E44 800B1244 00000000 */  nop
/* B1E48 800B1248 00000000 */  nop
/* B1E4C 800B124C 00000000 */  nop
