.class Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
.super Ljava/lang/Object;
.source "KalturaCastInfo.java"


# static fields
.field public static final ASSET_REFERENCE_TYPE:Ljava/lang/String; = "assetReferenceType"

.field public static final AUDIO_LANGUAGE:Ljava/lang/String; = "audioLanguage"

.field public static final CONTEXT_TYPE:Ljava/lang/String; = "contextType"

.field public static final ENTRY_ID:Ljava/lang/String; = "entryId"

.field public static final FILE_IDS:Ljava/lang/String; = "fileIds"

.field public static final FORMATS:Ljava/lang/String; = "formats"

.field public static final KS:Ljava/lang/String; = "ks"

.field public static final MEDIA_INFO:Ljava/lang/String; = "mediaInfo"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "mediaType"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final TEXT_LANGUAGE:Ljava/lang/String; = "textLanguage"

.field public static final VMAP_ADS_REQUEST:Ljava/lang/String; = "vmapAdsRequest"


# instance fields
.field private adsConfig:Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;

.field private assetReferenceType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;

.field private audioLanguage:Ljava/lang/String;

.field private contextType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

.field private fileIds:Ljava/lang/String;

.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKs:Ljava/lang/String;

.field private mProtocol:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

.field private mediaEntryId:Ljava/lang/String;

.field private mediaMetadata:Lcom/google/android/gms/cast/MediaMetadata;

.field private mediaType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

.field private streamType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

.field private textLanguage:Ljava/lang/String;

.field private textTrackStyle:Lcom/google/android/gms/cast/TextTrackStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdsConfig()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->adsConfig:Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;

    return-object v0
.end method

.method public getAssetReferenceType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->assetReferenceType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;

    return-object v0
.end method

.method public getAudioLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->audioLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getContextType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->contextType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "entryId"

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getMediaEntryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getKs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ks"

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getKs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getMediaType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "mediaType"

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getMediaType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    move-result-object v3

    iget-object v3, v3, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAssetReferenceType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "assetReferenceType"

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAssetReferenceType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;

    move-result-object v3

    iget-object v3, v3, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getContextType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "contextType"

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getContextType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    move-result-object v3

    iget-object v3, v3, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getProtocol()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "protocol"

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getProtocol()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    move-result-object v3

    iget-object v3, v3, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getFileIds()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "fileIds"

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getFileIds()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getFormats()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getFormats()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_6
    const-string v3, "formats"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v2, "mediaInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getTextLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "textLanguage"

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getTextLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAudioLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "audioLanguage"

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAudioLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAdsConfig()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAdsConfig()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;->getAdTagType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    move-result-object v1

    sget-object v2, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->VMAP:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    if-ne v1, v2, :cond_a

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAdsConfig()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;->getVmapAdRequest()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAdsConfig()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdsConfig;->getVmapAdRequest()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VmapAdRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "vmapAdsRequest"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_1
    return-object v0
.end method

.method public getFileIds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->fileIds:Ljava/lang/String;

    return-object v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mFormats:Ljava/util/List;

    return-object v0
.end method

.method public getKs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mKs:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaEntryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mediaEntryId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaMetadata()Lcom/google/android/gms/cast/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mediaMetadata:Lcom/google/android/gms/cast/MediaMetadata;

    return-object v0
.end method

.method public getMediaType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mediaType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    return-object v0
.end method

.method public getProtocol()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mProtocol:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    return-object v0
.end method

.method public getStreamType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->streamType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    return-object v0
.end method

.method public getTextLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->textLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->textTrackStyle:Lcom/google/android/gms/cast/TextTrackStyle;

    return-object v0
.end method

.method public setAdsConfig(Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->adsConfig:Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;

    return-object p0
.end method

.method public setAssetReferenceType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->assetReferenceType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;

    return-object p0
.end method

.method public setContextType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->contextType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;

    return-object p0
.end method

.method public setDefaultAudioLanguageCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->audioLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultTextLangaugeCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->textLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setFileIds(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->fileIds:Ljava/lang/String;

    return-object p0
.end method

.method public setFormats(Ljava/util/List;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;"
        }
    .end annotation

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mFormats:Ljava/util/List;

    return-object p0
.end method

.method public setKs(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mKs:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaEntryId(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mediaEntryId:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mediaMetadata:Lcom/google/android/gms/cast/MediaMetadata;

    return-object p0
.end method

.method public setMediaType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mediaType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    return-object p0
.end method

.method public setProtocol(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->mProtocol:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    return-object p0
.end method

.method public setStreamType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->streamType:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    return-object p0
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->textTrackStyle:Lcom/google/android/gms/cast/TextTrackStyle;

    return-object p0
.end method
