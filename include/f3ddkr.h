#ifndef _F3DDKR_H_
#define _F3DDKR_H_

// This file is an extension of PR/gbi.h

#include "PR/mbi.h"
#include "PR/gbi.h"

// Color combiner values. These need better names!
#define DKR_CC_UNK0 0, 0, 0, COMBINED, COMBINED, 0, PRIMITIVE, 0
#define DKR_CC_UNK1 ENVIRONMENT, COMBINED, ENV_ALPHA, COMBINED, COMBINED, 0, PRIMITIVE, 0
#define DKR_CC_UNK2 ENVIRONMENT, COMBINED, ENV_ALPHA, COMBINED, 0, 0, 0, COMBINED
#define DKR_CC_UNK3 ENVIRONMENT, SHADE, ENV_ALPHA, SHADE, 0, 0, 0, SHADE
#define DKR_CC_UNK4 ENVIRONMENT, SHADE, ENV_ALPHA, SHADE, 0, 0, 0, PRIMITIVE
#define DKR_CC_UNK5 TEXEL0, PRIMITIVE, SHADE_ALPHA, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0
#define DKR_CC_UNK6 ENVIRONMENT, COMBINED, SHADE, COMBINED, 0, 0, 0, COMBINED
#define DKR_CC_UNK7 TEXEL1, TEXEL0, PRIMITIVE, TEXEL0, TEXEL1, TEXEL0, PRIMITIVE, TEXEL0
#define DKR_CC_UNK8 COMBINED, 0, SHADE, 0, 0, 0, 0, COMBINED
#define DKR_CC_UNK9 PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0
#define DKR_CC_DECALFADEPRIM 0, 0, 0, TEXEL0, TEXEL0, 0, PRIMITIVE, 0

// For some reason DKR has a value for G_MDSFT_BLENDMASK, despite the fact that it is unsupported.
#define G_DKR_BLENDMASK 15

// OtherMode_H values.
#define DKR_OMH_COMMON G_DKR_BLENDMASK | G_PM_NPRIMITIVE | G_TD_CLAMP | G_TL_TILE | G_TC_FILT \
                     | G_CK_NONE | G_CD_MAGICSQ | G_AD_PATTERN

#define DKR_OMH_1CYC_POINT          DKR_OMH_COMMON | G_CYC_1CYCLE | G_TT_NONE   | G_TF_POINT  | G_TP_PERSP
#define DKR_OMH_1CYC_POINT_NOPERSP  DKR_OMH_COMMON | G_CYC_1CYCLE | G_TT_NONE   | G_TF_POINT  | G_TP_NONE
#define DKR_OMH_1CYC_BILERP         DKR_OMH_COMMON | G_CYC_1CYCLE | G_TT_NONE   | G_TF_BILERP | G_TP_PERSP
#define DKR_OMH_1CYC_BILERP_NOPERSP DKR_OMH_COMMON | G_CYC_1CYCLE | G_TT_NONE   | G_TF_BILERP | G_TP_NONE
#define DKR_OMH_1CYC_CI_BILERP      DKR_OMH_COMMON | G_CYC_1CYCLE | G_TT_RGBA16 | G_TF_BILERP | G_TP_PERSP
#define DKR_OMH_2CYC_BILERP         DKR_OMH_COMMON | G_CYC_2CYCLE | G_TT_NONE   | G_TF_BILERP | G_TP_PERSP
#define DKR_OMH_2CYC_POINT          DKR_OMH_COMMON | G_CYC_2CYCLE | G_TT_NONE   | G_TF_POINT  | G_TP_PERSP
#define DKR_OMH_2CYC_CI_BILERP      DKR_OMH_COMMON | G_CYC_2CYCLE | G_TT_RGBA16 | G_TF_BILERP | G_TP_PERSP
    
// OtherMode_L values.
#define DKR_OML_COMMON G_AC_NONE | G_ZS_PIXEL

// Render mode values. These need better names!
#define DKR_RM_UNKNOWN0   Z_UPD | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_IN, G_BL_1MA)
#define DKR_RM_UNKNOWN1   GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_IN, G_BL_1MA)
#define DKR_RM_UNKNOWN2   AA_EN | IM_RD | CLR_ON_CVG | FORCE_BL | CVG_DST_WRAP | ZMODE_OPA
#define DKR_RM_UNKNOWN2_1 DKR_RM_UNKNOWN2 | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)
#define DKR_RM_UNKNOWN2_2 DKR_RM_UNKNOWN2 | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)
#define DKR_RM_UNKNOWN3   AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_X_ALPHA | ALPHA_CVG_SEL | CVG_DST_CLAMP | ZMODE_OPA
#define DKR_RM_UNKNOWN3_1 DKR_RM_UNKNOWN3 | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)
#define DKR_RM_UNKNOWN3_2 DKR_RM_UNKNOWN3 | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_A_MEM)
#define DKR_RM_UNKNOWN4   AA_EN | Z_CMP | IM_RD | CVG_X_ALPHA | FORCE_BL | CVG_DST_CLAMP | ZMODE_XLU
#define DKR_RM_UNKNOWN4_1 DKR_RM_UNKNOWN4 | GBL_c1(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)
#define DKR_RM_UNKNOWN4_2 DKR_RM_UNKNOWN4 | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)

// Temporary until all commands are properly defined.
#define fast3d_cmd(pkt, word0, word1) \
{                                     \
    Gfx *_g = (Gfx*)(pkt);            \
    _g->w0 = word0;                   \
    _g->w1 = word1;                   \
}

#endif