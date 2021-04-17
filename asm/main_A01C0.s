.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009F5C0
/* A01C0 8009F5C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A01C4 8009F5C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A01C8 8009F5C8 AFA40018 */  sw         $a0, 0x18($sp)
/* A01CC 8009F5CC AFA5001C */  sw         $a1, 0x1c($sp)
/* A01D0 8009F5D0 8FAE001C */  lw         $t6, 0x1c($sp)
/* A01D4 8009F5D4 31CF0003 */  andi       $t7, $t6, 3
/* A01D8 8009F5D8 15E00003 */  bnez       $t7, .L8009F5E8
/* A01DC 8009F5DC 00000000 */   nop
/* A01E0 8009F5E0 10000007 */  b          .L8009F600
/* A01E4 8009F5E4 00000000 */   nop
.L8009F5E8:
/* A01E8 8009F5E8 3C04800D */  lui        $a0, %hi(D_800D2DC0)
/* A01EC 8009F5EC 3C05800D */  lui        $a1, %hi(D_800D2DDC)
/* A01F0 8009F5F0 24A52DDC */  addiu      $a1, $a1, %lo(D_800D2DDC)
/* A01F4 8009F5F4 24842DC0 */  addiu      $a0, $a0, %lo(D_800D2DC0)
/* A01F8 8009F5F8 0C02C480 */  jal        func_800B1200
/* A01FC 8009F5FC 24060037 */   addiu     $a2, $zero, 0x37
.L8009F600:
/* A0200 8009F600 0C02B6C8 */  jal        func_800ADB20
/* A0204 8009F604 00000000 */   nop
/* A0208 8009F608 10400003 */  beqz       $v0, .L8009F618
/* A020C 8009F60C 00000000 */   nop
/* A0210 8009F610 10000022 */  b          .L8009F69C
/* A0214 8009F614 2402FFFF */   addiu     $v0, $zero, -1
.L8009F618:
/* A0218 8009F618 8FB80018 */  lw         $t8, 0x18($sp)
/* A021C 8009F61C 24010001 */  addiu      $at, $zero, 1
/* A0220 8009F620 17010004 */  bne        $t8, $at, .L8009F634
/* A0224 8009F624 00000000 */   nop
/* A0228 8009F628 8FA4001C */  lw         $a0, 0x1c($sp)
/* A022C 8009F62C 0C027C44 */  jal        func_8009F110
/* A0230 8009F630 24050040 */   addiu     $a1, $zero, 0x40
.L8009F634:
/* A0234 8009F634 0C027C0C */  jal        func_8009F030
/* A0238 8009F638 8FA4001C */   lw        $a0, 0x1c($sp)
/* A023C 8009F63C 3C19A480 */  lui        $t9, 0xa480
/* A0240 8009F640 AF220000 */  sw         $v0, ($t9)
/* A0244 8009F644 8FA80018 */  lw         $t0, 0x18($sp)
/* A0248 8009F648 15000006 */  bnez       $t0, .L8009F664
/* A024C 8009F64C 00000000 */   nop
/* A0250 8009F650 3C091FC0 */  lui        $t1, 0x1fc0
/* A0254 8009F654 352907C0 */  ori        $t1, $t1, 0x7c0
/* A0258 8009F658 3C0AA480 */  lui        $t2, %hi(D_A4800004)
/* A025C 8009F65C 10000005 */  b          .L8009F674
/* A0260 8009F660 AD490004 */   sw        $t1, %lo(D_A4800004)($t2)
.L8009F664:
/* A0264 8009F664 3C0B1FC0 */  lui        $t3, 0x1fc0
/* A0268 8009F668 356B07C0 */  ori        $t3, $t3, 0x7c0
/* A026C 8009F66C 3C0CA480 */  lui        $t4, %hi(D_A4800010)
/* A0270 8009F670 AD8B0010 */  sw         $t3, %lo(D_A4800010)($t4)
.L8009F674:
/* A0274 8009F674 8FAD0018 */  lw         $t5, 0x18($sp)
/* A0278 8009F678 15A00004 */  bnez       $t5, .L8009F68C
/* A027C 8009F67C 00000000 */   nop
/* A0280 8009F680 8FA4001C */  lw         $a0, 0x1c($sp)
/* A0284 8009F684 0C02B474 */  jal        func_800AD1D0
/* A0288 8009F688 24050040 */   addiu     $a1, $zero, 0x40
.L8009F68C:
/* A028C 8009F68C 10000003 */  b          .L8009F69C
/* A0290 8009F690 00001025 */   or        $v0, $zero, $zero
/* A0294 8009F694 10000001 */  b          .L8009F69C
/* A0298 8009F698 00000000 */   nop
.L8009F69C:
/* A029C 8009F69C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A02A0 8009F6A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* A02A4 8009F6A4 03E00008 */  jr         $ra
/* A02A8 8009F6A8 00000000 */   nop
/* A02AC 8009F6AC 00000000 */  nop
