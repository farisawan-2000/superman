.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A7D30
/* A8930 800A7D30 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A8934 800A7D34 AFBF001C */  sw         $ra, 0x1c($sp)
/* A8938 800A7D38 AFA40060 */  sw         $a0, 0x60($sp)
/* A893C 800A7D3C AFA50064 */  sw         $a1, 0x64($sp)
/* A8940 800A7D40 AFA60068 */  sw         $a2, 0x68($sp)
/* A8944 800A7D44 AFA7006C */  sw         $a3, 0x6c($sp)
/* A8948 800A7D48 8FAE0070 */  lw         $t6, 0x70($sp)
/* A894C 800A7D4C AFAE005C */  sw         $t6, 0x5c($sp)
/* A8950 800A7D50 8FAF0060 */  lw         $t7, 0x60($sp)
/* A8954 800A7D54 AFAF0058 */  sw         $t7, 0x58($sp)
/* A8958 800A7D58 8FB8006C */  lw         $t8, 0x6c($sp)
/* A895C 800A7D5C AFB8004C */  sw         $t8, 0x4c($sp)
/* A8960 800A7D60 A7A00046 */  sh         $zero, 0x46($sp)
/* A8964 800A7D64 A7A00056 */  sh         $zero, 0x56($sp)
/* A8968 800A7D68 8FB90058 */  lw         $t9, 0x58($sp)
/* A896C 800A7D6C 8F28003C */  lw         $t0, 0x3c($t9)
/* A8970 800A7D70 110001B6 */  beqz       $t0, .L800A844C
/* A8974 800A7D74 00000000 */   nop
.L800A7D78:
/* A8978 800A7D78 8FA9004C */  lw         $t1, 0x4c($sp)
/* A897C 800A7D7C AFA90050 */  sw         $t1, 0x50($sp)
/* A8980 800A7D80 8FAA0058 */  lw         $t2, 0x58($sp)
/* A8984 800A7D84 8D4B003C */  lw         $t3, 0x3c($t2)
/* A8988 800A7D88 8D6C0004 */  lw         $t4, 4($t3)
/* A898C 800A7D8C AFAC004C */  sw         $t4, 0x4c($sp)
/* A8990 800A7D90 8FAD004C */  lw         $t5, 0x4c($sp)
/* A8994 800A7D94 8FAE0050 */  lw         $t6, 0x50($sp)
/* A8998 800A7D98 01AE7823 */  subu       $t7, $t5, $t6
/* A899C 800A7D9C AFAF0048 */  sw         $t7, 0x48($sp)
/* A89A0 800A7DA0 8FB80048 */  lw         $t8, 0x48($sp)
/* A89A4 800A7DA4 8FB90068 */  lw         $t9, 0x68($sp)
/* A89A8 800A7DA8 0338082A */  slt        $at, $t9, $t8
/* A89AC 800A7DAC 10200003 */  beqz       $at, .L800A7DBC
/* A89B0 800A7DB0 00000000 */   nop
/* A89B4 800A7DB4 100001A5 */  b          .L800A844C
/* A89B8 800A7DB8 00000000 */   nop
.L800A7DBC:
/* A89BC 800A7DBC 8FA80048 */  lw         $t0, 0x48($sp)
/* A89C0 800A7DC0 05000003 */  bltz       $t0, .L800A7DD0
/* A89C4 800A7DC4 00000000 */   nop
/* A89C8 800A7DC8 10000007 */  b          .L800A7DE8
/* A89CC 800A7DCC 00000000 */   nop
.L800A7DD0:
/* A89D0 800A7DD0 3C04800D */  lui        $a0, %hi(D_800D33D0)
/* A89D4 800A7DD4 3C05800D */  lui        $a1, %hi(D_800D33E0)
/* A89D8 800A7DD8 24A533E0 */  addiu      $a1, $a1, %lo(D_800D33E0)
/* A89DC 800A7DDC 248433D0 */  addiu      $a0, $a0, %lo(D_800D33D0)
/* A89E0 800A7DE0 0C02C480 */  jal        func_800B1200
/* A89E4 800A7DE4 24060068 */   addiu     $a2, $zero, 0x68
.L800A7DE8:
/* A89E8 800A7DE8 8FA90048 */  lw         $t1, 0x48($sp)
/* A89EC 800A7DEC 292100A1 */  slti       $at, $t1, 0xa1
/* A89F0 800A7DF0 10200003 */  beqz       $at, .L800A7E00
/* A89F4 800A7DF4 00000000 */   nop
/* A89F8 800A7DF8 10000007 */  b          .L800A7E18
/* A89FC 800A7DFC 00000000 */   nop
.L800A7E00:
/* A8A00 800A7E00 3C04800D */  lui        $a0, %hi(D_800D33F0)
/* A8A04 800A7E04 3C05800D */  lui        $a1, %hi(D_800D3410)
/* A8A08 800A7E08 24A53410 */  addiu      $a1, $a1, %lo(D_800D3410)
/* A8A0C 800A7E0C 248433F0 */  addiu      $a0, $a0, %lo(D_800D33F0)
/* A8A10 800A7E10 0C02C480 */  jal        func_800B1200
/* A8A14 800A7E14 24060069 */   addiu     $a2, $zero, 0x69
.L800A7E18:
/* A8A18 800A7E18 8FAA0058 */  lw         $t2, 0x58($sp)
/* A8A1C 800A7E1C 8D4B003C */  lw         $t3, 0x3c($t2)
/* A8A20 800A7E20 956C0008 */  lhu        $t4, 8($t3)
/* A8A24 800A7E24 2D810011 */  sltiu      $at, $t4, 0x11
/* A8A28 800A7E28 10200158 */  beqz       $at, .L800A838C
/* A8A2C 800A7E2C 00000000 */   nop
/* A8A30 800A7E30 000C6080 */  sll        $t4, $t4, 2
/* A8A34 800A7E34 3C01800D */  lui        $at, %hi(D_800D3438)
/* A8A38 800A7E38 002C0821 */  addu       $at, $at, $t4
/* A8A3C 800A7E3C 8C2C3438 */  lw         $t4, %lo(D_800D3438)($at)
/* A8A40 800A7E40 01800008 */  jr         $t4
/* A8A44 800A7E44 00000000 */   nop
/* A8A48 800A7E48 8FAD0058 */  lw         $t5, 0x58($sp)
/* A8A4C 800A7E4C 8DAE003C */  lw         $t6, 0x3c($t5)
/* A8A50 800A7E50 AFAE0038 */  sw         $t6, 0x38($sp)
/* A8A54 800A7E54 8FAF0058 */  lw         $t7, 0x58($sp)
/* A8A58 800A7E58 AFAF0034 */  sw         $t7, 0x34($sp)
/* A8A5C 800A7E5C 8FB80038 */  lw         $t8, 0x38($sp)
/* A8A60 800A7E60 8719000A */  lh         $t9, 0xa($t8)
/* A8A64 800A7E64 13200008 */  beqz       $t9, .L800A7E88
/* A8A68 800A7E68 00000000 */   nop
/* A8A6C 800A7E6C 8FA80058 */  lw         $t0, 0x58($sp)
/* A8A70 800A7E70 24050008 */  addiu      $a1, $zero, 8
/* A8A74 800A7E74 00003025 */  or         $a2, $zero, $zero
/* A8A78 800A7E78 8D190008 */  lw         $t9, 8($t0)
/* A8A7C 800A7E7C 01002025 */  or         $a0, $t0, $zero
/* A8A80 800A7E80 0320F809 */  jalr       $t9
/* A8A84 800A7E84 00000000 */   nop
.L800A7E88:
/* A8A88 800A7E88 8FA90058 */  lw         $t1, 0x58($sp)
/* A8A8C 800A7E8C 8FAA0038 */  lw         $t2, 0x38($sp)
/* A8A90 800A7E90 24050005 */  addiu      $a1, $zero, 5
/* A8A94 800A7E94 8D390008 */  lw         $t9, 8($t1)
/* A8A98 800A7E98 01202025 */  or         $a0, $t1, $zero
/* A8A9C 800A7E9C 8D460018 */  lw         $a2, 0x18($t2)
/* A8AA0 800A7EA0 0320F809 */  jalr       $t9
/* A8AA4 800A7EA4 00000000 */   nop
/* A8AA8 800A7EA8 8FAB0058 */  lw         $t3, 0x58($sp)
/* A8AAC 800A7EAC 24050009 */  addiu      $a1, $zero, 9
/* A8AB0 800A7EB0 00003025 */  or         $a2, $zero, $zero
/* A8AB4 800A7EB4 8D790008 */  lw         $t9, 8($t3)
/* A8AB8 800A7EB8 01602025 */  or         $a0, $t3, $zero
/* A8ABC 800A7EBC 0320F809 */  jalr       $t9
/* A8AC0 800A7EC0 00000000 */   nop
/* A8AC4 800A7EC4 8FAD0058 */  lw         $t5, 0x58($sp)
/* A8AC8 800A7EC8 240C0001 */  addiu      $t4, $zero, 1
/* A8ACC 800A7ECC ADAC0038 */  sw         $t4, 0x38($t5)
/* A8AD0 800A7ED0 8FAE0058 */  lw         $t6, 0x58($sp)
/* A8AD4 800A7ED4 ADC00030 */  sw         $zero, 0x30($t6)
/* A8AD8 800A7ED8 8FAF0038 */  lw         $t7, 0x38($sp)
/* A8ADC 800A7EDC 8FA80058 */  lw         $t0, 0x58($sp)
/* A8AE0 800A7EE0 8DF80014 */  lw         $t8, 0x14($t7)
/* A8AE4 800A7EE4 AD180034 */  sw         $t8, 0x34($t0)
/* A8AE8 800A7EE8 8FAA0038 */  lw         $t2, 0x38($sp)
/* A8AEC 800A7EEC 85490010 */  lh         $t1, 0x10($t2)
/* A8AF0 800A7EF0 01290019 */  multu      $t1, $t1
/* A8AF4 800A7EF4 00005812 */  mflo       $t3
/* A8AF8 800A7EF8 000BCBC3 */  sra        $t9, $t3, 0xf
/* A8AFC 800A7EFC AFB90030 */  sw         $t9, 0x30($sp)
/* A8B00 800A7F00 8FAC0030 */  lw         $t4, 0x30($sp)
/* A8B04 800A7F04 8FAD0058 */  lw         $t5, 0x58($sp)
/* A8B08 800A7F08 A5AC001A */  sh         $t4, 0x1a($t5)
/* A8B0C 800A7F0C 8FAE0038 */  lw         $t6, 0x38($sp)
/* A8B10 800A7F10 8FB80058 */  lw         $t8, 0x58($sp)
/* A8B14 800A7F14 91CF0012 */  lbu        $t7, 0x12($t6)
/* A8B18 800A7F18 A70F0018 */  sh         $t7, 0x18($t8)
/* A8B1C 800A7F1C 8FA80038 */  lw         $t0, 0x38($sp)
/* A8B20 800A7F20 3C0B800D */  lui        $t3, %hi(D_800CD1C0)
/* A8B24 800A7F24 8FB90058 */  lw         $t9, 0x58($sp)
/* A8B28 800A7F28 910A0013 */  lbu        $t2, 0x13($t0)
/* A8B2C 800A7F2C 000A4840 */  sll        $t1, $t2, 1
/* A8B30 800A7F30 01695821 */  addu       $t3, $t3, $t1
/* A8B34 800A7F34 856BD1C0 */  lh         $t3, %lo(D_800CD1C0)($t3)
/* A8B38 800A7F38 A72B0020 */  sh         $t3, 0x20($t9)
/* A8B3C 800A7F3C 8FAC0038 */  lw         $t4, 0x38($sp)
/* A8B40 800A7F40 3C18800D */  lui        $t8, 0x800d
/* A8B44 800A7F44 8FA80058 */  lw         $t0, 0x58($sp)
/* A8B48 800A7F48 918D0013 */  lbu        $t5, 0x13($t4)
/* A8B4C 800A7F4C 000D7023 */  negu       $t6, $t5
/* A8B50 800A7F50 000E7840 */  sll        $t7, $t6, 1
/* A8B54 800A7F54 030FC021 */  addu       $t8, $t8, $t7
/* A8B58 800A7F58 8718D2BE */  lh         $t8, -0x2d42($t8)
/* A8B5C 800A7F5C A5180022 */  sh         $t8, 0x22($t0)
/* A8B60 800A7F60 8FAA0038 */  lw         $t2, 0x38($sp)
/* A8B64 800A7F64 8D490014 */  lw         $t1, 0x14($t2)
/* A8B68 800A7F68 11200008 */  beqz       $t1, .L800A7F8C
/* A8B6C 800A7F6C 00000000 */   nop
/* A8B70 800A7F70 8FB90058 */  lw         $t9, 0x58($sp)
/* A8B74 800A7F74 240B0001 */  addiu      $t3, $zero, 1
/* A8B78 800A7F78 A72B001C */  sh         $t3, 0x1c($t9)
/* A8B7C 800A7F7C 8FAD0058 */  lw         $t5, 0x58($sp)
/* A8B80 800A7F80 240C0001 */  addiu      $t4, $zero, 1
/* A8B84 800A7F84 10000018 */  b          .L800A7FE8
/* A8B88 800A7F88 A5AC001E */   sh        $t4, 0x1e($t5)
.L800A7F8C:
/* A8B8C 800A7F8C 8FAE0058 */  lw         $t6, 0x58($sp)
/* A8B90 800A7F90 3C08800D */  lui        $t0, %hi(D_800CD1C0)
/* A8B94 800A7F94 85CF0018 */  lh         $t7, 0x18($t6)
/* A8B98 800A7F98 85CA001A */  lh         $t2, 0x1a($t6)
/* A8B9C 800A7F9C 000FC040 */  sll        $t8, $t7, 1
/* A8BA0 800A7FA0 01184021 */  addu       $t0, $t0, $t8
/* A8BA4 800A7FA4 8508D1C0 */  lh         $t0, %lo(D_800CD1C0)($t0)
/* A8BA8 800A7FA8 010A0019 */  multu      $t0, $t2
/* A8BAC 800A7FAC 00004812 */  mflo       $t1
/* A8BB0 800A7FB0 00095BC3 */  sra        $t3, $t1, 0xf
/* A8BB4 800A7FB4 A5CB001C */  sh         $t3, 0x1c($t6)
/* A8BB8 800A7FB8 8FB90058 */  lw         $t9, 0x58($sp)
/* A8BBC 800A7FBC 3C18800D */  lui        $t8, 0x800d
/* A8BC0 800A7FC0 872C0018 */  lh         $t4, 0x18($t9)
/* A8BC4 800A7FC4 8728001A */  lh         $t0, 0x1a($t9)
/* A8BC8 800A7FC8 000C6823 */  negu       $t5, $t4
/* A8BCC 800A7FCC 000D7840 */  sll        $t7, $t5, 1
/* A8BD0 800A7FD0 030FC021 */  addu       $t8, $t8, $t7
/* A8BD4 800A7FD4 8718D2BE */  lh         $t8, -0x2d42($t8)
/* A8BD8 800A7FD8 03080019 */  multu      $t8, $t0
/* A8BDC 800A7FDC 00005012 */  mflo       $t2
/* A8BE0 800A7FE0 000A4BC3 */  sra        $t1, $t2, 0xf
/* A8BE4 800A7FE4 A729001E */  sh         $t1, 0x1e($t9)
.L800A7FE8:
/* A8BE8 800A7FE8 8FAB0034 */  lw         $t3, 0x34($sp)
/* A8BEC 800A7FEC 8D6E0000 */  lw         $t6, ($t3)
/* A8BF0 800A7FF0 11C0000C */  beqz       $t6, .L800A8024
/* A8BF4 800A7FF4 00000000 */   nop
/* A8BF8 800A7FF8 8FAC0038 */  lw         $t4, 0x38($sp)
/* A8BFC 800A7FFC C584000C */  lwc1       $f4, 0xc($t4)
/* A8C00 800A8000 E7A4002C */  swc1       $f4, 0x2c($sp)
/* A8C04 800A8004 8FAD0034 */  lw         $t5, 0x34($sp)
/* A8C08 800A8008 24050007 */  addiu      $a1, $zero, 7
/* A8C0C 800A800C 8FA6002C */  lw         $a2, 0x2c($sp)
/* A8C10 800A8010 8DAF0000 */  lw         $t7, ($t5)
/* A8C14 800A8014 8DF90008 */  lw         $t9, 8($t7)
/* A8C18 800A8018 01E02025 */  or         $a0, $t7, $zero
/* A8C1C 800A801C 0320F809 */  jalr       $t9
/* A8C20 800A8020 00000000 */   nop
.L800A8024:
/* A8C24 800A8024 100000ED */  b          .L800A83DC
/* A8C28 800A8028 00000000 */   nop
/* A8C2C 800A802C 8FB8006C */  lw         $t8, 0x6c($sp)
/* A8C30 800A8030 8FA8005C */  lw         $t0, 0x5c($sp)
/* A8C34 800A8034 8FA40058 */  lw         $a0, 0x58($sp)
/* A8C38 800A8038 27A50056 */  addiu      $a1, $sp, 0x56
/* A8C3C 800A803C 27A60046 */  addiu      $a2, $sp, 0x46
/* A8C40 800A8040 8FA70048 */  lw         $a3, 0x48($sp)
/* A8C44 800A8044 AFB80010 */  sw         $t8, 0x10($sp)
/* A8C48 800A8048 0C02A199 */  jal        func_800A8664
/* A8C4C 800A804C AFA80014 */   sw        $t0, 0x14($sp)
/* A8C50 800A8050 AFA2005C */  sw         $v0, 0x5c($sp)
/* A8C54 800A8054 8FAA0058 */  lw         $t2, 0x58($sp)
/* A8C58 800A8058 8D490030 */  lw         $t1, 0x30($t2)
/* A8C5C 800A805C 8D4B0034 */  lw         $t3, 0x34($t2)
/* A8C60 800A8060 012B082A */  slt        $at, $t1, $t3
/* A8C64 800A8064 14200022 */  bnez       $at, .L800A80F0
/* A8C68 800A8068 00000000 */   nop
/* A8C6C 800A806C 8FAE0058 */  lw         $t6, 0x58($sp)
/* A8C70 800A8070 3C0F800D */  lui        $t7, %hi(D_800CD1C0)
/* A8C74 800A8074 85CC0018 */  lh         $t4, 0x18($t6)
/* A8C78 800A8078 85D9001A */  lh         $t9, 0x1a($t6)
/* A8C7C 800A807C 000C6840 */  sll        $t5, $t4, 1
/* A8C80 800A8080 01ED7821 */  addu       $t7, $t7, $t5
/* A8C84 800A8084 85EFD1C0 */  lh         $t7, %lo(D_800CD1C0)($t7)
/* A8C88 800A8088 01F90019 */  multu      $t7, $t9
/* A8C8C 800A808C 0000C012 */  mflo       $t8
/* A8C90 800A8090 001843C3 */  sra        $t0, $t8, 0xf
/* A8C94 800A8094 A5C80028 */  sh         $t0, 0x28($t6)
/* A8C98 800A8098 8FAA0058 */  lw         $t2, 0x58($sp)
/* A8C9C 800A809C 3C0D800D */  lui        $t5, 0x800d
/* A8CA0 800A80A0 85490018 */  lh         $t1, 0x18($t2)
/* A8CA4 800A80A4 854F001A */  lh         $t7, 0x1a($t2)
/* A8CA8 800A80A8 00095823 */  negu       $t3, $t1
/* A8CAC 800A80AC 000B6040 */  sll        $t4, $t3, 1
/* A8CB0 800A80B0 01AC6821 */  addu       $t5, $t5, $t4
/* A8CB4 800A80B4 85ADD2BE */  lh         $t5, -0x2d42($t5)
/* A8CB8 800A80B8 01AF0019 */  multu      $t5, $t7
/* A8CBC 800A80BC 0000C812 */  mflo       $t9
/* A8CC0 800A80C0 0019C3C3 */  sra        $t8, $t9, 0xf
/* A8CC4 800A80C4 A558002E */  sh         $t8, 0x2e($t2)
/* A8CC8 800A80C8 8FA80058 */  lw         $t0, 0x58($sp)
/* A8CCC 800A80CC 8D0E0034 */  lw         $t6, 0x34($t0)
/* A8CD0 800A80D0 AD0E0030 */  sw         $t6, 0x30($t0)
/* A8CD4 800A80D4 8FA90058 */  lw         $t1, 0x58($sp)
/* A8CD8 800A80D8 852B0028 */  lh         $t3, 0x28($t1)
/* A8CDC 800A80DC A52B001C */  sh         $t3, 0x1c($t1)
/* A8CE0 800A80E0 8FAC0058 */  lw         $t4, 0x58($sp)
/* A8CE4 800A80E4 858D002E */  lh         $t5, 0x2e($t4)
/* A8CE8 800A80E8 1000001B */  b          .L800A8158
/* A8CEC 800A80EC A58D001E */   sh        $t5, 0x1e($t4)
.L800A80F0:
/* A8CF0 800A80F0 8FAF0058 */  lw         $t7, 0x58($sp)
/* A8CF4 800A80F4 85F9001C */  lh         $t9, 0x1c($t7)
/* A8CF8 800A80F8 8DE50030 */  lw         $a1, 0x30($t7)
/* A8CFC 800A80FC 85E60026 */  lh         $a2, 0x26($t7)
/* A8D00 800A8100 44993000 */  mtc1       $t9, $f6
/* A8D04 800A8104 95E70024 */  lhu        $a3, 0x24($t7)
/* A8D08 800A8108 0C02A3CF */  jal        func_800A8F3C
/* A8D0C 800A810C 46803320 */   cvt.s.w   $f12, $f6
/* A8D10 800A8110 4600020D */  trunc.w.s  $f8, $f0
/* A8D14 800A8114 8FAE0058 */  lw         $t6, 0x58($sp)
/* A8D18 800A8118 440A4000 */  mfc1       $t2, $f8
/* A8D1C 800A811C 00000000 */  nop
/* A8D20 800A8120 A5CA001C */  sh         $t2, 0x1c($t6)
/* A8D24 800A8124 8FA80058 */  lw         $t0, 0x58($sp)
/* A8D28 800A8128 850B001E */  lh         $t3, 0x1e($t0)
/* A8D2C 800A812C 8D050030 */  lw         $a1, 0x30($t0)
/* A8D30 800A8130 8506002C */  lh         $a2, 0x2c($t0)
/* A8D34 800A8134 448B5000 */  mtc1       $t3, $f10
/* A8D38 800A8138 9507002A */  lhu        $a3, 0x2a($t0)
/* A8D3C 800A813C 0C02A3CF */  jal        func_800A8F3C
/* A8D40 800A8140 46805320 */   cvt.s.w   $f12, $f10
/* A8D44 800A8144 4600040D */  trunc.w.s  $f16, $f0
/* A8D48 800A8148 8FAC0058 */  lw         $t4, 0x58($sp)
/* A8D4C 800A814C 440D8000 */  mfc1       $t5, $f16
/* A8D50 800A8150 00000000 */  nop
/* A8D54 800A8154 A58D001E */  sh         $t5, 0x1e($t4)
.L800A8158:
/* A8D58 800A8158 8FB90058 */  lw         $t9, 0x58($sp)
/* A8D5C 800A815C 872F001C */  lh         $t7, 0x1c($t9)
/* A8D60 800A8160 15E00004 */  bnez       $t7, .L800A8174
/* A8D64 800A8164 00000000 */   nop
/* A8D68 800A8168 8FAA0058 */  lw         $t2, 0x58($sp)
/* A8D6C 800A816C 24180001 */  addiu      $t8, $zero, 1
/* A8D70 800A8170 A558001C */  sh         $t8, 0x1c($t2)
.L800A8174:
/* A8D74 800A8174 8FAE0058 */  lw         $t6, 0x58($sp)
/* A8D78 800A8178 85CB001E */  lh         $t3, 0x1e($t6)
/* A8D7C 800A817C 15600004 */  bnez       $t3, .L800A8190
/* A8D80 800A8180 00000000 */   nop
/* A8D84 800A8184 8FA90058 */  lw         $t1, 0x58($sp)
/* A8D88 800A8188 24080001 */  addiu      $t0, $zero, 1
/* A8D8C 800A818C A528001E */  sh         $t0, 0x1e($t1)
.L800A8190:
/* A8D90 800A8190 8FAD0058 */  lw         $t5, 0x58($sp)
/* A8D94 800A8194 2401000C */  addiu      $at, $zero, 0xc
/* A8D98 800A8198 8DAC003C */  lw         $t4, 0x3c($t5)
/* A8D9C 800A819C 85990008 */  lh         $t9, 8($t4)
/* A8DA0 800A81A0 17210005 */  bne        $t9, $at, .L800A81B8
/* A8DA4 800A81A4 00000000 */   nop
/* A8DA8 800A81A8 8FAF0058 */  lw         $t7, 0x58($sp)
/* A8DAC 800A81AC 8DF8003C */  lw         $t8, 0x3c($t7)
/* A8DB0 800A81B0 8F0A000C */  lw         $t2, 0xc($t8)
/* A8DB4 800A81B4 A5EA0018 */  sh         $t2, 0x18($t7)
.L800A81B8:
/* A8DB8 800A81B8 8FAE0058 */  lw         $t6, 0x58($sp)
/* A8DBC 800A81BC 2401000B */  addiu      $at, $zero, 0xb
/* A8DC0 800A81C0 8DCB003C */  lw         $t3, 0x3c($t6)
/* A8DC4 800A81C4 85680008 */  lh         $t0, 8($t3)
/* A8DC8 800A81C8 15010013 */  bne        $t0, $at, .L800A8218
/* A8DCC 800A81CC 00000000 */   nop
/* A8DD0 800A81D0 8FA90058 */  lw         $t1, 0x58($sp)
/* A8DD4 800A81D4 AD200030 */  sw         $zero, 0x30($t1)
/* A8DD8 800A81D8 8FAD0058 */  lw         $t5, 0x58($sp)
/* A8DDC 800A81DC 8DAC003C */  lw         $t4, 0x3c($t5)
/* A8DE0 800A81E0 8D99000C */  lw         $t9, 0xc($t4)
/* A8DE4 800A81E4 AFB90040 */  sw         $t9, 0x40($sp)
/* A8DE8 800A81E8 8FB80040 */  lw         $t8, 0x40($sp)
/* A8DEC 800A81EC 03180019 */  multu      $t8, $t8
/* A8DF0 800A81F0 00005012 */  mflo       $t2
/* A8DF4 800A81F4 000A7BC3 */  sra        $t7, $t2, 0xf
/* A8DF8 800A81F8 AFAF0040 */  sw         $t7, 0x40($sp)
/* A8DFC 800A81FC 8FAE0040 */  lw         $t6, 0x40($sp)
/* A8E00 800A8200 8FAB0058 */  lw         $t3, 0x58($sp)
/* A8E04 800A8204 A56E001A */  sh         $t6, 0x1a($t3)
/* A8E08 800A8208 8FA80058 */  lw         $t0, 0x58($sp)
/* A8E0C 800A820C 8D09003C */  lw         $t1, 0x3c($t0)
/* A8E10 800A8210 8D2D0010 */  lw         $t5, 0x10($t1)
/* A8E14 800A8214 AD0D0034 */  sw         $t5, 0x34($t0)
.L800A8218:
/* A8E18 800A8218 8FAC0058 */  lw         $t4, 0x58($sp)
/* A8E1C 800A821C 24010010 */  addiu      $at, $zero, 0x10
/* A8E20 800A8220 8D99003C */  lw         $t9, 0x3c($t4)
/* A8E24 800A8224 87380008 */  lh         $t8, 8($t9)
/* A8E28 800A8228 17010012 */  bne        $t8, $at, .L800A8274
/* A8E2C 800A822C 00000000 */   nop
/* A8E30 800A8230 8FAA0058 */  lw         $t2, 0x58($sp)
/* A8E34 800A8234 3C09800D */  lui        $t1, %hi(D_800CD1C0)
/* A8E38 800A8238 8D4F003C */  lw         $t7, 0x3c($t2)
/* A8E3C 800A823C 8DEE000C */  lw         $t6, 0xc($t7)
/* A8E40 800A8240 000E5840 */  sll        $t3, $t6, 1
/* A8E44 800A8244 012B4821 */  addu       $t1, $t1, $t3
/* A8E48 800A8248 8529D1C0 */  lh         $t1, %lo(D_800CD1C0)($t1)
/* A8E4C 800A824C A5490020 */  sh         $t1, 0x20($t2)
/* A8E50 800A8250 8FAD0058 */  lw         $t5, 0x58($sp)
/* A8E54 800A8254 3C0F800D */  lui        $t7, 0x800d
/* A8E58 800A8258 8DA8003C */  lw         $t0, 0x3c($t5)
/* A8E5C 800A825C 8D0C000C */  lw         $t4, 0xc($t0)
/* A8E60 800A8260 000CC823 */  negu       $t9, $t4
/* A8E64 800A8264 0019C040 */  sll        $t8, $t9, 1
/* A8E68 800A8268 01F87821 */  addu       $t7, $t7, $t8
/* A8E6C 800A826C 85EFD2BE */  lh         $t7, -0x2d42($t7)
/* A8E70 800A8270 A5AF0022 */  sh         $t7, 0x22($t5)
.L800A8274:
/* A8E74 800A8274 8FAB0058 */  lw         $t3, 0x58($sp)
/* A8E78 800A8278 240E0001 */  addiu      $t6, $zero, 1
/* A8E7C 800A827C AD6E0038 */  sw         $t6, 0x38($t3)
/* A8E80 800A8280 10000056 */  b          .L800A83DC
/* A8E84 800A8284 00000000 */   nop
/* A8E88 800A8288 8FA90058 */  lw         $t1, 0x58($sp)
/* A8E8C 800A828C 8D2A003C */  lw         $t2, 0x3c($t1)
/* A8E90 800A8290 AFAA0028 */  sw         $t2, 0x28($sp)
/* A8E94 800A8294 8FA80028 */  lw         $t0, 0x28($sp)
/* A8E98 800A8298 850C000A */  lh         $t4, 0xa($t0)
/* A8E9C 800A829C 11800008 */  beqz       $t4, .L800A82C0
/* A8EA0 800A82A0 00000000 */   nop
/* A8EA4 800A82A4 8FB90058 */  lw         $t9, 0x58($sp)
/* A8EA8 800A82A8 24050008 */  addiu      $a1, $zero, 8
/* A8EAC 800A82AC 00003025 */  or         $a2, $zero, $zero
/* A8EB0 800A82B0 03202025 */  or         $a0, $t9, $zero
/* A8EB4 800A82B4 8F390008 */  lw         $t9, 8($t9)
/* A8EB8 800A82B8 0320F809 */  jalr       $t9
/* A8EBC 800A82BC 00000000 */   nop
.L800A82C0:
/* A8EC0 800A82C0 8FB80058 */  lw         $t8, 0x58($sp)
/* A8EC4 800A82C4 8FAF0028 */  lw         $t7, 0x28($sp)
/* A8EC8 800A82C8 24050005 */  addiu      $a1, $zero, 5
/* A8ECC 800A82CC 8F190008 */  lw         $t9, 8($t8)
/* A8ED0 800A82D0 03002025 */  or         $a0, $t8, $zero
/* A8ED4 800A82D4 8DE6000C */  lw         $a2, 0xc($t7)
/* A8ED8 800A82D8 0320F809 */  jalr       $t9
/* A8EDC 800A82DC 00000000 */   nop
/* A8EE0 800A82E0 8FAD0058 */  lw         $t5, 0x58($sp)
/* A8EE4 800A82E4 24050009 */  addiu      $a1, $zero, 9
/* A8EE8 800A82E8 00003025 */  or         $a2, $zero, $zero
/* A8EEC 800A82EC 8DB90008 */  lw         $t9, 8($t5)
/* A8EF0 800A82F0 01A02025 */  or         $a0, $t5, $zero
/* A8EF4 800A82F4 0320F809 */  jalr       $t9
/* A8EF8 800A82F8 00000000 */   nop
/* A8EFC 800A82FC 10000037 */  b          .L800A83DC
/* A8F00 800A8300 00000000 */   nop
/* A8F04 800A8304 8FAE006C */  lw         $t6, 0x6c($sp)
/* A8F08 800A8308 8FAB005C */  lw         $t3, 0x5c($sp)
/* A8F0C 800A830C 8FA40058 */  lw         $a0, 0x58($sp)
/* A8F10 800A8310 27A50056 */  addiu      $a1, $sp, 0x56
/* A8F14 800A8314 27A60046 */  addiu      $a2, $sp, 0x46
/* A8F18 800A8318 8FA70048 */  lw         $a3, 0x48($sp)
/* A8F1C 800A831C AFAE0010 */  sw         $t6, 0x10($sp)
/* A8F20 800A8320 0C02A199 */  jal        func_800A8664
/* A8F24 800A8324 AFAB0014 */   sw        $t3, 0x14($sp)
/* A8F28 800A8328 AFA2005C */  sw         $v0, 0x5c($sp)
/* A8F2C 800A832C 8FA90058 */  lw         $t1, 0x58($sp)
/* A8F30 800A8330 24050004 */  addiu      $a1, $zero, 4
/* A8F34 800A8334 00003025 */  or         $a2, $zero, $zero
/* A8F38 800A8338 8D390008 */  lw         $t9, 8($t1)
/* A8F3C 800A833C 01202025 */  or         $a0, $t1, $zero
/* A8F40 800A8340 0320F809 */  jalr       $t9
/* A8F44 800A8344 00000000 */   nop
/* A8F48 800A8348 10000024 */  b          .L800A83DC
/* A8F4C 800A834C 00000000 */   nop
/* A8F50 800A8350 3C0A800D */  lui        $t2, %hi(D_800CC220)
/* A8F54 800A8354 8D4AC220 */  lw         $t2, %lo(D_800CC220)($t2)
/* A8F58 800A8358 AFAA0024 */  sw         $t2, 0x24($sp)
/* A8F5C 800A835C 8FA80058 */  lw         $t0, 0x58($sp)
/* A8F60 800A8360 8D0C003C */  lw         $t4, 0x3c($t0)
/* A8F64 800A8364 AFAC0020 */  sw         $t4, 0x20($sp)
/* A8F68 800A8368 8FAF0020 */  lw         $t7, 0x20($sp)
/* A8F6C 800A836C 8DF8000C */  lw         $t8, 0xc($t7)
/* A8F70 800A8370 AF0000D8 */  sw         $zero, 0xd8($t8)
/* A8F74 800A8374 8FAD0020 */  lw         $t5, 0x20($sp)
/* A8F78 800A8378 8FA40024 */  lw         $a0, 0x24($sp)
/* A8F7C 800A837C 0C029696 */  jal        func_800A5A58
/* A8F80 800A8380 8DA5000C */   lw        $a1, 0xc($t5)
/* A8F84 800A8384 10000015 */  b          .L800A83DC
/* A8F88 800A8388 00000000 */   nop
.L800A838C:
/* A8F8C 800A838C 8FAE006C */  lw         $t6, 0x6c($sp)
/* A8F90 800A8390 8FAB005C */  lw         $t3, 0x5c($sp)
/* A8F94 800A8394 8FA40058 */  lw         $a0, 0x58($sp)
/* A8F98 800A8398 27A50056 */  addiu      $a1, $sp, 0x56
/* A8F9C 800A839C 27A60046 */  addiu      $a2, $sp, 0x46
/* A8FA0 800A83A0 8FA70048 */  lw         $a3, 0x48($sp)
/* A8FA4 800A83A4 AFAE0010 */  sw         $t6, 0x10($sp)
/* A8FA8 800A83A8 0C02A199 */  jal        func_800A8664
/* A8FAC 800A83AC AFAB0014 */   sw        $t3, 0x14($sp)
/* A8FB0 800A83B0 AFA2005C */  sw         $v0, 0x5c($sp)
/* A8FB4 800A83B4 8FA90058 */  lw         $t1, 0x58($sp)
/* A8FB8 800A83B8 8D39003C */  lw         $t9, 0x3c($t1)
/* A8FBC 800A83BC 01202025 */  or         $a0, $t1, $zero
/* A8FC0 800A83C0 87250008 */  lh         $a1, 8($t9)
/* A8FC4 800A83C4 8F26000C */  lw         $a2, 0xc($t9)
/* A8FC8 800A83C8 8D390008 */  lw         $t9, 8($t1)
/* A8FCC 800A83CC 0320F809 */  jalr       $t9
/* A8FD0 800A83D0 00000000 */   nop
/* A8FD4 800A83D4 10000001 */  b          .L800A83DC
/* A8FD8 800A83D8 00000000 */   nop
.L800A83DC:
/* A8FDC 800A83DC 8FA80048 */  lw         $t0, 0x48($sp)
/* A8FE0 800A83E0 87AA0046 */  lh         $t2, 0x46($sp)
/* A8FE4 800A83E4 00086040 */  sll        $t4, $t0, 1
/* A8FE8 800A83E8 014C7821 */  addu       $t7, $t2, $t4
/* A8FEC 800A83EC A7AF0046 */  sh         $t7, 0x46($sp)
/* A8FF0 800A83F0 8FB80068 */  lw         $t8, 0x68($sp)
/* A8FF4 800A83F4 8FAD0048 */  lw         $t5, 0x48($sp)
/* A8FF8 800A83F8 030D7023 */  subu       $t6, $t8, $t5
/* A8FFC 800A83FC AFAE0068 */  sw         $t6, 0x68($sp)
/* A9000 800A8400 8FAB0058 */  lw         $t3, 0x58($sp)
/* A9004 800A8404 8D69003C */  lw         $t1, 0x3c($t3)
/* A9008 800A8408 AFA9003C */  sw         $t1, 0x3c($sp)
/* A900C 800A840C 8FB90058 */  lw         $t9, 0x58($sp)
/* A9010 800A8410 8F28003C */  lw         $t0, 0x3c($t9)
/* A9014 800A8414 8D0A0000 */  lw         $t2, ($t0)
/* A9018 800A8418 AF2A003C */  sw         $t2, 0x3c($t9)
/* A901C 800A841C 8FAC0058 */  lw         $t4, 0x58($sp)
/* A9020 800A8420 8D8F003C */  lw         $t7, 0x3c($t4)
/* A9024 800A8424 15E00003 */  bnez       $t7, .L800A8434
/* A9028 800A8428 00000000 */   nop
/* A902C 800A842C 8FB80058 */  lw         $t8, 0x58($sp)
/* A9030 800A8430 AF000040 */  sw         $zero, 0x40($t8)
.L800A8434:
/* A9034 800A8434 0C029670 */  jal        func_800A59C0
/* A9038 800A8438 8FA4003C */   lw        $a0, 0x3c($sp)
/* A903C 800A843C 8FAD0058 */  lw         $t5, 0x58($sp)
/* A9040 800A8440 8DAE003C */  lw         $t6, 0x3c($t5)
/* A9044 800A8444 15C0FE4C */  bnez       $t6, .L800A7D78
/* A9048 800A8448 00000000 */   nop
.L800A844C:
/* A904C 800A844C 8FAB006C */  lw         $t3, 0x6c($sp)
/* A9050 800A8450 8FA9005C */  lw         $t1, 0x5c($sp)
/* A9054 800A8454 8FA40058 */  lw         $a0, 0x58($sp)
/* A9058 800A8458 27A50056 */  addiu      $a1, $sp, 0x56
/* A905C 800A845C 27A60046 */  addiu      $a2, $sp, 0x46
/* A9060 800A8460 8FA70068 */  lw         $a3, 0x68($sp)
/* A9064 800A8464 AFAB0010 */  sw         $t3, 0x10($sp)
/* A9068 800A8468 0C02A199 */  jal        func_800A8664
/* A906C 800A846C AFA90014 */   sw        $t1, 0x14($sp)
/* A9070 800A8470 AFA2005C */  sw         $v0, 0x5c($sp)
/* A9074 800A8474 8FA80058 */  lw         $t0, 0x58($sp)
/* A9078 800A8478 8D0A0030 */  lw         $t2, 0x30($t0)
/* A907C 800A847C 8D190034 */  lw         $t9, 0x34($t0)
/* A9080 800A8480 032A082A */  slt        $at, $t9, $t2
/* A9084 800A8484 10200004 */  beqz       $at, .L800A8498
/* A9088 800A8488 00000000 */   nop
/* A908C 800A848C 8FAC0058 */  lw         $t4, 0x58($sp)
/* A9090 800A8490 8D8F0034 */  lw         $t7, 0x34($t4)
/* A9094 800A8494 AD8F0030 */  sw         $t7, 0x30($t4)
.L800A8498:
/* A9098 800A8498 10000003 */  b          .L800A84A8
/* A909C 800A849C 8FA2005C */   lw        $v0, 0x5c($sp)
/* A90A0 800A84A0 10000001 */  b          .L800A84A8
/* A90A4 800A84A4 00000000 */   nop
.L800A84A8:
/* A90A8 800A84A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* A90AC 800A84AC 27BD0060 */  addiu      $sp, $sp, 0x60
/* A90B0 800A84B0 03E00008 */  jr         $ra
/* A90B4 800A84B4 00000000 */   nop

