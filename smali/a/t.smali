.class final La/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/h;


# instance fields
.field public final a:La/e;

.field public final b:La/z;

.field private c:Z


# direct methods
.method public constructor <init>(La/z;)V
    .locals 1

    new-instance v0, La/e;

    invoke-direct {v0}, La/e;-><init>()V

    invoke-direct {p0, p1, v0}, La/t;-><init>(La/z;La/e;)V

    return-void
.end method

.method public constructor <init>(La/z;La/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, La/t;->a:La/e;

    iput-object p1, p0, La/t;->b:La/z;

    return-void
.end method

.method static synthetic a(La/t;)Z
    .locals 1

    iget-boolean v0, p0, La/t;->c:Z

    return v0
.end method


# virtual methods
.method public a(La/aa;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, La/t;->a:La/e;

    const-wide/16 v4, 0x800

    invoke-interface {p1, v2, v4, v5}, La/aa;->read(La/e;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    invoke-virtual {p0}, La/t;->u()La/h;

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public b()La/e;
    .locals 1

    iget-object v0, p0, La/t;->a:La/e;

    return-object v0
.end method

.method public b(La/j;)La/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0, p1}, La/e;->a(La/j;)La/e;

    invoke-virtual {p0}, La/t;->u()La/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)La/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0, p1}, La/e;->a(Ljava/lang/String;)La/e;

    invoke-virtual {p0}, La/t;->u()La/h;

    move-result-object v0

    return-object v0
.end method

.method public c([B)La/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0, p1}, La/e;->b([B)La/e;

    invoke-virtual {p0}, La/t;->u()La/h;

    move-result-object v0

    return-object v0
.end method

.method public c([BII)La/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0, p1, p2, p3}, La/e;->b([BII)La/e;

    invoke-virtual {p0}, La/t;->u()La/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, La/u;

    invoke-direct {v0, p0}, La/u;-><init>(La/t;)V

    return-object v0
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, La/t;->a:La/e;

    iget-wide v2, v1, La/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, La/t;->b:La/z;

    iget-object v2, p0, La/t;->a:La/e;

    iget-object v3, p0, La/t;->a:La/e;

    iget-wide v4, v3, La/e;->b:J

    invoke-interface {v1, v2, v4, v5}, La/z;->write(La/e;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, La/t;->b:La/z;

    invoke-interface {v1}, La/z;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    invoke-static {v0}, La/ad;->a(Ljava/lang/Throwable;)V

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

.method public e()La/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0}, La/e;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, La/t;->b:La/z;

    iget-object v3, p0, La/t;->a:La/e;

    invoke-interface {v2, v3, v0, v1}, La/z;->write(La/e;J)V

    :cond_1
    return-object p0
.end method

.method public e(I)La/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0, p1}, La/e;->c(I)La/e;

    invoke-virtual {p0}, La/t;->u()La/h;

    move-result-object v0

    return-object v0
.end method

.method public f(I)La/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0, p1}, La/e;->b(I)La/e;

    invoke-virtual {p0}, La/t;->u()La/h;

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

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    iget-wide v0, v0, La/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, La/t;->b:La/z;

    iget-object v1, p0, La/t;->a:La/e;

    iget-object v2, p0, La/t;->a:La/e;

    iget-wide v2, v2, La/e;->b:J

    invoke-interface {v0, v1, v2, v3}, La/z;->write(La/e;J)V

    :cond_1
    iget-object v0, p0, La/t;->b:La/z;

    invoke-interface {v0}, La/z;->flush()V

    return-void
.end method

.method public g(I)La/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0, p1}, La/e;->a(I)La/e;

    invoke-virtual {p0}, La/t;->u()La/h;

    move-result-object v0

    return-object v0
.end method

.method public i(J)La/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0, p1, p2}, La/e;->h(J)La/e;

    invoke-virtual {p0}, La/t;->u()La/h;

    move-result-object v0

    return-object v0
.end method

.method public timeout()La/ab;
    .locals 1

    iget-object v0, p0, La/t;->b:La/z;

    invoke-interface {v0}, La/z;->timeout()La/ab;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/t;->b:La/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()La/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0}, La/e;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, La/t;->b:La/z;

    iget-object v3, p0, La/t;->a:La/e;

    invoke-interface {v2, v3, v0, v1}, La/z;->write(La/e;J)V

    :cond_1
    return-object p0
.end method

.method public write(La/e;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, La/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/t;->a:La/e;

    invoke-virtual {v0, p1, p2, p3}, La/e;->write(La/e;J)V

    invoke-virtual {p0}, La/t;->u()La/h;

    return-void
.end method
