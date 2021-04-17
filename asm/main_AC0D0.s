.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AB4D0
/* AC0D0 800AB4D0 27BDFFF8 */  addiu      $sp, $sp, -8
/* AC0D4 800AB4D4 3C0E800D */  lui        $t6, %hi(D_800CD340)
/* AC0D8 800AB4D8 8DCED340 */  lw         $t6, %lo(D_800CD340)($t6)
/* AC0DC 800AB4DC 000E7880 */  sll        $t7, $t6, 2
/* AC0E0 800AB4E0 25F80002 */  addiu      $t8, $t7, 2
/* AC0E4 800AB4E4 AFB80004 */  sw         $t8, 4($sp)
/* AC0E8 800AB4E8 8FB90004 */  lw         $t9, 4($sp)
/* AC0EC 800AB4EC 27280001 */  addiu      $t0, $t9, 1
/* AC0F0 800AB4F0 03280019 */  multu      $t9, $t0
/* AC0F4 800AB4F4 00004812 */  mflo       $t1
/* AC0F8 800AB4F8 AFA90004 */  sw         $t1, 4($sp)
/* AC0FC 800AB4FC 00000000 */  nop
/* AC100 800AB500 8FAA0004 */  lw         $t2, 4($sp)
/* AC104 800AB504 000A5882 */  srl        $t3, $t2, 2
/* AC108 800AB508 AFAB0004 */  sw         $t3, 4($sp)
/* AC10C 800AB50C 8FAC0004 */  lw         $t4, 4($sp)
/* AC110 800AB510 3C01800D */  lui        $at, %hi(D_800CD340)
/* AC114 800AB514 AC2CD340 */  sw         $t4, %lo(D_800CD340)($at)
/* AC118 800AB518 10000003 */  b          .L800AB528
/* AC11C 800AB51C 8FA20004 */   lw        $v0, 4($sp)
/* AC120 800AB520 10000001 */  b          .L800AB528
/* AC124 800AB524 00000000 */   nop
.L800AB528:
/* AC128 800AB528 03E00008 */  jr         $ra
/* AC12C 800AB52C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800AB530
/* AC130 800AB530 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AC134 800AB534 AFBF001C */  sw         $ra, 0x1c($sp)
/* AC138 800AB538 AFA40028 */  sw         $a0, 0x28($sp)
/* AC13C 800AB53C AFA5002C */  sw         $a1, 0x2c($sp)
/* AC140 800AB540 AFA60030 */  sw         $a2, 0x30($sp)
/* AC144 800AB544 AFB00018 */  sw         $s0, 0x18($sp)
/* AC148 800AB548 AFA00024 */  sw         $zero, 0x24($sp)
/* AC14C 800AB54C 8FAE0024 */  lw         $t6, 0x24($sp)
/* AC150 800AB550 8FAF0030 */  lw         $t7, 0x30($sp)
/* AC154 800AB554 01CF082B */  sltu       $at, $t6, $t7
/* AC158 800AB558 10200011 */  beqz       $at, .L800AB5A0
/* AC15C 800AB55C 00000000 */   nop
.L800AB560:
/* AC160 800AB560 8FB90024 */  lw         $t9, 0x24($sp)
/* AC164 800AB564 8FB8002C */  lw         $t8, 0x2c($sp)
/* AC168 800AB568 8FA80030 */  lw         $t0, 0x30($sp)
/* AC16C 800AB56C 24060001 */  addiu      $a2, $zero, 1
/* AC170 800AB570 03192021 */  addu       $a0, $t8, $t9
/* AC174 800AB574 0C02C4C8 */  jal        func_800B1320
/* AC178 800AB578 01192823 */   subu      $a1, $t0, $t9
/* AC17C 800AB57C 8FA90024 */  lw         $t1, 0x24($sp)
/* AC180 800AB580 00408025 */  or         $s0, $v0, $zero
/* AC184 800AB584 01305021 */  addu       $t2, $t1, $s0
/* AC188 800AB588 AFAA0024 */  sw         $t2, 0x24($sp)
/* AC18C 800AB58C 8FAB0024 */  lw         $t3, 0x24($sp)
/* AC190 800AB590 8FAC0030 */  lw         $t4, 0x30($sp)
/* AC194 800AB594 016C082B */  sltu       $at, $t3, $t4
/* AC198 800AB598 1420FFF1 */  bnez       $at, .L800AB560
/* AC19C 800AB59C 00000000 */   nop
.L800AB5A0:
/* AC1A0 800AB5A0 10000003 */  b          .L800AB5B0
/* AC1A4 800AB5A4 24020001 */   addiu     $v0, $zero, 1
/* AC1A8 800AB5A8 10000001 */  b          .L800AB5B0
/* AC1AC 800AB5AC 00000000 */   nop
.L800AB5B0:
/* AC1B0 800AB5B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* AC1B4 800AB5B4 8FB00018 */  lw         $s0, 0x18($sp)
/* AC1B8 800AB5B8 27BD0028 */  addiu      $sp, $sp, 0x28
/* AC1BC 800AB5BC 03E00008 */  jr         $ra
/* AC1C0 800AB5C0 00000000 */   nop

