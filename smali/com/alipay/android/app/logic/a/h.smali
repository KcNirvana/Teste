.class public Lcom/alipay/android/app/logic/a/h;
.super Lcom/alipay/android/app/logic/a/a;
.source "PublicKeyDecorator.java"


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

.method private a(ILcom/alipay/android/app/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/PublicKeyException;,
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/alipay/android/app/logic/a/h;->a(Lcom/alipay/android/app/json/JSONObject;)V

    new-instance v0, Lcom/alipay/android/app/exception/PublicKeyException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/PublicKeyException;-><init>()V

    throw v0

    :cond_0
    const-string/jumbo v0, "de"

    const-string/jumbo v1, "get_rsa_key"

    const-string/jumbo v2, "\u7f3a\u5c11RSA-KEY\u6570\u636e"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    const/16 v2, 0xca

    invoke-static {v1, v2}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    const-string/jumbo v0, "public_key"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "public_key"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "pkey"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;,
            Lcom/alipay/android/app/json/JSONException;,
            Lcom/alipay/android/app/exception/PublicKeyException;,
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "code"

    const/16 v2, 0x1f7

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/app/logic/a/h;->a(ILcom/alipay/android/app/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/logic/a/h;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/h;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/h;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/h;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/logic/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a([BLjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/h;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/h;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/h;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/h;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/logic/a/a;->a([BLjava/lang/String;)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method
