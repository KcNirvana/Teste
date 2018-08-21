.class public Lcom/alipay/android/barcode/rpc/a;
.super Ljava/lang/Object;
.source "BarcodePayRequest.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/barcode/rpc/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/barcode/rpc/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/alipay/android/barcode/rpc/QueryBuyerRes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v1, Lcom/alipay/android/barcode/rpc/QueryBuyerReq;

    invoke-direct {v1}, Lcom/alipay/android/barcode/rpc/QueryBuyerReq;-><init>()V

    iput-object p0, v1, Lcom/alipay/android/barcode/rpc/QueryBuyerReq;->dynamicId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/barcode/rpc/QueryBuyerReq;->userId:Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/android/barcode/rpc/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/barcode/rpc/QueryBuyerReq;->extInfos:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v2, Lcom/alipay/android/barcode/rpc/BarcodePayRpcFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/barcode/rpc/BarcodePayRpcFacade;

    invoke-interface {v0, v1}, Lcom/alipay/android/barcode/rpc/BarcodePayRpcFacade;->queryPayResult(Lcom/alipay/android/barcode/rpc/QueryBuyerReq;)Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;->toQueryBuyerRes()Lcom/alipay/android/barcode/rpc/QueryBuyerRes;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "CHANNEL_INDEX"

    invoke-static {p0}, Lcom/alipay/android/barcode/rpc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/alipay/mobile/common/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a()Lcom/alipay/android/phone/inside/barcode/gen/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/inside/barcode/gen/a;->b()Lcom/alipay/android/phone/inside/barcode/gen/model/b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/alipay/android/phone/inside/barcode/gen/model/b;->b:Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alipay/android/phone/inside/barcode/gen/model/b;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v2, Lcom/alipay/android/phone/inside/barcode/gen/model/b;->b:Lcom/alipay/android/phone/inside/barcode/gen/model/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/barcode/gen/model/a;->b()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