glabel func_800AB5C4
/* AC1C4 800AB5C4 308400FF */  andi       $a0, $a0, 0xff
/* AC1C8 800AB5C8 3C0E800D */  lui        $t6, %hi(D_800CD358)
/* AC1CC 800AB5CC 8DCED358 */  lw         $t6, %lo(D_800CD358)($t6)
/* AC1D0 800AB5D0 8DCF0000 */  lw         $t7, ($t6)
/* AC1D4 800AB5D4 31F80003 */  andi       $t8, $t7, 3
/* AC1D8 800AB5D8 13000007 */  beqz       $t8, .L800AB5F8
/* AC1DC 800AB5DC 00000000 */   nop
.L800AB5E0:
/* AC1E0 800AB5E0 3C19800D */  lui        $t9, %hi(D_800CD358)
/* AC1E4 800AB5E4 8F39D358 */  lw         $t9, %lo(D_800CD358)($t9)
/* AC1E8 800AB5E8 8F280000 */  lw         $t0, ($t9)
/* AC1EC 800AB5EC 31090003 */  andi       $t1, $t0, 3
/* AC1F0 800AB5F0 1520FFFB */  bnez       $t1, .L800AB5E0
/* AC1F4 800AB5F4 00000000 */   nop
.L800AB5F8:
/* AC1F8 800AB5F8 3C0A800D */  lui        $t2, %hi(D_800CD350)
/* AC1FC 800AB5FC 8D4AD350 */  lw         $t2, %lo(D_800CD350)($t2)
/* AC200 800AB600 8D4B0000 */  lw         $t3, ($t2)
/* AC204 800AB604 316C0004 */  andi       $t4, $t3, 4
/* AC208 800AB608 15800007 */  bnez       $t4, .L800AB628
/* AC20C 800AB60C 00000000 */   nop
.L800AB610:
/* AC210 800AB610 3C0D800D */  lui        $t5, %hi(D_800CD350)
/* AC214 800AB614 8DADD350 */  lw         $t5, %lo(D_800CD350)($t5)
/* AC218 800AB618 8DAE0000 */  lw         $t6, ($t5)
/* AC21C 800AB61C 31CF0004 */  andi       $t7, $t6, 4
/* AC220 800AB620 11E0FFFB */  beqz       $t7, .L800AB610
/* AC224 800AB624 00000000 */   nop
.L800AB628:
/* AC228 800AB628 3C18800D */  lui        $t8, %hi(D_800CD354)
/* AC22C 800AB62C 8F18D354 */  lw         $t8, %lo(D_800CD354)($t8)
/* AC230 800AB630 AF040000 */  sw         $a0, ($t8)
/* AC234 800AB634 03E00008 */  jr         $ra
/* AC238 800AB638 00000000 */   nop

glabel func_800AB63C
/* AC23C 800AB63C 03E00008 */  jr         $ra
/* AC240 800AB640 00000000 */   nop

