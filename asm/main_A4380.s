.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A3780
/* A4380 800A3780 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4384 800A3784 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4388 800A3788 AFA40018 */  sw         $a0, 0x18($sp)
/* A438C 800A378C AFA5001C */  sw         $a1, 0x1c($sp)
/* A4390 800A3790 AFA60020 */  sw         $a2, 0x20($sp)
/* A4394 800A3794 AFA70024 */  sw         $a3, 0x24($sp)
/* A4398 800A3798 8FAE001C */  lw         $t6, 0x1c($sp)
/* A439C 800A379C 31CF0007 */  andi       $t7, $t6, 7
/* A43A0 800A37A0 15E00003 */  bnez       $t7, .L800A37B0
/* A43A4 800A37A4 00000000 */   nop
/* A43A8 800A37A8 10000007 */  b          .L800A37C8
/* A43AC 800A37AC 00000000 */   nop
.L800A37B0:
/* A43B0 800A37B0 3C04800D */  lui        $a0, %hi(D_800D3050)
/* A43B4 800A37B4 3C05800D */  lui        $a1, %hi(D_800D3068)
/* A43B8 800A37B8 24A53068 */  addiu      $a1, $a1, %lo(D_800D3068)
/* A43BC 800A37BC 24843050 */  addiu      $a0, $a0, %lo(D_800D3050)
/* A43C0 800A37C0 0C02C480 */  jal        func_800B1200
/* A43C4 800A37C4 2406003A */   addiu     $a2, $zero, 0x3a
.L800A37C8:
/* A43C8 800A37C8 8FB80020 */  lw         $t8, 0x20($sp)
/* A43CC 800A37CC 33190007 */  andi       $t9, $t8, 7
/* A43D0 800A37D0 17200003 */  bnez       $t9, .L800A37E0
/* A43D4 800A37D4 00000000 */   nop
/* A43D8 800A37D8 10000007 */  b          .L800A37F8
/* A43DC 800A37DC 00000000 */   nop
.L800A37E0:
/* A43E0 800A37E0 3C04800D */  lui        $a0, %hi(D_800D307C)
/* A43E4 800A37E4 3C05800D */  lui        $a1, %hi(D_800D3098)
/* A43E8 800A37E8 24A53098 */  addiu      $a1, $a1, %lo(D_800D3098)
/* A43EC 800A37EC 2484307C */  addiu      $a0, $a0, %lo(D_800D307C)
/* A43F0 800A37F0 0C02C480 */  jal        func_800B1200
/* A43F4 800A37F4 2406003B */   addiu     $a2, $zero, 0x3b
.L800A37F8:
/* A43F8 800A37F8 8FA80024 */  lw         $t0, 0x24($sp)
/* A43FC 800A37FC 31090007 */  andi       $t1, $t0, 7
/* A4400 800A3800 15200003 */  bnez       $t1, .L800A3810
/* A4404 800A3804 00000000 */   nop
/* A4408 800A3808 10000007 */  b          .L800A3828
/* A440C 800A380C 00000000 */   nop
.L800A3810:
/* A4410 800A3810 3C04800D */  lui        $a0, %hi(D_800D30AC)
/* A4414 800A3814 3C05800D */  lui        $a1, %hi(D_800D30C0)
/* A4418 800A3818 24A530C0 */  addiu      $a1, $a1, %lo(D_800D30C0)
/* A441C 800A381C 248430AC */  addiu      $a0, $a0, %lo(D_800D30AC)
/* A4420 800A3820 0C02C480 */  jal        func_800B1200
/* A4424 800A3824 2406003C */   addiu     $a2, $zero, 0x3c
.L800A3828:
/* A4428 800A3828 0C02B6D8 */  jal        func_800ADB60
/* A442C 800A382C 00000000 */   nop
/* A4430 800A3830 10400003 */  beqz       $v0, .L800A3840
/* A4434 800A3834 00000000 */   nop
/* A4438 800A3838 10000018 */  b          .L800A389C
/* A443C 800A383C 2402FFFF */   addiu     $v0, $zero, -1
.L800A3840:
/* A4440 800A3840 8FAA001C */  lw         $t2, 0x1c($sp)
/* A4444 800A3844 3C0BA404 */  lui        $t3, 0xa404
/* A4448 800A3848 AD6A0000 */  sw         $t2, ($t3)
/* A444C 800A384C 0C027C0C */  jal        func_8009F030
/* A4450 800A3850 8FA40020 */   lw        $a0, 0x20($sp)
/* A4454 800A3854 3C0CA404 */  lui        $t4, %hi(D_A4040004)
/* A4458 800A3858 AD820004 */  sw         $v0, %lo(D_A4040004)($t4)
/* A445C 800A385C 8FAD0018 */  lw         $t5, 0x18($sp)
/* A4460 800A3860 15A00006 */  bnez       $t5, .L800A387C
/* A4464 800A3864 00000000 */   nop
/* A4468 800A3868 8FAE0024 */  lw         $t6, 0x24($sp)
/* A446C 800A386C 3C18A404 */  lui        $t8, %hi(D_A404000C)
/* A4470 800A3870 25CFFFFF */  addiu      $t7, $t6, -1
/* A4474 800A3874 10000005 */  b          .L800A388C
/* A4478 800A3878 AF0F000C */   sw        $t7, %lo(D_A404000C)($t8)
.L800A387C:
/* A447C 800A387C 8FB90024 */  lw         $t9, 0x24($sp)
/* A4480 800A3880 3C09A404 */  lui        $t1, %hi(D_A4040008)
/* A4484 800A3884 2728FFFF */  addiu      $t0, $t9, -1
/* A4488 800A3888 AD280008 */  sw         $t0, %lo(D_A4040008)($t1)
.L800A388C:
/* A448C 800A388C 10000003 */  b          .L800A389C
/* A4490 800A3890 00001025 */   or        $v0, $zero, $zero
/* A4494 800A3894 10000001 */  b          .L800A389C
/* A4498 800A3898 00000000 */   nop
.L800A389C:
/* A449C 800A389C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A44A0 800A38A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* A44A4 800A38A4 03E00008 */  jr         $ra
/* A44A8 800A38A8 00000000 */   nop
/* A44AC 800A38AC 00000000 */  nop
