.class public Lcom/miui/video/framework/miui/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
.field public static final CHIP_ABBR:Ljava/lang/String;

.field public static final FEATURE_WHOLE_ANIM:Z

.field public static final IS_6X:Z

.field public static final IS_A4:Z

.field public static final IS_A8:Z

.field public static final IS_ALPHA_BUILD:Z

.field public static final IS_C1:Z

.field public static final IS_CDMA:Z

.field public static final IS_CM_CUSTOMIZATION:Z

.field public static final IS_CM_CUSTOMIZATION_TEST:Z

.field public static final IS_CTA_BUILD:Z

.field public static final IS_CTS_BUILD:Z

.field public static final IS_CT_CUSTOMIZATION:Z

.field public static final IS_CU_CUSTOMIZATION:Z

.field public static final IS_CU_CUSTOMIZATION_TEST:Z

.field public static final IS_D1:Z

.field public static final IS_D5:Z

.field public static final IS_D5X:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_E1:Z

.field public static final IS_E4:Z

.field public static final IS_E6:Z

.field public static final IS_E7:Z

.field public static final IS_E7S:Z

.field public static final IS_E7X:Z

.field public static final IS_F1:Z

.field public static final IS_F10:Z

.field public static final IS_F11:Z

.field public static IS_HK_BUILD:Z = false

.field public static final IS_HONGMI:Z

.field public static final IS_HONGMI2_TDSCDMA:Z

.field public static final IS_HONGMI_NOTE_4X:Z

.field public static final IS_HONGMI_NOTE_TWO:Z

.field public static final IS_HONGMI_THREE:Z

.field public static final IS_HONGMI_THREEX:Z

.field public static final IS_HONGMI_THREEX_CM:Z

.field public static final IS_HONGMI_THREEX_CT:Z

.field public static final IS_HONGMI_THREEX_CU:Z

.field public static final IS_HONGMI_THREE_LTE:Z

.field public static final IS_HONGMI_THREE_LTE_CM:Z

.field public static final IS_HONGMI_THREE_LTE_CU:Z

.field public static final IS_HONGMI_TWO:Z

.field public static final IS_HONGMI_TWOS_LTE_MTK:Z

.field public static final IS_HONGMI_TWOX:Z

.field public static final IS_HONGMI_TWOX_BR:Z

.field public static final IS_HONGMI_TWOX_CM:Z

.field public static final IS_HONGMI_TWOX_CT:Z

.field public static final IS_HONGMI_TWOX_CU:Z

.field public static final IS_HONGMI_TWOX_IN:Z

.field public static final IS_HONGMI_TWOX_LC:Z

.field public static final IS_HONGMI_TWOX_SA:Z

.field public static final IS_HONGMI_TWO_A:Z

.field public static final IS_HONGMI_TWO_S:Z

.field public static IS_ID_BUILD:Z = false

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static IS_IN_BUILD:Z = false

.field public static final IS_LEADCORE:Z

.field public static final IS_MEDIATEK:Z

.field public static final IS_MI1S:Z

.field public static final IS_MI2A:Z

.field public static final IS_MIFIVE:Z

.field public static final IS_MIFOUR:Z

.field public static final IS_MIFOUR_CDMA:Z

.field public static final IS_MIFOUR_LTE_CM:Z

.field public static final IS_MIFOUR_LTE_CT:Z

.field public static final IS_MIFOUR_LTE_CU:Z

.field public static final IS_MIFOUR_LTE_INDIA:Z

.field public static final IS_MIFOUR_LTE_SEASA:Z

.field public static final IS_MIONE:Z

.field public static final IS_MIONE_CDMA:Z

.field public static final IS_MIPAD:Z

.field public static final IS_MITHREE:Z

.field public static final IS_MITHREE_CDMA:Z

.field public static final IS_MITHREE_TDSCDMA:Z

.field public static final IS_MITWO:Z

.field public static final IS_MITWO_CDMA:Z

.field public static final IS_MITWO_TDSCDMA:Z

