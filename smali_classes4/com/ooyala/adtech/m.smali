.class final Lcom/ooyala/adtech/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/ooyala/adtech/d;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ooyala/adtech/d;

    invoke-direct {v0}, Lcom/ooyala/adtech/d;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    return-void
.end method

.method private static a(Ljava/lang/String;Z)Lcom/ooyala/adtech/Condition$Type;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v4, -0x1f52eeff    # -9.9766E19f

    if-eq p1, v4, :cond_2

    const v2, 0x13569337

    if-eq p1, v2, :cond_1

    const v1, 0x2c178c3b

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "OnBeforeContent"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_1
    const-string p1, "OnPause"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string p1, "OnContentEnd"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    sget-object p0, Lcom/ooyala/adtech/Condition$Type;->ON_PAUSE:Lcom/ooyala/adtech/Condition$Type;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/ooyala/adtech/Condition$Type;->ON_CONTENT_END:Lcom/ooyala/adtech/Condition$Type;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/ooyala/adtech/Condition$Type;->ON_BEFORE_CONTENT:Lcom/ooyala/adtech/Condition$Type;

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v4, -0x4acb337c

    if-eq p1, v4, :cond_7

    const v0, 0x5a966ba8

    if-eq p1, v0, :cond_6

    const v0, 0x7718d5d2

    if-eq p1, v0, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "TimeSinceLinear"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    goto :goto_3

    :cond_6
    const-string p1, "PlaybackTime"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const-string p1, "PlaybackPosition"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, -0x1

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :pswitch_3
    sget-object p0, Lcom/ooyala/adtech/Condition$Type;->TIME_SINCE_LINEAR:Lcom/ooyala/adtech/Condition$Type;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_TIME:Lcom/ooyala/adtech/Condition$Type;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_POSITION:Lcom/ooyala/adtech/Condition$Type;

    return-object p0

    :goto_4
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Session;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    new-instance v0, Lcom/ooyala/adtech/Session;

    invoke-direct {v0}, Lcom/ooyala/adtech/Session;-><init>()V

    const-string v1, "tid"

    const-string v2, "Session has no id."

    invoke-static {p1, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ooyala/adtech/Session;->a:Ljava/lang/String;

    const-string v1, "lang"

    const-string v2, "Session has no language."

    invoke-static {p1, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ooyala/adtech/Session;->b:Ljava/lang/String;

    const-string v1, "ts"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ooyala/adtech/Session;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ooyala/adtech/Session;->f:J

    invoke-direct {p0, p1, v0}, Lcom/ooyala/adtech/m;->a(Lorg/json/JSONObject;Lcom/ooyala/adtech/Trackable;)V

    const-string v1, "insertionPoint"

    const-string v2, "Session has no insertion points."

    invoke-static {p1, v1, v2}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, "Insertion point list contains invalid value."

    invoke-static {p1, v2, v3}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ooyala/adtech/m;->b(Lorg/json/JSONObject;)Lcom/ooyala/adtech/InsertionPoint;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v0, v3, Lcom/ooyala/adtech/InsertionPoint;->c:Lcom/ooyala/adtech/Session;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iput-object v1, v0, Lcom/ooyala/adtech/Session;->c:Ljava/util/List;

    return-object v0

    :cond_2
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_RESPONSE:I

    const-string v1, "Session has no supported insertion points."

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Session has no insertion points."

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Condition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "condition"

    const-string v1, "%s has no conditions."

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_1

    const-string v0, "Condition list contains invalid value."

    invoke-static {p1, v4, v0}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ooyala/adtech/m;->c(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Condition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v4

    const-string p2, "%s condition list is empty."

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private a(Lorg/json/JSONObject;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Creative;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "linear"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "nonLinearAds"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "companionAds"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-direct {p0, v2, p2}, Lcom/ooyala/adtech/m;->b(Lorg/json/JSONObject;Z)Lcom/ooyala/adtech/Creative;

    move-result-object p2

    invoke-direct {p0, v2, p2}, Lcom/ooyala/adtech/m;->a(Lorg/json/JSONObject;Lcom/ooyala/adtech/Trackable;)V

    iput-object v0, p2, Lcom/ooyala/adtech/Creative;->h:Ljava/lang/String;

    const-string v0, "sequence"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p2, Lcom/ooyala/adtech/Creative;->g:I

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    if-eqz v3, :cond_4

    :try_start_0
    const-string p2, "nonLinear"

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "minSuggestedDuration"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v6, "minSuggestedDuration"

    const-string v7, "Linear creative has no duration."

    invoke-static {v4, v6, v7}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ooyala/adtech/e;->a(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x7fc00000    # NaNf

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/ooyala/adtech/a;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v0, "Linear creative has invalid duration."

    invoke-direct {p1, p2, v0}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const-string v7, "height"

    const-string v8, "nonLinearJson has no height"

    invoke-static {v4, v7, v8}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "width"

    const-string v9, "nonLinearJson has no width"

    invoke-static {v4, v8, v9}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Lcom/ooyala/adtech/NonLinearCreative;

    invoke-direct {v9}, Lcom/ooyala/adtech/NonLinearCreative;-><init>()V

    iput v6, v9, Lcom/ooyala/adtech/NonLinearCreative;->a:F

    iput v8, v9, Lcom/ooyala/adtech/NonLinearCreative;->b:I

    iput v7, v9, Lcom/ooyala/adtech/NonLinearCreative;->c:I

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/ooyala/adtech/m;->c(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object v6

    iput-object v6, v9, Lcom/ooyala/adtech/NonLinearCreative;->d:Ljava/util/List;

    invoke-direct {p0, v3, v9}, Lcom/ooyala/adtech/m;->a(Lorg/json/JSONObject;Lcom/ooyala/adtech/Trackable;)V

    invoke-direct {p0, v4, v9}, Lcom/ooyala/adtech/m;->b(Lorg/json/JSONObject;Lcom/ooyala/adtech/Trackable;)V

    iput-object v0, v9, Lcom/ooyala/adtech/Creative;->h:Ljava/lang/String;

    const-string v4, "sequence"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v9, Lcom/ooyala/adtech/Creative;->g:I

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_7

    :try_start_1
    const-string p2, "companion"

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, ""

    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, "id"

    const-string v6, "companionJSon has no id"

    invoke-static {v3, v4, v6}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const-string v6, "height"

    const-string v7, "companionJSon has no height"

    invoke-static {v3, v6, v7}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "width"

    const-string v8, "companionJSon has no width"

    invoke-static {v3, v7, v8}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-instance v8, Lcom/ooyala/adtech/Companion;

    invoke-direct {v8}, Lcom/ooyala/adtech/Companion;-><init>()V

    iput-object v4, v8, Lcom/ooyala/adtech/Companion;->a:Ljava/lang/String;

    iput v6, v8, Lcom/ooyala/adtech/Companion;->d:I

    iput v7, v8, Lcom/ooyala/adtech/Companion;->c:I

    invoke-direct {p0, v3, v5}, Lcom/ooyala/adtech/m;->c(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, v8, Lcom/ooyala/adtech/Companion;->e:Ljava/util/List;

    invoke-direct {p0, v3, v8}, Lcom/ooyala/adtech/m;->a(Lorg/json/JSONObject;Lcom/ooyala/adtech/Trackable;)V

    iput-object v0, v8, Lcom/ooyala/adtech/Creative;->h:Ljava/lang/String;

    const-string v3, "sequence"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v8, Lcom/ooyala/adtech/Creative;->g:I

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_3
    return-object v1

    :cond_7
    new-instance p1, Lcom/ooyala/adtech/a;

    sget p2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v0, "Creative has unknown type."

    invoke-direct {p1, p2, v0}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/ooyala/adtech/Ad;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "timeout"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/adtech/e;->a(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ooyala/adtech/Ad;->j:F

    const-string v0, "customaid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->m:Ljava/lang/String;

    const-string v0, "cid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->n:Ljava/lang/String;

    const-string v0, "customcid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->o:Ljava/lang/String;

    const-string v0, "gid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->p:Ljava/lang/String;

    const-string v0, "customgid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->q:Ljava/lang/String;

    const-string v0, "allowLinearModeChange"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ooyala/adtech/Ad;->r:Z

    const-string v0, "exclusive"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ooyala/adtech/Ad;->s:Z

    const-string v0, "countdown"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ooyala/adtech/Ad;->t:Z

    const-string v0, "variant"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eq v0, v2, :cond_0

    const-string v2, "normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ooyala/adtech/Ad$Variant;->VARIANT_SPONSOR:Lcom/ooyala/adtech/Ad$Variant;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ooyala/adtech/Ad$Variant;->VARIANT_NORMAL:Lcom/ooyala/adtech/Ad$Variant;

    :goto_0
    iput-object v0, p0, Lcom/ooyala/adtech/Ad;->c:Lcom/ooyala/adtech/Ad$Variant;

    const-string v0, "startAdTimeout"

    const-string v2, "4"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/adtech/e;->a(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ooyala/adtech/Ad;->k:F

    const-string v0, "requestType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lazy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/ooyala/adtech/Ad;->u:Z

    :cond_1
    invoke-static {p1}, Lcom/ooyala/adtech/m;->o(Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->j:Lcom/ooyala/adtech/TrackingEvent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Companion;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/Companion;

    iget-object v1, v0, Lcom/ooyala/adtech/Companion;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p0, v0, Lcom/ooyala/adtech/Companion;->f:Ljava/lang/String;

    return-void

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/ooyala/adtech/Trackable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "trackingEvents"

    const-string v1, "Trackable has no tracking events root."

    invoke-static {p1, v0, v1}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "tracking"

    const-string v1, "Trackable events root has no tracking event list."

    invoke-static {p1, v0, v1}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    :try_start_0
    const-string v5, "Trackable tracking events list contains invalid value."

    invoke-static {p1, v2, v5}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "event"

    const-string v7, "Tracking event has no event name."

    invoke-static {v5, v6, v7}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lcom/ooyala/adtech/a; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "value"

    const-string v7, "Tracking event has no URL."

    invoke-static {v5, v3, v7}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lcom/ooyala/adtech/a; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v3

    move-object v3, v6

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v5, v3

    move-object v3, v6

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    iget-object v6, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    if-eqz v6, :cond_0

    new-instance v6, Lcom/ooyala/adtech/Error;

    sget-object v7, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v8, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-virtual {v5}, Lcom/ooyala/adtech/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v5}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    new-instance v7, Lcom/ooyala/adtech/LogItem;

    sget-object v8, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v9, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v7, v8, v9, v6}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v5, v7}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_0
    :goto_2
    if-eqz v4, :cond_3

    const/4 v5, 0x1

    :try_start_2
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iget-object v6, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    if-eqz v6, :cond_1

    new-instance v6, Lcom/ooyala/adtech/Error;

    sget-object v7, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v8, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v9, "%s event has malformed tracking URL."

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v3, v10, v0

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    new-instance v8, Lcom/ooyala/adtech/LogItem;

    sget-object v9, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v10, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v8, v9, v10, v6}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v7, v8}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_1
    move-object v6, v1

    :goto_3
    if-eqz v6, :cond_3

    invoke-static {v3}, Lcom/ooyala/adtech/e;->b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;

    move-result-object v7

    sget-object v8, Lcom/ooyala/adtech/TrackingEvent;->d:Lcom/ooyala/adtech/TrackingEvent;

    if-ne v7, v8, :cond_2

    invoke-interface {p2}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v7

    invoke-virtual {v7, v3, v6, v5}, Lcom/ooyala/adtech/TrackingEvents;->a(Ljava/lang/String;Ljava/net/URL;Z)V

    goto :goto_4

    :cond_2
    invoke-interface {p2}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v8

    invoke-virtual {v8, v7, v6, v5}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private b(Lorg/json/JSONObject;Z)Lcom/ooyala/adtech/Creative;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const-string v2, "duration"

    const-string v3, "Linear creative has no duration."

    invoke-static {p1, v2, v3}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ooyala/adtech/e;->a(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x7fc00000    # NaNf

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/ooyala/adtech/Error;

    sget-object v4, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v5, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v6, "Linear creative has invalid duration."

    invoke-direct {v3, v4, v5, v6}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    new-instance v5, Lcom/ooyala/adtech/LogItem;

    sget-object v6, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v7, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v5, v6, v7, v3}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v4, v5}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_0
    const-string v3, "mediaFiles"

    const-string v4, "Linear creative has no media files root."

    invoke-static {p1, v3, v4}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "mediaFile"

    const-string v5, "Linear creative has no media files list."

    invoke-static {v3, v4, v5}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    const-string v5, "Linear creative media files list contains invalid value."

    invoke-static {v3, v4, v5}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/ooyala/adtech/m;->g(Lorg/json/JSONObject;)Lcom/ooyala/adtech/MediaFile;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const-string v3, "videoClicks"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    :try_start_0
    const-string p2, "clickThrough"

    const-string v4, "Linear creative has no clickthrough."

    invoke-static {p1, p2, v4}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v4, Ljava/net/URL;

    const-string v5, "value"

    const-string v6, "Linear creative has no clickthrough URL."

    invoke-static {p2, v5, v6}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/ooyala/adtech/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    iget-object v4, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    if-eqz v4, :cond_3

    new-instance v4, Lcom/ooyala/adtech/Error;

    sget-object v5, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v6, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v5, v6, p2}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    new-instance v5, Lcom/ooyala/adtech/LogItem;

    sget-object v6, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v7, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v5, v6, v7, v4}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {p2, v5}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_3
    move-object v4, v3

    :goto_1
    new-instance p2, Lcom/ooyala/adtech/LinearCreative;

    invoke-direct {p2}, Lcom/ooyala/adtech/LinearCreative;-><init>()V

    iput-object v0, p2, Lcom/ooyala/adtech/LinearCreative;->b:Ljava/util/List;

    iput v2, p2, Lcom/ooyala/adtech/LinearCreative;->a:F

    if-eqz v4, :cond_4

    iput-object v4, p2, Lcom/ooyala/adtech/LinearCreative;->c:Ljava/net/URL;

    :cond_4
    if-eqz p1, :cond_7

    const-string v0, "clickTracking"

    const-string v2, "Linear creative has no click tracking."

    invoke-static {p1, v0, v2}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_7

    const-string v0, "Click tracking list contains invalid value."

    invoke-static {p1, v1, v0}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "value"

    const-string v4, "Click tracking item has no URL."

    invoke-static {v0, v2, v4}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/ooyala/adtech/Error;

    sget-object v4, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v5, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v5, v0}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    new-instance v4, Lcom/ooyala/adtech/LogItem;

    sget-object v5, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v6, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v4, v5, v6, v2}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v0, v4}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_5
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_6

    iget-object v0, p2, Lcom/ooyala/adtech/LinearCreative;->k:Lcom/ooyala/adtech/TrackingEvents;

    sget-object v4, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLICK_THROUGH:Lcom/ooyala/adtech/TrackingEvent;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v2, v5}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object p2
