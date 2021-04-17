.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B43A0
/* B4FA0 800B43A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B4FA4 800B43A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4FA8 800B43A8 AFA40020 */  sw         $a0, 0x20($sp)
/* B4FAC 800B43AC AFA50024 */  sw         $a1, 0x24($sp)
/* B4FB0 800B43B0 AFA0001C */  sw         $zero, 0x1c($sp)
/* B4FB4 800B43B4 8FAE0020 */  lw         $t6, 0x20($sp)
/* B4FB8 800B43B8 83A9001C */  lb         $t1, 0x1c($sp)
/* B4FBC 800B43BC 000E7E80 */  sll        $t7, $t6, 0x1a
/* B4FC0 800B43C0 000FC683 */  sra        $t8, $t7, 0x1a
/* B4FC4 800B43C4 0018C880 */  sll        $t9, $t8, 2
/* B4FC8 800B43C8 332800FC */  andi       $t0, $t9, 0xfc
/* B4FCC 800B43CC 312AFF03 */  andi       $t2, $t1, 0xff03
/* B4FD0 800B43D0 010A5825 */  or         $t3, $t0, $t2
/* B4FD4 800B43D4 A3AB001C */  sb         $t3, 0x1c($sp)
/* B4FD8 800B43D8 8FAC0024 */  lw         $t4, 0x24($sp)
/* B4FDC 800B43DC 83B8001D */  lb         $t8, 0x1d($sp)
/* B4FE0 800B43E0 000C6EC0 */  sll        $t5, $t4, 0x1b
/* B4FE4 800B43E4 000D76C3 */  sra        $t6, $t5, 0x1b
/* B4FE8 800B43E8 31CF001F */  andi       $t7, $t6, 0x1f
/* B4FEC 800B43EC 3319FFE0 */  andi       $t9, $t8, 0xffe0
/* B4FF0 800B43F0 01F94825 */  or         $t1, $t7, $t9
/* B4FF4 800B43F4 A3A9001D */  sb         $t1, 0x1d($sp)
/* B4FF8 800B43F8 3C040400 */  lui        $a0, 0x400
/* B4FFC 800B43FC 34841000 */  ori        $a0, $a0, 0x1000
/* B5000 800B4400 0C02C664 */  jal        func_800B1990
/* B5004 800B4404 8FA5001C */   lw        $a1, 0x1c($sp)
/* B5008 800B4408 3C040408 */  lui        $a0, 0x408
/* B500C 800B440C 0C02C664 */  jal        func_800B1990
/* B5010 800B4410 00002825 */   or        $a1, $zero, $zero
/* B5014 800B4414 10000001 */  b          .L800B441C
/* B5018 800B4418 00000000 */   nop
.L800B441C:
/* B501C 800B441C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5020 800B4420 27BD0020 */  addiu      $sp, $sp, 0x20
/* B5024 800B4424 03E00008 */  jr         $ra
/* B5028 800B4428 00000000 */   nop

glabel func_800B442C
/* B502C 800B442C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B5030 800B4430 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5034 800B4434 AFA40020 */  sw         $a0, 0x20($sp)
/* B5038 800B4438 AFA50024 */  sw         $a1, 0x24($sp)
/* B503C 800B443C AFA0001C */  sw         $zero, 0x1c($sp)
/* B5040 800B4440 8FAE0020 */  lw         $t6, 0x20($sp)
/* B5044 800B4444 83A9001C */  lb         $t1, 0x1c($sp)
/* B5048 800B4448 000E7E80 */  sll        $t7, $t6, 0x1a
/* B504C 800B444C 000FC683 */  sra        $t8, $t7, 0x1a
/* B5050 800B4450 0018C880 */  sll        $t9, $t8, 2
/* B5054 800B4454 332800FC */  andi       $t0, $t9, 0xfc
/* B5058 800B4458 312AFF03 */  andi       $t2, $t1, 0xff03
/* B505C 800B445C 010A5825 */  or         $t3, $t0, $t2
/* B5060 800B4460 A3AB001C */  sb         $t3, 0x1c($sp)
/* B5064 800B4464 8FAC0024 */  lw         $t4, 0x24($sp)
/* B5068 800B4468 83B8001D */  lb         $t8, 0x1d($sp)
/* B506C 800B446C 000C6EC0 */  sll        $t5, $t4, 0x1b
/* B5070 800B4470 000D76C3 */  sra        $t6, $t5, 0x1b
/* B5074 800B4474 31CF001F */  andi       $t7, $t6, 0x1f
/* B5078 800B4478 3319FFE0 */  andi       $t9, $t8, 0xffe0
/* B507C 800B447C 01F94825 */  or         $t1, $t7, $t9
/* B5080 800B4480 A3A9001D */  sb         $t1, 0x1d($sp)
/* B5084 800B4484 83A8001E */  lb         $t0, 0x1e($sp)
/* B5088 800B4488 310AFF07 */  andi       $t2, $t0, 0xff07
/* B508C 800B448C 354B0020 */  ori        $t3, $t2, 0x20
/* B5090 800B4490 A3AB001E */  sb         $t3, 0x1e($sp)
/* B5094 800B4494 3C040400 */  lui        $a0, 0x400
/* B5098 800B4498 34841000 */  ori        $a0, $a0, 0x1000
/* B509C 800B449C 0C02C664 */  jal        func_800B1990
/* B50A0 800B44A0 8FA5001C */   lw        $a1, 0x1c($sp)
/* B50A4 800B44A4 3C040408 */  lui        $a0, 0x408
/* B50A8 800B44A8 0C02C664 */  jal        func_800B1990
/* B50AC 800B44AC 00002825 */   or        $a1, $zero, $zero
/* B50B0 800B44B0 10000001 */  b          .L800B44B8
/* B50B4 800B44B4 00000000 */   nop
.L800B44B8:
/* B50B8 800B44B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B50BC 800B44BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* B50C0 800B44C0 03E00008 */  jr         $ra
/* B50C4 800B44C4 00000000 */   nop

glabel func_800B44C8
/* B50C8 800B44C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B50CC 800B44CC AFBF0014 */  sw         $ra, 0x14($sp)
/* B50D0 800B44D0 AFA40018 */  sw         $a0, 0x18($sp)
/* B50D4 800B44D4 0C02C678 */  jal        func_800B19E0
/* B50D8 800B44D8 3C040408 */   lui       $a0, 0x408
/* B50DC 800B44DC 3C01801B */  lui        $at, %hi(D_801A8BE0)
/* B50E0 800B44E0 AC228BE0 */  sw         $v0, %lo(D_801A8BE0)($at)
/* B50E4 800B44E4 3C040400 */  lui        $a0, 0x400
/* B50E8 800B44E8 0C02C678 */  jal        func_800B19E0
/* B50EC 800B44EC 34841000 */   ori       $a0, $a0, 0x1000
/* B50F0 800B44F0 3C01801B */  lui        $at, %hi(D_801A8BE4)
/* B50F4 800B44F4 AC228BE4 */  sw         $v0, %lo(D_801A8BE4)($at)
/* B50F8 800B44F8 0C02C678 */  jal        func_800B19E0
/* B50FC 800B44FC 3C040400 */   lui       $a0, 0x400
/* B5100 800B4500 3C0E801B */  lui        $t6, %hi(D_801A8BE8)
/* B5104 800B4504 25CE8BE8 */  addiu      $t6, $t6, %lo(D_801A8BE8)
/* B5108 800B4508 ADC20000 */  sw         $v0, ($t6)
/* B510C 800B450C 8FAF0018 */  lw         $t7, 0x18($sp)
/* B5110 800B4510 11E00013 */  beqz       $t7, .L800B4560
/* B5114 800B4514 00000000 */   nop
/* B5118 800B4518 3C040400 */  lui        $a0, 0x400
/* B511C 800B451C 0C02C678 */  jal        func_800B19E0
/* B5120 800B4520 34840004 */   ori       $a0, $a0, 4
/* B5124 800B4524 3C18801B */  lui        $t8, %hi(D_801A8BE8)
/* B5128 800B4528 27188BE8 */  addiu      $t8, $t8, %lo(D_801A8BE8)
/* B512C 800B452C AF020004 */  sw         $v0, 4($t8)
/* B5130 800B4530 3C040400 */  lui        $a0, 0x400
/* B5134 800B4534 0C02C678 */  jal        func_800B19E0
/* B5138 800B4538 34840008 */   ori       $a0, $a0, 8
/* B513C 800B453C 3C19801B */  lui        $t9, %hi(D_801A8BE8)
/* B5140 800B4540 27398BE8 */  addiu      $t9, $t9, %lo(D_801A8BE8)
/* B5144 800B4544 AF220008 */  sw         $v0, 8($t9)
/* B5148 800B4548 3C040400 */  lui        $a0, 0x400
/* B514C 800B454C 0C02C678 */  jal        func_800B19E0
/* B5150 800B4550 3484000C */   ori       $a0, $a0, 0xc
/* B5154 800B4554 3C08801B */  lui        $t0, %hi(D_801A8BE8)
/* B5158 800B4558 25088BE8 */  addiu      $t0, $t0, %lo(D_801A8BE8)
/* B515C 800B455C AD02000C */  sw         $v0, 0xc($t0)
.L800B4560:
/* B5160 800B4560 10000001 */  b          .L800B4568
/* B5164 800B4564 00000000 */   nop
.L800B4568:
/* B5168 800B4568 8FBF0014 */  lw         $ra, 0x14($sp)
/* B516C 800B456C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B5170 800B4570 03E00008 */  jr         $ra
/* B5174 800B4574 00000000 */   nop

