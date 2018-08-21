.class public Lcom/miui/voicesdk/util/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field private static bInit:Z

.field private static mScreenDensity:F

.field private static sRealDisplayHeight:I

.field private static sRealDisplayWidth:I

.field private static sScreenHeight:I

.field private static sScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/voicesdk/util/DeviceConfig;->bInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRealDisplayHeight()I
    .locals 1

    sget v0, Lcom/miui/voicesdk/util/DeviceConfig;->sRealDisplayHeight:I

    return v0
.end method

.method public static getRealDisplayRatio(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/miui/voicesdk/util/DeviceConfig;->sRealDisplayWidth:I

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/voicesdk/util/DeviceConfig;->sRealDisplayHeight:I

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/miui/voicesdk/util/DeviceConfig;->init(Landroid/content/Context;)V

    :cond_1
    sget v0, Lcom/miui/voicesdk/util/DeviceConfig;->sRealDisplayHeight:I

    sget v1, Lcom/miui/voicesdk/util/DeviceConfig;->sRealDisplayWidth:I

    div-int/2addr v0, v1

    return v0
.end method

.method public static getRealDisplayWidth()I
    .locals 1

    sget v0, Lcom/miui/voicesdk/util/DeviceConfig;->sRealDisplayWidth:I

    return v0
.end method

.method public static getScreenDensity()F
    .locals 1

    sget v0, Lcom/miui/voicesdk/util/DeviceConfig;->mScreenDensity:F

    return v0
.end method

.method public static getScreenHeight()I
    .locals 1

    sget v0, Lcom/miui/voicesdk/util/DeviceConfig;->sScreenHeight:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    sget v0, Lcom/miui/voicesdk/util/DeviceConfig;->sScreenWidth:I

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    const-class v4, Lcom/miui/voicesdk/util/DeviceConfig;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/miui/voicesdk/util/DeviceConfig;->bInit:Z

    if-nez v3, :cond_0

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/miui/voicesdk/util/DeviceConfig;->bInit:Z

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/miui/voicesdk/util/DeviceConfig;->mScreenDensity:F

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/miui/voicesdk/util/DeviceConfig;->sScreenWidth:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/miui/voicesdk/util/DeviceConfig;->sScreenHeight:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/miui/voicesdk/util/DeviceConfig;->sRealDisplayHeight:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/miui/voicesdk/util/DeviceConfig;->sRealDisplayWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isFullViewDisplay(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/miui/voicesdk/util/DeviceConfig;->getRealDisplayRatio(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
