.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CE380
/* CEF80 800CE380 3C018014 */  lui        $at, %hi(D_80146CB4)
/* CEF84 800CE384 240E0000 */  addiu      $t6, $zero, 0
/* CEF88 800CE388 240F0000 */  addiu      $t7, $zero, 0
/* CEF8C 800CE38C AC2F6CB4 */  sw         $t7, %lo(D_80146CB4)($at)
/* CEF90 800CE390 AC2E6CB0 */  sw         $t6, 0x6cb0($at)
/* CEF94 800CE394 3C018014 */  lui        $at, %hi(D_80146CB8)
/* CEF98 800CE398 3C18800E */  lui        $t8, %hi(D_800DB180)
/* CEF9C 800CE39C 8F18B180 */  lw         $t8, %lo(D_800DB180)($t8)
/* CEFA0 800CE3A0 AC206CB8 */  sw         $zero, %lo(D_80146CB8)($at)
/* CEFA4 800CE3A4 3C018014 */  lui        $at, %hi(D_80146CBC)
/* CEFA8 800CE3A8 AC206CBC */  sw         $zero, %lo(D_80146CBC)($at)
/* CEFAC 800CE3AC 3C19800E */  lui        $t9, %hi(D_800DB180)
/* CEFB0 800CE3B0 AF180004 */  sw         $t8, 4($t8)
/* CEFB4 800CE3B4 8F39B180 */  lw         $t9, %lo(D_800DB180)($t9)
/* CEFB8 800CE3B8 3C09800E */  lui        $t1, 0x800e
/* CEFBC 800CE3BC 240A0000 */  addiu      $t2, $zero, 0
/* CEFC0 800CE3C0 8F280004 */  lw         $t0, 4($t9)
/* CEFC4 800CE3C4 240B0000 */  addiu      $t3, $zero, 0
/* CEFC8 800CE3C8 3C0C800E */  lui        $t4, 0x800e
/* CEFCC 800CE3CC AF280000 */  sw         $t0, ($t9)
/* CEFD0 800CE3D0 8D29B180 */  lw         $t1, -0x4e80($t1)
/* CEFD4 800CE3D4 3C0D800E */  lui        $t5, 0x800e
/* CEFD8 800CE3D8 3C18800E */  lui        $t8, 0x800e
/* CEFDC 800CE3DC AD2A0010 */  sw         $t2, 0x10($t1)
/* CEFE0 800CE3E0 AD2B0014 */  sw         $t3, 0x14($t1)
/* CEFE4 800CE3E4 8D8CB180 */  lw         $t4, -0x4e80($t4)
/* CEFE8 800CE3E8 8D8E0010 */  lw         $t6, 0x10($t4)
/* CEFEC 800CE3EC 8D8F0014 */  lw         $t7, 0x14($t4)
/* CEFF0 800CE3F0 AD8E0008 */  sw         $t6, 8($t4)
/* CEFF4 800CE3F4 AD8F000C */  sw         $t7, 0xc($t4)
/* CEFF8 800CE3F8 8DADB180 */  lw         $t5, -0x4e80($t5)
/* CEFFC 800CE3FC ADA00018 */  sw         $zero, 0x18($t5)
/* CF000 800CE400 8F18B180 */  lw         $t8, -0x4e80($t8)
/* CF004 800CE404 03E00008 */  jr         $ra
/* CF008 800CE408 AF00001C */   sw        $zero, 0x1c($t8)

