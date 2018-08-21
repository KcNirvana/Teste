.class Lcom/alipay/android/app/pay/api/a;
.super Ljava/lang/Object;
.source "MspSdkEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/api/MspSdkEngine;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/api/MspSdkEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/api/a;->a:Lcom/alipay/android/app/pay/api/MspSdkEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;

    invoke-direct {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/pay/api/a;->a:Lcom/alipay/android/app/pay/api/MspSdkEngine;

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartService;->extract()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/pay/api/MspSdkEngine;->access$002(Lcom/alipay/android/app/pay/api/MspSdkEngine;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    const-string/jumbo v1, "MspSdkEngine::initializeExtractData1"

    iget-object v2, p0, Lcom/alipay/android/app/pay/api/a;->a:Lcom/alipay/android/app/pay/api/MspSdkEngine;

    invoke-static {v2}, Lcom/alipay/android/app/pay/api/MspSdkEngine;->access$000(Lcom/alipay/android/app/pay/api/MspSdkEngine;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "KcardServiceExtractEx"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