glabel func_800B4578
/* B5178 800B4578 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B517C 800B457C AFBF0014 */  sw         $ra, 0x14($sp)
/* B5180 800B4580 AFA40018 */  sw         $a0, 0x18($sp)
/* B5184 800B4584 3C0E801B */  lui        $t6, %hi(D_801A8BE8)
/* B5188 800B4588 25CE8BE8 */  addiu      $t6, $t6, %lo(D_801A8BE8)
/* B518C 800B458C 8DC50000 */  lw         $a1, ($t6)
/* B5190 800B4590 0C02C664 */  jal        func_800B1990
/* B5194 800B4594 3C040400 */   lui       $a0, 0x400
/* B5198 800B4598 8FAF0018 */  lw         $t7, 0x18($sp)
/* B519C 800B459C 11E00013 */  beqz       $t7, .L800B45EC
/* B51A0 800B45A0 00000000 */   nop
/* B51A4 800B45A4 3C18801B */  lui        $t8, %hi(D_801A8BE8)
/* B51A8 800B45A8 27188BE8 */  addiu      $t8, $t8, %lo(D_801A8BE8)
/* B51AC 800B45AC 3C040400 */  lui        $a0, 0x400
/* B51B0 800B45B0 34840004 */  ori        $a0, $a0, 4
/* B51B4 800B45B4 0C02C664 */  jal        func_800B1990
/* B51B8 800B45B8 8F050004 */   lw        $a1, 4($t8)
/* B51BC 800B45BC 3C19801B */  lui        $t9, %hi(D_801A8BE8)
/* B51C0 800B45C0 27398BE8 */  addiu      $t9, $t9, %lo(D_801A8BE8)
/* B51C4 800B45C4 3C040400 */  lui        $a0, 0x400
/* B51C8 800B45C8 34840008 */  ori        $a0, $a0, 8
/* B51CC 800B45CC 0C02C664 */  jal        func_800B1990
/* B51D0 800B45D0 8F250008 */   lw        $a1, 8($t9)
/* B51D4 800B45D4 3C08801B */  lui        $t0, %hi(D_801A8BE8)
/* B51D8 800B45D8 25088BE8 */  addiu      $t0, $t0, %lo(D_801A8BE8)
/* B51DC 800B45DC 3C040400 */  lui        $a0, 0x400
/* B51E0 800B45E0 3484000C */  ori        $a0, $a0, 0xc
/* B51E4 800B45E4 0C02C664 */  jal        func_800B1990
/* B51E8 800B45E8 8D050008 */   lw        $a1, 8($t0)
.L800B45EC:
/* B51EC 800B45EC 3C040400 */  lui        $a0, 0x400
/* B51F0 800B45F0 3C05801B */  lui        $a1, %hi(D_801A8BE4)
/* B51F4 800B45F4 8CA58BE4 */  lw         $a1, %lo(D_801A8BE4)($a1)
/* B51F8 800B45F8 0C02C664 */  jal        func_800B1990
/* B51FC 800B45FC 34841000 */   ori       $a0, $a0, 0x1000
/* B5200 800B4600 3C05801B */  lui        $a1, %hi(D_801A8BE0)
/* B5204 800B4604 8CA58BE0 */  lw         $a1, %lo(D_801A8BE0)($a1)
/* B5208 800B4608 0C02C664 */  jal        func_800B1990
/* B520C 800B460C 3C040408 */   lui       $a0, 0x408
/* B5210 800B4610 10000001 */  b          .L800B4618
/* B5214 800B4614 00000000 */   nop
.L800B4618:
/* B5218 800B4618 8FBF0014 */  lw         $ra, 0x14($sp)
/* B521C 800B461C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B5220 800B4620 03E00008 */  jr         $ra
/* B5224 800B4624 00000000 */   nop

