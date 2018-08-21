.class public Lcom/alipay/android/app/logic/a/e;
.super Lcom/alipay/android/app/logic/a/a;
.source "DynamicHostEnvelopDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/logic/a/a;-><init>()V

    return-void
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

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "session"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/e;->b:Lcom/alipay/android/app/trans/config/a;

    const-string/jumbo v2, "session"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->g(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/logic/a/e;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/e;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/e;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/e;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/logic/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a([BLjava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v2, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "namespace"

    iget-object v3, p0, Lcom/alipay/android/app/logic/a/e;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v3}, Lcom/alipay/android/app/trans/config/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "api_name"

    iget-object v3, p0, Lcom/alipay/android/app/logic/a/e;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v3}, Lcom/alipay/android/app/trans/config/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "api_version"

    iget-object v3, p0, Lcom/alipay/android/app/logic/a/e;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v3}, Lcom/alipay/android/app/trans/config/a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "params"

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/e;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/e;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v2}, Lcom/alipay/android/app/trans/config/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/e;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/e;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/e;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/e;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/logic/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    :cond_1
    return-object v0
.end method