glabel func_800CE40C
/* CF00C 800CE40C 3C0E800E */  lui        $t6, %hi(D_800DB180)
/* CF010 800CE410 8DCEB180 */  lw         $t6, %lo(D_800DB180)($t6)
/* CF014 800CE414 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CF018 800CE418 AFBF0014 */  sw         $ra, 0x14($sp)
/* CF01C 800CE41C 8DCF0000 */  lw         $t7, ($t6)
/* CF020 800CE420 11EE0054 */  beq        $t7, $t6, .L800CE574
/* CF024 800CE424 00000000 */   nop
.L800CE428:
/* CF028 800CE428 3C18800E */  lui        $t8, %hi(D_800DB180)
/* CF02C 800CE42C 8F18B180 */  lw         $t8, %lo(D_800DB180)($t8)
/* CF030 800CE430 8F190000 */  lw         $t9, ($t8)
/* CF034 800CE434 17380006 */  bne        $t9, $t8, .L800CE450
/* CF038 800CE438 AFB90024 */   sw        $t9, 0x24($sp)
/* CF03C 800CE43C 0C033B4C */  jal        func_800CED30
/* CF040 800CE440 00002025 */   or        $a0, $zero, $zero
/* CF044 800CE444 3C018014 */  lui        $at, %hi(D_80146CC0)
/* CF048 800CE448 1000004A */  b          .L800CE574
/* CF04C 800CE44C AC206CC0 */   sw        $zero, %lo(D_80146CC0)($at)
.L800CE450:
/* CF050 800CE450 0C031E2C */  jal        func_800C78B0
/* CF054 800CE454 00000000 */   nop
/* CF058 800CE458 AFA20020 */  sw         $v0, 0x20($sp)
/* CF05C 800CE45C 3C098014 */  lui        $t1, %hi(D_80146CC0)
/* CF060 800CE460 8D296CC0 */  lw         $t1, %lo(D_80146CC0)($t1)
/* CF064 800CE464 8FA80020 */  lw         $t0, 0x20($sp)
/* CF068 800CE468 8FAF0024 */  lw         $t7, 0x24($sp)
/* CF06C 800CE46C 3C018014 */  lui        $at, %hi(D_80146CC0)
/* CF070 800CE470 01095023 */  subu       $t2, $t0, $t1
/* CF074 800CE474 AFAA001C */  sw         $t2, 0x1c($sp)
/* CF078 800CE478 AC286CC0 */  sw         $t0, %lo(D_80146CC0)($at)
/* CF07C 800CE47C 8DEE0010 */  lw         $t6, 0x10($t7)
/* CF080 800CE480 8FAB001C */  lw         $t3, 0x1c($sp)
/* CF084 800CE484 240C0000 */  addiu      $t4, $zero, 0
/* CF088 800CE488 01E0C825 */  or         $t9, $t7, $zero
/* CF08C 800CE48C 01CC082B */  sltu       $at, $t6, $t4
/* CF090 800CE490 8DEF0014 */  lw         $t7, 0x14($t7)
/* CF094 800CE494 14200016 */  bnez       $at, .L800CE4F0
/* CF098 800CE498 01606825 */   or        $t5, $t3, $zero
/* CF09C 800CE49C 018E082B */  sltu       $at, $t4, $t6
/* CF0A0 800CE4A0 14200003 */  bnez       $at, .L800CE4B0
/* CF0A4 800CE4A4 01AF082B */   sltu      $at, $t5, $t7
/* CF0A8 800CE4A8 10200011 */  beqz       $at, .L800CE4F0
/* CF0AC 800CE4AC 00000000 */   nop
.L800CE4B0:
/* CF0B0 800CE4B0 27380010 */  addiu      $t8, $t9, 0x10
/* CF0B4 800CE4B4 AFB80018 */  sw         $t8, 0x18($sp)
/* CF0B8 800CE4B8 8F2B0014 */  lw         $t3, 0x14($t9)
/* CF0BC 800CE4BC 8F2A0010 */  lw         $t2, 0x10($t9)
/* CF0C0 800CE4C0 016D082B */  sltu       $at, $t3, $t5
/* CF0C4 800CE4C4 014C4023 */  subu       $t0, $t2, $t4
/* CF0C8 800CE4C8 01014023 */  subu       $t0, $t0, $at
/* CF0CC 800CE4CC 016D4823 */  subu       $t1, $t3, $t5
/* CF0D0 800CE4D0 AF290014 */  sw         $t1, 0x14($t9)
/* CF0D4 800CE4D4 AF280010 */  sw         $t0, 0x10($t9)
/* CF0D8 800CE4D8 8FAE0024 */  lw         $t6, 0x24($sp)
/* CF0DC 800CE4DC 8DC40010 */  lw         $a0, 0x10($t6)
/* CF0E0 800CE4E0 0C033961 */  jal        func_800CE584
/* CF0E4 800CE4E4 8DC50014 */   lw        $a1, 0x14($t6)
/* CF0E8 800CE4E8 10000022 */  b          .L800CE574
/* CF0EC 800CE4EC 00000000 */   nop
.L800CE4F0:
/* CF0F0 800CE4F0 8FAF0024 */  lw         $t7, 0x24($sp)
/* CF0F4 800CE4F4 8DF80000 */  lw         $t8, ($t7)
/* CF0F8 800CE4F8 8DEA0004 */  lw         $t2, 4($t7)
/* CF0FC 800CE4FC AD580000 */  sw         $t8, ($t2)
/* CF100 800CE500 8FAB0024 */  lw         $t3, 0x24($sp)
/* CF104 800CE504 8D6C0004 */  lw         $t4, 4($t3)
/* CF108 800CE508 8D6D0000 */  lw         $t5, ($t3)
/* CF10C 800CE50C ADAC0004 */  sw         $t4, 4($t5)
/* CF110 800CE510 8FA80024 */  lw         $t0, 0x24($sp)
/* CF114 800CE514 AD000000 */  sw         $zero, ($t0)
/* CF118 800CE518 8FA90024 */  lw         $t1, 0x24($sp)
/* CF11C 800CE51C AD200004 */  sw         $zero, 4($t1)
/* CF120 800CE520 8FB90024 */  lw         $t9, 0x24($sp)
/* CF124 800CE524 8F2E0018 */  lw         $t6, 0x18($t9)
/* CF128 800CE528 11C00005 */  beqz       $t6, .L800CE540
/* CF12C 800CE52C 00000000 */   nop
/* CF130 800CE530 01C02025 */  or         $a0, $t6, $zero
/* CF134 800CE534 8F25001C */  lw         $a1, 0x1c($t9)
/* CF138 800CE538 0C02F7A8 */  jal        func_800BDEA0
/* CF13C 800CE53C 00003025 */   or        $a2, $zero, $zero
.L800CE540:
/* CF140 800CE540 8FAF0024 */  lw         $t7, 0x24($sp)
/* CF144 800CE544 8DF80008 */  lw         $t8, 8($t7)
/* CF148 800CE548 8DF9000C */  lw         $t9, 0xc($t7)
/* CF14C 800CE54C 17000003 */  bnez       $t8, .L800CE55C
/* CF150 800CE550 00000000 */   nop
/* CF154 800CE554 1320FFB4 */  beqz       $t9, .L800CE428
/* CF158 800CE558 00000000 */   nop
.L800CE55C:
/* CF15C 800CE55C ADF80010 */  sw         $t8, 0x10($t7)
/* CF160 800CE560 ADF90014 */  sw         $t9, 0x14($t7)
/* CF164 800CE564 0C03397E */  jal        func_800CE5F8
/* CF168 800CE568 8FA40024 */   lw        $a0, 0x24($sp)
/* CF16C 800CE56C 1000FFAE */  b          .L800CE428
/* CF170 800CE570 00000000 */   nop
.L800CE574:
/* CF174 800CE574 8FBF0014 */  lw         $ra, 0x14($sp)
/* CF178 800CE578 27BD0028 */  addiu      $sp, $sp, 0x28
/* CF17C 800CE57C 03E00008 */  jr         $ra
/* CF180 800CE580 00000000 */   nop

