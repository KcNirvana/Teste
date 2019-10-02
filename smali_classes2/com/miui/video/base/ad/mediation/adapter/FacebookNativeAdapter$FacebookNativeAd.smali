.class Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;
.source "FacebookNativeAdapter.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookNativeAd"
.end annotation


# instance fields
.field private mNativeAd:Lcom/facebook/ads/NativeAdBase;

.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;-><init>()V

    return-void
.end method

.method private updateData()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->setAdBody(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->setAdCallToAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdSocialContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->setAdSocialContext(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdStarRating()Lcom/facebook/ads/NativeAdBase$Rating;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdStarRating()Lcom/facebook/ads/NativeAdBase$Rating;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase$Rating;->getValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->setAdStarRate(D)V

    return-void
.end method


# virtual methods
.method public getAdObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    return-object v0
.end method

.method public getAdTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "fb"

    return-object v0
.end method

.method public getRawString(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public loadAd()V
    .locals 3

    const-string v0, "FacebookNativeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Facebook placementId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    iget-object v2, v2, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,IsNativeBannerAd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    invoke-static {v2}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->access$000(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    invoke-static {v0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->access$000(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/NativeBannerAd;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    invoke-static {v1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->access$100(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    iget-object v2, v2, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    invoke-static {v1}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->access$100(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    iget-object v2, v2, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->mPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    :goto_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/NativeAdBase;->setAdListener(Lcom/facebook/ads/NativeAdListener;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->loadAd()V

    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->notifyNativeAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->updateData()V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    invoke-static {p1, p0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->access$300(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    const-string v0, "response is null"

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->access$200(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FacebookNativeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FACEBOOK: errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;->access$400(Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->notifyNativeAdImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string p1, "FacebookNativeAdapter"

    const-string v0, "Native ad finished downloading all assets."

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)Z
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Facebook nativeAd must use registerViewForInteraction(View view, List<View> clickableViews)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Lcom/facebook/ads/MediaView;

    if-eqz v4, :cond_2

    move-object v1, v3

    check-cast v1, Lcom/facebook/ads/MediaView;

    :cond_2
    instance-of v4, v3, Lcom/facebook/ads/AdIconView;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/facebook/ads/AdIconView;

    move-object v2, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    instance-of v0, v0, Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    instance-of v0, v0, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    check-cast v0, Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0, p1, v2, p2}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/FacebookNativeAdapter$FacebookNativeAd;->mNativeAd:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    return-void
.end method
