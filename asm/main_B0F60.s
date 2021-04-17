.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B0360
/* B0F60 800B0360 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B0F64 800B0364 AFBF0014 */  sw         $ra, 0x14($sp)
/* B0F68 800B0368 3C04800D */  lui        $a0, %hi(D_800CD3E0)
/* B0F6C 800B036C 2484D3E0 */  addiu      $a0, $a0, %lo(D_800CD3E0)
/* B0F70 800B0370 0C026888 */  jal        func_8009A220
/* B0F74 800B0374 24050060 */   addiu     $a1, $zero, 0x60
/* B0F78 800B0378 3C0E800D */  lui        $t6, %hi(D_800CD3E0)
/* B0F7C 800B037C 25CED3E0 */  addiu      $t6, $t6, %lo(D_800CD3E0)
/* B0F80 800B0380 3C01800D */  lui        $at, %hi(D_800CD440)
/* B0F84 800B0384 AC2ED440 */  sw         $t6, %lo(D_800CD440)($at)
/* B0F88 800B0388 3C0F800D */  lui        $t7, %hi(D_800CD3E0)
/* B0F8C 800B038C 25EFD3E0 */  addiu      $t7, $t7, %lo(D_800CD3E0)
/* B0F90 800B0390 25F80030 */  addiu      $t8, $t7, 0x30
/* B0F94 800B0394 3C01800D */  lui        $at, %hi(D_800CD444)
/* B0F98 800B0398 AC38D444 */  sw         $t8, %lo(D_800CD444)($at)
/* B0F9C 800B039C 3C08800D */  lui        $t0, %hi(D_800CD444)
/* B0FA0 800B03A0 8D08D444 */  lw         $t0, %lo(D_800CD444)($t0)
/* B0FA4 800B03A4 24190001 */  addiu      $t9, $zero, 1
/* B0FA8 800B03A8 A5190002 */  sh         $t9, 2($t0)
/* B0FAC 800B03AC 3C0A800D */  lui        $t2, %hi(D_800CD440)
/* B0FB0 800B03B0 8D4AD440 */  lw         $t2, %lo(D_800CD440)($t2)
/* B0FB4 800B03B4 24090001 */  addiu      $t1, $zero, 1
/* B0FB8 800B03B8 A5490002 */  sh         $t1, 2($t2)
/* B0FBC 800B03BC 3C0C800D */  lui        $t4, %hi(D_800CD444)
/* B0FC0 800B03C0 8D8CD444 */  lw         $t4, %lo(D_800CD444)($t4)
/* B0FC4 800B03C4 3C0B8000 */  lui        $t3, 0x8000
/* B0FC8 800B03C8 AD8B0004 */  sw         $t3, 4($t4)
/* B0FCC 800B03CC 3C0E800D */  lui        $t6, %hi(D_800CD440)
/* B0FD0 800B03D0 8DCED440 */  lw         $t6, %lo(D_800CD440)($t6)
/* B0FD4 800B03D4 3C0D8000 */  lui        $t5, 0x8000
/* B0FD8 800B03D8 ADCD0004 */  sw         $t5, 4($t6)
/* B0FDC 800B03DC 3C0F8000 */  lui        $t7, %hi(D_80000300)
/* B0FE0 800B03E0 8DEF0300 */  lw         $t7, %lo(D_80000300)($t7)
/* B0FE4 800B03E4 15E00007 */  bnez       $t7, .L800B0404
/* B0FE8 800B03E8 00000000 */   nop
/* B0FEC 800B03EC 3C19800D */  lui        $t9, %hi(D_800CD444)
/* B0FF0 800B03F0 8F39D444 */  lw         $t9, %lo(D_800CD444)($t9)
/* B0FF4 800B03F4 3C18800D */  lui        $t8, %hi(D_800CD450)
/* B0FF8 800B03F8 2718D450 */  addiu      $t8, $t8, %lo(D_800CD450)
/* B0FFC 800B03FC 10000011 */  b          .L800B0444
/* B1000 800B0400 AF380008 */   sw        $t8, 8($t9)
.L800B0404:
/* B1004 800B0404 3C088000 */  lui        $t0, %hi(D_80000300)
/* B1008 800B0408 8D080300 */  lw         $t0, %lo(D_80000300)($t0)
/* B100C 800B040C 24010002 */  addiu      $at, $zero, 2
/* B1010 800B0410 15010007 */  bne        $t0, $at, .L800B0430
/* B1014 800B0414 00000000 */   nop
/* B1018 800B0418 3C0A800D */  lui        $t2, %hi(D_800CD444)
/* B101C 800B041C 8D4AD444 */  lw         $t2, %lo(D_800CD444)($t2)
/* B1020 800B0420 3C09800D */  lui        $t1, %hi(D_800CD4F0)
/* B1024 800B0424 2529D4F0 */  addiu      $t1, $t1, %lo(D_800CD4F0)
/* B1028 800B0428 10000006 */  b          .L800B0444
/* B102C 800B042C AD490008 */   sw        $t1, 8($t2)
.L800B0430:
/* B1030 800B0430 3C0C800D */  lui        $t4, %hi(D_800CD444)
/* B1034 800B0434 8D8CD444 */  lw         $t4, %lo(D_800CD444)($t4)
/* B1038 800B0438 3C0B800D */  lui        $t3, %hi(D_800CD4A0)
/* B103C 800B043C 256BD4A0 */  addiu      $t3, $t3, %lo(D_800CD4A0)
/* B1040 800B0440 AD8B0008 */  sw         $t3, 8($t4)
.L800B0444:
/* B1044 800B0444 3C0E800D */  lui        $t6, %hi(D_800CD444)
/* B1048 800B0448 8DCED444 */  lw         $t6, %lo(D_800CD444)($t6)
/* B104C 800B044C 240D0020 */  addiu      $t5, $zero, 0x20
/* B1050 800B0450 A5CD0000 */  sh         $t5, ($t6)
/* B1054 800B0454 3C0F800D */  lui        $t7, %hi(D_800CD444)
/* B1058 800B0458 8DEFD444 */  lw         $t7, %lo(D_800CD444)($t7)
/* B105C 800B045C 8DF80008 */  lw         $t8, 8($t7)
/* B1060 800B0460 8F190004 */  lw         $t9, 4($t8)
/* B1064 800B0464 ADF9000C */  sw         $t9, 0xc($t7)
/* B1068 800B0468 3C08A440 */  lui        $t0, %hi(D_A4400010)
/* B106C 800B046C 8D090010 */  lw         $t1, %lo(D_A4400010)($t0)
/* B1070 800B0470 2D21000B */  sltiu      $at, $t1, 0xb
/* B1074 800B0474 14200006 */  bnez       $at, .L800B0490
/* B1078 800B0478 00000000 */   nop
.L800B047C:
/* B107C 800B047C 3C0AA440 */  lui        $t2, %hi(D_A4400010)
/* B1080 800B0480 8D4B0010 */  lw         $t3, %lo(D_A4400010)($t2)
/* B1084 800B0484 2D61000B */  sltiu      $at, $t3, 0xb
/* B1088 800B0488 1020FFFC */  beqz       $at, .L800B047C
/* B108C 800B048C 00000000 */   nop
.L800B0490:
/* B1090 800B0490 3C0CA440 */  lui        $t4, 0xa440
/* B1094 800B0494 AD800000 */  sw         $zero, ($t4)
/* B1098 800B0498 0C02C130 */  jal        func_800B04C0
/* B109C 800B049C 00000000 */   nop
/* B10A0 800B04A0 10000001 */  b          .L800B04A8
/* B10A4 800B04A4 00000000 */   nop
.L800B04A8:
/* B10A8 800B04A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B10AC 800B04AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* B10B0 800B04B0 03E00008 */  jr         $ra
/* B10B4 800B04B4 00000000 */   nop
/* B10B8 800B04B8 00000000 */  nop
/* B10BC 800B04BC 00000000 */  nop
