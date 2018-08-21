.class public Lcom/alipay/android/app/logic/a/d;
.super Lcom/alipay/android/app/logic/a/a;
.source "CommonRequestDecorator.java"


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
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/logic/a/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a([BLjava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "type"

    iget-object v4, p0, Lcom/alipay/android/app/logic/a/d;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/trans/config/a;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "method"

    iget-object v4, p0, Lcom/alipay/android/app/logic/a/d;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/trans/config/a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/plugin/d;->getBirdParamsVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    const-string/jumbo v4, "phonecashiermsp"

    const-string/jumbo v5, "CommonRequestDecorator.todo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bpArgsError:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ex"

    const-string/jumbo v4, "bpArgsError"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "bp"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/d;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v2}, Lcom/alipay/android/app/trans/config/a;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "uac"

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/k;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "gzip"

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/d;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v2}, Lcom/alipay/android/app/trans/config/a;->q()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/d;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "session"

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/d;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v2}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "tid"

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v1, v8}, Lcom/alipay/android/app/statistic/h;->a(Ljava/util/Map;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "CommonRequestDecorator.todo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CommonRequest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/d;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/d;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v2, p0, Lcom/alipay/android/app/logic/a/d;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/d;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/logic/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
