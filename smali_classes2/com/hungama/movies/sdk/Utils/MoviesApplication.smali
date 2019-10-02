.class public Lcom/hungama/movies/sdk/Utils/MoviesApplication;
.super Ljava/lang/Object;
.source "MoviesApplication.java"


# static fields
.field private static movieApplication:Landroid/app/Application;

.field protected static userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->movieApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public static buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    sget-object v1, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method

.method public static getMovieApplication()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->movieApplication:Landroid/app/Application;

    return-object v0
.end method

.method private static initChromeCast(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/hungama/movies/sdk/chromecast/CastUtils;->initializeCast(Landroid/content/Context;)V

    return-void
.end method

.method private static initializeHA(Landroid/content/Context;)V
    .locals 8

    sget-boolean v0, Lcom/hungama/movies/sdk/a/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->HA_APP_KEY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->HA_SERVICE_ID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->HA_AFFILIATE_ID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/hungama/movies/sdk/R$string;->HA_DOMAIN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/hungama/apps/ha/HAController;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->movieApplication:Landroid/app/Application;

    invoke-static {}, Lcom/hungama/apps/ha/HAController;->getInstance()Lcom/hungama/apps/ha/HAController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hungama/apps/ha/HAController;->getLifeCycleHandler()Lcom/hungama/apps/ha/AppLifeCycleHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static initializeSDK(Landroid/app/Application;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->setMovieApplication(Landroid/app/Application;)V

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->initChromeCast(Landroid/content/Context;)V

    sget-boolean p0, Lcom/hungama/movies/sdk/a/b;->c:Z

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/hungama/movies/sdk/e/a;->a(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->movieApplication:Landroid/app/Application;

    const-string v1, "MovieTv"

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->initializeHA(Landroid/content/Context;)V

    return-void
.end method

.method private static setMovieApplication(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->movieApplication:Landroid/app/Application;

    return-void
.end method

.method private updateAffiliateIdIfNeccessary()V
    .locals 2

    sget-boolean v0, Lcom/hungama/movies/sdk/a/b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hungama/apps/ha/HAController;->getInstance()Lcom/hungama/apps/ha/HAController;

    move-result-object v0

    const-string v1, "5678"

    invoke-virtual {v0, v1}, Lcom/hungama/apps/ha/HAController;->onUpdateAffiliateId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static useExtensionRenderers()Z
    .locals 2

    const-string v0, ""

    const-string v1, "withExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onTerminate()V
    .locals 2

    :try_start_0
    const-string v0, "MainFragment"

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/hungama/movies/sdk/a/b;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hungama/movies/sdk/Utils/MoviesApplication;->movieApplication:Landroid/app/Application;

    invoke-static {}, Lcom/hungama/apps/ha/HAController;->getInstance()Lcom/hungama/apps/ha/HAController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hungama/apps/ha/HAController;->getLifeCycleHandler()Lcom/hungama/apps/ha/AppLifeCycleHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
