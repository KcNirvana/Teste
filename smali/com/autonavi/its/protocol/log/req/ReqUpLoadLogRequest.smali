.class public Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqUpLoadLogRequest.java"

# interfaces
.implements Lcom/autonavi/its/protocol/log/chaos/ITaskReq;


# static fields
.field public static final BASE_LOG_DEVICE_KEY:Ljava/lang/String; = "device"

.field public static final BASE_LOG_IMEI_KEY:Ljava/lang/String; = "imei"

.field public static final BASE_LOG_KEY:Ljava/lang/String; = "baselog"

.field public static final BASE_LOG_MODEL_KEY:Ljava/lang/String; = "model"

.field public static final BASE_LOG_TIME_KEY:Ljava/lang/String; = "time"

.field public static final BASE_LOG_manu_KEY:Ljava/lang/String; = "manu"

.field public static final PACKAGE_LOG_KEY:Ljava/lang/String; = "pkglog"

.field public static final TYPE:Ljava/lang/String; = "ReqUpLoadLogRequest"


# instance fields
.field private result_response:Ljava/lang/String;

.field private uploadJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 4

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->uploadJson:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->uploadJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "pkglog"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "imei"

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/common/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "time"

    invoke-static {}, Lcom/autonavi/its/protocol/log/util/LogUtil;->getTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "manu"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->uploadJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "baselog"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyMQboQN8Q9ExCTMkMQvZnyf5hzL1y7atDiFf7joCPucnpeVeQkeKGgJEsnNuygPOrmNhntstO4NZp0ylZnnOEA/eKaqmOdro6V4k7XEWfpSebcDhGHBgC1vJloSXo6SOuTjcgYoINaZ7pOJExM8U+a/jx0xIoemmIxRLVzFEivjkLlRdQsB+4YSvrejETH7hFeu4ZDRxKRF/0SiT6Qj96kcc7iVPRsmFTzBSTibop8uTtPWGITz8JYCwYjIHlOJ7gGkYzRJf7ZL3rFYKYHSI9slP3QtkD3DLr2spKtH/ffXqU/nIgjxmfL4oI21CWRiMugf8PqFfyNp8YxVNMoRMxQIDAQAB"

    invoke-static {v2}, Lcom/autonavi/its/protocol/log/util/RSATool;->getPublicKeyFromString(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->uploadJson:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/its/protocol/log/util/RSATool;->encryptLargeData(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "amap_state"

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->result_response:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->setIsBusinessSuccess(Z)V

    return-void
.end method

.method public getDecoratedUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->getParamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 3
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getResult_response()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->result_response:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqUpLoadLogRequest"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://118.190.42.220/log"

    return-object v0
.end method
