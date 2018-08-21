.class public Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;
.super Ljava/lang/Object;
.source "RecommendItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final IMAGE_NAME:Ljava/lang/String; = "imageName"

.field public static final PREF_RECOMMEND_CONTENT:Ljava/lang/String; = "recommend_content"

.field private static final PREF_REQ_LAST:Ljava/lang/String; = "req_last"

.field public static final SHOW_KEY:Ljava/lang/String; = "showKey"

.field private static final SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final TAG:Ljava/lang/String; = "RecommendItem"

.field private static final TIME_VALID:J = 0x36ee80L

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static sInstance:Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/Recommend;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreJsonArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    return-void
.end method

.method private filterOpenCards()V
    .locals 7

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getOpenCards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/module/model/Recommend;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getShowKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v4, "RecommendItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove open cards = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->removeApp(Lcom/miui/home/launcher/assistant/module/model/Recommend;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->sInstance:Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initData()V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1b070007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/Util;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->parseJson(Lorg/json/JSONObject;)Lcom/miui/home/launcher/assistant/module/model/Recommend;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "RecommendItem"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "RecommendItem"

    const-string/jumbo v6, "Exception"

    invoke-static {v5, v6, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v5, "RecommendItem"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    throw v5

    :catch_3
    move-exception v0

    const-string/jumbo v6, "RecommendItem"

    const-string/jumbo v7, "IOException"

    invoke-static {v6, v7, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private loadInfo()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/Recommend;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "recommend_content"

    const-string/jumbo v7, ""

    invoke-static {v5, v6, v7}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->parseJson(Lorg/json/JSONObject;)Lcom/miui/home/launcher/assistant/module/model/Recommend;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "RecommendItem"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v3, 0x0

    :cond_2
    return-object v3
.end method

.method private parseJson(Lorg/json/JSONObject;)Lcom/miui/home/launcher/assistant/module/model/Recommend;
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/assistant/module/model/Recommend;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/module/model/Recommend;-><init>()V

    const-string/jumbo v1, "appId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->setAppId(I)V

    const-string/jumbo v1, "imageName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->setImageName(Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v1, "showKey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->setShowKey(Ljava/lang/String;)V

    const-string/jumbo v1, "subtitle"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->setSubtitle(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseObjectToJson(Lcom/miui/home/launcher/assistant/module/model/Recommend;)Lorg/json/JSONObject;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v3, "appId"

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getAppId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "title"

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "subtitle"

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "imageName"

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getImageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "showKey"

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getShowKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v3, "RecommendItem"

    const-string/jumbo v4, "IOException"

    invoke-static {v3, v4, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private reqServerRecommend()V
    .locals 10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/assistant/module/model/Recommend;

    invoke-virtual {v7}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getAppId()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/miui/home/launcher/assistant/request/RecommendRequest;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/miui/home/launcher/assistant/request/RecommendRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/miui/home/launcher/assistant/request/RecommendRequest;->reqApps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "RecommendItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reqServerRecommend = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->updateData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v7, "RecommendItem"

    const-string/jumbo v8, "JSONException"

    invoke-static {v7, v8, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private saveInfo()V
    .locals 4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/model/Recommend;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->parseObjectToJson(Lcom/miui/home/launcher/assistant/module/model/Recommend;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "RecommendItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "recommend_content"

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateData(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/model/Recommend;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getAppId()I

    move-result v2

    const-string/jumbo v3, "appId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "subtitle"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->setSubtitle(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/Recommend;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->initData()V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "req_last"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "req_last"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->reqServerRecommend()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->saveInfo()V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->filterOpenCards()V

    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    return-object v2

    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->loadInfo()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    goto :goto_0
.end method

.method public removeApp(Lcom/miui/home/launcher/assistant/module/model/Recommend;)V
    .locals 5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "showKey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/Recommend;->getShowKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v2, "RecommendItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStoreJsonArray = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "recommend_content"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/carditem/RecommendItem;->mStoreJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/PrefNativeUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
