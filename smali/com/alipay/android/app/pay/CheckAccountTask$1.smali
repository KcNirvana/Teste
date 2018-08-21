.class Lcom/alipay/android/app/pay/CheckAccountTask$1;
.super Ljava/lang/Object;
.source "CheckAccountTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/pay/CheckAccountTask;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/CheckAccountTask;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/CheckAccountTask$1;->this$0:Lcom/alipay/android/app/pay/CheckAccountTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask$1;->this$0:Lcom/alipay/android/app/pay/CheckAccountTask;

    invoke-static {v0}, Lcom/alipay/android/app/pay/CheckAccountTask;->access$000(Lcom/alipay/android/app/pay/CheckAccountTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask$1;->this$0:Lcom/alipay/android/app/pay/CheckAccountTask;

    invoke-static {p2}, Lcom/alipay/android/app/pay/b$a;->a(Landroid/os/IBinder;)Lcom/alipay/android/app/pay/b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/app/pay/CheckAccountTask;->access$102(Lcom/alipay/android/app/pay/CheckAccountTask;Lcom/alipay/android/app/pay/b;)Lcom/alipay/android/app/pay/b;

    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask$1;->this$0:Lcom/alipay/android/app/pay/CheckAccountTask;

    invoke-static {v0}, Lcom/alipay/android/app/pay/CheckAccountTask;->access$000(Lcom/alipay/android/app/pay/CheckAccountTask;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask$1;->this$0:Lcom/alipay/android/app/pay/CheckAccountTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/pay/CheckAccountTask;->access$102(Lcom/alipay/android/app/pay/CheckAccountTask;Lcom/alipay/android/app/pay/b;)Lcom/alipay/android/app/pay/b;

    return-void
.end method
