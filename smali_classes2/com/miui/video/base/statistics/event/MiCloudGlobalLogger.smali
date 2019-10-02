.class public Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;
.super Lcom/miui/video/base/statistics/event/EventLogger;
.source "MiCloudGlobalLogger.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "O2OTarget"

.field public static final TYPE_CLICK:I = 0x2

.field public static final TYPE_EXPOSE:I = 0x1

.field public static final TYPE_VIDEO:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClickSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

.field private mUnique:J

.field private mViewSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/event/EventLogger;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mClickSet:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mViewSet:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private addParamsToJson(Lorg/json/JSONObject;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "reach_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private addParamsToUrl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    const-string p4, "&"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private getStockId(Lcom/miui/video/framework/uri/LinkEntity;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getLinkUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rc_items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "stock_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private log(Lcom/miui/video/framework/uri/LinkEntity;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->updateUnique()V

    invoke-direct {p0, p1, p2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->parseParam(Lcom/miui/video/framework/uri/LinkEntity;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->upload(Ljava/lang/String;)V

    return-void
.end method

.method private parseParam(Lcom/miui/video/framework/uri/LinkEntity;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "host"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "rc_items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->addParamsToJson(Lorg/json/JSONObject;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "rc_items"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {p0, v0, p2, p1, v3}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->addParamsToUrl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "did"

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->addParamsToUrl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "_id"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mUnique:J

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->addParamsToUrl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "cdt"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->addParamsToUrl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "cv"

    iget-object p2, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v3, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->addParamsToUrl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    const-string p1, "host"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "rc_items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "&"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateUnique()V
    .locals 4

    iget-wide v0, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mUnique:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mUnique:J

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mUnique:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mUnique:J

    :cond_1
    return-void
.end method

.method private upload(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger$1;-><init>(Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public logClick(Lcom/miui/video/base/statistics/event/WidgetClickEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mClickSet:Ljava/util/HashSet;

    invoke-direct {p0, p2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->getStockId(Lcom/miui/video/framework/uri/LinkEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mClickSet:Ljava/util/HashSet;

    invoke-direct {p0, p2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->getStockId(Lcom/miui/video/framework/uri/LinkEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->log(Lcom/miui/video/framework/uri/LinkEntity;I)V

    const-string v0, ""

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v0}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getChannel()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;

    invoke-direct {v1, p2, p1, v0}, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;-><init>(Lcom/miui/video/framework/uri/LinkEntity;ILjava/lang/String;)V

    invoke-static {}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->getInstance()Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->addReport(Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;)V

    :cond_1
    return-void
.end method

.method protected logVideo(Lcom/miui/video/base/statistics/event/WidgetVideoEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p2, p1}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->log(Lcom/miui/video/framework/uri/LinkEntity;I)V

    return-void
.end method

.method public logView(Lcom/miui/video/base/statistics/event/WidgetViewEvent;Lcom/miui/video/framework/uri/LinkEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mViewSet:Ljava/util/HashSet;

    invoke-direct {p0, p2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->getStockId(Lcom/miui/video/framework/uri/LinkEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mViewSet:Ljava/util/HashSet;

    invoke-direct {p0, p2}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->getStockId(Lcom/miui/video/framework/uri/LinkEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->log(Lcom/miui/video/framework/uri/LinkEntity;I)V

    const-string v1, "O2OTarget"

    invoke-virtual {p1, v1}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->updateLogTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/event/WidgetViewEvent;->getBaseUIEntity()Lcom/miui/video/framework/base/ui/BaseUIEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    iget-object p1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;

    iget-object v1, p0, Lcom/miui/video/base/statistics/event/MiCloudGlobalLogger;->mItemData:Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {v1}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;-><init>(Lcom/miui/video/framework/uri/LinkEntity;ILjava/lang/String;)V

    invoke-static {}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->getInstance()Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/base/statistics/session/MiCloudGlobalSessionLogger;->addReport(Lcom/miui/video/base/statistics/session/CloudSessionSourceEntity;)V

    :cond_0
    return-void
.end method

.method public upLoadSession()V
    .locals 0

    return-void
.end method
