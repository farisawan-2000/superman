.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C7920
/* C8520 800C7920 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C8524 800C7924 3C0E800E */  lui        $t6, %hi(D_800DB0E0)
/* C8528 800C7928 8DCEB0E0 */  lw         $t6, %lo(D_800DB0E0)($t6)
/* C852C 800C792C AFBF001C */  sw         $ra, 0x1c($sp)
/* C8530 800C7930 AFA40028 */  sw         $a0, 0x28($sp)
/* C8534 800C7934 AFA5002C */  sw         $a1, 0x2c($sp)
/* C8538 800C7938 AFA60030 */  sw         $a2, 0x30($sp)
/* C853C 800C793C AFA70034 */  sw         $a3, 0x34($sp)
/* C8540 800C7940 AFB10018 */  sw         $s1, 0x18($sp)
/* C8544 800C7944 15C00003 */  bnez       $t6, .L800C7954
/* C8548 800C7948 AFB00014 */   sw        $s0, 0x14($sp)
/* C854C 800C794C 10000032 */  b          .L800C7A18
/* C8550 800C7950 2402FFFF */   addiu     $v0, $zero, -1
.L800C7954:
/* C8554 800C7954 8FAF0030 */  lw         $t7, 0x30($sp)
/* C8558 800C7958 15E00005 */  bnez       $t7, .L800C7970
/* C855C 800C795C 00000000 */   nop
/* C8560 800C7960 8FB90028 */  lw         $t9, 0x28($sp)
/* C8564 800C7964 2418000B */  addiu      $t8, $zero, 0xb
/* C8568 800C7968 10000004 */  b          .L800C797C
/* C856C 800C796C A7380000 */   sh        $t8, ($t9)
.L800C7970:
/* C8570 800C7970 8FA90028 */  lw         $t1, 0x28($sp)
/* C8574 800C7974 2408000C */  addiu      $t0, $zero, 0xc
/* C8578 800C7978 A5280000 */  sh         $t0, ($t1)
.L800C797C:
/* C857C 800C797C 8FAA002C */  lw         $t2, 0x2c($sp)
/* C8580 800C7980 8FAB0028 */  lw         $t3, 0x28($sp)
/* C8584 800C7984 24010001 */  addiu      $at, $zero, 1
/* C8588 800C7988 A16A0002 */  sb         $t2, 2($t3)
/* C858C 800C798C 8FAD0028 */  lw         $t5, 0x28($sp)
/* C8590 800C7990 8FAC0040 */  lw         $t4, 0x40($sp)
/* C8594 800C7994 ADAC0004 */  sw         $t4, 4($t5)
/* C8598 800C7998 8FAF0028 */  lw         $t7, 0x28($sp)
/* C859C 800C799C 8FAE0038 */  lw         $t6, 0x38($sp)
/* C85A0 800C79A0 ADEE0008 */  sw         $t6, 8($t7)
/* C85A4 800C79A4 8FB90028 */  lw         $t9, 0x28($sp)
/* C85A8 800C79A8 8FB80034 */  lw         $t8, 0x34($sp)
/* C85AC 800C79AC AF38000C */  sw         $t8, 0xc($t9)
/* C85B0 800C79B0 8FA90028 */  lw         $t1, 0x28($sp)
/* C85B4 800C79B4 8FA8003C */  lw         $t0, 0x3c($sp)
/* C85B8 800C79B8 AD280010 */  sw         $t0, 0x10($t1)
/* C85BC 800C79BC 8FAA0028 */  lw         $t2, 0x28($sp)
/* C85C0 800C79C0 AD400014 */  sw         $zero, 0x14($t2)
/* C85C4 800C79C4 8FAB002C */  lw         $t3, 0x2c($sp)
/* C85C8 800C79C8 1561000A */  bne        $t3, $at, .L800C79F4
/* C85CC 800C79CC 00000000 */   nop
/* C85D0 800C79D0 0C033F0C */  jal        func_800CFC30
/* C85D4 800C79D4 00000000 */   nop
/* C85D8 800C79D8 00408825 */  or         $s1, $v0, $zero
/* C85DC 800C79DC 02202025 */  or         $a0, $s1, $zero
/* C85E0 800C79E0 8FA50028 */  lw         $a1, 0x28($sp)
/* C85E4 800C79E4 0C0336CC */  jal        func_800CDB30
/* C85E8 800C79E8 00003025 */   or        $a2, $zero, $zero
/* C85EC 800C79EC 10000009 */  b          .L800C7A14
/* C85F0 800C79F0 00408025 */   or        $s0, $v0, $zero
.L800C79F4:
/* C85F4 800C79F4 0C033F0C */  jal        func_800CFC30
/* C85F8 800C79F8 00000000 */   nop
/* C85FC 800C79FC 00408825 */  or         $s1, $v0, $zero
/* C8600 800C7A00 02202025 */  or         $a0, $s1, $zero
/* C8604 800C7A04 8FA50028 */  lw         $a1, 0x28($sp)
/* C8608 800C7A08 0C02F7A8 */  jal        func_800BDEA0
/* C860C 800C7A0C 00003025 */   or        $a2, $zero, $zero
/* C8610 800C7A10 00408025 */  or         $s0, $v0, $zero
.L800C7A14:
/* C8614 800C7A14 02001025 */  or         $v0, $s0, $zero
.L800C7A18:
/* C8618 800C7A18 8FBF001C */  lw         $ra, 0x1c($sp)
/* C861C 800C7A1C 8FB00014 */  lw         $s0, 0x14($sp)
/* C8620 800C7A20 8FB10018 */  lw         $s1, 0x18($sp)
/* C8624 800C7A24 03E00008 */  jr         $ra
/* C8628 800C7A28 27BD0028 */   addiu     $sp, $sp, 0x28
/* C862C 800C7A2C 00000000 */  nop
