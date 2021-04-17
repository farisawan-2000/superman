.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80000F70
/* 1B70 80000F70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B74 80000F74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B78 80000F78 3C04800E */  lui        $a0, %hi(D_800DBF20)
/* 1B7C 80000F7C 3C05800E */  lui        $a1, %hi(D_800DBF38)
/* 1B80 80000F80 24A5BF38 */  addiu      $a1, $a1, %lo(D_800DBF38)
/* 1B84 80000F84 2484BF20 */  addiu      $a0, $a0, %lo(D_800DBF20)
/* 1B88 80000F88 0C02B42C */  jal        func_800AD0B0
/* 1B8C 80000F8C 24060001 */   addiu     $a2, $zero, 1
/* 1B90 80000F90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B94 80000F94 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B98 80000F98 03E00008 */  jr         $ra
/* 1B9C 80000F9C 00000000 */   nop

glabel func_80000FA0
/* 1BA0 80000FA0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1BA4 80000FA4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1BA8 80000FA8 AFA40048 */  sw         $a0, 0x48($sp)
/* 1BAC 80000FAC AFA5004C */  sw         $a1, 0x4c($sp)
/* 1BB0 80000FB0 AFA60050 */  sw         $a2, 0x50($sp)
/* 1BB4 80000FB4 8FAE0050 */  lw         $t6, 0x50($sp)
/* 1BB8 80000FB8 3401F000 */  ori        $at, $zero, 0xf000
/* 1BBC 80000FBC 01C1082B */  sltu       $at, $t6, $at
/* 1BC0 80000FC0 14200005 */  bnez       $at, .L80000FD8
/* 1BC4 80000FC4 00000000 */   nop
/* 1BC8 80000FC8 3C0F800C */  lui        $t7, %hi(D_800BBF40)
/* 1BCC 80000FCC 85EFBF40 */  lh         $t7, %lo(D_800BBF40)($t7)
/* 1BD0 80000FD0 15E00018 */  bnez       $t7, .L80001034
/* 1BD4 80000FD4 00000000 */   nop
.L80000FD8:
/* 1BD8 80000FD8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 1BDC 80000FDC 0C02B474 */  jal        func_800AD1D0
/* 1BE0 80000FE0 8FA50050 */   lw        $a1, 0x50($sp)
/* 1BE4 80000FE4 8FB8004C */  lw         $t8, 0x4c($sp)
/* 1BE8 80000FE8 8FB90050 */  lw         $t9, 0x50($sp)
/* 1BEC 80000FEC 3C08800E */  lui        $t0, %hi(D_800DBF20)
/* 1BF0 80000FF0 2508BF20 */  addiu      $t0, $t0, %lo(D_800DBF20)
/* 1BF4 80000FF4 AFA80018 */  sw         $t0, 0x18($sp)
/* 1BF8 80000FF8 27A40030 */  addiu      $a0, $sp, 0x30
/* 1BFC 80000FFC 00002825 */  or         $a1, $zero, $zero
/* 1C00 80001000 00003025 */  or         $a2, $zero, $zero
/* 1C04 80001004 8FA70048 */  lw         $a3, 0x48($sp)
/* 1C08 80001008 AFB80010 */  sw         $t8, 0x10($sp)
/* 1C0C 8000100C 0C029270 */  jal        func_800A49C0
/* 1C10 80001010 AFB90014 */   sw        $t9, 0x14($sp)
/* 1C14 80001014 3C04800E */  lui        $a0, %hi(D_800DBF20)
/* 1C18 80001018 3C05800E */  lui        $a1, %hi(D_800DBF3C)
/* 1C1C 8000101C 24A5BF3C */  addiu      $a1, $a1, %lo(D_800DBF3C)
/* 1C20 80001020 2484BF20 */  addiu      $a0, $a0, %lo(D_800DBF20)
/* 1C24 80001024 0C025D30 */  jal        func_800974C0
/* 1C28 80001028 24060001 */   addiu     $a2, $zero, 1
/* 1C2C 8000102C 1000004E */  b          .L80001168
/* 1C30 80001030 00000000 */   nop
.L80001034:
/* 1C34 80001034 8FA90050 */  lw         $t1, 0x50($sp)
/* 1C38 80001038 24010005 */  addiu      $at, $zero, 5
/* 1C3C 8000103C 0121001B */  divu       $zero, $t1, $at
/* 1C40 80001040 00005012 */  mflo       $t2
/* 1C44 80001044 2401FFF8 */  addiu      $at, $zero, -8
/* 1C48 80001048 01415824 */  and        $t3, $t2, $at
/* 1C4C 8000104C 012B082B */  sltu       $at, $t1, $t3
/* 1C50 80001050 1420002D */  bnez       $at, .L80001108
/* 1C54 80001054 AFAB002C */   sw        $t3, 0x2c($sp)
.L80001058:
/* 1C58 80001058 8FA4004C */  lw         $a0, 0x4c($sp)
/* 1C5C 8000105C 0C02B474 */  jal        func_800AD1D0
/* 1C60 80001060 8FA5002C */   lw        $a1, 0x2c($sp)
/* 1C64 80001064 8FAC004C */  lw         $t4, 0x4c($sp)
/* 1C68 80001068 8FAD002C */  lw         $t5, 0x2c($sp)
/* 1C6C 8000106C 3C0E800E */  lui        $t6, %hi(D_800DBF20)
/* 1C70 80001070 25CEBF20 */  addiu      $t6, $t6, %lo(D_800DBF20)
/* 1C74 80001074 AFAE0018 */  sw         $t6, 0x18($sp)
/* 1C78 80001078 27A40030 */  addiu      $a0, $sp, 0x30
/* 1C7C 8000107C 00002825 */  or         $a1, $zero, $zero
/* 1C80 80001080 00003025 */  or         $a2, $zero, $zero
/* 1C84 80001084 8FA70048 */  lw         $a3, 0x48($sp)
/* 1C88 80001088 AFAC0010 */  sw         $t4, 0x10($sp)
/* 1C8C 8000108C 0C029270 */  jal        func_800A49C0
/* 1C90 80001090 AFAD0014 */   sw        $t5, 0x14($sp)
/* 1C94 80001094 3C04800E */  lui        $a0, %hi(D_800DBF20)
/* 1C98 80001098 3C05800E */  lui        $a1, %hi(D_800DBF3C)
/* 1C9C 8000109C 24A5BF3C */  addiu      $a1, $a1, %lo(D_800DBF3C)
/* 1CA0 800010A0 2484BF20 */  addiu      $a0, $a0, %lo(D_800DBF20)
/* 1CA4 800010A4 0C025D30 */  jal        func_800974C0
/* 1CA8 800010A8 24060001 */   addiu     $a2, $zero, 1
/* 1CAC 800010AC 8FB8002C */  lw         $t8, 0x2c($sp)
/* 1CB0 800010B0 8FAF0048 */  lw         $t7, 0x48($sp)
/* 1CB4 800010B4 8FA8004C */  lw         $t0, 0x4c($sp)
/* 1CB8 800010B8 8FA90050 */  lw         $t1, 0x50($sp)
/* 1CBC 800010BC 240C0002 */  addiu      $t4, $zero, 2
/* 1CC0 800010C0 3C01800C */  lui        $at, 0x800c
/* 1CC4 800010C4 01F8C821 */  addu       $t9, $t7, $t8
/* 1CC8 800010C8 01185021 */  addu       $t2, $t0, $t8
/* 1CCC 800010CC 01385823 */  subu       $t3, $t1, $t8
/* 1CD0 800010D0 AFB90048 */  sw         $t9, 0x48($sp)
/* 1CD4 800010D4 AFAA004C */  sw         $t2, 0x4c($sp)
/* 1CD8 800010D8 AFAB0050 */  sw         $t3, 0x50($sp)
/* 1CDC 800010DC A42CBF40 */  sh         $t4, -0x40c0($at)
.L800010E0:
/* 1CE0 800010E0 3C0D800C */  lui        $t5, %hi(D_800BBF40)
/* 1CE4 800010E4 85ADBF40 */  lh         $t5, %lo(D_800BBF40)($t5)
/* 1CE8 800010E8 24010002 */  addiu      $at, $zero, 2
/* 1CEC 800010EC 11A1FFFC */  beq        $t5, $at, .L800010E0
/* 1CF0 800010F0 00000000 */   nop
/* 1CF4 800010F4 8FAE0050 */  lw         $t6, 0x50($sp)
/* 1CF8 800010F8 8FAF002C */  lw         $t7, 0x2c($sp)
/* 1CFC 800010FC 01CF082B */  sltu       $at, $t6, $t7
/* 1D00 80001100 1020FFD5 */  beqz       $at, .L80001058
/* 1D04 80001104 00000000 */   nop
.L80001108:
/* 1D08 80001108 8FB90050 */  lw         $t9, 0x50($sp)
/* 1D0C 8000110C 13200016 */  beqz       $t9, .L80001168
/* 1D10 80001110 00000000 */   nop
/* 1D14 80001114 8FA4004C */  lw         $a0, 0x4c($sp)
/* 1D18 80001118 0C02B474 */  jal        func_800AD1D0
/* 1D1C 8000111C 03202825 */   or        $a1, $t9, $zero
/* 1D20 80001120 8FA8004C */  lw         $t0, 0x4c($sp)
/* 1D24 80001124 8FAA0050 */  lw         $t2, 0x50($sp)
/* 1D28 80001128 3C09800E */  lui        $t1, %hi(D_800DBF20)
/* 1D2C 8000112C 2529BF20 */  addiu      $t1, $t1, %lo(D_800DBF20)
/* 1D30 80001130 AFA90018 */  sw         $t1, 0x18($sp)
/* 1D34 80001134 27A40030 */  addiu      $a0, $sp, 0x30
/* 1D38 80001138 00002825 */  or         $a1, $zero, $zero
/* 1D3C 8000113C 00003025 */  or         $a2, $zero, $zero
/* 1D40 80001140 8FA70048 */  lw         $a3, 0x48($sp)
/* 1D44 80001144 AFA80010 */  sw         $t0, 0x10($sp)
/* 1D48 80001148 0C029270 */  jal        func_800A49C0
/* 1D4C 8000114C AFAA0014 */   sw        $t2, 0x14($sp)
/* 1D50 80001150 3C04800E */  lui        $a0, %hi(D_800DBF20)
/* 1D54 80001154 3C05800E */  lui        $a1, %hi(D_800DBF3C)
/* 1D58 80001158 24A5BF3C */  addiu      $a1, $a1, %lo(D_800DBF3C)
/* 1D5C 8000115C 2484BF20 */  addiu      $a0, $a0, %lo(D_800DBF20)
/* 1D60 80001160 0C025D30 */  jal        func_800974C0
/* 1D64 80001164 24060001 */   addiu     $a2, $zero, 1
.L80001168:
/* 1D68 80001168 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1D6C 8000116C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 1D70 80001170 03E00008 */  jr         $ra
/* 1D74 80001174 00000000 */   nop
/* 1D78 80001178 00000000 */  nop
/* 1D7C 8000117C 00000000 */  nop
