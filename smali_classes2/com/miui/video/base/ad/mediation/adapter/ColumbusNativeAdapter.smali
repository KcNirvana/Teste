.class public Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;
.source "ColumbusNativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;,
        Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColumbusNativeAdAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->notifyNativeAdLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->notifyNativeAdLoaded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "mi"

    return-object v0
.end method

.method public getDefaultCacheTime()J
    .locals 2

    const-wide/32 v0, 0x249f00

    return-wide v0
.end method

.method public getReportPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "mi"

    return-object p1
.end method

.method public getReportRes(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadNativeAd(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->mExtras:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->extrasAreValid(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x2719

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->mExtras:Ljava/util/Map;

    const-string p2, "placementid"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->mPlacementId:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->mExtras:Ljava/util/Map;

    const-string p2, "load_size"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->mExtras:Ljava/util/Map;

    const-string v0, "load_size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-le p1, p2, :cond_2

    :try_start_1
    new-instance p2, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;

    invoke-direct {p2, p0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;-><init>(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusAdsAdapter;->loadNativeAd(I)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;

    invoke-direct {p1, p0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;-><init>(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)V

    invoke-virtual {p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->loadAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    const-string p2, "Zeus-Columbus load error"

    invoke-virtual {p0, p2}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    const-string p2, "ColumbusNativeAdAdapter"

    const-string v0, "Load error"

    invoke-static {p2, v0, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
