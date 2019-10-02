.class public Lcom/kaltura/playkit/plugins/googlecast/caf/MediaInfoUtils;
.super Ljava/lang/Object;
.source "MediaInfoUtils.java"


# static fields
.field public static final LIVE_EDGE:I = -0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildOTTMediaInfo(Ljava/lang/String;Ljava/lang/String;ZLcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;Ljava/util/List;Ljava/lang/String;Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/TextTrackStyle;Lcom/google/android/gms/cast/MediaMetadata;Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/TextTrackStyle;",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;",
            ")",
            "Lcom/google/android/gms/cast/MediaInfo;"
        }
    .end annotation

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setMediaEntryId(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setKs(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->LIVE:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->VOD:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setStreamType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    invoke-virtual {p0, p3}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setMediaType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setAssetReferenceType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setContextType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setFormats(Ljava/util/List;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setFileIds(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    move-result-object p0

    invoke-virtual {p0, p8}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setProtocol(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    move-result-object p0

    invoke-virtual {p0, p9}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setDefaultTextLangaugeCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    invoke-virtual {p0, p10}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setDefaultAudioLangaugeCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    invoke-virtual {p0, p11}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    invoke-virtual {p0, p12}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    invoke-virtual {p0, p13}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->setAdsConfig(Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaPhoenixCastBuilder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public static buildOVPMediaInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/TextTrackStyle;Lcom/google/android/gms/cast/MediaMetadata;Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;->setMediaEntryId(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;->setKs(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->LIVE:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->VOD:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;->setStreamType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;

    invoke-virtual {p0, p3}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;->setDefaultTextLangaugeCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;

    invoke-virtual {p0, p4}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;->setDefaultAudioLangaugeCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;

    invoke-virtual {p0, p5}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;

    invoke-virtual {p0, p6}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;

    invoke-virtual {p0, p7}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;->setAdsConfig(Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastBuilder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public static createAdsConfigVastInPosition(JLjava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/cast/VastAdsRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/VastAdsRequest$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/VastAdsRequest$Builder;->setAdTagUrl(Ljava/lang/String;)Lcom/google/android/gms/cast/VastAdsRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/cast/VastAdsRequest$Builder;->build()Lcom/google/android/gms/cast/VastAdsRequest;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;

    const-string v2, "100"

    invoke-direct {v1, v2}, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->setVastAdsRequest(Lcom/google/android/gms/cast/VastAdsRequest;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->build()Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "100"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/cast/AdBreakInfo$Builder;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/cast/AdBreakInfo$Builder;-><init>(J)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->setBreakClipIds([Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakInfo$Builder;

    move-result-object p0

    const-string p1, "101"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->setId(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->build()Lcom/google/android/gms/cast/AdBreakInfo;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->setVastAdBreakClipInfoList(Ljava/util/List;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->setVastAdBreakInfoList(Ljava/util/List;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;

    move-result-object p0

    return-object p0
.end method

.method public static createAdsConfigVmap(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;
    .locals 2

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;-><init>()V

    new-instance v1, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;

    invoke-direct {v1}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;-><init>()V

    invoke-virtual {v1, p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;->setAdTagUrl(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;->setVmapAdRequest(Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;)Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;

    move-result-object p0

    return-object p0
.end method
