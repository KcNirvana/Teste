.class Lcom/nostra13/universalimageloader/b/a/b/a/f;
.super Ljava/io/FilterOutputStream;
.source ""


# instance fields
.field final synthetic bmO:Lcom/nostra13/universalimageloader/b/a/b/a/e;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/b/a/b/a/e;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/f;->bmO:Lcom/nostra13/universalimageloader/b/a/b/a/e;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/b/a/b/a/e;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/b/a/b/a/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/b/a/b/a/f;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/e;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/f;->bmO:Lcom/nostra13/universalimageloader/b/a/b/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJQ(Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/f;->bmO:Lcom/nostra13/universalimageloader/b/a/b/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJQ(Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/f;->bmO:Lcom/nostra13/universalimageloader/b/a/b/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJQ(Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/f;->bmO:Lcom/nostra13/universalimageloader/b/a/b/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/a/b/a/e;->bJQ(Lcom/nostra13/universalimageloader/b/a/b/a/e;Z)Z

    goto :goto_0
.end method
