.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CDD80
/* CE980 800CDD80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CE984 800CDD84 AFBF0014 */  sw         $ra, 0x14($sp)
/* CE988 800CDD88 0C033DD4 */  jal        func_800CF750
/* CE98C 800CDD8C AFA40020 */   sw        $a0, 0x20($sp)
/* CE990 800CDD90 3C0F800E */  lui        $t7, %hi(D_800DB1F4)
/* CE994 800CDD94 8DEFB1F4 */  lw         $t7, %lo(D_800DB1F4)($t7)
/* CE998 800CDD98 8FAE0020 */  lw         $t6, 0x20($sp)
/* CE99C 800CDD9C AFA2001C */  sw         $v0, 0x1c($sp)
/* CE9A0 800CDDA0 3C18800E */  lui        $t8, %hi(D_800DB1F4)
/* CE9A4 800CDDA4 ADEE0004 */  sw         $t6, 4($t7)
/* CE9A8 800CDDA8 8F18B1F4 */  lw         $t8, %lo(D_800DB1F4)($t8)
/* CE9AC 800CDDAC 97190000 */  lhu        $t9, ($t8)
/* CE9B0 800CDDB0 37280010 */  ori        $t0, $t9, 0x10
/* CE9B4 800CDDB4 A7080000 */  sh         $t0, ($t8)
/* CE9B8 800CDDB8 0C033DDC */  jal        func_800CF770
/* CE9BC 800CDDBC 8FA4001C */   lw        $a0, 0x1c($sp)
/* CE9C0 800CDDC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* CE9C4 800CDDC4 27BD0020 */  addiu      $sp, $sp, 0x20
/* CE9C8 800CDDC8 03E00008 */  jr         $ra
/* CE9CC 800CDDCC 00000000 */   nop

