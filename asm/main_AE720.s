.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ADB20
/* AE720 800ADB20 27BDFFF8 */  addiu      $sp, $sp, -8
/* AE724 800ADB24 3C0EA480 */  lui        $t6, %hi(D_A4800018)
/* AE728 800ADB28 8DC40018 */  lw         $a0, %lo(D_A4800018)($t6)
/* AE72C 800ADB2C 308F0003 */  andi       $t7, $a0, 3
/* AE730 800ADB30 11E00005 */  beqz       $t7, .L800ADB48
/* AE734 800ADB34 00000000 */   nop
/* AE738 800ADB38 10000007 */  b          .L800ADB58
/* AE73C 800ADB3C 24020001 */   addiu     $v0, $zero, 1
/* AE740 800ADB40 10000003 */  b          .L800ADB50
/* AE744 800ADB44 00000000 */   nop
.L800ADB48:
/* AE748 800ADB48 10000003 */  b          .L800ADB58
/* AE74C 800ADB4C 00001025 */   or        $v0, $zero, $zero
.L800ADB50:
/* AE750 800ADB50 10000001 */  b          .L800ADB58
/* AE754 800ADB54 00000000 */   nop
.L800ADB58:
/* AE758 800ADB58 03E00008 */  jr         $ra
/* AE75C 800ADB5C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800ADB60
/* AE760 800ADB60 27BDFFF8 */  addiu      $sp, $sp, -8
/* AE764 800ADB64 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* AE768 800ADB68 8DC40010 */  lw         $a0, %lo(D_A4040010)($t6)
/* AE76C 800ADB6C 308F001C */  andi       $t7, $a0, 0x1c
/* AE770 800ADB70 11E00005 */  beqz       $t7, .L800ADB88
/* AE774 800ADB74 00000000 */   nop
/* AE778 800ADB78 10000007 */  b          .L800ADB98
/* AE77C 800ADB7C 24020001 */   addiu     $v0, $zero, 1
/* AE780 800ADB80 10000003 */  b          .L800ADB90
/* AE784 800ADB84 00000000 */   nop
.L800ADB88:
/* AE788 800ADB88 10000003 */  b          .L800ADB98
/* AE78C 800ADB8C 00001025 */   or        $v0, $zero, $zero
.L800ADB90:
/* AE790 800ADB90 10000001 */  b          .L800ADB98
/* AE794 800ADB94 00000000 */   nop
.L800ADB98:
/* AE798 800ADB98 03E00008 */  jr         $ra
/* AE79C 800ADB9C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800ADBA0
/* AE7A0 800ADBA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE7A4 800ADBA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* AE7A8 800ADBA8 AFA40028 */  sw         $a0, 0x28($sp)
/* AE7AC 800ADBAC AFA5002C */  sw         $a1, 0x2c($sp)
/* AE7B0 800ADBB0 AFA60030 */  sw         $a2, 0x30($sp)
/* AE7B4 800ADBB4 AFB10018 */  sw         $s1, 0x18($sp)
/* AE7B8 800ADBB8 AFB00014 */  sw         $s0, 0x14($sp)
/* AE7BC 800ADBBC 8FAE0030 */  lw         $t6, 0x30($sp)
/* AE7C0 800ADBC0 11C0000A */  beqz       $t6, .L800ADBEC
/* AE7C4 800ADBC4 00000000 */   nop
/* AE7C8 800ADBC8 24010001 */  addiu      $at, $zero, 1
/* AE7CC 800ADBCC 11C10007 */  beq        $t6, $at, .L800ADBEC
/* AE7D0 800ADBD0 00000000 */   nop
/* AE7D4 800ADBD4 24040007 */  addiu      $a0, $zero, 7
/* AE7D8 800ADBD8 24050001 */  addiu      $a1, $zero, 1
/* AE7DC 800ADBDC 0C02B5EC */  jal        func_800AD7B0
/* AE7E0 800ADBE0 8FA60030 */   lw        $a2, 0x30($sp)
/* AE7E4 800ADBE4 1000004D */  b          .L800ADD1C
/* AE7E8 800ADBE8 2402FFFF */   addiu     $v0, $zero, -1
.L800ADBEC:
/* AE7EC 800ADBEC 0C02C0C8 */  jal        func_800B0320
/* AE7F0 800ADBF0 00000000 */   nop
/* AE7F4 800ADBF4 00408025 */  or         $s0, $v0, $zero
/* AE7F8 800ADBF8 8FAF0028 */  lw         $t7, 0x28($sp)
/* AE7FC 800ADBFC 8DF80008 */  lw         $t8, 8($t7)
/* AE800 800ADC00 8DF90010 */  lw         $t9, 0x10($t7)
/* AE804 800ADC04 0319082A */  slt        $at, $t8, $t9
/* AE808 800ADC08 14200018 */  bnez       $at, .L800ADC6C
/* AE80C 800ADC0C 00000000 */   nop
.L800ADC10:
/* AE810 800ADC10 8FA80030 */  lw         $t0, 0x30($sp)
/* AE814 800ADC14 24010001 */  addiu      $at, $zero, 1
/* AE818 800ADC18 1501000A */  bne        $t0, $at, .L800ADC44
/* AE81C 800ADC1C 00000000 */   nop
/* AE820 800ADC20 3C0A800D */  lui        $t2, %hi(D_800CC260)
/* AE824 800ADC24 8D4AC260 */  lw         $t2, %lo(D_800CC260)($t2)
/* AE828 800ADC28 24090008 */  addiu      $t1, $zero, 8
/* AE82C 800ADC2C A5490010 */  sh         $t1, 0x10($t2)
/* AE830 800ADC30 8FA40028 */  lw         $a0, 0x28($sp)
/* AE834 800ADC34 0C02618F */  jal        func_8009863C
/* AE838 800ADC38 24840004 */   addiu     $a0, $a0, 4
/* AE83C 800ADC3C 10000005 */  b          .L800ADC54
/* AE840 800ADC40 00000000 */   nop
.L800ADC44:
/* AE844 800ADC44 0C02C0D0 */  jal        func_800B0340
/* AE848 800ADC48 02002025 */   or        $a0, $s0, $zero
/* AE84C 800ADC4C 10000033 */  b          .L800ADD1C
/* AE850 800ADC50 2402FFFF */   addiu     $v0, $zero, -1
.L800ADC54:
/* AE854 800ADC54 8FAB0028 */  lw         $t3, 0x28($sp)
/* AE858 800ADC58 8D6C0008 */  lw         $t4, 8($t3)
/* AE85C 800ADC5C 8D6D0010 */  lw         $t5, 0x10($t3)
/* AE860 800ADC60 018D082A */  slt        $at, $t4, $t5
/* AE864 800ADC64 1020FFEA */  beqz       $at, .L800ADC10
/* AE868 800ADC68 00000000 */   nop
.L800ADC6C:
/* AE86C 800ADC6C 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE870 800ADC70 8DCF000C */  lw         $t7, 0xc($t6)
/* AE874 800ADC74 8DD80010 */  lw         $t8, 0x10($t6)
/* AE878 800ADC78 01F8C821 */  addu       $t9, $t7, $t8
/* AE87C 800ADC7C 2728FFFF */  addiu      $t0, $t9, -1
/* AE880 800ADC80 0118001A */  div        $zero, $t0, $t8
/* AE884 800ADC84 00004810 */  mfhi       $t1
/* AE888 800ADC88 ADC9000C */  sw         $t1, 0xc($t6)
/* AE88C 800ADC8C 17000002 */  bnez       $t8, .L800ADC98
/* AE890 800ADC90 00000000 */   nop
/* AE894 800ADC94 0007000D */  break      7
.L800ADC98:
/* AE898 800ADC98 2401FFFF */   addiu     $at, $zero, -1
/* AE89C 800ADC9C 17010004 */  bne        $t8, $at, .L800ADCB0
/* AE8A0 800ADCA0 3C018000 */   lui       $at, 0x8000
/* AE8A4 800ADCA4 15010002 */  bne        $t0, $at, .L800ADCB0
/* AE8A8 800ADCA8 00000000 */   nop
/* AE8AC 800ADCAC 0006000D */  break      6
.L800ADCB0:
/* AE8B0 800ADCB0 8FAB0028 */   lw        $t3, 0x28($sp)
/* AE8B4 800ADCB4 8FAA002C */  lw         $t2, 0x2c($sp)
/* AE8B8 800ADCB8 8D6D000C */  lw         $t5, 0xc($t3)
/* AE8BC 800ADCBC 8D6C0014 */  lw         $t4, 0x14($t3)
/* AE8C0 800ADCC0 000D7880 */  sll        $t7, $t5, 2
/* AE8C4 800ADCC4 018FC821 */  addu       $t9, $t4, $t7
/* AE8C8 800ADCC8 AF2A0000 */  sw         $t2, ($t9)
/* AE8CC 800ADCCC 8FA80028 */  lw         $t0, 0x28($sp)
/* AE8D0 800ADCD0 8D180008 */  lw         $t8, 8($t0)
/* AE8D4 800ADCD4 27090001 */  addiu      $t1, $t8, 1
/* AE8D8 800ADCD8 AD090008 */  sw         $t1, 8($t0)
/* AE8DC 800ADCDC 8FAE0028 */  lw         $t6, 0x28($sp)
/* AE8E0 800ADCE0 8DCB0000 */  lw         $t3, ($t6)
/* AE8E4 800ADCE4 8D6D0000 */  lw         $t5, ($t3)
/* AE8E8 800ADCE8 11A00006 */  beqz       $t5, .L800ADD04
/* AE8EC 800ADCEC 00000000 */   nop
/* AE8F0 800ADCF0 0C0261E5 */  jal        func_80098794
/* AE8F4 800ADCF4 8FA40028 */   lw        $a0, 0x28($sp)
/* AE8F8 800ADCF8 00408825 */  or         $s1, $v0, $zero
/* AE8FC 800ADCFC 0C02E4BC */  jal        func_800B92F0
/* AE900 800ADD00 02202025 */   or        $a0, $s1, $zero
.L800ADD04:
/* AE904 800ADD04 0C02C0D0 */  jal        func_800B0340
/* AE908 800ADD08 02002025 */   or        $a0, $s0, $zero
/* AE90C 800ADD0C 10000003 */  b          .L800ADD1C
/* AE910 800ADD10 00001025 */   or        $v0, $zero, $zero
/* AE914 800ADD14 10000001 */  b          .L800ADD1C
/* AE918 800ADD18 00000000 */   nop
.L800ADD1C:
/* AE91C 800ADD1C 8FBF001C */  lw         $ra, 0x1c($sp)
/* AE920 800ADD20 8FB00014 */  lw         $s0, 0x14($sp)
/* AE924 800ADD24 8FB10018 */  lw         $s1, 0x18($sp)
/* AE928 800ADD28 03E00008 */  jr         $ra
/* AE92C 800ADD2C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800ADD30
/* AE930 800ADD30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE934 800ADD34 AFBF001C */  sw         $ra, 0x1c($sp)
/* AE938 800ADD38 AFA40028 */  sw         $a0, 0x28($sp)
/* AE93C 800ADD3C AFA5002C */  sw         $a1, 0x2c($sp)
/* AE940 800ADD40 AFB00018 */  sw         $s0, 0x18($sp)
/* AE944 800ADD44 8FAE002C */  lw         $t6, 0x2c($sp)
/* AE948 800ADD48 05C00004 */  bltz       $t6, .L800ADD5C
/* AE94C 800ADD4C 00000000 */   nop
/* AE950 800ADD50 29C10100 */  slti       $at, $t6, 0x100
/* AE954 800ADD54 14200007 */  bnez       $at, .L800ADD74
/* AE958 800ADD58 00000000 */   nop
.L800ADD5C:
/* AE95C 800ADD5C 24040004 */  addiu      $a0, $zero, 4
/* AE960 800ADD60 24050001 */  addiu      $a1, $zero, 1
/* AE964 800ADD64 0C02B5EC */  jal        func_800AD7B0
/* AE968 800ADD68 8FA6002C */   lw        $a2, 0x2c($sp)
/* AE96C 800ADD6C 10000037 */  b          .L800ADE4C
/* AE970 800ADD70 00000000 */   nop
.L800ADD74:
/* AE974 800ADD74 0C02C0C8 */  jal        func_800B0320
/* AE978 800ADD78 00000000 */   nop
/* AE97C 800ADD7C 00408025 */  or         $s0, $v0, $zero
/* AE980 800ADD80 8FAF0028 */  lw         $t7, 0x28($sp)
/* AE984 800ADD84 15E00004 */  bnez       $t7, .L800ADD98
/* AE988 800ADD88 00000000 */   nop
/* AE98C 800ADD8C 3C18800D */  lui        $t8, %hi(D_800CC260)
/* AE990 800ADD90 8F18C260 */  lw         $t8, %lo(D_800CC260)($t8)
/* AE994 800ADD94 AFB80028 */  sw         $t8, 0x28($sp)
.L800ADD98:
/* AE998 800ADD98 8FB90028 */  lw         $t9, 0x28($sp)
/* AE99C 800ADD9C 8FA9002C */  lw         $t1, 0x2c($sp)
/* AE9A0 800ADDA0 8F280004 */  lw         $t0, 4($t9)
/* AE9A4 800ADDA4 11090025 */  beq        $t0, $t1, .L800ADE3C
/* AE9A8 800ADDA8 00000000 */   nop
/* AE9AC 800ADDAC 8FAA002C */  lw         $t2, 0x2c($sp)
/* AE9B0 800ADDB0 8FAB0028 */  lw         $t3, 0x28($sp)
/* AE9B4 800ADDB4 AD6A0004 */  sw         $t2, 4($t3)
/* AE9B8 800ADDB8 3C0D800D */  lui        $t5, %hi(D_800CC260)
/* AE9BC 800ADDBC 8DADC260 */  lw         $t5, %lo(D_800CC260)($t5)
/* AE9C0 800ADDC0 8FAC0028 */  lw         $t4, 0x28($sp)
/* AE9C4 800ADDC4 118D000D */  beq        $t4, $t5, .L800ADDFC
/* AE9C8 800ADDC8 00000000 */   nop
/* AE9CC 800ADDCC 958E0010 */  lhu        $t6, 0x10($t4)
/* AE9D0 800ADDD0 24010001 */  addiu      $at, $zero, 1
/* AE9D4 800ADDD4 11C10009 */  beq        $t6, $at, .L800ADDFC
/* AE9D8 800ADDD8 00000000 */   nop
/* AE9DC 800ADDDC 8FAF0028 */  lw         $t7, 0x28($sp)
/* AE9E0 800ADDE0 8DE40008 */  lw         $a0, 8($t7)
/* AE9E4 800ADDE4 0C026250 */  jal        func_80098940
/* AE9E8 800ADDE8 01E02825 */   or        $a1, $t7, $zero
/* AE9EC 800ADDEC 8FB80028 */  lw         $t8, 0x28($sp)
/* AE9F0 800ADDF0 8F040008 */  lw         $a0, 8($t8)
/* AE9F4 800ADDF4 0C0261D2 */  jal        func_80098748
/* AE9F8 800ADDF8 03002825 */   or        $a1, $t8, $zero
.L800ADDFC:
/* AE9FC 800ADDFC 3C19800D */  lui        $t9, %hi(D_800CC260)
/* AEA00 800ADE00 3C09800D */  lui        $t1, %hi(D_800CC258)
/* AEA04 800ADE04 8D29C258 */  lw         $t1, %lo(D_800CC258)($t1)
/* AEA08 800ADE08 8F39C260 */  lw         $t9, %lo(D_800CC260)($t9)
/* AEA0C 800ADE0C 8D2A0004 */  lw         $t2, 4($t1)
/* AEA10 800ADE10 8F280004 */  lw         $t0, 4($t9)
/* AEA14 800ADE14 010A082A */  slt        $at, $t0, $t2
/* AEA18 800ADE18 10200008 */  beqz       $at, .L800ADE3C
/* AEA1C 800ADE1C 00000000 */   nop
/* AEA20 800ADE20 3C0D800D */  lui        $t5, %hi(D_800CC260)
/* AEA24 800ADE24 8DADC260 */  lw         $t5, %lo(D_800CC260)($t5)
/* AEA28 800ADE28 240B0002 */  addiu      $t3, $zero, 2
/* AEA2C 800ADE2C A5AB0010 */  sh         $t3, 0x10($t5)
/* AEA30 800ADE30 3C04800D */  lui        $a0, %hi(D_800CC258)
/* AEA34 800ADE34 0C02618F */  jal        func_8009863C
/* AEA38 800ADE38 2484C258 */   addiu     $a0, $a0, %lo(D_800CC258)
.L800ADE3C:
/* AEA3C 800ADE3C 0C02C0D0 */  jal        func_800B0340
/* AEA40 800ADE40 02002025 */   or        $a0, $s0, $zero
/* AEA44 800ADE44 10000001 */  b          .L800ADE4C
/* AEA48 800ADE48 00000000 */   nop
.L800ADE4C:
/* AEA4C 800ADE4C 8FBF001C */  lw         $ra, 0x1c($sp)
/* AEA50 800ADE50 8FB00018 */  lw         $s0, 0x18($sp)
/* AEA54 800ADE54 27BD0028 */  addiu      $sp, $sp, 0x28
/* AEA58 800ADE58 03E00008 */  jr         $ra
/* AEA5C 800ADE5C 00000000 */   nop

glabel func_800ADE60
/* AEA60 800ADE60 14800003 */  bnez       $a0, .L800ADE70
/* AEA64 800ADE64 00000000 */   nop
/* AEA68 800ADE68 3C04800D */  lui        $a0, %hi(D_800CC260)
/* AEA6C 800ADE6C 8C84C260 */  lw         $a0, %lo(D_800CC260)($a0)
.L800ADE70:
/* AEA70 800ADE70 03E00008 */  jr         $ra
/* AEA74 800ADE74 8C820004 */   lw        $v0, 4($a0)

glabel func_800ADE78
/* AEA78 800ADE78 03E00008 */  jr         $ra
/* AEA7C 800ADE7C 00000000 */   nop

glabel func_800ADE80
/* AEA80 800ADE80 03E00008 */  jr         $ra
/* AEA84 800ADE84 00000000 */   nop
/* AEA88 800ADE88 00000000 */  nop
/* AEA8C 800ADE8C 00000000 */  nop