glabel func_800B4628
/* B5228 800B4628 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* B522C 800B462C AFBF001C */  sw         $ra, 0x1c($sp)
/* B5230 800B4630 AFA400D8 */  sw         $a0, 0xd8($sp)
/* B5234 800B4634 AFB10018 */  sw         $s1, 0x18($sp)
/* B5238 800B4638 AFB00014 */  sw         $s0, 0x14($sp)
/* B523C 800B463C 8FB000D8 */  lw         $s0, 0xd8($sp)
/* B5240 800B4640 8E0E000C */  lw         $t6, 0xc($s0)
/* B5244 800B4644 AFAE003C */  sw         $t6, 0x3c($sp)
/* B5248 800B4648 920F0004 */  lbu        $t7, 4($s0)
/* B524C 800B464C A3AF0034 */  sb         $t7, 0x34($sp)
/* B5250 800B4650 A7A00036 */  sh         $zero, 0x36($sp)
/* B5254 800B4654 92180009 */  lbu        $t8, 9($s0)
/* B5258 800B4658 1700003F */  bnez       $t8, .L800B4758
/* B525C 800B465C 00000000 */   nop
/* B5260 800B4660 0C02CA0F */  jal        func_800B283C
/* B5264 800B4664 8E04000C */   lw        $a0, 0xc($s0)
/* B5268 800B4668 AFA2002C */  sw         $v0, 0x2c($sp)
/* B526C 800B466C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B5270 800B4670 17200003 */  bnez       $t9, .L800B4680
/* B5274 800B4674 00000000 */   nop
/* B5278 800B4678 10000041 */  b          .L800B4780
/* B527C 800B467C 2402FFFE */   addiu     $v0, $zero, -2
.L800B4680:
/* B5280 800B4680 8FA8002C */  lw         $t0, 0x2c($sp)
/* B5284 800B4684 24110001 */  addiu      $s1, $zero, 1
/* B5288 800B4688 2A21001A */  slti       $at, $s1, 0x1a
/* B528C 800B468C 25090020 */  addiu      $t1, $t0, 0x20
/* B5290 800B4690 1020000E */  beqz       $at, .L800B46CC
/* B5294 800B4694 AFA90028 */   sw        $t1, 0x28($sp)
.L800B4698:
/* B5298 800B4698 8FAA0028 */  lw         $t2, 0x28($sp)
/* B529C 800B469C 00117080 */  sll        $t6, $s1, 2
/* B52A0 800B46A0 03AE7821 */  addu       $t7, $sp, $t6
/* B52A4 800B46A4 8D4D0004 */  lw         $t5, 4($t2)
/* B52A8 800B46A8 8D4C0000 */  lw         $t4, ($t2)
/* B52AC 800B46AC 01A05825 */  or         $t3, $t5, $zero
/* B52B0 800B46B0 ADEB0040 */  sw         $t3, 0x40($t7)
/* B52B4 800B46B4 8FB80028 */  lw         $t8, 0x28($sp)
/* B52B8 800B46B8 26310001 */  addiu      $s1, $s1, 1
/* B52BC 800B46BC 2A21001A */  slti       $at, $s1, 0x1a
/* B52C0 800B46C0 27190008 */  addiu      $t9, $t8, 8
/* B52C4 800B46C4 1420FFF4 */  bnez       $at, .L800B4698
/* B52C8 800B46C8 AFB90028 */   sw        $t9, 0x28($sp)
.L800B46CC:
/* B52CC 800B46CC 8FA8002C */  lw         $t0, 0x2c($sp)
/* B52D0 800B46D0 2411001C */  addiu      $s1, $zero, 0x1c
/* B52D4 800B46D4 2A210022 */  slti       $at, $s1, 0x22
/* B52D8 800B46D8 250900E8 */  addiu      $t1, $t0, 0xe8
/* B52DC 800B46DC 1020000E */  beqz       $at, .L800B4718
/* B52E0 800B46E0 AFA90028 */   sw        $t1, 0x28($sp)
.L800B46E4:
/* B52E4 800B46E4 8FAA0028 */  lw         $t2, 0x28($sp)
/* B52E8 800B46E8 00117080 */  sll        $t6, $s1, 2
/* B52EC 800B46EC 03AE7821 */  addu       $t7, $sp, $t6
/* B52F0 800B46F0 8D4D0004 */  lw         $t5, 4($t2)
/* B52F4 800B46F4 8D4C0000 */  lw         $t4, ($t2)
/* B52F8 800B46F8 01A05825 */  or         $t3, $t5, $zero
/* B52FC 800B46FC ADEB0040 */  sw         $t3, 0x40($t7)
/* B5300 800B4700 8FB80028 */  lw         $t8, 0x28($sp)
/* B5304 800B4704 26310001 */  addiu      $s1, $s1, 1
/* B5308 800B4708 2A210022 */  slti       $at, $s1, 0x22
/* B530C 800B470C 27190008 */  addiu      $t9, $t8, 8
/* B5310 800B4710 1420FFF4 */  bnez       $at, .L800B46E4
/* B5314 800B4714 AFB90028 */   sw        $t9, 0x28($sp)
.L800B4718:
/* B5318 800B4718 8FA8002C */  lw         $t0, 0x2c($sp)
/* B531C 800B471C 27AA0030 */  addiu      $t2, $sp, 0x30
/* B5320 800B4720 8D090120 */  lw         $t1, 0x120($t0)
/* B5324 800B4724 AD490098 */  sw         $t1, 0x98($t2)
/* B5328 800B4728 8FAC002C */  lw         $t4, 0x2c($sp)
/* B532C 800B472C 27AB0030 */  addiu      $t3, $sp, 0x30
/* B5330 800B4730 8D8D011C */  lw         $t5, 0x11c($t4)
/* B5334 800B4734 AD6D009C */  sw         $t5, 0x9c($t3)
/* B5338 800B4738 8FAE002C */  lw         $t6, 0x2c($sp)
/* B533C 800B473C 27B80030 */  addiu      $t8, $sp, 0x30
/* B5340 800B4740 8DCF0118 */  lw         $t7, 0x118($t6)
/* B5344 800B4744 AF0F00A0 */  sw         $t7, 0xa0($t8)
/* B5348 800B4748 27B90030 */  addiu      $t9, $sp, 0x30
/* B534C 800B474C AF200010 */  sw         $zero, 0x10($t9)
/* B5350 800B4750 10000003 */  b          .L800B4760
/* B5354 800B4754 00000000 */   nop
.L800B4758:
/* B5358 800B4758 10000009 */  b          .L800B4780
/* B535C 800B475C 2402FFFE */   addiu     $v0, $zero, -2
.L800B4760:
/* B5360 800B4760 27A40030 */  addiu      $a0, $sp, 0x30
/* B5364 800B4764 240500A4 */  addiu      $a1, $zero, 0xa4
/* B5368 800B4768 0C02C907 */  jal        func_800B241C
/* B536C 800B476C 24060001 */   addiu     $a2, $zero, 1
/* B5370 800B4770 10000003 */  b          .L800B4780
/* B5374 800B4774 00001025 */   or        $v0, $zero, $zero
/* B5378 800B4778 10000001 */  b          .L800B4780
/* B537C 800B477C 00000000 */   nop
.L800B4780:
/* B5380 800B4780 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5384 800B4784 8FB00014 */  lw         $s0, 0x14($sp)
/* B5388 800B4788 8FB10018 */  lw         $s1, 0x18($sp)
/* B538C 800B478C 03E00008 */  jr         $ra
/* B5390 800B4790 27BD00D8 */   addiu     $sp, $sp, 0xd8

