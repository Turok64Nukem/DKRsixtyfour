glabel func_80001074
/* 001C74 80001074 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 001C78 80001078 3C0F800E */  lui   $t7, %hi(D_800DC65C) # $t7, 0x800e
/* 001C7C 8000107C 91EFC65C */  lbu   $t7, %lo(D_800DC65C)($t7)
/* 001C80 80001080 AFA40028 */  sw    $a0, 0x28($sp)
/* 001C84 80001084 308EFFFF */  andi  $t6, $a0, 0xffff
/* 001C88 80001088 01C02025 */  move  $a0, $t6
/* 001C8C 8000108C AFBF0024 */  sw    $ra, 0x24($sp)
/* 001C90 80001090 AFB20020 */  sw    $s2, 0x20($sp)
/* 001C94 80001094 AFB1001C */  sw    $s1, 0x1c($sp)
/* 001C98 80001098 11E00004 */  beqz  $t7, .L800010AC
/* 001C9C 8000109C AFB00018 */   sw    $s0, 0x18($sp)
/* 001CA0 800010A0 3C018011 */  lui   $at, %hi(D_80115F7C) # $at, 0x8011
/* 001CA4 800010A4 10000015 */  b     .L800010FC
/* 001CA8 800010A8 AC2E5F7C */   sw    $t6, %lo(D_80115F7C)($at)
.L800010AC:
/* 001CAC 800010AC 3C18800E */  lui   $t8, %hi(gMusicPlayer) # $t8, 0x800e
/* 001CB0 800010B0 8F18C630 */  lw    $t8, %lo(gMusicPlayer)($t8)
/* 001CB4 800010B4 00008025 */  move  $s0, $zero
/* 001CB8 800010B8 00808825 */  move  $s1, $a0
/* 001CBC 800010BC 24120010 */  li    $s2, 16
/* 001CC0 800010C0 A7040030 */  sh    $a0, 0x30($t8)
/* 001CC4 800010C4 24190001 */  li    $t9, 1
.L800010C8:
/* 001CC8 800010C8 02194004 */  sllv  $t0, $t9, $s0
/* 001CCC 800010CC 02284824 */  and   $t1, $s1, $t0
/* 001CD0 800010D0 11200005 */  beqz  $t1, .L800010E8
/* 001CD4 800010D4 00000000 */   nop   
/* 001CD8 800010D8 0C00045C */  jal   func_80001170
/* 001CDC 800010DC 320400FF */   andi  $a0, $s0, 0xff
/* 001CE0 800010E0 10000004 */  b     .L800010F4
/* 001CE4 800010E4 26100001 */   addiu $s0, $s0, 1
.L800010E8:
/* 001CE8 800010E8 0C000445 */  jal   func_80001114
/* 001CEC 800010EC 320400FF */   andi  $a0, $s0, 0xff
/* 001CF0 800010F0 26100001 */  addiu $s0, $s0, 1
.L800010F4:
/* 001CF4 800010F4 1612FFF4 */  bne   $s0, $s2, .L800010C8
/* 001CF8 800010F8 24190001 */   li    $t9, 1
.L800010FC:
/* 001CFC 800010FC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 001D00 80001100 8FB00018 */  lw    $s0, 0x18($sp)
/* 001D04 80001104 8FB1001C */  lw    $s1, 0x1c($sp)
/* 001D08 80001108 8FB20020 */  lw    $s2, 0x20($sp)
/* 001D0C 8000110C 03E00008 */  jr    $ra
/* 001D10 80001110 27BD0028 */   addiu $sp, $sp, 0x28

