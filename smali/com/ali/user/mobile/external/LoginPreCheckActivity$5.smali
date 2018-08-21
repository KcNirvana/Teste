.class Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;
.super Ljava/lang/Object;
.source "LoginPreCheckActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

.field final synthetic val$future:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->val$future:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0xb

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "begin exec"

    invoke-static {v0, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->val$future:Ljava/util/concurrent/FutureTask;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->val$future:Ljava/util/concurrent/FutureTask;

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->val$future:Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$5;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iget-object v3, v3, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
