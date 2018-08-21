.class Lcom/alipay/android/app/pay/AuthTask$2;
.super Ljava/lang/Object;
.source "AuthTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/pay/AuthTask;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/AuthTask;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/AuthTask$2;->this$0:Lcom/alipay/android/app/pay/AuthTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask$2;->this$0:Lcom/alipay/android/app/pay/AuthTask;

    invoke-static {v0}, Lcom/alipay/android/app/pay/AuthTask;->access$100(Lcom/alipay/android/app/pay/AuthTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask$2;->this$0:Lcom/alipay/android/app/pay/AuthTask;

    invoke-static {p2}, Lcom/alipay/android/app/pay/b$a;->a(Landroid/os/IBinder;)Lcom/alipay/android/app/pay/b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/app/pay/AuthTask;->access$202(Lcom/alipay/android/app/pay/AuthTask;Lcom/alipay/android/app/pay/b;)Lcom/alipay/android/app/pay/b;

    const/4 v0, 0x2

    const-string/jumbo v2, "phonecashiermsp"

    const-string/jumbo v3, "ServiceConnection.onServiceConnected"

    const-string/jumbo v4, "serviceConnected"

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask$2;->this$0:Lcom/alipay/android/app/pay/AuthTask;

    invoke-static {v0}, Lcom/alipay/android/app/pay/AuthTask;->access$100(Lcom/alipay/android/app/pay/AuthTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/pay/AuthTask$2;->this$0:Lcom/alipay/android/app/pay/AuthTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/pay/AuthTask;->access$202(Lcom/alipay/android/app/pay/AuthTask;Lcom/alipay/android/app/pay/b;)Lcom/alipay/android/app/pay/b;

    return-void
.end method
