.class Lcom/xiaomi/a/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/b/e;->a:Lcom/xiaomi/a/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/a/a/b/e;->a:Lcom/xiaomi/a/a/b/c;

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Lcom/xiaomi/a/a/b/c;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/a/a/b/e;->a:Lcom/xiaomi/a/a/b/c;

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Lcom/xiaomi/a/a/b/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/b/e;->a:Lcom/xiaomi/a/a/b/c;

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Lcom/xiaomi/a/a/b/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/a/a/b/e;->a:Lcom/xiaomi/a/a/b/c;

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->d(Lcom/xiaomi/a/a/b/c;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "com.miui.analytics.ICore"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "trackEvents"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/a/a/b/e;->a:Lcom/xiaomi/a/a/b/c;

    invoke-static {v3}, Lcom/xiaomi/a/a/b/c;->a(Lcom/xiaomi/a/a/b/c;)Lcom/miui/analytics/ICore;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SysAnalytics"

    const-string v2, "onServiceConnected drain %d pending events"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaomi/a/a/b/e;->a:Lcom/xiaomi/a/a/b/c;

    invoke-static {v5}, Lcom/xiaomi/a/a/b/c;->d(Lcom/xiaomi/a/a/b/c;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/b/e;->a:Lcom/xiaomi/a/a/b/c;

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Lcom/xiaomi/a/a/b/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "SysAnalytics"

    invoke-static {v2}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected drain pending events exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
