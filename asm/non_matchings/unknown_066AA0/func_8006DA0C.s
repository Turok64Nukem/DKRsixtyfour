glabel func_8006DA0C
/* 06E60C 8006DA0C 3C028012 */  lui   $v0, %hi(D_801234EC) # $v0, 0x8012
/* 06E610 8006DA10 8C4234EC */  lw    $v0, %lo(D_801234EC)($v0)
/* 06E614 8006DA14 03E00008 */  jr    $ra
/* 06E618 8006DA18 00000000 */   nop   

/* 06E61C 8006DA1C 3C018012 */  lui   $at, 0x8012
/* 06E620 8006DA20 03E00008 */  jr    $ra
/* 06E624 8006DA24 AC2434EC */   sw    $a0, 0x34ec($at)