glabel func_800CE584
/* CF184 800CE584 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CF188 800CE588 AFBF0014 */  sw         $ra, 0x14($sp)
/* CF18C 800CE58C AFA40028 */  sw         $a0, 0x28($sp)
/* CF190 800CE590 0C033DD4 */  jal        func_800CF750
/* CF194 800CE594 AFA5002C */   sw        $a1, 0x2c($sp)
/* CF198 800CE598 0C031E2C */  jal        func_800C78B0
/* CF19C 800CE59C AFA2001C */   sw        $v0, 0x1c($sp)
/* CF1A0 800CE5A0 3C018014 */  lui        $at, %hi(D_80146CC0)
/* CF1A4 800CE5A4 AC226CC0 */  sw         $v0, %lo(D_80146CC0)($at)
/* CF1A8 800CE5A8 3C0E8014 */  lui        $t6, %hi(D_80146CC0)
/* CF1AC 800CE5AC 8DCE6CC0 */  lw         $t6, %lo(D_80146CC0)($t6)
/* CF1B0 800CE5B0 8FA9002C */  lw         $t1, 0x2c($sp)
/* CF1B4 800CE5B4 8FA80028 */  lw         $t0, 0x28($sp)
/* CF1B8 800CE5B8 01C0C825 */  or         $t9, $t6, $zero
/* CF1BC 800CE5BC 03295821 */  addu       $t3, $t9, $t1
/* CF1C0 800CE5C0 24180000 */  addiu      $t8, $zero, 0
/* CF1C4 800CE5C4 0169082B */  sltu       $at, $t3, $t1
/* CF1C8 800CE5C8 00385021 */  addu       $t2, $at, $t8
/* CF1CC 800CE5CC 01485021 */  addu       $t2, $t2, $t0
/* CF1D0 800CE5D0 AFAA0020 */  sw         $t2, 0x20($sp)
/* CF1D4 800CE5D4 AFAB0024 */  sw         $t3, 0x24($sp)
/* CF1D8 800CE5D8 0C033B4C */  jal        func_800CED30
/* CF1DC 800CE5DC 01602025 */   or        $a0, $t3, $zero
/* CF1E0 800CE5E0 0C033DDC */  jal        func_800CF770
/* CF1E4 800CE5E4 8FA4001C */   lw        $a0, 0x1c($sp)
/* CF1E8 800CE5E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* CF1EC 800CE5EC 27BD0028 */  addiu      $sp, $sp, 0x28
/* CF1F0 800CE5F0 03E00008 */  jr         $ra
/* CF1F4 800CE5F4 00000000 */   nop

