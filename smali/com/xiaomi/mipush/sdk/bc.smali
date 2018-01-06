.class Lcom/xiaomi/mipush/sdk/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/ax;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/bc;->a:Lcom/xiaomi/mipush/sdk/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/bc;->a:Lcom/xiaomi/mipush/sdk/ax;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x12

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/bc;->a:Lcom/xiaomi/mipush/sdk/ax;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/ax;->j(Lcom/xiaomi/mipush/sdk/ax;)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/bc;->a:Lcom/xiaomi/mipush/sdk/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/ax;->b(Lcom/xiaomi/mipush/sdk/ax;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
