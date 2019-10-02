.class public abstract Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
.super Ljava/lang/Object;
.source "CAFCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;,
        Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AssetReferenceType;,
        Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$PlaybackContextType;,
        Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;,
        Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;,
        Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CONTENT_ID:Ljava/lang/String; = "CONTENT_ID"

.field private static final TAG:Ljava/lang/String; = "CAFCastBuilder"


# instance fields
.field castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-void
.end method

.method private getMediaInfo(Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;)Lcom/google/android/gms/cast/MediaInfo;
    .locals 3

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->validate(Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;)V

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getCustomData()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/MediaInfo$Builder;

    const-string v2, "CONTENT_ID"

    invoke-direct {v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->setStreamType(Lcom/google/android/gms/cast/MediaInfo$Builder;Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;)V

    invoke-direct {p0, v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->setOptionalData(Lcom/google/android/gms/cast/MediaInfo$Builder;Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    return-object p1
.end method

.method private setOptionalData(Lcom/google/android/gms/cast/MediaInfo$Builder;Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getMediaMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    :cond_0
    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    :cond_1
    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAdsConfig()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;->getAdTagType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->VAST:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    if-ne v0, v1, :cond_2

    check-cast p2, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;

    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->getVastAdBreakClipInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setAdBreakClips(Ljava/util/List;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/VastAdsConfig;->getVastAdBreakInfoList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setAdBreaks(Ljava/util/List;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    :cond_2
    return-void
.end method

.method private setStreamType(Lcom/google/android/gms/cast/MediaInfo$Builder;Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;)V
    .locals 1

    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getStreamType()Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$1;->$SwitchMap$com$kaltura$playkit$plugins$googlecast$caf$CAFCastBuilder$StreamType:[I

    invoke-virtual {p2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validate(Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getMediaEntryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->getAdsConfig()Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;->isAdsConfigValid()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->getMediaInfo(Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAdsConfig(Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setAdsConfig(Lcom/kaltura/playkit/plugins/googlecast/caf/adsconfig/AdsConfig;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setDefaultAudioLangaugeCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setDefaultAudioLanguageCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setDefaultTextLangaugeCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setDefaultTextLangaugeCode(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setKs(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setKs(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setMediaEntryId(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setMediaEntryId(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
    .locals 1
    .param p1    # Lcom/google/android/gms/cast/MediaMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setMediaMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setStreamType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
    .locals 1
    .param p1    # Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setStreamType(Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
    .locals 1
    .param p1    # Lcom/google/android/gms/cast/TextTrackStyle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/TextTrackStyle;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/kaltura/playkit/plugins/googlecast/caf/KalturaCastInfo;

    return-object p0
.end method
