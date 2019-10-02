.class final Lcom/ooyala/adtech/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;)F
    .locals 6

    const/high16 v0, 0x7fc00000    # NaNf

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    if-lez v2, :cond_2

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_2
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3

    array-length v2, p0

    sub-int/2addr v2, v4

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    array-length v2, p0

    sub-int/2addr v2, v4

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    array-length v4, p0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_4

    array-length v4, p0

    sub-int/2addr v4, v5

    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_4

    array-length v3, p0

    sub-int/2addr v3, v5

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    mul-int/lit8 v2, v2, 0x3c

    int-to-float p0, v2

    add-float/2addr v1, p0

    mul-int/lit16 v3, v3, 0xe10

    int-to-float p0, v3

    add-float/2addr v1, p0

    return v1

    :catch_0
    return v0

    :cond_5
    :goto_1
    return v0
.end method

.method static a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget p1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget p1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method static b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget p1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;
    .locals 1

    const-string v0, "contentStart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->SESSION_CONTENT_START:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_0
    const-string v0, "slotStart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->h:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_1
    const-string v0, "10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->g:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_2
    const-string v0, "100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->e:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_3
    const-string v0, "creativeView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_VIEW:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_4
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_START:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_5
    const-string v0, "firstQuartile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_FIRST_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_6
    const-string v0, "midpoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_MID_POINT:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_7
    const-string v0, "thirdQuartile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_THIRD_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_8
    const-string v0, "complete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_COMPLETE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_9
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->f:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_a
    const-string v0, "mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_MUTE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_b
    const-string v0, "unmute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_UNMUTE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_c
    const-string v0, "pause"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_PAUSE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_d
    const-string v0, "rewind"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_REWIND:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_e
    const-string v0, "resume"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_RESUME:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_f
    const-string v0, "fullscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_FULLSCREEN:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_10
    const-string v0, "exitFullscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_EXIT_FULLSCREEN:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_11
    const-string v0, "expand"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_EXPAND:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_12
    const-string v0, "collapse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_COLLAPSE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_13
    const-string v0, "acceptInvitation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_ACCEPT_INVITATION:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_14
    const-string v0, "acceptInvitationLinear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_ACCEPT_INVITATION:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_15
    const-string v0, "close"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLOSE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_16
    const-string v0, "closeLinear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLOSE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_17
    const-string v0, "skip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_SKIP:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_18
    const-string v0, "Viewable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION_VIEWABLE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_19
    const-string v0, "NotViewable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION_NOT_VIEWABLE:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_1a
    const-string v0, "ViewUndetermined"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1b

    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION_VIEW_UNDETERMINED:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_1b
    sget-object p0, Lcom/ooyala/adtech/TrackingEvent;->d:Lcom/ooyala/adtech/TrackingEvent;

    return-object p0
.end method

.method static b(Lorg/json/JSONArray;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget p1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method static c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget p1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method static d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ooyala/adtech/a;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/ooyala/adtech/a;

    sget p1, Lcom/ooyala/pulse/Error$Core;->RECEIVED_INVALID_VALUE:I

    invoke-direct {p0, p1, p2}, Lcom/ooyala/adtech/a;-><init>(ILjava/lang/String;)V

    throw p0
.end method