glabel func_800B4794
/* B5394 800B4794 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B5398 800B4798 AFBF001C */  sw         $ra, 0x1c($sp)
/* B539C 800B479C AFA40040 */  sw         $a0, 0x40($sp)
/* B53A0 800B47A0 AFB10018 */  sw         $s1, 0x18($sp)
/* B53A4 800B47A4 AFB00014 */  sw         $s0, 0x14($sp)
/* B53A8 800B47A8 8FB00040 */  lw         $s0, 0x40($sp)
/* B53AC 800B47AC 920E0009 */  lbu        $t6, 9($s0)
/* B53B0 800B47B0 15C0003C */  bnez       $t6, .L800B48A4
/* B53B4 800B47B4 00000000 */   nop
/* B53B8 800B47B8 0C02CA0F */  jal        func_800B283C
/* B53BC 800B47BC 8E04000C */   lw        $a0, 0xc($s0)
/* B53C0 800B47C0 AFA20028 */  sw         $v0, 0x28($sp)
/* B53C4 800B47C4 8FAF0028 */  lw         $t7, 0x28($sp)
/* B53C8 800B47C8 15E00003 */  bnez       $t7, .L800B47D8
/* B53CC 800B47CC 00000000 */   nop
/* B53D0 800B47D0 10000043 */  b          .L800B48E0
/* B53D4 800B47D4 2402FFFE */   addiu     $v0, $zero, -2
.L800B47D8:
/* B53D8 800B47D8 8FB80028 */  lw         $t8, 0x28($sp)
/* B53DC 800B47DC 24110001 */  addiu      $s1, $zero, 1
/* B53E0 800B47E0 2A21001A */  slti       $at, $s1, 0x1a
/* B53E4 800B47E4 27190020 */  addiu      $t9, $t8, 0x20
/* B53E8 800B47E8 1020000F */  beqz       $at, .L800B4828
/* B53EC 800B47EC AFB90024 */   sw        $t9, 0x24($sp)
.L800B47F0:
/* B53F0 800B47F0 00114080 */  sll        $t0, $s1, 2
/* B53F4 800B47F4 02084821 */  addu       $t1, $s0, $t0
/* B53F8 800B47F8 8D2A0010 */  lw         $t2, 0x10($t1)
/* B53FC 800B47FC 8FAB0024 */  lw         $t3, 0x24($sp)
/* B5400 800B4800 01406825 */  or         $t5, $t2, $zero
/* B5404 800B4804 000A67C3 */  sra        $t4, $t2, 0x1f
/* B5408 800B4808 AD6C0000 */  sw         $t4, ($t3)
/* B540C 800B480C AD6D0004 */  sw         $t5, 4($t3)
/* B5410 800B4810 8FAE0024 */  lw         $t6, 0x24($sp)
/* B5414 800B4814 26310001 */  addiu      $s1, $s1, 1
/* B5418 800B4818 2A21001A */  slti       $at, $s1, 0x1a
/* B541C 800B481C 25CF0008 */  addiu      $t7, $t6, 8
/* B5420 800B4820 1420FFF3 */  bnez       $at, .L800B47F0
/* B5424 800B4824 AFAF0024 */   sw        $t7, 0x24($sp)
.L800B4828:
/* B5428 800B4828 8FB80028 */  lw         $t8, 0x28($sp)
/* B542C 800B482C 2411001C */  addiu      $s1, $zero, 0x1c
/* B5430 800B4830 2A210022 */  slti       $at, $s1, 0x22
/* B5434 800B4834 271900E8 */  addiu      $t9, $t8, 0xe8
/* B5438 800B4838 1020000F */  beqz       $at, .L800B4878
/* B543C 800B483C AFB90024 */   sw        $t9, 0x24($sp)
.L800B4840:
/* B5440 800B4840 00114080 */  sll        $t0, $s1, 2
/* B5444 800B4844 02084821 */  addu       $t1, $s0, $t0
/* B5448 800B4848 8D2A0010 */  lw         $t2, 0x10($t1)
/* B544C 800B484C 8FAB0024 */  lw         $t3, 0x24($sp)
/* B5450 800B4850 01406825 */  or         $t5, $t2, $zero
/* B5454 800B4854 000A67C3 */  sra        $t4, $t2, 0x1f
/* B5458 800B4858 AD6C0000 */  sw         $t4, ($t3)
/* B545C 800B485C AD6D0004 */  sw         $t5, 4($t3)
/* B5460 800B4860 8FAE0024 */  lw         $t6, 0x24($sp)
/* B5464 800B4864 26310001 */  addiu      $s1, $s1, 1
/* B5468 800B4868 2A210022 */  slti       $at, $s1, 0x22
/* B546C 800B486C 25CF0008 */  addiu      $t7, $t6, 8
/* B5470 800B4870 1420FFF3 */  bnez       $at, .L800B4840
/* B5474 800B4874 AFAF0024 */   sw        $t7, 0x24($sp)
.L800B4878:
/* B5478 800B4878 8E180098 */  lw         $t8, 0x98($s0)
/* B547C 800B487C 8FB90028 */  lw         $t9, 0x28($sp)
/* B5480 800B4880 AF380120 */  sw         $t8, 0x120($t9)
/* B5484 800B4884 8E08009C */  lw         $t0, 0x9c($s0)
/* B5488 800B4888 8FA90028 */  lw         $t1, 0x28($sp)
/* B548C 800B488C AD28011C */  sw         $t0, 0x11c($t1)
/* B5490 800B4890 8E0A00A0 */  lw         $t2, 0xa0($s0)
/* B5494 800B4894 8FAC0028 */  lw         $t4, 0x28($sp)
/* B5498 800B4898 AD8A0118 */  sw         $t2, 0x118($t4)
/* B549C 800B489C 10000003 */  b          .L800B48AC
/* B54A0 800B48A0 00000000 */   nop
.L800B48A4:
/* B54A4 800B48A4 1000000E */  b          .L800B48E0
/* B54A8 800B48A8 2402FFFE */   addiu     $v0, $zero, -2
.L800B48AC:
/* B54AC 800B48AC 8E0D000C */  lw         $t5, 0xc($s0)
/* B54B0 800B48B0 AFAD0038 */  sw         $t5, 0x38($sp)
/* B54B4 800B48B4 920B0004 */  lbu        $t3, 4($s0)
/* B54B8 800B48B8 A3AB0030 */  sb         $t3, 0x30($sp)
/* B54BC 800B48BC A7A00032 */  sh         $zero, 0x32($sp)
/* B54C0 800B48C0 27A4002C */  addiu      $a0, $sp, 0x2c
/* B54C4 800B48C4 24050010 */  addiu      $a1, $zero, 0x10
/* B54C8 800B48C8 0C02C907 */  jal        func_800B241C
/* B54CC 800B48CC 24060001 */   addiu     $a2, $zero, 1
/* B54D0 800B48D0 10000003 */  b          .L800B48E0
/* B54D4 800B48D4 00001025 */   or        $v0, $zero, $zero
/* B54D8 800B48D8 10000001 */  b          .L800B48E0
/* B54DC 800B48DC 00000000 */   nop
.L800B48E0:
/* B54E0 800B48E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B54E4 800B48E4 8FB00014 */  lw         $s0, 0x14($sp)
/* B54E8 800B48E8 8FB10018 */  lw         $s1, 0x18($sp)
/* B54EC 800B48EC 03E00008 */  jr         $ra
/* B54F0 800B48F0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800B48F4
/* B54F4 800B48F4 27BDFF38 */  addiu      $sp, $sp, -0xc8
/* B54F8 800B48F8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B54FC 800B48FC AFA400C8 */  sw         $a0, 0xc8($sp)
/* B5500 800B4900 AFB00018 */  sw         $s0, 0x18($sp)
/* B5504 800B4904 8FB000C8 */  lw         $s0, 0xc8($sp)
/* B5508 800B4908 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* B550C 800B490C 91CF0009 */  lbu        $t7, 9($t6)
/* B5510 800B4910 11E00003 */  beqz       $t7, .L800B4920
/* B5514 800B4914 00000000 */   nop
/* B5518 800B4918 10000022 */  b          .L800B49A4
/* B551C 800B491C 2402FFFE */   addiu     $v0, $zero, -2
.L800B4920:
/* B5520 800B4920 44802000 */  mtc1       $zero, $f4
/* B5524 800B4924 00000000 */  nop
/* B5528 800B4928 E7A40020 */  swc1       $f4, 0x20($sp)
/* B552C 800B492C 0C02CA0F */  jal        func_800B283C
/* B5530 800B4930 8E04000C */   lw        $a0, 0xc($s0)
/* B5534 800B4934 AFA20024 */  sw         $v0, 0x24($sp)
/* B5538 800B4938 8FB80024 */  lw         $t8, 0x24($sp)
/* B553C 800B493C 17000003 */  bnez       $t8, .L800B494C
/* B5540 800B4940 00000000 */   nop
/* B5544 800B4944 10000017 */  b          .L800B49A4
/* B5548 800B4948 2402FFFE */   addiu     $v0, $zero, -2
.L800B494C:
/* B554C 800B494C 8FA50024 */  lw         $a1, 0x24($sp)
/* B5550 800B4950 27A40028 */  addiu      $a0, $sp, 0x28
/* B5554 800B4954 24840010 */  addiu      $a0, $a0, 0x10
/* B5558 800B4958 24060020 */  addiu      $a2, $zero, 0x20
/* B555C 800B495C 0C02C6A0 */  jal        func_800B1A80
/* B5560 800B4960 24A50130 */   addiu     $a1, $a1, 0x130
/* B5564 800B4964 8FB90024 */  lw         $t9, 0x24($sp)
/* B5568 800B4968 8F28012C */  lw         $t0, 0x12c($t9)
/* B556C 800B496C AFA800B8 */  sw         $t0, 0xb8($sp)
/* B5570 800B4970 92090004 */  lbu        $t1, 4($s0)
/* B5574 800B4974 A3A9002C */  sb         $t1, 0x2c($sp)
/* B5578 800B4978 A7A0002E */  sh         $zero, 0x2e($sp)
/* B557C 800B497C 8E0A000C */  lw         $t2, 0xc($s0)
/* B5580 800B4980 AFAA0034 */  sw         $t2, 0x34($sp)
/* B5584 800B4984 27A40028 */  addiu      $a0, $sp, 0x28
/* B5588 800B4988 24050098 */  addiu      $a1, $zero, 0x98
/* B558C 800B498C 0C02C907 */  jal        func_800B241C
/* B5590 800B4990 24060001 */   addiu     $a2, $zero, 1
/* B5594 800B4994 10000003 */  b          .L800B49A4
/* B5598 800B4998 00001025 */   or        $v0, $zero, $zero
/* B559C 800B499C 10000001 */  b          .L800B49A4
/* B55A0 800B49A0 00000000 */   nop
.L800B49A4:
/* B55A4 800B49A4 8FBF001C */  lw         $ra, 0x1c($sp)
/* B55A8 800B49A8 8FB00018 */  lw         $s0, 0x18($sp)
/* B55AC 800B49AC 27BD00C8 */  addiu      $sp, $sp, 0xc8
/* B55B0 800B49B0 03E00008 */  jr         $ra
/* B55B4 800B49B4 00000000 */   nop

glabel func_800B49B8
/* B55B8 800B49B8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B55BC 800B49BC AFBF001C */  sw         $ra, 0x1c($sp)
/* B55C0 800B49C0 AFA40040 */  sw         $a0, 0x40($sp)
/* B55C4 800B49C4 AFB00018 */  sw         $s0, 0x18($sp)
/* B55C8 800B49C8 8FB00040 */  lw         $s0, 0x40($sp)
/* B55CC 800B49CC 8FAE0040 */  lw         $t6, 0x40($sp)
/* B55D0 800B49D0 91CF0009 */  lbu        $t7, 9($t6)
/* B55D4 800B49D4 11E00003 */  beqz       $t7, .L800B49E4
/* B55D8 800B49D8 00000000 */   nop
/* B55DC 800B49DC 10000021 */  b          .L800B4A64
/* B55E0 800B49E0 2402FFFE */   addiu     $v0, $zero, -2
.L800B49E4:
/* B55E4 800B49E4 44802000 */  mtc1       $zero, $f4
/* B55E8 800B49E8 00000000 */  nop
/* B55EC 800B49EC E7A40024 */  swc1       $f4, 0x24($sp)
/* B55F0 800B49F0 0C02CA0F */  jal        func_800B283C
/* B55F4 800B49F4 8E04000C */   lw        $a0, 0xc($s0)
/* B55F8 800B49F8 AFA20028 */  sw         $v0, 0x28($sp)
/* B55FC 800B49FC 8FB80028 */  lw         $t8, 0x28($sp)
/* B5600 800B4A00 17000003 */  bnez       $t8, .L800B4A10
/* B5604 800B4A04 00000000 */   nop
/* B5608 800B4A08 10000016 */  b          .L800B4A64
/* B560C 800B4A0C 2402FFFE */   addiu     $v0, $zero, -2
.L800B4A10:
/* B5610 800B4A10 8FA40028 */  lw         $a0, 0x28($sp)
/* B5614 800B4A14 26050010 */  addiu      $a1, $s0, 0x10
/* B5618 800B4A18 24060020 */  addiu      $a2, $zero, 0x20
/* B561C 800B4A1C 0C02C6A0 */  jal        func_800B1A80
/* B5620 800B4A20 24840130 */   addiu     $a0, $a0, 0x130
/* B5624 800B4A24 8E190090 */  lw         $t9, 0x90($s0)
/* B5628 800B4A28 8FA80028 */  lw         $t0, 0x28($sp)
/* B562C 800B4A2C AD19012C */  sw         $t9, 0x12c($t0)
/* B5630 800B4A30 8E09000C */  lw         $t1, 0xc($s0)
/* B5634 800B4A34 AFA90038 */  sw         $t1, 0x38($sp)
/* B5638 800B4A38 920A0004 */  lbu        $t2, 4($s0)
/* B563C 800B4A3C A3AA0030 */  sb         $t2, 0x30($sp)
/* B5640 800B4A40 A7A00032 */  sh         $zero, 0x32($sp)
/* B5644 800B4A44 27A4002C */  addiu      $a0, $sp, 0x2c
/* B5648 800B4A48 24050010 */  addiu      $a1, $zero, 0x10
/* B564C 800B4A4C 0C02C907 */  jal        func_800B241C
/* B5650 800B4A50 24060001 */   addiu     $a2, $zero, 1
/* B5654 800B4A54 10000003 */  b          .L800B4A64
/* B5658 800B4A58 00001025 */   or        $v0, $zero, $zero
/* B565C 800B4A5C 10000001 */  b          .L800B4A64
/* B5660 800B4A60 00000000 */   nop
.L800B4A64:
/* B5664 800B4A64 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5668 800B4A68 8FB00018 */  lw         $s0, 0x18($sp)
/* B566C 800B4A6C 27BD0040 */  addiu      $sp, $sp, 0x40
/* B5670 800B4A70 03E00008 */  jr         $ra
/* B5674 800B4A74 00000000 */   nop