.field public static final IS_MIX3:Z

.field public static final IS_MI_MAX2:Z

.field public static IS_MY_BUILD:Z = false

.field public static final IS_N7:Z

.field public static final IS_NVIDIA:Z

.field public static final IS_OFFICIAL_VERSION:Z

.field public static IS_PH_BUILD:Z = false

.field public static final IS_QUALCOMM:Z

.field public static IS_SG_BUILD:Z = false

.field public static final IS_STABLE_VERSION:Z

.field public static final IS_TABLET:Z

.field public static final IS_TDS_CDMA:Z

.field public static IS_TH_BUILD:Z = false

.field public static IS_TW_BUILD:Z = false

.field public static final IS_XIAOMI:Z

.field public static REGION:Ljava/lang/String; = null

.field private static final REGULAR_EXPRESSION_FOR_DEVELOPMENT:Ljava/lang/String; = "\\d+.\\d+.\\d+(-internal)?"

.field private static final REGULAR_EXPRESSION_FOR_STABLE:Ljava/lang/String; = "([A-Z]{3}|[A-Z]{7})\\d+.\\d+"

.field public static final USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;

.field public static final USER_MODE:Ljava/lang/String; = "persist.sys.user_mode"

.field public static final USER_MODE_ELDER:I = 0x1

