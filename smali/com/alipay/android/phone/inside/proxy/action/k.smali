.class Lcom/alipay/android/phone/inside/proxy/action/k;
.super Ljava/lang/Object;
.source "PayAction.java"

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
.field final synthetic a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

.field final synthetic b:Lcom/alipay/android/phone/inside/proxy/action/j;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/proxy/action/j;Lcom/alipay/android/phone/inside/commonbiz/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->b:Lcom/alipay/android/phone/inside/proxy/action/j;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->b:Lcom/alipay/android/phone/inside/proxy/action/j;

    invoke-static {v1, p1}, Lcom/alipay/android/phone/inside/proxy/action/j;->a(Lcom/alipay/android/phone/inside/proxy/action/j;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->b:Lcom/alipay/android/phone/inside/proxy/action/j;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/proxy/action/j;->a(Lcom/alipay/android/phone/inside/proxy/action/j;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/k;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->b:Lcom/alipay/android/phone/inside/proxy/action/j;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/k;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/inside/proxy/action/j;->a(Lcom/alipay/android/phone/inside/proxy/action/j;Ljava/lang/Object;)V

    return-void
.end method
