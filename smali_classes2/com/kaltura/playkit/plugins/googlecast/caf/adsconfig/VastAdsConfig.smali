.class public Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;
.super Ljava/lang/Object;
.source "VastAdsConfig.java"

# interfaces
.implements Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;


# instance fields
.field private adTagType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

.field private vastAdBreakClipInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vastAdBreakInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->VAST:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->adTagType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    return-void
.end method


# virtual methods
.method public getAdTagType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->adTagType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    return-object v0
.end method

.method public getVastAdBreakClipInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->vastAdBreakClipInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getVastAdBreakInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->vastAdBreakInfoList:Ljava/util/List;

    return-object v0
.end method

.method public isAdsConfigValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->getVastAdBreakClipInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->getVastAdBreakInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVastAdBreakClipInfoList(Ljava/util/List;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;)",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->vastAdBreakClipInfoList:Ljava/util/List;

    return-object p0
.end method

.method public setVastAdBreakInfoList(Ljava/util/List;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;)",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->vastAdBreakInfoList:Ljava/util/List;

    return-object p0
.end method
