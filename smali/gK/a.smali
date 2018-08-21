.class public LgK/a;
.super LgK/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LgK/a$a;
    }
.end annotation


# static fields
.field private static a:LgK/a;


# instance fields
.field private c:Z

.field private d:LgK/a;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LgK/s;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(LgK/a;JZ)V
    .locals 9

    const-wide/16 v4, 0x0

    const-class v1, LgK/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, LgK/a;->a:LgK/a;

    if-nez v0, :cond_0

    new-instance v0, LgK/a;

    invoke-direct {v0}, LgK/a;-><init>()V

    sput-object v0, LgK/a;->a:LgK/a;

    new-instance v0, LgK/a$a;

    invoke-direct {v0}, LgK/a$a;-><init>()V

    invoke-virtual {v0}, LgK/a$a;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, LgK/a;->d()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, LgK/a;->e:J

    :goto_0
    invoke-direct {p0, v2, v3}, LgK/a;->b(J)J

    move-result-wide v4

    sget-object v0, LgK/a;->a:LgK/a;

    :goto_1
    iget-object v6, v0, LgK/a;->d:LgK/a;

    if-eqz v6, :cond_1

    iget-object v6, v0, LgK/a;->d:LgK/a;

    invoke-direct {v6, v2, v3}, LgK/a;->b(J)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    :cond_1
    iget-object v2, v0, LgK/a;->d:LgK/a;

    iput-object v2, p0, LgK/a;->d:LgK/a;

    iput-object p0, v0, LgK/a;->d:LgK/a;

    sget-object v2, LgK/a;->a:LgK/a;

    if-ne v0, v2, :cond_2

    const-class v0, LgK/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    add-long v4, v2, p1

    :try_start_1
    iput-wide v4, p0, LgK/a;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    if-eqz p3, :cond_5

    :try_start_2
    invoke-virtual {p0}, LgK/a;->d()J

    move-result-wide v4

    iput-wide v4, p0, LgK/a;->e:J

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    iget-object v0, v0, LgK/a;->d:LgK/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized a(LgK/a;)Z
    .locals 3

    const-class v1, LgK/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, LgK/a;->a:LgK/a;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, LgK/a;->d:LgK/a;

    if-ne v2, p0, :cond_0

    iget-object v2, p0, LgK/a;->d:LgK/a;

    iput-object v2, v0, LgK/a;->d:LgK/a;

    const/4 v0, 0x0

    iput-object v0, p0, LgK/a;->d:LgK/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_1
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, v0, LgK/a;->d:LgK/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(J)J
    .locals 3

    iget-wide v0, p0, LgK/a;->e:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method static declared-synchronized e()LgK/a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/32 v8, 0xf4240

    const/4 v0, 0x0

    const-class v2, LgK/a;

    monitor-enter v2

    :try_start_0
    sget-object v1, LgK/a;->a:LgK/a;

    iget-object v1, v1, LgK/a;->d:LgK/a;

    if-nez v1, :cond_0

    const-class v1, LgK/a;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, LgK/a;->b(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    const-class v1, LgK/a;

    long-to-int v3, v4

    invoke-virtual {v1, v6, v7, v3}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, LgK/a;->a:LgK/a;

    iget-object v3, v1, LgK/a;->d:LgK/a;

    iput-object v3, v0, LgK/a;->d:LgK/a;

    const/4 v0, 0x0

    iput-object v0, v1, LgK/a;->d:LgK/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(LgK/q;)LgK/q;
    .locals 1

    new-instance v0, LgK/a$1;

    invoke-direct {v0, p0, p1}, LgK/a$1;-><init>(LgK/a;LgK/q;)V

    return-object v0
.end method

.method public final a(LgK/r;)LgK/r;
    .locals 1

    new-instance v0, LgK/a$2;

    invoke-direct {v0, p0, p1}, LgK/a$2;-><init>(LgK/a;LgK/r;)V

    return-object v0
.end method

.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method final a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LgK/a;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LgK/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public final a_()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, LgK/a;->c:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, LgK/a;->c:Z

    invoke-static {p0}, LgK/a;->a(LgK/a;)Z

    move-result v0

    goto :goto_0
.end method

.method final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LgK/a;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, LgK/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    iget-boolean v0, p0, LgK/a;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, LgK/a;->b_()J

    move-result-wide v0

    invoke-virtual {p0}, LgK/a;->c_()Z

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, LgK/a;->c:Z

    invoke-static {p0, v0, v1, v2}, LgK/a;->a(LgK/a;JZ)V

    goto :goto_0
.end method
