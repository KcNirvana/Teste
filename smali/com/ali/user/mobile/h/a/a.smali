.class public Lcom/ali/user/mobile/h/a/a;
.super Lcom/ali/user/mobile/h/a;
.source "UserLoginServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/h/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/h/a",
        "<",
        "Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;",
        ">;",
        "Lcom/ali/user/mobile/h/b;"
    }
.end annotation


# instance fields
.field private final c:Lcom/ali/user/mobile/info/AppInfo;

.field private final d:Lcom/ali/user/mobile/info/e;

.field private final e:Lcom/ali/user/mobile/info/f;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/h/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/h/a/a;->d:Lcom/ali/user/mobile/info/e;

    invoke-static {p1}, Lcom/ali/user/mobile/info/f;->a(Landroid/content/Context;)Lcom/ali/user/mobile/info/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/h/a/a;->e:Lcom/ali/user/mobile/info/f;

    invoke-direct {p0}, Lcom/ali/user/mobile/h/a/a;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;

    invoke-direct {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;-><init>()V

    iput-object p1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->key:Ljava/lang/String;

    iput-object p2, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->value:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;
    .locals 1

    const-string/jumbo v0, "taobao"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->taobao:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;->alipay:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    goto :goto_0
.end method

.method private a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;
    .locals 5

    new-instance v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;

    invoke-direct {v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;-><init>()V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->loginId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->loginPwd:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginPwd:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->tid:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->tid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->tid:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ttid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->accessPoint:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->accessPoint:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->apdid:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->apdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appKey:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->deviceId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->deviceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->cellId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->cellId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->channel:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->channel:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->location:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientPostion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->clientType:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->clientType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->alipayEnvJson:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->alipayEnvJson:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->taobaoEnvJson:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->taobaoEnvJson:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->IMEI:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imei:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->IMSI:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->imsi:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->isPrisonBreak:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->isPrisonBreak:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->lacId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->lacId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->checkCodeId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCodeId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->checkCode:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->checkCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->mobileBrand:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileBrand:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->mobileModel:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->mobileModel:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->sdkVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->sdkVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->productId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->productVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->productVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->scene:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->scene:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->token:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->token:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->signData:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->signData:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->ssoToken:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->ssoToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->systemType:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->systemVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->systemVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->umidToken:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->umidToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->userAgent:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->userAgent:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->utdid:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->utdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->mac:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiMac:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->wifiNodeName:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->wifiNodeName:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->loginType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/h/a/a;->a(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginType;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->validateTpye:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/h/a/a;->b(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    :try_start_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->screenHigh:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenHigh:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->screenWidth:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->screenWidth:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->externParams:Ljava/util/List;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->externParams:Ljava/util/List;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/h/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserLoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appData:Ljava/util/List;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->appData:Ljava/util/List;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/h/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    return-object v2
.end method

.method private a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;
    .locals 5

    new-instance v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-direct {v1}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;-><init>()V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->success:Z

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->msg:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->token:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->token:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->signData:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->signData:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->ssoToken:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->ssoToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->scene:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->scene:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->hid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->hid:J

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->userId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoUserId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->taobaoUserId:J

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->taobaoNick:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->taobaoNick:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->headImg:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->headImg:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->alipayLoginId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->alipayLoginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->tbLoginId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->tbLoginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->h5Url:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->checkCodeId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->checkCodeUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->checkCodeUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->resultData:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->data:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v2, "sessionId"

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->extMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->key:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->value:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private a(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "validateTpye"

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "MTBIZ_LOGIN"

    const-string/jumbo v2, "PASSWORD_LOGIN"

    iget-object v3, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/ali/user/mobile/e/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/g/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    move-result-object v0

    iget-object v1, p2, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    iget-object v0, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/g/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->loginPwd:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserLoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "UserLoginServiceImpl"

    const-string/jumbo v2, "\u5bc6\u7801\u52a0\u5bc6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;)V
    .locals 6

    :try_start_0
    const-string/jumbo v2, "login"

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;->validateTpye:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-virtual {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-nez p2, :cond_1

    const-string/jumbo v0, ""

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {v2, v3, v4, v1, v0}, Lcom/ali/user/mobile/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->userId:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "200"

    iget-object v5, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "1000"

    iget-object v5, p2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserLoginServiceImpl"

    const-string/jumbo v2, "processEdgeAfterLogin"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;

    invoke-direct {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;-><init>()V

    const-string/jumbo v1, "isPrisonBreak"

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->key:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->value:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;

    invoke-direct {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;-><init>()V

    const-string/jumbo v1, "mobileModel"

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->key:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/b;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->value:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;

    invoke-direct {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;-><init>()V

    const-string/jumbo v1, "isTrojan"

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->key:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->value:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;

    invoke-direct {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;-><init>()V

    const-string/jumbo v1, "currentOperateMobile"

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->key:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/ExternParams;->value:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserLoginServiceImpl"

    const-string/jumbo v2, "login-supply login getSecurityParams error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private b(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsndpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    goto :goto_0
.end method

.method private b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/h/a/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;)V
    .locals 3

    :try_start_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->externParams:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->externParams:Ljava/util/Map;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->externParams:Ljava/util/Map;

    const-string/jumbo v1, "isPrisonBreak"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->externParams:Ljava/util/Map;

    const-string/jumbo v1, "mobileModel"

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->externParams:Ljava/util/Map;

    const-string/jumbo v1, "isTrojan"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->externParams:Ljava/util/Map;

    const-string/jumbo v1, "currentOperateMobile"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserLoginServiceImpl"

    const-string/jumbo v2, "login-supply six getSecurityParams error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c()Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->d()Lcom/alipay/android/phone/inside/commonbiz/b/a/b;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->lacId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_2
    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->cellId:Ljava/lang/String;

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->lacId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->cellId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private c()Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v1

    const-class v0, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/ali/user/mobile/h/a/a;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/mrpc/core/x;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string/jumbo v0, "com.ali.user.mobile.info.AppInfo"

    const-string/jumbo v2, "getInstance"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "getApdid"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "apdid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v0, "aliusergw"

    const-string/jumbo v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "^([a-zA-Z0-9_\\.\\-\\+])+\\@(([a-zA-Z0-9\\-])+\\.)+[a-zA-Z0-9]{2,20}$|^\\d{11}$|^([0-9])+\\-([0-9])+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UserLoginServiceImpl"

    const-string/jumbo v2, "%s match the regex, add to header"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "loginid"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UserLoginServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "UserLoginServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v2, "UserLoginServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private c(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)V
    .locals 1

    invoke-static {}, Lcom/ali/user/mobile/a/a;->e()Lcom/ali/user/mobile/login/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/a/a;->e()Lcom/ali/user/mobile/login/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/login/a/a;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)V

    :cond_0
    return-void
.end method

.method private d()Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v1

    const-class v0, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/ali/user/mobile/h/a/a;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/mrpc/core/x;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->b()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/mrpc/core/x;->a(Z)V

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;
    .locals 6

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v1

    const-class v0, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/x;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/h/a/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/mrpc/core/x;->a(Ljava/util/Map;)V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->b()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/mrpc/core/x;->a(Z)V

    const-string/jumbo v1, "UserLoginServiceImpl"

    const-string/jumbo v2, "if this loginPb request resetCookie:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/ali/user/mobile/a/a;->b()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTidInfo()Lcom/ali/user/mobile/info/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->tid:Ljava/lang/String;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "vimsi"

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "vimei"

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspImsi"

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspImei"

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspTid"

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "mspClientKey"

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "walletTid"

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "walletClientKey"

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserLoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withpwd"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withchecktoken"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withchecktoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withface"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withface:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withmsg"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withlogintoken"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withlogintoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "afterreg"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->afterreg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withsso"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withonekeytoken"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withonekeytoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withsndmsg"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsndmsg:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withtbsso"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withtbsso:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withsndpwd"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withsndpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withopenauthtoken"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withopenauthtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->f:Ljava/util/Map;

    const-string/jumbo v1, "withauthtoken"

    sget-object v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;->withauthtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginWthPwd;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;
    .locals 4

    new-instance v1, Lcom/ali/user/mobile/e/j;

    const-string/jumbo v0, "UC-LOG-150512-T01"

    const-string/jumbo v2, "supplySimplePassword"

    invoke-direct {v1, v0, v2}, Lcom/ali/user/mobile/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->a()Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.login.supplysimplepass"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/h/a/a;->b(Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/h/a/a;->c()Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;->supplySimplePassword(Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    const-string/jumbo v3, "SupplyPassGwRes=null"

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget-object v3, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwReq;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->b(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->c()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/SupplyPassGwRes;->token:Ljava/lang/String;

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

.method public a(Lcom/ali/user/mobile/login/MsgLoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;
    .locals 4

    new-instance v1, Lcom/ali/user/mobile/e/j;

    const-string/jumbo v0, "UC-LOG-150512-T01"

    const-string/jumbo v2, "initMsgLogin"

    invoke-direct {v1, v0, v2}, Lcom/ali/user/mobile/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->a()Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.unifyLogin.sendMsg"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    :try_start_0
    new-instance v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;

    invoke-direct {v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->apdid:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getDeviceKeySet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->devKeySet:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/MsgLoginParam;->envJson:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->envJson:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/MsgLoginParam;->loginId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->loginId:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->productId:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->productVersion:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->sdkVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/MsgLoginParam;->verifyId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->securityId:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->umidtoken:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->utdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/MsgLoginParam;->token:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->token:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTidInfo()Lcom/ali/user/mobile/info/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;->tid:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;->initMsgLogin(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGReqPb;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    const-string/jumbo v3, "LoginSendMSGResPb=null"

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->c()V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/LoginSendMSGResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

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

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;
    .locals 4

    new-instance v1, Lcom/ali/user/mobile/e/j;

    const-string/jumbo v0, "UC-LOG-150512-T01"

    const-string/jumbo v2, "supplyLoginPwd"

    invoke-direct {v1, v0, v2}, Lcom/ali/user/mobile/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->a()Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v2, "ali.user.gw.unifyLogin.supplyLoginPwd"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    :try_start_0
    new-instance v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;

    invoke-direct {v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;-><init>()V

    iput-object p1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->loginId:Ljava/lang/String;

    iput-object p2, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->scene:Ljava/lang/String;

    iput-object p3, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->queryPassword:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->apdid:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getDeviceKeySet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->devKeySet:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productId:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->productVersion:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->sdkVersion:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->umidtoken:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->utdid:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTidInfo()Lcom/ali/user/mobile/info/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->tid:Ljava/lang/String;

    :cond_0
    iget-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    :cond_1
    iget-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;->externParams:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/h/a/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;->supplyLoginPwd(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdReqPb;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    const-string/jumbo v3, "SupplyLoginPwdResPb=null"

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->c()V

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/SupplyLoginPwdResPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

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

.method public a(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;
    .locals 2

    invoke-direct {p0}, Lcom/ali/user/mobile/h/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/h/a/a;->c(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/h/a/a;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->success:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/h/a/a;->a(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/h/a/a;->b(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;
    .locals 4

    new-instance v2, Lcom/ali/user/mobile/e/j;

    const-string/jumbo v0, "UC-LOG-150512-T01"

    const-string/jumbo v1, "unifyLogin"

    invoke-direct {v2, v0, v1}, Lcom/ali/user/mobile/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->a()Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v1, "ali.user.gw.unifyLogin"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v0

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/j;->c(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v1, "loginType"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v1, "validateTpye"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    const-string/jumbo v1, "verifyId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/h/a/a;->d(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;

    move-result-object v0

    invoke-direct {p0}, Lcom/ali/user/mobile/h/a/a;->d()Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;->unifyLogin(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v1

    const-string/jumbo v3, "UnifyLoginRes=null"

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v1

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/e/j;->b(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->c()V

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v1

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v1

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/e/j;->b(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->c()V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/j;->a(Lcom/ali/user/mobile/e/j;Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->c()V

    throw v0
.end method

.method public c(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;
    .locals 5

    new-instance v2, Lcom/ali/user/mobile/e/j;

    const-string/jumbo v0, "UC-LOG-150512-T01"

    const-string/jumbo v1, "unifyLoginPb"

    invoke-direct {v2, v0, v1}, Lcom/ali/user/mobile/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->a()Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v1, "ali.user.gw.unifyLoginPb"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v0

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/j;->c(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v1, "loginType"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v1, "validateTpye"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "verifyId"

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    const-string/jumbo v3, "verifyId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginParam;->monitorParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/h/a/a;->d(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/h/a/a;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;

    move-result-object v0

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/h/a/a;->d(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/rpc/facade/UnifyLoginFacade;->unifyLoginPb(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v3

    const-string/jumbo v4, "UnifyLoginResPb=null"

    invoke-virtual {v3, v4}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v3

    iget-object v4, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ali/user/mobile/e/j;->b(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/e/j;->c()V

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/h/a/a;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReqPb;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;)V

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v3

    iget-object v4, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v3

    iget-object v4, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginResPb;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ali/user/mobile/e/j;->b(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/e/j;->c()V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/j;->a(Lcom/ali/user/mobile/e/j;Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->c()V

    throw v0
.end method

.method public d(Lcom/ali/user/mobile/login/LoginParam;)Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;
    .locals 7

    new-instance v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;

    invoke-direct {v1}, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/ali/user/mobile/h/a/a;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;Lcom/ali/user/mobile/login/LoginParam;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a()Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->location:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->e:Lcom/ali/user/mobile/info/f;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->accessPoint:Ljava/lang/String;

    const-string/jumbo v0, "ALIPAY"

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    iget-object v2, p0, Lcom/ali/user/mobile/h/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->deviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/h/a/a;->b(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)V

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->channel:Ljava/lang/String;

    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->clientType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->alipayEnvJson:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->alipayEnvJson:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->taobaoEnvJson:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->taobaoEnvJson:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->d:Lcom/ali/user/mobile/info/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->IMEI:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->d:Lcom/ali/user/mobile/info/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->IMSI:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->isPrisonBreak:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->smsCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->checkCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->loginType:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->mobileBrand:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->mobileModel:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->sdkVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->productId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->productVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->token:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->ssoToken:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->ssoToken:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ali/user/mobile/h/a/a;->d:Lcom/ali/user/mobile/info/e;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/e;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->screenHigh:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ali/user/mobile/h/a/a;->d:Lcom/ali/user/mobile/info/e;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/e;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->screenWidth:Ljava/lang/String;

    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->systemType:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->systemVersion:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->userAgent:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->d:Lcom/ali/user/mobile/info/e;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->utdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->validateTpye:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->e:Lcom/ali/user/mobile/info/f;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/f;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->mac:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->e:Lcom/ali/user/mobile/info/f;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->wifiNodeName:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    :cond_0
    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    const-string/jumbo v2, "devKeySet"

    iget-object v3, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getDeviceKeySet()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    const-string/jumbo v2, "netType"

    iget-object v3, p0, Lcom/ali/user/mobile/h/a/a;->e:Lcom/ali/user/mobile/info/f;

    iget-object v4, p0, Lcom/ali/user/mobile/h/a/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/ali/user/mobile/info/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    const-string/jumbo v2, "isTrojan"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    const-string/jumbo v2, "currentOperateMobile"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    const-string/jumbo v2, "edgeData"

    const-string/jumbo v3, "login"

    iget-object v4, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    iget-object v5, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v3, v4, v5, v6}, Lcom/ali/user/mobile/util/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/h/a/a;->c:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    iput-object v2, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->umidToken:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iput-object v2, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->apdid:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    const-string/jumbo v2, "apdidDowngrade"

    const-string/jumbo v3, "Y"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "clientId"

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/b/b;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "sourceId"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "deviceToken"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "osVersion"

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/b/b;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "terminalName"

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/b/b;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->appData:Ljava/util/Map;

    const-string/jumbo v2, "loginWthPwd"

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/h/a/a;->c(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)V

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/h/a/a;->d(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;)V

    return-object v1

    :cond_2
    const-string/jumbo v2, "%s;%s;%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UserLoginServiceImpl"

    const-string/jumbo v3, "unifylogin get security param error"

    invoke-static {v2, v3, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, v1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "apdidDowngrade"

    iget-object v4, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->clientKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "Y"

    :goto_3
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v0, "N"

    goto :goto_3
.end method