glabel func_800A84B8
/* A90B8 800A84B8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A90BC 800A84BC AFBF001C */  sw         $ra, 0x1c($sp)
/* A90C0 800A84C0 AFA40030 */  sw         $a0, 0x30($sp)
/* A90C4 800A84C4 AFA50034 */  sw         $a1, 0x34($sp)
/* A90C8 800A84C8 AFA60038 */  sw         $a2, 0x38($sp)
/* A90CC 800A84CC AFB00018 */  sw         $s0, 0x18($sp)
/* A90D0 800A84D0 8FAE0030 */  lw         $t6, 0x30($sp)
/* A90D4 800A84D4 AFAE002C */  sw         $t6, 0x2c($sp)
/* A90D8 800A84D8 8FAF0030 */  lw         $t7, 0x30($sp)
/* A90DC 800A84DC AFAF0028 */  sw         $t7, 0x28($sp)
/* A90E0 800A84E0 8FB00034 */  lw         $s0, 0x34($sp)
/* A90E4 800A84E4 24010001 */  addiu      $at, $zero, 1
/* A90E8 800A84E8 12010044 */  beq        $s0, $at, .L800A85FC
/* A90EC 800A84EC 00000000 */   nop
/* A90F0 800A84F0 24010003 */  addiu      $at, $zero, 3
/* A90F4 800A84F4 12010009 */  beq        $s0, $at, .L800A851C
/* A90F8 800A84F8 00000000 */   nop
/* A90FC 800A84FC 24010004 */  addiu      $at, $zero, 4
/* A9100 800A8500 12010017 */  beq        $s0, $at, .L800A8560
/* A9104 800A8504 00000000 */   nop
/* A9108 800A8508 24010009 */  addiu      $at, $zero, 9
/* A910C 800A850C 1201002A */  beq        $s0, $at, .L800A85B8
/* A9110 800A8510 00000000 */   nop
/* A9114 800A8514 1000003E */  b          .L800A8610
/* A9118 800A8518 00000000 */   nop
.L800A851C:
/* A911C 800A851C 8FB80028 */  lw         $t8, 0x28($sp)
/* A9120 800A8520 8F190040 */  lw         $t9, 0x40($t8)
/* A9124 800A8524 13200006 */  beqz       $t9, .L800A8540
/* A9128 800A8528 00000000 */   nop
/* A912C 800A852C 8FA90028 */  lw         $t1, 0x28($sp)
/* A9130 800A8530 8FA80038 */  lw         $t0, 0x38($sp)
/* A9134 800A8534 8D2A0040 */  lw         $t2, 0x40($t1)
/* A9138 800A8538 10000004 */  b          .L800A854C
/* A913C 800A853C AD480000 */   sw        $t0, ($t2)
.L800A8540:
/* A9140 800A8540 8FAB0038 */  lw         $t3, 0x38($sp)
/* A9144 800A8544 8FAC0028 */  lw         $t4, 0x28($sp)
/* A9148 800A8548 AD8B003C */  sw         $t3, 0x3c($t4)
.L800A854C:
/* A914C 800A854C 8FAD0038 */  lw         $t5, 0x38($sp)
/* A9150 800A8550 8FAE0028 */  lw         $t6, 0x28($sp)
/* A9154 800A8554 ADCD0040 */  sw         $t5, 0x40($t6)
/* A9158 800A8558 10000039 */  b          .L800A8640
/* A915C 800A855C 00000000 */   nop
.L800A8560:
/* A9160 800A8560 8FB80028 */  lw         $t8, 0x28($sp)
/* A9164 800A8564 240F0001 */  addiu      $t7, $zero, 1
/* A9168 800A8568 AF0F0038 */  sw         $t7, 0x38($t8)
/* A916C 800A856C 8FB90028 */  lw         $t9, 0x28($sp)
/* A9170 800A8570 AF200048 */  sw         $zero, 0x48($t9)
/* A9174 800A8574 8FA80028 */  lw         $t0, 0x28($sp)
/* A9178 800A8578 24090001 */  addiu      $t1, $zero, 1
/* A917C 800A857C A509001A */  sh         $t1, 0x1a($t0)
/* A9180 800A8580 8FAA002C */  lw         $t2, 0x2c($sp)
/* A9184 800A8584 8D4B0000 */  lw         $t3, ($t2)
/* A9188 800A8588 11600009 */  beqz       $t3, .L800A85B0
/* A918C 800A858C 00000000 */   nop
/* A9190 800A8590 8FAC002C */  lw         $t4, 0x2c($sp)
/* A9194 800A8594 24050004 */  addiu      $a1, $zero, 4
/* A9198 800A8598 8FA60038 */  lw         $a2, 0x38($sp)
/* A919C 800A859C 8D8D0000 */  lw         $t5, ($t4)
/* A91A0 800A85A0 8DB90008 */  lw         $t9, 8($t5)
/* A91A4 800A85A4 01A02025 */  or         $a0, $t5, $zero
/* A91A8 800A85A8 0320F809 */  jalr       $t9
/* A91AC 800A85AC 00000000 */   nop
.L800A85B0:
/* A91B0 800A85B0 10000023 */  b          .L800A8640
/* A91B4 800A85B4 00000000 */   nop
.L800A85B8:
/* A91B8 800A85B8 8FAF0028 */  lw         $t7, 0x28($sp)
/* A91BC 800A85BC 240E0001 */  addiu      $t6, $zero, 1
/* A91C0 800A85C0 ADEE0048 */  sw         $t6, 0x48($t7)
/* A91C4 800A85C4 8FB8002C */  lw         $t8, 0x2c($sp)
/* A91C8 800A85C8 8F090000 */  lw         $t1, ($t8)
/* A91CC 800A85CC 11200009 */  beqz       $t1, .L800A85F4
/* A91D0 800A85D0 00000000 */   nop
/* A91D4 800A85D4 8FA8002C */  lw         $t0, 0x2c($sp)
/* A91D8 800A85D8 24050009 */  addiu      $a1, $zero, 9
/* A91DC 800A85DC 8FA60038 */  lw         $a2, 0x38($sp)
/* A91E0 800A85E0 8D0A0000 */  lw         $t2, ($t0)
/* A91E4 800A85E4 8D590008 */  lw         $t9, 8($t2)
/* A91E8 800A85E8 01402025 */  or         $a0, $t2, $zero
/* A91EC 800A85EC 0320F809 */  jalr       $t9
/* A91F0 800A85F0 00000000 */   nop
.L800A85F4:
/* A91F4 800A85F4 10000012 */  b          .L800A8640
/* A91F8 800A85F8 00000000 */   nop
.L800A85FC:
/* A91FC 800A85FC 8FAB0038 */  lw         $t3, 0x38($sp)
/* A9200 800A8600 8FAC002C */  lw         $t4, 0x2c($sp)
/* A9204 800A8604 AD8B0000 */  sw         $t3, ($t4)
/* A9208 800A8608 1000000D */  b          .L800A8640
/* A920C 800A860C 00000000 */   nop
.L800A8610:
/* A9210 800A8610 8FAD002C */  lw         $t5, 0x2c($sp)
/* A9214 800A8614 8DAE0000 */  lw         $t6, ($t5)
/* A9218 800A8618 11C00009 */  beqz       $t6, .L800A8640
/* A921C 800A861C 00000000 */   nop
/* A9220 800A8620 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9224 800A8624 8FA50034 */  lw         $a1, 0x34($sp)
/* A9228 800A8628 8FA60038 */  lw         $a2, 0x38($sp)
/* A922C 800A862C 8DF80000 */  lw         $t8, ($t7)
/* A9230 800A8630 8F190008 */  lw         $t9, 8($t8)
/* A9234 800A8634 03002025 */  or         $a0, $t8, $zero
/* A9238 800A8638 0320F809 */  jalr       $t9
/* A923C 800A863C 00000000 */   nop
.L800A8640:
/* A9240 800A8640 10000003 */  b          .L800A8650
/* A9244 800A8644 00001025 */   or        $v0, $zero, $zero
/* A9248 800A8648 10000001 */  b          .L800A8650
/* A924C 800A864C 00000000 */   nop
.L800A8650:
/* A9250 800A8650 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9254 800A8654 8FB00018 */  lw         $s0, 0x18($sp)
/* A9258 800A8658 27BD0030 */  addiu      $sp, $sp, 0x30
/* A925C 800A865C 03E00008 */  jr         $ra
/* A9260 800A8660 00000000 */   nop

