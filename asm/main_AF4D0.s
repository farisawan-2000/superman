.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AE8D0
/* AF4D0 800AE8D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AF4D4 800AE8D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AF4D8 800AE8D8 AFA40020 */  sw         $a0, 0x20($sp)
/* AF4DC 800AE8DC 0C02E370 */  jal        func_800B8DC0
/* AF4E0 800AE8E0 00000000 */   nop
/* AF4E4 800AE8E4 AFA2001C */  sw         $v0, 0x1c($sp)
/* AF4E8 800AE8E8 8FAE001C */  lw         $t6, 0x1c($sp)
/* AF4EC 800AE8EC 31CF0100 */  andi       $t7, $t6, 0x100
/* AF4F0 800AE8F0 11E00004 */  beqz       $t7, .L800AE904
/* AF4F4 800AE8F4 00000000 */   nop
/* AF4F8 800AE8F8 24180001 */  addiu      $t8, $zero, 1
/* AF4FC 800AE8FC 10000002 */  b          .L800AE908
/* AF500 800AE900 AFB80018 */   sw        $t8, 0x18($sp)
.L800AE904:
/* AF504 800AE904 AFA00018 */  sw         $zero, 0x18($sp)
.L800AE908:
/* AF508 800AE908 8FB9001C */  lw         $t9, 0x1c($sp)
/* AF50C 800AE90C 33280080 */  andi       $t0, $t9, 0x80
/* AF510 800AE910 1100000B */  beqz       $t0, .L800AE940
/* AF514 800AE914 00000000 */   nop
/* AF518 800AE918 8FA90020 */  lw         $t1, 0x20($sp)
/* AF51C 800AE91C 8FAB0018 */  lw         $t3, 0x18($sp)
/* AF520 800AE920 8D2A0004 */  lw         $t2, 4($t1)
/* AF524 800AE924 014B6025 */  or         $t4, $t2, $t3
/* AF528 800AE928 AD2C0004 */  sw         $t4, 4($t1)
/* AF52C 800AE92C 8FAD0020 */  lw         $t5, 0x20($sp)
/* AF530 800AE930 2401FFFD */  addiu      $at, $zero, -3
/* AF534 800AE934 8DAE0004 */  lw         $t6, 4($t5)
/* AF538 800AE938 01C17824 */  and        $t7, $t6, $at
/* AF53C 800AE93C ADAF0004 */  sw         $t7, 4($t5)
.L800AE940:
/* AF540 800AE940 10000003 */  b          .L800AE950
/* AF544 800AE944 8FA20018 */   lw        $v0, 0x18($sp)
/* AF548 800AE948 10000001 */  b          .L800AE950
/* AF54C 800AE94C 00000000 */   nop
.L800AE950:
/* AF550 800AE950 8FBF0014 */  lw         $ra, 0x14($sp)
/* AF554 800AE954 27BD0020 */  addiu      $sp, $sp, 0x20
/* AF558 800AE958 03E00008 */  jr         $ra
/* AF55C 800AE95C 00000000 */   nop

glabel func_800AE960
/* AF560 800AE960 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AF564 800AE964 AFBF0014 */  sw         $ra, 0x14($sp)
/* AF568 800AE968 AFA40020 */  sw         $a0, 0x20($sp)
/* AF56C 800AE96C AFA50024 */  sw         $a1, 0x24($sp)
/* AF570 800AE970 8FAE0020 */  lw         $t6, 0x20($sp)
/* AF574 800AE974 8DCF0040 */  lw         $t7, 0x40($t6)
/* AF578 800AE978 AFAF001C */  sw         $t7, 0x1c($sp)
/* AF57C 800AE97C 87B80026 */  lh         $t8, 0x26($sp)
/* AF580 800AE980 8FA8001C */  lw         $t0, 0x1c($sp)
/* AF584 800AE984 0018C880 */  sll        $t9, $t8, 2
/* AF588 800AE988 0338C823 */  subu       $t9, $t9, $t8
/* AF58C 800AE98C 0019C900 */  sll        $t9, $t9, 4
/* AF590 800AE990 03284821 */  addu       $t1, $t9, $t0
/* AF594 800AE994 8D2A0028 */  lw         $t2, 0x28($t1)
/* AF598 800AE998 11400006 */  beqz       $t2, .L800AE9B4
/* AF59C 800AE99C 00000000 */   nop
/* AF5A0 800AE9A0 2404006B */  addiu      $a0, $zero, 0x6b
/* AF5A4 800AE9A4 0C02B5EC */  jal        func_800AD7B0
/* AF5A8 800AE9A8 00002825 */   or        $a1, $zero, $zero
/* AF5AC 800AE9AC 10000012 */  b          .L800AE9F8
/* AF5B0 800AE9B0 00000000 */   nop
.L800AE9B4:
/* AF5B4 800AE9B4 87AC0026 */  lh         $t4, 0x26($sp)
/* AF5B8 800AE9B8 8FAB001C */  lw         $t3, 0x1c($sp)
/* AF5BC 800AE9BC 000C6880 */  sll        $t5, $t4, 2
/* AF5C0 800AE9C0 01AC6823 */  subu       $t5, $t5, $t4
/* AF5C4 800AE9C4 000D6900 */  sll        $t5, $t5, 4
/* AF5C8 800AE9C8 016D7021 */  addu       $t6, $t3, $t5
/* AF5CC 800AE9CC ADC0001C */  sw         $zero, 0x1c($t6)
/* AF5D0 800AE9D0 8FAF0020 */  lw         $t7, 0x20($sp)
/* AF5D4 800AE9D4 87B90026 */  lh         $t9, 0x26($sp)
/* AF5D8 800AE9D8 8DF8003C */  lw         $t8, 0x3c($t7)
/* AF5DC 800AE9DC 17190004 */  bne        $t8, $t9, .L800AE9F0
/* AF5E0 800AE9E0 00000000 */   nop
/* AF5E4 800AE9E4 8FA90020 */  lw         $t1, 0x20($sp)
/* AF5E8 800AE9E8 2408FFFF */  addiu      $t0, $zero, -1
/* AF5EC 800AE9EC AD28003C */  sw         $t0, 0x3c($t1)
.L800AE9F0:
/* AF5F0 800AE9F0 10000001 */  b          .L800AE9F8
/* AF5F4 800AE9F4 00000000 */   nop
.L800AE9F8:
/* AF5F8 800AE9F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AF5FC 800AE9FC 27BD0020 */  addiu      $sp, $sp, 0x20
/* AF600 800AEA00 03E00008 */  jr         $ra
/* AF604 800AEA04 00000000 */   nop
/* AF608 800AEA08 00000000 */  nop
/* AF60C 800AEA0C 00000000 */  nop
