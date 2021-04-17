.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C4340
/* C4F40 800C4340 3C014780 */  lui        $at, 0x4780
/* C4F44 800C4344 44810000 */  mtc1       $at, $f0
/* C4F48 800C4348 00A01025 */  or         $v0, $a1, $zero
/* C4F4C 800C434C 24A30020 */  addiu      $v1, $a1, 0x20
/* C4F50 800C4350 00003025 */  or         $a2, $zero, $zero
/* C4F54 800C4354 00803825 */  or         $a3, $a0, $zero
/* C4F58 800C4358 240C0004 */  addiu      $t4, $zero, 4
/* C4F5C 800C435C 240B0002 */  addiu      $t3, $zero, 2
/* C4F60 800C4360 3C0AFFFF */  lui        $t2, 0xffff
.L800C4364:
/* C4F64 800C4364 00002025 */  or         $a0, $zero, $zero
/* C4F68 800C4368 00E04025 */  or         $t0, $a3, $zero
/* C4F6C 800C436C C50E0004 */  lwc1       $f14, 4($t0)
/* C4F70 800C4370 24840001 */  addiu      $a0, $a0, 1
/* C4F74 800C4374 C5120000 */  lwc1       $f18, ($t0)
/* C4F78 800C4378 46007402 */  mul.s      $f16, $f14, $f0
/* C4F7C 800C437C 108B0019 */  beq        $a0, $t3, .L800C43E4
/* C4F80 800C4380 00000000 */   nop
.L800C4384:
/* C4F84 800C4384 46009382 */  mul.s      $f14, $f18, $f0
/* C4F88 800C4388 24840001 */  addiu      $a0, $a0, 1
/* C4F8C 800C438C 24420004 */  addiu      $v0, $v0, 4
/* C4F90 800C4390 24630004 */  addiu      $v1, $v1, 4
/* C4F94 800C4394 25080008 */  addiu      $t0, $t0, 8
/* C4F98 800C4398 4600830D */  trunc.w.s  $f12, $f16
/* C4F9C 800C439C 4600738D */  trunc.w.s  $f14, $f14
/* C4FA0 800C43A0 44096000 */  mfc1       $t1, $f12
/* C4FA4 800C43A4 44057000 */  mfc1       $a1, $f14
/* C4FA8 800C43A8 0009CC03 */  sra        $t9, $t1, 0x10
/* C4FAC 800C43AC 332DFFFF */  andi       $t5, $t9, 0xffff
/* C4FB0 800C43B0 00AAC024 */  and        $t8, $a1, $t2
/* C4FB4 800C43B4 030D7025 */  or         $t6, $t8, $t5
/* C4FB8 800C43B8 00057C00 */  sll        $t7, $a1, 0x10
/* C4FBC 800C43BC 01EAC824 */  and        $t9, $t7, $t2
/* C4FC0 800C43C0 AC4EFFFC */  sw         $t6, -4($v0)
/* C4FC4 800C43C4 3138FFFF */  andi       $t8, $t1, 0xffff
/* C4FC8 800C43C8 03386825 */  or         $t5, $t9, $t8
/* C4FCC 800C43CC AC6DFFFC */  sw         $t5, -4($v1)
/* C4FD0 800C43D0 C50E0004 */  lwc1       $f14, 4($t0)
/* C4FD4 800C43D4 C5120000 */  lwc1       $f18, ($t0)
/* C4FD8 800C43D8 46007402 */  mul.s      $f16, $f14, $f0
/* C4FDC 800C43DC 148BFFE9 */  bne        $a0, $t3, .L800C4384
/* C4FE0 800C43E0 00000000 */   nop
.L800C43E4:
/* C4FE4 800C43E4 46009382 */  mul.s      $f14, $f18, $f0
/* C4FE8 800C43E8 25080008 */  addiu      $t0, $t0, 8
/* C4FEC 800C43EC 24420004 */  addiu      $v0, $v0, 4
/* C4FF0 800C43F0 24630004 */  addiu      $v1, $v1, 4
/* C4FF4 800C43F4 4600830D */  trunc.w.s  $f12, $f16
/* C4FF8 800C43F8 4600738D */  trunc.w.s  $f14, $f14
/* C4FFC 800C43FC 44096000 */  mfc1       $t1, $f12
/* C5000 800C4400 44057000 */  mfc1       $a1, $f14
/* C5004 800C4404 0009CC03 */  sra        $t9, $t1, 0x10
/* C5008 800C4408 332DFFFF */  andi       $t5, $t9, 0xffff
/* C500C 800C440C 00AAC024 */  and        $t8, $a1, $t2
/* C5010 800C4410 030D7025 */  or         $t6, $t8, $t5
/* C5014 800C4414 00057C00 */  sll        $t7, $a1, 0x10
/* C5018 800C4418 01EAC824 */  and        $t9, $t7, $t2
/* C501C 800C441C 3138FFFF */  andi       $t8, $t1, 0xffff
/* C5020 800C4420 AC4EFFFC */  sw         $t6, -4($v0)
/* C5024 800C4424 03386825 */  or         $t5, $t9, $t8
/* C5028 800C4428 AC6DFFFC */  sw         $t5, -4($v1)
/* C502C 800C442C 24C60001 */  addiu      $a2, $a2, 1
/* C5030 800C4430 14CCFFCC */  bne        $a2, $t4, .L800C4364
/* C5034 800C4434 24E70010 */   addiu     $a3, $a3, 0x10
/* C5038 800C4438 03E00008 */  jr         $ra
/* C503C 800C443C 00000000 */   nop