glabel func_800A8664
/* A9264 800A8664 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* A9268 800A8668 AFBF001C */  sw         $ra, 0x1c($sp)
/* A926C 800A866C AFA40050 */  sw         $a0, 0x50($sp)
/* A9270 800A8670 AFA50054 */  sw         $a1, 0x54($sp)
/* A9274 800A8674 AFA60058 */  sw         $a2, 0x58($sp)
/* A9278 800A8678 AFA7005C */  sw         $a3, 0x5c($sp)
/* A927C 800A867C 8FAE0064 */  lw         $t6, 0x64($sp)
/* A9280 800A8680 AFAE004C */  sw         $t6, 0x4c($sp)
/* A9284 800A8684 8FAF0050 */  lw         $t7, 0x50($sp)
/* A9288 800A8688 AFAF0048 */  sw         $t7, 0x48($sp)
/* A928C 800A868C 8FB80048 */  lw         $t8, 0x48($sp)
/* A9290 800A8690 8F190000 */  lw         $t9, ($t8)
/* A9294 800A8694 AFB90044 */  sw         $t9, 0x44($sp)
/* A9298 800A8698 8FA80048 */  lw         $t0, 0x48($sp)
/* A929C 800A869C 24010001 */  addiu      $at, $zero, 1
/* A92A0 800A86A0 8D090048 */  lw         $t1, 0x48($t0)
/* A92A4 800A86A4 15210004 */  bne        $t1, $at, .L800A86B8
/* A92A8 800A86A8 00000000 */   nop
/* A92AC 800A86AC 8FAA005C */  lw         $t2, 0x5c($sp)
/* A92B0 800A86B0 15400003 */  bnez       $t2, .L800A86C0
/* A92B4 800A86B4 00000000 */   nop
.L800A86B8:
/* A92B8 800A86B8 100000F6 */  b          .L800A8A94
/* A92BC 800A86BC 8FA2004C */   lw        $v0, 0x4c($sp)
.L800A86C0:
/* A92C0 800A86C0 8FAB0044 */  lw         $t3, 0x44($sp)
/* A92C4 800A86C4 11600003 */  beqz       $t3, .L800A86D4
/* A92C8 800A86C8 00000000 */   nop
/* A92CC 800A86CC 10000007 */  b          .L800A86EC
/* A92D0 800A86D0 00000000 */   nop
.L800A86D4:
/* A92D4 800A86D4 3C04800D */  lui        $a0, %hi(D_800D3420)
/* A92D8 800A86D8 3C05800D */  lui        $a1, %hi(D_800D3428)
/* A92DC 800A86DC 24A53428 */  addiu      $a1, $a1, %lo(D_800D3428)
/* A92E0 800A86E0 24843420 */  addiu      $a0, $a0, %lo(D_800D3420)
/* A92E4 800A86E4 0C02C480 */  jal        func_800B1200
/* A92E8 800A86E8 2406016F */   addiu     $a2, $zero, 0x16f
.L800A86EC:
/* A92EC 800A86EC 8FAD0064 */  lw         $t5, 0x64($sp)
/* A92F0 800A86F0 8FAC0044 */  lw         $t4, 0x44($sp)
/* A92F4 800A86F4 8FA50054 */  lw         $a1, 0x54($sp)
/* A92F8 800A86F8 AFAD0010 */  sw         $t5, 0x10($sp)
/* A92FC 800A86FC 8D990004 */  lw         $t9, 4($t4)
/* A9300 800A8700 8FA6005C */  lw         $a2, 0x5c($sp)
/* A9304 800A8704 8FA70060 */  lw         $a3, 0x60($sp)
/* A9308 800A8708 0320F809 */  jalr       $t9
/* A930C 800A870C 01802025 */   or        $a0, $t4, $zero
/* A9310 800A8710 AFA2004C */  sw         $v0, 0x4c($sp)
/* A9314 800A8714 8FAE004C */  lw         $t6, 0x4c($sp)
/* A9318 800A8718 25CF0008 */  addiu      $t7, $t6, 8
/* A931C 800A871C AFAF004C */  sw         $t7, 0x4c($sp)
/* A9320 800A8720 AFAE0040 */  sw         $t6, 0x40($sp)
/* A9324 800A8724 8FB80054 */  lw         $t8, 0x54($sp)
/* A9328 800A8728 8FAB0040 */  lw         $t3, 0x40($sp)
/* A932C 800A872C 3C010800 */  lui        $at, 0x800
/* A9330 800A8730 87080000 */  lh         $t0, ($t8)
/* A9334 800A8734 3109FFFF */  andi       $t1, $t0, 0xffff
/* A9338 800A8738 01215025 */  or         $t2, $t1, $at
/* A933C 800A873C AD6A0000 */  sw         $t2, ($t3)
/* A9340 800A8740 8FAD0058 */  lw         $t5, 0x58($sp)
/* A9344 800A8744 8FB8005C */  lw         $t8, 0x5c($sp)
/* A9348 800A8748 8FAB0040 */  lw         $t3, 0x40($sp)
/* A934C 800A874C 85AC0000 */  lh         $t4, ($t5)
/* A9350 800A8750 00184040 */  sll        $t0, $t8, 1
/* A9354 800A8754 3109FFFF */  andi       $t1, $t0, 0xffff
/* A9358 800A8758 25990440 */  addiu      $t9, $t4, 0x440
/* A935C 800A875C 332EFFFF */  andi       $t6, $t9, 0xffff
/* A9360 800A8760 000E7C00 */  sll        $t7, $t6, 0x10
/* A9364 800A8764 01E95025 */  or         $t2, $t7, $t1
/* A9368 800A8768 AD6A0004 */  sw         $t2, 4($t3)
/* A936C 800A876C 8FAD004C */  lw         $t5, 0x4c($sp)
/* A9370 800A8770 25AC0008 */  addiu      $t4, $t5, 8
/* A9374 800A8774 AFAC004C */  sw         $t4, 0x4c($sp)
/* A9378 800A8778 AFAD003C */  sw         $t5, 0x3c($sp)
/* A937C 800A877C 8FB90058 */  lw         $t9, 0x58($sp)
/* A9380 800A8780 8FA9003C */  lw         $t1, 0x3c($sp)
/* A9384 800A8784 3C010808 */  lui        $at, 0x808
/* A9388 800A8788 872E0000 */  lh         $t6, ($t9)
/* A938C 800A878C 25D80580 */  addiu      $t8, $t6, 0x580
/* A9390 800A8790 3308FFFF */  andi       $t0, $t8, 0xffff
/* A9394 800A8794 01017825 */  or         $t7, $t0, $at
/* A9398 800A8798 AD2F0000 */  sw         $t7, ($t1)
/* A939C 800A879C 8FAA0058 */  lw         $t2, 0x58($sp)
/* A93A0 800A87A0 8FAF003C */  lw         $t7, 0x3c($sp)
/* A93A4 800A87A4 854B0000 */  lh         $t3, ($t2)
/* A93A8 800A87A8 257906C0 */  addiu      $t9, $t3, 0x6c0
/* A93AC 800A87AC 332EFFFF */  andi       $t6, $t9, 0xffff
/* A93B0 800A87B0 256D0800 */  addiu      $t5, $t3, 0x800
/* A93B4 800A87B4 31ACFFFF */  andi       $t4, $t5, 0xffff
/* A93B8 800A87B8 000EC400 */  sll        $t8, $t6, 0x10
/* A93BC 800A87BC 01984025 */  or         $t0, $t4, $t8
/* A93C0 800A87C0 ADE80004 */  sw         $t0, 4($t7)
/* A93C4 800A87C4 8FA90048 */  lw         $t1, 0x48($sp)
/* A93C8 800A87C8 8D2A0038 */  lw         $t2, 0x38($t1)
/* A93CC 800A87CC 11400096 */  beqz       $t2, .L800A8A28
/* A93D0 800A87D0 00000000 */   nop
/* A93D4 800A87D4 8FAD0048 */  lw         $t5, 0x48($sp)
/* A93D8 800A87D8 ADA00038 */  sw         $zero, 0x38($t5)
/* A93DC 800A87DC 8FAB0048 */  lw         $t3, 0x48($sp)
/* A93E0 800A87E0 3C0C800D */  lui        $t4, %hi(D_800CD1C0)
/* A93E4 800A87E4 85790018 */  lh         $t9, 0x18($t3)
/* A93E8 800A87E8 8578001A */  lh         $t8, 0x1a($t3)
/* A93EC 800A87EC 00197040 */  sll        $t6, $t9, 1
/* A93F0 800A87F0 018E6021 */  addu       $t4, $t4, $t6
/* A93F4 800A87F4 858CD1C0 */  lh         $t4, %lo(D_800CD1C0)($t4)
/* A93F8 800A87F8 01980019 */  multu      $t4, $t8
/* A93FC 800A87FC 00004012 */  mflo       $t0
/* A9400 800A8800 00087BC3 */  sra        $t7, $t0, 0xf
/* A9404 800A8804 A56F0028 */  sh         $t7, 0x28($t3)
/* A9408 800A8808 8FA90048 */  lw         $t1, 0x48($sp)
/* A940C 800A880C 852A001C */  lh         $t2, 0x1c($t1)
/* A9410 800A8810 852D0028 */  lh         $t5, 0x28($t1)
/* A9414 800A8814 8D390034 */  lw         $t9, 0x34($t1)
/* A9418 800A8818 448A2000 */  mtc1       $t2, $f4
/* A941C 800A881C 448D3000 */  mtc1       $t5, $f6
/* A9420 800A8820 252E0024 */  addiu      $t6, $t1, 0x24
/* A9424 800A8824 AFAE0014 */  sw         $t6, 0x14($sp)
/* A9428 800A8828 AFB90010 */  sw         $t9, 0x10($sp)
/* A942C 800A882C 46802321 */  cvt.d.w    $f12, $f4
/* A9430 800A8830 0C02A311 */  jal        func_800A8C44
/* A9434 800A8834 468033A1 */   cvt.d.w   $f14, $f6
/* A9438 800A8838 8FAC0048 */  lw         $t4, 0x48($sp)
/* A943C 800A883C A5820026 */  sh         $v0, 0x26($t4)
/* A9440 800A8840 8FB80048 */  lw         $t8, 0x48($sp)
/* A9444 800A8844 3C0A800D */  lui        $t2, 0x800d
/* A9448 800A8848 87080018 */  lh         $t0, 0x18($t8)
/* A944C 800A884C 870D001A */  lh         $t5, 0x1a($t8)
/* A9450 800A8850 00087823 */  negu       $t7, $t0
/* A9454 800A8854 000F5840 */  sll        $t3, $t7, 1
/* A9458 800A8858 014B5021 */  addu       $t2, $t2, $t3
/* A945C 800A885C 854AD2BE */  lh         $t2, -0x2d42($t2)
/* A9460 800A8860 014D0019 */  multu      $t2, $t5
/* A9464 800A8864 0000C812 */  mflo       $t9
/* A9468 800A8868 00194BC3 */  sra        $t1, $t9, 0xf
/* A946C 800A886C A709002E */  sh         $t1, 0x2e($t8)
/* A9470 800A8870 8FAE0048 */  lw         $t6, 0x48($sp)
/* A9474 800A8874 85CC001E */  lh         $t4, 0x1e($t6)
/* A9478 800A8878 85C8002E */  lh         $t0, 0x2e($t6)
/* A947C 800A887C 8DCF0034 */  lw         $t7, 0x34($t6)
/* A9480 800A8880 448C4000 */  mtc1       $t4, $f8
/* A9484 800A8884 44885000 */  mtc1       $t0, $f10
/* A9488 800A8888 25CB002A */  addiu      $t3, $t6, 0x2a
/* A948C 800A888C AFAB0014 */  sw         $t3, 0x14($sp)
/* A9490 800A8890 AFAF0010 */  sw         $t7, 0x10($sp)
/* A9494 800A8894 46804321 */  cvt.d.w    $f12, $f8
/* A9498 800A8898 0C02A311 */  jal        func_800A8C44
/* A949C 800A889C 468053A1 */   cvt.d.w   $f14, $f10
/* A94A0 800A88A0 8FAA0048 */  lw         $t2, 0x48($sp)
/* A94A4 800A88A4 A542002C */  sh         $v0, 0x2c($t2)
/* A94A8 800A88A8 8FAD004C */  lw         $t5, 0x4c($sp)
/* A94AC 800A88AC 25B90008 */  addiu      $t9, $t5, 8
/* A94B0 800A88B0 AFB9004C */  sw         $t9, 0x4c($sp)
/* A94B4 800A88B4 AFAD0038 */  sw         $t5, 0x38($sp)
/* A94B8 800A88B8 8FA90048 */  lw         $t1, 0x48($sp)
/* A94BC 800A88BC 8FAF0038 */  lw         $t7, 0x38($sp)
/* A94C0 800A88C0 3C010906 */  lui        $at, 0x906
/* A94C4 800A88C4 8538001C */  lh         $t8, 0x1c($t1)
/* A94C8 800A88C8 330CFFFF */  andi       $t4, $t8, 0xffff
/* A94CC 800A88CC 01814025 */  or         $t0, $t4, $at
/* A94D0 800A88D0 ADE80000 */  sw         $t0, ($t7)
/* A94D4 800A88D4 8FAE0038 */  lw         $t6, 0x38($sp)
/* A94D8 800A88D8 ADC00004 */  sw         $zero, 4($t6)
/* A94DC 800A88DC 8FAB004C */  lw         $t3, 0x4c($sp)
/* A94E0 800A88E0 256A0008 */  addiu      $t2, $t3, 8
/* A94E4 800A88E4 AFAA004C */  sw         $t2, 0x4c($sp)
/* A94E8 800A88E8 AFAB0034 */  sw         $t3, 0x34($sp)
/* A94EC 800A88EC 8FAD0048 */  lw         $t5, 0x48($sp)
/* A94F0 800A88F0 8FAC0034 */  lw         $t4, 0x34($sp)
/* A94F4 800A88F4 3C010904 */  lui        $at, 0x904
/* A94F8 800A88F8 85B9001E */  lh         $t9, 0x1e($t5)
/* A94FC 800A88FC 3329FFFF */  andi       $t1, $t9, 0xffff
/* A9500 800A8900 0121C025 */  or         $t8, $t1, $at
/* A9504 800A8904 AD980000 */  sw         $t8, ($t4)
/* A9508 800A8908 8FA80034 */  lw         $t0, 0x34($sp)
/* A950C 800A890C AD000004 */  sw         $zero, 4($t0)
/* A9510 800A8910 8FAF004C */  lw         $t7, 0x4c($sp)
/* A9514 800A8914 25EE0008 */  addiu      $t6, $t7, 8
/* A9518 800A8918 AFAE004C */  sw         $t6, 0x4c($sp)
/* A951C 800A891C AFAF0030 */  sw         $t7, 0x30($sp)
/* A9520 800A8920 8FAB0048 */  lw         $t3, 0x48($sp)
/* A9524 800A8924 8FA90030 */  lw         $t1, 0x30($sp)
/* A9528 800A8928 3C010902 */  lui        $at, 0x902
/* A952C 800A892C 856A0028 */  lh         $t2, 0x28($t3)
/* A9530 800A8930 314DFFFF */  andi       $t5, $t2, 0xffff
/* A9534 800A8934 01A1C825 */  or         $t9, $t5, $at
/* A9538 800A8938 AD390000 */  sw         $t9, ($t1)
/* A953C 800A893C 8FB80048 */  lw         $t8, 0x48($sp)
/* A9540 800A8940 8FAD0030 */  lw         $t5, 0x30($sp)
/* A9544 800A8944 870C0026 */  lh         $t4, 0x26($t8)
/* A9548 800A8948 970E0024 */  lhu        $t6, 0x24($t8)
/* A954C 800A894C 3188FFFF */  andi       $t0, $t4, 0xffff
/* A9550 800A8950 00087C00 */  sll        $t7, $t0, 0x10
/* A9554 800A8954 31CBFFFF */  andi       $t3, $t6, 0xffff
/* A9558 800A8958 01EB5025 */  or         $t2, $t7, $t3
/* A955C 800A895C ADAA0004 */  sw         $t2, 4($t5)
/* A9560 800A8960 8FB9004C */  lw         $t9, 0x4c($sp)
/* A9564 800A8964 27290008 */  addiu      $t1, $t9, 8
/* A9568 800A8968 AFA9004C */  sw         $t1, 0x4c($sp)
/* A956C 800A896C AFB9002C */  sw         $t9, 0x2c($sp)
/* A9570 800A8970 8FAC0048 */  lw         $t4, 0x48($sp)
/* A9574 800A8974 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9578 800A8978 3C010900 */  lui        $at, 0x900
/* A957C 800A897C 8588002E */  lh         $t0, 0x2e($t4)
/* A9580 800A8980 3118FFFF */  andi       $t8, $t0, 0xffff
/* A9584 800A8984 03017025 */  or         $t6, $t8, $at
/* A9588 800A8988 ADEE0000 */  sw         $t6, ($t7)
/* A958C 800A898C 8FAB0048 */  lw         $t3, 0x48($sp)
/* A9590 800A8990 8FB8002C */  lw         $t8, 0x2c($sp)
/* A9594 800A8994 856A002C */  lh         $t2, 0x2c($t3)
/* A9598 800A8998 9569002A */  lhu        $t1, 0x2a($t3)
/* A959C 800A899C 314DFFFF */  andi       $t5, $t2, 0xffff
/* A95A0 800A89A0 000DCC00 */  sll        $t9, $t5, 0x10
/* A95A4 800A89A4 312CFFFF */  andi       $t4, $t1, 0xffff
/* A95A8 800A89A8 032C4025 */  or         $t0, $t9, $t4
/* A95AC 800A89AC AF080004 */  sw         $t0, 4($t8)
/* A95B0 800A89B0 8FAE004C */  lw         $t6, 0x4c($sp)
/* A95B4 800A89B4 25CF0008 */  addiu      $t7, $t6, 8
/* A95B8 800A89B8 AFAF004C */  sw         $t7, 0x4c($sp)
/* A95BC 800A89BC AFAE0028 */  sw         $t6, 0x28($sp)
/* A95C0 800A89C0 8FAA0048 */  lw         $t2, 0x48($sp)
/* A95C4 800A89C4 8FB90028 */  lw         $t9, 0x28($sp)
/* A95C8 800A89C8 3C010908 */  lui        $at, 0x908
/* A95CC 800A89CC 854D0020 */  lh         $t5, 0x20($t2)
/* A95D0 800A89D0 31ABFFFF */  andi       $t3, $t5, 0xffff
/* A95D4 800A89D4 01614825 */  or         $t1, $t3, $at
/* A95D8 800A89D8 AF290000 */  sw         $t1, ($t9)
/* A95DC 800A89DC 8FAC0048 */  lw         $t4, 0x48($sp)
/* A95E0 800A89E0 8FAE0028 */  lw         $t6, 0x28($sp)
/* A95E4 800A89E4 85880022 */  lh         $t0, 0x22($t4)
/* A95E8 800A89E8 3118FFFF */  andi       $t8, $t0, 0xffff
/* A95EC 800A89EC ADD80004 */  sw         $t8, 4($t6)
/* A95F0 800A89F0 8FAF004C */  lw         $t7, 0x4c($sp)
/* A95F4 800A89F4 25EA0008 */  addiu      $t2, $t7, 8
/* A95F8 800A89F8 AFAA004C */  sw         $t2, 0x4c($sp)
/* A95FC 800A89FC AFAF0024 */  sw         $t7, 0x24($sp)
/* A9600 800A8A00 8FAB0024 */  lw         $t3, 0x24($sp)
/* A9604 800A8A04 3C0D0309 */  lui        $t5, 0x309
/* A9608 800A8A08 AD6D0000 */  sw         $t5, ($t3)
/* A960C 800A8A0C 8FA90048 */  lw         $t1, 0x48($sp)
/* A9610 800A8A10 0C027C0C */  jal        func_8009F030
/* A9614 800A8A14 8D240014 */   lw        $a0, 0x14($t1)
/* A9618 800A8A18 8FB90024 */  lw         $t9, 0x24($sp)
/* A961C 800A8A1C AF220004 */  sw         $v0, 4($t9)
/* A9620 800A8A20 1000000D */  b          .L800A8A58
/* A9624 800A8A24 00000000 */   nop
.L800A8A28:
/* A9628 800A8A28 8FAC004C */  lw         $t4, 0x4c($sp)
/* A962C 800A8A2C 25880008 */  addiu      $t0, $t4, 8
/* A9630 800A8A30 AFA8004C */  sw         $t0, 0x4c($sp)
/* A9634 800A8A34 AFAC0020 */  sw         $t4, 0x20($sp)
/* A9638 800A8A38 8FAE0020 */  lw         $t6, 0x20($sp)
/* A963C 800A8A3C 3C180308 */  lui        $t8, 0x308
/* A9640 800A8A40 ADD80000 */  sw         $t8, ($t6)
/* A9644 800A8A44 8FAF0048 */  lw         $t7, 0x48($sp)
/* A9648 800A8A48 0C027C0C */  jal        func_8009F030
/* A964C 800A8A4C 8DE40014 */   lw        $a0, 0x14($t7)
/* A9650 800A8A50 8FAA0020 */  lw         $t2, 0x20($sp)
/* A9654 800A8A54 AD420004 */  sw         $v0, 4($t2)
.L800A8A58:
/* A9658 800A8A58 8FAD0054 */  lw         $t5, 0x54($sp)
/* A965C 800A8A5C 8FA9005C */  lw         $t1, 0x5c($sp)
/* A9660 800A8A60 85AB0000 */  lh         $t3, ($t5)
/* A9664 800A8A64 0009C840 */  sll        $t9, $t1, 1
/* A9668 800A8A68 01796021 */  addu       $t4, $t3, $t9
/* A966C 800A8A6C A5AC0000 */  sh         $t4, ($t5)
/* A9670 800A8A70 8FA80048 */  lw         $t0, 0x48($sp)
/* A9674 800A8A74 8FAE005C */  lw         $t6, 0x5c($sp)
/* A9678 800A8A78 8D180030 */  lw         $t8, 0x30($t0)
/* A967C 800A8A7C 030E7821 */  addu       $t7, $t8, $t6
/* A9680 800A8A80 AD0F0030 */  sw         $t7, 0x30($t0)
/* A9684 800A8A84 10000003 */  b          .L800A8A94
/* A9688 800A8A88 8FA2004C */   lw        $v0, 0x4c($sp)
/* A968C 800A8A8C 10000001 */  b          .L800A8A94
/* A9690 800A8A90 00000000 */   nop
.L800A8A94:
/* A9694 800A8A94 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9698 800A8A98 27BD0050 */  addiu      $sp, $sp, 0x50
/* A969C 800A8A9C 03E00008 */  jr         $ra
/* A96A0 800A8AA0 00000000 */   nop

