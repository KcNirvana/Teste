.class public Lcom/ali/user/mobile/h/a/b;
.super Lcom/ali/user/mobile/h/a;
.source "UserRegisterServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/h/a",
        "<",
        "Lcom/ali/user/mobile/rpc/facade/MobileRegFacade;",
        ">;",
        "Lcom/ali/user/mobile/h/c;"
    }
.end annotation


# instance fields
.field private final c:Lcom/ali/user/mobile/info/AppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/h/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/h/a/b;->c:Lcom/ali/user/mobile/info/AppInfo;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;
    .locals 5

    new-instance v1, Lcom/ali/user/mobile/e/j;

    const-string/jumbo v0, "UC-ZC-150512-T01"

    const-string/jumbo v2, "supplementV2"

    invoke-direct {v1, v0, v2}, Lcom/ali/user/mobile/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->a()Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.completeProcesserV2"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    :try_start_0
    new-instance v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;

    invoke-direct {v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;-><init>()V

    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->appId:Ljava/lang/String;

    iput-object p2, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->payPassword:Ljava/lang/String;

    iput-object p3, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->simplePassword:Ljava/lang/String;

    iput-object p1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->token:Ljava/lang/String;

    iput-object p4, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->rdsInfo:Ljava/lang/String;

    iput-object p5, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->wa:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/b;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->productVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/b;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->sdkVersion:Ljava/lang/String;

    iput-boolean p6, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->optionStatus:Z

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/h/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->appKey:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->productId:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->productVersion:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->IMEI:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->externParams:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->externParams:Ljava/util/Map;

    iget-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "isPrisonBreak"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "mobileModel"

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/b/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "isTrojan"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "currentOperateMobile"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/ali/user/mobile/h/a/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/rpc/facade/MobileRegFacade;->supplementV2(Lcom/ali/user/mobile/rpc/vo/mobilegw/register/SupplementReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    const-string/jumbo v3, "supplementV2Res=null"

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ali/user/mobile/e/j;->b(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->c()V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "supplementV2"

    const-string/jumbo v4, "reg-supply six error"

    invoke-static {v3, v4, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/j;->a(Lcom/ali/user/mobile/e/j;Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->c()V

    throw v0

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->resultStatus:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonRes;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->b(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->c()V
    :try_end_3
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public a()Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;
    .locals 4

    new-instance v1, Lcom/ali/user/mobile/e/j;

    const-string/jumbo v0, "UC-ZC-150512-T01"

    const-string/jumbo v2, "getCountyCode"

    invoke-direct {v1, v0, v2}, Lcom/ali/user/mobile/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->a()Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.register.countryCodeProcesser"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    :try_start_0
    new-instance v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;

    invoke-direct {v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;-><init>()V

    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;->apdId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/b;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;->productVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/b;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;->sdkVersion:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ali/user/mobile/h/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;->appKey:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;->productId:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;->productVersion:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;->IMEI:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/MobileRegFacade;

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/rpc/facade/MobileRegFacade;->getCountyCode(Lcom/ali/user/mobile/rpc/vo/mobilegw/GwCommonReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    const-string/jumbo v3, "RegMixRes=null"

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->c()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;->resultStatus:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/register/RegMixRes;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->b(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->c()V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/j;->a(Lcom/ali/user/mobile/e/j;Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->c()V

    throw v0
.end method
