.class Lcom/xiaomi/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/a/a/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/i;->a:Lcom/xiaomi/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/a/a/d;->e()Lcom/xiaomi/a/a/d;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/a/a/i;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->p(Lcom/xiaomi/a/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/i;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->l(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/i;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->l(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/a/a/b/a;->b()V

    iget-object v0, p0, Lcom/xiaomi/a/a/i;->a:Lcom/xiaomi/a/a/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/d;Lcom/xiaomi/a/a/b/a;)Lcom/xiaomi/a/a/b/a;

    iget-object v0, p0, Lcom/xiaomi/a/a/i;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v0}, Lcom/xiaomi/a/a/d;->b(Lcom/xiaomi/a/a/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/a/a/i;->a:Lcom/xiaomi/a/a/d;

    invoke-static {v2}, Lcom/xiaomi/a/a/d;->n(Lcom/xiaomi/a/a/d;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "SdkManager"

    const-string v2, "pending dex init executed, unregister and clear pending"

    invoke-static {v0, v2}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const-string v0, "SdkManager"

    const-string v2, "skip init dex"

    invoke-static {v0, v2}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SdkManager"

    const-string v2, "dexInitTask"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
