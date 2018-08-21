.class Lcom/alipay/android/phone/secauthenticator/kcart/a;
.super Ljava/lang/Object;
.source "KcartService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;J)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/a;->b:Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;

    iput-wide p2, p0, Lcom/alipay/android/phone/secauthenticator/kcart/a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/a;->b:Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;

    iget-wide v2, p0, Lcom/alipay/android/phone/secauthenticator/kcart/a;->a:J

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;->access$000(Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;J)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->getInstance(Landroid/content/Context;)Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    move-result-object v2

    const-string/jumbo v3, "pay"

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v1, v4}, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->getRiskResult(Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/edge/face/EdgeRiskResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alipay/edge/face/EdgeRiskResult;->sealedData:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "kcart"

    const-string/jumbo v3, "getEdgeRiskData call edge return null."

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v1, Lcom/alipay/edge/face/EdgeRiskResult;->sealedData:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "kcart"

    const-string/jumbo v3, "getEdgeRiskData base64 decode return null."

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "kcart"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/android/phone/secauthenticator/kcart/a;->a()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method
