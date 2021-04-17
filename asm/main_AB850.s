.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AAC50
/* AB850 800AAC50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AB854 800AAC54 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB858 800AAC58 AFA0001C */  sw         $zero, 0x1c($sp)
/* AB85C 800AAC5C 3C0E801A */  lui        $t6, %hi(D_801A388C)
/* AB860 800AAC60 8DCE388C */  lw         $t6, %lo(D_801A388C)($t6)
/* AB864 800AAC64 3C01B000 */  lui        $at, 0xb000
/* AB868 800AAC68 15C10004 */  bne        $t6, $at, .L800AAC7C
/* AB86C 800AAC6C 00000000 */   nop
/* AB870 800AAC70 3C02801A */  lui        $v0, %hi(D_801A3880)
/* AB874 800AAC74 10000037 */  b          .L800AAD54
/* AB878 800AAC78 24423880 */   addiu     $v0, $v0, %lo(D_801A3880)
.L800AAC7C:
/* AB87C 800AAC7C 3C01801A */  lui        $at, %hi(D_801A3884)
/* AB880 800AAC80 A0203884 */  sb         $zero, %lo(D_801A3884)($at)
/* AB884 800AAC84 3C0FB000 */  lui        $t7, 0xb000
/* AB888 800AAC88 3C01801A */  lui        $at, %hi(D_801A388C)
/* AB88C 800AAC8C AC2F388C */  sw         $t7, %lo(D_801A388C)($at)
/* AB890 800AAC90 00002025 */  or         $a0, $zero, $zero
/* AB894 800AAC94 0C026774 */  jal        func_80099DD0
/* AB898 800AAC98 27A5001C */   addiu     $a1, $sp, 0x1c
/* AB89C 800AAC9C 8FB8001C */  lw         $t8, 0x1c($sp)
/* AB8A0 800AACA0 3C01801A */  lui        $at, %hi(D_801A3885)
/* AB8A4 800AACA4 331900FF */  andi       $t9, $t8, 0xff
/* AB8A8 800AACA8 A0393885 */  sb         $t9, %lo(D_801A3885)($at)
/* AB8AC 800AACAC 8FA8001C */  lw         $t0, 0x1c($sp)
/* AB8B0 800AACB0 3C01801A */  lui        $at, %hi(D_801A3888)
/* AB8B4 800AACB4 00084A02 */  srl        $t1, $t0, 8
/* AB8B8 800AACB8 312A00FF */  andi       $t2, $t1, 0xff
/* AB8BC 800AACBC A02A3888 */  sb         $t2, %lo(D_801A3888)($at)
/* AB8C0 800AACC0 8FAB001C */  lw         $t3, 0x1c($sp)
/* AB8C4 800AACC4 3C01801A */  lui        $at, %hi(D_801A3886)
/* AB8C8 800AACC8 000B6402 */  srl        $t4, $t3, 0x10
/* AB8CC 800AACCC 318D000F */  andi       $t5, $t4, 0xf
/* AB8D0 800AACD0 A02D3886 */  sb         $t5, %lo(D_801A3886)($at)
/* AB8D4 800AACD4 8FAE001C */  lw         $t6, 0x1c($sp)
/* AB8D8 800AACD8 3C01801A */  lui        $at, %hi(D_801A3887)
/* AB8DC 800AACDC 000E7D02 */  srl        $t7, $t6, 0x14
/* AB8E0 800AACE0 31F8000F */  andi       $t8, $t7, 0xf
/* AB8E4 800AACE4 A0383887 */  sb         $t8, %lo(D_801A3887)($at)
/* AB8E8 800AACE8 3C01801A */  lui        $at, %hi(D_801A3889)
/* AB8EC 800AACEC A0203889 */  sb         $zero, %lo(D_801A3889)($at)
/* AB8F0 800AACF0 3C01801A */  lui        $at, %hi(D_801A3890)
/* AB8F4 800AACF4 AC203890 */  sw         $zero, %lo(D_801A3890)($at)
/* AB8F8 800AACF8 3C04801A */  lui        $a0, %hi(D_801A3880)
/* AB8FC 800AACFC 24843880 */  addiu      $a0, $a0, %lo(D_801A3880)
/* AB900 800AAD00 24840014 */  addiu      $a0, $a0, 0x14
/* AB904 800AAD04 0C026888 */  jal        func_8009A220
/* AB908 800AAD08 24050060 */   addiu     $a1, $zero, 0x60
/* AB90C 800AAD0C 0C02C0C8 */  jal        func_800B0320
/* AB910 800AAD10 00000000 */   nop
/* AB914 800AAD14 AFA20018 */  sw         $v0, 0x18($sp)
/* AB918 800AAD18 3C19800D */  lui        $t9, %hi(D_800CD31C)
/* AB91C 800AAD1C 8F39D31C */  lw         $t9, %lo(D_800CD31C)($t9)
/* AB920 800AAD20 3C01801A */  lui        $at, %hi(D_801A3880)
/* AB924 800AAD24 AC393880 */  sw         $t9, %lo(D_801A3880)($at)
/* AB928 800AAD28 3C08801A */  lui        $t0, %hi(D_801A3880)
/* AB92C 800AAD2C 25083880 */  addiu      $t0, $t0, %lo(D_801A3880)
/* AB930 800AAD30 3C01800D */  lui        $at, %hi(D_800CD31C)
/* AB934 800AAD34 AC28D31C */  sw         $t0, %lo(D_800CD31C)($at)
/* AB938 800AAD38 0C02C0D0 */  jal        func_800B0340
/* AB93C 800AAD3C 8FA40018 */   lw        $a0, 0x18($sp)
/* AB940 800AAD40 3C02801A */  lui        $v0, %hi(D_801A3880)
/* AB944 800AAD44 10000003 */  b          .L800AAD54
/* AB948 800AAD48 24423880 */   addiu     $v0, $v0, %lo(D_801A3880)
/* AB94C 800AAD4C 10000001 */  b          .L800AAD54
/* AB950 800AAD50 00000000 */   nop
.L800AAD54:
/* AB954 800AAD54 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB958 800AAD58 27BD0020 */  addiu      $sp, $sp, 0x20
/* AB95C 800AAD5C 03E00008 */  jr         $ra
/* AB960 800AAD60 00000000 */   nop
/* AB964 800AAD64 00000000 */  nop
/* AB968 800AAD68 00000000 */  nop
/* AB96C 800AAD6C 00000000 */  nop
