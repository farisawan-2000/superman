.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B9AA0
/* BA6A0 800B9AA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BA6A4 800B9AA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA6A8 800B9AA8 AFA40020 */  sw         $a0, 0x20($sp)
/* BA6AC 800B9AAC AFA50024 */  sw         $a1, 0x24($sp)
/* BA6B0 800B9AB0 8FAE0020 */  lw         $t6, 0x20($sp)
/* BA6B4 800B9AB4 31CF0007 */  andi       $t7, $t6, 7
/* BA6B8 800B9AB8 11E00007 */  beqz       $t7, .L800B9AD8
/* BA6BC 800B9ABC 00000000 */   nop
/* BA6C0 800B9AC0 2404000F */  addiu      $a0, $zero, 0xf
/* BA6C4 800B9AC4 24050001 */  addiu      $a1, $zero, 1
/* BA6C8 800B9AC8 0C02B5EC */  jal        func_800AD7B0
/* BA6CC 800B9ACC 8FA60020 */   lw        $a2, 0x20($sp)
/* BA6D0 800B9AD0 10000031 */  b          .L800B9B98
/* BA6D4 800B9AD4 2402FFFF */   addiu     $v0, $zero, -1
.L800B9AD8:
/* BA6D8 800B9AD8 8FB80024 */  lw         $t8, 0x24($sp)
/* BA6DC 800B9ADC 33190007 */  andi       $t9, $t8, 7
/* BA6E0 800B9AE0 13200007 */  beqz       $t9, .L800B9B00
/* BA6E4 800B9AE4 00000000 */   nop
/* BA6E8 800B9AE8 24040010 */  addiu      $a0, $zero, 0x10
/* BA6EC 800B9AEC 24050001 */  addiu      $a1, $zero, 1
/* BA6F0 800B9AF0 0C02B5EC */  jal        func_800AD7B0
/* BA6F4 800B9AF4 8FA60024 */   lw        $a2, 0x24($sp)
/* BA6F8 800B9AF8 10000027 */  b          .L800B9B98
/* BA6FC 800B9AFC 2402FFFF */   addiu     $v0, $zero, -1
.L800B9B00:
/* BA700 800B9B00 8FA80020 */  lw         $t0, 0x20($sp)
/* BA704 800B9B04 AFA8001C */  sw         $t0, 0x1c($sp)
/* BA708 800B9B08 3C09800D */  lui        $t1, %hi(D_800CD6D0)
/* BA70C 800B9B0C 9129D6D0 */  lbu        $t1, %lo(D_800CD6D0)($t1)
/* BA710 800B9B10 11200004 */  beqz       $t1, .L800B9B24
/* BA714 800B9B14 00000000 */   nop
/* BA718 800B9B18 8FAA0020 */  lw         $t2, 0x20($sp)
/* BA71C 800B9B1C 254BE000 */  addiu      $t3, $t2, -0x2000
/* BA720 800B9B20 AFAB001C */  sw         $t3, 0x1c($sp)
.L800B9B24:
/* BA724 800B9B24 8FAC0020 */  lw         $t4, 0x20($sp)
/* BA728 800B9B28 8FAD0024 */  lw         $t5, 0x24($sp)
/* BA72C 800B9B2C 018D7021 */  addu       $t6, $t4, $t5
/* BA730 800B9B30 31CF1FFF */  andi       $t7, $t6, 0x1fff
/* BA734 800B9B34 15E00005 */  bnez       $t7, .L800B9B4C
/* BA738 800B9B38 00000000 */   nop
/* BA73C 800B9B3C 24180001 */  addiu      $t8, $zero, 1
/* BA740 800B9B40 3C01800D */  lui        $at, %hi(D_800CD6D0)
/* BA744 800B9B44 10000003 */  b          .L800B9B54
/* BA748 800B9B48 A038D6D0 */   sb        $t8, %lo(D_800CD6D0)($at)
.L800B9B4C:
/* BA74C 800B9B4C 3C01800D */  lui        $at, %hi(D_800CD6D0)
/* BA750 800B9B50 A020D6D0 */  sb         $zero, %lo(D_800CD6D0)($at)
.L800B9B54:
/* BA754 800B9B54 0C02E6EC */  jal        func_800B9BB0
/* BA758 800B9B58 00000000 */   nop
/* BA75C 800B9B5C 10400003 */  beqz       $v0, .L800B9B6C
/* BA760 800B9B60 00000000 */   nop
/* BA764 800B9B64 1000000C */  b          .L800B9B98
/* BA768 800B9B68 2402FFFF */   addiu     $v0, $zero, -1
.L800B9B6C:
/* BA76C 800B9B6C 0C027C0C */  jal        func_8009F030
/* BA770 800B9B70 8FA4001C */   lw        $a0, 0x1c($sp)
/* BA774 800B9B74 3C19A450 */  lui        $t9, 0xa450
/* BA778 800B9B78 AF220000 */  sw         $v0, ($t9)
/* BA77C 800B9B7C 8FA80024 */  lw         $t0, 0x24($sp)
/* BA780 800B9B80 3C09A450 */  lui        $t1, %hi(D_A4500004)
/* BA784 800B9B84 AD280004 */  sw         $t0, %lo(D_A4500004)($t1)
/* BA788 800B9B88 10000003 */  b          .L800B9B98
/* BA78C 800B9B8C 00001025 */   or        $v0, $zero, $zero
/* BA790 800B9B90 10000001 */  b          .L800B9B98
/* BA794 800B9B94 00000000 */   nop
.L800B9B98:
/* BA798 800B9B98 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA79C 800B9B9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* BA7A0 800B9BA0 03E00008 */  jr         $ra
/* BA7A4 800B9BA4 00000000 */   nop
/* BA7A8 800B9BA8 00000000 */  nop
/* BA7AC 800B9BAC 00000000 */  nop
