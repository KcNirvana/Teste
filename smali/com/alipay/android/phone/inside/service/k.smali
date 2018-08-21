.class Lcom/alipay/android/phone/inside/service/k;
.super Ljava/lang/Object;
.source "InsideOperationService.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/a/a;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/inside/service/InsideOperationService;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/k;->a:Lcom/alipay/android/phone/inside/service/InsideOperationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/k;->a:Lcom/alipay/android/phone/inside/service/InsideOperationService;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->access$000(Lcom/alipay/android/phone/inside/service/InsideOperationService;)Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/android/phone/inside/model/req/BaseModel;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->checkAlipayWalletStatus(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/model/ActionEnum;->CHECK_ALIPAY_WALLET_STATUS:Lcom/alipay/android/phone/inside/model/ActionEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
