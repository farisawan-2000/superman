.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001D5F0
/* 1E1F0 8001D5F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1E1F4 8001D5F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E1F8 8001D5F8 AFA40030 */  sw         $a0, 0x30($sp)
/* 1E1FC 8001D5FC AFA50034 */  sw         $a1, 0x34($sp)
/* 1E200 8001D600 AFA60038 */  sw         $a2, 0x38($sp)
/* 1E204 8001D604 8FAE0030 */  lw         $t6, 0x30($sp)
/* 1E208 8001D608 3C188023 */  lui        $t8, %hi(D_8022D290)
/* 1E20C 8001D60C 2718D290 */  addiu      $t8, $t8, %lo(D_8022D290)
/* 1E210 8001D610 000E7900 */  sll        $t7, $t6, 4
/* 1E214 8001D614 01F8C821 */  addu       $t9, $t7, $t8
/* 1E218 8001D618 8F280008 */  lw         $t0, 8($t9)
/* 1E21C 8001D61C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 1E220 8001D620 3C0C801A */  lui        $t4, %hi(D_80199638)
/* 1E224 8001D624 AFA8002C */  sw         $t0, 0x2c($sp)
/* 1E228 8001D628 8F290004 */  lw         $t1, 4($t9)
/* 1E22C 8001D62C 310A0007 */  andi       $t2, $t0, 7
/* 1E230 8001D630 258C9638 */  addiu      $t4, $t4, %lo(D_80199638)
/* 1E234 8001D634 312B0007 */  andi       $t3, $t1, 7
/* 1E238 8001D638 AFAA0024 */  sw         $t2, 0x24($sp)
/* 1E23C 8001D63C AFAB0020 */  sw         $t3, 0x20($sp)
/* 1E240 8001D640 014C6821 */  addu       $t5, $t2, $t4
/* 1E244 8001D644 AFA90028 */  sw         $t1, 0x28($sp)
/* 1E248 8001D648 ADCD0000 */  sw         $t5, ($t6)
/* 1E24C 8001D64C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 1E250 8001D650 8FA80034 */  lw         $t0, 0x34($sp)
/* 1E254 8001D654 3C18801A */  lui        $t8, %hi(D_8019A638)
/* 1E258 8001D658 2718A638 */  addiu      $t8, $t8, %lo(D_8019A638)
/* 1E25C 8001D65C 01F8C821 */  addu       $t9, $t7, $t8
/* 1E260 8001D660 AD190000 */  sw         $t9, ($t0)
/* 1E264 8001D664 8FA9002C */  lw         $t1, 0x2c($sp)
/* 1E268 8001D668 8FAA0028 */  lw         $t2, 0x28($sp)
/* 1E26C 8001D66C 3C0D800C */  lui        $t5, %hi(D_800C4A40)
/* 1E270 8001D670 8DAD4A40 */  lw         $t5, %lo(D_800C4A40)($t5)
/* 1E274 8001D674 8FAE0030 */  lw         $t6, 0x30($sp)
/* 1E278 8001D678 2401FFF8 */  addiu      $at, $zero, -8
/* 1E27C 8001D67C 01215824 */  and        $t3, $t1, $at
/* 1E280 8001D680 01416024 */  and        $t4, $t2, $at
/* 1E284 8001D684 AFAB002C */  sw         $t3, 0x2c($sp)
/* 1E288 8001D688 11AE000D */  beq        $t5, $t6, .L8001D6C0
/* 1E28C 8001D68C AFAC0028 */   sw        $t4, 0x28($sp)
/* 1E290 8001D690 3C01800C */  lui        $at, %hi(D_800C4A40)
/* 1E294 8001D694 3C05801A */  lui        $a1, %hi(D_80199638)
/* 1E298 8001D698 AC2E4A40 */  sw         $t6, %lo(D_800C4A40)($at)
/* 1E29C 8001D69C 24A59638 */  addiu      $a1, $a1, %lo(D_80199638)
/* 1E2A0 8001D6A0 01602025 */  or         $a0, $t3, $zero
/* 1E2A4 8001D6A4 0C0003E8 */  jal        func_80000FA0
/* 1E2A8 8001D6A8 24061000 */   addiu     $a2, $zero, 0x1000
/* 1E2AC 8001D6AC 3C05801A */  lui        $a1, %hi(D_8019A638)
/* 1E2B0 8001D6B0 24A5A638 */  addiu      $a1, $a1, %lo(D_8019A638)
/* 1E2B4 8001D6B4 8FA40028 */  lw         $a0, 0x28($sp)
/* 1E2B8 8001D6B8 0C0003E8 */  jal        func_80000FA0
/* 1E2BC 8001D6BC 24060400 */   addiu     $a2, $zero, 0x400
.L8001D6C0:
/* 1E2C0 8001D6C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E2C4 8001D6C4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1E2C8 8001D6C8 03E00008 */  jr         $ra
/* 1E2CC 8001D6CC 00000000 */   nop

glabel func_8001D6D0
/* 1E2D0 8001D6D0 27BDFFF8 */  addiu      $sp, $sp, -8
/* 1E2D4 8001D6D4 3C0E800C */  lui        $t6, %hi(D_800C4A4C)
/* 1E2D8 8001D6D8 91CE4A4C */  lbu        $t6, %lo(D_800C4A4C)($t6)
/* 1E2DC 8001D6DC 3C188013 */  lui        $t8, %hi(D_8012F790)
/* 1E2E0 8001D6E0 8F18F790 */  lw         $t8, %lo(D_8012F790)($t8)
/* 1E2E4 8001D6E4 39CF0001 */  xori       $t7, $t6, 1
/* 1E2E8 8001D6E8 31F900FF */  andi       $t9, $t7, 0xff
/* 1E2EC 8001D6EC 00194080 */  sll        $t0, $t9, 2
/* 1E2F0 8001D6F0 3C01800C */  lui        $at, %hi(D_800C4A4C)
/* 1E2F4 8001D6F4 01194023 */  subu       $t0, $t0, $t9
/* 1E2F8 8001D6F8 A02F4A4C */  sb         $t7, %lo(D_800C4A4C)($at)
/* 1E2FC 8001D6FC 000840C0 */  sll        $t0, $t0, 3
/* 1E300 8001D700 3C01801A */  lui        $at, %hi(D_8019B088)
/* 1E304 8001D704 01194021 */  addu       $t0, $t0, $t9
/* 1E308 8001D708 3C09801A */  lui        $t1, %hi(D_8019AA38)
/* 1E30C 8001D70C 2529AA38 */  addiu      $t1, $t1, %lo(D_8019AA38)
/* 1E310 8001D710 00084140 */  sll        $t0, $t0, 5
/* 1E314 8001D714 AC38B088 */  sw         $t8, %lo(D_8019B088)($at)
/* 1E318 8001D718 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1E31C 8001D71C 01095021 */  addu       $t2, $t0, $t1
/* 1E320 8001D720 AC2AF790 */  sw         $t2, %lo(D_8012F790)($at)
/* 1E324 8001D724 254B0008 */  addiu      $t3, $t2, 8
/* 1E328 8001D728 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1E32C 8001D72C AC2BF790 */  sw         $t3, %lo(D_8012F790)($at)
/* 1E330 8001D730 AFAA0004 */  sw         $t2, 4($sp)
/* 1E334 8001D734 3C0CDF00 */  lui        $t4, 0xdf00
/* 1E338 8001D738 AD4C0000 */  sw         $t4, ($t2)
/* 1E33C 8001D73C 8FAD0004 */  lw         $t5, 4($sp)
/* 1E340 8001D740 ADA00004 */  sw         $zero, 4($t5)
/* 1E344 8001D744 3C0E801A */  lui        $t6, %hi(D_8019B088)
/* 1E348 8001D748 8DCEB088 */  lw         $t6, %lo(D_8019B088)($t6)
/* 1E34C 8001D74C 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1E350 8001D750 AC2EF790 */  sw         $t6, %lo(D_8012F790)($at)
/* 1E354 8001D754 03E00008 */  jr         $ra
/* 1E358 8001D758 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8001D75C
/* 1E35C 8001D75C 27BDFFF8 */  addiu      $sp, $sp, -8
/* 1E360 8001D760 3C0E8013 */  lui        $t6, %hi(D_8012F790)
/* 1E364 8001D764 8DCEF790 */  lw         $t6, %lo(D_8012F790)($t6)
/* 1E368 8001D768 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1E36C 8001D76C 3C18DE00 */  lui        $t8, 0xde00
/* 1E370 8001D770 AFAE0004 */  sw         $t6, 4($sp)
/* 1E374 8001D774 8FB90004 */  lw         $t9, 4($sp)
/* 1E378 8001D778 25CF0008 */  addiu      $t7, $t6, 8
/* 1E37C 8001D77C AC2FF790 */  sw         $t7, %lo(D_8012F790)($at)
/* 1E380 8001D780 3C08800C */  lui        $t0, %hi(D_800C4A4C)
/* 1E384 8001D784 AF380000 */  sw         $t8, ($t9)
/* 1E388 8001D788 91084A4C */  lbu        $t0, %lo(D_800C4A4C)($t0)
/* 1E38C 8001D78C 8FAC0004 */  lw         $t4, 4($sp)
/* 1E390 8001D790 3C0A801A */  lui        $t2, 0x801a
/* 1E394 8001D794 00084880 */  sll        $t1, $t0, 2
/* 1E398 8001D798 01284823 */  subu       $t1, $t1, $t0
/* 1E39C 8001D79C 000948C0 */  sll        $t1, $t1, 3
/* 1E3A0 8001D7A0 01284821 */  addu       $t1, $t1, $t0
/* 1E3A4 8001D7A4 00094940 */  sll        $t1, $t1, 5
/* 1E3A8 8001D7A8 254AAA38 */  addiu      $t2, $t2, -0x55c8
/* 1E3AC 8001D7AC 012A5821 */  addu       $t3, $t1, $t2
/* 1E3B0 8001D7B0 AD8B0004 */  sw         $t3, 4($t4)
/* 1E3B4 8001D7B4 03E00008 */  jr         $ra
/* 1E3B8 8001D7B8 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8001D7BC
/* 1E3BC 8001D7BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E3C0 8001D7C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E3C4 8001D7C4 AFA40018 */  sw         $a0, 0x18($sp)
/* 1E3C8 8001D7C8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1E3CC 8001D7CC AFA60020 */  sw         $a2, 0x20($sp)
/* 1E3D0 8001D7D0 AFA70024 */  sw         $a3, 0x24($sp)
/* 1E3D4 8001D7D4 240E0001 */  addiu      $t6, $zero, 1
/* 1E3D8 8001D7D8 3C01800C */  lui        $at, %hi(D_800C4A50)
/* 1E3DC 8001D7DC 8FAF001C */  lw         $t7, 0x1c($sp)
/* 1E3E0 8001D7E0 AC2E4A50 */  sw         $t6, %lo(D_800C4A50)($at)
/* 1E3E4 8001D7E4 3C01801A */  lui        $at, %hi(D_8019B08C)
/* 1E3E8 8001D7E8 8FA40018 */  lw         $a0, 0x18($sp)
/* 1E3EC 8001D7EC 8FA50020 */  lw         $a1, 0x20($sp)
/* 1E3F0 8001D7F0 8FA60024 */  lw         $a2, 0x24($sp)
/* 1E3F4 8001D7F4 0C007626 */  jal        func_8001D898
/* 1E3F8 8001D7F8 AC2FB08C */   sw        $t7, %lo(D_8019B08C)($at)
/* 1E3FC 8001D7FC 3C01800C */  lui        $at, %hi(D_800C4A50)
/* 1E400 8001D800 AC204A50 */  sw         $zero, %lo(D_800C4A50)($at)
/* 1E404 8001D804 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E408 8001D808 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E40C 8001D80C 03E00008 */  jr         $ra
/* 1E410 8001D810 00000000 */   nop

glabel func_8001D814
/* 1E414 8001D814 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E418 8001D818 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E41C 8001D81C AFA40018 */  sw         $a0, 0x18($sp)
/* 1E420 8001D820 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1E424 8001D824 AFA60020 */  sw         $a2, 0x20($sp)
/* 1E428 8001D828 8FAE001C */  lw         $t6, 0x1c($sp)
/* 1E42C 8001D82C 3C01800C */  lui        $at, %hi(D_800C4A60)
/* 1E430 8001D830 8FB80018 */  lw         $t8, 0x18($sp)
/* 1E434 8001D834 AC2E4A60 */  sw         $t6, %lo(D_800C4A60)($at)
/* 1E438 8001D838 AC2E4A68 */  sw         $t6, 0x4a68($at)
/* 1E43C 8001D83C 3C01800C */  lui        $at, %hi(D_800C4A54)
/* 1E440 8001D840 240F0001 */  addiu      $t7, $zero, 1
/* 1E444 8001D844 AC2F4A54 */  sw         $t7, %lo(D_800C4A54)($at)
/* 1E448 8001D848 3C01801A */  lui        $at, %hi(D_8019B090)
/* 1E44C 8001D84C AC38B090 */  sw         $t8, %lo(D_8019B090)($at)
/* 1E450 8001D850 8F190014 */  lw         $t9, 0x14($t8)
/* 1E454 8001D854 3C01800C */  lui        $at, 0x800c
/* 1E458 8001D858 3C04800C */  lui        $a0, %hi(D_800C4A5C)
/* 1E45C 8001D85C 24844A5C */  addiu      $a0, $a0, %lo(D_800C4A5C)
/* 1E460 8001D860 8FA50020 */  lw         $a1, 0x20($sp)
/* 1E464 8001D864 00003025 */  or         $a2, $zero, $zero
/* 1E468 8001D868 0C007626 */  jal        func_8001D898
/* 1E46C 8001D86C AC394A58 */   sw        $t9, 0x4a58($at)
/* 1E470 8001D870 3C01800C */  lui        $at, %hi(D_800C4A54)
/* 1E474 8001D874 AC204A54 */  sw         $zero, %lo(D_800C4A54)($at)
/* 1E478 8001D878 3C01800C */  lui        $at, %hi(D_800C4A58)
/* 1E47C 8001D87C 3C02800C */  lui        $v0, %hi(D_800C4A60)
/* 1E480 8001D880 AC204A58 */  sw         $zero, %lo(D_800C4A58)($at)
/* 1E484 8001D884 8C424A60 */  lw         $v0, %lo(D_800C4A60)($v0)
/* 1E488 8001D888 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E48C 8001D88C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E490 8001D890 03E00008 */  jr         $ra
/* 1E494 8001D894 00000000 */   nop