.end method

.method private b(Lorg/json/JSONObject;)Lcom/ooyala/adtech/InsertionPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    new-instance v0, Lcom/ooyala/adtech/InsertionPoint;

    invoke-direct {v0}, Lcom/ooyala/adtech/InsertionPoint;-><init>()V

    const-string v1, "conditions"

    const-string v2, "Insertion point has no conditions."

    invoke-static {p1, v1, v2}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "Insertion point"

    invoke-direct {p0, v1, v2}, Lcom/ooyala/adtech/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "slot"

    const-string v4, "Insertion point has no slots."

    invoke-static {p1, v2, v4}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    const-string v5, "Slot list contains invalid value."

    invoke-static {p1, v4, v5}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ooyala/adtech/m;->d(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Slot;

    move-result-object v5

    if-eqz v5, :cond_1

    iput-object v0, v5, Lcom/ooyala/adtech/Slot;->b:Lcom/ooyala/adtech/InsertionPoint;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v3

    :cond_3
    iput-object v1, v0, Lcom/ooyala/adtech/InsertionPoint;->a:Ljava/util/List;

    iput-object v2, v0, Lcom/ooyala/adtech/InsertionPoint;->b:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    iget-object p1, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/ooyala/adtech/Error;

    sget-object v1, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v3, "Tracking event has malformed URL."

    invoke-direct {p1, v1, v2, v3}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    new-instance v2, Lcom/ooyala/adtech/LogItem;

    sget-object v3, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v4, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v2, v3, v4, p1}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_0
    return-object v0

    :cond_1
    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Companion;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/Companion;

    iget-object v1, v0, Lcom/ooyala/adtech/Companion;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p0, v0, Lcom/ooyala/adtech/Companion;->b:Ljava/lang/String;

    return-void

    :cond_1
    return-void
