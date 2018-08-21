.class public Lcom/alipay/android/app/logic/a/g;
.super Ljava/lang/Object;
.source "Pbv2ForSDKDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;II)Lcom/alipay/android/app/logic/b/a/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/logic/b/a/b;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/b/a/b;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->l()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.alipay.quickpay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v2, "0"

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string/jumbo v2, "com.alipay.mobilecashier"

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "0"

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->a:Ljava/lang/String;

    :goto_1
    const/16 v2, 0x7d1

    if-ne p3, v2, :cond_e

    const-string/jumbo v2, "sina"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "payment_setting"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "/cashier/main"

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->c:Ljava/lang/String;

    :goto_2
    iput-object v5, v1, Lcom/alipay/android/app/logic/b/a/b;->d:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/plugin/b;->getExtractData()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->e:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/android/app/logic/b/a/b;->f:Ljava/lang/String;

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "external_info"

    invoke-virtual {v2, v3, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "user_id"

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v3, ""

    iput-object v3, v1, Lcom/alipay/android/app/logic/b/a/b;->g:Ljava/lang/String;

    const-string/jumbo v3, "secData"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "secData"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->g:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/plugin/b;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/plugin/b;->getTrId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->j:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->k:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->l:Ljava/lang/String;

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/app/plugin/b;->getCertsn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "certsn"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/sys/a;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "certpay"

    invoke-virtual {v2, v3, v7}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    :cond_4
    const-string/jumbo v3, "utdid"

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/sys/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->l:Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/android/app/logic/b/a/b;->m:Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/android/app/logic/b/a/b;->n:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/sys/a;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "1"

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->o:Ljava/lang/String;

    :cond_5
    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/k;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/k;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->s:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/plugin/d;->getBirdParamsVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->t:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->u:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/app/plugin/b;->getApdidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "phonecashiermsp"

    const-string/jumbo v4, "RpcRequestDecorator.getFirstRequestParamsString"

    const-string/jumbo v5, "getApdidToken end msms"

    invoke-static {v8, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-gt v2, v3, :cond_d

    :cond_6
    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v2

    invoke-interface {v2, v6, v8}, Lcom/alipay/android/app/k;->b(ZI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->w:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v2

    invoke-interface {v2, v6, v8}, Lcom/alipay/android/app/k;->c(ZI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->r:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->x:Ljava/lang/String;

    :goto_4
    return-object v1

    :cond_7
    const-string/jumbo v3, "com.alipay.weibopay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v2, "2"

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "com.alipay.taobaopay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v2, "3"

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v3, "com.alipay.taobaopay.pad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "7"

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "biz_type=\"setting\""

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "/setting/list"

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->c:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->c:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v2

    invoke-interface {v2, v6, v7}, Lcom/alipay/android/app/k;->b(ZI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->w:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v2

    invoke-interface {v2, v6, v7}, Lcom/alipay/android/app/k;->c(ZI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->r:Ljava/lang/String;

    goto/16 :goto_3

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/app/logic/b/a/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->v()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/k;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/d/c/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->v:Ljava/lang/String;

    :cond_f
    iget-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "de"

    const-string/jumbo v2, "cm_mqp_uac"

    const-string/jumbo v3, ""

    invoke-static {v0, v2, v3}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/d;->getBirdParamsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->t:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/android/app/trans/config/a;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->s:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/android/app/logic/b/a/b;->l:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/app/logic/b/a/b;->u:Ljava/lang/String;

    goto/16 :goto_4
.end method