glabel func_8001D898
/* 1E498 8001D898 27BDFED8 */  addiu      $sp, $sp, -0x128
/* 1E49C 8001D89C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1E4A0 8001D8A0 AFA40128 */  sw         $a0, 0x128($sp)
/* 1E4A4 8001D8A4 AFA5012C */  sw         $a1, 0x12c($sp)
/* 1E4A8 8001D8A8 AFA60130 */  sw         $a2, 0x130($sp)
/* 1E4AC 8001D8AC F7B40018 */  sdc1       $f20, 0x18($sp)
/* 1E4B0 8001D8B0 3C013F80 */  lui        $at, 0x3f80
/* 1E4B4 8001D8B4 3C0E800C */  lui        $t6, %hi(D_800C4A54)
/* 1E4B8 8001D8B8 8DCE4A54 */  lw         $t6, %lo(D_800C4A54)($t6)
/* 1E4BC 8001D8BC 44812000 */  mtc1       $at, $f4
/* 1E4C0 8001D8C0 44813000 */  mtc1       $at, $f6
/* 1E4C4 8001D8C4 44814000 */  mtc1       $at, $f8
/* 1E4C8 8001D8C8 AFA00120 */  sw         $zero, 0x120($sp)
/* 1E4CC 8001D8CC AFA0011C */  sw         $zero, 0x11c($sp)
/* 1E4D0 8001D8D0 AFA00110 */  sw         $zero, 0x110($sp)
/* 1E4D4 8001D8D4 AFA000B0 */  sw         $zero, 0xb0($sp)
/* 1E4D8 8001D8D8 AFA000AC */  sw         $zero, 0xac($sp)
/* 1E4DC 8001D8DC E7A400C4 */  swc1       $f4, 0xc4($sp)
/* 1E4E0 8001D8E0 E7A600C0 */  swc1       $f6, 0xc0($sp)
/* 1E4E4 8001D8E4 15C00056 */  bnez       $t6, .L8001DA40
/* 1E4E8 8001D8E8 E7A800BC */   swc1      $f8, 0xbc($sp)
/* 1E4EC 8001D8EC 8FAF0128 */  lw         $t7, 0x128($sp)
/* 1E4F0 8001D8F0 3C0A800C */  lui        $t2, 0x800c
/* 1E4F4 8001D8F4 3C0D800C */  lui        $t5, 0x800c
/* 1E4F8 8001D8F8 8DF80014 */  lw         $t8, 0x14($t7)
/* 1E4FC 8001D8FC AFB800A8 */  sw         $t8, 0xa8($sp)
/* 1E500 8001D900 8DF90000 */  lw         $t9, ($t7)
/* 1E504 8001D904 AFB90090 */  sw         $t9, 0x90($sp)
/* 1E508 8001D908 8FA80090 */  lw         $t0, 0x90($sp)
/* 1E50C 8001D90C 8FAB0090 */  lw         $t3, 0x90($sp)
/* 1E510 8001D910 00084880 */  sll        $t1, $t0, 2
/* 1E514 8001D914 01495021 */  addu       $t2, $t2, $t1
/* 1E518 8001D918 8D4A2520 */  lw         $t2, 0x2520($t2)
/* 1E51C 8001D91C 000B6080 */  sll        $t4, $t3, 2
/* 1E520 8001D920 01AC6821 */  addu       $t5, $t5, $t4
/* 1E524 8001D924 8DAD24C4 */  lw         $t5, 0x24c4($t5)
/* 1E528 8001D928 AFAA008C */  sw         $t2, 0x8c($sp)
/* 1E52C 8001D92C 8FAE008C */  lw         $t6, 0x8c($sp)
/* 1E530 8001D930 AFAD0088 */  sw         $t5, 0x88($sp)
/* 1E534 8001D934 8FB9008C */  lw         $t9, 0x8c($sp)
/* 1E538 8001D938 8DD80000 */  lw         $t8, ($t6)
/* 1E53C 8001D93C 8FA90088 */  lw         $t1, 0x88($sp)
/* 1E540 8001D940 8FAE0088 */  lw         $t6, 0x88($sp)
/* 1E544 8001D944 AFB800A4 */  sw         $t8, 0xa4($sp)
/* 1E548 8001D948 8F280004 */  lw         $t0, 4($t9)
/* 1E54C 8001D94C AFA8009C */  sw         $t0, 0x9c($sp)
/* 1E550 8001D950 8DEA0008 */  lw         $t2, 8($t7)
/* 1E554 8001D954 000A5900 */  sll        $t3, $t2, 4
/* 1E558 8001D958 012B6021 */  addu       $t4, $t1, $t3
/* 1E55C 8001D95C 8D8D0004 */  lw         $t5, 4($t4)
/* 1E560 8001D960 8FA90088 */  lw         $t1, 0x88($sp)
/* 1E564 8001D964 AFAD00A0 */  sw         $t5, 0xa0($sp)
/* 1E568 8001D968 8DF80008 */  lw         $t8, 8($t7)
/* 1E56C 8001D96C 0018C900 */  sll        $t9, $t8, 4
/* 1E570 8001D970 01D94021 */  addu       $t0, $t6, $t9
/* 1E574 8001D974 8D0A0008 */  lw         $t2, 8($t0)
/* 1E578 8001D978 AFAA0098 */  sw         $t2, 0x98($sp)
/* 1E57C 8001D97C 8DEB0008 */  lw         $t3, 8($t7)
/* 1E580 8001D980 000B6100 */  sll        $t4, $t3, 4
/* 1E584 8001D984 012C6821 */  addu       $t5, $t1, $t4
/* 1E588 8001D988 8DB8000C */  lw         $t8, 0xc($t5)
/* 1E58C 8001D98C 8FA9009C */  lw         $t1, 0x9c($sp)
/* 1E590 8001D990 AFB80094 */  sw         $t8, 0x94($sp)
/* 1E594 8001D994 8FB90094 */  lw         $t9, 0x94($sp)
/* 1E598 8001D998 8DEE0010 */  lw         $t6, 0x10($t7)
/* 1E59C 8001D99C 8FB80094 */  lw         $t8, 0x94($sp)
/* 1E5A0 8001D9A0 9728000C */  lhu        $t0, 0xc($t9)
/* 1E5A4 8001D9A4 01C80019 */  multu      $t6, $t0
/* 1E5A8 8001D9A8 00005012 */  mflo       $t2
/* 1E5AC 8001D9AC 000A5880 */  sll        $t3, $t2, 2
/* 1E5B0 8001D9B0 012B6021 */  addu       $t4, $t1, $t3
/* 1E5B4 8001D9B4 AFAC009C */  sw         $t4, 0x9c($sp)
/* 1E5B8 8001D9B8 8DED0038 */  lw         $t5, 0x38($t7)
/* 1E5BC 8001D9BC AF0D0000 */  sw         $t5, ($t8)
/* 1E5C0 8001D9C0 8FB90128 */  lw         $t9, 0x128($sp)
/* 1E5C4 8001D9C4 8FAE0094 */  lw         $t6, 0x94($sp)
/* 1E5C8 8001D9C8 C72A003C */  lwc1       $f10, 0x3c($t9)
/* 1E5CC 8001D9CC E5CA0004 */  swc1       $f10, 4($t6)
/* 1E5D0 8001D9D0 8FA80128 */  lw         $t0, 0x128($sp)
/* 1E5D4 8001D9D4 8FAA0094 */  lw         $t2, 0x94($sp)
/* 1E5D8 8001D9D8 C5100040 */  lwc1       $f16, 0x40($t0)
/* 1E5DC 8001D9DC E5500020 */  swc1       $f16, 0x20($t2)
/* 1E5E0 8001D9E0 8FA90128 */  lw         $t1, 0x128($sp)
/* 1E5E4 8001D9E4 8FAB0094 */  lw         $t3, 0x94($sp)
/* 1E5E8 8001D9E8 C5320044 */  lwc1       $f18, 0x44($t1)
/* 1E5EC 8001D9EC 3C09800C */  lui        $t1, 0x800c
/* 1E5F0 8001D9F0 E5720024 */  swc1       $f18, 0x24($t3)
/* 1E5F4 8001D9F4 8FAC0128 */  lw         $t4, 0x128($sp)
/* 1E5F8 8001D9F8 8FAF0094 */  lw         $t7, 0x94($sp)
/* 1E5FC 8001D9FC C5840048 */  lwc1       $f4, 0x48($t4)
/* 1E600 8001DA00 E5E40028 */  swc1       $f4, 0x28($t7)
/* 1E604 8001DA04 8FAD0128 */  lw         $t5, 0x128($sp)
/* 1E608 8001DA08 8FB90094 */  lw         $t9, 0x94($sp)
/* 1E60C 8001DA0C 95B8004C */  lhu        $t8, 0x4c($t5)
/* 1E610 8001DA10 A7380008 */  sh         $t8, 8($t9)
/* 1E614 8001DA14 8FAE0128 */  lw         $t6, 0x128($sp)
/* 1E618 8001DA18 8FAA0094 */  lw         $t2, 0x94($sp)
/* 1E61C 8001DA1C 95C8004E */  lhu        $t0, 0x4e($t6)
/* 1E620 8001DA20 A548000E */  sh         $t0, 0xe($t2)
/* 1E624 8001DA24 8D294A50 */  lw         $t1, 0x4a50($t1)
/* 1E628 8001DA28 11200013 */  beqz       $t1, .L8001DA78
/* 1E62C 8001DA2C 00000000 */   nop
/* 1E630 8001DA30 3C0B801A */  lui        $t3, %hi(D_8019B08C)
/* 1E634 8001DA34 8D6BB08C */  lw         $t3, %lo(D_8019B08C)($t3)
/* 1E638 8001DA38 1000000F */  b          .L8001DA78
/* 1E63C 8001DA3C AFAB0094 */   sw        $t3, 0x94($sp)
.L8001DA40:
/* 1E640 8001DA40 3C0C801A */  lui        $t4, %hi(D_8019B090)
/* 1E644 8001DA44 8D8CB090 */  lw         $t4, %lo(D_8019B090)($t4)
/* 1E648 8001DA48 8D8F0000 */  lw         $t7, ($t4)
/* 1E64C 8001DA4C AFAF00A8 */  sw         $t7, 0xa8($sp)
/* 1E650 8001DA50 8D8D0004 */  lw         $t5, 4($t4)
/* 1E654 8001DA54 AFAD00A4 */  sw         $t5, 0xa4($sp)
/* 1E658 8001DA58 8D980008 */  lw         $t8, 8($t4)
/* 1E65C 8001DA5C AFB800A0 */  sw         $t8, 0xa0($sp)
/* 1E660 8001DA60 8D99000C */  lw         $t9, 0xc($t4)
/* 1E664 8001DA64 AFB9009C */  sw         $t9, 0x9c($sp)
/* 1E668 8001DA68 8D8E0010 */  lw         $t6, 0x10($t4)
/* 1E66C 8001DA6C AFAE0098 */  sw         $t6, 0x98($sp)
/* 1E670 8001DA70 8D880018 */  lw         $t0, 0x18($t4)
/* 1E674 8001DA74 AFA80094 */  sw         $t0, 0x94($sp)
.L8001DA78:
/* 1E678 8001DA78 8FAA0090 */  lw         $t2, 0x90($sp)
/* 1E67C 8001DA7C 15400009 */  bnez       $t2, .L8001DAA4
/* 1E680 8001DA80 00000000 */   nop
/* 1E684 8001DA84 8FA90128 */  lw         $t1, 0x128($sp)
/* 1E688 8001DA88 27A500A0 */  addiu      $a1, $sp, 0xa0
/* 1E68C 8001DA8C 27A60098 */  addiu      $a2, $sp, 0x98
/* 1E690 8001DA90 0C00757C */  jal        func_8001D5F0
/* 1E694 8001DA94 8D240008 */   lw        $a0, 8($t1)
/* 1E698 8001DA98 8FAB00A0 */  lw         $t3, 0xa0($sp)
/* 1E69C 8001DA9C 3C01801A */  lui        $at, %hi(D_80199630)
/* 1E6A0 8001DAA0 AC2B9630 */  sw         $t3, %lo(D_80199630)($at)
.L8001DAA4:
/* 1E6A4 8001DAA4 3C0F8013 */  lui        $t7, %hi(D_8012F794)
/* 1E6A8 8001DAA8 8DEFF794 */  lw         $t7, %lo(D_8012F794)($t7)
/* 1E6AC 8001DAAC 8FAD0128 */  lw         $t5, 0x128($sp)
/* 1E6B0 8001DAB0 ADAF0018 */  sw         $t7, 0x18($t5)
/* 1E6B4 8001DAB4 8FB90094 */  lw         $t9, 0x94($sp)
/* 1E6B8 8001DAB8 8FB800A0 */  lw         $t8, 0xa0($sp)
/* 1E6BC 8001DABC 8F2E0000 */  lw         $t6, ($t9)
/* 1E6C0 8001DAC0 000E6080 */  sll        $t4, $t6, 2
/* 1E6C4 8001DAC4 018E6021 */  addu       $t4, $t4, $t6
/* 1E6C8 8001DAC8 000C6080 */  sll        $t4, $t4, 2
/* 1E6CC 8001DACC 030C4021 */  addu       $t0, $t8, $t4
/* 1E6D0 8001DAD0 950A0004 */  lhu        $t2, 4($t0)
/* 1E6D4 8001DAD4 31490004 */  andi       $t1, $t2, 4
/* 1E6D8 8001DAD8 11200003 */  beqz       $t1, .L8001DAE8
/* 1E6DC 8001DADC 00000000 */   nop
/* 1E6E0 8001DAE0 240B0001 */  addiu      $t3, $zero, 1
/* 1E6E4 8001DAE4 A72B000E */  sh         $t3, 0xe($t9)
.L8001DAE8:
/* 1E6E8 8001DAE8 8FAF0094 */  lw         $t7, 0x94($sp)
/* 1E6EC 8001DAEC 24010001 */  addiu      $at, $zero, 1
/* 1E6F0 8001DAF0 95ED000E */  lhu        $t5, 0xe($t7)
/* 1E6F4 8001DAF4 11A10006 */  beq        $t5, $at, .L8001DB10
/* 1E6F8 8001DAF8 00000000 */   nop
/* 1E6FC 8001DAFC 8FAE0128 */  lw         $t6, 0x128($sp)
/* 1E700 8001DB00 24010001 */  addiu      $at, $zero, 1
/* 1E704 8001DB04 8DD8000C */  lw         $t8, 0xc($t6)
/* 1E708 8001DB08 17010034 */  bne        $t8, $at, .L8001DBDC
/* 1E70C 8001DB0C 00000000 */   nop
.L8001DB10:
/* 1E710 8001DB10 8FAC0094 */  lw         $t4, 0x94($sp)
/* 1E714 8001DB14 9588000A */  lhu        $t0, 0xa($t4)
/* 1E718 8001DB18 250AFFFF */  addiu      $t2, $t0, -1
/* 1E71C 8001DB1C AD8A0000 */  sw         $t2, ($t4)
/* 1E720 8001DB20 8FAB0094 */  lw         $t3, 0x94($sp)
/* 1E724 8001DB24 8FA900A0 */  lw         $t1, 0xa0($sp)
/* 1E728 8001DB28 8D790000 */  lw         $t9, ($t3)
/* 1E72C 8001DB2C 00197880 */  sll        $t7, $t9, 2
/* 1E730 8001DB30 01F97821 */  addu       $t7, $t7, $t9
/* 1E734 8001DB34 000F7880 */  sll        $t7, $t7, 2
/* 1E738 8001DB38 012F6821 */  addu       $t5, $t1, $t7
/* 1E73C 8001DB3C 8DAE0014 */  lw         $t6, 0x14($t5)
/* 1E740 8001DB40 8DB80000 */  lw         $t8, ($t5)
/* 1E744 8001DB44 24190001 */  addiu      $t9, $zero, 1
/* 1E748 8001DB48 01D84023 */  subu       $t0, $t6, $t8
/* 1E74C 8001DB4C 44883000 */  mtc1       $t0, $f6
/* 1E750 8001DB50 00000000 */  nop
/* 1E754 8001DB54 46803220 */  cvt.s.w    $f8, $f6
/* 1E758 8001DB58 E5680004 */  swc1       $f8, 4($t3)
/* 1E75C 8001DB5C 8FAA0094 */  lw         $t2, 0x94($sp)
/* 1E760 8001DB60 A540000E */  sh         $zero, 0xe($t2)
/* 1E764 8001DB64 8FAC0128 */  lw         $t4, 0x128($sp)
/* 1E768 8001DB68 AD80000C */  sw         $zero, 0xc($t4)
/* 1E76C 8001DB6C 8FAF0094 */  lw         $t7, 0x94($sp)
/* 1E770 8001DB70 AFB900AC */  sw         $t9, 0xac($sp)
/* 1E774 8001DB74 8FA900A0 */  lw         $t1, 0xa0($sp)
/* 1E778 8001DB78 95ED000A */  lhu        $t5, 0xa($t7)
/* 1E77C 8001DB7C 000D7080 */  sll        $t6, $t5, 2
/* 1E780 8001DB80 01CD7021 */  addu       $t6, $t6, $t5
/* 1E784 8001DB84 000E7080 */  sll        $t6, $t6, 2
/* 1E788 8001DB88 012EC021 */  addu       $t8, $t1, $t6
/* 1E78C 8001DB8C C70A0008 */  lwc1       $f10, 8($t8)
/* 1E790 8001DB90 E5EA0020 */  swc1       $f10, 0x20($t7)
/* 1E794 8001DB94 8FAB0094 */  lw         $t3, 0x94($sp)
/* 1E798 8001DB98 8FA800A0 */  lw         $t0, 0xa0($sp)
/* 1E79C 8001DB9C 956A000A */  lhu        $t2, 0xa($t3)
/* 1E7A0 8001DBA0 000A6080 */  sll        $t4, $t2, 2
/* 1E7A4 8001DBA4 018A6021 */  addu       $t4, $t4, $t2
/* 1E7A8 8001DBA8 000C6080 */  sll        $t4, $t4, 2
/* 1E7AC 8001DBAC 010CC821 */  addu       $t9, $t0, $t4
/* 1E7B0 8001DBB0 C730000C */  lwc1       $f16, 0xc($t9)
/* 1E7B4 8001DBB4 E5700024 */  swc1       $f16, 0x24($t3)
/* 1E7B8 8001DBB8 8FA90094 */  lw         $t1, 0x94($sp)
/* 1E7BC 8001DBBC 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* 1E7C0 8001DBC0 952E000A */  lhu        $t6, 0xa($t1)
/* 1E7C4 8001DBC4 000EC080 */  sll        $t8, $t6, 2
/* 1E7C8 8001DBC8 030EC021 */  addu       $t8, $t8, $t6
/* 1E7CC 8001DBCC 0018C080 */  sll        $t8, $t8, 2
/* 1E7D0 8001DBD0 01B87821 */  addu       $t7, $t5, $t8
/* 1E7D4 8001DBD4 C5F20010 */  lwc1       $f18, 0x10($t7)
/* 1E7D8 8001DBD8 E5320028 */  swc1       $f18, 0x28($t1)
.L8001DBDC:
/* 1E7DC 8001DBDC 8FA80094 */  lw         $t0, 0x94($sp)
/* 1E7E0 8001DBE0 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 1E7E4 8001DBE4 8D0C0000 */  lw         $t4, ($t0)
/* 1E7E8 8001DBE8 000CC880 */  sll        $t9, $t4, 2
/* 1E7EC 8001DBEC 032CC821 */  addu       $t9, $t9, $t4
/* 1E7F0 8001DBF0 0019C880 */  sll        $t9, $t9, 2
/* 1E7F4 8001DBF4 01595821 */  addu       $t3, $t2, $t9
/* 1E7F8 8001DBF8 956E0004 */  lhu        $t6, 4($t3)
/* 1E7FC 8001DBFC 31CD0008 */  andi       $t5, $t6, 8
/* 1E800 8001DC00 11A00009 */  beqz       $t5, .L8001DC28
/* 1E804 8001DC04 00000000 */   nop
/* 1E808 8001DC08 91780006 */  lbu        $t8, 6($t3)
/* 1E80C 8001DC0C 3C19800D */  lui        $t9, %hi(D_800CAB20)
/* 1E810 8001DC10 00187880 */  sll        $t7, $t8, 2
/* 1E814 8001DC14 032FC821 */  addu       $t9, $t9, $t7
/* 1E818 8001DC18 8F39AB20 */  lw         $t9, %lo(D_800CAB20)($t9)
/* 1E81C 8001DC1C AFB80080 */  sw         $t8, 0x80($sp)
/* 1E820 8001DC20 0320F809 */  jalr       $t9
/* 1E824 8001DC24 00000000 */   nop
.L8001DC28:
/* 1E828 8001DC28 8FA90094 */  lw         $t1, 0x94($sp)
/* 1E82C 8001DC2C 3C0C8013 */  lui        $t4, %hi(D_8012F794)
/* 1E830 8001DC30 8D8CF794 */  lw         $t4, %lo(D_8012F794)($t4)
/* 1E834 8001DC34 8D280000 */  lw         $t0, ($t1)
/* 1E838 8001DC38 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 1E83C 8001DC3C AFAC010C */  sw         $t4, 0x10c($sp)
/* 1E840 8001DC40 AFA800B4 */  sw         $t0, 0xb4($sp)
/* 1E844 8001DC44 8D2E0000 */  lw         $t6, ($t1)
/* 1E848 8001DC48 C7A4012C */  lwc1       $f4, 0x12c($sp)
/* 1E84C 8001DC4C 3C01800D */  lui        $at, %hi(D_800CE010)
/* 1E850 8001DC50 000E6880 */  sll        $t5, $t6, 2
/* 1E854 8001DC54 01AE6821 */  addu       $t5, $t5, $t6
/* 1E858 8001DC58 D428E010 */  ldc1       $f8, %lo(D_800CE010)($at)
/* 1E85C 8001DC5C 000D6880 */  sll        $t5, $t5, 2
/* 1E860 8001DC60 460021A1 */  cvt.d.s    $f6, $f4
/* 1E864 8001DC64 014D5821 */  addu       $t3, $t2, $t5
/* 1E868 8001DC68 4628303C */  c.lt.d     $f6, $f8
/* 1E86C 8001DC6C 8D780014 */  lw         $t8, 0x14($t3)
/* 1E870 8001DC70 8D6F0000 */  lw         $t7, ($t3)
/* 1E874 8001DC74 030FC823 */  subu       $t9, $t8, $t7
/* 1E878 8001DC78 45000005 */  bc1f       .L8001DC90
/* 1E87C 8001DC7C AFB90114 */   sw        $t9, 0x114($sp)
/* 1E880 8001DC80 3C013F80 */  lui        $at, 0x3f80
/* 1E884 8001DC84 44815000 */  mtc1       $at, $f10
/* 1E888 8001DC88 00000000 */  nop
/* 1E88C 8001DC8C E7AA012C */  swc1       $f10, 0x12c($sp)
.L8001DC90:
/* 1E890 8001DC90 8FA80094 */  lw         $t0, 0x94($sp)
/* 1E894 8001DC94 C7B2012C */  lwc1       $f18, 0x12c($sp)
/* 1E898 8001DC98 C5100010 */  lwc1       $f16, 0x10($t0)
/* 1E89C 8001DC9C C5060004 */  lwc1       $f6, 4($t0)
/* 1E8A0 8001DCA0 46128103 */  div.s      $f4, $f16, $f18
/* 1E8A4 8001DCA4 46043200 */  add.s      $f8, $f6, $f4
/* 1E8A8 8001DCA8 E5080004 */  swc1       $f8, 4($t0)
/* 1E8AC 8001DCAC 8FA90114 */  lw         $t1, 0x114($sp)
/* 1E8B0 8001DCB0 8FAC0094 */  lw         $t4, 0x94($sp)
/* 1E8B4 8001DCB4 44898000 */  mtc1       $t1, $f16
/* 1E8B8 8001DCB8 C58A0004 */  lwc1       $f10, 4($t4)
/* 1E8BC 8001DCBC 468084A0 */  cvt.s.w    $f18, $f16
/* 1E8C0 8001DCC0 460A903C */  c.lt.s     $f18, $f10
/* 1E8C4 8001DCC4 00000000 */  nop
/* 1E8C8 8001DCC8 45000067 */  bc1f       .L8001DE68
/* 1E8CC 8001DCCC 00000000 */   nop
/* 1E8D0 8001DCD0 8D8A0000 */  lw         $t2, ($t4)
/* 1E8D4 8001DCD4 958E000A */  lhu        $t6, 0xa($t4)
/* 1E8D8 8001DCD8 254D0001 */  addiu      $t5, $t2, 1
/* 1E8DC 8001DCDC 01AE082B */  sltu       $at, $t5, $t6
/* 1E8E0 8001DCE0 10200027 */  beqz       $at, .L8001DD80
/* 1E8E4 8001DCE4 00000000 */   nop
/* 1E8E8 8001DCE8 958B000C */  lhu        $t3, 0xc($t4)
/* 1E8EC 8001DCEC 8FB90098 */  lw         $t9, 0x98($sp)
/* 1E8F0 8001DCF0 AFA0011C */  sw         $zero, 0x11c($sp)
/* 1E8F4 8001DCF4 014B0019 */  multu      $t2, $t3
/* 1E8F8 8001DCF8 0000C012 */  mflo       $t8
/* 1E8FC 8001DCFC 00187900 */  sll        $t7, $t8, 4
/* 1E900 8001DD00 01F94021 */  addu       $t0, $t7, $t9
/* 1E904 8001DD04 AFA80124 */  sw         $t0, 0x124($sp)
/* 1E908 8001DD08 9589000C */  lhu        $t1, 0xc($t4)
/* 1E90C 8001DD0C 1920001C */  blez       $t1, .L8001DD80
/* 1E910 8001DD10 00000000 */   nop
.L8001DD14:
/* 1E914 8001DD14 8FAD011C */  lw         $t5, 0x11c($sp)
/* 1E918 8001DD18 8FAE0124 */  lw         $t6, 0x124($sp)
/* 1E91C 8001DD1C 27A400C8 */  addiu      $a0, $sp, 0xc8
/* 1E920 8001DD20 000D5100 */  sll        $t2, $t5, 4
/* 1E924 8001DD24 01CA5821 */  addu       $t3, $t6, $t2
/* 1E928 8001DD28 C566000C */  lwc1       $f6, 0xc($t3)
/* 1E92C 8001DD2C 8D650000 */  lw         $a1, ($t3)
/* 1E930 8001DD30 8D660004 */  lw         $a2, 4($t3)
/* 1E934 8001DD34 8D670008 */  lw         $a3, 8($t3)
/* 1E938 8001DD38 0C02BCA9 */  jal        func_800AF2A4
/* 1E93C 8001DD3C E7A60010 */   swc1      $f6, 0x10($sp)
/* 1E940 8001DD40 8FB8011C */  lw         $t8, 0x11c($sp)
/* 1E944 8001DD44 8FB900A8 */  lw         $t9, 0xa8($sp)
/* 1E948 8001DD48 27A500C8 */  addiu      $a1, $sp, 0xc8
/* 1E94C 8001DD4C 00187980 */  sll        $t7, $t8, 6
/* 1E950 8001DD50 01F94021 */  addu       $t0, $t7, $t9
/* 1E954 8001DD54 01002025 */  or         $a0, $t0, $zero
/* 1E958 8001DD58 0C02B7DC */  jal        func_800ADF70
/* 1E95C 8001DD5C 01003025 */   or        $a2, $t0, $zero
/* 1E960 8001DD60 8FAC011C */  lw         $t4, 0x11c($sp)
/* 1E964 8001DD64 8FAD0094 */  lw         $t5, 0x94($sp)
/* 1E968 8001DD68 25890001 */  addiu      $t1, $t4, 1
/* 1E96C 8001DD6C AFA9011C */  sw         $t1, 0x11c($sp)
/* 1E970 8001DD70 95AE000C */  lhu        $t6, 0xc($t5)
/* 1E974 8001DD74 012E082A */  slt        $at, $t1, $t6
/* 1E978 8001DD78 1420FFE6 */  bnez       $at, .L8001DD14
/* 1E97C 8001DD7C 00000000 */   nop
.L8001DD80:
/* 1E980 8001DD80 8FAA0094 */  lw         $t2, 0x94($sp)
/* 1E984 8001DD84 8D4B0000 */  lw         $t3, ($t2)
/* 1E988 8001DD88 25780001 */  addiu      $t8, $t3, 1
/* 1E98C 8001DD8C AD580000 */  sw         $t8, ($t2)
/* 1E990 8001DD90 8FB90114 */  lw         $t9, 0x114($sp)
/* 1E994 8001DD94 8FAF0094 */  lw         $t7, 0x94($sp)
/* 1E998 8001DD98 44994000 */  mtc1       $t9, $f8
/* 1E99C 8001DD9C C5E40004 */  lwc1       $f4, 4($t7)
/* 1E9A0 8001DDA0 46804420 */  cvt.s.w    $f16, $f8
/* 1E9A4 8001DDA4 46102281 */  sub.s      $f10, $f4, $f16
/* 1E9A8 8001DDA8 E5EA0004 */  swc1       $f10, 4($t7)
/* 1E9AC 8001DDAC 8FA80094 */  lw         $t0, 0x94($sp)
/* 1E9B0 8001DDB0 8D0C0000 */  lw         $t4, ($t0)
/* 1E9B4 8001DDB4 950D000A */  lhu        $t5, 0xa($t0)
/* 1E9B8 8001DDB8 018D082B */  sltu       $at, $t4, $t5
/* 1E9BC 8001DDBC 1420001F */  bnez       $at, .L8001DE3C
/* 1E9C0 8001DDC0 00000000 */   nop
/* 1E9C4 8001DDC4 8FA90130 */  lw         $t1, 0x130($sp)
/* 1E9C8 8001DDC8 11200011 */  beqz       $t1, .L8001DE10
/* 1E9CC 8001DDCC 00000000 */   nop
/* 1E9D0 8001DDD0 8FAE00AC */  lw         $t6, 0xac($sp)
/* 1E9D4 8001DDD4 15C0000E */  bnez       $t6, .L8001DE10
/* 1E9D8 8001DDD8 00000000 */   nop
/* 1E9DC 8001DDDC 8FAB0114 */  lw         $t3, 0x114($sp)
/* 1E9E0 8001DDE0 448B9000 */  mtc1       $t3, $f18
/* 1E9E4 8001DDE4 00000000 */  nop
/* 1E9E8 8001DDE8 468091A0 */  cvt.s.w    $f6, $f18
/* 1E9EC 8001DDEC E5060004 */  swc1       $f6, 4($t0)
/* 1E9F0 8001DDF0 8FB80094 */  lw         $t8, 0x94($sp)
/* 1E9F4 8001DDF4 970A000A */  lhu        $t2, 0xa($t8)
/* 1E9F8 8001DDF8 2559FFFF */  addiu      $t9, $t2, -1
/* 1E9FC 8001DDFC AF190000 */  sw         $t9, ($t8)
/* 1EA00 8001DE00 8FAF00AC */  lw         $t7, 0xac($sp)
/* 1EA04 8001DE04 39EC0001 */  xori       $t4, $t7, 1
/* 1EA08 8001DE08 1000000C */  b          .L8001DE3C
/* 1EA0C 8001DE0C AFAC00AC */   sw        $t4, 0xac($sp)
.L8001DE10:
/* 1EA10 8001DE10 8FAD00AC */  lw         $t5, 0xac($sp)
/* 1EA14 8001DE14 8FAE0094 */  lw         $t6, 0x94($sp)
/* 1EA18 8001DE18 8FA400A8 */  lw         $a0, 0xa8($sp)
/* 1EA1C 8001DE1C 39A90001 */  xori       $t1, $t5, 1
/* 1EA20 8001DE20 AFA900AC */  sw         $t1, 0xac($sp)
/* 1EA24 8001DE24 8FA50098 */  lw         $a1, 0x98($sp)
/* 1EA28 8001DE28 0C0079F7 */  jal        func_8001E7DC
/* 1EA2C 8001DE2C 95C6000C */   lhu       $a2, 0xc($t6)
/* 1EA30 8001DE30 8FA80094 */  lw         $t0, 0x94($sp)
/* 1EA34 8001DE34 240B0001 */  addiu      $t3, $zero, 1
/* 1EA38 8001DE38 AD0B0000 */  sw         $t3, ($t0)
.L8001DE3C:
/* 1EA3C 8001DE3C 8FB90094 */  lw         $t9, 0x94($sp)
/* 1EA40 8001DE40 8FAA00A0 */  lw         $t2, 0xa0($sp)
/* 1EA44 8001DE44 8F380000 */  lw         $t8, ($t9)
/* 1EA48 8001DE48 00187880 */  sll        $t7, $t8, 2
/* 1EA4C 8001DE4C 01F87821 */  addu       $t7, $t7, $t8
/* 1EA50 8001DE50 000F7880 */  sll        $t7, $t7, 2
/* 1EA54 8001DE54 014F6021 */  addu       $t4, $t2, $t7
/* 1EA58 8001DE58 8D8D0014 */  lw         $t5, 0x14($t4)
/* 1EA5C 8001DE5C 8D890000 */  lw         $t1, ($t4)
/* 1EA60 8001DE60 01A97023 */  subu       $t6, $t5, $t1
/* 1EA64 8001DE64 AFAE0114 */  sw         $t6, 0x114($sp)
.L8001DE68:
/* 1EA68 8001DE68 8FAB0094 */  lw         $t3, 0x94($sp)
/* 1EA6C 8001DE6C 8FAD0114 */  lw         $t5, 0x114($sp)
/* 1EA70 8001DE70 8FAF0098 */  lw         $t7, 0x98($sp)
/* 1EA74 8001DE74 8D680000 */  lw         $t0, ($t3)
/* 1EA78 8001DE78 9579000C */  lhu        $t9, 0xc($t3)
/* 1EA7C 8001DE7C 448D2000 */  mtc1       $t5, $f4
/* 1EA80 8001DE80 8FA900A0 */  lw         $t1, 0xa0($sp)
/* 1EA84 8001DE84 01190019 */  multu      $t0, $t9
/* 1EA88 8001DE88 46802420 */  cvt.s.w    $f16, $f4
/* 1EA8C 8001DE8C 3C01801A */  lui        $at, 0x801a
/* 1EA90 8001DE90 0000C012 */  mflo       $t8
/* 1EA94 8001DE94 00185100 */  sll        $t2, $t8, 4
/* 1EA98 8001DE98 014F6021 */  addu       $t4, $t2, $t7
/* 1EA9C 8001DE9C AFAC0124 */  sw         $t4, 0x124($sp)
/* 1EAA0 8001DEA0 C5680004 */  lwc1       $f8, 4($t3)
/* 1EAA4 8001DEA4 46104283 */  div.s      $f10, $f8, $f16
/* 1EAA8 8001DEA8 E7AA00C0 */  swc1       $f10, 0xc0($sp)
/* 1EAAC 8001DEAC 8D6E0000 */  lw         $t6, ($t3)
/* 1EAB0 8001DEB0 000E4080 */  sll        $t0, $t6, 2
/* 1EAB4 8001DEB4 010E4021 */  addu       $t0, $t0, $t6
/* 1EAB8 8001DEB8 00084080 */  sll        $t0, $t0, 2
/* 1EABC 8001DEBC 0128C821 */  addu       $t9, $t1, $t0
/* 1EAC0 8001DEC0 0128C021 */  addu       $t8, $t1, $t0
/* 1EAC4 8001DEC4 C7060008 */  lwc1       $f6, 8($t8)
/* 1EAC8 8001DEC8 C732001C */  lwc1       $f18, 0x1c($t9)
/* 1EACC 8001DECC 01285021 */  addu       $t2, $t1, $t0
/* 1EAD0 8001DED0 C5500008 */  lwc1       $f16, 8($t2)
/* 1EAD4 8001DED4 46069101 */  sub.s      $f4, $f18, $f6
/* 1EAD8 8001DED8 C5720014 */  lwc1       $f18, 0x14($t3)
/* 1EADC 8001DEDC 460A2202 */  mul.s      $f8, $f4, $f10
/* 1EAE0 8001DEE0 46109180 */  add.s      $f6, $f18, $f16
/* 1EAE4 8001DEE4 46064100 */  add.s      $f4, $f8, $f6
/* 1EAE8 8001DEE8 E424B078 */  swc1       $f4, -0x4f88($at)
/* 1EAEC 8001DEEC 8D6F0000 */  lw         $t7, ($t3)
/* 1EAF0 8001DEF0 8D6E0000 */  lw         $t6, ($t3)
/* 1EAF4 8001DEF4 8D680000 */  lw         $t0, ($t3)
/* 1EAF8 8001DEF8 000F6080 */  sll        $t4, $t7, 2
/* 1EAFC 8001DEFC 000EC880 */  sll        $t9, $t6, 2
/* 1EB00 8001DF00 018F6021 */  addu       $t4, $t4, $t7
/* 1EB04 8001DF04 032EC821 */  addu       $t9, $t9, $t6
/* 1EB08 8001DF08 0019C880 */  sll        $t9, $t9, 2
/* 1EB0C 8001DF0C 000C6080 */  sll        $t4, $t4, 2
/* 1EB10 8001DF10 012C6821 */  addu       $t5, $t1, $t4
/* 1EB14 8001DF14 0139C021 */  addu       $t8, $t1, $t9
/* 1EB18 8001DF18 C710000C */  lwc1       $f16, 0xc($t8)
/* 1EB1C 8001DF1C C5B20020 */  lwc1       $f18, 0x20($t5)
/* 1EB20 8001DF20 00085080 */  sll        $t2, $t0, 2
/* 1EB24 8001DF24 01485021 */  addu       $t2, $t2, $t0
/* 1EB28 8001DF28 46109201 */  sub.s      $f8, $f18, $f16
/* 1EB2C 8001DF2C 000A5080 */  sll        $t2, $t2, 2
/* 1EB30 8001DF30 012A7821 */  addu       $t7, $t1, $t2
/* 1EB34 8001DF34 C5F2000C */  lwc1       $f18, 0xc($t7)
/* 1EB38 8001DF38 460A4182 */  mul.s      $f6, $f8, $f10
/* 1EB3C 8001DF3C C5700018 */  lwc1       $f16, 0x18($t3)
/* 1EB40 8001DF40 3C01801A */  lui        $at, %hi(D_8019B07C)
/* 1EB44 8001DF44 46128200 */  add.s      $f8, $f16, $f18
/* 1EB48 8001DF48 46083400 */  add.s      $f16, $f6, $f8
/* 1EB4C 8001DF4C E430B07C */  swc1       $f16, %lo(D_8019B07C)($at)
/* 1EB50 8001DF50 8D6C0000 */  lw         $t4, ($t3)
/* 1EB54 8001DF54 8D790000 */  lw         $t9, ($t3)
/* 1EB58 8001DF58 8D6A0000 */  lw         $t2, ($t3)
/* 1EB5C 8001DF5C 000C6880 */  sll        $t5, $t4, 2
/* 1EB60 8001DF60 0019C080 */  sll        $t8, $t9, 2
/* 1EB64 8001DF64 01AC6821 */  addu       $t5, $t5, $t4
/* 1EB68 8001DF68 0319C021 */  addu       $t8, $t8, $t9
/* 1EB6C 8001DF6C 0018C080 */  sll        $t8, $t8, 2
/* 1EB70 8001DF70 000D6880 */  sll        $t5, $t5, 2
/* 1EB74 8001DF74 012D7021 */  addu       $t6, $t1, $t5
/* 1EB78 8001DF78 01384021 */  addu       $t0, $t1, $t8
/* 1EB7C 8001DF7C C5060010 */  lwc1       $f6, 0x10($t0)
/* 1EB80 8001DF80 C5D20024 */  lwc1       $f18, 0x24($t6)
/* 1EB84 8001DF84 000A7880 */  sll        $t7, $t2, 2
/* 1EB88 8001DF88 01EA7821 */  addu       $t7, $t7, $t2
/* 1EB8C 8001DF8C 46069201 */  sub.s      $f8, $f18, $f6
/* 1EB90 8001DF90 000F7880 */  sll        $t7, $t7, 2
/* 1EB94 8001DF94 012F6021 */  addu       $t4, $t1, $t7
/* 1EB98 8001DF98 C5860010 */  lwc1       $f6, 0x10($t4)
/* 1EB9C 8001DF9C 460A4482 */  mul.s      $f18, $f8, $f10
/* 1EBA0 8001DFA0 C568001C */  lwc1       $f8, 0x1c($t3)
/* 1EBA4 8001DFA4 3C0D800C */  lui        $t5, %hi(D_800C4A58)
/* 1EBA8 8001DFA8 8DAD4A58 */  lw         $t5, %lo(D_800C4A58)($t5)
/* 1EBAC 8001DFAC 3C01801A */  lui        $at, %hi(D_8019B080)
/* 1EBB0 8001DFB0 46064280 */  add.s      $f10, $f8, $f6
/* 1EBB4 8001DFB4 460A9200 */  add.s      $f8, $f18, $f10
/* 1EBB8 8001DFB8 15A00079 */  bnez       $t5, .L8001E1A0
/* 1EBBC 8001DFBC E428B080 */   swc1      $f8, %lo(D_8019B080)($at)
/* 1EBC0 8001DFC0 C5660020 */  lwc1       $f6, 0x20($t3)
/* 1EBC4 8001DFC4 8FB900B4 */  lw         $t9, 0xb4($sp)
/* 1EBC8 8001DFC8 E7A6005C */  swc1       $f6, 0x5c($sp)
/* 1EBCC 8001DFCC C5720024 */  lwc1       $f18, 0x24($t3)
/* 1EBD0 8001DFD0 E7B20058 */  swc1       $f18, 0x58($sp)
/* 1EBD4 8001DFD4 C56A0028 */  lwc1       $f10, 0x28($t3)
/* 1EBD8 8001DFD8 E7AA0054 */  swc1       $f10, 0x54($sp)
/* 1EBDC 8001DFDC C5660020 */  lwc1       $f6, 0x20($t3)
/* 1EBE0 8001DFE0 46062481 */  sub.s      $f18, $f4, $f6
/* 1EBE4 8001DFE4 E7B2007C */  swc1       $f18, 0x7c($sp)
/* 1EBE8 8001DFE8 C56A0024 */  lwc1       $f10, 0x24($t3)
/* 1EBEC 8001DFEC 460A8101 */  sub.s      $f4, $f16, $f10
/* 1EBF0 8001DFF0 E7A40078 */  swc1       $f4, 0x78($sp)
/* 1EBF4 8001DFF4 C5660028 */  lwc1       $f6, 0x28($t3)
/* 1EBF8 8001DFF8 46064481 */  sub.s      $f18, $f8, $f6
/* 1EBFC 8001DFFC E7B20074 */  swc1       $f18, 0x74($sp)
/* 1EC00 8001E000 8D6E0000 */  lw         $t6, ($t3)
/* 1EC04 8001E004 01D9082B */  sltu       $at, $t6, $t9
/* 1EC08 8001E008 1020001C */  beqz       $at, .L8001E07C
/* 1EC0C 8001E00C 00000000 */   nop
/* 1EC10 8001E010 9578000A */  lhu        $t8, 0xa($t3)
/* 1EC14 8001E014 C7AA007C */  lwc1       $f10, 0x7c($sp)
/* 1EC18 8001E018 C7A60078 */  lwc1       $f6, 0x78($sp)
/* 1EC1C 8001E01C 00184080 */  sll        $t0, $t8, 2
/* 1EC20 8001E020 01184021 */  addu       $t0, $t0, $t8
/* 1EC24 8001E024 00084080 */  sll        $t0, $t0, 2
/* 1EC28 8001E028 01285021 */  addu       $t2, $t1, $t0
/* 1EC2C 8001E02C C5500008 */  lwc1       $f16, 8($t2)
/* 1EC30 8001E030 46105100 */  add.s      $f4, $f10, $f16
/* 1EC34 8001E034 C7B00074 */  lwc1       $f16, 0x74($sp)
/* 1EC38 8001E038 E7A4007C */  swc1       $f4, 0x7c($sp)
/* 1EC3C 8001E03C 956F000A */  lhu        $t7, 0xa($t3)
/* 1EC40 8001E040 000F6080 */  sll        $t4, $t7, 2
/* 1EC44 8001E044 018F6021 */  addu       $t4, $t4, $t7
/* 1EC48 8001E048 000C6080 */  sll        $t4, $t4, 2
/* 1EC4C 8001E04C 012C6821 */  addu       $t5, $t1, $t4
/* 1EC50 8001E050 C5A8000C */  lwc1       $f8, 0xc($t5)
/* 1EC54 8001E054 46083480 */  add.s      $f18, $f6, $f8
/* 1EC58 8001E058 E7B20078 */  swc1       $f18, 0x78($sp)
/* 1EC5C 8001E05C 956E000A */  lhu        $t6, 0xa($t3)
/* 1EC60 8001E060 000EC880 */  sll        $t9, $t6, 2
/* 1EC64 8001E064 032EC821 */  addu       $t9, $t9, $t6
/* 1EC68 8001E068 0019C880 */  sll        $t9, $t9, 2
/* 1EC6C 8001E06C 0139C021 */  addu       $t8, $t1, $t9
/* 1EC70 8001E070 C70A0010 */  lwc1       $f10, 0x10($t8)
/* 1EC74 8001E074 460A8100 */  add.s      $f4, $f16, $f10
/* 1EC78 8001E078 E7A40074 */  swc1       $f4, 0x74($sp)
.L8001E07C:
/* 1EC7C 8001E07C 3C01801A */  lui        $at, %hi(D_8019B078)
/* 1EC80 8001E080 C426B078 */  lwc1       $f6, %lo(D_8019B078)($at)
/* 1EC84 8001E084 8FA80094 */  lw         $t0, 0x94($sp)
/* 1EC88 8001E088 3C01801A */  lui        $at, %hi(D_8019B07C)
/* 1EC8C 8001E08C E5060020 */  swc1       $f6, 0x20($t0)
/* 1EC90 8001E090 8FAA0094 */  lw         $t2, 0x94($sp)
/* 1EC94 8001E094 C428B07C */  lwc1       $f8, %lo(D_8019B07C)($at)
/* 1EC98 8001E098 3C01801A */  lui        $at, %hi(D_8019B080)
/* 1EC9C 8001E09C E5480024 */  swc1       $f8, 0x24($t2)
/* 1ECA0 8001E0A0 8FAF0094 */  lw         $t7, 0x94($sp)
/* 1ECA4 8001E0A4 C432B080 */  lwc1       $f18, %lo(D_8019B080)($at)
/* 1ECA8 8001E0A8 3C01800D */  lui        $at, %hi(D_800CE018)
/* 1ECAC 8001E0AC E5F20028 */  swc1       $f18, 0x28($t7)
/* 1ECB0 8001E0B0 8FAC0128 */  lw         $t4, 0x128($sp)
/* 1ECB4 8001E0B4 D424E018 */  ldc1       $f4, %lo(D_800CE018)($at)
/* 1ECB8 8001E0B8 C7B2007C */  lwc1       $f18, 0x7c($sp)
/* 1ECBC 8001E0BC C5900034 */  lwc1       $f16, 0x34($t4)
/* 1ECC0 8001E0C0 E7B2006C */  swc1       $f18, 0x6c($sp)
/* 1ECC4 8001E0C4 460082A1 */  cvt.d.s    $f10, $f16
/* 1ECC8 8001E0C8 C7B00074 */  lwc1       $f16, 0x74($sp)
/* 1ECCC 8001E0CC 46245182 */  mul.d      $f6, $f10, $f4
/* 1ECD0 8001E0D0 E7B00068 */  swc1       $f16, 0x68($sp)
/* 1ECD4 8001E0D4 46203220 */  cvt.s.d    $f8, $f6
/* 1ECD8 8001E0D8 E7A80070 */  swc1       $f8, 0x70($sp)
/* 1ECDC 8001E0DC 0C02C220 */  jal        func_800B0880
/* 1ECE0 8001E0E0 46004306 */   mov.s     $f12, $f8
/* 1ECE4 8001E0E4 46000506 */  mov.s      $f20, $f0
/* 1ECE8 8001E0E8 0C025E08 */  jal        func_80097820
/* 1ECEC 8001E0EC C7AC0070 */   lwc1      $f12, 0x70($sp)
/* 1ECF0 8001E0F0 C7AA0068 */  lwc1       $f10, 0x68($sp)
/* 1ECF4 8001E0F4 C7A6006C */  lwc1       $f6, 0x6c($sp)
/* 1ECF8 8001E0F8 C7AC0070 */  lwc1       $f12, 0x70($sp)
/* 1ECFC 8001E0FC 460A0102 */  mul.s      $f4, $f0, $f10
/* 1ED00 8001E100 00000000 */  nop
/* 1ED04 8001E104 46143482 */  mul.s      $f18, $f6, $f20
/* 1ED08 8001E108 46122400 */  add.s      $f16, $f4, $f18
/* 1ED0C 8001E10C 0C02C220 */  jal        func_800B0880
/* 1ED10 8001E110 E7B00064 */   swc1      $f16, 0x64($sp)
/* 1ED14 8001E114 46000506 */  mov.s      $f20, $f0
/* 1ED18 8001E118 0C025E08 */  jal        func_80097820
/* 1ED1C 8001E11C C7AC0070 */   lwc1      $f12, 0x70($sp)
/* 1ED20 8001E120 C7A80068 */  lwc1       $f8, 0x68($sp)
/* 1ED24 8001E124 C7A6006C */  lwc1       $f6, 0x6c($sp)
/* 1ED28 8001E128 8FAD0128 */  lw         $t5, 0x128($sp)
/* 1ED2C 8001E12C 46144282 */  mul.s      $f10, $f8, $f20
/* 1ED30 8001E130 3C01801A */  lui        $at, 0x801a
/* 1ED34 8001E134 46060102 */  mul.s      $f4, $f0, $f6
/* 1ED38 8001E138 46045481 */  sub.s      $f18, $f10, $f4
/* 1ED3C 8001E13C E7B20060 */  swc1       $f18, 0x60($sp)
/* 1ED40 8001E140 C5B00028 */  lwc1       $f16, 0x28($t5)
/* 1ED44 8001E144 E5B0001C */  swc1       $f16, 0x1c($t5)
/* 1ED48 8001E148 8FAB0128 */  lw         $t3, 0x128($sp)
/* 1ED4C 8001E14C C568002C */  lwc1       $f8, 0x2c($t3)
/* 1ED50 8001E150 E5680020 */  swc1       $f8, 0x20($t3)
/* 1ED54 8001E154 8FAE0128 */  lw         $t6, 0x128($sp)
/* 1ED58 8001E158 C5C60030 */  lwc1       $f6, 0x30($t6)
/* 1ED5C 8001E15C E5C60024 */  swc1       $f6, 0x24($t6)
/* 1ED60 8001E160 8FA90128 */  lw         $t1, 0x128($sp)
/* 1ED64 8001E164 C7A40064 */  lwc1       $f4, 0x64($sp)
/* 1ED68 8001E168 C52A0028 */  lwc1       $f10, 0x28($t1)
/* 1ED6C 8001E16C 46045480 */  add.s      $f18, $f10, $f4
/* 1ED70 8001E170 E5320028 */  swc1       $f18, 0x28($t1)
/* 1ED74 8001E174 8FB90128 */  lw         $t9, 0x128($sp)
/* 1ED78 8001E178 C7A80060 */  lwc1       $f8, 0x60($sp)
/* 1ED7C 8001E17C C7300030 */  lwc1       $f16, 0x30($t9)
/* 1ED80 8001E180 46088180 */  add.s      $f6, $f16, $f8
/* 1ED84 8001E184 E7260030 */  swc1       $f6, 0x30($t9)
/* 1ED88 8001E188 8FB80094 */  lw         $t8, 0x94($sp)
/* 1ED8C 8001E18C C70A0014 */  lwc1       $f10, 0x14($t8)
/* 1ED90 8001E190 E42AB078 */  swc1       $f10, -0x4f88($at)
/* 1ED94 8001E194 C704001C */  lwc1       $f4, 0x1c($t8)
/* 1ED98 8001E198 3C01801A */  lui        $at, %hi(D_8019B080)
/* 1ED9C 8001E19C E424B080 */  swc1       $f4, %lo(D_8019B080)($at)
.L8001E1A0:
/* 1EDA0 8001E1A0 8FA80094 */  lw         $t0, 0x94($sp)
/* 1EDA4 8001E1A4 AFA0011C */  sw         $zero, 0x11c($sp)
/* 1EDA8 8001E1A8 AFA00120 */  sw         $zero, 0x120($sp)
/* 1EDAC 8001E1AC 950A000C */  lhu        $t2, 0xc($t0)
/* 1EDB0 8001E1B0 194000A7 */  blez       $t2, .L8001E450
/* 1EDB4 8001E1B4 00000000 */   nop
.L8001E1B8:
/* 1EDB8 8001E1B8 8FAC0120 */  lw         $t4, 0x120($sp)
/* 1EDBC 8001E1BC 8FA9011C */  lw         $t1, 0x11c($sp)
/* 1EDC0 8001E1C0 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 1EDC4 8001E1C4 8FAF010C */  lw         $t7, 0x10c($sp)
/* 1EDC8 8001E1C8 000C6980 */  sll        $t5, $t4, 6
/* 1EDCC 8001E1CC 0009C980 */  sll        $t9, $t1, 6
/* 1EDD0 8001E1D0 01D9C021 */  addu       $t8, $t6, $t9
/* 1EDD4 8001E1D4 270C003C */  addiu      $t4, $t8, 0x3c
/* 1EDD8 8001E1D8 01ED5821 */  addu       $t3, $t7, $t5
.L8001E1DC:
/* 1EDDC 8001E1DC 8F0A0000 */  lw         $t2, ($t8)
/* 1EDE0 8001E1E0 2718000C */  addiu      $t8, $t8, 0xc
/* 1EDE4 8001E1E4 256B000C */  addiu      $t3, $t3, 0xc
/* 1EDE8 8001E1E8 AD6A0074 */  sw         $t2, 0x74($t3)
/* 1EDEC 8001E1EC 8F08FFF8 */  lw         $t0, -8($t8)
/* 1EDF0 8001E1F0 AD680078 */  sw         $t0, 0x78($t3)
/* 1EDF4 8001E1F4 8F0AFFFC */  lw         $t2, -4($t8)
/* 1EDF8 8001E1F8 170CFFF8 */  bne        $t8, $t4, .L8001E1DC
/* 1EDFC 8001E1FC AD6A007C */   sw        $t2, 0x7c($t3)
/* 1EE00 8001E200 8F0A0000 */  lw         $t2, ($t8)
/* 1EE04 8001E204 3C0F800C */  lui        $t7, %hi(D_800C4A58)
/* 1EE08 8001E208 AD6A0080 */  sw         $t2, 0x80($t3)
/* 1EE0C 8001E20C 8DEF4A58 */  lw         $t7, %lo(D_800C4A58)($t7)
/* 1EE10 8001E210 11E00048 */  beqz       $t7, .L8001E334
/* 1EE14 8001E214 00000000 */   nop
/* 1EE18 8001E218 8FAD0094 */  lw         $t5, 0x94($sp)
/* 1EE1C 8001E21C 8FB8011C */  lw         $t8, 0x11c($sp)
/* 1EE20 8001E220 C7A600C0 */  lwc1       $f6, 0xc0($sp)
/* 1EE24 8001E224 8DAE0000 */  lw         $t6, ($t5)
/* 1EE28 8001E228 95A9000C */  lhu        $t1, 0xc($t5)
/* 1EE2C 8001E22C 3C01801A */  lui        $at, 0x801a
/* 1EE30 8001E230 25D9FFFF */  addiu      $t9, $t6, -1
/* 1EE34 8001E234 01390019 */  multu      $t1, $t9
/* 1EE38 8001E238 00006012 */  mflo       $t4
/* 1EE3C 8001E23C 01985821 */  addu       $t3, $t4, $t8
/* 1EE40 8001E240 AFAB0050 */  sw         $t3, 0x50($sp)
/* 1EE44 8001E244 8DAA0000 */  lw         $t2, ($t5)
/* 1EE48 8001E248 95A8000C */  lhu        $t0, 0xc($t5)
/* 1EE4C 8001E24C 000B6880 */  sll        $t5, $t3, 2
/* 1EE50 8001E250 01AB6823 */  subu       $t5, $t5, $t3
/* 1EE54 8001E254 010A0019 */  multu      $t0, $t2
/* 1EE58 8001E258 000D6880 */  sll        $t5, $t5, 2
/* 1EE5C 8001E25C 01ED4021 */  addu       $t0, $t7, $t5
/* 1EE60 8001E260 01ED5021 */  addu       $t2, $t7, $t5
/* 1EE64 8001E264 00007012 */  mflo       $t6
/* 1EE68 8001E268 01D84821 */  addu       $t1, $t6, $t8
/* 1EE6C 8001E26C 0009C880 */  sll        $t9, $t1, 2
/* 1EE70 8001E270 0329C823 */  subu       $t9, $t9, $t1
/* 1EE74 8001E274 AFA9004C */  sw         $t1, 0x4c($sp)
/* 1EE78 8001E278 0019C880 */  sll        $t9, $t9, 2
/* 1EE7C 8001E27C 01F96021 */  addu       $t4, $t7, $t9
/* 1EE80 8001E280 C5920000 */  lwc1       $f18, ($t4)
/* 1EE84 8001E284 C5100000 */  lwc1       $f16, ($t0)
/* 1EE88 8001E288 C5440000 */  lwc1       $f4, ($t2)
/* 1EE8C 8001E28C 00097080 */  sll        $t6, $t1, 2
/* 1EE90 8001E290 46109201 */  sub.s      $f8, $f18, $f16
/* 1EE94 8001E294 01C97023 */  subu       $t6, $t6, $t1
/* 1EE98 8001E298 000E7080 */  sll        $t6, $t6, 2
/* 1EE9C 8001E29C 01EEC021 */  addu       $t8, $t7, $t6
/* 1EEA0 8001E2A0 46064282 */  mul.s      $f10, $f8, $f6
/* 1EEA4 8001E2A4 01EDC821 */  addu       $t9, $t7, $t5
/* 1EEA8 8001E2A8 01ED6021 */  addu       $t4, $t7, $t5
/* 1EEAC 8001E2AC 00095880 */  sll        $t3, $t1, 2
/* 1EEB0 8001E2B0 01695823 */  subu       $t3, $t3, $t1
/* 1EEB4 8001E2B4 000B5880 */  sll        $t3, $t3, 2
/* 1EEB8 8001E2B8 01EB4021 */  addu       $t0, $t7, $t3
/* 1EEBC 8001E2BC 460A2480 */  add.s      $f18, $f4, $f10
/* 1EEC0 8001E2C0 01ED5021 */  addu       $t2, $t7, $t5
/* 1EEC4 8001E2C4 01ED7021 */  addu       $t6, $t7, $t5
/* 1EEC8 8001E2C8 E432B078 */  swc1       $f18, -0x4f88($at)
/* 1EECC 8001E2CC C7280004 */  lwc1       $f8, 4($t9)
/* 1EED0 8001E2D0 C7100004 */  lwc1       $f16, 4($t8)
/* 1EED4 8001E2D4 3C01801A */  lui        $at, 0x801a
/* 1EED8 8001E2D8 8FB80120 */  lw         $t8, 0x120($sp)
/* 1EEDC 8001E2DC 46088101 */  sub.s      $f4, $f16, $f8
/* 1EEE0 8001E2E0 C5900004 */  lwc1       $f16, 4($t4)
/* 1EEE4 8001E2E4 8FAC010C */  lw         $t4, 0x10c($sp)
/* 1EEE8 8001E2E8 44059000 */  mfc1       $a1, $f18
/* 1EEEC 8001E2EC 46062282 */  mul.s      $f10, $f4, $f6
/* 1EEF0 8001E2F0 0018C980 */  sll        $t9, $t8, 6
/* 1EEF4 8001E2F4 032C2021 */  addu       $a0, $t9, $t4
/* 1EEF8 8001E2F8 460A8200 */  add.s      $f8, $f16, $f10
/* 1EEFC 8001E2FC E428B07C */  swc1       $f8, -0x4f84($at)
/* 1EF00 8001E300 C5500008 */  lwc1       $f16, 8($t2)
/* 1EF04 8001E304 C5040008 */  lwc1       $f4, 8($t0)
/* 1EF08 8001E308 3C01801A */  lui        $at, 0x801a
/* 1EF0C 8001E30C 44064000 */  mfc1       $a2, $f8
/* 1EF10 8001E310 46102281 */  sub.s      $f10, $f4, $f16
/* 1EF14 8001E314 C5D00008 */  lwc1       $f16, 8($t6)
/* 1EF18 8001E318 46065102 */  mul.s      $f4, $f10, $f6
/* 1EF1C 8001E31C 46048280 */  add.s      $f10, $f16, $f4
/* 1EF20 8001E320 44075000 */  mfc1       $a3, $f10
/* 1EF24 8001E324 0C02DB43 */  jal        func_800B6D0C
/* 1EF28 8001E328 E42AB080 */   swc1      $f10, -0x4f80($at)
/* 1EF2C 8001E32C 1000002A */  b          .L8001E3D8
/* 1EF30 8001E330 00000000 */   nop
.L8001E334:
/* 1EF34 8001E334 8FA9011C */  lw         $t1, 0x11c($sp)
/* 1EF38 8001E338 1520001B */  bnez       $t1, .L8001E3A8
/* 1EF3C 8001E33C 00000000 */   nop
/* 1EF40 8001E340 8FAF00A4 */  lw         $t7, 0xa4($sp)
/* 1EF44 8001E344 00096900 */  sll        $t5, $t1, 4
/* 1EF48 8001E348 3C01801A */  lui        $at, %hi(D_8019B078)
/* 1EF4C 8001E34C 01ED7021 */  addu       $t6, $t7, $t5
/* 1EF50 8001E350 C5C60004 */  lwc1       $f6, 4($t6)
/* 1EF54 8001E354 C430B078 */  lwc1       $f16, %lo(D_8019B078)($at)
/* 1EF58 8001E358 3C01801A */  lui        $at, %hi(D_8019B07C)
/* 1EF5C 8001E35C C428B07C */  lwc1       $f8, %lo(D_8019B07C)($at)
/* 1EF60 8001E360 46103100 */  add.s      $f4, $f6, $f16
/* 1EF64 8001E364 3C01801A */  lui        $at, %hi(D_8019B080)
/* 1EF68 8001E368 C430B080 */  lwc1       $f16, %lo(D_8019B080)($at)
/* 1EF6C 8001E36C C5C6000C */  lwc1       $f6, 0xc($t6)
/* 1EF70 8001E370 C5D20008 */  lwc1       $f18, 8($t6)
/* 1EF74 8001E374 44052000 */  mfc1       $a1, $f4
/* 1EF78 8001E378 46103100 */  add.s      $f4, $f6, $f16
/* 1EF7C 8001E37C 8FAB0120 */  lw         $t3, 0x120($sp)
/* 1EF80 8001E380 8FAA010C */  lw         $t2, 0x10c($sp)
/* 1EF84 8001E384 46089280 */  add.s      $f10, $f18, $f8
/* 1EF88 8001E388 44072000 */  mfc1       $a3, $f4
/* 1EF8C 8001E38C 000B4180 */  sll        $t0, $t3, 6
/* 1EF90 8001E390 010A2021 */  addu       $a0, $t0, $t2
/* 1EF94 8001E394 44065000 */  mfc1       $a2, $f10
/* 1EF98 8001E398 0C02DB43 */  jal        func_800B6D0C
/* 1EF9C 8001E39C 00000000 */   nop
/* 1EFA0 8001E3A0 1000000D */  b          .L8001E3D8
/* 1EFA4 8001E3A4 00000000 */   nop
.L8001E3A8:
/* 1EFA8 8001E3A8 8FA8011C */  lw         $t0, 0x11c($sp)
/* 1EFAC 8001E3AC 8FAB00A4 */  lw         $t3, 0xa4($sp)
/* 1EFB0 8001E3B0 8FB80120 */  lw         $t8, 0x120($sp)
/* 1EFB4 8001E3B4 00085100 */  sll        $t2, $t0, 4
/* 1EFB8 8001E3B8 8FAC010C */  lw         $t4, 0x10c($sp)
/* 1EFBC 8001E3BC 016A4821 */  addu       $t1, $t3, $t2
/* 1EFC0 8001E3C0 0018C980 */  sll        $t9, $t8, 6
/* 1EFC4 8001E3C4 8D250004 */  lw         $a1, 4($t1)
/* 1EFC8 8001E3C8 8D260008 */  lw         $a2, 8($t1)
/* 1EFCC 8001E3CC 8D27000C */  lw         $a3, 0xc($t1)
/* 1EFD0 8001E3D0 0C02DB43 */  jal        func_800B6D0C
/* 1EFD4 8001E3D4 032C2021 */   addu      $a0, $t9, $t4
.L8001E3D8:
/* 1EFD8 8001E3D8 8FAD011C */  lw         $t5, 0x11c($sp)
/* 1EFDC 8001E3DC 8FAF0124 */  lw         $t7, 0x124($sp)
/* 1EFE0 8001E3E0 C7A800C0 */  lwc1       $f8, 0xc0($sp)
/* 1EFE4 8001E3E4 000D7100 */  sll        $t6, $t5, 4
/* 1EFE8 8001E3E8 01EEC021 */  addu       $t8, $t7, $t6
/* 1EFEC 8001E3EC C7120000 */  lwc1       $f18, ($t8)
/* 1EFF0 8001E3F0 8FB90120 */  lw         $t9, 0x120($sp)
/* 1EFF4 8001E3F4 8FA8010C */  lw         $t0, 0x10c($sp)
/* 1EFF8 8001E3F8 46089282 */  mul.s      $f10, $f18, $f8
/* 1EFFC 8001E3FC 00196180 */  sll        $t4, $t9, 6
/* 1F000 8001E400 01882021 */  addu       $a0, $t4, $t0
/* 1F004 8001E404 24840040 */  addiu      $a0, $a0, 0x40
/* 1F008 8001E408 E7AA00C4 */  swc1       $f10, 0xc4($sp)
/* 1F00C 8001E40C C706000C */  lwc1       $f6, 0xc($t8)
/* 1F010 8001E410 8F070008 */  lw         $a3, 8($t8)
/* 1F014 8001E414 8F060004 */  lw         $a2, 4($t8)
/* 1F018 8001E418 44055000 */  mfc1       $a1, $f10
/* 1F01C 8001E41C 0C02BCA9 */  jal        func_800AF2A4
/* 1F020 8001E420 E7A60010 */   swc1      $f6, 0x10($sp)
/* 1F024 8001E424 8FAB011C */  lw         $t3, 0x11c($sp)
/* 1F028 8001E428 8FA90120 */  lw         $t1, 0x120($sp)
/* 1F02C 8001E42C 8FAF0094 */  lw         $t7, 0x94($sp)
/* 1F030 8001E430 256A0001 */  addiu      $t2, $t3, 1
/* 1F034 8001E434 252D0003 */  addiu      $t5, $t1, 3
/* 1F038 8001E438 AFAD0120 */  sw         $t5, 0x120($sp)
/* 1F03C 8001E43C AFAA011C */  sw         $t2, 0x11c($sp)
/* 1F040 8001E440 95EE000C */  lhu        $t6, 0xc($t7)
/* 1F044 8001E444 014E082A */  slt        $at, $t2, $t6
/* 1F048 8001E448 1420FF5B */  bnez       $at, .L8001E1B8
/* 1F04C 8001E44C 00000000 */   nop
.L8001E450:
/* 1F050 8001E450 3C19800D */  lui        $t9, %hi(D_800C9FA0)
/* 1F054 8001E454 8F399FA0 */  lw         $t9, %lo(D_800C9FA0)($t9)
/* 1F058 8001E458 1720008A */  bnez       $t9, .L8001E684
/* 1F05C 8001E45C 00000000 */   nop
/* 1F060 8001E460 8FAC0094 */  lw         $t4, 0x94($sp)
/* 1F064 8001E464 AFA0011C */  sw         $zero, 0x11c($sp)
/* 1F068 8001E468 AFA00120 */  sw         $zero, 0x120($sp)
/* 1F06C 8001E46C 9588000C */  lhu        $t0, 0xc($t4)
/* 1F070 8001E470 19000084 */  blez       $t0, .L8001E684
/* 1F074 8001E474 00000000 */   nop
.L8001E478:
/* 1F078 8001E478 8FAB011C */  lw         $t3, 0x11c($sp)
/* 1F07C 8001E47C 8FB800A4 */  lw         $t8, 0xa4($sp)
/* 1F080 8001E480 000B4900 */  sll        $t1, $t3, 4
/* 1F084 8001E484 03096821 */  addu       $t5, $t8, $t1
/* 1F088 8001E488 8DAF0000 */  lw         $t7, ($t5)
/* 1F08C 8001E48C 31EA0002 */  andi       $t2, $t7, 2
/* 1F090 8001E490 1140000E */  beqz       $t2, .L8001E4CC
/* 1F094 8001E494 00000000 */   nop
/* 1F098 8001E498 3C0E8013 */  lui        $t6, %hi(D_8012F790)
/* 1F09C 8001E49C 8DCEF790 */  lw         $t6, %lo(D_8012F790)($t6)
/* 1F0A0 8001E4A0 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1F0A4 8001E4A4 3C0CD838 */  lui        $t4, 0xd838
/* 1F0A8 8001E4A8 AFAE0048 */  sw         $t6, 0x48($sp)
/* 1F0AC 8001E4AC 8FA80048 */  lw         $t0, 0x48($sp)
/* 1F0B0 8001E4B0 25D90008 */  addiu      $t9, $t6, 8
/* 1F0B4 8001E4B4 AC39F790 */  sw         $t9, %lo(D_8012F790)($at)
/* 1F0B8 8001E4B8 358C0002 */  ori        $t4, $t4, 2
/* 1F0BC 8001E4BC AD0C0000 */  sw         $t4, ($t0)
/* 1F0C0 8001E4C0 8FB80048 */  lw         $t8, 0x48($sp)
/* 1F0C4 8001E4C4 240B0040 */  addiu      $t3, $zero, 0x40
/* 1F0C8 8001E4C8 AF0B0004 */  sw         $t3, 4($t8)
.L8001E4CC:
/* 1F0CC 8001E4CC 8FAD011C */  lw         $t5, 0x11c($sp)
/* 1F0D0 8001E4D0 8FA900A4 */  lw         $t1, 0xa4($sp)
/* 1F0D4 8001E4D4 000D7900 */  sll        $t7, $t5, 4
/* 1F0D8 8001E4D8 012F5021 */  addu       $t2, $t1, $t7
/* 1F0DC 8001E4DC 8D4E0000 */  lw         $t6, ($t2)
/* 1F0E0 8001E4E0 31D90001 */  andi       $t9, $t6, 1
/* 1F0E4 8001E4E4 13200014 */  beqz       $t9, .L8001E538
/* 1F0E8 8001E4E8 00000000 */   nop
/* 1F0EC 8001E4EC 3C0C8013 */  lui        $t4, %hi(D_8012F790)
/* 1F0F0 8001E4F0 8D8CF790 */  lw         $t4, %lo(D_8012F790)($t4)
/* 1F0F4 8001E4F4 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1F0F8 8001E4F8 3C0BDA38 */  lui        $t3, 0xda38
/* 1F0FC 8001E4FC AFAC0044 */  sw         $t4, 0x44($sp)
/* 1F100 8001E500 8FB80044 */  lw         $t8, 0x44($sp)
/* 1F104 8001E504 25880008 */  addiu      $t0, $t4, 8
/* 1F108 8001E508 AC28F790 */  sw         $t0, %lo(D_8012F790)($at)
/* 1F10C 8001E50C AF0B0000 */  sw         $t3, ($t8)
/* 1F110 8001E510 8FAD0120 */  lw         $t5, 0x120($sp)
/* 1F114 8001E514 8FAF010C */  lw         $t7, 0x10c($sp)
/* 1F118 8001E518 8FB90044 */  lw         $t9, 0x44($sp)
/* 1F11C 8001E51C 000D4980 */  sll        $t1, $t5, 6
/* 1F120 8001E520 3C018000 */  lui        $at, 0x8000
/* 1F124 8001E524 012F5021 */  addu       $t2, $t1, $t7
/* 1F128 8001E528 01417021 */  addu       $t6, $t2, $at
/* 1F12C 8001E52C AF2E0004 */  sw         $t6, 4($t9)
/* 1F130 8001E530 10000013 */  b          .L8001E580
/* 1F134 8001E534 00000000 */   nop
.L8001E538:
/* 1F138 8001E538 3C0C8013 */  lui        $t4, %hi(D_8012F790)
/* 1F13C 8001E53C 8D8CF790 */  lw         $t4, %lo(D_8012F790)($t4)
/* 1F140 8001E540 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1F144 8001E544 3C0BDA38 */  lui        $t3, 0xda38
/* 1F148 8001E548 AFAC0040 */  sw         $t4, 0x40($sp)
/* 1F14C 8001E54C 8FB80040 */  lw         $t8, 0x40($sp)
/* 1F150 8001E550 25880008 */  addiu      $t0, $t4, 8
/* 1F154 8001E554 AC28F790 */  sw         $t0, %lo(D_8012F790)($at)
/* 1F158 8001E558 356B0001 */  ori        $t3, $t3, 1
/* 1F15C 8001E55C AF0B0000 */  sw         $t3, ($t8)
/* 1F160 8001E560 8FAD0120 */  lw         $t5, 0x120($sp)
/* 1F164 8001E564 8FAF010C */  lw         $t7, 0x10c($sp)
/* 1F168 8001E568 8FB90040 */  lw         $t9, 0x40($sp)
/* 1F16C 8001E56C 000D4980 */  sll        $t1, $t5, 6
/* 1F170 8001E570 3C018000 */  lui        $at, 0x8000
/* 1F174 8001E574 012F5021 */  addu       $t2, $t1, $t7
/* 1F178 8001E578 01417021 */  addu       $t6, $t2, $at
/* 1F17C 8001E57C AF2E0004 */  sw         $t6, 4($t9)
.L8001E580:
/* 1F180 8001E580 3C0C8013 */  lui        $t4, %hi(D_8012F790)
/* 1F184 8001E584 8D8CF790 */  lw         $t4, %lo(D_8012F790)($t4)
/* 1F188 8001E588 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1F18C 8001E58C 3C0BDA38 */  lui        $t3, 0xda38
/* 1F190 8001E590 AFAC003C */  sw         $t4, 0x3c($sp)
/* 1F194 8001E594 8FB8003C */  lw         $t8, 0x3c($sp)
/* 1F198 8001E598 25880008 */  addiu      $t0, $t4, 8
/* 1F19C 8001E59C AC28F790 */  sw         $t0, %lo(D_8012F790)($at)
/* 1F1A0 8001E5A0 356B0001 */  ori        $t3, $t3, 1
/* 1F1A4 8001E5A4 AF0B0000 */  sw         $t3, ($t8)
/* 1F1A8 8001E5A8 8FAD0120 */  lw         $t5, 0x120($sp)
/* 1F1AC 8001E5AC 8FAF010C */  lw         $t7, 0x10c($sp)
/* 1F1B0 8001E5B0 8FB9003C */  lw         $t9, 0x3c($sp)
/* 1F1B4 8001E5B4 3C018000 */  lui        $at, 0x8000
/* 1F1B8 8001E5B8 000D4980 */  sll        $t1, $t5, 6
/* 1F1BC 8001E5BC 34210040 */  ori        $at, $at, 0x40
/* 1F1C0 8001E5C0 012F5021 */  addu       $t2, $t1, $t7
/* 1F1C4 8001E5C4 01417021 */  addu       $t6, $t2, $at
/* 1F1C8 8001E5C8 AF2E0004 */  sw         $t6, 4($t9)
/* 1F1CC 8001E5CC 3C0C8013 */  lui        $t4, %hi(D_8012F790)
/* 1F1D0 8001E5D0 8D8CF790 */  lw         $t4, %lo(D_8012F790)($t4)
/* 1F1D4 8001E5D4 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1F1D8 8001E5D8 3C0BDA38 */  lui        $t3, 0xda38
/* 1F1DC 8001E5DC AFAC0038 */  sw         $t4, 0x38($sp)
/* 1F1E0 8001E5E0 8FB80038 */  lw         $t8, 0x38($sp)
/* 1F1E4 8001E5E4 25880008 */  addiu      $t0, $t4, 8
/* 1F1E8 8001E5E8 AC28F790 */  sw         $t0, %lo(D_8012F790)($at)
/* 1F1EC 8001E5EC 356B0001 */  ori        $t3, $t3, 1
/* 1F1F0 8001E5F0 AF0B0000 */  sw         $t3, ($t8)
/* 1F1F4 8001E5F4 8FAD0120 */  lw         $t5, 0x120($sp)
/* 1F1F8 8001E5F8 8FAF010C */  lw         $t7, 0x10c($sp)
/* 1F1FC 8001E5FC 8FB90038 */  lw         $t9, 0x38($sp)
/* 1F200 8001E600 3C018000 */  lui        $at, 0x8000
/* 1F204 8001E604 000D4980 */  sll        $t1, $t5, 6
/* 1F208 8001E608 34210080 */  ori        $at, $at, 0x80
/* 1F20C 8001E60C 012F5021 */  addu       $t2, $t1, $t7
/* 1F210 8001E610 01417021 */  addu       $t6, $t2, $at
/* 1F214 8001E614 AF2E0004 */  sw         $t6, 4($t9)
/* 1F218 8001E618 3C0C8013 */  lui        $t4, %hi(D_8012F790)
/* 1F21C 8001E61C 8D8CF790 */  lw         $t4, %lo(D_8012F790)($t4)
/* 1F220 8001E620 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1F224 8001E624 3C0BDE00 */  lui        $t3, 0xde00
/* 1F228 8001E628 AFAC0034 */  sw         $t4, 0x34($sp)
/* 1F22C 8001E62C 8FB80034 */  lw         $t8, 0x34($sp)
/* 1F230 8001E630 25880008 */  addiu      $t0, $t4, 8
/* 1F234 8001E634 AC28F790 */  sw         $t0, %lo(D_8012F790)($at)
/* 1F238 8001E638 AF0B0000 */  sw         $t3, ($t8)
/* 1F23C 8001E63C 8FA9011C */  lw         $t1, 0x11c($sp)
/* 1F240 8001E640 8FAD009C */  lw         $t5, 0x9c($sp)
/* 1F244 8001E644 8FB90034 */  lw         $t9, 0x34($sp)
/* 1F248 8001E648 00097880 */  sll        $t7, $t1, 2
/* 1F24C 8001E64C 01AF5021 */  addu       $t2, $t5, $t7
/* 1F250 8001E650 8D4E0000 */  lw         $t6, ($t2)
/* 1F254 8001E654 AF2E0004 */  sw         $t6, 4($t9)
/* 1F258 8001E658 8FAC011C */  lw         $t4, 0x11c($sp)
/* 1F25C 8001E65C 8FAB0120 */  lw         $t3, 0x120($sp)
/* 1F260 8001E660 8FA90094 */  lw         $t1, 0x94($sp)
/* 1F264 8001E664 25880001 */  addiu      $t0, $t4, 1
/* 1F268 8001E668 25780003 */  addiu      $t8, $t3, 3
/* 1F26C 8001E66C AFB80120 */  sw         $t8, 0x120($sp)
/* 1F270 8001E670 AFA8011C */  sw         $t0, 0x11c($sp)
/* 1F274 8001E674 952D000C */  lhu        $t5, 0xc($t1)
/* 1F278 8001E678 010D082A */  slt        $at, $t0, $t5
/* 1F27C 8001E67C 1420FF7E */  bnez       $at, .L8001E478
/* 1F280 8001E680 00000000 */   nop
.L8001E684:
/* 1F284 8001E684 3C0F8013 */  lui        $t7, %hi(D_8012F790)
/* 1F288 8001E688 8DEFF790 */  lw         $t7, %lo(D_8012F790)($t7)
/* 1F28C 8001E68C 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1F290 8001E690 3C0ED838 */  lui        $t6, 0xd838
/* 1F294 8001E694 AFAF0030 */  sw         $t7, 0x30($sp)
/* 1F298 8001E698 8FB90030 */  lw         $t9, 0x30($sp)
/* 1F29C 8001E69C 25EA0008 */  addiu      $t2, $t7, 8
/* 1F2A0 8001E6A0 AC2AF790 */  sw         $t2, %lo(D_8012F790)($at)
/* 1F2A4 8001E6A4 35CE0002 */  ori        $t6, $t6, 2
/* 1F2A8 8001E6A8 AF2E0000 */  sw         $t6, ($t9)
/* 1F2AC 8001E6AC 8FAB0030 */  lw         $t3, 0x30($sp)
/* 1F2B0 8001E6B0 240C0040 */  addiu      $t4, $zero, 0x40
/* 1F2B4 8001E6B4 AD6C0004 */  sw         $t4, 4($t3)
/* 1F2B8 8001E6B8 8FA90094 */  lw         $t1, 0x94($sp)
/* 1F2BC 8001E6BC 3C188013 */  lui        $t8, %hi(D_8012F794)
/* 1F2C0 8001E6C0 8F18F794 */  lw         $t8, %lo(D_8012F794)($t8)
/* 1F2C4 8001E6C4 9528000C */  lhu        $t0, 0xc($t1)
/* 1F2C8 8001E6C8 8FAE00AC */  lw         $t6, 0xac($sp)
/* 1F2CC 8001E6CC 8FB90128 */  lw         $t9, 0x128($sp)
/* 1F2D0 8001E6D0 00086880 */  sll        $t5, $t0, 2
/* 1F2D4 8001E6D4 01A86823 */  subu       $t5, $t5, $t0
/* 1F2D8 8001E6D8 000D7980 */  sll        $t7, $t5, 6
/* 1F2DC 8001E6DC 3C018013 */  lui        $at, %hi(D_8012F794)
/* 1F2E0 8001E6E0 030F5021 */  addu       $t2, $t8, $t7
/* 1F2E4 8001E6E4 AC2AF794 */  sw         $t2, %lo(D_8012F794)($at)
/* 1F2E8 8001E6E8 AF2E0004 */  sw         $t6, 4($t9)
/* 1F2EC 8001E6EC 8FAC0094 */  lw         $t4, 0x94($sp)
/* 1F2F0 8001E6F0 C7B2012C */  lwc1       $f18, 0x12c($sp)
/* 1F2F4 8001E6F4 8FA90114 */  lw         $t1, 0x114($sp)
/* 1F2F8 8001E6F8 C5900004 */  lwc1       $f16, 4($t4)
/* 1F2FC 8001E6FC 44893000 */  mtc1       $t1, $f6
/* 1F300 8001E700 E7B000BC */  swc1       $f16, 0xbc($sp)
/* 1F304 8001E704 8D8B0000 */  lw         $t3, ($t4)
/* 1F308 8001E708 AFAB00B8 */  sw         $t3, 0xb8($sp)
/* 1F30C 8001E70C C5840010 */  lwc1       $f4, 0x10($t4)
/* 1F310 8001E710 46122203 */  div.s      $f8, $f4, $f18
/* 1F314 8001E714 46803120 */  cvt.s.w    $f4, $f6
/* 1F318 8001E718 46088280 */  add.s      $f10, $f16, $f8
/* 1F31C 8001E71C 460A203C */  c.lt.s     $f4, $f10
/* 1F320 8001E720 E7AA00BC */  swc1       $f10, 0xbc($sp)
/* 1F324 8001E724 4500000C */  bc1f       .L8001E758
/* 1F328 8001E728 00000000 */   nop
/* 1F32C 8001E72C 46045481 */  sub.s      $f18, $f10, $f4
/* 1F330 8001E730 25680001 */  addiu      $t0, $t3, 1
/* 1F334 8001E734 AFA800B8 */  sw         $t0, 0xb8($sp)
/* 1F338 8001E738 E7B200BC */  swc1       $f18, 0xbc($sp)
/* 1F33C 8001E73C 958D000A */  lhu        $t5, 0xa($t4)
/* 1F340 8001E740 010D082A */  slt        $at, $t0, $t5
/* 1F344 8001E744 14200004 */  bnez       $at, .L8001E758
/* 1F348 8001E748 00000000 */   nop
/* 1F34C 8001E74C 8FAF0128 */  lw         $t7, 0x128($sp)
/* 1F350 8001E750 24180001 */  addiu      $t8, $zero, 1
/* 1F354 8001E754 ADF80004 */  sw         $t8, 4($t7)
.L8001E758:
/* 1F358 8001E758 8FAA0094 */  lw         $t2, 0x94($sp)
/* 1F35C 8001E75C 8FB90128 */  lw         $t9, 0x128($sp)
/* 1F360 8001E760 8D4E0000 */  lw         $t6, ($t2)
/* 1F364 8001E764 AF2E0038 */  sw         $t6, 0x38($t9)
/* 1F368 8001E768 8FA90094 */  lw         $t1, 0x94($sp)
/* 1F36C 8001E76C 8FAB0128 */  lw         $t3, 0x128($sp)
/* 1F370 8001E770 C5300004 */  lwc1       $f16, 4($t1)
/* 1F374 8001E774 E570003C */  swc1       $f16, 0x3c($t3)
/* 1F378 8001E778 8FAC0094 */  lw         $t4, 0x94($sp)
/* 1F37C 8001E77C 8FA80128 */  lw         $t0, 0x128($sp)
/* 1F380 8001E780 C5880020 */  lwc1       $f8, 0x20($t4)
/* 1F384 8001E784 E5080040 */  swc1       $f8, 0x40($t0)
/* 1F388 8001E788 8FAD0094 */  lw         $t5, 0x94($sp)
/* 1F38C 8001E78C 8FB80128 */  lw         $t8, 0x128($sp)
/* 1F390 8001E790 C5A60024 */  lwc1       $f6, 0x24($t5)
/* 1F394 8001E794 E7060044 */  swc1       $f6, 0x44($t8)
/* 1F398 8001E798 8FAF0094 */  lw         $t7, 0x94($sp)
/* 1F39C 8001E79C 8FAA0128 */  lw         $t2, 0x128($sp)
/* 1F3A0 8001E7A0 C5EA0028 */  lwc1       $f10, 0x28($t7)
/* 1F3A4 8001E7A4 E54A0048 */  swc1       $f10, 0x48($t2)
/* 1F3A8 8001E7A8 8FAE0094 */  lw         $t6, 0x94($sp)
/* 1F3AC 8001E7AC 8FA90128 */  lw         $t1, 0x128($sp)
/* 1F3B0 8001E7B0 95D90008 */  lhu        $t9, 8($t6)
/* 1F3B4 8001E7B4 A539004C */  sh         $t9, 0x4c($t1)
/* 1F3B8 8001E7B8 8FAB0094 */  lw         $t3, 0x94($sp)
/* 1F3BC 8001E7BC 8FA80128 */  lw         $t0, 0x128($sp)
/* 1F3C0 8001E7C0 956C000E */  lhu        $t4, 0xe($t3)
/* 1F3C4 8001E7C4 A50C004E */  sh         $t4, 0x4e($t0)
/* 1F3C8 8001E7C8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1F3CC 8001E7CC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1F3D0 8001E7D0 27BD0128 */  addiu      $sp, $sp, 0x128
/* 1F3D4 8001E7D4 03E00008 */  jr         $ra
/* 1F3D8 8001E7D8 00000000 */   nop

