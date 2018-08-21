.class public Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;
.super Ljava/lang/Object;
.source "ScanCodeV2Service.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/phone/inside/framework/service/a",
        "<",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final scene:Ljava/lang/String; = "alipay-inside-sdk"

.field private static final sceneChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;->sceneChannelId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private analysisRes(Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result"

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;->toJSONString(Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildReq(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;
    .locals 7

    new-instance v1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;

    invoke-direct {v1}, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qrcode"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-object p1, v1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->paiType:Ljava/lang/String;

    new-instance v2, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;-><init>()V

    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3, p2}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->decodeData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    new-instance v2, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v4

    const-string/jumbo v5, "productId"

    invoke-virtual {v3}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "productVersion"

    invoke-virtual {v3}, Lcom/alipay/mobile/common/b/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string/jumbo v0, "codecQrCode"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_alipay-inside-sdk_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "productChannel"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clientId"

    invoke-virtual {v4}, Lcom/alipay/mobile/common/b/b;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->productContext:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    new-instance v2, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;-><init>()V

    const-string/jumbo v0, "scene"

    const-string/jumbo v3, "alipay-inside-sdk"

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sceneChannelId"

    sget-object v3, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;->sceneChannelId:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a()Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v4, "accuracy"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "altitude"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "latitude"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "longitude"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "time"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "lbsInfo"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object v2, v1, Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;->extData:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    return-object v1

    :cond_1
    const-string/jumbo v0, "codecBarCode"

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v4

    const-string/jumbo v5, "inside"

    invoke-interface {v4, v5, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private toJSONString(Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;)Ljava/lang/String;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "success"

    iget-object v2, p1, Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;->success:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "resultCode"

    iget-object v2, p1, Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "memo"

    iget-object v2, p1, Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;->memo:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "routeHasRisk"

    iget-object v2, p1, Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;->routeHasRisk:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "routeSupport"

    iget-object v2, p1, Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;->routeSupport:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;->supportParams:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "supportParams"

    iget-object v2, p1, Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;->supportParams:Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;

    invoke-virtual {v2}, Lcom/alipay/android/phone/inside/scan/rpc/req/MapStringString;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p1, Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;->recommendChannels:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "recommendChannels"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;->recommendChannels:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v2

    const-string/jumbo v3, "scan"

    const-string/jumbo v4, "ParseRouteResEx"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public start(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public start(Lcom/alipay/android/phone/inside/framework/service/b;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/inside/framework/service/b",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;->start(Lcom/alipay/android/phone/inside/framework/service/b;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic start(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;->start(Landroid/os/Bundle;)V

    return-void
.end method

.method public startForResult(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "codeType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;->buildReq(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v2, Lcom/alipay/android/code/b;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/code/b;

    invoke-interface {v0, v1}, Lcom/alipay/android/code/b;->a(Lcom/alipay/android/phone/inside/scan/rpc/req/ConsultRoutePbReqPB;)Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;->analysisRes(Lcom/alipay/android/phone/inside/scan/rpc/res/ConsultRoutePbResPB;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startForResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/inside/scan/service/ScanCodeV2Service;->startForResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