glabel func_800C4440
/* C5040 800C4440 3C013F80 */  lui        $at, 0x3f80
/* C5044 800C4444 00801825 */  or         $v1, $a0, $zero
/* C5048 800C4448 44810000 */  mtc1       $at, $f0
/* C504C 800C444C 44801000 */  mtc1       $zero, $f2
/* C5050 800C4450 24040001 */  addiu      $a0, $zero, 1
/* C5054 800C4454 00001025 */  or         $v0, $zero, $zero
/* C5058 800C4458 24070004 */  addiu      $a3, $zero, 4
/* C505C 800C445C 24060003 */  addiu      $a2, $zero, 3
/* C5060 800C4460 24050002 */  addiu      $a1, $zero, 2
.L800C4464:
/* C5064 800C4464 54400004 */  bnezl      $v0, .L800C4478
/* C5068 800C4468 E4620000 */   swc1      $f2, ($v1)
/* C506C 800C446C 10000002 */  b          .L800C4478
/* C5070 800C4470 E4600000 */   swc1      $f0, ($v1)
/* C5074 800C4474 E4620000 */  swc1       $f2, ($v1)
.L800C4478:
/* C5078 800C4478 54440004 */  bnel       $v0, $a0, .L800C448C
/* C507C 800C447C E4620004 */   swc1      $f2, 4($v1)
/* C5080 800C4480 10000002 */  b          .L800C448C
/* C5084 800C4484 E4600004 */   swc1      $f0, 4($v1)
/* C5088 800C4488 E4620004 */  swc1       $f2, 4($v1)
.L800C448C:
/* C508C 800C448C 54450004 */  bnel       $v0, $a1, .L800C44A0
/* C5090 800C4490 E4620008 */   swc1      $f2, 8($v1)
/* C5094 800C4494 10000002 */  b          .L800C44A0
/* C5098 800C4498 E4600008 */   swc1      $f0, 8($v1)
/* C509C 800C449C E4620008 */  swc1       $f2, 8($v1)
.L800C44A0:
/* C50A0 800C44A0 54460004 */  bnel       $v0, $a2, .L800C44B4
/* C50A4 800C44A4 E462000C */   swc1      $f2, 0xc($v1)
/* C50A8 800C44A8 10000002 */  b          .L800C44B4
/* C50AC 800C44AC E460000C */   swc1      $f0, 0xc($v1)
/* C50B0 800C44B0 E462000C */  swc1       $f2, 0xc($v1)
.L800C44B4:
/* C50B4 800C44B4 24420001 */  addiu      $v0, $v0, 1
/* C50B8 800C44B8 1447FFEA */  bne        $v0, $a3, .L800C4464
/* C50BC 800C44BC 24630010 */   addiu     $v1, $v1, 0x10
/* C50C0 800C44C0 03E00008 */  jr         $ra
/* C50C4 800C44C4 00000000 */   nop

