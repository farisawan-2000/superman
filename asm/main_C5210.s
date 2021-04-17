.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C4610
/* C5210 800C4610 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* C5214 800C4614 AFA40050 */  sw         $a0, 0x50($sp)
/* C5218 800C4618 8FAF0050 */  lw         $t7, 0x50($sp)
/* C521C 800C461C 3C0E8014 */  lui        $t6, %hi(D_80145890)
/* C5220 800C4620 25CE5890 */  addiu      $t6, $t6, %lo(D_80145890)
/* C5224 800C4624 AFBF0014 */  sw         $ra, 0x14($sp)
/* C5228 800C4628 AFAE0044 */  sw         $t6, 0x44($sp)
/* C522C 800C462C 8DF80008 */  lw         $t8, 8($t7)
/* C5230 800C4630 3C08800E */  lui        $t0, %hi(D_800DA0D0)
/* C5234 800C4634 0018C880 */  sll        $t9, $t8, 2
/* C5238 800C4638 01194021 */  addu       $t0, $t0, $t9
/* C523C 800C463C 8D08A0D0 */  lw         $t0, %lo(D_800DA0D0)($t0)
/* C5240 800C4640 15000003 */  bnez       $t0, .L800C4650
/* C5244 800C4644 00000000 */   nop
/* C5248 800C4648 10000055 */  b          .L800C47A0
/* C524C 800C464C 24020005 */   addiu     $v0, $zero, 5
.L800C4650:
/* C5250 800C4650 0C02FF20 */  jal        func_800BFC80
/* C5254 800C4654 00000000 */   nop
/* C5258 800C4658 8FAA0050 */  lw         $t2, 0x50($sp)
/* C525C 800C465C 24090003 */  addiu      $t1, $zero, 3
/* C5260 800C4660 3C018014 */  lui        $at, %hi(D_80145420)
/* C5264 800C4664 A0295420 */  sb         $t1, %lo(D_80145420)($at)
/* C5268 800C4668 8D4B0008 */  lw         $t3, 8($t2)
/* C526C 800C466C 3C0D8014 */  lui        $t5, %hi(D_80145650)
/* C5270 800C4670 25AD5650 */  addiu      $t5, $t5, %lo(D_80145650)
/* C5274 800C4674 000B6180 */  sll        $t4, $t3, 6
/* C5278 800C4678 018D2821 */  addu       $a1, $t4, $t5
/* C527C 800C467C 0C030F00 */  jal        func_800C3C00
/* C5280 800C4680 24040001 */   addiu     $a0, $zero, 1
/* C5284 800C4684 8FAE0050 */  lw         $t6, 0x50($sp)
/* C5288 800C4688 00002825 */  or         $a1, $zero, $zero
/* C528C 800C468C 24060001 */  addiu      $a2, $zero, 1
/* C5290 800C4690 0C02F85C */  jal        func_800BE170
/* C5294 800C4694 8DC40004 */   lw        $a0, 4($t6)
/* C5298 800C4698 3C058014 */  lui        $a1, %hi(D_80145890)
/* C529C 800C469C 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* C52A0 800C46A0 0C030F00 */  jal        func_800C3C00
/* C52A4 800C46A4 00002025 */   or        $a0, $zero, $zero
/* C52A8 800C46A8 8FAF0050 */  lw         $t7, 0x50($sp)
/* C52AC 800C46AC AFA20048 */  sw         $v0, 0x48($sp)
/* C52B0 800C46B0 00002825 */  or         $a1, $zero, $zero
/* C52B4 800C46B4 24060001 */  addiu      $a2, $zero, 1
/* C52B8 800C46B8 0C02F85C */  jal        func_800BE170
/* C52BC 800C46BC 8DE40004 */   lw        $a0, 4($t7)
/* C52C0 800C46C0 8FB90050 */  lw         $t9, 0x50($sp)
/* C52C4 800C46C4 3C188014 */  lui        $t8, %hi(D_80145890)
/* C52C8 800C46C8 27185890 */  addiu      $t8, $t8, %lo(D_80145890)
/* C52CC 800C46CC AFB80044 */  sw         $t8, 0x44($sp)
/* C52D0 800C46D0 8F280008 */  lw         $t0, 8($t9)
/* C52D4 800C46D4 11000010 */  beqz       $t0, .L800C4718
/* C52D8 800C46D8 00000000 */   nop
/* C52DC 800C46DC AFA0004C */  sw         $zero, 0x4c($sp)
/* C52E0 800C46E0 8F290008 */  lw         $t1, 8($t9)
/* C52E4 800C46E4 1920000C */  blez       $t1, .L800C4718
/* C52E8 800C46E8 00000000 */   nop
.L800C46EC:
/* C52EC 800C46EC 8FAC004C */  lw         $t4, 0x4c($sp)
/* C52F0 800C46F0 8FAA0044 */  lw         $t2, 0x44($sp)
/* C52F4 800C46F4 8FAE0050 */  lw         $t6, 0x50($sp)
/* C52F8 800C46F8 258D0001 */  addiu      $t5, $t4, 1
/* C52FC 800C46FC 254B0001 */  addiu      $t3, $t2, 1
/* C5300 800C4700 AFAD004C */  sw         $t5, 0x4c($sp)
/* C5304 800C4704 AFAB0044 */  sw         $t3, 0x44($sp)
/* C5308 800C4708 8DCF0008 */  lw         $t7, 8($t6)
/* C530C 800C470C 01AF082A */  slt        $at, $t5, $t7
/* C5310 800C4710 1420FFF6 */  bnez       $at, .L800C46EC
/* C5314 800C4714 00000000 */   nop
.L800C4718:
/* C5318 800C4718 8FA80044 */  lw         $t0, 0x44($sp)
/* C531C 800C471C 27B8001C */  addiu      $t8, $sp, 0x1c
/* C5320 800C4720 25090024 */  addiu      $t1, $t0, 0x24
.L800C4724:
/* C5324 800C4724 89010000 */  lwl        $at, ($t0)
/* C5328 800C4728 99010003 */  lwr        $at, 3($t0)
/* C532C 800C472C 2508000C */  addiu      $t0, $t0, 0xc
/* C5330 800C4730 2718000C */  addiu      $t8, $t8, 0xc
/* C5334 800C4734 AF01FFF4 */  sw         $at, -0xc($t8)
/* C5338 800C4738 8901FFF8 */  lwl        $at, -8($t0)
/* C533C 800C473C 9901FFFB */  lwr        $at, -5($t0)
/* C5340 800C4740 AF01FFF8 */  sw         $at, -8($t8)
/* C5344 800C4744 8901FFFC */  lwl        $at, -4($t0)
/* C5348 800C4748 9901FFFF */  lwr        $at, -1($t0)
/* C534C 800C474C 1509FFF5 */  bne        $t0, $t1, .L800C4724
/* C5350 800C4750 AF01FFFC */   sw        $at, -4($t8)
/* C5354 800C4754 89010000 */  lwl        $at, ($t0)
/* C5358 800C4758 99010003 */  lwr        $at, 3($t0)
/* C535C 800C475C AF010000 */  sw         $at, ($t8)
/* C5360 800C4760 93AA001E */  lbu        $t2, 0x1e($sp)
/* C5364 800C4764 314B00C0 */  andi       $t3, $t2, 0xc0
/* C5368 800C4768 000B6103 */  sra        $t4, $t3, 4
/* C536C 800C476C 15800009 */  bnez       $t4, .L800C4794
/* C5370 800C4770 AFAC0048 */   sw        $t4, 0x48($sp)
/* C5374 800C4774 3C048014 */  lui        $a0, %hi(D_80145850)
/* C5378 800C4778 0C033AF4 */  jal        func_800CEBD0
/* C537C 800C477C 24845850 */   addiu     $a0, $a0, %lo(D_80145850)
/* C5380 800C4780 93AE0042 */  lbu        $t6, 0x42($sp)
/* C5384 800C4784 104E0003 */  beq        $v0, $t6, .L800C4794
/* C5388 800C4788 00000000 */   nop
/* C538C 800C478C 240D0004 */  addiu      $t5, $zero, 4
/* C5390 800C4790 AFAD0048 */  sw         $t5, 0x48($sp)
.L800C4794:
/* C5394 800C4794 0C02FF31 */  jal        func_800BFCC4
/* C5398 800C4798 00000000 */   nop
/* C539C 800C479C 8FA20048 */  lw         $v0, 0x48($sp)
.L800C47A0:
/* C53A0 800C47A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C53A4 800C47A4 27BD0050 */  addiu      $sp, $sp, 0x50
/* C53A8 800C47A8 03E00008 */  jr         $ra
/* C53AC 800C47AC 00000000 */   nop

