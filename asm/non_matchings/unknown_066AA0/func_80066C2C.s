glabel func_80066C2C
/* 06782C 80066C2C 00047080 */  sll   $t6, $a0, 2
/* 067830 80066C30 01C47023 */  subu  $t6, $t6, $a0
/* 067834 80066C34 000E7080 */  sll   $t6, $t6, 2
/* 067838 80066C38 01C47021 */  addu  $t6, $t6, $a0
/* 06783C 80066C3C 3C0F800E */  lui   $t7, %hi(D_800DD064) # $t7, 0x800e
/* 067840 80066C40 25EFD064 */  addiu $t7, %lo(D_800DD064) # addiu $t7, $t7, -0x2f9c
/* 067844 80066C44 000E7080 */  sll   $t6, $t6, 2
/* 067848 80066C48 01CF1021 */  addu  $v0, $t6, $t7
/* 06784C 80066C4C 8C580000 */  lw    $t8, ($v0)
/* 067850 80066C50 00000000 */  nop   
/* 067854 80066C54 ACB80000 */  sw    $t8, ($a1)
/* 067858 80066C58 8C590004 */  lw    $t9, 4($v0)
/* 06785C 80066C5C 00000000 */  nop   
/* 067860 80066C60 ACD90000 */  sw    $t9, ($a2)
/* 067864 80066C64 8C480008 */  lw    $t0, 8($v0)
/* 067868 80066C68 00000000 */  nop   
/* 06786C 80066C6C ACE80000 */  sw    $t0, ($a3)
/* 067870 80066C70 8FAA0010 */  lw    $t2, 0x10($sp)
/* 067874 80066C74 8C49000C */  lw    $t1, 0xc($v0)
/* 067878 80066C78 03E00008 */  jr    $ra
/* 06787C 80066C7C AD490000 */   sw    $t1, ($t2)

/* 067880 80066C80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 067884 80066C84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 067888 80066C88 AFA40018 */  sw    $a0, 0x18($sp)
/* 06788C 80066C8C AFA5001C */  sw    $a1, 0x1c($sp)
/* 067890 80066C90 AFA60020 */  sw    $a2, 0x20($sp)
/* 067894 80066C94 0C01E948 */  jal   func_8007A520
/* 067898 80066C98 AFA70024 */   sw    $a3, 0x24($sp)
/* 06789C 80066C9C 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0678A0 80066CA0 3058FFFF */  andi  $t8, $v0, 0xffff
/* 0678A4 80066CA4 ADC00000 */  sw    $zero, ($t6)
/* 0678A8 80066CA8 8FAF001C */  lw    $t7, 0x1c($sp)
/* 0678AC 80066CAC 00024402 */  srl   $t0, $v0, 0x10
/* 0678B0 80066CB0 ADE00000 */  sw    $zero, ($t7)
/* 0678B4 80066CB4 8FB90020 */  lw    $t9, 0x20($sp)
/* 0678B8 80066CB8 00000000 */  nop   
/* 0678BC 80066CBC AF380000 */  sw    $t8, ($t9)
/* 0678C0 80066CC0 8FA90024 */  lw    $t1, 0x24($sp)
/* 0678C4 80066CC4 00000000 */  nop   
/* 0678C8 80066CC8 AD280000 */  sw    $t0, ($t1)
/* 0678CC 80066CCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0678D0 80066CD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0678D4 80066CD4 03E00008 */  jr    $ra
/* 0678D8 80066CD8 00000000 */   nop   
