.class Lcom/alipay/android/phone/inside/service/u;
.super Ljava/lang/Object;
.source "InsideOperationServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/content/ServiceConnection;

.field final synthetic d:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/u;->d:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/service/u;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/phone/inside/service/u;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/alipay/android/phone/inside/service/u;->c:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "before bindService"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/u;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/service/u;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/u;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "end bindService"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
