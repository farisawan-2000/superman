.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D3910
/* D4510 800D3910 8C860044 */  lw         $a2, 0x44($a0)
/* D4514 800D3914 8C820040 */  lw         $v0, 0x40($a0)
/* D4518 800D3918 00001825 */  or         $v1, $zero, $zero
/* D451C 800D391C 18C00020 */  blez       $a2, .L800D39A0
/* D4520 800D3920 24070030 */   addiu     $a3, $zero, 0x30
.L800D3924:
/* D4524 800D3924 00670019 */  multu      $v1, $a3
/* D4528 800D3928 00007012 */  mflo       $t6
/* D452C 800D392C 004E2021 */  addu       $a0, $v0, $t6
/* D4530 800D3930 8C8F001C */  lw         $t7, 0x1c($a0)
/* D4534 800D3934 15E00014 */  bnez       $t7, .L800D3988
/* D4538 800D3938 3C013F80 */   lui       $at, 0x3f80
/* D453C 800D393C 44812000 */  mtc1       $at, $f4
/* D4540 800D3940 24180005 */  addiu      $t8, $zero, 5
/* D4544 800D3944 24190040 */  addiu      $t9, $zero, 0x40
/* D4548 800D3948 AC85001C */  sw         $a1, 0x1c($a0)
/* D454C 800D394C A4980020 */  sh         $t8, 0x20($a0)
/* D4550 800D3950 AC800028 */  sw         $zero, 0x28($a0)
/* D4554 800D3954 A099002E */  sb         $t9, 0x2e($a0)
/* D4558 800D3958 A080002F */  sb         $zero, 0x2f($a0)
/* D455C 800D395C E4840024 */  swc1       $f4, 0x24($a0)
/* D4560 800D3960 90A8000D */  lbu        $t0, 0xd($a1)
/* D4564 800D3964 2401007F */  addiu      $at, $zero, 0x7f
/* D4568 800D3968 00601025 */  or         $v0, $v1, $zero
/* D456C 800D396C 00084BC0 */  sll        $t1, $t0, 0xf
/* D4570 800D3970 01284823 */  subu       $t1, $t1, $t0
/* D4574 800D3974 0121001A */  div        $zero, $t1, $at
/* D4578 800D3978 00005012 */  mflo       $t2
/* D457C 800D397C A48A002C */  sh         $t2, 0x2c($a0)
/* D4580 800D3980 03E00008 */  jr         $ra
/* D4584 800D3984 00000000 */   nop
.L800D3988:
/* D4588 800D3988 24630001 */  addiu      $v1, $v1, 1
/* D458C 800D398C 00035C00 */  sll        $t3, $v1, 0x10
/* D4590 800D3990 000B1C03 */  sra        $v1, $t3, 0x10
/* D4594 800D3994 0066082A */  slt        $at, $v1, $a2
/* D4598 800D3998 1420FFE2 */  bnez       $at, .L800D3924
/* D459C 800D399C 00000000 */   nop
.L800D39A0:
/* D45A0 800D39A0 2402FFFF */  addiu      $v0, $zero, -1
/* D45A4 800D39A4 03E00008 */  jr         $ra
/* D45A8 800D39A8 00000000 */   nop
/* D45AC 800D39AC 00000000 */  nop
