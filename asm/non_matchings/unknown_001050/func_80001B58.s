glabel func_80001B58
/* 002758 80001B58 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00275C 80001B5C AFB2001C */  sw    $s2, 0x1c($sp)
/* 002760 80001B60 AFB30020 */  sw    $s3, 0x20($sp)
/* 002764 80001B64 AFB10018 */  sw    $s1, 0x18($sp)
/* 002768 80001B68 AFB00014 */  sw    $s0, 0x14($sp)
/* 00276C 80001B6C 3C12800E */  lui   $s2, %hi(gSndFxPlayer) # $s2, 0x800e
/* 002770 80001B70 309100FF */  andi  $s1, $a0, 0xff
/* 002774 80001B74 AFBF0024 */  sw    $ra, 0x24($sp)
/* 002778 80001B78 AFA40028 */  sw    $a0, 0x28($sp)
/* 00277C 80001B7C 2652C634 */  addiu $s2, %lo(gSndFxPlayer) # addiu $s2, $s2, -0x39cc
/* 002780 80001B80 00008025 */  move  $s0, $zero
/* 002784 80001B84 24130010 */  li    $s3, 16
.L80001B88:
/* 002788 80001B88 8E440000 */  lw    $a0, ($s2)
/* 00278C 80001B8C 320500FF */  andi  $a1, $s0, 0xff
/* 002790 80001B90 0C031E38 */  jal   alCSPSetChlPan
/* 002794 80001B94 322600FF */   andi  $a2, $s1, 0xff
/* 002798 80001B98 26100001 */  addiu $s0, $s0, 1
/* 00279C 80001B9C 1613FFFA */  bne   $s0, $s3, .L80001B88
/* 0027A0 80001BA0 00000000 */   nop   
/* 0027A4 80001BA4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0027A8 80001BA8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0027AC 80001BAC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0027B0 80001BB0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0027B4 80001BB4 8FB30020 */  lw    $s3, 0x20($sp)
/* 0027B8 80001BB8 03E00008 */  jr    $ra
/* 0027BC 80001BBC 27BD0028 */   addiu $sp, $sp, 0x28

