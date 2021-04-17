.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D1D00
/* D2900 800D1D00 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* D2904 800D1D04 8DC70010 */  lw         $a3, %lo(D_A4600010)($t6)
/* D2908 800D1D08 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* D290C 800D1D0C 30EF0003 */  andi       $t7, $a3, 3
/* D2910 800D1D10 11E00006 */  beqz       $t7, .L800D1D2C
/* D2914 800D1D14 00000000 */   nop
.L800D1D18:
/* D2918 800D1D18 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* D291C 800D1D1C 8F070010 */  lw         $a3, %lo(D_A4600010)($t8)
/* D2920 800D1D20 30F90003 */  andi       $t9, $a3, 3
/* D2924 800D1D24 1720FFFC */  bnez       $t9, .L800D1D18
/* D2928 800D1D28 00000000 */   nop
.L800D1D2C:
/* D292C 800D1D2C 90880009 */  lbu        $t0, 9($a0)
/* D2930 800D1D30 3C0A800E */  lui        $t2, %hi(D_800DB100)
/* D2934 800D1D34 254AB100 */  addiu      $t2, $t2, %lo(D_800DB100)
/* D2938 800D1D38 00084880 */  sll        $t1, $t0, 2
/* D293C 800D1D3C 012A5821 */  addu       $t3, $t1, $t2
/* D2940 800D1D40 8D6C0000 */  lw         $t4, ($t3)
/* D2944 800D1D44 1184004A */  beq        $t4, $a0, .L800D1E70
/* D2948 800D1D48 00000000 */   nop
/* D294C 800D1D4C 00086880 */  sll        $t5, $t0, 2
/* D2950 800D1D50 01AA7021 */  addu       $t6, $t5, $t2
/* D2954 800D1D54 8DCF0000 */  lw         $t7, ($t6)
/* D2958 800D1D58 15000021 */  bnez       $t0, .L800D1DE0
/* D295C 800D1D5C AFAF0004 */   sw        $t7, 4($sp)
/* D2960 800D1D60 91F80005 */  lbu        $t8, 5($t7)
/* D2964 800D1D64 90990005 */  lbu        $t9, 5($a0)
/* D2968 800D1D68 13190004 */  beq        $t8, $t9, .L800D1D7C
/* D296C 800D1D6C 00000000 */   nop
/* D2970 800D1D70 90890005 */  lbu        $t1, 5($a0)
/* D2974 800D1D74 3C0BA460 */  lui        $t3, %hi(D_A4600014)
/* D2978 800D1D78 AD690014 */  sw         $t1, %lo(D_A4600014)($t3)
.L800D1D7C:
/* D297C 800D1D7C 8FAC0004 */  lw         $t4, 4($sp)
/* D2980 800D1D80 908A0006 */  lbu        $t2, 6($a0)
/* D2984 800D1D84 918D0006 */  lbu        $t5, 6($t4)
/* D2988 800D1D88 11AA0004 */  beq        $t5, $t2, .L800D1D9C
/* D298C 800D1D8C 00000000 */   nop
/* D2990 800D1D90 908E0006 */  lbu        $t6, 6($a0)
/* D2994 800D1D94 3C0FA460 */  lui        $t7, %hi(D_A460001C)
/* D2998 800D1D98 ADEE001C */  sw         $t6, %lo(D_A460001C)($t7)
.L800D1D9C:
/* D299C 800D1D9C 8FB80004 */  lw         $t8, 4($sp)
/* D29A0 800D1DA0 90890007 */  lbu        $t1, 7($a0)
/* D29A4 800D1DA4 93190007 */  lbu        $t9, 7($t8)
/* D29A8 800D1DA8 13290004 */  beq        $t9, $t1, .L800D1DBC
/* D29AC 800D1DAC 00000000 */   nop
/* D29B0 800D1DB0 908B0007 */  lbu        $t3, 7($a0)
/* D29B4 800D1DB4 3C0CA460 */  lui        $t4, %hi(D_A4600020)
/* D29B8 800D1DB8 AD8B0020 */  sw         $t3, %lo(D_A4600020)($t4)
.L800D1DBC:
/* D29BC 800D1DBC 8FAD0004 */  lw         $t5, 4($sp)
/* D29C0 800D1DC0 908E0008 */  lbu        $t6, 8($a0)
/* D29C4 800D1DC4 91AA0008 */  lbu        $t2, 8($t5)
/* D29C8 800D1DC8 114E0025 */  beq        $t2, $t6, .L800D1E60
/* D29CC 800D1DCC 00000000 */   nop
/* D29D0 800D1DD0 908F0008 */  lbu        $t7, 8($a0)
/* D29D4 800D1DD4 3C18A460 */  lui        $t8, %hi(D_A4600018)
/* D29D8 800D1DD8 10000021 */  b          .L800D1E60
/* D29DC 800D1DDC AF0F0018 */   sw        $t7, %lo(D_A4600018)($t8)
.L800D1DE0:
/* D29E0 800D1DE0 8FB90004 */  lw         $t9, 4($sp)
/* D29E4 800D1DE4 908B0005 */  lbu        $t3, 5($a0)
/* D29E8 800D1DE8 93290005 */  lbu        $t1, 5($t9)
/* D29EC 800D1DEC 112B0004 */  beq        $t1, $t3, .L800D1E00
/* D29F0 800D1DF0 00000000 */   nop
/* D29F4 800D1DF4 908C0005 */  lbu        $t4, 5($a0)
/* D29F8 800D1DF8 3C0DA460 */  lui        $t5, %hi(D_A4600024)
/* D29FC 800D1DFC ADAC0024 */  sw         $t4, %lo(D_A4600024)($t5)
.L800D1E00:
/* D2A00 800D1E00 8FAA0004 */  lw         $t2, 4($sp)
/* D2A04 800D1E04 908F0006 */  lbu        $t7, 6($a0)
/* D2A08 800D1E08 914E0006 */  lbu        $t6, 6($t2)
/* D2A0C 800D1E0C 11CF0004 */  beq        $t6, $t7, .L800D1E20
/* D2A10 800D1E10 00000000 */   nop
/* D2A14 800D1E14 90980006 */  lbu        $t8, 6($a0)
/* D2A18 800D1E18 3C19A460 */  lui        $t9, %hi(D_A460002C)
/* D2A1C 800D1E1C AF38002C */  sw         $t8, %lo(D_A460002C)($t9)
.L800D1E20:
/* D2A20 800D1E20 8FA90004 */  lw         $t1, 4($sp)
/* D2A24 800D1E24 908C0007 */  lbu        $t4, 7($a0)
/* D2A28 800D1E28 912B0007 */  lbu        $t3, 7($t1)
/* D2A2C 800D1E2C 116C0004 */  beq        $t3, $t4, .L800D1E40
/* D2A30 800D1E30 00000000 */   nop
/* D2A34 800D1E34 908D0007 */  lbu        $t5, 7($a0)
/* D2A38 800D1E38 3C0AA460 */  lui        $t2, %hi(D_A4600030)
/* D2A3C 800D1E3C AD4D0030 */  sw         $t5, %lo(D_A4600030)($t2)
.L800D1E40:
/* D2A40 800D1E40 8FAE0004 */  lw         $t6, 4($sp)
/* D2A44 800D1E44 90980008 */  lbu        $t8, 8($a0)
/* D2A48 800D1E48 91CF0008 */  lbu        $t7, 8($t6)
/* D2A4C 800D1E4C 11F80004 */  beq        $t7, $t8, .L800D1E60
/* D2A50 800D1E50 00000000 */   nop
/* D2A54 800D1E54 90990008 */  lbu        $t9, 8($a0)
/* D2A58 800D1E58 3C09A460 */  lui        $t1, %hi(D_A4600028)
/* D2A5C 800D1E5C AD390028 */  sw         $t9, %lo(D_A4600028)($t1)
.L800D1E60:
/* D2A60 800D1E60 00085880 */  sll        $t3, $t0, 2
/* D2A64 800D1E64 3C01800E */  lui        $at, %hi(D_800DB100)
/* D2A68 800D1E68 002B0821 */  addu       $at, $at, $t3
/* D2A6C 800D1E6C AC24B100 */  sw         $a0, %lo(D_800DB100)($at)
.L800D1E70:
/* D2A70 800D1E70 8C8C000C */  lw         $t4, 0xc($a0)
/* D2A74 800D1E74 3C01A000 */  lui        $at, 0xa000
/* D2A78 800D1E78 27BD0010 */  addiu      $sp, $sp, 0x10
/* D2A7C 800D1E7C 01856825 */  or         $t5, $t4, $a1
/* D2A80 800D1E80 01A15025 */  or         $t2, $t5, $at
/* D2A84 800D1E84 AD460000 */  sw         $a2, ($t2)
/* D2A88 800D1E88 03E00008 */  jr         $ra
/* D2A8C 800D1E8C 00001025 */   or        $v0, $zero, $zero

