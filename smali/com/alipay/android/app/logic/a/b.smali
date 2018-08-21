.class public Lcom/alipay/android/app/logic/a/b;
.super Lcom/alipay/android/app/logic/a/a;
.source "BytesEncryptDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/logic/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/a/a;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;,
            Lcom/alipay/android/app/json/JSONException;,
            Lcom/alipay/android/app/exception/PublicKeyException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    check-cast p1, Lcom/alipay/android/app/json/JSONObject;

    :try_start_0
    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "res_data"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/alipay/android/app/d/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/d/c/g;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/alipay/android/app/d/a/a;->b([B)[B

    move-result-object v1

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "session"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    const-string/jumbo v2, "session"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->g(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "uac"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    const-string/jumbo v2, "uac"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->a(I)V

    :goto_1
    const-string/jumbo v1, "trade_no"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    const-string/jumbo v2, "trade_no"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    move-object p1, v0

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/logic/a/b;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/b;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/b;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/logic/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->a(I)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/trans/config/a;->e(Z)V

    goto :goto_2

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/trans/config/a;->e(Z)V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/trans/config/a;->e(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public a([BLjava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/app/d/a/a;->a([B)[B
    :try_end_0
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->e(Z)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alipay/android/app/statistic/h;->a(Z)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/GzipException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/logic/c/e;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/logic/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p1

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/logic/a/b;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/trans/config/a;->e(Z)V

    invoke-static {v3}, Lcom/alipay/android/app/statistic/h;->a(Z)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
