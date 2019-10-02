.class Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;
.super Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;
.source "AdmobNativeAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdmobNativeAd"
.end annotation


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

.field private mNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

.field final synthetic this$0:Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
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

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/api/BaseNativeAd;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mExtras:Ljava/util/Map;

    return-void
.end method

.method private setUpData(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->setAdBody(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->setAdCoverImageUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->setAdIconUrl(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->setAdCallToAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    return-object v0
.end method

.method public getAdTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "ab"

    return-object v0
.end method

.method public loadAd()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mExtras:Ljava/util/Map;

    const-string v1, "placementid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "AdmobNativeAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADMOB: mUnitId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mExtras:Ljava/util/Map;

    const-string v2, "load_config_adapter"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mExtras:Ljava/util/Map;

    const-string v2, "load_config_adapter"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->positionAB:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    sget-object v5, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_TOP_LEFT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    if-ne v4, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->positionAB:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    sget-object v5, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_TOP_RIGHT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->positionAB:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    sget-object v5, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_BOTTOM_LEFT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    if-ne v4, v5, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->positionAB:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    sget-object v4, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;->ADCHOICES_BOTTOM_RIGHT:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean$NativeAdOptions;

    if-ne v1, v4, :cond_4

    const/4 v2, 0x2

    :cond_4
    :goto_1
    new-instance v1, Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v3, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd$1;

    invoke-direct {v2, p0}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd$1;-><init>(Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->setUpData(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    iput-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    iget-object p1, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->this$0:Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;

    invoke-static {p1, p0}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;->access$100(Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p0}, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->notifyNativeAdImpression(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/ad/mediation/adapter/AdmobNativeAdapter$AdmobNativeAd;->mNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->destroy()V

    :cond_0
    return-void
.end method