glabel func_800C44C8
/* C50C8 800C44C8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* C50CC 800C44CC AFBF0014 */  sw         $ra, 0x14($sp)
/* C50D0 800C44D0 AFA40058 */  sw         $a0, 0x58($sp)
/* C50D4 800C44D4 0C031110 */  jal        func_800C4440
/* C50D8 800C44D8 27A40018 */   addiu     $a0, $sp, 0x18
/* C50DC 800C44DC 27A40018 */  addiu      $a0, $sp, 0x18
/* C50E0 800C44E0 0C0310D0 */  jal        func_800C4340
/* C50E4 800C44E4 8FA50058 */   lw        $a1, 0x58($sp)
/* C50E8 800C44E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* C50EC 800C44EC 27BD0058 */  addiu      $sp, $sp, 0x58
/* C50F0 800C44F0 03E00008 */  jr         $ra
/* C50F4 800C44F4 00000000 */   nop

glabel func_800C44F8
/* C50F8 800C44F8 3C013780 */  lui        $at, 0x3780
/* C50FC 800C44FC 44810000 */  mtc1       $at, $f0
/* C5100 800C4500 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* C5104 800C4504 00A01025 */  or         $v0, $a1, $zero
/* C5108 800C4508 24A30020 */  addiu      $v1, $a1, 0x20
/* C510C 800C450C 00003025 */  or         $a2, $zero, $zero
/* C5110 800C4510 00804025 */  or         $t0, $a0, $zero
/* C5114 800C4514 240C0004 */  addiu      $t4, $zero, 4
/* C5118 800C4518 240B0002 */  addiu      $t3, $zero, 2
/* C511C 800C451C 3C0AFFFF */  lui        $t2, 0xffff
.L800C4520:
/* C5120 800C4520 00002025 */  or         $a0, $zero, $zero
/* C5124 800C4524 01004825 */  or         $t1, $t0, $zero
.L800C4528:
/* C5128 800C4528 8C6E0000 */  lw         $t6, ($v1)
/* C512C 800C452C 8C590000 */  lw         $t9, ($v0)
/* C5130 800C4530 24840001 */  addiu      $a0, $a0, 1
/* C5134 800C4534 000E7C02 */  srl        $t7, $t6, 0x10
/* C5138 800C4538 31F8FFFF */  andi       $t8, $t7, 0xffff
/* C513C 800C453C 032A6824 */  and        $t5, $t9, $t2
/* C5140 800C4540 030D7025 */  or         $t6, $t8, $t5
/* C5144 800C4544 AFAE0004 */  sw         $t6, 4($sp)
/* C5148 800C4548 8C580000 */  lw         $t8, ($v0)
/* C514C 800C454C 8FA50004 */  lw         $a1, 4($sp)
/* C5150 800C4550 8C6F0000 */  lw         $t7, ($v1)
/* C5154 800C4554 00186C00 */  sll        $t5, $t8, 0x10
/* C5158 800C4558 44852000 */  mtc1       $a1, $f4
/* C515C 800C455C 01AA7024 */  and        $t6, $t5, $t2
/* C5160 800C4560 31F9FFFF */  andi       $t9, $t7, 0xffff
/* C5164 800C4564 032E3825 */  or         $a3, $t9, $t6
/* C5168 800C4568 468021A0 */  cvt.s.w    $f6, $f4
/* C516C 800C456C 44875000 */  mtc1       $a3, $f10
/* C5170 800C4570 AFA70000 */  sw         $a3, ($sp)
/* C5174 800C4574 25290008 */  addiu      $t1, $t1, 8
/* C5178 800C4578 24420004 */  addiu      $v0, $v0, 4
/* C517C 800C457C 46805420 */  cvt.s.w    $f16, $f10
/* C5180 800C4580 46003202 */  mul.s      $f8, $f6, $f0
/* C5184 800C4584 24630004 */  addiu      $v1, $v1, 4
/* C5188 800C4588 46008482 */  mul.s      $f18, $f16, $f0
/* C518C 800C458C E528FFF8 */  swc1       $f8, -8($t1)
/* C5190 800C4590 148BFFE5 */  bne        $a0, $t3, .L800C4528
/* C5194 800C4594 E532FFFC */   swc1      $f18, -4($t1)
/* C5198 800C4598 24C60001 */  addiu      $a2, $a2, 1
/* C519C 800C459C 14CCFFE0 */  bne        $a2, $t4, .L800C4520
/* C51A0 800C45A0 25080010 */   addiu     $t0, $t0, 0x10
/* C51A4 800C45A4 03E00008 */  jr         $ra
/* C51A8 800C45A8 27BD0010 */   addiu     $sp, $sp, 0x10
/* C51AC 800C45AC 00000000 */  nop
