.class public Lcom/miui/networkassistant/utils/DeviceUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CARRIER:Ljava/lang/String;

.field public static final DEVICE_NAME:Ljava/lang/String;

.field public static final IS_ALPHA_BUILD:Z

.field public static final IS_CM_CUSTOMIZATION_TEST:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_DUAL_CARD:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_KITKAT_OR_LATER:Z

.field public static final IS_L_OR_LATER:Z

.field public static final IS_M_OR_LATER:Z

.field public static final IS_N_OR_LATER:Z

.field public static final IS_OFFICIAL_VERSION:Z

.field public static final IS_STABLE_VERSION:Z

.field public static final IS_SUPPORT_64_BIT:Z

.field public static final MIUI_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CM_CUSTOMIZATION_TEST:Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    const-string/jumbo v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v3, "getDefault"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5, v4}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v3, "isMultiSimEnabled"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5, v4}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btT()Z

    move-result v0

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_KITKAT_OR_LATER:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_L_OR_LATER:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_M_OR_LATER:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    :goto_3
    sput-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_N_OR_LATER:Z

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_STABLE_VERSION:Z

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DEVELOPMENT_VERSION:Z

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_ALPHA_BUILD:Z

    sget-boolean v0, Lmiui/os/Build;->IS_OFFICIAL_VERSION:Z

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_OFFICIAL_VERSION:Z

    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_SUPPORT_64_BIT:Z

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/miui/networkassistant/utils/DeviceUtil;->MIUI_VERSION:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/miui/networkassistant/utils/DeviceUtil;->DEVICE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "ro.carrier"

    const-string/jumbo v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/utils/DeviceUtil;->CARRIER:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/common/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MD5"

    invoke-static {v0, v1}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersionCode()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/common/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getAppVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeiMd5()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getImei()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "MD5"

    invoke-static {v0, v1}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMiuiVersionType()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stable"

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "alpha"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "dev"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "stable"

    goto :goto_0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCNLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLargeScaleMode()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/MiuiConfiguration;->getScaleMode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public static isXiaoMiDevice(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static rebootPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
