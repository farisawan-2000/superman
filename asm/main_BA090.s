.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B9490
/* BA090 800B9490 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BA094 800B9494 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA098 800B9498 AFA40018 */  sw         $a0, 0x18($sp)
/* BA09C 800B949C AFA5001C */  sw         $a1, 0x1c($sp)
/* BA0A0 800B94A0 AFA60020 */  sw         $a2, 0x20($sp)
/* BA0A4 800B94A4 AFA70024 */  sw         $a3, 0x24($sp)
/* BA0A8 800B94A8 87B8001E */  lh         $t8, 0x1e($sp)
/* BA0AC 800B94AC 8FAE0018 */  lw         $t6, 0x18($sp)
/* BA0B0 800B94B0 8FA50020 */  lw         $a1, 0x20($sp)
/* BA0B4 800B94B4 0018C880 */  sll        $t9, $t8, 2
/* BA0B8 800B94B8 0338C821 */  addu       $t9, $t9, $t8
/* BA0BC 800B94BC 8DCF0034 */  lw         $t7, 0x34($t6)
/* BA0C0 800B94C0 0019C880 */  sll        $t9, $t9, 2
/* BA0C4 800B94C4 0338C823 */  subu       $t9, $t9, $t8
/* BA0C8 800B94C8 0019C880 */  sll        $t9, $t9, 2
/* BA0CC 800B94CC 01F92021 */  addu       $a0, $t7, $t9
/* BA0D0 800B94D0 24840020 */  addiu      $a0, $a0, 0x20
/* BA0D4 800B94D4 0C029751 */  jal        func_800A5D44
/* BA0D8 800B94D8 8FA60024 */   lw        $a2, 0x24($sp)
/* BA0DC 800B94DC 87AA001E */  lh         $t2, 0x1e($sp)
/* BA0E0 800B94E0 8FA80018 */  lw         $t0, 0x18($sp)
/* BA0E4 800B94E4 24050001 */  addiu      $a1, $zero, 1
/* BA0E8 800B94E8 000A5880 */  sll        $t3, $t2, 2
/* BA0EC 800B94EC 016A5821 */  addu       $t3, $t3, $t2
/* BA0F0 800B94F0 8D090034 */  lw         $t1, 0x34($t0)
/* BA0F4 800B94F4 000B5880 */  sll        $t3, $t3, 2
/* BA0F8 800B94F8 016A5823 */  subu       $t3, $t3, $t2
/* BA0FC 800B94FC 000B5880 */  sll        $t3, $t3, 2
/* BA100 800B9500 012B6021 */  addu       $t4, $t1, $t3
/* BA104 800B9504 25840020 */  addiu      $a0, $t4, 0x20
/* BA108 800B9508 0C029B98 */  jal        func_800A6E60
/* BA10C 800B950C 01803025 */   or        $a2, $t4, $zero
/* BA110 800B9510 87B8001E */  lh         $t8, 0x1e($sp)
/* BA114 800B9514 8FAD0018 */  lw         $t5, 0x18($sp)
/* BA118 800B9518 24050002 */  addiu      $a1, $zero, 2
/* BA11C 800B951C 00187880 */  sll        $t7, $t8, 2
/* BA120 800B9520 01F87821 */  addu       $t7, $t7, $t8
/* BA124 800B9524 8DAE0034 */  lw         $t6, 0x34($t5)
/* BA128 800B9528 000F7880 */  sll        $t7, $t7, 2
/* BA12C 800B952C 01F87823 */  subu       $t7, $t7, $t8
/* BA130 800B9530 000F7880 */  sll        $t7, $t7, 2
/* BA134 800B9534 01CF3021 */  addu       $a2, $t6, $t7
/* BA138 800B9538 24C60020 */  addiu      $a2, $a2, 0x20
/* BA13C 800B953C 0C029A20 */  jal        func_800A6880
/* BA140 800B9540 8DA40030 */   lw        $a0, 0x30($t5)
/* BA144 800B9544 87AA001E */  lh         $t2, 0x1e($sp)
/* BA148 800B9548 8FB90018 */  lw         $t9, 0x18($sp)
/* BA14C 800B954C 000A4880 */  sll        $t1, $t2, 2
/* BA150 800B9550 012A4821 */  addu       $t1, $t1, $t2
/* BA154 800B9554 8F280034 */  lw         $t0, 0x34($t9)
/* BA158 800B9558 00094880 */  sll        $t1, $t1, 2
/* BA15C 800B955C 012A4823 */  subu       $t1, $t1, $t2
/* BA160 800B9560 00094880 */  sll        $t1, $t1, 2
/* BA164 800B9564 01091021 */  addu       $v0, $t0, $t1
/* BA168 800B9568 10000003 */  b          .L800B9578
/* BA16C 800B956C 24420020 */   addiu     $v0, $v0, 0x20
/* BA170 800B9570 10000001 */  b          .L800B9578
/* BA174 800B9574 00000000 */   nop
.L800B9578:
/* BA178 800B9578 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA17C 800B957C 27BD0018 */  addiu      $sp, $sp, 0x18
/* BA180 800B9580 03E00008 */  jr         $ra
/* BA184 800B9584 00000000 */   nop
/* BA188 800B9588 00000000 */  nop
/* BA18C 800B958C 00000000 */  nop
