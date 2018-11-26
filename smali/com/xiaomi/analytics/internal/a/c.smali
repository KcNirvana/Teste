.class final Lcom/xiaomi/analytics/internal/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic bnp:Lcom/xiaomi/analytics/internal/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0, v5}, Lcom/xiaomi/analytics/internal/a/b;->bKu(Lcom/xiaomi/analytics/internal/a/b;Z)Z

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0, v4}, Lcom/xiaomi/analytics/internal/a/b;->bKs(Lcom/xiaomi/analytics/internal/a/b;Z)Z

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {p2}, Lcom/miui/analytics/ICore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ICore;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/a/b;->bKB(Lcom/xiaomi/analytics/internal/a/b;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    const-string/jumbo v0, "SysAnalytics"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected %s, pid:%d, tid:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/a/b;->bKx(Lcom/xiaomi/analytics/internal/a/b;)Lcom/miui/analytics/ICore;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/a/b;->bKA(Lcom/xiaomi/analytics/internal/a/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/a/b;->bKA(Lcom/xiaomi/analytics/internal/a/b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/a/b;->bKy(Lcom/xiaomi/analytics/internal/a/b;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "SysAnalytics"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onServiceConnected notifyAll exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "SysAnalytics"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected, pid:%d, tid:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0, v5}, Lcom/xiaomi/analytics/internal/a/b;->bKu(Lcom/xiaomi/analytics/internal/a/b;Z)Z

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/a/b;->bKB(Lcom/xiaomi/analytics/internal/a/b;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/c;->bnp:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0, v5}, Lcom/xiaomi/analytics/internal/a/b;->bKs(Lcom/xiaomi/analytics/internal/a/b;Z)Z

    return-void
.end method
