glabel __osViInit
/* 0D3710 800D2B10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D3714 800D2B14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D3718 800D2B18 3C04800E */  lui   $a0, %hi(vi) # $a0, 0x800e
/* 0D371C 800D2B1C 24844810 */  addiu $a0, %lo(vi) # addiu $a0, $a0, 0x4810
/* 0D3720 800D2B20 0C034138 */  jal   bzero
/* 0D3724 800D2B24 24050060 */   li    $a1, 96
/* 0D3728 800D2B28 3C0E800E */  lui   $t6, %hi(vi) # $t6, 0x800e
/* 0D372C 800D2B2C 25CE4810 */  addiu $t6, %lo(vi) # addiu $t6, $t6, 0x4810
/* 0D3730 800D2B30 3C01800E */  lui   $at, %hi(__osViCurr) # $at, 0x800e
/* 0D3734 800D2B34 AC2E4870 */  sw    $t6, %lo(__osViCurr)($at)
/* 0D3738 800D2B38 3C01800E */  lui   $at, %hi(__osViNext) # $at, 0x800e
/* 0D373C 800D2B3C 25CF0030 */  addiu $t7, $t6, 0x30
/* 0D3740 800D2B40 AC2F4874 */  sw    $t7, %lo(__osViNext)($at)
/* 0D3744 800D2B44 24180001 */  li    $t8, 1
/* 0D3748 800D2B48 A5D80032 */  sh    $t8, 0x32($t6)
/* 0D374C 800D2B4C 3C08800E */  lui   $t0, %hi(__osViCurr) # $t0, 0x800e
/* 0D3750 800D2B50 8D084870 */  lw    $t0, %lo(__osViCurr)($t0)
/* 0D3754 800D2B54 24190001 */  li    $t9, 1
/* 0D3758 800D2B58 3C098000 */  lui   $t1, %hi(osTvType) # $t1, 0x8000
/* 0D375C 800D2B5C A5190002 */  sh    $t9, 2($t0)
/* 0D3760 800D2B60 8D290300 */  lw    $t1, %lo(osTvType)($t1)
/* 0D3764 800D2B64 1520000B */  bnez  $t1, .L800D2B94
/* 0D3768 800D2B68 00000000 */   nop   
/* 0D376C 800D2B6C 3C0B800E */  lui   $t3, %hi(__osViNext) # $t3, 0x800e
/* 0D3770 800D2B70 8D6B4874 */  lw    $t3, %lo(__osViNext)($t3)
/* 0D3774 800D2B74 3C0A800E */  lui   $t2, %hi(D_800E4760) # $t2, 0x800e
/* 0D3778 800D2B78 254A4760 */  addiu $t2, %lo(D_800E4760) # addiu $t2, $t2, 0x4760
/* 0D377C 800D2B7C 3C0C02F5 */  lui   $t4, (0x02F5B2D2 >> 16) # lui $t4, 0x2f5
/* 0D3780 800D2B80 358CB2D2 */  ori   $t4, (0x02F5B2D2 & 0xFFFF) # ori $t4, $t4, 0xb2d2
/* 0D3784 800D2B84 3C01800E */  lui   $at, %hi(osViClock) # $at, 0x800e
/* 0D3788 800D2B88 AD6A0008 */  sw    $t2, 8($t3)
/* 0D378C 800D2B8C 10000019 */  b     .L800D2BF4
/* 0D3790 800D2B90 AC2C4878 */   sw    $t4, %lo(osViClock)($at)
.L800D2B94:
/* 0D3794 800D2B94 3C0D8000 */  lui   $t5, %hi(osTvType) # $t5, 0x8000
/* 0D3798 800D2B98 8DAD0300 */  lw    $t5, %lo(osTvType)($t5)
/* 0D379C 800D2B9C 24010002 */  li    $at, 2
/* 0D37A0 800D2BA0 15A1000B */  bne   $t5, $at, .L800D2BD0
/* 0D37A4 800D2BA4 00000000 */   nop   
/* 0D37A8 800D2BA8 3C18800E */  lui   $t8, %hi(__osViNext) # $t8, 0x800e
/* 0D37AC 800D2BAC 8F184874 */  lw    $t8, %lo(__osViNext)($t8)
/* 0D37B0 800D2BB0 3C0F800E */  lui   $t7, %hi(D_800E47B0) # $t7, 0x800e
/* 0D37B4 800D2BB4 25EF47B0 */  addiu $t7, %lo(D_800E47B0) # addiu $t7, $t7, 0x47b0
/* 0D37B8 800D2BB8 3C0E02E6 */  lui   $t6, (0x02E6025C >> 16) # lui $t6, 0x2e6
/* 0D37BC 800D2BBC 35CE025C */  ori   $t6, (0x02E6025C & 0xFFFF) # ori $t6, $t6, 0x25c
/* 0D37C0 800D2BC0 3C01800E */  lui   $at, %hi(osViClock) # $at, 0x800e
/* 0D37C4 800D2BC4 AF0F0008 */  sw    $t7, 8($t8)
/* 0D37C8 800D2BC8 1000000A */  b     .L800D2BF4
/* 0D37CC 800D2BCC AC2E4878 */   sw    $t6, %lo(osViClock)($at)
.L800D2BD0:
/* 0D37D0 800D2BD0 3C08800E */  lui   $t0, %hi(__osViNext) # $t0, 0x800e
/* 0D37D4 800D2BD4 8D084874 */  lw    $t0, %lo(__osViNext)($t0)
/* 0D37D8 800D2BD8 3C19800E */  lui   $t9, %hi(D_800E4710) # $t9, 0x800e
/* 0D37DC 800D2BDC 27394710 */  addiu $t9, %lo(D_800E4710) # addiu $t9, $t9, 0x4710
/* 0D37E0 800D2BE0 3C0902E6 */  lui   $t1, (0x02E6D354 >> 16) # lui $t1, 0x2e6
/* 0D37E4 800D2BE4 3529D354 */  ori   $t1, (0x02E6D354 & 0xFFFF) # ori $t1, $t1, 0xd354
/* 0D37E8 800D2BE8 3C01800E */  lui   $at, %hi(osViClock) # $at, 0x800e
/* 0D37EC 800D2BEC AD190008 */  sw    $t9, 8($t0)
/* 0D37F0 800D2BF0 AC294878 */  sw    $t1, %lo(osViClock)($at)
.L800D2BF4:
/* 0D37F4 800D2BF4 3C0B800E */  lui   $t3, %hi(__osViNext) # $t3, 0x800e
/* 0D37F8 800D2BF8 8D6B4874 */  lw    $t3, %lo(__osViNext)($t3)
/* 0D37FC 800D2BFC 240A0020 */  li    $t2, 32
/* 0D3800 800D2C00 3C0C800E */  lui   $t4, %hi(__osViNext) # $t4, 0x800e
/* 0D3804 800D2C04 A56A0000 */  sh    $t2, ($t3)
/* 0D3808 800D2C08 8D8C4874 */  lw    $t4, %lo(__osViNext)($t4)
/* 0D380C 800D2C0C 3C18A440 */  lui   $t8, %hi(VI_CURRENT_REG) # $t8, 0xa440
/* 0D3810 800D2C10 8D8D0008 */  lw    $t5, 8($t4)
/* 0D3814 800D2C14 8DAF0004 */  lw    $t7, 4($t5)
/* 0D3818 800D2C18 AD8F000C */  sw    $t7, 0xc($t4)
/* 0D381C 800D2C1C 8F0E0010 */  lw    $t6, %lo(VI_CURRENT_REG)($t8)
/* 0D3820 800D2C20 2DC1000B */  sltiu $at, $t6, 0xb
/* 0D3824 800D2C24 14200006 */  bnez  $at, .L800D2C40
/* 0D3828 800D2C28 00000000 */   nop   
.L800D2C2C:
/* 0D382C 800D2C2C 3C19A440 */  lui   $t9, %hi(VI_CURRENT_REG) # $t9, 0xa440
/* 0D3830 800D2C30 8F280010 */  lw    $t0, %lo(VI_CURRENT_REG)($t9)
/* 0D3834 800D2C34 2D01000B */  sltiu $at, $t0, 0xb
/* 0D3838 800D2C38 1020FFFC */  beqz  $at, .L800D2C2C
/* 0D383C 800D2C3C 00000000 */   nop   
.L800D2C40:
/* 0D3840 800D2C40 3C09A440 */  lui   $t1, 0xa440
/* 0D3844 800D2C44 0C035824 */  jal   __osViSwapContext
/* 0D3848 800D2C48 AD200000 */   sw    $zero, ($t1)
/* 0D384C 800D2C4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D3850 800D2C50 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D3854 800D2C54 03E00008 */  jr    $ra
/* 0D3858 800D2C58 00000000 */   nop   

/* 0D385C 800D2C5C 00000000 */  nop   
