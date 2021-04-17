.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B9590
/* BA190 800B9590 27BDFFF8 */  addiu      $sp, $sp, -8
/* BA194 800B9594 8C8E0040 */  lw         $t6, 0x40($a0)
/* BA198 800B9598 AFAE0000 */  sw         $t6, ($sp)
/* BA19C 800B959C A7A00006 */  sh         $zero, 6($sp)
/* BA1A0 800B95A0 8C8F0044 */  lw         $t7, 0x44($a0)
/* BA1A4 800B95A4 19E00050 */  blez       $t7, .L800B96E8
/* BA1A8 800B95A8 00000000 */   nop
.L800B95AC:
/* BA1AC 800B95AC 87B90006 */  lh         $t9, 6($sp)
/* BA1B0 800B95B0 8FB80000 */  lw         $t8, ($sp)
/* BA1B4 800B95B4 00194080 */  sll        $t0, $t9, 2
/* BA1B8 800B95B8 01194023 */  subu       $t0, $t0, $t9
/* BA1BC 800B95BC 00084100 */  sll        $t0, $t0, 4
/* BA1C0 800B95C0 03084821 */  addu       $t1, $t8, $t0
/* BA1C4 800B95C4 8D2A001C */  lw         $t2, 0x1c($t1)
/* BA1C8 800B95C8 1540003E */  bnez       $t2, .L800B96C4
/* BA1CC 800B95CC 00000000 */   nop
/* BA1D0 800B95D0 87AC0006 */  lh         $t4, 6($sp)
/* BA1D4 800B95D4 8FAB0000 */  lw         $t3, ($sp)
/* BA1D8 800B95D8 000C6880 */  sll        $t5, $t4, 2
/* BA1DC 800B95DC 01AC6823 */  subu       $t5, $t5, $t4
/* BA1E0 800B95E0 000D6900 */  sll        $t5, $t5, 4
/* BA1E4 800B95E4 016D7021 */  addu       $t6, $t3, $t5
/* BA1E8 800B95E8 ADC5001C */  sw         $a1, 0x1c($t6)
/* BA1EC 800B95EC 87B80006 */  lh         $t8, 6($sp)
/* BA1F0 800B95F0 8FB90000 */  lw         $t9, ($sp)
/* BA1F4 800B95F4 240F0005 */  addiu      $t7, $zero, 5
/* BA1F8 800B95F8 00184080 */  sll        $t0, $t8, 2
/* BA1FC 800B95FC 01184023 */  subu       $t0, $t0, $t8
/* BA200 800B9600 00084100 */  sll        $t0, $t0, 4
/* BA204 800B9604 03284821 */  addu       $t1, $t9, $t0
/* BA208 800B9608 A52F0020 */  sh         $t7, 0x20($t1)
/* BA20C 800B960C 87AC0006 */  lh         $t4, 6($sp)
/* BA210 800B9610 8FAA0000 */  lw         $t2, ($sp)
/* BA214 800B9614 000C5880 */  sll        $t3, $t4, 2
/* BA218 800B9618 016C5823 */  subu       $t3, $t3, $t4
/* BA21C 800B961C 000B5900 */  sll        $t3, $t3, 4
/* BA220 800B9620 014B6821 */  addu       $t5, $t2, $t3
/* BA224 800B9624 ADA00028 */  sw         $zero, 0x28($t5)
/* BA228 800B9628 87B80006 */  lh         $t8, 6($sp)
/* BA22C 800B962C 8FAE0000 */  lw         $t6, ($sp)
/* BA230 800B9630 3C013F80 */  lui        $at, 0x3f80
/* BA234 800B9634 0018C880 */  sll        $t9, $t8, 2
/* BA238 800B9638 44812000 */  mtc1       $at, $f4
/* BA23C 800B963C 0338C823 */  subu       $t9, $t9, $t8
/* BA240 800B9640 0019C900 */  sll        $t9, $t9, 4
/* BA244 800B9644 01D94021 */  addu       $t0, $t6, $t9
/* BA248 800B9648 E5040024 */  swc1       $f4, 0x24($t0)
/* BA24C 800B964C 87AC0006 */  lh         $t4, 6($sp)
/* BA250 800B9650 8FA90000 */  lw         $t1, ($sp)
/* BA254 800B9654 240F0040 */  addiu      $t7, $zero, 0x40
/* BA258 800B9658 000C5080 */  sll        $t2, $t4, 2
/* BA25C 800B965C 014C5023 */  subu       $t2, $t2, $t4
/* BA260 800B9660 000A5100 */  sll        $t2, $t2, 4
/* BA264 800B9664 012A5821 */  addu       $t3, $t1, $t2
/* BA268 800B9668 A16F002E */  sb         $t7, 0x2e($t3)
/* BA26C 800B966C 87B80006 */  lh         $t8, 6($sp)
/* BA270 800B9670 8FAD0000 */  lw         $t5, ($sp)
/* BA274 800B9674 00187080 */  sll        $t6, $t8, 2
/* BA278 800B9678 01D87023 */  subu       $t6, $t6, $t8
/* BA27C 800B967C 000E7100 */  sll        $t6, $t6, 4
/* BA280 800B9680 01AEC821 */  addu       $t9, $t5, $t6
/* BA284 800B9684 A320002F */  sb         $zero, 0x2f($t9)
/* BA288 800B9688 90A8000D */  lbu        $t0, 0xd($a1)
/* BA28C 800B968C 2401007F */  addiu      $at, $zero, 0x7f
/* BA290 800B9690 87AF0006 */  lh         $t7, 6($sp)
/* BA294 800B9694 000863C0 */  sll        $t4, $t0, 0xf
/* BA298 800B9698 01886023 */  subu       $t4, $t4, $t0
/* BA29C 800B969C 0181001A */  div        $zero, $t4, $at
/* BA2A0 800B96A0 8FAA0000 */  lw         $t2, ($sp)
/* BA2A4 800B96A4 000F5880 */  sll        $t3, $t7, 2
/* BA2A8 800B96A8 016F5823 */  subu       $t3, $t3, $t7
/* BA2AC 800B96AC 000B5900 */  sll        $t3, $t3, 4
/* BA2B0 800B96B0 00004812 */  mflo       $t1
/* BA2B4 800B96B4 014BC021 */  addu       $t8, $t2, $t3
/* BA2B8 800B96B8 A709002C */  sh         $t1, 0x2c($t8)
/* BA2BC 800B96BC 1000000E */  b          .L800B96F8
/* BA2C0 800B96C0 87A20006 */   lh        $v0, 6($sp)
.L800B96C4:
/* BA2C4 800B96C4 87AD0006 */  lh         $t5, 6($sp)
/* BA2C8 800B96C8 25AE0001 */  addiu      $t6, $t5, 1
/* BA2CC 800B96CC A7AE0006 */  sh         $t6, 6($sp)
/* BA2D0 800B96D0 8C8C0044 */  lw         $t4, 0x44($a0)
/* BA2D4 800B96D4 000ECC00 */  sll        $t9, $t6, 0x10
/* BA2D8 800B96D8 00194403 */  sra        $t0, $t9, 0x10
/* BA2DC 800B96DC 010C082A */  slt        $at, $t0, $t4
/* BA2E0 800B96E0 1420FFB2 */  bnez       $at, .L800B95AC
/* BA2E4 800B96E4 00000000 */   nop
.L800B96E8:
/* BA2E8 800B96E8 10000003 */  b          .L800B96F8
/* BA2EC 800B96EC 2402FFFF */   addiu     $v0, $zero, -1
/* BA2F0 800B96F0 10000001 */  b          .L800B96F8
/* BA2F4 800B96F4 00000000 */   nop
.L800B96F8:
/* BA2F8 800B96F8 03E00008 */  jr         $ra
/* BA2FC 800B96FC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B9700
/* BA300 800B9700 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BA304 800B9704 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA308 800B9708 AFA40020 */  sw         $a0, 0x20($sp)
/* BA30C 800B970C AFA50024 */  sw         $a1, 0x24($sp)
/* BA310 800B9710 8FAE0024 */  lw         $t6, 0x24($sp)
/* BA314 800B9714 8DCF0008 */  lw         $t7, 8($t6)
/* BA318 800B9718 11E00024 */  beqz       $t7, .L800B97AC
/* BA31C 800B971C 00000000 */   nop
/* BA320 800B9720 0C029658 */  jal        func_800A5960
/* BA324 800B9724 00000000 */   nop
/* BA328 800B9728 AFA2001C */  sw         $v0, 0x1c($sp)
/* BA32C 800B972C 8FB8001C */  lw         $t8, 0x1c($sp)
/* BA330 800B9730 17000006 */  bnez       $t8, .L800B974C
/* BA334 800B9734 00000000 */   nop
/* BA338 800B9738 2404006A */  addiu      $a0, $zero, 0x6a
/* BA33C 800B973C 0C02B5EC */  jal        func_800AD7B0
/* BA340 800B9740 00002825 */   or        $a1, $zero, $zero
/* BA344 800B9744 1000001B */  b          .L800B97B4
/* BA348 800B9748 00000000 */   nop
.L800B974C:
/* BA34C 800B974C 8FA90024 */  lw         $t1, 0x24($sp)
/* BA350 800B9750 8FB90020 */  lw         $t9, 0x20($sp)
/* BA354 800B9754 8FAD001C */  lw         $t5, 0x1c($sp)
/* BA358 800B9758 8D2A0008 */  lw         $t2, 8($t1)
/* BA35C 800B975C 8F28001C */  lw         $t0, 0x1c($t9)
/* BA360 800B9760 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* BA364 800B9764 010B6021 */  addu       $t4, $t0, $t3
/* BA368 800B9768 ADAC0004 */  sw         $t4, 4($t5)
/* BA36C 800B976C 8FAF001C */  lw         $t7, 0x1c($sp)
/* BA370 800B9770 240E000F */  addiu      $t6, $zero, 0xf
/* BA374 800B9774 A5EE0008 */  sh         $t6, 8($t7)
/* BA378 800B9778 8FB8001C */  lw         $t8, 0x1c($sp)
/* BA37C 800B977C AF000000 */  sw         $zero, ($t8)
/* BA380 800B9780 8FB90024 */  lw         $t9, 0x24($sp)
/* BA384 800B9784 8F290008 */  lw         $t1, 8($t9)
/* BA388 800B9788 8D2A000C */  lw         $t2, 0xc($t1)
/* BA38C 800B978C AFAA0018 */  sw         $t2, 0x18($sp)
/* BA390 800B9790 8FA80018 */  lw         $t0, 0x18($sp)
/* BA394 800B9794 24050003 */  addiu      $a1, $zero, 3
/* BA398 800B9798 8FA6001C */  lw         $a2, 0x1c($sp)
/* BA39C 800B979C 8D190008 */  lw         $t9, 8($t0)
/* BA3A0 800B97A0 01002025 */  or         $a0, $t0, $zero
/* BA3A4 800B97A4 0320F809 */  jalr       $t9
/* BA3A8 800B97A8 00000000 */   nop
.L800B97AC:
/* BA3AC 800B97AC 10000001 */  b          .L800B97B4
/* BA3B0 800B97B0 00000000 */   nop
.L800B97B4:
/* BA3B4 800B97B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA3B8 800B97B8 27BD0020 */  addiu      $sp, $sp, 0x20
/* BA3BC 800B97BC 03E00008 */  jr         $ra
/* BA3C0 800B97C0 00000000 */   nop
/* BA3C4 800B97C4 00000000 */  nop
/* BA3C8 800B97C8 00000000 */  nop
/* BA3CC 800B97CC 00000000 */  nop
