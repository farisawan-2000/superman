.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AB420
/* AC020 800AB420 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AC024 800AB424 AFBF001C */  sw         $ra, 0x1c($sp)
/* AC028 800AB428 AFA40028 */  sw         $a0, 0x28($sp)
/* AC02C 800AB42C AFA5002C */  sw         $a1, 0x2c($sp)
/* AC030 800AB430 AFA60030 */  sw         $a2, 0x30($sp)
/* AC034 800AB434 AFB00018 */  sw         $s0, 0x18($sp)
/* AC038 800AB438 8FAE0028 */  lw         $t6, 0x28($sp)
/* AC03C 800AB43C 2DC10017 */  sltiu      $at, $t6, 0x17
/* AC040 800AB440 14200007 */  bnez       $at, .L800AB460
/* AC044 800AB444 00000000 */   nop
/* AC048 800AB448 24040009 */  addiu      $a0, $zero, 9
/* AC04C 800AB44C 24050001 */  addiu      $a1, $zero, 1
/* AC050 800AB450 0C02B5EC */  jal        func_800AD7B0
/* AC054 800AB454 8FA60028 */   lw        $a2, 0x28($sp)
/* AC058 800AB458 10000014 */  b          .L800AB4AC
/* AC05C 800AB45C 00000000 */   nop
.L800AB460:
/* AC060 800AB460 0C02C0C8 */  jal        func_800B0320
/* AC064 800AB464 00000000 */   nop
/* AC068 800AB468 00408025 */  or         $s0, $v0, $zero
/* AC06C 800AB46C 8FAF0028 */  lw         $t7, 0x28($sp)
/* AC070 800AB470 3C19801A */  lui        $t9, %hi(D_801A3900)
/* AC074 800AB474 27393900 */  addiu      $t9, $t9, %lo(D_801A3900)
/* AC078 800AB478 000FC0C0 */  sll        $t8, $t7, 3
/* AC07C 800AB47C 03194021 */  addu       $t0, $t8, $t9
/* AC080 800AB480 AFA80020 */  sw         $t0, 0x20($sp)
/* AC084 800AB484 8FA9002C */  lw         $t1, 0x2c($sp)
/* AC088 800AB488 8FAA0020 */  lw         $t2, 0x20($sp)
/* AC08C 800AB48C AD490000 */  sw         $t1, ($t2)
/* AC090 800AB490 8FAB0030 */  lw         $t3, 0x30($sp)
/* AC094 800AB494 8FAC0020 */  lw         $t4, 0x20($sp)
/* AC098 800AB498 AD8B0004 */  sw         $t3, 4($t4)
/* AC09C 800AB49C 0C02C0D0 */  jal        func_800B0340
/* AC0A0 800AB4A0 02002025 */   or        $a0, $s0, $zero
/* AC0A4 800AB4A4 10000001 */  b          .L800AB4AC
/* AC0A8 800AB4A8 00000000 */   nop
.L800AB4AC:
/* AC0AC 800AB4AC 8FBF001C */  lw         $ra, 0x1c($sp)
/* AC0B0 800AB4B0 8FB00018 */  lw         $s0, 0x18($sp)
/* AC0B4 800AB4B4 27BD0028 */  addiu      $sp, $sp, 0x28
/* AC0B8 800AB4B8 03E00008 */  jr         $ra
/* AC0BC 800AB4BC 00000000 */   nop

glabel func_800AB4C0
/* AC0C0 800AB4C0 46006004 */  sqrt.s     $f0, $f12
/* AC0C4 800AB4C4 03E00008 */  jr         $ra
/* AC0C8 800AB4C8 00000000 */   nop
/* AC0CC 800AB4CC 00000000 */  nop
