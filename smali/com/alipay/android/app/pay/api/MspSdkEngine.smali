.class public Lcom/alipay/android/app/pay/api/MspSdkEngine;
.super Ljava/lang/Object;
.source "MspSdkEngine.java"

# interfaces
.implements Lcom/alipay/android/app/plugin/b;


# instance fields
.field private mExtractData:Ljava/lang/String;

.field private mLoginHelper:Lcom/alipay/android/app/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mExtractData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/pay/api/MspSdkEngine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mExtractData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/pay/api/MspSdkEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mExtractData:Ljava/lang/String;

    return-object p1
.end method

.method private initializeExtractData()V
    .locals 3

    const-wide/16 v0, 0x3e8

    new-instance v2, Lcom/alipay/android/app/pay/api/a;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/pay/api/a;-><init>(Lcom/alipay/android/app/pay/api/MspSdkEngine;)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/d/b/a;->a(JLjava/lang/Runnable;)Z

    const/4 v0, 0x2

    const-string/jumbo v1, "MspSdkEngine::initializeExtractData2"

    iget-object v2, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mExtractData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAuthority(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkLoginStatus()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/api/MspSdkEngine;->clearCheckLoginStatus()V

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/e/a;

    invoke-direct {v0}, Lcom/alipay/android/app/e/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mLoginHelper:Lcom/alipay/android/app/e/a;

    iget-object v0, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mLoginHelper:Lcom/alipay/android/app/e/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/e/a;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cleanFpCache()V
    .locals 0

    return-void
.end method

.method public clearCheckLoginStatus()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mLoginHelper:Lcom/alipay/android/app/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mLoginHelper:Lcom/alipay/android/app/e/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/e/a;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mLoginHelper:Lcom/alipay/android/app/e/a;

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public destroyMsp()V
    .locals 0

    return-void
.end method

.method public faceAuth(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V
    .locals 0

    return-void
.end method

.method public getAlipayLocaleDes()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApdidToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getApdidToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertsn()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getExtractData()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mExtractData:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/app/pay/api/MspSdkEngine;->initializeExtractData()V

    iget-object v0, p0, Lcom/alipay/android/app/pay/api/MspSdkEngine;->mExtractData:Ljava/lang/String;

    return-object v0
.end method

.method public getInsideEnv(Z)Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "insideModel"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "insidePushKey"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "insideProductId"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "currentOperateMobile"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "isTrojan"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "isPrisonBreak"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "version"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "scene"

    const-string/jumbo v2, "INSIDEOUTPAY"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "inside"

    const-string/jumbo v3, "GetInsideEnvEx"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/c/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/c/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources(Landroid/app/Activity;)Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/c/b;->a()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/c/b;->a()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/api/MspSdkEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/c/b;->c()Lcom/alipay/android/app/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/c/b;->c()Lcom/alipay/android/app/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/c/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public hardwarePayOpt(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public initAuthToken()V
    .locals 0

    return-void
.end method

.method public loadProperties(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/alipay/android/app/pay/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public performanceBuilder(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public processScheme(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerCutPoint()V
    .locals 0

    return-void
.end method

.method public resetResource()V
    .locals 0

    return-void
.end method

.method public share(Landroid/app/Activity;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public userFeedBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public verifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V
    .locals 0

    return-void
.end method

.method public walletBehaviorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
