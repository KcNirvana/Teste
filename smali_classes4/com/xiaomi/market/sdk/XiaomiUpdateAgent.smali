.class public Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;
.super Ljava/lang/Object;
.source "XiaomiUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;,
        Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketUpdateAgent"

.field private static mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

.field private static mAutoPopup:Z

.field private static mCheckUpdateOnlyWifi:Z

.field private static mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsInited:Z

.field private static mIsLoading:Z

.field private static mIsPathcerLibraryLoaded:Z

.field private static mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

.field private static mUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

.field private static mUpdateMethod:Lcom/xiaomi/market/sdk/Constants$UpdateMethod;

.field private static sDebug:Z

.field private static sUseImeiMd5AsIdentifier:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAutoPopup:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    sput-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    sput-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->sUseImeiMd5AsIdentifier:Z

    invoke-static {}, Lcom/xiaomi/market/sdk/Utils;->isMiuiPad()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/market/sdk/Constants$UpdateMethod;->DOWNLOAD_MANAGER:Lcom/xiaomi/market/sdk/Constants$UpdateMethod;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaomi/market/sdk/Constants$UpdateMethod;->MARKET:Lcom/xiaomi/market/sdk/Constants$UpdateMethod;

    :goto_0
    sput-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateMethod:Lcom/xiaomi/market/sdk/Constants$UpdateMethod;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/xiaomi/market/sdk/XiaomiUpdateListener;
    .locals 1

    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsPathcerLibraryLoaded:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    return v0
.end method

.method static synthetic access$400()Lcom/xiaomi/market/sdk/LocalAppInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaomi/market/sdk/LocalAppInfo;)Lcom/xiaomi/market/sdk/LocalAppInfo;
    .locals 0

    sput-object p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->sDebug:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->sUseImeiMd5AsIdentifier:Z

    return v0
.end method

.method static synthetic access$700()Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;)Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;
    .locals 0

    sput-object p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsLoading:Z

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAutoPopup:Z

    return v0
.end method

.method public static arrange()V
    .locals 1

    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/market/sdk/Client;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->openMarketOrArrange()V

    return-void
.end method

.method static getAppInfo(Landroid/content/Context;)Lcom/xiaomi/market/sdk/LocalAppInfo;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/market/sdk/LocalAppInfo;->get(Ljava/lang/String;)Lcom/xiaomi/market/sdk/LocalAppInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "MarketUpdateAgent"

    const-string v3, "get package info failed"

    invoke-static {v2, v3}, Lcom/xiaomi/market/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->displayName:Ljava/lang/String;

    iget p0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->versionCode:I

    iget-object p0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->versionName:Ljava/lang/String;

    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Coder;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->signature:Ljava/lang/String;

    iget-object p0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    new-instance p0, Ljava/io/File;

    iget-object v1, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Coder;->encodeMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/market/sdk/LocalAppInfo;->sourceMD5:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static getDownloadId()J
    .locals 2

    invoke-static {}, Lcom/xiaomi/market/sdk/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->getManager(Landroid/content/Context;)Lcom/xiaomi/market/sdk/DownloadInstallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->getDowloadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSDKVersion()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static openMarketOrArrange()V
    .locals 6

    sget-object v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateMethod:Lcom/xiaomi/market/sdk/Constants$UpdateMethod;

    sget-object v2, Lcom/xiaomi/market/sdk/Constants$UpdateMethod;->MARKET:Lcom/xiaomi/market/sdk/Constants$UpdateMethod;

    invoke-virtual {v1, v2}, Lcom/xiaomi/market/sdk/Constants$UpdateMethod;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    iget v1, v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;->source:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-static {v0}, Lcom/xiaomi/market/sdk/Utils;->isMiuiMarketExisted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?ref=update_sdk&back=true&id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    iget-object v3, v3, Lcom/xiaomi/market/sdk/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/xiaomi/market/sdk/Utils;->getMarketPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->getManager(Landroid/content/Context;)Lcom/xiaomi/market/sdk/DownloadInstallManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    sget-object v2, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/market/sdk/DownloadInstallManager;->arrange(Lcom/xiaomi/market/sdk/LocalAppInfo;Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static setCheckUpdateOnlyWifi(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mCheckUpdateOnlyWifi:Z

    return-void
.end method

.method public static setUpdateAutoPopup(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAutoPopup:Z

    return-void
.end method

.method public static setUpdateListener(Lcom/xiaomi/market/sdk/XiaomiUpdateListener;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateListener:Lcom/xiaomi/market/sdk/XiaomiUpdateListener;

    return-void
.end method

.method public static setUpdateMethod(Lcom/xiaomi/market/sdk/Constants$UpdateMethod;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateMethod:Lcom/xiaomi/market/sdk/Constants$UpdateMethod;

    return-void
.end method

.method public static setUseImeiMd5AsIdentifier(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->sUseImeiMd5AsIdentifier:Z

    return-void
.end method

.method public static setUseInternationalHost(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Constants;->setUseInternalProductUrl(Z)V

    invoke-static {}, Lcom/xiaomi/market/sdk/Constants;->configURL()V

    return-void
.end method

.method public static declared-synchronized update(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".BuildConfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "DEBUG"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    invoke-static {p0, v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->update(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized update(Landroid/content/Context;Z)V
    .locals 2

    const-class v0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;

    monitor-enter v0

    if-eqz p0, :cond_2

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsLoading:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/market/sdk/AppGlobal;->setContext(Landroid/content/Context;)V

    sput-boolean p1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->sDebug:Z

    const/4 p1, 0x1

    sput-boolean p1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsLoading:Z

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->init(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mContext:Ljava/lang/ref/WeakReference;

    sget-boolean p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsInited:Z

    const/4 v1, 0x0

    if-nez p0, :cond_1

    sput-object v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mAppInfo:Lcom/xiaomi/market/sdk/LocalAppInfo;

    sput-object v1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mUpdateInfo:Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$UpdateInfo;

    invoke-static {}, Lcom/xiaomi/market/sdk/Constants;->configURL()V

    sput-boolean p1, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->mIsInited:Z

    :cond_1
    new-instance p0, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;

    invoke-direct {p0, v1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;-><init>(Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    monitor-exit v0

    return-void
.end method