glabel func_800C47B0
/* C53B0 800C47B0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* C53B4 800C47B4 AFA40050 */  sw         $a0, 0x50($sp)
/* C53B8 800C47B8 8FAF0050 */  lw         $t7, 0x50($sp)
/* C53BC 800C47BC 3C0E8014 */  lui        $t6, %hi(D_80145890)
/* C53C0 800C47C0 25CE5890 */  addiu      $t6, $t6, %lo(D_80145890)
/* C53C4 800C47C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C53C8 800C47C8 AFAE0044 */  sw         $t6, 0x44($sp)
/* C53CC 800C47CC 8DF80008 */  lw         $t8, 8($t7)
/* C53D0 800C47D0 3C08800E */  lui        $t0, %hi(D_800DA0D0)
/* C53D4 800C47D4 0018C880 */  sll        $t9, $t8, 2
/* C53D8 800C47D8 01194021 */  addu       $t0, $t0, $t9
/* C53DC 800C47DC 8D08A0D0 */  lw         $t0, %lo(D_800DA0D0)($t0)
/* C53E0 800C47E0 15000003 */  bnez       $t0, .L800C47F0
/* C53E4 800C47E4 00000000 */   nop
/* C53E8 800C47E8 10000055 */  b          .L800C4940
/* C53EC 800C47EC 24020005 */   addiu     $v0, $zero, 5
.L800C47F0:
/* C53F0 800C47F0 0C02FF20 */  jal        func_800BFC80
/* C53F4 800C47F4 00000000 */   nop
/* C53F8 800C47F8 8FAA0050 */  lw         $t2, 0x50($sp)
/* C53FC 800C47FC 24090003 */  addiu      $t1, $zero, 3
/* C5400 800C4800 3C018014 */  lui        $at, %hi(D_80145420)
/* C5404 800C4804 A0295420 */  sb         $t1, %lo(D_80145420)($at)
/* C5408 800C4808 8D4B0008 */  lw         $t3, 8($t2)
/* C540C 800C480C 3C0D8014 */  lui        $t5, %hi(D_80145750)
/* C5410 800C4810 25AD5750 */  addiu      $t5, $t5, %lo(D_80145750)
/* C5414 800C4814 000B6180 */  sll        $t4, $t3, 6
/* C5418 800C4818 018D2821 */  addu       $a1, $t4, $t5
/* C541C 800C481C 0C030F00 */  jal        func_800C3C00
/* C5420 800C4820 24040001 */   addiu     $a0, $zero, 1
/* C5424 800C4824 8FAE0050 */  lw         $t6, 0x50($sp)
/* C5428 800C4828 00002825 */  or         $a1, $zero, $zero
/* C542C 800C482C 24060001 */  addiu      $a2, $zero, 1
/* C5430 800C4830 0C02F85C */  jal        func_800BE170
/* C5434 800C4834 8DC40004 */   lw        $a0, 4($t6)
/* C5438 800C4838 3C058014 */  lui        $a1, %hi(D_80145890)
/* C543C 800C483C 24A55890 */  addiu      $a1, $a1, %lo(D_80145890)
/* C5440 800C4840 0C030F00 */  jal        func_800C3C00
/* C5444 800C4844 00002025 */   or        $a0, $zero, $zero
/* C5448 800C4848 8FAF0050 */  lw         $t7, 0x50($sp)
/* C544C 800C484C AFA20048 */  sw         $v0, 0x48($sp)
/* C5450 800C4850 00002825 */  or         $a1, $zero, $zero
/* C5454 800C4854 24060001 */  addiu      $a2, $zero, 1
/* C5458 800C4858 0C02F85C */  jal        func_800BE170
/* C545C 800C485C 8DE40004 */   lw        $a0, 4($t7)
/* C5460 800C4860 8FB90050 */  lw         $t9, 0x50($sp)
/* C5464 800C4864 3C188014 */  lui        $t8, %hi(D_80145890)
/* C5468 800C4868 27185890 */  addiu      $t8, $t8, %lo(D_80145890)
/* C546C 800C486C AFB80044 */  sw         $t8, 0x44($sp)
/* C5470 800C4870 8F280008 */  lw         $t0, 8($t9)
/* C5474 800C4874 11000010 */  beqz       $t0, .L800C48B8
/* C5478 800C4878 00000000 */   nop
/* C547C 800C487C AFA0004C */  sw         $zero, 0x4c($sp)
/* C5480 800C4880 8F290008 */  lw         $t1, 8($t9)
/* C5484 800C4884 1920000C */  blez       $t1, .L800C48B8
/* C5488 800C4888 00000000 */   nop
.L800C488C:
/* C548C 800C488C 8FAC004C */  lw         $t4, 0x4c($sp)
/* C5490 800C4890 8FAA0044 */  lw         $t2, 0x44($sp)
/* C5494 800C4894 8FAE0050 */  lw         $t6, 0x50($sp)
/* C5498 800C4898 258D0001 */  addiu      $t5, $t4, 1
/* C549C 800C489C 254B0001 */  addiu      $t3, $t2, 1
/* C54A0 800C48A0 AFAD004C */  sw         $t5, 0x4c($sp)
/* C54A4 800C48A4 AFAB0044 */  sw         $t3, 0x44($sp)
/* C54A8 800C48A8 8DCF0008 */  lw         $t7, 8($t6)
/* C54AC 800C48AC 01AF082A */  slt        $at, $t5, $t7
/* C54B0 800C48B0 1420FFF6 */  bnez       $at, .L800C488C
/* C54B4 800C48B4 00000000 */   nop
.L800C48B8:
/* C54B8 800C48B8 8FA80044 */  lw         $t0, 0x44($sp)
/* C54BC 800C48BC 27B8001C */  addiu      $t8, $sp, 0x1c
/* C54C0 800C48C0 25090024 */  addiu      $t1, $t0, 0x24
.L800C48C4:
/* C54C4 800C48C4 89010000 */  lwl        $at, ($t0)
/* C54C8 800C48C8 99010003 */  lwr        $at, 3($t0)
/* C54CC 800C48CC 2508000C */  addiu      $t0, $t0, 0xc
/* C54D0 800C48D0 2718000C */  addiu      $t8, $t8, 0xc
/* C54D4 800C48D4 AF01FFF4 */  sw         $at, -0xc($t8)
/* C54D8 800C48D8 8901FFF8 */  lwl        $at, -8($t0)
/* C54DC 800C48DC 9901FFFB */  lwr        $at, -5($t0)
/* C54E0 800C48E0 AF01FFF8 */  sw         $at, -8($t8)
/* C54E4 800C48E4 8901FFFC */  lwl        $at, -4($t0)
/* C54E8 800C48E8 9901FFFF */  lwr        $at, -1($t0)
/* C54EC 800C48EC 1509FFF5 */  bne        $t0, $t1, .L800C48C4
/* C54F0 800C48F0 AF01FFFC */   sw        $at, -4($t8)
/* C54F4 800C48F4 89010000 */  lwl        $at, ($t0)
/* C54F8 800C48F8 99010003 */  lwr        $at, 3($t0)
/* C54FC 800C48FC AF010000 */  sw         $at, ($t8)
/* C5500 800C4900 93AA001E */  lbu        $t2, 0x1e($sp)
/* C5504 800C4904 314B00C0 */  andi       $t3, $t2, 0xc0
/* C5508 800C4908 000B6103 */  sra        $t4, $t3, 4
/* C550C 800C490C 15800009 */  bnez       $t4, .L800C4934
/* C5510 800C4910 AFAC0048 */   sw        $t4, 0x48($sp)
/* C5514 800C4914 3C048014 */  lui        $a0, %hi(D_80145870)
/* C5518 800C4918 0C033AF4 */  jal        func_800CEBD0
/* C551C 800C491C 24845870 */   addiu     $a0, $a0, %lo(D_80145870)
/* C5520 800C4920 93AE0042 */  lbu        $t6, 0x42($sp)
/* C5524 800C4924 104E0003 */  beq        $v0, $t6, .L800C4934
/* C5528 800C4928 00000000 */   nop
/* C552C 800C492C 240D0004 */  addiu      $t5, $zero, 4
/* C5530 800C4930 AFAD0048 */  sw         $t5, 0x48($sp)
.L800C4934:
/* C5534 800C4934 0C02FF31 */  jal        func_800BFCC4
/* C5538 800C4938 00000000 */   nop
/* C553C 800C493C 8FA20048 */  lw         $v0, 0x48($sp)
.L800C4940:
/* C5540 800C4940 8FBF0014 */  lw         $ra, 0x14($sp)
/* C5544 800C4944 27BD0050 */  addiu      $sp, $sp, 0x50
/* C5548 800C4948 03E00008 */  jr         $ra
/* C554C 800C494C 00000000 */   nop