glabel func_8001E7DC
/* 1F3DC 8001E7DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F3E0 8001E7E0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1F3E4 8001E7E4 AFA40028 */  sw         $a0, 0x28($sp)
/* 1F3E8 8001E7E8 AFA5002C */  sw         $a1, 0x2c($sp)
/* 1F3EC 8001E7EC AFA60030 */  sw         $a2, 0x30($sp)
/* 1F3F0 8001E7F0 8FAE0030 */  lw         $t6, 0x30($sp)
/* 1F3F4 8001E7F4 AFA00024 */  sw         $zero, 0x24($sp)
/* 1F3F8 8001E7F8 19C00015 */  blez       $t6, .L8001E850
/* 1F3FC 8001E7FC 00000000 */   nop
.L8001E800:
/* 1F400 8001E800 8FB90024 */  lw         $t9, 0x24($sp)
/* 1F404 8001E804 8FB8002C */  lw         $t8, 0x2c($sp)
/* 1F408 8001E808 8FAF0028 */  lw         $t7, 0x28($sp)
/* 1F40C 8001E80C 00194100 */  sll        $t0, $t9, 4
/* 1F410 8001E810 03084821 */  addu       $t1, $t8, $t0
/* 1F414 8001E814 C524000C */  lwc1       $f4, 0xc($t1)
/* 1F418 8001E818 8D250000 */  lw         $a1, ($t1)
/* 1F41C 8001E81C 8D260004 */  lw         $a2, 4($t1)
/* 1F420 8001E820 8D270008 */  lw         $a3, 8($t1)
/* 1F424 8001E824 25EA0040 */  addiu      $t2, $t7, 0x40
/* 1F428 8001E828 AFAA0028 */  sw         $t2, 0x28($sp)
/* 1F42C 8001E82C 01E02025 */  or         $a0, $t7, $zero
/* 1F430 8001E830 0C02BCA9 */  jal        func_800AF2A4
/* 1F434 8001E834 E7A40010 */   swc1      $f4, 0x10($sp)
/* 1F438 8001E838 8FAB0024 */  lw         $t3, 0x24($sp)
/* 1F43C 8001E83C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 1F440 8001E840 256C0001 */  addiu      $t4, $t3, 1
/* 1F444 8001E844 018D082A */  slt        $at, $t4, $t5
/* 1F448 8001E848 1420FFED */  bnez       $at, .L8001E800
/* 1F44C 8001E84C AFAC0024 */   sw        $t4, 0x24($sp)
.L8001E850:
/* 1F450 8001E850 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1F454 8001E854 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1F458 8001E858 03E00008 */  jr         $ra
/* 1F45C 8001E85C 00000000 */   nop

