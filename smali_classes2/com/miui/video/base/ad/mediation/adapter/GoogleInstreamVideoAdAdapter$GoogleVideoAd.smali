.class Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;
.source "GoogleInstreamVideoAdAdapter.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleVideoAd"
.end annotation


# instance fields
.field mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;-><init>(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->load(Ljava/lang/String;)V

    return-void
.end method

.method private load(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$202(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$200(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v2}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$400(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$302(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/google/ads/interactivemedia/v3/api/AdsLoader;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$300(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;

    invoke-direct {v1, p0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd$1;-><init>(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$200(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$700(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setAdContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$200(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->mAdDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$800(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "google adLoader request load"

    invoke-static {p1, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$700(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$300(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V

    return-void
.end method


# virtual methods
.method public getAdObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    return-object v0
.end method

.method public getAdTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "gis"

    return-object v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCodeNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$900(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    const-string v0, "google intream callback failed"

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$1000(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$800(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$1;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$602(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    :cond_1
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$1300(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$1300(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;->onAdVideoComplete(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$1202(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Z)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->notifyNativeAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->notifyNativeAdImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$1202(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Z)Z

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1, p0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$1100(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerViewForInteraction(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$700(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter$GoogleVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;->access$602(Lcom/miui/video/base/ad/mediation/adapter/GoogleInstreamVideoAdAdapter;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    :cond_0
    return-void
.end method
