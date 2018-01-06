.class Lcom/xiaomi/push/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/service/a;

    iget-object v1, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/service/a;

    invoke-static {v1}, Lcom/xiaomi/push/service/a;->a(Lcom/xiaomi/push/service/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/a;->a(Lcom/xiaomi/push/service/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/service/a;

    invoke-static {v1}, Lcom/xiaomi/push/service/a;->b(Lcom/xiaomi/push/service/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/service/a;

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/a;->a(Lcom/xiaomi/push/service/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/service/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/a;->a(Lcom/xiaomi/push/service/a;Z)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/service/a;

    invoke-static {v0}, Lcom/xiaomi/push/service/a;->c(Lcom/xiaomi/push/service/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/service/b;->a:Lcom/xiaomi/push/service/a;

    invoke-static {v0}, Lcom/xiaomi/push/service/a;->c(Lcom/xiaomi/push/service/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
