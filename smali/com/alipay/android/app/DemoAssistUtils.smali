.class public Lcom/alipay/android/app/DemoAssistUtils;
.super Ljava/lang/Object;
.source "DemoAssistUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAPIName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "com.alipay.quickpay"

    goto :goto_0
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/pay/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getAPPKey()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApDid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tid"

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "utdid"

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alipay/android/app/helper/a;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "10.6.10"

    return-object v0
.end method

.method public getBLInit(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v3, v4, v3, v1}, Lcom/alipay/android/app/hardwarepay/c;->a(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, p1, v3, v2}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getCssMD5()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getFPInit(Landroid/content/Context;)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v4, v3, v5, v1}, Lcom/alipay/android/app/hardwarepay/c;->a(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v5, v2}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public getFormCssMD5()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getMspPropertiesList(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "msp"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->h(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v2
.end method

.method public getNameSpace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.alipay.mobilecashier"

    return-object v0
.end method

.method public getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/sys/a;->e()Lcom/alipay/android/app/sys/NetConnectionType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/NetConnectionType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/NetConnectionType;->getCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewClientKey()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/f/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKEnvDebugLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mini_debuglog"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKEnvHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mini_http_url"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKEnvPre(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mini_env_pre"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/DemoAssistUtils;->isSDK()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/app/pay/a;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSupportFP(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTDid()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/k;->a(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initMsp(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/app/plugin/b;->loadProperties(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/pay/a;->h:Z

    return-void
.end method

.method public isDebug()Z
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/k;->b()Z

    move-result v0

    return v0
.end method

.method public isSDK()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/android/app/pay/a;->u:Z

    return v0
.end method

.method public logSwitch()Z
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/k;->b()Z

    move-result v0

    return v0
.end method

.method public setJsonPath(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/alipay/android/app/pay/a;->a:Ljava/lang/String;

    return-void
.end method

.method public setRequestManager(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/hardwarepay/base/n;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/hardwarepay/base/n;->c:I

    return-void
.end method

.method public setServerHttpUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