glabel func_8001E860
/* 1F460 8001E860 27BDFF38 */  addiu      $sp, $sp, -0xc8
/* 1F464 8001E864 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1F468 8001E868 AFA400C8 */  sw         $a0, 0xc8($sp)
/* 1F46C 8001E86C AFA500CC */  sw         $a1, 0xcc($sp)
/* 1F470 8001E870 AFA600D0 */  sw         $a2, 0xd0($sp)
/* 1F474 8001E874 AFA700D4 */  sw         $a3, 0xd4($sp)
/* 1F478 8001E878 3C013F80 */  lui        $at, 0x3f80
/* 1F47C 8001E87C 44812000 */  mtc1       $at, $f4
/* 1F480 8001E880 44813000 */  mtc1       $at, $f6
/* 1F484 8001E884 44814000 */  mtc1       $at, $f8
/* 1F488 8001E888 8FAE00EC */  lw         $t6, 0xec($sp)
/* 1F48C 8001E88C 8FAF00E4 */  lw         $t7, 0xe4($sp)
/* 1F490 8001E890 AFA000C0 */  sw         $zero, 0xc0($sp)
/* 1F494 8001E894 AFA000BC */  sw         $zero, 0xbc($sp)
/* 1F498 8001E898 AFA000B0 */  sw         $zero, 0xb0($sp)
/* 1F49C 8001E89C AFA00050 */  sw         $zero, 0x50($sp)
/* 1F4A0 8001E8A0 AFA0004C */  sw         $zero, 0x4c($sp)
/* 1F4A4 8001E8A4 E7A40064 */  swc1       $f4, 0x64($sp)
/* 1F4A8 8001E8A8 E7A60060 */  swc1       $f6, 0x60($sp)
/* 1F4AC 8001E8AC E7A8005C */  swc1       $f8, 0x5c($sp)
/* 1F4B0 8001E8B0 AFAE0044 */  sw         $t6, 0x44($sp)
/* 1F4B4 8001E8B4 95F8000E */  lhu        $t8, 0xe($t7)
/* 1F4B8 8001E8B8 24010001 */  addiu      $at, $zero, 1
/* 1F4BC 8001E8BC 1701006D */  bne        $t8, $at, .L8001EA74
/* 1F4C0 8001E8C0 00000000 */   nop
/* 1F4C4 8001E8C4 44805000 */  mtc1       $zero, $f10
/* 1F4C8 8001E8C8 8FB900D4 */  lw         $t9, 0xd4($sp)
/* 1F4CC 8001E8CC E72A0010 */  swc1       $f10, 0x10($t9)
/* 1F4D0 8001E8D0 8FA800D8 */  lw         $t0, 0xd8($sp)
/* 1F4D4 8001E8D4 95090004 */  lhu        $t1, 4($t0)
/* 1F4D8 8001E8D8 312A0010 */  andi       $t2, $t1, 0x10
/* 1F4DC 8001E8DC 1140001B */  beqz       $t2, .L8001E94C
/* 1F4E0 8001E8E0 00000000 */   nop
/* 1F4E4 8001E8E4 8FAB00E4 */  lw         $t3, 0xe4($sp)
/* 1F4E8 8001E8E8 A7A0004A */  sh         $zero, 0x4a($sp)
/* 1F4EC 8001E8EC 956C000C */  lhu        $t4, 0xc($t3)
/* 1F4F0 8001E8F0 1980002F */  blez       $t4, .L8001E9B0
/* 1F4F4 8001E8F4 00000000 */   nop
.L8001E8F8:
/* 1F4F8 8001E8F8 87AE004A */  lh         $t6, 0x4a($sp)
/* 1F4FC 8001E8FC 8FAD00D4 */  lw         $t5, 0xd4($sp)
/* 1F500 8001E900 000E78C0 */  sll        $t7, $t6, 3
/* 1F504 8001E904 01EE7823 */  subu       $t7, $t7, $t6
/* 1F508 8001E908 000F7880 */  sll        $t7, $t7, 2
/* 1F50C 8001E90C 01AFC021 */  addu       $t8, $t5, $t7
/* 1F510 8001E910 8F190000 */  lw         $t9, ($t8)
/* 1F514 8001E914 37280008 */  ori        $t0, $t9, 8
/* 1F518 8001E918 AF080000 */  sw         $t0, ($t8)
/* 1F51C 8001E91C 87A9004A */  lh         $t1, 0x4a($sp)
/* 1F520 8001E920 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 1F524 8001E924 252A0001 */  addiu      $t2, $t1, 1
/* 1F528 8001E928 A7AA004A */  sh         $t2, 0x4a($sp)
/* 1F52C 8001E92C 95CD000C */  lhu        $t5, 0xc($t6)
/* 1F530 8001E930 000A5C00 */  sll        $t3, $t2, 0x10
/* 1F534 8001E934 000B6403 */  sra        $t4, $t3, 0x10
/* 1F538 8001E938 018D082A */  slt        $at, $t4, $t5
/* 1F53C 8001E93C 1420FFEE */  bnez       $at, .L8001E8F8
/* 1F540 8001E940 00000000 */   nop
/* 1F544 8001E944 1000001A */  b          .L8001E9B0
/* 1F548 8001E948 00000000 */   nop
.L8001E94C:
/* 1F54C 8001E94C 8FAF00E4 */  lw         $t7, 0xe4($sp)
/* 1F550 8001E950 A7A0004A */  sh         $zero, 0x4a($sp)
/* 1F554 8001E954 95F9000C */  lhu        $t9, 0xc($t7)
/* 1F558 8001E958 1B200015 */  blez       $t9, .L8001E9B0
/* 1F55C 8001E95C 00000000 */   nop
.L8001E960:
/* 1F560 8001E960 87B8004A */  lh         $t8, 0x4a($sp)
/* 1F564 8001E964 8FA800D4 */  lw         $t0, 0xd4($sp)
/* 1F568 8001E968 2401FFF7 */  addiu      $at, $zero, -9
/* 1F56C 8001E96C 001848C0 */  sll        $t1, $t8, 3
/* 1F570 8001E970 01384823 */  subu       $t1, $t1, $t8
/* 1F574 8001E974 00094880 */  sll        $t1, $t1, 2
/* 1F578 8001E978 01095021 */  addu       $t2, $t0, $t1
/* 1F57C 8001E97C 8D4B0000 */  lw         $t3, ($t2)
/* 1F580 8001E980 01617024 */  and        $t6, $t3, $at
/* 1F584 8001E984 AD4E0000 */  sw         $t6, ($t2)
/* 1F588 8001E988 87AC004A */  lh         $t4, 0x4a($sp)
/* 1F58C 8001E98C 8FB800E4 */  lw         $t8, 0xe4($sp)
/* 1F590 8001E990 258D0001 */  addiu      $t5, $t4, 1
/* 1F594 8001E994 A7AD004A */  sh         $t5, 0x4a($sp)
/* 1F598 8001E998 9708000C */  lhu        $t0, 0xc($t8)
/* 1F59C 8001E99C 000D7C00 */  sll        $t7, $t5, 0x10
/* 1F5A0 8001E9A0 000FCC03 */  sra        $t9, $t7, 0x10
/* 1F5A4 8001E9A4 0328082A */  slt        $at, $t9, $t0
/* 1F5A8 8001E9A8 1420FFED */  bnez       $at, .L8001E960
/* 1F5AC 8001E9AC 00000000 */   nop
.L8001E9B0:
/* 1F5B0 8001E9B0 8FA900E4 */  lw         $t1, 0xe4($sp)
/* 1F5B4 8001E9B4 952B000A */  lhu        $t3, 0xa($t1)
/* 1F5B8 8001E9B8 256EFFFF */  addiu      $t6, $t3, -1
/* 1F5BC 8001E9BC AD2E0000 */  sw         $t6, ($t1)
/* 1F5C0 8001E9C0 8FAC00E4 */  lw         $t4, 0xe4($sp)
/* 1F5C4 8001E9C4 8FAA00D8 */  lw         $t2, 0xd8($sp)
/* 1F5C8 8001E9C8 8D8D0000 */  lw         $t5, ($t4)
/* 1F5CC 8001E9CC 000D7880 */  sll        $t7, $t5, 2
/* 1F5D0 8001E9D0 01ED7821 */  addu       $t7, $t7, $t5
/* 1F5D4 8001E9D4 000F7880 */  sll        $t7, $t7, 2
/* 1F5D8 8001E9D8 014FC021 */  addu       $t8, $t2, $t7
/* 1F5DC 8001E9DC 8F190014 */  lw         $t9, 0x14($t8)
/* 1F5E0 8001E9E0 8F080000 */  lw         $t0, ($t8)
/* 1F5E4 8001E9E4 03285823 */  subu       $t3, $t9, $t0
/* 1F5E8 8001E9E8 448B8000 */  mtc1       $t3, $f16
/* 1F5EC 8001E9EC 00000000 */  nop
/* 1F5F0 8001E9F0 468084A0 */  cvt.s.w    $f18, $f16
/* 1F5F4 8001E9F4 E5920004 */  swc1       $f18, 4($t4)
/* 1F5F8 8001E9F8 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 1F5FC 8001E9FC A5C0000E */  sh         $zero, 0xe($t6)
/* 1F600 8001EA00 8FAD00E4 */  lw         $t5, 0xe4($sp)
/* 1F604 8001EA04 8FA900D8 */  lw         $t1, 0xd8($sp)
/* 1F608 8001EA08 95AA000A */  lhu        $t2, 0xa($t5)
/* 1F60C 8001EA0C 000A7880 */  sll        $t7, $t2, 2
/* 1F610 8001EA10 01EA7821 */  addu       $t7, $t7, $t2
/* 1F614 8001EA14 000F7880 */  sll        $t7, $t7, 2
/* 1F618 8001EA18 012FC021 */  addu       $t8, $t1, $t7
/* 1F61C 8001EA1C C7040008 */  lwc1       $f4, 8($t8)
/* 1F620 8001EA20 E5A40020 */  swc1       $f4, 0x20($t5)
/* 1F624 8001EA24 8FA800E4 */  lw         $t0, 0xe4($sp)
/* 1F628 8001EA28 8FB900D8 */  lw         $t9, 0xd8($sp)
/* 1F62C 8001EA2C 950B000A */  lhu        $t3, 0xa($t0)
/* 1F630 8001EA30 000B6080 */  sll        $t4, $t3, 2
/* 1F634 8001EA34 018B6021 */  addu       $t4, $t4, $t3
/* 1F638 8001EA38 000C6080 */  sll        $t4, $t4, 2
/* 1F63C 8001EA3C 032C7021 */  addu       $t6, $t9, $t4
/* 1F640 8001EA40 C5C6000C */  lwc1       $f6, 0xc($t6)
/* 1F644 8001EA44 240B0001 */  addiu      $t3, $zero, 1
/* 1F648 8001EA48 E5060024 */  swc1       $f6, 0x24($t0)
/* 1F64C 8001EA4C 8FA900E4 */  lw         $t1, 0xe4($sp)
/* 1F650 8001EA50 8FAA00D8 */  lw         $t2, 0xd8($sp)
/* 1F654 8001EA54 952F000A */  lhu        $t7, 0xa($t1)
/* 1F658 8001EA58 000FC080 */  sll        $t8, $t7, 2
/* 1F65C 8001EA5C 030FC021 */  addu       $t8, $t8, $t7
/* 1F660 8001EA60 0018C080 */  sll        $t8, $t8, 2
/* 1F664 8001EA64 01586821 */  addu       $t5, $t2, $t8
/* 1F668 8001EA68 C5A80010 */  lwc1       $f8, 0x10($t5)
/* 1F66C 8001EA6C E5280028 */  swc1       $f8, 0x28($t1)
/* 1F670 8001EA70 AFAB0050 */  sw         $t3, 0x50($sp)
.L8001EA74:
/* 1F674 8001EA74 8FB900E4 */  lw         $t9, 0xe4($sp)
/* 1F678 8001EA78 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* 1F67C 8001EA7C 8FA800D8 */  lw         $t0, 0xd8($sp)
/* 1F680 8001EA80 8F2C0000 */  lw         $t4, ($t9)
/* 1F684 8001EA84 AFAE00AC */  sw         $t6, 0xac($sp)
/* 1F688 8001EA88 C7B000E8 */  lwc1       $f16, 0xe8($sp)
/* 1F68C 8001EA8C AFAC0054 */  sw         $t4, 0x54($sp)
/* 1F690 8001EA90 8F2F0000 */  lw         $t7, ($t9)
/* 1F694 8001EA94 000F5080 */  sll        $t2, $t7, 2
/* 1F698 8001EA98 014F5021 */  addu       $t2, $t2, $t7
/* 1F69C 8001EA9C 000A5080 */  sll        $t2, $t2, 2
/* 1F6A0 8001EAA0 010AC021 */  addu       $t8, $t0, $t2
/* 1F6A4 8001EAA4 8F0D0014 */  lw         $t5, 0x14($t8)
/* 1F6A8 8001EAA8 8F090000 */  lw         $t1, ($t8)
/* 1F6AC 8001EAAC 01A95823 */  subu       $t3, $t5, $t1
/* 1F6B0 8001EAB0 AFAB00B4 */  sw         $t3, 0xb4($sp)
/* 1F6B4 8001EAB4 C72A0010 */  lwc1       $f10, 0x10($t9)
/* 1F6B8 8001EAB8 C7240004 */  lwc1       $f4, 4($t9)
/* 1F6BC 8001EABC 46105483 */  div.s      $f18, $f10, $f16
/* 1F6C0 8001EAC0 46122180 */  add.s      $f6, $f4, $f18
/* 1F6C4 8001EAC4 E7260004 */  swc1       $f6, 4($t9)
/* 1F6C8 8001EAC8 8FAE00B4 */  lw         $t6, 0xb4($sp)
/* 1F6CC 8001EACC 8FAC00E4 */  lw         $t4, 0xe4($sp)
/* 1F6D0 8001EAD0 448E5000 */  mtc1       $t6, $f10
/* 1F6D4 8001EAD4 C5880004 */  lwc1       $f8, 4($t4)
/* 1F6D8 8001EAD8 46805420 */  cvt.s.w    $f16, $f10
/* 1F6DC 8001EADC 4608803C */  c.lt.s     $f16, $f8
/* 1F6E0 8001EAE0 00000000 */  nop
/* 1F6E4 8001EAE4 45000147 */  bc1f       .L8001F004
/* 1F6E8 8001EAE8 00000000 */   nop
/* 1F6EC 8001EAEC 8D880000 */  lw         $t0, ($t4)
/* 1F6F0 8001EAF0 958F000A */  lhu        $t7, 0xa($t4)
/* 1F6F4 8001EAF4 250A0001 */  addiu      $t2, $t0, 1
/* 1F6F8 8001EAF8 014F082B */  sltu       $at, $t2, $t7
/* 1F6FC 8001EAFC 10200027 */  beqz       $at, .L8001EB9C
/* 1F700 8001EB00 00000000 */   nop
/* 1F704 8001EB04 9598000C */  lhu        $t8, 0xc($t4)
/* 1F708 8001EB08 8FAB00E0 */  lw         $t3, 0xe0($sp)
/* 1F70C 8001EB0C AFA000BC */  sw         $zero, 0xbc($sp)
/* 1F710 8001EB10 01180019 */  multu      $t0, $t8
/* 1F714 8001EB14 00006812 */  mflo       $t5
/* 1F718 8001EB18 000D4900 */  sll        $t1, $t5, 4
/* 1F71C 8001EB1C 012BC821 */  addu       $t9, $t1, $t3
/* 1F720 8001EB20 AFB900C4 */  sw         $t9, 0xc4($sp)
/* 1F724 8001EB24 958E000C */  lhu        $t6, 0xc($t4)
/* 1F728 8001EB28 19C0001C */  blez       $t6, .L8001EB9C
/* 1F72C 8001EB2C 00000000 */   nop
.L8001EB30:
/* 1F730 8001EB30 8FAA00BC */  lw         $t2, 0xbc($sp)
/* 1F734 8001EB34 8FAF00C4 */  lw         $t7, 0xc4($sp)
/* 1F738 8001EB38 27A40068 */  addiu      $a0, $sp, 0x68
/* 1F73C 8001EB3C 000A4100 */  sll        $t0, $t2, 4
/* 1F740 8001EB40 01E8C021 */  addu       $t8, $t7, $t0
/* 1F744 8001EB44 C704000C */  lwc1       $f4, 0xc($t8)
/* 1F748 8001EB48 8F050000 */  lw         $a1, ($t8)
/* 1F74C 8001EB4C 8F060004 */  lw         $a2, 4($t8)
/* 1F750 8001EB50 8F070008 */  lw         $a3, 8($t8)
/* 1F754 8001EB54 0C02BCA9 */  jal        func_800AF2A4
/* 1F758 8001EB58 E7A40010 */   swc1      $f4, 0x10($sp)
/* 1F75C 8001EB5C 8FAD00BC */  lw         $t5, 0xbc($sp)
/* 1F760 8001EB60 8FAB00CC */  lw         $t3, 0xcc($sp)
/* 1F764 8001EB64 27A50068 */  addiu      $a1, $sp, 0x68
/* 1F768 8001EB68 000D4980 */  sll        $t1, $t5, 6
/* 1F76C 8001EB6C 012BC821 */  addu       $t9, $t1, $t3
/* 1F770 8001EB70 03202025 */  or         $a0, $t9, $zero
/* 1F774 8001EB74 0C02B7DC */  jal        func_800ADF70
/* 1F778 8001EB78 03203025 */   or        $a2, $t9, $zero
/* 1F77C 8001EB7C 8FAC00BC */  lw         $t4, 0xbc($sp)
/* 1F780 8001EB80 8FAA00E4 */  lw         $t2, 0xe4($sp)
/* 1F784 8001EB84 258E0001 */  addiu      $t6, $t4, 1
/* 1F788 8001EB88 AFAE00BC */  sw         $t6, 0xbc($sp)
/* 1F78C 8001EB8C 954F000C */  lhu        $t7, 0xc($t2)
/* 1F790 8001EB90 01CF082A */  slt        $at, $t6, $t7
/* 1F794 8001EB94 1420FFE6 */  bnez       $at, .L8001EB30
/* 1F798 8001EB98 00000000 */   nop
.L8001EB9C:
/* 1F79C 8001EB9C 8FA800E4 */  lw         $t0, 0xe4($sp)
/* 1F7A0 8001EBA0 8D180000 */  lw         $t8, ($t0)
/* 1F7A4 8001EBA4 270D0001 */  addiu      $t5, $t8, 1
/* 1F7A8 8001EBA8 AD0D0000 */  sw         $t5, ($t0)
/* 1F7AC 8001EBAC 8FA90050 */  lw         $t1, 0x50($sp)
/* 1F7B0 8001EBB0 15200059 */  bnez       $t1, .L8001ED18
/* 1F7B4 8001EBB4 00000000 */   nop
/* 1F7B8 8001EBB8 8FB900E4 */  lw         $t9, 0xe4($sp)
/* 1F7BC 8001EBBC 8FAB00D8 */  lw         $t3, 0xd8($sp)
/* 1F7C0 8001EBC0 8F2C0000 */  lw         $t4, ($t9)
/* 1F7C4 8001EBC4 000C5080 */  sll        $t2, $t4, 2
/* 1F7C8 8001EBC8 014C5021 */  addu       $t2, $t2, $t4
/* 1F7CC 8001EBCC 000A5080 */  sll        $t2, $t2, 2
/* 1F7D0 8001EBD0 016A7021 */  addu       $t6, $t3, $t2
/* 1F7D4 8001EBD4 95CF0004 */  lhu        $t7, 4($t6)
/* 1F7D8 8001EBD8 31F80001 */  andi       $t8, $t7, 1
/* 1F7DC 8001EBDC 13000022 */  beqz       $t8, .L8001EC68
/* 1F7E0 8001EBE0 00000000 */   nop
/* 1F7E4 8001EBE4 AFA000B8 */  sw         $zero, 0xb8($sp)
/* 1F7E8 8001EBE8 972D000C */  lhu        $t5, 0xc($t9)
/* 1F7EC 8001EBEC 19A0001B */  blez       $t5, .L8001EC5C
/* 1F7F0 8001EBF0 00000000 */   nop
.L8001EBF4:
/* 1F7F4 8001EBF4 8FA900B8 */  lw         $t1, 0xb8($sp)
/* 1F7F8 8001EBF8 8FAA00CC */  lw         $t2, 0xcc($sp)
/* 1F7FC 8001EBFC 8FA800D0 */  lw         $t0, 0xd0($sp)
/* 1F800 8001EC00 00096180 */  sll        $t4, $t1, 6
/* 1F804 8001EC04 014C7021 */  addu       $t6, $t2, $t4
/* 1F808 8001EC08 25D9003C */  addiu      $t9, $t6, 0x3c
/* 1F80C 8001EC0C 010C5821 */  addu       $t3, $t0, $t4
.L8001EC10:
/* 1F810 8001EC10 8DD80000 */  lw         $t8, ($t6)
/* 1F814 8001EC14 25CE000C */  addiu      $t6, $t6, 0xc
/* 1F818 8001EC18 256B000C */  addiu      $t3, $t3, 0xc
/* 1F81C 8001EC1C AD78FFF4 */  sw         $t8, -0xc($t3)
/* 1F820 8001EC20 8DCFFFF8 */  lw         $t7, -8($t6)
/* 1F824 8001EC24 AD6FFFF8 */  sw         $t7, -8($t3)
/* 1F828 8001EC28 8DD8FFFC */  lw         $t8, -4($t6)
/* 1F82C 8001EC2C 15D9FFF8 */  bne        $t6, $t9, .L8001EC10
/* 1F830 8001EC30 AD78FFFC */   sw        $t8, -4($t3)
/* 1F834 8001EC34 8DD80000 */  lw         $t8, ($t6)
/* 1F838 8001EC38 AD780000 */  sw         $t8, ($t3)
/* 1F83C 8001EC3C 8FAD00B8 */  lw         $t5, 0xb8($sp)
/* 1F840 8001EC40 8FA800E4 */  lw         $t0, 0xe4($sp)
/* 1F844 8001EC44 25A90001 */  addiu      $t1, $t5, 1
/* 1F848 8001EC48 AFA900B8 */  sw         $t1, 0xb8($sp)
/* 1F84C 8001EC4C 950A000C */  lhu        $t2, 0xc($t0)
/* 1F850 8001EC50 012A082A */  slt        $at, $t1, $t2
/* 1F854 8001EC54 1420FFE7 */  bnez       $at, .L8001EBF4
/* 1F858 8001EC58 00000000 */   nop
.L8001EC5C:
/* 1F85C 8001EC5C 8FAC00E4 */  lw         $t4, 0xe4($sp)
/* 1F860 8001EC60 8D990000 */  lw         $t9, ($t4)
/* 1F864 8001EC64 A5990008 */  sh         $t9, 8($t4)
.L8001EC68:
/* 1F868 8001EC68 8FAB00E4 */  lw         $t3, 0xe4($sp)
/* 1F86C 8001EC6C 8FAE00D8 */  lw         $t6, 0xd8($sp)
/* 1F870 8001EC70 8D6F0000 */  lw         $t7, ($t3)
/* 1F874 8001EC74 000FC080 */  sll        $t8, $t7, 2
/* 1F878 8001EC78 030FC021 */  addu       $t8, $t8, $t7
/* 1F87C 8001EC7C 0018C080 */  sll        $t8, $t8, 2
/* 1F880 8001EC80 01D86821 */  addu       $t5, $t6, $t8
/* 1F884 8001EC84 95A80004 */  lhu        $t0, 4($t5)
/* 1F888 8001EC88 31090002 */  andi       $t1, $t0, 2
/* 1F88C 8001EC8C 11200022 */  beqz       $t1, .L8001ED18
/* 1F890 8001EC90 00000000 */   nop
/* 1F894 8001EC94 AFA000B8 */  sw         $zero, 0xb8($sp)
/* 1F898 8001EC98 956A000C */  lhu        $t2, 0xc($t3)
/* 1F89C 8001EC9C 1940001B */  blez       $t2, .L8001ED0C
/* 1F8A0 8001ECA0 00000000 */   nop
.L8001ECA4:
/* 1F8A4 8001ECA4 8FAC00B8 */  lw         $t4, 0xb8($sp)
/* 1F8A8 8001ECA8 8FB800D0 */  lw         $t8, 0xd0($sp)
/* 1F8AC 8001ECAC 8FB900CC */  lw         $t9, 0xcc($sp)
/* 1F8B0 8001ECB0 000C7980 */  sll        $t7, $t4, 6
/* 1F8B4 8001ECB4 030F6821 */  addu       $t5, $t8, $t7
/* 1F8B8 8001ECB8 25AB003C */  addiu      $t3, $t5, 0x3c
/* 1F8BC 8001ECBC 032F7021 */  addu       $t6, $t9, $t7
.L8001ECC0:
/* 1F8C0 8001ECC0 8DA90000 */  lw         $t1, ($t5)
/* 1F8C4 8001ECC4 25AD000C */  addiu      $t5, $t5, 0xc
/* 1F8C8 8001ECC8 25CE000C */  addiu      $t6, $t6, 0xc
/* 1F8CC 8001ECCC ADC9FFF4 */  sw         $t1, -0xc($t6)
/* 1F8D0 8001ECD0 8DA8FFF8 */  lw         $t0, -8($t5)
/* 1F8D4 8001ECD4 ADC8FFF8 */  sw         $t0, -8($t6)
/* 1F8D8 8001ECD8 8DA9FFFC */  lw         $t1, -4($t5)
/* 1F8DC 8001ECDC 15ABFFF8 */  bne        $t5, $t3, .L8001ECC0
/* 1F8E0 8001ECE0 ADC9FFFC */   sw        $t1, -4($t6)
/* 1F8E4 8001ECE4 8DA90000 */  lw         $t1, ($t5)
/* 1F8E8 8001ECE8 ADC90000 */  sw         $t1, ($t6)
/* 1F8EC 8001ECEC 8FAA00B8 */  lw         $t2, 0xb8($sp)
/* 1F8F0 8001ECF0 8FB900E4 */  lw         $t9, 0xe4($sp)
/* 1F8F4 8001ECF4 254C0001 */  addiu      $t4, $t2, 1
/* 1F8F8 8001ECF8 AFAC00B8 */  sw         $t4, 0xb8($sp)
/* 1F8FC 8001ECFC 9738000C */  lhu        $t8, 0xc($t9)
/* 1F900 8001ED00 0198082A */  slt        $at, $t4, $t8
/* 1F904 8001ED04 1420FFE7 */  bnez       $at, .L8001ECA4
/* 1F908 8001ED08 00000000 */   nop
.L8001ED0C:
/* 1F90C 8001ED0C 8FAF00E4 */  lw         $t7, 0xe4($sp)
/* 1F910 8001ED10 95EB0008 */  lhu        $t3, 8($t7)
/* 1F914 8001ED14 ADEB0000 */  sw         $t3, ($t7)
.L8001ED18:
/* 1F918 8001ED18 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 1F91C 8001ED1C 8FAD00D8 */  lw         $t5, 0xd8($sp)
/* 1F920 8001ED20 8DC80000 */  lw         $t0, ($t6)
/* 1F924 8001ED24 00084880 */  sll        $t1, $t0, 2
/* 1F928 8001ED28 01284821 */  addu       $t1, $t1, $t0
/* 1F92C 8001ED2C 00094880 */  sll        $t1, $t1, 2
/* 1F930 8001ED30 01A95021 */  addu       $t2, $t5, $t1
/* 1F934 8001ED34 95590004 */  lhu        $t9, 4($t2)
/* 1F938 8001ED38 332C0004 */  andi       $t4, $t9, 4
/* 1F93C 8001ED3C 11800003 */  beqz       $t4, .L8001ED4C
/* 1F940 8001ED40 00000000 */   nop
/* 1F944 8001ED44 1000022F */  b          .L8001F604
/* 1F948 8001ED48 87A200F2 */   lh        $v0, 0xf2($sp)
.L8001ED4C:
/* 1F94C 8001ED4C 8FAB00E4 */  lw         $t3, 0xe4($sp)
/* 1F950 8001ED50 8FB800D8 */  lw         $t8, 0xd8($sp)
/* 1F954 8001ED54 8D6F0000 */  lw         $t7, ($t3)
/* 1F958 8001ED58 000F7080 */  sll        $t6, $t7, 2
/* 1F95C 8001ED5C 01CF7021 */  addu       $t6, $t6, $t7
/* 1F960 8001ED60 000E7080 */  sll        $t6, $t6, 2
/* 1F964 8001ED64 030E4021 */  addu       $t0, $t8, $t6
/* 1F968 8001ED68 950D0004 */  lhu        $t5, 4($t0)
/* 1F96C 8001ED6C 31A90040 */  andi       $t1, $t5, 0x40
/* 1F970 8001ED70 11200040 */  beqz       $t1, .L8001EE74
/* 1F974 8001ED74 00000000 */   nop
/* 1F978 8001ED78 8FAA00D4 */  lw         $t2, 0xd4($sp)
/* 1F97C 8001ED7C 44803000 */  mtc1       $zero, $f6
/* 1F980 8001ED80 C5520010 */  lwc1       $f18, 0x10($t2)
/* 1F984 8001ED84 46069032 */  c.eq.s     $f18, $f6
/* 1F988 8001ED88 00000000 */  nop
/* 1F98C 8001ED8C 45000004 */  bc1f       .L8001EDA0
/* 1F990 8001ED90 3C013F80 */   lui       $at, 0x3f80
/* 1F994 8001ED94 44815000 */  mtc1       $at, $f10
/* 1F998 8001ED98 00000000 */  nop
/* 1F99C 8001ED9C E54A0010 */  swc1       $f10, 0x10($t2)
.L8001EDA0:
/* 1F9A0 8001EDA0 8FAC00E4 */  lw         $t4, 0xe4($sp)
/* 1F9A4 8001EDA4 8FB900D8 */  lw         $t9, 0xd8($sp)
/* 1F9A8 8001EDA8 8D8B0000 */  lw         $t3, ($t4)
/* 1F9AC 8001EDAC 000B7880 */  sll        $t7, $t3, 2
/* 1F9B0 8001EDB0 01EB7821 */  addu       $t7, $t7, $t3
/* 1F9B4 8001EDB4 000F7880 */  sll        $t7, $t7, 2
/* 1F9B8 8001EDB8 032FC021 */  addu       $t8, $t9, $t7
/* 1F9BC 8001EDBC 930E0006 */  lbu        $t6, 6($t8)
/* 1F9C0 8001EDC0 A7AE004A */  sh         $t6, 0x4a($sp)
/* 1F9C4 8001EDC4 8D880000 */  lw         $t0, ($t4)
/* 1F9C8 8001EDC8 00086880 */  sll        $t5, $t0, 2
/* 1F9CC 8001EDCC 01A86821 */  addu       $t5, $t5, $t0
/* 1F9D0 8001EDD0 000D6880 */  sll        $t5, $t5, 2
/* 1F9D4 8001EDD4 032D4821 */  addu       $t1, $t9, $t5
/* 1F9D8 8001EDD8 912A0007 */  lbu        $t2, 7($t1)
/* 1F9DC 8001EDDC 314B007F */  andi       $t3, $t2, 0x7f
/* 1F9E0 8001EDE0 448B4000 */  mtc1       $t3, $f8
/* 1F9E4 8001EDE4 00000000 */  nop
/* 1F9E8 8001EDE8 46804420 */  cvt.s.w    $f16, $f8
/* 1F9EC 8001EDEC E7B00040 */  swc1       $f16, 0x40($sp)
/* 1F9F0 8001EDF0 8D8F0000 */  lw         $t7, ($t4)
/* 1F9F4 8001EDF4 000FC080 */  sll        $t8, $t7, 2
/* 1F9F8 8001EDF8 030FC021 */  addu       $t8, $t8, $t7
/* 1F9FC 8001EDFC 0018C080 */  sll        $t8, $t8, 2
/* 1FA00 8001EE00 03387021 */  addu       $t6, $t9, $t8
/* 1FA04 8001EE04 91C80007 */  lbu        $t0, 7($t6)
/* 1FA08 8001EE08 310D0080 */  andi       $t5, $t0, 0x80
/* 1FA0C 8001EE0C 11A00005 */  beqz       $t5, .L8001EE24
/* 1FA10 8001EE10 3C014080 */   lui       $at, 0x4080
/* 1FA14 8001EE14 44812000 */  mtc1       $at, $f4
/* 1FA18 8001EE18 00000000 */  nop
/* 1FA1C 8001EE1C 46048482 */  mul.s      $f18, $f16, $f4
/* 1FA20 8001EE20 E7B20040 */  swc1       $f18, 0x40($sp)
.L8001EE24:
/* 1FA24 8001EE24 C7A60040 */  lwc1       $f6, 0x40($sp)
/* 1FA28 8001EE28 3C014059 */  lui        $at, 0x4059
/* 1FA2C 8001EE2C 44814800 */  mtc1       $at, $f9
/* 1FA30 8001EE30 44804000 */  mtc1       $zero, $f8
/* 1FA34 8001EE34 460032A1 */  cvt.d.s    $f10, $f6
/* 1FA38 8001EE38 87AA004A */  lh         $t2, 0x4a($sp)
/* 1FA3C 8001EE3C 46285403 */  div.d      $f16, $f10, $f8
/* 1FA40 8001EE40 8FA900D4 */  lw         $t1, 0xd4($sp)
/* 1FA44 8001EE44 448A5000 */  mtc1       $t2, $f10
/* 1FA48 8001EE48 C5240010 */  lwc1       $f4, 0x10($t1)
/* 1FA4C 8001EE4C 46805220 */  cvt.s.w    $f8, $f10
/* 1FA50 8001EE50 460024A1 */  cvt.d.s    $f18, $f4
/* 1FA54 8001EE54 46004121 */  cvt.d.s    $f4, $f8
/* 1FA58 8001EE58 46309181 */  sub.d      $f6, $f18, $f16
/* 1FA5C 8001EE5C 46243483 */  div.d      $f18, $f6, $f4
/* 1FA60 8001EE60 46209420 */  cvt.s.d    $f16, $f18
/* 1FA64 8001EE64 E5300014 */  swc1       $f16, 0x14($t1)
/* 1FA68 8001EE68 8FAC00D4 */  lw         $t4, 0xd4($sp)
/* 1FA6C 8001EE6C 87AB004A */  lh         $t3, 0x4a($sp)
/* 1FA70 8001EE70 AD8B0018 */  sw         $t3, 0x18($t4)
.L8001EE74:
/* 1FA74 8001EE74 8FB900E4 */  lw         $t9, 0xe4($sp)
/* 1FA78 8001EE78 8FAF00D8 */  lw         $t7, 0xd8($sp)
/* 1FA7C 8001EE7C 8F380000 */  lw         $t8, ($t9)
/* 1FA80 8001EE80 00187080 */  sll        $t6, $t8, 2
/* 1FA84 8001EE84 01D87021 */  addu       $t6, $t6, $t8
/* 1FA88 8001EE88 000E7080 */  sll        $t6, $t6, 2
/* 1FA8C 8001EE8C 01EE4021 */  addu       $t0, $t7, $t6
/* 1FA90 8001EE90 950D0004 */  lhu        $t5, 4($t0)
/* 1FA94 8001EE94 31AA0010 */  andi       $t2, $t5, 0x10
/* 1FA98 8001EE98 11400018 */  beqz       $t2, .L8001EEFC
/* 1FA9C 8001EE9C 00000000 */   nop
/* 1FAA0 8001EEA0 A7A0004A */  sh         $zero, 0x4a($sp)
/* 1FAA4 8001EEA4 9729000C */  lhu        $t1, 0xc($t9)
/* 1FAA8 8001EEA8 19200014 */  blez       $t1, .L8001EEFC
/* 1FAAC 8001EEAC 00000000 */   nop
.L8001EEB0:
/* 1FAB0 8001EEB0 87AC004A */  lh         $t4, 0x4a($sp)
/* 1FAB4 8001EEB4 8FAB00D4 */  lw         $t3, 0xd4($sp)
/* 1FAB8 8001EEB8 000CC0C0 */  sll        $t8, $t4, 3
/* 1FABC 8001EEBC 030CC023 */  subu       $t8, $t8, $t4
/* 1FAC0 8001EEC0 0018C080 */  sll        $t8, $t8, 2
/* 1FAC4 8001EEC4 01787821 */  addu       $t7, $t3, $t8
/* 1FAC8 8001EEC8 8DEE0000 */  lw         $t6, ($t7)
/* 1FACC 8001EECC 35C80008 */  ori        $t0, $t6, 8
/* 1FAD0 8001EED0 ADE80000 */  sw         $t0, ($t7)
/* 1FAD4 8001EED4 87AD004A */  lh         $t5, 0x4a($sp)
/* 1FAD8 8001EED8 8FAC00E4 */  lw         $t4, 0xe4($sp)
/* 1FADC 8001EEDC 25AA0001 */  addiu      $t2, $t5, 1
/* 1FAE0 8001EEE0 A7AA004A */  sh         $t2, 0x4a($sp)
/* 1FAE4 8001EEE4 958B000C */  lhu        $t3, 0xc($t4)
/* 1FAE8 8001EEE8 000ACC00 */  sll        $t9, $t2, 0x10
/* 1FAEC 8001EEEC 00194C03 */  sra        $t1, $t9, 0x10
/* 1FAF0 8001EEF0 012B082A */  slt        $at, $t1, $t3
/* 1FAF4 8001EEF4 1420FFEE */  bnez       $at, .L8001EEB0
/* 1FAF8 8001EEF8 00000000 */   nop
.L8001EEFC:
/* 1FAFC 8001EEFC 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 1FB00 8001EF00 8FB800D8 */  lw         $t8, 0xd8($sp)
/* 1FB04 8001EF04 8DC80000 */  lw         $t0, ($t6)
/* 1FB08 8001EF08 00087880 */  sll        $t7, $t0, 2
/* 1FB0C 8001EF0C 01E87821 */  addu       $t7, $t7, $t0
/* 1FB10 8001EF10 000F7880 */  sll        $t7, $t7, 2
/* 1FB14 8001EF14 030F6821 */  addu       $t5, $t8, $t7
/* 1FB18 8001EF18 95AA0004 */  lhu        $t2, 4($t5)
/* 1FB1C 8001EF1C 31590020 */  andi       $t9, $t2, 0x20
/* 1FB20 8001EF20 13200019 */  beqz       $t9, .L8001EF88
/* 1FB24 8001EF24 00000000 */   nop
/* 1FB28 8001EF28 A7A0004A */  sh         $zero, 0x4a($sp)
/* 1FB2C 8001EF2C 95CC000C */  lhu        $t4, 0xc($t6)
/* 1FB30 8001EF30 19800015 */  blez       $t4, .L8001EF88
/* 1FB34 8001EF34 00000000 */   nop
.L8001EF38:
/* 1FB38 8001EF38 87AB004A */  lh         $t3, 0x4a($sp)
/* 1FB3C 8001EF3C 8FA900D4 */  lw         $t1, 0xd4($sp)
/* 1FB40 8001EF40 2401FFF7 */  addiu      $at, $zero, -9
/* 1FB44 8001EF44 000B40C0 */  sll        $t0, $t3, 3
/* 1FB48 8001EF48 010B4023 */  subu       $t0, $t0, $t3
/* 1FB4C 8001EF4C 00084080 */  sll        $t0, $t0, 2
/* 1FB50 8001EF50 0128C021 */  addu       $t8, $t1, $t0
/* 1FB54 8001EF54 8F0F0000 */  lw         $t7, ($t8)
/* 1FB58 8001EF58 01E16824 */  and        $t5, $t7, $at
/* 1FB5C 8001EF5C AF0D0000 */  sw         $t5, ($t8)
/* 1FB60 8001EF60 87AA004A */  lh         $t2, 0x4a($sp)
/* 1FB64 8001EF64 8FAB00E4 */  lw         $t3, 0xe4($sp)
/* 1FB68 8001EF68 25590001 */  addiu      $t9, $t2, 1
/* 1FB6C 8001EF6C A7B9004A */  sh         $t9, 0x4a($sp)
/* 1FB70 8001EF70 9569000C */  lhu        $t1, 0xc($t3)
/* 1FB74 8001EF74 00197400 */  sll        $t6, $t9, 0x10
/* 1FB78 8001EF78 000E6403 */  sra        $t4, $t6, 0x10
/* 1FB7C 8001EF7C 0189082A */  slt        $at, $t4, $t1
/* 1FB80 8001EF80 1420FFED */  bnez       $at, .L8001EF38
/* 1FB84 8001EF84 00000000 */   nop
.L8001EF88:
/* 1FB88 8001EF88 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* 1FB8C 8001EF8C 8FA800E4 */  lw         $t0, 0xe4($sp)
/* 1FB90 8001EF90 448F4000 */  mtc1       $t7, $f8
/* 1FB94 8001EF94 C50A0004 */  lwc1       $f10, 4($t0)
/* 1FB98 8001EF98 468041A0 */  cvt.s.w    $f6, $f8
/* 1FB9C 8001EF9C 46065101 */  sub.s      $f4, $f10, $f6
/* 1FBA0 8001EFA0 E5040004 */  swc1       $f4, 4($t0)
/* 1FBA4 8001EFA4 8FAD00E4 */  lw         $t5, 0xe4($sp)
/* 1FBA8 8001EFA8 8DB80000 */  lw         $t8, ($t5)
/* 1FBAC 8001EFAC 95AA000A */  lhu        $t2, 0xa($t5)
/* 1FBB0 8001EFB0 030A082B */  sltu       $at, $t8, $t2
/* 1FBB4 8001EFB4 14200008 */  bnez       $at, .L8001EFD8
/* 1FBB8 8001EFB8 00000000 */   nop
/* 1FBBC 8001EFBC 8FA400CC */  lw         $a0, 0xcc($sp)
/* 1FBC0 8001EFC0 8FA500E0 */  lw         $a1, 0xe0($sp)
/* 1FBC4 8001EFC4 0C007D85 */  jal        func_8001F614
/* 1FBC8 8001EFC8 95A6000C */   lhu       $a2, 0xc($t5)
/* 1FBCC 8001EFCC 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 1FBD0 8001EFD0 24190001 */  addiu      $t9, $zero, 1
/* 1FBD4 8001EFD4 ADD90000 */  sw         $t9, ($t6)
.L8001EFD8:
/* 1FBD8 8001EFD8 8FAC00E4 */  lw         $t4, 0xe4($sp)
/* 1FBDC 8001EFDC 8FAB00D8 */  lw         $t3, 0xd8($sp)
/* 1FBE0 8001EFE0 8D890000 */  lw         $t1, ($t4)
/* 1FBE4 8001EFE4 00097880 */  sll        $t7, $t1, 2
/* 1FBE8 8001EFE8 01E97821 */  addu       $t7, $t7, $t1
/* 1FBEC 8001EFEC 000F7880 */  sll        $t7, $t7, 2
/* 1FBF0 8001EFF0 016F4021 */  addu       $t0, $t3, $t7
/* 1FBF4 8001EFF4 8D180014 */  lw         $t8, 0x14($t0)
/* 1FBF8 8001EFF8 8D0A0000 */  lw         $t2, ($t0)
/* 1FBFC 8001EFFC 030A6823 */  subu       $t5, $t8, $t2
/* 1FC00 8001F000 AFAD00B4 */  sw         $t5, 0xb4($sp)
.L8001F004:
/* 1FC04 8001F004 8FB900E4 */  lw         $t9, 0xe4($sp)
/* 1FC08 8001F008 8FB800B4 */  lw         $t8, 0xb4($sp)
/* 1FC0C 8001F00C 8FAF00E0 */  lw         $t7, 0xe0($sp)
/* 1FC10 8001F010 8F2E0000 */  lw         $t6, ($t9)
/* 1FC14 8001F014 972C000C */  lhu        $t4, 0xc($t9)
/* 1FC18 8001F018 44988000 */  mtc1       $t8, $f16
/* 1FC1C 8001F01C 8FAA00D8 */  lw         $t2, 0xd8($sp)
/* 1FC20 8001F020 01CC0019 */  multu      $t6, $t4
/* 1FC24 8001F024 46808220 */  cvt.s.w    $f8, $f16
/* 1FC28 8001F028 3C01801A */  lui        $at, 0x801a
/* 1FC2C 8001F02C 00004812 */  mflo       $t1
/* 1FC30 8001F030 00095900 */  sll        $t3, $t1, 4
/* 1FC34 8001F034 016F4021 */  addu       $t0, $t3, $t7
/* 1FC38 8001F038 AFA800C4 */  sw         $t0, 0xc4($sp)
/* 1FC3C 8001F03C C7320004 */  lwc1       $f18, 4($t9)
/* 1FC40 8001F040 46089283 */  div.s      $f10, $f18, $f8
/* 1FC44 8001F044 E7AA0060 */  swc1       $f10, 0x60($sp)
/* 1FC48 8001F048 8F2D0000 */  lw         $t5, ($t9)
/* 1FC4C 8001F04C 000D7080 */  sll        $t6, $t5, 2
/* 1FC50 8001F050 01CD7021 */  addu       $t6, $t6, $t5
/* 1FC54 8001F054 000E7080 */  sll        $t6, $t6, 2
/* 1FC58 8001F058 014E6021 */  addu       $t4, $t2, $t6
/* 1FC5C 8001F05C 014E4821 */  addu       $t1, $t2, $t6
/* 1FC60 8001F060 C5240008 */  lwc1       $f4, 8($t1)
/* 1FC64 8001F064 C586001C */  lwc1       $f6, 0x1c($t4)
/* 1FC68 8001F068 014E5821 */  addu       $t3, $t2, $t6
/* 1FC6C 8001F06C C5680008 */  lwc1       $f8, 8($t3)
/* 1FC70 8001F070 46043401 */  sub.s      $f16, $f6, $f4
/* 1FC74 8001F074 C7260014 */  lwc1       $f6, 0x14($t9)
/* 1FC78 8001F078 460A8482 */  mul.s      $f18, $f16, $f10
/* 1FC7C 8001F07C 46083100 */  add.s      $f4, $f6, $f8
/* 1FC80 8001F080 46049400 */  add.s      $f16, $f18, $f4
/* 1FC84 8001F084 E430B0E0 */  swc1       $f16, -0x4f20($at)
/* 1FC88 8001F088 8F2F0000 */  lw         $t7, ($t9)
/* 1FC8C 8001F08C 8F2D0000 */  lw         $t5, ($t9)
/* 1FC90 8001F090 8F2E0000 */  lw         $t6, ($t9)
/* 1FC94 8001F094 000F4080 */  sll        $t0, $t7, 2
/* 1FC98 8001F098 000D6080 */  sll        $t4, $t5, 2
/* 1FC9C 8001F09C 010F4021 */  addu       $t0, $t0, $t7
/* 1FCA0 8001F0A0 018D6021 */  addu       $t4, $t4, $t5
/* 1FCA4 8001F0A4 000C6080 */  sll        $t4, $t4, 2
/* 1FCA8 8001F0A8 00084080 */  sll        $t0, $t0, 2
/* 1FCAC 8001F0AC 0148C021 */  addu       $t8, $t2, $t0
/* 1FCB0 8001F0B0 014C4821 */  addu       $t1, $t2, $t4
/* 1FCB4 8001F0B4 C528000C */  lwc1       $f8, 0xc($t1)
/* 1FCB8 8001F0B8 C7060020 */  lwc1       $f6, 0x20($t8)
/* 1FCBC 8001F0BC 000E5880 */  sll        $t3, $t6, 2
/* 1FCC0 8001F0C0 016E5821 */  addu       $t3, $t3, $t6
/* 1FCC4 8001F0C4 46083481 */  sub.s      $f18, $f6, $f8
/* 1FCC8 8001F0C8 000B5880 */  sll        $t3, $t3, 2
/* 1FCCC 8001F0CC 014B7821 */  addu       $t7, $t2, $t3
/* 1FCD0 8001F0D0 C5F0000C */  lwc1       $f16, 0xc($t7)
/* 1FCD4 8001F0D4 460A9102 */  mul.s      $f4, $f18, $f10
/* 1FCD8 8001F0D8 C7260018 */  lwc1       $f6, 0x18($t9)
/* 1FCDC 8001F0DC 3C01801A */  lui        $at, %hi(D_8019B0E4)
/* 1FCE0 8001F0E0 46103200 */  add.s      $f8, $f6, $f16
/* 1FCE4 8001F0E4 46082480 */  add.s      $f18, $f4, $f8
/* 1FCE8 8001F0E8 E432B0E4 */  swc1       $f18, %lo(D_8019B0E4)($at)
/* 1FCEC 8001F0EC 8F280000 */  lw         $t0, ($t9)
/* 1FCF0 8001F0F0 8F2C0000 */  lw         $t4, ($t9)
/* 1FCF4 8001F0F4 8F2B0000 */  lw         $t3, ($t9)
/* 1FCF8 8001F0F8 0008C080 */  sll        $t8, $t0, 2
/* 1FCFC 8001F0FC 000C4880 */  sll        $t1, $t4, 2
/* 1FD00 8001F100 0308C021 */  addu       $t8, $t8, $t0
/* 1FD04 8001F104 012C4821 */  addu       $t1, $t1, $t4
/* 1FD08 8001F108 00094880 */  sll        $t1, $t1, 2
/* 1FD0C 8001F10C 0018C080 */  sll        $t8, $t8, 2
/* 1FD10 8001F110 01586821 */  addu       $t5, $t2, $t8
/* 1FD14 8001F114 01497021 */  addu       $t6, $t2, $t1
/* 1FD18 8001F118 C5D00010 */  lwc1       $f16, 0x10($t6)
/* 1FD1C 8001F11C C5A60024 */  lwc1       $f6, 0x24($t5)
/* 1FD20 8001F120 000B7880 */  sll        $t7, $t3, 2
/* 1FD24 8001F124 01EB7821 */  addu       $t7, $t7, $t3
/* 1FD28 8001F128 46103101 */  sub.s      $f4, $f6, $f16
/* 1FD2C 8001F12C 000F7880 */  sll        $t7, $t7, 2
/* 1FD30 8001F130 014F4021 */  addu       $t0, $t2, $t7
/* 1FD34 8001F134 C5120010 */  lwc1       $f18, 0x10($t0)
/* 1FD38 8001F138 460A2202 */  mul.s      $f8, $f4, $f10
/* 1FD3C 8001F13C C726001C */  lwc1       $f6, 0x1c($t9)
/* 1FD40 8001F140 3C01801A */  lui        $at, %hi(D_8019B0E8)
/* 1FD44 8001F144 46123400 */  add.s      $f16, $f6, $f18
/* 1FD48 8001F148 46104100 */  add.s      $f4, $f8, $f16
/* 1FD4C 8001F14C E424B0E8 */  swc1       $f4, %lo(D_8019B0E8)($at)
/* 1FD50 8001F150 3C188013 */  lui        $t8, %hi(D_8012F790)
/* 1FD54 8001F154 8F18F790 */  lw         $t8, %lo(D_8012F790)($t8)
/* 1FD58 8001F158 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1FD5C 8001F15C 3C0CD9FF */  lui        $t4, 0xd9ff
/* 1FD60 8001F160 AFB8003C */  sw         $t8, 0x3c($sp)
/* 1FD64 8001F164 8FA9003C */  lw         $t1, 0x3c($sp)
/* 1FD68 8001F168 270D0008 */  addiu      $t5, $t8, 8
/* 1FD6C 8001F16C AC2DF790 */  sw         $t5, %lo(D_8012F790)($at)
/* 1FD70 8001F170 358CF9FF */  ori        $t4, $t4, 0xf9ff
/* 1FD74 8001F174 AD2C0000 */  sw         $t4, ($t1)
/* 1FD78 8001F178 8FAE003C */  lw         $t6, 0x3c($sp)
/* 1FD7C 8001F17C ADC00004 */  sw         $zero, 4($t6)
/* 1FD80 8001F180 3C0B8013 */  lui        $t3, %hi(D_8012F790)
/* 1FD84 8001F184 8D6BF790 */  lw         $t3, %lo(D_8012F790)($t3)
/* 1FD88 8001F188 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1FD8C 8001F18C 3C0FD9FF */  lui        $t7, 0xd9ff
/* 1FD90 8001F190 AFAB0038 */  sw         $t3, 0x38($sp)
/* 1FD94 8001F194 8FA80038 */  lw         $t0, 0x38($sp)
/* 1FD98 8001F198 256A0008 */  addiu      $t2, $t3, 8
/* 1FD9C 8001F19C AC2AF790 */  sw         $t2, %lo(D_8012F790)($at)
/* 1FDA0 8001F1A0 35EFFFFF */  ori        $t7, $t7, 0xffff
/* 1FDA4 8001F1A4 AD0F0000 */  sw         $t7, ($t0)
/* 1FDA8 8001F1A8 8FB80038 */  lw         $t8, 0x38($sp)
/* 1FDAC 8001F1AC 24190400 */  addiu      $t9, $zero, 0x400
/* 1FDB0 8001F1B0 AF190004 */  sw         $t9, 4($t8)
/* 1FDB4 8001F1B4 8FAD00E4 */  lw         $t5, 0xe4($sp)
/* 1FDB8 8001F1B8 AFA000BC */  sw         $zero, 0xbc($sp)
/* 1FDBC 8001F1BC AFA000C0 */  sw         $zero, 0xc0($sp)
/* 1FDC0 8001F1C0 95AC000C */  lhu        $t4, 0xc($t5)
/* 1FDC4 8001F1C4 19800060 */  blez       $t4, .L8001F348
/* 1FDC8 8001F1C8 00000000 */   nop
.L8001F1CC:
/* 1FDCC 8001F1CC 8FAE00C0 */  lw         $t6, 0xc0($sp)
/* 1FDD0 8001F1D0 8FA800BC */  lw         $t0, 0xbc($sp)
/* 1FDD4 8001F1D4 8FAF00CC */  lw         $t7, 0xcc($sp)
/* 1FDD8 8001F1D8 8FA900AC */  lw         $t1, 0xac($sp)
/* 1FDDC 8001F1DC 000E5980 */  sll        $t3, $t6, 6
/* 1FDE0 8001F1E0 0008C980 */  sll        $t9, $t0, 6
/* 1FDE4 8001F1E4 01F9C021 */  addu       $t8, $t7, $t9
/* 1FDE8 8001F1E8 270E003C */  addiu      $t6, $t8, 0x3c
/* 1FDEC 8001F1EC 012B5021 */  addu       $t2, $t1, $t3
.L8001F1F0:
/* 1FDF0 8001F1F0 8F0C0000 */  lw         $t4, ($t8)
/* 1FDF4 8001F1F4 2718000C */  addiu      $t8, $t8, 0xc
/* 1FDF8 8001F1F8 254A000C */  addiu      $t2, $t2, 0xc
/* 1FDFC 8001F1FC AD4C0074 */  sw         $t4, 0x74($t2)
/* 1FE00 8001F200 8F0DFFF8 */  lw         $t5, -8($t8)
/* 1FE04 8001F204 AD4D0078 */  sw         $t5, 0x78($t2)
/* 1FE08 8001F208 8F0CFFFC */  lw         $t4, -4($t8)
/* 1FE0C 8001F20C 170EFFF8 */  bne        $t8, $t6, .L8001F1F0
/* 1FE10 8001F210 AD4C007C */   sw        $t4, 0x7c($t2)
/* 1FE14 8001F214 8F0C0000 */  lw         $t4, ($t8)
/* 1FE18 8001F218 AD4C0080 */  sw         $t4, 0x80($t2)
/* 1FE1C 8001F21C 8FA900BC */  lw         $t1, 0xbc($sp)
/* 1FE20 8001F220 1520001D */  bnez       $t1, .L8001F298
/* 1FE24 8001F224 00000000 */   nop
/* 1FE28 8001F228 8FB900D4 */  lw         $t9, 0xd4($sp)
/* 1FE2C 8001F22C 000970C0 */  sll        $t6, $t1, 3
/* 1FE30 8001F230 01C97023 */  subu       $t6, $t6, $t1
/* 1FE34 8001F234 000E7080 */  sll        $t6, $t6, 2
/* 1FE38 8001F238 3C01801A */  lui        $at, %hi(D_8019B0E0)
/* 1FE3C 8001F23C 032EC021 */  addu       $t8, $t9, $t6
/* 1FE40 8001F240 C70A0004 */  lwc1       $f10, 4($t8)
/* 1FE44 8001F244 C426B0E0 */  lwc1       $f6, %lo(D_8019B0E0)($at)
/* 1FE48 8001F248 3C01801A */  lui        $at, %hi(D_8019B0E4)
/* 1FE4C 8001F24C C430B0E4 */  lwc1       $f16, %lo(D_8019B0E4)($at)
/* 1FE50 8001F250 46065480 */  add.s      $f18, $f10, $f6
/* 1FE54 8001F254 3C01801A */  lui        $at, %hi(D_8019B0E8)
/* 1FE58 8001F258 C426B0E8 */  lwc1       $f6, %lo(D_8019B0E8)($at)
/* 1FE5C 8001F25C C70A000C */  lwc1       $f10, 0xc($t8)
/* 1FE60 8001F260 C7080008 */  lwc1       $f8, 8($t8)
/* 1FE64 8001F264 44059000 */  mfc1       $a1, $f18
/* 1FE68 8001F268 46065480 */  add.s      $f18, $f10, $f6
/* 1FE6C 8001F26C 8FAB00C0 */  lw         $t3, 0xc0($sp)
/* 1FE70 8001F270 8FAF00AC */  lw         $t7, 0xac($sp)
/* 1FE74 8001F274 46104100 */  add.s      $f4, $f8, $f16
/* 1FE78 8001F278 44079000 */  mfc1       $a3, $f18
/* 1FE7C 8001F27C 000B4180 */  sll        $t0, $t3, 6
/* 1FE80 8001F280 010F2021 */  addu       $a0, $t0, $t7
/* 1FE84 8001F284 44062000 */  mfc1       $a2, $f4
/* 1FE88 8001F288 0C02DB43 */  jal        func_800B6D0C
/* 1FE8C 8001F28C 00000000 */   nop
/* 1FE90 8001F290 1000000F */  b          .L8001F2D0
/* 1FE94 8001F294 00000000 */   nop
.L8001F298:
/* 1FE98 8001F298 8FA800BC */  lw         $t0, 0xbc($sp)
/* 1FE9C 8001F29C 8FAB00D4 */  lw         $t3, 0xd4($sp)
/* 1FEA0 8001F2A0 8FAA00C0 */  lw         $t2, 0xc0($sp)
/* 1FEA4 8001F2A4 000878C0 */  sll        $t7, $t0, 3
/* 1FEA8 8001F2A8 01E87823 */  subu       $t7, $t7, $t0
/* 1FEAC 8001F2AC 000F7880 */  sll        $t7, $t7, 2
/* 1FEB0 8001F2B0 8FAC00AC */  lw         $t4, 0xac($sp)
/* 1FEB4 8001F2B4 016F4821 */  addu       $t1, $t3, $t7
/* 1FEB8 8001F2B8 000A6980 */  sll        $t5, $t2, 6
/* 1FEBC 8001F2BC 8D250004 */  lw         $a1, 4($t1)
/* 1FEC0 8001F2C0 8D260008 */  lw         $a2, 8($t1)
/* 1FEC4 8001F2C4 8D27000C */  lw         $a3, 0xc($t1)
/* 1FEC8 8001F2C8 0C02DB43 */  jal        func_800B6D0C
/* 1FECC 8001F2CC 01AC2021 */   addu      $a0, $t5, $t4
.L8001F2D0:
/* 1FED0 8001F2D0 8FAE00BC */  lw         $t6, 0xbc($sp)
/* 1FED4 8001F2D4 8FB900C4 */  lw         $t9, 0xc4($sp)
/* 1FED8 8001F2D8 C7B00060 */  lwc1       $f16, 0x60($sp)
/* 1FEDC 8001F2DC 000EC100 */  sll        $t8, $t6, 4
/* 1FEE0 8001F2E0 03385021 */  addu       $t2, $t9, $t8
/* 1FEE4 8001F2E4 C5480000 */  lwc1       $f8, ($t2)
/* 1FEE8 8001F2E8 8FAD00C0 */  lw         $t5, 0xc0($sp)
/* 1FEEC 8001F2EC 8FA800AC */  lw         $t0, 0xac($sp)
/* 1FEF0 8001F2F0 46104102 */  mul.s      $f4, $f8, $f16
/* 1FEF4 8001F2F4 000D6180 */  sll        $t4, $t5, 6
/* 1FEF8 8001F2F8 01882021 */  addu       $a0, $t4, $t0
/* 1FEFC 8001F2FC 24840040 */  addiu      $a0, $a0, 0x40
/* 1FF00 8001F300 E7A40064 */  swc1       $f4, 0x64($sp)
/* 1FF04 8001F304 C54A000C */  lwc1       $f10, 0xc($t2)
/* 1FF08 8001F308 8D470008 */  lw         $a3, 8($t2)
/* 1FF0C 8001F30C 8D460004 */  lw         $a2, 4($t2)
/* 1FF10 8001F310 44052000 */  mfc1       $a1, $f4
/* 1FF14 8001F314 0C02BCA9 */  jal        func_800AF2A4
/* 1FF18 8001F318 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 1FF1C 8001F31C 8FAB00BC */  lw         $t3, 0xbc($sp)
/* 1FF20 8001F320 8FA900C0 */  lw         $t1, 0xc0($sp)
/* 1FF24 8001F324 8FB900E4 */  lw         $t9, 0xe4($sp)
/* 1FF28 8001F328 256F0001 */  addiu      $t7, $t3, 1
/* 1FF2C 8001F32C 252E0003 */  addiu      $t6, $t1, 3
/* 1FF30 8001F330 AFAE00C0 */  sw         $t6, 0xc0($sp)
/* 1FF34 8001F334 AFAF00BC */  sw         $t7, 0xbc($sp)
/* 1FF38 8001F338 9738000C */  lhu        $t8, 0xc($t9)
/* 1FF3C 8001F33C 01F8082A */  slt        $at, $t7, $t8
/* 1FF40 8001F340 1420FFA2 */  bnez       $at, .L8001F1CC
/* 1FF44 8001F344 00000000 */   nop
.L8001F348:
/* 1FF48 8001F348 8FAD00E4 */  lw         $t5, 0xe4($sp)
/* 1FF4C 8001F34C AFA000BC */  sw         $zero, 0xbc($sp)
/* 1FF50 8001F350 AFA000C0 */  sw         $zero, 0xc0($sp)
/* 1FF54 8001F354 95AC000C */  lhu        $t4, 0xc($t5)
/* 1FF58 8001F358 198000A9 */  blez       $t4, .L8001F600
/* 1FF5C 8001F35C 00000000 */   nop
.L8001F360:
/* 1FF60 8001F360 8FAA00BC */  lw         $t2, 0xbc($sp)
/* 1FF64 8001F364 8FA800D4 */  lw         $t0, 0xd4($sp)
/* 1FF68 8001F368 000A58C0 */  sll        $t3, $t2, 3
/* 1FF6C 8001F36C 016A5823 */  subu       $t3, $t3, $t2
/* 1FF70 8001F370 000B5880 */  sll        $t3, $t3, 2
/* 1FF74 8001F374 010B4821 */  addu       $t1, $t0, $t3
/* 1FF78 8001F378 8D2E0000 */  lw         $t6, ($t1)
/* 1FF7C 8001F37C 31D90002 */  andi       $t9, $t6, 2
/* 1FF80 8001F380 1320000E */  beqz       $t9, .L8001F3BC
/* 1FF84 8001F384 00000000 */   nop
/* 1FF88 8001F388 3C0F8013 */  lui        $t7, %hi(D_8012F790)
/* 1FF8C 8001F38C 8DEFF790 */  lw         $t7, %lo(D_8012F790)($t7)
/* 1FF90 8001F390 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1FF94 8001F394 3C0DD838 */  lui        $t5, 0xd838
/* 1FF98 8001F398 AFAF0034 */  sw         $t7, 0x34($sp)
/* 1FF9C 8001F39C 8FAC0034 */  lw         $t4, 0x34($sp)
/* 1FFA0 8001F3A0 25F80008 */  addiu      $t8, $t7, 8
/* 1FFA4 8001F3A4 AC38F790 */  sw         $t8, %lo(D_8012F790)($at)
/* 1FFA8 8001F3A8 35AD0002 */  ori        $t5, $t5, 2
/* 1FFAC 8001F3AC AD8D0000 */  sw         $t5, ($t4)
/* 1FFB0 8001F3B0 8FA80034 */  lw         $t0, 0x34($sp)
/* 1FFB4 8001F3B4 240A0040 */  addiu      $t2, $zero, 0x40
/* 1FFB8 8001F3B8 AD0A0004 */  sw         $t2, 4($t0)
.L8001F3BC:
/* 1FFBC 8001F3BC 8FA900BC */  lw         $t1, 0xbc($sp)
/* 1FFC0 8001F3C0 8FAB00D4 */  lw         $t3, 0xd4($sp)
/* 1FFC4 8001F3C4 000970C0 */  sll        $t6, $t1, 3
/* 1FFC8 8001F3C8 01C97023 */  subu       $t6, $t6, $t1
/* 1FFCC 8001F3CC 000E7080 */  sll        $t6, $t6, 2
/* 1FFD0 8001F3D0 016EC821 */  addu       $t9, $t3, $t6
/* 1FFD4 8001F3D4 8F2F0000 */  lw         $t7, ($t9)
/* 1FFD8 8001F3D8 31F80001 */  andi       $t8, $t7, 1
/* 1FFDC 8001F3DC 13000014 */  beqz       $t8, .L8001F430
/* 1FFE0 8001F3E0 00000000 */   nop
/* 1FFE4 8001F3E4 3C0D8013 */  lui        $t5, %hi(D_8012F790)
/* 1FFE8 8001F3E8 8DADF790 */  lw         $t5, %lo(D_8012F790)($t5)
/* 1FFEC 8001F3EC 3C018013 */  lui        $at, %hi(D_8012F790)
/* 1FFF0 8001F3F0 3C0ADA38 */  lui        $t2, 0xda38
/* 1FFF4 8001F3F4 AFAD0030 */  sw         $t5, 0x30($sp)
/* 1FFF8 8001F3F8 8FA80030 */  lw         $t0, 0x30($sp)
/* 1FFFC 8001F3FC 25AC0008 */  addiu      $t4, $t5, 8
/* 20000 8001F400 AC2CF790 */  sw         $t4, %lo(D_8012F790)($at)
/* 20004 8001F404 AD0A0000 */  sw         $t2, ($t0)
/* 20008 8001F408 8FA900C0 */  lw         $t1, 0xc0($sp)
/* 2000C 8001F40C 8FAE00AC */  lw         $t6, 0xac($sp)
/* 20010 8001F410 8FB80030 */  lw         $t8, 0x30($sp)
/* 20014 8001F414 00095980 */  sll        $t3, $t1, 6
/* 20018 8001F418 3C018000 */  lui        $at, 0x8000
/* 2001C 8001F41C 016EC821 */  addu       $t9, $t3, $t6
/* 20020 8001F420 03217821 */  addu       $t7, $t9, $at
/* 20024 8001F424 AF0F0004 */  sw         $t7, 4($t8)
/* 20028 8001F428 10000013 */  b          .L8001F478
/* 2002C 8001F42C 00000000 */   nop
.L8001F430:
/* 20030 8001F430 3C0D8013 */  lui        $t5, %hi(D_8012F790)
/* 20034 8001F434 8DADF790 */  lw         $t5, %lo(D_8012F790)($t5)
/* 20038 8001F438 3C018013 */  lui        $at, %hi(D_8012F790)
/* 2003C 8001F43C 3C0ADA38 */  lui        $t2, 0xda38
/* 20040 8001F440 AFAD002C */  sw         $t5, 0x2c($sp)
/* 20044 8001F444 8FA8002C */  lw         $t0, 0x2c($sp)
/* 20048 8001F448 25AC0008 */  addiu      $t4, $t5, 8
/* 2004C 8001F44C AC2CF790 */  sw         $t4, %lo(D_8012F790)($at)
/* 20050 8001F450 354A0001 */  ori        $t2, $t2, 1
/* 20054 8001F454 AD0A0000 */  sw         $t2, ($t0)
/* 20058 8001F458 8FA900C0 */  lw         $t1, 0xc0($sp)
/* 2005C 8001F45C 8FAE00AC */  lw         $t6, 0xac($sp)
/* 20060 8001F460 8FB8002C */  lw         $t8, 0x2c($sp)
/* 20064 8001F464 00095980 */  sll        $t3, $t1, 6
/* 20068 8001F468 3C018000 */  lui        $at, 0x8000
/* 2006C 8001F46C 016EC821 */  addu       $t9, $t3, $t6
/* 20070 8001F470 03217821 */  addu       $t7, $t9, $at
/* 20074 8001F474 AF0F0004 */  sw         $t7, 4($t8)
.L8001F478:
/* 20078 8001F478 8FAD00BC */  lw         $t5, 0xbc($sp)
/* 2007C 8001F47C 15A00012 */  bnez       $t5, .L8001F4C8
/* 20080 8001F480 00000000 */   nop
/* 20084 8001F484 8FAC00D4 */  lw         $t4, 0xd4($sp)
/* 20088 8001F488 44809000 */  mtc1       $zero, $f18
/* 2008C 8001F48C C5860010 */  lwc1       $f6, 0x10($t4)
/* 20090 8001F490 46123032 */  c.eq.s     $f6, $f18
/* 20094 8001F494 00000000 */  nop
/* 20098 8001F498 4501000B */  bc1t       .L8001F4C8
/* 2009C 8001F49C 00000000 */   nop
/* 200A0 8001F4A0 8D8A0018 */  lw         $t2, 0x18($t4)
/* 200A4 8001F4A4 11400008 */  beqz       $t2, .L8001F4C8
/* 200A8 8001F4A8 00000000 */   nop
/* 200AC 8001F4AC C5880014 */  lwc1       $f8, 0x14($t4)
/* 200B0 8001F4B0 46083401 */  sub.s      $f16, $f6, $f8
/* 200B4 8001F4B4 E5900010 */  swc1       $f16, 0x10($t4)
/* 200B8 8001F4B8 8FA800D4 */  lw         $t0, 0xd4($sp)
/* 200BC 8001F4BC 8D090018 */  lw         $t1, 0x18($t0)
/* 200C0 8001F4C0 252BFFFF */  addiu      $t3, $t1, -1
/* 200C4 8001F4C4 AD0B0018 */  sw         $t3, 0x18($t0)
.L8001F4C8:
/* 200C8 8001F4C8 3C0E8013 */  lui        $t6, %hi(D_8012F790)
/* 200CC 8001F4CC 8DCEF790 */  lw         $t6, %lo(D_8012F790)($t6)
/* 200D0 8001F4D0 3C018013 */  lui        $at, %hi(D_8012F790)
/* 200D4 8001F4D4 3C0FDA38 */  lui        $t7, 0xda38
/* 200D8 8001F4D8 AFAE0028 */  sw         $t6, 0x28($sp)
/* 200DC 8001F4DC 8FB80028 */  lw         $t8, 0x28($sp)
/* 200E0 8001F4E0 25D90008 */  addiu      $t9, $t6, 8
/* 200E4 8001F4E4 AC39F790 */  sw         $t9, %lo(D_8012F790)($at)
/* 200E8 8001F4E8 35EF0001 */  ori        $t7, $t7, 1
/* 200EC 8001F4EC AF0F0000 */  sw         $t7, ($t8)
/* 200F0 8001F4F0 8FAD00C0 */  lw         $t5, 0xc0($sp)
/* 200F4 8001F4F4 8FAC00AC */  lw         $t4, 0xac($sp)
/* 200F8 8001F4F8 8FA80028 */  lw         $t0, 0x28($sp)
/* 200FC 8001F4FC 3C018000 */  lui        $at, 0x8000
/* 20100 8001F500 000D5180 */  sll        $t2, $t5, 6
/* 20104 8001F504 34210040 */  ori        $at, $at, 0x40
/* 20108 8001F508 014C4821 */  addu       $t1, $t2, $t4
/* 2010C 8001F50C 01215821 */  addu       $t3, $t1, $at
/* 20110 8001F510 AD0B0004 */  sw         $t3, 4($t0)
/* 20114 8001F514 3C0E8013 */  lui        $t6, %hi(D_8012F790)
/* 20118 8001F518 8DCEF790 */  lw         $t6, %lo(D_8012F790)($t6)
/* 2011C 8001F51C 3C018013 */  lui        $at, %hi(D_8012F790)
/* 20120 8001F520 3C0FDA38 */  lui        $t7, 0xda38
/* 20124 8001F524 AFAE0024 */  sw         $t6, 0x24($sp)
/* 20128 8001F528 8FB80024 */  lw         $t8, 0x24($sp)
/* 2012C 8001F52C 25D90008 */  addiu      $t9, $t6, 8
/* 20130 8001F530 AC39F790 */  sw         $t9, %lo(D_8012F790)($at)
/* 20134 8001F534 35EF0001 */  ori        $t7, $t7, 1
/* 20138 8001F538 AF0F0000 */  sw         $t7, ($t8)
/* 2013C 8001F53C 8FAD00C0 */  lw         $t5, 0xc0($sp)
/* 20140 8001F540 8FAC00AC */  lw         $t4, 0xac($sp)
/* 20144 8001F544 8FA80024 */  lw         $t0, 0x24($sp)
/* 20148 8001F548 3C018000 */  lui        $at, 0x8000
/* 2014C 8001F54C 000D5180 */  sll        $t2, $t5, 6
/* 20150 8001F550 34210080 */  ori        $at, $at, 0x80
/* 20154 8001F554 014C4821 */  addu       $t1, $t2, $t4
/* 20158 8001F558 01215821 */  addu       $t3, $t1, $at
/* 2015C 8001F55C AD0B0004 */  sw         $t3, 4($t0)
/* 20160 8001F560 8FB900BC */  lw         $t9, 0xbc($sp)
/* 20164 8001F564 8FAE00D4 */  lw         $t6, 0xd4($sp)
/* 20168 8001F568 001978C0 */  sll        $t7, $t9, 3
/* 2016C 8001F56C 01F97823 */  subu       $t7, $t7, $t9
/* 20170 8001F570 000F7880 */  sll        $t7, $t7, 2
/* 20174 8001F574 01CFC021 */  addu       $t8, $t6, $t7
/* 20178 8001F578 8F0D0000 */  lw         $t5, ($t8)
/* 2017C 8001F57C 31AA0004 */  andi       $t2, $t5, 4
/* 20180 8001F580 15400014 */  bnez       $t2, .L8001F5D4
/* 20184 8001F584 00000000 */   nop
/* 20188 8001F588 31AC0008 */  andi       $t4, $t5, 8
/* 2018C 8001F58C 15800011 */  bnez       $t4, .L8001F5D4
/* 20190 8001F590 00000000 */   nop
/* 20194 8001F594 3C098013 */  lui        $t1, %hi(D_8012F790)
/* 20198 8001F598 8D29F790 */  lw         $t1, %lo(D_8012F790)($t1)
/* 2019C 8001F59C 3C018013 */  lui        $at, %hi(D_8012F790)
/* 201A0 8001F5A0 3C08DE00 */  lui        $t0, 0xde00
/* 201A4 8001F5A4 AFA90020 */  sw         $t1, 0x20($sp)
/* 201A8 8001F5A8 8FB90020 */  lw         $t9, 0x20($sp)
/* 201AC 8001F5AC 252B0008 */  addiu      $t3, $t1, 8
/* 201B0 8001F5B0 AC2BF790 */  sw         $t3, %lo(D_8012F790)($at)
/* 201B4 8001F5B4 AF280000 */  sw         $t0, ($t9)
/* 201B8 8001F5B8 8FAF00BC */  lw         $t7, 0xbc($sp)
/* 201BC 8001F5BC 8FAE00DC */  lw         $t6, 0xdc($sp)
/* 201C0 8001F5C0 8FAC0020 */  lw         $t4, 0x20($sp)
/* 201C4 8001F5C4 000FC080 */  sll        $t8, $t7, 2
/* 201C8 8001F5C8 01D85021 */  addu       $t2, $t6, $t8
/* 201CC 8001F5CC 8D4D0000 */  lw         $t5, ($t2)
/* 201D0 8001F5D0 AD8D0004 */  sw         $t5, 4($t4)
.L8001F5D4:
/* 201D4 8001F5D4 8FA900BC */  lw         $t1, 0xbc($sp)
/* 201D8 8001F5D8 8FA800C0 */  lw         $t0, 0xc0($sp)
/* 201DC 8001F5DC 8FAF00E4 */  lw         $t7, 0xe4($sp)
/* 201E0 8001F5E0 252B0001 */  addiu      $t3, $t1, 1
/* 201E4 8001F5E4 25190003 */  addiu      $t9, $t0, 3
/* 201E8 8001F5E8 AFB900C0 */  sw         $t9, 0xc0($sp)
/* 201EC 8001F5EC AFAB00BC */  sw         $t3, 0xbc($sp)
/* 201F0 8001F5F0 95EE000C */  lhu        $t6, 0xc($t7)
/* 201F4 8001F5F4 016E082A */  slt        $at, $t3, $t6
/* 201F8 8001F5F8 1420FF59 */  bnez       $at, .L8001F360
/* 201FC 8001F5FC 00000000 */   nop
.L8001F600:
/* 20200 8001F600 87A200F2 */  lh         $v0, 0xf2($sp)
.L8001F604:
/* 20204 8001F604 8FBF001C */  lw         $ra, 0x1c($sp)
/* 20208 8001F608 27BD00C8 */  addiu      $sp, $sp, 0xc8
/* 2020C 8001F60C 03E00008 */  jr         $ra
/* 20210 8001F610 00000000 */   nop

