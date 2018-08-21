.class Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;
.super Ljava/lang/Object;
.source "BarcodePlugin.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/barcode/BarcodePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanCodeService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/phone/inside/framework/service/a",
        "<",
        "Lorg/json/JSONObject;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/barcode/BarcodePlugin;


# direct methods
.method private constructor <init>(Lcom/alipay/android/barcode/BarcodePlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;->this$0:Lcom/alipay/android/barcode/BarcodePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/barcode/BarcodePlugin;Lcom/alipay/android/barcode/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;-><init>(Lcom/alipay/android/barcode/BarcodePlugin;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;->start(Lcom/alipay/android/phone/inside/framework/service/b;Lorg/json/JSONObject;)V

    return-void
.end method

.method public start(Lcom/alipay/android/phone/inside/framework/service/b;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/inside/framework/service/b",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;->startForResult(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic start(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;->start(Lorg/json/JSONObject;)V

    return-void
.end method

.method public start(Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startForResult(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x1

    const-string/jumbo v2, "codeType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/code/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/code/RouteRes;

    move-result-object v2

    iget-boolean v3, v2, Lcom/alipay/android/code/RouteRes;->success:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v2, "statusCode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :cond_1
    iget v3, v2, Lcom/alipay/android/code/RouteRes;->resultCode:I

    const/16 v4, 0x4e22

    if-ne v3, v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v2, v2, Lcom/alipay/android/code/RouteRes;->resultCode:I

    const v3, 0x9c41

    if-ne v2, v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public bridge synthetic startForResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/alipay/android/barcode/BarcodePlugin$ScanCodeService;->startForResult(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
