.class public Lcom/alipay/android/app/logic/a;
.super Ljava/lang/Object;
.source "LogicMessageHandlerAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/b/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/alipay/android/app/trans/config/a;
    .locals 3

    new-instance v0, Lcom/alipay/android/app/trans/config/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/trans/config/a;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/trans/config/a;->c(Z)V

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/trans/config/a;->g(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/trans/config/a;->e(Z)V

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/trans/config/a;->a(I)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/app/b/d/a;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/trans/config/a;->a(Z)V

    :cond_1
    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;ILcom/alipay/android/app/trans/config/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    invoke-virtual {p5}, Lcom/alipay/android/app/trans/config/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Lcom/alipay/android/app/trans/config/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1, p2, p4, p5}, Lcom/alipay/android/app/logic/c/d;->b(ILjava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p5}, Lcom/alipay/android/app/trans/config/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2, p4, p5}, Lcom/alipay/android/app/logic/c/d;->c(ILjava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p5}, Lcom/alipay/android/app/trans/config/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, p2, p4, p5}, Lcom/alipay/android/app/logic/c/d;->a(ILjava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p5}, Lcom/alipay/android/app/trans/config/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/android/app/logic/c/d;->b(ILjava/lang/String;Ljava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p5}, Lcom/alipay/android/app/trans/config/a;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/android/app/logic/c/d;->a(ILjava/lang/String;Ljava/lang/String;ILcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/a;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I[B)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    const-string/jumbo v2, "LogicMessageHandlerAdapter::unPackBytesData"

    const-string/jumbo v3, "start"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/b;->i()Lcom/alipay/android/app/trans/config/a;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/alipay/android/app/logic/a/b;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/a/b;-><init>()V

    new-instance v3, Lcom/alipay/android/app/logic/a/h;

    invoke-direct {v3, v0}, Lcom/alipay/android/app/logic/a/h;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    new-instance v0, Lcom/alipay/android/app/logic/a/c;

    invoke-direct {v0, v3}, Lcom/alipay/android/app/logic/a/c;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/alipay/android/app/logic/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/PublicKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->q()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/logic/b;->b(Z)V

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/logic/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->w()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/logic/b;->a(I)V

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/logic/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v2}, Lcom/alipay/android/app/logic/a;->a(ILcom/alipay/android/app/logic/b;)V

    const-string/jumbo v0, ""

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;,
            Lcom/alipay/android/app/exception/AppErrorException;,
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x0

    const-string/jumbo v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "params"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "LogicMessageHandlerAdapter.parseResponseRpcData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " parseResponseData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v1, v2, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/alipay/android/app/logic/b;->i()Lcom/alipay/android/app/trans/config/a;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "session"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "session"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->g(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "uac"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "uac"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->a(I)V

    const-string/jumbo v2, "uac"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/alipay/android/app/logic/b;->a(I)V

    :goto_0
    const-string/jumbo v2, "pkey"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v4}, Lcom/alipay/android/app/logic/a;->a(Lcom/alipay/android/app/json/JSONObject;)V

    :cond_1
    const-string/jumbo v2, "trade_no"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "trade_no"

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/alipay/android/app/logic/b;->b(Ljava/lang/String;)V

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v6, "LogicMessageHandlerAdapter.parseResponseRpcData"

    const-string/jumbo v7, "params tradeno"

    invoke-static {v9, v2, v6, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v2, v1

    :goto_1
    const-string/jumbo v1, "mspParam"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Lcom/alipay/android/app/logic/a;->a(Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_5

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mini_app_error"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {v0, v9}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v1, v8}, Lcom/alipay/android/app/trans/config/a;->a(I)V

    invoke-virtual {v5, v8}, Lcom/alipay/android/app/logic/b;->a(I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x3e8

    if-ne v3, v1, :cond_8

    if-eqz v0, :cond_7

    invoke-direct {p0, v4}, Lcom/alipay/android/app/logic/a;->a(Lcom/alipay/android/app/json/JSONObject;)V

    invoke-direct {p0, p2, v5}, Lcom/alipay/android/app/logic/a;->a(ILcom/alipay/android/app/logic/b;)V

    const-string/jumbo v0, ""

    :cond_6
    :goto_2
    return-object v0

    :cond_7
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

    :cond_8
    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/logic/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method private a(ILcom/alipay/android/app/logic/b;)V
    .locals 2

    invoke-virtual {p2}, Lcom/alipay/android/app/logic/b;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iput p1, v0, Lcom/alipay/android/app/b/a/j;->a:I

    const/16 v1, 0xb

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v1, 0x3ea

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-virtual {p2}, Lcom/alipay/android/app/logic/b;->c()V

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    new-instance v6, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v6}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iput p4, v6, Lcom/alipay/android/app/b/a/j;->a:I

    const/16 v0, 0xc

    iput v0, v6, Lcom/alipay/android/app/b/a/j;->b:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/alipay/android/app/logic/a;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/alipay/android/app/trans/config/a;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/logic/a;->a(ILjava/lang/String;Ljava/lang/String;ILcom/alipay/android/app/trans/config/a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/alipay/android/app/trans/config/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f2

    iput v0, v6, Lcom/alipay/android/app/b/a/j;->c:I

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/alipay/android/app/trans/config/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/alipay/android/app/trans/config/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Lcom/alipay/android/app/trans/config/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x404

    iput v0, v6, Lcom/alipay/android/app/b/a/j;->c:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d2

    iput v0, v6, Lcom/alipay/android/app/b/a/j;->c:I

    goto :goto_0
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

.method private a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/app/k;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    const-string/jumbo v0, "pkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I[B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const-string/jumbo v1, ""

    const-string/jumbo v2, "LogicMessageHandlerAdapter::unPackDynamicHostData"

    const-string/jumbo v3, "start"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/b;->i()Lcom/alipay/android/app/trans/config/a;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/logic/a/e;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/a/e;-><init>()V

    new-instance v4, Lcom/alipay/android/app/logic/a/h;

    invoke-direct {v4, v0}, Lcom/alipay/android/app/logic/a/h;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    invoke-virtual {v4, v1}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    :try_start_0
    invoke-virtual {v4, v3}, Lcom/alipay/android/app/logic/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/PublicKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->q()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/logic/b;->b(Z)V

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/logic/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->w()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/logic/b;->a(I)V

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/logic/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v2}, Lcom/alipay/android/app/logic/a;->a(ILcom/alipay/android/app/logic/b;)V

    const-string/jumbo v0, ""

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private b(Ljava/util/Map;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;,
            Lcom/alipay/android/app/exception/AppErrorException;,
            Lcom/alipay/android/app/exception/NetErrorException;
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v2, 0x0

    const-string/jumbo v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "LogicMessageHandlerAdapter.parseResponseRpcData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " parseResponseData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v0, v1, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/alipay/android/app/logic/b;->i()Lcom/alipay/android/app/trans/config/a;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "session"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "session"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/trans/config/a;->g(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "uac"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "uac"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/trans/config/a;->a(I)V

    const-string/jumbo v0, "uac"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/logic/b;->a(I)V

    :goto_0
    const-string/jumbo v0, "pkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/a;->a(Ljava/util/Map;)V

    :cond_1
    const-string/jumbo v0, "trade_no"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "trade_no"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/logic/b;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v5, "LogicMessageHandlerAdapter.parseResponseRpcData"

    const-string/jumbo v6, "params tradeno"

    invoke-static {v7, v0, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/logic/b;->d(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "uurl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "uurl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/logic/b;->e(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string/jumbo v0, "mspParam"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v0}, Lcom/alipay/android/app/logic/a;->a(Ljava/lang/String;)V

    :cond_5
    if-nez v1, :cond_8

    if-nez v4, :cond_7

    move v0, v2

    :goto_2
    return v0

    :cond_6
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->a(I)V

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/logic/b;->a(I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mini_app_error"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {v0, v7}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_a

    const-string/jumbo v0, "pkey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/a;->a(Ljava/util/Map;)V

    invoke-direct {p0, p2, v4}, Lcom/alipay/android/app/logic/a;->a(ILcom/alipay/android/app/logic/b;)V

    move v0, v2

    goto :goto_2

    :cond_9
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

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/logic/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Ljava/lang/String;)V

    :cond_b
    if-eqz v1, :cond_c

    const/4 v0, -0x1

    const-string/jumbo v2, "KeySessionId"

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alipay/android/app/statistic/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x1

    goto :goto_2

    :cond_d
    move-object v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public execute(Lcom/alipay/android/app/b/a/j;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;,
            Lcom/alipay/android/app/exception/AppErrorException;,
            Lcom/alipay/android/app/exception/NetErrorException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v12, 0xce

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v11, 0x0

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "LogicMessageHandlerAdapter.execute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "exe msg,detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/app/b/a/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v0

    iget v1, p1, Lcom/alipay/android/app/b/a/j;->c:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    if-eqz v11, :cond_11

    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    if-nez v0, :cond_11

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {v12}, Lcom/alipay/android/app/g/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    new-instance v1, Lcom/alipay/android/app/logic/b;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/b;-><init>()V

    iget-object v2, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/app/logic/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/logic/b;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/logic/b;->c(Z)V

    iget v3, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/logic/c;->c(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v3, v1}, Lcom/alipay/android/app/logic/c;->a(ILcom/alipay/android/app/logic/b;)V

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/statistic/h;->c()V

    iget v1, p1, Lcom/alipay/android/app/b/a/j;->c:I

    const/4 v3, 0x0

    iget v4, p1, Lcom/alipay/android/app/b/a/j;->a:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/logic/a;->a(ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    move v11, v5

    goto :goto_0

    :sswitch_2
    iget v1, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v0

    if-nez v0, :cond_3

    move v11, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v11}, Lcom/alipay/android/app/logic/b;->c(Z)V

    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    if-le v1, v5, :cond_4

    iget v7, p1, Lcom/alipay/android/app/b/a/j;->c:I

    aget-object v8, v0, v11

    aget-object v9, v0, v5

    iget v10, p1, Lcom/alipay/android/app/b/a/j;->a:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/alipay/android/app/logic/a;->a(ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_4
    move v11, v5

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/app/trans/b;

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v1

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v1

    const-string/jumbo v2, "Msp-Param"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/trans/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/logic/b;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b;->i()Lcom/alipay/android/app/trans/config/a;

    move-result-object v1

    const-string/jumbo v2, "msp-gzip"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/trans/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/trans/config/a;->d(Z)V

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/b;->b()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/app/logic/a;->a(I[B)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "synch"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "synch"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/ui/quickpay/util/h;->b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move v11, v5

    goto/16 :goto_0

    :cond_5
    iget v1, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/b;->b()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/app/logic/a;->b(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    iput v2, v1, Lcom/alipay/android/app/b/a/j;->a:I

    iput v7, v1, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v2, 0x7d5

    iput v2, v1, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/alipay/android/app/sys/b;->a(Z)V

    iput-object v0, v1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    :cond_7
    move v11, v5

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/app/trans/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v0

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "mspParam"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "mspParam"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/logic/b;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "LogicMessageHandlerAdapter.execute"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mspParam"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v0, "mspParam"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v3, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v0, "resultStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "resultStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "1002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "1003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string/jumbo v0, "flybird_mobilegwerror_tips"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12f

    invoke-static {v0, v2}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    iget v0, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/app/logic/a;->a(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "synch"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "synch"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/ui/quickpay/util/h;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_b
    new-instance v1, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    iput v2, v1, Lcom/alipay/android/app/b/a/j;->a:I

    iput v7, v1, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v2, 0x7d5

    iput v2, v1, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/alipay/android/app/sys/b;->a(Z)V

    iput-object v0, v1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-static {v1, v12}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_5
    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/app/trans/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v0

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "mspParam"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "mspParam"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/logic/b;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "LogicMessageHandlerAdapter.execute"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mspParam"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v0, "mspParam"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v3, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string/jumbo v0, "resultStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "resultStatus"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "1002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "1003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const-string/jumbo v0, "flybird_mobilegwerror_tips"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12f

    invoke-static {v0, v2}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget v0, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/app/logic/a;->b(Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "synch"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "synch"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/util/h;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_10
    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    iput v2, v0, Lcom/alipay/android/app/b/a/j;->a:I

    iput v7, v0, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v2, 0x7d9

    iput v2, v0, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/alipay/android/app/sys/b;->a(Z)V

    iput-object v1, v0, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0xe

    iput v0, p1, Lcom/alipay/android/app/b/a/j;->b:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    goto/16 :goto_0

    :cond_11
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3f3 -> :sswitch_0
        0x3f5 -> :sswitch_4
        0x405 -> :sswitch_5
        0x7d1 -> :sswitch_1
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_3
        0x7d6 -> :sswitch_6
        0x7d7 -> :sswitch_6
    .end sparse-switch
.end method