glabel func_800A8AA4
/* A96A4 800A8AA4 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* A96A8 800A8AA8 ACC00000 */  sw         $zero, ($a2)
/* A96AC 800A8AAC 44802800 */  mtc1       $zero, $f5
/* A96B0 800A8AB0 44802000 */  mtc1       $zero, $f4
/* A96B4 800A8AB4 00000000 */  nop
/* A96B8 800A8AB8 46246032 */  c.eq.d     $f12, $f4
/* A96BC 800A8ABC 00000000 */  nop
/* A96C0 800A8AC0 45000003 */  bc1f       .L800A8AD0
/* A96C4 800A8AC4 00000000 */   nop
/* A96C8 800A8AC8 1000004A */  b          .L800A8BF4
/* A96CC 800A8ACC 46206006 */   mov.d     $f0, $f12
.L800A8AD0:
/* A96D0 800A8AD0 44803800 */  mtc1       $zero, $f7
/* A96D4 800A8AD4 44803000 */  mtc1       $zero, $f6
/* A96D8 800A8AD8 00000000 */  nop
/* A96DC 800A8ADC 462C303C */  c.lt.d     $f6, $f12
/* A96E0 800A8AE0 00000000 */  nop
/* A96E4 800A8AE4 45000003 */  bc1f       .L800A8AF4
/* A96E8 800A8AE8 00000000 */   nop
/* A96EC 800A8AEC 10000003 */  b          .L800A8AFC
/* A96F0 800A8AF0 F7AC0008 */   sdc1      $f12, 8($sp)
.L800A8AF4:
/* A96F4 800A8AF4 46206207 */  neg.d      $f8, $f12
/* A96F8 800A8AF8 F7A80008 */  sdc1       $f8, 8($sp)
.L800A8AFC:
/* A96FC 800A8AFC 3C013FF0 */  lui        $at, 0x3ff0
/* A9700 800A8B00 44818800 */  mtc1       $at, $f17
/* A9704 800A8B04 D7AA0008 */  ldc1       $f10, 8($sp)
/* A9708 800A8B08 44808000 */  mtc1       $zero, $f16
/* A970C 800A8B0C 00000000 */  nop
/* A9710 800A8B10 462A803E */  c.le.d     $f16, $f10
/* A9714 800A8B14 00000000 */  nop
/* A9718 800A8B18 45000011 */  bc1f       .L800A8B60
/* A971C 800A8B1C 00000000 */   nop
.L800A8B20:
/* A9720 800A8B20 8CCE0000 */  lw         $t6, ($a2)
/* A9724 800A8B24 25CF0001 */  addiu      $t7, $t6, 1
/* A9728 800A8B28 ACCF0000 */  sw         $t7, ($a2)
/* A972C 800A8B2C 3C013FE0 */  lui        $at, 0x3fe0
/* A9730 800A8B30 44812800 */  mtc1       $at, $f5
/* A9734 800A8B34 D7B20008 */  ldc1       $f18, 8($sp)
/* A9738 800A8B38 44802000 */  mtc1       $zero, $f4
/* A973C 800A8B3C 3C013FF0 */  lui        $at, 0x3ff0
/* A9740 800A8B40 44814800 */  mtc1       $at, $f9
/* A9744 800A8B44 46249182 */  mul.d      $f6, $f18, $f4
/* A9748 800A8B48 44804000 */  mtc1       $zero, $f8
/* A974C 800A8B4C 00000000 */  nop
/* A9750 800A8B50 4626403E */  c.le.d     $f8, $f6
/* A9754 800A8B54 F7A60008 */  sdc1       $f6, 8($sp)
/* A9758 800A8B58 4501FFF1 */  bc1t       .L800A8B20
/* A975C 800A8B5C 00000000 */   nop
.L800A8B60:
/* A9760 800A8B60 3C013FE0 */  lui        $at, 0x3fe0
/* A9764 800A8B64 44818800 */  mtc1       $at, $f17
/* A9768 800A8B68 D7AA0008 */  ldc1       $f10, 8($sp)
/* A976C 800A8B6C 44808000 */  mtc1       $zero, $f16
/* A9770 800A8B70 00000000 */  nop
/* A9774 800A8B74 4630503C */  c.lt.d     $f10, $f16
/* A9778 800A8B78 00000000 */  nop
/* A977C 800A8B7C 4500000E */  bc1f       .L800A8BB8
/* A9780 800A8B80 00000000 */   nop
.L800A8B84:
/* A9784 800A8B84 8CD80000 */  lw         $t8, ($a2)
/* A9788 800A8B88 2719FFFF */  addiu      $t9, $t8, -1
/* A978C 800A8B8C ACD90000 */  sw         $t9, ($a2)
/* A9790 800A8B90 D7B20008 */  ldc1       $f18, 8($sp)
/* A9794 800A8B94 3C013FE0 */  lui        $at, 0x3fe0
/* A9798 800A8B98 44813800 */  mtc1       $at, $f7
/* A979C 800A8B9C 46329100 */  add.d      $f4, $f18, $f18
/* A97A0 800A8BA0 44803000 */  mtc1       $zero, $f6
/* A97A4 800A8BA4 00000000 */  nop
/* A97A8 800A8BA8 4626203C */  c.lt.d     $f4, $f6
/* A97AC 800A8BAC F7A40008 */  sdc1       $f4, 8($sp)
/* A97B0 800A8BB0 4501FFF4 */  bc1t       .L800A8B84
/* A97B4 800A8BB4 00000000 */   nop
.L800A8BB8:
/* A97B8 800A8BB8 44804800 */  mtc1       $zero, $f9
/* A97BC 800A8BBC 44804000 */  mtc1       $zero, $f8
/* A97C0 800A8BC0 00000000 */  nop
/* A97C4 800A8BC4 462C403C */  c.lt.d     $f8, $f12
/* A97C8 800A8BC8 00000000 */  nop
/* A97CC 800A8BCC 45000003 */  bc1f       .L800A8BDC
/* A97D0 800A8BD0 00000000 */   nop
/* A97D4 800A8BD4 10000003 */  b          .L800A8BE4
/* A97D8 800A8BD8 D7AE0008 */   ldc1      $f14, 8($sp)
.L800A8BDC:
/* A97DC 800A8BDC D7AE0008 */  ldc1       $f14, 8($sp)
/* A97E0 800A8BE0 46207387 */  neg.d      $f14, $f14
.L800A8BE4:
/* A97E4 800A8BE4 10000003 */  b          .L800A8BF4
/* A97E8 800A8BE8 46207006 */   mov.d     $f0, $f14
/* A97EC 800A8BEC 10000001 */  b          .L800A8BF4
/* A97F0 800A8BF0 00000000 */   nop
.L800A8BF4:
/* A97F4 800A8BF4 03E00008 */  jr         $ra
/* A97F8 800A8BF8 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800A8BFC
/* A97FC 800A8BFC 27BDFFF8 */  addiu      $sp, $sp, -8
/* A9800 800A8C00 10C0000A */  beqz       $a2, .L800A8C2C
/* A9804 800A8C04 00000000 */   nop
/* A9808 800A8C08 240E0001 */  addiu      $t6, $zero, 1
/* A980C 800A8C0C 00CE7804 */  sllv       $t7, $t6, $a2
/* A9810 800A8C10 AFAF0004 */  sw         $t7, 4($sp)
/* A9814 800A8C14 8FB80004 */  lw         $t8, 4($sp)
/* A9818 800A8C18 44982000 */  mtc1       $t8, $f4
/* A981C 800A8C1C 00000000 */  nop
/* A9820 800A8C20 468021A1 */  cvt.d.w    $f6, $f4
/* A9824 800A8C24 46266302 */  mul.d      $f12, $f12, $f6
/* A9828 800A8C28 00000000 */  nop
.L800A8C2C:
/* A982C 800A8C2C 10000003 */  b          .L800A8C3C
/* A9830 800A8C30 46206006 */   mov.d     $f0, $f12
/* A9834 800A8C34 10000001 */  b          .L800A8C3C
/* A9838 800A8C38 00000000 */   nop
.L800A8C3C:
/* A983C 800A8C3C 03E00008 */  jr         $ra
/* A9840 800A8C40 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800A8C44
/* A9844 800A8C44 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* A9848 800A8C48 AFBF0024 */  sw         $ra, 0x24($sp)
/* A984C 800A8C4C F7AC00B8 */  sdc1       $f12, 0xb8($sp)
/* A9850 800A8C50 F7AE00C0 */  sdc1       $f14, 0xc0($sp)
/* A9854 800A8C54 F7B60018 */  sdc1       $f22, 0x18($sp)
/* A9858 800A8C58 F7B40010 */  sdc1       $f20, 0x10($sp)
/* A985C 800A8C5C 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* A9860 800A8C60 3C013FF0 */  lui        $at, 0x3ff0
/* A9864 800A8C64 44812800 */  mtc1       $at, $f5
/* A9868 800A8C68 448E3000 */  mtc1       $t6, $f6
/* A986C 800A8C6C 44802000 */  mtc1       $zero, $f4
/* A9870 800A8C70 46803221 */  cvt.d.w    $f8, $f6
/* A9874 800A8C74 46282283 */  div.d      $f10, $f4, $f8
/* A9878 800A8C78 F7AA00A8 */  sdc1       $f10, 0xa8($sp)
/* A987C 800A8C7C 8FAF00C8 */  lw         $t7, 0xc8($sp)
/* A9880 800A8C80 15E00012 */  bnez       $t7, .L800A8CCC
/* A9884 800A8C84 00000000 */   nop
/* A9888 800A8C88 D7B000C0 */  ldc1       $f16, 0xc0($sp)
/* A988C 800A8C8C D7B200B8 */  ldc1       $f18, 0xb8($sp)
/* A9890 800A8C90 4630903E */  c.le.d     $f18, $f16
/* A9894 800A8C94 00000000 */  nop
/* A9898 800A8C98 45000008 */  bc1f       .L800A8CBC
/* A989C 800A8C9C 00000000 */   nop
/* A98A0 800A8CA0 8FB900CC */  lw         $t9, 0xcc($sp)
/* A98A4 800A8CA4 3418FFFF */  ori        $t8, $zero, 0xffff
/* A98A8 800A8CA8 A7380000 */  sh         $t8, ($t9)
/* A98AC 800A8CAC 1000009E */  b          .L800A8F28
/* A98B0 800A8CB0 24027FFF */   addiu     $v0, $zero, 0x7fff
/* A98B4 800A8CB4 10000005 */  b          .L800A8CCC
/* A98B8 800A8CB8 00000000 */   nop
.L800A8CBC:
/* A98BC 800A8CBC 8FA800CC */  lw         $t0, 0xcc($sp)
/* A98C0 800A8CC0 A5000000 */  sh         $zero, ($t0)
/* A98C4 800A8CC4 10000098 */  b          .L800A8F28
/* A98C8 800A8CC8 00001025 */   or        $v0, $zero, $zero
.L800A8CCC:
/* A98CC 800A8CCC 3C013FF0 */  lui        $at, 0x3ff0
/* A98D0 800A8CD0 44812800 */  mtc1       $at, $f5
/* A98D4 800A8CD4 D7A600C0 */  ldc1       $f6, 0xc0($sp)
/* A98D8 800A8CD8 44802000 */  mtc1       $zero, $f4
/* A98DC 800A8CDC 00000000 */  nop
/* A98E0 800A8CE0 4624303C */  c.lt.d     $f6, $f4
/* A98E4 800A8CE4 00000000 */  nop
/* A98E8 800A8CE8 45000006 */  bc1f       .L800A8D04
/* A98EC 800A8CEC 00000000 */   nop
/* A98F0 800A8CF0 3C013FF0 */  lui        $at, 0x3ff0
/* A98F4 800A8CF4 44814800 */  mtc1       $at, $f9
/* A98F8 800A8CF8 44804000 */  mtc1       $zero, $f8
/* A98FC 800A8CFC 00000000 */  nop
/* A9900 800A8D00 F7A800C0 */  sdc1       $f8, 0xc0($sp)
.L800A8D04:
/* A9904 800A8D04 D7AA00B8 */  ldc1       $f10, 0xb8($sp)
/* A9908 800A8D08 44808800 */  mtc1       $zero, $f17
/* A990C 800A8D0C 44808000 */  mtc1       $zero, $f16
/* A9910 800A8D10 00000000 */  nop
/* A9914 800A8D14 4630503E */  c.le.d     $f10, $f16
/* A9918 800A8D18 00000000 */  nop
/* A991C 800A8D1C 45000006 */  bc1f       .L800A8D38
/* A9920 800A8D20 00000000 */   nop
/* A9924 800A8D24 3C013FF0 */  lui        $at, 0x3ff0
/* A9928 800A8D28 44819800 */  mtc1       $at, $f19
/* A992C 800A8D2C 44809000 */  mtc1       $zero, $f18
/* A9930 800A8D30 00000000 */  nop
/* A9934 800A8D34 F7B200B8 */  sdc1       $f18, 0xb8($sp)
.L800A8D38:
/* A9938 800A8D38 3C0A800D */  lui        $t2, %hi(D_800CD2C0)
/* A993C 800A8D3C 254AD2C0 */  addiu      $t2, $t2, %lo(D_800CD2C0)
/* A9940 800A8D40 254C003C */  addiu      $t4, $t2, 0x3c
/* A9944 800A8D44 27A90038 */  addiu      $t1, $sp, 0x38
.L800A8D48:
/* A9948 800A8D48 8D410000 */  lw         $at, ($t2)
/* A994C 800A8D4C 254A000C */  addiu      $t2, $t2, 0xc
/* A9950 800A8D50 2529000C */  addiu      $t1, $t1, 0xc
/* A9954 800A8D54 AD21FFF4 */  sw         $at, -0xc($t1)
/* A9958 800A8D58 8D41FFF8 */  lw         $at, -8($t2)
/* A995C 800A8D5C AD21FFF8 */  sw         $at, -8($t1)
/* A9960 800A8D60 8D41FFFC */  lw         $at, -4($t2)
/* A9964 800A8D64 154CFFF8 */  bne        $t2, $t4, .L800A8D48
/* A9968 800A8D68 AD21FFFC */   sw        $at, -4($t1)
/* A996C 800A8D6C 8D410000 */  lw         $at, ($t2)
/* A9970 800A8D70 AD210000 */  sw         $at, ($t1)
/* A9974 800A8D74 D7AC00A8 */  ldc1       $f12, 0xa8($sp)
/* A9978 800A8D78 0C02A2FF */  jal        func_800A8BFC
/* A997C 800A8D7C 2406001E */   addiu     $a2, $zero, 0x1e
/* A9980 800A8D80 4620018D */  trunc.w.d  $f6, $f0
/* A9984 800A8D84 E7A60084 */  swc1       $f6, 0x84($sp)
/* A9988 800A8D88 D7A400C0 */  ldc1       $f4, 0xc0($sp)
/* A998C 800A8D8C D7A800B8 */  ldc1       $f8, 0xb8($sp)
/* A9990 800A8D90 27A60080 */  addiu      $a2, $sp, 0x80
/* A9994 800A8D94 0C02A2A9 */  jal        func_800A8AA4
/* A9998 800A8D98 46282303 */   div.d     $f12, $f4, $f8
/* A999C 800A8D9C F7A00088 */  sdc1       $f0, 0x88($sp)
/* A99A0 800A8DA0 D7AC0088 */  ldc1       $f12, 0x88($sp)
/* A99A4 800A8DA4 0C02A2FF */  jal        func_800A8BFC
/* A99A8 800A8DA8 24060004 */   addiu     $a2, $zero, 4
/* A99AC 800A8DAC 4620028D */  trunc.w.d  $f10, $f0
/* A99B0 800A8DB0 E7AA007C */  swc1       $f10, 0x7c($sp)
/* A99B4 800A8DB4 8FA80080 */  lw         $t0, 0x80($sp)
/* A99B8 800A8DB8 8FAF007C */  lw         $t7, 0x7c($sp)
/* A99BC 800A8DBC 3C01800D */  lui        $at, 0x800d
/* A99C0 800A8DC0 44889000 */  mtc1       $t0, $f18
/* A99C4 800A8DC4 000FC0C0 */  sll        $t8, $t7, 3
/* A99C8 800A8DC8 03B8C821 */  addu       $t9, $sp, $t8
/* A99CC 800A8DCC 468091A1 */  cvt.d.w    $f6, $f18
/* A99D0 800A8DD0 D730FFF8 */  ldc1       $f16, -8($t9)
/* A99D4 800A8DD4 D4283480 */  ldc1       $f8, 0x3480($at)
/* A99D8 800A8DD8 46268100 */  add.d      $f4, $f16, $f6
/* A99DC 800A8DDC 46282282 */  mul.d      $f10, $f4, $f8
/* A99E0 800A8DE0 F7AA00A0 */  sdc1       $f10, 0xa0($sp)
/* A99E4 800A8DE4 3C013FF0 */  lui        $at, 0x3ff0
/* A99E8 800A8DE8 44816800 */  mtc1       $at, $f13
/* A99EC 800A8DEC 44806000 */  mtc1       $zero, $f12
/* A99F0 800A8DF0 0C02A2FF */  jal        func_800A8BFC
/* A99F4 800A8DF4 2406001E */   addiu     $a2, $zero, 0x1e
/* A99F8 800A8DF8 D7B200A0 */  ldc1       $f18, 0xa0($sp)
/* A99FC 800A8DFC 46200506 */  mov.d      $f20, $f0
/* A9A00 800A8E00 46349403 */  div.d      $f16, $f18, $f20
/* A9A04 800A8E04 F7B000A0 */  sdc1       $f16, 0xa0($sp)
/* A9A08 800A8E08 3C013FF0 */  lui        $at, 0x3ff0
/* A9A0C 800A8E0C 44813800 */  mtc1       $at, $f7
/* A9A10 800A8E10 44803000 */  mtc1       $zero, $f6
/* A9A14 800A8E14 D7A400A0 */  ldc1       $f4, 0xa0($sp)
/* A9A18 800A8E18 46243200 */  add.d      $f8, $f6, $f4
/* A9A1C 800A8E1C F7A80090 */  sdc1       $f8, 0x90($sp)
/* A9A20 800A8E20 3C013FF0 */  lui        $at, 0x3ff0
/* A9A24 800A8E24 44815800 */  mtc1       $at, $f11
/* A9A28 800A8E28 44805000 */  mtc1       $zero, $f10
/* A9A2C 800A8E2C 00000000 */  nop
/* A9A30 800A8E30 F7AA0098 */  sdc1       $f10, 0x98($sp)
/* A9A34 800A8E34 8FAB0084 */  lw         $t3, 0x84($sp)
/* A9A38 800A8E38 11600012 */  beqz       $t3, .L800A8E84
/* A9A3C 800A8E3C 00000000 */   nop
.L800A8E40:
/* A9A40 800A8E40 8FAC0084 */  lw         $t4, 0x84($sp)
/* A9A44 800A8E44 318A0001 */  andi       $t2, $t4, 1
/* A9A48 800A8E48 11400005 */  beqz       $t2, .L800A8E60
/* A9A4C 800A8E4C 00000000 */   nop
/* A9A50 800A8E50 D7B20098 */  ldc1       $f18, 0x98($sp)
/* A9A54 800A8E54 D7B00090 */  ldc1       $f16, 0x90($sp)
/* A9A58 800A8E58 46309182 */  mul.d      $f6, $f18, $f16
/* A9A5C 800A8E5C F7A60098 */  sdc1       $f6, 0x98($sp)
.L800A8E60:
/* A9A60 800A8E60 D7A40090 */  ldc1       $f4, 0x90($sp)
/* A9A64 800A8E64 46242202 */  mul.d      $f8, $f4, $f4
/* A9A68 800A8E68 F7A80090 */  sdc1       $f8, 0x90($sp)
/* A9A6C 800A8E6C 8FA90084 */  lw         $t1, 0x84($sp)
/* A9A70 800A8E70 00096843 */  sra        $t5, $t1, 1
/* A9A74 800A8E74 AFAD0084 */  sw         $t5, 0x84($sp)
/* A9A78 800A8E78 8FAE0084 */  lw         $t6, 0x84($sp)
/* A9A7C 800A8E7C 15C0FFF0 */  bnez       $t6, .L800A8E40
/* A9A80 800A8E80 00000000 */   nop
.L800A8E84:
/* A9A84 800A8E84 D7AA0098 */  ldc1       $f10, 0x98($sp)
/* A9A88 800A8E88 462A5582 */  mul.d      $f22, $f10, $f10
/* A9A8C 800A8E8C F7B60098 */  sdc1       $f22, 0x98($sp)
/* A9A90 800A8E90 D7B20098 */  ldc1       $f18, 0x98($sp)
/* A9A94 800A8E94 46369502 */  mul.d      $f20, $f18, $f22
/* A9A98 800A8E98 F7B40098 */  sdc1       $f20, 0x98($sp)
/* A9A9C 800A8E9C D7B00098 */  ldc1       $f16, 0x98($sp)
/* A9AA0 800A8EA0 46348182 */  mul.d      $f6, $f16, $f20
/* A9AA4 800A8EA4 F7A60098 */  sdc1       $f6, 0x98($sp)
/* A9AA8 800A8EA8 D7A40098 */  ldc1       $f4, 0x98($sp)
/* A9AAC 800A8EAC 4620220D */  trunc.w.d  $f8, $f4
/* A9AB0 800A8EB0 44184000 */  mfc1       $t8, $f8
/* A9AB4 800A8EB4 00000000 */  nop
/* A9AB8 800A8EB8 A7B800B6 */  sh         $t8, 0xb6($sp)
/* A9ABC 800A8EBC 87B900B6 */  lh         $t9, 0xb6($sp)
/* A9AC0 800A8EC0 D7AA0098 */  ldc1       $f10, 0x98($sp)
/* A9AC4 800A8EC4 3C01800D */  lui        $at, %hi(D_800D3488)
/* A9AC8 800A8EC8 44999000 */  mtc1       $t9, $f18
/* A9ACC 800A8ECC D4283488 */  ldc1       $f8, %lo(D_800D3488)($at)
/* A9AD0 800A8ED0 8FA900CC */  lw         $t1, 0xcc($sp)
/* A9AD4 800A8ED4 46809420 */  cvt.s.w    $f16, $f18
/* A9AD8 800A8ED8 460081A1 */  cvt.d.s    $f6, $f16
/* A9ADC 800A8EDC 46265101 */  sub.d      $f4, $f10, $f6
/* A9AE0 800A8EE0 46282482 */  mul.d      $f18, $f4, $f8
/* A9AE4 800A8EE4 4620940D */  trunc.w.d  $f16, $f18
/* A9AE8 800A8EE8 440B8000 */  mfc1       $t3, $f16
/* A9AEC 800A8EEC 00000000 */  nop
/* A9AF0 800A8EF0 000B6400 */  sll        $t4, $t3, 0x10
/* A9AF4 800A8EF4 000C5403 */  sra        $t2, $t4, 0x10
/* A9AF8 800A8EF8 A52A0000 */  sh         $t2, ($t1)
/* A9AFC 800A8EFC D7AA0098 */  ldc1       $f10, 0x98($sp)
/* A9B00 800A8F00 4620518D */  trunc.w.d  $f6, $f10
/* A9B04 800A8F04 44023000 */  mfc1       $v0, $f6
/* A9B08 800A8F08 00000000 */  nop
/* A9B0C 800A8F0C 00027400 */  sll        $t6, $v0, 0x10
/* A9B10 800A8F10 01C01025 */  or         $v0, $t6, $zero
/* A9B14 800A8F14 00027C03 */  sra        $t7, $v0, 0x10
/* A9B18 800A8F18 10000003 */  b          .L800A8F28
/* A9B1C 800A8F1C 01E01025 */   or        $v0, $t7, $zero
/* A9B20 800A8F20 10000001 */  b          .L800A8F28
/* A9B24 800A8F24 00000000 */   nop
.L800A8F28:
/* A9B28 800A8F28 8FBF0024 */  lw         $ra, 0x24($sp)
/* A9B2C 800A8F2C D7B40010 */  ldc1       $f20, 0x10($sp)
/* A9B30 800A8F30 D7B60018 */  ldc1       $f22, 0x18($sp)
/* A9B34 800A8F34 03E00008 */  jr         $ra
/* A9B38 800A8F38 27BD00B8 */   addiu     $sp, $sp, 0xb8

