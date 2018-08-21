.class final Lss/ss/ss/o$b;
.super Ljava/lang/Object;

# interfaces
.implements Lss/ss/ss/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:LgK/d;

.field private final b:LgK/c;

.field private final c:LgK/d;

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(LgK/d;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/ss/o$b;->a:LgK/d;

    iput-boolean p2, p0, Lss/ss/ss/o$b;->d:Z

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    sget-object v1, Lss/ss/ss/o;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    new-instance v1, LgK/c;

    invoke-direct {v1}, LgK/c;-><init>()V

    iput-object v1, p0, Lss/ss/ss/o$b;->b:LgK/c;

    new-instance v1, LgK/g;

    iget-object v2, p0, Lss/ss/ss/o$b;->b:LgK/c;

    invoke-direct {v1, v2, v0}, LgK/g;-><init>(LgK/q;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, LgK/l;->a(LgK/q;)LgK/d;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/o$b;->c:LgK/d;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/o$b;->c:LgK/d;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/f;

    iget-object v0, v0, Lss/ss/ss/f;->h:LgK/f;

    iget-object v3, p0, Lss/ss/ss/o$b;->c:LgK/d;

    invoke-virtual {v0}, LgK/f;->f()I

    move-result v4

    invoke-interface {v3, v4}, LgK/d;->f(I)LgK/d;

    iget-object v3, p0, Lss/ss/ss/o$b;->c:LgK/d;

    invoke-interface {v3, v0}, LgK/d;->b(LgK/f;)LgK/d;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/f;

    iget-object v0, v0, Lss/ss/ss/f;->i:LgK/f;

    iget-object v3, p0, Lss/ss/ss/o$b;->c:LgK/d;

    invoke-virtual {v0}, LgK/f;->f()I

    move-result v4

    invoke-interface {v3, v4}, LgK/d;->f(I)LgK/d;

    iget-object v3, p0, Lss/ss/ss/o$b;->c:LgK/d;

    invoke-interface {v3, v0}, LgK/d;->b(LgK/f;)LgK/d;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lss/ss/ss/o$b;->c:LgK/d;

    invoke-interface {v0}, LgK/d;->flush()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method a(IILgK/c;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/ss/o$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    if-lez p4, :cond_2

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, LgK/d;->a_(LgK/c;J)V

    :cond_2
    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized a(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lss/ss/ss/o$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0, p1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    long-to-int v1, p2

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0}, LgK/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILss/ss/ss/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lss/ss/ss/o$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p2, Lss/ss/ss/a;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    iget v1, p2, Lss/ss/ss/a;->t:I

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0}, LgK/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILss/ss/ss/a;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lss/ss/ss/o$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p2, Lss/ss/ss/a;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0, p1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    iget v1, p2, Lss/ss/ss/a;->u:I

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0}, LgK/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public a(Lss/ss/ss/n;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(ZII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lss/ss/ss/o$b;->e:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lss/ss/ss/o$b;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    :goto_1
    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0, p2}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0}, LgK/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILgK/c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lss/ss/ss/o$b;->a(IILgK/c;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ZZIILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v6, 0x7fffffff

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lss/ss/ss/o$b;->e:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lss/ss/ss/o$b;->a(Ljava/util/List;)V

    const-wide/16 v2, 0xa

    iget-object v1, p0, Lss/ss/ss/o$b;->b:LgK/c;

    invoke-virtual {v1}, LgK/c;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :cond_1
    or-int/2addr v0, v1

    iget-object v1, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const v3, -0x7ffcffff

    invoke-interface {v1, v3}, LgK/d;->f(I)LgK/d;

    iget-object v1, p0, Lss/ss/ss/o$b;->a:LgK/d;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    and-int v1, p3, v6

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    and-int v1, p4, v6

    invoke-interface {v0, v1}, LgK/d;->f(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LgK/d;->g(I)LgK/d;

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    iget-object v1, p0, Lss/ss/ss/o$b;->b:LgK/c;

    invoke-interface {v0, v1}, LgK/d;->a(LgK/r;)J

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0}, LgK/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lss/ss/ss/o$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0}, LgK/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lss/ss/ss/n;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v4, 0xffffff

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lss/ss/ss/o$b;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lss/ss/ss/n;->b()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lss/ss/ss/o$b;->a:LgK/d;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, LgK/d;->f(I)LgK/d;

    iget-object v2, p0, Lss/ss/ss/o$b;->a:LgK/d;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v2, v1}, LgK/d;->f(I)LgK/d;

    iget-object v1, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v1, v0}, LgK/d;->f(I)LgK/d;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lss/ss/ss/n;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lss/ss/ss/n;->c(I)I

    move-result v1

    iget-object v2, p0, Lss/ss/ss/o$b;->a:LgK/d;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, LgK/d;->f(I)LgK/d;

    iget-object v1, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-virtual {p1, v0}, Lss/ss/ss/n;->b(I)I

    move-result v2

    invoke-interface {v1, v2}, LgK/d;->f(I)LgK/d;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    invoke-interface {v0}, LgK/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lss/ss/ss/o$b;->e:Z

    iget-object v0, p0, Lss/ss/ss/o$b;->a:LgK/d;

    iget-object v1, p0, Lss/ss/ss/o$b;->c:LgK/d;

    invoke-static {v0, v1}, Lss/ss/i;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
