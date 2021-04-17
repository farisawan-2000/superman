.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80000F90
/* 1B90 80000F90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B94 80000F94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B98 80000F98 3C04800F */  lui        $a0, %hi(D_800E85C0)
/* 1B9C 80000F9C 3C05800F */  lui        $a1, %hi(D_800E85D8)
/* 1BA0 80000FA0 24A585D8 */  addiu      $a1, $a1, %lo(D_800E85D8)
/* 1BA4 80000FA4 248485C0 */  addiu      $a0, $a0, %lo(D_800E85C0)
/* 1BA8 80000FA8 0C033544 */  jal        func_800CD510
/* 1BAC 80000FAC 24060001 */   addiu     $a2, $zero, 1
/* 1BB0 80000FB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1BB4 80000FB4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1BB8 80000FB8 03E00008 */  jr         $ra
/* 1BBC 80000FBC 00000000 */   nop

glabel func_80000FC0
/* 1BC0 80000FC0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1BC4 80000FC4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1BC8 80000FC8 AFA40048 */  sw         $a0, 0x48($sp)
/* 1BCC 80000FCC AFA5004C */  sw         $a1, 0x4c($sp)
/* 1BD0 80000FD0 AFA60050 */  sw         $a2, 0x50($sp)
/* 1BD4 80000FD4 8FAE0050 */  lw         $t6, 0x50($sp)
/* 1BD8 80000FD8 3401F000 */  ori        $at, $zero, 0xf000
/* 1BDC 80000FDC 01C1082B */  sltu       $at, $t6, $at
/* 1BE0 80000FE0 14200005 */  bnez       $at, .L80000FF8
/* 1BE4 80000FE4 00000000 */   nop
/* 1BE8 80000FE8 3C0F800D */  lui        $t7, %hi(D_800D60D0)
/* 1BEC 80000FEC 85EF60D0 */  lh         $t7, %lo(D_800D60D0)($t7)
/* 1BF0 80000FF0 15E00018 */  bnez       $t7, .L80001054
/* 1BF4 80000FF4 00000000 */   nop
.L80000FF8:
/* 1BF8 80000FF8 8FA4004C */  lw         $a0, 0x4c($sp)
/* 1BFC 80000FFC 0C033570 */  jal        func_800CD5C0
/* 1C00 80001000 8FA50050 */   lw        $a1, 0x50($sp)
/* 1C04 80001004 8FB8004C */  lw         $t8, 0x4c($sp)
/* 1C08 80001008 8FB90050 */  lw         $t9, 0x50($sp)
/* 1C0C 8000100C 3C08800F */  lui        $t0, %hi(D_800E85C0)
/* 1C10 80001010 250885C0 */  addiu      $t0, $t0, %lo(D_800E85C0)
/* 1C14 80001014 AFA80018 */  sw         $t0, 0x18($sp)
/* 1C18 80001018 27A40030 */  addiu      $a0, $sp, 0x30
/* 1C1C 8000101C 00002825 */  or         $a1, $zero, $zero
/* 1C20 80001020 00003025 */  or         $a2, $zero, $zero
/* 1C24 80001024 8FA70048 */  lw         $a3, 0x48($sp)
/* 1C28 80001028 AFB80010 */  sw         $t8, 0x10($sp)
/* 1C2C 8000102C 0C031E48 */  jal        func_800C7920
/* 1C30 80001030 AFB90014 */   sw        $t9, 0x14($sp)
/* 1C34 80001034 3C04800F */  lui        $a0, %hi(D_800E85C0)
/* 1C38 80001038 3C05800F */  lui        $a1, %hi(D_800E85DC)
/* 1C3C 8000103C 24A585DC */  addiu      $a1, $a1, %lo(D_800E85DC)
/* 1C40 80001040 248485C0 */  addiu      $a0, $a0, %lo(D_800E85C0)
/* 1C44 80001044 0C02F85C */  jal        func_800BE170
/* 1C48 80001048 24060001 */   addiu     $a2, $zero, 1
/* 1C4C 8000104C 1000004E */  b          .L80001188
/* 1C50 80001050 00000000 */   nop
.L80001054:
/* 1C54 80001054 8FA90050 */  lw         $t1, 0x50($sp)
/* 1C58 80001058 24010005 */  addiu      $at, $zero, 5
/* 1C5C 8000105C 0121001B */  divu       $zero, $t1, $at
/* 1C60 80001060 00005012 */  mflo       $t2
/* 1C64 80001064 2401FFF8 */  addiu      $at, $zero, -8
/* 1C68 80001068 01415824 */  and        $t3, $t2, $at
/* 1C6C 8000106C 012B082B */  sltu       $at, $t1, $t3
/* 1C70 80001070 1420002D */  bnez       $at, .L80001128
/* 1C74 80001074 AFAB002C */   sw        $t3, 0x2c($sp)
.L80001078:
/* 1C78 80001078 8FA4004C */  lw         $a0, 0x4c($sp)
/* 1C7C 8000107C 0C033570 */  jal        func_800CD5C0
/* 1C80 80001080 8FA5002C */   lw        $a1, 0x2c($sp)
/* 1C84 80001084 8FAC004C */  lw         $t4, 0x4c($sp)
/* 1C88 80001088 8FAD002C */  lw         $t5, 0x2c($sp)
/* 1C8C 8000108C 3C0E800F */  lui        $t6, %hi(D_800E85C0)
/* 1C90 80001090 25CE85C0 */  addiu      $t6, $t6, %lo(D_800E85C0)
/* 1C94 80001094 AFAE0018 */  sw         $t6, 0x18($sp)
/* 1C98 80001098 27A40030 */  addiu      $a0, $sp, 0x30
/* 1C9C 8000109C 00002825 */  or         $a1, $zero, $zero
/* 1CA0 800010A0 00003025 */  or         $a2, $zero, $zero
/* 1CA4 800010A4 8FA70048 */  lw         $a3, 0x48($sp)
/* 1CA8 800010A8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 1CAC 800010AC 0C031E48 */  jal        func_800C7920
/* 1CB0 800010B0 AFAD0014 */   sw        $t5, 0x14($sp)
/* 1CB4 800010B4 3C04800F */  lui        $a0, %hi(D_800E85C0)
/* 1CB8 800010B8 3C05800F */  lui        $a1, %hi(D_800E85DC)
/* 1CBC 800010BC 24A585DC */  addiu      $a1, $a1, %lo(D_800E85DC)
/* 1CC0 800010C0 248485C0 */  addiu      $a0, $a0, %lo(D_800E85C0)
/* 1CC4 800010C4 0C02F85C */  jal        func_800BE170
/* 1CC8 800010C8 24060001 */   addiu     $a2, $zero, 1
/* 1CCC 800010CC 8FB8002C */  lw         $t8, 0x2c($sp)
/* 1CD0 800010D0 8FAF0048 */  lw         $t7, 0x48($sp)
/* 1CD4 800010D4 8FA8004C */  lw         $t0, 0x4c($sp)
/* 1CD8 800010D8 8FA90050 */  lw         $t1, 0x50($sp)
/* 1CDC 800010DC 240C0002 */  addiu      $t4, $zero, 2
/* 1CE0 800010E0 3C01800D */  lui        $at, 0x800d
/* 1CE4 800010E4 01F8C821 */  addu       $t9, $t7, $t8
/* 1CE8 800010E8 01185021 */  addu       $t2, $t0, $t8
/* 1CEC 800010EC 01385823 */  subu       $t3, $t1, $t8
/* 1CF0 800010F0 AFB90048 */  sw         $t9, 0x48($sp)
/* 1CF4 800010F4 AFAA004C */  sw         $t2, 0x4c($sp)
/* 1CF8 800010F8 AFAB0050 */  sw         $t3, 0x50($sp)
/* 1CFC 800010FC A42C60D0 */  sh         $t4, 0x60d0($at)
.L80001100:
/* 1D00 80001100 3C0D800D */  lui        $t5, %hi(D_800D60D0)
/* 1D04 80001104 85AD60D0 */  lh         $t5, %lo(D_800D60D0)($t5)
/* 1D08 80001108 24010002 */  addiu      $at, $zero, 2
/* 1D0C 8000110C 11A1FFFC */  beq        $t5, $at, .L80001100
/* 1D10 80001110 00000000 */   nop
/* 1D14 80001114 8FAE0050 */  lw         $t6, 0x50($sp)
/* 1D18 80001118 8FAF002C */  lw         $t7, 0x2c($sp)
/* 1D1C 8000111C 01CF082B */  sltu       $at, $t6, $t7
/* 1D20 80001120 1020FFD5 */  beqz       $at, .L80001078
/* 1D24 80001124 00000000 */   nop
.L80001128:
/* 1D28 80001128 8FB90050 */  lw         $t9, 0x50($sp)
/* 1D2C 8000112C 13200016 */  beqz       $t9, .L80001188
/* 1D30 80001130 00000000 */   nop
/* 1D34 80001134 8FA4004C */  lw         $a0, 0x4c($sp)
/* 1D38 80001138 0C033570 */  jal        func_800CD5C0
/* 1D3C 8000113C 03202825 */   or        $a1, $t9, $zero
/* 1D40 80001140 8FA8004C */  lw         $t0, 0x4c($sp)
/* 1D44 80001144 8FAA0050 */  lw         $t2, 0x50($sp)
/* 1D48 80001148 3C09800F */  lui        $t1, %hi(D_800E85C0)
/* 1D4C 8000114C 252985C0 */  addiu      $t1, $t1, %lo(D_800E85C0)
/* 1D50 80001150 AFA90018 */  sw         $t1, 0x18($sp)
/* 1D54 80001154 27A40030 */  addiu      $a0, $sp, 0x30
/* 1D58 80001158 00002825 */  or         $a1, $zero, $zero
/* 1D5C 8000115C 00003025 */  or         $a2, $zero, $zero
/* 1D60 80001160 8FA70048 */  lw         $a3, 0x48($sp)
/* 1D64 80001164 AFA80010 */  sw         $t0, 0x10($sp)
/* 1D68 80001168 0C031E48 */  jal        func_800C7920
/* 1D6C 8000116C AFAA0014 */   sw        $t2, 0x14($sp)
/* 1D70 80001170 3C04800F */  lui        $a0, %hi(D_800E85C0)
/* 1D74 80001174 3C05800F */  lui        $a1, %hi(D_800E85DC)
/* 1D78 80001178 24A585DC */  addiu      $a1, $a1, %lo(D_800E85DC)
/* 1D7C 8000117C 248485C0 */  addiu      $a0, $a0, %lo(D_800E85C0)
/* 1D80 80001180 0C02F85C */  jal        func_800BE170
/* 1D84 80001184 24060001 */   addiu     $a2, $zero, 1
.L80001188:
/* 1D88 80001188 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1D8C 8000118C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 1D90 80001190 03E00008 */  jr         $ra
/* 1D94 80001194 00000000 */   nop
/* 1D98 80001198 00000000 */  nop
/* 1D9C 8000119C 00000000 */  nop