glabel func_800A8F3C
/* A9B3C 800A8F3C 00063400 */  sll        $a2, $a2, 0x10
/* A9B40 800A8F40 00063403 */  sra        $a2, $a2, 0x10
/* A9B44 800A8F44 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* A9B48 800A8F48 30E7FFFF */  andi       $a3, $a3, 0xffff
/* A9B4C 800A8F4C 000570C3 */  sra        $t6, $a1, 3
/* A9B50 800A8F50 01C02825 */  or         $a1, $t6, $zero
/* A9B54 800A8F54 14A00003 */  bnez       $a1, .L800A8F64
/* A9B58 800A8F58 00000000 */   nop
/* A9B5C 800A8F5C 10000032 */  b          .L800A9028
/* A9B60 800A8F60 46006006 */   mov.s     $f0, $f12
.L800A8F64:
/* A9B64 800A8F64 00067C00 */  sll        $t7, $a2, 0x10
/* A9B68 800A8F68 448F2000 */  mtc1       $t7, $f4
/* A9B6C 800A8F6C 44874000 */  mtc1       $a3, $f8
/* A9B70 800A8F70 468021A0 */  cvt.s.w    $f6, $f4
/* A9B74 800A8F74 04E10005 */  bgez       $a3, .L800A8F8C
/* A9B78 800A8F78 468042A0 */   cvt.s.w   $f10, $f8
/* A9B7C 800A8F7C 3C014F80 */  lui        $at, 0x4f80
/* A9B80 800A8F80 44818000 */  mtc1       $at, $f16
/* A9B84 800A8F84 00000000 */  nop
/* A9B88 800A8F88 46105280 */  add.s      $f10, $f10, $f16
.L800A8F8C:
/* A9B8C 800A8F8C 460A3480 */  add.s      $f18, $f6, $f10
/* A9B90 800A8F90 3C014780 */  lui        $at, 0x4780
/* A9B94 800A8F94 44812000 */  mtc1       $at, $f4
/* A9B98 800A8F98 00000000 */  nop
/* A9B9C 800A8F9C 46049203 */  div.s      $f8, $f18, $f4
/* A9BA0 800A8FA0 E7A8000C */  swc1       $f8, 0xc($sp)
/* A9BA4 800A8FA4 3C013F80 */  lui        $at, 0x3f80
/* A9BA8 800A8FA8 44818000 */  mtc1       $at, $f16
/* A9BAC 800A8FAC 00000000 */  nop
/* A9BB0 800A8FB0 E7B00008 */  swc1       $f16, 8($sp)
/* A9BB4 800A8FB4 AFA00004 */  sw         $zero, 4($sp)
.L800A8FB8:
/* A9BB8 800A8FB8 30B80001 */  andi       $t8, $a1, 1
/* A9BBC 800A8FBC 13000005 */  beqz       $t8, .L800A8FD4
/* A9BC0 800A8FC0 00000000 */   nop
/* A9BC4 800A8FC4 C7A60008 */  lwc1       $f6, 8($sp)
/* A9BC8 800A8FC8 C7AA000C */  lwc1       $f10, 0xc($sp)
/* A9BCC 800A8FCC 460A3482 */  mul.s      $f18, $f6, $f10
/* A9BD0 800A8FD0 E7B20008 */  swc1       $f18, 8($sp)
.L800A8FD4:
/* A9BD4 800A8FD4 0005C843 */  sra        $t9, $a1, 1
/* A9BD8 800A8FD8 03202825 */  or         $a1, $t9, $zero
/* A9BDC 800A8FDC 14A00003 */  bnez       $a1, .L800A8FEC
/* A9BE0 800A8FE0 00000000 */   nop
/* A9BE4 800A8FE4 10000009 */  b          .L800A900C
/* A9BE8 800A8FE8 00000000 */   nop
.L800A8FEC:
/* A9BEC 800A8FEC C7A4000C */  lwc1       $f4, 0xc($sp)
/* A9BF0 800A8FF0 46042202 */  mul.s      $f8, $f4, $f4
/* A9BF4 800A8FF4 E7A8000C */  swc1       $f8, 0xc($sp)
/* A9BF8 800A8FF8 8FA80004 */  lw         $t0, 4($sp)
/* A9BFC 800A8FFC 25090001 */  addiu      $t1, $t0, 1
/* A9C00 800A9000 29210020 */  slti       $at, $t1, 0x20
/* A9C04 800A9004 1420FFEC */  bnez       $at, .L800A8FB8
/* A9C08 800A9008 AFA90004 */   sw        $t1, 4($sp)
.L800A900C:
/* A9C0C 800A900C C7B00008 */  lwc1       $f16, 8($sp)
/* A9C10 800A9010 46106302 */  mul.s      $f12, $f12, $f16
/* A9C14 800A9014 00000000 */  nop
/* A9C18 800A9018 10000003 */  b          .L800A9028
/* A9C1C 800A901C 46006006 */   mov.s     $f0, $f12
/* A9C20 800A9020 10000001 */  b          .L800A9028
/* A9C24 800A9024 00000000 */   nop
.L800A9028:
/* A9C28 800A9028 03E00008 */  jr         $ra
/* A9C2C 800A902C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800A9030
/* A9C30 800A9030 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A9C34 800A9034 AFBF001C */  sw         $ra, 0x1c($sp)
/* A9C38 800A9038 AFA40048 */  sw         $a0, 0x48($sp)
/* A9C3C 800A903C AFA5004C */  sw         $a1, 0x4c($sp)
/* A9C40 800A9040 AFA60050 */  sw         $a2, 0x50($sp)
/* A9C44 800A9044 AFA70054 */  sw         $a3, 0x54($sp)
/* A9C48 800A9048 8FAE0048 */  lw         $t6, 0x48($sp)
/* A9C4C 800A904C AFAE0044 */  sw         $t6, 0x44($sp)
/* A9C50 800A9050 8FAF0058 */  lw         $t7, 0x58($sp)
/* A9C54 800A9054 AFAF0040 */  sw         $t7, 0x40($sp)
/* A9C58 800A9058 8FB80044 */  lw         $t8, 0x44($sp)
/* A9C5C 800A905C 8F190000 */  lw         $t9, ($t8)
/* A9C60 800A9060 AFB90034 */  sw         $t9, 0x34($sp)
/* A9C64 800A9064 24080140 */  addiu      $t0, $zero, 0x140
/* A9C68 800A9068 A7A8003E */  sh         $t0, 0x3e($sp)
/* A9C6C 800A906C 8FA90050 */  lw         $t1, 0x50($sp)
/* A9C70 800A9070 15200003 */  bnez       $t1, .L800A9080
/* A9C74 800A9074 00000000 */   nop
/* A9C78 800A9078 1000009D */  b          .L800A92F0
/* A9C7C 800A907C 8FA20040 */   lw        $v0, 0x40($sp)
.L800A9080:
/* A9C80 800A9080 8FAA0044 */  lw         $t2, 0x44($sp)
/* A9C84 800A9084 8D4B001C */  lw         $t3, 0x1c($t2)
/* A9C88 800A9088 11600023 */  beqz       $t3, .L800A9118
/* A9C8C 800A908C 00000000 */   nop
/* A9C90 800A9090 8FAD0058 */  lw         $t5, 0x58($sp)
/* A9C94 800A9094 8FAC0034 */  lw         $t4, 0x34($sp)
/* A9C98 800A9098 27A5003E */  addiu      $a1, $sp, 0x3e
/* A9C9C 800A909C AFAD0010 */  sw         $t5, 0x10($sp)
/* A9CA0 800A90A0 8D990004 */  lw         $t9, 4($t4)
/* A9CA4 800A90A4 8FA60050 */  lw         $a2, 0x50($sp)
/* A9CA8 800A90A8 8FA70054 */  lw         $a3, 0x54($sp)
/* A9CAC 800A90AC 0320F809 */  jalr       $t9
/* A9CB0 800A90B0 01802025 */   or        $a0, $t4, $zero
/* A9CB4 800A90B4 AFA20040 */  sw         $v0, 0x40($sp)
/* A9CB8 800A90B8 8FAE0040 */  lw         $t6, 0x40($sp)
/* A9CBC 800A90BC 25CF0008 */  addiu      $t7, $t6, 8
/* A9CC0 800A90C0 AFAF0040 */  sw         $t7, 0x40($sp)
/* A9CC4 800A90C4 AFAE0028 */  sw         $t6, 0x28($sp)
/* A9CC8 800A90C8 87B8003E */  lh         $t8, 0x3e($sp)
/* A9CCC 800A90CC 3C0100FF */  lui        $at, 0xff
/* A9CD0 800A90D0 3421FFFF */  ori        $at, $at, 0xffff
/* A9CD4 800A90D4 8FAA0028 */  lw         $t2, 0x28($sp)
/* A9CD8 800A90D8 03014024 */  and        $t0, $t8, $at
/* A9CDC 800A90DC 3C010A00 */  lui        $at, 0xa00
/* A9CE0 800A90E0 01014825 */  or         $t1, $t0, $at
/* A9CE4 800A90E4 AD490000 */  sw         $t1, ($t2)
/* A9CE8 800A90E8 8FAB004C */  lw         $t3, 0x4c($sp)
/* A9CEC 800A90EC 8FAE0050 */  lw         $t6, 0x50($sp)
/* A9CF0 800A90F0 8FA90028 */  lw         $t1, 0x28($sp)
/* A9CF4 800A90F4 856D0000 */  lh         $t5, ($t3)
/* A9CF8 800A90F8 000E7840 */  sll        $t7, $t6, 1
/* A9CFC 800A90FC 31F8FFFF */  andi       $t8, $t7, 0xffff
/* A9D00 800A9100 31ACFFFF */  andi       $t4, $t5, 0xffff
/* A9D04 800A9104 000CCC00 */  sll        $t9, $t4, 0x10
/* A9D08 800A9108 03384025 */  or         $t0, $t9, $t8
/* A9D0C 800A910C AD280004 */  sw         $t0, 4($t1)
/* A9D10 800A9110 10000073 */  b          .L800A92E0
/* A9D14 800A9114 00000000 */   nop
.L800A9118:
/* A9D18 800A9118 8FAA0044 */  lw         $t2, 0x44($sp)
/* A9D1C 800A911C 3C01800D */  lui        $at, %hi(D_800D3490)
/* A9D20 800A9120 D4283490 */  ldc1       $f8, %lo(D_800D3490)($at)
/* A9D24 800A9124 C5440018 */  lwc1       $f4, 0x18($t2)
/* A9D28 800A9128 460021A1 */  cvt.d.s    $f6, $f4
/* A9D2C 800A912C 4626403C */  c.lt.d     $f8, $f6
/* A9D30 800A9130 00000000 */  nop
/* A9D34 800A9134 45000005 */  bc1f       .L800A914C
/* A9D38 800A9138 00000000 */   nop
/* A9D3C 800A913C 3C01800D */  lui        $at, %hi(D_800D3498)
/* A9D40 800A9140 C42A3498 */  lwc1       $f10, %lo(D_800D3498)($at)
/* A9D44 800A9144 8FAB0044 */  lw         $t3, 0x44($sp)
/* A9D48 800A9148 E56A0018 */  swc1       $f10, 0x18($t3)
.L800A914C:
/* A9D4C 800A914C 8FAD0044 */  lw         $t5, 0x44($sp)
/* A9D50 800A9150 3C014700 */  lui        $at, 0x4700
/* A9D54 800A9154 44819000 */  mtc1       $at, $f18
/* A9D58 800A9158 C5B00018 */  lwc1       $f16, 0x18($t5)
/* A9D5C 800A915C 46128102 */  mul.s      $f4, $f16, $f18
/* A9D60 800A9160 4600218D */  trunc.w.s  $f6, $f4
/* A9D64 800A9164 440E3000 */  mfc1       $t6, $f6
/* A9D68 800A9168 00000000 */  nop
/* A9D6C 800A916C 448E4000 */  mtc1       $t6, $f8
/* A9D70 800A9170 00000000 */  nop
/* A9D74 800A9174 468042A0 */  cvt.s.w    $f10, $f8
/* A9D78 800A9178 E5AA0018 */  swc1       $f10, 0x18($t5)
/* A9D7C 800A917C 8FAF0044 */  lw         $t7, 0x44($sp)
/* A9D80 800A9180 3C014700 */  lui        $at, 0x4700
/* A9D84 800A9184 44819000 */  mtc1       $at, $f18
/* A9D88 800A9188 C5F00018 */  lwc1       $f16, 0x18($t7)
/* A9D8C 800A918C 46128103 */  div.s      $f4, $f16, $f18
/* A9D90 800A9190 E5E40018 */  swc1       $f4, 0x18($t7)
/* A9D94 800A9194 8FB80050 */  lw         $t8, 0x50($sp)
/* A9D98 800A9198 8FB90044 */  lw         $t9, 0x44($sp)
/* A9D9C 800A919C 44984000 */  mtc1       $t8, $f8
/* A9DA0 800A91A0 C7260018 */  lwc1       $f6, 0x18($t9)
/* A9DA4 800A91A4 C7320020 */  lwc1       $f18, 0x20($t9)
/* A9DA8 800A91A8 468042A0 */  cvt.s.w    $f10, $f8
/* A9DAC 800A91AC 460A3402 */  mul.s      $f16, $f6, $f10
/* A9DB0 800A91B0 46109100 */  add.s      $f4, $f18, $f16
/* A9DB4 800A91B4 E7A4002C */  swc1       $f4, 0x2c($sp)
/* A9DB8 800A91B8 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* A9DBC 800A91BC 4600418D */  trunc.w.s  $f6, $f8
/* A9DC0 800A91C0 44093000 */  mfc1       $t1, $f6
/* A9DC4 800A91C4 00000000 */  nop
/* A9DC8 800A91C8 AFA90038 */  sw         $t1, 0x38($sp)
/* A9DCC 800A91CC 8FAA0038 */  lw         $t2, 0x38($sp)
/* A9DD0 800A91D0 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* A9DD4 800A91D4 8FAB0044 */  lw         $t3, 0x44($sp)
/* A9DD8 800A91D8 448A9000 */  mtc1       $t2, $f18
/* A9DDC 800A91DC 00000000 */  nop
/* A9DE0 800A91E0 46809420 */  cvt.s.w    $f16, $f18
/* A9DE4 800A91E4 46105101 */  sub.s      $f4, $f10, $f16
/* A9DE8 800A91E8 E5640020 */  swc1       $f4, 0x20($t3)
/* A9DEC 800A91EC 8FAE0058 */  lw         $t6, 0x58($sp)
/* A9DF0 800A91F0 8FAC0034 */  lw         $t4, 0x34($sp)
/* A9DF4 800A91F4 27A5003E */  addiu      $a1, $sp, 0x3e
/* A9DF8 800A91F8 AFAE0010 */  sw         $t6, 0x10($sp)
/* A9DFC 800A91FC 8D990004 */  lw         $t9, 4($t4)
/* A9E00 800A9200 8FA60038 */  lw         $a2, 0x38($sp)
/* A9E04 800A9204 8FA70054 */  lw         $a3, 0x54($sp)
/* A9E08 800A9208 0320F809 */  jalr       $t9
/* A9E0C 800A920C 01802025 */   or        $a0, $t4, $zero
/* A9E10 800A9210 AFA20040 */  sw         $v0, 0x40($sp)
/* A9E14 800A9214 8FAD0044 */  lw         $t5, 0x44($sp)
/* A9E18 800A9218 3C014700 */  lui        $at, 0x4700
/* A9E1C 800A921C 44813000 */  mtc1       $at, $f6
/* A9E20 800A9220 C5A80018 */  lwc1       $f8, 0x18($t5)
/* A9E24 800A9224 46064482 */  mul.s      $f18, $f8, $f6
/* A9E28 800A9228 4600928D */  trunc.w.s  $f10, $f18
/* A9E2C 800A922C 44185000 */  mfc1       $t8, $f10
/* A9E30 800A9230 00000000 */  nop
/* A9E34 800A9234 AFB80030 */  sw         $t8, 0x30($sp)
/* A9E38 800A9238 8FA80040 */  lw         $t0, 0x40($sp)
/* A9E3C 800A923C 25090008 */  addiu      $t1, $t0, 8
/* A9E40 800A9240 AFA90040 */  sw         $t1, 0x40($sp)
/* A9E44 800A9244 AFA80024 */  sw         $t0, 0x24($sp)
/* A9E48 800A9248 87AA003E */  lh         $t2, 0x3e($sp)
/* A9E4C 800A924C 8FAC0024 */  lw         $t4, 0x24($sp)
/* A9E50 800A9250 3C010800 */  lui        $at, 0x800
/* A9E54 800A9254 314BFFFF */  andi       $t3, $t2, 0xffff
/* A9E58 800A9258 01617025 */  or         $t6, $t3, $at
/* A9E5C 800A925C AD8E0000 */  sw         $t6, ($t4)
/* A9E60 800A9260 8FB9004C */  lw         $t9, 0x4c($sp)
/* A9E64 800A9264 8FA80050 */  lw         $t0, 0x50($sp)
/* A9E68 800A9268 8FAE0024 */  lw         $t6, 0x24($sp)
/* A9E6C 800A926C 872D0000 */  lh         $t5, ($t9)
/* A9E70 800A9270 00084840 */  sll        $t1, $t0, 1
/* A9E74 800A9274 312AFFFF */  andi       $t2, $t1, 0xffff
/* A9E78 800A9278 31AFFFFF */  andi       $t7, $t5, 0xffff
/* A9E7C 800A927C 000FC400 */  sll        $t8, $t7, 0x10
/* A9E80 800A9280 030A5825 */  or         $t3, $t8, $t2
/* A9E84 800A9284 ADCB0004 */  sw         $t3, 4($t6)
/* A9E88 800A9288 8FAC0040 */  lw         $t4, 0x40($sp)
/* A9E8C 800A928C 25990008 */  addiu      $t9, $t4, 8
/* A9E90 800A9290 AFB90040 */  sw         $t9, 0x40($sp)
/* A9E94 800A9294 AFAC0020 */  sw         $t4, 0x20($sp)
/* A9E98 800A9298 8FAD0044 */  lw         $t5, 0x44($sp)
/* A9E9C 800A929C 8FAA0030 */  lw         $t2, 0x30($sp)
/* A9EA0 800A92A0 8FAC0020 */  lw         $t4, 0x20($sp)
/* A9EA4 800A92A4 8DAF0024 */  lw         $t7, 0x24($t5)
/* A9EA8 800A92A8 3C010500 */  lui        $at, 0x500
/* A9EAC 800A92AC 314BFFFF */  andi       $t3, $t2, 0xffff
/* A9EB0 800A92B0 31E800FF */  andi       $t0, $t7, 0xff
/* A9EB4 800A92B4 00084C00 */  sll        $t1, $t0, 0x10
/* A9EB8 800A92B8 0121C025 */  or         $t8, $t1, $at
/* A9EBC 800A92BC 030B7025 */  or         $t6, $t8, $t3
/* A9EC0 800A92C0 AD8E0000 */  sw         $t6, ($t4)
/* A9EC4 800A92C4 8FB90044 */  lw         $t9, 0x44($sp)
/* A9EC8 800A92C8 0C027C0C */  jal        func_8009F030
/* A9ECC 800A92CC 8F240014 */   lw        $a0, 0x14($t9)
/* A9ED0 800A92D0 8FAD0020 */  lw         $t5, 0x20($sp)
/* A9ED4 800A92D4 ADA20004 */  sw         $v0, 4($t5)
/* A9ED8 800A92D8 8FAF0044 */  lw         $t7, 0x44($sp)
/* A9EDC 800A92DC ADE00024 */  sw         $zero, 0x24($t7)
.L800A92E0:
/* A9EE0 800A92E0 10000003 */  b          .L800A92F0
/* A9EE4 800A92E4 8FA20040 */   lw        $v0, 0x40($sp)
/* A9EE8 800A92E8 10000001 */  b          .L800A92F0
/* A9EEC 800A92EC 00000000 */   nop
.L800A92F0:
/* A9EF0 800A92F0 8FBF001C */  lw         $ra, 0x1c($sp)
/* A9EF4 800A92F4 27BD0048 */  addiu      $sp, $sp, 0x48
/* A9EF8 800A92F8 03E00008 */  jr         $ra
/* A9EFC 800A92FC 00000000 */   nop

