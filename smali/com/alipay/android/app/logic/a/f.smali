.class public Lcom/alipay/android/app/logic/a/f;
.super Lcom/alipay/android/app/logic/a/a;
.source "FirstRequestDecorator.java"


# instance fields
.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/logic/a/a;-><init>()V

    const-string/jumbo v0, "partner=\"\"&extern_token=\"GZ00UU9M9BtHDxKTeWXXwFWcG6bHe1mobilegwGZ00\"&logon_id=\"15997894630\"&biz_type=\"setting\"&biz_sub_type=\"\"&app_name=\"alipay\"&user_id=2088102140781758&page_id=0"

    iput-object v0, p0, Lcom/alipay/android/app/logic/a/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/a/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/logic/a/a;-><init>(Lcom/alipay/android/app/logic/a/a;)V

    const-string/jumbo v0, "partner=\"\"&extern_token=\"GZ00UU9M9BtHDxKTeWXXwFWcG6bHe1mobilegwGZ00\"&logon_id=\"15997894630\"&biz_type=\"setting\"&biz_sub_type=\"\"&app_name=\"alipay\"&user_id=2088102140781758&page_id=0"

    iput-object v0, p0, Lcom/alipay/android/app/logic/a/f;->c:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/logic/a/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a([BLjava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v9, 0x1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/app/logic/a/f;->b:Lcom/alipay/android/app/trans/config/a;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/android/app/logic/a/f;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v3}, Lcom/alipay/android/app/trans/config/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "locLoginOnce"

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "tid"

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alipay/android/app/plugin/b;->getApdidToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-gt v3, v4, :cond_6

    :cond_1
    const-string/jumbo v3, "ua"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v6, v5}, Lcom/alipay/android/app/k;->a(ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v3, "decay"

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/android/app/plugin/b;->getExtractData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/sys/a;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "certpay"

    invoke-virtual {v2, v3, v9}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    :cond_2
    const-string/jumbo v3, "has_alipay"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/sys/a;->d(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    const-string/jumbo v3, "external_info"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "user_id"

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pa"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "extok"

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/android/app/plugin/b;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/app/plugin/d;->getBirdParamsVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x8

    const-string/jumbo v5, "phonecashiermsp"

    const-string/jumbo v6, "FirstRequestDecorator.todo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bpArgsError:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ex"

    const-string/jumbo v5, "bpArgsError"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v4, "lang"

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/app/plugin/b;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "bp"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "trid"

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/android/app/plugin/b;->getTrId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string/jumbo v4, "app_key"

    invoke-interface {v3}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/logic/a/f;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v4}, Lcom/alipay/android/app/trans/config/a;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/alipay/android/app/b/d/a;->n()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "trdfrom"

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v3, "utdid"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "new_client_key"

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/f/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "sina"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "payment_setting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v0, "type"

    const-string/jumbo v3, "cashier"

    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "method"

    const-string/jumbo v3, "main"

    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v0, "action"

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "gzip"

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/f;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v1}, Lcom/alipay/android/app/trans/config/a;->q()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "FirstRequestDecorator.todo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FirstRequest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v0, v1, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/f;->a:Lcom/alipay/android/app/logic/a/a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/f;->a:Lcom/alipay/android/app/logic/a/a;

    iget-object v1, p0, Lcom/alipay/android/app/logic/a/f;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/a/a;->a(Lcom/alipay/android/app/trans/config/a;)V

    iget-object v0, p0, Lcom/alipay/android/app/logic/a/f;->a:Lcom/alipay/android/app/logic/a/a;

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/logic/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    :goto_3
    return-object v0

    :cond_6
    const-string/jumbo v3, "ua"

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v4

    invoke-interface {v4, v6, v9}, Lcom/alipay/android/app/k;->a(ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "trdfrom"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v3, "setting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "type"

    const-string/jumbo v3, "setting"

    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "method"

    const-string/jumbo v3, "list"

    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "type"

    iget-object v3, p0, Lcom/alipay/android/app/logic/a/f;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v3}, Lcom/alipay/android/app/trans/config/a;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "method"

    iget-object v3, p0, Lcom/alipay/android/app/logic/a/f;->b:Lcom/alipay/android/app/trans/config/a;

    invoke-virtual {v3}, Lcom/alipay/android/app/trans/config/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_3
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
