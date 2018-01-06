.class La/u;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:La/t;


# direct methods
.method constructor <init>(La/t;)V
    .locals 0

    iput-object p1, p0, La/u;->a:La/t;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/u;->a:La/t;

    invoke-virtual {v0}, La/t;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/u;->a:La/t;

    invoke-static {v0}, La/t;->a(La/t;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/u;->a:La/t;

    invoke-virtual {v0}, La/t;->flush()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/u;->a:La/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/u;->a:La/t;

    invoke-static {v0}, La/t;->a(La/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/u;->a:La/t;

    iget-object v0, v0, La/t;->a:La/e;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, La/e;->a(I)La/e;

    iget-object v0, p0, La/u;->a:La/t;

    invoke-virtual {v0}, La/t;->u()La/h;

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/u;->a:La/t;

    invoke-static {v0}, La/t;->a(La/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/u;->a:La/t;

    iget-object v0, v0, La/t;->a:La/e;

    invoke-virtual {v0, p1, p2, p3}, La/e;->b([BII)La/e;

    iget-object v0, p0, La/u;->a:La/t;

    invoke-virtual {v0}, La/t;->u()La/h;

    return-void
.end method
