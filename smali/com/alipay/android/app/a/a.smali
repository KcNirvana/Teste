.class public Lcom/alipay/android/app/a/a;
.super Ljava/lang/Object;
.source "CodeConfigHelper.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/a/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "decodeResult is empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "channelIndex"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "channelFullName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "assignedChannel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "channelTips"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "logoUrl"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    const-string/jumbo v2, "CodeConfigHelper::buildResult"

    const-string/jumbo v3, "config null"

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "channelIndex"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "channelFullName"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "assignedChannel"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "channelTips"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "logoUrl"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v1, Lcom/alipay/android/app/a/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alipay/android/app/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/alipay/android/app/a/a;->a:Z

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alipay/android/app/sys/b;->a(Landroid/content/Context;Lcom/alipay/android/app/k;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/app/plugin/b;->loadProperties(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "end_code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "10000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    const-string/jumbo v2, "CodeConfigHelper::updateCodeConfig"

    const-string/jumbo v3, "start"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/app/a/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/android/app/trans/config/a;

    sget-object v1, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V2_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/trans/config/a;-><init>(Lcom/alipay/android/app/trans/config/RequestChannel;)V

    const-string/jumbo v1, "cashier"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/trans/config/a;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/trans/config/a;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/trans/config/a;->b(Z)V

    new-instance v1, Lcom/alipay/android/app/logic/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/a/j;-><init>()V

    const/16 v2, 0x7d1

    const/4 v3, -0x1

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/alipay/android/app/logic/a/j;->a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;II)Lcom/alipay/android/app/logic/b/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/config/a;->x()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->z:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b/a/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->f()Lcom/alipay/android/app/plugin/c;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/trans/a;

    invoke-direct {v3, v1}, Lcom/alipay/android/app/trans/a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/app/plugin/c;->requestByPbv2(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/a/a;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/a/a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