glabel func_800CE5F8
/* CF1F8 800CE5F8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CF1FC 800CE5FC AFBF0014 */  sw         $ra, 0x14($sp)
/* CF200 800CE600 0C033DD4 */  jal        func_800CF750
/* CF204 800CE604 AFA40038 */   sw        $a0, 0x38($sp)
/* CF208 800CE608 3C0E800E */  lui        $t6, %hi(D_800DB180)
/* CF20C 800CE60C 8DCEB180 */  lw         $t6, %lo(D_800DB180)($t6)
/* CF210 800CE610 AFA20024 */  sw         $v0, 0x24($sp)
/* CF214 800CE614 8FB80038 */  lw         $t8, 0x38($sp)
/* CF218 800CE618 8DCF0000 */  lw         $t7, ($t6)
/* CF21C 800CE61C AFAF0034 */  sw         $t7, 0x34($sp)
/* CF220 800CE620 8F090014 */  lw         $t1, 0x14($t8)
/* CF224 800CE624 8F080010 */  lw         $t0, 0x10($t8)
/* CF228 800CE628 AFA9002C */  sw         $t1, 0x2c($sp)
/* CF22C 800CE62C 11EE0029 */  beq        $t7, $t6, .L800CE6D4
/* CF230 800CE630 AFA80028 */   sw        $t0, 0x28($sp)
/* CF234 800CE634 8DEA0010 */  lw         $t2, 0x10($t7)
/* CF238 800CE638 8DEB0014 */  lw         $t3, 0x14($t7)
/* CF23C 800CE63C 010A082B */  sltu       $at, $t0, $t2
/* CF240 800CE640 14200024 */  bnez       $at, .L800CE6D4
/* CF244 800CE644 0148082B */   sltu      $at, $t2, $t0
/* CF248 800CE648 14200003 */  bnez       $at, .L800CE658
/* CF24C 800CE64C 0169082B */   sltu      $at, $t3, $t1
/* CF250 800CE650 10200020 */  beqz       $at, .L800CE6D4
/* CF254 800CE654 00000000 */   nop
.L800CE658:
/* CF258 800CE658 27B90028 */  addiu      $t9, $sp, 0x28
/* CF25C 800CE65C 8FB80034 */  lw         $t8, 0x34($sp)
/* CF260 800CE660 AFB90020 */  sw         $t9, 0x20($sp)
/* CF264 800CE664 8F2D0004 */  lw         $t5, 4($t9)
/* CF268 800CE668 8F2C0000 */  lw         $t4, ($t9)
/* CF26C 800CE66C 8F0F0014 */  lw         $t7, 0x14($t8)
/* CF270 800CE670 8F0E0010 */  lw         $t6, 0x10($t8)
/* CF274 800CE674 3C18800E */  lui        $t8, 0x800e
/* CF278 800CE678 01AF082B */  sltu       $at, $t5, $t7
/* CF27C 800CE67C 018E4023 */  subu       $t0, $t4, $t6
/* CF280 800CE680 01014023 */  subu       $t0, $t0, $at
/* CF284 800CE684 01AF4823 */  subu       $t1, $t5, $t7
/* CF288 800CE688 AF290004 */  sw         $t1, 4($t9)
/* CF28C 800CE68C AF280000 */  sw         $t0, ($t9)
/* CF290 800CE690 8FAA0034 */  lw         $t2, 0x34($sp)
/* CF294 800CE694 8F18B180 */  lw         $t8, -0x4e80($t8)
/* CF298 800CE698 8D4B0000 */  lw         $t3, ($t2)
/* CF29C 800CE69C 1178000D */  beq        $t3, $t8, .L800CE6D4
/* CF2A0 800CE6A0 AFAB0034 */   sw        $t3, 0x34($sp)
/* CF2A4 800CE6A4 8FAC0028 */  lw         $t4, 0x28($sp)
/* CF2A8 800CE6A8 8D6E0010 */  lw         $t6, 0x10($t3)
/* CF2AC 800CE6AC 8FAD002C */  lw         $t5, 0x2c($sp)
/* CF2B0 800CE6B0 8D6F0014 */  lw         $t7, 0x14($t3)
/* CF2B4 800CE6B4 01CC082B */  sltu       $at, $t6, $t4
/* CF2B8 800CE6B8 1420FFE7 */  bnez       $at, .L800CE658
/* CF2BC 800CE6BC 00000000 */   nop
/* CF2C0 800CE6C0 018E082B */  sltu       $at, $t4, $t6
/* CF2C4 800CE6C4 14200003 */  bnez       $at, .L800CE6D4
/* CF2C8 800CE6C8 01ED082B */   sltu      $at, $t7, $t5
/* CF2CC 800CE6CC 1420FFE2 */  bnez       $at, .L800CE658
/* CF2D0 800CE6D0 00000000 */   nop
.L800CE6D4:
/* CF2D4 800CE6D4 8FB90038 */  lw         $t9, 0x38($sp)
/* CF2D8 800CE6D8 8FA80028 */  lw         $t0, 0x28($sp)
/* CF2DC 800CE6DC 8FA9002C */  lw         $t1, 0x2c($sp)
/* CF2E0 800CE6E0 3C18800E */  lui        $t8, %hi(D_800DB180)
/* CF2E4 800CE6E4 AF280010 */  sw         $t0, 0x10($t9)
/* CF2E8 800CE6E8 AF290014 */  sw         $t1, 0x14($t9)
/* CF2EC 800CE6EC 8F18B180 */  lw         $t8, %lo(D_800DB180)($t8)
/* CF2F0 800CE6F0 8FAA0034 */  lw         $t2, 0x34($sp)
/* CF2F4 800CE6F4 1158000D */  beq        $t2, $t8, .L800CE72C
/* CF2F8 800CE6F8 00000000 */   nop
/* CF2FC 800CE6FC 254B0010 */  addiu      $t3, $t2, 0x10
/* CF300 800CE700 AFAB001C */  sw         $t3, 0x1c($sp)
/* CF304 800CE704 8D4D0014 */  lw         $t5, 0x14($t2)
/* CF308 800CE708 8D4C0010 */  lw         $t4, 0x10($t2)
/* CF30C 800CE70C 8FAE0028 */  lw         $t6, 0x28($sp)
/* CF310 800CE710 8FAF002C */  lw         $t7, 0x2c($sp)
/* CF314 800CE714 018E4023 */  subu       $t0, $t4, $t6
/* CF318 800CE718 01AF082B */  sltu       $at, $t5, $t7
/* CF31C 800CE71C 01014023 */  subu       $t0, $t0, $at
/* CF320 800CE720 01AF4823 */  subu       $t1, $t5, $t7
/* CF324 800CE724 AD490014 */  sw         $t1, 0x14($t2)
/* CF328 800CE728 AD480010 */  sw         $t0, 0x10($t2)
.L800CE72C:
/* CF32C 800CE72C 8FB90034 */  lw         $t9, 0x34($sp)
/* CF330 800CE730 8FB80038 */  lw         $t8, 0x38($sp)
/* CF334 800CE734 AF190000 */  sw         $t9, ($t8)
/* CF338 800CE738 8FAB0034 */  lw         $t3, 0x34($sp)
/* CF33C 800CE73C 8FAD0038 */  lw         $t5, 0x38($sp)
/* CF340 800CE740 8D6C0004 */  lw         $t4, 4($t3)
/* CF344 800CE744 ADAC0004 */  sw         $t4, 4($t5)
/* CF348 800CE748 8FAF0034 */  lw         $t7, 0x34($sp)
/* CF34C 800CE74C 8FAE0038 */  lw         $t6, 0x38($sp)
/* CF350 800CE750 8DE80004 */  lw         $t0, 4($t7)
/* CF354 800CE754 AD0E0000 */  sw         $t6, ($t0)
/* CF358 800CE758 8FAA0034 */  lw         $t2, 0x34($sp)
/* CF35C 800CE75C 8FA90038 */  lw         $t1, 0x38($sp)
/* CF360 800CE760 AD490004 */  sw         $t1, 4($t2)
/* CF364 800CE764 0C033DDC */  jal        func_800CF770
/* CF368 800CE768 8FA40024 */   lw        $a0, 0x24($sp)
/* CF36C 800CE76C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CF370 800CE770 8FA20028 */  lw         $v0, 0x28($sp)
/* CF374 800CE774 8FA3002C */  lw         $v1, 0x2c($sp)
/* CF378 800CE778 03E00008 */  jr         $ra
/* CF37C 800CE77C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800CE780
/* CF380 800CE780 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CF384 800CE784 3C01800E */  lui        $at, %hi(D_800DFE40)
/* CF388 800CE788 C424FE40 */  lwc1       $f4, %lo(D_800DFE40)($at)
/* CF38C 800CE78C AFB00018 */  sw         $s0, 0x18($sp)
/* CF390 800CE790 00808025 */  or         $s0, $a0, $zero
/* CF394 800CE794 3C018014 */  lui        $at, 0x8014
/* CF398 800CE798 AFBF001C */  sw         $ra, 0x1c($sp)
/* CF39C 800CE79C AFA5003C */  sw         $a1, 0x3c($sp)
/* CF3A0 800CE7A0 AFA60040 */  sw         $a2, 0x40($sp)
/* CF3A4 800CE7A4 AFA70044 */  sw         $a3, 0x44($sp)
/* CF3A8 800CE7A8 27A60048 */  addiu      $a2, $sp, 0x48
/* CF3AC 800CE7AC 27A50044 */  addiu      $a1, $sp, 0x44
/* CF3B0 800CE7B0 27A40040 */  addiu      $a0, $sp, 0x40
/* CF3B4 800CE7B4 0C033B28 */  jal        func_800CECA0
/* CF3B8 800CE7B8 E4246CD0 */   swc1      $f4, 0x6cd0($at)
/* CF3BC 800CE7BC 3C018014 */  lui        $at, %hi(D_80146CD0)
/* CF3C0 800CE7C0 C7AC003C */  lwc1       $f12, 0x3c($sp)
/* CF3C4 800CE7C4 C4266CD0 */  lwc1       $f6, %lo(D_80146CD0)($at)
/* CF3C8 800CE7C8 46066302 */  mul.s      $f12, $f12, $f6
/* CF3CC 800CE7CC 0C02F904 */  jal        func_800BE410
/* CF3D0 800CE7D0 E7AC003C */   swc1      $f12, 0x3c($sp)
/* CF3D4 800CE7D4 C7AC003C */  lwc1       $f12, 0x3c($sp)
/* CF3D8 800CE7D8 0C033F18 */  jal        func_800CFC60
/* CF3DC 800CE7DC E7A00034 */   swc1      $f0, 0x34($sp)
/* CF3E0 800CE7E0 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* CF3E4 800CE7E4 C7A40044 */  lwc1       $f4, 0x44($sp)
/* CF3E8 800CE7E8 3C013F80 */  lui        $at, 0x3f80
/* CF3EC 800CE7EC 44814000 */  mtc1       $at, $f8
/* CF3F0 800CE7F0 46045182 */  mul.s      $f6, $f10, $f4
/* CF3F4 800CE7F4 02002025 */  or         $a0, $s0, $zero
/* CF3F8 800CE7F8 46004081 */  sub.s      $f2, $f8, $f0
/* CF3FC 800CE7FC C7A80048 */  lwc1       $f8, 0x48($sp)
/* CF400 800CE800 E7A00030 */  swc1       $f0, 0x30($sp)
/* CF404 800CE804 46023402 */  mul.s      $f16, $f6, $f2
/* CF408 800CE808 00000000 */  nop
/* CF40C 800CE80C 46082182 */  mul.s      $f6, $f4, $f8
/* CF410 800CE810 E7B0002C */  swc1       $f16, 0x2c($sp)
/* CF414 800CE814 46023482 */  mul.s      $f18, $f6, $f2
/* CF418 800CE818 00000000 */  nop
/* CF41C 800CE81C 460A4102 */  mul.s      $f4, $f8, $f10
/* CF420 800CE820 E7B20028 */  swc1       $f18, 0x28($sp)
/* CF424 800CE824 46022182 */  mul.s      $f6, $f4, $f2
/* CF428 800CE828 0C031110 */  jal        func_800C4440
/* CF42C 800CE82C E7A60024 */   swc1      $f6, 0x24($sp)
/* CF430 800CE830 C7A80040 */  lwc1       $f8, 0x40($sp)
/* CF434 800CE834 3C013F80 */  lui        $at, 0x3f80
/* CF438 800CE838 44815000 */  mtc1       $at, $f10
/* CF43C 800CE83C 46084002 */  mul.s      $f0, $f8, $f8
/* CF440 800CE840 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* CF444 800CE844 C7AE0034 */  lwc1       $f14, 0x34($sp)
/* CF448 800CE848 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* CF44C 800CE84C C7B20028 */  lwc1       $f18, 0x28($sp)
/* CF450 800CE850 46005101 */  sub.s      $f4, $f10, $f0
/* CF454 800CE854 460C2182 */  mul.s      $f6, $f4, $f12
/* CF458 800CE858 46003200 */  add.s      $f8, $f6, $f0
/* CF45C 800CE85C E6080000 */  swc1       $f8, ($s0)
/* CF460 800CE860 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* CF464 800CE864 460E5102 */  mul.s      $f4, $f10, $f14
/* CF468 800CE868 46049181 */  sub.s      $f6, $f18, $f4
/* CF46C 800CE86C E6060024 */  swc1       $f6, 0x24($s0)
/* CF470 800CE870 C7A80040 */  lwc1       $f8, 0x40($sp)
/* CF474 800CE874 460E4282 */  mul.s      $f10, $f8, $f14
/* CF478 800CE878 44814000 */  mtc1       $at, $f8
/* CF47C 800CE87C 46125100 */  add.s      $f4, $f10, $f18
/* CF480 800CE880 E6040018 */  swc1       $f4, 0x18($s0)
/* CF484 800CE884 C7A60044 */  lwc1       $f6, 0x44($sp)
/* CF488 800CE888 46063082 */  mul.s      $f2, $f6, $f6
/* CF48C 800CE88C 46024281 */  sub.s      $f10, $f8, $f2
/* CF490 800CE890 460C5102 */  mul.s      $f4, $f10, $f12
/* CF494 800CE894 46022180 */  add.s      $f6, $f4, $f2
/* CF498 800CE898 E6060014 */  swc1       $f6, 0x14($s0)
/* CF49C 800CE89C C7A80044 */  lwc1       $f8, 0x44($sp)
/* CF4A0 800CE8A0 C7A40024 */  lwc1       $f4, 0x24($sp)
/* CF4A4 800CE8A4 460E4282 */  mul.s      $f10, $f8, $f14
/* CF4A8 800CE8A8 46045180 */  add.s      $f6, $f10, $f4
/* CF4AC 800CE8AC E6060020 */  swc1       $f6, 0x20($s0)
/* CF4B0 800CE8B0 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* CF4B4 800CE8B4 C7A80024 */  lwc1       $f8, 0x24($sp)
/* CF4B8 800CE8B8 460E5102 */  mul.s      $f4, $f10, $f14
/* CF4BC 800CE8BC 46044181 */  sub.s      $f6, $f8, $f4
/* CF4C0 800CE8C0 44814000 */  mtc1       $at, $f8
/* CF4C4 800CE8C4 E6060008 */  swc1       $f6, 8($s0)
/* CF4C8 800CE8C8 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* CF4CC 800CE8CC 460A5002 */  mul.s      $f0, $f10, $f10
/* CF4D0 800CE8D0 46004101 */  sub.s      $f4, $f8, $f0
/* CF4D4 800CE8D4 460C2182 */  mul.s      $f6, $f4, $f12
/* CF4D8 800CE8D8 46003280 */  add.s      $f10, $f6, $f0
/* CF4DC 800CE8DC E60A0028 */  swc1       $f10, 0x28($s0)
/* CF4E0 800CE8E0 C7A80048 */  lwc1       $f8, 0x48($sp)
/* CF4E4 800CE8E4 460E4102 */  mul.s      $f4, $f8, $f14
/* CF4E8 800CE8E8 46048181 */  sub.s      $f6, $f16, $f4
/* CF4EC 800CE8EC E6060010 */  swc1       $f6, 0x10($s0)
/* CF4F0 800CE8F0 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* CF4F4 800CE8F4 460E5202 */  mul.s      $f8, $f10, $f14
/* CF4F8 800CE8F8 46104100 */  add.s      $f4, $f8, $f16
/* CF4FC 800CE8FC E6040004 */  swc1       $f4, 4($s0)
/* CF500 800CE900 8FBF001C */  lw         $ra, 0x1c($sp)
/* CF504 800CE904 8FB00018 */  lw         $s0, 0x18($sp)
/* CF508 800CE908 27BD0038 */  addiu      $sp, $sp, 0x38
/* CF50C 800CE90C 03E00008 */  jr         $ra
/* CF510 800CE910 00000000 */   nop