glabel func_800B4A78
/* B5678 800B4A78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B567C 800B4A7C AFBF0014 */  sw         $ra, 0x14($sp)
/* B5680 800B4A80 AFA40020 */  sw         $a0, 0x20($sp)
/* B5684 800B4A84 0C02CD6C */  jal        func_800B35B0
/* B5688 800B4A88 00000000 */   nop
/* B568C 800B4A8C 10400003 */  beqz       $v0, .L800B4A9C
/* B5690 800B4A90 00000000 */   nop
/* B5694 800B4A94 10000011 */  b          .L800B4ADC
/* B5698 800B4A98 00001025 */   or        $v0, $zero, $zero
.L800B4A9C:
/* B569C 800B4A9C 0C02D132 */  jal        func_800B44C8
/* B56A0 800B4AA0 00002025 */   or        $a0, $zero, $zero
/* B56A4 800B4AA4 2404002B */  addiu      $a0, $zero, 0x2b
/* B56A8 800B4AA8 0C02D0E8 */  jal        func_800B43A0
/* B56AC 800B4AAC 8FA50020 */   lw        $a1, 0x20($sp)
/* B56B0 800B4AB0 0C02CD86 */  jal        func_800B3618
/* B56B4 800B4AB4 00000000 */   nop
/* B56B8 800B4AB8 0C02C678 */  jal        func_800B19E0
/* B56BC 800B4ABC 3C040400 */   lui       $a0, 0x400
/* B56C0 800B4AC0 AFA2001C */  sw         $v0, 0x1c($sp)
/* B56C4 800B4AC4 0C02D15E */  jal        func_800B4578
/* B56C8 800B4AC8 00002025 */   or        $a0, $zero, $zero
/* B56CC 800B4ACC 10000003 */  b          .L800B4ADC
/* B56D0 800B4AD0 8FA2001C */   lw        $v0, 0x1c($sp)
/* B56D4 800B4AD4 10000001 */  b          .L800B4ADC
/* B56D8 800B4AD8 00000000 */   nop
.L800B4ADC:
/* B56DC 800B4ADC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B56E0 800B4AE0 27BD0020 */  addiu      $sp, $sp, 0x20
/* B56E4 800B4AE4 03E00008 */  jr         $ra
/* B56E8 800B4AE8 00000000 */   nop

glabel func_800B4AEC
/* B56EC 800B4AEC 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* B56F0 800B4AF0 AFBF001C */  sw         $ra, 0x1c($sp)
/* B56F4 800B4AF4 AFA400D8 */  sw         $a0, 0xd8($sp)
/* B56F8 800B4AF8 AFB10018 */  sw         $s1, 0x18($sp)
/* B56FC 800B4AFC AFB00014 */  sw         $s0, 0x14($sp)
/* B5700 800B4B00 8FB000D8 */  lw         $s0, 0xd8($sp)
/* B5704 800B4B04 0C02CD6C */  jal        func_800B35B0
/* B5708 800B4B08 00000000 */   nop
/* B570C 800B4B0C 10400003 */  beqz       $v0, .L800B4B1C
/* B5710 800B4B10 00000000 */   nop
/* B5714 800B4B14 1000004D */  b          .L800B4C4C
/* B5718 800B4B18 2402FFFC */   addiu     $v0, $zero, -4
.L800B4B1C:
/* B571C 800B4B1C 8E0E000C */  lw         $t6, 0xc($s0)
/* B5720 800B4B20 AFAE0030 */  sw         $t6, 0x30($sp)
/* B5724 800B4B24 920F0004 */  lbu        $t7, 4($s0)
/* B5728 800B4B28 A3AF0028 */  sb         $t7, 0x28($sp)
/* B572C 800B4B2C A7A0002A */  sh         $zero, 0x2a($sp)
/* B5730 800B4B30 0C02D132 */  jal        func_800B44C8
/* B5734 800B4B34 00002025 */   or        $a0, $zero, $zero
/* B5738 800B4B38 00008825 */  or         $s1, $zero, $zero
/* B573C 800B4B3C 2A210020 */  slti       $at, $s1, 0x20
/* B5740 800B4B40 1020000F */  beqz       $at, .L800B4B80
/* B5744 800B4B44 00000000 */   nop
.L800B4B48:
/* B5748 800B4B48 2404002B */  addiu      $a0, $zero, 0x2b
/* B574C 800B4B4C 0C02D0E8 */  jal        func_800B43A0
/* B5750 800B4B50 02202825 */   or        $a1, $s1, $zero
/* B5754 800B4B54 0C02CD86 */  jal        func_800B3618
/* B5758 800B4B58 00000000 */   nop
/* B575C 800B4B5C 0C02C678 */  jal        func_800B19E0
/* B5760 800B4B60 3C040400 */   lui       $a0, 0x400
/* B5764 800B4B64 0011C080 */  sll        $t8, $s1, 2
/* B5768 800B4B68 03B8C821 */  addu       $t9, $sp, $t8
/* B576C 800B4B6C AF220034 */  sw         $v0, 0x34($t9)
/* B5770 800B4B70 26310001 */  addiu      $s1, $s1, 1
/* B5774 800B4B74 2A210020 */  slti       $at, $s1, 0x20
/* B5778 800B4B78 1420FFF3 */  bnez       $at, .L800B4B48
/* B577C 800B4B7C 00000000 */   nop
.L800B4B80:
/* B5780 800B4B80 0C02D15E */  jal        func_800B4578
/* B5784 800B4B84 00002025 */   or        $a0, $zero, $zero
/* B5788 800B4B88 3C040404 */  lui        $a0, 0x404
/* B578C 800B4B8C 0C02C678 */  jal        func_800B19E0
/* B5790 800B4B90 34840004 */   ori       $a0, $a0, 4
/* B5794 800B4B94 27A80024 */  addiu      $t0, $sp, 0x24
/* B5798 800B4B98 AD020090 */  sw         $v0, 0x90($t0)
/* B579C 800B4B9C 0C02C678 */  jal        func_800B19E0
/* B57A0 800B4BA0 3C040404 */   lui       $a0, 0x404
/* B57A4 800B4BA4 27A90024 */  addiu      $t1, $sp, 0x24
/* B57A8 800B4BA8 AD220094 */  sw         $v0, 0x94($t1)
/* B57AC 800B4BAC 3C040404 */  lui        $a0, 0x404
/* B57B0 800B4BB0 0C02C678 */  jal        func_800B19E0
/* B57B4 800B4BB4 34840008 */   ori       $a0, $a0, 8
/* B57B8 800B4BB8 27AA0024 */  addiu      $t2, $sp, 0x24
/* B57BC 800B4BBC AD420098 */  sw         $v0, 0x98($t2)
/* B57C0 800B4BC0 0C02C678 */  jal        func_800B19E0
/* B57C4 800B4BC4 3C040408 */   lui       $a0, 0x408
/* B57C8 800B4BC8 3C010400 */  lui        $at, 0x400
/* B57CC 800B4BCC 34211000 */  ori        $at, $at, 0x1000
/* B57D0 800B4BD0 00415821 */  addu       $t3, $v0, $at
/* B57D4 800B4BD4 27AC0024 */  addiu      $t4, $sp, 0x24
/* B57D8 800B4BD8 AD8B009C */  sw         $t3, 0x9c($t4)
/* B57DC 800B4BDC 3C040404 */  lui        $a0, 0x404
/* B57E0 800B4BE0 0C02C678 */  jal        func_800B19E0
/* B57E4 800B4BE4 3484000C */   ori       $a0, $a0, 0xc
/* B57E8 800B4BE8 27AD0024 */  addiu      $t5, $sp, 0x24
/* B57EC 800B4BEC ADA200A0 */  sw         $v0, 0xa0($t5)
/* B57F0 800B4BF0 3C040404 */  lui        $a0, 0x404
/* B57F4 800B4BF4 0C02C678 */  jal        func_800B19E0
/* B57F8 800B4BF8 34840010 */   ori       $a0, $a0, 0x10
/* B57FC 800B4BFC 27AE0024 */  addiu      $t6, $sp, 0x24
/* B5800 800B4C00 ADC200A4 */  sw         $v0, 0xa4($t6)
/* B5804 800B4C04 3C040404 */  lui        $a0, 0x404
/* B5808 800B4C08 0C02C678 */  jal        func_800B19E0
/* B580C 800B4C0C 34840014 */   ori       $a0, $a0, 0x14
/* B5810 800B4C10 27AF0024 */  addiu      $t7, $sp, 0x24
/* B5814 800B4C14 ADE200A8 */  sw         $v0, 0xa8($t7)
/* B5818 800B4C18 3C040404 */  lui        $a0, 0x404
/* B581C 800B4C1C 0C02C678 */  jal        func_800B19E0
/* B5820 800B4C20 34840018 */   ori       $a0, $a0, 0x18
/* B5824 800B4C24 27B80024 */  addiu      $t8, $sp, 0x24
/* B5828 800B4C28 AF0200AC */  sw         $v0, 0xac($t8)
/* B582C 800B4C2C 27A40024 */  addiu      $a0, $sp, 0x24
/* B5830 800B4C30 240500B0 */  addiu      $a1, $zero, 0xb0
/* B5834 800B4C34 0C02C907 */  jal        func_800B241C
/* B5838 800B4C38 24060001 */   addiu     $a2, $zero, 1
/* B583C 800B4C3C 10000003 */  b          .L800B4C4C
/* B5840 800B4C40 00001025 */   or        $v0, $zero, $zero
/* B5844 800B4C44 10000001 */  b          .L800B4C4C
/* B5848 800B4C48 00000000 */   nop
.L800B4C4C:
/* B584C 800B4C4C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5850 800B4C50 8FB00014 */  lw         $s0, 0x14($sp)
/* B5854 800B4C54 8FB10018 */  lw         $s1, 0x18($sp)
/* B5858 800B4C58 03E00008 */  jr         $ra
/* B585C 800B4C5C 27BD00D8 */   addiu     $sp, $sp, 0xd8

