.class public Lcom/ali/user/mobile/register/c/g;
.super Ljava/lang/Object;
.source "RPCStore.java"

# interfaces
.implements Lcom/ali/user/mobile/register/c/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;
    .locals 1

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;-><init>()V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/c/g;->d(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/c/g;->e(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/c/g;->f(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/c/g;->c(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/c/g;->b(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V

    return-object v0
.end method

.method private a(Lcom/ali/user/mobile/register/a/b;Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 3

    invoke-static {}, Lcom/ali/user/mobile/register/b/g;->a()Lcom/ali/user/mobile/register/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;

    if-nez v1, :cond_1

    :cond_0
    iput-object p2, p1, Lcom/ali/user/mobile/register/a/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcException;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/alipay/android/phone/mrpc/core/RpcException;->isClientError()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rpcException.isClientError, show network guide"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ali/user/mobile/register/c/i;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/register/c/i;-><init>(Lcom/ali/user/mobile/register/c/g;Lcom/ali/user/mobile/register/b/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iput-object p2, p1, Lcom/ali/user/mobile/register/a/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcException;

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V
    .locals 5

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->externParams:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->externParams:Ljava/util/List;

    :cond_0
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;-><init>()V

    const-string/jumbo v1, "edgeData"

    iput-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;->key:Ljava/lang/String;

    const-string/jumbo v1, "register"

    const-string/jumbo v2, ""

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->longonId:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/ali/user/mobile/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;->value:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->externParams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;Lcom/ali/user/mobile/info/AppInfo;)V
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Lcom/ali/user/mobile/info/AppInfo;->getTidInfo()Lcom/ali/user/mobile/info/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->tid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Reg_RPCStore"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/register/a/b;)V
    .locals 3

    iget-object v0, p2, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    iput-object v0, p3, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/Account;->getAccountForRPC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->longonId:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/Account;->getAreaCodeForRPC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->countryCode:Ljava/lang/String;

    iget-object v0, p3, Lcom/ali/user/mobile/register/a/b;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->token:Ljava/lang/String;

    iget-object v0, p3, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->registSceneCode:Ljava/lang/String;

    iget-object v0, p2, Lcom/ali/user/mobile/register/a/a;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->securityId:Ljava/lang/String;

    const-string/jumbo v0, "Reg_RPCStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "securityId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/ali/user/mobile/register/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerPreVerify"

    iget-object v1, p2, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/ali/user/mobile/register/a/a;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->rdsInfo:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/register/c/g;->a(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "verifySms"

    iget-object v1, p2, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/ali/user/mobile/register/a/a;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->smsCode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "sendSms"

    iget-object v1, p2, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "setLoginPassword"

    iget-object v1, p2, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/ali/user/mobile/register/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/ali/user/mobile/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->queryPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;)V
    .locals 10

    :try_start_0
    const-string/jumbo v1, "register"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->longonId:Ljava/lang/String;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/ali/user/mobile/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_1
    const-wide/16 v6, 0xc8

    iget-object v0, p2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Reg_RPCStore"

    const-string/jumbo v2, "processEdgeAfterRegister"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private b(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a()Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->clientPostion:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c()Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Reg_RPCStore"

    const-string/jumbo v1, "telephone is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v1, "%s;%s;%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->d()Lcom/alipay/android/phone/inside/commonbiz/b/a/b;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_2
    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->lacId:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_3
    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->cellId:Ljava/lang/String;

    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->lacId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->cellId:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private b(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;Lcom/ali/user/mobile/info/AppInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/ali/user/mobile/info/AppInfo;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->umidToken:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->apdId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private c(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/info/f;->a(Landroid/content/Context;)Lcom/ali/user/mobile/info/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/f;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->accessPoint:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->wifiMac:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->wifiNodeName:Ljava/lang/String;

    return-void
.end method

.method private d(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V
    .locals 1

    const-string/jumbo v0, "ALIPAY"

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->appId:Ljava/lang/String;

    const-string/jumbo v0, "android"

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->clientType:Ljava/lang/String;

    const-string/jumbo v0, "2.0.0.0"

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->sdkVersion:Ljava/lang/String;

    const-string/jumbo v0, "android"

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->systemType:Ljava/lang/String;

    return-void
.end method

.method private e(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->appKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->productVersion:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getChannel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->channel:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getDeviceKeySet()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->devKeySet:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/register/c/g;->b(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;Lcom/ali/user/mobile/info/AppInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/register/c/g;->a(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;Lcom/ali/user/mobile/info/AppInfo;)V

    return-void
.end method

.method private f(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->n()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->userAgent:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/e;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->utdid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/e;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->screenWidth:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/e;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->screenHigh:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->mobileBrand:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->mobileModel:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->systemVersion:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->isPrisonBreak:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->IMEI:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->IMSI:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->externParams:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->externParams:Ljava/util/List;

    :cond_0
    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;-><init>()V

    const-string/jumbo v1, "isTrojan"

    iput-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;->key:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;->value:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;-><init>()V

    const-string/jumbo v2, "currentOperateMobile"

    iput-object v2, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;->key:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExternKVParam;->value:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->externParams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->externParams:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)Lcom/ali/user/mobile/register/a/b;
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v1, "Reg_RPCStore"

    const-string/jumbo v2, "null state/account/simpleRequest"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    return-object p2

    :cond_1
    iput-object v0, p2, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iput-object v0, p2, Lcom/ali/user/mobile/register/a/b;->e:Lcom/alipay/android/phone/mrpc/core/RpcException;

    const-string/jumbo v0, "Reg_RPCStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "do rpc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/ali/user/mobile/register/a/a;->g:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {p3, v0}, Lcom/ali/user/mobile/base/BaseActivity;->showProgress(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/ali/user/mobile/register/b/g;->a()Lcom/ali/user/mobile/register/b/a;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ali/user/mobile/register/c/h;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/register/c/h;-><init>(Lcom/ali/user/mobile/register/c/g;Lcom/ali/user/mobile/register/b/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/mobile/register/c/g;->a()Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lcom/ali/user/mobile/register/c/g;->a(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/register/a/b;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/UserUnifyRegisterAllFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/UserUnifyRegisterAllFacade;

    invoke-interface {v0, v2}, Lcom/alipay/mobileapp/biz/rpc/unifyregister/UserUnifyRegisterAllFacade;->mobileUnifyRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    move-result-object v0

    iput-object v0, p2, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, p2, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    invoke-direct {p0, v2, v0}, Lcom/ali/user/mobile/register/c/g;->a(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;)V

    const-string/jumbo v3, ""

    iget-object v0, p2, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->registSceneCode:Ljava/lang/String;

    iput-object v0, p2, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    iget-object v0, p2, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    iput-object v0, p2, Lcom/ali/user/mobile/register/a/b;->f:Ljava/lang/String;

    iget-object v0, p2, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string/jumbo v0, "UC-REG-20161230-01"

    const-string/jumbo v1, "regRpc"

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllReqPb;->registSceneCode:Ljava/lang/String;

    sget-object v4, Lcom/ali/user/mobile/register/a/b;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "Reg_RPCStore"

    const-string/jumbo v1, "finally"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ali/user/mobile/base/BaseActivity;->dismissProgress()V

    :goto_1
    const-string/jumbo v0, "Reg_RPCStore"

    const-string/jumbo v1, "return"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_1
    const-string/jumbo v0, "Reg_RPCStore"

    invoke-static {v0, v6}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "UC-REG-20161230-01"

    const-string/jumbo v1, "regRpc"

    iget-object v2, p1, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ali/user/mobile/register/a/b;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, p2, v6}, Lcom/ali/user/mobile/register/c/g;->a(Lcom/ali/user/mobile/register/a/b;Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v0, "Reg_RPCStore"

    const-string/jumbo v1, "finally"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ali/user/mobile/base/BaseActivity;->dismissProgress()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "Reg_RPCStore"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v0, "Reg_RPCStore"

    const-string/jumbo v1, "finally"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ali/user/mobile/base/BaseActivity;->dismissProgress()V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "Reg_RPCStore"

    const-string/jumbo v2, "finally"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ali/user/mobile/base/BaseActivity;->dismissProgress()V

    throw v0
.end method
