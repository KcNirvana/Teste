.class public Lcom/miui/video/common/library/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceUtils"

.field private static mInstance:Lcom/miui/video/common/library/utils/DeviceUtils; = null

.field private static mIsSetFullScreen:Z = false

.field private static sImeiId:Ljava/lang/String; = ""


# instance fields
.field private androidSDK:I

.field private mIsNotchDevice:I

.field private navigationBarHeight:I

.field private phoneBoard:Ljava/lang/String;

.field private phoneBrand:Ljava/lang/String;

.field private phoneCPU_ABT:Ljava/lang/String;

.field private phoneDevice:Ljava/lang/String;

.field private phoneDisplay:Ljava/lang/String;

.field private phoneFingerprint:Ljava/lang/String;

.field private phoneHost:Ljava/lang/String;

.field private phoneID:Ljava/lang/String;

.field private phoneManufacturer:Ljava/lang/String;

.field private phoneModel:Ljava/lang/String;

.field private phoneProduct:Ljava/lang/String;

.field private phoneTags:Ljava/lang/String;

.field private phoneTime:J

.field private phoneType:Ljava/lang/String;

.field private phoneUser:Ljava/lang/String;

.field private phoneVersion:Ljava/lang/String;

.field private screenDensity:F

.field private screenHeightPixels:I

.field private screenMetrics:Landroid/util/DisplayMetrics;

.field private screenScaledDensity:F

.field private screenStatusBarHeight:I

.field private screenWidthPixels:I

.field private telCallState:I

.field private telCid:I

.field private telHasIccCard:Z

.field private telIMSI:Ljava/lang/String;

.field private telIsNetworkRoaming:Z

.field private telLac:I

.field private telLineNumber:Ljava/lang/String;

.field private telMCC:Ljava/lang/String;

.field private telMNC:Ljava/lang/String;

.field private telNetworkCountry:Ljava/lang/String;

.field private telNetworkOperator:Ljava/lang/String;

.field private telNetworkOperatorName:Ljava/lang/String;

.field private telNetworkType:I

.field private telSimCountry:Ljava/lang/String;

.field private telSimOperator:Ljava/lang/String;

.field private telSimOperatorName:Ljava/lang/String;

.field private telSimSerialNumber:Ljava/lang/String;

.field private telSimState:I

.field private telVoiceMailAlphaTag:Ljava/lang/String;

.field private telVoiceMailNumber:Ljava/lang/String;

.field private uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->mIsNotchDevice:I

    return-void
.end method

.method public static adjustNotchAndShowNavigation(Landroid/view/Window;)V
    .locals 7

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_28_P()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x404

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_26_O()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/framework/utils/AppUtils;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x700

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addExtraFlags"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->setFullScreenMode(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static adjustNotchNotch(Landroid/view/Window;)V
    .locals 7

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_28_P()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x406

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_26_O()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/framework/utils/AppUtils;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x700

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addExtraFlags"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->setFullScreenMode(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static banNotchNotch(Landroid/view/Window;)V
    .locals 7

    const-string v0, "DeviceUtils"

    const-string v1, "banNotchNotch"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_28_P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x400

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_26_O()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/framework/utils/AppUtils;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x700

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clearExtraFlags"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static cancelScreenOn(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public static dip2px(F)I
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/utils/DeviceUtils;->mInstance:Lcom/miui/video/common/library/utils/DeviceUtils;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/video/common/library/utils/DeviceUtils;->mInstance:Lcom/miui/video/common/library/utils/DeviceUtils;

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenDensity()F

    move-result v0

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getCommonStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DeviceUtils"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/miui/video/common/library/utils/DeviceUtils;->sImeiId:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/miui/video/common/library/utils/ImeiAndMeidUtil;->getRawImei1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/common/library/utils/DeviceUtils;->sImeiId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/miui/video/common/library/utils/DeviceUtils;->sImeiId:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/video/common/library/utils/DeviceUtils;->sImeiId:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/miui/video/common/library/utils/DeviceUtils;->sImeiId:Ljava/lang/String;

    return-object p0

    :cond_2
    sput-object p0, Lcom/miui/video/common/library/utils/DeviceUtils;->sImeiId:Ljava/lang/String;

    sget-object p0, Lcom/miui/video/common/library/utils/DeviceUtils;->sImeiId:Ljava/lang/String;

    return-object p0
