.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B75F0
/* B81F0 800B75F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B81F4 800B75F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B81F8 800B75F8 AFA40020 */  sw         $a0, 0x20($sp)
/* B81FC 800B75FC AFA60028 */  sw         $a2, 0x28($sp)
/* B8200 800B7600 AFA7002C */  sw         $a3, 0x2c($sp)
/* B8204 800B7604 3C0E800D */  lui        $t6, %hi(D_800CD670)
/* B8208 800B7608 8DCED670 */  lw         $t6, %lo(D_800CD670)($t6)
/* B820C 800B760C 15C00006 */  bnez       $t6, .L800B7628
/* B8210 800B7610 00000000 */   nop
/* B8214 800B7614 2404004C */  addiu      $a0, $zero, 0x4c
/* B8218 800B7618 0C02B5EC */  jal        func_800AD7B0
/* B821C 800B761C 00002825 */   or        $a1, $zero, $zero
/* B8220 800B7620 10000030 */  b          .L800B76E4
/* B8224 800B7624 00001025 */   or        $v0, $zero, $zero
.L800B7628:
/* B8228 800B7628 8FAF0020 */  lw         $t7, 0x20($sp)
/* B822C 800B762C ADE00000 */  sw         $zero, ($t7)
/* B8230 800B7630 8FB80020 */  lw         $t8, 0x20($sp)
/* B8234 800B7634 AF000004 */  sw         $zero, 4($t8)
/* B8238 800B7638 8FB90020 */  lw         $t9, 0x20($sp)
/* B823C 800B763C 8FA80030 */  lw         $t0, 0x30($sp)
/* B8240 800B7640 8FA90034 */  lw         $t1, 0x34($sp)
/* B8244 800B7644 AF280008 */  sw         $t0, 8($t9)
/* B8248 800B7648 AF29000C */  sw         $t1, 0xc($t9)
/* B824C 800B764C 8FAA0028 */  lw         $t2, 0x28($sp)
/* B8250 800B7650 8FAB002C */  lw         $t3, 0x2c($sp)
/* B8254 800B7654 15400003 */  bnez       $t2, .L800B7664
/* B8258 800B7658 00000000 */   nop
/* B825C 800B765C 11600005 */  beqz       $t3, .L800B7674
/* B8260 800B7660 00000000 */   nop
.L800B7664:
/* B8264 800B7664 8FAC0020 */  lw         $t4, 0x20($sp)
/* B8268 800B7668 AD8A0010 */  sw         $t2, 0x10($t4)
/* B826C 800B766C 10000006 */  b          .L800B7688
/* B8270 800B7670 AD8B0014 */   sw        $t3, 0x14($t4)
.L800B7674:
/* B8274 800B7674 8FAD0020 */  lw         $t5, 0x20($sp)
/* B8278 800B7678 8FAE0030 */  lw         $t6, 0x30($sp)
/* B827C 800B767C 8FAF0034 */  lw         $t7, 0x34($sp)
/* B8280 800B7680 ADAE0010 */  sw         $t6, 0x10($t5)
/* B8284 800B7684 ADAF0014 */  sw         $t7, 0x14($t5)
.L800B7688:
/* B8288 800B7688 8FB80038 */  lw         $t8, 0x38($sp)
/* B828C 800B768C 8FA80020 */  lw         $t0, 0x20($sp)
/* B8290 800B7690 AD180018 */  sw         $t8, 0x18($t0)
/* B8294 800B7694 8FA9003C */  lw         $t1, 0x3c($sp)
/* B8298 800B7698 8FB90020 */  lw         $t9, 0x20($sp)
/* B829C 800B769C AF29001C */  sw         $t1, 0x1c($t9)
/* B82A0 800B76A0 0C02BBAF */  jal        func_800AEEBC
/* B82A4 800B76A4 8FA40020 */   lw        $a0, 0x20($sp)
/* B82A8 800B76A8 AFA20018 */  sw         $v0, 0x18($sp)
/* B82AC 800B76AC AFA3001C */  sw         $v1, 0x1c($sp)
/* B82B0 800B76B0 3C0A800D */  lui        $t2, %hi(D_800CD3C0)
/* B82B4 800B76B4 8D4AD3C0 */  lw         $t2, %lo(D_800CD3C0)($t2)
/* B82B8 800B76B8 8FAC0020 */  lw         $t4, 0x20($sp)
/* B82BC 800B76BC 8D4B0000 */  lw         $t3, ($t2)
/* B82C0 800B76C0 156C0004 */  bne        $t3, $t4, .L800B76D4
/* B82C4 800B76C4 00000000 */   nop
/* B82C8 800B76C8 8FA40018 */  lw         $a0, 0x18($sp)
/* B82CC 800B76CC 0C02BB8C */  jal        func_800AEE30
/* B82D0 800B76D0 8FA5001C */   lw        $a1, 0x1c($sp)
.L800B76D4:
/* B82D4 800B76D4 10000003 */  b          .L800B76E4
/* B82D8 800B76D8 00001025 */   or        $v0, $zero, $zero
/* B82DC 800B76DC 10000001 */  b          .L800B76E4
/* B82E0 800B76E0 00000000 */   nop
.L800B76E4:
/* B82E4 800B76E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B82E8 800B76E8 27BD0020 */  addiu      $sp, $sp, 0x20
/* B82EC 800B76EC 03E00008 */  jr         $ra
/* B82F0 800B76F0 00000000 */   nop
/* B82F4 800B76F4 00000000 */  nop
/* B82F8 800B76F8 00000000 */  nop
/* B82FC 800B76FC 00000000 */  nop
