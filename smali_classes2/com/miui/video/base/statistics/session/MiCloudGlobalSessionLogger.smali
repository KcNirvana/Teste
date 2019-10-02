.class public Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;
.super Ljava/lang/Object;
.source "MiCloudGlobalSessionLogger.java"


# static fields
.field private static mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/miui/video/base/statistics/session/CloudPageAction;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mInstance:Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private trace_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;-><init>()V

    sput-object v0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mInstance:Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mData:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method private cover2PageAction(Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;)Lcom/miui/video/base/statistics/session/CloudPageAction;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->linkEntity:Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {v1}, Lcom/miui/video/framework/uri/LinkEntity;->getLinkUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->trace_id:Ljava/lang/String;

    const-string v1, ""

    const-string v3, ""

    const-string v4, "rc_items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "trace_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->trace_id:Ljava/lang/String;

    const-string v2, "stock_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "item_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v2

    :cond_2
    new-instance v2, Lcom/miui/video/base/statistics/session/CloudPageAction;

    invoke-direct {v2}, Lcom/miui/video/base/statistics/session/CloudPageAction;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v0, p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->type:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    iput v4, v2, Lcom/miui/video/base/statistics/session/CloudPageAction;->is_view:I

    goto :goto_0

    :cond_3
    iget p1, p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iput v4, v2, Lcom/miui/video/base/statistics/session/CloudPageAction;->is_clk:I

    :cond_4
    :goto_0
    iput-object v1, v2, Lcom/miui/video/base/statistics/session/CloudPageAction;->stock_id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/miui/video/base/statistics/session/CloudPageAction;->e_t:J

    iput-object v3, v2, Lcom/miui/video/base/statistics/session/CloudPageAction;->i_t:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v2
.end method

.method public static getInstance()Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mInstance:Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;

    return-object v0
.end method

.method private getSessionUrl(Ljava/util/concurrent/CopyOnWriteArraySet;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/miui/video/base/statistics/session/CloudPageAction;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/video/base/statistics/session/CloudSessionEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/session/CloudSessionEntity;-><init>()V

    const-string v1, "NEWS"

    iput-object v1, v0, Lcom/miui/video/base/statistics/session/CloudSessionEntity;->app:Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/statistics/session/CloudSessionEntity;->imeid:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v1, v0, Lcom/miui/video/base/statistics/session/CloudSessionEntity;->page_actions:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->trace_id:Ljava/lang/String;

    iput-object p1, v0, Lcom/miui/video/base/statistics/session/CloudSessionEntity;->traceid:Ljava/lang/String;

    iput-object p2, v0, Lcom/miui/video/base/statistics/session/CloudSessionEntity;->path:Ljava/lang/String;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addReport(Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;)V
    .locals 8

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->channel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->cover2PageAction(Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;)Lcom/miui/video/base/statistics/session/CloudPageAction;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/miui/video/base/statistics/session/CloudPageAction;->stock_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mData:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mData:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->channel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/statistics/session/CloudPageAction;

    iget-object v5, v4, Lcom/miui/video/base/statistics/session/CloudPageAction;->stock_id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/miui/video/base/statistics/session/CloudPageAction;->stock_id:Ljava/lang/String;

    iget-object v7, v4, Lcom/miui/video/base/statistics/session/CloudPageAction;->stock_id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v1, p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->type:I

    if-ne v1, v6, :cond_2

    iput v6, v4, Lcom/miui/video/base/statistics/session/CloudPageAction;->is_view:I

    goto :goto_1

    :cond_2
    iget v1, p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->type:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    iput v6, v4, Lcom/miui/video/base/statistics/session/CloudPageAction;->is_clk:I

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_7

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mData:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;->channel:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method public getSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mData:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p0, v0, p1}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->getSessionUrl(Ljava/util/concurrent/CopyOnWriteArraySet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