glabel func_800AB644
/* AC244 800AB644 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* AC248 800AB648 AFBF001C */  sw         $ra, 0x1c($sp)
/* AC24C 800AB64C AFA400B8 */  sw         $a0, 0xb8($sp)
/* AC250 800AB650 AFA500BC */  sw         $a1, 0xbc($sp)
/* AC254 800AB654 AFA600C0 */  sw         $a2, 0xc0($sp)
/* AC258 800AB658 AFB00018 */  sw         $s0, 0x18($sp)
/* AC25C 800AB65C 27AE0028 */  addiu      $t6, $sp, 0x28
/* AC260 800AB660 AFAE00AC */  sw         $t6, 0xac($sp)
/* AC264 800AB664 8FAF00C0 */  lw         $t7, 0xc0($sp)
/* AC268 800AB668 AFA000B4 */  sw         $zero, 0xb4($sp)
/* AC26C 800AB66C 19E00060 */  blez       $t7, .L800AB7F0
/* AC270 800AB670 00000000 */   nop
.L800AB674:
/* AC274 800AB674 8FB800BC */  lw         $t8, 0xbc($sp)
/* AC278 800AB678 93190000 */  lbu        $t9, ($t8)
/* AC27C 800AB67C 27080001 */  addiu      $t0, $t8, 1
/* AC280 800AB680 AFA800BC */  sw         $t0, 0xbc($sp)
/* AC284 800AB684 A3B900B3 */  sb         $t9, 0xb3($sp)
/* AC288 800AB688 93B000B3 */  lbu        $s0, 0xb3($sp)
/* AC28C 800AB68C 24010009 */  addiu      $at, $zero, 9
/* AC290 800AB690 12010010 */  beq        $s0, $at, .L800AB6D4
/* AC294 800AB694 00000000 */   nop
/* AC298 800AB698 2401000A */  addiu      $at, $zero, 0xa
/* AC29C 800AB69C 12010003 */  beq        $s0, $at, .L800AB6AC
/* AC2A0 800AB6A0 00000000 */   nop
/* AC2A4 800AB6A4 1000001F */  b          .L800AB724
/* AC2A8 800AB6A8 00000000 */   nop
.L800AB6AC:
/* AC2AC 800AB6AC 8FAA00AC */  lw         $t2, 0xac($sp)
/* AC2B0 800AB6B0 2409000A */  addiu      $t1, $zero, 0xa
/* AC2B4 800AB6B4 A1490000 */  sb         $t1, ($t2)
/* AC2B8 800AB6B8 8FAB00AC */  lw         $t3, 0xac($sp)
/* AC2BC 800AB6BC 256C0001 */  addiu      $t4, $t3, 1
/* AC2C0 800AB6C0 AFAC00AC */  sw         $t4, 0xac($sp)
/* AC2C4 800AB6C4 3C01800D */  lui        $at, %hi(D_800CD35C)
/* AC2C8 800AB6C8 AC20D35C */  sw         $zero, %lo(D_800CD35C)($at)
/* AC2CC 800AB6CC 10000022 */  b          .L800AB758
/* AC2D0 800AB6D0 00000000 */   nop
.L800AB6D4:
/* AC2D4 800AB6D4 8FAE00AC */  lw         $t6, 0xac($sp)
/* AC2D8 800AB6D8 240D0020 */  addiu      $t5, $zero, 0x20
/* AC2DC 800AB6DC A1CD0000 */  sb         $t5, ($t6)
/* AC2E0 800AB6E0 8FAF00AC */  lw         $t7, 0xac($sp)
/* AC2E4 800AB6E4 25F90001 */  addiu      $t9, $t7, 1
/* AC2E8 800AB6E8 AFB900AC */  sw         $t9, 0xac($sp)
/* AC2EC 800AB6EC 3C18800D */  lui        $t8, %hi(D_800CD35C)
/* AC2F0 800AB6F0 8F18D35C */  lw         $t8, %lo(D_800CD35C)($t8)
/* AC2F4 800AB6F4 3C01800D */  lui        $at, %hi(D_800CD35C)
/* AC2F8 800AB6F8 27080001 */  addiu      $t0, $t8, 1
/* AC2FC 800AB6FC AC28D35C */  sw         $t0, %lo(D_800CD35C)($at)
/* AC300 800AB700 05010004 */  bgez       $t0, .L800AB714
/* AC304 800AB704 31090007 */   andi      $t1, $t0, 7
/* AC308 800AB708 11200002 */  beqz       $t1, .L800AB714
/* AC30C 800AB70C 00000000 */   nop
/* AC310 800AB710 2529FFF8 */  addiu      $t1, $t1, -8
.L800AB714:
/* AC314 800AB714 1520FFEF */  bnez       $t1, .L800AB6D4
/* AC318 800AB718 00000000 */   nop
/* AC31C 800AB71C 1000000E */  b          .L800AB758
/* AC320 800AB720 00000000 */   nop
.L800AB724:
/* AC324 800AB724 3C0A800D */  lui        $t2, %hi(D_800CD35C)
/* AC328 800AB728 8D4AD35C */  lw         $t2, %lo(D_800CD35C)($t2)
/* AC32C 800AB72C 3C01800D */  lui        $at, %hi(D_800CD35C)
/* AC330 800AB730 254B0001 */  addiu      $t3, $t2, 1
/* AC334 800AB734 AC2BD35C */  sw         $t3, %lo(D_800CD35C)($at)
/* AC338 800AB738 93AC00B3 */  lbu        $t4, 0xb3($sp)
/* AC33C 800AB73C 8FAD00AC */  lw         $t5, 0xac($sp)
/* AC340 800AB740 A1AC0000 */  sb         $t4, ($t5)
/* AC344 800AB744 8FAE00AC */  lw         $t6, 0xac($sp)
/* AC348 800AB748 25CF0001 */  addiu      $t7, $t6, 1
/* AC34C 800AB74C AFAF00AC */  sw         $t7, 0xac($sp)
/* AC350 800AB750 10000001 */  b          .L800AB758
/* AC354 800AB754 00000000 */   nop
.L800AB758:
/* AC358 800AB758 93B900B3 */  lbu        $t9, 0xb3($sp)
/* AC35C 800AB75C 2401000A */  addiu      $at, $zero, 0xa
/* AC360 800AB760 13210007 */  beq        $t9, $at, .L800AB780
/* AC364 800AB764 00000000 */   nop
/* AC368 800AB768 8FB800AC */  lw         $t8, 0xac($sp)
/* AC36C 800AB76C 27A80028 */  addiu      $t0, $sp, 0x28
/* AC370 800AB770 03084823 */  subu       $t1, $t8, $t0
/* AC374 800AB774 29210065 */  slti       $at, $t1, 0x65
/* AC378 800AB778 14200017 */  bnez       $at, .L800AB7D8
/* AC37C 800AB77C 00000000 */   nop
.L800AB780:
/* AC380 800AB780 8FAA00AC */  lw         $t2, 0xac($sp)
/* AC384 800AB784 27AB0028 */  addiu      $t3, $sp, 0x28
/* AC388 800AB788 014B2023 */  subu       $a0, $t2, $t3
/* AC38C 800AB78C 0C02AD71 */  jal        func_800AB5C4
/* AC390 800AB790 2484FFFF */   addiu     $a0, $a0, -1
/* AC394 800AB794 27AC0028 */  addiu      $t4, $sp, 0x28
/* AC398 800AB798 AFAC00A8 */  sw         $t4, 0xa8($sp)
/* AC39C 800AB79C 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* AC3A0 800AB7A0 8FAE00AC */  lw         $t6, 0xac($sp)
/* AC3A4 800AB7A4 11AE000A */  beq        $t5, $t6, .L800AB7D0
/* AC3A8 800AB7A8 00000000 */   nop
.L800AB7AC:
/* AC3AC 800AB7AC 8FAF00A8 */  lw         $t7, 0xa8($sp)
/* AC3B0 800AB7B0 91E40000 */  lbu        $a0, ($t7)
/* AC3B4 800AB7B4 25F90001 */  addiu      $t9, $t7, 1
/* AC3B8 800AB7B8 0C02AD71 */  jal        func_800AB5C4
/* AC3BC 800AB7BC AFB900A8 */   sw        $t9, 0xa8($sp)
/* AC3C0 800AB7C0 8FB800A8 */  lw         $t8, 0xa8($sp)
/* AC3C4 800AB7C4 8FA800AC */  lw         $t0, 0xac($sp)
/* AC3C8 800AB7C8 1708FFF8 */  bne        $t8, $t0, .L800AB7AC
/* AC3CC 800AB7CC 00000000 */   nop
.L800AB7D0:
/* AC3D0 800AB7D0 27A90028 */  addiu      $t1, $sp, 0x28
/* AC3D4 800AB7D4 AFA900AC */  sw         $t1, 0xac($sp)
.L800AB7D8:
/* AC3D8 800AB7D8 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* AC3DC 800AB7DC 8FAC00C0 */  lw         $t4, 0xc0($sp)
/* AC3E0 800AB7E0 254B0001 */  addiu      $t3, $t2, 1
/* AC3E4 800AB7E4 016C082A */  slt        $at, $t3, $t4
/* AC3E8 800AB7E8 1420FFA2 */  bnez       $at, .L800AB674
/* AC3EC 800AB7EC AFAB00B4 */   sw        $t3, 0xb4($sp)
.L800AB7F0:
/* AC3F0 800AB7F0 8FAE00AC */  lw         $t6, 0xac($sp)
/* AC3F4 800AB7F4 27AD0028 */  addiu      $t5, $sp, 0x28
/* AC3F8 800AB7F8 11AE0015 */  beq        $t5, $t6, .L800AB850
/* AC3FC 800AB7FC 00000000 */   nop
/* AC400 800AB800 8FAF00AC */  lw         $t7, 0xac($sp)
/* AC404 800AB804 27B90028 */  addiu      $t9, $sp, 0x28
/* AC408 800AB808 01F92023 */  subu       $a0, $t7, $t9
/* AC40C 800AB80C 0C02AD71 */  jal        func_800AB5C4
/* AC410 800AB810 2484FFFF */   addiu     $a0, $a0, -1
/* AC414 800AB814 27B80028 */  addiu      $t8, $sp, 0x28
/* AC418 800AB818 AFB800A8 */  sw         $t8, 0xa8($sp)
/* AC41C 800AB81C 8FA800A8 */  lw         $t0, 0xa8($sp)
/* AC420 800AB820 8FA900AC */  lw         $t1, 0xac($sp)
/* AC424 800AB824 1109000A */  beq        $t0, $t1, .L800AB850
/* AC428 800AB828 00000000 */   nop
.L800AB82C:
/* AC42C 800AB82C 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* AC430 800AB830 91440000 */  lbu        $a0, ($t2)
/* AC434 800AB834 254B0001 */  addiu      $t3, $t2, 1
/* AC438 800AB838 0C02AD71 */  jal        func_800AB5C4
/* AC43C 800AB83C AFAB00A8 */   sw        $t3, 0xa8($sp)
/* AC440 800AB840 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* AC444 800AB844 8FAD00AC */  lw         $t5, 0xac($sp)
/* AC448 800AB848 158DFFF8 */  bne        $t4, $t5, .L800AB82C
/* AC44C 800AB84C 00000000 */   nop
.L800AB850:
/* AC450 800AB850 10000003 */  b          .L800AB860
/* AC454 800AB854 24020001 */   addiu     $v0, $zero, 1
/* AC458 800AB858 10000001 */  b          .L800AB860
/* AC45C 800AB85C 00000000 */   nop
.L800AB860:
/* AC460 800AB860 8FBF001C */  lw         $ra, 0x1c($sp)
/* AC464 800AB864 8FB00018 */  lw         $s0, 0x18($sp)
/* AC468 800AB868 27BD00B8 */  addiu      $sp, $sp, 0xb8
/* AC46C 800AB86C 03E00008 */  jr         $ra
/* AC470 800AB870 00000000 */   nop

