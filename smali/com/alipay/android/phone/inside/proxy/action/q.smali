.class Lcom/alipay/android/phone/inside/proxy/action/q;
.super Ljava/lang/Object;
.source "SwitchChannelAction.java"

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

.field final synthetic b:Lcom/alipay/android/phone/inside/proxy/action/p;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/proxy/action/p;Lcom/alipay/android/phone/inside/commonbiz/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/proxy/action/q;->b:Lcom/alipay/android/phone/inside/proxy/action/p;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/proxy/action/q;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/q;->b:Lcom/alipay/android/phone/inside/proxy/action/p;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/inside/proxy/action/p;->a(Lcom/alipay/android/phone/inside/proxy/action/p;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/q;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/q;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/q;->b:Lcom/alipay/android/phone/inside/proxy/action/p;

    invoke-static {v1, p1}, Lcom/alipay/android/phone/inside/proxy/action/p;->b(Lcom/alipay/android/phone/inside/proxy/action/p;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/q;->b:Lcom/alipay/android/phone/inside/proxy/action/p;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/proxy/action/p;->a(Lcom/alipay/android/phone/inside/proxy/action/p;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/q;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    invoke-interface {v0, v1, p1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/q;->b:Lcom/alipay/android/phone/inside/proxy/action/p;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/proxy/action/p;->a(Lcom/alipay/android/phone/inside/proxy/action/p;)V

    return-void
.end method
