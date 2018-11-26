.class final Lcom/xiaomi/analytics/internal/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bnV:Lcom/xiaomi/analytics/internal/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/o;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/e;->bnV:Lcom/xiaomi/analytics/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/internal/o;->bMm()Lcom/xiaomi/analytics/internal/o;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/e;->bnV:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMC(Lcom/xiaomi/analytics/internal/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/e;->bnV:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMa(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/e;->bnV:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMa(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/a/a;->bKo()V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/e;->bnV:Lcom/xiaomi/analytics/internal/o;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/analytics/internal/o;->bMP(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)Lcom/xiaomi/analytics/internal/a/a;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/e;->bnV:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->bMg(Lcom/xiaomi/analytics/internal/o;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/e;->bnV:Lcom/xiaomi/analytics/internal/o;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/o;->bMi(Lcom/xiaomi/analytics/internal/o;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "SdkManager"

    const-string/jumbo v2, "pending dex init executed, unregister and clear pending"

    invoke-static {v0, v2}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :cond_0
    :try_start_3
    const-string/jumbo v0, "SdkManager"

    const-string/jumbo v2, "skip init dex"

    invoke-static {v0, v2}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SdkManager"

    const-string/jumbo v2, "dexInitTask"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
