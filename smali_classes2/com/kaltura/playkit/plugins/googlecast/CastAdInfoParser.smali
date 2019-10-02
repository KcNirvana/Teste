.class public Lcom/kaltura/playkit/plugins/googlecast/CastAdInfoParser;
.super Ljava/lang/Object;
.source "CastAdInfoParser.java"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;


# static fields
.field private static final AD_JSON_OBJECT_NAME:Ljava/lang/String; = "adsInfo"

.field private static final TAG:Ljava/lang/String; = "CastAdInfoParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAdsInfoData(Lorg/json/JSONObject;)Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "adsInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "adsInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/CastAdInfoParser;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public parseAdBreaksFromMediaStatus(Lcom/google/android/gms/cast/MediaStatus;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getCustomData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastAdInfoParser;->getAdsInfoData(Lorg/json/JSONObject;)Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;->getAdsBreakInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    new-instance v3, Lcom/google/android/gms/cast/AdBreakInfo$Builder;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/cast/AdBreakInfo$Builder;-><init>(J)V

    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->build()Lcom/google/android/gms/cast/AdBreakInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/kaltura/playkit/plugins/googlecast/CastAdInfoParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseAdBreaksFromMediaStatus. adPositionInMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public parseIsPlayingAdFromMediaStatus(Lcom/google/android/gms/cast/MediaStatus;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->getCustomData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastAdInfoParser;->getAdsInfoData(Lorg/json/JSONObject;)Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/AdsInfoData;->getIsPlayingAd()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/CastAdInfoParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseIsPlayingAdFromMediaStatus. isPlayingAd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
