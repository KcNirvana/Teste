.class final Lcom/xiaomi/analytics/internal/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bnq:Lcom/xiaomi/analytics/internal/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/internal/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/a/d;->bnq:Lcom/xiaomi/analytics/internal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/d;->bnq:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/a/b;->bKv(Lcom/xiaomi/analytics/internal/a/b;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/d;->bnq:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/a/b;->bKv(Lcom/xiaomi/analytics/internal/a/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/d;->bnq:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/a/b;->bKv(Lcom/xiaomi/analytics/internal/a/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/a/d;->bnq:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/a/b;->bKv(Lcom/xiaomi/analytics/internal/a/b;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string/jumbo v2, "com.miui.analytics.ICore"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "trackEvents"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/a/d;->bnq:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v3}, Lcom/xiaomi/analytics/internal/a/b;->bKx(Lcom/xiaomi/analytics/internal/a/b;)Lcom/miui/analytics/ICore;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SysAnalytics"

    const-string/jumbo v2, "onServiceConnected drain %d pending events"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/analytics/internal/a/d;->bnq:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v4}, Lcom/xiaomi/analytics/internal/a/b;->bKv(Lcom/xiaomi/analytics/internal/a/b;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/analytics/internal/util/b;->bKK(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/a/d;->bnq:Lcom/xiaomi/analytics/internal/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/a/b;->bKv(Lcom/xiaomi/analytics/internal/a/b;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "SysAnalytics"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onServiceConnected drain pending events exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