.end method

.method public static getImeiId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/utils/DeviceUtils;->sImeiId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/miui/video/common/library/utils/DeviceUtils;->sImeiId:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImeiMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public static getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/common/library/utils/DeviceUtils;->mInstance:Lcom/miui/video/common/library/utils/DeviceUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/common/library/utils/DeviceUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/common/library/utils/DeviceUtils;->mInstance:Lcom/miui/video/common/library/utils/DeviceUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/common/library/utils/DeviceUtils;

    invoke-direct {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;-><init>()V

    sput-object v1, Lcom/miui/video/common/library/utils/DeviceUtils;->mInstance:Lcom/miui/video/common/library/utils/DeviceUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/common/library/utils/DeviceUtils;->mInstance:Lcom/miui/video/common/library/utils/DeviceUtils;

    return-object v0
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "navigation_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->navigationBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DeviceUtils"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    iget p1, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->navigationBarHeight:I

    return p1
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private getSystemPropertiesInt(Ljava/lang/String;I)I
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, p2

    :goto_0
    return p1
.end method

.method public static hideSoftInput(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initAndroid()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->androidSDK:I

    return-void
.end method

.method private initPhone()V
    .locals 2

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneBoard:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneBrand:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneCPU_ABT:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneDevice:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneDisplay:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneFingerprint:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneHost:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneID:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneManufacturer:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneModel:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneVersion:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneProduct:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneTags:Ljava/lang/String;

    sget-wide v0, Landroid/os/Build;->TIME:J

    iput-wide v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneTime:J

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneType:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneUser:Ljava/lang/String;

    return-void
.end method

.method public static isDisplayShortEdges(Landroid/view/Window;)Z
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_28_P()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_26_O()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/miui/video/framework/utils/AppUtils;->isMIUI()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/miui/video/common/library/utils/DeviceUtils;->mIsSetFullScreen:Z

    return p0

    :cond_2
    return v1
.end method

.method public static isLayoutLTR(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isLayoutRightToLeft(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/miui/video/common/library/R$bool;->is_right_to_left:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static keepScreenOn(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public static px2dip(F)I
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/utils/DeviceUtils;->mInstance:Lcom/miui/video/common/library/utils/DeviceUtils;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/video/common/library/utils/DeviceUtils;->mInstance:Lcom/miui/video/common/library/utils/DeviceUtils;

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenDensity()F

    move-result v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static setFullScreenMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/video/common/library/utils/DeviceUtils;->mIsSetFullScreen:Z

    return-void
.end method

.method public static showSoftInput(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/video/common/library/utils/DeviceUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/miui/video/common/library/utils/DeviceUtils$1;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getAndroidSDK()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->androidSDK:I

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->navigationBarHeight:I

    return v0
.end method

.method public getPhoneBoard()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneBoard:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneBrand:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCPU_ABT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneCPU_ABT:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneFingerprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneID:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneProduct()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneTags:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneTime:J

    return-wide v0
.end method

.method public getPhoneType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneUser:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenDensity()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenDensity:F

    return v0
.end method

.method public getScreenHeightPixels()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenHeightPixels:I

    return v0
.end method

.method public getScreenMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getScreenScaledDensity()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenScaledDensity:F

    return v0
.end method

.method public getScreenStatusBarHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenStatusBarHeight:I

    return v0
.end method

.method public getScreenWidthPixels()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenWidthPixels:I

    return v0
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getCommonStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getCommonStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getTelCallState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telCallState:I

    return v0
.end method

.method public getTelCid()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telCid:I

    return v0
.end method

.method public getTelIMSI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telIMSI:Ljava/lang/String;

    return-object v0
.end method

.method public getTelLac()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telLac:I

    return v0
.end method

.method public getTelLineNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telLineNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTelMCC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telMCC:Ljava/lang/String;

    return-object v0
.end method

.method public getTelMNC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getTelNetworkCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getTelNetworkOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getTelNetworkOperatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getTelNetworkType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkType:I

    return v0
.end method

.method public getTelSimCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getTelSimOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getTelSimOperatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getTelSimSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTelSimState()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimState:I

    return v0
.end method

.method public getTelVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telVoiceMailAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTelVoiceMailNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/common/library/utils/DeviceUtils;->initAndroid()V

    invoke-direct {p0}, Lcom/miui/video/common/library/utils/DeviceUtils;->initPhone()V

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->initScreen(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/framework/FrameworkConfig;->isLog()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "init"

    const-string v0, "==========Device Info=========="

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "androidSDK"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->androidSDK:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneBoard"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneBoard:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneBrand"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneBrand:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneCPU_ABT"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneCPU_ABT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneDevice"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneDevice:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneDisplay"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneDisplay:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneFingerprint"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneFingerprint:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneHost"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneHost:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneID"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneID:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneManufacturer"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneManufacturer:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneModel"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneModel:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneVersion"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneVersion:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneProduct"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneProduct:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneTags"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneTags:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneTime"

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneType"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneType:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "phoneUser"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->phoneUser:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "screenDensity"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenDensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "screenScaledDensity"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenScaledDensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "screenWidthPixels"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenWidthPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "wcreenHeightPixels"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenHeightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "screenStatusBarHeight"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenStatusBarHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "init"

    const-string v0, "==============================="

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public initScreen(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenDensity:F

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenScaledDensity:F

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenWidthPixels:I

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenHeightPixels:I

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->screenStatusBarHeight:I

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->navigationBarHeight:I

    return-void
.end method

.method public initTelephony(Landroid/content/Context;)V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telCallState:I

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telCid:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telLac:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telLineNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkCountry:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkOperator:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkOperator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkOperator:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telMCC:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkOperator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telMNC:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkOperatorName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkType:I

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimCountry:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimOperator:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimOperatorName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimSerialNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimState:I

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telIMSI:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telVoiceMailAlphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telHasIccCard:Z

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telIsNetworkRoaming:Z

    const-string p1, "telIMSI"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telIMSI:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telLineNumber"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telLineNumber:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telMCC"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telMCC:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telCallState"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telCallState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telCid"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telCid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telLac"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telLac:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telNetworkCountry"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkCountry:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telNetworkOperator"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkOperator:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telNetworkOperatorName"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkOperatorName:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telNetworkType"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telSimCountry"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimCountry:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telSimOperator"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimOperator:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telSimOperatorName"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimOperatorName:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telSimSerialNumber"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimSerialNumber:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telSimState"

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telSimState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telVoiceMailAlphaTag"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telVoiceMailAlphaTag:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telVoiceMailNumber"

    iget-object v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telVoiceMailNumber:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telHasIccCard"

    iget-boolean v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telHasIccCard:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "telIsNetworkRoaming"

    iget-boolean v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telIsNetworkRoaming:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public isNotchScreen()Z
    .locals 5

    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->mIsNotchDevice:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string v0, "ro.miui.notch"

    invoke-direct {p0, v0, v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getSystemPropertiesInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->mIsNotchDevice:I

    const-string v0, "DeviceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNotchScreen:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->mIsNotchDevice:I

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->mIsNotchDevice:I

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isNotchScreenAndNotHide(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_27_API()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_black_v2"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_26_O()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_black"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public isTelHasIccCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telHasIccCard:Z

    return v0
.end method

.method public isTelIsNetworkRoaming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/utils/DeviceUtils;->telIsNetworkRoaming:Z

    return v0
.end method
