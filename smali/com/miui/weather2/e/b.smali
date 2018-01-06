.class public Lcom/miui/weather2/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)Lcom/miui/weather2/structures/AdvertismentData;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/miui/weather2/structures/AdvertismentData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/AdvertismentData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/weather2/structures/AdvertismentData;->setTemplate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "clickMonitorUrls"

    invoke-static {p1, v2}, Lcom/miui/weather2/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setClickMonitorUrls([Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string v2, "viewMonitorUrls"

    invoke-static {p1, v2}, Lcom/miui/weather2/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setViewMonitorUrls([Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    const-string v2, "playMonitorUrls"

    invoke-static {p1, v2}, Lcom/miui/weather2/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setAudioStartMonitorUrls([Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    const-string v2, "finishMonitorUrls"

    invoke-static {p1, v2}, Lcom/miui/weather2/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setAudioFinishMonitorUrls([Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    :try_start_5
    const-string v2, "stopMonitorUrls"

    invoke-static {p1, v2}, Lcom/miui/weather2/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setAudioStopMonitorUrls([Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    :try_start_6
    const-string v2, "tagId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setTagId(Ljava/lang/String;)V

    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setDataId(Ljava/lang/String;)V

    const-string v2, "ex"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setEx(Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setSource(Ljava/lang/String;)V

    const-string v2, "allDownloadNum"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setDownloadNum(Ljava/lang/String;)V

    const-string v2, "summary"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "title"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setTitle(Ljava/lang/String;)V

    :cond_0
    const-string v2, "landingPageUrl"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setLandingPageUrl(Ljava/lang/String;)V

    const-string v2, "actionUrl"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setActionUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    const-string v2, "parameters"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/miui/weather2/e/b;->a(Lorg/json/JSONObject;)Lcom/miui/weather2/structures/DeepLinkInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;

    const-string v3, "landingPageH5Url"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AdvertismentData;->setLandingPageH5Url(Ljava/lang/String;)V

    const-string v3, "tagDesc"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AdvertismentData;->setTagDesc(Ljava/lang/String;)V

    const-string v3, "tagTemplate"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AdvertismentData;->setTagTemplate(Ljava/lang/String;)V

    const-string v3, "dsp_termination"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AdvertismentData;->setDspTermination(Ljava/lang/String;)V

    const-string v3, "tagX"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AdvertismentData;->setTagX(Ljava/lang/String;)V

    const-string v3, "tagY"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AdvertismentData;->setTagY(Ljava/lang/String;)V

    const-string v3, "tagText"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setTagText(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_1
    :goto_5
    :try_start_8
    const-string v2, "extra"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "button"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setInstall(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :goto_6
    :try_start_9
    const-string v2, "imgUrls"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AdvertismentData;->addImageUrl(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :catch_0
    move-exception v2

    :try_start_a
    const-string v2, "Wth2:CommercialReader"

    const-string v3, "parseOneAdvertismentData() no clickMonitorUrls"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Wth2:CommercialReader"

    const-string v3, "parseOneAdvertismentData()"

    invoke-static {v2, v3, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_8
    return-object v0

    :catch_2
    move-exception v2

    :try_start_b
    const-string v2, "Wth2:CommercialReader"

    const-string v3, "parseOneAdvertismentData() no viewMonitorUrls"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v2

    const-string v2, "Wth2:CommercialReader"

    const-string v3, "parseOneAdvertismentData() no playMonitorUrls"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_4
    move-exception v2

    const-string v2, "Wth2:CommercialReader"

    const-string v3, "parseOneAdvertismentData() no finishMonitorUrls"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_5
    move-exception v2

    const-string v2, "Wth2:CommercialReader"

    const-string v3, "parseOneAdvertismentData() no stopMonitorUrls"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_6
    move-exception v2

    const-string v3, "Wth2:CommercialReader"

    const-string v4, "parseOneAdvertismentData()"

    invoke-static {v3, v4, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_7
    move-exception v2

    const-string v2, "Wth2:CommercialReader"

    const-string v3, "parseOneAdvertismentData() no extra"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_8
    move-exception v2

    const-string v2, "Wth2:CommercialReader"

    const-string v3, "parseOneAdvertismentData() no imgUrls"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :cond_2
    :try_start_c
    const-string v2, "videoUrl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setAudioUrl(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :goto_9
    :try_start_d
    const-string v2, "targetType"

    invoke-static {p1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :try_start_e
    const-string v2, "parameters"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/miui/weather2/e/b;->a(Lorg/json/JSONObject;)Lcom/miui/weather2/structures/DeepLinkInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/weather2/structures/AdvertismentData;->mDeepLink:Lcom/miui/weather2/structures/DeepLinkInfo;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :cond_4
    :goto_a
    :try_start_f
    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTemplate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "41"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "parameters"

    const-string v3, "title"

    invoke-static {p1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setSubTitle(Ljava/lang/String;)V

    const-string v2, "parameters"

    const-string v3, "subtitle"

    invoke-static {p1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setSubDesc(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getTemplate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "42"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "parameters"

    const-string v3, "movieName"

    invoke-static {p1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setSubTitle(Ljava/lang/String;)V

    const-string v2, "parameters"

    const-string v3, "movieScore"

    invoke-static {p1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AdvertismentData;->setSubDesc(Ljava/lang/String;)V

    :cond_6
    const-string v2, "LOAD"

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdvertismentData;->getEx()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p2}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_8

    :catch_9
    move-exception v2

    const-string v2, "Wth2:CommercialReader"

    const-string v3, "parseOneAdvertismentData() no videoUrl"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_a
    move-exception v2

    const-string v3, "Wth2:CommercialReader"

    const-string v4, "parseOneAdvertismentData()"

    invoke-static {v3, v4, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_a
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/miui/weather2/structures/DeepLinkInfo;
    .locals 3

    new-instance v0, Lcom/miui/weather2/structures/DeepLinkInfo;

    invoke-direct {v0}, Lcom/miui/weather2/structures/DeepLinkInfo;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mFullInfo:Ljava/lang/String;

    const-string v1, "package"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mPackage:Ljava/lang/String;

    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mName:Ljava/lang/String;

    const-string v1, "description"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDescription:Ljava/lang/String;

    const-string v1, "category"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mCategory:Ljava/lang/String;

    const-string v1, "downloadUrl"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDownloadUrl:Ljava/lang/String;

    const-string v1, "iconUrl"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mIconUrl:Ljava/lang/String;

    const-string v1, "landingPageDeeplinkUrl"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mDeepLinkUrl:Ljava/lang/String;

    const-string v1, "landingPageH5Url"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mH5Url:Ljava/lang/String;

    const-string v1, "ex"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mEx:Ljava/lang/String;

    const-string v1, "useSystemBrowser"

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/structures/DeepLinkInfo;->mUseSystemBrowser:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Wth2:CommercialReader"

    const-string v2, "parseDeepLinkInfo()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)[Lcom/miui/weather2/structures/AdvertismentData;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "adInfos"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/miui/weather2/structures/AdvertismentData;

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "1.9.d.1"

    const-string v6, "tagId"

    invoke-static {v4, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    const-string v6, "template"

    invoke-static {v4, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, p1}, Lcom/miui/weather2/e/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)Lcom/miui/weather2/structures/AdvertismentData;

    move-result-object v6

    aput-object v6, v1, v5

    :cond_1
    const-string v5, "1.9.d.3"

    const-string v6, "tagId"

    invoke-static {v4, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    const-string v6, "template"

    invoke-static {v4, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, p1}, Lcom/miui/weather2/e/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)Lcom/miui/weather2/structures/AdvertismentData;

    move-result-object v6

    aput-object v6, v1, v5

    :cond_2
    const-string v5, "1.9.a.9"

    const-string v6, "tagId"

    invoke-static {v4, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    const-string v6, "template"

    invoke-static {v4, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, p1}, Lcom/miui/weather2/e/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)Lcom/miui/weather2/structures/AdvertismentData;

    move-result-object v4

    aput-object v4, v1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Wth2:CommercialReader"

    const-string v2, "parseAdsInFirstScreen() no ad data"

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
