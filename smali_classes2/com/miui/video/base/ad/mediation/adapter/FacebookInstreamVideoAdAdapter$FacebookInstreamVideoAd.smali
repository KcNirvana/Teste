.class Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;
.source "FacebookInstreamVideoAdAdapter.java"

# interfaces
.implements Lcom/facebook/ads/InstreamVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookInstreamVideoAd"
.end annotation


# instance fields
.field private final mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;-><init>()V

    new-instance p1, Lcom/facebook/ads/InstreamVideoAdView;

    new-instance v0, Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p4, p5}, Lcom/facebook/ads/AdSize;-><init>(II)V

    invoke-direct {p1, p2, p3, v0}, Lcom/facebook/ads/InstreamVideoAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Landroid/content/Context;Ljava/lang/String;IILcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;-><init>(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->load()V

    return-void
.end method

.method private load()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/InstreamVideoAdView;->setAdListener(Lcom/facebook/ads/InstreamVideoAdListener;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {v0}, Lcom/facebook/ads/InstreamVideoAdView;->loadAd()V

    return-void
.end method


# virtual methods
.method public getAdObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

    return-object v0
.end method

.method public getAdTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "fbis"

    return-object v0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->notifyNativeAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;

    const-string v0, "fb instream fail to load"

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->access$200(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;

    invoke-static {p1, p0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->access$300(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method public onAdVideoComplete(Lcom/facebook/ads/Ad;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->access$500(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;)Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->access$500(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;)Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaomi/miglobaladsdk/instream/InstreamVideoAdCallback;->onAdVideoComplete(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->access$400(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->notifyNativeAdImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {p1}, Lcom/facebook/ads/InstreamVideoAdView;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;

    invoke-static {p1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;->access$600(Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {p1}, Lcom/facebook/ads/InstreamVideoAdView;->show()Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookInstreamVideoAdAdapter$FacebookInstreamVideoAd;->mInstreamAdView:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {v0}, Lcom/facebook/ads/InstreamVideoAdView;->destroy()V

    return-void
.end method