glabel func_800AB874
/* AC474 800AB874 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AC478 800AB878 AFBF0014 */  sw         $ra, 0x14($sp)
/* AC47C 800AB87C AFA40020 */  sw         $a0, 0x20($sp)
/* AC480 800AB880 AFA50024 */  sw         $a1, 0x24($sp)
/* AC484 800AB884 AFA60028 */  sw         $a2, 0x28($sp)
/* AC488 800AB888 AFA7002C */  sw         $a3, 0x2c($sp)
/* AC48C 800AB88C 27AE0020 */  addiu      $t6, $sp, 0x20
/* AC490 800AB890 25CF0004 */  addiu      $t7, $t6, 4
/* AC494 800AB894 AFAF0018 */  sw         $t7, 0x18($sp)
/* AC498 800AB898 3C18801A */  lui        $t8, %hi(D_801A1BC0)
/* AC49C 800AB89C 8F181BC0 */  lw         $t8, %lo(D_801A1BC0)($t8)
/* AC4A0 800AB8A0 13000009 */  beqz       $t8, .L800AB8C8
/* AC4A4 800AB8A4 00000000 */   nop
/* AC4A8 800AB8A8 3C04800B */  lui        $a0, %hi(func_800AB644)
/* AC4AC 800AB8AC 2484B644 */  addiu      $a0, $a0, %lo(func_800AB644)
/* AC4B0 800AB8B0 00002825 */  or         $a1, $zero, $zero
/* AC4B4 800AB8B4 8FA60020 */  lw         $a2, 0x20($sp)
/* AC4B8 800AB8B8 0C02AE5C */  jal        func_800AB970
/* AC4BC 800AB8BC 8FA70018 */   lw        $a3, 0x18($sp)
/* AC4C0 800AB8C0 10000008 */  b          .L800AB8E4
/* AC4C4 800AB8C4 AFA2001C */   sw        $v0, 0x1c($sp)
.L800AB8C8:
/* AC4C8 800AB8C8 3C04800B */  lui        $a0, %hi(func_800AB530)
/* AC4CC 800AB8CC 2484B530 */  addiu      $a0, $a0, %lo(func_800AB530)
/* AC4D0 800AB8D0 00002825 */  or         $a1, $zero, $zero
/* AC4D4 800AB8D4 8FA60020 */  lw         $a2, 0x20($sp)
/* AC4D8 800AB8D8 0C02AE5C */  jal        func_800AB970
/* AC4DC 800AB8DC 8FA70018 */   lw        $a3, 0x18($sp)
/* AC4E0 800AB8E0 AFA2001C */  sw         $v0, 0x1c($sp)
.L800AB8E4:
/* AC4E4 800AB8E4 10000001 */  b          .L800AB8EC
/* AC4E8 800AB8E8 00000000 */   nop
.L800AB8EC:
/* AC4EC 800AB8EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AC4F0 800AB8F0 27BD0020 */  addiu      $sp, $sp, 0x20
/* AC4F4 800AB8F4 03E00008 */  jr         $ra
/* AC4F8 800AB8F8 00000000 */   nop

