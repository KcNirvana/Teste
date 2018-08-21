.class public Lcom/alipay/android/app/statistic/b;
.super Lcom/alipay/android/app/statistic/e;
.source "LogUploadTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/e;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/alipay/android/app/statistic/d;

    iget-boolean v3, p0, Lcom/alipay/android/app/statistic/b;->b:Z

    invoke-direct {v2, v3}, Lcom/alipay/android/app/statistic/d;-><init>(Z)V

    :try_start_0
    new-instance v3, Lcom/alipay/android/app/statistic/a;

    invoke-virtual {p0}, Lcom/alipay/android/app/statistic/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/alipay/android/app/statistic/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/android/app/statistic/b;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/statistic/d;->a(Lcom/alipay/android/app/statistic/a;Z)Lcom/alipay/android/app/statistic/f;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/app/statistic/c;

    invoke-direct {v4}, Lcom/alipay/android/app/statistic/c;-><init>()V

    const/4 v5, 0x1

    const-string/jumbo v6, "phonecashiermsp"

    const-string/jumbo v7, "LogUploadTask.request"

    invoke-static {}, Lcom/alipay/android/app/statistic/g;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/statistic/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/alipay/android/app/statistic/f;->b()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/alipay/android/app/statistic/f;->a()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alipay/android/app/statistic/b;->a(Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/alipay/android/app/statistic/c;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/android/app/statistic/b;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v5

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/statistic/c;->a(Lorg/apache/http/HttpResponse;)[B

    move-result-object v3

    new-instance v4, Lcom/alipay/android/app/statistic/f;

    invoke-direct {v4, v5, v3}, Lcom/alipay/android/app/statistic/f;-><init>(Z[B)V

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/statistic/d;->a(Lcom/alipay/android/app/statistic/f;)Lcom/alipay/android/app/statistic/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/android/app/statistic/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/statistic/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/app/statistic/b;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "api_name"

    const-string/jumbo v2, "/sdk/log"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "api_version"

    const-string/jumbo v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "log_v"

    const-string/jumbo v3, "1.0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/statistic/b;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/statistic/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