glabel func_800C4950
/* C5550 800C4950 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C5554 800C4954 AFA70054 */  sw         $a3, 0x54($sp)
/* C5558 800C4958 8FAE0054 */  lw         $t6, 0x54($sp)
/* C555C 800C495C AFBF0014 */  sw         $ra, 0x14($sp)
/* C5560 800C4960 AFA40048 */  sw         $a0, 0x48($sp)
/* C5564 800C4964 AFA5004C */  sw         $a1, 0x4c($sp)
/* C5568 800C4968 AFA60050 */  sw         $a2, 0x50($sp)
/* C556C 800C496C AFA00018 */  sw         $zero, 0x18($sp)
/* C5570 800C4970 AFAE0044 */  sw         $t6, 0x44($sp)
.L800C4974:
/* C5574 800C4974 8FB80018 */  lw         $t8, 0x18($sp)
/* C5578 800C4978 8FAF0054 */  lw         $t7, 0x54($sp)
/* C557C 800C497C 0018C880 */  sll        $t9, $t8, 2
/* C5580 800C4980 01F94021 */  addu       $t0, $t7, $t9
/* C5584 800C4984 AD000000 */  sw         $zero, ($t0)
/* C5588 800C4988 8FA90018 */  lw         $t1, 0x18($sp)
/* C558C 800C498C 252A0001 */  addiu      $t2, $t1, 1
/* C5590 800C4990 2941000F */  slti       $at, $t2, 0xf
/* C5594 800C4994 1420FFF7 */  bnez       $at, .L800C4974
/* C5598 800C4998 AFAA0018 */   sw        $t2, 0x18($sp)
/* C559C 800C499C 8FAC0054 */  lw         $t4, 0x54($sp)
/* C55A0 800C49A0 240B0001 */  addiu      $t3, $zero, 1
/* C55A4 800C49A4 240D00FF */  addiu      $t5, $zero, 0xff
/* C55A8 800C49A8 AD8B003C */  sw         $t3, 0x3c($t4)
/* C55AC 800C49AC 240E0023 */  addiu      $t6, $zero, 0x23
/* C55B0 800C49B0 24180001 */  addiu      $t8, $zero, 1
/* C55B4 800C49B4 240F0003 */  addiu      $t7, $zero, 3
/* C55B8 800C49B8 A3AD001C */  sb         $t5, 0x1c($sp)
/* C55BC 800C49BC A3AE001D */  sb         $t6, 0x1d($sp)
/* C55C0 800C49C0 A3B8001E */  sb         $t8, 0x1e($sp)
/* C55C4 800C49C4 A3AF001F */  sb         $t7, 0x1f($sp)
/* C55C8 800C49C8 0C033AC8 */  jal        func_800CEB20
/* C55CC 800C49CC 97A4004E */   lhu       $a0, 0x4e($sp)
/* C55D0 800C49D0 97B9004E */  lhu        $t9, 0x4e($sp)
/* C55D4 800C49D4 240A00FF */  addiu      $t2, $zero, 0xff
/* C55D8 800C49D8 A3AA0042 */  sb         $t2, 0x42($sp)
/* C55DC 800C49DC 00194140 */  sll        $t0, $t9, 5
/* C55E0 800C49E0 00484825 */  or         $t1, $v0, $t0
/* C55E4 800C49E4 A7A90020 */  sh         $t1, 0x20($sp)
/* C55E8 800C49E8 AFA00018 */  sw         $zero, 0x18($sp)
.L800C49EC:
/* C55EC 800C49EC 8FAB0050 */  lw         $t3, 0x50($sp)
/* C55F0 800C49F0 8FAD0018 */  lw         $t5, 0x18($sp)
/* C55F4 800C49F4 916C0000 */  lbu        $t4, ($t3)
/* C55F8 800C49F8 03AD7021 */  addu       $t6, $sp, $t5
/* C55FC 800C49FC A1CC0022 */  sb         $t4, 0x22($t6)
/* C5600 800C4A00 8FB90018 */  lw         $t9, 0x18($sp)
/* C5604 800C4A04 8FB80050 */  lw         $t8, 0x50($sp)
/* C5608 800C4A08 27280001 */  addiu      $t0, $t9, 1
/* C560C 800C4A0C 29010020 */  slti       $at, $t0, 0x20
/* C5610 800C4A10 270F0001 */  addiu      $t7, $t8, 1
/* C5614 800C4A14 AFA80018 */  sw         $t0, 0x18($sp)
/* C5618 800C4A18 1420FFF4 */  bnez       $at, .L800C49EC
/* C561C 800C4A1C AFAF0050 */   sw        $t7, 0x50($sp)
/* C5620 800C4A20 8FA90048 */  lw         $t1, 0x48($sp)
/* C5624 800C4A24 1120000E */  beqz       $t1, .L800C4A60
/* C5628 800C4A28 00000000 */   nop
/* C562C 800C4A2C 1920000C */  blez       $t1, .L800C4A60
/* C5630 800C4A30 AFA00018 */   sw        $zero, 0x18($sp)
.L800C4A34:
/* C5634 800C4A34 8FAA0044 */  lw         $t2, 0x44($sp)
/* C5638 800C4A38 A1400000 */  sb         $zero, ($t2)
/* C563C 800C4A3C 8FAD0018 */  lw         $t5, 0x18($sp)
/* C5640 800C4A40 8FB80048 */  lw         $t8, 0x48($sp)
/* C5644 800C4A44 8FAB0044 */  lw         $t3, 0x44($sp)
/* C5648 800C4A48 25AE0001 */  addiu      $t6, $t5, 1
/* C564C 800C4A4C 01D8082A */  slt        $at, $t6, $t8
/* C5650 800C4A50 256C0001 */  addiu      $t4, $t3, 1
/* C5654 800C4A54 AFAE0018 */  sw         $t6, 0x18($sp)
/* C5658 800C4A58 1420FFF6 */  bnez       $at, .L800C4A34
/* C565C 800C4A5C AFAC0044 */   sw        $t4, 0x44($sp)
.L800C4A60:
/* C5660 800C4A60 27B9001C */  addiu      $t9, $sp, 0x1c
/* C5664 800C4A64 27290024 */  addiu      $t1, $t9, 0x24
/* C5668 800C4A68 8FAF0044 */  lw         $t7, 0x44($sp)
.L800C4A6C:
/* C566C 800C4A6C 8F210000 */  lw         $at, ($t9)
/* C5670 800C4A70 2739000C */  addiu      $t9, $t9, 0xc
/* C5674 800C4A74 25EF000C */  addiu      $t7, $t7, 0xc
/* C5678 800C4A78 A9E1FFF4 */  swl        $at, -0xc($t7)
/* C567C 800C4A7C B9E1FFF7 */  swr        $at, -9($t7)
/* C5680 800C4A80 8F21FFF8 */  lw         $at, -8($t9)
/* C5684 800C4A84 A9E1FFF8 */  swl        $at, -8($t7)
/* C5688 800C4A88 B9E1FFFB */  swr        $at, -5($t7)
/* C568C 800C4A8C 8F21FFFC */  lw         $at, -4($t9)
/* C5690 800C4A90 A9E1FFFC */  swl        $at, -4($t7)
/* C5694 800C4A94 1729FFF5 */  bne        $t9, $t1, .L800C4A6C
/* C5698 800C4A98 B9E1FFFF */   swr       $at, -1($t7)
/* C569C 800C4A9C 8F210000 */  lw         $at, ($t9)
/* C56A0 800C4AA0 240C00FE */  addiu      $t4, $zero, 0xfe
/* C56A4 800C4AA4 A9E10000 */  swl        $at, ($t7)
/* C56A8 800C4AA8 B9E10003 */  swr        $at, 3($t7)
/* C56AC 800C4AAC 8FAA0044 */  lw         $t2, 0x44($sp)
/* C56B0 800C4AB0 254B0028 */  addiu      $t3, $t2, 0x28
/* C56B4 800C4AB4 AFAB0044 */  sw         $t3, 0x44($sp)
/* C56B8 800C4AB8 A16C0000 */  sb         $t4, ($t3)
/* C56BC 800C4ABC 8FBF0014 */  lw         $ra, 0x14($sp)
/* C56C0 800C4AC0 27BD0048 */  addiu      $sp, $sp, 0x48
/* C56C4 800C4AC4 03E00008 */  jr         $ra
/* C56C8 800C4AC8 00000000 */   nop