.end method

.method private b(Lorg/json/JSONObject;Lcom/ooyala/adtech/Trackable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "nonLinearClickTracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, "nonLinearClickTracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    if-ge v0, v4, :cond_4

    :try_start_1
    const-string v4, "NonLinearTrackable clickTracking events list contains invalid value."

    invoke-static {p1, v0, v4}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "event"

    const-string v6, "NonLinearTrackable clickTracking event has no event name."

    invoke-static {v4, v5, v6}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lcom/ooyala/adtech/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v3, "value"

    const-string v6, "NonLinearTrackable clickTracking event has no URL."

    invoke-static {v4, v3, v6}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lcom/ooyala/adtech/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    move-object v3, v5

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v4, v3

    move-object v3, v5

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    if-eqz v5, :cond_0

    new-instance v5, Lcom/ooyala/adtech/Error;

    sget-object v6, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v7, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-virtual {v4}, Lcom/ooyala/adtech/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    new-instance v6, Lcom/ooyala/adtech/LogItem;

    sget-object v7, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v8, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v6, v7, v8, v5}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v4, v6}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_2
    if-eqz v2, :cond_3

    :try_start_4
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_2
    :try_start_5
    iget-object v4, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    if-eqz v4, :cond_1

    new-instance v4, Lcom/ooyala/adtech/Error;

    sget-object v5, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v6, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v7, "NonLinearTrackable clickTracking event has malformed URL."

    invoke-direct {v4, v5, v6, v7}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    new-instance v6, Lcom/ooyala/adtech/LogItem;

    sget-object v7, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v8, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v6, v7, v8, v4}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v5, v6}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_1
    move-object v4, v1

    :goto_3
    invoke-static {v3}, Lcom/ooyala/adtech/e;->b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;

    move-result-object v5

    sget-object v6, Lcom/ooyala/adtech/TrackingEvent;->d:Lcom/ooyala/adtech/TrackingEvent;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    invoke-interface {p2}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v7}, Lcom/ooyala/adtech/TrackingEvents;->a(Ljava/lang/String;Ljava/net/URL;Z)V

    goto :goto_4

    :cond_2
    invoke-interface {p2}, Lcom/ooyala/adtech/Trackable;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v7}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    return-void
