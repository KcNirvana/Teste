.class final LgK/m;
.super Ljava/lang/Object;

# interfaces
.implements LgK/d;


# instance fields
.field public final a:LgK/c;

.field public final b:LgK/q;

.field c:Z


# direct methods
.method constructor <init>(LgK/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LgK/c;

    invoke-direct {v0}, LgK/c;-><init>()V

    iput-object v0, p0, LgK/m;->a:LgK/c;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, LgK/m;->b:LgK/q;

    return-void
.end method


# virtual methods
.method public a(LgK/r;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, LgK/m;->a:LgK/c;

    const-wide/16 v4, 0x2000

    invoke-interface {p1, v2, v4, v5}, LgK/r;->a(LgK/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public a()LgK/s;
    .locals 1

    iget-object v0, p0, LgK/m;->b:LgK/q;

    invoke-interface {v0}, LgK/q;->a()LgK/s;

    move-result-object v0

    return-object v0
.end method

.method public a_(LgK/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1, p2, p3}, LgK/c;->a_(LgK/c;J)V

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    return-void
.end method

.method public b(LgK/f;)LgK/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1}, LgK/c;->a(LgK/f;)LgK/c;

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)LgK/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1}, LgK/c;->a(Ljava/lang/String;)LgK/c;

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    move-result-object v0

    return-object v0
.end method

.method public c()LgK/c;
    .locals 1

    iget-object v0, p0, LgK/m;->a:LgK/c;

    return-object v0
.end method

.method public c([B)LgK/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1}, LgK/c;->b([B)LgK/c;

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    move-result-object v0

    return-object v0
.end method

.method public c([BII)LgK/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1, p2, p3}, LgK/c;->b([BII)LgK/c;

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LgK/m;->a:LgK/c;

    iget-wide v2, v1, LgK/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, LgK/m;->b:LgK/q;

    iget-object v2, p0, LgK/m;->a:LgK/c;

    iget-object v3, p0, LgK/m;->a:LgK/c;

    iget-wide v4, v3, LgK/c;->b:J

    invoke-interface {v1, v2, v4, v5}, LgK/q;->a_(LgK/c;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, LgK/m;->b:LgK/q;

    invoke-interface {v1}, LgK/q;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    invoke-static {v0}, LgK/t;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public e()LgK/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0}, LgK/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, LgK/m;->b:LgK/q;

    iget-object v3, p0, LgK/m;->a:LgK/c;

    invoke-interface {v2, v3, v0, v1}, LgK/q;->a_(LgK/c;J)V

    :cond_1
    return-object p0
.end method

.method public f(I)LgK/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1}, LgK/c;->d(I)LgK/c;

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    iget-wide v0, v0, LgK/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, LgK/m;->b:LgK/q;

    iget-object v1, p0, LgK/m;->a:LgK/c;

    iget-object v2, p0, LgK/m;->a:LgK/c;

    iget-wide v2, v2, LgK/c;->b:J

    invoke-interface {v0, v1, v2, v3}, LgK/q;->a_(LgK/c;J)V

    :cond_1
    iget-object v0, p0, LgK/m;->b:LgK/q;

    invoke-interface {v0}, LgK/q;->flush()V

    return-void
.end method

.method public g(I)LgK/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1}, LgK/c;->c(I)LgK/c;

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    move-result-object v0

    return-object v0
.end method

.method public h(I)LgK/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1}, LgK/c;->b(I)LgK/c;

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    move-result-object v0

    return-object v0
.end method

.method public j(J)LgK/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1, p2}, LgK/c;->i(J)LgK/c;

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    move-result-object v0

    return-object v0
.end method

.method public k(J)LgK/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0, p1, p2}, LgK/c;->h(J)LgK/c;

    invoke-virtual {p0}, LgK/m;->t()LgK/d;

    move-result-object v0

    return-object v0
.end method

.method public t()LgK/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LgK/m;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/m;->a:LgK/c;

    invoke-virtual {v0}, LgK/c;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, LgK/m;->b:LgK/q;

    iget-object v3, p0, LgK/m;->a:LgK/c;

    invoke-interface {v2, v3, v0, v1}, LgK/q;->a_(LgK/c;J)V

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LgK/m;->b:LgK/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