glabel func_800B4C60
/* B5860 800B4C60 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B5864 800B4C64 AFBF001C */  sw         $ra, 0x1c($sp)
/* B5868 800B4C68 AFA40038 */  sw         $a0, 0x38($sp)
/* B586C 800B4C6C AFB10018 */  sw         $s1, 0x18($sp)
/* B5870 800B4C70 AFB00014 */  sw         $s0, 0x14($sp)
/* B5874 800B4C74 8FB00038 */  lw         $s0, 0x38($sp)
/* B5878 800B4C78 0C02CD6C */  jal        func_800B35B0
/* B587C 800B4C7C 00000000 */   nop
/* B5880 800B4C80 10400003 */  beqz       $v0, .L800B4C90
/* B5884 800B4C84 00000000 */   nop
/* B5888 800B4C88 10000038 */  b          .L800B4D6C
/* B588C 800B4C8C 2402FFFC */   addiu     $v0, $zero, -4
.L800B4C90:
/* B5890 800B4C90 0C02D132 */  jal        func_800B44C8
/* B5894 800B4C94 00002025 */   or        $a0, $zero, $zero
/* B5898 800B4C98 00008825 */  or         $s1, $zero, $zero
/* B589C 800B4C9C 2A210020 */  slti       $at, $s1, 0x20
/* B58A0 800B4CA0 1020000F */  beqz       $at, .L800B4CE0
/* B58A4 800B4CA4 00000000 */   nop
.L800B4CA8:
/* B58A8 800B4CA8 00117080 */  sll        $t6, $s1, 2
/* B58AC 800B4CAC 020E7821 */  addu       $t7, $s0, $t6
/* B58B0 800B4CB0 8DE50010 */  lw         $a1, 0x10($t7)
/* B58B4 800B4CB4 0C02C664 */  jal        func_800B1990
/* B58B8 800B4CB8 3C040400 */   lui       $a0, 0x400
/* B58BC 800B4CBC 24040023 */  addiu      $a0, $zero, 0x23
/* B58C0 800B4CC0 0C02D0E8 */  jal        func_800B43A0
/* B58C4 800B4CC4 02202825 */   or        $a1, $s1, $zero
/* B58C8 800B4CC8 0C02CD86 */  jal        func_800B3618
/* B58CC 800B4CCC 00000000 */   nop
/* B58D0 800B4CD0 26310001 */  addiu      $s1, $s1, 1
/* B58D4 800B4CD4 2A210020 */  slti       $at, $s1, 0x20
/* B58D8 800B4CD8 1420FFF3 */  bnez       $at, .L800B4CA8
/* B58DC 800B4CDC 00000000 */   nop
.L800B4CE0:
/* B58E0 800B4CE0 0C02D15E */  jal        func_800B4578
/* B58E4 800B4CE4 00002025 */   or        $a0, $zero, $zero
/* B58E8 800B4CE8 3C040404 */  lui        $a0, 0x404
/* B58EC 800B4CEC 34840004 */  ori        $a0, $a0, 4
/* B58F0 800B4CF0 0C02C664 */  jal        func_800B1990
/* B58F4 800B4CF4 8E050090 */   lw        $a1, 0x90($s0)
/* B58F8 800B4CF8 3C040404 */  lui        $a0, 0x404
/* B58FC 800B4CFC 0C02C664 */  jal        func_800B1990
/* B5900 800B4D00 8E050094 */   lw        $a1, 0x94($s0)
/* B5904 800B4D04 8E05009C */  lw         $a1, 0x9c($s0)
/* B5908 800B4D08 3C040408 */  lui        $a0, 0x408
/* B590C 800B4D0C 30B80FFF */  andi       $t8, $a1, 0xfff
/* B5910 800B4D10 0C02C664 */  jal        func_800B1990
/* B5914 800B4D14 03002825 */   or        $a1, $t8, $zero
/* B5918 800B4D18 3C040404 */  lui        $a0, 0x404
/* B591C 800B4D1C 3484000C */  ori        $a0, $a0, 0xc
/* B5920 800B4D20 0C02C664 */  jal        func_800B1990
/* B5924 800B4D24 8E0500A0 */   lw        $a1, 0xa0($s0)
/* B5928 800B4D28 3C040404 */  lui        $a0, 0x404
/* B592C 800B4D2C 34840010 */  ori        $a0, $a0, 0x10
/* B5930 800B4D30 0C02C664 */  jal        func_800B1990
/* B5934 800B4D34 8E0500A4 */   lw        $a1, 0xa4($s0)
/* B5938 800B4D38 8E19000C */  lw         $t9, 0xc($s0)
/* B593C 800B4D3C AFB90030 */  sw         $t9, 0x30($sp)
/* B5940 800B4D40 92080004 */  lbu        $t0, 4($s0)
/* B5944 800B4D44 A3A80028 */  sb         $t0, 0x28($sp)
/* B5948 800B4D48 A7A0002A */  sh         $zero, 0x2a($sp)
/* B594C 800B4D4C 27A40024 */  addiu      $a0, $sp, 0x24
/* B5950 800B4D50 24050010 */  addiu      $a1, $zero, 0x10
/* B5954 800B4D54 0C02C907 */  jal        func_800B241C
/* B5958 800B4D58 24060001 */   addiu     $a2, $zero, 1
/* B595C 800B4D5C 10000003 */  b          .L800B4D6C
/* B5960 800B4D60 00001025 */   or        $v0, $zero, $zero
/* B5964 800B4D64 10000001 */  b          .L800B4D6C
/* B5968 800B4D68 00000000 */   nop
.L800B4D6C:
/* B596C 800B4D6C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5970 800B4D70 8FB00014 */  lw         $s0, 0x14($sp)
/* B5974 800B4D74 8FB10018 */  lw         $s1, 0x18($sp)
/* B5978 800B4D78 03E00008 */  jr         $ra
/* B597C 800B4D7C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800B4D80
/* B5980 800B4D80 27BDFDB0 */  addiu      $sp, $sp, -0x250
/* B5984 800B4D84 AFBF0024 */  sw         $ra, 0x24($sp)
/* B5988 800B4D88 AFA40250 */  sw         $a0, 0x250($sp)
/* B598C 800B4D8C AFB20020 */  sw         $s2, 0x20($sp)
/* B5990 800B4D90 AFB1001C */  sw         $s1, 0x1c($sp)
/* B5994 800B4D94 AFB00018 */  sw         $s0, 0x18($sp)
/* B5998 800B4D98 8FB00250 */  lw         $s0, 0x250($sp)
/* B599C 800B4D9C 0C02CD6C */  jal        func_800B35B0
/* B59A0 800B4DA0 00000000 */   nop
/* B59A4 800B4DA4 10400003 */  beqz       $v0, .L800B4DB4
/* B59A8 800B4DA8 00000000 */   nop
/* B59AC 800B4DAC 1000003C */  b          .L800B4EA0
/* B59B0 800B4DB0 2402FFFC */   addiu     $v0, $zero, -4
.L800B4DB4:
/* B59B4 800B4DB4 8E0E000C */  lw         $t6, 0xc($s0)
/* B59B8 800B4DB8 AFAE003C */  sw         $t6, 0x3c($sp)
/* B59BC 800B4DBC 920F0004 */  lbu        $t7, 4($s0)
/* B59C0 800B4DC0 A3AF0034 */  sb         $t7, 0x34($sp)
/* B59C4 800B4DC4 A7A00036 */  sh         $zero, 0x36($sp)
/* B59C8 800B4DC8 24180210 */  addiu      $t8, $zero, 0x210
/* B59CC 800B4DCC AFB80030 */  sw         $t8, 0x30($sp)
/* B59D0 800B4DD0 24190210 */  addiu      $t9, $zero, 0x210
/* B59D4 800B4DD4 AFB90244 */  sw         $t9, 0x244($sp)
/* B59D8 800B4DD8 27A80244 */  addiu      $t0, $sp, 0x244
/* B59DC 800B4DDC AFA8024C */  sw         $t0, 0x24c($sp)
/* B59E0 800B4DE0 AFA00248 */  sw         $zero, 0x248($sp)
/* B59E4 800B4DE4 8FA90248 */  lw         $t1, 0x248($sp)
/* B59E8 800B4DE8 29210004 */  slti       $at, $t1, 4
/* B59EC 800B4DEC 10200010 */  beqz       $at, .L800B4E30
/* B59F0 800B4DF0 00000000 */   nop
.L800B4DF4:
/* B59F4 800B4DF4 8FAB0248 */  lw         $t3, 0x248($sp)
/* B59F8 800B4DF8 8FAA024C */  lw         $t2, 0x24c($sp)
/* B59FC 800B4DFC 240C0004 */  addiu      $t4, $zero, 4
/* B5A00 800B4E00 24060008 */  addiu      $a2, $zero, 8
/* B5A04 800B4E04 018B2823 */  subu       $a1, $t4, $t3
/* B5A08 800B4E08 0C02C4C8 */  jal        func_800B1320
/* B5A0C 800B4E0C 014B2021 */   addu      $a0, $t2, $t3
/* B5A10 800B4E10 8FAD0248 */  lw         $t5, 0x248($sp)
/* B5A14 800B4E14 00409025 */  or         $s2, $v0, $zero
/* B5A18 800B4E18 01B27021 */  addu       $t6, $t5, $s2
/* B5A1C 800B4E1C AFAE0248 */  sw         $t6, 0x248($sp)
/* B5A20 800B4E20 8FAF0248 */  lw         $t7, 0x248($sp)
/* B5A24 800B4E24 29E10004 */  slti       $at, $t7, 4
/* B5A28 800B4E28 1420FFF2 */  bnez       $at, .L800B4DF4
/* B5A2C 800B4E2C 00000000 */   nop
.L800B4E30:
/* B5A30 800B4E30 27A40030 */  addiu      $a0, $sp, 0x30
/* B5A34 800B4E34 24050010 */  addiu      $a1, $zero, 0x10
/* B5A38 800B4E38 0C02C8DC */  jal        func_800B2370
/* B5A3C 800B4E3C 24060001 */   addiu     $a2, $zero, 1
/* B5A40 800B4E40 0C02D132 */  jal        func_800B44C8
/* B5A44 800B4E44 24040001 */   addiu     $a0, $zero, 1
/* B5A48 800B4E48 00008825 */  or         $s1, $zero, $zero
/* B5A4C 800B4E4C 2A210020 */  slti       $at, $s1, 0x20
/* B5A50 800B4E50 1020000D */  beqz       $at, .L800B4E88
/* B5A54 800B4E54 00000000 */   nop
.L800B4E58:
/* B5A58 800B4E58 2404003A */  addiu      $a0, $zero, 0x3a
/* B5A5C 800B4E5C 0C02D10B */  jal        func_800B442C
/* B5A60 800B4E60 02202825 */   or        $a1, $s1, $zero
/* B5A64 800B4E64 0C02CD86 */  jal        func_800B3618
/* B5A68 800B4E68 00000000 */   nop
/* B5A6C 800B4E6C 3C040400 */  lui        $a0, 0x400
/* B5A70 800B4E70 0C02C933 */  jal        func_800B24CC
/* B5A74 800B4E74 24050010 */   addiu     $a1, $zero, 0x10
/* B5A78 800B4E78 26310001 */  addiu      $s1, $s1, 1
/* B5A7C 800B4E7C 2A210020 */  slti       $at, $s1, 0x20
/* B5A80 800B4E80 1420FFF5 */  bnez       $at, .L800B4E58
/* B5A84 800B4E84 00000000 */   nop
.L800B4E88:
/* B5A88 800B4E88 0C02D15E */  jal        func_800B4578
/* B5A8C 800B4E8C 24040001 */   addiu     $a0, $zero, 1
/* B5A90 800B4E90 10000003 */  b          .L800B4EA0
/* B5A94 800B4E94 00001025 */   or        $v0, $zero, $zero
/* B5A98 800B4E98 10000001 */  b          .L800B4EA0
/* B5A9C 800B4E9C 00000000 */   nop
.L800B4EA0:
/* B5AA0 800B4EA0 8FBF0024 */  lw         $ra, 0x24($sp)
/* B5AA4 800B4EA4 8FB00018 */  lw         $s0, 0x18($sp)
/* B5AA8 800B4EA8 8FB1001C */  lw         $s1, 0x1c($sp)
/* B5AAC 800B4EAC 8FB20020 */  lw         $s2, 0x20($sp)
/* B5AB0 800B4EB0 03E00008 */  jr         $ra
/* B5AB4 800B4EB4 27BD0250 */   addiu     $sp, $sp, 0x250

