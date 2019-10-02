.class public Lcom/kaltura/playkit/plugins/ima/IMAConfig;
.super Ljava/lang/Object;
.source "IMAConfig.java"


# static fields
.field public static final AD_ATTRIBUTION_UIELEMENT_KEY:Ljava/lang/String; = "adAttribution"

.field public static final AD_COUNTDOWN_UIELEMENT_KEY:Ljava/lang/String; = "adCountDown"

.field public static final AD_ENABLE_DEBUG_MODE_KEY:Ljava/lang/String; = "enableDebugMode"

.field public static final AD_LOAD_TIMEOUT_KEY:Ljava/lang/String; = "adLoadTimeOut"

.field public static final AD_MAX_REDIRECTS_KEY:Ljava/lang/String; = "adMaxRedirects"

.field public static final AD_OMID_ENABLED_KEY:Ljava/lang/String; = "isOMIDExperimentalEnabled"

.field public static final AD_PLAYER_TYPE:Ljava/lang/String; = "kaltura-vp-android"

.field public static final AD_PLAYER_TYPE_KEY:Ljava/lang/String; = "playerType"

.field public static final AD_PLAYER_VERSION:Ljava/lang/String; = "vootdev"

.field public static final AD_PLAYER_VERSION_KEY:Ljava/lang/String; = "playerVersion"

.field public static final AD_TAG_LANGUAGE_KEY:Ljava/lang/String; = "language"

.field public static final AD_TAG_TYPE_KEY:Ljava/lang/String; = "adTagType"

.field public static final AD_TAG_URL_KEY:Ljava/lang/String; = "adTagURL"

.field public static final AD_VIDEO_BITRATE_KEY:Ljava/lang/String; = "videoBitrate"

.field public static final AD_VIDEO_MIME_TYPES_KEY:Ljava/lang/String; = "videoMimeTypes"

.field public static final DEFAULT_AD_LOAD_COUNT_DOWN_TICK:I = 0xfa

.field public static final DEFAULT_AD_LOAD_TIMEOUT:I = 0x4

.field public static final DEFAULT_CUE_POINTS_CHANGED_DELAY:I = 0x7d0

.field public static final ENABLE_BG_PLAYBACK_KEY:Ljava/lang/String; = "enableBackgroundPlayback"


# instance fields
.field private adAttribution:Z

.field private adCountDown:Z

.field private adLoadTimeOut:I

.field private adTagType:Lcom/kaltura/playkit/ads/AdTagType;

.field private adTagURL:Ljava/lang/String;

.field private enableBackgroundPlayback:Z

.field private enableDebugMode:Z

.field private isOMIDExperimentalEnabled:Z

.field private language:Ljava/lang/String;

.field private maxRedirects:I

.field private playerType:Ljava/lang/String;

.field private playerVersion:Ljava/lang/String;

.field private videoBitrate:I

.field private videoMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "en"

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->language:Ljava/lang/String;

    sget-object v0, Lcom/kaltura/playkit/ads/AdTagType;->VAST:Lcom/kaltura/playkit/ads/AdTagType;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adTagType:Lcom/kaltura/playkit/ads/AdTagType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->enableBackgroundPlayback:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoBitrate:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adAttribution:Z

    iput-boolean v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adCountDown:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adLoadTimeOut:I

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->enableDebugMode:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoMimeTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoMimeTypes:Ljava/util/List;

    sget-object v2, Lcom/kaltura/playkit/PKMediaFormat;->mp4:Lcom/kaltura/playkit/PKMediaFormat;

    iget-object v2, v2, Lcom/kaltura/playkit/PKMediaFormat;->mimeType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adTagURL:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->isOMIDExperimentalEnabled:Z

    const-string v0, "kaltura-vp-android"

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->playerType:Ljava/lang/String;

    const-string v0, "vootdev"

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->playerVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enableDebugMode(Z)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->enableDebugMode:Z

    return-object p0
.end method

.method public getAdAttribution()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adAttribution:Z

    return v0
.end method

.method public getAdCountDown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adCountDown:Z

    return v0
.end method

.method public getAdLoadTimeOut()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adLoadTimeOut:I

    return v0
.end method

.method public getAdTagType()Lcom/kaltura/playkit/ads/AdTagType;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adTagType:Lcom/kaltura/playkit/ads/AdTagType;

    return-object v0
.end method

.method public getAdTagURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adTagURL:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableBackgroundPlayback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->enableBackgroundPlayback:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRedirects()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->maxRedirects:I

    return v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->playerType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->playerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoBitrate:I

    return v0
.end method

.method public getVideoMimeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method public isDebugMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->enableDebugMode:Z

    return v0
.end method

.method public isOMIDExperimentalEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->isOMIDExperimentalEnabled:Z

    return v0
.end method

.method public setAdAttribution(Z)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adAttribution:Z

    return-object p0
.end method

.method public setAdCountDown(Z)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adCountDown:Z

    return-object p0
.end method

.method public setAdLoadTimeOut(I)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adLoadTimeOut:I

    return-object p0
.end method

.method public setAdTagType(Lcom/kaltura/playkit/ads/AdTagType;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adTagType:Lcom/kaltura/playkit/ads/AdTagType;

    return-object p0
.end method

.method public setAdTagURL(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adTagURL:Ljava/lang/String;

    return-object p0
.end method

.method public setEnableBackgroundPlayback(Z)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->enableBackgroundPlayback:Z

    return-object p0
.end method

.method public setEnableOMIDExperimental(Z)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->isOMIDExperimentalEnabled:Z

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxRedirects(I)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->maxRedirects:I

    return-object p0
.end method

.method public setPlayerType(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->playerType:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayerVersion(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->playerVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoBitrate(I)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iput p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoBitrate:I

    return-object p0
.end method

.method public setVideoMimeTypes(Ljava/util/List;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kaltura/playkit/plugins/ima/IMAConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoMimeTypes:Ljava/util/List;

    return-object p0
.end method

.method public toJSONObject()Lcom/google/gson/JsonObject;
    .locals 5

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adTagType"

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adTagType:Lcom/kaltura/playkit/ads/AdTagType;

    invoke-virtual {v2}, Lcom/kaltura/playkit/ads/AdTagType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adTagURL"

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adTagURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "enableBackgroundPlayback"

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->enableBackgroundPlayback:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "videoBitrate"

    iget v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoBitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "adAttribution"

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adAttribution:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "adCountDown"

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adCountDown:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "adLoadTimeOut"

    iget v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->adLoadTimeOut:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "enableDebugMode"

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->enableDebugMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "adMaxRedirects"

    iget v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->maxRedirects:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "isOMIDExperimentalEnabled"

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->isOMIDExperimentalEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "playerType"

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->playerType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "playerVersion"

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->playerVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoMimeTypes:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->videoMimeTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v4, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    const-string v2, "videoMimeTypes"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method
