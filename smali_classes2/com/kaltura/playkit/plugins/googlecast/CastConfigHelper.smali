.class abstract Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;
.super Ljava/lang/Object;
.source "CastConfigHelper.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "CastConfigHelper"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFlashVars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;->setProxyData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;->setDoubleClickPlugin(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method

.method private setDoubleClickPlugin(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "plugin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "adTagUrl"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "doubleClick"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CastConfigHelper"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setEmbedConfig(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object v0, p1

    move-object v7, p2

    :try_start_0
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lib"

    move-object/from16 v2, p9

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "publisherID"

    move-object v2, p6

    invoke-virtual {p2, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "entryID"

    move-object v6, p5

    invoke-virtual {p2, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uiconfID"

    move-object v2, p3

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p8

    move-object v4, p7

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;->setFlashVars(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "embedConfig"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "defaultLanguageKey"

    move-object/from16 v3, p10

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "receiverConfig"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CastConfigHelper"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setFlashVars(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;->getFlashVars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_0

    const-string p3, "flashVars"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CastConfigHelper"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method getCustomData(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)Lorg/json/JSONObject;
    .locals 11

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getUiConfId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getMediaEntryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getAdTagUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;->getSessionInfo(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getMwEmbedUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getDefaultTextLangaugeLabel()Ljava/lang/String;

    move-result-object v10

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;->setEmbedConfig(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected abstract getSessionInfo(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)Ljava/lang/String;
.end method

.method protected abstract setProxyData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