glabel func_8001F614
/* 20214 8001F614 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 20218 8001F618 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2021C 8001F61C AFA40028 */  sw         $a0, 0x28($sp)
/* 20220 8001F620 AFA5002C */  sw         $a1, 0x2c($sp)
/* 20224 8001F624 AFA60030 */  sw         $a2, 0x30($sp)
/* 20228 8001F628 8FAE0030 */  lw         $t6, 0x30($sp)
/* 2022C 8001F62C AFA00024 */  sw         $zero, 0x24($sp)
/* 20230 8001F630 19C00015 */  blez       $t6, .L8001F688
/* 20234 8001F634 00000000 */   nop
.L8001F638:
/* 20238 8001F638 8FB90024 */  lw         $t9, 0x24($sp)
/* 2023C 8001F63C 8FB8002C */  lw         $t8, 0x2c($sp)
/* 20240 8001F640 8FAF0028 */  lw         $t7, 0x28($sp)
/* 20244 8001F644 00194100 */  sll        $t0, $t9, 4
/* 20248 8001F648 03084821 */  addu       $t1, $t8, $t0
/* 2024C 8001F64C C524000C */  lwc1       $f4, 0xc($t1)
/* 20250 8001F650 8D250000 */  lw         $a1, ($t1)
/* 20254 8001F654 8D260004 */  lw         $a2, 4($t1)
/* 20258 8001F658 8D270008 */  lw         $a3, 8($t1)
/* 2025C 8001F65C 25EA0040 */  addiu      $t2, $t7, 0x40
/* 20260 8001F660 AFAA0028 */  sw         $t2, 0x28($sp)
/* 20264 8001F664 01E02025 */  or         $a0, $t7, $zero
/* 20268 8001F668 0C02BCA9 */  jal        func_800AF2A4
/* 2026C 8001F66C E7A40010 */   swc1      $f4, 0x10($sp)
/* 20270 8001F670 8FAB0024 */  lw         $t3, 0x24($sp)
/* 20274 8001F674 8FAD0030 */  lw         $t5, 0x30($sp)
/* 20278 8001F678 256C0001 */  addiu      $t4, $t3, 1
/* 2027C 8001F67C 018D082A */  slt        $at, $t4, $t5
/* 20280 8001F680 1420FFED */  bnez       $at, .L8001F638
/* 20284 8001F684 AFAC0024 */   sw        $t4, 0x24($sp)
.L8001F688:
/* 20288 8001F688 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2028C 8001F68C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 20290 8001F690 03E00008 */  jr         $ra
/* 20294 8001F694 00000000 */   nop
/* 20298 8001F698 00000000 */  nop
/* 2029C 8001F69C 00000000 */  nop
