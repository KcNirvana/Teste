.class public Lcom/alipay/android/code/a;
.super Ljava/lang/Object;
.source "CodeRouteRequest.java"


# static fields
.field private static final a:Ljava/lang/String;


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

    sput-object v0, Lcom/alipay/android/code/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/code/RouteRes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lcom/alipay/android/code/RouteCommandReq;

    invoke-direct {v1}, Lcom/alipay/android/code/RouteCommandReq;-><init>()V

    iput-object p0, v1, Lcom/alipay/android/code/RouteCommandReq;->paiType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/android/code/RouteCommandReq;->decodeData:Ljava/util/Map;

    iget-object v0, v1, Lcom/alipay/android/code/RouteCommandReq;->decodeData:Ljava/util/Map;

    const-string/jumbo v2, "code"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/android/code/RouteCommandReq;->extData:Ljava/util/Map;

    iget-object v0, v1, Lcom/alipay/android/code/RouteCommandReq;->extData:Ljava/util/Map;

    const-string/jumbo v2, "scene"

    const-string/jumbo v3, "alipay-inside-sdk"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/android/code/RouteCommandReq;->extData:Ljava/util/Map;

    const-string/jumbo v2, "sceneChannelId"

    sget-object v3, Lcom/alipay/android/code/a;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a()Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "accuracy"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "altitude"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "latitude"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "longitude"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "time"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/alipay/android/code/RouteCommandReq;->extData:Ljava/util/Map;

    const-string/jumbo v3, "lbsInfo"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v3

    const-string/jumbo v4, "productId"

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "productVersion"

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "productChannel"

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "clientId"

    invoke-virtual {v3}, Lcom/alipay/mobile/common/b/b;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Lcom/alipay/android/code/RouteCommandReq;->productContext:Ljava/util/Map;

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v2, Lcom/alipay/android/code/b;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/code/b;

    invoke-interface {v0, v1}, Lcom/alipay/android/code/b;->a(Lcom/alipay/android/code/RouteCommandReq;)Lcom/alipay/android/code/RouteRes;

    move-result-object v0

    return-object v0
.end method