glabel func_800CDDD0
/* CE9D0 800CDDD0 3C01800E */  lui        $at, %hi(D_800DFE30)
/* CE9D4 800CDDD4 C420FE30 */  lwc1       $f0, %lo(D_800DFE30)($at)
/* CE9D8 800CDDD8 44856000 */  mtc1       $a1, $f12
/* CE9DC 800CDDDC 44867000 */  mtc1       $a2, $f14
/* CE9E0 800CDDE0 44878000 */  mtc1       $a3, $f16
/* CE9E4 800CDDE4 46006302 */  mul.s      $f12, $f12, $f0
/* CE9E8 800CDDE8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* CE9EC 800CDDEC AFBF002C */  sw         $ra, 0x2c($sp)
/* CE9F0 800CDDF0 46007382 */  mul.s      $f14, $f14, $f0
/* CE9F4 800CDDF4 AFB00028 */  sw         $s0, 0x28($sp)
/* CE9F8 800CDDF8 3C018014 */  lui        $at, 0x8014
/* CE9FC 800CDDFC 46008402 */  mul.s      $f16, $f16, $f0
/* CEA00 800CDE00 00808025 */  or         $s0, $a0, $zero
/* CEA04 800CDE04 F7B60020 */  sdc1       $f22, 0x20($sp)
/* CEA08 800CDE08 F7B40018 */  sdc1       $f20, 0x18($sp)
/* CEA0C 800CDE0C E7AE0050 */  swc1       $f14, 0x50($sp)
/* CEA10 800CDE10 E7AC004C */  swc1       $f12, 0x4c($sp)
/* CEA14 800CDE14 E4206C80 */  swc1       $f0, 0x6c80($at)
/* CEA18 800CDE18 0C02F904 */  jal        func_800BE410
/* CEA1C 800CDE1C E7B00054 */   swc1      $f16, 0x54($sp)
/* CEA20 800CDE20 C7AC004C */  lwc1       $f12, 0x4c($sp)
/* CEA24 800CDE24 0C033F18 */  jal        func_800CFC60
/* CEA28 800CDE28 46000506 */   mov.s     $f20, $f0
/* CEA2C 800CDE2C 46000586 */  mov.s      $f22, $f0
/* CEA30 800CDE30 0C02F904 */  jal        func_800BE410
/* CEA34 800CDE34 C7AC0050 */   lwc1      $f12, 0x50($sp)
/* CEA38 800CDE38 E7A00040 */  swc1       $f0, 0x40($sp)
/* CEA3C 800CDE3C 0C033F18 */  jal        func_800CFC60
/* CEA40 800CDE40 C7AC0050 */   lwc1      $f12, 0x50($sp)
/* CEA44 800CDE44 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* CEA48 800CDE48 0C02F904 */  jal        func_800BE410
/* CEA4C 800CDE4C E7A00034 */   swc1      $f0, 0x34($sp)
/* CEA50 800CDE50 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* CEA54 800CDE54 0C033F18 */  jal        func_800CFC60
/* CEA58 800CDE58 E7A0003C */   swc1      $f0, 0x3c($sp)
/* CEA5C 800CDE5C C7B00034 */  lwc1       $f16, 0x34($sp)
/* CEA60 800CDE60 C7A20058 */  lwc1       $f2, 0x58($sp)
/* CEA64 800CDE64 C7AE003C */  lwc1       $f14, 0x3c($sp)
/* CEA68 800CDE68 46008102 */  mul.s      $f4, $f16, $f0
/* CEA6C 800CDE6C 44809000 */  mtc1       $zero, $f18
/* CEA70 800CDE70 3C013F80 */  lui        $at, 0x3f80
/* CEA74 800CDE74 46022182 */  mul.s      $f6, $f4, $f2
/* CEA78 800CDE78 00000000 */  nop
/* CEA7C 800CDE7C 460E8202 */  mul.s      $f8, $f16, $f14
/* CEA80 800CDE80 E6060000 */  swc1       $f6, ($s0)
/* CEA84 800CDE84 46024282 */  mul.s      $f10, $f8, $f2
/* CEA88 800CDE88 E60A0004 */  swc1       $f10, 4($s0)
/* CEA8C 800CDE8C C7A40040 */  lwc1       $f4, 0x40($sp)
/* CEA90 800CDE90 E612000C */  swc1       $f18, 0xc($s0)
/* CEA94 800CDE94 46002187 */  neg.s      $f6, $f4
/* CEA98 800CDE98 46023202 */  mul.s      $f8, $f6, $f2
/* CEA9C 800CDE9C E6080008 */  swc1       $f8, 8($s0)
/* CEAA0 800CDEA0 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* CEAA4 800CDEA4 E612001C */  swc1       $f18, 0x1c($s0)
/* CEAA8 800CDEA8 460AA302 */  mul.s      $f12, $f20, $f10
/* CEAAC 800CDEAC 00000000 */  nop
/* CEAB0 800CDEB0 46006102 */  mul.s      $f4, $f12, $f0
/* CEAB4 800CDEB4 00000000 */  nop
/* CEAB8 800CDEB8 460EB182 */  mul.s      $f6, $f22, $f14
/* CEABC 800CDEBC 46062201 */  sub.s      $f8, $f4, $f6
/* CEAC0 800CDEC0 46024282 */  mul.s      $f10, $f8, $f2
/* CEAC4 800CDEC4 00000000 */  nop
/* CEAC8 800CDEC8 460E6102 */  mul.s      $f4, $f12, $f14
/* CEACC 800CDECC 00000000 */  nop
/* CEAD0 800CDED0 4600B182 */  mul.s      $f6, $f22, $f0
/* CEAD4 800CDED4 E60A0010 */  swc1       $f10, 0x10($s0)
/* CEAD8 800CDED8 46062200 */  add.s      $f8, $f4, $f6
/* CEADC 800CDEDC 46024282 */  mul.s      $f10, $f8, $f2
/* CEAE0 800CDEE0 00000000 */  nop
/* CEAE4 800CDEE4 4610A102 */  mul.s      $f4, $f20, $f16
/* CEAE8 800CDEE8 E60A0014 */  swc1       $f10, 0x14($s0)
/* CEAEC 800CDEEC 46022182 */  mul.s      $f6, $f4, $f2
/* CEAF0 800CDEF0 E6060018 */  swc1       $f6, 0x18($s0)
/* CEAF4 800CDEF4 C7A80040 */  lwc1       $f8, 0x40($sp)
/* CEAF8 800CDEF8 E612002C */  swc1       $f18, 0x2c($s0)
/* CEAFC 800CDEFC 4608B302 */  mul.s      $f12, $f22, $f8
/* CEB00 800CDF00 00000000 */  nop
/* CEB04 800CDF04 46006282 */  mul.s      $f10, $f12, $f0
/* CEB08 800CDF08 00000000 */  nop
/* CEB0C 800CDF0C 460EA102 */  mul.s      $f4, $f20, $f14
/* CEB10 800CDF10 46045180 */  add.s      $f6, $f10, $f4
/* CEB14 800CDF14 46023202 */  mul.s      $f8, $f6, $f2
/* CEB18 800CDF18 00000000 */  nop
/* CEB1C 800CDF1C 460E6282 */  mul.s      $f10, $f12, $f14
/* CEB20 800CDF20 00000000 */  nop
/* CEB24 800CDF24 4600A102 */  mul.s      $f4, $f20, $f0
/* CEB28 800CDF28 E6080020 */  swc1       $f8, 0x20($s0)
/* CEB2C 800CDF2C 46045181 */  sub.s      $f6, $f10, $f4
/* CEB30 800CDF30 46023202 */  mul.s      $f8, $f6, $f2
/* CEB34 800CDF34 00000000 */  nop
/* CEB38 800CDF38 4610B282 */  mul.s      $f10, $f22, $f16
/* CEB3C 800CDF3C E6080024 */  swc1       $f8, 0x24($s0)
/* CEB40 800CDF40 46025102 */  mul.s      $f4, $f10, $f2
/* CEB44 800CDF44 E6040028 */  swc1       $f4, 0x28($s0)
/* CEB48 800CDF48 C7A6005C */  lwc1       $f6, 0x5c($sp)
/* CEB4C 800CDF4C 44812000 */  mtc1       $at, $f4
/* CEB50 800CDF50 E6060030 */  swc1       $f6, 0x30($s0)
/* CEB54 800CDF54 C7A80060 */  lwc1       $f8, 0x60($sp)
/* CEB58 800CDF58 E6080034 */  swc1       $f8, 0x34($s0)
/* CEB5C 800CDF5C C7AA0064 */  lwc1       $f10, 0x64($sp)
/* CEB60 800CDF60 E604003C */  swc1       $f4, 0x3c($s0)
/* CEB64 800CDF64 E60A0038 */  swc1       $f10, 0x38($s0)
/* CEB68 800CDF68 8FBF002C */  lw         $ra, 0x2c($sp)
/* CEB6C 800CDF6C 8FB00028 */  lw         $s0, 0x28($sp)
/* CEB70 800CDF70 D7B60020 */  ldc1       $f22, 0x20($sp)
/* CEB74 800CDF74 D7B40018 */  ldc1       $f20, 0x18($sp)
/* CEB78 800CDF78 03E00008 */  jr         $ra
/* CEB7C 800CDF7C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800CDF80
/* CEB80 800CDF80 27BDFF98 */  addiu      $sp, $sp, -0x68
/* CEB84 800CDF84 44856000 */  mtc1       $a1, $f12
/* CEB88 800CDF88 44867000 */  mtc1       $a2, $f14
/* CEB8C 800CDF8C 44878000 */  mtc1       $a3, $f16
/* CEB90 800CDF90 C7A40078 */  lwc1       $f4, 0x78($sp)
/* CEB94 800CDF94 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* CEB98 800CDF98 C7A80080 */  lwc1       $f8, 0x80($sp)
/* CEB9C 800CDF9C C7AA0084 */  lwc1       $f10, 0x84($sp)
/* CEBA0 800CDFA0 AFBF0024 */  sw         $ra, 0x24($sp)
/* CEBA4 800CDFA4 AFA40068 */  sw         $a0, 0x68($sp)
/* CEBA8 800CDFA8 44056000 */  mfc1       $a1, $f12
/* CEBAC 800CDFAC 44067000 */  mfc1       $a2, $f14
/* CEBB0 800CDFB0 44078000 */  mfc1       $a3, $f16
/* CEBB4 800CDFB4 27A40028 */  addiu      $a0, $sp, 0x28
/* CEBB8 800CDFB8 E7A40010 */  swc1       $f4, 0x10($sp)
/* CEBBC 800CDFBC E7A60014 */  swc1       $f6, 0x14($sp)
/* CEBC0 800CDFC0 E7A80018 */  swc1       $f8, 0x18($sp)
/* CEBC4 800CDFC4 0C033774 */  jal        func_800CDDD0
/* CEBC8 800CDFC8 E7AA001C */   swc1      $f10, 0x1c($sp)
/* CEBCC 800CDFCC 27A40028 */  addiu      $a0, $sp, 0x28
/* CEBD0 800CDFD0 0C0310D0 */  jal        func_800C4340
/* CEBD4 800CDFD4 8FA50068 */   lw        $a1, 0x68($sp)
/* CEBD8 800CDFD8 8FBF0024 */  lw         $ra, 0x24($sp)
/* CEBDC 800CDFDC 27BD0068 */  addiu      $sp, $sp, 0x68
/* CEBE0 800CDFE0 03E00008 */  jr         $ra
/* CEBE4 800CDFE4 00000000 */   nop
/* CEBE8 800CDFE8 00000000 */  nop
/* CEBEC 800CDFEC 00000000 */  nop
