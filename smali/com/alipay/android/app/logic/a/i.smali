.class public Lcom/alipay/android/app/logic/a/i;
.super Ljava/lang/Object;
.source "RpcRequestDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    if-eqz v0, :cond_2

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "type"

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "method"

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "action"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v2, "gzip"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    const-string/jumbo v2, "bp"

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/app/plugin/d;->getBirdParamsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "uac"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/k;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "session"

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, "tid"

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "RpcRequestDecorator.getCommonRequestParamsString"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RPC common request\u53c2\u6570:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;II)Lcom/alipay/android/app/logic/b/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/app/logic/b/a/a;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/b/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/b/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/b/a/a;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/b/a/a;->d(Ljava/lang/String;)V

    const/16 v1, 0x7d1

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lcom/alipay/android/app/logic/a/i;->a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/b/a/a;->e(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/b;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/b/a/a;->f(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/pay/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/b/a/a;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/b/a/a;->h(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/logic/a/i;->a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/b/a/a;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "locLoginOnce"

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v4, "tid"

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const/4 v4, 0x4

    const-string/jumbo v5, "phonecashiermsp"

    const-string/jumbo v6, "RpcRequestDecorator.getFirstRequestParamsString"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get tid time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v6, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x2

    const-string/jumbo v5, "phonecashiermsp"

    const-string/jumbo v6, "RpcRequestDecorator.getFirstRequestParamsString"

    const-string/jumbo v7, "getApdidToken start msms"

    invoke-static {v4, v5, v6, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/alipay/android/app/plugin/b;->getApdidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const-string/jumbo v6, "phonecashiermsp"

    const-string/jumbo v7, "RpcRequestDecorator.getFirstRequestParamsString"

    const-string/jumbo v8, "getApdidToken end msms"

    invoke-static {v5, v6, v7, v8}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-gt v4, v5, :cond_5

    :cond_1
    const-string/jumbo v4, "ua"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Lcom/alipay/android/app/k;->a(ZI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v4, "decay"

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/app/plugin/b;->getExtractData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const/4 v4, 0x4

    const-string/jumbo v5, "phonecashiermsp"

    const-string/jumbo v6, "RpcRequestDecorator.getFirstRequestParamsString"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get ua time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v6, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v4, "RpcRequestDecorator.getFirstRequestParamsString"

    const-string/jumbo v5, "getAlipayLocaleDes start msms"

    invoke-static {v0, v1, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "lang"

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/b;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v4, "RpcRequestDecorator.getFirstRequestParamsString"

    const-string/jumbo v5, "getAlipayLocaleDes end msms"

    invoke-static {v0, v1, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pa"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "synch"

    invoke-virtual {v3, v0, p3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v4, "RpcRequestDecorator.getFirstRequestParamsString"

    const-string/jumbo v5, "getAuthToken start msms"

    invoke-static {v0, v1, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alipay/android/app/logic/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "extok"

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/b;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v4, "RpcRequestDecorator.getFirstRequestParamsString"

    const-string/jumbo v5, "getAuthToken end msms"

    invoke-static {v0, v1, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/android/app/plugin/d;->getBirdParamsVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    const-string/jumbo v6, "phonecashiermsp"

    const-string/jumbo v7, "RpcRequestDecorator.getFirstRequestParamsString"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bpArgsError:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "ex"

    const-string/jumbo v6, "bpArgsError"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v5, "bp"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "has_alipay"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/sys/a;->d(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    const-string/jumbo v4, "external_info"

    invoke-virtual {v3, v4, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "user_id"

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "trid"

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/app/plugin/b;->getTrId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string/jumbo v5, "app_key"

    invoke-interface {v4}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/alipay/android/app/b/d/a;->n()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "trdfrom"

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v4, "utdid"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const/4 v4, 0x4

    const-string/jumbo v5, "phonecashiermsp"

    const-string/jumbo v6, "RpcRequestDecorator.getFirstRequestParamsString"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get utdid time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v6, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "new_client_key"

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/f/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const/4 v2, 0x4

    const-string/jumbo v4, "phonecashiermsp"

    const-string/jumbo v5, "RpcRequestDecorator.getFirstRequestParamsString"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HardwarePayUtil init time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v5, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sina"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "payment_setting"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "cashier"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "method"

    const-string/jumbo v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v1, "action"

    invoke-virtual {v3, v1, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "gzip"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "RpcRequestDecorator.getFirstRequestParamsString"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RPC request\u53c2\u6570:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v4, "ua"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/alipay/android/app/k;->a(ZI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "trdfrom"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v1, "setting"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "setting"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "method"

    const-string/jumbo v2, "list"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "method"

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