glabel func_800A9300
/* A9F00 800A9300 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A9F04 800A9304 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9F08 800A9308 AFA40028 */  sw         $a0, 0x28($sp)
/* A9F0C 800A930C AFA5002C */  sw         $a1, 0x2c($sp)
/* A9F10 800A9310 AFA60030 */  sw         $a2, 0x30($sp)
/* A9F14 800A9314 8FAE0028 */  lw         $t6, 0x28($sp)
/* A9F18 800A9318 AFAE0024 */  sw         $t6, 0x24($sp)
/* A9F1C 800A931C 8FAF0028 */  lw         $t7, 0x28($sp)
/* A9F20 800A9320 AFAF0020 */  sw         $t7, 0x20($sp)
/* A9F24 800A9324 8FB8002C */  lw         $t8, 0x2c($sp)
/* A9F28 800A9328 2719FFFF */  addiu      $t9, $t8, -1
/* A9F2C 800A932C 2F210009 */  sltiu      $at, $t9, 9
/* A9F30 800A9330 10200041 */  beqz       $at, .L800A9438
/* A9F34 800A9334 00000000 */   nop
/* A9F38 800A9338 0019C880 */  sll        $t9, $t9, 2
/* A9F3C 800A933C 3C01800D */  lui        $at, %hi(D_800D349C)
/* A9F40 800A9340 00390821 */  addu       $at, $at, $t9
/* A9F44 800A9344 8C39349C */  lw         $t9, %lo(D_800D349C)($at)
/* A9F48 800A9348 03200008 */  jr         $t9
/* A9F4C 800A934C 00000000 */   nop
/* A9F50 800A9350 8FA80030 */  lw         $t0, 0x30($sp)
/* A9F54 800A9354 8FA90024 */  lw         $t1, 0x24($sp)
/* A9F58 800A9358 AD280000 */  sw         $t0, ($t1)
/* A9F5C 800A935C 10000044 */  b          .L800A9470
/* A9F60 800A9360 00000000 */   nop
/* A9F64 800A9364 44802000 */  mtc1       $zero, $f4
/* A9F68 800A9368 8FAA0020 */  lw         $t2, 0x20($sp)
/* A9F6C 800A936C E5440020 */  swc1       $f4, 0x20($t2)
/* A9F70 800A9370 8FAC0020 */  lw         $t4, 0x20($sp)
/* A9F74 800A9374 240B0001 */  addiu      $t3, $zero, 1
/* A9F78 800A9378 AD8B0024 */  sw         $t3, 0x24($t4)
/* A9F7C 800A937C 8FAD0020 */  lw         $t5, 0x20($sp)
/* A9F80 800A9380 ADA00030 */  sw         $zero, 0x30($t5)
/* A9F84 800A9384 8FAE0020 */  lw         $t6, 0x20($sp)
/* A9F88 800A9388 ADC0001C */  sw         $zero, 0x1c($t6)
/* A9F8C 800A938C 8FAF0024 */  lw         $t7, 0x24($sp)
/* A9F90 800A9390 8DF80000 */  lw         $t8, ($t7)
/* A9F94 800A9394 13000009 */  beqz       $t8, .L800A93BC
/* A9F98 800A9398 00000000 */   nop
/* A9F9C 800A939C 8FB90024 */  lw         $t9, 0x24($sp)
/* A9FA0 800A93A0 24050004 */  addiu      $a1, $zero, 4
/* A9FA4 800A93A4 00003025 */  or         $a2, $zero, $zero
/* A9FA8 800A93A8 8F280000 */  lw         $t0, ($t9)
/* A9FAC 800A93AC 8D190008 */  lw         $t9, 8($t0)
/* A9FB0 800A93B0 01002025 */  or         $a0, $t0, $zero
/* A9FB4 800A93B4 0320F809 */  jalr       $t9
/* A9FB8 800A93B8 00000000 */   nop
.L800A93BC:
/* A9FBC 800A93BC 1000002C */  b          .L800A9470
/* A9FC0 800A93C0 00000000 */   nop
/* A9FC4 800A93C4 8FAA0020 */  lw         $t2, 0x20($sp)
/* A9FC8 800A93C8 24090001 */  addiu      $t1, $zero, 1
/* A9FCC 800A93CC AD490030 */  sw         $t1, 0x30($t2)
/* A9FD0 800A93D0 8FAB0024 */  lw         $t3, 0x24($sp)
/* A9FD4 800A93D4 8D6C0000 */  lw         $t4, ($t3)
/* A9FD8 800A93D8 11800009 */  beqz       $t4, .L800A9400
/* A9FDC 800A93DC 00000000 */   nop
/* A9FE0 800A93E0 8FAD0024 */  lw         $t5, 0x24($sp)
/* A9FE4 800A93E4 24050009 */  addiu      $a1, $zero, 9
/* A9FE8 800A93E8 00003025 */  or         $a2, $zero, $zero
/* A9FEC 800A93EC 8DAE0000 */  lw         $t6, ($t5)
/* A9FF0 800A93F0 8DD90008 */  lw         $t9, 8($t6)
/* A9FF4 800A93F4 01C02025 */  or         $a0, $t6, $zero
/* A9FF8 800A93F8 0320F809 */  jalr       $t9
/* A9FFC 800A93FC 00000000 */   nop
.L800A9400:
/* AA000 800A9400 1000001B */  b          .L800A9470
/* AA004 800A9404 00000000 */   nop
/* AA008 800A9408 8FAF0030 */  lw         $t7, 0x30($sp)
/* AA00C 800A940C AFAF001C */  sw         $t7, 0x1c($sp)
/* AA010 800A9410 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* AA014 800A9414 8FB80020 */  lw         $t8, 0x20($sp)
/* AA018 800A9418 E7060018 */  swc1       $f6, 0x18($t8)
/* AA01C 800A941C 10000014 */  b          .L800A9470
/* AA020 800A9420 00000000 */   nop
/* AA024 800A9424 8FA90020 */  lw         $t1, 0x20($sp)
/* AA028 800A9428 24080001 */  addiu      $t0, $zero, 1
/* AA02C 800A942C AD28001C */  sw         $t0, 0x1c($t1)
/* AA030 800A9430 1000000F */  b          .L800A9470
/* AA034 800A9434 00000000 */   nop
.L800A9438:
/* AA038 800A9438 8FAA0024 */  lw         $t2, 0x24($sp)
/* AA03C 800A943C 8D4B0000 */  lw         $t3, ($t2)
/* AA040 800A9440 11600009 */  beqz       $t3, .L800A9468
/* AA044 800A9444 00000000 */   nop
/* AA048 800A9448 8FAC0024 */  lw         $t4, 0x24($sp)
/* AA04C 800A944C 8FA5002C */  lw         $a1, 0x2c($sp)
/* AA050 800A9450 8FA60030 */  lw         $a2, 0x30($sp)
/* AA054 800A9454 8D8D0000 */  lw         $t5, ($t4)
/* AA058 800A9458 8DB90008 */  lw         $t9, 8($t5)
/* AA05C 800A945C 01A02025 */  or         $a0, $t5, $zero
/* AA060 800A9460 0320F809 */  jalr       $t9
/* AA064 800A9464 00000000 */   nop
.L800A9468:
/* AA068 800A9468 10000001 */  b          .L800A9470
/* AA06C 800A946C 00000000 */   nop
.L800A9470:
/* AA070 800A9470 10000003 */  b          .L800A9480
/* AA074 800A9474 00001025 */   or        $v0, $zero, $zero
/* AA078 800A9478 10000001 */  b          .L800A9480
/* AA07C 800A947C 00000000 */   nop
.L800A9480:
/* AA080 800A9480 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA084 800A9484 27BD0028 */  addiu      $sp, $sp, 0x28
/* AA088 800A9488 03E00008 */  jr         $ra
/* AA08C 800A948C 00000000 */   nop

