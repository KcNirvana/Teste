.class public Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;
.source "GoogleInstreamVideoAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

.field private mIsAdDisplayed:Z

.field private mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdAdapter;-><init>()V

    const-string v0, "GoogleInstreamVideoAdAdapter"

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->notifyNativeAdLoaded(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mIsAdDisplayed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/google/ads/interactivemedia/v3/api/AdsLoader;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mContainerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "gis"

    return-object v0
.end method

.method public getDefaultCacheTime()J
    .locals 2

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public getReportPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "gis"

    return-object p1
.end method

.method public getReportRes(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleOnResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mIsAdDisplayed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    :cond_0
    return-void
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

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->extrasAreValid(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x2719

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "extra_object"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mInstreamVideoAdCallback:Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    :cond_1
    const-string p1, "ad_container_view"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    const-string p1, "ad_container_view"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->mContainerView:Landroid/view/ViewGroup;

    :cond_2
    const-string p1, "https://googleads.g.doubleclick.net/pagead/ads?client=ca-video-pub-6675912116452485&slotname=video_preroll_640-480v&ad_type=video&description_url=http%3A%2F%2Fmi.com&max_ad_duration=30000&videoad_start_delay=0&vpmute=0&vpa=1"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "google instream placementId is null"

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->notifyNativeAdFailed(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;-><init>(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$1;)V

    invoke-static {p2, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->access$100(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;Ljava/lang/String;)V

    return-void
.end method