glabel func_800D1E90
/* D2A90 800D1E90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D2A94 800D1E94 AFA40020 */  sw         $a0, 0x20($sp)
/* D2A98 800D1E98 8FAE0020 */  lw         $t6, 0x20($sp)
/* D2A9C 800D1E9C AFBF0014 */  sw         $ra, 0x14($sp)
/* D2AA0 800D1EA0 AFA60028 */  sw         $a2, 0x28($sp)
/* D2AA4 800D1EA4 AFA7002C */  sw         $a3, 0x2c($sp)
/* D2AA8 800D1EA8 ADC00000 */  sw         $zero, ($t6)
/* D2AAC 800D1EAC 8FAF0020 */  lw         $t7, 0x20($sp)
/* D2AB0 800D1EB0 ADE00004 */  sw         $zero, 4($t7)
/* D2AB4 800D1EB4 8FA80020 */  lw         $t0, 0x20($sp)
/* D2AB8 800D1EB8 8FB90034 */  lw         $t9, 0x34($sp)
/* D2ABC 800D1EBC 8FB80030 */  lw         $t8, 0x30($sp)
/* D2AC0 800D1EC0 AD19000C */  sw         $t9, 0xc($t0)
/* D2AC4 800D1EC4 AD180008 */  sw         $t8, 8($t0)
/* D2AC8 800D1EC8 8FAA0028 */  lw         $t2, 0x28($sp)
/* D2ACC 800D1ECC 8FAB002C */  lw         $t3, 0x2c($sp)
/* D2AD0 800D1ED0 15400003 */  bnez       $t2, .L800D1EE0
/* D2AD4 800D1ED4 00000000 */   nop
/* D2AD8 800D1ED8 11600005 */  beqz       $t3, .L800D1EF0
/* D2ADC 800D1EDC 00000000 */   nop
.L800D1EE0:
/* D2AE0 800D1EE0 8FA90020 */  lw         $t1, 0x20($sp)
/* D2AE4 800D1EE4 AD2A0010 */  sw         $t2, 0x10($t1)
/* D2AE8 800D1EE8 10000006 */  b          .L800D1F04
/* D2AEC 800D1EEC AD2B0014 */   sw        $t3, 0x14($t1)
.L800D1EF0:
/* D2AF0 800D1EF0 8FAE0020 */  lw         $t6, 0x20($sp)
/* D2AF4 800D1EF4 8FAC0030 */  lw         $t4, 0x30($sp)
/* D2AF8 800D1EF8 8FAD0034 */  lw         $t5, 0x34($sp)
/* D2AFC 800D1EFC ADCC0010 */  sw         $t4, 0x10($t6)
/* D2B00 800D1F00 ADCD0014 */  sw         $t5, 0x14($t6)
.L800D1F04:
/* D2B04 800D1F04 8FAF0038 */  lw         $t7, 0x38($sp)
/* D2B08 800D1F08 8FB80020 */  lw         $t8, 0x20($sp)
/* D2B0C 800D1F0C AF0F0018 */  sw         $t7, 0x18($t8)
/* D2B10 800D1F10 8FA80020 */  lw         $t0, 0x20($sp)
/* D2B14 800D1F14 8FB9003C */  lw         $t9, 0x3c($sp)
/* D2B18 800D1F18 AD19001C */  sw         $t9, 0x1c($t0)
/* D2B1C 800D1F1C 0C03397E */  jal        func_800CE5F8
/* D2B20 800D1F20 8FA40020 */   lw        $a0, 0x20($sp)
/* D2B24 800D1F24 3C0A800E */  lui        $t2, %hi(D_800DB180)
/* D2B28 800D1F28 8D4AB180 */  lw         $t2, %lo(D_800DB180)($t2)
/* D2B2C 800D1F2C AFA20018 */  sw         $v0, 0x18($sp)
/* D2B30 800D1F30 AFA3001C */  sw         $v1, 0x1c($sp)
/* D2B34 800D1F34 8FA90020 */  lw         $t1, 0x20($sp)
/* D2B38 800D1F38 8D4B0000 */  lw         $t3, ($t2)
/* D2B3C 800D1F3C 15690004 */  bne        $t3, $t1, .L800D1F50
/* D2B40 800D1F40 00000000 */   nop
/* D2B44 800D1F44 8FA40018 */  lw         $a0, 0x18($sp)
/* D2B48 800D1F48 0C033961 */  jal        func_800CE584
/* D2B4C 800D1F4C 8FA5001C */   lw        $a1, 0x1c($sp)
.L800D1F50:
/* D2B50 800D1F50 8FBF0014 */  lw         $ra, 0x14($sp)
/* D2B54 800D1F54 27BD0020 */  addiu      $sp, $sp, 0x20
/* D2B58 800D1F58 00001025 */  or         $v0, $zero, $zero
/* D2B5C 800D1F5C 03E00008 */  jr         $ra
/* D2B60 800D1F60 00000000 */   nop
/* D2B64 800D1F64 00000000 */  nop
/* D2B68 800D1F68 00000000 */  nop
/* D2B6C 800D1F6C 00000000 */  nop
