.class Lcom/alipay/android/phone/inside/proxy/action/c;
.super Ljava/lang/Object;
.source "AuthAction.java"

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
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/android/phone/inside/proxy/action/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/proxy/action/b;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/proxy/action/c;->b:Lcom/alipay/android/phone/inside/proxy/action/b;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/proxy/action/c;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "start_login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7ed3\u679c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/c;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/c;->b:Lcom/alipay/android/phone/inside/proxy/action/b;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/proxy/action/b;->a(Lcom/alipay/android/phone/inside/proxy/action/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "start_login"

    invoke-interface {v0, v1, p1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/c;->b:Lcom/alipay/android/phone/inside/proxy/action/b;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/proxy/action/b;->a(Lcom/alipay/android/phone/inside/proxy/action/b;)V

    return-void
.end method