glabel func_800C4ACC
/* C56CC 800C4ACC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C56D0 800C4AD0 AFA40048 */  sw         $a0, 0x48($sp)
/* C56D4 800C4AD4 AFA5004C */  sw         $a1, 0x4c($sp)
/* C56D8 800C4AD8 8FAF004C */  lw         $t7, 0x4c($sp)
/* C56DC 800C4ADC 8FAE0048 */  lw         $t6, 0x48($sp)
/* C56E0 800C4AE0 AFBF001C */  sw         $ra, 0x1c($sp)
/* C56E4 800C4AE4 AFA60050 */  sw         $a2, 0x50($sp)
/* C56E8 800C4AE8 ADEE0004 */  sw         $t6, 4($t7)
/* C56EC 800C4AEC 8FB9004C */  lw         $t9, 0x4c($sp)
/* C56F0 800C4AF0 8FB80050 */  lw         $t8, 0x50($sp)
/* C56F4 800C4AF4 24090080 */  addiu      $t1, $zero, 0x80
/* C56F8 800C4AF8 AF380008 */  sw         $t8, 8($t9)
/* C56FC 800C4AFC 8FA8004C */  lw         $t0, 0x4c($sp)
/* C5700 800C4B00 AD000000 */  sw         $zero, ($t0)
/* C5704 800C4B04 8FAA004C */  lw         $t2, 0x4c($sp)
/* C5708 800C4B08 A1490065 */  sb         $t1, 0x65($t2)
/* C570C 800C4B0C AFA00044 */  sw         $zero, 0x44($sp)
.L800C4B10:
/* C5710 800C4B10 8FAC0044 */  lw         $t4, 0x44($sp)
/* C5714 800C4B14 240B00FE */  addiu      $t3, $zero, 0xfe
/* C5718 800C4B18 03AC6821 */  addu       $t5, $sp, $t4
/* C571C 800C4B1C A1AB0020 */  sb         $t3, 0x20($t5)
/* C5720 800C4B20 8FAE0044 */  lw         $t6, 0x44($sp)
/* C5724 800C4B24 25CF0001 */  addiu      $t7, $t6, 1
/* C5728 800C4B28 29E10020 */  slti       $at, $t7, 0x20
/* C572C 800C4B2C 1420FFF8 */  bnez       $at, .L800C4B10
/* C5730 800C4B30 AFAF0044 */   sw        $t7, 0x44($sp)
/* C5734 800C4B34 8FA40048 */  lw         $a0, 0x48($sp)
/* C5738 800C4B38 8FA50050 */  lw         $a1, 0x50($sp)
/* C573C 800C4B3C 24060400 */  addiu      $a2, $zero, 0x400
/* C5740 800C4B40 27A70020 */  addiu      $a3, $sp, 0x20
/* C5744 800C4B44 0C034668 */  jal        func_800D19A0
/* C5748 800C4B48 AFA00010 */   sw        $zero, 0x10($sp)
/* C574C 800C4B4C AFA20040 */  sw         $v0, 0x40($sp)
/* C5750 800C4B50 8FB80040 */  lw         $t8, 0x40($sp)
/* C5754 800C4B54 24010002 */  addiu      $at, $zero, 2
/* C5758 800C4B58 17010008 */  bne        $t8, $at, .L800C4B7C
/* C575C 800C4B5C 00000000 */   nop
/* C5760 800C4B60 8FA40048 */  lw         $a0, 0x48($sp)
/* C5764 800C4B64 8FA50050 */  lw         $a1, 0x50($sp)
/* C5768 800C4B68 24060400 */  addiu      $a2, $zero, 0x400
/* C576C 800C4B6C 27A70020 */  addiu      $a3, $sp, 0x20
/* C5770 800C4B70 0C034668 */  jal        func_800D19A0
/* C5774 800C4B74 AFA00010 */   sw        $zero, 0x10($sp)
/* C5778 800C4B78 AFA20040 */  sw         $v0, 0x40($sp)
.L800C4B7C:
/* C577C 800C4B7C 8FB90040 */  lw         $t9, 0x40($sp)
/* C5780 800C4B80 13200003 */  beqz       $t9, .L800C4B90
/* C5784 800C4B84 00000000 */   nop
/* C5788 800C4B88 10000083 */  b          .L800C4D98
/* C578C 800C4B8C 03201025 */   or        $v0, $t9, $zero
.L800C4B90:
/* C5790 800C4B90 8FA40048 */  lw         $a0, 0x48($sp)
/* C5794 800C4B94 8FA50050 */  lw         $a1, 0x50($sp)
/* C5798 800C4B98 24060400 */  addiu      $a2, $zero, 0x400
/* C579C 800C4B9C 0C034C10 */  jal        func_800D3040
/* C57A0 800C4BA0 27A70020 */   addiu     $a3, $sp, 0x20
/* C57A4 800C4BA4 AFA20040 */  sw         $v0, 0x40($sp)
/* C57A8 800C4BA8 8FA80040 */  lw         $t0, 0x40($sp)
/* C57AC 800C4BAC 24010002 */  addiu      $at, $zero, 2
/* C57B0 800C4BB0 15010003 */  bne        $t0, $at, .L800C4BC0
/* C57B4 800C4BB4 00000000 */   nop
/* C57B8 800C4BB8 24090004 */  addiu      $t1, $zero, 4
/* C57BC 800C4BBC AFA90040 */  sw         $t1, 0x40($sp)
.L800C4BC0:
/* C57C0 800C4BC0 8FAA0040 */  lw         $t2, 0x40($sp)
/* C57C4 800C4BC4 11400003 */  beqz       $t2, .L800C4BD4
/* C57C8 800C4BC8 00000000 */   nop
/* C57CC 800C4BCC 10000072 */  b          .L800C4D98
/* C57D0 800C4BD0 01401025 */   or        $v0, $t2, $zero
.L800C4BD4:
/* C57D4 800C4BD4 27AB0020 */  addiu      $t3, $sp, 0x20
/* C57D8 800C4BD8 916C001F */  lbu        $t4, 0x1f($t3)
/* C57DC 800C4BDC 240100FE */  addiu      $at, $zero, 0xfe
/* C57E0 800C4BE0 15810003 */  bne        $t4, $at, .L800C4BF0
/* C57E4 800C4BE4 00000000 */   nop
/* C57E8 800C4BE8 1000006B */  b          .L800C4D98
/* C57EC 800C4BEC 2402000B */   addiu     $v0, $zero, 0xb
.L800C4BF0:
/* C57F0 800C4BF0 AFA00044 */  sw         $zero, 0x44($sp)
.L800C4BF4:
/* C57F4 800C4BF4 8FAE0044 */  lw         $t6, 0x44($sp)
/* C57F8 800C4BF8 240D0080 */  addiu      $t5, $zero, 0x80
/* C57FC 800C4BFC 03AE7821 */  addu       $t7, $sp, $t6
/* C5800 800C4C00 A1ED0020 */  sb         $t5, 0x20($t7)
/* C5804 800C4C04 8FB80044 */  lw         $t8, 0x44($sp)
/* C5808 800C4C08 27190001 */  addiu      $t9, $t8, 1
/* C580C 800C4C0C 2B210020 */  slti       $at, $t9, 0x20
/* C5810 800C4C10 1420FFF8 */  bnez       $at, .L800C4BF4
/* C5814 800C4C14 AFB90044 */   sw        $t9, 0x44($sp)
/* C5818 800C4C18 8FA40048 */  lw         $a0, 0x48($sp)
/* C581C 800C4C1C 8FA50050 */  lw         $a1, 0x50($sp)
/* C5820 800C4C20 24060400 */  addiu      $a2, $zero, 0x400
/* C5824 800C4C24 27A70020 */  addiu      $a3, $sp, 0x20
/* C5828 800C4C28 0C034668 */  jal        func_800D19A0
/* C582C 800C4C2C AFA00010 */   sw        $zero, 0x10($sp)
/* C5830 800C4C30 AFA20040 */  sw         $v0, 0x40($sp)
/* C5834 800C4C34 8FA80040 */  lw         $t0, 0x40($sp)
/* C5838 800C4C38 24010002 */  addiu      $at, $zero, 2
/* C583C 800C4C3C 15010008 */  bne        $t0, $at, .L800C4C60
/* C5840 800C4C40 00000000 */   nop
/* C5844 800C4C44 8FA40048 */  lw         $a0, 0x48($sp)
/* C5848 800C4C48 8FA50050 */  lw         $a1, 0x50($sp)
/* C584C 800C4C4C 24060400 */  addiu      $a2, $zero, 0x400
/* C5850 800C4C50 27A70020 */  addiu      $a3, $sp, 0x20
/* C5854 800C4C54 0C034668 */  jal        func_800D19A0
/* C5858 800C4C58 AFA00010 */   sw        $zero, 0x10($sp)
/* C585C 800C4C5C AFA20040 */  sw         $v0, 0x40($sp)
.L800C4C60:
/* C5860 800C4C60 8FA90040 */  lw         $t1, 0x40($sp)
/* C5864 800C4C64 11200003 */  beqz       $t1, .L800C4C74
/* C5868 800C4C68 00000000 */   nop
/* C586C 800C4C6C 1000004A */  b          .L800C4D98
/* C5870 800C4C70 01201025 */   or        $v0, $t1, $zero
.L800C4C74:
/* C5874 800C4C74 8FA40048 */  lw         $a0, 0x48($sp)
/* C5878 800C4C78 8FA50050 */  lw         $a1, 0x50($sp)
/* C587C 800C4C7C 24060400 */  addiu      $a2, $zero, 0x400
/* C5880 800C4C80 0C034C10 */  jal        func_800D3040
/* C5884 800C4C84 27A70020 */   addiu     $a3, $sp, 0x20
/* C5888 800C4C88 AFA20040 */  sw         $v0, 0x40($sp)
/* C588C 800C4C8C 8FAA0040 */  lw         $t2, 0x40($sp)
/* C5890 800C4C90 24010002 */  addiu      $at, $zero, 2
/* C5894 800C4C94 15410003 */  bne        $t2, $at, .L800C4CA4
/* C5898 800C4C98 00000000 */   nop
/* C589C 800C4C9C 240B0004 */  addiu      $t3, $zero, 4
/* C58A0 800C4CA0 AFAB0040 */  sw         $t3, 0x40($sp)
.L800C4CA4:
/* C58A4 800C4CA4 8FAC0040 */  lw         $t4, 0x40($sp)
/* C58A8 800C4CA8 11800003 */  beqz       $t4, .L800C4CB8
/* C58AC 800C4CAC 00000000 */   nop
/* C58B0 800C4CB0 10000039 */  b          .L800C4D98
/* C58B4 800C4CB4 01801025 */   or        $v0, $t4, $zero
.L800C4CB8:
/* C58B8 800C4CB8 27AD0020 */  addiu      $t5, $sp, 0x20
/* C58BC 800C4CBC 91AE001F */  lbu        $t6, 0x1f($t5)
/* C58C0 800C4CC0 24010080 */  addiu      $at, $zero, 0x80
/* C58C4 800C4CC4 11C10003 */  beq        $t6, $at, .L800C4CD4
/* C58C8 800C4CC8 00000000 */   nop
/* C58CC 800C4CCC 10000032 */  b          .L800C4D98
/* C58D0 800C4CD0 2402000B */   addiu     $v0, $zero, 0xb
.L800C4CD4:
/* C58D4 800C4CD4 8FAF0050 */  lw         $t7, 0x50($sp)
/* C58D8 800C4CD8 3C19800E */  lui        $t9, %hi(D_800DA0D0)
/* C58DC 800C4CDC 000FC080 */  sll        $t8, $t7, 2
/* C58E0 800C4CE0 0338C821 */  addu       $t9, $t9, $t8
/* C58E4 800C4CE4 8F39A0D0 */  lw         $t9, %lo(D_800DA0D0)($t9)
/* C58E8 800C4CE8 1720002A */  bnez       $t9, .L800C4D94
/* C58EC 800C4CEC 00000000 */   nop
/* C58F0 800C4CF0 AFA00044 */  sw         $zero, 0x44($sp)
.L800C4CF4:
/* C58F4 800C4CF4 8FA90044 */  lw         $t1, 0x44($sp)
/* C58F8 800C4CF8 3C018014 */  lui        $at, %hi(D_80145870)
/* C58FC 800C4CFC 8FAA0044 */  lw         $t2, 0x44($sp)
/* C5900 800C4D00 24080001 */  addiu      $t0, $zero, 1
/* C5904 800C4D04 00290821 */  addu       $at, $at, $t1
/* C5908 800C4D08 8FAB0044 */  lw         $t3, 0x44($sp)
/* C590C 800C4D0C A0285870 */  sb         $t0, %lo(D_80145870)($at)
/* C5910 800C4D10 3C018014 */  lui        $at, %hi(D_80145850)
/* C5914 800C4D14 002A0821 */  addu       $at, $at, $t2
/* C5918 800C4D18 A0205850 */  sb         $zero, %lo(D_80145850)($at)
/* C591C 800C4D1C 256C0001 */  addiu      $t4, $t3, 1
/* C5920 800C4D20 29810020 */  slti       $at, $t4, 0x20
/* C5924 800C4D24 1420FFF3 */  bnez       $at, .L800C4CF4
/* C5928 800C4D28 AFAC0044 */   sw        $t4, 0x44($sp)
/* C592C 800C4D2C 8FAD0050 */  lw         $t5, 0x50($sp)
/* C5930 800C4D30 3C0F8014 */  lui        $t7, %hi(D_80145750)
/* C5934 800C4D34 25EF5750 */  addiu      $t7, $t7, %lo(D_80145750)
/* C5938 800C4D38 3C068014 */  lui        $a2, %hi(D_80145870)
/* C593C 800C4D3C 000D7180 */  sll        $t6, $t5, 6
/* C5940 800C4D40 01CF3821 */  addu       $a3, $t6, $t7
/* C5944 800C4D44 24C65870 */  addiu      $a2, $a2, %lo(D_80145870)
/* C5948 800C4D48 24050600 */  addiu      $a1, $zero, 0x600
/* C594C 800C4D4C 0C031254 */  jal        func_800C4950
/* C5950 800C4D50 01A02025 */   or        $a0, $t5, $zero
/* C5954 800C4D54 8FB80050 */  lw         $t8, 0x50($sp)
/* C5958 800C4D58 3C088014 */  lui        $t0, %hi(D_80145650)
/* C595C 800C4D5C 25085650 */  addiu      $t0, $t0, %lo(D_80145650)
/* C5960 800C4D60 3C068014 */  lui        $a2, %hi(D_80145850)
/* C5964 800C4D64 0018C980 */  sll        $t9, $t8, 6
/* C5968 800C4D68 03283821 */  addu       $a3, $t9, $t0
/* C596C 800C4D6C 24C65850 */  addiu      $a2, $a2, %lo(D_80145850)
/* C5970 800C4D70 24050600 */  addiu      $a1, $zero, 0x600
/* C5974 800C4D74 0C031254 */  jal        func_800C4950
/* C5978 800C4D78 03002025 */   or        $a0, $t8, $zero
/* C597C 800C4D7C 8FAA0050 */  lw         $t2, 0x50($sp)
/* C5980 800C4D80 3C01800E */  lui        $at, %hi(D_800DA0D0)
/* C5984 800C4D84 24090001 */  addiu      $t1, $zero, 1
/* C5988 800C4D88 000A5880 */  sll        $t3, $t2, 2
/* C598C 800C4D8C 002B0821 */  addu       $at, $at, $t3
/* C5990 800C4D90 AC29A0D0 */  sw         $t1, %lo(D_800DA0D0)($at)
.L800C4D94:
/* C5994 800C4D94 00001025 */  or         $v0, $zero, $zero
.L800C4D98:
/* C5998 800C4D98 8FBF001C */  lw         $ra, 0x1c($sp)
/* C599C 800C4D9C 27BD0048 */  addiu      $sp, $sp, 0x48
/* C59A0 800C4DA0 03E00008 */  jr         $ra
/* C59A4 800C4DA4 00000000 */   nop
/* C59A8 800C4DA8 00000000 */  nop
/* C59AC 800C4DAC 00000000 */  nop
