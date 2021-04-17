.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A38E0
/* A44E0 800A38E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A44E4 800A38E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A44E8 800A38E8 AFA40028 */  sw         $a0, 0x28($sp)
/* A44EC 800A38EC AFB00018 */  sw         $s0, 0x18($sp)
/* A44F0 800A38F0 3C0E800D */  lui        $t6, %hi(D_800CD670)
/* A44F4 800A38F4 8DCED670 */  lw         $t6, %lo(D_800CD670)($t6)
/* A44F8 800A38F8 15C00006 */  bnez       $t6, .L800A3914
/* A44FC 800A38FC 00000000 */   nop
/* A4500 800A3900 2404002D */  addiu      $a0, $zero, 0x2d
/* A4504 800A3904 0C02B5EC */  jal        func_800AD7B0
/* A4508 800A3908 00002825 */   or        $a1, $zero, $zero
/* A450C 800A390C 10000020 */  b          .L800A3990
/* A4510 800A3910 00000000 */   nop
.L800A3914:
/* A4514 800A3914 8FAF0028 */  lw         $t7, 0x28($sp)
/* A4518 800A3918 11E00003 */  beqz       $t7, .L800A3928
/* A451C 800A391C 00000000 */   nop
/* A4520 800A3920 10000007 */  b          .L800A3940
/* A4524 800A3924 00000000 */   nop
.L800A3928:
/* A4528 800A3928 3C04800D */  lui        $a0, %hi(D_800D30E0)
/* A452C 800A392C 3C05800D */  lui        $a1, %hi(D_800D30F0)
/* A4530 800A3930 24A530F0 */  addiu      $a1, $a1, %lo(D_800D30F0)
/* A4534 800A3934 248430E0 */  addiu      $a0, $a0, %lo(D_800D30E0)
/* A4538 800A3938 0C02C480 */  jal        func_800B1200
/* A453C 800A393C 2406003A */   addiu     $a2, $zero, 0x3a
.L800A3940:
/* A4540 800A3940 0C02C0C8 */  jal        func_800B0320
/* A4544 800A3944 00000000 */   nop
/* A4548 800A3948 00408025 */  or         $s0, $v0, $zero
/* A454C 800A394C 3C19800D */  lui        $t9, %hi(D_800CD444)
/* A4550 800A3950 8F39D444 */  lw         $t9, %lo(D_800CD444)($t9)
/* A4554 800A3954 8FB80028 */  lw         $t8, 0x28($sp)
/* A4558 800A3958 AF380008 */  sw         $t8, 8($t9)
/* A455C 800A395C 3C09800D */  lui        $t1, %hi(D_800CD444)
/* A4560 800A3960 8D29D444 */  lw         $t1, %lo(D_800CD444)($t1)
/* A4564 800A3964 24080001 */  addiu      $t0, $zero, 1
/* A4568 800A3968 A5280000 */  sh         $t0, ($t1)
/* A456C 800A396C 3C0A800D */  lui        $t2, %hi(D_800CD444)
/* A4570 800A3970 8D4AD444 */  lw         $t2, %lo(D_800CD444)($t2)
/* A4574 800A3974 8D4B0008 */  lw         $t3, 8($t2)
/* A4578 800A3978 8D6C0004 */  lw         $t4, 4($t3)
/* A457C 800A397C AD4C000C */  sw         $t4, 0xc($t2)
/* A4580 800A3980 0C02C0D0 */  jal        func_800B0340
/* A4584 800A3984 02002025 */   or        $a0, $s0, $zero
/* A4588 800A3988 10000001 */  b          .L800A3990
/* A458C 800A398C 00000000 */   nop
.L800A3990:
/* A4590 800A3990 8FBF001C */  lw         $ra, 0x1c($sp)
/* A4594 800A3994 8FB00018 */  lw         $s0, 0x18($sp)
/* A4598 800A3998 27BD0028 */  addiu      $sp, $sp, 0x28
/* A459C 800A399C 03E00008 */  jr         $ra
/* A45A0 800A39A0 00000000 */   nop
/* A45A4 800A39A4 00000000 */  nop
/* A45A8 800A39A8 00000000 */  nop
/* A45AC 800A39AC 00000000 */  nop
