.class Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;
.source "ColumbusNativeAdapter.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/nativead/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumbusNativeAd"
.end annotation


# instance fields
.field private mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;-><init>()V

    iput-object p2, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {p1, p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->setAdEventListener(Lcom/miui/zeus/columbus/ad/nativead/AdListener;)V

    invoke-direct {p0, p2}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->updateData(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V

    :cond_0
    return-void
.end method

.method private updateData(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V
    .locals 6

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getDownloadPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setAdBody(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getAdCoverImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setAdCoverImageUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getAdIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setAdIconUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setAdCallToAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getSponsored()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setAdSocialContext(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getAdStarRating()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setAdStarRate(D)V

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getWeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setAdWeight(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getDspWeight()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/zeus/columbus/common/DspWeightConfig;

    invoke-virtual {v3}, Lcom/miui/zeus/columbus/common/DspWeightConfig;->getDsp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/zeus/columbus/common/DspWeightConfig;

    invoke-virtual {v4}, Lcom/miui/zeus/columbus/common/DspWeightConfig;->getWeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ColumbusNativeAdAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bidding->dsp=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/zeus/columbus/common/DspWeightConfig;

    invoke-virtual {v5}, Lcom/miui/zeus/columbus/common/DspWeightConfig;->getDsp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&weight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/zeus/columbus/common/DspWeightConfig;

    invoke-virtual {v5}, Lcom/miui/zeus/columbus/common/DspWeightConfig;->getWeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "ColumbusNativeAdAdapter"

    const-string v2, "Bidding->dspweight error"

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "ColumbusNativeAdAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bidding->mi getWeight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getWeight()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->setDspWeight(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getAdObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    return-object v0
.end method

.method public getAdTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "mi"

    return-object v0
.end method

.method public loadAd()V
    .locals 3

    const-string v0, "ColumbusNativeAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zeus-Columbus: mPlacementId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-static {v2}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$000(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-static {v1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$100(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-static {v2}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$000(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {v0, p0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->setAdEventListener(Lcom/miui/zeus/columbus/ad/nativead/AdListener;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->loadAd()V

    return-void
.end method

.method public onAdClicked(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->notifyNativeAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method public onAdError(Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;)V
    .locals 3

    const-string v0, "ColumbusNativeAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zeus-Columbus error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Zeus-Columbus error msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAdError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$400(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ColumbusNativeAdAdapter"

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->updateData(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    invoke-static {p1, p0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$300(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;

    const-string v0, "response is null"

    invoke-static {p1, v0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;->access$200(Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->notifyNativeAdImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/ColumbusNativeAdapter$ColumbusNativeAd;->mNativeAd:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->unregisterView()V

    return-void
.end method
