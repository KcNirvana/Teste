.class public Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;
.super Ljava/lang/Object;
.source "VmapAdsConfig.java"

# interfaces
.implements Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;


# instance fields
.field private adTagType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

.field private vmapAdRequest:Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->VMAP:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;->adTagType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    return-void
.end method


# virtual methods
.method public getAdTagType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;->adTagType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    return-object v0
.end method

.method public getVmapAdRequest()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;->vmapAdRequest:Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;

    return-object v0
.end method

.method public isAdsConfigValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;->getVmapAdRequest()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;->getVmapAdRequest()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;->toJSONObject()Lorg/json/JSONObject;

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

.method public setVmapAdRequest(Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;->vmapAdRequest:Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;

    return-object p0
.end method
