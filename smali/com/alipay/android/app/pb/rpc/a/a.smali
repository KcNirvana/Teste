.class public Lcom/alipay/android/app/pb/rpc/a/a;
.super Ljava/lang/Object;
.source "Pbv1DataRequest.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "Msp-Param"

    const-string/jumbo v0, "mspParam"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;

    invoke-direct {v3}, Lcom/alipay/android/app/pb/rpc/v1/MspReq;-><init>()V

    const-string/jumbo v0, "namespace"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->api_nsp:Ljava/lang/String;

    const-string/jumbo v0, "api_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->api_nm:Ljava/lang/String;

    const-string/jumbo v0, "params"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->params:Ljava/lang/String;

    const-string/jumbo v0, "api_version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->api_ver:Ljava/lang/String;

    const-string/jumbo v0, "auth_key"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->auth_key:Ljava/lang/String;

    const-string/jumbo v0, "tplVersion"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->ver:Ljava/lang/String;

    const-string/jumbo v0, "user_agent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->ua:Ljava/lang/String;

    const-string/jumbo v0, "session"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->session:Ljava/lang/String;

    const-string/jumbo v0, "tid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->tid:Ljava/lang/String;

    const-string/jumbo v0, "imei"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->imei:Ljava/lang/String;

    const-string/jumbo v0, "imsi"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/android/app/pb/rpc/v1/MspReq;->imsi:Ljava/lang/String;

    const-string/jumbo v0, ""

    const-string/jumbo v4, "Pbv1RequestHelper::requestMspData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MspReq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v0, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/alipay/android/app/pb/rpc/MspDispatcherService;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/pb/rpc/MspDispatcherService;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/x;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/android/phone/mrpc/core/x;->a(Ljava/util/Map;)V

    const-string/jumbo v4, "alipay.security.security.dispatch"

    const-string/jumbo v1, "dispatchtype"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Lcom/alipay/android/app/pb/rpc/MspDispatcherService;->dispatchSecurityV1(Lcom/alipay/android/app/pb/rpc/v1/MspReq;)Lcom/alipay/android/app/pb/rpc/v1/MspRes;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string/jumbo v0, ""

    const-string/jumbo v3, "Pbv1RequestHelper::requestMspData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MspRes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v0, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/alipay/android/phone/mrpc/core/x;->a()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "Msp-Param"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/app/pb/rpc/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "namespace"

    iget-object v3, v1, Lcom/alipay/android/app/pb/rpc/v1/MspRes;->api_nsp:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "api_name"

    iget-object v3, v1, Lcom/alipay/android/app/pb/rpc/v1/MspRes;->api_nm:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "api_version"

    iget-object v3, v1, Lcom/alipay/android/app/pb/rpc/v1/MspRes;->api_ver:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "code"

    iget-object v3, v1, Lcom/alipay/android/app/pb/rpc/v1/MspRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "params"

    iget-object v3, v1, Lcom/alipay/android/app/pb/rpc/v1/MspRes;->params:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "mspParam"

    sget-object v3, Lcom/alipay/android/app/pb/rpc/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "err_msg"

    iget-object v1, v1, Lcom/alipay/android/app/pb/rpc/v1/MspRes;->err_msg:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Pbv1RequestHelper::requestMspData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resultMap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string/jumbo v4, "alipay.msp.cashier.dispatch.logincheck"

    const-string/jumbo v1, "dispatchtype"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v3}, Lcom/alipay/android/app/pb/rpc/MspDispatcherService;->dispatchLoginV1(Lcom/alipay/android/app/pb/rpc/v1/MspReq;)Lcom/alipay/android/app/pb/rpc/v1/MspRes;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    invoke-interface {v0, v3}, Lcom/alipay/android/app/pb/rpc/MspDispatcherService;->dispatchV1(Lcom/alipay/android/app/pb/rpc/v1/MspReq;)Lcom/alipay/android/app/pb/rpc/v1/MspRes;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method