.end method

.method private c(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Condition;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "type"

    const-string v1, "Condition has invalid type."

    invoke-static {p1, v0, v1}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    const-string v2, "Condition has invalid name."

    invoke-static {p1, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance v0, Lcom/ooyala/adtech/EventCondition;

    invoke-direct {v0}, Lcom/ooyala/adtech/EventCondition;-><init>()V

    invoke-static {v1, v3}, Lcom/ooyala/adtech/m;->a(Ljava/lang/String;Z)Lcom/ooyala/adtech/Condition$Type;

    move-result-object v1

    iput-object v1, v0, Lcom/ooyala/adtech/EventCondition;->a:Lcom/ooyala/adtech/Condition$Type;

    goto/16 :goto_1

    :cond_0
    const-string v2, "PROPERTY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    new-instance v0, Lcom/ooyala/adtech/PropertyCondition;

    invoke-direct {v0}, Lcom/ooyala/adtech/PropertyCondition;-><init>()V

    invoke-static {v1, v4}, Lcom/ooyala/adtech/m;->a(Ljava/lang/String;Z)Lcom/ooyala/adtech/Condition$Type;

    move-result-object v1

    iput-object v1, v0, Lcom/ooyala/adtech/PropertyCondition;->a:Lcom/ooyala/adtech/Condition$Type;

    const-string v1, "value"

    const-string v2, "Condition has invalid value."

    invoke-static {p1, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ooyala/adtech/e;->a(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ooyala/adtech/PropertyCondition;->c:F

    iget v1, v0, Lcom/ooyala/adtech/PropertyCondition;->c:F

    const/high16 v2, 0x7fc00000    # NaNf

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    const-string v1, "operator"

    const-string v2, "Condition has invalid operator."

    invoke-static {p1, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x8ac

    if-eq v5, v6, :cond_2

    const v6, 0x11333

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "GEQ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "EQ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    const-string v1, "Condition has invalid operator \'%"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v1, Lcom/ooyala/adtech/PropertyCondition$Operator;->GREATER_THAN_OR_EQUALS:Lcom/ooyala/adtech/PropertyCondition$Operator;

    iput-object v1, v0, Lcom/ooyala/adtech/PropertyCondition;->d:Lcom/ooyala/adtech/PropertyCondition$Operator;

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/ooyala/adtech/PropertyCondition$Operator;->EQUALS:Lcom/ooyala/adtech/PropertyCondition$Operator;

    iput-object v1, v0, Lcom/ooyala/adtech/PropertyCondition;->d:Lcom/ooyala/adtech/PropertyCondition$Operator;

    :goto_1
    iget-object v1, v0, Lcom/ooyala/adtech/Condition;->a:Lcom/ooyala/adtech/Condition$Type;

    if-nez v1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    :try_start_0
    const-string v1, "Condition"

    invoke-direct {p0, p1, v1}, Lcom/ooyala/adtech/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/ooyala/adtech/Condition;->b:Ljava/util/List;
    :try_end_0
    .catch Lcom/ooyala/adtech/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/ooyala/adtech/Condition;->b:Ljava/util/List;

    :goto_2
    return-object v0

    :cond_5
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Condition has invalid value."

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Condition has invalid type \'%s\'."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Lorg/json/JSONObject;Z)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "htmlResource"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "htmlResource"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "value"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p2, Lcom/ooyala/adtech/HTMLResource;

    invoke-direct {p2, p1}, Lcom/ooyala/adtech/HTMLResource;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_0
    const-string v1, "iframeResource"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "iframeResource"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ooyala/adtech/m;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p2, Lcom/ooyala/adtech/IFrameResource;

    invoke-direct {p2, p1}, Lcom/ooyala/adtech/IFrameResource;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    const-string v1, "staticResource"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "staticResource"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "creativeType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "creativeType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    const-string v4, "value"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "value"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ooyala/adtech/m;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    const-string v4, "nonLinearClickThrough"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "companionClickThrough"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    if-eqz p2, :cond_5

    const-string p2, "nonLinearClickThrough"

    :goto_2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p2, "companionClickThrough"

    goto :goto_2

    :goto_3
    invoke-direct {p0, p1}, Lcom/ooyala/adtech/m;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    :cond_6
    if-eqz v1, :cond_7

    new-instance p1, Lcom/ooyala/adtech/StaticResource;

    invoke-direct {p1, v3, v2, v1}, Lcom/ooyala/adtech/StaticResource;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URL;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_4
    return-object v0
.end method

.method private d(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Slot;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "vast"

    const-string v1, "Slot has no VAST root."

    invoke-static {p1, v0, v1}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad"

    const-string v2, "Slot has no ads."

    invoke-static {v0, v1, v2}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Lcom/ooyala/adtech/Slot;

    invoke-direct {v1}, Lcom/ooyala/adtech/Slot;-><init>()V

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/ooyala/adtech/m;->a(Lorg/json/JSONObject;Lcom/ooyala/adtech/Trackable;)V
    :try_end_0
    .catch Lcom/ooyala/adtech/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_a

    const-string v4, "Ad list contains invalid value."

    invoke-static {v0, v3, v4}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "inLine"

    const-string v6, "Ad has no inLine data."

    invoke-static {v4, v5, v6}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/ooyala/adtech/m;->e(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/ooyala/adtech/m;->n(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;

    move-result-object v4

    goto/16 :goto_3

    :cond_0
    const-string v5, "creatives"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "creative"

    const-string v7, "Creative root has no creatives."

    invoke-static {v5, v6, v7}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "Creatives list contains invalid value."

    invoke-static {v5, v2, v6}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "linear"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_3

    const-string v6, "nonLinearAds"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "nonLinear"

    const-string v8, "Nonlinear container has no nonlinar list."

    invoke-static {v5, v6, v8}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Nonlinear list contains invalid value."

    invoke-static {v5, v2, v6}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/ooyala/adtech/m;->j(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v8, "Nonlinear ad has 0 valid inner ads."

    invoke-static {v5, v2, v8}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Nonlinear list is empty."

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_RESPONSE:I

    const-string v1, "First creative has no linear or nonLinear."

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_6

    const-string v5, "mediaFiles"

    const-string v8, "Linear/nonlinear has no media files root."

    invoke-static {v6, v5, v8}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "mediaFile"

    const-string v9, "Media files root has no media files list."

    invoke-static {v5, v8, v9}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    const-string v7, "Media files list contains invalid value."

    invoke-static {v5, v2, v7}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "value"

    const-string v8, "Media file has no URL."

    invoke-static {v5, v7, v8}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "spot_selector"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v6}, Lcom/ooyala/adtech/m;->j(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "Nonlinear ad has 0 valid inner ads."

    invoke-static {v4, v2, v5}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/ooyala/adtech/m;->m(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;

    move-result-object v4

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    invoke-direct {p0, v4}, Lcom/ooyala/adtech/m;->h(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;

    move-result-object v4

    goto :goto_3

    :cond_6
    invoke-static {v6}, Lcom/ooyala/adtech/m;->j(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "Ad has 0 valid inner ads."

    invoke-static {v4, v2, v5}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ooyala/adtech/m;->f(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_8

    iput-object v1, v4, Lcom/ooyala/adtech/Ad;->i:Lcom/ooyala/adtech/Slot;

    iget-object v5, v4, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ooyala/adtech/Ad;

    iput-object v1, v6, Lcom/ooyala/adtech/Ad;->i:Lcom/ooyala/adtech/Slot;

    goto :goto_4

    :cond_7
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Creatives list is empty."

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    iput-object p1, v1, Lcom/ooyala/adtech/Slot;->a:Ljava/util/List;

    return-object v1
.end method

.method private static e(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "creatives"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private f(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Lcom/ooyala/adtech/Ad;

    invoke-direct {v2}, Lcom/ooyala/adtech/Ad;-><init>()V

    const-string v3, "id"

    const-string v4, "Ad has no id."

    invoke-static {v0, v3, v4}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ooyala/adtech/Ad;->d:Ljava/lang/String;

    const-string v3, "inLine"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v5, 0x1

    if-nez v3, :cond_0

    const-string v3, "wrapper"

    const-string v6, "Ad is neither inline nor wrapper."

    invoke-static {v0, v3, v6}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "vastadTagURI"

    const-string v7, "Wrapper has no VAST URL."

    invoke-static {v3, v6, v7}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v7, v2, Lcom/ooyala/adtech/Ad;->w:Ljava/net/URL;

    const/4 v6, 0x1

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/ooyala/adtech/a;

    sget v2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v3, "Wrapper has malformed VAST URL."

    invoke-direct {v0, v2, v3}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "adTitle"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/ooyala/adtech/Ad;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/ooyala/adtech/m;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "format"

    const-string v9, "adInfo has no format."

    invoke-static {v7, v8, v9}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "overlay_imageset"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_1
    const-string v9, "splash_standard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x6

    goto :goto_2

    :sswitch_2
    const-string v9, "spot_standard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_3
    const-string v9, "overlay_video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_4
    const-string v9, "overlay_standard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_5
    const-string v9, "overlay_splash"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_6
    const-string v9, "inventory"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v8, -0x1

    :goto_2
    const/4 v9, 0x0

    packed-switch v8, :pswitch_data_0

    move-object v8, v9

    goto :goto_3

    :pswitch_0
    sget-object v8, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPLASH:Lcom/ooyala/adtech/Ad$Type;

    goto :goto_3

    :pswitch_1
    sget-object v8, Lcom/ooyala/adtech/Ad$Type;->SPLASH_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    goto :goto_3

    :pswitch_2
    sget-object v8, Lcom/ooyala/adtech/Ad$Type;->IMAGESET_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    goto :goto_3

    :pswitch_3
    sget-object v8, Lcom/ooyala/adtech/Ad$Type;->VIDEO_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    goto :goto_3

    :pswitch_4
    sget-object v8, Lcom/ooyala/adtech/Ad$Type;->STANDARD_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    goto :goto_3

    :pswitch_5
    sget-object v8, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPOT:Lcom/ooyala/adtech/Ad$Type;

    goto :goto_3

    :pswitch_6
    sget-object v8, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    :goto_3
    iput-object v8, v2, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    iget-object v8, v2, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    if-nez v8, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/ooyala/adtech/m;->m(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {v1, v3}, Lcom/ooyala/adtech/m;->k(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URL;

    iget-object v12, v2, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object v13, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v12, v13, v8, v5}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    goto :goto_4

    :cond_3
    invoke-static {v3}, Lcom/ooyala/adtech/m;->l(Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object v0

    iget-object v8, v2, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object v12, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v8, v12, v0, v5}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    const-string v0, "creatives"

    const-string v8, "Inline/wrapper has no no creatives."

    invoke-static {v3, v0, v8}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "creative"

    const-string v8, "Inline/wrapper creative list is empty."

    invoke-static {v0, v3, v8}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_15

    const-string v0, "Inline/wrapper creative list contains invalid value."

    invoke-static {v3, v8, v0}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lcom/ooyala/adtech/m;->a(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/ooyala/adtech/Creative;

    instance-of v0, v14, Lcom/ooyala/adtech/LinearCreative;

    if-eqz v0, :cond_c

    move-object v0, v14

    check-cast v0, Lcom/ooyala/adtech/LinearCreative;

    const-string v15, "lastImpression"

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v15, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/ooyala/adtech/LinearCreative;->m:J

    const-string v10, "lastCompletion"

    iget-wide v4, v0, Lcom/ooyala/adtech/LinearCreative;->m:J

    invoke-virtual {v7, v10, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/ooyala/adtech/LinearCreative;->m:J

    const-string v4, "skipReset"

    const-string v5, "0"

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ooyala/adtech/e;->a(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lcom/ooyala/adtech/LinearCreative;->f:F

    const-string v4, "skipoffset"

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "skipOffset"

    const-string v5, "0%"

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v10, 0x0

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/ooyala/adtech/LinearCreative;->n:Z

    :try_start_1
    const-string v5, "%"

    const-string v11, ""

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lcom/ooyala/adtech/LinearCreative;->e:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    iput v10, v0, Lcom/ooyala/adtech/LinearCreative;->e:F

    goto :goto_7

    :cond_5
    invoke-static {v4}, Lcom/ooyala/adtech/e;->a(Ljava/lang/String;)F

    move-result v4

    iput v4, v0, Lcom/ooyala/adtech/LinearCreative;->e:F

    iget v4, v0, Lcom/ooyala/adtech/LinearCreative;->e:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iput v10, v0, Lcom/ooyala/adtech/LinearCreative;->e:F

    :cond_6
    :goto_7
    const-string v4, "showSkipButton"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move-object v4, v9

    goto :goto_a

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v10, -0x54506df1

    if-eq v5, v10, :cond_a

    const v10, -0x378a2905

    if-eq v5, v10, :cond_9

    const v10, 0x63dca8c

    if-eq v5, v10, :cond_8

    goto :goto_8

    :cond_8
    const-string v5, "never"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x2

    goto :goto_9

    :cond_9
    const-string v5, "after_first_impression"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    goto :goto_9

    :cond_a
    const-string v5, "always"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v5, -0x1

    :goto_9
    packed-switch v5, :pswitch_data_1

    new-instance v0, Lcom/ooyala/adtech/a;

    sget v2, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Linear creative has unknown skip button mode \'%s\'."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_7
    sget-object v4, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->NEVER:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    goto :goto_a

    :pswitch_8
    sget-object v4, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->ALWAYS:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    goto :goto_a

    :pswitch_9
    sget-object v4, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->AFTER_FIRST_COMPLETION:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    :goto_a
    iput-object v4, v0, Lcom/ooyala/adtech/LinearCreative;->d:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_c
    const/4 v5, 0x0

    instance-of v0, v14, Lcom/ooyala/adtech/Companion;

    if-eqz v0, :cond_12

    iget-object v0, v2, Lcom/ooyala/adtech/Ad;->h:Ljava/util/List;

    move-object v4, v14

    check-cast v4, Lcom/ooyala/adtech/Companion;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_2
    const-string v0, "companions"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "companion"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v10, "id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v10, "id"

    const-string v11, "companionAdInfo has no identifier"

    invoke-static {v4, v10, v11}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_d
    move-object v4, v9

    :goto_b
    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "zone"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "zone"

    const-string v15, "companionAdInfo has no zone"

    invoke-static {v10, v11, v15}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    :cond_e
    move-object v10, v9

    :goto_c
    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v15, "customaid"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v11, "customaid"

    const-string v15, "companionAdInfo has no customaid"

    invoke-static {v0, v11, v15}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_f
    move-object v0, v9

    :goto_d
    if-eqz v4, :cond_10

    if-eqz v10, :cond_10

    invoke-virtual {v2}, Lcom/ooyala/adtech/Ad;->getCompanions()Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v4, v11}, Lcom/ooyala/adtech/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_10
    if-eqz v4, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v2}, Lcom/ooyala/adtech/Ad;->getCompanions()Ljava/util/List;

    move-result-object v10

    invoke-static {v0, v4, v10}, Lcom/ooyala/adtech/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e
    const/4 v0, 0x1

    goto :goto_10

    :cond_12
    :goto_f
    const/4 v0, 0x0

    :goto_10
    iput-object v2, v14, Lcom/ooyala/adtech/Creative;->i:Lcom/ooyala/adtech/Ad;

    if-nez v0, :cond_13

    iget-object v0, v2, Lcom/ooyala/adtech/Ad;->g:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    const/4 v5, 0x1

    goto/16 :goto_6

    :cond_14
    const/4 v5, 0x0

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_15
    invoke-static {v2, v7}, Lcom/ooyala/adtech/m;->a(Lcom/ooyala/adtech/Ad;Lorg/json/JSONObject;)V

    if-nez v6, :cond_16

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ooyala/adtech/Ad;->u:Z

    :cond_16
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x786fe6a4 -> :sswitch_6
        -0x72096ca -> :sswitch_5
        0x2de5cc -> :sswitch_4
        0x10703fcc -> :sswitch_3
        0x16a7595a -> :sswitch_2
        0x2c63e995 -> :sswitch_1
        0x7eb49836 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static g(Lorg/json/JSONObject;)Lcom/ooyala/adtech/MediaFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    new-instance v0, Lcom/ooyala/adtech/MediaFile;

    invoke-direct {v0}, Lcom/ooyala/adtech/MediaFile;-><init>()V

    const-string v1, "width"

    const-string v2, "Media file has no width."

    invoke-static {p0, v1, v2}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/MediaFile;->setWidth(I)V

    const-string v1, "height"

    const-string v2, "Media file has no height."

    invoke-static {p0, v1, v2}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/MediaFile;->setHeight(I)V

    const-string v1, "bitrate"

    const-string v2, "Media file has no bitrate."

    invoke-static {p0, v1, v2}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/MediaFile;->setBitRate(I)V

    const-string v1, "delivery"

    const-string v2, "Media file has no delivery method."

    invoke-static {p0, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x12cfe79e

    if-eq v2, v3, :cond_1

    const v3, 0x43720b8b

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "progressive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "streaming"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance p0, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Media file has invalid delivery method."

    invoke-direct {p0, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object v1, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->STREAMING:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/MediaFile;->setDeliveryMethod(Lcom/ooyala/pulse/MediaFile$DeliveryMethod;)V

    goto :goto_2

    :pswitch_1
    sget-object v1, Lcom/ooyala/pulse/MediaFile$DeliveryMethod;->PROGRESSIVE:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/MediaFile;->setDeliveryMethod(Lcom/ooyala/pulse/MediaFile$DeliveryMethod;)V

    :goto_2
    const-string v1, "value"

    const-string v2, "Media file has no URL."

    invoke-static {p0, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ooyala/adtech/MediaFile;->setUri(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "type"

    const-string v2, "Media file has no MIME-type."

    invoke-static {p0, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ooyala/adtech/MediaFile;->setMimeType(Ljava/lang/String;)V

    return-object v0

    :catch_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Media file has malformed URL"

    invoke-direct {p0, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "creatives"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "creative"

    const-string v2, "Creative root has no creatives."

    invoke-static {v0, v1, v2}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Creatives list contains invalid value."

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "linear"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/adtech/m;->j(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_4

    const-string v5, "Inner ad list has invalid data."

    invoke-static {v0, v2, v5}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "inLine"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "wrapper"

    const-string v8, "Inner ad has neither inline nor wrapper."

    invoke-static {v5, v7, v8}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    :cond_0
    invoke-static {v7}, Lcom/ooyala/adtech/m;->e(Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v7}, Lcom/ooyala/adtech/m;->n(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lcom/ooyala/adtech/m;->f(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ooyala/adtech/Ad;->getMaximumPreparationTime()F

    move-result v7

    add-float/2addr v4, v7

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/ooyala/adtech/Ad;->isReady()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v6, v2, 0x1

    iput v6, v5, Lcom/ooyala/adtech/Ad;->l:I

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/ooyala/adtech/Ad;

    invoke-direct {v0}, Lcom/ooyala/adtech/Ad;-><init>()V

    iput-object v1, v0, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    xor-int/lit8 v1, v3, 0x1

    iput-boolean v1, v0, Lcom/ooyala/adtech/Ad;->u:Z

    invoke-static {p1}, Lcom/ooyala/adtech/m;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ooyala/adtech/m;->a(Lcom/ooyala/adtech/Ad;Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/ooyala/adtech/Ad;->getMaximumPreparationTime()F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Lcom/ooyala/adtech/Ad;->j:F

    return-object v0

    :cond_5
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Creatives list is empty."

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private static i(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "extensions"

    const-string v1, "Ad has no extensions."

    invoke-static {p0, v0, v1}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "extension"

    const-string v1, "Ad has no extension list."

    invoke-static {p0, v0, v1}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v0, "Ad extension list is empty."

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ooyala/adtech/e;->b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "adInfo"

    const-string v1, "Ad extension has no adInfo."

    invoke-static {p0, v0, v1}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static j(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "adParameters"

    const-string v1, "Linear/nonlinear has no adParameters."

    invoke-static {p0, v0, v1}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "value"

    const-string v1, "adParameters has no value."

    invoke-static {p0, v0, v1}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "ad"

    const-string v1, "adParameters have no ad list."

    invoke-static {v0, p0, v1}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "adParameters ad list is empty."

    invoke-direct {p0, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "adParameters value contains malformed JSON."

    invoke-direct {p0, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private k(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    const-string v0, "impression"

    const-string v1, "Inline has no impression list."

    invoke-static {p1, v0, v1}, Lcom/ooyala/adtech/e;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "value"

    const-string v4, "Inline impression list item has no value."

    invoke-static {v2, v3, v4}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "Inline impression list contains invalid value."

    invoke-static {p1, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/ooyala/adtech/Error;

    sget-object v4, Lcom/ooyala/pulse/Error$Domain;->CORE:Ljava/lang/String;

    sget v5, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/ooyala/adtech/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/ooyala/adtech/m;->a:Lcom/ooyala/adtech/d;

    new-instance v4, Lcom/ooyala/adtech/LogItem;

    sget-object v5, Lcom/ooyala/pulse/LogItem$Source;->AD:Lcom/ooyala/pulse/LogItem$Source;

    sget-object v6, Lcom/ooyala/pulse/LogItem$Event;->WARNING:Lcom/ooyala/pulse/LogItem$Event;

    invoke-direct {v4, v5, v6, v3}, Lcom/ooyala/adtech/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V

    invoke-virtual {v2, v4}, Lcom/ooyala/adtech/d;->a(Lcom/ooyala/pulse/LogItem;)V

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Inline impression list is empty."

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private static l(Lorg/json/JSONObject;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "error"

    const-string v2, "Inline error tracking has no value."

    invoke-static {p0, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    const-string v1, "Inline error tracking contains malformed URL."

    invoke-direct {p0, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static m(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    new-instance v0, Lcom/ooyala/adtech/Ad;

    invoke-direct {v0}, Lcom/ooyala/adtech/Ad;-><init>()V

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    iput-object v1, v0, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    const-string v1, "inLine"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "wrapper"

    const-string v2, "Unsupported ad is neither inLine nor wrapper."

    invoke-static {p0, v1, v2}, Lcom/ooyala/adtech/e;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/ooyala/adtech/m;->l(Lorg/json/JSONObject;)Ljava/net/URL;

    move-result-object p0

    iget-object v1, v0, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object v2, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    return-object v0
.end method

.method private n(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Ad;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    new-instance v0, Lcom/ooyala/adtech/Ad;

    invoke-direct {v0}, Lcom/ooyala/adtech/Ad;-><init>()V

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    iput-object v1, v0, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    invoke-direct {p0, p1}, Lcom/ooyala/adtech/m;->k(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object v3, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvent;Ljava/net/URL;Z)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static o(Lorg/json/JSONObject;)Ljava/net/URL;
    .locals 3

    const-string v0, "report"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "report"

    const-string v2, "Report tracking has no value."

    invoke-static {p0, v1, v2}, Lcom/ooyala/adtech/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/ooyala/adtech/Session;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/ooyala/adtech/m;->a(Lorg/json/JSONObject;)Lcom/ooyala/adtech/Session;

    move-result-object p1

    return-object p1

    :catch_0
    new-instance p1, Lcom/ooyala/adtech/a;

    sget v0, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_RESPONSE:I

    const-string v1, "Failed to parse session due to invalid JSON."

    invoke-direct {p1, v0, v1}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p1
.end method
