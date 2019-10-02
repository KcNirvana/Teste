.class public Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAdsLoader(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ii;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a()V

    return-object v0
.end method

.method private createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz;->b:Landroid/net/Uri;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz;->c:Landroid/net/Uri;

    :cond_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    return-object v0
.end method


# virtual methods
.method public createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ic;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ic;-><init>()V

    return-object v0
.end method

.method public createAdsLoader(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    return-object p1
.end method

.method public createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz;->b:Landroid/net/Uri;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz;->c:Landroid/net/Uri;

    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ii;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)V

    return-object v1
.end method

.method public createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/im;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/im;-><init>()V

    return-object v0
.end method

.method public createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/in;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/in;-><init>()V

    return-object v0
.end method

.method public createCompanionAdSlot()Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/is;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/is;-><init>()V

    return-object v0
.end method

.method public createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ja;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ja;-><init>()V

    return-object v0
.end method

.method public createLiveStreamRequest(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jm;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jm;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jm;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/jm;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/jm;->a(Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V

    return-object v0
.end method

.method public createStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jk;-><init>()V

    return-object v0
.end method

.method public createVodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jm;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jm;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jm;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/jm;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/jm;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/internal/jm;->a(Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V

    return-object v0
.end method
