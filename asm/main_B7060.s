.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B6460
/* B7060 800B6460 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B7064 800B6464 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7068 800B6468 AFA40028 */  sw         $a0, 0x28($sp)
/* B706C 800B646C 240E000F */  addiu      $t6, $zero, 0xf
/* B7070 800B6470 A7AE0018 */  sh         $t6, 0x18($sp)
/* B7074 800B6474 8FA40028 */  lw         $a0, 0x28($sp)
/* B7078 800B6478 27A50018 */  addiu      $a1, $sp, 0x18
/* B707C 800B647C 00003025 */  or         $a2, $zero, $zero
/* B7080 800B6480 0C026E68 */  jal        func_8009B9A0
/* B7084 800B6484 24840048 */   addiu     $a0, $a0, 0x48
/* B7088 800B6488 10000001 */  b          .L800B6490
/* B708C 800B648C 00000000 */   nop
.L800B6490:
/* B7090 800B6490 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7094 800B6494 27BD0028 */  addiu      $sp, $sp, 0x28
/* B7098 800B6498 03E00008 */  jr         $ra
/* B709C 800B649C 00000000 */   nop

glabel func_800B64A0
/* B70A0 800B64A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B70A4 800B64A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B70A8 800B64A8 AFA40020 */  sw         $a0, 0x20($sp)
/* B70AC 800B64AC AFA50024 */  sw         $a1, 0x24($sp)
/* B70B0 800B64B0 AFA60028 */  sw         $a2, 0x28($sp)
/* B70B4 800B64B4 8FAE0024 */  lw         $t6, 0x24($sp)
/* B70B8 800B64B8 15C00003 */  bnez       $t6, .L800B64C8
/* B70BC 800B64BC 00000000 */   nop
/* B70C0 800B64C0 10000026 */  b          .L800B655C
/* B70C4 800B64C4 24020005 */   addiu     $v0, $zero, 5
.L800B64C8:
/* B70C8 800B64C8 0C0290BF */  jal        func_800A42FC
/* B70CC 800B64CC 8FA40020 */   lw        $a0, 0x20($sp)
/* B70D0 800B64D0 24010002 */  addiu      $at, $zero, 2
/* B70D4 800B64D4 14410003 */  bne        $v0, $at, .L800B64E4
/* B70D8 800B64D8 00000000 */   nop
/* B70DC 800B64DC 1000001F */  b          .L800B655C
/* B70E0 800B64E0 24020002 */   addiu     $v0, $zero, 2
.L800B64E4:
/* B70E4 800B64E4 AFA0001C */  sw         $zero, 0x1c($sp)
.L800B64E8:
/* B70E8 800B64E8 8FAF0020 */  lw         $t7, 0x20($sp)
/* B70EC 800B64EC 8FB8001C */  lw         $t8, 0x1c($sp)
/* B70F0 800B64F0 01F8C821 */  addu       $t9, $t7, $t8
/* B70F4 800B64F4 9328002C */  lbu        $t0, 0x2c($t9)
/* B70F8 800B64F8 15000003 */  bnez       $t0, .L800B6508
/* B70FC 800B64FC 00000000 */   nop
/* B7100 800B6500 1000000F */  b          .L800B6540
/* B7104 800B6504 00000000 */   nop
.L800B6508:
/* B7108 800B6508 8FA90020 */  lw         $t1, 0x20($sp)
/* B710C 800B650C 8FAA001C */  lw         $t2, 0x1c($sp)
/* B7110 800B6510 8FAD0024 */  lw         $t5, 0x24($sp)
/* B7114 800B6514 012A5821 */  addu       $t3, $t1, $t2
/* B7118 800B6518 916C002C */  lbu        $t4, 0x2c($t3)
/* B711C 800B651C A1AC0000 */  sb         $t4, ($t5)
/* B7120 800B6520 8FAE0024 */  lw         $t6, 0x24($sp)
/* B7124 800B6524 25CF0001 */  addiu      $t7, $t6, 1
/* B7128 800B6528 AFAF0024 */  sw         $t7, 0x24($sp)
/* B712C 800B652C 8FB8001C */  lw         $t8, 0x1c($sp)
/* B7130 800B6530 27190001 */  addiu      $t9, $t8, 1
/* B7134 800B6534 2B210020 */  slti       $at, $t9, 0x20
/* B7138 800B6538 1420FFEB */  bnez       $at, .L800B64E8
/* B713C 800B653C AFB9001C */   sw        $t9, 0x1c($sp)
.L800B6540:
/* B7140 800B6540 8FA8001C */  lw         $t0, 0x1c($sp)
/* B7144 800B6544 8FA90028 */  lw         $t1, 0x28($sp)
/* B7148 800B6548 AD280000 */  sw         $t0, ($t1)
/* B714C 800B654C 10000003 */  b          .L800B655C
/* B7150 800B6550 00001025 */   or        $v0, $zero, $zero
/* B7154 800B6554 10000001 */  b          .L800B655C
/* B7158 800B6558 00000000 */   nop
.L800B655C:
/* B715C 800B655C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7160 800B6560 27BD0020 */  addiu      $sp, $sp, 0x20
/* B7164 800B6564 03E00008 */  jr         $ra
/* B7168 800B6568 00000000 */   nop
/* B716C 800B656C 00000000 */  nop
