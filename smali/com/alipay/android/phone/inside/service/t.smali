.class Lcom/alipay/android/phone/inside/service/t;
.super Ljava/lang/Object;
.source "InsideOperationServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onInsideServiceConnected"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$200(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {p2}, Lcom/alipay/android/phone/inside/a/e$a;->a(Landroid/os/IBinder;)Lcom/alipay/android/phone/inside/a/e;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$802(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/e;)Lcom/alipay/android/phone/inside/a/e;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$800(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$900(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Lcom/alipay/android/phone/inside/a/f;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/inside/a/e;->a(Lcom/alipay/android/phone/inside/a/f;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    const/4 v2, 0x1

    invoke-static {v0, p2, v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$500(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$200(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

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

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$200(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-class v2, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onInsideServiceDisconnected"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->access$802(Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;Lcom/alipay/android/phone/inside/a/e;)Lcom/alipay/android/phone/inside/a/e;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/t;->a:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

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