glabel func_800A9490
/* AA090 800A9490 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* AA094 800A9494 AFBF0014 */  sw         $ra, 0x14($sp)
/* AA098 800A9498 AFA40048 */  sw         $a0, 0x48($sp)
/* AA09C 800A949C AFA5004C */  sw         $a1, 0x4c($sp)
/* AA0A0 800A94A0 AFA60050 */  sw         $a2, 0x50($sp)
/* AA0A4 800A94A4 AFA70054 */  sw         $a3, 0x54($sp)
/* AA0A8 800A94A8 AFA0001C */  sw         $zero, 0x1c($sp)
/* AA0AC 800A94AC 0C0290BF */  jal        func_800A42FC
/* AA0B0 800A94B0 8FA40048 */   lw        $a0, 0x48($sp)
/* AA0B4 800A94B4 24010002 */  addiu      $at, $zero, 2
/* AA0B8 800A94B8 14410003 */  bne        $v0, $at, .L800A94C8
/* AA0BC 800A94BC 00000000 */   nop
/* AA0C0 800A94C0 10000061 */  b          .L800A9648
/* AA0C4 800A94C4 24020002 */   addiu     $v0, $zero, 2
.L800A94C8:
/* AA0C8 800A94C8 8FAE0048 */  lw         $t6, 0x48($sp)
/* AA0CC 800A94CC AFA00044 */  sw         $zero, 0x44($sp)
/* AA0D0 800A94D0 8DCF0050 */  lw         $t7, 0x50($t6)
/* AA0D4 800A94D4 19E00055 */  blez       $t7, .L800A962C
/* AA0D8 800A94D8 00000000 */   nop
.L800A94DC:
/* AA0DC 800A94DC 8FB80048 */  lw         $t8, 0x48($sp)
/* AA0E0 800A94E0 8FA80044 */  lw         $t0, 0x44($sp)
/* AA0E4 800A94E4 27A70020 */  addiu      $a3, $sp, 0x20
/* AA0E8 800A94E8 8F19005C */  lw         $t9, 0x5c($t8)
/* AA0EC 800A94EC 8F040004 */  lw         $a0, 4($t8)
/* AA0F0 800A94F0 8F050008 */  lw         $a1, 8($t8)
/* AA0F4 800A94F4 0C02E3D8 */  jal        func_800B8F60
/* AA0F8 800A94F8 03283021 */   addu      $a2, $t9, $t0
/* AA0FC 800A94FC AFA2001C */  sw         $v0, 0x1c($sp)
/* AA100 800A9500 8FA9001C */  lw         $t1, 0x1c($sp)
/* AA104 800A9504 11200003 */  beqz       $t1, .L800A9514
/* AA108 800A9508 00000000 */   nop
/* AA10C 800A950C 1000004E */  b          .L800A9648
/* AA110 800A9510 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A9514:
/* AA114 800A9514 97AA0024 */  lhu        $t2, 0x24($sp)
/* AA118 800A9518 97AB004E */  lhu        $t3, 0x4e($sp)
/* AA11C 800A951C 154B003B */  bne        $t2, $t3, .L800A960C
/* AA120 800A9520 00000000 */   nop
/* AA124 800A9524 8FAC0020 */  lw         $t4, 0x20($sp)
/* AA128 800A9528 8FAD0050 */  lw         $t5, 0x50($sp)
/* AA12C 800A952C 158D0037 */  bne        $t4, $t5, .L800A960C
/* AA130 800A9530 00000000 */   nop
/* AA134 800A9534 AFA00018 */  sw         $zero, 0x18($sp)
/* AA138 800A9538 8FAE0054 */  lw         $t6, 0x54($sp)
/* AA13C 800A953C 11C00013 */  beqz       $t6, .L800A958C
/* AA140 800A9540 00000000 */   nop
/* AA144 800A9544 AFA00040 */  sw         $zero, 0x40($sp)
.L800A9548:
/* AA148 800A9548 8FB80040 */  lw         $t8, 0x40($sp)
/* AA14C 800A954C 8FAF0054 */  lw         $t7, 0x54($sp)
/* AA150 800A9550 03B84821 */  addu       $t1, $sp, $t8
/* AA154 800A9554 01F8C821 */  addu       $t9, $t7, $t8
/* AA158 800A9558 93280000 */  lbu        $t0, ($t9)
/* AA15C 800A955C 91290030 */  lbu        $t1, 0x30($t1)
/* AA160 800A9560 11090005 */  beq        $t0, $t1, .L800A9578
/* AA164 800A9564 00000000 */   nop
/* AA168 800A9568 240A0001 */  addiu      $t2, $zero, 1
/* AA16C 800A956C AFAA0018 */  sw         $t2, 0x18($sp)
/* AA170 800A9570 10000006 */  b          .L800A958C
/* AA174 800A9574 00000000 */   nop
.L800A9578:
/* AA178 800A9578 8FAB0040 */  lw         $t3, 0x40($sp)
/* AA17C 800A957C 256C0001 */  addiu      $t4, $t3, 1
/* AA180 800A9580 29810010 */  slti       $at, $t4, 0x10
/* AA184 800A9584 1420FFF0 */  bnez       $at, .L800A9548
/* AA188 800A9588 AFAC0040 */   sw        $t4, 0x40($sp)
.L800A958C:
/* AA18C 800A958C 8FAD0058 */  lw         $t5, 0x58($sp)
/* AA190 800A9590 11A00016 */  beqz       $t5, .L800A95EC
/* AA194 800A9594 00000000 */   nop
/* AA198 800A9598 8FAE0018 */  lw         $t6, 0x18($sp)
/* AA19C 800A959C 15C00013 */  bnez       $t6, .L800A95EC
/* AA1A0 800A95A0 00000000 */   nop
/* AA1A4 800A95A4 AFA00040 */  sw         $zero, 0x40($sp)
.L800A95A8:
/* AA1A8 800A95A8 8FB90040 */  lw         $t9, 0x40($sp)
/* AA1AC 800A95AC 8FAF0058 */  lw         $t7, 0x58($sp)
/* AA1B0 800A95B0 03B94821 */  addu       $t1, $sp, $t9
/* AA1B4 800A95B4 01F9C021 */  addu       $t8, $t7, $t9
/* AA1B8 800A95B8 93080000 */  lbu        $t0, ($t8)
/* AA1BC 800A95BC 9129002C */  lbu        $t1, 0x2c($t1)
/* AA1C0 800A95C0 11090005 */  beq        $t0, $t1, .L800A95D8
/* AA1C4 800A95C4 00000000 */   nop
/* AA1C8 800A95C8 240A0001 */  addiu      $t2, $zero, 1
/* AA1CC 800A95CC AFAA0018 */  sw         $t2, 0x18($sp)
/* AA1D0 800A95D0 10000006 */  b          .L800A95EC
/* AA1D4 800A95D4 00000000 */   nop
.L800A95D8:
/* AA1D8 800A95D8 8FAB0040 */  lw         $t3, 0x40($sp)
/* AA1DC 800A95DC 256C0001 */  addiu      $t4, $t3, 1
/* AA1E0 800A95E0 29810004 */  slti       $at, $t4, 4
/* AA1E4 800A95E4 1420FFF0 */  bnez       $at, .L800A95A8
/* AA1E8 800A95E8 AFAC0040 */   sw        $t4, 0x40($sp)
.L800A95EC:
/* AA1EC 800A95EC 8FAD0018 */  lw         $t5, 0x18($sp)
/* AA1F0 800A95F0 15A00006 */  bnez       $t5, .L800A960C
/* AA1F4 800A95F4 00000000 */   nop
/* AA1F8 800A95F8 8FAE0044 */  lw         $t6, 0x44($sp)
/* AA1FC 800A95FC 8FAF005C */  lw         $t7, 0x5c($sp)
/* AA200 800A9600 ADEE0000 */  sw         $t6, ($t7)
/* AA204 800A9604 10000010 */  b          .L800A9648
/* AA208 800A9608 8FA2001C */   lw        $v0, 0x1c($sp)
.L800A960C:
/* AA20C 800A960C 8FB80044 */  lw         $t8, 0x44($sp)
/* AA210 800A9610 8FA80048 */  lw         $t0, 0x48($sp)
/* AA214 800A9614 27190001 */  addiu      $t9, $t8, 1
/* AA218 800A9618 AFB90044 */  sw         $t9, 0x44($sp)
/* AA21C 800A961C 8D090050 */  lw         $t1, 0x50($t0)
/* AA220 800A9620 0329082A */  slt        $at, $t9, $t1
/* AA224 800A9624 1420FFAD */  bnez       $at, .L800A94DC
/* AA228 800A9628 00000000 */   nop
.L800A962C:
/* AA22C 800A962C 8FAB005C */  lw         $t3, 0x5c($sp)
/* AA230 800A9630 240AFFFF */  addiu      $t2, $zero, -1
/* AA234 800A9634 AD6A0000 */  sw         $t2, ($t3)
/* AA238 800A9638 10000003 */  b          .L800A9648
/* AA23C 800A963C 24020005 */   addiu     $v0, $zero, 5
/* AA240 800A9640 10000001 */  b          .L800A9648
/* AA244 800A9644 00000000 */   nop
.L800A9648:
/* AA248 800A9648 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA24C 800A964C 27BD0048 */  addiu      $sp, $sp, 0x48
/* AA250 800A9650 03E00008 */  jr         $ra
/* AA254 800A9654 00000000 */   nop
/* AA258 800A9658 00000000 */  nop
/* AA25C 800A965C 00000000 */  nop