glabel func_800CE914
/* CF514 800CE914 44856000 */  mtc1       $a1, $f12
/* CF518 800CE918 44867000 */  mtc1       $a2, $f14
/* CF51C 800CE91C 44878000 */  mtc1       $a3, $f16
/* CF520 800CE920 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* CF524 800CE924 C7A40070 */  lwc1       $f4, 0x70($sp)
/* CF528 800CE928 AFBF001C */  sw         $ra, 0x1c($sp)
/* CF52C 800CE92C AFA40060 */  sw         $a0, 0x60($sp)
/* CF530 800CE930 44056000 */  mfc1       $a1, $f12
/* CF534 800CE934 44067000 */  mfc1       $a2, $f14
/* CF538 800CE938 44078000 */  mfc1       $a3, $f16
/* CF53C 800CE93C 27A40020 */  addiu      $a0, $sp, 0x20
/* CF540 800CE940 0C0339E0 */  jal        func_800CE780
/* CF544 800CE944 E7A40010 */   swc1      $f4, 0x10($sp)
/* CF548 800CE948 27A40020 */  addiu      $a0, $sp, 0x20
/* CF54C 800CE94C 0C0310D0 */  jal        func_800C4340
/* CF550 800CE950 8FA50060 */   lw        $a1, 0x60($sp)
/* CF554 800CE954 8FBF001C */  lw         $ra, 0x1c($sp)
/* CF558 800CE958 27BD0060 */  addiu      $sp, $sp, 0x60
/* CF55C 800CE95C 03E00008 */  jr         $ra
/* CF560 800CE960 00000000 */   nop
/* CF564 800CE964 00000000 */  nop
/* CF568 800CE968 00000000 */  nop
/* CF56C 800CE96C 00000000 */  nop
