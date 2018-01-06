.class La/f;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:La/e;


# direct methods
.method constructor <init>(La/e;)V
    .locals 0

    iput-object p1, p0, La/f;->a:La/e;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, La/f;->a:La/e;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, La/e;->a(I)La/e;

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, La/f;->a:La/e;

    invoke-virtual {v0, p1, p2, p3}, La/e;->b([BII)La/e;

    return-void
.end method