.field public static final USER_MODE_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "lithium"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_A8:Z

    const-string v0, "chiron"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_D5:Z

    const-string v0, "polaris"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_D5X:Z

    const-string v0, "vince"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_E7:Z

    const-string v0, "whyred"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_E7S:Z

    const-string v0, "versace"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_E7X:Z

    const-string v0, "rosy"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_D1:Z

    const-string v0, "dipper"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_E1:Z

    const-string v0, "nitrogen"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_E4:Z

    const-string v0, "ysl"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_E6:Z

    const-string v0, "mione"

    sget-object v1, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "mione_plus"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIONE:Z

    const-string v0, "MI 1S"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MI 1SC"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MI1S:Z

    const-string v0, "aries"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "taurus"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "taurus_td"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITWO:Z

    const-string v0, "MI 2A"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "MI 2A TD"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MI2A:Z

    const-string v0, "pisces"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "cancro"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITHREE:Z

    const-string v0, "cancro"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MI 4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR:Z

    const-string v0, "virgo"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFIVE:Z

    const-string v0, "MI MAX 2"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "oxygen"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MI_MAX2:Z

    const-string v0, "cepheus"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_F1:Z

    const-string v0, "raphael"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_F11:Z

    const-string v0, "davinci"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_F10:Z

    const-string v0, "perseus"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIX3:Z

    const-string v0, "wayne"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_6X:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIONE:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITWO:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITHREE:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFIVE:Z

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    :cond_e
    :goto_d
    const/4 v0, 0x1

    :goto_e
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_XIAOMI:Z

    const-string v0, "mocha"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIPAD:Z

    const-string v0, "flo"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_N7:Z

    const-string v0, "armani"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWO_A:Z

    const-string v0, "HM2014011"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "HM2014012"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v0, 0x1

    :goto_10
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWO_S:Z

    const-string v0, "HM2014501"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    const-string v0, "HM2013022"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "HM2013023"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWO_A:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWO_S:Z

    if-eqz v0, :cond_11

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    :cond_12
    :goto_11
    const/4 v0, 0x1

    :goto_12
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWO:Z

    const-string v0, "Redmi Note 2"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "hermes"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    :cond_14
    :goto_13
    const/4 v0, 0x1

    :goto_14
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_NOTE_TWO:Z

    const-string v0, "lcsh92_wet_jb9"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "lcsh92_wet_tdd"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    :cond_16
    :goto_15
    const/4 v0, 0x1

    :goto_16
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE:Z

    const-string v0, "dior"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE_LTE:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE_LTE:Z

    if-eqz v0, :cond_17

    const-string v0, "LTETD"

    const-string v3, "ro.boot.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_17

    :cond_17
    const/4 v0, 0x0

    :goto_17
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE_LTE_CM:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE_LTE:Z

    if-eqz v0, :cond_18

    const-string v0, "LTEW"

    const-string v3, "ro.boot.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_18

    :cond_18
    const/4 v0, 0x0

    :goto_18
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE_LTE_CU:Z

    const-string v0, "HM2014811"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_CU:Z

    const-string v0, "HM2014812"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "HM2014821"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_19

    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    :cond_1a
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_CT:Z

    const-string v0, "HM2014813"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "HM2014112"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1b

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1c
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_CM:Z

    const-string v0, "HM2014818"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_IN:Z

    const-string v0, "HM2014817"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_SA:Z

    const-string v0, "HM2014819"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_BR:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_CU:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_CT:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_CM:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_IN:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_SA:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_BR:Z

    if-eqz v0, :cond_1d

    goto :goto_1d

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX:Z

    const-string v0, "lte26007"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_LC:Z

    const-string v0, "gucci"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREEX:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREEX:Z

    if-eqz v0, :cond_1f

    const-string v0, "cm"

    const-string v3, "persist.sys.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1f
    const/4 v0, 0x0

    :goto_1f
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREEX_CM:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREEX:Z

    if-eqz v0, :cond_20

    const-string v0, "cu"

    const-string v3, "persist.sys.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_20

    :cond_20
    const/4 v0, 0x0

    :goto_20
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREEX_CU:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREEX:Z

    if-eqz v0, :cond_21

    const-string v0, "ct"

    const-string v3, "persist.sys.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_21

    :cond_21
    const/4 v0, 0x0

    :goto_21
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREEX_CT:Z

    const-string v0, "mido"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_NOTE_4X:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWO:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE_LTE:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_LC:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREEX:Z

    if-eqz v0, :cond_22

    goto :goto_22

    :cond_22
    const/4 v0, 0x0

    goto :goto_23

    :cond_23
    :goto_22
    const/4 v0, 0x1

    :goto_23
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIONE:Z

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/miui/video/framework/miui/Build;->hasMsm8660Property()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_24

    :cond_24
    const/4 v0, 0x0

    :goto_24
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIONE_CDMA:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITWO:Z

    if-eqz v0, :cond_25

    const-string v0, "CDMA"

    const-string v3, "persist.radio.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_25

    :cond_25
    const/4 v0, 0x0

    :goto_25
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITWO_CDMA:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_26

    const-string v0, "MI 3C"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_26

    :cond_26
    const/4 v0, 0x0

    :goto_26
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITHREE_CDMA:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_27

    const-string v0, "CDMA"

    const-string v3, "persist.radio.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_27

    :cond_27
    const/4 v0, 0x0

    :goto_27
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR_CDMA:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITWO:Z

    if-eqz v0, :cond_28

    const-string v0, "TD"

    const-string v3, "persist.radio.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_28

    :cond_28
    const/4 v0, 0x0

    :goto_28
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITWO_TDSCDMA:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITHREE:Z

    if-eqz v0, :cond_29

    const-string v0, "TD"

    const-string v3, "persist.radio.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_29

    :cond_29
    const/4 v0, 0x0

    :goto_29
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITHREE_TDSCDMA:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_2a

    const-string v0, "LTE-CMCC"

    const-string v3, "persist.radio.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2a

    :cond_2a
    const/4 v0, 0x0

    :goto_2a
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR_LTE_CM:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_2b

    const-string v0, "LTE-CU"

    const-string v3, "persist.radio.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2b
    const/4 v0, 0x0

    :goto_2b
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR_LTE_CU:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_2c

    const-string v0, "LTE-CT"

    const-string v3, "persist.radio.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2c
    const/4 v0, 0x0

    :goto_2c
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR_LTE_CT:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_2d

    const-string v0, "LTE-India"

    const-string v3, "persist.radio.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2d
    const/4 v0, 0x0

    :goto_2d
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR_LTE_INDIA:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_2e

    const-string v0, "LTE-SEAsa"

    const-string v3, "persist.radio.modem"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2e
    const/4 v0, 0x0

    :goto_2e
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR_LTE_SEASA:Z

    const-string v0, "HM2013022"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI2_TDSCDMA:Z

    const-string v0, "scorpio"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_A4:Z

    const-string v0, "sagit"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_C1:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIONE_CDMA:Z

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITWO_CDMA:Z

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITHREE_CDMA:Z

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR_CDMA:Z

    if-nez v0, :cond_30

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR_LTE_CT:Z

    if-eqz v0, :cond_2f

    goto :goto_2f

    :cond_2f
    const/4 v0, 0x0

    goto :goto_30

    :cond_30
    :goto_2f
    const/4 v0, 0x1

    :goto_30
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_CDMA:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITHREE_TDSCDMA:Z

    if-nez v0, :cond_32

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI2_TDSCDMA:Z

    if-nez v0, :cond_32

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITWO_TDSCDMA:Z

    if-eqz v0, :cond_31

    goto :goto_31

    :cond_31
    const/4 v0, 0x0

    goto :goto_32

    :cond_32
    :goto_31
    const/4 v0, 0x1

    :goto_32
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_TDS_CDMA:Z

    const-string v0, "cu"

    const-string v3, "ro.carrier.name"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_CU_CUSTOMIZATION:Z

    const-string v0, "cm"

    const-string v3, "ro.carrier.name"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_CM_CUSTOMIZATION:Z

    const-string v0, "ct"

    const-string v3, "ro.carrier.name"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_CT_CUSTOMIZATION:Z

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(-internal)?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_33

    :cond_33
    const/4 v0, 0x0

    :goto_33
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_DEVELOPMENT_VERSION:Z

    const-string v0, "user"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_34

    const/4 v0, 0x1

    goto :goto_34

    :cond_34
    const/4 v0, 0x0

    :goto_34
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_STABLE_VERSION:Z

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v0, :cond_36

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_35

    goto :goto_35

    :cond_35
    const/4 v0, 0x0

    goto :goto_36

    :cond_36
    :goto_35
    const/4 v0, 0x1

    :goto_36
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_OFFICIAL_VERSION:Z

    const-string v0, "ro.product.mod_device"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_alpha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_ALPHA_BUILD:Z

    const-string v0, "1"

    const-string v3, "ro.miui.cts"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_CTS_BUILD:Z

    const-string v0, "1"

    const-string v3, "ro.miui.cta"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_CTA_BUILD:Z

    const-string v0, "cm"

    const-string v3, "ro.cust.test"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    const-string v0, "cu"

    const-string v3, "ro.cust.test"

    invoke-static {v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    const-string v0, "ro.sys.ft_whole_anim"

    invoke-static {v0, v2}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemPropertiesBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->FEATURE_WHOLE_ANIM:Z

    sget-object v0, Lcom/miui/video/framework/miui/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "qcom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIONE:Z

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MI1S:Z

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MITWO:Z

    if-nez v0, :cond_38

    const-string v0, "cancro"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MI2A:Z

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFOUR:Z

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIFIVE:Z

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWO_A:Z

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE_LTE:Z

    if-eqz v0, :cond_37

    goto :goto_37

    :cond_37
    const/4 v0, 0x0

    goto :goto_38

    :cond_38
    :goto_37
    const/4 v0, 0x1

    :goto_38
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_QUALCOMM:Z

    const-string v0, "pisces"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIPAD:Z

    if-eqz v0, :cond_39

    goto :goto_39

    :cond_39
    const/4 v0, 0x0

    goto :goto_3a

    :cond_3a
    :goto_39
    const/4 v0, 0x1

    :goto_3a
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_NVIDIA:Z

    sget-object v0, Lcom/miui/video/framework/miui/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "mt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "HM2013022"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "HM2013023"

    sget-object v3, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWO_S:Z

    if-nez v0, :cond_3c

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    if-nez v0, :cond_3c

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_THREE:Z

    if-eqz v0, :cond_3b

    goto :goto_3b

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3c

    :cond_3c
    :goto_3b
    const/4 v0, 0x1

    :goto_3c
    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MEDIATEK:Z

    sget-object v0, Lcom/miui/video/framework/miui/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "leadcore"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HONGMI_TWOX_LC:Z

    if-eqz v0, :cond_3e

    :cond_3d
    const/4 v1, 0x1

    :cond_3e
    sput-boolean v1, Lcom/miui/video/framework/miui/Build;->IS_LEADCORE:Z

    invoke-static {}, Lcom/miui/video/framework/miui/Build;->getChipAbbr()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/framework/miui/Build;->CHIP_ABBR:Ljava/lang/String;

    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/framework/miui/Build;->REGION:Ljava/lang/String;

    const-string v0, "TW"

    invoke-static {v0}, Lcom/miui/video/framework/miui/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_TW_BUILD:Z

    const-string v0, "HK"

    invoke-static {v0}, Lcom/miui/video/framework/miui/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_HK_BUILD:Z

    const-string v0, "SG"

    invoke-static {v0}, Lcom/miui/video/framework/miui/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_SG_BUILD:Z

    const-string v0, "MY"

    invoke-static {v0}, Lcom/miui/video/framework/miui/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MY_BUILD:Z

    const-string v0, "PH"

    invoke-static {v0}, Lcom/miui/video/framework/miui/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_PH_BUILD:Z

    const-string v0, "ID"

    invoke-static {v0}, Lcom/miui/video/framework/miui/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_ID_BUILD:Z

    const-string v0, "IN"

    invoke-static {v0}, Lcom/miui/video/framework/miui/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_IN_BUILD:Z

    const-string v0, "TH"

    invoke-static {v0}, Lcom/miui/video/framework/miui/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_TH_BUILD:Z

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-static {}, Lcom/miui/video/framework/miui/Build;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_TABLET:Z

    invoke-static {}, Lcom/miui/video/framework/miui/Build;->getUserdataImageVersionCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/video/framework/miui/Build;->USERDATA_IMAGE_VERSION_CODE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkRegion(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/miui/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getChipAbbr()Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_QUALCOMM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "taurus"

    sget-object v2, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "taurus_td"

    sget-object v2, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "qc"

    return-object v0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_NVIDIA:Z

    if-eqz v0, :cond_3

    const-string v0, "nv"

    return-object v0

    :cond_3
    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MEDIATEK:Z

    if-eqz v0, :cond_4

    const-string v0, "mt"

    return-object v0

    :cond_4
    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_LEADCORE:Z

    if-eqz v0, :cond_5

    const-string v0, "lc"

    return-object v0

    :cond_5
    return-object v1
.end method

.method public static getCustVariant()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const-string v0, "ro.miui.cust_variant"

    const-string v1, "cn"

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ro.miui.cust_variant"

    const-string v1, "hk"

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.miui.region"

    invoke-static {v0}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserMode()I
    .locals 2

    const-string v0, "persist.sys.user_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemPropertiesInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getUserdataImageVersionCode()Ljava/lang/String;
    .locals 6

    const-string v0, "ro.miui.userdata_version"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Unavailable"

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/miui/video/framework/miui/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string v1, "global"

    goto :goto_0

    :cond_1
    const-string v1, "cn"

    :goto_0
    const-string v2, "ro.carrier.name"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "%s(%s%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasCameraFlash(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_N7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIPAD:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.flash"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasMsm8660Property()Z
    .locals 2

    const-string v0, "ro.soc.name"

    invoke-static {v0}, Lcom/miui/video/framework/miui/internal/WLReflect;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msm8660"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unkown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupport8KVideo()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_F1:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_F11:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isTablet()Z
    .locals 4

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_N7:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIPAD:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v0, v2

    const/16 v2, 0x258

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method public static setUserMode(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "persist.sys.user_mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/miui/internal/WLReflect;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
