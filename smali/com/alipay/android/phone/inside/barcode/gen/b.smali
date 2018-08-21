.class Lcom/alipay/android/phone/inside/barcode/gen/b;
.super Ljava/lang/Object;
.source "CodeConfigManager.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/phone/inside/framework/service/b",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/phone/inside/barcode/gen/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/barcode/gen/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/barcode/gen/b;->b:Lcom/alipay/android/phone/inside/barcode/gen/a;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/barcode/gen/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/barcode/gen/b;->b:Lcom/alipay/android/phone/inside/barcode/gen/a;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/barcode/gen/b;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/alipay/android/phone/inside/barcode/gen/a;->a(Lcom/alipay/android/phone/inside/barcode/gen/a;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/inside/barcode/gen/b;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v0

    const-string/jumbo v1, "barcode"

    const-string/jumbo v2, "UpdateDefaultCodeConfigEx"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