glabel func_800B4EB8
/* B5AB8 800B4EB8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B5ABC 800B4EBC AFBF001C */  sw         $ra, 0x1c($sp)
/* B5AC0 800B4EC0 AFA40038 */  sw         $a0, 0x38($sp)
/* B5AC4 800B4EC4 AFB10018 */  sw         $s1, 0x18($sp)
/* B5AC8 800B4EC8 AFB00014 */  sw         $s0, 0x14($sp)
/* B5ACC 800B4ECC 8FB00038 */  lw         $s0, 0x38($sp)
/* B5AD0 800B4ED0 0C02CD6C */  jal        func_800B35B0
/* B5AD4 800B4ED4 00000000 */   nop
/* B5AD8 800B4ED8 10400003 */  beqz       $v0, .L800B4EE8
/* B5ADC 800B4EDC 00000000 */   nop
/* B5AE0 800B4EE0 10000025 */  b          .L800B4F78
/* B5AE4 800B4EE4 2402FFFC */   addiu     $v0, $zero, -4
.L800B4EE8:
/* B5AE8 800B4EE8 0C02D132 */  jal        func_800B44C8
/* B5AEC 800B4EEC 24040001 */   addiu     $a0, $zero, 1
/* B5AF0 800B4EF0 00008825 */  or         $s1, $zero, $zero
/* B5AF4 800B4EF4 2A210020 */  slti       $at, $s1, 0x20
/* B5AF8 800B4EF8 10200010 */  beqz       $at, .L800B4F3C
/* B5AFC 800B4EFC 00000000 */   nop
.L800B4F00:
/* B5B00 800B4F00 00117080 */  sll        $t6, $s1, 2
/* B5B04 800B4F04 020E2821 */  addu       $a1, $s0, $t6
/* B5B08 800B4F08 24A50010 */  addiu      $a1, $a1, 0x10
/* B5B0C 800B4F0C 3C040400 */  lui        $a0, 0x400
/* B5B10 800B4F10 0C02C6A0 */  jal        func_800B1A80
/* B5B14 800B4F14 24060004 */   addiu     $a2, $zero, 4
/* B5B18 800B4F18 24040032 */  addiu      $a0, $zero, 0x32
/* B5B1C 800B4F1C 0C02D10B */  jal        func_800B442C
/* B5B20 800B4F20 02202825 */   or        $a1, $s1, $zero
/* B5B24 800B4F24 0C02CD86 */  jal        func_800B3618
/* B5B28 800B4F28 00000000 */   nop
/* B5B2C 800B4F2C 26310001 */  addiu      $s1, $s1, 1
/* B5B30 800B4F30 2A210020 */  slti       $at, $s1, 0x20
/* B5B34 800B4F34 1420FFF2 */  bnez       $at, .L800B4F00
/* B5B38 800B4F38 00000000 */   nop
.L800B4F3C:
/* B5B3C 800B4F3C 0C02D15E */  jal        func_800B4578
/* B5B40 800B4F40 24040001 */   addiu     $a0, $zero, 1
/* B5B44 800B4F44 8E0F000C */  lw         $t7, 0xc($s0)
/* B5B48 800B4F48 AFAF0030 */  sw         $t7, 0x30($sp)
/* B5B4C 800B4F4C 92180004 */  lbu        $t8, 4($s0)
/* B5B50 800B4F50 A3B80028 */  sb         $t8, 0x28($sp)
/* B5B54 800B4F54 A7A0002A */  sh         $zero, 0x2a($sp)
/* B5B58 800B4F58 27A40024 */  addiu      $a0, $sp, 0x24
/* B5B5C 800B4F5C 24050010 */  addiu      $a1, $zero, 0x10
/* B5B60 800B4F60 0C02C907 */  jal        func_800B241C
/* B5B64 800B4F64 24060001 */   addiu     $a2, $zero, 1
/* B5B68 800B4F68 10000003 */  b          .L800B4F78
/* B5B6C 800B4F6C 00001025 */   or        $v0, $zero, $zero
/* B5B70 800B4F70 10000001 */  b          .L800B4F78
/* B5B74 800B4F74 00000000 */   nop
.L800B4F78:
/* B5B78 800B4F78 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5B7C 800B4F7C 8FB00014 */  lw         $s0, 0x14($sp)
/* B5B80 800B4F80 8FB10018 */  lw         $s1, 0x18($sp)
/* B5B84 800B4F84 03E00008 */  jr         $ra
/* B5B88 800B4F88 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800B4F8C
/* B5B8C 800B4F8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B5B90 800B4F90 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5B94 800B4F94 AFA40020 */  sw         $a0, 0x20($sp)
/* B5B98 800B4F98 AFA50024 */  sw         $a1, 0x24($sp)
/* B5B9C 800B4F9C AFA60028 */  sw         $a2, 0x28($sp)
/* B5BA0 800B4FA0 8FAE0020 */  lw         $t6, 0x20($sp)
/* B5BA4 800B4FA4 15C0002D */  bnez       $t6, .L800B505C
/* B5BA8 800B4FA8 00000000 */   nop
/* B5BAC 800B4FAC 8FAF0028 */  lw         $t7, 0x28($sp)
/* B5BB0 800B4FB0 19E00008 */  blez       $t7, .L800B4FD4
/* B5BB4 800B4FB4 00000000 */   nop
/* B5BB8 800B4FB8 29E1001A */  slti       $at, $t7, 0x1a
/* B5BBC 800B4FBC 10200005 */  beqz       $at, .L800B4FD4
/* B5BC0 800B4FC0 00000000 */   nop
/* B5BC4 800B4FC4 8FB80028 */  lw         $t8, 0x28($sp)
/* B5BC8 800B4FC8 2719FFFF */  addiu      $t9, $t8, -1
/* B5BCC 800B4FCC 1000000E */  b          .L800B5008
/* B5BD0 800B4FD0 AFB90028 */   sw        $t9, 0x28($sp)
.L800B4FD4:
/* B5BD4 800B4FD4 8FA80028 */  lw         $t0, 0x28($sp)
/* B5BD8 800B4FD8 2901001C */  slti       $at, $t0, 0x1c
/* B5BDC 800B4FDC 14200008 */  bnez       $at, .L800B5000
/* B5BE0 800B4FE0 00000000 */   nop
/* B5BE4 800B4FE4 29010020 */  slti       $at, $t0, 0x20
/* B5BE8 800B4FE8 10200005 */  beqz       $at, .L800B5000
/* B5BEC 800B4FEC 00000000 */   nop
/* B5BF0 800B4FF0 8FA90028 */  lw         $t1, 0x28($sp)
/* B5BF4 800B4FF4 252AFFFD */  addiu      $t2, $t1, -3
/* B5BF8 800B4FF8 10000003 */  b          .L800B5008
/* B5BFC 800B4FFC AFAA0028 */   sw        $t2, 0x28($sp)
.L800B5000:
/* B5C00 800B5000 1000001C */  b          .L800B5074
/* B5C04 800B5004 00001025 */   or        $v0, $zero, $zero
.L800B5008:
/* B5C08 800B5008 0C02CA0F */  jal        func_800B283C
/* B5C0C 800B500C 8FA40024 */   lw        $a0, 0x24($sp)
/* B5C10 800B5010 AFA20018 */  sw         $v0, 0x18($sp)
/* B5C14 800B5014 8FAB0018 */  lw         $t3, 0x18($sp)
/* B5C18 800B5018 15600003 */  bnez       $t3, .L800B5028
/* B5C1C 800B501C 00000000 */   nop
/* B5C20 800B5020 10000014 */  b          .L800B5074
/* B5C24 800B5024 00001025 */   or        $v0, $zero, $zero
.L800B5028:
/* B5C28 800B5028 8FAC0018 */  lw         $t4, 0x18($sp)
/* B5C2C 800B502C 258D0020 */  addiu      $t5, $t4, 0x20
/* B5C30 800B5030 AFAD001C */  sw         $t5, 0x1c($sp)
/* B5C34 800B5034 8FAF0028 */  lw         $t7, 0x28($sp)
/* B5C38 800B5038 8FAE001C */  lw         $t6, 0x1c($sp)
/* B5C3C 800B503C 000FC080 */  sll        $t8, $t7, 2
/* B5C40 800B5040 01D8C821 */  addu       $t9, $t6, $t8
/* B5C44 800B5044 AFB9001C */  sw         $t9, 0x1c($sp)
/* B5C48 800B5048 8FA8001C */  lw         $t0, 0x1c($sp)
/* B5C4C 800B504C 10000009 */  b          .L800B5074
/* B5C50 800B5050 8D020000 */   lw        $v0, ($t0)
/* B5C54 800B5054 10000005 */  b          .L800B506C
/* B5C58 800B5058 00000000 */   nop
.L800B505C:
/* B5C5C 800B505C 0C02D29E */  jal        func_800B4A78
/* B5C60 800B5060 8FA40028 */   lw        $a0, 0x28($sp)
/* B5C64 800B5064 10000003 */  b          .L800B5074
/* B5C68 800B5068 00000000 */   nop
.L800B506C:
/* B5C6C 800B506C 10000001 */  b          .L800B5074
/* B5C70 800B5070 00000000 */   nop
.L800B5074:
/* B5C74 800B5074 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5C78 800B5078 27BD0020 */  addiu      $sp, $sp, 0x20
/* B5C7C 800B507C 03E00008 */  jr         $ra
/* B5C80 800B5080 00000000 */   nop
/* B5C84 800B5084 00000000 */  nop
/* B5C88 800B5088 00000000 */  nop
/* B5C8C 800B508C 00000000 */  nop
