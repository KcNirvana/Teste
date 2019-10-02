.class public Lcom/miui/video/base/common/internal/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Lcom/miui/video/base/common/internal/SingletonClass;


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.miui.videoplayer"

.field public static final APP_TYPE_ALPHA:Ljava/lang/String; = "alpha"

.field public static final APP_TYPE_ALPHA_DEBUG:Ljava/lang/String; = "alpha_debug"

.field public static final APP_TYPE_FORMAL:Ljava/lang/String; = "formal"

.field public static final CHANNEL_ROM:Ljava/lang/String; = "miphone"

.field private static final IS_BEFORE_JULY:Z = false

.field public static final IS_CMCC_BUILD:Z

.field public static IS_MIUI_OS:Z = false

.field public static PlayerVersionName:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AppConfig"

.field public static final VERSION_POSTFIX_ALPHA:Ljava/lang/String; = "00"

.field public static final VERSION_POSTFIX_STABLE:Ljava/lang/String; = "90"

.field public static VersionCode:I

.field public static VersionName:Ljava/lang/String;


# instance fields
.field public iSOnlineServerForceOn:Z

.field private mAppChannel:Ljava/lang/String;

.field private mAppType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_CM_CUSTOMIZATION:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_C1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_A4:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/video/base/common/internal/AppConfig;->IS_CMCC_BUILD:Z

    sput-boolean v1, Lcom/miui/video/base/common/internal/AppConfig;->IS_MIUI_OS:Z

    const-string v0, "0"

    sput-object v0, Lcom/miui/video/base/common/internal/AppConfig;->VersionName:Ljava/lang/String;

    sput v1, Lcom/miui/video/base/common/internal/AppConfig;->VersionCode:I

    const-string v0, "20171126"

    sput-object v0, Lcom/miui/video/base/common/internal/AppConfig;->PlayerVersionName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miphone"

    iput-object v0, p0, Lcom/miui/video/base/common/internal/AppConfig;->mAppChannel:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/common/internal/AppConfig;->mAppType:Ljava/lang/String;

    return-void
.end method

.method private checkAppVersion()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/common/internal/AppConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/base/common/internal/AppConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/miui/video/base/common/internal/AppConfig;->VersionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/miui/video/base/common/internal/AppConfig;->VersionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/miui/video/base/common/internal/AppConfig;

    invoke-static {v0}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/internal/AppConfig;

    iget-object v0, v0, Lcom/miui/video/base/common/internal/AppConfig;->mAppChannel:Ljava/lang/String;

    return-object v0
.end method

.method private initAppChannel()V
    .locals 3

    :try_start_0
    const-string v0, "com.miui.video.global.BuildConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "FLAVOR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/miui/video/base/common/internal/AppConfig;->mAppChannel:Ljava/lang/String;

    const-string v0, "AppConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAppChannel success channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/common/internal/AppConfig;->mAppChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "AppConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAppChannel Fail reflect is empty channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/common/internal/AppConfig;->mAppChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "AppConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAppChannel Fail channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/common/internal/AppConfig;->mAppChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private initAppPlatform()V
    .locals 4

    :try_start_0
    const-string v0, "com.miui.video.global.BuildConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "FLAVOR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AppConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAppChannel success platform = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "miui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/video/base/common/internal/AppConfig;->iSOnlineServerForceOn:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/miui/video/base/common/internal/AppConfig;->iSOnlineServerForceOn:Z

    goto :goto_0

    :cond_1
    const-string v0, "AppConfig"

    const-string v1, "initAppChannel Fail reflect is empty platform = "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "AppConfig"

    const-string v1, "initAppChannel Fail channel = "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static isAlphaMode()Z
    .locals 2

    const-string v0, "alpha"

    const-class v1, Lcom/miui/video/base/common/internal/AppConfig;

    invoke-static {v1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/internal/AppConfig;

    iget-object v1, v1, Lcom/miui/video/base/common/internal/AppConfig;->mAppType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDebugMode()Z
    .locals 2

    const-string v0, "alpha_debug"

    const-class v1, Lcom/miui/video/base/common/internal/AppConfig;

    invoke-static {v1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/internal/AppConfig;

    iget-object v1, v1, Lcom/miui/video/base/common/internal/AppConfig;->mAppType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUnVersion()Z
    .locals 2

    const-string v0, "miphone"

    invoke-static {}, Lcom/miui/video/base/common/internal/AppConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/common/internal/AppConfig;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result p1

    sput-boolean p1, Lcom/miui/video/base/common/internal/AppConfig;->IS_MIUI_OS:Z

    invoke-direct {p0}, Lcom/miui/video/base/common/internal/AppConfig;->initAppChannel()V

    invoke-direct {p0}, Lcom/miui/video/base/common/internal/AppConfig;->initAppPlatform()V

    invoke-direct {p0}, Lcom/miui/video/base/common/internal/AppConfig;->checkAppVersion()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
