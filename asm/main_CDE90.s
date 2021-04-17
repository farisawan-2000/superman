.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD290
/* CDE90 800CD290 240E0002 */  addiu      $t6, $zero, 2
/* CDE94 800CD294 3C018014 */  lui        $at, %hi(D_80146C04)
/* CDE98 800CD298 A02E6C04 */  sb         $t6, %lo(D_80146C04)($at)
/* CDE9C 800CD29C 3C018014 */  lui        $at, %hi(D_80146C0C)
/* CDEA0 800CD2A0 3C0FA500 */  lui        $t7, 0xa500
/* CDEA4 800CD2A4 AC2F6C0C */  sw         $t7, %lo(D_80146C0C)($at)
/* CDEA8 800CD2A8 3C018014 */  lui        $at, %hi(D_80146C05)
/* CDEAC 800CD2AC 24180003 */  addiu      $t8, $zero, 3
/* CDEB0 800CD2B0 A0386C05 */  sb         $t8, %lo(D_80146C05)($at)
/* CDEB4 800CD2B4 3C018014 */  lui        $at, %hi(D_80146C08)
/* CDEB8 800CD2B8 24190006 */  addiu      $t9, $zero, 6
/* CDEBC 800CD2BC A0396C08 */  sb         $t9, %lo(D_80146C08)($at)
/* CDEC0 800CD2C0 3C018014 */  lui        $at, %hi(D_80146C06)
/* CDEC4 800CD2C4 24080006 */  addiu      $t0, $zero, 6
/* CDEC8 800CD2C8 24090002 */  addiu      $t1, $zero, 2
/* CDECC 800CD2CC A0286C06 */  sb         $t0, %lo(D_80146C06)($at)
/* CDED0 800CD2D0 A0296C07 */  sb         $t1, 0x6c07($at)
/* CDED4 800CD2D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CDED8 800CD2D8 3C018014 */  lui        $at, %hi(D_80146C09)
/* CDEDC 800CD2DC 240A0001 */  addiu      $t2, $zero, 1
/* CDEE0 800CD2E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* CDEE4 800CD2E4 A02A6C09 */  sb         $t2, %lo(D_80146C09)($at)
/* CDEE8 800CD2E8 240B0003 */  addiu      $t3, $zero, 3
/* CDEEC 800CD2EC 3C0CA460 */  lui        $t4, %hi(D_A4600024)
/* CDEF0 800CD2F0 AD8B0024 */  sw         $t3, %lo(D_A4600024)($t4)
/* CDEF4 800CD2F4 3C0D8014 */  lui        $t5, %hi(D_80146C08)
/* CDEF8 800CD2F8 91AD6C08 */  lbu        $t5, %lo(D_80146C08)($t5)
/* CDEFC 800CD2FC 3C0EA460 */  lui        $t6, %hi(D_A4600028)
/* CDF00 800CD300 3C0F8014 */  lui        $t7, %hi(D_80146C06)
/* CDF04 800CD304 ADCD0028 */  sw         $t5, %lo(D_A4600028)($t6)
/* CDF08 800CD308 91EF6C06 */  lbu        $t7, %lo(D_80146C06)($t7)
/* CDF0C 800CD30C 3C18A460 */  lui        $t8, %hi(D_A460002C)
/* CDF10 800CD310 3C198014 */  lui        $t9, %hi(D_80146C07)
/* CDF14 800CD314 AF0F002C */  sw         $t7, %lo(D_A460002C)($t8)
/* CDF18 800CD318 93396C07 */  lbu        $t9, %lo(D_80146C07)($t9)
/* CDF1C 800CD31C 3C08A460 */  lui        $t0, %hi(D_A4600030)
/* CDF20 800CD320 3C048014 */  lui        $a0, %hi(D_80146C00)
/* CDF24 800CD324 3C018014 */  lui        $at, %hi(D_80146C10)
/* CDF28 800CD328 24846C00 */  addiu      $a0, $a0, %lo(D_80146C00)
/* CDF2C 800CD32C AD190030 */  sw         $t9, %lo(D_A4600030)($t0)
/* CDF30 800CD330 AC206C10 */  sw         $zero, %lo(D_80146C10)($at)
/* CDF34 800CD334 24840014 */  addiu      $a0, $a0, 0x14
/* CDF38 800CD338 0C030DE4 */  jal        func_800C3790
/* CDF3C 800CD33C 24050060 */   addiu     $a1, $zero, 0x60
/* CDF40 800CD340 0C033DD4 */  jal        func_800CF750
/* CDF44 800CD344 00000000 */   nop
/* CDF48 800CD348 3C09800E */  lui        $t1, %hi(D_800DB0FC)
/* CDF4C 800CD34C 8D29B0FC */  lw         $t1, %lo(D_800DB0FC)($t1)
/* CDF50 800CD350 3C018014 */  lui        $at, %hi(D_80146C00)
/* CDF54 800CD354 3C0A8014 */  lui        $t2, %hi(D_80146C00)
/* CDF58 800CD358 AC296C00 */  sw         $t1, %lo(D_80146C00)($at)
/* CDF5C 800CD35C 3C01800E */  lui        $at, %hi(D_800DB0FC)
/* CDF60 800CD360 254A6C00 */  addiu      $t2, $t2, %lo(D_80146C00)
/* CDF64 800CD364 AC2AB0FC */  sw         $t2, %lo(D_800DB0FC)($at)
/* CDF68 800CD368 AFA2001C */  sw         $v0, 0x1c($sp)
/* CDF6C 800CD36C 3C018014 */  lui        $at, %hi(D_80146C74)
/* CDF70 800CD370 AC2A6C74 */  sw         $t2, %lo(D_80146C74)($at)
/* CDF74 800CD374 0C033DDC */  jal        func_800CF770
/* CDF78 800CD378 8FA4001C */   lw        $a0, 0x1c($sp)
/* CDF7C 800CD37C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CDF80 800CD380 3C028014 */  lui        $v0, %hi(D_80146C00)
/* CDF84 800CD384 24426C00 */  addiu      $v0, $v0, %lo(D_80146C00)
/* CDF88 800CD388 03E00008 */  jr         $ra
/* CDF8C 800CD38C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800CD390
/* CDF90 800CD390 27BDFFF8 */  addiu      $sp, $sp, -8
/* CDF94 800CD394 AFA40008 */  sw         $a0, 8($sp)
/* CDF98 800CD398 AFA5000C */  sw         $a1, 0xc($sp)
/* CDF9C 800CD39C AFA60010 */  sw         $a2, 0x10($sp)
/* CDFA0 800CD3A0 AFA70014 */  sw         $a3, 0x14($sp)
/* CDFA4 800CD3A4 03E00008 */  jr         $ra
/* CDFA8 800CD3A8 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800CD3AC
/* CDFAC 800CD3AC 27BDFFF8 */  addiu      $sp, $sp, -8
/* CDFB0 800CD3B0 AFA40008 */  sw         $a0, 8($sp)
/* CDFB4 800CD3B4 AFA5000C */  sw         $a1, 0xc($sp)
/* CDFB8 800CD3B8 AFA60010 */  sw         $a2, 0x10($sp)
/* CDFBC 800CD3BC AFA70014 */  sw         $a3, 0x14($sp)
/* CDFC0 800CD3C0 03E00008 */  jr         $ra
/* CDFC4 800CD3C4 27BD0008 */   addiu     $sp, $sp, 8
/* CDFC8 800CD3C8 00000000 */  nop
/* CDFCC 800CD3CC 00000000 */  nop
