.class public Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;
.super Ljava/lang/Object;
.source "ValueTransUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteShareService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursor2record(Landroid/database/Cursor;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;
    .locals 6

    new-instance v2, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-direct {v2}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;-><init>()V

    const-string/jumbo v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setId(Ljava/lang/String;)V

    const-string/jumbo v5, "url"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setUrl(Ljava/lang/String;)V

    const-string/jumbo v5, "title"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v5, "author"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setAuthor(Ljava/lang/String;)V

    const-string/jumbo v5, "ptime"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setPtime(Ljava/lang/String;)V

    const-string/jumbo v5, "summary"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setSummary(Ljava/lang/String;)V

    const-string/jumbo v5, "body"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setBody(Ljava/lang/String;)V

    const-string/jumbo v5, "source"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setSource(Ljava/lang/String;)V

    const-string/jumbo v5, "sourceIcon"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setSourceIcon(Ljava/lang/String;)V

    const-string/jumbo v5, "ctime"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCtime(Ljava/lang/String;)V

    const-string/jumbo v5, "appName"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setAppName(Ljava/lang/String;)V

    const-string/jumbo v5, "favorite"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setFavourite(I)V

    const-string/jumbo v5, "mark"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setMark(Ljava/lang/String;)V

    const-string/jumbo v5, "readed"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setReaded(I)V

    const-string/jumbo v5, "style_activity"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setStyleActivity(Z)V

    const-string/jumbo v5, "original_uri"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setOriginalUri(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v5, "component_name"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setComponentName(Ljava/lang/String;)V

    const-string/jumbo v5, "intent_action"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setIntentAction(Ljava/lang/String;)V

    const-string/jumbo v5, "thumbnail"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setThumbnails([Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v5, "tags"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setTags([Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v5, "tags"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCategories([Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v5, "cid"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCid(Ljava/lang/String;)V

    const-string/jumbo v5, "ctag"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCtag(Ljava/lang/String;)V

    const-string/jumbo v5, "category"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCategory(Ljava/lang/String;)V

    const-string/jumbo v5, "isPartner"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setIsPartner(Ljava/lang/String;)V

    return-object v2
.end method

.method public static parseFavoriteRecord(Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;
    .locals 14

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-direct {v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;-><init>()V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "oriUrl"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, ""

    :goto_1
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setOriginUrl(Ljava/lang/String;)V

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, ""

    :goto_2
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setUrl(Ljava/lang/String;)V

    const-string/jumbo v10, "title"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, ""

    :goto_3
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v10, "author"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, ""

    :goto_4
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setAuthor(Ljava/lang/String;)V

    const-string/jumbo v10, "summary"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, ""

    :goto_5
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setSummary(Ljava/lang/String;)V

    const-string/jumbo v10, "body"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, ""

    :goto_6
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setBody(Ljava/lang/String;)V

    const-string/jumbo v10, "source"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, ""

    :goto_7
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setSource(Ljava/lang/String;)V

    const-string/jumbo v10, "sourceIcon"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string/jumbo v10, ""

    :goto_8
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setSourceIcon(Ljava/lang/String;)V

    const-string/jumbo v10, "date"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string/jumbo v10, ""

    :goto_9
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setDate(Ljava/lang/String;)V

    const-string/jumbo v10, "appName"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string/jumbo v10, ""

    :goto_a
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setAppName(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCtime(Ljava/lang/String;)V

    const-string/jumbo v10, "styleActivity"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setStyleActivity(Z)V

    const-string/jumbo v10, "category"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string/jumbo v10, ""

    :goto_b
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCategory(Ljava/lang/String;)V

    const-string/jumbo v10, "componentName"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string/jumbo v10, ""

    :goto_c
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setComponentName(Ljava/lang/String;)V

    const-string/jumbo v10, "isPartnerApp"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string/jumbo v10, ""

    :goto_d
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setIsPartner(Ljava/lang/String;)V

    const-string/jumbo v10, "uri"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    const-string/jumbo v10, ""

    :goto_e
    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setOriginalUri(Ljava/lang/String;)V

    const-string/jumbo v10, "thumbnail"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_f

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1
    const-string/jumbo v10, "oriUrl"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v10, "title"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v10, "author"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    :cond_5
    const-string/jumbo v10, "summary"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v10, "body"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    :cond_7
    const-string/jumbo v10, "source"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    :cond_8
    const-string/jumbo v10, "sourceIcon"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    :cond_9
    const-string/jumbo v10, "date"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_9

    :cond_a
    const-string/jumbo v10, "appName"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_a

    :cond_b
    const-string/jumbo v10, "category"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_b

    :cond_c
    const-string/jumbo v10, "componentName"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_c

    :cond_d
    const-string/jumbo v10, "isPartnerApp"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_d

    :cond_e
    const-string/jumbo v10, "uri"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_e

    :cond_f
    invoke-virtual {v5, v9}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setThumbnails([Ljava/lang/String;)V

    :cond_10
    const-string/jumbo v10, "categories"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v1, v10, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_11

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_11
    invoke-virtual {v5, v1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCategories([Ljava/lang/String;)V

    :cond_12
    const-string/jumbo v10, "tags"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v7, v10, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_13

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_13
    invoke-virtual {v5, v7}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setTags([Ljava/lang/String;)V

    :cond_14
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setReaded(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setPtime(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "expireSeconds"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->setExpireSeconds(Landroid/content/Context;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v10, "FavoriteShareService"

    const-string/jumbo v11, "JSONException"

    invoke-static {v10, v11, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static parseJsonArray(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->parseFavoriteRecord(Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "FavoriteRecord"

    const-string/jumbo v7, "JSONException"

    invoke-static {v6, v7, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static record2value(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "url"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "author"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "summary"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "body"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "source"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sourceIcon"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getSourceIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ctime"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ptime"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getPtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "appName"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "favorite"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getFavourite()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "mark"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "readed"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getReaded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCategories()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "categories"

    const-string/jumbo v2, ","

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCategories()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTags()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "tags"

    const-string/jumbo v2, ","

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTags()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getThumbnails()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "thumbnail"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getThumbnails()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/StringUtil;->stringArrayToString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "cid"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "ctag"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v1, "cdirty"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCdirty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "cdelete"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCdelete()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "style_activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getStyleActivity()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getOriginalUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "original_uri"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getOriginalUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v1, "component_name"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "intent_action"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getIntentAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "category"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "isPartner"

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getIsPartner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
