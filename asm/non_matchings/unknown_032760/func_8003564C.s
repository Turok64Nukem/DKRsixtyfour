glabel func_8003564C
/* 03624C 8003564C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 036250 80035650 AFBF0014 */  sw    $ra, 0x14($sp)
/* 036254 80035654 AFA5002C */  sw    $a1, 0x2c($sp)
/* 036258 80035658 8C8E0078 */  lw    $t6, 0x78($a0)
/* 03625C 8003565C 00803025 */  move  $a2, $a0
/* 036260 80035660 15C0002F */  bnez  $t6, .L80035720
/* 036264 80035664 8FBF0014 */   lw    $ra, 0x14($sp)
/* 036268 80035668 444FF800 */  cfc1  $t7, $31
/* 03626C 8003566C C484000C */  lwc1  $f4, 0xc($a0)
/* 036270 80035670 35E10003 */  ori   $at, $t7, 3
/* 036274 80035674 38210002 */  xori  $at, $at, 2
/* 036278 80035678 44C1F800 */  ctc1  $at, $31
/* 03627C 8003567C 240B0008 */  li    $t3, 8
/* 036280 80035680 460021A4 */  cvt.w.s $f6, $f4
/* 036284 80035684 240C0034 */  li    $t4, 52
/* 036288 80035688 44CFF800 */  ctc1  $t7, $31
/* 03628C 8003568C 44183000 */  mfc1  $t8, $f6
/* 036290 80035690 24050001 */  li    $a1, 1
/* 036294 80035694 4459F800 */  cfc1  $t9, $31
/* 036298 80035698 A7B80022 */  sh    $t8, 0x22($sp)
/* 03629C 8003569C 37210003 */  ori   $at, $t9, 3
/* 0362A0 800356A0 38210002 */  xori  $at, $at, 2
/* 0362A4 800356A4 44C1F800 */  ctc1  $at, $31
/* 0362A8 800356A8 C4880010 */  lwc1  $f8, 0x10($a0)
/* 0362AC 800356AC 00000000 */  nop   
/* 0362B0 800356B0 460042A4 */  cvt.w.s $f10, $f8
/* 0362B4 800356B4 44D9F800 */  ctc1  $t9, $31
/* 0362B8 800356B8 44085000 */  mfc1  $t0, $f10
/* 0362BC 800356BC 00000000 */  nop   
/* 0362C0 800356C0 4449F800 */  cfc1  $t1, $31
/* 0362C4 800356C4 A7A80024 */  sh    $t0, 0x24($sp)
/* 0362C8 800356C8 35210003 */  ori   $at, $t1, 3
/* 0362CC 800356CC 38210002 */  xori  $at, $at, 2
/* 0362D0 800356D0 44C1F800 */  ctc1  $at, $31
/* 0362D4 800356D4 C4900014 */  lwc1  $f16, 0x14($a0)
/* 0362D8 800356D8 A3AB0021 */  sb    $t3, 0x21($sp)
/* 0362DC 800356DC 460084A4 */  cvt.w.s $f18, $f16
/* 0362E0 800356E0 A3AC0020 */  sb    $t4, 0x20($sp)
/* 0362E4 800356E4 440A9000 */  mfc1  $t2, $f18
/* 0362E8 800356E8 44C9F800 */  ctc1  $t1, $31
/* 0362EC 800356EC AFA60028 */  sw    $a2, 0x28($sp)
/* 0362F0 800356F0 27A40020 */  addiu $a0, $sp, 0x20
/* 0362F4 800356F4 0C003A95 */  jal   func_8000EA54
/* 0362F8 800356F8 A7AA0026 */   sh    $t2, 0x26($sp)
/* 0362FC 800356FC 8FA60028 */  lw    $a2, 0x28($sp)
/* 036300 80035700 10400007 */  beqz  $v0, .L80035720
/* 036304 80035704 8FBF0014 */   lw    $ra, 0x14($sp)
/* 036308 80035708 8C430064 */  lw    $v1, 0x64($v0)
/* 03630C 8003570C 00000000 */  nop   
/* 036310 80035710 AC660004 */  sw    $a2, 4($v1)
/* 036314 80035714 ACC20078 */  sw    $v0, 0x78($a2)
/* 036318 80035718 AC40003C */  sw    $zero, 0x3c($v0)
/* 03631C 8003571C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80035720:
/* 036320 80035720 27BD0028 */  addiu $sp, $sp, 0x28
/* 036324 80035724 03E00008 */  jr    $ra
/* 036328 80035728 00000000 */   nop   
