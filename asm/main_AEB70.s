.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ADF70
/* AEB70 800ADF70 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* AEB74 800ADF74 AFBF0014 */  sw         $ra, 0x14($sp)
/* AEB78 800ADF78 AFA400D8 */  sw         $a0, 0xd8($sp)
/* AEB7C 800ADF7C AFA500DC */  sw         $a1, 0xdc($sp)
/* AEB80 800ADF80 AFA600E0 */  sw         $a2, 0xe0($sp)
/* AEB84 800ADF84 27A40098 */  addiu      $a0, $sp, 0x98
/* AEB88 800ADF88 0C0280C8 */  jal        func_800A0320
/* AEB8C 800ADF8C 8FA500D8 */   lw        $a1, 0xd8($sp)
/* AEB90 800ADF90 27A40058 */  addiu      $a0, $sp, 0x58
/* AEB94 800ADF94 0C0280C8 */  jal        func_800A0320
/* AEB98 800ADF98 8FA500DC */   lw        $a1, 0xdc($sp)
/* AEB9C 800ADF9C 27A40098 */  addiu      $a0, $sp, 0x98
/* AEBA0 800ADFA0 27A50058 */  addiu      $a1, $sp, 0x58
/* AEBA4 800ADFA4 0C02B810 */  jal        func_800AE040
/* AEBA8 800ADFA8 27A60018 */   addiu     $a2, $sp, 0x18
/* AEBAC 800ADFAC 27A40018 */  addiu      $a0, $sp, 0x18
/* AEBB0 800ADFB0 0C02807C */  jal        func_800A01F0
/* AEBB4 800ADFB4 8FA500E0 */   lw        $a1, 0xe0($sp)
/* AEBB8 800ADFB8 10000001 */  b          .L800ADFC0
/* AEBBC 800ADFBC 00000000 */   nop
.L800ADFC0:
/* AEBC0 800ADFC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* AEBC4 800ADFC4 27BD00D8 */  addiu      $sp, $sp, 0xd8
/* AEBC8 800ADFC8 03E00008 */  jr         $ra
/* AEBCC 800ADFCC 00000000 */   nop

glabel func_800ADFD0
/* AEBD0 800ADFD0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* AEBD4 800ADFD4 AFBF0024 */  sw         $ra, 0x24($sp)
/* AEBD8 800ADFD8 AFA40068 */  sw         $a0, 0x68($sp)
/* AEBDC 800ADFDC AFA5006C */  sw         $a1, 0x6c($sp)
/* AEBE0 800ADFE0 AFA60070 */  sw         $a2, 0x70($sp)
/* AEBE4 800ADFE4 AFA70074 */  sw         $a3, 0x74($sp)
/* AEBE8 800ADFE8 27A40028 */  addiu      $a0, $sp, 0x28
/* AEBEC 800ADFEC 0C0280C8 */  jal        func_800A0320
/* AEBF0 800ADFF0 8FA50068 */   lw        $a1, 0x68($sp)
/* AEBF4 800ADFF4 8FAE0078 */  lw         $t6, 0x78($sp)
/* AEBF8 800ADFF8 8FAF007C */  lw         $t7, 0x7c($sp)
/* AEBFC 800ADFFC 8FB80080 */  lw         $t8, 0x80($sp)
/* AEC00 800AE000 27A40028 */  addiu      $a0, $sp, 0x28
/* AEC04 800AE004 8FA5006C */  lw         $a1, 0x6c($sp)
/* AEC08 800AE008 8FA60070 */  lw         $a2, 0x70($sp)
/* AEC0C 800AE00C 8FA70074 */  lw         $a3, 0x74($sp)
/* AEC10 800AE010 AFAE0010 */  sw         $t6, 0x10($sp)
/* AEC14 800AE014 AFAF0014 */  sw         $t7, 0x14($sp)
/* AEC18 800AE018 0C02B85B */  jal        func_800AE16C
/* AEC1C 800AE01C AFB80018 */   sw        $t8, 0x18($sp)
/* AEC20 800AE020 10000001 */  b          .L800AE028
/* AEC24 800AE024 00000000 */   nop
.L800AE028:
/* AEC28 800AE028 8FBF0024 */  lw         $ra, 0x24($sp)
/* AEC2C 800AE02C 27BD0068 */  addiu      $sp, $sp, 0x68
/* AEC30 800AE030 03E00008 */  jr         $ra
/* AEC34 800AE034 00000000 */   nop
/* AEC38 800AE038 00000000 */  nop
/* AEC3C 800AE03C 00000000 */  nop
