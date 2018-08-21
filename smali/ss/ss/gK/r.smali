.class public final Lss/ss/gK/r;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lss/a;

.field private b:Lss/aa;

.field private final c:Lss/i;

.field private d:Lss/ss/gK/p;

.field private e:Lss/ss/pK/b;

.field private f:Z

.field private g:Z

.field private h:Lss/ss/gK/i;


# direct methods
.method public constructor <init>(Lss/i;Lss/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/gK/r;->c:Lss/i;

    iput-object p2, p0, Lss/ss/gK/r;->a:Lss/a;

    new-instance v0, Lss/ss/gK/p;

    invoke-direct {p0}, Lss/ss/gK/r;->d()Lss/ss/h;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lss/ss/gK/p;-><init>(Lss/a;Lss/ss/h;)V

    iput-object v0, p0, Lss/ss/gK/r;->d:Lss/ss/gK/p;

    return-void
.end method

.method private a(IIIZ)Lss/ss/pK/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lss/ss/gK/o;
        }
    .end annotation

    iget-object v1, p0, Lss/ss/gK/r;->c:Lss/i;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lss/ss/gK/r;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lss/ss/gK/r;->h:Lss/ss/gK/i;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stream != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lss/ss/gK/r;->g:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lss/ss/pK/b;->i:Z

    if-nez v2, :cond_3

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lss/ss/c;->b:Lss/ss/c;

    iget-object v2, p0, Lss/ss/gK/r;->c:Lss/i;

    iget-object v3, p0, Lss/ss/gK/r;->a:Lss/a;

    invoke-virtual {v0, v2, v3, p0}, Lss/ss/c;->a(Lss/i;Lss/a;Lss/ss/gK/r;)Lss/ss/pK/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lss/ss/gK/r;->b:Lss/aa;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_6

    iget-object v0, p0, Lss/ss/gK/r;->d:Lss/ss/gK/p;

    invoke-virtual {v0}, Lss/ss/gK/p;->b()Lss/aa;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/r;->c:Lss/i;

    monitor-enter v1

    :try_start_2
    iput-object v0, p0, Lss/ss/gK/r;->b:Lss/aa;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v0

    :goto_1
    new-instance v0, Lss/ss/pK/b;

    invoke-direct {v0, v1}, Lss/ss/pK/b;-><init>(Lss/aa;)V

    invoke-virtual {p0, v0}, Lss/ss/gK/r;->a(Lss/ss/pK/b;)V

    iget-object v1, p0, Lss/ss/gK/r;->c:Lss/i;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lss/ss/c;->b:Lss/ss/c;

    iget-object v3, p0, Lss/ss/gK/r;->c:Lss/i;

    invoke-virtual {v2, v3, v0}, Lss/ss/c;->b(Lss/i;Lss/ss/pK/b;)V

    iput-object v0, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    iget-boolean v2, p0, Lss/ss/gK/r;->g:Z

    if-eqz v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v1, p0, Lss/ss/gK/r;->a:Lss/a;

    invoke-virtual {v1}, Lss/a;->f()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lss/ss/pK/b;->a(IIILjava/util/List;Z)V

    invoke-direct {p0}, Lss/ss/gK/r;->d()Lss/ss/h;

    move-result-object v1

    invoke-virtual {v0}, Lss/ss/pK/b;->a()Lss/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lss/ss/h;->b(Lss/aa;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private a(ZZZ)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lss/ss/gK/r;->c:Lss/i;

    monitor-enter v1

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lss/ss/gK/r;->h:Lss/ss/gK/i;

    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lss/ss/gK/r;->f:Z

    :cond_1
    iget-object v2, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_2

    iget-object v2, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lss/ss/pK/b;->i:Z

    :cond_2
    iget-object v2, p0, Lss/ss/gK/r;->h:Lss/ss/gK/i;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lss/ss/gK/r;->f:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    iget-boolean v2, v2, Lss/ss/pK/b;->i:Z

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    invoke-direct {p0, v2}, Lss/ss/gK/r;->b(Lss/ss/pK/b;)V

    iget-object v2, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    iget-object v2, v2, Lss/ss/pK/b;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v2, Lss/ss/pK/b;->j:J

    sget-object v2, Lss/ss/c;->b:Lss/ss/c;

    iget-object v3, p0, Lss/ss/gK/r;->c:Lss/i;

    iget-object v4, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    invoke-virtual {v2, v3, v4}, Lss/ss/c;->a(Lss/i;Lss/ss/pK/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lss/ss/pK/b;->b()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lss/ss/i;->a(Ljava/net/Socket;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(IIIZZ)Lss/ss/pK/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lss/ss/gK/o;
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lss/ss/gK/r;->a(IIIZ)Lss/ss/pK/b;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/r;->c:Lss/i;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lss/ss/pK/b;->d:I

    if-nez v2, :cond_1

    monitor-exit v1

    :cond_0
    return-object v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p5}, Lss/ss/pK/b;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, v0}, Lss/ss/gK/r;->a(Ljava/io/IOException;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lss/ss/pK/b;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lss/ss/pK/b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p1, Lss/ss/pK/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p1, Lss/ss/pK/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private b(Ljava/io/IOException;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-nez v1, :cond_0

    :cond_3
    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Lss/ss/h;
    .locals 2

    sget-object v0, Lss/ss/c;->b:Lss/ss/c;

    iget-object v1, p0, Lss/ss/gK/r;->c:Lss/i;

    invoke-virtual {v0, v1}, Lss/ss/c;->a(Lss/i;)Lss/ss/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(IIIZZ)Lss/ss/gK/i;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lss/ss/gK/o;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lss/ss/gK/r;->b(IIIZZ)Lss/ss/pK/b;

    move-result-object v1

    iget-object v0, v1, Lss/ss/pK/b;->c:Lss/ss/ss/d;

    if-eqz v0, :cond_0

    new-instance v0, Lss/ss/gK/e;

    iget-object v1, v1, Lss/ss/pK/b;->c:Lss/ss/ss/d;

    invoke-direct {v0, p0, v1}, Lss/ss/gK/e;-><init>(Lss/ss/gK/r;Lss/ss/ss/d;)V

    :goto_0
    iget-object v1, p0, Lss/ss/gK/r;->c:Lss/i;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lss/ss/gK/r;->h:Lss/ss/gK/i;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lss/ss/pK/b;->b()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, v1, Lss/ss/pK/b;->e:LgK/e;

    invoke-interface {v0}, LgK/e;->a()LgK/s;

    move-result-object v0

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, LgK/s;->a(JLjava/util/concurrent/TimeUnit;)LgK/s;

    iget-object v0, v1, Lss/ss/pK/b;->f:LgK/d;

    invoke-interface {v0}, LgK/d;->a()LgK/s;

    move-result-object v0

    int-to-long v2, p3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, LgK/s;->a(JLjava/util/concurrent/TimeUnit;)LgK/s;

    new-instance v0, Lss/ss/gK/d;

    iget-object v2, v1, Lss/ss/pK/b;->e:LgK/e;

    iget-object v1, v1, Lss/ss/pK/b;->f:LgK/d;

    invoke-direct {v0, p0, v2, v1}, Lss/ss/gK/d;-><init>(Lss/ss/gK/r;LgK/e;LgK/d;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lss/ss/gK/o;

    invoke-direct {v1, v0}, Lss/ss/gK/o;-><init>(Ljava/io/IOException;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public declared-synchronized a()Lss/ss/pK/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/io/IOException;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lss/ss/gK/r;->c:Lss/i;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    iget v0, v0, Lss/ss/pK/b;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lss/ss/gK/r;->b:Lss/aa;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lss/ss/gK/r;->d:Lss/ss/gK/p;

    iget-object v2, p0, Lss/ss/gK/r;->b:Lss/aa;

    invoke-virtual {v0, v2, p1}, Lss/ss/gK/p;->a(Lss/aa;Ljava/io/IOException;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lss/ss/gK/r;->b:Lss/aa;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, v3}, Lss/ss/gK/r;->a(ZZZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lss/ss/pK/b;)V
    .locals 2

    iget-object v0, p1, Lss/ss/pK/b;->h:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ZLss/ss/gK/i;)V
    .locals 4

    iget-object v1, p0, Lss/ss/gK/r;->c:Lss/i;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lss/ss/gK/r;->h:Lss/ss/gK/i;

    if-eq p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lss/ss/gK/r;->h:Lss/ss/gK/i;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    iget-object v0, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    iget v2, v0, Lss/ss/pK/b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lss/ss/pK/b;->d:I

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lss/ss/gK/r;->a(ZZZ)V

    return-void
.end method

.method public a(Ljava/io/IOException;LgK/q;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lss/ss/gK/r;->e:Lss/ss/pK/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lss/ss/gK/r;->a(Ljava/io/IOException;)V

    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, Lss/ss/gK/n;

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lss/ss/gK/r;->d:Lss/ss/gK/p;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lss/ss/gK/r;->d:Lss/ss/gK/p;

    invoke-virtual {v3}, Lss/ss/gK/p;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lss/ss/gK/r;->b(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    return v2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lss/ss/gK/r;->a(ZZZ)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lss/ss/gK/r;->a(ZZZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/ss/gK/r;->a:Lss/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
