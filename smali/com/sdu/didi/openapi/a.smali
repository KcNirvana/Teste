.class public Lcom/sdu/didi/openapi/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/sdu/didi/openapi/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized a()Lcom/sdu/didi/openapi/a;
    .locals 2

    const-class v1, Lcom/sdu/didi/openapi/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sdu/didi/openapi/a;->a:Lcom/sdu/didi/openapi/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sdu/didi/openapi/a;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/a;-><init>()V

    sput-object v0, Lcom/sdu/didi/openapi/a;->a:Lcom/sdu/didi/openapi/a;

    :cond_0
    sget-object v0, Lcom/sdu/didi/openapi/a;->a:Lcom/sdu/didi/openapi/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sdk_id"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/sdu/didi/openapi/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v0

    invoke-static {p1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getSDKId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sdk_id"

    invoke-static {p1, v1, v0}, Lcom/sdu/didi/openapi/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;
    .locals 9

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/sdu/didi/openapi/gK/b;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/gK/b;-><init>()V

    const-string/jumbo v1, "openid_json"

    const-string/jumbo v3, ""

    invoke-static {p1, v1, v3}, Lcom/sdu/didi/openapi/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/gK/b;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/sdu/didi/openapi/gK/b;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    const-string/jumbo v1, "appid"

    invoke-static {p1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ucode"

    invoke-static {}, Lcom/sdu/didi/openapi/a;->a()Lcom/sdu/didi/openapi/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sdu/didi/openapi/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v1, "imei"

    invoke-static {p1}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "mac"

    invoke-static {p1}, Lcom/sdu/didi/openapi/utils/Utils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ucode"

    invoke-static {}, Lcom/sdu/didi/openapi/a;->a()Lcom/sdu/didi/openapi/a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sdu/didi/openapi/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/sdu/didi/openapi/utils/Utils;->getRandomString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "noncestr"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "version"

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "sign"

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getSecrectStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/sdu/didi/openapi/a;->a()Lcom/sdu/didi/openapi/a;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/sdu/didi/openapi/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getSDKSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sdu/didi/openapi/ss/a;->a()Lcom/sdu/didi/openapi/ss/a;

    move-result-object v1

    const-string/jumbo v3, "https://open.xiaojukeji.com/gulfstream/develop/v1/permit/pGetOpenId"

    invoke-virtual {v1, v3, v2}, Lcom/sdu/didi/openapi/ss/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/gK/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/gK/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "openid_json"

    invoke-static {p1, v2, v1}, Lcom/sdu/didi/openapi/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method protected c(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;
    .locals 3

    new-instance v0, Lcom/sdu/didi/openapi/gK/b;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/gK/b;-><init>()V

    const-string/jumbo v1, "openid_json"

    const-string/jumbo v2, ""

    invoke-static {p1, v1, v2}, Lcom/sdu/didi/openapi/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/gK/b;->a(Ljava/lang/String;)V

    return-object v0
.end method
