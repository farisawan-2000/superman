.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CC1B0
/* CCDB0 800CC1B0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* CCDB4 800CC1B4 AFA5006C */  sw         $a1, 0x6c($sp)
/* CCDB8 800CC1B8 00802825 */  or         $a1, $a0, $zero
/* CCDBC 800CC1BC AFBF0024 */  sw         $ra, 0x24($sp)
/* CCDC0 800CC1C0 AFA40068 */  sw         $a0, 0x68($sp)
/* CCDC4 800CC1C4 AFA60070 */  sw         $a2, 0x70($sp)
/* CCDC8 800CC1C8 AFA70074 */  sw         $a3, 0x74($sp)
/* CCDCC 800CC1CC 0C03113E */  jal        func_800C44F8
/* CCDD0 800CC1D0 27A40028 */   addiu     $a0, $sp, 0x28
/* CCDD4 800CC1D4 8FAE0078 */  lw         $t6, 0x78($sp)
/* CCDD8 800CC1D8 8FAF007C */  lw         $t7, 0x7c($sp)
/* CCDDC 800CC1DC 8FB80080 */  lw         $t8, 0x80($sp)
/* CCDE0 800CC1E0 27A40028 */  addiu      $a0, $sp, 0x28
/* CCDE4 800CC1E4 8FA5006C */  lw         $a1, 0x6c($sp)
/* CCDE8 800CC1E8 8FA60070 */  lw         $a2, 0x70($sp)
/* CCDEC 800CC1EC 8FA70074 */  lw         $a3, 0x74($sp)
/* CCDF0 800CC1F0 AFAE0010 */  sw         $t6, 0x10($sp)
/* CCDF4 800CC1F4 AFAF0014 */  sw         $t7, 0x14($sp)
/* CCDF8 800CC1F8 0C03309C */  jal        func_800CC270
/* CCDFC 800CC1FC AFB80018 */   sw        $t8, 0x18($sp)
/* CCE00 800CC200 8FBF0024 */  lw         $ra, 0x24($sp)
/* CCE04 800CC204 27BD0068 */  addiu      $sp, $sp, 0x68
/* CCE08 800CC208 03E00008 */  jr         $ra
/* CCE0C 800CC20C 00000000 */   nop

glabel func_800CC210
/* CCE10 800CC210 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* CCE14 800CC214 AFA500DC */  sw         $a1, 0xdc($sp)
/* CCE18 800CC218 00802825 */  or         $a1, $a0, $zero
/* CCE1C 800CC21C AFBF0014 */  sw         $ra, 0x14($sp)
/* CCE20 800CC220 AFA400D8 */  sw         $a0, 0xd8($sp)
/* CCE24 800CC224 AFA600E0 */  sw         $a2, 0xe0($sp)
/* CCE28 800CC228 0C03113E */  jal        func_800C44F8
/* CCE2C 800CC22C 27A40098 */   addiu     $a0, $sp, 0x98
/* CCE30 800CC230 27A40058 */  addiu      $a0, $sp, 0x58
/* CCE34 800CC234 0C03113E */  jal        func_800C44F8
/* CCE38 800CC238 8FA500DC */   lw        $a1, 0xdc($sp)
/* CCE3C 800CC23C 27A40098 */  addiu      $a0, $sp, 0x98
/* CCE40 800CC240 27A50058 */  addiu      $a1, $sp, 0x58
/* CCE44 800CC244 0C0330C4 */  jal        func_800CC310
/* CCE48 800CC248 27A60018 */   addiu     $a2, $sp, 0x18
/* CCE4C 800CC24C 27A40018 */  addiu      $a0, $sp, 0x18
/* CCE50 800CC250 0C0310D0 */  jal        func_800C4340
/* CCE54 800CC254 8FA500E0 */   lw        $a1, 0xe0($sp)
/* CCE58 800CC258 8FBF0014 */  lw         $ra, 0x14($sp)
/* CCE5C 800CC25C 27BD00D8 */  addiu      $sp, $sp, 0xd8
/* CCE60 800CC260 03E00008 */  jr         $ra
/* CCE64 800CC264 00000000 */   nop
/* CCE68 800CC268 00000000 */  nop
/* CCE6C 800CC26C 00000000 */  nop
