.class public Lcom/xiaomi/c/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/xiaomi/c/c/b;


# instance fields
.field private b:Ljava/util/concurrent/Executor;

.field private c:Landroid/content/Context;

.field private d:Lcom/xiaomi/c/a/b;

.field private e:Lcom/xiaomi/c/d/f;

.field private f:Lcom/xiaomi/c/d/g;

.field private g:Lcom/xiaomi/c/d/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/c/b;->b:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/c/c/b;
    .locals 2

    sget-object v0, Lcom/xiaomi/c/c/b;->a:Lcom/xiaomi/c/c/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/c/c/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/c/c/b;->a:Lcom/xiaomi/c/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/c/c/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/c/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/c/c/b;->a:Lcom/xiaomi/c/c/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/c/c/b;->a:Lcom/xiaomi/c/c/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_event_switch_key"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_perf_switch_key"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/c/e/a;->d(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v1

    const-string v2, "sp_client_report_status"

    const-string v3, "sp_client_report_event_frequency_key"

    const-wide/32 v4, 0x15180

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    if-ltz v0, :cond_1

    const-class v2, Lcom/xiaomi/c/c/b;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/c/b/a;

    iget-object v5, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/xiaomi/c/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v1, v0}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v3

    const v4, 0x18a16

    invoke-virtual {v3, v4}, Lcom/xiaomi/b/a/d/h;->a(I)Z

    iget-object v3, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/c/b/a;

    iget-object v5, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/xiaomi/c/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v1, v0}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_0
    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/c/e/a;->c(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/c/e/c;->a(Landroid/content/Context;)Lcom/xiaomi/c/e/c;

    move-result-object v1

    const-string v2, "sp_client_report_status"

    const-string v3, "sp_client_report_event_frequency_key"

    const-wide/32 v4, 0x15180

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    if-ltz v0, :cond_1

    const-class v2, Lcom/xiaomi/c/c/b;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/c/b/b;

    iget-object v5, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/xiaomi/c/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v1, v0}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v3

    const v4, 0x18a17

    invoke-virtual {v3, v4}, Lcom/xiaomi/b/a/d/h;->a(I)Z

    iget-object v3, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/c/b/b;

    iget-object v5, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/xiaomi/c/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v1, v0}, Lcom/xiaomi/b/a/d/h;->a(Lcom/xiaomi/b/a/d/h$a;II)Z

    :cond_0
    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/c/c/b;->a(Landroid/content/Context;)Lcom/xiaomi/c/c/b;

    move-result-object v0

    invoke-direct {v0}, Lcom/xiaomi/c/c/b;->f()V

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/c/c/b;->a(Landroid/content/Context;)Lcom/xiaomi/c/c/b;

    move-result-object v0

    invoke-direct {v0}, Lcom/xiaomi/c/c/b;->g()V

    return-void
.end method

.method public a(Lcom/xiaomi/c/a/b;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->d:Lcom/xiaomi/c/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->d:Lcom/xiaomi/c/a/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/c/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->d:Lcom/xiaomi/c/a/b;

    invoke-virtual {v0}, Lcom/xiaomi/c/a/b;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/c/c/b;->d:Lcom/xiaomi/c/a/b;

    invoke-virtual {v2}, Lcom/xiaomi/c/a/b;->c()J

    move-result-wide v2

    iput-object p1, p0, Lcom/xiaomi/c/c/b;->d:Lcom/xiaomi/c/a/b;

    iget-object v4, p0, Lcom/xiaomi/c/c/b;->d:Lcom/xiaomi/c/a/b;

    iget-object v5, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/c/a/b;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/xiaomi/c/a/b;->b()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "reset event job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/c/a/b;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/c/c/b;->f()V

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/c/a/b;->c()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "reset perf job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/c/a/b;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/c/c/b;->g()V

    :cond_1
    return-void
.end method

.method public a(Lcom/xiaomi/c/a/b;Lcom/xiaomi/c/d/g;Lcom/xiaomi/c/d/h;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/c/c/b;->d:Lcom/xiaomi/c/a/b;

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->d:Lcom/xiaomi/c/a/b;

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/a/b;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/c/d/a;

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/c/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/c/c/b;->e:Lcom/xiaomi/c/d/f;

    iput-object p2, p0, Lcom/xiaomi/c/c/b;->f:Lcom/xiaomi/c/d/g;

    iput-object p3, p0, Lcom/xiaomi/c/c/b;->g:Lcom/xiaomi/c/d/h;

    iget-object v0, p0, Lcom/xiaomi/c/c/b;->f:Lcom/xiaomi/c/d/g;

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->e:Lcom/xiaomi/c/d/f;

    invoke-interface {v0, v1}, Lcom/xiaomi/c/d/g;->a(Lcom/xiaomi/c/d/f;)V

    return-void
.end method

.method public a(Lcom/xiaomi/c/a/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/c/c/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/c/b/d;

    invoke-direct {v0}, Lcom/xiaomi/c/b/d;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->f:Lcom/xiaomi/c/d/g;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b/d;->a(Lcom/xiaomi/c/d/n;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/c/b/d;->a(Lcom/xiaomi/c/a/a;)V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaomi/c/a/e;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/c/c/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/c/b/d;

    invoke-direct {v0}, Lcom/xiaomi/c/b/d;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->g:Lcom/xiaomi/c/d/h;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b/d;->a(Lcom/xiaomi/c/d/n;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/c/b/d;->a(Lcom/xiaomi/c/a/a;)V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/c/c/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/c/b/c;

    invoke-direct {v0}, Lcom/xiaomi/c/b/c;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b/c;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->f:Lcom/xiaomi/c/d/g;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b/c;->a(Lcom/xiaomi/c/d/i;)V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/c/c/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/c/b/c;

    invoke-direct {v0}, Lcom/xiaomi/c/b/c;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->g:Lcom/xiaomi/c/d/h;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b/c;->a(Lcom/xiaomi/c/d/i;)V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/c/b/c;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/c/c/b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
