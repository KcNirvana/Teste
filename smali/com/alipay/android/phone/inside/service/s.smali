.class Lcom/alipay/android/phone/inside/service/s;
.super Ljava/lang/Object;
.source "InsideOperationServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onAlipayServiceConnected"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$200(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {p2}, Lcom/alipay/android/phone/inside/a/c$a;->a(Landroid/os/IBinder;)Lcom/alipay/android/phone/inside/a/c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$302(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/c;)Lcom/alipay/android/phone/inside/a/c;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$300(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/c;

    move-result-object v0

    const-string/jumbo v2, "CodeService"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/android/phone/inside/a/c;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$500(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Landroid/os/IBinder;Z)V

    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/a/b$a;->a(Landroid/os/IBinder;)Lcom/alipay/android/phone/inside/a/b;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$402(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/b;)Lcom/alipay/android/phone/inside/a/b;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$400(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$600(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/d;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/inside/a/b;->a(Lcom/alipay/android/phone/inside/a/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$200(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "INVOKE_ALIPAY_SIGN_ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    sget-object v3, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INVOKE_ALIPAY_SIGN_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$702(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-class v3, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$200(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-class v2, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onAlipayServiceDisconnected"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$302(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/c;)Lcom/alipay/android/phone/inside/a/c;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$402(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/b;)Lcom/alipay/android/phone/inside/a/b;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/s;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$200(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