glabel func_800AB8FC
/* AC4FC 800AB8FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AC500 800AB900 AFBF0014 */  sw         $ra, 0x14($sp)
/* AC504 800AB904 AFA40020 */  sw         $a0, 0x20($sp)
/* AC508 800AB908 AFA50024 */  sw         $a1, 0x24($sp)
/* AC50C 800AB90C AFA60028 */  sw         $a2, 0x28($sp)
/* AC510 800AB910 AFA7002C */  sw         $a3, 0x2c($sp)
/* AC514 800AB914 27AE0020 */  addiu      $t6, $sp, 0x20
/* AC518 800AB918 25CF0004 */  addiu      $t7, $t6, 4
/* AC51C 800AB91C AFAF0018 */  sw         $t7, 0x18($sp)
/* AC520 800AB920 3C18801A */  lui        $t8, %hi(D_801A1BC0)
/* AC524 800AB924 8F181BC0 */  lw         $t8, %lo(D_801A1BC0)($t8)
/* AC528 800AB928 13000008 */  beqz       $t8, .L800AB94C
/* AC52C 800AB92C 00000000 */   nop
/* AC530 800AB930 3C04800B */  lui        $a0, %hi(func_800AB644)
/* AC534 800AB934 2484B644 */  addiu      $a0, $a0, %lo(func_800AB644)
/* AC538 800AB938 00002825 */  or         $a1, $zero, $zero
/* AC53C 800AB93C 8FA60020 */  lw         $a2, 0x20($sp)
/* AC540 800AB940 0C02AE5C */  jal        func_800AB970
/* AC544 800AB944 8FA70018 */   lw        $a3, 0x18($sp)
/* AC548 800AB948 AFA2001C */  sw         $v0, 0x1c($sp)
.L800AB94C:
/* AC54C 800AB94C 10000001 */  b          .L800AB954
/* AC550 800AB950 00000000 */   nop
.L800AB954:
/* AC554 800AB954 8FBF0014 */  lw         $ra, 0x14($sp)
/* AC558 800AB958 27BD0020 */  addiu      $sp, $sp, 0x20
/* AC55C 800AB95C 03E00008 */  jr         $ra
/* AC560 800AB960 00000000 */   nop
/* AC564 800AB964 00000000 */  nop
/* AC568 800AB968 00000000 */  nop
/* AC56C 800AB96C 00000000 */  nop
